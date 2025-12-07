void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15ConversationKit11ParticipantV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  specialized _arrayForceCast<A, B>(_:)();
}

{
  specialized _arrayForceCast<A, B>(_:)();
}

uint64_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t outlined init with copy of ConversationControlsAction(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t _s15ConversationKit0A14ControlsActionOWOcTm_0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_24_1();
  v5(v4);
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t _s15ConversationKit0A14ControlsActionOWOcTm_1(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

uint64_t outlined destroy of ConversationControlsAction(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s15ConversationKit0A14ControlsActionOWOhTm_0()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _s15ConversationKit0A14ControlsActionOWOhTm_1()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_221(unint64_t *a1)
{

  return lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](a1, v1);
}

id OUTLINED_FUNCTION_221_2()
{
  v4 = *(v2 + 3816);

  return [v1 v4];
}

void *OUTLINED_FUNCTION_221_3(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = v2[3];

  return __swift_project_boxed_opaque_existential_1(v2, v4);
}

void static RecentsCollectionViewCollator.combinables(combining:with:now:using:combiningType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v11 = *a6;
  v12 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit15GroupCombinable_pGMd, &_sSay15ConversationKit15GroupCombinable_pGMR);
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v34 = Dictionary.init(dictionaryLiteral:)();
  specialized Sequence.forEach(_:)(a1, v11, &v35, &v34);
  v28[16] = v11;
  v29 = &v35;
  v30 = &v34;
  v31 = a4;
  v32 = a5;
  v33 = a3;
  specialized Sequence.forEach(_:)(partial apply for closure #2 in static RecentsCollectionViewCollator.combinables(combining:with:now:using:combiningType:), v28, a2);
  v13 = v34;
  v14 = v34 + 64;
  v15 = 1 << *(v34 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v34 + 64);
  v18 = (v15 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v19 = 0;
  do
  {
    while (1)
    {
      if (!v17)
      {
        while (1)
        {
          v20 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v20 >= v18)
          {
            goto LABEL_20;
          }

          v17 = *(v14 + 8 * v20);
          ++v19;
          if (v17)
          {
            v19 = v20;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

LABEL_9:
      v21 = *(*(v13 + 56) + ((v19 << 9) | (8 * __clz(__rbit64(v17)))));
      v22 = *(v21 + 16);
      v23 = *(v12 + 16);
      if (__OFADD__(v23, v22))
      {
        goto LABEL_22;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v23 + v22 > *(v12 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v12 = v24;
      }

      v17 &= v17 - 1;
      if (!*(v21 + 16))
      {
        break;
      }

      if ((*(v12 + 24) >> 1) - *(v12 + 16) < v22)
      {
        goto LABEL_23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15GroupCombinable_pMd, &_s15ConversationKit15GroupCombinable_pMR);
      swift_arrayInitWithCopy();

      if (v22)
      {
        v25 = *(v12 + 16);
        v26 = __OFADD__(v25, v22);
        v27 = v25 + v22;
        if (v26)
        {
          goto LABEL_24;
        }

        *(v12 + 16) = v27;
      }
    }
  }

  while (!v22);
  __break(1u);
LABEL_20:

  specialized Array.append<A>(contentsOf:)(v12);
}

uint64_t closure #1 in static RecentsCollectionViewCollator.combinables(combining:with:now:using:combiningType:)(void *a1, char a2, uint64_t *a3, void *a4)
{
  v28 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  LOBYTE(v29[0]) = a2 & 1;
  (*(v14 + 16))(v29, v15, v14);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v16 = *(*a3 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v16);
    v17 = *a3;
    *(v17 + 16) = v16 + 1;
    return outlined init with copy of IDSLookupManager(a1, v17 + 40 * v16 + 32);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v19 = v28;
    v20 = specialized Dictionary.subscript.getter();
    if (v20)
    {
      v21 = v20;
      outlined init with copy of IDSLookupManager(a1, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v21 = v26;
      }

      v22 = *(v21 + 16);
      if (v22 >= *(v21 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v21 = v27;
      }

      *(v21 + 16) = v22 + 1;
      outlined init with take of ImageName(v29, v21 + 40 * v22 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v29[0] = *v19;
      v24 = v21;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit15GroupCombinable_pGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit15GroupCombinable_pGMR);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1BC4BA940;
      outlined init with copy of IDSLookupManager(a1, v25 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v29[0] = *v19;
      v24 = v25;
    }

    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v13, isUniquelyReferenced_nonNull_native);
    *v19 = *&v29[0];
    return (*(v11 + 8))(v13, v10);
  }
}

void *specialized Sequence.forEach(_:)(uint64_t a1, char a2, uint64_t *a3, void *a4)
{
  v8 = *(a1 + 16);
  result = (a1 + 32);
  v10 = v8 + 1;
  do
  {
    if (!--v10)
    {
      break;
    }

    v11 = result + 5;
    closure #1 in static RecentsCollectionViewCollator.combinables(combining:with:now:using:combiningType:)(result, a2 & 1, a3, a4);
    result = v11;
  }

  while (!v4);
  return result;
}

void RecentsCallItem.combiningUUID(forType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = OUTLINED_FUNCTION_26_38();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_185_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_26_7();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&a9 - v32);
  if (*v23)
  {
    OUTLINED_FUNCTION_0_169();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
    swift_getEnumCaseMultiPayload();
    OUTLINED_FUNCTION_200_0();
    if (v34)
    {
LABEL_9:
      OUTLINED_FUNCTION_2_132();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      OUTLINED_FUNCTION_1_137();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    }

    else
    {
LABEL_5:
      OUTLINED_FUNCTION_3_129();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      type metadata accessor for UUID();
      v35 = OUTLINED_FUNCTION_2_10();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_169();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 3u:
      case 4u:
        goto LABEL_5;
      case 2u:
        v39 = *v33;
        v40 = [*v33 groupUUID];
        if (v40)
        {
          v41 = v40;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v42 = 0;
        }

        else
        {
          v42 = 1;
        }

        v43 = type metadata accessor for UUID();
        __swift_storeEnumTagSinglePayload(v29, v42, 1, v43);
        OUTLINED_FUNCTION_45_1();
        outlined init with take of CaptionSectioner.SpeakerSection?();

        break;
      default:
        goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t OUTLINED_FUNCTION_80_3(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_151(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_151_1()
{
  v3 = *(v1 - 168);
  v2 = *(v1 - 160);
  *v0 = *(v1 - 280);
  v0[1] = v2;
  v4 = *(v1 - 184);
  v5 = *(v1 - 176);
  v0[2] = v3;
  v0[3] = v5;
  v0[4] = v4;
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return MEMORY[0x1EEE693F0]();
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void OUTLINED_FUNCTION_49_5()
{
}

uint64_t OUTLINED_FUNCTION_49_7()
{
}

uint64_t OUTLINED_FUNCTION_49_10@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_49_13()
{

  return swift_getEnumCaseMultiPayload();
}

double OUTLINED_FUNCTION_49_17()
{

  return outlined consume of SessionActionNotice.NoticeType(10, 0, 0xC000000000000000);
}

uint64_t OUTLINED_FUNCTION_49_24()
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_49_25()
{
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 196);

  return outlined consume of CallDisplayInfo(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_49_26(__n128 a1)
{
  *(v1 + 57) = a1;

  return static ConversationControlsType.== infix(_:_:)(v1 + 80, v1 + 32);
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t a1)
{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_114(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_114(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_114(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_114(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_114(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_114(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_114(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_114(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_114(a3, result);
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  return sub_1BBC87174(a1, a2, a3);
}

{
  result = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = result + 40;
    a1();
    result = v7;
  }

  while (!v3);
  return result;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_12_14(a1);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v6;
  v5(v4, 1);
  v11 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_14();
  if (v13 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v11 + 40 * v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v9);
  OUTLINED_FUNCTION_16_18(v14 + 32, v16, v17, v15);

  if (!v1)
  {
LABEL_8:
    *v2 = v11;
    return;
  }

  v18 = *(v11 + 16);
  v8 = __OFADD__(v18, v1);
  v19 = v18 + v1;
  if (!v8)
  {
    *(v11 + 16) = v19;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  specialized Array.append<A>(contentsOf:)(a1);
}

{
  v5 = type metadata accessor for Participant(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = *(a1 + 16);
  OUTLINED_FUNCTION_5_9();
  if (__OFADD__(v17, v16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v45 = v18;
  v46 = v5;
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v17 + v16, 1);
  v3 = *v1;
  v2 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v5 = *(v6 + 72);
  v19 = *(*v1 + 16);
  v20 = (*(*v1 + 24) >> 1) - v19;
  specialized Sequence._copySequenceContents(initializing:)(&v47, *v1 + v2 + v5 * v19, v20, a1);
  if (v21 < v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v21)
  {
    v24 = *(v3 + 16);
    v25 = __OFADD__(v24, v21);
    v26 = v24 + v21;
    if (v25)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v3 + 16) = v26;
  }

  if (v21 != v20)
  {
    outlined consume of Set<TUHandle>.Iterator._Variant(v47);
LABEL_8:
    *v1 = v3;
    return;
  }

LABEL_11:
  v20 = *(v3 + 16);
  v22 = v48;
  v40 = v48;
  v41 = v47;
  v23 = v49;
  v16 = v50;
  v38 = v49;
  if (v51)
  {
    v27 = (v51 - 1) & v51;
    v28 = __clz(__rbit64(v51)) | (v50 << 6);
    v39 = (v49 + 64) >> 6;
LABEL_19:
    outlined init with copy of Participant(*(v41 + 48) + v28 * v5, v15);
    v31 = 0;
LABEL_20:
    v44 = v20;
    __swift_storeEnumTagSinglePayload(v15, v31, 1, v46);
    while (2)
    {
      v32 = v45;
      outlined init with copy of Participant?(v15, v45);
      if (__swift_getEnumTagSinglePayload(v32, 1, v46) != 1)
      {
        outlined destroy of Participant?(v32);
        v43 = *(v3 + 24) >> 1;
        if (v43 < v44 + 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v3 = v37;
          v43 = *(v37 + 24) >> 1;
        }

        v42 = v3 + v2;
        v33 = v46;
        while (1)
        {
          outlined init with copy of Participant?(v15, v11);
          if (__swift_getEnumTagSinglePayload(v11, 1, v33) == 1)
          {
            break;
          }

          outlined init with take of Participant(v11, v8);
          v32 = v44;
          if (v44 >= v43)
          {
            outlined destroy of Participant(v8);
            goto LABEL_38;
          }

          outlined destroy of Participant?(v15);
          outlined init with take of Participant(v8, v42 + v32 * v5);
          if (!v27)
          {
            while (1)
            {
              v34 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                break;
              }

              if (v34 >= v39)
              {
                v27 = 0;
                v36 = 1;
                goto LABEL_34;
              }

              v27 = *(v40 + 8 * v34);
              ++v16;
              if (v27)
              {
                v16 = v34;
                goto LABEL_33;
              }
            }

            __break(1u);
            goto LABEL_40;
          }

          v34 = v16;
LABEL_33:
          v35 = __clz(__rbit64(v27));
          v27 &= v27 - 1;
          outlined init with copy of Participant(*(v41 + 48) + (v35 | (v34 << 6)) * v5, v15);
          v36 = 0;
LABEL_34:
          v44 = v32 + 1;
          v33 = v46;
          __swift_storeEnumTagSinglePayload(v15, v36, 1, v46);
        }

        outlined destroy of Participant?(v11);
        v32 = v44;
LABEL_38:
        *(v3 + 16) = v32;
        continue;
      }

      break;
    }

LABEL_40:
    outlined destroy of Participant?(v15);
    outlined consume of Set<TUHandle>.Iterator._Variant(v41);
    outlined destroy of Participant?(v32);
    goto LABEL_8;
  }

LABEL_14:
  v39 = (v23 + 64) >> 6;
  while (1)
  {
    v29 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v29 >= ((v23 + 64) >> 6))
    {
      v27 = 0;
      v31 = 1;
      goto LABEL_20;
    }

    v30 = *(v22 + 8 * v29);
    ++v16;
    if (v30)
    {
      v27 = (v30 - 1) & v30;
      v28 = __clz(__rbit64(v30)) | (v29 << 6);
      v16 = v29;
      goto LABEL_19;
    }
  }

  __break(1u);
}

{
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_5_9();
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_14();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 32 * v6 + 32), (a1 + 32), 32 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  specialized Array.append<A>(contentsOf:)(a1);
}

{
  v4 = OUTLINED_FUNCTION_0_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  OUTLINED_FUNCTION_14_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_34();
  if (v10 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_16_18(v3 + 16 * v9 + 32, v7, v8, MEMORY[0x1E69E6158]);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_13_18();
  if (!v5)
  {
    *(v3 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v6 = *(a1 + 16);
  OUTLINED_FUNCTION_5_9();
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_9;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v7 + v6, 1);
  v1 = *v2;
  v8 = *(*v2 + 16);
  v9 = (*(*v2 + 24) >> 1) - v8;
  v10 = specialized Sequence._copySequenceContents(initializing:)(&v26, *v2 + 8 * v8 + 32, v9, a1);
  if (v10 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v10)
  {
    v11 = *(v1 + 16);
    v12 = __OFADD__(v11, v10);
    v13 = v10 + v11;
    if (v12)
    {
      __break(1u);
LABEL_24:
      *(v1 + 16) = v3 + v4 + 1;
      goto LABEL_7;
    }

    *(v1 + 16) = v13;
  }

  if (v10 != v9)
  {
LABEL_7:

    *v2 = v1;
    return;
  }

LABEL_10:
  if (!v27)
  {
    goto LABEL_7;
  }

  v14 = v27 - 1;
  if (__OFSUB__(v27, 1))
  {
    goto LABEL_26;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = v26;
  if (v14 < *(v26 + 16))
  {
    v3 = *(v1 + 16);
    v16 = *(v26 + 8 * v14 + 32);
    v17 = v27 - 1;

    v18 = v17;
    v19 = v15;
    v25 = v15 + 24;
LABEL_15:
    v20 = *(v1 + 24) >> 1;
    v21 = v18;
    if (v20 < v3 + 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v18 = v21;
      v1 = v24;
      v20 = *(v24 + 24) >> 1;
    }

    v4 = 0;
    for (i = v18; ; i = v23)
    {
      if (v3 + v4 >= v20)
      {
        *(v1 + 16) = v3 + v4;
        v18 -= v4;
        v3 += v4;
        goto LABEL_15;
      }

      *(v1 + 8 * v3 + 32 + 8 * v4) = v16;
      if (v18 == v4)
      {
        goto LABEL_24;
      }

      v23 = i - 1;
      if (i - 1 >= *(v19 + 16))
      {
        break;
      }

      v16 = *(v25 + 8 * i);

      v18 = v21;
      ++v4;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_28:
  __break(1u);
}

{
  specialized Array.append<A>(contentsOf:)(a1);
}

{
  specialized Array.append<A>(contentsOf:)(a1);
}

{
  v4 = OUTLINED_FUNCTION_0_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  OUTLINED_FUNCTION_14_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_34();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v3 + 8 * v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18NSLayoutConstraintCSgMd, &_sSo18NSLayoutConstraintCSgMR);
  OUTLINED_FUNCTION_16_18(v9 + 32, v11, v12, v10);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_13_18();
  if (!v5)
  {
    *(v3 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v7 = v1;
  v9 = specialized Set.count.getter(a1);
  v10 = specialized Array.count.getter();
  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v12, 1);
  OUTLINED_FUNCTION_2_29();
  v17 = specialized Sequence._copySequenceContents(initializing:)(v13, v14, v15, v16);
  if (v17 < v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v17 >= 1)
  {
    v18 = *(v3 + 16);
    v11 = __OFADD__(v18, v17);
    v19 = v17 + v18;
    if (v11)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v3 + 16) = v19;
  }

  if (v17 != v1)
  {
LABEL_7:
    outlined consume of Set<TUHandle>.Iterator._Variant(v57);
    *v7 = v2;
    return;
  }

LABEL_10:
  OUTLINED_FUNCTION_11_12();
  if (v4 < 0)
  {
LABEL_14:
    v1 = v4 & 0x7FFFFFFFFFFFFFFFLL;
    v20 = __CocoaSet.Iterator.next()();
    if (!v20)
    {
      goto LABEL_7;
    }

    v54 = v20;
    v21 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    OUTLINED_FUNCTION_3_22(v21, v22, v23, v24, v25, v26, v27, v28, v51, v52, v53, v54, v56);
    OUTLINED_FUNCTION_25_10();
    v5 = v56;
    goto LABEL_20;
  }

  if (a1)
  {
    OUTLINED_FUNCTION_8_23(v6);
  }

  else
  {
    OUTLINED_FUNCTION_22_10();
    v30 = v29 >> 6;
    while (1)
    {
      if (__OFADD__(v6, 1))
      {
        goto LABEL_42;
      }

      if (v6 + 1 >= v30)
      {
        break;
      }

      OUTLINED_FUNCTION_19_4();
    }

    OUTLINED_FUNCTION_21_9();
  }

LABEL_20:
  if (!v5)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_22_10();
  v32 = v31 >> 6;
LABEL_22:
  OUTLINED_FUNCTION_17_14();
  if (!(v34 ^ v11 | v33))
  {
    v1 = v7;
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  OUTLINED_FUNCTION_7_25();
  while (1)
  {
    if (v3 >= v1)
    {
      OUTLINED_FUNCTION_23_11(v35, v36, v37, v38, v39, v40, v41, v42, v51);
      goto LABEL_22;
    }

    *(v53 + 8 * v3++) = v5;
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    v35 = __CocoaSet.Iterator.next()();
    if (!v35)
    {
      goto LABEL_39;
    }

    v55 = v35;
    v43 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    OUTLINED_FUNCTION_3_22(v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v55, v56);
    v35 = OUTLINED_FUNCTION_25_10();
    v5 = v56;
LABEL_35:
    if (!v5)
    {
LABEL_39:
      OUTLINED_FUNCTION_23_11(v35, v36, v37, v38, v39, v40, v41, v42, v51);
      goto LABEL_7;
    }
  }

  if (a1)
  {
    OUTLINED_FUNCTION_9_15();
LABEL_32:
    OUTLINED_FUNCTION_24_11();
    goto LABEL_35;
  }

  while (!__OFADD__(v6, 1))
  {
    if (v6 + 1 >= v32)
    {
      OUTLINED_FUNCTION_21_9();
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_19_4();
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_0_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  OUTLINED_FUNCTION_14_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_34();
  if (v10 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_16_18(v3 + 40 * v9 + 32, v7, v8, &type metadata for Application);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_13_18();
  if (!v5)
  {
    *(v3 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_0_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  OUTLINED_FUNCTION_14_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_34();
  if (v10 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_16_18(v3 + 72 * v9 + 32, v7, v8, &type metadata for LinkDetailViewController.Item);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_13_18();
  if (!v5)
  {
    *(v3 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v7 = v1;
  v9 = specialized Set.count.getter(a1);
  v10 = specialized Array.count.getter();
  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v12, 1);
  OUTLINED_FUNCTION_2_29();
  v17 = specialized Sequence._copySequenceContents(initializing:)(v13, v14, v15, v16);
  if (v17 < v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v17 >= 1)
  {
    v18 = *(v3 + 16);
    v11 = __OFADD__(v18, v17);
    v19 = v17 + v18;
    if (v11)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v3 + 16) = v19;
  }

  if (v17 != v1)
  {
LABEL_7:
    outlined consume of Set<TUHandle>.Iterator._Variant(v57);
    *v7 = v2;
    return;
  }

LABEL_10:
  OUTLINED_FUNCTION_11_12();
  if (v4 < 0)
  {
LABEL_14:
    v1 = v4 & 0x7FFFFFFFFFFFFFFFLL;
    v20 = __CocoaSet.Iterator.next()();
    if (!v20)
    {
      goto LABEL_7;
    }

    v54 = v20;
    v21 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    OUTLINED_FUNCTION_3_22(v21, v22, v23, v24, v25, v26, v27, v28, v51, v52, v53, v54, v56);
    OUTLINED_FUNCTION_25_10();
    v5 = v56;
    goto LABEL_20;
  }

  if (a1)
  {
    OUTLINED_FUNCTION_8_23(v6);
  }

  else
  {
    OUTLINED_FUNCTION_22_10();
    v30 = v29 >> 6;
    while (1)
    {
      if (__OFADD__(v6, 1))
      {
        goto LABEL_42;
      }

      if (v6 + 1 >= v30)
      {
        break;
      }

      OUTLINED_FUNCTION_19_4();
    }

    OUTLINED_FUNCTION_21_9();
  }

LABEL_20:
  if (!v5)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_22_10();
  v32 = v31 >> 6;
LABEL_22:
  OUTLINED_FUNCTION_17_14();
  if (!(v34 ^ v11 | v33))
  {
    v1 = v7;
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  OUTLINED_FUNCTION_7_25();
  while (1)
  {
    if (v3 >= v1)
    {
      OUTLINED_FUNCTION_23_11(v35, v36, v37, v38, v39, v40, v41, v42, v51);
      goto LABEL_22;
    }

    *(v53 + 8 * v3++) = v5;
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    v35 = __CocoaSet.Iterator.next()();
    if (!v35)
    {
      goto LABEL_39;
    }

    v55 = v35;
    v43 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    OUTLINED_FUNCTION_3_22(v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v55, v56);
    v35 = OUTLINED_FUNCTION_25_10();
    v5 = v56;
LABEL_35:
    if (!v5)
    {
LABEL_39:
      OUTLINED_FUNCTION_23_11(v35, v36, v37, v38, v39, v40, v41, v42, v51);
      goto LABEL_7;
    }
  }

  if (a1)
  {
    OUTLINED_FUNCTION_9_15();
LABEL_32:
    OUTLINED_FUNCTION_24_11();
    goto LABEL_35;
  }

  while (!__OFADD__(v6, 1))
  {
    if (v6 + 1 >= v32)
    {
      OUTLINED_FUNCTION_21_9();
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_19_4();
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

{
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_5_9();
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_14();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 8 * v6 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_0_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  OUTLINED_FUNCTION_14_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_34();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v3 + 16 * v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
  OUTLINED_FUNCTION_16_18(v9 + 32, v11, v12, v10);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_13_18();
  if (!v5)
  {
    *(v3 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_76_1()
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_76_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

id OUTLINED_FUNCTION_50_3()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_90_0(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_90_1()
{

  return type metadata accessor for Date();
}

id OUTLINED_FUNCTION_90_4()
{
  *(v1 + 192) = v2;
  *(v1 + 200) = v3;
  *(v1 + 208) = 0;
  *(v1 + 216) = v0;
  *(v1 + 224) = 0;
  *(v1 + 232) = 0;

  return v4;
}

uint64_t OUTLINED_FUNCTION_90_6()
{
  *(v1 - 180) = v0;

  return swift_slowAlloc();
}

void specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15ConversationKit18CallGameControllerC0gH8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit18CallGameControllerC0gH8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVGMR, specialized UnsafeMutablePointer.moveInitialize(from:count:), &type metadata for CallGameController.GameControllerEventBox);
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

uint64_t RecentsCollectionViewCollator.upcomingSectionItemLimit.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator____lazy_storage___upcomingSectionItemLimit);
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator____lazy_storage___upcomingSectionItemLimit + 8) != 1)
  {
    return *v1;
  }

  result = closure #1 in RecentsCollectionViewCollator.upcomingSectionItemLimit.getter();
  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t closure #1 in RecentsCollectionViewCollator.upcomingSectionItemLimit.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x1BFB209B0](0xD000000000000018, 0x80000001BC514000);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v6, v7);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_sypSgMd, &_sypSgMR);
    v3 = MEMORY[0x1BFB209B0](0xD000000000000018, 0x80000001BC514000);
    v4 = [v0 integerForKey_];
  }

  else
  {

    memset(v7, 0, sizeof(v7));
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_sypSgMd, &_sypSgMR);
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

uint64_t static RecentsCollectionViewSection.callItemCases.getter()
{
  specialized Array.subscript.getter(2, 15, &outlined read-only object #0 of static RecentsCollectionViewSection.allCases.getter);
  v1 = v0;
  v3 = v2;
  v5 = v4;
  if ((v4 & 1) == 0)
  {
    goto LABEL_2;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);

  if (__OFSUB__(v5 >> 1, v3))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v10 != (v5 >> 1) - v3)
  {
LABEL_12:
    swift_unknownObjectRelease_n();
LABEL_2:
    v6 = OUTLINED_FUNCTION_46();
    specialized _copyCollectionToContiguousArray<A>(_:)(v6, v7, v3, v5);
    v1 = v8;
LABEL_9:
    swift_unknownObjectRelease();
    return v1;
  }

  swift_dynamicCastClass();
  OUTLINED_FUNCTION_28_0();
  swift_unknownObjectRelease_n();
  if (!v1)
  {
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  return v1;
}

void specialized Array.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_24_31();
  if (v5)
  {
    v6 = v4 < v3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {

    return;
  }

LABEL_10:
  __break(1u);
}

{
  specialized Array.subscript.getter(a1, a2);
}

{
  specialized Array.subscript.getter(a1, a2);
}

{
  specialized Array.subscript.getter(a1, a2);
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit28RecentsCollectionViewSectionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit28RecentsCollectionViewSectionOGMR);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
    }

    if (v4 != a3)
    {
      memcpy(v8 + 4, (a2 + a3), v5);
      return;
    }

    goto LABEL_10;
  }
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15ConversationKit11ParticipantV_Tt1g5, type metadata accessor for Participant);
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNMutableContact, 0x1E695CF18);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15ConversationKit16CaptionSectionerV0J0V_Tt1g5, type metadata accessor for CaptionSectioner.Caption);
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15ConversationKit11ParticipantV7CaptionV_Tt1g5, type metadata accessor for Participant.Caption);
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_5_15();
  MEMORY[0x1BFB22640](v1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  v3 = MEMORY[0x1BFB22620](*(v1 + 40), a1);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v1 = a1;
  v2 = specialized RawRepresentable<>._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAE014CommunicationsB0E17acceptsFirstMouseQryFQOyACyACyACyAA0hiG13ConfigurationV5LabelVAA14_PaddingLayoutVGAQGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_G_AA017BorderedProminentiG0VQo_AUyAA0I11BorderShapeVGGAUyAA03AnyzG0VSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAE014CommunicationsB0E17acceptsFirstMouseQryFQOyACyACyACyAA0hiG13ConfigurationV5LabelVAA14_PaddingLayoutVGAQGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_G_AA017BorderedProminentiG0VQo_AUyAA0I11BorderShapeVGGAUyAA03AnyzG0VSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a2);
  return Hasher._finalize()();
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew()()
{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  v0 = OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v0, v1, v2, v3);
}

{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t RecentsCallItem.date.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  type metadata accessor for RecentsCallItem(v0);
  return OUTLINED_FUNCTION_248();
}

void static RecentsCollectionViewModel.section(_:includes:now:calendar:)()
{
  OUTLINED_FUNCTION_29();
  v117 = v1;
  v118 = v2;
  v4 = v3;
  v6 = v5;
  v121 = type metadata accessor for Calendar.Component();
  OUTLINED_FUNCTION_1();
  v119 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_40();
  v120 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4();
  v116 = v12;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v115 = v14;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v114 = v16;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v113 = v18;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v106 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_32_18();
  v23 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4();
  v112 = v27;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v111 = v29;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v110 = v31;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v109 = v33;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_32();
  v36 = v35;
  v37 = *v6;
  v39 = *(v4 + 3);
  v38 = *(v4 + 4);
  v40 = OUTLINED_FUNCTION_20_36();
  __swift_project_boxed_opaque_existential_1(v40, v41);
  (*(v38 + 16))(v39, v38);
  OUTLINED_FUNCTION_43_13(v21);
  if (v42)
  {
    v43 = *(v4 + 3);
    v44 = *(v4 + 4);
    __swift_project_boxed_opaque_existential_1(v4, v43);
    (*(v44 + 8))(v43, v44);
    OUTLINED_FUNCTION_43_13(v21);
    v48 = v25;
    if (!v42)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v25 + 32))(v0, v21, v23);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v23);
    v48 = v25;
  }

  OUTLINED_FUNCTION_43_13(v0);
  if (v42)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v37 == 3)
    {
      v49 = *(v4 + 4);
      __swift_project_boxed_opaque_existential_1(v4, *(v4 + 3));
      v50 = OUTLINED_FUNCTION_28_0();
      v51(v50, v49);
    }
  }

  else
  {
    v52 = v36;
    v53 = *(v48 + 32);
    v54 = v36;
    v55 = v23;
    v53(v54, v0, v23);
    v56 = v121;
    switch(v37)
    {
      case 3:
        v68 = v48;
        v69 = *(v4 + 3);
        v70 = *(v4 + 4);
        __swift_project_boxed_opaque_existential_1(v4, v69);
        (*(v70 + 32))(v69, v70);
        (*(v68 + 8))(v52, v23);
        break;
      case 4:
        static Date.> infix(_:_:)();
        (*(v48 + 8))(v52, v23);
        break;
      case 5:
        v57 = MEMORY[0x1E6969A48];
        goto LABEL_21;
      case 6:
        v82 = v121;
        v107 = v48;
        OUTLINED_FUNCTION_22_33();
        v84 = v83;
        LODWORD(v116) = v85;
        v115 = v86;
        v86(v83);
        v62 = v113;
        OUTLINED_FUNCTION_10_58();
        Calendar.date(byAdding:value:to:wrappingComponents:)();
        v87 = *(v4 + 1);
        v87(v84, v82);
        OUTLINED_FUNCTION_57(v62);
        if (v42)
        {
          goto LABEL_33;
        }

        v119 = v87;
        v96 = v109;
        v97 = OUTLINED_FUNCTION_20_36();
        (v53)(v97);
        v115(v84, v116, v82);
        Calendar.isDate(_:equalTo:toGranularity:)();
        v119(v84, v82);
        v98 = *(v107 + 8);
        v98(v96, v55);
        v99 = OUTLINED_FUNCTION_36_24();
        (v98)(v99);
        break;
      case 7:
        v57 = MEMORY[0x1E6969A10];
        goto LABEL_21;
      case 8:
        v107 = v48;
        v92 = v119;
        v93 = *(v119 + 13);
        v94 = v120;
        LODWORD(v116) = *MEMORY[0x1E6969A10];
        v115 = v93;
        v93(v120);
        v62 = v114;
        OUTLINED_FUNCTION_10_58();
        Calendar.date(byAdding:value:to:wrappingComponents:)();
        v95 = *(v92 + 1);
        v95(v94, v56);
        OUTLINED_FUNCTION_57(v62);
        if (v42)
        {
          goto LABEL_33;
        }

        v119 = v95;
        v103 = v110;
        v53(v110, v62, v55);
        v115(v94, v116, v56);
        Calendar.isDate(_:equalTo:toGranularity:)();
        v119(v94, v56);
        v104 = *(v107 + 8);
        v104(v103, v55);
        v105 = OUTLINED_FUNCTION_36_24();
        (v104)(v105);
        break;
      case 9:
        v57 = MEMORY[0x1E6969A78];
        goto LABEL_21;
      case 10:
        v107 = v48;
        OUTLINED_FUNCTION_22_33();
        v59 = v88;
        LODWORD(v116) = v89;
        v114 = v90;
        (v90)(v88);
        v62 = v115;
        OUTLINED_FUNCTION_10_58();
        Calendar.date(byAdding:value:to:wrappingComponents:)();
        v91 = OUTLINED_FUNCTION_39_14();
        v4(v91);
        OUTLINED_FUNCTION_57(v62);
        if (v42)
        {
          goto LABEL_33;
        }

        v119 = v4;
        v64 = v111;
        v100 = OUTLINED_FUNCTION_20_36();
        (v53)(v100);
        v66 = v59;
        v67 = v116;
        goto LABEL_35;
      case 11:
        v57 = MEMORY[0x1E6969A68];
LABEL_21:
        v71 = v119;
        v72 = v120;
        (*(v119 + 13))(v120, *v57, v121);
        Calendar.isDate(_:equalTo:toGranularity:)();
        (*(v71 + 1))(v72, v56);
        (*(v48 + 8))(v52, v23);
        break;
      case 12:
        v107 = v48;
        OUTLINED_FUNCTION_22_33();
        v59 = v58;
        LODWORD(v115) = v60;
        v114 = v61;
        (v61)(v58);
        v62 = v116;
        OUTLINED_FUNCTION_10_58();
        Calendar.date(byAdding:value:to:wrappingComponents:)();
        v63 = OUTLINED_FUNCTION_39_14();
        v4(v63);
        OUTLINED_FUNCTION_57(v62);
        if (v42)
        {
LABEL_33:
          (*(v107 + 8))(v108, v55);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v62, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        }

        else
        {
          v119 = v4;
          v64 = v112;
          v65 = OUTLINED_FUNCTION_20_36();
          (v53)(v65);
          v66 = v59;
          v67 = v115;
LABEL_35:
          v114(v66, v67, v56);
          Calendar.isDate(_:equalTo:toGranularity:)();
          v119(v59, v56);
          v101 = *(v107 + 8);
          v101(v64, v55);
          v102 = OUTLINED_FUNCTION_36_24();
          (v101)(v102);
        }

        break;
      case 13:
        v73 = *MEMORY[0x1E6969A68];
        v74 = v121;
        v75 = v119;
        v76 = *(v119 + 13);
        v77 = v120;
        v76(v120, v73, v121);
        v108 = v52;
        v116 = Calendar.component(_:from:)();
        v78 = *(v75 + 1);
        v78(v77, v74);
        v76(v77, v73, v74);
        v79 = Calendar.component(_:from:)();
        v78(v77, v74);
        v80 = OUTLINED_FUNCTION_36_24();
        v81(v80);
        if (__OFSUB__(v79, 1))
        {
          __break(1u);
          JUMPOUT(0x1BBC886ECLL);
        }

        break;
      case 14:
        (*(v48 + 8))(v52, v23);
        break;
      default:
        (*(v48 + 8))(v52, v23);
        break;
    }
  }

  OUTLINED_FUNCTION_30_0();
}

void RecentsCallItem.sectionDate.getter()
{
  OUTLINED_FUNCTION_50_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_140_0();
  v4 = OUTLINED_FUNCTION_20_44();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    OUTLINED_FUNCTION_3_129();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    OUTLINED_FUNCTION_162_1();
LABEL_8:
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    goto LABEL_9;
  }

  v5 = *v0;
  ConversationLink.prevailingSuggestion.getter();
  if (!v6)
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    goto LABEL_7;
  }

  v7 = v6;
  SGURL.endDate.getter(v1);

  type metadata accessor for Date();
  v8 = OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_83_0(v8);
  if (v9)
  {
LABEL_7:
    v20 = OUTLINED_FUNCTION_91_2();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, v21, &_s10Foundation4DateVSgMR);

    OUTLINED_FUNCTION_162_1();
    OUTLINED_FUNCTION_31_2();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_2_3();
  v10 = OUTLINED_FUNCTION_29_6();
  v11(v10);

  v12 = OUTLINED_FUNCTION_66_7();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
LABEL_9:
  OUTLINED_FUNCTION_49();
}

uint64_t OUTLINED_FUNCTION_147(uint64_t a1)
{

  return swift_dynamicCast();
}

BOOL RecentsCallItem.isOngoing.getter()
{
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_15_14();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_45_1();
  v1 = swift_getEnumCaseMultiPayload() == 1;
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  return v1;
}

uint64_t OUTLINED_FUNCTION_18_18()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18_20(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_18_21()
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t OUTLINED_FUNCTION_18_22()
{

  return static ConversationControlsType.== infix(_:_:)(v0 - 136, v0 - 192);
}

uint64_t OUTLINED_FUNCTION_18_25(char a1)
{
  *(v3 + v2[8]) = a1 & 1;
  *(v3 + v2[9]) = *(v1 + 492) & 1;
  *(v3 + v2[10]) = 0;

  return Participant.videoInfo.getter();
}

uint64_t OUTLINED_FUNCTION_18_26()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_18_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0xE000000000000000;
  v8 = 0;

  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&a1, *&a3, v4, *&v6, *&v8)._countAndFlagsBits;
}

uint64_t OUTLINED_FUNCTION_18_28(uint64_t a1)
{

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_18_32()
{
}

void OUTLINED_FUNCTION_18_34()
{
  *(v1 - 96) = 60;
  *(v1 - 88) = 0xE100000000000000;
  *(v1 - 104) = v0;
}

uint64_t OUTLINED_FUNCTION_18_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return _typeName(_:qualified:)();
}

uint64_t OUTLINED_FUNCTION_18_37()
{

  return type metadata accessor for Date();
}

id OUTLINED_FUNCTION_18_40(uint64_t a1)
{
  v4 = *(v2 + 3816);

  return [v1 v4];
}

uint64_t OUTLINED_FUNCTION_18_46(__n128 a1)
{

  return static NSTimer.publish(every:tolerance:on:in:options:)();
}

id OUTLINED_FUNCTION_18_49()
{

  return [v1 (v0 + 2808)];
}

uint64_t OUTLINED_FUNCTION_18_50(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_18_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, a4);
}

void OUTLINED_FUNCTION_18_54()
{

  specialized Set._Variant.remove(_:)();
}

NSNumber OUTLINED_FUNCTION_18_55()
{

  return Bool._bridgeToObjectiveC()();
}

uint64_t OUTLINED_FUNCTION_18_56()
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
  v3 = v1 + *(v2 + 20);

  return __swift_storeEnumTagSinglePayload(v3, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_18_59(uint64_t a1, unint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1((v2 - 296));

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v2 - 320));
}

__n128 OUTLINED_FUNCTION_18_60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a21, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, __n128 a22, __int128 a23)
{
  *v23 = a19;
  v23[1] = a20;
  result = a22;
  v23[2] = a22;
  v23[3] = a23;
  return result;
}

void OUTLINED_FUNCTION_18_61()
{

  _StringGuts.grow(_:)(58);
}

CGAffineTransform *OUTLINED_FUNCTION_18_70(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, CGAffineTransform *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  a15 = v21;
  a16 = v22;
  a17 = v23;
  a18 = v24;
  a19 = v25;
  a20 = v26;

  return CGAffineTransformInvert(&a9, &a15);
}

void RecentsCallItem.sectionOverride.getter()
{
  v2 = OUTLINED_FUNCTION_30();
  type metadata accessor for RecentsCallItemType(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_208();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_1_5();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    *v0 = 15;
    OUTLINED_FUNCTION_3_129();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    return;
  }

  v4 = *v1;
  OUTLINED_FUNCTION_162_1();
  static RecentsCallItem.shouldTargetUpcoming(for:)();
  if (v5)
  {
    ConversationLink.prevailingSuggestion.getter();
    if (!v6)
    {

LABEL_10:
      v9 = 4;
      goto LABEL_11;
    }

    v7 = v6;
    v8 = SGURL.hasEventDate.getter();

    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v9 = 15;
LABEL_11:
  *v0 = v9;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Set<TUConversationLink>?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationLink, 0x1E69D8B70);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationLink and conformance NSObject, &lazy cache variable for type metadata for TUConversationLink, 0x1E69D8B70);
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

void OUTLINED_FUNCTION_36_6()
{
  v2 = *(v0 - 312);
}

uint64_t OUTLINED_FUNCTION_36_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_36_11(uint64_t a1)
{

  return static _SetStorage.resize(original:capacity:move:)();
}

uint64_t OUTLINED_FUNCTION_36_13(uint64_t a1)
{

  return swift_unknownObjectWeakInit();
}

void OUTLINED_FUNCTION_36_16(uint64_t a1@<X8>)
{
  v5 = (v2 + a1);
  v5[3] = v3;
  v5[4] = v1;
  *v5 = v4;
}

uint64_t OUTLINED_FUNCTION_36_18()
{

  return outlined destroy of ParticipantGridView.IdentifiableParticipantTile();
}

id OUTLINED_FUNCTION_36_19(uint64_t a1)
{

  return [v1 (v2 + 3960)];
}

uint64_t OUTLINED_FUNCTION_36_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return outlined destroy of AnyHashable(va);
}

uint64_t OUTLINED_FUNCTION_36_26@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1 + 8) = 0;

  return swift_unknownObjectWeakInit();
}

char *OUTLINED_FUNCTION_36_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, int a23, uint64_t a24)
{
  v36 = *(v34 - 104);
  v37 = *(v34 - 96);

  return specialized SystemBannerHostViewController.init(controlsManager:sizeClass:type:delegate:isSystemAperturePresentation:requesterIdentifier:destination:layoutDescription:defaults:features:notificationCenter:activityUUID:fromActivityManager:)(v32, v31, v30, a21, a23, a24, v36, v37, v28 & 1, v29, v33, a19, a20, v24, v26, v25, a1, v27);
}

uint64_t OUTLINED_FUNCTION_36_30(uint64_t a1)
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

id OUTLINED_FUNCTION_36_32(uint64_t a1)
{

  return [v1 (v2 + 2040)];
}

id OUTLINED_FUNCTION_36_33()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_36_34()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_36_39(id a1)
{
  *(v2 + v1) = a1;

  return a1;
}

uint64_t OUTLINED_FUNCTION_36_40@<X0>(uint64_t a1@<X8>)
{

  return _s15ConversationKit11ParticipantVWOcTm_4(v1 + a1 * v3, v2, type metadata accessor for Participant);
}

uint64_t closure #2 in RecentsLinkController.refreshLinks()(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = RecentsLinkController.modelLocked.getter();

    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a1;
    v8 = swift_allocObject();
    *(v8 + 16) = partial apply for closure #1 in closure #2 in RecentsLinkController.refreshLinks();
    *(v8 + 24) = v7;
    aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed RecentsLinkControllerModel) -> ();
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed RecentsLinkControllerModel) -> ();
    aBlock[3] = &block_descriptor_172;
    v9 = _Block_copy(aBlock);
    v10 = a2;

    [v6 performWhileLocked_];

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t (*specialized Dictionary.subscript.modify())()
{
  v2 = OUTLINED_FUNCTION_14_67();
  v3 = __swift_coroFrameAllocStub(v2);
  *v1 = v3;
  v3[4] = specialized Dictionary._Variant.subscript.modify(v3, v0);
  return Dictionary.subscript.modifyspecialized ;
}

{
  v2 = OUTLINED_FUNCTION_14_67();
  v3 = __swift_coroFrameAllocStub(v2);
  *v1 = v3;
  v3[4] = specialized Dictionary._Variant.subscript.modify(v3, v0);
  return Dictionary.subscript.modifyspecialized ;
}

{
  v2 = OUTLINED_FUNCTION_14_67();
  v3 = __swift_coroFrameAllocStub(v2);
  *v1 = v3;
  v3[4] = specialized Dictionary._Variant.subscript.modify(v3, v0 & 1);
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))()
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[8] = specialized Dictionary._Variant.asNative.modify(v4);
  v4[9] = specialized _NativeDictionary.subscript.modify((v4 + 4), a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

uint64_t closure #1 in closure #2 in RecentsLinkController.refreshLinks()(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.conversationKit;
    v6 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BC4BA940;
    v29[0] = a2;
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(reflecting:)();
    v11 = v10;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v7 + 32) = v9;
    *(v7 + 40) = v11;
    os_log(_:dso:log:type:_:)("Failed to get links: %@", 23, 2, &dword_1BBC58000, v5, v6, v7);

    goto LABEL_20;
  }

  if (!(*(*a1 + 160))(a1))
  {
    if (!a3)
    {
      goto LABEL_10;
    }

LABEL_14:
    v16 = *(*a1 + 168);

    v16(v17);
    if (a3)
    {
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo18TUConversationLinkCG_15ConversationKit0fE0Vs5NeverOTg504_s15f12Kit21Recentse37ControllerC12refreshLinksyyFyShySo014d9D0CGSg_s5c35_pSgtYbcfU0_yAA0cdE5ModelCXEfU_AA0aR8VAFXEfU_Tf1cn_n(a3);
      v19 = v18;
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BC4BA940;
    v29[0] = *(v19 + 16);
    v22 = String.init<A>(reflecting:)();
    v24 = v23;
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    v25 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("updatedLinks - count: %@", 24, 2, &dword_1BBC58000, v20, v25, v21);

    (*(*a1 + 240))(v19);
    goto LABEL_20;
  }

  if (!a3)
  {

    goto LABEL_14;
  }

  v13 = _sSh2eeoiySbShyxG_ABtFZSo18TUConversationLinkC_Tt1g5();

  if ((v13 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.conversationKit;
  v15 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("model links unchanged - skipping update", 39, 2, &dword_1BBC58000, v14, v15, MEMORY[0x1E69E7CC0]);
LABEL_20:
  v27 = (*(*a1 + 200))(v29);
  if (*v26)
  {
    *v26 &= ~1uLL;
  }

  return v27(v29, 0);
}

uint64_t (*specialized _NativeDictionary.subscript.modify(uint64_t a1, uint64_t a2, char a3))(uint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v9;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit28RecentsCollectionViewSectionOSayAC0efG11Sectionable_pGGMd, &_ss17_NativeDictionaryVy15ConversationKit28RecentsCollectionViewSectionOSayAC0efG11Sectionable_pGGMR);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) == (v17 & 1))
    {
      v14 = v16;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  *(a1 + 16) = v14;
  if (v15)
  {
    v18 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v18 = 0;
  }

  *a1 = v18;
  return _NativeDictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSo8TUHandleC_Tt1g5Tm()
{
  OUTLINED_FUNCTION_16_36();
  if (v5)
  {
    if (!v4)
    {
      if (v1 == v0)
      {
LABEL_31:
        v10 = 1;
      }

      else
      {
        if (*(v1 + 16) == *(v0 + 16))
        {
          v12 = 1 << *(v1 + 32);
          if (v12 < 64)
          {
            v13 = ~(-1 << v12);
          }

          else
          {
            v13 = -1;
          }

          v14 = v13 & *(v1 + 56);
          v7 = type metadata accessor for NSObject(0, v2, v3);
          v15 = 0;
          v16 = (v12 + 63) >> 6;
          v28 = v16;
          if (v14)
          {
            while (2)
            {
              v17 = __clz(__rbit64(v14));
              v29 = (v14 - 1) & v14;
LABEL_26:
              v21 = *(v0 + 40);
              v22 = *(*(v1 + 48) + 8 * (v17 | (v15 << 6)));
              v23 = NSObject._rawHashValue(seed:)(v21);
              v24 = ~(-1 << *(v0 + 32));
              do
              {
                v25 = v23 & v24;
                if (((*(v0 + 56 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v24)) & 1) == 0)
                {

                  goto LABEL_33;
                }

                v26 = *(*(v0 + 48) + 8 * v25);
                v27 = static NSObject.== infix(_:_:)();

                v23 = v25 + 1;
              }

              while ((v27 & 1) == 0);

              v16 = v28;
              v14 = v29;
              if (v29)
              {
                continue;
              }

              break;
            }
          }

          v18 = v15;
          while (1)
          {
            v15 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              break;
            }

            if (v15 >= v16)
            {
              goto LABEL_31;
            }

            ++v18;
            if (*(v1 + 56 + 8 * v15))
            {
              OUTLINED_FUNCTION_7_1();
              v29 = v20 & v19;
              goto LABEL_26;
            }
          }

          __break(1u);
          return MEMORY[0x1EEE6A200](v7);
        }

LABEL_33:
        v10 = 0;
      }

      return v10 & 1;
    }

    v8 = OUTLINED_FUNCTION_5_61();
    v9 = v1;
LABEL_12:
    specialized _NativeSet.isEqual(to:)(v8, v9);
    return v10 & 1;
  }

  if (v1 < 0)
  {
    v6 = v1;
  }

  else
  {
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
  }

  if (!v4)
  {
    v8 = v6;
    v9 = v0;
    goto LABEL_12;
  }

  v7 = OUTLINED_FUNCTION_5_61();

  return MEMORY[0x1EEE6A200](v7);
}

void ButtonsStackView.viewModel.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void specialized _NativeSet.isEqual(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == __CocoaSet.count.getter())
  {
    v4 = 0;
    OUTLINED_FUNCTION_15_27();
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & v5;
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v14 = *(*(a2 + 48) + 8 * (v10 | (v4 << 6)));
      v15 = __CocoaSet.contains(_:)();

      if ((v15 & 1) == 0)
      {
        return;
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

      if (v4 >= v9)
      {
        return;
      }

      ++v11;
      if (*(a2 + 8 * v4))
      {
        OUTLINED_FUNCTION_7_1();
        v8 = v13 & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t objectdestroy_69Tm()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t objectdestroy_69Tm_0(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));
  OUTLINED_FUNCTION_24();

  return swift_deallocObject();
}

uint64_t _NativeDictionary.subscript.modifyspecialized (uint64_t result)
{
  if (*result)
  {
    if (*(result + 25))
    {
      *(*(**(result + 8) + 56) + 8 * *(result + 16)) = *result;
    }

    else
    {

      return specialized _NativeDictionary._insert(at:key:value:)();
    }
  }

  else if (*(result + 25))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit32RecentsCollectionViewSectionable_pGMd, &_sSay15ConversationKit32RecentsCollectionViewSectionable_pGMR);
    lazy protocol witness table accessor for type RecentsCollectionViewSection and conformance RecentsCollectionViewSection();
    OUTLINED_FUNCTION_46();

    return _NativeDictionary._delete(at:)();
  }

  return result;
}

{
  if (*result)
  {
    if (*(result + 25))
    {
      *(*(**(result + 8) + 56) + 8 * *(result + 16)) = *result;
    }

    else
    {
      v1 = *(result + 24) & 1;
      v2 = *(result + 16);

      return specialized _NativeDictionary._insert(at:key:value:)(v2, v1);
    }
  }

  else if (*(result + 25))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15ConversationKit11ApplicationVGMd, &_sSDySS15ConversationKit11ApplicationVGMR);
    lazy protocol witness table accessor for type SharePlayDiscoverabilityType and conformance SharePlayDiscoverabilityType();
    OUTLINED_FUNCTION_46();

    return _NativeDictionary._delete(at:)();
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_2_68();
  specialized __RawDictionaryStorage.find<A>(_:)(v2);
  OUTLINED_FUNCTION_0_72();
  if (v3)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_28_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit28RecentsCollectionViewSectionOSayAC0efG11Sectionable_pGGMd, &_ss17_NativeDictionaryVy15ConversationKit28RecentsCollectionViewSectionOSayAC0efG11Sectionable_pGGMR);
  v4 = OUTLINED_FUNCTION_5_43();
  v6 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v4, v5);
  if (v6)
  {
    v9 = OUTLINED_FUNCTION_38_12();
    specialized __RawDictionaryStorage.find<A>(_:)(v9);
    OUTLINED_FUNCTION_7_43();
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_14_21(v6, v7, v8, *v0);
    OUTLINED_FUNCTION_49();
  }

  else
  {
    OUTLINED_FUNCTION_17_26();
    OUTLINED_FUNCTION_49();

    return specialized _NativeDictionary._insert(at:key:value:)();
  }
}

uint64_t outlined destroy of RecentsCallItem(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static RecentsCollectionViewModel.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static RecentsCollectionViewSection.callItemCases.getter();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v24 = v4;
    v25 = v4 + 32;
    v22 = v3;
    v23 = v2;
    v21 = *(v4 + 16);
    while (v7 < *(v5 + 16))
    {
      v8 = *(v25 + v7);
      v26 = v7;
      if (*(v2 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v10 & 1) != 0))
      {
        v11 = *(*(v2 + 56) + 8 * v9);
      }

      else
      {
        v11 = 0;
      }

      if (*(v3 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v13 & 1) != 0))
      {
        v14 = *(*(v3 + 56) + 8 * v12);

        if (v11)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v14 = 0;
        if (v11)
        {
LABEL_14:
          if (v14)
          {
            v15 = *(v11 + 16);
            if (v15 == *(v14 + 16))
            {
              v16 = 0;
              v17 = 0;
              while (1)
              {
                if (v17 == v15)
                {
                  v39 = 0;
                  v17 = v15;
                  v37 = 0u;
                  v38 = 0u;
                }

                else
                {
                  if ((v17 & 0x8000000000000000) != 0)
                  {
                    __break(1u);
LABEL_41:
                    __break(1u);
LABEL_42:
                    __break(1u);
LABEL_43:
                    __break(1u);
                    goto LABEL_44;
                  }

                  if (v17 >= *(v11 + 16))
                  {
                    goto LABEL_41;
                  }

                  outlined init with copy of IDSLookupManager(v11 + 32 + 40 * v17++, &v37);
                }

                if (v16 == v15)
                {
                  v36 = 0;
                  v16 = v15;
                  v34 = 0u;
                  v35 = 0u;
                }

                else
                {
                  if ((v16 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_42;
                  }

                  if (v16 >= *(v14 + 16))
                  {
                    goto LABEL_43;
                  }

                  outlined init with copy of IDSLookupManager(v14 + 32 + 40 * v16++, &v34);
                }

                v29[0] = v37;
                v29[1] = v38;
                v30 = v39;
                v31 = v34;
                v32 = v35;
                v33 = v36;
                if (!*(&v38 + 1))
                {
                  break;
                }

                if (!*(&v32 + 1))
                {

                  __swift_destroy_boxed_opaque_existential_1(v29);
                  goto LABEL_36;
                }

                outlined init with take of ImageName(v29, v28);
                outlined init with take of ImageName(&v31, v27);
                closure #1 in static RecentsCollectionViewModel.== infix(_:_:)(v28, v27);
                v19 = v18;
                __swift_destroy_boxed_opaque_existential_1(v27);
                __swift_destroy_boxed_opaque_existential_1(v28);
                if ((v19 & 1) == 0)
                {
                  goto LABEL_30;
                }
              }

              v5 = v24;
              if (!*(&v32 + 1))
              {
                v3 = v22;
                v2 = v23;
                v6 = v21;
                goto LABEL_33;
              }

              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v31, &_s15ConversationKit32RecentsCollectionViewSectionable_pSgMd, &_s15ConversationKit32RecentsCollectionViewSectionable_pSgMR);
            }

            else
            {
LABEL_30:
            }
          }

          else
          {
LABEL_12:
          }

LABEL_36:

          return 0;
        }
      }

      if (v14)
      {
        goto LABEL_12;
      }

LABEL_33:
      v7 = v26 + 1;
      if (v26 + 1 == v6)
      {
        goto LABEL_34;
      }
    }

LABEL_44:
    __break(1u);

    __swift_destroy_boxed_opaque_existential_1(v27);
    result = __swift_destroy_boxed_opaque_existential_1(v28);
    __break(1u);
  }

  else
  {
LABEL_34:

    return 1;
  }

  return result;
}

