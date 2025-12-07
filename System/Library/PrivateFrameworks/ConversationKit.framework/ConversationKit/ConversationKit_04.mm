id TUCall.cnk_activeConversation.getter()
{
  v1 = [v0 callCenter];
  v2 = [v1 activeConversationForCall_];

  return v2;
}

id @nonobjc TUCall.provider.getter()
{
  v1 = [v0 provider];

  return v1;
}

uint64_t outlined bridged method (ob) of @objc TUCallProvider.bundleIdentifier.getter(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *static ParticipantContactDetailsCache.queue_cache(forBundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  v8 = static ParticipantContactDetailsCache.queue;
  *v7 = static ParticipantContactDetailsCache.queue;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = TUPreferredFaceTimeBundleIdentifier();
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == a1 && v13 == a2)
  {

LABEL_14:
    if (one-time initialization token for faceTime == -1)
    {
LABEL_15:
      v17 = static ParticipantContactDetailsCache.faceTime;

      return v17;
    }

LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_14;
  }

  if (one-time initialization token for cachesByBundleIdentifiers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = specialized Dictionary.subscript.getter(a1, a2, static ParticipantContactDetailsCache.cachesByBundleIdentifiers);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    swift_endAccess();

    v17 = ParticipantContactDetailsCache.__allocating_init(bundleIdentifier:)();
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v19 = static ParticipantContactDetailsCache.cachesByBundleIdentifiers;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
    static ParticipantContactDetailsCache.cachesByBundleIdentifiers = v19;
  }

  swift_endAccess();
  return v17;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_146_2(v3);
}

{
  if (*(a3 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_145_4(v3);
  }

  else
  {
    OUTLINED_FUNCTION_199_1();
  }

  return OUTLINED_FUNCTION_46();
}

{
  if (!*(a3 + 16))
  {
    return 1;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 1;
  }

  OUTLINED_FUNCTION_277_0(v4);
  return v3;
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_277_0(v4);
  return v3;
}

uint64_t outlined init with take of Participant(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWObTm_0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWObTm_1()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWObTm_2(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWObTm_3(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWObTm_4()
{
  v1 = OUTLINED_FUNCTION_16_23();
  v2(v1);
  OUTLINED_FUNCTION_20_3();
  v3 = OUTLINED_FUNCTION_46();
  v4(v3);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWObTm_5()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWObTm_6()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWObTm_7()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWObTm_8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

void *outlined consume of Participant.RemoteIdentifiers?(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

void OUTLINED_FUNCTION_88_0(unint64_t a1@<X8>)
{

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1 > 1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_88_1()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_88_3()
{

  VideoMessageController.latestVideoMessageSandboxURL.setter(0);
}

uint64_t OUTLINED_FUNCTION_88_5()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_88_7@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1 + 8) = 0;

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_88_10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return outlined init with copy of Notice?(v4 + 128, v4 + 80, a3, a4);
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for Participant(0);
  v7 = OUTLINED_FUNCTION_9_0(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    if (!i)
    {
LABEL_15:
      OUTLINED_FUNCTION_58_1();
      return;
    }

    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (i < 0)
    {
      break;
    }

    v12 = 0;
    v13 = v21;
    v18 = i;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1BFB22010](v12, a3);
      }

      else
      {
        if (v12 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v15 = *(a3 + 8 * v12 + 32);
      }

      i = v15;
      v20 = v15;
      a1(&v20);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v21 = v13;
      v16 = *(v13 + 16);
      if (v16 >= *(v13 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v13 = v21;
      }

      *(v13 + 16) = v16 + 1;
      OUTLINED_FUNCTION_17_17();
      OUTLINED_FUNCTION_3_38();
      _s15ConversationKit11ParticipantVWObTm_0(v10, v17);
      ++v12;
      if (v14 == v18)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
}

uint64_t closure #2 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a6@<X8>, int8x8_t a7@<D0>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_32();
  v16 = OUTLINED_FUNCTION_4_24();
  v17 = type metadata accessor for Participant.CountdownInfo(v16);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_40();
  v79 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMR);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_363();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v76 = v23;
  v77 = v22;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  v24 = OUTLINED_FUNCTION_101_4();
  type metadata accessor for Participant.State(v24);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_240_0();
  v26 = *a1;
  v27 = type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  (*(v28 + 16))(v8, a2, v27);
  swift_storeEnumTagMultiPayload();
  v75 = v7;
  UUID.init()();
  v29 = v26;
  v74 = static Colors.ParticipantGradients.gradient(for:)(v29);
  v80 = v9;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v17);
  v33 = OUTLINED_FUNCTION_334();
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v35 = OUTLINED_FUNCTION_308_1();
  v36(v35);
  v37 = v82;
  if (v82)
  {
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v73 = Conversation.containsAuthorizedToChangeGroupMembership(participantWithHandle:)(v29, v37);
    __swift_destroy_boxed_opaque_existential_1(v81);
  }

  else
  {
    outlined destroy of CallControlsService?(v81, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    v73 = 0;
  }

  type metadata accessor for ParticipantContactDetailsCache();
  swift_getObjectType();
  v38 = specialized static ParticipantContactDetailsCache.cache(for:)();
  v39 = type metadata accessor for Participant(0);
  v40 = a6 + v39[7];
  *(v40 + 32) = 0;
  *v40 = 0u;
  *(v40 + 16) = 0u;
  v41 = (a6 + v39[9]);
  *(a6 + v39[10]) = 0;
  *(a6 + v39[11]) = MEMORY[0x1E69E7CD0];
  *(a6 + v39[12]) = 0;
  OUTLINED_FUNCTION_89_9();
  v42 = OUTLINED_FUNCTION_20_36();
  _s15ConversationKit11ParticipantVWObTm_8(v42, v43);
  *&v44 = (*(v76 + 32))(a6 + v39[5], v75, v77);
  v45 = a6 + v39[6];
  *v45 = vuzp1_s8(a7, v44).u32[0];
  *(v45 + 4) = 0;
  outlined consume of Participant.RemoteIdentifiers?(*v40, *(v40 + 8), *(v40 + 16), *(v40 + 24), *(v40 + 32));
  *v40 = v29;
  *(v40 + 8) = xmmword_1BC4BB7D0;
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(a6 + v39[8]) = v74;
  *v41 = 0;
  v41[1] = 0;
  *(a6 + v39[15]) = v73 & 1;
  *(a6 + v39[13]) = 0;
  v46 = OUTLINED_FUNCTION_18_12();
  if (__swift_getEnumTagSinglePayload(v46, v47, v17) == 1)
  {
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v27);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v27);
    v54 = v79;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v27);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v27);
    OUTLINED_FUNCTION_205_0();
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v61, v62, v63, v64);
    OUTLINED_FUNCTION_205_0();
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v65, v66, v67, v68);
    *(v79 + *(v17 + 24)) = 0;
    v69 = OUTLINED_FUNCTION_18_12();
    if (__swift_getEnumTagSinglePayload(v69, v70, v17) != 1)
    {
      outlined destroy of CallControlsService?(v80, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMR);
    }
  }

  else
  {
    v54 = v79;
    _s15ConversationKit11ParticipantVWObTm_8(v80, v79);
  }

  OUTLINED_FUNCTION_24_57();
  result = _s15ConversationKit11ParticipantVWObTm_8(v54, a6 + v71);
  *(a6 + v39[16]) = v38;
  return result;
}

id OUTLINED_FUNCTION_257(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_285_0@<X0>(uint64_t a2@<X8>)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 7;

  return UUID.init()();
}

uint64_t static Colors.ParticipantGradients.gradient(for:)(void *a1)
{
  v1 = [a1 value];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  specialized Sequence.reduce<A>(_:_:)(0, v2, v4);

  if (one-time initialization token for gradients != -1)
  {
    result = swift_once();
  }

  if (*(static Colors.ParticipantGradients.gradients + 2))
  {
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized Sequence.reduce<A>(_:_:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v15 = a3 & 0xFFFFFFFFFFFFFFLL;
  v13 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v9 = 15;
  while (1)
  {
    if (4 * v6 == v9 >> 14)
    {
      return a1;
    }

    result = v9;
    if ((v9 & 0xC) == v8)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v9, a2, a3);
    }

    v11 = result >> 16;
    if (result >> 16 >= v6)
    {
      break;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v12 = result;
    }

    else if ((a3 & 0x2000000000000000) != 0)
    {
      v14[0] = a2;
      v14[1] = v15;
      v12 = *(v14 + v11);
    }

    else
    {
      result = v13;
      if ((a2 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v12 = *(result + v11);
    }

    if ((v9 & 0xC) == v8)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v9, a2, a3);
      v9 = result;
      if ((a3 & 0x1000000000000000) == 0)
      {
LABEL_19:
        v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_24;
      }
    }

    else if ((a3 & 0x1000000000000000) == 0)
    {
      goto LABEL_19;
    }

    if (v6 <= v9 >> 16)
    {
      goto LABEL_27;
    }

    v9 = String.UTF8View._foreignIndex(after:)();
LABEL_24:
    a1 = v12 ^ a1;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_261()
{

  return type metadata accessor for UUID();
}

uint64_t specialized static ParticipantContactDetailsCache.cache(for:)()
{
  OUTLINED_FUNCTION_55();
  if (one-time initialization token for queue != -1)
  {
    v0 = OUTLINED_FUNCTION_1_71(&one-time initialization token for queue);
  }

  MEMORY[0x1EEE9AC00](v0);
  OS_dispatch_queue.sync<A>(execute:)();
  return v2;
}

uint64_t outlined assign with take of Participant?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return v4;
}

uint64_t outlined init with copy of Participant?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 16))(v4, v5);
  return v4;
}

id OUTLINED_FUNCTION_176_0()
{
  v4 = *(v1 - 168);
  v3 = *(v1 - 160);
  v6 = *(v1 - 184);
  v5 = *(v1 - 176);

  return outlined copy of Participant.RemoteIdentifiers?(v0, v3, v4, v5, v6);
}

uint64_t closure #1 in static ParticipantContactDetailsCache.resetAll()()
{
  if (one-time initialization token for faceTime != -1)
  {
LABEL_16:
    swift_once();
  }

  [*(static ParticipantContactDetailsCache.faceTime + 3) removeAllObjects];
  if (one-time initialization token for cachesByBundleIdentifiers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static ParticipantContactDetailsCache.cachesByBundleIdentifiers;
  v1 = 1 << *(static ParticipantContactDetailsCache.cachesByBundleIdentifiers + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(static ParticipantContactDetailsCache.cachesByBundleIdentifiers + 8);
  v4 = (v1 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v5 = 0;
  if (v3)
  {
    while (1)
    {
      v6 = v5;
LABEL_12:
      v7 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      [*(*(v0[7] + ((v6 << 9) | (8 * v7))) + 24) removeAllObjects];
      if (!v3)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v6 >= v4)
    {
      break;
    }

    v3 = v0[v6 + 8];
    ++v5;
    if (v3)
    {
      v5 = v6;
      goto LABEL_12;
    }
  }
}

uint64_t outlined consume of Environment<UIInterfaceOrientation>.Content(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t ConversationController.updateLocalParticipant(with:isChangingExternalCameraUsageOnIPad:)(unint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v14 = v4;
  LODWORD(v294) = a4;
  v297 = a2;
  v16 = type metadata accessor for Participant.State(0);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_24_5();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v304 = v18;
  v305 = v19;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_40();
  v303 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_28_6();
  type metadata accessor for Participant(v23);
  OUTLINED_FUNCTION_1();
  v302 = v24;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_69_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_79_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_103_4();
  v298 = a3;
  if ((a3 & 0x80) == 0)
  {
    v33 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_1_186();
    _s15ConversationKit11ParticipantVWOcTm_17(v14 + v33, v8);
    ConversationController.conversationIsAVLess.getter();
    memset(v330, 0, 75);
    OUTLINED_FUNCTION_352();
    Participant.copresenceInfo.getter(&v318);
    Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
    outlined destroy of CallControlsService?(&v318, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
    outlined destroy of CallControlsService?(v313, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v8, v34);
    v35 = 0;
    v36 = v9;
    v37 = v14;
    v38 = v305;
    goto LABEL_103;
  }

  v286 = v31;
  v287 = v32;
  v285 = v5;
  v291 = v30;
  v292 = v7;
  v300 = v9;
  v39 = v14 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v41 = *(v39 + 3);
  v40 = *(v39 + 4);
  v42 = OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_202_3(v42, v43);
  OUTLINED_FUNCTION_2_7();
  v301 = v14;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_58_9();
  v45 = OUTLINED_FUNCTION_153_4();
  v46(v45);
  OUTLINED_FUNCTION_403_0();
  v47(v315, v41, v40);
  v48 = OUTLINED_FUNCTION_139();
  v49(v48);
  v37 = v14;
  v50 = v14 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_1_186();
  v51 = OUTLINED_FUNCTION_11_36();
  _s15ConversationKit11ParticipantVWOcTm_17(v51, v52);
  Participant.videoInfo.getter();
  OUTLINED_FUNCTION_0_222();
  _s15ConversationKit11ParticipantVWOhTm_18(v6, v53);
  v54 = a1 >> 8;
  v293 = v50;
  if (v318)
  {
    v55 = BYTE8(v318);
    v56 = v319;
    v57 = v321;
    v313[2] = v319;
    *v327 = v322;
    *&v327[16] = v323;
    *&v327[32] = v324;
    v313[0] = v318;
    LOBYTE(v313[1]) = BYTE8(v318);
    HIDWORD(v313[1]) = HIDWORD(v318);
    *(&v313[1] + 1) = *(&v318 + 9);
    HIDWORD(v281) = BYTE1(v319);
    v313[3] = v320;
    LOBYTE(v313[4]) = v321;
    *(&v313[4] + 1) = v322;
    *(&v313[6] + 1) = v323;
    *(&v313[8] + 1) = v324;
    *(&v313[9] + 1) = v325;
    LODWORD(v287) = v325;
    v283 = v320;
    if (v321 == BYTE1(a1))
    {
      v58 = 0.0;
      v59 = 1;
      v60 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
      if (BYTE8(v318))
      {
        goto LABEL_27;
      }
    }

    else
    {
      LODWORD(v281) = v319;
      if (one-time initialization token for conversationController != -1)
      {
        OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
      }

      v89 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v89, static Logger.conversationController);
      v90 = v14;
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.default.getter();

      v280 = v90;
      if (os_log_type_enabled(v91, v92))
      {
        v282 = a1 >> 8;
        v54 = OUTLINED_FUNCTION_23();
        v279 = OUTLINED_FUNCTION_13_31();
        v330[0] = v279;
        *v54 = 136315650;
        LOBYTE(v317[0]) = v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
        v93 = String.init<A>(reflecting:)();
        HIDWORD(v278) = v92;
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, v330);
        OUTLINED_FUNCTION_479();

        *(v54 + 4) = v90;
        *(v54 + 12) = 2080;
        LOBYTE(v317[0]) = BYTE1(a1);
        v95 = String.init<A>(reflecting:)();
        v97 = v96;
        v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, v330);

        *(v54 + 14) = v98;
        *(v54 + 22) = 2080;
        v37 = v301;
        LOBYTE(v317[0]) = v57;
        v99 = String.init<A>(reflecting:)();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, v330);
        OUTLINED_FUNCTION_479();

        *(v54 + 24) = v97;
        OUTLINED_FUNCTION_11_44();
        _os_log_impl(v101, v102, v103, v104, v105, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_4_4();
        LOBYTE(v54) = BYTE1(a1);
        OUTLINED_FUNCTION_27();
      }

      v60 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
      v59 = 1;
      OUTLINED_FUNCTION_3_5(v313, &v312);
      LOBYTE(v313[4]) = v54;
      if (static Platform.current.getter() == 3 || (v59 = 1, (ConversationController.isOneToOneModeEnabled.getter() & 1) != 0))
      {
        v58 = 0.0;
      }

      else
      {
        HIBYTE(v313[1]) = 1;
        v58 = 1.0;
        v59 = 0;
      }

      v56 = v281;
      if (v55)
      {
LABEL_27:
        if (v56)
        {
          if (v59)
          {
            *&v115 = 0.25;
          }

          else
          {
            *&v115 = v58;
          }

          OUTLINED_FUNCTION_3_0();
          swift_beginAccess();
          OUTLINED_FUNCTION_447();
          v116 = *(*&v58 + 232);
          swift_unknownObjectRetain();
          v117 = OUTLINED_FUNCTION_48_0();
          v58 = *&v115;
          v116(v117);
          v37 = v301;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_12();
          __swift_storeEnumTagSinglePayload(v118, v119, v120, v304);
          v121 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDResolvingCroppedAspectRatio;
          OUTLINED_FUNCTION_30_2(v301 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDResolvingCroppedAspectRatio, v330);
          v60 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
          outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v285, v301 + v121, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          swift_endAccess();
          v59 = 0;
        }

        v122 = v294;
        v123 = &unk_1BC4BB000;
        if (v294 == 2 || ((HIDWORD(v281) ^ v294) & 1) == 0)
        {
          if (v59)
          {
LABEL_46:
            v148 = v37 + v60[90];
            OUTLINED_FUNCTION_3_0();
            swift_beginAccess();
            v149 = *v148;
            v35 = *v148 != v283;
            if (*v148 != v283)
            {
              OUTLINED_FUNCTION_3_5(v313, &v311);
              v313[3] = v149;
            }

            v106 = v287 & 1;
            v150 = ConversationController.isCameraMixedWithScreen.getter();
            if ((v150 & 1) != v106)
            {
              v151 = v150;
              if (one-time initialization token for conversationController != -1)
              {
                OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
              }

              v152 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_52(v152, static Logger.conversationController);
              v106 = v37;
              v153 = Logger.logObject.getter();
              v154 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v153, v154))
              {
                v288 = v154;
                v155 = v123;
                v156 = OUTLINED_FUNCTION_30_1();
                v330[0] = OUTLINED_FUNCTION_29_7();
                *v156 = v155[308];
                LOBYTE(v317[0]) = *(v106 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode);
                v157 = String.init<A>(reflecting:)();
                getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v158, v330);
                OUTLINED_FUNCTION_439();
                *(v156 + 4) = v58;
                *(v156 + 12) = 2080;
                LOBYTE(v317[0]) = ConversationController.isCameraMixedWithScreen.getter() & 1;
                v159 = String.init<A>(reflecting:)();
                getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v159, v160, v330);
                OUTLINED_FUNCTION_173();

                *(v156 + 14) = v106;
                _os_log_impl(&dword_1BBC58000, v153, v288, "[%s] Updating local participant videoInfo with isMixedWithScreen: %s", v156, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_3_83();
                OUTLINED_FUNCTION_2_2();
              }

              v35 = 1;
              OUTLINED_FUNCTION_3_5(v313, &v310);
              BYTE1(v313[9]) = v151 & 1;
            }

            if (ConversationController.isOneToOneModeEnabled.getter())
            {
              v161 = OUTLINED_FUNCTION_473();
              __swift_project_boxed_opaque_existential_1(v161, v162);
              v163 = OUTLINED_FUNCTION_56_19();
              v165 = COERCE_DOUBLE(v164(v163));
              v167 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
              v296 = v35;
              if (v168)
              {
                v169 = 0;
                v170 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
              }

              else
              {
                v10 = v165;
                v11 = v166;
                v170 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
                if (v166 >= v165 && (v171 = v37 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation, OUTLINED_FUNCTION_3_0(), swift_beginAccess(), (v171[8] & 1) != 0) || (v172 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera, OUTLINED_FUNCTION_3_0(), swift_beginAccess(), (*(v37 + v172) & 1) != 0) || *(v37 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) != 1 || ![*(v37 + OBJC_IVAR____TtC15ConversationKit22ConversationController_featureFlags) afbEnabled])
                {
                  v169 = 0;
                }

                else
                {
                  v173 = [objc_opt_self() currentDevice];
                  v174 = [v173 userInterfaceIdiom];

                  v285 = v148;
                  if (v174)
                  {
                    v175 = *v148;
                    if (v175 <= 3)
                    {
                      v175 = qword_1BC4E9B80[v175];
                    }
                  }

                  else
                  {
LABEL_122:
                    if (v10 < v11)
                    {
                      v175 = 1;
                    }

                    else
                    {
                      v175 = 2;
                    }
                  }

                  if (one-time initialization token for conversationController != -1)
                  {
                    OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
                  }

                  v255 = type metadata accessor for Logger();
                  OUTLINED_FUNCTION_52(v255, static Logger.conversationController);
                  outlined init with copy of RecentCallProviding & RecentsControllable(v315, v330);
                  v256 = v37;
                  v257 = Logger.logObject.getter();
                  v258 = static os_log_type_t.default.getter();

                  if (OUTLINED_FUNCTION_317())
                  {
                    v290 = v258;
                    v259 = OUTLINED_FUNCTION_14_20();
                    *&v309[0] = swift_slowAlloc();
                    *v259 = 136315906;
                    LOBYTE(v317[0]) = 1;
                    v260 = String.init<A>(reflecting:)();
                    OUTLINED_FUNCTION_522(v260, v261);
                    OUTLINED_FUNCTION_173();

                    *(v259 + 4) = v258;
                    *(v259 + 12) = 2080;
                    __swift_project_boxed_opaque_existential_1(v330, v330[3]);
                    v262 = OUTLINED_FUNCTION_56_19();
                    v264 = v263(v262);
                    if (v266)
                    {
                      v267 = 7104878;
                    }

                    else
                    {
                      v317[0] = v264;
                      v317[1] = v265;
                      type metadata accessor for CGSize(0);
                      v267 = String.init<A>(reflecting:)();
                    }

                    __swift_destroy_boxed_opaque_existential_1(v330);
                    v268 = OUTLINED_FUNCTION_4_31();
                    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v268, v269, v270);
                    OUTLINED_FUNCTION_173();

                    *(v259 + 14) = v267;
                    *(v259 + 22) = 2080;
                    v317[0] = *v285;
                    type metadata accessor for CNKDeviceOrientation(0);
                    v271 = String.init<A>(reflecting:)();
                    v273 = v272;
                    v274 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v271, v272, v309);

                    *(v259 + 24) = v274;
                    *(v259 + 32) = 2080;
                    v317[0] = v175;
                    v275 = String.init<A>(reflecting:)();
                    OUTLINED_FUNCTION_522(v275, v276);
                    OUTLINED_FUNCTION_173();

                    *(v259 + 34) = v273;
                    _os_log_impl(&dword_1BBC58000, v257, v290, "[%s] Updating AR based on localVideoAttribute videoAspectRatio: %s, deviceOrientation: %s, videoResolutionOrientation: %s", v259, 0x2Au);
                    swift_arrayDestroy();
                    OUTLINED_FUNCTION_26();
                    OUTLINED_FUNCTION_3_26();

                    v170 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
                  }

                  else
                  {

                    __swift_destroy_boxed_opaque_existential_1(v330);
                  }

                  v277 = v256 + v167[38];
                  v169 = 1;
                  OUTLINED_FUNCTION_3_5(v277, &v307);
                  *v277 = v175;
                  *(v277 + 8) = 0;
                  v296 = 1;
                  v148 = v285;
                }
              }

              ConversationController.videoProviderForResizingLocal.getter(v317);
              v176 = v170[59];
              OUTLINED_FUNCTION_3_0();
              swift_beginAccess();
              v177 = *(v37 + v176);
              v178 = (v37 + v167[38]);
              OUTLINED_FUNCTION_3_0();
              swift_beginAccess();
              if (*(v178 + 8))
              {
                v179 = v148;
              }

              else
              {
                v179 = v178;
              }

              v180 = *v179;
              OUTLINED_FUNCTION_1_186();
              _s15ConversationKit11ParticipantVWOcTm_17(v293, v286);
              Participant.aspectRatio.getter(v326);
              OUTLINED_FUNCTION_0_222();
              _s15ConversationKit11ParticipantVWOhTm_18(v286, v181);
              static AspectRatio.localAspectRatios(with:localOrientation:needsLandscapeCameraOrientation:cachedLocalAspectRatio:localOrientationMatchesReceiver:)(v317, v180, v177, v326, v169, v330);
              OUTLINED_FUNCTION_397_0();
              v182 = LOBYTE(v330[5]);
              if (one-time initialization token for conversationKit != -1)
              {
                OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
              }

              v183 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_52(v183, static Logger.conversationKit);
              v184 = Logger.logObject.getter();
              v185 = static os_log_type_t.default.getter();
              if (OUTLINED_FUNCTION_240(v185))
              {
                OUTLINED_FUNCTION_42();
                v186 = OUTLINED_FUNCTION_21_4();
                *&v309[0] = v186;
                *v169 = 136315138;
                v289 = v182;
                if (v148)
                {
                  v187 = OUTLINED_FUNCTION_12_96();
                  v188 = 0xE300000000000000;
                }

                else
                {
                  *v330 = v11;
                  *&v330[1] = v10;
                  type metadata accessor for CGSize(0);
                  v187 = String.init<A>(reflecting:)();
                  v188 = v189;
                }

                v190 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v187, v188, v309);

                *(v169 + 4) = v190;
                OUTLINED_FUNCTION_25_53();
                _os_log_impl(v191, v192, v193, v194, v169, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v186);
                OUTLINED_FUNCTION_282_2();
                OUTLINED_FUNCTION_26();

                __swift_destroy_boxed_opaque_existential_1(v317);
                v182 = v289;
              }

              else
              {

                __swift_destroy_boxed_opaque_existential_1(v317);
              }

              v195 = 0.0;
              if ((v148 & 1) != 0 || v11 == v10)
              {
                v196 = 1;
                v10 = 0.0;
                v197 = 0.0;
                v198 = 0.0;
              }

              else
              {
                v196 = 0;
                if (v182)
                {
                  v197 = v10;
                }

                else
                {
                  v197 = v12;
                }

                if (v182)
                {
                  v198 = v11;
                }

                else
                {
                  v198 = v13;
                }

                v195 = v11;
              }

              v106 = v313;
              v35 = v296;
              *&v331 = v195;
              *(&v331 + 1) = v10;
              *&v332 = v197;
              *(&v332 + 1) = v198;
              v333 = v196;
              v328[0] = *&v327[7];
              v328[1] = *&v327[23];
              v329 = v327[39];
              if (!static AspectRatio.== infix(_:_:)(&v331, v328))
              {
                OUTLINED_FUNCTION_3_5(v313, &v308);
                *&v313[5] = v331;
                *&v313[7] = v332;
                LOBYTE(v313[9]) = v333;
                v35 = 1;
              }
            }

            OUTLINED_FUNCTION_3_0();
            swift_beginAccess();
            memcpy(v309, v313, 0x4BuLL);
            memcpy(v330, v313, 0x4BuLL);
            outlined init with copy of Participant.VideoInfo(v309, v317);
            outlined destroy of Participant.VideoInfo(v330);
            memcpy(v317, v309, 0x4BuLL);
            goto LABEL_97;
          }

          v10 = v58;
        }

        else
        {
          if (one-time initialization token for conversationController != -1)
          {
            OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
          }

          v124 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v124, static Logger.conversationController);
          v125 = v37;
          v126 = Logger.logObject.getter();
          v127 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v126, v127))
          {
            swift_slowAlloc();
            LODWORD(v285) = v127;
            v294 = *&v58;
            v128 = OUTLINED_FUNCTION_13_80();
            v330[0] = v128;
            **&v58 = 136315394;
            LOBYTE(v317[0]) = *(v125 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode);
            v129 = String.init<A>(reflecting:)();
            v131 = v122;
            v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v130, v330);

            *(*&v58 + 4) = v132;
            *(*&v58 + 12) = 1024;
            v133 = v131 & 1;
            v60 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
            *(*&v58 + 14) = v133;
            OUTLINED_FUNCTION_11_44();
            _os_log_impl(v134, v135, v136, v137, v138, 0x12u);
            __swift_destroy_boxed_opaque_existential_1(v128);
            OUTLINED_FUNCTION_4_4();
            OUTLINED_FUNCTION_27();
          }

          else
          {

            LOBYTE(v133) = v294 & 1;
          }

          OUTLINED_FUNCTION_3_5(v313, &v306);
          BYTE1(v313[2]) = v133;
          if (v59)
          {
            v10 = 1.0;
          }

          else
          {
            v10 = v58;
          }

          v123 = &unk_1BC4BB000;
        }

        v58 = *&v303;
        (*(v305 + 16))(v303, v293 + *(v302 + 20), v304);
        ConversationController.scheduleResetVideoInfo(for:after:)(v303, v139, v140, v141, v142, v143, v144, v145, v278, v279, v280, v281, v282, v283, v285, v286, v287, v291, v292, v293, v294, v297);
        v146 = OUTLINED_FUNCTION_1_5();
        v147(v146);
        goto LABEL_46;
      }
    }

    v108 = OUTLINED_FUNCTION_473();
    v110 = v109;
    __swift_project_boxed_opaque_existential_1(v108, v111);
    v112 = OUTLINED_FUNCTION_2_14();
    v114 = v113(v112);
    v56 = v110;
    if ((v59 & v114) != 0)
    {
      v58 = 0.25;
    }

    v59 &= v114 ^ 1;
    goto LABEL_27;
  }

  v61 = OUTLINED_FUNCTION_473();
  v63 = v62;
  __swift_project_boxed_opaque_existential_1(v61, v64);
  v65 = OUTLINED_FUNCTION_2_14();
  v67 = v66(v65);
  v68 = v316;
  OUTLINED_FUNCTION_529(v315);
  v69 = OUTLINED_FUNCTION_246();
  v295 = v67 & 1;
  v284 = v70(v69, v68) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantV17VideoProviderTypeO_AC0fgH0_ptGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantV17VideoProviderTypeO_AC0fgH0_ptGMR);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1BC4BA940;
  *(v71 + 32) = 2;
  v72 = v315[3];
  v73 = v316;
  v74 = OUTLINED_FUNCTION_473();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  *(v71 + 64) = v72;
  *(v71 + 72) = v73;
  __swift_allocate_boxed_opaque_existential_1((v71 + 40));
  OUTLINED_FUNCTION_2_3();
  (*(v76 + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd, &_s15ConversationKit24ParticipantVideoProvider_pMR);
  lazy protocol witness table accessor for type Participant.VideoProviderType and conformance Participant.VideoProviderType();
  v286 = Dictionary.init(dictionaryLiteral:)();
  v77 = *(v63 + 720);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v285 = *(v37 + v77);
  ConversationController.videoProviderForResizingLocal.getter(v309);
  LOBYTE(v72) = ConversationController.isOneToOneModeEnabled.getter();
  v78 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v79 = *(v37 + v78);
  v80 = *(v37 + v77);
  OUTLINED_FUNCTION_1_186();
  _s15ConversationKit11ParticipantVWOcTm_17(v50, v287);
  Participant.aspectRatio.getter(v327);
  OUTLINED_FUNCTION_0_222();
  _s15ConversationKit11ParticipantVWOhTm_18(v287, v81);
  if (v72)
  {
    static AspectRatio.localAspectRatios(with:localOrientation:needsLandscapeCameraOrientation:cachedLocalAspectRatio:localOrientationMatchesReceiver:)(v309, v80, v79, v327, 0, v330);
    OUTLINED_FUNCTION_397_0();
    v82 = LOBYTE(v330[5]);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
    }

    v83 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v83, static Logger.conversationKit);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v84, v85))
    {
      OUTLINED_FUNCTION_42();
      v86 = OUTLINED_FUNCTION_13_80();
      v317[0] = v86;
      *v82 = 136315138;
      if (v77)
      {
        v87 = OUTLINED_FUNCTION_12_96();
        v88 = 0xE300000000000000;
      }

      else
      {
        *v330 = v11;
        *&v330[1] = v10;
        type metadata accessor for CGSize(0);
        v87 = String.init<A>(reflecting:)();
        v88 = v199;
      }

      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, v317);
      OUTLINED_FUNCTION_479();

      *(v82 + 4) = v63;
      OUTLINED_FUNCTION_11_44();
      _os_log_impl(v200, v201, v202, v203, v204, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v86);
      OUTLINED_FUNCTION_282_2();
      OUTLINED_FUNCTION_18();

      __swift_destroy_boxed_opaque_existential_1(v309);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v309);
    }

    v107 = 0;
    if ((v77 & 1) == 0 && v11 != v10)
    {
      v106 = 0;
      if (v82)
      {
        v12 = v10;
        v13 = v11;
      }

      v107 = *&v11;
      goto LABEL_96;
    }

    v106 = 1;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v309);
    v106 = 1;
    v107 = 0;
  }

  v10 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
LABEL_96:
  v205 = ConversationController.isCameraMixedWithScreen.getter();
  LOBYTE(v330[0]) = v106;
  v317[0] = v286;
  LOBYTE(v317[1]) = v295;
  *(&v317[1] + 1) = 0;
  BYTE5(v317[1]) = v284;
  *(&v317[1] + 6) = 0;
  v317[3] = v285;
  LOBYTE(v317[4]) = BYTE1(a1);
  v317[5] = v107;
  *&v317[6] = v10;
  *&v317[7] = v12;
  *&v317[8] = v13;
  LOBYTE(v317[9]) = v106;
  *(&v317[9] + 1) = v205 & 1;
  v35 = 1;
LABEL_97:
  if (one-time initialization token for conversationController != -1)
  {
    OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
  }

  v206 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v206, static Logger.conversationController);
  outlined init with copy of RecentCallProviding & RecentsControllable(v315, v314);
  v207 = v37;
  outlined init with copy of Participant.VideoInfo(v317, v313);
  v208 = Logger.logObject.getter();
  v209 = static os_log_type_t.default.getter();

  outlined destroy of Participant.VideoInfo(v317);
  if (os_log_type_enabled(v208, v209))
  {
    v210 = OUTLINED_FUNCTION_23();
    *&v309[0] = OUTLINED_FUNCTION_13_31();
    *v210 = 136315650;
    LOBYTE(v313[0]) = *(v207 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode);
    v211 = String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_522(v211, v212);
    OUTLINED_FUNCTION_173();

    *(v210 + 4) = v106;
    *(v210 + 12) = 2080;
    memcpy(v313, v317, 0x4BuLL);
    outlined init with copy of Participant.VideoInfo(v317, v330);
    v213 = String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_522(v213, v214);
    OUTLINED_FUNCTION_173();

    *(v210 + 14) = v106;
    *(v210 + 22) = 2080;
    v215 = v314[4];
    __swift_project_boxed_opaque_existential_1(v314, v314[3]);
    v216 = OUTLINED_FUNCTION_6_4();
    LOBYTE(v313[0]) = v217(v216, v215) & 1;
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_18_8();
    __swift_destroy_boxed_opaque_existential_1(v314);
    v218 = OUTLINED_FUNCTION_15_14();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v218, v219, v220);
    OUTLINED_FUNCTION_6_4();

    *(v210 + 24) = v209;
    v37 = v301;
    _os_log_impl(&dword_1BBC58000, v208, v209, "[%s] Updating local participant to use videoInfo: %s, isPreviewRunning: %s", v210, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_282_2();
    OUTLINED_FUNCTION_18();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v314);
  }

  OUTLINED_FUNCTION_265_3();
  _s15ConversationKit11ParticipantVWOcTm_17(v293, v8);
  ConversationController.conversationIsAVLess.getter();
  memcpy(v330, v317, 0x4BuLL);
  OUTLINED_FUNCTION_352();
  OUTLINED_FUNCTION_30_20();
  _s15ConversationKit11ParticipantVWOcTm_17(v221, v222);
  Participant.captionInfo.getter();
  OUTLINED_FUNCTION_254();
  _s15ConversationKit11ParticipantVWOhTm_18(v291, type metadata accessor for Participant);
  Participant.copresenceInfo.getter(v309);
  Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
  outlined destroy of CallControlsService?(v309, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
  outlined destroy of Participant.VideoInfo(v317);
  v223 = OUTLINED_FUNCTION_43_0();
  outlined consume of Participant.CaptionInfo?(v223);
  outlined destroy of CallControlsService?(v313, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  v224 = OUTLINED_FUNCTION_45_11();
  v36 = v300;
  _s15ConversationKit11ParticipantVWOhTm_18(v224, v225);
  __swift_destroy_boxed_opaque_existential_1(v315);
  v38 = v305;
  v7 = v292;
LABEL_103:
  v226 = v37 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_12_97();
  v305 = v226;
  v227 = OUTLINED_FUNCTION_139();
  _s15ConversationKit11ParticipantVWOcTm_17(v227, v228);
  OUTLINED_FUNCTION_211();
  static Participant.State.== infix(_:_:)();
  v230 = v229;
  OUTLINED_FUNCTION_86_7();
  _s15ConversationKit11ParticipantVWOhTm_18(v7, v231);
  if (v35 || (v230 & 1) == 0)
  {
    OUTLINED_FUNCTION_30_2(v305, v317);
    OUTLINED_FUNCTION_42_31();
    v300 = v36;
    v234 = OUTLINED_FUNCTION_4_31();
    outlined assign with copy of Participant.State(v234, v235);
    swift_endAccess();
    v301 = v37;
    v170 = ConversationController.visibleParticipants.getter();
    v236 = 0;
    v167 = v170[2];
    v237 = (v38 + 16);
    v37 = (v38 + 8);
    while (1)
    {
      if (v167 == v236)
      {

        v242 = v301;
        goto LABEL_114;
      }

      if (v236 >= v170[2])
      {
        __break(1u);
        goto LABEL_122;
      }

      OUTLINED_FUNCTION_40_3();
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v238, v8);
      (*v237)(v303, v305 + *(v302 + 20), v304);
      v239 = static UUID.== infix(_:_:)();
      (*v37)(v303, v304);
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v8, v240);
      if (v239)
      {
        break;
      }

      v236 = (v236 + 1);
    }

    v242 = v301;
    v243 = v301 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant;
    OUTLINED_FUNCTION_3_0();
    v241 = swift_beginAccess();
    v244 = *v243;
    if (*v243)
    {
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v305, v8);

      v244(v8, v236);
      v245 = OUTLINED_FUNCTION_40_2();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v245, v246);
      OUTLINED_FUNCTION_0_222();
      v241 = _s15ConversationKit11ParticipantVWOhTm_18(v8, v247);
    }

LABEL_114:
    v248 = v242 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant;
    OUTLINED_FUNCTION_300_0(v241, v315);
    v249 = *v248;
    if (*v248)
    {
      v250 = *(v248 + 8);
      swift_endAccess();
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v305, v8);

      v249(v8, a1, v297, v298);
      v251 = OUTLINED_FUNCTION_91_2();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v251, v252);
      OUTLINED_FUNCTION_90_8();
      _s15ConversationKit11ParticipantVWOhTm_18(v8, v253);
      v233 = v36;
      v232 = v250;
      return _s15ConversationKit11ParticipantVWOhTm_18(v233, v232);
    }

    _s15ConversationKit11ParticipantVWOhTm_18(v36, type metadata accessor for Participant);
    return swift_endAccess();
  }

  else
  {
    v232 = type metadata accessor for Participant;
    v233 = v36;
    return _s15ConversationKit11ParticipantVWOhTm_18(v233, v232);
  }
}

uint64_t outlined init with copy of Participant(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

{
  v4 = type metadata accessor for Participant(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_0()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_1(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_2(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_3(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_5(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_20_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_6(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_7()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_8()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_9(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_10(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_11()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_12(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_13(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_24_1();
  v5(v4);
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_14(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_15(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_16()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_17(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_228()
{
}

uint64_t getEnumTagSinglePayload for ScreenSharingSpectatorView(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

void ConversationController.conversationIsAVLess.getter()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_12();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v4);
  ConversationController.lookupActiveConversation()();
  if (v20)
  {
    v15 = v2;
    OUTLINED_FUNCTION_446();
    v5 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(v0 + v5, v18);
    v6 = v18[4];
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v7 = *(v6 + 112);
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_205_0();
    v7();
    swift_unknownObjectRelease();
    if (v17)
    {
      outlined init with take of TapInteractionHandler(&v16, v19);
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_203_4(v21, v21[3]);
      v8 = OUTLINED_FUNCTION_84_9();
      v9(v8);
      OUTLINED_FUNCTION_203_4(v19, v20);
      v10 = OUTLINED_FUNCTION_84_9();
      v11(v10);
      OUTLINED_FUNCTION_1_5();
      static UUID.== infix(_:_:)();
      v12 = *(v15 + 8);
      v13 = OUTLINED_FUNCTION_45_1();
      v12(v13);
      v14 = OUTLINED_FUNCTION_309();
      v12(v14);
      __swift_destroy_boxed_opaque_existential_1(v19);
    }

    else
    {
      outlined destroy of CallControlsService?(&v16, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    outlined destroy of CallControlsService?(v19, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  OUTLINED_FUNCTION_30_0();
}

void ConversationController.lookupActiveConversation()()
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_28_6();
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_2();
  ConversationController.updateConversationUUIDIfNeeded()();
  if (v28[3])
  {
    OUTLINED_FUNCTION_335();
    outlined init with take of TapInteractionHandler(&v29, v4);
  }

  else
  {
    outlined destroy of CallControlsService?(v28, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v0 + v9, v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v10 = OUTLINED_FUNCTION_29_5();
    OUTLINED_FUNCTION_115(v10, v11, v7);
    if (v12)
    {
      outlined destroy of CallControlsService?(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      *v4 = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 32) = 0;
    }

    else
    {
      v13 = OUTLINED_FUNCTION_206();
      v14(v13);
      v15 = (v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      OUTLINED_FUNCTION_103_5(v15);
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_21();
      MEMORY[0x1EEE9AC00](v16);
      OUTLINED_FUNCTION_58_9();
      v17 = OUTLINED_FUNCTION_74_10();
      v18(v17);
      v19 = OUTLINED_FUNCTION_211();
      v21 = v20(v19);
      v22 = OUTLINED_FUNCTION_15_14();
      v24 = v23(v22);
      MEMORY[0x1EEE9AC00](v24);
      OUTLINED_FUNCTION_313();
      *(v25 - 16) = v2;
      specialized Sequence.first(where:)(partial apply for closure #1 in ConversationController.lookupActiveConversation(), v21, v4);

      v26 = OUTLINED_FUNCTION_33_0();
      v27(v26);
    }
  }

  OUTLINED_FUNCTION_30_0();
}

void ConversationController.updateConversationUUIDIfNeeded()()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_139();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_83_1();
  v11 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(&v0[v11], v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = type metadata accessor for UUID();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v12);
  outlined destroy of CallControlsService?(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (EnumTagSinglePayload == 1)
  {
    v101 = v12;
    v102 = v1;
    v14 = v5;
    v15 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(&v3[v15], &v106);
    v17 = v107;
    v16 = v108;
    OUTLINED_FUNCTION_179_2(&v106, v107);
    v18 = &v3[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v19 = *(v18 + 1);
    v20 = *(v16 + 104);
    v21 = swift_unknownObjectRetain();
    v20(&v104, v21, v19, v17, v16);
    swift_unknownObjectRelease();
    if (v105)
    {
      outlined init with take of TapInteractionHandler(&v104, v109);
      __swift_destroy_boxed_opaque_existential_1(&v106);
      v22 = *(v18 + 1);
      swift_getObjectType();
      v23 = *(v22 + 208);
      swift_unknownObjectRetain();
      v24 = OUTLINED_FUNCTION_2_125();
      LODWORD(v22) = v23(v24);
      swift_unknownObjectRelease();
      if (v22 != 6)
      {
        v5 = v14;
        if (one-time initialization token for conversationController != -1)
        {
          OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
        }

        v42 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v42, static Logger.conversationController);
        OUTLINED_FUNCTION_520();
        v43 = v3;
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = OUTLINED_FUNCTION_23();
          v98 = OUTLINED_FUNCTION_13_31();
          OUTLINED_FUNCTION_49_0(v98);
          *v46 = 136315650;
          LOBYTE(v104) = v43[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
          v47 = String.init<A>(reflecting:)();
          v99 = v14;
          v48 = v45;
          v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v103);

          *(v46 + 4) = v50;
          *(v46 + 12) = 2080;
          v51 = v102;
          v52 = OUTLINED_FUNCTION_183_4(&v106, v107);
          v53 = OUTLINED_FUNCTION_28_14();
          v54(v53);
          v55 = OUTLINED_FUNCTION_54_15();
          v58 = OUTLINED_FUNCTION_526(v55, v56, v57);
          specialized >> prefix<A>(_:)(v58, v59, v60, v61, v62, v63, v64, v65, v98, v99, v101, v102, v103[0], v103[1], v103[2], v103[3], v104, *(&v104 + 1));
          OUTLINED_FUNCTION_250();
          outlined destroy of CallControlsService?(v51, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          __swift_destroy_boxed_opaque_existential_1(&v106);
          v66 = OUTLINED_FUNCTION_334();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v68);
          OUTLINED_FUNCTION_239_4();

          *(v46 + 14) = v52;
          *(v46 + 22) = 2080;
          v104 = *v18;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd, &_s15ConversationKit4Call_pMR);
          v69 = String.init<A>(reflecting:)();
          v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v103);

          *(v46 + 24) = v71;
          v72 = v48;
          v5 = v100;
          _os_log_impl(&dword_1BBC58000, v44, v72, "[%s] Update conversationUUID from nil to %s for call: %s", v46, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_3_83();
          OUTLINED_FUNCTION_104_2();
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(&v106);
          OUTLINED_FUNCTION_500();
        }

        OUTLINED_FUNCTION_247_4(v109, v110);
        v73 = OUTLINED_FUNCTION_0_95();
        v74(v73);
        v75 = OUTLINED_FUNCTION_54_15();
        v78 = OUTLINED_FUNCTION_526(v75, v76, v77);
        ConversationController.conversationUUID.setter(v78);
        OUTLINED_FUNCTION_520();
        ConversationController.mostRecentActiveConversation.setter();
        v79 = *&v43[OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController];
        v80 = v111;
        OUTLINED_FUNCTION_529(v109);
        v81 = OUTLINED_FUNCTION_246();
        v83 = v82(v81, v80);
        if (v83)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      v25 = v109;
    }

    else
    {
      outlined destroy of CallControlsService?(&v104, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      v25 = &v106;
    }

    __swift_destroy_boxed_opaque_existential_1(v25);
    v5 = v14;
    ConversationController.joinedOrPreparingConversation()(&v106);
    if (v107)
    {
      outlined init with take of TapInteractionHandler(&v106, v109);
      __swift_project_boxed_opaque_existential_1(v109, v110);
      v26 = OUTLINED_FUNCTION_0_95();
      v28 = v27(v26);
      if (v28)
      {

        if (one-time initialization token for conversationController != -1)
        {
          OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
        }

        v29 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v29, static Logger.conversationController);
        OUTLINED_FUNCTION_520();
        v30 = v3;
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = OUTLINED_FUNCTION_30_1();
          v34 = OUTLINED_FUNCTION_29_7();
          OUTLINED_FUNCTION_49_0(v34);
          *v33 = 136315394;
          LOBYTE(v104) = v30[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
          v35 = String.init<A>(reflecting:)();
          v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v103);

          *(v33 + 4) = v37;
          *(v33 + 12) = 2080;
          outlined init with copy of CallCenterProvider(&v106, &v104);
          specialized >> prefix<A>(_:)(&v104);
          outlined destroy of CallControlsService?(&v104, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
          __swift_destroy_boxed_opaque_existential_1(&v106);
          v38 = OUTLINED_FUNCTION_5_81();
          v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v40);

          *(v33 + 14) = v41;
          _os_log_impl(&dword_1BBC58000, v31, v32, "[%s] Update conversationUUID from nil to joinedOrPreparingConversation: %s", v33, 0x16u);
          OUTLINED_FUNCTION_399_0();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_104_2();
          OUTLINED_FUNCTION_2_2();
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(&v106);
        }

        OUTLINED_FUNCTION_500();
        OUTLINED_FUNCTION_247_4(v109, v110);
        v84 = OUTLINED_FUNCTION_0_95();
        v85(v84);
        v86 = OUTLINED_FUNCTION_54_15();
        v89 = OUTLINED_FUNCTION_526(v86, v87, v88);
        ConversationController.conversationUUID.setter(v89);
        OUTLINED_FUNCTION_520();
        ConversationController.mostRecentActiveConversation.setter();
        v79 = *&v30[OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController];
        v90 = v111;
        OUTLINED_FUNCTION_529(v109);
        v91 = OUTLINED_FUNCTION_246();
        v83 = v92(v91, v90);
        if (v83)
        {
LABEL_24:
          v93 = v83;
          v94 = [v83 handle];

LABEL_26:
          (*((*MEMORY[0x1E69E7D40] & *v79) + 0x140))(v94);
          OUTLINED_FUNCTION_82_0(v109);
          v95 = OUTLINED_FUNCTION_2_14();
          v97 = v96(v95);
          ConversationController.conversationState.setter(v97);
          outlined init with copy of CallCenterProvider(v109, v5);
          __swift_destroy_boxed_opaque_existential_1(v109);
          goto LABEL_27;
        }

LABEL_25:
        v94 = 0;
        goto LABEL_26;
      }

      __swift_destroy_boxed_opaque_existential_1(v109);
    }

    else
    {
      outlined destroy of CallControlsService?(&v106, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    }
  }

  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
LABEL_27:
  OUTLINED_FUNCTION_30_0();
}

uint64_t outlined init with copy of CallCenterProvider(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_2_3();
  (*v3)(a2);
  return a2;
}

double ConversationController.joinedOrPreparingConversation()@<D0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
  swift_beginAccess();
  v3 = v2[3];
  v4 = v2[4];
  v5 = __swift_project_boxed_opaque_existential_1(v2, v3);
  v6 = *(v3 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v60 - v8;
  (*(v6 + 16))(&v60 - v8, v7);
  v10 = (*(v4 + 16))(v3, v4);
  (*(v6 + 8))(v9, v3);
  v11 = 0;
  v12 = *(v10 + 16);
  v13 = v10 + 32;
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v12 == v11)
    {

      v28 = v2[3];
      v27 = v2[4];
      v29 = __swift_project_boxed_opaque_existential_1(v2, v28);
      v60 = &v60;
      v30 = *(v28 - 8);
      v31 = MEMORY[0x1EEE9AC00](v29);
      v33 = &v60 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v30 + 16))(v33, v31);
      v34 = (*(v27 + 16))(v28, v27);
      (*(v30 + 8))(v33, v28);
      v35 = 0;
      v36 = *(v34 + 16);
      v37 = v34 + 32;
      v2 = MEMORY[0x1E69E7CC0];
      while (v36 != v35)
      {
        if (v35 >= *(v34 + 16))
        {
          goto LABEL_32;
        }

        outlined init with copy of CallCenterProvider(v37, &v64);
        v38 = v65;
        v39 = v66;
        __swift_project_boxed_opaque_existential_1(&v64, v65);
        if ((*(v39 + 56))(v38, v39) == 1)
        {
          outlined init with take of TapInteractionHandler(&v64, v62);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v67 = v2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1);
            v2 = v67;
          }

          v42 = v2[2];
          v41 = v2[3];
          if (v42 >= v41 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v41 > 1, v42 + 1, 1);
          }

          v43 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
          v44 = MEMORY[0x1EEE9AC00](v43);
          v46 = &v60 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v47 + 16))(v46, v44);
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v42, v46, &v67);
          __swift_destroy_boxed_opaque_existential_1(v62);
          v2 = v67;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v64);
        }

        v37 += 40;
        ++v35;
      }

      if (*(v14 + 16) == 1)
      {

        specialized Collection.first.getter(v14, v61);
      }

      else
      {
        if (v2[2] != 1)
        {
          if (one-time initialization token for conversationKit != -1)
          {
            goto LABEL_33;
          }

          goto LABEL_30;
        }

        specialized Collection.first.getter(v2, v61);
      }

      return result;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    outlined init with copy of CallCenterProvider(v13, &v64);
    v15 = v65;
    v16 = v66;
    __swift_project_boxed_opaque_existential_1(&v64, v65);
    if ((*(v16 + 56))(v15, v16) == 3 || (v17 = v65, v18 = v66, __swift_project_boxed_opaque_existential_1(&v64, v65), (*(v18 + 56))(v17, v18) == 2))
    {
      outlined init with take of TapInteractionHandler(&v64, v62);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v14;
      if ((v19 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1);
        v14 = v67;
      }

      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
      }

      v22 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
      v23 = MEMORY[0x1EEE9AC00](v22);
      v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v25, v23);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v21, v25, &v67);
      __swift_destroy_boxed_opaque_existential_1(v62);
      v14 = v67;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v64);
    }

    v13 += 40;
    ++v11;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  swift_once();
LABEL_30:
  v49 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1BC4BAA20;
  *&v64 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit0A0_pGMd, _sSay15ConversationKit0A0_pGMR);
  v51 = String.init<A>(reflecting:)();
  v53 = v52;
  v54 = MEMORY[0x1E69E6158];
  *(v50 + 56) = MEMORY[0x1E69E6158];
  v55 = lazy protocol witness table accessor for type String and conformance String();
  *(v50 + 64) = v55;
  *(v50 + 32) = v51;
  *(v50 + 40) = v53;
  *&v64 = v2;
  v56 = String.init<A>(reflecting:)();
  *(v50 + 96) = v54;
  *(v50 + 104) = v55;
  *(v50 + 72) = v56;
  *(v50 + 80) = v57;
  v58 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Needs to be only 1 joined OR preparing conversation. joinedConversations: %@, preparingConversations: %@", 104, 2, &dword_1BBC58000, v49, v58, v50);

  v59 = v61;
  *(v61 + 32) = 0;
  result = 0.0;
  *v59 = 0u;
  v59[1] = 0u;
  return result;
}

uint64_t CallCenter.activeConversations.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter) conversationManager];
  v2 = [v1 activeConversations];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
  OUTLINED_FUNCTION_1_65();
  lazy protocol witness table accessor for type TUCall and conformance TUCall(v3, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20, v4);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized _copyCollectionToContiguousArray<A>(_:)(v5);

  specialized _arrayForceCast<A, B>(_:)();
  v7 = v6;

  return v7;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo14TUConversationC_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo14TUConversationC_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo14TUConversationC_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    outlined consume of Set<TUHandle>.Iterator._Variant(v8);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

void specialized _arrayForceCast<A, B>(_:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_78_3();
  if (v2)
  {
    v1 = OUTLINED_FUNCTION_54_10();
  }

  else
  {
    OUTLINED_FUNCTION_83_5();
  }

  if (!v1)
  {
LABEL_14:
    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v21[5] = MEMORY[0x1E69E7CC0];
  v3 = OUTLINED_FUNCTION_81_1();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v3, v4, v5);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_95_2();
      }

      else
      {
        v7 = OUTLINED_FUNCTION_112_5();
      }

      v8 = v7;
      v9 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
      v10 = OUTLINED_FUNCTION_79_5(v9);
      if (v12)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v8 + 1, 1);
        v13 = v21[3];
      }

      else
      {
        v13 = v10;
      }

      ++v6;
      __swift_mutable_project_boxed_opaque_existential_1(v21, v13);
      OUTLINED_FUNCTION_65_6();
      MEMORY[0x1EEE9AC00](v14);
      OUTLINED_FUNCTION_8();
      v16 = OUTLINED_FUNCTION_77_6(v15);
      v17(v16);
      v18 = OUTLINED_FUNCTION_76_4();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v18, v19, v20);
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    while (v1 != v6);
    goto LABEL_14;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_78_3();
  if (v2)
  {
    v1 = OUTLINED_FUNCTION_54_10();
  }

  else
  {
    OUTLINED_FUNCTION_83_5();
  }

  if (!v1)
  {
LABEL_14:
    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v23[5] = MEMORY[0x1E69E7CC0];
  v3 = OUTLINED_FUNCTION_81_1();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v3, v4, v5);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_95_2();
      }

      else
      {
        v7 = OUTLINED_FUNCTION_112_5();
      }

      v8 = v7;
      v9 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
      v10 = OUTLINED_FUNCTION_79_5(v9);
      if (v12)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v8 + 1, 1);
        v13 = v23[3];
      }

      else
      {
        v13 = v10;
      }

      ++v6;
      __swift_mutable_project_boxed_opaque_existential_1(v23, v13);
      OUTLINED_FUNCTION_65_6();
      MEMORY[0x1EEE9AC00](v14);
      OUTLINED_FUNCTION_8();
      v16 = OUTLINED_FUNCTION_77_6(v15);
      v17(v16);
      v18 = OUTLINED_FUNCTION_76_4();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v18, v19, v20, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(v23);
    }

    while (v1 != v6);
    goto LABEL_14;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = type metadata accessor for Collaboration(0);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = *(v1 + 16);
  if (v9)
  {
    v10 = OUTLINED_FUNCTION_70_3();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v10, v9, 0);
    v11 = v23;
    OUTLINED_FUNCTION_40_3();
    v13 = v1 + v12;
    v14 = *(v4 + 72);
    do
    {
      v15 = OUTLINED_FUNCTION_206();
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v15, v16);
      v23 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1);
        v11 = v23;
      }

      v21 = v2;
      v22 = &protocol witness table for Collaboration;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v8, boxed_opaque_existential_1);
      *(v11 + 16) = v18 + 1;
      outlined init with take of TapInteractionHandler(&v20, v11 + 40 * v18 + 32);
      _s15ConversationKit0A14ControlsActionOWOhTm_1();
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = type metadata accessor for Handle();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20LiveCommunicationKit6HandleVSgMd, &_s20LiveCommunicationKit6HandleVSgMR);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = *(v1 + 16);
  if (v14)
  {
    v15 = OUTLINED_FUNCTION_70_3();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15, v14, 0);
    v16 = v26;
    OUTLINED_FUNCTION_40_3();
    v18 = v1 + v17;
    v23 = *(v4 + 72);
    v24 = v19;
    do
    {
      v24(v8, v18, v2);
      swift_dynamicCast();
      v26 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v16 = v26;
      }

      *(v16 + 16) = v21 + 1;
      OUTLINED_FUNCTION_40_3();
      outlined init with take of Handle?(v13, v16 + v22 + *(v10 + 72) * v21);
      v18 += v23;
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  v24 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v14 = *(v6 + 16);
  if (v14)
  {
    v15 = OUTLINED_FUNCTION_70_3();
    v23 = v4;
    v4(v15, v14, 0);
    v16 = v26;
    OUTLINED_FUNCTION_40_3();
    v18 = v6 + v17;
    v19 = *(v9 + 72);
    do
    {
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v18, v13);
      v26 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        v23(v20 > 1, v21 + 1, 1);
        v16 = v26;
      }

      v25[3] = v7;
      v25[4] = v2;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v13, boxed_opaque_existential_1);
      *(v16 + 16) = v21 + 1;
      v24(v25, v16 + 40 * v21 + 32);
      _s15ConversationKit0A14ControlsActionOWOhTm_1();
      v18 += v19;
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_30_0();
}