uint64_t RecentsCollectionViewCollator.hasFinishedFirstLoad.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_92_0();
  static Published.subscript.getter();

  return v3;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1);
}

uint64_t specialized NSDiffableDataSourceSnapshot.appendItemsRemovingDupes(_:toSection:onDupe:)(uint64_t a1, char a2, void (*a3)(void), uint64_t a4)
{
  v9 = a2;
  v8 = MEMORY[0x1E69E7CD0];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a3, a4);

  _ss14_ArrayProtocolPsE6filterySay7ElementQzGSbAEKXEKFSay15ConversationKit15RecentsCallItemVG_Tg5041_s5UIKit28NSDiffableDataSourceSnapshotV15ef78E24appendItemsRemovingDupes_9toSection6onDupeySayq_G_xSgyq_cSgtFSbq_XEfU_AD021g23CollectionViewM0O_AD0P8hI4VTg5ShyAIGxRi_zRi0_zlyAIIsegn_SgTf1cn_n(v6, &v8, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit28RecentsCollectionViewSectionOAD0H8CallItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit28RecentsCollectionViewSectionOAD0H8CallItemVGMR);
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
}

void _ss14_ArrayProtocolPsE6filterySay7ElementQzGSbAEKXEKFSay15ConversationKit15RecentsCallItemVG_Tg5041_s5UIKit28NSDiffableDataSourceSnapshotV15ef78E24appendItemsRemovingDupes_9toSection6onDupeySayq_G_xSgyq_cSgtFSbq_XEfU_AD021g23CollectionViewM0O_AD0P8hI4VTg5ShyAIGxRi_zRi0_zlyAIIsegn_SgTf1cn_n(uint64_t a1, uint64_t *a2, void (*a3)(void), uint64_t a4)
{
  v32 = a4;
  v40 = a2;
  v6 = type metadata accessor for RecentsCallItem(0);
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v31 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = 0;
  v37 = *(a1 + 16);
  v39 = MEMORY[0x1E69E7CC0];
  v34 = a1;
  v35 = a3;
LABEL_2:
  v17 = v16;
  while (1)
  {
    if (v17 == v37)
    {

      outlined consume of (@escaping @callee_guaranteed () -> ())?(a3, v32);
      return;
    }

    if (v17 >= *(a1 + 16))
    {
      break;
    }

    v18 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v19 = *(v36 + 72);
    v20 = v17 + 1;
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(a1 + v18 + v19 * v17, v15, type metadata accessor for RecentsCallItem);
    v21 = *v40;
    v22 = *(*v40 + 16);
    v41 = v20;
    if (!v22)
    {
LABEL_13:
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(v15, v33, type metadata accessor for RecentsCallItem);
      specialized Set._Variant.insert(_:)();
      outlined destroy of RecentsCallItemType(v12, type metadata accessor for RecentsCallItem);
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v15, v38, type metadata accessor for RecentsCallItem);
      v28 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v28 = v42;
      }

      v30 = *(v28 + 16);
      if (v30 >= *(v28 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v28 = v42;
      }

      *(v28 + 16) = v30 + 1;
      v39 = v28;
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_2(v38, v28 + v18 + v30 * v19, type metadata accessor for RecentsCallItem);
      v16 = v41;
      goto LABEL_2;
    }

    Hasher.init(_seed:)();

    RecentsCallItem.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = ~(-1 << *(v21 + 32));
    do
    {
      v25 = v23 & v24;
      if (((*(v21 + 56 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v24)) & 1) == 0)
      {

        a1 = v34;
        a3 = v35;
        goto LABEL_13;
      }

      _s15ConversationKit19RecentsCallItemTypeOWOcTm_3(*(v21 + 48) + v25 * v19, v12, type metadata accessor for RecentsCallItem);
      static RecentsCallItem.== infix(_:_:)();
      v27 = v26;
      outlined destroy of RecentsCallItemType(v12, type metadata accessor for RecentsCallItem);
      v23 = v25 + 1;
    }

    while ((v27 & 1) == 0);

    a3 = v35;
    if (v35)
    {
      v35(v15);
    }

    outlined destroy of RecentsCallItemType(v15, type metadata accessor for RecentsCallItem);
    v17 = v41;
    a1 = v34;
  }

  __break(1u);
}

void specialized Set._Variant.insert(_:)()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for RecentsCallItem(0);
  v2 = OUTLINED_FUNCTION_9_0(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_2();
  v14 = v0;
  v3 = *v0;
  Hasher.init(_seed:)();
  RecentsCallItem.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_16_7();
  v6 = ~v5;
  while (1)
  {
    v7 = v4 & v6;
    OUTLINED_FUNCTION_239_1();
    if (((1 << v7) & *(v3 + 56 + v8)) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_7_85();
      OUTLINED_FUNCTION_40_2();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      v15 = *v14;
      v12 = OUTLINED_FUNCTION_258_0();
      specialized _NativeSet.insertNew(_:at:isUnique:)(v12, v13, isUniquelyReferenced_nonNull_native);
      *v14 = v15;
      OUTLINED_FUNCTION_21_46();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_7_85();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
    OUTLINED_FUNCTION_33_0();
    static RecentsCallItem.== infix(_:_:)();
    v10 = v9;
    OUTLINED_FUNCTION_5_116();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    if (v10)
    {
      break;
    }

    v4 = v7 + 1;
  }

  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  OUTLINED_FUNCTION_7_85();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
LABEL_7:
  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v27 = v4;
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_24_5();
  v26 = v0;
  v9 = *v0;
  OUTLINED_FUNCTION_4_121();
  _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v10, v11, MEMORY[0x1E69695B8]);
  OUTLINED_FUNCTION_112_6();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v28 = v9;
  v29 = v9 + 56;
  OUTLINED_FUNCTION_16_7();
  v14 = ~v13;
  while (1)
  {
    v15 = v12 & v14;
    OUTLINED_FUNCTION_239_1();
    if (((1 << v15) & *(v29 + v16)) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v7 + 16))(v1, v3, v5);
      v30 = *v26;
      v24 = OUTLINED_FUNCTION_43_0();
      specialized _NativeSet.insertNew(_:at:isUnique:)(v24, v25, isUniquelyReferenced_nonNull_native);
      *v26 = v30;
      (*(v7 + 32))(v27, v3, v5);
      goto LABEL_7;
    }

    v17 = *(v7 + 72) * v15;
    v18 = *(v7 + 16);
    v18(v1, *(v28 + 48) + v17, v5);
    OUTLINED_FUNCTION_4_121();
    _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, v19, MEMORY[0x1E69695C8]);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    v21 = *(v7 + 8);
    v22 = OUTLINED_FUNCTION_2_40();
    v21(v22);
    if (v20)
    {
      break;
    }

    v12 = v15 + 1;
  }

  (v21)(v3, v5);
  v18(v27, *(v28 + 48) + v17, v5);