void OUTLINED_FUNCTION_78_2()
{

  Participant.name(_:)();
}

uint64_t OUTLINED_FUNCTION_78_5(uint64_t a1)
{

  return MEMORY[0x1EEDC6410](v1, a1, 0);
}

uint64_t OUTLINED_FUNCTION_78_9(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_77_4()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_77_5@<X0>(uint64_t a1@<X8>)
{

  return outlined destroy of CallControlsService?(v1 + a1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_77_7(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return os_log(_:dso:log:_:_:)(v4, a2, v5, a4, 128, 2);
}

uint64_t OUTLINED_FUNCTION_77_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_77_9()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

id OUTLINED_FUNCTION_77_14(void *a1, double a2)
{
  LODWORD(a2) = 1148846080;

  return [a1 setContentCompressionResistancePriority:1 forAxis:a2];
}

uint64_t Participant.copresenceInfo.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_208();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
    v5 = (v1 + *(v4 + 64));
    v14 = *v5;
    v15 = v5[1];
    v12 = v5[2];
    v13 = v5[3];
    outlined destroy of Participant.MediaInfo(v1 + *(v4 + 48));
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    result = (*(v6 + 8))(v1);
    v9 = v12;
    v8 = v13;
    v10 = v14;
    v11 = v15;
  }

  else
  {
    result = _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    v10 = 0uLL;
    v11 = 0uLL;
    v9 = 0uLL;
    v8 = 0uLL;
  }

  *a1 = v10;
  a1[1] = v11;
  a1[2] = v9;
  a1[3] = v8;
  return result;
}

uint64_t outlined init with copy of Participant.State()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_20_3();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantV5StateOWOcTm_0()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t outlined destroy of Participant.State()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantV5StateOWOhTm_0()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantV5StateOWOhTm_1()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_15_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantV5StateOWOhTm_2(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

void Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)()
{
  OUTLINED_FUNCTION_29();
  v201 = v0;
  v189 = v2;
  v186 = v3;
  v177 = v4;
  v178 = v5;
  v7 = v6;
  v9 = v8;
  LODWORD(v183) = v10;
  v182 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4();
  v173 = v14;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_32();
  v172 = v16;
  v17 = OUTLINED_FUNCTION_4_24();
  v184 = type metadata accessor for Participant.CountdownInfo(v17);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_40();
  v180 = v19;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_1();
  v198 = v21;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v192 = v23;
  v193 = v22;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_40();
  v191 = v24;
  v25 = OUTLINED_FUNCTION_4_24();
  v202 = type metadata accessor for Participant(v25);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4();
  v197 = v27;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_32();
  v181 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMR);
  v31 = OUTLINED_FUNCTION_22(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_4();
  v188 = v32;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_32();
  v200 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v36 = OUTLINED_FUNCTION_22(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_4();
  v187 = v37;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_53_17();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateOSgMd, &_s15ConversationKit11ParticipantV5StateOSgMR);
  v40 = OUTLINED_FUNCTION_22(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4();
  v185 = v41;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_32();
  v196 = v43;
  v44 = OUTLINED_FUNCTION_4_24();
  v45 = type metadata accessor for Participant.State(v44);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_4();
  v190 = v47;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v170 - v49;
  v199 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v195 = v51;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_40();
  v194 = v53;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v206 = 0;
  v207 = 0;
  v208 = 0;
  v209 = 1;
  bzero(v210, 0xB1uLL);
  v203[0] = v183;
  v204 = v9;
  *&v54 = OUTLINED_FUNCTION_264_1();
  v211[2] = v54;
  v212[0] = v54;
  *(v212 + 11) = v54;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined destroy of CallControlsService?(v211, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  memcpy(v205, v7, sizeof(v205));
  outlined assign with take of AttributedString?();
  v210[23] = v177;
  v210[24] = v178;
  v55 = v186;
  v210[25] = v186;
  OUTLINED_FUNCTION_0_189();
  v56 = v201;
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  v176 = v45;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v183 = v1;
  if (EnumCaseMultiPayload == 4)
  {
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
    v59 = *(v58 + 48);
    v60 = &v50[*(v58 + 64)];
    v61 = *v60;
    v62 = v60[1];
    v63 = v60[2];
    v174 = v60[3];
    v175 = v61;
    v64 = v60[4];
    v65 = v60[5];
    v66 = v60[6];
    v170 = v60[7];
    v171 = v64;
    OUTLINED_FUNCTION_171_1();
    outlined copy of Participant.CaptionInfo?(v67, v68, v69);
    v70 = v66;
    v71 = v201;
    v72 = outlined consume of Participant.CopresenceInfo?(v175, v62, v63, v174, v171, v65, v70, v170);
    v74 = v194;
    v73 = v195;
    v75 = v199;
    (*(v195 + 32))(v194, v50, v199, v72);
    outlined destroy of Participant.MediaInfo(&v50[v59]);
  }

  else
  {
    OUTLINED_FUNCTION_171_1();
    outlined copy of Participant.CaptionInfo?(v76, v77, v78);
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    v74 = v194;
    Date.init()();
    v75 = v199;
    v73 = v195;
    v71 = v56;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
  OUTLINED_FUNCTION_192_1();
  v79 = v196;
  v81 = (v196 + v80);
  (*(v73 + 16))(v196, v74, v75);
  outlined init with copy of Participant.MediaInfo(v203, v79 + v55);
  v82 = v189;
  v83 = v189[1];
  *v81 = *v189;
  v81[1] = v83;
  v84 = v82[3];
  v81[2] = v82[2];
  v81[3] = v84;
  v85 = v176;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v85);
  v89 = OUTLINED_FUNCTION_36_31();
  v90 = v193;
  __swift_storeEnumTagSinglePayload(v89, v91, v92, v193);
  OUTLINED_FUNCTION_10_0();
  v93 = v179;
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v179);
  v97 = v185;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_22_5(v97);
  v98 = v202;
  if (v99)
  {
    OUTLINED_FUNCTION_0_189();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_22_5(v97);
    v100 = v97;
    v101 = v187;
    if (v99)
    {
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
    }

    else
    {
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      outlined destroy of CallControlsService?(v100, &_s15ConversationKit11ParticipantV5StateOSgMd, &_s15ConversationKit11ParticipantV5StateOSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_148();
    _s15ConversationKit11ParticipantVWObTm_6();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v101 = v187;
  }

  OUTLINED_FUNCTION_62_0();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_115(v101, 1, v90);
  if (v99)
  {
    (*(v192 + 16))(v191, &v71[v98[5]], v90);
    OUTLINED_FUNCTION_115(v101, 1, v90);
    v102 = v188;
    v103 = v93;
    if (!v99)
    {
      outlined destroy of CallControlsService?(v101, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    (*(v192 + 32))(v191, v101, v90);
    v102 = v188;
    v103 = v93;
  }

  v104 = v98[7];
  v105 = &v71[v98[6]];
  LODWORD(v177) = *v105;
  v106 = v105[1];
  v107 = v105[2];
  v108 = v105[3];
  LODWORD(v176) = v105[4];
  v109 = *&v71[v104];
  v110 = *&v71[v104 + 8];
  v111 = *&v71[v104 + 16];
  v188 = *&v71[v104 + 24];
  v189 = v111;
  v112 = *&v71[v104 + 32];
  v113 = v98[9];
  v186 = *&v71[v98[8]];
  v187 = v112;
  v114 = *&v71[v113 + 8];
  v178 = *&v71[v113];
  v185 = v114;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_3_62(v102);
  v174 = v109;
  v175 = v110;
  if (v99)
  {
    OUTLINED_FUNCTION_5_126();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v115, v116, v117, v184);
    v118 = OUTLINED_FUNCTION_90_2();
    v71 = v201;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v118, v119, v103);
    v121 = v110;
    v122 = v102;
    v123 = EnumTagSinglePayload;
    outlined copy of Participant.RemoteIdentifiers?(v109, v121, v189, v188, v187);

    if (v123 != 1)
    {
      outlined destroy of CallControlsService?(v122, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMR);
    }
  }

  else
  {
    outlined init with take of Participant.CountdownInfo?(v102, v198);
    outlined copy of Participant.RemoteIdentifiers?(v109, v110, v189, v188, v187);
  }

  v124 = v98[16];
  LODWORD(v179) = v71[v98[15]];
  v125 = *&v71[v124];
  v126 = v197;
  OUTLINED_FUNCTION_86_6(v98[7]);
  v127 = v98[10];
  v128 = (v126 + v98[9]);
  *(v126 + v127) = 0;
  *(v126 + v202[11]) = MEMORY[0x1E69E7CD0];
  *(v126 + v202[12]) = 0;
  OUTLINED_FUNCTION_2_148();
  _s15ConversationKit11ParticipantVWObTm_6();
  (*(v192 + 32))(v126 + v202[5], v191, v193);
  v129 = (v126 + v202[6]);
  *v129 = v177;
  v129[1] = v106;
  v129[2] = v107;
  v129[3] = v108;
  v129[4] = v176;
  v130 = *(v71 + 4);
  v193 = v125;

  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_123_2();
  outlined consume of Participant.RemoteIdentifiers?(v131, v132, v133, v134, v130);
  v135 = v175;
  *v71 = v174;
  *(v71 + 1) = v135;
  v136 = v188;
  *(v71 + 2) = v189;
  *(v71 + 3) = v136;
  v137 = v186;
  *(v71 + 4) = v187;
  *(v126 + v202[8]) = v137;
  v138 = v185;
  *v128 = v178;
  v128[1] = v138;
  v139 = v202;
  *(v126 + v202[15]) = v179;
  *(v126 + v139[13]) = 0;
  v140 = v198;
  v141 = OUTLINED_FUNCTION_71_12();
  v142 = v184;
  OUTLINED_FUNCTION_32_24(v141, v143);
  if (v99)
  {
    v144 = OUTLINED_FUNCTION_34_32();
    v145 = v199;
    __swift_storeEnumTagSinglePayload(v144, v146, v147, v199);
    v148 = OUTLINED_FUNCTION_33_35();
    __swift_storeEnumTagSinglePayload(v148, v149, v150, v145);
    v151 = v180;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v152, v153, v154, v145);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v155, v156, v157, v145);
    OUTLINED_FUNCTION_289();
    outlined assign with take of AttributedString?();
    OUTLINED_FUNCTION_289();
    outlined assign with take of AttributedString?();
    *(v151 + *(v142 + 24)) = 0;
    OUTLINED_FUNCTION_12_79();
    v158 = v181;
    v159 = v194;
    if (!v99)
    {
      outlined destroy of CallControlsService?(v140, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_153();
    _s15ConversationKit11ParticipantVWObTm_6();
    v158 = v181;
    v159 = v194;
  }

  OUTLINED_FUNCTION_1_153();
  v160 = v197;
  _s15ConversationKit11ParticipantVWObTm_6();
  *(v160 + v139[16]) = v193;
  OUTLINED_FUNCTION_3_138();
  _s15ConversationKit11ParticipantVWObTm_6();
  v161 = v201;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  v163 = (*(v162 + 608))();
  outlined destroy of CallControlsService?(v200, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMR);
  outlined destroy of CallControlsService?(v183, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of CallControlsService?(v196, &_s15ConversationKit11ParticipantV5StateOSgMd, &_s15ConversationKit11ParticipantV5StateOSgMR);
  (*(v195 + 8))(v159, v199);
  if (v163)
  {
    v164 = v139[11];
    v165 = *(v161 + v164);

    *(v158 + v164) = v165;
  }

  v166 = v139[12];
  v167 = *(v161 + v166);
  v168 = *(v158 + v166);
  v169 = v167;

  *(v158 + v166) = v167;
  OUTLINED_FUNCTION_3_138();
  _s15ConversationKit11ParticipantVWObTm_6();
  outlined destroy of Participant.MediaInfo(v203);
  OUTLINED_FUNCTION_30_0();
}

uint64_t getEnumTagSinglePayload for Participant.ScreenInfo(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 209))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for Participant.VideoInfo(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 75))
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

uint64_t outlined copy of Participant.CaptionInfo?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit11ParticipantV10ScreenInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit11ParticipantV11CaptionInfoVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_61_2(uint64_t a1, uint64_t a2)
{
  *(v3 - 144) = v2;

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_61_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_61_4()
{

  return type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
}

uint64_t OUTLINED_FUNCTION_61_5(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);

  return __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
}

uint64_t getEnumTagSinglePayload for InCallViewModelHolder(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

void OUTLINED_FUNCTION_112_3()
{

  JUMPOUT(0x1BFB22010);
}

id OUTLINED_FUNCTION_112_5()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

void *OUTLINED_FUNCTION_112_7(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return memcpy(va, v11, 0xE8uLL);
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t storeEnumTagSinglePayload for IDSCapabilitiesChecker.Capabilities(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

char *closure #4 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v7 = *&v5[v6];
    if (*(v7 + 16) == 1)
    {
      specialized Collection.first.getter(v7, v1);
      type metadata accessor for Participant(0);
      v8 = OUTLINED_FUNCTION_173();
      OUTLINED_FUNCTION_115(v8, 1, v6);
      if (v9)
      {

        outlined destroy of CallControlsService?(v1, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      }

      else
      {
        v10 = *(v1 + *(v6 + 28));
        if (v10)
        {
          v11 = v10;
          OUTLINED_FUNCTION_0_222();
          _s15ConversationKit11ParticipantVWOhTm_18(v1, v12);
          v13 = *(**&v5[OBJC_IVAR____TtC15ConversationKit22ConversationController_idsCapabilitiesChecker] + 224);

          v14 = v13(v11);

          if ((v14 & 0xFE) != 2)
          {
            return (((v14 & 0xFFFFFFFFFFFFuLL) >> 40) & 1);
          }
        }

        else
        {

          OUTLINED_FUNCTION_0_222();
          _s15ConversationKit11ParticipantVWOhTm_18(v1, v15);
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void VideoMessageController.viewStateReadyForVideoMessageRecording.setter(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v4 = *a2;
  OUTLINED_FUNCTION_3_12(a1);
  *(v2 + v4) = v3;
  VideoMessageController.updateState()();
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
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
      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

void @nonobjc TUIDSLookupManager.beginQuery(withDestinations:)()
{
  isa = Set._bridgeToObjectiveC()().super.isa;
  [v0 beginQueryWithDestinations_];
}

id OUTLINED_FUNCTION_111()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

void *OUTLINED_FUNCTION_111_2@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = v1;
  *(v2 + 176) = 15;

  return static Layout.ConversationControls.values.getter((v2 + 240));
}

void OUTLINED_FUNCTION_111_3()
{
}

void OUTLINED_FUNCTION_111_4()
{

  JUMPOUT(0x1BFB20B10);
}

uint64_t OUTLINED_FUNCTION_111_5(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_111_6()
{
}

void OUTLINED_FUNCTION_111_7()
{
  v6 = (v4 + *(v0 + 24));
  *v6 = *(v5 - 284);
  v6[1] = v1;
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = *(v5 - 288);
}

void *OUTLINED_FUNCTION_111_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t __dst, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, &__src, 0xE8uLL);
}

uint64_t OUTLINED_FUNCTION_111_10()
{

  return swift_getObjectType();
}

id OUTLINED_FUNCTION_85_2()
{

  return @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
}

uint64_t OUTLINED_FUNCTION_85_3(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_85_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = 0;
  *v10 = a10;
  return result;
}

uint64_t OUTLINED_FUNCTION_85_9(float a1)
{
  *v1 = a1;

  return _typeName(_:qualified:)();
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionDidCreateNewSession.setter in conformance SingleDisplaySharingSession(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_159_1()
{
  v2 = (*(v0 + 144) + 24);

  os_unfair_lock_lock(v2);
}

uint64_t OUTLINED_FUNCTION_159_2()
{
  *(v2 - 96) = v1;

  return specialized __RawDictionaryStorage.find<A>(_:)(v0);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_188_0(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{

  return UIButton.Configuration.contentInsets.setter();
}

uint64_t OUTLINED_FUNCTION_188_1()
{
  *v0 = 0x4089000000000000;

  return outlined init with copy of ConversationControlsType(v1 - 240, (v0 + 1));
}

uint64_t OUTLINED_FUNCTION_185_0()
{

  return String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
}

uint64_t OUTLINED_FUNCTION_185_1()
{
}

uint64_t OUTLINED_FUNCTION_185_4(uint64_t a1, unint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1((v2 - 296));

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v2 - 320));
}

id CallCenter.conversationManager.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter) conversationManager];

  return v1;
}

void CNKBannerPresentationManager.presentSystemHUD()(void (*a1)(void))
{
  v3 = OBJC_IVAR___CNKBannerPresentationManager_value;
  OUTLINED_FUNCTION_9_67(a1);
  v4 = *(v1 + v3);
  a1();
}

Swift::Void __swiftcall BannerPresentationManager.preloadCallChanges()()
{
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.banners);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_166_3();
    *v1 = 138412290;
    *(v1 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    OUTLINED_FUNCTION_219();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_293();
  v14 = (*(v13 + 472))();
}

void *BannerPresentationManager.presentedBanner.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_presentedBanner;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_29();
  v447 = v25;
  v448 = v24;
  LOBYTE(v454) = v26;
  HIDWORD(v430) = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v452 = v34;
  v464 = a24;
  v462 = a23;
  ObjectType = swift_getObjectType();
  v470 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtMR);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4();
  v474 = v36;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_32();
  v469 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v40 = OUTLINED_FUNCTION_22(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4();
  v468 = v41;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5();
  v473 = v43;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_32();
  v433 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v47 = OUTLINED_FUNCTION_22(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4();
  v428 = v48;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_32();
  v427 = v50;
  v51 = OUTLINED_FUNCTION_4_24();
  v465 = type metadata accessor for Participant.CountdownInfo(v51);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_40();
  v453 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMR);
  OUTLINED_FUNCTION_22(v54);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_1();
  v472 = v56;
  OUTLINED_FUNCTION_4_24();
  v471 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v445 = v57;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_4();
  v458 = v59;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5();
  v457 = v61;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_32();
  v459 = v63;
  v64 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for Participant.State(v64);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_40();
  v456 = v66;
  v67 = OUTLINED_FUNCTION_4_24();
  v475 = type metadata accessor for Participant(v67);
  OUTLINED_FUNCTION_1();
  v432 = v68;
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_4();
  v463 = v70;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_32();
  v446 = v72;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v449 = v74;
  v450 = v73;
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_40();
  v451 = v75;
  OUTLINED_FUNCTION_4_24();
  v460 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_1();
  v442 = v76;
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_40();
  v439 = v78;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_40();
  v437 = v80;
  OUTLINED_FUNCTION_4_24();
  v81 = type metadata accessor for DispatchQoS();
  v82 = OUTLINED_FUNCTION_22(v81);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101_4();
  v495 = type metadata accessor for CallCenter();
  v496 = &protocol witness table for CallCenter;
  v494[0] = v33;
  v493[3] = &type metadata for DefaultParticipantMediaProviderCreator;
  v493[4] = &protocol witness table for DefaultParticipantMediaProviderCreator;
  OUTLINED_FUNCTION_20();
  v493[0] = swift_allocObject();
  outlined init with take of DefaultParticipantMediaProviderCreator(v31, v493[0] + 16);
  v492[3] = &type metadata for DefaultParticipantCaptionsProviderCreator;
  v492[4] = &protocol witness table for DefaultParticipantCaptionsProviderCreator;
  OUTLINED_FUNCTION_24();
  v492[0] = swift_allocObject();
  outlined init with take of DefaultParticipantCaptionsProviderCreator(v29, v492[0] + 16);
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayDisconnectRequiresLocalVideoEnable) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingEndingRequiresLocalVideoEnable) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_showingInMiniWindowRequiresLocalVideoEnable) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioFrequencyController) = 0;
  v434 = OBJC_IVAR____TtC15ConversationKit22ConversationController_audioCallbackQueue;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  static DispatchQoS.unspecified.getter();
  *&v488 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_261_2();
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v83, v84);
  v85 = OUTLINED_FUNCTION_15_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(v85, v86);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v87, v88, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v89 = v437;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v442 + 104))(v439, *MEMORY[0x1E69E8090], v460);
  *(a22 + v434) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didReceiveLatestRemoteAttributes) = 0;
  OUTLINED_FUNCTION_336(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes);
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_lastRegisteredMomentsProvider) = 0;
  v90 = OBJC_IVAR____TtC15ConversationKit22ConversationController_recentPresentationContexts;
  v91 = MEMORY[0x1E69E7CC0];
  *(a22 + v90) = Dictionary.init(dictionaryLiteral:)();
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pauseOnFirstFrame) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_hasPendingStopTransmit) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMR);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
  OUTLINED_FUNCTION_466(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pendingNoticeWaitingForSharePlayTelephonyCallUpdate);
  v96 = OBJC_IVAR____TtC15ConversationKit22ConversationController_scheduledVideoInfoResetDates;
  OUTLINED_FUNCTION_13_83();
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v97, v98);
  *(a22 + v96) = Dictionary.init(dictionaryLiteral:)();
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_ignoreLetMeInRequests) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_rejectedParticipantsCount) = 0;
  v438 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation) = v89;
  v99 = a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation;
  *v99 = 0;
  v99[8] = v89;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didDeferStartCameraAction) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController__captionsRecognizerShouldBeRunning) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneCallCenterUpdateWaitingForNonSquareVideo) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeDisabledByActivity) = 0;
  v100 = OBJC_IVAR____TtC15ConversationKit22ConversationController_featureFlags;
  *(a22 + v100) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldShowLastFrameDuringUPlusOneHandoff) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_waitForModeSwitchDuringUPlusOneHandoff) = 0;
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddVisibleParticipant);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveVisibleParticipant);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveAllVisibleParticipants);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishMigratingConversations);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeActive);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeInactive);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantKickableStatusDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForVisibleParticipant);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipantScreenInfo);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_participantsMediaPrioritiesDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidReact);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidStopReacting);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_participantAudioPowerDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_mutedTalkerDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_audioRouteDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBlurEnabledDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBackgroundReplacementEnabledDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraZoomAvailabiltyDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_localCameraUIDDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraListDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraOrientationUpdateDidGetSnapshot);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingAvailabilityDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingEnabledDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraReactionEffectsEnabledDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraStudioLightEnabledDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayConnectedDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_oneToOneModeDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_isTrackingActiveConversationDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_avModeDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_resolvedAudioVideoModeDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_isWaitingOnFirstRemoteFrameDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_activitiesDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_collaborationNoticePosted);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingRequestsChanged);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_podcastRecordingRequestsChanged);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_audioPausedDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_bluetoothAudioFormatChanged);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_callConversationChanged);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateSensitivityAnalysis);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalMemberAuthorizedToChangeGroupMembership);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipantCameraPosition);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateRecordingLocalVideo);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishWindowResize);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalScreenSharing);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateHasRingingCalls);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateWantsHoldMusic);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForLocalParticipant);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationStateDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationVisibleRemoteParticipantCountDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestStateDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationIgnoreLetMeInRequestsDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationRejectedParticipantsCountDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddPendingParticipant);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemovePendingParticipant);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didApprovePendingParticipant);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateParticipantAVMode);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didInviteOtherParticipants);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraPositionDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_groupNameAndPhotoDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_sessionActionNoticePosted);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_secondaryPillStateChanged);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_willTakeMoment);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldPauseOnFirstLocalVideoFrame);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLinkDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didFailToStartCamera);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_callSharePlayCapabilityDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_greenTea3PCallStatusChanged);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_pttCallStatusDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipantRequestedVideoUpgrade);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateCaptions);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didToggleCaptions);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateIDSCapabilities);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageErrorOccured);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingAvailabilityDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_fetchUISceneOrientation);
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_enableVideoOnJoin) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_expectingNewLocalCameraPositionFirstFrame) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isSplitView) = 0;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v471);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v471);
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callWaitingUUIDs) = v91;
  v107 = MEMORY[0x1E69E7CD0];
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsThatHaveReceivedFirstVideoFrame) = MEMORY[0x1E69E7CD0];
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrame) = v107;
  v108 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrameTasks;
  type metadata accessor for DispatchWorkItem();
  OUTLINED_FUNCTION_393();
  *(a22 + v108) = Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v471);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_localVideoRecordingTransactionID);
  v112 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingSession + a22;
  *v112 = 0u;
  *(v112 + 1) = 0u;
  v429 = v112;
  *(v112 + 4) = 0;
  v113 = OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayObserver;
  static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_24_1();
  v114 = objc_allocWithZone(type metadata accessor for CPCarPlayObserver());
  OUTLINED_FUNCTION_170();
  *(a22 + v113) = CPCarPlayObserver.init(queue:)();
  Date.init()();
  LOBYTE(v116) = a24 - 64;
  isUniquelyReferenced_nonNull_native = *(a24 + 192);
  (isUniquelyReferenced_nonNull_native)(a23, a24);
  specialized Set.count.getter();
  OUTLINED_FUNCTION_173();

  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter) = v113 == 1;
  v461 = a22;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) = v454;
  v117 = OUTLINED_FUNCTION_208();
  v118(v117);
  swift_storeEnumTagMultiPayload();
  UUID.init()();
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_101;
  }

  while (1)
  {
    v443 = isUniquelyReferenced_nonNull_native;
    OUTLINED_FUNCTION_0_1();
    (*(v119 + 592))();
    OUTLINED_FUNCTION_0_1();
    (*(v120 + 168))();
    if (one-time initialization token for default != -1)
    {
      OUTLINED_FUNCTION_289_0(&one-time initialization token for default);
    }

    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v121 = static Colors.ParticipantGradients.default;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v122, v123, v124, v465);
    v125 = v495;
    v126 = v496;
    OUTLINED_FUNCTION_113_5(v494);
    v127 = v126[13];

    v127(&v488, v452, v464, v125, v126);
    if (v490)
    {
      __swift_project_boxed_opaque_existential_1(&v488, v490);
      OUTLINED_FUNCTION_15_14();
      v128 = Conversation.isLocalMemberAuthorizedToChangeGroupMembership()();
      __swift_destroy_boxed_opaque_existential_1(&v488);
    }

    else
    {
      outlined destroy of CallControlsService?(&v488, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      v128 = 0;
    }

    v435 = type metadata accessor for ParticipantContactDetailsCache();
    v440 = specialized static ParticipantContactDetailsCache.cache(for:)();
    OUTLINED_FUNCTION_297_1();
    v129 = (v463 + v475[9]);
    *(v463 + v475[10]) = 0;
    *(v463 + v475[11]) = MEMORY[0x1E69E7CD0];
    *(v463 + v475[12]) = 0;
    OUTLINED_FUNCTION_89_9();
    _s15ConversationKit11ParticipantVWObTm_8(v456, v463);
    v455 = *(v445 + 32);
    v456 = v445 + 32;
    (v455)(v463 + v475[5], v459, v471);
    OUTLINED_FUNCTION_489(v463 + v475[6]);
    OUTLINED_FUNCTION_516(v130);
    OUTLINED_FUNCTION_297_1();
    *(v463 + v475[8]) = v121;
    *v129 = 0;
    v129[1] = 0;
    *(v463 + v475[15]) = v128;
    *(v463 + v475[13]) = 0;
    v131 = OUTLINED_FUNCTION_29_5();
    OUTLINED_FUNCTION_115(v131, v132, v465);
    if (v133)
    {
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v134, v135, v136, v450);
      OUTLINED_FUNCTION_7_7();
      __swift_storeEnumTagSinglePayload(v137, v138, v139, v140);
      v156 = v453;
      OUTLINED_FUNCTION_7_7();
      __swift_storeEnumTagSinglePayload(v141, v142, v143, v144);
      v145 = v465[5];
      OUTLINED_FUNCTION_7_7();
      __swift_storeEnumTagSinglePayload(v146, v147, v148, v149);
      OUTLINED_FUNCTION_455();
      OUTLINED_FUNCTION_123_2();
      outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v150, v151, v152, v153);
      outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v428, v453 + v145, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      *(v453 + v465[6]) = 0;
      v154 = OUTLINED_FUNCTION_29_5();
      OUTLINED_FUNCTION_115(v154, v155, v465);
      isUniquelyReferenced_nonNull_native = v446;
      v157 = v443;
      if (!v133)
      {
        outlined destroy of CallControlsService?(v472, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_24_57();
      v156 = v453;
      _s15ConversationKit11ParticipantVWObTm_8(v472, v453);
      isUniquelyReferenced_nonNull_native = v446;
      v157 = v443;
    }

    v158 = v452;
    v159 = swift_getObjectType();
    v160 = v475;
    OUTLINED_FUNCTION_24_57();
    _s15ConversationKit11ParticipantVWObTm_8(v156, v463 + v161);
    *(v463 + v475[16]) = v440;
    OUTLINED_FUNCTION_43_30();
    _s15ConversationKit11ParticipantVWObTm_8(v463, isUniquelyReferenced_nonNull_native);
    _s15ConversationKit11ParticipantVWObTm_8(isUniquelyReferenced_nonNull_native, v461 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant);
    v162 = v157(v159, v464);
    v163 = specialized Set.count.getter();
    if (v163)
    {
      break;
    }

    v188 = MEMORY[0x1E69E7CC0];
LABEL_42:
    v446 = a21;
    MEMORY[0x1EEE9AC00](v187);
    OUTLINED_FUNCTION_182_5();
    *(v189 - 32) = v451;
    *(v189 - 24) = v494;
    *(v189 - 16) = v452;
    *(v189 - 8) = v464;
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(closure #2 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)partial apply, v190, v188);
    OUTLINED_FUNCTION_439();
    *(v461 + OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants) = v158;
    OUTLINED_FUNCTION_179_2(v494, v495);
    OUTLINED_FUNCTION_97_0();
    v191();
    if (v490)
    {
      OUTLINED_FUNCTION_2_167(&v488);
      v192 = OUTLINED_FUNCTION_0_212();
      v194 = v193(v192);
      MEMORY[0x1EEE9AC00](v194);
      OUTLINED_FUNCTION_182_5();
      *(v195 - 32) = v451;
      *(v195 - 24) = v494;
      *(v195 - 16) = v452;
      *(v195 - 8) = v464;
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(closure #3 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)partial apply, v196, v194);
      OUTLINED_FUNCTION_246();

      __swift_destroy_boxed_opaque_existential_1(&v488);
    }

    else
    {
      outlined destroy of CallControlsService?(&v488, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      v188 = MEMORY[0x1E69E7CC0];
    }

    *(v461 + OBJC_IVAR____TtC15ConversationKit22ConversationController_otherInvitedParticipants) = v188;
    outlined init with copy of CallCenterProvider(v494, v461 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
    v197 = (v461 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
    *v197 = v452;
    v197[1] = v464;
    outlined init with copy of CallCenterProvider(v493, v461 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator);
    outlined init with copy of CallCenterProvider(v492, v461 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantCaptionsProviderCreator);
    *(v461 + OBJC_IVAR____TtC15ConversationKit22ConversationController_includeLocalParticipantInVisibleParticipants) = BYTE4(v430) & 1;
    outlined init with copy of CallCenterProvider(v494, &v488);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v198 = *(v461 + v438);
    v199 = swift_unknownObjectRetain_n();
    v200 = specialized BroadcastingState.init(call:callCenter:deviceOrientation:shouldMaintainCameraPosition:)(v199, &v488, v198, 0, v462, v464);
    v201 = v461 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    *v201 = v200;
    *(v201 + 1) = v202;
    v201[16] = v203;
    *(v461 + OBJC_IVAR____TtC15ConversationKit22ConversationController_idsCapabilitiesChecker) = v447;
    v204 = (v461 + OBJC_IVAR____TtC15ConversationKit22ConversationController_defaults);
    *v204 = a21;
    v204[1] = &protocol witness table for Defaults;
    outlined init with copy of CallCenterProvider(v494, &v488);
    v205 = objc_opt_self();

    v466 = v205;
    v206 = [v205 defaultCenter];
    v207 = OUTLINED_FUNCTION_24_1();
    v208 = objc_allocWithZone(type metadata accessor for VideoMessageController(v207));
    VideoMessageController.init(callCenter:notificationCenter:)();
    *(v461 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController) = v209;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v448, &v484, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMR);
    if (v486)
    {
      outlined init with take of TapInteractionHandler(&v484, &v488);
    }

    else
    {
      v490 = &type metadata for SingleDisplaySharingSession;
      v491 = &protocol witness table for SingleDisplaySharingSession;
      OUTLINED_FUNCTION_194();
      *&v488 = swift_allocObject();
      OUTLINED_FUNCTION_467(v488);
    }

    LOBYTE(v116) = v454;
    OUTLINED_FUNCTION_30_2(v429, &v484);
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(&v488, v429, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMR);
    swift_endAccess();
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v210 = 0;
    if (v201[16] < 0 && v454 == 1)
    {
      OUTLINED_FUNCTION_423_0();
      v211 = OUTLINED_FUNCTION_56_19();
      v213 = v212(v211);
      v210 = [v213 isPreviewRunning];
    }

    *(v461 + OBJC_IVAR____TtC15ConversationKit22ConversationController_keepsPreviewActive) = v210;
    v483.receiver = v461;
    v483.super_class = ObjectType;
    v214 = objc_msgSendSuper2(&v483, sel_init);
    v215 = *&v214[OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayObserver];
    OUTLINED_FUNCTION_259_1();
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v216, v217);
    v218 = v214;
    v219 = v215;
    OUTLINED_FUNCTION_170_0();
    v220 = v219;
    dispatch thunk of CPCarPlayObserver.delegate.setter();

    OUTLINED_FUNCTION_179_2(v494, v495);
    OUTLINED_FUNCTION_97_0();
    v221();
    if (v486)
    {
      outlined init with take of TapInteractionHandler(&v484, &v488);
      v220 = v218;
      ConversationController.updateIdentityClaimingAssociations(in:)();
      __swift_destroy_boxed_opaque_existential_1(&v488);
    }

    else
    {
      outlined destroy of CallControlsService?(&v484, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    }

    OUTLINED_FUNCTION_20();
    v222 = swift_allocObject();
    OUTLINED_FUNCTION_278(v222);
    swift_unknownObjectWeakInit();

    v223 = &v218[OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock];
    OUTLINED_FUNCTION_3_5(&v218[OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock], &v484);
    *v223 = closure #4 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)partial apply;
    v223[1] = v220;

    v224 = OUTLINED_FUNCTION_258_0();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v224, v225);

    if (v454 - 1 <= 1)
    {
      v226 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of CallCenterProvider(&v218[v226], &v488);
      v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit31ParticipantMediaProviderCreator_pMd, &_s15ConversationKit31ParticipantMediaProviderCreator_pMR);
      if (OUTLINED_FUNCTION_518(&v481, &v488, v227))
      {
        v482 = 0;
        outlined init with take of DefaultParticipantMediaProviderCreator(&v481, &v480);
        swift_unknownObjectWeakAssign();
        v490 = &type metadata for DefaultParticipantMediaProviderCreator;
        v491 = &protocol witness table for DefaultParticipantMediaProviderCreator;
        OUTLINED_FUNCTION_20();
        *&v488 = swift_allocObject();
        outlined init with take of DefaultParticipantMediaProviderCreator(&v480, v488 + 16);
        OUTLINED_FUNCTION_30_2(&v218[v226], &v481);
        __swift_destroy_boxed_opaque_existential_1(&v218[v226]);
        outlined init with take of TapInteractionHandler(&v488, &v218[v226]);
        swift_endAccess();
      }

      else
      {
        v481 = 0;
        v482 = 1;
        outlined destroy of CallControlsService?(&v481, &_s15ConversationKit38DefaultParticipantMediaProviderCreatorVSgMd, &_s15ConversationKit38DefaultParticipantMediaProviderCreatorVSgMR);
      }
    }

    v228 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantCaptionsProviderCreator;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(&v218[v228], &v488);
    v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit34ParticipantCaptionsProviderCreator_pMd, &_s15ConversationKit34ParticipantCaptionsProviderCreator_pMR);
    if (OUTLINED_FUNCTION_518(&v480, &v488, v229))
    {
      outlined init with take of DefaultParticipantCaptionsProviderCreator(&v480, v479);
      v479[1] = &protocol witness table for ConversationController;
      swift_unknownObjectWeakAssign();
      v490 = &type metadata for DefaultParticipantCaptionsProviderCreator;
      v491 = &protocol witness table for DefaultParticipantCaptionsProviderCreator;
      OUTLINED_FUNCTION_24();
      *&v488 = swift_allocObject();
      outlined init with take of DefaultParticipantCaptionsProviderCreator(v479, v488 + 16);
      OUTLINED_FUNCTION_30_2(&v218[v228], &v480);
      __swift_destroy_boxed_opaque_existential_1(&v218[v228]);
      outlined init with take of TapInteractionHandler(&v488, &v218[v228]);
      swift_endAccess();
    }

    else
    {
      v480 = xmmword_1BC4BB7D0;
      outlined destroy of CallControlsService?(&v480, &_s15ConversationKit41DefaultParticipantCaptionsProviderCreatorVSgMd, &_s15ConversationKit41DefaultParticipantCaptionsProviderCreatorVSgMR);
    }

    static ParticipantContactDetailsCache.resetAll()();
    v230 = &v218[OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v472 = v230;
    ConversationController.updateLocalParticipant(with:isChangingExternalCameraUsageOnIPad:)(*v230, *(v230 + 1), v230[16], 2);
    ConversationController.lookupActiveConversation()();
    ConversationController.update(with:)();
    outlined destroy of CallControlsService?(&v488, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for shared);
    }

    isUniquelyReferenced_nonNull_native = static Features.shared;
    if (Features.nudityDetectionEnabled.getter())
    {
      static SensitiveContentPolicy.prefetch()();
    }

    v231 = &v218[OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter];
    OUTLINED_FUNCTION_30_2(&v218[OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter], &v488);
    v232 = *(v231 + 4);
    v233 = OUTLINED_FUNCTION_208();
    __swift_mutable_project_boxed_opaque_existential_1(v233, v234);
    v235 = *(v232 + 56);
    v236 = v218;
    OUTLINED_FUNCTION_97_0();
    v235();
    swift_endAccess();
    OUTLINED_FUNCTION_0_1();
    v238 = *(v237 + 176);
    v239 = v236;
    OUTLINED_FUNCTION_173();

    v238(v214, &protocol witness table for ConversationController);

    ConversationController.updateIDSStatusForVideoMessaging()();
    ConversationController.setupScreenSharingSessionCallbacks()();
    (*(v464 + 200))(v462);
    OUTLINED_FUNCTION_413_0();
    ConversationController.updateScreenSharingSession(with:)(v240);

    LOBYTE(v231) = ConversationController.updateIsUsingIPadExternalCamera()();
    v241 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
    OUTLINED_FUNCTION_3_5(&v236[OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera], v479);
    v236[v241] = v231 & 1;
    v156 = [v466 defaultCenter];
    v160 = &off_1E7FE9000;
    OUTLINED_FUNCTION_374_0(v156, sel_addObserver_selector_name_object_, v242, sel_handleLocalVideoPreviewFirstFrameArrived_, *MEMORY[0x1E69D90D8]);

    v243 = OUTLINED_FUNCTION_88_9();
    [v243 v244];
    v245 = OUTLINED_FUNCTION_88_9();
    [v245 v246];
    v247 = OUTLINED_FUNCTION_88_9();
    [v247 v248];
    v249 = OUTLINED_FUNCTION_88_9();
    [v249 v250];
    v251 = OUTLINED_FUNCTION_147_2();
    v453 = v236;
    OUTLINED_FUNCTION_374_0(v251, v252, v253, v254, v255);
    if (v454 == 1)
    {
      v256 = OUTLINED_FUNCTION_147_2();
      OUTLINED_FUNCTION_330_0(v256, v257, v258, v259, v260);
      v261 = OUTLINED_FUNCTION_65_15();
      [v261 v262];
      v263 = OUTLINED_FUNCTION_65_15();
      [v263 v264];
      v265 = OUTLINED_FUNCTION_65_15();
      [v265 v266];
      v267 = OUTLINED_FUNCTION_65_15();
      [v267 v268];
      v269 = OUTLINED_FUNCTION_65_15();
      [v269 v270];
      v271 = OUTLINED_FUNCTION_65_15();
      [v271 v272];
      v273 = OUTLINED_FUNCTION_65_15();
      [v273 v274];
      v275 = OUTLINED_FUNCTION_65_15();
      [v275 v276];
      v277 = OUTLINED_FUNCTION_65_15();
      [v277 v278];
    }

    v279 = OUTLINED_FUNCTION_147_2();
    OUTLINED_FUNCTION_330_0(v279, v280, v281, v282, v283);
    v284 = OUTLINED_FUNCTION_65_15();
    [v284 v285];
    v286 = OUTLINED_FUNCTION_65_15();
    [v286 v287];
    v288 = OUTLINED_FUNCTION_65_15();
    [v288 v289];
    v290 = OUTLINED_FUNCTION_65_15();
    [v290 v291];
    if (!v454)
    {
      v292 = OUTLINED_FUNCTION_147_2();
      [v292 v293];
    }

    v294 = OUTLINED_FUNCTION_147_2();
    OUTLINED_FUNCTION_330_0(v294, v295, v296, v297, v298);
    v299 = OUTLINED_FUNCTION_65_15();
    OUTLINED_FUNCTION_442(v299, v300, v301, v302, v303);
    v304 = OUTLINED_FUNCTION_65_15();
    OUTLINED_FUNCTION_442(v304, v305, v306, v307, v308);
    v309 = OUTLINED_FUNCTION_65_15();
    OUTLINED_FUNCTION_442(v309, v310, v311, v312, v313);
    if (Features.nudityDetectionEnabled.getter())
    {
      OUTLINED_FUNCTION_294_0();
      v316 = MEMORY[0x1BFB209B0](v314 + 48, v315 | 0x8000000000000000);
      v317 = OUTLINED_FUNCTION_147_2();
      [v317 v318];
    }

    v319 = OUTLINED_FUNCTION_147_2();
    OUTLINED_FUNCTION_330_0(v319, v320, v321, v322, v323);
    v324 = OUTLINED_FUNCTION_65_15();
    [v324 v325];
    if (static Platform.current.getter() != 3)
    {
      goto LABEL_74;
    }

    if (one-time initialization token for didEndWindowLiveResizeNotification != -1)
    {
      goto LABEL_103;
    }

LABEL_73:
    v326 = OUTLINED_FUNCTION_147_2();
    OUTLINED_FUNCTION_163_3(v326, v327, v328, v329, v330);
    OUTLINED_FUNCTION_294_0();
    v333 = MEMORY[0x1BFB209B0](v331 + 8, v332 | 0x8000000000000000);
    v334 = OUTLINED_FUNCTION_73_10();
    [v334 v335];

LABEL_74:
    v467 = v116;
    v336 = OUTLINED_FUNCTION_147_2();
    OUTLINED_FUNCTION_163_3(v336, v337, v338, v339, v340);
    v341 = OUTLINED_FUNCTION_73_10();
    [v341 v342];
    v343 = OUTLINED_FUNCTION_73_10();
    [v343 v344];
    v345 = OUTLINED_FUNCTION_73_10();
    [v345 v346];
    v347 = OUTLINED_FUNCTION_73_10();
    [v347 v348];
    v349 = OUTLINED_FUNCTION_73_10();
    [v349 v350];
    v351 = OUTLINED_FUNCTION_73_10();
    [v351 v352];
    v444 = v156;
    OUTLINED_FUNCTION_163_3(v156, v160[464], v353, v354, *MEMORY[0x1E69D8D68]);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v355 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v356 = swift_allocObject();
    *(v356 + 16) = xmmword_1BC4BB990;
    v357 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_452();
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v358, v359, v360, &_s10Foundation4UUIDVSgMR);
    specialized >> prefix<A>(_:)(v433, v361, v362, v363, v364, v365, v366, v367, v426, v427, v428, v429, v430, ObjectType, v432, v433, v435, v438);
    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_172_1();
    outlined destroy of CallControlsService?(v368, v369, v370);
    v371 = MEMORY[0x1E69E6158];
    *(v356 + 56) = MEMORY[0x1E69E6158];
    v372 = lazy protocol witness table accessor for type String and conformance String();
    *(v356 + 64) = v372;
    *(v356 + 32) = v357;
    *(v356 + 40) = isUniquelyReferenced_nonNull_native;
    v373 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    *&v488 = *(v453 + v373);
    type metadata accessor for TUConversationState(0);
    v374 = String.init<A>(reflecting:)();
    *(v356 + 96) = v371;
    *(v356 + 104) = v372;
    *(v356 + 72) = v374;
    *(v356 + 80) = v375;
    v376 = *(v472 + 16);
    v488 = *v472;
    v489 = v376;
    v377 = String.init<A>(reflecting:)();
    *(v356 + 136) = v371;
    *(v356 + 144) = v372;
    *(v356 + 112) = v377;
    *(v356 + 120) = v378;
    LOBYTE(v488) = v467;
    v379 = String.init<A>(reflecting:)();
    *(v356 + 176) = v371;
    *(v356 + 184) = v372;
    v438 = v372;
    *(v356 + 152) = v379;
    *(v356 + 160) = v380;
    v381 = static os_log_type_t.default.getter();
    v441 = v355;
    os_log(_:dso:log:type:_:)("Created ConversationController conversationUUID=%@ state=%@ broadcastingState=%@ mode=%@", 88, 2, &dword_1BBC58000, v355, v381, v356);

    OUTLINED_FUNCTION_37_22();
    v382 = swift_allocObject();
    v472 = 1;
    *(v382 + 16) = xmmword_1BC4BA940;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMR);
    OUTLINED_FUNCTION_472();
    v465 = v383;
    v384 = swift_allocObject();
    *(v384 + 16) = xmmword_1BC4BA940;
    v385 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_1_186();
    _s15ConversationKit11ParticipantVWOcTm_17(v453 + v385, v384 + v373);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    *&v488 = v384;

    specialized Array.append<A>(contentsOf:)(v386);
    v387 = v488;
    v388 = *(v488 + 16);
    if (!v388)
    {

      v389 = MEMORY[0x1E69E7CC0];
LABEL_91:
      *&v488 = v389;
      v417 = OUTLINED_FUNCTION_15_14();
      __swift_instantiateConcreteTypeFromMangledNameV2(v417, v418);
      OUTLINED_FUNCTION_100_6(&lazy protocol witness table cache variable for type [String] and conformance [A]);
      OUTLINED_FUNCTION_469();
      BidirectionalCollection<>.joined(separator:)();
      OUTLINED_FUNCTION_18_8();

      *&v488 = &v488;
      *(&v488 + 1) = &_sSaySSGMR;
      v419 = MEMORY[0x1E69E6158];
      v420 = String.init<A>(reflecting:)();
      *(v382 + 56) = v419;
      *(v382 + 64) = v438;
      *(v382 + 32) = v420;
      *(v382 + 40) = v421;
      v422 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Initial participant identifiers: %@", 35, 2, &dword_1BBC58000, v441, v422, v382);

      ConversationController.fetchExistingScreenSharingAttributes()();
      OUTLINED_FUNCTION_287();
      if (v133)
      {
        OUTLINED_FUNCTION_423_0();
        v423 = OUTLINED_FUNCTION_56_19();
        v425 = v424(v423);
        [v425 startPreview];
        swift_unknownObjectRelease();

        outlined destroy of CallControlsService?(v448, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMR);
      }

      else
      {
        outlined destroy of CallControlsService?(v448, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMR);
        swift_unknownObjectRelease();
      }

      __swift_destroy_boxed_opaque_existential_1(v492);
      __swift_destroy_boxed_opaque_existential_1(v493);
      (*(v449 + 8))(v451, v450);
      __swift_destroy_boxed_opaque_existential_1(v494);
      OUTLINED_FUNCTION_30_0();
      return;
    }

    v436 = v382;
    v478 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v116 = 0;
    v463 = v387;
    v464 = *(v387 + 16);
    v389 = v478;
    v461 = (v445 + 16);
    v462 = v388;
    v454 = (v445 + 8);
    isUniquelyReferenced_nonNull_native = &_s10Foundation4UUIDVSgMR;
    while (v464 != v116)
    {
      if (v116 >= *(v387 + 16))
      {
        goto LABEL_97;
      }

      v390 = *(v470 + 48);
      OUTLINED_FUNCTION_1_186();
      v472 = v391;
      _s15ConversationKit11ParticipantVWOcTm_17(v391, v469 + v390);
      *v474 = v116;
      v392 = v474 + *(v470 + 48);
      OUTLINED_FUNCTION_4_150();
      _s15ConversationKit11ParticipantVWObTm_8(v469 + v390, v392);
      *&v488 = v116;
      v476 = dispatch thunk of CustomStringConvertible.description.getter();
      v477 = v393;
      MEMORY[0x1BFB20B10](979659048, 0xE400000000000000);
      v394 = *v461;
      (*v461)(v473, v392 + v475[5], v471);
      v395 = OUTLINED_FUNCTION_54_15();
      __swift_storeEnumTagSinglePayload(v395, v396, v397, v471);
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v473, v468, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v398 = OUTLINED_FUNCTION_29_5();
      OUTLINED_FUNCTION_115(v398, v399, v471);
      if (v133)
      {
        v400 = OUTLINED_FUNCTION_339();
        outlined destroy of CallControlsService?(v400, v401, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v459 = v478;
        OUTLINED_FUNCTION_172_1();
        v455();
        v394(v458, v457, v471);
        OUTLINED_FUNCTION_316();
        String.init<A>(reflecting:)();
        (*v454)(v457, v471);
      }

      outlined destroy of CallControlsService?(v473, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v402 = OUTLINED_FUNCTION_1_5();
      MEMORY[0x1BFB20B10](v402);

      v403 = OUTLINED_FUNCTION_469();
      MEMORY[0x1BFB20B10](v403);
      v404 = v392 + v475[7];
      v405 = *v404;
      if (*v404)
      {
        v407 = *(v404 + 24);
        v406 = *(v404 + 32);
        v408 = *(v404 + 16);
        v409 = *(v404 + 8);
        *&v488 = v405;
        *(&v488 + 1) = v409;
        v489 = v408 & 1;
        v490 = v407;
        v491 = v406;

        v410 = v405;
        v411 = String.init<A>(reflecting:)();
        v413 = v412;
      }

      else
      {
        v413 = 0xE300000000000000;
        v411 = OUTLINED_FUNCTION_12_96();
      }

      MEMORY[0x1BFB20B10](v411, v413);

      outlined destroy of CallControlsService?(v474, &_sSi6offset_15ConversationKit11ParticipantV7elementtMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtMR);
      v415 = *(v478 + 16);
      v414 = *(v478 + 24);
      if (v415 >= v414 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v414);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      *(v478 + 16) = v415 + 1;
      v416 = v478 + 16 * v415;
      *(v416 + 32) = v476;
      *(v416 + 40) = v477;
      ++v116;
      v387 = v463;
      if (v462 == v116)
      {

        v382 = v436;
        goto LABEL_91;
      }
    }

LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  v158 = v163;
  v487 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  *&v484 = specialized Set.startIndex.getter();
  *(&v484 + 1) = v164;
  v485 = v165 & 1;
  if (v158 < 0)
  {
    __break(1u);
LABEL_103:
    OUTLINED_FUNCTION_288_0(&one-time initialization token for didEndWindowLiveResizeNotification);
    goto LABEL_73;
  }

  v166 = 0;
  v472 = v162 & 0xC000000000000001;
  v167 = v162 & 0xFFFFFFFFFFFFFF8;
  if (v162 < 0)
  {
    v167 = v162;
  }

  v465 = v167;
  v463 = v162 + 56;
  v459 = v162 + 64;
  while (1)
  {
    v168 = __OFADD__(v166++, 1);
    if (v168)
    {
      __break(1u);
      goto LABEL_96;
    }

    v169 = DWORD2(v484);
    v116 = v484;
    isUniquelyReferenced_nonNull_native = v485;
    v170 = OUTLINED_FUNCTION_5_81();
    specialized Set.subscript.getter(v170, v171, isUniquelyReferenced_nonNull_native, v162);
    v173 = v172;
    if (TUNormalizedHandleForTUHandle())
    {
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    OUTLINED_FUNCTION_299();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v174 = &v487;
    specialized ContiguousArray._endMutation()();
    if (v472)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_105;
    }

    if ((v116 & 0x8000000000000000) != 0)
    {
      goto LABEL_98;
    }

    OUTLINED_FUNCTION_484();
    if (v175 == v168)
    {
      goto LABEL_98;
    }

    if (((*(v463 + 8 * (v116 >> 6)) >> v116) & 1) == 0)
    {
      goto LABEL_99;
    }

    if (*(v162 + 36) != v169)
    {
      goto LABEL_100;
    }

    OUTLINED_FUNCTION_482();
    if (v133)
    {
      v178 = v176 << 6;
      v179 = v176 + 1;
      v180 = (v459 + 8 * v176);
      while (v179 < (&v490 + 7) >> 6)
      {
        v181 = *v180++;
        isUniquelyReferenced_nonNull_native = v181;
        v178 += 64;
        ++v179;
        if (v181)
        {
          v182 = OUTLINED_FUNCTION_5_81();
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v182, v183, 0);
          v174 = (__clz(__rbit64(isUniquelyReferenced_nonNull_native)) + v178);
          goto LABEL_38;
        }
      }

      v184 = OUTLINED_FUNCTION_5_81();
      outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v184, v185, 0);
    }

    else
    {
      OUTLINED_FUNCTION_481();
    }

LABEL_38:
    v186 = *(v162 + 36);
    *&v484 = v174;
    *(&v484 + 1) = v186;
    v485 = 0;
LABEL_39:
    if (v166 == v158)
    {

      v187 = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v484, *(&v484 + 1), v485);
      v188 = v487;
      goto LABEL_42;
    }
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    OUTLINED_FUNCTION_5_81();
    if (__CocoaSet.Index.handleBitPattern.getter())
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    }

    else
    {
      isUniquelyReferenced_nonNull_native = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd, &_sSh5IndexVySo8TUHandleC_GMR);
    v177 = Set.Index._asCocoa.modify();
    __CocoaSet.formIndex(after:isUnique:)();
    v177(&v488, 0);
    goto LABEL_39;
  }

  __break(1u);