LABEL_7:
  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_23_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_32();
  v7 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_4_121();
  _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v8, v9, MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_16_7();
  v12 = v11 & ~v10;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    while (1)
    {
      OUTLINED_FUNCTION_22_42();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      static Participant.State.== infix(_:_:)();
      if ((v14 & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && (*(v3 + *(v4 + 28)) == 0) == (*(v1 + *(v4 + 28)) == 0))
      {
        v15 = *(v4 + 24);
        v16 = (v1 + v15);
        v17 = *(v1 + v15);
        v18 = (v3 + v15);
        if (v17 == *v18 && ((v16[1] ^ v18[1]) & 1) == 0 && ((v16[2] ^ v18[2]) & 1) == 0 && ((v16[3] ^ v18[3]) & 1) == 0 && ((v16[4] ^ v18[4]) & 1) == 0)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_50_18();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      v12 = (v12 + 1) & v13;
      if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    OUTLINED_FUNCTION_4_31();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    OUTLINED_FUNCTION_22_42();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  }

  else
  {
LABEL_12:
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_22_42();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
    v19 = *v0;
    specialized _NativeSet.insertNew(_:at:isUnique:)();
    *v0 = v19;
    OUTLINED_FUNCTION_49_18();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
  }

  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  type metadata accessor for CountdownVoucher(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_2();
  v12 = v0;
  v3 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_4_121();
  _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v4, v5, MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_16_7();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    if (((1 << (v6 & v8)) & *(v3 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_33_30();
      OUTLINED_FUNCTION_7_8();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      v13 = *v12;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v1, v9, isUniquelyReferenced_nonNull_native);
      *v12 = v13;
      OUTLINED_FUNCTION_93_5();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_33_30();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
    v10 = static UUID.== infix(_:_:)();
    OUTLINED_FUNCTION_94_7();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    if (v10)
    {
      break;
    }

    v6 = v9 + 1;
  }

  OUTLINED_FUNCTION_94_7();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  OUTLINED_FUNCTION_33_30();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
LABEL_7:
  OUTLINED_FUNCTION_30_0();
}

BOOL OUTLINED_FUNCTION_187_0()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1, v0);
}

uint64_t OUTLINED_FUNCTION_187_1(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_231()
{
  v3 = *(v0 + *(v1 + 56));
}

id OUTLINED_FUNCTION_276()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_231_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{

  return _print_unlocked<A, B>(_:_:)();
}

uint64_t OUTLINED_FUNCTION_231_4(uint64_t result)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = result;
  *(v2 - 136) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      RecentsCallItem.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        static RecentsCallItem.== infix(_:_:)();
        v19 = v18;
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
        if (v19)
        {
          goto LABEL_15;
        }

        v16 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

{
  v23 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_8:
      v22 = v3;
      v13 = *v3;
      _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    specialized _NativeSet.copy()();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

{
  v4 = v3;
  v7 = type metadata accessor for ConversationControlsAction(0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      ConversationControlsAction.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        static ConversationControlsAction.== infix(_:_:)();
        v19 = v18;
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
        if (v19)
        {
          goto LABEL_15;
        }

        v16 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

{
  v23 = a1;
  v6 = type metadata accessor for Handle();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type Handle and conformance Handle, MEMORY[0x1E696EDC8], MEMORY[0x1E696EDF8]);
      v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type Handle and conformance Handle, MEMORY[0x1E696EDC8], MEMORY[0x1E696EE10]);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    specialized _NativeSet.copy()();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

{
  v6 = type metadata accessor for CountdownVoucher(0);
  MEMORY[0x1EEE9AC00](v6);
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v7 + 1);
      goto LABEL_8;
    }

    if (v8 <= v7)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
LABEL_8:
      v18 = v3;
      v9 = *v3;
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      dispatch thunk of Hashable.hash(into:)();
      v10 = Hasher._finalize()();
      v11 = ~(-1 << *(v9 + 32));
      while (1)
      {
        a2 = v10 & v11;
        if (((*(v9 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          break;
        }

        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        v12 = static UUID.== infix(_:_:)();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
        if (v12)
        {
          goto LABEL_16;
        }

        v10 = a2 + 1;
      }

      v3 = v18;
      goto LABEL_13;
    }

    specialized _NativeSet.copy()();
  }

LABEL_13:
  v13 = *v3;
  *(v13 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
  v15 = *(v13 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v17;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit15RecentsCallItemVGMd, &_ss11_SetStorageCy15ConversationKit15RecentsCallItemVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    for (i = result + 56; v10; ++*(v6 + 16))
    {
      v10 &= v10 - 1;
LABEL_12:
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      Hasher.init(_seed:)();
      RecentsCallItem.hash(into:)();
      Hasher._finalize()();
      v15 = _HashTable.nextHole(atOrAfter:)();
      *(i + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v1;
        goto LABEL_16;
      }

      v14 = *(v4 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt64VGMd, &_ss11_SetStorageCys6UInt64VGMR);
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = MEMORY[0x1BFB22620](*(v5 + 40), v15);
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v33 = type metadata accessor for Handle();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy20LiveCommunicationKit6HandleVGMd, &_ss11_SetStorageCy20LiveCommunicationKit6HandleVGMR);
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
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type Handle and conformance Handle, MEMORY[0x1E696EDC8], MEMORY[0x1E696EDF8]);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

double OUTLINED_FUNCTION_202_0()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

void OUTLINED_FUNCTION_202_1()
{

  ConversationControlsNoticeCoordinator.pop()();
}

void static RecentsCallItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_174();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_45_1();
  static RecentsCallItemType.== infix(_:_:)();
  if ((v14 & 1) == 0)
  {
    goto LABEL_60;
  }

  v15 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_15_42();
  if (v18)
  {
    if (!v16)
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_119_3(v17);
    v21 = v21 && v19 == v20;
    if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (v16)
  {
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_15_42();
  if (v24)
  {
    if (!v22)
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_119_3(v23);
    v27 = v21 && v25 == v26;
    if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (v22)
  {
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_15_42();
  if (v30)
  {
    if (!v28)
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_119_3(v29);
    v33 = v21 && v31 == v32;
    if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (v28)
  {
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_15_42();
  if (v36)
  {
    if (!v34)
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_119_3(v35);
    v39 = v21 && v37 == v38;
    if (!v39 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (v34)
  {
    goto LABEL_60;
  }

  v40 = *(v12 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_83_0(v1);
  if (!v21)
  {
    OUTLINED_FUNCTION_43_0();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_83_0(v1 + v40);
    if (!v41)
    {
      (*(v8 + 32))(v0, v1 + v40, v6);
      OUTLINED_FUNCTION_47_13();
      v46 = _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v44, v45, MEMORY[0x1E6969550]);
      v47 = OUTLINED_FUNCTION_246_1(v46);
      v48 = *(v8 + 8);
      v49 = OUTLINED_FUNCTION_78();
      v48(v49);
      v50 = OUTLINED_FUNCTION_138_2();
      v48(v50);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((v47 & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_48;
    }

    v42 = OUTLINED_FUNCTION_138_2();
    v43(v42);
LABEL_46:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_83_0(v1 + v40);
  if (!v21)
  {
    goto LABEL_46;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_48:
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_60;
  }

  v51 = v15[11];
  v52 = *(v5 + v51);
  v53 = *(v3 + v51);
  if (v52)
  {
    if (!v53)
    {
      goto LABEL_60;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    v54 = v53;
    v55 = v52;
    v56 = static NSObject.== infix(_:_:)();

    if ((v56 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (v53)
  {
    goto LABEL_60;
  }

  _sSasSQRzlE2eeoiySbSayxG_ABtFZSo9CNContactC_Tt1g5(*(v5 + v15[12]), *(v3 + v15[12]));
  if (v57)
  {
    v58 = v15[13];
    v59 = *(v5 + v58);
    v60 = *(v5 + v58 + 8);
    v61 = (v3 + v58);
    if (v59 != *v61 || v60 != v61[1])
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_60:
  OUTLINED_FUNCTION_30_0();
}

void static RecentsCallItemType.== infix(_:_:)()
{
  OUTLINED_FUNCTION_29();
  v27[4] = v1;
  v27[5] = v2;
  v3 = type metadata accessor for RecentOngoingConversationMetadata(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v27[3] = v6 - v5;
  v7 = OUTLINED_FUNCTION_4_24();
  v8 = type metadata accessor for RecentCallRecentItemMetadata(v7);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4();
  v27[2] = v10;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v27[1] = v12;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v13);
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_115_3();
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_224();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19RecentsCallItemTypeO_ACtMd, &_s15ConversationKit19RecentsCallItemTypeO_ACtMR);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v27 - v21;
  v24 = (v27 + *(v23 + 56) - v21);
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_89_4();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_44_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_169();
      OUTLINED_FUNCTION_205_2();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      OUTLINED_FUNCTION_2_40();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_10_71();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
        static RecentOngoingConversationMetadata.== infix(_:_:)();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_8_84();
      goto LABEL_16;
    case 2u:
      OUTLINED_FUNCTION_0_169();
      OUTLINED_FUNCTION_304();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      v25 = *v0;
      OUTLINED_FUNCTION_2_40();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v26 = *v24;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
        OUTLINED_FUNCTION_246();
        static NSObject.== infix(_:_:)();

        goto LABEL_20;
      }

      goto LABEL_17;
    case 3u:
      OUTLINED_FUNCTION_0_169();
      OUTLINED_FUNCTION_46();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      OUTLINED_FUNCTION_2_40();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_2_132();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      static RecentCallRecentItemMetadata.== infix(_:_:)();
      OUTLINED_FUNCTION_48_15();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      OUTLINED_FUNCTION_208();
      goto LABEL_19;
    case 4u:
      OUTLINED_FUNCTION_0_169();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      OUTLINED_FUNCTION_2_40();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_2_132();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      static RecentCallRecentItemMetadata.== infix(_:_:)();
      OUTLINED_FUNCTION_48_15();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      goto LABEL_19;
    default:
      OUTLINED_FUNCTION_0_169();
      OUTLINED_FUNCTION_29_6();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      OUTLINED_FUNCTION_2_40();
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_3:
        OUTLINED_FUNCTION_1_137();
LABEL_16:
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
LABEL_17:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s15ConversationKit19RecentsCallItemTypeO_ACtMd, &_s15ConversationKit19RecentsCallItemTypeO_ACtMR);
      }

      else
      {
        OUTLINED_FUNCTION_2_132();
        OUTLINED_FUNCTION_43_0();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
        OUTLINED_FUNCTION_153_2();
        static RecentCallRecentItemMetadata.== infix(_:_:)();
        OUTLINED_FUNCTION_48_15();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
LABEL_19:
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
LABEL_20:
        OUTLINED_FUNCTION_3_129();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      }

      OUTLINED_FUNCTION_30_0();
      return;
  }
}

id OUTLINED_FUNCTION_83_3()
{

  return [v0 (v1 + 4088)];
}

id OUTLINED_FUNCTION_83_4()
{

  return [v0 (v1 + 3192)];
}

uint64_t OUTLINED_FUNCTION_83_6()
{
}

uint64_t OUTLINED_FUNCTION_83_8(uint64_t a1)
{
  outlined consume of Set<TUHandle>.Iterator._Variant(a1);
}

uint64_t OUTLINED_FUNCTION_83_9(uint64_t a3, ...)
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_83_10(double a1)
{
  LODWORD(a1) = 1112014848;

  return [v1 (v2 + 654)];
}

uint64_t OUTLINED_FUNCTION_150()
{

  return swift_bridgeObjectRelease_n();
}

void *OUTLINED_FUNCTION_150_1(void *a1)
{

  return memcpy(a1, (v1 + v2), 0xE8uLL);
}

uint64_t OUTLINED_FUNCTION_162_0()
{
}

uint64_t OUTLINED_FUNCTION_162_2()
{

  return outlined assign with take of AttributedString?();
}

uint64_t OUTLINED_FUNCTION_233()
{
}

uint64_t OUTLINED_FUNCTION_233_3()
{
}

id OUTLINED_FUNCTION_233_4()
{
  v3 = *(v0 + 640);

  return [v3 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_120_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return ContactAvatarTileView.Caption.init(subtitle:font:accessory:accessoryColor:blendMode:opacity:)();
}

uint64_t OUTLINED_FUNCTION_120_3(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_120_5(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 (v7 + 2040)];
}

id OUTLINED_FUNCTION_120_6()
{

  return [v0 (v1 + 3832)];
}

uint64_t OUTLINED_FUNCTION_171()
{

  return type metadata accessor for UUID();
}

uint64_t OUTLINED_FUNCTION_171_2()
{

  return outlined init with copy of IDSLookupManager(v0 - 128, v0 - 168);
}

void static RecentCallRecentItemMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_29();
  v5 = v4;
  v7 = v6;
  v122 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v119 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v118 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_32();
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_115_3();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_32();
  v120 = v17;
  OUTLINED_FUNCTION_4_24();
  v18 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_174();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_188();
  v26 = *v7 == *v5 && v7[1] == v5[1];
  if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  v117 = v3;
  v123 = type metadata accessor for RecentCallRecentItemMetadata(0);
  v124 = v5;
  v27 = v123[5];
  v28 = *(v24 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_187_2();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_83_0(v1);
  if (v26)
  {
    OUTLINED_FUNCTION_83_0(v1 + v28);
    if (v26)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_18;
    }

LABEL_14:
    v32 = &_s10Foundation4DateVSg_ADtMd;
    v33 = &_s10Foundation4DateVSg_ADtMR;
    v34 = v1;
LABEL_15:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, v32, v33);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_43_0();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_83_0(v1 + v28);
  if (v29)
  {
    v30 = OUTLINED_FUNCTION_138_2();
    v31(v30);
    goto LABEL_14;
  }

  (*(v20 + 32))(v0, v1 + v28, v18);
  OUTLINED_FUNCTION_47_13();
  v37 = _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v35, v36, MEMORY[0x1E6969550]);
  v38 = OUTLINED_FUNCTION_246_1(v37);
  v39 = *(v20 + 8);
  v40 = OUTLINED_FUNCTION_78();
  v39(v40);
  v41 = OUTLINED_FUNCTION_138_2();
  v39(v41);
  v27 = v124;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v38 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  v42 = v123[6];
  v43 = *(v7 + v42);
  v44 = *(v27 + v42);
  if (v43)
  {
    if (!v44)
    {
      goto LABEL_16;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHRecentCall, 0x1E6993590);
    v45 = v44;
    v46 = v43;
    v47 = static NSObject.== infix(_:_:)();

    if ((v47 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v44)
  {
    goto LABEL_16;
  }

  v48 = v123[7];
  v49 = (v7 + v48);
  v50 = *(v7 + v48 + 8);
  v51 = (v27 + v48);
  v52 = *(v27 + v48 + 8);
  if (v50)
  {
    if (!v52)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*v49 != *v51)
    {
      LOBYTE(v52) = 1;
    }

    if (v52)
    {
      goto LABEL_16;
    }
  }

  v53 = v123[8];
  v54 = *(v27 + v53);
  if (*(v7 + v53))
  {
    if (!v54)
    {
      goto LABEL_16;
    }

    v55 = OUTLINED_FUNCTION_78();
    _sSh2eeoiySbShyxG_ABtFZ15ConversationKit17RecentsCallHandleV_Tt1g5(v55, v56);
    v58 = v57;

    if ((v58 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v54)
  {
    goto LABEL_16;
  }

  if (*(v7 + v123[9]) != *(v27 + v123[9]))
  {
    goto LABEL_16;
  }

  v59 = v123[10];
  v60 = v120;
  v61 = *(v121 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_187_2();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v62 = OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_115(v62, v63, v122);
  if (v26)
  {
    OUTLINED_FUNCTION_115(v120 + v61, 1, v122);
    if (!v26)
    {
      goto LABEL_43;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v120, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_115(v120 + v61, 1, v122);
    if (v64)
    {
      v65 = OUTLINED_FUNCTION_196_2();
      v66(v65);
      goto LABEL_43;
    }

    (*(v119 + 32))(v118, v120 + v61, v122);
    OUTLINED_FUNCTION_4_121();
    _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v67, v68, MEMORY[0x1E69695C8]);
    OUTLINED_FUNCTION_2_100();
    v69 = dispatch thunk of static Equatable.== infix(_:_:)();
    v70 = *(v119 + 8);
    v71 = OUTLINED_FUNCTION_7_8();
    v70(v71);
    v72 = OUTLINED_FUNCTION_196_2();
    v70(v72);
    v59 = v124;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v120, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((v69 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v73 = v123[11];
  v75 = *(v7 + v73);
  v74 = *(v7 + v73 + 8);
  v76 = *(v7 + v73 + 16);
  v77 = *(v59 + v73);
  if (!v75)
  {
    outlined copy of ConversationLink?(0);
    if (!v77)
    {
      outlined copy of ConversationLink?(0);
      outlined consume of ConversationLink?(0, v74, v76);
      goto LABEL_54;
    }

    v88 = OUTLINED_FUNCTION_130_3();
    outlined copy of ConversationLink?(v88);
LABEL_52:
    v91 = OUTLINED_FUNCTION_62_12();
    outlined consume of ConversationLink?(v91, v92, v93);
    v94 = OUTLINED_FUNCTION_130_3();
    outlined consume of ConversationLink?(v94, v95, v96);
    goto LABEL_16;
  }

  if (!v77)
  {
    v89 = OUTLINED_FUNCTION_62_12();
    outlined copy of ConversationLink?(v89);
    outlined copy of ConversationLink?(0);
    v90 = OUTLINED_FUNCTION_62_12();
    outlined copy of ConversationLink?(v90);

    goto LABEL_52;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v78 = OUTLINED_FUNCTION_62_12();
  outlined copy of ConversationLink?(v78);
  v79 = OUTLINED_FUNCTION_130_3();
  outlined copy of ConversationLink?(v79);
  v80 = OUTLINED_FUNCTION_62_12();
  outlined copy of ConversationLink?(v80);
  OUTLINED_FUNCTION_43_0();
  v81 = static NSObject.== infix(_:_:)();
  v82 = OUTLINED_FUNCTION_130_3();
  outlined consume of ConversationLink?(v82, v83, v84);

  v85 = OUTLINED_FUNCTION_62_12();
  outlined consume of ConversationLink?(v85, v86, v87);
  if ((v81 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_54:
  v97 = v123[12];
  v98 = *(v121 + 48);
  v60 = v2;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_187_2();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v99 = OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_115(v99, v100, v122);
  if (!v26)
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_115(v2 + v98, 1, v122);
    if (!v101)
    {
      (*(v119 + 32))(v118, v2 + v98, v122);
      OUTLINED_FUNCTION_4_121();
      _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v102, v103, MEMORY[0x1E69695C8]);
      OUTLINED_FUNCTION_196_2();
      v104 = dispatch thunk of static Equatable.== infix(_:_:)();
      v105 = *(v119 + 8);
      v106 = OUTLINED_FUNCTION_33_0();
      v105(v106);
      (v105)(v117, v122);
      v97 = v124;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ((v104 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_63;
    }

    (*(v119 + 8))(v117);
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_115(v2 + v98, 1, v122);
  if (!v26)
  {
LABEL_43:
    v32 = &_s10Foundation4UUIDVSg_ADtMd;
    v33 = &_s10Foundation4UUIDVSg_ADtMR;
    v34 = v60;
    goto LABEL_15;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_63:
  v107 = v123[13];
  v108 = *(v7 + v107);
  v109 = *(v97 + v107);
  if (v108)
  {
    if (!v109)
    {
      goto LABEL_16;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TPMessageIndicatorViewModel, 0x1E69D89D8);
    v110 = v109;
    v111 = v108;
    v112 = static NSObject.== infix(_:_:)();

    if ((v112 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v109)
  {
    goto LABEL_16;
  }

  v113 = v123[14];
  v114 = *(v7 + v113);
  v115 = *(v97 + v113);
  if (v114 && v115)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v116 = v115;
    OUTLINED_FUNCTION_15_14();
    static NSObject.== infix(_:_:)();
  }

LABEL_16:
  OUTLINED_FUNCTION_30_0();
}

uint64_t OUTLINED_FUNCTION_155_0()
{
}

__n128 OUTLINED_FUNCTION_155_1()
{
  *(v0 + 112) = v3;
  *(v0 + 120) = v1;
  *(v0 + 128) = v2;
  *(v0 + 129) = *(v0 + 272);
  result = *(v0 + 287);
  *(v0 + 144) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_82_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, va);
}

id OUTLINED_FUNCTION_82_8(uint64_t a1)
{
  v3[8] = a1;
  v3[4] = v1;
  v3[5] = v4;
  *(v5 - 136) = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_82_9(void x0_0, void x1_0, void x2_0, uint64_t a1, void a5, void a6, void a7, void a8, uint64_t a3, char a4)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_82_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  specialized >> prefix<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_42_5(uint64_t a1, uint64_t a2, ...)
{

  return String.hash(into:)();
}

double OUTLINED_FUNCTION_42_6()
{
  result = 0.0;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_11(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_42_15(uint64_t a1@<X8>)
{
  v3 = *(v2 - 360);
  *(a1 - 16) = v1;
  *(a1 - 8) = v3;
}

uint64_t OUTLINED_FUNCTION_42_16(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_42_19(uint64_t a1)
{

  return _NativeDictionary._delete(at:)();
}

uint64_t OUTLINED_FUNCTION_42_20()
{
}

uint64_t OUTLINED_FUNCTION_42_21(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = *(v3 + 16);
  v2[35] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_42_22(uint64_t a1)
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_42_23()
{

  return _s15ConversationKit0A14ControlsRecipeVWOhTm_3(v0, type metadata accessor for HUDActivityManager.BannerUpdate);
}

uint64_t OUTLINED_FUNCTION_42_27()
{

  return type metadata accessor for RemoteControlMessage(0);
}

uint64_t OUTLINED_FUNCTION_42_28()
{
  outlined init with take of TapInteractionHandler((v0 - 296), v0 - 256);
  v1 = *(v0 - 144);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 168, v1);
}

id OUTLINED_FUNCTION_42_30(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18)
{
  a16 = a9;
  a17 = a10;
  a18 = a11;

  return [v18 (v19 + 248)];
}

uint64_t OUTLINED_FUNCTION_42_33()
{

  return outlined destroy of Participant.ScreenInfo(v0 + 384);
}

uint64_t OUTLINED_FUNCTION_42_35()
{

  return static String.localizedStringWithFormat(_:_:)();
}

void specialized _NativeSet.resize(capacity:)()
{
  OUTLINED_FUNCTION_29();
  v1 = OUTLINED_FUNCTION_34_11();
  v2 = type metadata accessor for RecentsCallItem(v1);
  v3 = OUTLINED_FUNCTION_9_0(v2);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v27 = v6 - v5;
  v7 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit15RecentsCallItemVGMd, &_ss11_SetStorageCy15ConversationKit15RecentsCallItemVGMR);
  v8 = OUTLINED_FUNCTION_36_11(v7);
  if (*(v7 + 16))
  {
    v9 = 0;
    v10 = (v7 + 56);
    OUTLINED_FUNCTION_1_53();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_97_1();
LABEL_9:
        v20 = *(v28 + 72);
        _s15ConversationKit15RecentsCallItemVWObTm_0(*(v7 + 48) + v20 * (v16 | (v9 << 6)), v27);
        Hasher.init(_seed:)();
        RecentsCallItem.hash(into:)();
        Hasher._finalize()();
        OUTLINED_FUNCTION_16_7();
        v21 = _HashTable.nextHole(atOrAfter:)();
        *(v8 + 56 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        _s15ConversationKit15RecentsCallItemVWObTm_0(v27, *(v8 + 48) + v21 * v20);
        OUTLINED_FUNCTION_26_14();
      }

      while (v13);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v15)
      {
        break;
      }

      ++v17;
      if (v10[v9])
      {
        OUTLINED_FUNCTION_7_1();
        v13 = v19 & v18;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_25_18();
    if (v22 != v23)
    {
      OUTLINED_FUNCTION_16_7();
      *v10 = v24;
    }

    else
    {
      v25 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v25, v26, v7 + 56);
    }

    *(v7 + 16) = 0;
  }

  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_34_11();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_37_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v4)
  {
LABEL_23:

    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v24 = v1;
  v5 = 0;
  v6 = (v1 + 56);
  OUTLINED_FUNCTION_1_53();
  OUTLINED_FUNCTION_69_1();
  if (!v2)
  {
LABEL_4:
    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v5 >= v0)
      {
        break;
      }

      ++v7;
      if (v6[v5])
      {
        OUTLINED_FUNCTION_7_1();
        v2 = v9 & v8;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v19 != v20)
    {
      OUTLINED_FUNCTION_16_7();
      *v6 = v21;
    }

    else
    {
      v22 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v22, v23, v6);
    }

    *(v1 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_93();
LABEL_9:
    v10 = OUTLINED_FUNCTION_45_7();
    v11(v10);
    OUTLINED_FUNCTION_12_21();
    lazy protocol witness table accessor for type GCButtonElementName and conformance GCButtonElementName(&lazy protocol witness table cache variable for type UUID and conformance UUID, v12, MEMORY[0x1E69695B8]);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    OUTLINED_FUNCTION_31_12(v14);
    v17 = OUTLINED_FUNCTION_85_1(v16);
    v18(v17);
    OUTLINED_FUNCTION_26_14();
    v1 = v24;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_76_0();
    if (!v13)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_3_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v4)
  {
LABEL_23:

    *v0 = v2;
    OUTLINED_FUNCTION_43_6();
    return;
  }

  v5 = 0;
  OUTLINED_FUNCTION_1_53();
  v8 = v7 & v6;
  OUTLINED_FUNCTION_72_1();
  if (!v8)
  {
LABEL_4:
    v10 = v5;
    while (1)
    {
      v5 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v5 >= v3)
      {
        break;
      }

      ++v10;
      if (*(v1 + 56 + 8 * v5))
      {
        OUTLINED_FUNCTION_7_1();
        v8 = v12 & v11;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v23 != v24)
    {
      OUTLINED_FUNCTION_28_17(v22);
    }

    else
    {
      v25 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v25, v26, v1 + 56);
    }

    OUTLINED_FUNCTION_66_1();
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_102();
LABEL_9:
    v13 = (*(v1 + 48) + 16 * (v9 | (v5 << 6)));
    v14 = *v13;
    v15 = v13[1];
    OUTLINED_FUNCTION_87_1();
    OUTLINED_FUNCTION_82_1();
    String.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v16)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    OUTLINED_FUNCTION_8_3();
    *(v0 + v18) |= v19;
    v21 = (*(v2 + 48) + 16 * v20);
    *v21 = v14;
    v21[1] = v15;
    OUTLINED_FUNCTION_26_14();
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v16)
    {
      if (v17)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_77_3();
    if (!v16)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_3_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo23CNKGameControllerButtonVGMd, &_ss11_SetStorageCySo23CNKGameControllerButtonVGMR);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v6)
  {
LABEL_23:

    *v0 = v2;
    OUTLINED_FUNCTION_43_6();
    return;
  }

  OUTLINED_FUNCTION_0_52();
  if (!v0)
  {
LABEL_4:
    v8 = v4;
    while (1)
    {
      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v4 >= v5)
      {
        break;
      }

      OUTLINED_FUNCTION_83_2();
      if (v9)
      {
        OUTLINED_FUNCTION_7_1();
        v0 = (v11 & v10);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v19 != v20)
    {
      OUTLINED_FUNCTION_28_17(v18);
    }

    else
    {
      v21 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v21, v22, v3);
    }

    OUTLINED_FUNCTION_66_1();
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_22_17();
LABEL_9:
    v12 = *(*(v1 + 48) + 4 * (v7 | (v4 << 6)));
    OUTLINED_FUNCTION_87_1();
    Hasher._combine(_:)(v12);
    Hasher._finalize()();
    OUTLINED_FUNCTION_15_16();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    OUTLINED_FUNCTION_10_21(v14);
    *(v17 + 4 * v16) = v12;
    OUTLINED_FUNCTION_26_14();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_40_11();
    if (!v13)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  v4 = OUTLINED_FUNCTION_34_11();
  v5 = type metadata accessor for ConversationControlsAction(v4);
  v6 = OUTLINED_FUNCTION_9_0(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_37_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit0C14ControlsActionOGMd, &_ss11_SetStorageCy15ConversationKit0C14ControlsActionOGMR);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v7)
  {
LABEL_23:

    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v8 = 0;
  v9 = (v1 + 56);
  OUTLINED_FUNCTION_1_53();
  v12 = v11 & v10;
  OUTLINED_FUNCTION_72_1();
  if (!v12)
  {
LABEL_4:
    v13 = v8;
    while (1)
    {
      v8 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v8 >= v3)
      {
        break;
      }

      ++v13;
      if (v9[v8])
      {
        OUTLINED_FUNCTION_7_1();
        v12 = v15 & v14;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v21 != v22)
    {
      OUTLINED_FUNCTION_16_7();
      *v9 = v23;
    }

    else
    {
      v24 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v24, v25, v1 + 56);
    }

    *(v1 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_97_1();
LABEL_9:
    OUTLINED_FUNCTION_48_6();
    _s15ConversationKit15RecentsCallItemVWObTm_0(v16, v2);
    Hasher.init(_seed:)();
    ConversationControlsAction.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v17)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    *(v0 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    OUTLINED_FUNCTION_48_6();
    _s15ConversationKit15RecentsCallItemVWObTm_0(v2, v20);
    OUTLINED_FUNCTION_26_14();
    if (!v12)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v17)
    {
      if (v19)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_77_3();
    if (!v17)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  v2 = OUTLINED_FUNCTION_34_11();
  v3 = type metadata accessor for GameControllerPressAction(v2);
  v4 = OUTLINED_FUNCTION_9_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit18CallGameControllerC0fG8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVGMd, &_ss11_SetStorageCy15ConversationKit18CallGameControllerC0fG8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVGMR);
  v6 = OUTLINED_FUNCTION_36_11(v5);
  if (!*(v5 + 16))
  {
LABEL_30:

    *v0 = v6;
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v47 = v0;
  v7 = 0;
  v48 = v5 + 56;
  OUTLINED_FUNCTION_1_53();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v13 = v6 + 56;
  v14 = 40;
  v50 = v6;
  v51 = v5;
  v49 = v12;
  if (!v10)
  {
LABEL_4:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v16;
      if (*(v48 + 8 * v7))
      {
        OUTLINED_FUNCTION_7_1();
        v52 = v18 & v17;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_25_18();
    if (v40 != v41)
    {
      OUTLINED_FUNCTION_16_7();
      *v42 = v43;
    }

    else
    {
      v44 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v44, v45, v46);
    }

    v0 = v47;
    *(v5 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v10));
    v52 = (v10 - 1) & v10;
LABEL_9:
    v19 = *(v5 + 48) + (v15 | (v7 << 6)) * v14;
    v20 = *(v19 + 32);
    v21 = *(v19 + 16);
    v53 = *v19;
    v54 = v21;
    v55 = v20;
    Hasher.init(_seed:)();
    v22 = *(&v54 + 1);
    v23 = v55;
    __swift_project_boxed_opaque_existential_1(&v53, *(&v54 + 1));
    v24 = *((*(v23 + 16))(v22, v23) + 16);
    if (v24)
    {
      OUTLINED_FUNCTION_40_3();
      v27 = v25 + v26;
      v29 = *(v28 + 72);
      do
      {
        _s15ConversationKit11ParticipantVWOcTm_1(v27, v1);
        type metadata accessor for GCButtonElementName();
        lazy protocol witness table accessor for type GCButtonElementName and conformance GCButtonElementName(&lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName, MEMORY[0x1E696B170], MEMORY[0x1E696B178]);
        dispatch thunk of Hashable.hash(into:)();
        _s15ConversationKit11ParticipantVWOhTm_1(v1, type metadata accessor for GameControllerPressAction);
        v27 += v29;
        --v24;
      }

      while (v24);

      v6 = v50;
      v5 = v51;
      v12 = v49;
    }

    else
    {
    }

    Hasher._finalize()();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v30)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_24:
    OUTLINED_FUNCTION_8_3();
    *(v13 + v34) |= v35;
    v14 = 40;
    v37 = *(v6 + 48) + 40 * v36;
    v38 = v53;
    v39 = v54;
    *(v37 + 32) = v55;
    *v37 = v38;
    *(v37 + 16) = v39;
    ++*(v6 + 16);
    v10 = v52;
    if (!v52)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v30)
    {
      if (v32)
      {
        break;
      }
    }

    if (v31 == v33)
    {
      v31 = 0;
    }

    if (*(v13 + 8 * v31) != -1)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_24;
    }
  }

LABEL_32:
  __break(1u);
}

{
  OUTLINED_FUNCTION_3_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit0C12ControlsTypeOGMd, &_ss11_SetStorageCy15ConversationKit0C12ControlsTypeOGMR);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v4)
  {
LABEL_23:

    *v0 = v2;
    return;
  }

  v5 = 0;
  OUTLINED_FUNCTION_8_41();
  OUTLINED_FUNCTION_95();
  v0 = (v7 & v6);
  v9 = (v8 + 63) >> 6;
  if ((v7 & v6) == 0)
  {
LABEL_4:
    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v5 >= v9)
      {
        break;
      }

      ++v11;
      if (*(v3 + 8 * v5))
      {
        OUTLINED_FUNCTION_7_1();
        v0 = (v13 & v12);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v23 != v24)
    {
      OUTLINED_FUNCTION_28_17(v22);
    }

    else
    {
      v25 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v25, v26, v3);
    }

    OUTLINED_FUNCTION_66_1();
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_22_17();
LABEL_9:
    v14 = (*(v1 + 48) + 48 * (v10 | (v5 << 6)));
    v15 = v14[1];
    v28 = *v14;
    v29[0] = v15;
    *(v29 + 9) = *(v14 + 25);
    OUTLINED_FUNCTION_87_1();
    ConversationControlsType.hash(into:)(v27);
    Hasher._finalize()();
    OUTLINED_FUNCTION_67_4();
    if (v16)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    OUTLINED_FUNCTION_8_3();
    OUTLINED_FUNCTION_94();
    v20 = (v19 + 48 * v18);
    v21 = v29[0];
    *v20 = v28;
    v20[1] = v21;
    *(v20 + 25) = *(v29 + 9);
    OUTLINED_FUNCTION_26_14();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v16)
    {
      if (v17)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_75_3();
    if (!v16)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit17RecentsCallHandleVGMd, &_ss11_SetStorageCy15ConversationKit17RecentsCallHandleVGMR);
  v3 = OUTLINED_FUNCTION_36_11(v2);
  if (!*(v2 + 16))
  {
LABEL_26:

    *v1 = v3;
    return;
  }

  v29 = v2;
  v4 = 0;
  v5 = v2 + 56;
  OUTLINED_FUNCTION_1_53();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v11 = 24;
  if ((v7 & v6) == 0)
  {
LABEL_4:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v4 >= v10)
      {
        break;
      }

      ++v13;
      if (*(v5 + 8 * v4))
      {
        OUTLINED_FUNCTION_7_1();
        v8 = v15 & v14;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_25_18();
    if (v25 != v26)
    {
      OUTLINED_FUNCTION_28_17(v24);
    }

    else
    {
      v27 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v27, v28, v5);
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_26;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_9:
    v16 = (*(v2 + 48) + (v12 | (v4 << 6)) * v11);
    v17 = *v16;
    v19 = *(v16 + 1);
    v18 = *(v16 + 2);
    Hasher.init(_seed:)();
    MEMORY[0x1BFB22640](v17);
    if (v18)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._finalize()();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v20)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_20:
    *(v3 + 56 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v23 = *(v3 + 48) + 24 * v21;
    *v23 = v17;
    *(v23 + 8) = v19;
    *(v23 + 16) = v18;
    OUTLINED_FUNCTION_26_14();
    v2 = v29;
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v20)
    {
      if (v22)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_75_3();
    if (!v20)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_20;
    }
  }

LABEL_28:
  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_3_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v6)
  {
LABEL_23:

    *v0 = v2;
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v7 = 0;
  OUTLINED_FUNCTION_8_41();
  OUTLINED_FUNCTION_95();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  if ((v9 & v8) == 0)
  {
LABEL_4:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v14;
      if (*(v3 + 8 * v7))
      {
        OUTLINED_FUNCTION_7_1();
        v10 = v16 & v15;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v23 != v24)
    {
      OUTLINED_FUNCTION_28_17(v22);
    }

    else
    {
      v25 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v25, v26, v3);
    }

    *(v1 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_9:
    v17 = *(*(v1 + 48) + 8 * (v13 | (v7 << 6)));
    NSObject._rawHashValue(seed:)(*(v2 + 40));
    OUTLINED_FUNCTION_67_4();
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    OUTLINED_FUNCTION_8_3();
    OUTLINED_FUNCTION_94();
    *(v21 + 8 * v20) = v17;
    OUTLINED_FUNCTION_26_14();
    if (!v10)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v18)
    {
      if (v19)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_75_3();
    if (!v18)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_34_11();
  v7(v6);
  OUTLINED_FUNCTION_1();
  v37 = v9;
  v38 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v34 - v10;
  OUTLINED_FUNCTION_37_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  v11 = OUTLINED_FUNCTION_20_16();
  if (!v1[2])
  {
LABEL_23:

    *v0 = v11;
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v35 = v0;
  v36 = v1;
  v12 = 0;
  v13 = v1 + 7;
  OUTLINED_FUNCTION_1_53();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  if ((v15 & v14) == 0)
  {
LABEL_4:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v12 >= v18)
      {
        break;
      }

      ++v20;
      if (v13[v12])
      {
        OUTLINED_FUNCTION_7_1();
        v16 = v22 & v21;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v29 != v30)
    {
      OUTLINED_FUNCTION_16_7();
      *v13 = v31;
    }

    else
    {
      v32 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v32, v33, v13);
    }

    v0 = v35;
    v1[2] = 0;
    goto LABEL_23;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_9:
    v23 = v1[6];
    v39 = *(v37 + 72);
    _s15ConversationKit15RecentsCallItemVWObTm_0(v23 + v39 * (v19 | (v12 << 6)), v40);
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_12_21();
    lazy protocol witness table accessor for type GCButtonElementName and conformance GCButtonElementName(&lazy protocol witness table cache variable for type UUID and conformance UUID, v24, MEMORY[0x1E69695B8]);
    dispatch thunk of Hashable.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v25)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    OUTLINED_FUNCTION_31_12(v26);
    _s15ConversationKit15RecentsCallItemVWObTm_0(v40, *(v11 + 48) + v28 * v39);
    ++*(v11 + 16);
    v1 = v36;
    if (!v16)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v25)
    {
      if (v27)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_76_0();
    if (!v25)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_3_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit11BezelEffectOGMd, &_ss11_SetStorageCy15ConversationKit11BezelEffectOGMR);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v6)
  {
LABEL_23:

    *v0 = v2;
    OUTLINED_FUNCTION_43_6();
    return;
  }

  OUTLINED_FUNCTION_0_52();
  if (!v0)
  {
LABEL_4:
    v8 = v4;
    while (1)
    {
      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v4 >= v5)
      {
        break;
      }

      OUTLINED_FUNCTION_83_2();
      if (v9)
      {
        OUTLINED_FUNCTION_7_1();
        v0 = (v11 & v10);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v19 != v20)
    {
      OUTLINED_FUNCTION_28_17(v18);
    }

    else
    {
      v21 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v21, v22, v3);
    }

    OUTLINED_FUNCTION_66_1();
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_22_17();
LABEL_9:
    v12 = *(*(v1 + 48) + (v7 | (v4 << 6)));
    OUTLINED_FUNCTION_87_1();
    MEMORY[0x1BFB22640](v12);
    Hasher._finalize()();
    OUTLINED_FUNCTION_15_16();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    OUTLINED_FUNCTION_10_21(v14);
    *(v17 + v16) = v12;
    OUTLINED_FUNCTION_26_14();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_40_11();
    if (!v13)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  OUTLINED_FUNCTION_3_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt64VGMd, &_ss11_SetStorageCys6UInt64VGMR);
  v3 = OUTLINED_FUNCTION_20_16();
  v4 = v3;
  if (!*(v1 + 16))
  {
LABEL_28:

    *v0 = v4;
    return;
  }

  v5 = 0;
  v7 = (v1 + 56);
  v6 = *(v1 + 56);
  v8 = 1 << *(v1 + 32);
  v23 = v0;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = v3 + 56;
  if ((v9 & v6) == 0)
  {
LABEL_7:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= ((v8 + 63) >> 6))
      {
        break;
      }

      ++v12;
      if (v7[v5])
      {
        OUTLINED_FUNCTION_7_1();
        v10 = v14 & v13;
        goto LABEL_12;
      }
    }

    if (v8 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v8 + 63) >> 6, v1 + 56);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v0 = v23;
    *(v1 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_22_17();
LABEL_12:
    OUTLINED_FUNCTION_57_5();
    v15 = MEMORY[0x1BFB22620](*(v4 + 40), v2) & ~(-1 << *(v4 + 32));
    if (((-1 << v15) & ~*(v11 + 8 * (v15 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_22:
    OUTLINED_FUNCTION_8_3();
    *(v11 + v20) |= v21;
    *(*(v4 + 48) + 8 * v22) = v2;
    ++*(v4 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v19)
    {
      if (v17)
      {
        break;
      }
    }

    if (v16 == v18)
    {
      v16 = 0;
    }

    if (*(v11 + 8 * v16) != -1)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

{
  OUTLINED_FUNCTION_3_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit13VideoReactionOGMd, &_ss11_SetStorageCy15ConversationKit13VideoReactionOGMR);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v4)
  {
LABEL_23:

    *v0 = v2;
    return;
  }

  v25 = v1;
  v5 = 0;
  v6 = v1 + 56;
  OUTLINED_FUNCTION_1_53();
  v9 = v8 & v7;
  OUTLINED_FUNCTION_72_1();
  if (!v9)
  {
LABEL_4:
    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v5 >= v3)
      {
        break;
      }

      ++v11;
      if (*(v6 + 8 * v5))
      {
        OUTLINED_FUNCTION_7_1();
        v9 = v13 & v12;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v21 != v22)
    {
      OUTLINED_FUNCTION_28_17(v20);
    }

    else
    {
      v23 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v23, v24, v6);
    }

    *(v1 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_102();
LABEL_9:
    v14 = *(*(v1 + 48) + (v10 | (v5 << 6)));
    Hasher.init(_seed:)();
    v15 = **(&unk_1E7FE39D8 + v14);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    OUTLINED_FUNCTION_82_1();
    String.hash(into:)();

    Hasher._finalize()();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v17)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    *(v0 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v2 + 48) + v18) = v14;
    OUTLINED_FUNCTION_26_14();
    v1 = v25;
    if (!v9)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v17)
    {
      if (v19)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_77_3();
    if (!v17)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_34_11();
  type metadata accessor for Handle();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_37_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy20LiveCommunicationKit6HandleVGMd, &_ss11_SetStorageCy20LiveCommunicationKit6HandleVGMR);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v4)
  {
LABEL_23:

    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v23 = v1;
  v5 = 0;
  v6 = (v1 + 56);
  OUTLINED_FUNCTION_1_53();
  OUTLINED_FUNCTION_69_1();
  if (!v2)
  {
LABEL_4:
    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v5 >= v0)
      {
        break;
      }

      ++v7;
      if (v6[v5])
      {
        OUTLINED_FUNCTION_7_1();
        v2 = v9 & v8;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v18 != v19)
    {
      OUTLINED_FUNCTION_16_7();
      *v6 = v20;
    }

    else
    {
      v21 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v21, v22, v6);
    }

    *(v1 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_93();
LABEL_9:
    v10 = OUTLINED_FUNCTION_45_7();
    v11(v10);
    lazy protocol witness table accessor for type GCButtonElementName and conformance GCButtonElementName(&lazy protocol witness table cache variable for type Handle and conformance Handle, MEMORY[0x1E696EDC8], MEMORY[0x1E696EDF8]);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_21_7();
    if (v12)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    OUTLINED_FUNCTION_31_12(v13);
    v16 = OUTLINED_FUNCTION_85_1(v15);
    v17(v16);
    OUTLINED_FUNCTION_26_14();
    v1 = v23;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v12)
    {
      if (v14)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_76_0();
    if (!v12)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_3_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v8)
  {
LABEL_23:

    *v0 = v1;
    OUTLINED_FUNCTION_43_6();
    return;
  }

  OUTLINED_FUNCTION_0_52();
  if (!v0)
  {
LABEL_4:
    v9 = v4;
    while (1)
    {
      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v4 >= v5)
      {
        break;
      }

      OUTLINED_FUNCTION_83_2();
      if (v10)
      {
        OUTLINED_FUNCTION_7_1();
        v0 = (v12 & v11);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v19 != v20)
    {
      OUTLINED_FUNCTION_28_17(v18);
    }

    else
    {
      v21 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v21, v22, v2);
    }

    OUTLINED_FUNCTION_66_1();
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_22_17();
LABEL_9:
    OUTLINED_FUNCTION_57_5();
    OUTLINED_FUNCTION_87_1();
    MEMORY[0x1BFB22640](v3);
    Hasher._finalize()();
    OUTLINED_FUNCTION_15_16();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    OUTLINED_FUNCTION_10_21(v14);
    *(v17 + 8 * v16) = v3;
    OUTLINED_FUNCTION_26_14();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_40_11();
    if (!v13)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_3_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit19InCallControlsStateOGMd, &_ss11_SetStorageCy15ConversationKit19InCallControlsStateOGMR);
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_44_6();
  if (!v6)
  {
LABEL_23:

    *v0 = v1;
    OUTLINED_FUNCTION_43_6();
    return;
  }

  OUTLINED_FUNCTION_0_52();
  if (!v0)
  {
LABEL_4:
    v7 = v4;
    while (1)
    {
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v4 >= v5)
      {
        break;
      }

      OUTLINED_FUNCTION_83_2();
      if (v8)
      {
        OUTLINED_FUNCTION_7_1();
        v0 = (v10 & v9);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_9_24();
    if (v17 != v18)
    {
      OUTLINED_FUNCTION_28_17(v16);
    }

    else
    {
      v19 = OUTLINED_FUNCTION_24_16();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v19, v20, v2);
    }

    OUTLINED_FUNCTION_66_1();
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_22_17();
LABEL_9:
    OUTLINED_FUNCTION_57_5();
    OUTLINED_FUNCTION_87_1();
    MEMORY[0x1BFB22640](v3);
    Hasher._finalize()();
    OUTLINED_FUNCTION_15_16();
    if (v11)
    {
      break;
    }

    OUTLINED_FUNCTION_4_12();
LABEL_17:
    OUTLINED_FUNCTION_10_21(v12);
    *(v15 + 8 * v14) = v3;
    OUTLINED_FUNCTION_26_14();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_3_21();
  while (1)
  {
    OUTLINED_FUNCTION_19_2();
    if (v11)
    {
      if (v13)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_40_11();
    if (!v11)
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_161_1(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_161_2()
{
}

void OUTLINED_FUNCTION_205_3()
{

  Participant.screenInfo.getter();
}

uint64_t *OUTLINED_FUNCTION_205_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 104) = a1;
  *(v2 - 96) = a2;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 128));
}

BOOL OUTLINED_FUNCTION_418()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t outlined init with take of Collaboration()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_196_4(uint64_t a1, unint64_t a2)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v2 - 320));
}

uint64_t OUTLINED_FUNCTION_96_4()
{
}

void OUTLINED_FUNCTION_302(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_96_7()
{

  return swift_unknownObjectRelease();
}

uint64_t getEnumTagSinglePayload for ActivityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance TranscriptionViewModel@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void RecentsCollectionViewCollator.apply(_:animatingDifferences:completion:)()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = *(v0 + OBJC_IVAR____TtC15ConversationKit29RecentsCollectionViewCollator_updateQueue);
  *(v6 - v5) = v8;
  (*(v3 + 104))(v6 - v5, *MEMORY[0x1E69E8020], v1);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v1);
  if (v8)
  {
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t RecentsCollectionViewCollator.hasFinishedFirstLoad.setter(char a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t objectdestroy_31Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);

  (*(v4 + 8))(v2 + v5, v3);

  return swift_deallocObject();
}

uint64_t objectdestroy_31Tm_0(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t RecentsListViewController.tipKitStopObservation()(uint64_t a1)
{
  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t sub_1BBC8D928()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

Swift::Void __swiftcall RecentsListViewController.updateLeftBarButton()()
{
  OUTLINED_FUNCTION_331();
  if ([v0 isEditing])
  {
    RecentsListViewController.doneEditingBarButtonItem.getter();
  }

  else
  {
    isa = RecentsListViewController.editBarButtonItem.getter().super.super.isa;
  }

  v21 = isa;
  v2 = [*&v0[OBJC_IVAR___FTRecentsListViewController_featureFlags] junkFilteringEnabled];
  v3 = [v0 navigationItem];
  v4 = v3;
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_37_0();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BC4BAC30;
    *(v5 + 32) = v21;
    v6 = v21;
    v7 = OUTLINED_FUNCTION_309();
    outlined bridged method (mbnn) of @objc UINavigationItem.leftBarButtonItems.setter(v7, v8, v9);

    v10 = [objc_opt_self() currentDevice];
    v11 = [v10 userInterfaceIdiom];

    v4 = [v0 navigationItem];
    if (v11 == 1)
    {
      OUTLINED_FUNCTION_109();
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1BC4BA930;
      *(v12 + 32) = RecentsListViewController.newCallBarButtonItem.getter();
      *(v12 + 40) = RecentsListViewController.filterBarButtonItem.getter();
      v13 = OUTLINED_FUNCTION_45_1();
      outlined bridged method (mbnn) of @objc UINavigationItem.leftBarButtonItems.setter(v13, v14, v15);
    }

    else
    {
      v16 = RecentsListViewController.filterBarButtonItem.getter();
      v17 = OUTLINED_FUNCTION_205();
      [v17 v18];

      v4 = v16;
    }
  }

  else
  {
    [(objc_class *)v3 setLeftBarButtonItem:v21];
  }

  OUTLINED_FUNCTION_9_17();
}

UIBarButtonItem RecentsListViewController.editBarButtonItem.getter()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
  preferredElementSize = RecentsListViewController.editMenuItems.getter();
  v0._countAndFlagsBits = 0;
  v0._object = 0xE000000000000000;
  v11.value.super.isa = 0;
  v11.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v0, 0, v11, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v9).super.super.isa;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x1E69DC708);
  v2 = [objc_opt_self() conversationKit];
  swift__string._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._countAndFlagsBits = 1953064005;
  v4._object = 0xE400000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  swift__string._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, swift__string);

  v10.value.super.isa = 0;
  v10.is_nil = 0;
  v12.value.super.super.isa = isa;
  return UIBarButtonItem.init(title:image:primaryAction:menu:)(v6, v10, v12, v13);
}

Class RecentsListViewController.filterBarButtonItem.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15UIBarButtonItemC5UIKitE5BadgeVSgMd, &_sSo15UIBarButtonItemC5UIKitE5BadgeVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x1E69DC708);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v3 = @nonobjc UIImage.__allocating_init(systemName:)(0xD00000000000001ALL, 0x80000001BC4FC9C0);
  v8.value.super.super.isa = RecentsListViewController.generateFilterMenu()().super.super.isa;
  v7.value.super.isa = v3;
  v7.is_nil = 0;
  isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v7, v8, v9).super.super.isa;
  RecentsListViewController.getFilterMenuBadge()(v2);
  UIBarButtonItem.badge.setter();
  return isa;
}

UIMenu __swiftcall RecentsListViewController.generateFilterMenu()()
{
  OUTLINED_FUNCTION_29();
  v2 = type metadata accessor for FilterMenuViewModel.OccurrenceValue();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v135 = v10;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_32();
  v113 = v14;
  OUTLINED_FUNCTION_4_24();
  v15 = type metadata accessor for FilterMenuViewModel.Action();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v121 = v21;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v120 = v23;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v136 = v26;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v106 - v28;
  v30 = type metadata accessor for FilterMenuViewModel.Style();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v34 = type metadata accessor for FilterMenuViewModel();
  v35 = *(v32 + 104);
  v108 = *MEMORY[0x1E6995A58];
  v109 = v32 + 104;
  v107 = v35;
  v35();
  v122 = v0;
  [*(v0 + OBJC_IVAR___FTRecentsListViewController_featureFlags) junkFilteringEnabled];
  [objc_opt_self() isFilterAsNewCallersEnabledForFaceTime];
  v111 = v34;
  v36 = static FilterMenuViewModel.recommendedActions(for:junkFilteringEnabled:voicemailEnabled:requestsEnabled:)();
  v37 = *(v32 + 8);
  v112 = v1;
  v110 = v30;
  v38 = v30;
  v39 = v36;
  v37(v1, v38);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type FilterMenuViewModel.Action and conformance FilterMenuViewModel.Action, MEMORY[0x1E6995AA8]);
  v40 = Dictionary.init(dictionaryLiteral:)();
  v134 = *(v39 + 16);
  if (!v134)
  {
LABEL_49:
    (v107)(v112, v108, v110);
    v99 = v122;
    OUTLINED_FUNCTION_11_23();
    (*((*MEMORY[0x1E69E7D40] & v100) + 0x568))();
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v101 = objc_allocWithZone(v111);
    v102 = FilterMenuViewModel.init(style:actions:selectedAction:actionsToCount:didSelectAction:)();
    v103 = *(v99 + OBJC_IVAR___FTRecentsListViewController_filterMenuViewModel);
    *(v99 + OBJC_IVAR___FTRecentsListViewController_filterMenuViewModel) = v102;
    v104 = v102;

    type metadata accessor for FilterMenu();
    OUTLINED_FUNCTION_28_0();
    static FilterMenu.menu(with:)();

    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_30_0();
    return result;
  }

  v41 = 0;
  OUTLINED_FUNCTION_40_3();
  v133 = v39 + v42;
  v139 = v17 + 2;
  v132 = v17 + 11;
  v131 = *MEMORY[0x1E6995AA0];
  v118 = *MEMORY[0x1E6995A98];
  HIDWORD(v115) = *MEMORY[0x1E6995A90];
  v130 = *MEMORY[0x1E6995A40];
  v129 = v4 + 104;
  v138 = (v4 + 32);
  v125 = (v17 + 1);
  v117 = v4 + 40;
  v127 = v4;
  v128 = v2;
  v123 = v39;
  v124 = v17;
  v43 = v120;
  v126 = v29;
  while (v41 < *(v39 + 16))
  {
    v137 = v17[9];
    v44 = v17[2];
    (v44)(v29, v133 + v137 * v41, v15);
    OUTLINED_FUNCTION_136();
    v44();
    v45 = OUTLINED_FUNCTION_209();
    v47 = v46(v45);
    if (v47 == v131)
    {
      OUTLINED_FUNCTION_136();
      v44();
      OUTLINED_FUNCTION_13_2();
      (*((*MEMORY[0x1E69E7D40] & v48) + 0x630))();
      OUTLINED_FUNCTION_27_15();
      (*(v49 + 184))();
      OUTLINED_FUNCTION_242();

      CurrentValueSubject.value.getter();

      v50 = v119;
      *v119 = v141;
      v51 = OUTLINED_FUNCTION_42_13();
      v52(v51);
      v53 = *v138;
      (*v138)(v135, v50, v2);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_323_0();
      OUTLINED_FUNCTION_65_4();
      if (v54)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_29_13();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy16CommunicationsUI19FilterMenuViewModelC6ActionOAE15OccurrenceValueOGMd, &_ss17_NativeDictionaryVy16CommunicationsUI19FilterMenuViewModelC6ActionOAE15OccurrenceValueOGMR);
      if (OUTLINED_FUNCTION_187_0())
      {
        v50 = v140;
        specialized __RawDictionaryStorage.find<A>(_:)();
        OUTLINED_FUNCTION_13_33();
        v29 = v126;
        if (!v55)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v29 = v126;
      }

      v40 = v140;
      if (v2)
      {
        OUTLINED_FUNCTION_28_20();
        OUTLINED_FUNCTION_138();
        v70();
        OUTLINED_FUNCTION_202();
        v71 = v43;
LABEL_37:
        v50(v71, v15);
        goto LABEL_38;
      }

      v72 = OUTLINED_FUNCTION_22_21();
      (v44)(v72, v43, v15);
      v73 = OUTLINED_FUNCTION_28_20();
      (v53)(v73, v135, v2);
      OUTLINED_FUNCTION_202();
      v74 = OUTLINED_FUNCTION_316();
      (v50)(v74);
      v75 = OUTLINED_FUNCTION_158_1();
      (v50)(v75);
      OUTLINED_FUNCTION_291();
      if (v54)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v47 == v118)
      {
        OUTLINED_FUNCTION_136();
        v44();
        OUTLINED_FUNCTION_13_2();
        (*((*MEMORY[0x1E69E7D40] & v56) + 0x630))();
        OUTLINED_FUNCTION_27_15();
        (*(v57 + 184))();
        OUTLINED_FUNCTION_242();

        CurrentValueSubject.value.getter();

        v50 = v116;
        *v116 = v141;
        v58 = OUTLINED_FUNCTION_42_13();
        v59(v58);
        v60 = *v138;
        v61 = OUTLINED_FUNCTION_220();
        (v60)(v61);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_323_0();
        OUTLINED_FUNCTION_65_4();
        if (v54)
        {
          goto LABEL_52;
        }

        OUTLINED_FUNCTION_29_13();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy16CommunicationsUI19FilterMenuViewModelC6ActionOAE15OccurrenceValueOGMd, &_ss17_NativeDictionaryVy16CommunicationsUI19FilterMenuViewModelC6ActionOAE15OccurrenceValueOGMR);
        if (OUTLINED_FUNCTION_187_0())
        {
          v50 = v140;
          specialized __RawDictionaryStorage.find<A>(_:)();
          OUTLINED_FUNCTION_13_33();
          v43 = v120;
          v29 = v126;
          if (!v55)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v43 = v120;
          v29 = v126;
        }

        v40 = v140;
        if ((v2 & 1) == 0)
        {
          v89 = OUTLINED_FUNCTION_22_21();
          (v44)(v89, v121, v15);
          OUTLINED_FUNCTION_28_20();
          OUTLINED_FUNCTION_217();
          v60();
          OUTLINED_FUNCTION_202();
          v90 = OUTLINED_FUNCTION_316();
          (v50)(v90);
          v91 = OUTLINED_FUNCTION_158_1();
          (v50)(v91);
          OUTLINED_FUNCTION_291();
          if (v54)
          {
            goto LABEL_56;
          }

          *(v40 + 16) = v92;
LABEL_47:
          v17 = v124;
          v43 = v120;
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_28_20();
        OUTLINED_FUNCTION_138();
        v87();
        OUTLINED_FUNCTION_202();
        v71 = v121;
        goto LABEL_37;
      }

      if (v47 != HIDWORD(v115))
      {
        OUTLINED_FUNCTION_136();
        v44();
        *v114 = 0;
        v77 = OUTLINED_FUNCTION_42_13();
        v78(v77);
        v79 = *v138;
        v80 = OUTLINED_FUNCTION_220();
        (v79)(v80);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v141 = v40;
        specialized __RawDictionaryStorage.find<A>(_:)();
        OUTLINED_FUNCTION_65_4();
        if (v54)
        {
          goto LABEL_54;
        }

        OUTLINED_FUNCTION_29_13();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy16CommunicationsUI19FilterMenuViewModelC6ActionOAE15OccurrenceValueOGMd, &_ss17_NativeDictionaryVy16CommunicationsUI19FilterMenuViewModelC6ActionOAE15OccurrenceValueOGMR);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v40))
        {
          OUTLINED_FUNCTION_286();
          specialized __RawDictionaryStorage.find<A>(_:)();
          OUTLINED_FUNCTION_13_33();
          if (!v55)
          {
            goto LABEL_59;
          }
        }

        v40 = v141;
        v82 = v125;
        if (v2)
        {
          OUTLINED_FUNCTION_28_20();
          OUTLINED_FUNCTION_138();
          v83();
          v84 = *v82;
          v85 = OUTLINED_FUNCTION_286();
          (v84)(v85, v15);
          v29 = v126;
          v86 = OUTLINED_FUNCTION_158_1();
          v84(v86);
          (v84)(v136, v15);
        }

        else
        {
          OUTLINED_FUNCTION_22_21();
          OUTLINED_FUNCTION_136();
          v44();
          OUTLINED_FUNCTION_28_20();
          OUTLINED_FUNCTION_217();
          v79();
          v95 = *v82;
          v96 = OUTLINED_FUNCTION_158_1();
          v95(v96);
          v29 = v126;
          v97 = OUTLINED_FUNCTION_158_1();
          v95(v97);
          OUTLINED_FUNCTION_291();
          if (v54)
          {
            goto LABEL_57;
          }

          *(v40 + 16) = v98;
          (v95)(v136, v15);
        }

        goto LABEL_47;
      }

      OUTLINED_FUNCTION_28_11();
      OUTLINED_FUNCTION_136();
      v44();
      OUTLINED_FUNCTION_13_2();
      (*((*MEMORY[0x1E69E7D40] & v62) + 0x630))();
      OUTLINED_FUNCTION_27_15();
      (*(v63 + 184))();
      OUTLINED_FUNCTION_242();

      CurrentValueSubject.value.getter();

      *v113 = v141;
      v64 = OUTLINED_FUNCTION_42_13();
      v65(v64);
      v66 = *v138;
      v67 = OUTLINED_FUNCTION_220();
      (v66)(v67);
      swift_isUniquelyReferenced_nonNull_native();
      v140 = v40;
      OUTLINED_FUNCTION_28_11();
      v50 = v40;
      specialized __RawDictionaryStorage.find<A>(_:)();
      OUTLINED_FUNCTION_65_4();
      if (v54)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_29_13();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy16CommunicationsUI19FilterMenuViewModelC6ActionOAE15OccurrenceValueOGMd, &_ss17_NativeDictionaryVy16CommunicationsUI19FilterMenuViewModelC6ActionOAE15OccurrenceValueOGMR);
      if (OUTLINED_FUNCTION_187_0())
      {
        v50 = v140;
        OUTLINED_FUNCTION_28_11();
        specialized __RawDictionaryStorage.find<A>(_:)();
        OUTLINED_FUNCTION_13_33();
        if (!v55)
        {
          goto LABEL_59;
        }
      }

      v40 = v140;
      if (v2)
      {
        OUTLINED_FUNCTION_28_20();
        OUTLINED_FUNCTION_138();
        v68();
        OUTLINED_FUNCTION_202();
        v69 = OUTLINED_FUNCTION_28_11();
        v50(v69, v15);
        v29 = v126;
LABEL_38:
        v88 = OUTLINED_FUNCTION_158_1();
        (v50)(v88);
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_22_21();
      OUTLINED_FUNCTION_136();
      v44();
      OUTLINED_FUNCTION_28_20();
      OUTLINED_FUNCTION_217();
      v66();
      OUTLINED_FUNCTION_202();
      v93 = OUTLINED_FUNCTION_158_1();
      (v50)(v93);
      v29 = v126;
      v94 = OUTLINED_FUNCTION_158_1();
      (v50)(v94);
      OUTLINED_FUNCTION_291();
      if (v54)
      {
        goto LABEL_58;
      }
    }

    *(v40 + 16) = v76;