LABEL_105:
  __break(1u);
}

uint64_t sub_1BBCB08C8()
{
  if (v0[2])
  {
  }

  if (v0[4])
  {
  }

  if (v0[6])
  {
  }

  if (v0[8])
  {
  }

  if (v0[10])
  {
  }

  if (v0[12])
  {
  }

  OUTLINED_FUNCTION_194();

  return swift_deallocObject();
}

uint64_t sub_1BBCB0954()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_124_0()
{

  return _s15ConversationKit11ParticipantV5StateOWOhTm_1();
}

uint64_t @nonobjc TUCall.remoteParticipantHandles.getter()
{
  v1 = [v0 remoteParticipantHandles];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  OUTLINED_FUNCTION_1_65();
  lazy protocol witness table accessor for type TUCall and conformance TUCall(v2, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00, v3);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

void VideoMessageController.updateState()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - v12;
  if ((*(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_ignoresStateUpdates) & 1) == 0)
  {
    v14 = MEMORY[0x1E69E7D40];
    v15 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B8))(v11);
    if (v15)
    {
      v16 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_latestVideoMessageSandboxURL;
      if (*(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_latestVideoMessageSandboxURL) && (v17 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_currentRecordingUUID, swift_beginAccess(), outlined init with copy of (CGFloat, AutoplayCandidate)(v0 + v17, v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR), v18 = type metadata accessor for UUID(), LODWORD(v17) = __swift_getEnumTagSinglePayload(v13, 1, v18), v15 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR), v14 = MEMORY[0x1E69E7D40], v17 == 1))
      {
        v19 = 9;
      }

      else if (*(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_sendingInProgress))
      {
        v19 = 8;
      }

      else if (*(v0 + v16) && (v20 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_currentRecordingUUID, swift_beginAccess(), outlined init with copy of (CGFloat, AutoplayCandidate)(v0 + v20, v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR), v21 = type metadata accessor for UUID(), LODWORD(v20) = __swift_getEnumTagSinglePayload(v9, 1, v21), v15 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR), v20 != 1))
      {
        v19 = 7;
      }

      else
      {
        v22 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_currentRecordingUUID;
        swift_beginAccess();
        outlined init with copy of (CGFloat, AutoplayCandidate)(v0 + v22, v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v23 = type metadata accessor for UUID();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v23);
        v15 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        if (EnumTagSinglePayload == 1 || *(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_hasActiveOrPendingRecordingSession) == 1)
        {
          outlined init with copy of (CGFloat, AutoplayCandidate)(v0 + v22, v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v25 = __swift_getEnumTagSinglePayload(v3, 1, v23);
          v15 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          if (v25 == 1 && (*(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_hasActiveOrPendingRecordingSession) & 1) == 0)
          {
            if (*(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_countdownSink))
            {
              v19 = 4;
            }

            else
            {
              v26 = *((*v14 & *v0) + 0x1A0);
              if ((v26)(v15) & 1) != 0 && (VideoMessageController.callStateReadyForVideoMessageRecording.getter(), (v27) && (v15 = (*((*v14 & *v0) + 0x2F0))(), (v15))
              {
                v19 = 3;
              }

              else
              {
                v15 = v26();
                if (v15 & 1) != 0 && (VideoMessageController.callStateReadyForVideoMessageRecording.getter(), (v15))
                {
                  v19 = 2;
                }

                else
                {
                  v19 = 1;
                }
              }
            }
          }

          else
          {
            v19 = 5;
          }
        }

        else
        {
          v19 = 6;
        }
      }
    }

    else
    {
      v19 = 0;
    }

    v28 = (*((*v14 & *v0) + 0xF0))(v15);
    v29 = VideoMessageController.State.rawValue.getter(v28);
    v31 = v30;
    if (v29 == VideoMessageController.State.rawValue.getter(v19) && v31 == v32)
    {
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v34 & 1) == 0)
      {
        VideoMessageController.state.setter(v19);
      }
    }
  }
}