LABEL_39:
    v17 = v124;
LABEL_48:
    v39 = v123;
    if (v134 == ++v41)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result.super.super.isa = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [SGURL]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SGURL, 0x1E69992A8);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  OUTLINED_FUNCTION_0_29();
  type metadata accessor for FilterMenuViewModel.Action();
  v0 = MEMORY[0x1E6995AA8];
  v1 = lazy protocol witness table accessor for type Handle and conformance Handle(&lazy protocol witness table cache variable for type FilterMenuViewModel.Action and conformance FilterMenuViewModel.Action, MEMORY[0x1E6995AA8], MEMORY[0x1E6995AB0]);
  OUTLINED_FUNCTION_4_19(v1);
  v2 = OUTLINED_FUNCTION_2_36();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3, v4, v5, v0, v6);
}

{
  OUTLINED_FUNCTION_0_29();
  type metadata accessor for UUID();
  v0 = MEMORY[0x1E69695A8];
  v1 = lazy protocol witness table accessor for type Handle and conformance Handle(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  OUTLINED_FUNCTION_4_19(v1);
  v2 = OUTLINED_FUNCTION_2_36();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3, v4, v5, v0, v6);
}

{
  v1 = OUTLINED_FUNCTION_1_39();
  v2 = AnyHashable._rawHashValue(seed:)(v1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0, v2);
}

{
  v0 = OUTLINED_FUNCTION_1_39();
  NSObject._rawHashValue(seed:)(v0);
  v1 = OUTLINED_FUNCTION_2_36();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_3_29();
  v1 = MessageType.rawValue.getter();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0, v2);
}

{
  OUTLINED_FUNCTION_0_29();
  type metadata accessor for IndexPath();
  v0 = MEMORY[0x1E6969C28];
  v1 = lazy protocol witness table accessor for type Handle and conformance Handle(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C38]);
  OUTLINED_FUNCTION_4_19(v1);
  v2 = OUTLINED_FUNCTION_2_36();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3, v4, v5, v0, v6);
}

{
  OUTLINED_FUNCTION_3_29();
  Hasher._combine(_:)(v0 & 1);
  v1 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0, v1);
}

{
  v0 = OUTLINED_FUNCTION_1_39();
  NSObject._rawHashValue(seed:)(v0);
  v1 = OUTLINED_FUNCTION_2_36();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2, v3, v4);
}

{
  v0 = OUTLINED_FUNCTION_1_39();
  NSObject._rawHashValue(seed:)(v0);
  v1 = OUTLINED_FUNCTION_2_36();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_3_29();
  Hasher._combine(_:)(v0);
  v1 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0, v1);
}

{
  OUTLINED_FUNCTION_0_29();
  type metadata accessor for Handle();
  v0 = MEMORY[0x1E696EDC8];
  v1 = lazy protocol witness table accessor for type Handle and conformance Handle(&lazy protocol witness table cache variable for type Handle and conformance Handle, MEMORY[0x1E696EDC8], MEMORY[0x1E696EDF8]);
  OUTLINED_FUNCTION_4_19(v1);
  v2 = OUTLINED_FUNCTION_2_36();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3, v4, v5, v0, v6);
}