uint64_t VideoMessageController.isVideoMessagingEnabled.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_isVideoMessagingEnabled;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionDidBegin.setter in conformance SingleDisplaySharingSession(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_142_3@<X0>(int a1@<W8>)
{
  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

void BannerPresentationManager.conversationControlsManager.getter()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_101();
  v10 = BannerPresentationManager.associatedCall.getter();
  v12 = MEMORY[0x1E69E7D40];
  if (v10)
  {
    v13 = v10;
    v14 = v11;
    v310 = v2;
    v312 = v1;
    v15 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager__conversationControlsManager;
    v318 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager__conversationControlsManager;
    v319 = v11;
    v315 = v6;
    if (!*&v0[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager__conversationControlsManager])
    {
      OUTLINED_FUNCTION_129_3();
      if (!v163)
      {
        OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
      }

      v73 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v73, static Logger.banners);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_240(v75))
      {
        v76 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_182_0(v76);
        OUTLINED_FUNCTION_8_10();
        _os_log_impl(v77, v78, v79, v80, v81, 2u);
        OUTLINED_FUNCTION_27();
      }

      goto LABEL_31;
    }

    v308 = v0;
    OUTLINED_FUNCTION_1_57();
    v17 = *(v16 + 672);
    v306 = v18;
    v19 = v17();
    v21 = v20;
    OUTLINED_FUNCTION_129_3();
    if (!v163)
    {
      OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.banners);
    OUTLINED_FUNCTION_28_0();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v316 = v306;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v303 = v4;
    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_30_1();
      v322[0] = OUTLINED_FUNCTION_29_7();
      *v25 = 136315394;
      ObjectType = swift_getObjectType();
      v301 = v21;
      v27 = *(v21 + 56);
      v28 = v27(ObjectType, v21);
      v30 = OUTLINED_FUNCTION_167_1(v28, v29);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      v31 = swift_getObjectType();
      v32 = (*(v319 + 56))(v31, v319);
      v34 = OUTLINED_FUNCTION_167_1(v32, v33);

      *(v25 + 14) = v34;
      v14 = v319;
      _os_log_impl(&dword_1BBC58000, v23, v24, "Found existing manager - current call: %s, new call: %s", v25, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();

      v35 = v21;
    }

    else
    {

      v35 = v21;
      v27 = *(v21 + 56);
    }

    v157 = swift_getObjectType();
    v317 = v19;
    v158 = v27(v157, v35);
    v160 = v159;
    v161 = swift_getObjectType();
    v163 = v158 == (*(v14 + 56))(v161, v14) && v160 == v162;
    if (v163)
    {
    }

    else
    {
      v164 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v164 & 1) == 0)
      {
        v165 = v317;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v166 = v13;
        v167 = Logger.logObject.getter();
        v168 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v299 = v161;
        if (os_log_type_enabled(v167, v168))
        {
          v169 = OUTLINED_FUNCTION_30_1();
          v297 = OUTLINED_FUNCTION_29_7();
          v322[0] = v297;
          *v169 = 136315394;
          v170 = v310;
          HIDWORD(v294) = v168;
          (*(v35 + 64))(v157, v35);
          specialized >> prefix<A>(_:)(v310, v171, v172, v173, v174, v175, v176, v177, v292, v294, v297, v161, v301, v303, v306, v308, v310, v312);
          v179 = v178;
          v181 = v180;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v170, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v182 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v181, v322);

          *(v169 + 4) = v182;
          *(v169 + 12) = 2080;
          v183 = v35;
          v184 = v319;
          (*(v319 + 64))(v161, v319);
          specialized >> prefix<A>(_:)(v170, v185, v186, v187, v188, v189, v190, v191, v293, v295, v298, v300, v302, v304, v307, v309, v311, v314);
          v193 = v192;
          v195 = v194;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v170, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v196 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v193, v195, v322);

          *(v169 + 14) = v196;
          _os_log_impl(&dword_1BBC58000, v167, BYTE4(v294), "Different UUIDs - checking groupUUID. Current: %s, New: %s", v169, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_239();
          v165 = v317;
          OUTLINED_FUNCTION_27();

          v12 = MEMORY[0x1E69E7D40];
          v197 = v303;
        }

        else
        {

          v12 = MEMORY[0x1E69E7D40];
          v197 = v303;
          v183 = v35;
          v184 = v319;
        }

        v3 = v308;
        v13 = v166;
        v14 = v184;
        if (closure #1 in BannerPresentationManager.conversationControlsManager.getter(v165, v183, v166, v184))
        {
          swift_unknownObjectRetain();
          v215 = Logger.logObject.getter();
          v216 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v215, v216))
          {
            v217 = OUTLINED_FUNCTION_42();
            v218 = v166;
            v219 = OUTLINED_FUNCTION_23();
            v322[0] = v219;
            *v217 = 136315138;
            v220 = v310;
            v221 = OUTLINED_FUNCTION_140_5();
            v222(v221);
            specialized >> prefix<A>(_:)(v310, v223, v224, v225, v226, v227, v228, v229, v292, v294, v296, v299, v301, v303, v306, v308, v310, v312);
            v231 = v230;
            v233 = v232;
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v220, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v234 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v231, v233, v322);
            v14 = v319;

            *(v217 + 4) = v234;
            _os_log_impl(&dword_1BBC58000, v215, v216, "Same conversation group %s - updating existing manager instead of creating new one", v217, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v219);
            v13 = v218;
            OUTLINED_FUNCTION_27();
            v197 = v305;
            OUTLINED_FUNCTION_27();
          }

          OUTLINED_FUNCTION_33_6();
          v236 = (*(v235 + 392))();
          if (v236)
          {

            type metadata accessor for PlaceholderCall(0);
            v237 = swift_dynamicCastClass();
            if (v237)
            {
              if (*(v237 + 16) == 1)
              {
                *(v308 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_shouldRequestHUDPresentationOnAVUpgradeOrDowngrade) = 1;
                v238 = Logger.logObject.getter();
                v239 = static os_log_type_t.default.getter();
                if (OUTLINED_FUNCTION_240(v239))
                {
                  v240 = OUTLINED_FUNCTION_33();
                  OUTLINED_FUNCTION_182_0(v240);
                  OUTLINED_FUNCTION_8_10();
                  _os_log_impl(v241, v242, v243, v244, v245, 2u);
                  OUTLINED_FUNCTION_4_4();
                }

                v269 = 1;
              }

              else
              {
                v269 = 0;
              }
            }

            else
            {
              v269 = 0;
            }
          }

          else
          {
            v269 = 0;
          }

          OUTLINED_FUNCTION_1_57();
          (*(v270 + 2720))(v13, v14);
          OUTLINED_FUNCTION_11_23();
          v272 = *((*v12 & v271) + 0x110);
          v273 = v272();
          if (v273)
          {
            v274 = v273;
            v275 = OUTLINED_FUNCTION_140_5();
            v276(v275);
            isa = UUID._bridgeToObjectiveC()().super.isa;
            (*(v315 + 8))(v312, v197);
            [v274 bannerPresentationManagerUpdatedControlsManagerCallUUID_];

            swift_unknownObjectRelease();
          }

          if (v269)
          {
            v278 = Logger.logObject.getter();
            v279 = static os_log_type_t.default.getter();
            if (OUTLINED_FUNCTION_240(v279))
            {
              v280 = OUTLINED_FUNCTION_33();
              OUTLINED_FUNCTION_182_0(v280);
              OUTLINED_FUNCTION_8_10();
              _os_log_impl(v281, v282, v283, v284, v285, 2u);
              OUTLINED_FUNCTION_4_4();
            }

            v286 = v272();
            if (v286)
            {
              v287 = v286;
              v288 = OUTLINED_FUNCTION_140_5();
              v289(v288);
              UUID._bridgeToObjectiveC()();
              v290 = OUTLINED_FUNCTION_158_3();
              v291(v290);
              [v287 bannerPresentationManagerBannerPresentationManagerAVUpgradedCallUUID_];

              swift_unknownObjectRelease();
            }
          }

          BannerPresentationManager.setupMoreMenu(with:_:)(v13, v14, v306);
          swift_unknownObjectRelease();
          goto LABEL_107;
        }

        v246 = Logger.logObject.getter();
        v247 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_240(v247))
        {
          v248 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_182_0(v248);
          OUTLINED_FUNCTION_8_10();
          _os_log_impl(v249, v250, v251, v252, v253, 2u);
          OUTLINED_FUNCTION_4_4();
        }

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_91_0();

        v15 = v318;
LABEL_31:
        if (*&v3[v15])
        {
          OUTLINED_FUNCTION_89_7();
          v83 = *(v82 + 2112);
          v85 = v84;
          if (v83())
          {
            [v85 dismissConfirmLeavePTTChannelAlert];
          }
        }

        v86 = [*&v3[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_callCenter] pendingUpgradeCall];
        if (!v86)
        {
          OUTLINED_FUNCTION_129_3();
          if (!v163)
          {
            OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
          }

          v87 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v87, static Logger.banners);
          v88 = Logger.logObject.getter();
          v89 = static os_log_type_t.default.getter();
          if (OUTLINED_FUNCTION_240(v89))
          {
            v90 = OUTLINED_FUNCTION_33();
            OUTLINED_FUNCTION_182_0(v90);
            OUTLINED_FUNCTION_8_10();
            _os_log_impl(v91, v92, v93, v94, v95, 2u);
            OUTLINED_FUNCTION_27();
          }

          OUTLINED_FUNCTION_11();
          v86 = MEMORY[0x1BFB209B0](0xD00000000000003ELL);
          [v3 dismissPresentedBannerForReason:v86 animated:1];
        }

        OUTLINED_FUNCTION_129_3();
        if (!v163)
        {
          OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
        }

        v96 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v96, static Logger.banners);
        swift_unknownObjectRetain();
        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = OUTLINED_FUNCTION_42();
          v100 = OUTLINED_FUNCTION_23();
          v322[0] = v100;
          *v99 = 136315138;
          swift_getObjectType();
          v321[0] = v13;
          swift_unknownObjectRetain();
          v101 = String.init<A>(describing:)();
          v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, v322);
          v14 = v319;

          *(v99 + 4) = v103;
          OUTLINED_FUNCTION_8_10();
          _os_log_impl(v104, v105, v106, v107, v108, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v100);
          OUTLINED_FUNCTION_2_2();
          v15 = v318;
          OUTLINED_FUNCTION_27();
        }

        v109 = *&v3[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_placeholderCallCenter];
        v110 = objc_opt_self();
        swift_unknownObjectRetain();
        v111 = v109;
        v112 = [v110 sharedInstance];
        OUTLINED_FUNCTION_24_1();
        v113 = objc_allocWithZone(type metadata accessor for CallCenter());
        v114 = CallCenter.init(callCenter:placeholderCallCenter:shouldRegisterForMediaControllerChanges:shouldRegisterForReactionsControllerChanges:)(v110, v111, 0, 1);
        v115 = _s15ConversationKit0A15ControlsManagerC10activeCall10callCenterAcA0F0_p_AA0fH8Provider_ptcfCTf4nen_nAA0fH0C_Tt1g5(v13, v14, v114);
        OUTLINED_FUNCTION_4_120();
        v117 = *((*v12 & v116) + 0x4C0);
        v118 = swift_unknownObjectRetain();
        v117(v118, &protocol witness table for BannerPresentationManager);
        OUTLINED_FUNCTION_174_0();
        v120 = *((*v12 & v119) + 0x4A8);
        v121 = swift_unknownObjectRetain();
        v120(v121, &protocol witness table for BannerPresentationManager);
        OUTLINED_FUNCTION_11_23();
        (*((*v12 & v122) + 0x128))();
        OUTLINED_FUNCTION_174_0();
        (*((*v12 & v123) + 0x520))();
        OUTLINED_FUNCTION_11_23();
        (*((*v12 & v124) + 0x140))();
        OUTLINED_FUNCTION_174_0();
        (*((*v12 & v125) + 0x4F0))();
        OUTLINED_FUNCTION_174_0();
        v127 = *((*v12 & v126) + 0x550);
        v128 = swift_unknownObjectRetain();
        v127(v128, &protocol witness table for BannerPresentationManager);
        v129 = *&v3[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_gameControllerManager];
        v130 = *((*v12 & *v115) + 0x348);
        v131 = v129;
        v130(v129);
        if (*&v3[v15])
        {
          OUTLINED_FUNCTION_89_7();
          v133 = *(v132 + 1216);
          v135 = v134;
          v136 = OUTLINED_FUNCTION_24_1();
          v133(v136, 0);

          if (*&v3[v15])
          {
            OUTLINED_FUNCTION_89_7();
            v138 = *(v137 + 1192);
            v140 = v139;
            v141 = OUTLINED_FUNCTION_24_1();
            v138(v141, 0);
          }
        }

        v142 = v115;
        BannerPresentationManager._conversationControlsManager.setter(v115);
        OUTLINED_FUNCTION_11_23();
        if ((*((*v12 & v143) + 0x200))())
        {
          OUTLINED_FUNCTION_82_11();
          OUTLINED_FUNCTION_3_52();
          (*(v144 + 448))(v142);
        }

        OUTLINED_FUNCTION_1_57();
        v145 += 84;
        v146 = *v145;
        v147 = (*v145)();
        ConversationControlsManager.controlsHUDUpdate(for:)(v147, v148, v149, v150, v151, v152, v153, v154, v292, v294, v296, v299, v301, v303, v306, v308, v310, v312, v315, v316);
        swift_unknownObjectRelease();
        outlined init with copy of ConversationControlsType(v322, v321);
        OUTLINED_FUNCTION_11_23();
        v156 = (*((*v12 & v155) + 0x1E8))();
        if (v156)
        {
        }

        else if (ConversationControlsType.isFirstOrThirdPartyIncomingCall.getter())
        {
          v205 = swift_getObjectType();
          if (((*(v319 + 136))(v205) & 1) == 0 && !Features.shouldShowFullScreenCallWaiting.getter() && (Features.isIncomingCallBannerEnabled.getter() & 1) != 0 && (SBUIIsSystemApertureEnabled() & 1) == 0)
          {
            OUTLINED_FUNCTION_3_0();
            BannerPresentationManager.presentBanner(as:type:reply:)();
            goto LABEL_71;
          }
        }

        BannerPresentationManager.updatePresentedHUD(type:replacingNotice:)();
LABEL_71:
        OUTLINED_FUNCTION_33_6();
        v207 = (*(v206 + 272))();
        if (v207)
        {
          v208 = v207;
          v146();
          v210 = v209;
          v211 = swift_getObjectType();
          (*(v210 + 232))(v211, v210);
          swift_unknownObjectRelease();
          UUID._bridgeToObjectiveC()();
          v212 = OUTLINED_FUNCTION_158_3();
          v213(v212);
          [v208 bannerPresentationManagerUpdatedControlsManagerCallUUID_];

          swift_unknownObjectRelease();
        }

        BannerPresentationManager.setupMoreMenu(with:_:)(v13, v319, v142);
        swift_unknownObjectRelease();

        outlined destroy of ConversationControlsType(v321);
        outlined destroy of ControlsHUDUpdate(v322);
        v214 = *&v3[v318];
        goto LABEL_108;
      }
    }

    v52 = Logger.logObject.getter();
    v198 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_25(v198))
    {
      v199 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v199);
      OUTLINED_FUNCTION_145_5();
      _os_log_impl(v200, v201, v202, v203, v204, 2u);
      OUTLINED_FUNCTION_18();
    }

    swift_unknownObjectRelease();
LABEL_64:
    swift_unknownObjectRelease();

    goto LABEL_108;
  }

  if (SBUIIsSystemApertureEnabled() && *&v0[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager__conversationControlsManager])
  {
    OUTLINED_FUNCTION_1_57();
    v37 = *(v36 + 672);
    v320 = v38;
    v37();
    v40 = v39;
    OUTLINED_FUNCTION_129_3();
    if (!v163)
    {
      OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.banners);
    swift_unknownObjectRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_42();
      v45 = OUTLINED_FUNCTION_23();
      v322[0] = v45;
      *v44 = 136315138;
      swift_getObjectType();
      OUTLINED_FUNCTION_91_10();
      v47 = v46();
      v49 = OUTLINED_FUNCTION_167_1(v47, v48);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_1BBC58000, v42, v43, "Found existing manager with call: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    objc_opt_self();
    v50 = swift_dynamicCastObjCClass();
    if (v50)
    {
      v51 = v50;
      swift_unknownObjectRetain();
      if ([v51 status] == 5 || objc_msgSend(v51, sel_status) == 6)
      {
        swift_unknownObjectRetain();
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease_n();
        if (!os_log_type_enabled(v52, v53))
        {
          goto LABEL_64;
        }

        v54 = OUTLINED_FUNCTION_30_1();
        v322[0] = OUTLINED_FUNCTION_29_7();
        *v54 = 136315394;
        swift_getObjectType();
        OUTLINED_FUNCTION_91_10();
        v56 = v55();
        OUTLINED_FUNCTION_167_1(v56, v57);
        OUTLINED_FUNCTION_212();

        *(v54 + 4) = v40;
        *(v54 + 12) = 2080;
        LODWORD(v321[0]) = [v51 status];
        type metadata accessor for TUCallStatus(0);
        v58 = String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_167_1(v58, v59);
        OUTLINED_FUNCTION_212();

        *(v54 + 14) = v40;
        _os_log_impl(&dword_1BBC58000, v52, v53, "Preserving manager during call transition - existing call %s status: %s", v54, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_27();
LABEL_92:
        OUTLINED_FUNCTION_27();

LABEL_107:
        swift_unknownObjectRelease();
        goto LABEL_108;
      }

      swift_unknownObjectRelease();
    }

    type metadata accessor for PlaceholderCall(0);
    if (swift_dynamicCastClass())
    {
      swift_unknownObjectRetain();
      v52 = Logger.logObject.getter();
      v255 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v52, v255))
      {
        goto LABEL_64;
      }

      v256 = OUTLINED_FUNCTION_42();
      v257 = OUTLINED_FUNCTION_23();
      v322[0] = v257;
      *v256 = 136315138;
      swift_getObjectType();
      OUTLINED_FUNCTION_91_10();
      v259 = v258();
      OUTLINED_FUNCTION_167_1(v259, v260);
      OUTLINED_FUNCTION_212();

      *(v256 + 4) = v40;
      _os_log_impl(&dword_1BBC58000, v52, v255, "Preserving manager for existing PlaceholderCall %s", v256, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v257);
      OUTLINED_FUNCTION_27();
      goto LABEL_92;
    }

    v261 = Logger.logObject.getter();
    v262 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_240(v262))
    {
      v263 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_182_0(v263);
      OUTLINED_FUNCTION_8_10();
      _os_log_impl(v264, v265, v266, v267, v268, 2u);
      OUTLINED_FUNCTION_4_4();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_129_3();
    if (!v163)
    {
      OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
    }

    v60 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v60, static Logger.banners);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v62))
    {
      v63 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v63);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v64, v65, v66, v67, v68, 2u);
      OUTLINED_FUNCTION_18();
    }
  }

  v69 = OUTLINED_FUNCTION_115_5();
  BannerPresentationManager._conversationControlsManager.setter(v69);
  OUTLINED_FUNCTION_33_6();
  v71 = (*(v70 + 272))();
  if (v71)
  {
    [v71 bannerPresentationManagerUpdatedControlsManagerCallUUID_];
    swift_unknownObjectRelease();
  }

  v72 = MEMORY[0x1BFB209B0](0x7669746361206F4ELL, 0xEE006C6C61632065);
  [v3 dismissPresentedBannerForReason:v72 animated:1];

LABEL_108:
  OUTLINED_FUNCTION_30_0();
}

void *BannerPresentationManager.associatedCall.getter()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_1_57();
  v1 += 49;
  v2 = *v1;
  v3 = (*v1)();
  if (v3)
  {
    v4 = v3;
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.banners);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
LABEL_10:
      v14 = OUTLINED_FUNCTION_42();
      v37 = v2;
      v15 = OUTLINED_FUNCTION_23();
      v39 = v15;
      *v14 = 136315138;
      v16 = [v6 callUUID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = String.init<A>(reflecting:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v39);

      *(v14 + 4) = v19;
      OUTLINED_FUNCTION_8_10();
      _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      v2 = v37;
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_4_4();

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_33_6();
  v10 = (*(v9 + 368))();
  if (v10)
  {
    v11 = v10;
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.banners);
    v6 = v11;
    v7 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v13))
    {
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (PlaceholderCallCenter.activeCall.getter())
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178(&one-time initialization token for banners);
    }

    v29 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v29, static Logger.banners);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v38 = v2;
      v32 = OUTLINED_FUNCTION_42();
      v33 = OUTLINED_FUNCTION_23();
      v39 = v33;
      *v32 = 136315138;
      UUID.uuidString.getter();
      v34 = String.init<A>(reflecting:)();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v39);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1BBC58000, v30, v31, "Associated call is a placeholder call %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_27();
      v2 = v38;
      OUTLINED_FUNCTION_27();
    }

    else
    {
    }
  }

LABEL_12:
  if ((Features.callManagerEnabled.getter() & 1) != 0 && (v25 = [*(v0 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_callCenter) resolvedIncomingCall]) != 0 || (v25 = v2()) != 0 || (OUTLINED_FUNCTION_33_6(), (v25 = (*(v26 + 368))()) != 0))
  {
    v27 = v25;
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  }

  else
  {
    v27 = PlaceholderCallCenter.activeCall.getter();
    if (v27)
    {
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type PlaceholderCall and conformance PlaceholderCall, type metadata accessor for PlaceholderCall);
    }
  }

  return v27;
}

BOOL OUTLINED_FUNCTION_158_2()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

Swift::Void __swiftcall BannerPresentationManager.dismissPresentedBanner(forReason:animated:)(Swift::String forReason, Swift::Bool animated)
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_55();
  v5 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_53_1();
  v7 = (*(v6 + 488))();
  if (v7)
  {
    v8 = v7;
    OUTLINED_FUNCTION_20();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v8;
    v10[4] = v4;
    v10[5] = v2;
    v11 = *((*v5 & *v8) + 0x498);

    v12 = v8;
    OUTLINED_FUNCTION_28_0();

    v13 = OUTLINED_FUNCTION_45_1();
    v11(v13);

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
  }
}

uint64_t sub_1BBCB2FA4()
{

  return swift_deallocObject();
}

char *_s15ConversationKit0A15ControlsManagerC10activeCall10callCenterAcA0F0_p_AA0fH8Provider_ptcfCTf4nen_nAA0fH0C_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  swift_unknownObjectWeakInit();
  v36 = 0;
  swift_unknownObjectWeakInit();
  v6 = objc_opt_self();
  swift_unknownObjectRetain();
  v7 = [v6 sharedManager];
  type metadata accessor for IDSCapabilitiesChecker();
  v8 = swift_allocObject();
  v33 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUIDSLookupManager, 0x1E69D8C08);
  v34 = &protocol witness table for TUIDSLookupManager;
  v32[0] = v7;
  type metadata accessor for UUID();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v9 = MEMORY[0x1E69E7CC0];
  v8[2] = Dictionary.init(dictionaryLiteral:)();
  v8[3] = Dictionary.init(dictionaryLiteral:)();
  v8[5] = 0;
  swift_unknownObjectWeakInit();
  v8[6] = v9;
  outlined init with copy of IDSLookupManager(v32, (v8 + 7));
  v10 = [objc_opt_self() defaultCenter];
  [v10 addObserver:v8 selector:sel_handleLookupManagerDidChangeNotification_ name:*MEMORY[0x1E69D8FA0] object:v7];

  __swift_destroy_boxed_opaque_existential_1(v32);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static Defaults.shared;
  v12 = objc_allocWithZone(type metadata accessor for ConversationController(0));
  outlined init with copy of DefaultParticipantMediaProviderCreator(&v37, &v31);
  outlined init with copy of DefaultParticipantCaptionsProviderCreator(&v35, v32);
  ObjectType = swift_getObjectType();
  swift_retain_n();
  specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(a1, a3, &v31, v32, 0, v38, 0, v8, v11, v12, ObjectType, a2, v30, v31, v32[0], v32[1], v32[2], v33, v34, v35, v36, v37, *&v38[0], *(&v38[0] + 1));
  v15 = v14;
  outlined destroy of DefaultParticipantCaptionsProviderCreator(&v35);
  outlined destroy of DefaultParticipantMediaProviderCreator(&v37);
  type metadata accessor for EntitlementsChecker();
  v16 = swift_allocObject();
  v17 = objc_allocWithZone(MEMORY[0x1E69D8BE8]);
  v18 = v15;
  *(v16 + 16) = [v17 init];
  v19 = objc_opt_self();

  v20 = [v19 sharedInstance];
  [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v21 = objc_allocWithZone(type metadata accessor for ConversationControlsManager(0));
  specialized ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:)();
  v23 = v22;

  v24 = objc_allocWithZone(MEMORY[0x1E697B6C8]);
  v25 = v23;
  v26 = [v24 init];
  swift_unknownObjectRelease();

  v27 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_contentExtractor;
  swift_beginAccess();
  v28 = *&v25[v27];
  *&v25[v27] = v26;

  return v25;
}

uint64_t OUTLINED_FUNCTION_345(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_345_0(uint64_t result)
{
  v2[8] = result;
  v2[4] = v1;
  v2[5] = v3;
  return result;
}

id ConversationControlsNoticeCoordinator.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit6Notice_pSgGMd, &_s7Combine9PublishedVy15ConversationKit6Notice_pSgGMR);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = OBJC_IVAR____TtC15ConversationKit37ConversationControlsNoticeCoordinator_conversationManager;
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 conversationManager];

  *&v0[v7] = v9;
  *&v0[OBJC_IVAR____TtC15ConversationKit37ConversationControlsNoticeCoordinator_unblockTimer] = 0;
  v10 = OBJC_IVAR____TtC15ConversationKit37ConversationControlsNoticeCoordinator__activeNotice;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  outlined init with copy of Notice?(v19, v18, &_s15ConversationKit6Notice_pSgMd, &_s15ConversationKit6Notice_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pSgMd, &_s15ConversationKit6Notice_pSgMR);
  Published.init(initialValue:)();
  OUTLINED_FUNCTION_158();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, v12, v13);
  (*(v3 + 32))(&v0[v10], v6, v1);
  *&v0[OBJC_IVAR____TtC15ConversationKit37ConversationControlsNoticeCoordinator____lazy_storage___noticeQueue] = 0;
  v14 = type metadata accessor for ConversationControlsNoticeCoordinator(0);
  v17.receiver = v0;
  v17.super_class = v14;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t outlined init with copy of Notice?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

uint64_t outlined init with copy of (CGFloat, AutoplayCandidate)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_446()
{

  return outlined init with take of TapInteractionHandler((v0 - 168), v0 - 128);
}

void OUTLINED_FUNCTION_341(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_433()
{
}

id OUTLINED_FUNCTION_200(uint64_t a1)
{

  return [v2 (v4 + 2040)];
}

uint64_t OUTLINED_FUNCTION_200_3()
{

  return outlined destroy of CallControlsService?(v2 - 160, v0, v1);
}

uint64_t ConversationControlsJoinCountdownActionController.init()()
{
  *(v0 + 24) = MEMORY[0x1E69E7CD0];
  type metadata accessor for ConversationControlsJoinCountdownActionController.CountdownInfo(0);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  v1 = swift_allocObject();
  v2 = type metadata accessor for Date();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
  v9 = [objc_allocWithZone(MEMORY[0x1E69D8C28]) initWithObject_];

  *(v0 + 16) = v9;
  return v0;
}

uint64_t CallGameController.init()()
{
  v1 = v0;
  v2 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  *(v0 + 16) = 1;
  v9 = MEMORY[0x1E69E7CD0];
  *(v0 + 24) = 0;
  *(v0 + 32) = v9;
  v10 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  v11 = Publisher<>.sink(receiveValue:)();

  (*(v4 + 8))(v8, v2);
  *(v1 + 24) = v11;

  return v1;
}

uint64_t sub_1BBCB3AA8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

void ConversationController.hasMessageCapableRemoteParticipants.getter()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_2();
  ConversationController.remoteAndAssociatedParticipants.getter();
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = 0;
    OUTLINED_FUNCTION_40_3();
    v9 = *(v3 + 28);
    do
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        JUMPOUT(0x1BBCB3DE0);
      }

      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v10, v1);
      v11 = *(v1 + v9);
      if (!v11)
      {
        goto LABEL_27;
      }

      v12 = [v11 value];
      if (!v12)
      {
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = MEMORY[0x1BFB209B0](v13);
      }

      v14 = [v12 destinationIdIsTemporary];

      if (v14)
      {
LABEL_16:
        OUTLINED_FUNCTION_0_222();
        _s15ConversationKit11ParticipantVWOhTm_18(v1, v24);
      }

      else
      {
LABEL_27:
        OUTLINED_FUNCTION_12_97();
        v15 = OUTLINED_FUNCTION_206();
        _s15ConversationKit11ParticipantVWOcTm_17(v15, v16);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 2u:
            type metadata accessor for Date();
            OUTLINED_FUNCTION_15_1();
            (*(v23 + 8))(v0);
            goto LABEL_16;
          case 4u:
            v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
            v26 = *(v25 + 48);
            OUTLINED_FUNCTION_37((v0 + *(v25 + 64)));
            outlined destroy of Participant.MediaInfo(v0 + v26);
            goto LABEL_9;
          case 6u:
            goto LABEL_10;
          default:
LABEL_9:
            type metadata accessor for Date();
            OUTLINED_FUNCTION_15_1();
            (*(v17 + 8))(v0);
LABEL_10:
            v18 = *(v1 + v9);
            if (!v18)
            {

              OUTLINED_FUNCTION_0_222();
              _s15ConversationKit11ParticipantVWOhTm_18(v1, v27);
              goto LABEL_22;
            }

            v19 = [v18 value];
            if (!v19)
            {
              v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v19 = MEMORY[0x1BFB209B0](v20);
            }

            v21 = [v19 destinationIdIsPseudonym];

            OUTLINED_FUNCTION_0_222();
            _s15ConversationKit11ParticipantVWOhTm_18(v1, v22);
            if ((v21 & 1) == 0)
            {
              goto LABEL_14;
            }

            break;
        }
      }

      ++v8;
    }

    while (v7 != v8);
  }

LABEL_14:

LABEL_22:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.remoteAndAssociatedParticipants.getter()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_10();
  v5 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v9 = v6 + v8;
    v10 = *(v3 + 72);

    do
    {
      _s15ConversationKit11ParticipantVWOcTm_17(v9, v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMR);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1BC4BA940;
      _s15ConversationKit11ParticipantVWOcTm_17(v0, v11 + v8);

      specialized Array.append<A>(contentsOf:)(v12);
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v0, v13);
      specialized Array.append<A>(contentsOf:)(v11);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  OUTLINED_FUNCTION_30_0();
}

void specialized Sequence._copySequenceContents(initializing:)()
{
  OUTLINED_FUNCTION_29();
  v40 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_17_1();
  v10 = v9(v8);
  v39 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_4();
  v38 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v33 - v13;
  v14 = v3 + 56;
  v15 = -1 << *(v3 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v3 + 56);
  if (!v7)
  {
    v18 = 0;
LABEL_20:
    *v0 = v3;
    v0[1] = v14;
    v0[2] = ~v15;
    v0[3] = v18;
    v0[4] = v17;
    OUTLINED_FUNCTION_30_0();
    return;
  }

  if (!v5)
  {
    v18 = 0;
    goto LABEL_20;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(v3 + 32);
    v35 = v0;
    OUTLINED_FUNCTION_7_29();
    v22 = (v20 - v21) >> 6;
    v36 = v5;
    v23 = v40;
    while (v19 < v5)
    {
      v24 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_24;
      }

      if (!v17)
      {
        while (1)
        {
          v25 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v25 >= v22)
          {
            v17 = 0;
            v15 = v34;
            v0 = v35;
            goto LABEL_20;
          }

          v17 = *(v14 + 8 * v25);
          ++v18;
          if (v17)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v25 = v18;
LABEL_15:
      v26 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v27 = v3;
      v28 = *(v3 + 48);
      v29 = v38;
      v30 = *(v39 + 72);
      outlined init with copy of RecentsCallItem(v28 + v30 * (v26 | (v25 << 6)), v38, v23);
      v31 = v29;
      v32 = v37;
      outlined init with take of RecentsCallItem(v31, v37, v23);
      outlined init with take of RecentsCallItem(v32, v7, v23);
      v5 = v36;
      if (v24 == v36)
      {
        v18 = v25;
        v15 = v34;
        v0 = v35;
        v3 = v27;
        goto LABEL_20;
      }

      v7 += v30;
      v19 = v24;
      v18 = v25;
      v3 = v27;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_4_18();
  if (!v4)
  {
    v8 = 0;
LABEL_17:
    OUTLINED_FUNCTION_16_20(v8);
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v6 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = v4;
    OUTLINED_FUNCTION_7_29();
    v11 = (v10 - v2) >> 6;
    while (v9 < v6)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v13 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v13 >= v11)
          {
            goto LABEL_17;
          }

          v3 = *(v1 + 8 * v13);
          ++v8;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v13 = v8;
LABEL_12:
      v14 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v15 = *(*(v0 + 56) + ((v13 << 9) | (8 * v14)));
      *v7 = v15;
      if (v12 == v6)
      {
        v17 = v15;
        v8 = v13;
        goto LABEL_17;
      }

      ++v7;
      v16 = v15;
      v9 = v12;
      v8 = v13;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_4_18();
  if (!v4)
  {
    v8 = 0;
LABEL_17:
    OUTLINED_FUNCTION_16_20(v8);
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v6 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = v4;
    OUTLINED_FUNCTION_7_29();
    v11 = (v10 - v2) >> 6;
    while (v9 < v6)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v13 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v13 >= v11)
          {
            goto LABEL_17;
          }

          v3 = *(v1 + 8 * v13);
          ++v8;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v13 = v8;
LABEL_12:
      v14 = (*(v0 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v3)))));
      v15 = v14[1];
      v3 &= v3 - 1;
      *v7 = *v14;
      v7[1] = v15;
      if (v12 == v6)
      {

        v8 = v13;
        goto LABEL_17;
      }

      v7 += 2;

      v9 = v12;
      v8 = v13;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_17_1();
  v9 = v8(v7);
  v10 = *(v9 - 8);
  v43 = v9;
  v44 = v10;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4();
  v42 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v34 - v13;
  v15 = v2 + 56;
  v14 = *(v2 + 56);
  v40 = -1 << *(v2 + 32);
  if (-v40 < 64)
  {
    v16 = ~(-1 << -v40);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!v6)
  {
    v19 = 0;
LABEL_22:
    v33 = ~v40;
    *v0 = v2;
    v0[1] = v15;
    v0[2] = v33;
    v0[3] = v19;
    v0[4] = v17;
    OUTLINED_FUNCTION_30_0();
    return;
  }

  if (!v4)
  {
    v19 = 0;
    goto LABEL_22;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v35 = v0;
    v36 = v2 + 56;
    OUTLINED_FUNCTION_7_29();
    v22 = (v21 - v40) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    v39 = v18;
    while (v20 < v18)
    {
      if (__OFADD__(v20, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v36;
        while (1)
        {
          v23 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v23 >= v22)
          {
            v17 = 0;
            v0 = v35;
            goto LABEL_22;
          }

          v17 = *(v36 + 8 * v23);
          ++v19;
          if (v17)
          {
            v45 = v20 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v45 = v20 + 1;
      v23 = v19;
LABEL_17:
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v25 = v2;
      v26 = *(v2 + 48);
      v28 = v43;
      v27 = v44;
      v29 = *(v44 + 72);
      v30 = v42;
      (*(v44 + 16))(v42, v26 + v29 * (v24 | (v23 << 6)), v43);
      v31 = *(v27 + 32);
      v32 = v41;
      v31(v41, v30, v28);
      v31(v6, v32, v28);
      v18 = v39;
      v20 = v45;
      if (v45 == v39)
      {
        v19 = v23;
        v0 = v35;
        v15 = v36;
        v2 = v25;
        goto LABEL_22;
      }

      v6 += v29;
      v19 = v23;
      v2 = v25;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
}

uint64_t ConversationController.audioRoute.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_54_19();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_26_53(v1, v10);
  v3(v2);
  v4 = OUTLINED_FUNCTION_62_0();
  v6 = v5(v4);
  v7 = OUTLINED_FUNCTION_15_14();
  v8(v7);
  return v6;
}

id CallCenter.audioRoute.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter) routeController];
  v2 = [v1 pickedRoute];

  return v2;
}

void OUTLINED_FUNCTION_216_0()
{
}

uint64_t OUTLINED_FUNCTION_216_1()
{
}

uint64_t OUTLINED_FUNCTION_216_4()
{

  return swift_dynamicCast();
}

uint64_t ConversationController.localVideoSupported.getter()
{
  v3 = v0;
  if (dispatch thunk of CPCarPlayObserver.isCarplaySessionConnected.getter())
  {
    return 0;
  }

  result = [objc_opt_self() supportsDisplayingFaceTimeAudioCalls];
  if (result)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_447();
    OUTLINED_FUNCTION_490();
    v5 = *(v2 + 136);
    swift_unknownObjectRetain();
    v6 = OUTLINED_FUNCTION_33_0();
    v5(v6);
    OUTLINED_FUNCTION_530();
    if (v1)
    {
      return 1;
    }

    else
    {
      v7 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      return *(v3 + v7) == 3;
    }
  }

  return result;
}