uint64_t lazy protocol witness table accessor for type Handle and conformance Handle(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v20 = a5;
  v21 = a6;
  v19 = a4;
  v17 = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v22 = v6 + 64;
  v18 = v6;
  v13 = ~(-1 << *(v6 + 32));
  for (i = a2 & v13; ((1 << i) & *(v22 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v9 + 16))(v12, *(v18 + 48) + *(v9 + 72) * i, v8, v10);
    lazy protocol witness table accessor for type Handle and conformance Handle(v19, v20, v21);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v9 + 8))(v12, v8);
    if (v15)
    {
      break;
    }
  }

  return i;
}

uint64_t closure #2 in RecentsLinkController.refreshSuggestionsURLs()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v8 = RecentsLinkController.modelLocked.getter();
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = a4;
    v10 = swift_allocObject();
    *(v10 + 16) = partial apply for closure #1 in closure #2 in RecentsLinkController.refreshSuggestionsURLs();
    *(v10 + 24) = v9;
    aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed RecentsLinkControllerModel) -> ();
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed RecentsLinkControllerModel) -> ();
    aBlock[3] = &block_descriptor_159;
    v11 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v8 performWhileLocked_];

    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_198(uint64_t result)
{
  *(v3 - 152) = result;
  *(v3 - 144) = v2;
  *(v3 - 132) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_198_0(unint64_t *a1)
{

  return lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(a1, v1, v2);
}

id OUTLINED_FUNCTION_198_3()
{

  return [v0 (v1 + 901)];
}

uint64_t OUTLINED_FUNCTION_198_5(uint64_t a1)
{
  v2[8] = a1;
  v2[4] = v1;
  v2[5] = v3;

  return outlined init with copy of CallCenterProvider(v4 - 120, v4 - 160);
}

void RecentsListViewController.currentFilterMode.getter()
{
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_137();
  (*(v1 + 1584))();
  OUTLINED_FUNCTION_27_15();
  v3 = (*(v2 + 184))();

  (*((*v0 & *v3) + 0x210))();
}

uint64_t closure #1 in closure #2 in RecentsLinkController.refreshSuggestionsURLs()(uint64_t a1, unint64_t a2, void *a3)
{
  v40 = a3;
  v39 = type metadata accessor for URL();
  v5 = *(v39 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v39);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*a1 + 256);
  v38 = a1;
  v10 = v9(v6);
  _sSasSQRzlE2eeoiySbSayxG_ABtFZSo5SGURLC_Tt1g5(v10, a2);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    v13 = *(*v38 + 264);

    v13(v14);
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BC4BA940;
    aBlock[0] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo5SGURLCGMd, &_sSaySo5SGURLCGMR);
    v17 = String.init<A>(reflecting:)();
    v19 = v18;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    v20 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Updated suggestionsURLs %@", 26, 2, &dword_1BBC58000, v15, v20, v16);

    result = specialized Array.count.getter();
    if (result)
    {
      v22 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v23 = 0;
      v24 = (v5 + 8);
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x1BFB22010](v23, a2);
        }

        else
        {
          v25 = *(a2 + 8 * v23 + 32);
        }

        v26 = v25;
        ++v23;
        v27 = [v25 url];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v28 = URL.absoluteString.getter();
        v30 = v29;
        (*v24)(v8, v39);
        v31 = MEMORY[0x1BFB209B0](v28, v30);

        aBlock[4] = TPNumberPadCharacter.rawValue.getter;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_162;
        v32 = _Block_copy(aBlock);
        [v40 registerURLFeedback:2 absoluteURL:v31 withCompletion:v32];
        _Block_release(v32);
      }

      while (v22 != v23);
    }
  }

  v34 = (*(*v38 + 200))(aBlock);
  if ((*v33 & 2) != 0)
  {
    *v33 &= ~2uLL;
  }

  v34(aBlock, 0);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v35 = static OS_os_log.conversationKit;
  v36 = static os_log_type_t.default.getter();
  return os_log(_:dso:log:type:_:)("Refreshed suggestionsURLs", 25, 2, &dword_1BBC58000, v35, v36, MEMORY[0x1E69E7CC0]);
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZSo7UIColorC_Tt1g5Tm(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v7 = a1;
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v9 = a2 >> 62 ? __CocoaSet.count.getter() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (i != v9 || !i)
    {
      break;
    }

    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_60_0();
    if (!v13)
    {
      v12 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v12;
    }

    if (v10 == v11)
    {
      break;
    }

    if (i < 0)
    {
      __break(1u);
      return;
    }

    a4 = type metadata accessor for NSObject(0, a3, a4);
    v25 = v7;
    v14 = v7 & 0xC000000000000001;
    v7 = a2;
    v15 = a2 & 0xC000000000000001;
    v16 = 4;
    a2 = i;
    while (1)
    {
      v17 = v16 - 4;
      v18 = v16 - 3;
      if (__OFADD__(v16 - 4, 1))
      {
        break;
      }

      if (v14)
      {
        v19 = MEMORY[0x1BFB22010](v16 - 4, v25);
      }

      else
      {
        if (v17 >= *(v24 + 16))
        {
          goto LABEL_29;
        }

        v19 = *(v25 + 8 * v16);
      }

      a3 = v19;
      if (v15)
      {
        v20 = MEMORY[0x1BFB22010](v16 - 4, v7);
      }

      else
      {
        if (v17 >= *(v23 + 16))
        {
          goto LABEL_30;
        }

        v20 = *(v7 + 8 * v16);
      }

      v21 = v20;
      v22 = static NSObject.== infix(_:_:)();

      if (v22)
      {
        ++v16;
        if (v18 != a2)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }
}

Swift::Void __swiftcall RecentsListViewController.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  if ((*(v1 + OBJC_IVAR___FTRecentsListViewController_isFaceTimeLaunchPageEnabled) & 1) == 0)
  {
    v3 = [v1 navigationItem];
    v7 = [v3 titleView];

    if (v7)
    {
      type metadata accessor for RecentsNavigationBarTitleView();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = v4;
        [(UIScrollView *)a1 contentOffset];
        (*((*MEMORY[0x1E69E7D40] & *v5) + 0x50))(v6 >= 16.0);
      }
    }
  }
}

Swift::Void __swiftcall RecentsListViewController.viewWillLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for RecentsListViewController(0);
  objc_msgSendSuper2(&v1, sel_viewWillLayoutSubviews);
  RecentsListViewController.tipKitInvalidateLayout()();
}

id thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

void closure #1 in RecentsListViewController.collectionViewLayout()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for UICollectionLayoutListConfiguration();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x630))();

  (*(*v10 + 264))(&v63 + 2, a1);

  if (BYTE2(v63))
  {
    v11 = swift_unknownObjectUnownedLoadStrong();
    v12 = (*((*v9 & *v11) + 0x630))();

    (*(*v12 + 264))(&v63 + 1, a1);

    if (BYTE1(v63) == 1)
    {
      v13 = objc_opt_self();
      v14 = [v13 fractionalWidthDimension_];
      v15 = [v13 estimatedDimension_];
      v16 = [objc_opt_self() sizeWithWidthDimension:v14 heightDimension:v15];

      v17 = swift_unknownObjectUnownedLoadStrong();
      v18 = v16;
      isa = RecentsListViewController.updateHeaderForTip(_:)(v18).super.isa;

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutBoundarySupplementaryItem, 0x1E6995548);
      v20 = isa;
      v21 = @nonobjc NSCollectionLayoutBoundarySupplementaryItem.__allocating_init(layoutSize:elementKind:alignment:)(v20, 0xD00000000000001CLL, 0x80000001BC4FB430, 1);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutSection, 0x1E6995580);
      v22 = swift_unknownObjectUnownedLoadStrong();
      RecentsListViewController.collectionLayoutConfiguration.getter();

      v23 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
      (*(v5 + 8))(v7, v4);
      [v23 contentInsets];
      [v23 setContentInsets_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1BC4BAC30;
      *(v24 + 32) = v21;
      v25 = v21;
      v26 = Array._bridgeToObjectiveC()().super.isa;

      [v23 setBoundarySupplementaryItems_];
    }

    else
    {
      v27 = swift_unknownObjectUnownedLoadStrong();
      v28 = (*((*v9 & *v27) + 0x630))();

      (*(*v28 + 264))(&v63, a1);

      if (v63 == 2)
      {
        v29 = objc_opt_self();
        v30 = [v29 fractionalWidthDimension_];
        v31 = [v29 estimatedDimension_];
        v32 = [objc_opt_self() sizeWithWidthDimension:v30 heightDimension:v31];

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutBoundarySupplementaryItem, 0x1E6995548);
        v33 = v32;
        v34 = @nonobjc NSCollectionLayoutBoundarySupplementaryItem.__allocating_init(layoutSize:elementKind:alignment:)(v33, 0xD000000000000021, 0x80000001BC4FC480, 1);
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutSection, 0x1E6995580);
        v35 = swift_unknownObjectUnownedLoadStrong();
        RecentsListViewController.collectionLayoutConfiguration.getter();

        v36 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
        (*(v5 + 8))(v7, v4);
        [v36 contentInsets];
        [v36 setContentInsets_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1BC4BAC30;
        *(v37 + 32) = v34;
        v38 = v34;
        v39 = Array._bridgeToObjectiveC()().super.isa;

        [v36 setBoundarySupplementaryItems_];
      }

      else
      {
        v40 = swift_unknownObjectUnownedLoadStrong();
        v41 = (*((*v9 & *v40) + 0x5F8))();

        if (v41)
        {
          v42 = swift_unknownObjectUnownedLoadStrong();
          RecentsListViewController.createGridLayoutSection()();
        }

        else
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutSection, 0x1E6995580);
          v43 = swift_unknownObjectUnownedLoadStrong();
          RecentsListViewController.collectionLayoutConfiguration.getter();

          v44 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
          (*(v5 + 8))(v7, v4);
          v45 = [v44 boundarySupplementaryItems];
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutBoundarySupplementaryItem, 0x1E6995548);
          v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v47 = specialized Array.count.getter();
          for (i = 0; ; ++i)
          {
            if (v47 == i)
            {

              [v44 contentInsets];
              [v44 setContentInsets_];
              return;
            }

            if ((v46 & 0xC000000000000001) != 0)
            {
              v49 = MEMORY[0x1BFB22010](i, v46);
            }

            else
            {
              if (i >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_19;
              }

              v49 = *(v46 + 8 * i + 32);
            }

            v50 = v49;
            if (__OFADD__(i, 1))
            {
              break;
            }

            [v49 setPinToVisibleBounds_];
          }

          __break(1u);
LABEL_19:
          __break(1u);
        }
      }
    }
  }

  else
  {
    v51 = objc_opt_self();
    v52 = [v51 fractionalWidthDimension_];
    v53 = [v51 estimatedDimension_];
    v54 = [objc_opt_self() sizeWithWidthDimension:v52 heightDimension:v53];

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutBoundarySupplementaryItem, 0x1E6995548);
    v55 = v54;
    v56 = @nonobjc NSCollectionLayoutBoundarySupplementaryItem.__allocating_init(layoutSize:elementKind:alignment:)(v55, 0xD000000000000021, 0x80000001BC4FC450, 1);
    [v56 setPinToVisibleBounds_];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutSection, 0x1E6995580);
    v57 = swift_unknownObjectUnownedLoadStrong();
    RecentsListViewController.collectionLayoutConfiguration.getter();

    v58 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
    (*(v5 + 8))(v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1BC4BAC30;
    *(v59 + 32) = v56;
    v60 = v56;
    v61 = Array._bridgeToObjectiveC()().super.isa;

    [v58 setBoundarySupplementaryItems_];

    [v58 setContentInsetsReference_];
  }
}

ConversationKit::RecentsCollectionViewSection_optional __swiftcall RecentsCollectionViewDataSource.section(for:)(Swift::Int a1)
{
  OUTLINED_FUNCTION_0_1();
  v3 = (*(v1 + 240))();
  dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

  return result;
}

_BYTE *storeEnumTagSinglePayload for RecentsCollectionViewSection(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x1BBC906D4);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

id @nonobjc NSCollectionLayoutBoundarySupplementaryItem.__allocating_init(layoutSize:elementKind:alignment:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1BFB209B0](a2, a3);

  v7 = [swift_getObjCClassFromMetadata() boundarySupplementaryItemWithLayoutSize:a1 elementKind:v6 alignment:a4];

  return v7;
}

void RecentsListViewController.collectionLayoutConfiguration.getter()
{
  OUTLINED_FUNCTION_29();
  swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35UICollectionLayoutListConfigurationVSgMd, &_s5UIKit35UICollectionLayoutListConfigurationVSgMR);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_39_3();
  v4 = OBJC_IVAR___FTRecentsListViewController____lazy_storage___collectionLayoutConfiguration;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  v5 = type metadata accessor for UICollectionLayoutListConfiguration();
  v6 = OUTLINED_FUNCTION_311();
  OUTLINED_FUNCTION_115(v6, v7, v5);
  if (v8)
  {
    v9 = OUTLINED_FUNCTION_43_0();
    outlined destroy of CallControlsService?(v9, v10, &_s5UIKit35UICollectionLayoutListConfigurationVSgMR);
    v11 = OUTLINED_FUNCTION_208();
    closure #1 in RecentsListViewController.collectionLayoutConfiguration.getter(v11);
    OUTLINED_FUNCTION_16_3();
    v12 = OUTLINED_FUNCTION_45_1();
    v13(v12);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v5);
    OUTLINED_FUNCTION_30_2(v0 + v4, &v19);
    outlined assign with take of RecentsCallItem?();
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_16_3();
    v17 = OUTLINED_FUNCTION_246_0();
    v18(v17);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in RecentsListViewController.collectionLayoutConfiguration.getter(void *a1)
{
  v2 = type metadata accessor for FilterMenuViewModel.Action();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = [a1 traitCollection];
  v15 = [v14 userInterfaceIdiom];

  v16 = MEMORY[0x1E69DC258];
  if (v15 != 5)
  {
    v16 = MEMORY[0x1E69DC248];
  }

  (*(v7 + 104))(v13, *v16, v6);
  (*(v7 + 16))(v9, v13, v6);
  v17 = UICollectionLayoutListConfiguration.init(appearance:)();
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x568))(v17);
  static RecentsListViewController.recommendedHeaderMode(for:)();
  (*(v23 + 8))(v4, v24);
  UICollectionLayoutListConfiguration.headerMode.setter();
  v18 = [objc_opt_self() clearColor];
  UICollectionLayoutListConfiguration.backgroundColor.setter();
  UICollectionLayoutListConfiguration.headerTopPadding.setter();
  v19 = [objc_opt_self() effectWithStyle_];
  v20 = [objc_opt_self() effectForBlurEffect:v19 style:7];

  v21 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
  UIListSeparatorConfiguration.visualEffect.setter();
  v21(v25, 0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
  (*(v7 + 8))(v13, v6);
}