id ConduitApprovalDelegate.init(_:)()
{
  OUTLINED_FUNCTION_247();
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_382();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t OUTLINED_FUNCTION_407(uint64_t a1, unsigned __int16 a2)
{
  v3 = a2 | 0xED00006465740000;

  return ConversationControlsManager.invalidateCallWaitingSystemApertureAssertionIfNeeded(reason:)(a1, v3);
}

void ConduitLagunaNoticeManager.init(_:queue:callCenter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_272();
  a18 = v22;
  a19 = v23;
  v25 = v24;
  OUTLINED_FUNCTION_15_25();
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  type metadata accessor for ConduitLagunaNoticeManager.PushBannerInfo(0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  swift_unknownObjectWeakAssign();
  *&v19[OBJC_IVAR____TtC15ConversationKit26ConduitLagunaNoticeManager_queue] = v20;
  *&v19[OBJC_IVAR____TtC15ConversationKit26ConduitLagunaNoticeManager_callCenter] = v25;
  a9.receiver = v19;
  a9.super_class = ObjectType;
  objc_msgSendSuper2(&a9, sel_init);

  OUTLINED_FUNCTION_194_0();
}

void OUTLINED_FUNCTION_191(uint64_t a1@<X8>)
{
  *(v2 - 248) = *(a1 + 3);
  *(v2 - 244) = v1;
  *(v2 - 252) = *(a1 + 4);
}

void *OUTLINED_FUNCTION_191_0(void *a1)
{

  return memcpy(a1, (v2 + v1), 0xE8uLL);
}

uint64_t sub_1BBCB4C44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t ConversationControlsManager.updateShareButtonState()()
{
  v2 = v0;
  v3 = [*(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags) sharePlayInCallsEnabled];
  v4 = MEMORY[0x1E69E7D40];
  if (!v3)
  {
    v12 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
    v1 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if ((*(v12 + v1) & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_160();
    v6 = *(v13 + 672);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_293();
  v5 += 84;
  v6 = *v5;
  (*v5)();
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_236_0();
  v7();
  v8 = OUTLINED_FUNCTION_280_0();
  if (v1 == 1)
  {
    (v6)(v8);
    v9 = OUTLINED_FUNCTION_255();
    (*(v1 + 152))(v9, v1);
    v10 = OUTLINED_FUNCTION_280_0();
LABEL_9:
    (v6)(v10);
    v15 = OUTLINED_FUNCTION_255();
    (*(v1 + 144))(v15, v1);
    OUTLINED_FUNCTION_280_0();
    v16 = v1 ^ 1;
    goto LABEL_11;
  }

  v11 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
  v1 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if ((*(v11 + v1) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
LABEL_8:
    v6();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_311_0();
    v14();
    v10 = OUTLINED_FUNCTION_280_0();
    if (v1)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v16 = 0;
LABEL_11:
  v74 = *(v2 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
  v17 = v74 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v18 = *(v17 + 8);
  ObjectType = swift_getObjectType();
  v20 = *(v18 + 120);
  swift_unknownObjectRetain();
  v21 = OUTLINED_FUNCTION_33_0();
  v20(v21);
  OUTLINED_FUNCTION_212();
  swift_unknownObjectRelease();
  if (v18)
  {
    v75 = v16;
    OUTLINED_FUNCTION_293();
    (*(v22 + 672))();
    OUTLINED_FUNCTION_175_0();
    v23 = swift_getObjectType();
    ObjectType = (*(v18 + 56))(v23, v18);
    v25 = v24;
    swift_unknownObjectRelease();
    v26 = *(v17 + 8);
    v27 = swift_getObjectType();
    v28 = *(v26 + 56);
    swift_unknownObjectRetain();
    v29 = v28(v27, v26);
    v31 = v30;
    swift_unknownObjectRelease();
    if (ObjectType == v29 && v25 == v31)
    {

      v4 = MEMORY[0x1E69E7D40];
      v16 = v75;
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_33_0();
    ObjectType = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = MEMORY[0x1E69E7D40];
    v16 = v75;
    if (ObjectType)
    {
      goto LABEL_23;
    }
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v33 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v33, &static Logger.conversationControls);
  v34 = v2;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_240(v36))
  {
    swift_slowAlloc();
    v77[0] = OUTLINED_FUNCTION_16_8();
    *ObjectType = 67110146;
    *(ObjectType + 4) = v16 & 1;
    v73 = v35;
    *(ObjectType + 8) = 1024;
    v76 = v16;
    v37 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
    OUTLINED_FUNCTION_3_0();
    v38 = swift_beginAccess();
    *(ObjectType + 10) = (*(v74 + v37) & 0xFFFFFFFFFFFFFFFELL) == 2;
    *(ObjectType + 14) = 1024;
    v39 = *((*v4 & *v34) + 0x2A0);
    (v39)(v38);
    OUTLINED_FUNCTION_250();
    v40 = swift_getObjectType();
    LOBYTE(v37) = (*(v37 + 120))(v40, v37);
    swift_unknownObjectRelease();
    *(ObjectType + 16) = v37 & 1;

    *(ObjectType + 20) = 2080;
    v39();
    v41 = OUTLINED_FUNCTION_351();
    v42 = (v34[7])(v41, v34);
    v44 = v43;
    swift_unknownObjectRelease();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v77);

    *(ObjectType + 22) = v45;
    *(ObjectType + 30) = 2080;
    v46 = *(v17 + 8);
    v47 = swift_getObjectType();
    v48 = *(v46 + 56);
    swift_unknownObjectRetain();
    v49 = v48(v47, v46);
    v16 = v76;
    v50 = v49;
    v52 = v51;
    swift_unknownObjectRelease();
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v77);

    *(ObjectType + 32) = v53;
    OUTLINED_FUNCTION_130_1();
    _os_log_impl(v54, v55, v56, v57, v58, 0x28u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

LABEL_23:
  OUTLINED_FUNCTION_160();
  (*(v59 + 1808))();
  v61 = v60;
  v63 = v62;
  if (v16)
  {
    OUTLINED_FUNCTION_160();
    (*(v64 + 672))();
    OUTLINED_FUNCTION_87();
    v65 = swift_getObjectType();
    (*(ObjectType + 352))(v65, ObjectType);
    OUTLINED_FUNCTION_288();
    v66 = swift_unknownObjectRelease();
    v67 = (*((*v4 & *v2) + 0x988))(v66);
    if (v67)
    {
      v68 = v67;
      v69 = [v67 state] == 1;

      v70 = v69 << 8;
    }

    else
    {
      v70 = 0;
    }
  }

  else
  {
    v70 = 0;
    LOBYTE(ObjectType) = 0;
  }

  if (ObjectType)
  {
    v71 = 256;
  }

  else
  {
    v71 = 0;
  }

  return (*((*v4 & *v2) + 0x718))(v71 & 0xFFFFFFFE | v16 & 1, v61, v70 | v63 & 1u);
}

uint64_t ConversationControlsManager.activeCall.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t @nonobjc TUCall.callUUID.getter(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t ConversationControlsManager.shareMenuButtonState.getter()
{
  if (one-time initialization token for screenSharingControlStateManager != -1)
  {
    OUTLINED_FUNCTION_27_31(&one-time initialization token for screenSharingControlStateManager);
  }

  CurrentValueSubject.value.getter();

  return v1;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t ConversationControlsManager.shareMenuButtonState.setter(__int16 a1, uint64_t a2, __int16 a3)
{
  if (one-time initialization token for screenSharingControlStateManager != -1)
  {
    OUTLINED_FUNCTION_27_31(&one-time initialization token for screenSharingControlStateManager);
  }

  CurrentValueSubject.send(_:)();
}

uint64_t OUTLINED_FUNCTION_379(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return type metadata accessor for MainActor();
}

id outlined copy of Participant.RemoteIdentifiers?(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v5 = result;

    return v5;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_184_0()
{

  return String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
}

id OUTLINED_FUNCTION_184_1()
{

  return [v0 (v1 + 2808)];
}

void ConversationController.update(with:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_240_0();
  if (one-time initialization token for conversationController != -1)
  {
    OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, static Logger.conversationController);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v3, v94, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  v8 = OUTLINED_FUNCTION_276_2();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v8, v9, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  v10 = v0;
  v11 = v7;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_23();
    v89 = OUTLINED_FUNCTION_13_31();
    *v14 = 136315650;
    LOBYTE(v86[0]) = v10[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
    v15 = String.init<A>(reflecting:)();
    v17 = OUTLINED_FUNCTION_449(v15, v16);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v94, v86, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (v87)
    {
      OUTLINED_FUNCTION_359_0(v86);
      v18 = OUTLINED_FUNCTION_114_2();
      v19(v18);
      type metadata accessor for UUID();
      v20 = OUTLINED_FUNCTION_127_2();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
      __swift_destroy_boxed_opaque_existential_1(v86);
    }

    else
    {
      outlined destroy of CallControlsService?(v86, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    }

    specialized >> prefix<A>(_:)(v1, v24, v25, v26, v27, v28, v29, v30, v86[0], v86[1], v86[2], v87, v88, v89, v90, v91, v92, v93);
    OUTLINED_FUNCTION_250();
    outlined destroy of CallControlsService?(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of CallControlsService?(v94, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    v35 = OUTLINED_FUNCTION_334();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v37);
    OUTLINED_FUNCTION_239_4();

    *(v14 + 14) = v11;
    *(v14 + 22) = 2080;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(&v90, v86, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (v87)
    {
      __swift_project_boxed_opaque_existential_1(v86, v87);
      v38 = OUTLINED_FUNCTION_9_40();
      v40 = v39(v38);
      __swift_destroy_boxed_opaque_existential_1(v86);
      v86[0] = v40;
      type metadata accessor for TUConversationState(0);
      v41 = String.init<A>(reflecting:)();
      v43 = v42;
      outlined destroy of CallControlsService?(&v90, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    }

    else
    {
      outlined destroy of CallControlsService?(v86, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      outlined destroy of CallControlsService?(&v90, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      v43 = 0xE300000000000000;
      v41 = 7104878;
    }

    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v89);
    OUTLINED_FUNCTION_344_0();

    *(v14 + 24) = v41;
    _os_log_impl(&dword_1BBC58000, v12, v13, "[%s] updating with conversation: %s state: %s", v14, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {

    outlined destroy of CallControlsService?(&v90, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    outlined destroy of CallControlsService?(v94, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  outlined init with copy of IDView<AvatarStackView, [UUID]>(v3, v94, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  if (v95)
  {
    OUTLINED_FUNCTION_2_167(v94);
    v44 = OUTLINED_FUNCTION_0_212();
    v46 = v45(v44);
    __swift_destroy_boxed_opaque_existential_1(v94);
  }

  else
  {
    outlined destroy of CallControlsService?(v94, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    v46 = 0;
  }

  ConversationController.conversationState.setter(v46);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v3, v94, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  if (v95)
  {
    OUTLINED_FUNCTION_2_167(v94);
    v47 = OUTLINED_FUNCTION_0_212();
    v49 = v48(v47);
    __swift_destroy_boxed_opaque_existential_1(v94);
  }

  else
  {
    outlined destroy of CallControlsService?(v94, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    v49 = 0;
  }

  ConversationController.conversationLetMeInRequestState.setter(v49);
  v50 = OUTLINED_FUNCTION_276_2();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v50, v51, v52, v53);
  if (!v93)
  {
    outlined destroy of CallControlsService?(&v90, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
LABEL_38:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  OUTLINED_FUNCTION_335();
  v54 = v10;
  v55 = ConversationController.isOneToOneModeEnabled.getter() & 1;
  OUTLINED_FUNCTION_82_0(v94);
  v56 = OUTLINED_FUNCTION_2_14();
  if (v55 != (v57(v56) & 1))
  {
    v58 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(&v10[v58], &v90);
    v54 = v10;
    ConversationController.callCenter(_:oneToOneModeChangedFor:)();
    __swift_destroy_boxed_opaque_existential_1(&v90);
  }

  if (v10[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode] == 1)
  {
    v59 = OBJC_IVAR____TtC15ConversationKit22ConversationController_audioFrequencyController;
    if (!*&v10[OBJC_IVAR____TtC15ConversationKit22ConversationController_audioFrequencyController])
    {
      OUTLINED_FUNCTION_82_0(v94);
      v60 = OUTLINED_FUNCTION_2_14();
      v62 = v61(v60);
      if (TUConversationState.shouldHaveAudioFrequencyController.getter(v62))
      {
        OUTLINED_FUNCTION_82_0(v94);
        v63 = OUTLINED_FUNCTION_2_14();
        if (v64(v63) != -1)
        {
          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          OUTLINED_FUNCTION_37_22();
          v65 = swift_allocObject();
          *(v65 + 16) = xmmword_1BC4BA940;
          v66 = v95;
          OUTLINED_FUNCTION_184_2(v94);
          v67 = OUTLINED_FUNCTION_84_9();
          v90 = v68(v67);
          String.init<A>(reflecting:)();
          OUTLINED_FUNCTION_87();
          *(v65 + 56) = MEMORY[0x1E69E6158];
          *(v65 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v65 + 32) = v54;
          *(v65 + 40) = v66;
          v69 = static os_log_type_t.default.getter();
          OUTLINED_FUNCTION_3_94("Creating TUAudioFrequencyController and registering local participant with conversation session token %@", 104, v70, &dword_1BBC58000, v71, v69);

          v72 = [objc_allocWithZone(MEMORY[0x1E69D8A38]) initWithDelegate:v10 queue:*&v10[OBJC_IVAR____TtC15ConversationKit22ConversationController_audioCallbackQueue]];
          v73 = *&v10[v59];
          *&v10[v59] = v72;

          v74 = *&v10[v59];
          if (v74)
          {
            v75 = v96;
            OUTLINED_FUNCTION_113_5(v94);
            v76 = *(v75 + 72);
            v77 = v74;
            v78 = OUTLINED_FUNCTION_62_0();
            [v77 registerParticipantPowerSpectrum_];
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_82_0(v94);
  v79 = OUTLINED_FUNCTION_2_14();
  v81 = v80(v79);
  if (v81 < 3)
  {
LABEL_37:
    ConversationController.updateParticipants(with:)(v94);
    __swift_destroy_boxed_opaque_existential_1(v94);
    goto LABEL_38;
  }

  if (v81 == 4)
  {
    ConversationController.stopRecordingLocalVideo()();
    ConversationController.unregisterForMoments()();
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_8_5(&one-time initialization token for shared);
    }

    OUTLINED_FUNCTION_0_1();
    (*(v82 + 152))();
    goto LABEL_37;
  }

  if (v81 == 3)
  {
    ConversationController.registerForMoments()();
    goto LABEL_37;
  }

  v90 = 0;
  v91 = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  MEMORY[0x1BFB20B10](0xD00000000000003BLL, 0x80000001BC522E50);
  OUTLINED_FUNCTION_97_8(v94);
  v83 = OUTLINED_FUNCTION_4_38();
  v89 = v84(v83);
  v85 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v85);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_275_0(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of [CaptionSectioner.SpeakerSection]();
}

uint64_t ConversationController.ControlsMode.debugDescription.getter(char a1)
{
  if (!a1)
  {
    return 0x6C6F72746E6F632ELL;
  }

  if (a1 == 1)
  {
    return 0x69566F696475612ELL;
  }

  return 0x536E65657263732ELL;
}

uint64_t ConversationController.conversationLetMeInRequestState.didset(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  v10 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState;
  result = swift_beginAccess();
  v12 = *(v2 + v10);
  if (v12 != a1)
  {
    if (a1 == 1 && v12 == 2)
    {
      v15 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
      swift_beginAccess();
      v24 = _s15ConversationKit11ParticipantVWOcTm_17(v2 + v15, v6);
      Participant.asRequestedApproval()(v24, v25, v26, v27, v28, v29, v30, v31, v36, v37, v38, v39, v40, v41, v42, v43[0], v43[1], v43[2], v44, v45);
    }

    else
    {
      if (a1 != 2 || v12 != 3)
      {
        goto LABEL_14;
      }

      v15 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
      swift_beginAccess();
      v16 = _s15ConversationKit11ParticipantVWOcTm_17(v2 + v15, v6);
      Participant.asReceivedApproval()(v16, v17, v18, v19, v20, v21, v22, v23, v36, v37, v38, v39, v40, v41, v42, v43[0], v43[1], v43[2], v44, v45);
    }

    _s15ConversationKit11ParticipantVWOhTm_18(v6, type metadata accessor for Participant);
    swift_beginAccess();
    _s15ConversationKit11ParticipantVWOdTm_0(v9, v2 + v15);
    swift_endAccess();
LABEL_14:
    v32 = v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestStateDidChange;
    result = swift_beginAccess();
    v33 = *v32;
    if (*v32)
    {
      v34 = *(v32 + 8);
      v35 = *(v2 + v10);

      v33(v35);
      return outlined consume of (@escaping @callee_guaranteed () -> ())?(v33, v34);
    }
  }

  return result;
}

uint64_t IDSCapabilitiesChecker.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall ConversationController.updateIDSStatusForVideoMessaging()()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_28_6();
  v7 = type metadata accessor for Participant(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_7();
  v9 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v10 = *(v9 + 8);
  swift_getObjectType();
  v11 = *(v10 + 208);
  swift_unknownObjectRetain();
  v12 = OUTLINED_FUNCTION_2_125();
  LODWORD(v10) = v11(v12);
  swift_unknownObjectRelease();
  if (v10 == 3)
  {
    v13 = *(v9 + 8);
    swift_getObjectType();
    v14 = *(v13 + 128);
    swift_unknownObjectRetain();
    v15 = OUTLINED_FUNCTION_157();
    LOBYTE(v13) = v14(v15);
    swift_unknownObjectRelease();
    if (v13)
    {
      v16 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v17 = *(v3 + v16);
      if (*(v17 + 16) == 1)
      {
        specialized Collection.first.getter(v17, v1);
        v18 = OUTLINED_FUNCTION_29_5();
        OUTLINED_FUNCTION_115(v18, v19, v7);
        if (v20)
        {
          outlined destroy of CallControlsService?(v1, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        }

        else
        {
          OUTLINED_FUNCTION_4_150();
          v21 = OUTLINED_FUNCTION_62_0();
          _s15ConversationKit11ParticipantVWObTm_8(v21, v22);
          ConversationController.updateVideoMessagingIDSStatusForParticipant(_:)();
          OUTLINED_FUNCTION_0_222();
          _s15ConversationKit11ParticipantVWOhTm_18(v2, v23);
        }
      }
    }
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  if (v7)
  {
    outlined init with copy of ConversationControlsAction(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
  }

  v9 = OUTLINED_FUNCTION_4_27();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void sub_1BBCB6828()
{
  OUTLINED_FUNCTION_248_0();
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_29_2();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_29_2();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      if (v3 == 0x7FFFFFFF)
      {
        *(v1 + v2[8]) = (v0 - 1);
        return;
      }

      v6 = type metadata accessor for Participant.CountdownInfo(0);
      v10 = v2[14];
    }

    v7 = v1 + v10;
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

void ConversationController.updateVideoMessagingIDSStatusForParticipant(_:)()
{
  v2 = v0;
  v3 = OUTLINED_FUNCTION_77_2();
  v4 = type metadata accessor for Participant(v3);
  v5 = *(v1 + *(v4 + 28));
  if (!v5)
  {
    return;
  }

  v6 = v4;
  v7 = one-time initialization token for videoMessaging;
  v8 = v5;
  if (v7 != -1)
  {
    OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, &static Logger.videoMessaging);
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_42();
    v46 = OUTLINED_FUNCTION_23();
    v47 = v46;
    *v13 = 136315138;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    v14 = v10;
    v15 = String.init<A>(reflecting:)();
    v17 = v6;
    v18 = v10;
    v19 = v1;
    v20 = v2;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v47);

    *(v13 + 4) = v21;
    v2 = v20;
    v1 = v19;
    v10 = v18;
    v6 = v17;
    _os_log_impl(&dword_1BBC58000, v11, v12, "Checking IDS capabilities for %s for video messaging", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_104_2();
  }

  v22 = *(v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_idsCapabilitiesChecker);
  v23 = (*(*v22 + 224))(v10);
  if (v23 == 2)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v31))
    {
      v32 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v32);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_18();
    }

    goto LABEL_17;
  }

  if (v23 != 3)
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v39))
    {
      v40 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v40);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v41, v42, v43, v44, v45, 2u);
      OUTLINED_FUNCTION_18();
    }

    (*((*MEMORY[0x1E69E7D40] & **(v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController)) + 0x1C0))((v23 >> 40) & 1);
LABEL_17:

    return;
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_33();
    *v26 = 0;
    _os_log_impl(&dword_1BBC58000, v24, v25, "Updating IDS capabilities to determine video messaging eligibility", v26, 2u);
    OUTLINED_FUNCTION_2_2();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMR);
  v27 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BC4BA940;
  OUTLINED_FUNCTION_1_186();
  _s15ConversationKit11ParticipantVWOcTm_17(v1, v29 + v27);
  (*(*v22 + 232))(v28);
}

uint64_t IDSCapabilitiesChecker.capabilitiesForHandle(_:)()
{
  v1 = TUCopyIDSCanonicalAddressForHandle();
  if (!v1)
  {
    return 3;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  OUTLINED_FUNCTION_4_5(v0 + 24, v6);
  if (!*(*(v0 + 24) + 16))
  {
LABEL_7:

    return 3;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v3, v5);
  if ((v7 & 1) == 0)
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_20_22();
  v10 = v8 | (v9 << 32);
  swift_bridgeObjectRelease_n();

  return v10;
}

Swift::Void __swiftcall IDSCapabilitiesChecker.update(withParticipants:)(Swift::OpaquePointer withParticipants)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22IDSCapabilitiesCheckerC22ParticipantDestination33_CDCD3D0B33FE10A11E29AF4D631CB8CALLVSgMd, &_s15ConversationKit22IDSCapabilitiesCheckerC22ParticipantDestination33_CDCD3D0B33FE10A11E29AF4D631CB8CALLVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v139 - v3);
  v146 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v156 = type metadata accessor for IDSCapabilitiesChecker.ParticipantDestination(0);
  OUTLINED_FUNCTION_1();
  v147 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  v154 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v145 = v139 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v139 - v18;
  v20 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_17();
  v150 = v22 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v139 - v25;
  v139[2] = withParticipants._rawValue;
  v27 = *(withParticipants._rawValue + 2);
  v151 = v28;
  v152 = v4;
  v139[1] = v29;
  if (v27)
  {
    v144 = v10;
    v149 = *(v20 + 28);
    OUTLINED_FUNCTION_27_17();
    v32 = v30 + v31;
    v148 = *(v33 + 72);
    v143 = (v6 + 16);
    v140 = (v6 + 32);
    v34 = MEMORY[0x1E69E7CC0];
    v35 = v27;
    v142 = v27;
    v141 = v26;
    while (1)
    {
      OUTLINED_FUNCTION_10_33();
      _s15ConversationKit11ParticipantVWOcTm_5(v32, v26, v36);
      v10 = *&v26[v149];
      if (v10)
      {
        v37 = v19;
        v38 = v144;
        v39 = v146;
        (*v143)(v144, &v26[*(v20 + 20)], v146);
        v40 = v10;
        v41 = TUCopyIDSCanonicalAddressForHandle();
        if (!v41)
        {
          __break(1u);
LABEL_61:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v42 = v41;
        v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        OUTLINED_FUNCTION_4_54();
        _s15ConversationKit11ParticipantVWOhTm_7(v26, v45);
        v46 = v145;
        (*v140)(v145, v38, v39);
        v47 = (v46 + *(v156 + 20));
        *v47 = v155;
        v47[1] = v44;
        v19 = v37;
        outlined init with take of IDSCapabilitiesChecker.ParticipantDestination(v46, v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v34 = v51;
        }

        v20 = v151;
        v27 = v142;
        v10 = *(v34 + 16);
        v26 = v141;
        if (v10 >= *(v34 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v34 = v52;
        }

        *(v34 + 16) = v10 + 1;
        OUTLINED_FUNCTION_7_49();
        outlined init with take of IDSCapabilitiesChecker.ParticipantDestination(v37, v34 + v48 + *(v49 + 72) * v10);
        v4 = v152;
      }

      else
      {
        OUTLINED_FUNCTION_4_54();
        _s15ConversationKit11ParticipantVWOhTm_7(v26, v50);
      }

      v32 += v148;
      if (!--v35)
      {
        goto LABEL_14;
      }
    }
  }

  v34 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v53 = v153;
  *(v153 + 48) = v34;

  if (v27)
  {
    v155 = 0;
    OUTLINED_FUNCTION_27_17();
    v56 = v54 + v55;
    v149 = *(v57 + 72);
    v58 = MEMORY[0x1E69E7CC8];
    v59 = v156;
    v60 = v150;
    do
    {
      OUTLINED_FUNCTION_10_33();
      v62 = _s15ConversationKit11ParticipantVWOcTm_5(v56, v60, v61);
      v10 = *(v53 + 48);
      MEMORY[0x1EEE9AC00](v62);
      v139[-2] = v60;

      v63 = v155;
      specialized Sequence.first(where:)(partial apply for closure #1 in closure #2 in IDSCapabilitiesChecker.update(withParticipants:), v10, v4);
      v155 = v63;

      if (__swift_getEnumTagSinglePayload(v4, 1, v59) == 1)
      {
        outlined destroy of IDSCapabilitiesChecker.ParticipantDestination?(v4);
        v60 = v150;
      }

      else
      {
        v64 = (v4 + *(v59 + 20));
        v65 = *v64;
        v66 = v64[1];

        OUTLINED_FUNCTION_3_73();
        _s15ConversationKit11ParticipantVWOhTm_7(v4, v67);
        v68 = v58;
        v69 = *(v53 + 80);
        v70 = *(v53 + 88);
        __swift_project_boxed_opaque_existential_1((v53 + 56), v69);
        (*(v70 + 16))(v65, v66, v69, v70);

        v10 = *(v151 + 20);
        swift_isUniquelyReferenced_nonNull_native();
        v158[0] = v68;
        v60 = v150;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
        v58 = v158[0];
        v4 = v152;
      }

      OUTLINED_FUNCTION_4_54();
      _s15ConversationKit11ParticipantVWOhTm_7(v60, v71);
      v56 += v149;
      --v27;
    }

    while (v27);
  }

  else
  {
    v155 = 0;
    v58 = MEMORY[0x1E69E7CC8];
    v59 = v156;
  }

  v150 = v58;
  v72 = *(v53 + 48);
  v73 = *(v72 + 16);
  v74 = MEMORY[0x1E69E7CC0];
  if (v73)
  {
    v158[0] = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v74 = v158[0];
    OUTLINED_FUNCTION_7_49();
    v4 = (v72 + v75);
    v77 = *(v76 + 72);
    do
    {
      OUTLINED_FUNCTION_9_39();
      v78 = v154;
      _s15ConversationKit11ParticipantVWOcTm_5(v4, v154, v79);
      v80 = (v78 + *(v59 + 20));
      v82 = *v80;
      v81 = v80[1];

      _s15ConversationKit11ParticipantVWOhTm_7(v78, v10);
      v158[0] = v74;
      v10 = v74[2];
      if (v10 >= v74[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v74 = v158[0];
      }

      v74[2] = v10 + 1;
      v83 = &v74[2 * v10];
      v83[4] = v82;
      v83[5] = v81;
      v4 = (v4 + v77);
      --v73;
      v59 = v156;
    }

    while (v73);

    v53 = v153;
  }

  v84 = 0;
  v152 = v74[2];
  v85 = v74 + 5;
  v86 = MEMORY[0x1E69E7CC8];
  v151 = v74;
  while (v152 != v84)
  {
    if (v84 >= v74[2])
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      goto LABEL_48;
    }

    v4 = *(v85 - 1);
    v87 = *v85;
    v88 = v85;
    v89 = *(v53 + 80);
    v90 = *(v53 + 88);
    __swift_project_boxed_opaque_existential_1((v53 + 56), v89);
    v53 = *(v90 + 16);

    v91 = (v53)(v4, v87, v89, v90);
    if (v91 == 3)
    {
      v92 = 0;
    }

    else
    {
      v92 = WORD2(v91);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v158[0] = v86;
    v94 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v87);
    v96 = *(v86 + 16);
    v97 = (v95 & 1) == 0;
    v98 = v96 + v97;
    if (__OFADD__(v96, v97))
    {
      goto LABEL_57;
    }

    v99 = v94;
    v53 = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesOGMd, &_ss17_NativeDictionaryVySS15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesOGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v98))
    {
      v100 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v87);
      if ((v53 & 1) != (v101 & 1))
      {
        goto LABEL_61;
      }

      v99 = v100;
    }

    v86 = v158[0];
    if (v53)
    {
      OUTLINED_FUNCTION_22_22(v92);
    }

    else
    {
      *(v158[0] + 8 * (v99 >> 6) + 64) |= 1 << v99;
      v102 = (*(v86 + 48) + 16 * v99);
      *v102 = v4;
      v102[1] = v87;
      OUTLINED_FUNCTION_22_22(v92);
      v103 = *(v86 + 16);
      v104 = __OFADD__(v103, 1);
      v105 = v103 + 1;
      if (v104)
      {
        goto LABEL_58;
      }

      *(v86 + 16) = v105;
    }

    v85 = v88 + 2;
    v84 = (v84 + 1);
    v53 = v153;
    v74 = v151;
  }

  v4 = *(*v53 + 120);
  v107 = (v4)(v106);
  v108 = v150;
  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation4UUIDV_15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesOTt1g5(v150, v107);
  v110 = v109;

  if (v110)
  {

    goto LABEL_49;
  }

  swift_beginAccess();
  *(v53 + 16) = v108;

  swift_beginAccess();
  *(v53 + 24) = v86;

  if ((*(*v53 + 168))(v111))
  {
    v113 = v112;
    ObjectType = swift_getObjectType();
    v4();
    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SD4KeysVyAF15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesO_GTt0g5();
    (*(v113 + 8))(v53, v115, ObjectType, v113);

    swift_unknownObjectRelease();
  }

  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_59;
  }

LABEL_48:
  v116 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_1BC4BA940;
  v158[0] = (v4)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesOGMd, &_sSDy10Foundation4UUIDV15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesOGMR);
  v107 = String.init<A>(reflecting:)();
  v119 = v118;
  *(v117 + 56) = MEMORY[0x1E69E6158];
  *(v117 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v117 + 32) = v107;
  *(v117 + 40) = v119;
  v120 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Updated IDS capabilities: %@", 28, 2, &dword_1BBC58000, v116, v120, v117);
LABEL_49:

  outlined init with copy of IDSLookupManager(v53 + 56, v158);
  v121 = v159;
  v122 = v160;
  v123 = __swift_project_boxed_opaque_existential_1(v158, v159);
  v124 = *(v53 + 48);
  v125 = *(v124 + 16);
  v126 = MEMORY[0x1E69E7CC0];
  if (v125)
  {
    v152 = v123;
    v155 = v121;
    v157 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v126 = v157;
    OUTLINED_FUNCTION_7_49();
    v128 = v124 + v127;
    v130 = *(v129 + 72);
    do
    {
      OUTLINED_FUNCTION_9_39();
      v131 = v154;
      _s15ConversationKit11ParticipantVWOcTm_5(v128, v154, v132);
      v133 = (v131 + *(v156 + 20));
      v134 = *v133;
      v135 = v133[1];

      _s15ConversationKit11ParticipantVWOhTm_7(v131, v107);
      v157 = v126;
      v107 = *(v126 + 16);
      if (v107 >= *(v126 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v126 = v157;
      }

      *(v126 + 16) = v107 + 1;
      v136 = v126 + 16 * v107;
      *(v136 + 32) = v134;
      *(v136 + 40) = v135;
      v128 += v130;
      --v125;
    }

    while (v125);

    v53 = v153;
  }

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v126);
  (*(v122 + 8))();

  __swift_destroy_boxed_opaque_existential_1(v158);
  v137 = [objc_opt_self() defaultCenter];
  v138 = *MEMORY[0x1E69D8FA0];
  __swift_project_boxed_opaque_existential_1((v53 + 56), *(v53 + 80));
  [v137 addObserver:v53 selector:sel_handleLookupManagerDidChangeNotification_ name:v138 object:_bridgeAnythingToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, void (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v19 = a3(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_100();
  v11 = 0;
  v12 = *(a2 + 16);
  while (1)
  {
    if (v12 == v11)
    {
      v16 = 1;
      v17 = a5;
      return __swift_storeEnumTagSinglePayload(v17, v16, 1, v19);
    }

    OUTLINED_FUNCTION_40_3();
    OUTLINED_FUNCTION_82_1();
    _s15ConversationKit11ParticipantVWOcTm_1(v13, v14);
    v15 = a1(v6);
    if (v5)
    {
      return _s15ConversationKit11ParticipantVWOhTm_1(v6, a4);
    }

    if (v15)
    {
      break;
    }

    _s15ConversationKit11ParticipantVWOhTm_1(v6, a4);
    ++v11;
  }

  v17 = a5;
  _s15ConversationKit15RecentsCallItemVWObTm_0(v6, a5);
  v16 = 0;
  return __swift_storeEnumTagSinglePayload(v17, v16, 1, v19);
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  return specialized Sequence.first(where:)(a1, a2, type metadata accessor for IDSCapabilitiesChecker.ParticipantDestination, type metadata accessor for IDSCapabilitiesChecker.ParticipantDestination, a3);
}

{
  return specialized Sequence.first(where:)(a1, a2, type metadata accessor for Participant, type metadata accessor for Participant, a3);
}

{
  return specialized Sequence.first(where:)(a1, a2, type metadata accessor for ParticipantGridView.IdentifiableParticipantTile, type metadata accessor for ParticipantGridView.IdentifiableParticipantTile, a3);
}

{
  return specialized Sequence.first(where:)(a1, a2, type metadata accessor for RecentsCallItem, type metadata accessor for RecentsCallItem, a3);
}

{
  return specialized Sequence.first(where:)(a1, a2, type metadata accessor for ParticipantReaction, type metadata accessor for ParticipantReaction, a3);
}

uint64_t sub_1BBCB7CA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void specialized _NativeDictionary._insert(at:key:value:)()
{
  OUTLINED_FUNCTION_18_31();
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_0_84(v3, v4, v5, v6);
  OUTLINED_FUNCTION_25_24();
  OUTLINED_FUNCTION_20_3();
  v7 = OUTLINED_FUNCTION_17_31();
  v8(v7);
  v9 = *(v0 + 56) + 6 * v2;
  *(v9 + 4) = WORD2(v1);
  *v9 = v1;
  OUTLINED_FUNCTION_8_51();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v10;
  }
}

{
  OUTLINED_FUNCTION_18_31();
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_0_84(v3, v4, v5, v6);
  OUTLINED_FUNCTION_25_24();
  OUTLINED_FUNCTION_20_3();
  v7 = OUTLINED_FUNCTION_17_31();
  v8(v7);
  v9 = *(v0 + 56);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_20_3();
  (*(v10 + 32))(v9 + *(v10 + 72) * v2, v1);
  OUTLINED_FUNCTION_8_51();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v11;
  }
}

{
  OUTLINED_FUNCTION_18_31();
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_0_84(v3, v4, v5, v6);
  OUTLINED_FUNCTION_25_24();
  OUTLINED_FUNCTION_20_3();
  v7 = OUTLINED_FUNCTION_17_31();
  v8(v7);
  memcpy((*(v0 + 56) + 80 * v2), v1, 0x4BuLL);
  OUTLINED_FUNCTION_8_51();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v9;
  }
}

{
  OUTLINED_FUNCTION_18_31();
  v3 = v2;
  v7 = OUTLINED_FUNCTION_0_84(v2, v4, v5, v6);
  *(*(v8 + 48) + 8 * v7) = v9;
  v10 = *(v8 + 56);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMR);
  outlined init with take of (key: UUID, value: IDSCapabilitiesChecker.Capabilities)?(v1, v10 + *(*(v11 - 8) + 72) * v3, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMR);
  OUTLINED_FUNCTION_8_51();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v12;
  }
}

{
  OUTLINED_FUNCTION_18_31();
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_0_84(v3, v4, v5, v6);
  OUTLINED_FUNCTION_25_24();
  OUTLINED_FUNCTION_20_3();
  v7 = OUTLINED_FUNCTION_17_31();
  v8(v7);
  *(*(v0 + 56) + 8 * v2) = v1;
  OUTLINED_FUNCTION_8_51();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v9;
  }
}

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation4UUIDV_15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesOTt1g5(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for UUID();
  v53 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesO5valuetSgMd, &_s10Foundation4UUIDV3key_15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesO5valuetSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v45 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v12 = 0;
    v50 = a1;
    v13 = *(a1 + 64);
    v46 = a1 + 64;
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v13;
    v17 = (v14 + 63) >> 6;
    v49 = v53 + 16;
    v56 = (v53 + 32);
    v51 = (v53 + 8);
    v48 = xmmword_1BC4C74D0;
    v47 = xmmword_1BC4C74E0;
    v59 = v9;
    while (v16)
    {
      v57 = (v16 - 1) & v16;
      v18 = __clz(__rbit64(v16)) | (v12 << 6);
LABEL_12:
      v21 = v50;
      v22 = v52;
      v23 = v53;
      v24 = v58;
      (*(v53 + 16))(v52, *(v50 + 48) + *(v53 + 72) * v18, v58);
      v25 = *(v21 + 56) + 6 * v18;
      v26 = *v25;
      LOWORD(v21) = *(v25 + 4);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesO5valuetMd, &_s10Foundation4UUIDV3key_15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesO5valuetMR);
      v28 = &v59[*(v27 + 48)];
      (*(v23 + 32))(v59, v22, v24);
      *(v28 + 2) = v21;
      *v28 = v26;
      v9 = v59;
      __swift_storeEnumTagSinglePayload(v59, 0, 1, v27);
LABEL_13:
      v29 = v9;
      v30 = v55;
      outlined init with take of (key: UUID, value: IDSCapabilitiesChecker.Capabilities)?(v29, v55, &_s10Foundation4UUIDV3key_15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesO5valuetSgMd, &_s10Foundation4UUIDV3key_15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesO5valuetSgMR);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesO5valuetMd, &_s10Foundation4UUIDV3key_15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesO5valuetMR);
      if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
      {
        return;
      }

      v32 = (v30 + *(v31 + 48));
      v33 = v54;
      v34 = v30;
      v35 = v58;
      (*v56)(v54, v34, v58);
      v36 = *(v32 + 2);
      v37 = *v32;
      v38 = specialized __RawDictionaryStorage.find<A>(_:)();
      LOBYTE(v32) = v39;
      (*v51)(v33, v35);
      if ((v32 & 1) == 0)
      {
        return;
      }

      v40 = v37 | (v36 << 32);
      v41 = *(*(a2 + 56) + 6 * v38) | (*(*(a2 + 56) + 6 * v38 + 4) << 32);
      if (*(*(a2 + 56) + 6 * v38) == 2)
      {
        v9 = v59;
        v16 = v57;
        if (v37 != 2)
        {
          return;
        }
      }

      else
      {
        v9 = v59;
        if (v37 == 2)
        {
          return;
        }

        v42 = vdupq_n_s64(v41);
        v43 = vdupq_n_s64(v40);
        if ((vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vmvnq_s8(veorq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v42, v48)), vceqzq_s64(vandq_s8(v42, v47))), vuzp1q_s32(vceqzq_s64(vandq_s8(v43, v48)), vceqzq_s64(vandq_s8(v43, v47)))))), 0xFuLL))) & 1) == 0)
        {
          return;
        }

        if ((*(*(a2 + 56) + 6 * v38) ^ v37))
        {
          return;
        }

        v16 = v57;
        if (((v40 & 0x10000000000) == 0) == ((v41 >> 40) & 1))
        {
          return;
        }
      }
    }

    while (1)
    {
      v19 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v19 >= v17)
      {
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesO5valuetMd, &_s10Foundation4UUIDV3key_15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesO5valuetMR);
        __swift_storeEnumTagSinglePayload(v9, 1, 1, v44);
        v57 = 0;
        goto LABEL_13;
      }

      v20 = *(v46 + 8 * v19);
      ++v12;
      if (v20)
      {
        v57 = (v20 - 1) & v20;
        v18 = __clz(__rbit64(v20)) | (v19 << 6);
        v12 = v19;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SD4KeysVyAF15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesO_GTt0g5()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_214();
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  OUTLINED_FUNCTION_4_121();
  _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v10, v11, MEMORY[0x1E69695B8]);
  v12 = OUTLINED_FUNCTION_15_14();
  v13 = MEMORY[0x1BFB21140](v12);
  v14 = 0;
  v28 = v1;
  v29 = v13;
  v15 = v1 + 64;
  OUTLINED_FUNCTION_33_2();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v27[2] = v4 + 32;
  v27[3] = v4 + 16;
  v27[1] = v4 + 8;
  if ((v17 & v16) != 0)
  {
    do
    {
      v21 = v14;
LABEL_7:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v4 + 16))(v9, *(v28 + 48) + *(v4 + 72) * (v22 | (v21 << 6)), v2);
      v23 = OUTLINED_FUNCTION_258_0();
      v24(v23);
      OUTLINED_FUNCTION_7_8();
      specialized Set._Variant.insert(_:)();
      v25 = OUTLINED_FUNCTION_2_40();
      v26(v25);
    }

    while (v18);
  }

  while (1)
  {
    v21 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      OUTLINED_FUNCTION_30_0();
      return;
    }

    v18 = *(v15 + 8 * v21);
    ++v14;
    if (v18)
    {
      v14 = v21;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void OUTLINED_FUNCTION_156_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, os_log_type_t a11)
{

  _os_log_impl(a1, v11, a11, a4, v12, 0x16u);
}

uint64_t OUTLINED_FUNCTION_170_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

BOOL OUTLINED_FUNCTION_170_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void ConversationController.idsCapabilitiesChecker(_:didUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_443();
  a21 = v24;
  a22 = v25;
  v27 = v26;
  if (one-time initialization token for conversationController != -1)
  {
    OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.conversationController);
  OUTLINED_FUNCTION_28_0();

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_42();
    v32 = OUTLINED_FUNCTION_23();
    a10 = v32;
    *v31 = 136315138;
    (*(*v27 + 120))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesOGMd, &_sSDy10Foundation4UUIDV15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesOGMR);
    v33 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &a10);
    OUTLINED_FUNCTION_344_0();

    *(v31 + 4) = v23;
    OUTLINED_FUNCTION_383();
    _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_2_2();
  }

  ConversationController.isRemoteParticipantEligibleForVideoMessaging.getter();
  OUTLINED_FUNCTION_23_0();
  v42 = (*((*MEMORY[0x1E69E7D40] & v40) + 0x1C0))(v41 & 1);
  v43 = (v22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateIDSCapabilities);
  OUTLINED_FUNCTION_104_7(v42);
  v44 = *v43;
  if (*v43)
  {
    v45 = *(*v27 + 120);

    v45(v46);
    v44();
    v47 = OUTLINED_FUNCTION_62_0();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v47, v48);
  }

  OUTLINED_FUNCTION_7_17();
}

uint64_t getEnumTagSinglePayload for IDSCapabilitiesChecker.Capabilities(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[6])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
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

uint64_t getEnumTag for ButtonsStackViewModel.LocalVideoButton.ButtonType(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t ConversationController.isRemoteParticipantEligibleForVideoMessaging.getter()
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v1 = *v0;
  if (*v0)
  {

    v3 = v1(v2);
    v4 = OUTLINED_FUNCTION_44_0();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v4, v5);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t VideoMessageController.state.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_2();
  static Published.subscript.getter();

  return v3;
}

uint64_t VideoMessageController.State.rawValue.getter(char a1)
{
  result = 0x616C696176616E75;
  switch(a1)
  {
    case 1:
      result = 0x7964616552746F6ELL;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x7964616572;
      break;
    case 4:
      v3 = 1836212599;
      goto LABEL_11;
    case 5:
      result = 0x6552657669746361;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x6F4364726F636572;
      break;
    case 8:
      v3 = 1684956531;
LABEL_11:
      result = v3 | 0x676E6900000000;
      break;
    case 9:
      result = 1953391987;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(uint64_t a1)
{
  result = MEMORY[0x1BFB21140](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    specialized Set._Variant.insert(_:)(v8, v7, v6);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ConversationController.setupScreenSharingSessionCallbacks()()
{
  OUTLINED_FUNCTION_11_97();
  v34 = v1;
  v35 = v2;
  v3 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingSession + v0;
  OUTLINED_FUNCTION_30_2(OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingSession + v0, &v33);
  if (*(v3 + 3))
  {
    OUTLINED_FUNCTION_20();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_278(v4);
    swift_unknownObjectWeakInit();
    v5 = OUTLINED_FUNCTION_101_5();
    __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
    OUTLINED_FUNCTION_74_5();
    v7 = OUTLINED_FUNCTION_81_7();
    v8(v7);
    if (*(v3 + 3))
    {
      OUTLINED_FUNCTION_20();
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_278(v9);
      swift_unknownObjectWeakInit();
      v10 = OUTLINED_FUNCTION_101_5();
      __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
      OUTLINED_FUNCTION_74_5();
      v12 = OUTLINED_FUNCTION_81_7();
      v13(v12);
      if (*(v3 + 3))
      {
        OUTLINED_FUNCTION_20();
        v14 = swift_allocObject();
        OUTLINED_FUNCTION_278(v14);
        swift_unknownObjectWeakInit();
        v15 = OUTLINED_FUNCTION_101_5();
        __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
        OUTLINED_FUNCTION_74_5();
        v17 = OUTLINED_FUNCTION_81_7();
        v18(v17);
        if (*(v3 + 3))
        {
          OUTLINED_FUNCTION_20();
          v19 = swift_allocObject();
          OUTLINED_FUNCTION_278(v19);
          swift_unknownObjectWeakInit();
          v20 = OUTLINED_FUNCTION_101_5();
          __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
          OUTLINED_FUNCTION_74_5();
          v22 = OUTLINED_FUNCTION_81_7();
          v23(v22);
          if (*(v3 + 3))
          {
            OUTLINED_FUNCTION_20();
            v24 = swift_allocObject();
            OUTLINED_FUNCTION_278(v24);
            swift_unknownObjectWeakInit();
            v25 = OUTLINED_FUNCTION_101_5();
            __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
            OUTLINED_FUNCTION_74_5();
            v27 = OUTLINED_FUNCTION_81_7();
            v28(v27);
            if (*(v3 + 3))
            {
              OUTLINED_FUNCTION_20();
              v29 = swift_allocObject();
              OUTLINED_FUNCTION_278(v29);
              swift_unknownObjectWeakInit();
              v30 = OUTLINED_FUNCTION_44_0();
              __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
              OUTLINED_FUNCTION_123_2();
              v32();
            }
          }
        }
      }
    }
  }

  swift_endAccess();
  OUTLINED_FUNCTION_10_84();
}

uint64_t sub_1BBCB93DC()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionDidEnd.setter in conformance SingleDisplaySharingSession(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionDidChangeContent.setter in conformance SingleDisplaySharingSession(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionDidChangeAttributes.setter in conformance SingleDisplaySharingSession(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionPickerCanceled.setter in conformance SingleDisplaySharingSession(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_246_1(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t ConversationController.updateScreenSharingSession(with:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingSession;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v9 + v1, &v26, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMR);
  if (!v27)
  {
    return outlined destroy of CallControlsService?(&v26, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMR);
  }

  outlined init with take of TapInteractionHandler(&v26, v28);
  if (a1)
  {
    v10 = [a1 windowUUID];
    if (v10)
    {
      v11 = v10;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    v18 = type metadata accessor for UUID();
    __swift_storeEnumTagSinglePayload(v2, v12, 1, v18);
    v19 = OUTLINED_FUNCTION_309();
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v19, v20, v21, v22);
  }

  else
  {
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_113_5(v28);
  v23 = OUTLINED_FUNCTION_44_0();
  v24(v23);
  outlined destroy of CallControlsService?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

void OUTLINED_FUNCTION_110()
{
}

uint64_t OUTLINED_FUNCTION_110_2@<X0>(char a1@<W8>)
{
  *(v1 + 240) = a1;

  return type metadata accessor for ConversationControlsPrimaryActionButtonProvider();
}

void OUTLINED_FUNCTION_110_4()
{
  *(v0 + *(v1 + 2304)) = 0;

  VideoMessageController.updateState()();
}

void *OUTLINED_FUNCTION_110_5()
{

  return memcpy((v0 + 80), (v1 + 16), 0x4BuLL);
}

uint64_t OUTLINED_FUNCTION_110_7(uint64_t a1)
{

  return swift_once();
}

Swift::Bool __swiftcall ConversationController.updateIsUsingIPadExternalCamera()()
{
  v3 = OUTLINED_FUNCTION_129();
  v4 = type metadata accessor for Participant(v3);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_1();
  v6 = *(v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_defaults + 8);
  ObjectType = swift_getObjectType();
  if (((*(v6 + 624))(ObjectType, v6) & 1) == 0)
  {
    return 0;
  }

  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9 != 1)
  {
    return 0;
  }

  v10 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_1_186();
  _s15ConversationKit11ParticipantVWOcTm_17(v0 + v10, v2);
  Participant.videoInfo.getter();
  OUTLINED_FUNCTION_0_222();
  _s15ConversationKit11ParticipantVWOhTm_18(v2, v11);
  if (!v14)
  {
    return 0;
  }

  v16 = v14;
  memcpy(v17, v15, sizeof(v17));
  v12 = Participant.VideoInfo.cameraType.getter();
  outlined destroy of CallControlsService?(&v14, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  return v12 == 1;
}

uint64_t TUConversationState.debugDescription.getter(uint64_t a1)
{
  result = 0x64656E696F6A2ELL;
  switch(a1)
  {
    case 0:
      v3 = 0x69746961772ELL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
    case 1:
      return 0x697261706572702ELL;
    case 2:
      return 0x676E696E696F6A2ELL;
    case 3:
      return result;
    case 4:
      v3 = 0x697661656C2ELL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
    default:
      _StringGuts.grow(_:)(57);
      MEMORY[0x1BFB20B10](0xD000000000000037, 0x80000001BC4F6EE0);
      v4 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1BFB20B10](v4);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      JUMPOUT(0x1BBCB9AE0);
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t Participant.RemoteIdentifiers.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  OUTLINED_FUNCTION_104_6();
  _StringGuts.grow(_:)(55);
  OUTLINED_FUNCTION_255_0();
  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10]();
  v4 = [v1 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.init<A>(reflecting:)();
  OUTLINED_FUNCTION_229_2();

  MEMORY[0x1BFB20B10](0x3D4449736469202CLL, 0xE800000000000000);
  if (v2)
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v6 = String.init<A>(reflecting:)();
    v5 = v7;
  }

  MEMORY[0x1BFB20B10](v6, v5);

  OUTLINED_FUNCTION_2_67();
  OUTLINED_FUNCTION_224_1();
  if (v3)
  {

    String.init<A>(reflecting:)();
  }

  v8 = OUTLINED_FUNCTION_44_0();
  MEMORY[0x1BFB20B10](v8);

  return v10;
}

void ConversationController.fetchExistingScreenSharingAttributes()()
{
  v2 = (v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_103_5(v2);
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_101();
  (*(v4 + 16))(v1);
  v6 = OUTLINED_FUNCTION_62_0();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_206();
  v10(v9);
  OUTLINED_FUNCTION_20();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in ConversationController.fetchExistingScreenSharingAttributes();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  aBlock[3] = &block_descriptor_1185;
  v12 = _Block_copy(aBlock);

  [v8 getLatestRemoteScreenShareAttributesWithCompletionHandler_];
  _Block_release(v12);
}

uint64_t outlined assign with take of ScreenSharingStateMonitorConversationProviderProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit025ScreenSharingStateMonitorA16ProviderProtocol_pSgMd, &_s15ConversationKit025ScreenSharingStateMonitorA16ProviderProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in ConversationController.fetchExistingScreenSharingAttributes()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v7 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in ConversationController.fetchExistingScreenSharingAttributes();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_1191;
  v12 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v15 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v14);
}

uint64_t sub_1BBCBA2E8()
{

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t Features.isIncomingCallBannerEnabled.getter()
{
  if ((SBUIIsSystemApertureEnabled() & 1) == 0)
  {
    lazy protocol witness table accessor for type Features.CallUI and conformance Features.CallUI();
    v0 = isFeatureEnabled(_:)();
    OUTLINED_FUNCTION_8_68(v0, v1);
  }

  return 1;
}