void static RecentsListViewController.recommendedHeaderMode(for:)()
{
  OUTLINED_FUNCTION_50_2();
  v1 = v0;
  type metadata accessor for FilterMenuViewModel.Action();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v3 = OUTLINED_FUNCTION_62_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_4_31();
  v7 = v6(v5);
  v8 = *MEMORY[0x1E6995A90];
  v9 = *MEMORY[0x1E6995A68];
  type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  OUTLINED_FUNCTION_7_0();
  v11 = *(v10 + 104);
  if (v7 == v8 || v7 == v9)
  {
    v11(v1, *MEMORY[0x1E69DC290]);
  }

  else
  {
    v11(v1, *MEMORY[0x1E69DC280]);
    v13 = OUTLINED_FUNCTION_4_31();
    v14(v13);
  }

  OUTLINED_FUNCTION_49();
}

uint64_t RecentsListViewController.shouldUseGridLayoutCells.getter()
{
  type metadata accessor for FilterMenuViewModel.Action();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_287();
  if (!v5)
  {
    return *(v0 + OBJC_IVAR___FTRecentsListViewController_isFaceTimeLaunchPageEnabled);
  }

  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x568))();
  v2 = OUTLINED_FUNCTION_45_1();
  v4 = v3(v2);
  v5 = v4 == *MEMORY[0x1E6995A90] || v4 == *MEMORY[0x1E6995A68];
  if (v5)
  {
    return 0;
  }

  v6 = *(v0 + OBJC_IVAR___FTRecentsListViewController_isFaceTimeLaunchPageEnabled);
  v7 = OUTLINED_FUNCTION_45_1();
  v8(v7);
  return v6;
}

NSCollectionLayoutSection __swiftcall RecentsListViewController.createGridLayoutSection()()
{
  type metadata accessor for RecentsCollectionViewGridCell();
  v0 = static RecentsCollectionViewGridCell.needsAXLayout.getter();
  v1 = RecentsListViewController.gridLayoutInset()();
  v2 = RecentsListViewController.gridLayoutInset()();
  if (static RecentsCollectionViewGridCell.needsAXLayout.getter())
  {
    static RecentsCollectionViewGridCell.effectiveScreenWidth.getter();
    if (v3 > 402.0)
    {
      v1 = 24.0;
    }
  }

  else
  {
    v4 = [objc_opt_self() currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5)
    {
      v2 = 20.0;
      v1 = 16.0;
    }
  }

  if (v0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.5;
  }

  v7 = objc_opt_self();
  v8 = [v7 fractionalWidthDimension_];
  v9 = [v7 fractionalHeightDimension_];
  v10 = [objc_opt_self() sizeWithWidthDimension:v8 heightDimension:v9];

  v11 = [objc_opt_self() itemWithLayoutSize_];
  v12 = [v7 fractionalWidthDimension_];
  type metadata accessor for RecentsListViewController(0);
  static RecentsListViewController.gridLayoutItemSize()();
  v14 = [v7 absoluteDimension_];
  v15 = OUTLINED_FUNCTION_79();
  v17 = [v15 v16];

  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_37_0();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BC4BAC30;
  *(v19 + 32) = v11;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutItem, 0x1E6995578);
  v20 = v11;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = [v18 horizontalGroupWithLayoutSize:v17 subitems:isa];

  v23 = [objc_opt_self() fixedSpacing_];
  [v22 setInterItemSpacing_];

  [v22 setContentInsets_];
  v24 = [objc_opt_self() sectionWithGroup_];
  v25 = [objc_opt_self() currentDevice];
  v26 = [v25 userInterfaceIdiom];

  v27 = v1 + -7.5;
  if (v1 + -7.5 <= 0.0)
  {
    v27 = 0.0;
  }

  if (v26)
  {
    v27 = 0.0;
  }

  [v24 setContentInsets_];

  return v24;
}

id closure #1 in RecentsListViewController.cellProvider.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v179 = a3;
  v174 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C15ConversationKit15RecentsCallItemVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C15ConversationKit15RecentsCallItemVGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v159 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v164 = &v144 - v8;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C15ConversationKit15RecentsCallItemVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C15ConversationKit15RecentsCallItemVGMR);
  v160 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v152 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v158 = &v144 - v11;
  v169 = type metadata accessor for FilterMenuViewModel.Action();
  v177 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v176 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v175 = &v144 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionbD0CAF0H8CallItemVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionbD0CAF0H8CallItemVGSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v162 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v161 = &v144 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v157 = &v144 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v154 = &v144 - v22;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionbD0CAF0H8CallItemVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionbD0CAF0H8CallItemVGMR);
  v165 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v156 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v155 = &v144 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v151 = &v144 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v150 = &v144 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v173 = &v144 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionb4GridD0CAF0H8CallItemVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionb4GridD0CAF0H8CallItemVGSgMR);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v144 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v144 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v168 = &v144 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v153 = &v144 - v41;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionb4GridD0CAF0H8CallItemVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionb4GridD0CAF0H8CallItemVGMR);
  v167 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v43 = &v144 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v144 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v163 = &v144 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v149 = &v144 - v50;
  v51 = type metadata accessor for RecentCallRecentItemMetadata(0);
  MEMORY[0x1EEE9AC00](v51);
  v170 = &v144 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for RecentsCallItemType(0);
  MEMORY[0x1EEE9AC00](v53);
  MEMORY[0x1EEE9AC00](v54);
  v178 = (&v144 - v55);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v57 = Strong;
  v147 = v43;
  v146 = a2;
  v58 = MEMORY[0x1E69E7D40];
  v59 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x630))();

  swift_beginAccess();
  v60 = swift_unknownObjectWeakLoadStrong();
  if (!v60)
  {
    goto LABEL_55;
  }

  v61 = v60;
  v148 = v59;
  v62 = (*((*v58 & *v60) + 0x630))();

  v63 = (*(*v62 + 184))();

  swift_beginAccess();
  v64 = swift_unknownObjectWeakLoadStrong();
  if (!v64)
  {

    return 0;
  }

  v144 = v63;
  v65 = v64;
  v66 = (*((*v58 & *v64) + 0x5F8))();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v68 = v147;
  v145 = v65;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      if (v66)
      {
        swift_beginAccess();
        outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
        v101 = v172;
        if (__swift_getEnumTagSinglePayload(v37, 1, v172) == 1)
        {
          outlined destroy of CallControlsService?(v37, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionb4GridD0CAF0H8CallItemVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionb4GridD0CAF0H8CallItemVGSgMR);
          if (one-time initialization token for conversationKit != -1)
          {
            swift_once();
          }

          v102 = type metadata accessor for Logger();
          __swift_project_value_buffer(v102, static Logger.conversationKit);
          v75 = Logger.logObject.getter();
          v103 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v75, v103))
          {
            v104 = swift_slowAlloc();
            *v104 = 0;
            v105 = "cellRegistrationForGridRecentsCallItemOngoingCalls was unexpectedly nil";
LABEL_63:
            _os_log_impl(&dword_1BBC58000, v75, v103, v105, v104, 2u);
            MEMORY[0x1BFB23DF0](v104, -1, -1);
            goto LABEL_88;
          }

          goto LABEL_88;
        }

        v126 = v167;
        (*(v167 + 32))(v46, v37, v101);
        v127 = v173;
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
        v128 = type metadata accessor for RecentsCallItem(0);
        v129 = v101;
        __swift_storeEnumTagSinglePayload(v127, 0, 1, v128);
        type metadata accessor for RecentsCollectionViewGridCell();
        v130 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
        outlined destroy of CallControlsService?(v127, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
        (*(v126 + 8))(v46, v129);
      }

      else
      {
        swift_beginAccess();
        v114 = v161;
        outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
        v115 = v171;
        if (__swift_getEnumTagSinglePayload(v114, 1, v171) == 1)
        {
          outlined destroy of CallControlsService?(v114, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionbD0CAF0H8CallItemVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionbD0CAF0H8CallItemVGSgMR);
          if (one-time initialization token for conversationKit != -1)
          {
            swift_once();
          }

          v116 = type metadata accessor for Logger();
          __swift_project_value_buffer(v116, static Logger.conversationKit);
          v75 = Logger.logObject.getter();
          v103 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v75, v103))
          {
            v104 = swift_slowAlloc();
            *v104 = 0;
            v105 = "cellRegistrationForRecentsCallItemOngoingCalls was unexpectedly nil";
            goto LABEL_63;
          }

          goto LABEL_88;
        }

        v131 = v165;
        v132 = v155;
        (*(v165 + 32))(v155, v114, v115);
        v133 = v173;
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
        v134 = type metadata accessor for RecentsCallItem(0);
        __swift_storeEnumTagSinglePayload(v133, 0, 1, v134);
        type metadata accessor for RecentsCollectionViewCell();
        v130 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
        outlined destroy of CallControlsService?(v133, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
        (*(v131 + 8))(v132, v115);
      }

      v112 = v130;
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
      goto LABEL_78;
    case 2:
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
      if (v66)
      {
        swift_beginAccess();
        outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
        v83 = v172;
        if (__swift_getEnumTagSinglePayload(v34, 1, v172) != 1)
        {
          v106 = v167;
          (*(v167 + 32))(v68, v34, v83);
          goto LABEL_74;
        }

        outlined destroy of CallControlsService?(v34, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionb4GridD0CAF0H8CallItemVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionb4GridD0CAF0H8CallItemVGSgMR);
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        v100 = type metadata accessor for Logger();
        __swift_project_value_buffer(v100, static Logger.conversationKit);
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          *v87 = 0;
          v88 = "cellRegistrationForGridRecentsCallItemLinks was unexpectedly nil";
          goto LABEL_53;
        }
      }

      else
      {
        swift_beginAccess();
        v110 = v162;
        outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
        v83 = v171;
        if (__swift_getEnumTagSinglePayload(v110, 1, v171) != 1)
        {
          v106 = v165;
          v68 = v156;
          (*(v165 + 32))(v156, v110, v83);
          v117 = v173;
          _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
          v122 = type metadata accessor for RecentsCallItem(0);
          __swift_storeEnumTagSinglePayload(v117, 0, 1, v122);
          type metadata accessor for RecentsCollectionViewCell();
          goto LABEL_76;
        }

        outlined destroy of CallControlsService?(v110, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionbD0CAF0H8CallItemVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionbD0CAF0H8CallItemVGSgMR);
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        v111 = type metadata accessor for Logger();
        __swift_project_value_buffer(v111, static Logger.conversationKit);
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          *v87 = 0;
          v88 = "cellRegistrationForRecentsCallItemLinks was unexpectedly nil";
          goto LABEL_53;
        }
      }

      goto LABEL_54;
    default:
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v79 = _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
        v71 = v177;
        goto LABEL_17;
      }

      v69 = v170;
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_0();
      v70 = *&v69[*(v51 + 52)];
      v71 = v177;
      if (!v70 || ![v70 isSensitive])
      {
        v79 = _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
LABEL_17:
        v80 = v175;
        v81 = v176;
        if (v66)
        {
          swift_beginAccess();
          v82 = v168;
          outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
          v83 = v172;
          if (__swift_getEnumTagSinglePayload(v82, 1, v172) == 1)
          {
            outlined destroy of CallControlsService?(v82, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionb4GridD0CAF0H8CallItemVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionb4GridD0CAF0H8CallItemVGSgMR);
            if (one-time initialization token for conversationKit != -1)
            {
              swift_once();
            }

            v84 = type metadata accessor for Logger();
            __swift_project_value_buffer(v84, static Logger.conversationKit);
            v85 = Logger.logObject.getter();
            v86 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v85, v86))
            {
              v87 = swift_slowAlloc();
              *v87 = 0;
              v88 = "cellRegistrationForGridRecentsCallItemCalls was unexpectedly nil";
LABEL_53:
              _os_log_impl(&dword_1BBC58000, v85, v86, v88, v87, 2u);
              MEMORY[0x1BFB23DF0](v87, -1, -1);

LABEL_55:

              return 0;
            }

LABEL_54:

            goto LABEL_55;
          }

          v106 = v167;
          v68 = v163;
          (*(v167 + 32))(v163, v82, v83);
LABEL_74:
          v117 = v173;
          _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
          v121 = type metadata accessor for RecentsCallItem(0);
          __swift_storeEnumTagSinglePayload(v117, 0, 1, v121);
          type metadata accessor for RecentsCollectionViewGridCell();
LABEL_76:
          v123 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
          outlined destroy of CallControlsService?(v117, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
          (*(v106 + 8))(v68, v83);
          goto LABEL_77;
        }

        v178 = *((*MEMORY[0x1E69E7D40] & *v145) + 0x568);
        v178(v79);
        v89 = v80;
        v90 = *(v71 + 104);
        v91 = v169;
        v90(v81, *MEMORY[0x1E6995A68], v169);
        v92 = specialized == infix<A>(_:_:)(v80, v81);
        v93 = *(v71 + 8);
        v93(v81, v91);
        v94 = (v93)(v89, v91);
        if (v92)
        {
          swift_beginAccess();
          v95 = v164;
          outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
          v83 = v166;
          if (__swift_getEnumTagSinglePayload(v95, 1, v166) != 1)
          {
            v106 = v160;
            v68 = v158;
            (*(v160 + 32))(v158, v95, v83);
            v117 = v173;
            _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
            v118 = type metadata accessor for RecentsCallItem(0);
            __swift_storeEnumTagSinglePayload(v117, 0, 1, v118);
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x1E69DC7F8);
            goto LABEL_76;
          }

          outlined destroy of CallControlsService?(v95, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C15ConversationKit15RecentsCallItemVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C15ConversationKit15RecentsCallItemVGSgMR);
          if (one-time initialization token for conversationKit != -1)
          {
            swift_once();
          }

          v96 = type metadata accessor for Logger();
          __swift_project_value_buffer(v96, static Logger.conversationKit);
          v85 = Logger.logObject.getter();
          v97 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v85, v97))
          {
            goto LABEL_54;
          }

          v98 = swift_slowAlloc();
          *v98 = 0;
          v99 = "cellRegistrationForJunk was unexpectedly nil";
        }

        else
        {
          v178(v94);
          v90(v81, *MEMORY[0x1E6995A90], v91);
          v107 = specialized == infix<A>(_:_:)(v89, v81);
          v93(v81, v91);
          v93(v89, v91);
          if (v107)
          {
            swift_beginAccess();
            v108 = v159;
            outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
            v83 = v166;
            if (__swift_getEnumTagSinglePayload(v108, 1, v166) != 1)
            {
              v106 = v160;
              v68 = v152;
              (*(v160 + 32))(v152, v108, v83);
              v117 = v173;
              _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
              v137 = type metadata accessor for RecentsCallItem(0);
              __swift_storeEnumTagSinglePayload(v117, 0, 1, v137);
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x1E69DC7F8);
              goto LABEL_76;
            }

            outlined destroy of CallControlsService?(v108, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C15ConversationKit15RecentsCallItemVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C15ConversationKit15RecentsCallItemVGSgMR);
            if (one-time initialization token for conversationKit != -1)
            {
              swift_once();
            }

            v109 = type metadata accessor for Logger();
            __swift_project_value_buffer(v109, static Logger.conversationKit);
            v85 = Logger.logObject.getter();
            v97 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v85, v97))
            {
              goto LABEL_54;
            }

            v98 = swift_slowAlloc();
            *v98 = 0;
            v99 = "cellRegistrationForRequests was unexpectedly nil";
          }

          else
          {
            swift_beginAccess();
            v119 = v157;
            outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
            v83 = v171;
            if (__swift_getEnumTagSinglePayload(v119, 1, v171) != 1)
            {
              v106 = v165;
              v68 = v151;
              (*(v165 + 32))(v151, v119, v83);
              v117 = v173;
              _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
              v138 = type metadata accessor for RecentsCallItem(0);
              __swift_storeEnumTagSinglePayload(v117, 0, 1, v138);
              type metadata accessor for RecentsCollectionViewCell();
              goto LABEL_76;
            }

            outlined destroy of CallControlsService?(v119, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionbD0CAF0H8CallItemVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionbD0CAF0H8CallItemVGSgMR);
            if (one-time initialization token for conversationKit != -1)
            {
              swift_once();
            }

            v120 = type metadata accessor for Logger();
            __swift_project_value_buffer(v120, static Logger.conversationKit);
            v85 = Logger.logObject.getter();
            v97 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v85, v97))
            {
              goto LABEL_54;
            }

            v98 = swift_slowAlloc();
            *v98 = 0;
            v99 = "cellRegistrationForRecentsCallItemCalls was unexpectedly nil";
          }
        }

        _os_log_impl(&dword_1BBC58000, v85, v97, v99, v98, 2u);
        MEMORY[0x1BFB23DF0](v98, -1, -1);
        goto LABEL_54;
      }

      if (v66)
      {
        swift_beginAccess();
        v72 = v153;
        outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
        v73 = v172;
        if (__swift_getEnumTagSinglePayload(v72, 1, v172) == 1)
        {
          outlined destroy of CallControlsService?(v72, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionb4GridD0CAF0H8CallItemVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionb4GridD0CAF0H8CallItemVGSgMR);
          if (one-time initialization token for conversationKit != -1)
          {
            swift_once();
          }

          v74 = type metadata accessor for Logger();
          __swift_project_value_buffer(v74, static Logger.conversationKit);
          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v75, v76))
          {
            goto LABEL_88;
          }

          v77 = swift_slowAlloc();
          *v77 = 0;
          v78 = "cellRegistrationForGridRecentsSensitveCallItemCalls was unexpectedly nil";
LABEL_87:
          _os_log_impl(&dword_1BBC58000, v75, v76, v78, v77, 2u);
          MEMORY[0x1BFB23DF0](v77, -1, -1);
LABEL_88:

          _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
          return 0;
        }

        v139 = v167;
        v140 = v149;
        (*(v167 + 32))(v149, v72, v73);
        v141 = v173;
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
        v142 = type metadata accessor for RecentsCallItem(0);
        __swift_storeEnumTagSinglePayload(v141, 0, 1, v142);
        type metadata accessor for RecentsCollectionViewGridCell();
      }

      else
      {
        swift_beginAccess();
        v135 = v154;
        outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
        v73 = v171;
        if (__swift_getEnumTagSinglePayload(v135, 1, v171) == 1)
        {
          outlined destroy of CallControlsService?(v135, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionbD0CAF0H8CallItemVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit017RecentsCollectionbD0CAF0H8CallItemVGSgMR);
          if (one-time initialization token for conversationKit != -1)
          {
            swift_once();
          }

          v136 = type metadata accessor for Logger();
          __swift_project_value_buffer(v136, static Logger.conversationKit);
          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v75, v76))
          {
            goto LABEL_88;
          }

          v77 = swift_slowAlloc();
          *v77 = 0;
          v78 = "cellRegistrationForRecentsSensitveCallItemCalls was unexpectedly nil";
          goto LABEL_87;
        }

        v139 = v165;
        v140 = v150;
        (*(v165 + 32))(v150, v135, v73);
        v141 = v173;
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_0();
        v143 = type metadata accessor for RecentsCallItem(0);
        __swift_storeEnumTagSinglePayload(v141, 0, 1, v143);
        type metadata accessor for RecentsCollectionViewCell();
      }

      v123 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      outlined destroy of CallControlsService?(v141, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
      (*(v139 + 8))(v140, v73);
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_1();
LABEL_77:
      v112 = v123;
LABEL_78:
      v181 = 0;
      v182 = 0xE000000000000000;
      _StringGuts.grow(_:)(36);

      v181 = 0xD00000000000001CLL;
      v182 = 0x80000001BC4FC430;
      v180 = IndexPath.section.getter();
      v124 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1BFB20B10](v124);

      MEMORY[0x1BFB20B10](2003784238, 0xE400000000000000);
      v180 = IndexPath.row.getter();
      v125 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1BFB20B10](v125);

      outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(v181, v182, v112);

      return v112;
  }
}