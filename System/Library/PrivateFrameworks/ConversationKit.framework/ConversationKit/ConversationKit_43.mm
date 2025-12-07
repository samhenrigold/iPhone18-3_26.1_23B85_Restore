void ReceiptionistCaptionsProvider.setupRTTMessageObserver()()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    v5[4] = partial apply for closure #1 in ReceiptionistCaptionsProvider.setupRTTMessageObserver();
    v5[5] = v0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = thunk for @escaping @callee_guaranteed (@guaranteed String?, @guaranteed String?) -> ();
    v5[3] = &block_descriptor_49_1;
    v3 = _Block_copy(v5);

    v4 = MEMORY[0x1BFB209B0](*(v0 + 56), *(v0 + 64));
    [v2 registerForUpdates:v3 forCallUID:v4];

    _Block_release(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t @objc ReceiptionistCaptionsProvider.updateDisplayContextState()(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t closure #1 in ReceiptionistCaptionsProvider.setupRTTMessageObserver()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v12;
  v14[5] = a3;
  v14[6] = a4;
  v14[7] = a1;
  v14[8] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in closure #1 in ReceiptionistCaptionsProvider.setupRTTMessageObserver()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore23CallScreeningTranscriptVSgMd, &_s20CommunicationsUICore23CallScreeningTranscriptVSgMR);
  v8[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[14] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ReceiptionistCaptionsProvider.setupRTTMessageObserver(), v10, v9);
}

uint64_t closure #1 in closure #1 in ReceiptionistCaptionsProvider.setupRTTMessageObserver()()
{
  OUTLINED_FUNCTION_8_73();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = *(v2 + 136);
      if (v5 && (v6 = [v5 lastUtteranceForMe_]) != 0)
      {
        v7 = v6;
        outlined bridged method (pb) of @objc RTTUtterance.text.getter(v6);
        if (v8)
        {

          result = outlined bridged method (pb) of @objc RTTUtterance.text.getter(v7);
          if (!v10)
          {
            __break(1u);
            return result;
          }

          v11 = result;
          v12 = v10;
          v14 = v0[11];
          v13 = v0[12];
          v15 = v0[10];

          if (v13)
          {
            v16 = v13;
          }

          else
          {
            v14 = 0;
            v16 = 0xE000000000000000;
          }

          v17 = specialized StringProtocol.appending<A>(_:)(v14, v16, v11, v12);
          v19 = v18;

          if (!v15)
          {

            goto LABEL_23;
          }

          v20 = v0[10];
          if (v17 == v0[9] && v20 == v19)
          {

LABEL_40:
            v33 = v0[9];
            v34 = v20;
            goto LABEL_41;
          }

          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v22)
          {
            goto LABEL_40;
          }
        }

        else
        {
        }
      }

      else
      {
      }

LABEL_23:
      v23 = *(v2 + 136);
      if (!v23 || ((v24 = v0[12]) != 0 ? (v25 = v0[11]) : (v25 = 0), v24 ? (v26 = v0[12]) : (v26 = 0xE000000000000000), , (v27 = outlined bridged method (mbnn) of @objc RTTConversation.appendString(fromOtherContactPath:)(v25, v26, v23)) == 0))
      {
LABEL_44:
        ReceiptionistCaptionsProvider.updateRTTUtterances()();
        if ([v4 isScreening])
        {
          v36 = [v4 receptionistState];
        }

        else
        {
          v36 = 0;
        }

        if (*(v2 + 112) == 1)
        {
          OUTLINED_FUNCTION_32_19();
          if (specialized Dictionary.subscript.getter(v36, *(v2 + 128), v37))
          {
            v38 = v0[13];
            swift_endAccess();
            OUTLINED_FUNCTION_25_34();

            type metadata accessor for CallScreeningTranscript();
            OUTLINED_FUNCTION_12();
            __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
            CurrentValueSubject.send(_:)();

            outlined destroy of TapInteractionHandler?(v38, &_s20CommunicationsUICore23CallScreeningTranscriptVSgMd, &_s20CommunicationsUICore23CallScreeningTranscriptVSgMR);
            goto LABEL_52;
          }

          swift_endAccess();
        }

        goto LABEL_52;
      }

      v7 = v27;
      if (!v0[10])
      {
        goto LABEL_43;
      }

      v28 = outlined bridged method (pb) of @objc RTTUtterance.text.getter(v27);
      v30 = v0[10];
      if (v29)
      {
        if (v28 == v0[9] && v29 == v30)
        {

          goto LABEL_43;
        }

        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v32)
        {
LABEL_43:

          goto LABEL_44;
        }
      }

      v33 = v0[9];
      v34 = v30;
LABEL_41:
      v35 = MEMORY[0x1BFB209B0](v33, v34);
      [v7 updateText_];

      goto LABEL_43;
    }
  }

LABEL_52:

  OUTLINED_FUNCTION_13();

  return v43();
}

uint64_t specialized StringProtocol.appending<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v5 = String.init<A>(_:)();
  String.append<A>(contentsOf:)();
  return v5;
}

double thunk for @escaping @callee_guaranteed (@guaranteed String?, @guaranteed String?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v3)
    {
LABEL_3:
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = v9;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:

  v4(v5, v7, v8, v3);

  return result;
}

unint64_t specialized Sequence.dropLast(_:)(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v2 = a2;
  if (a1)
  {
    v21 = MEMORY[0x1E69E7CC0];
    v22 = MEMORY[0x1E69E7CC0];
    v4 = specialized Array.count.getter();
    v20 = 0;
    v5 = 0;
    while (1)
    {
      if (v4 == v5)
      {

        v14 = v22;

        return v14;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB22010](v5, v2);
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = v21;
      v10 = *(v21 + 16);
      if (v10 >= a1)
      {
        if (v20 >= v10)
        {
          goto LABEL_27;
        }

        *(v21 + 8 * v20 + 32);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
          v21 = v9;
        }

        if (v20 >= *(v9 + 16))
        {
          goto LABEL_28;
        }

        v11 = v9 + 8 * v20;
        v12 = *(v11 + 32);
        *(v11 + 32) = v7;

        specialized ContiguousArray._endMutation()();
        if ((v20 + 1) < a1)
        {
          v13 = v20 + 1;
        }

        else
        {
          v13 = 0;
        }

        v20 = v13;
        v5 = v8;
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v5;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!(a2 >> 62))
  {
    return a2 & 0xFFFFFFFFFFFFFF8;
  }

LABEL_29:
  v16 = __CocoaSet.count.getter();
  if (!v16)
  {
LABEL_32:

    return MEMORY[0x1E69E7CC0];
  }

  v17 = v16;
  v14 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo14TUConversationC_Tt1g5();
  specialized Array._copyContents(initializing:)(v14 + 32, v17, v2);
  v19 = v18;

  if (v19 != v17)
  {
    __break(1u);
    goto LABEL_32;
  }

  return v14;
}

uint64_t outlined init with take of Participant.Caption(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant.Caption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of Participant.Caption(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant.Caption(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.init(call:provider:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_60_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_16(v1);
  OUTLINED_FUNCTION_319();

  return closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.init(call:provider:)(v3, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didEnableCaptions:error:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_16(v1);
  OUTLINED_FUNCTION_319();

  return closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didEnableCaptions:error:)(v3, v4, v5, v6, v7);
}

uint64_t partial apply for closure #2 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didUpdateCaptions:)(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 44) & ~*(v3 + 80);
  v5 = *(v1 + 24);
  v13 = *(v1 + 16);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = (v1 + ((v4 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel;

  return closure #2 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didUpdateCaptions:)(a1, v13, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t partial apply for closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didDetectGibberish:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_16(v1);
  OUTLINED_FUNCTION_319();

  return closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didDetectGibberish:)(v3, v4, v5, v6, v7);
}

uint64_t lazy protocol witness table accessor for type TUCallReceptionistState and conformance TUCallReceptionistState(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type CallScreeningTranscript? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CallScreeningTranscript? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CallScreeningTranscript? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s20CommunicationsUICore23CallScreeningTranscriptVSgMd, &_s20CommunicationsUICore23CallScreeningTranscriptVSgMR);
    lazy protocol witness table accessor for type TUCallReceptionistState and conformance TUCallReceptionistState(&lazy protocol witness table cache variable for type CallScreeningTranscript and conformance CallScreeningTranscript, MEMORY[0x1E6995F58], MEMORY[0x1E6995F60]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallScreeningTranscript? and conformance <A> A?);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in ReceiptionistCaptionsProvider.setupRTTMessageObserver()()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_1_16(v6);

  return closure #1 in closure #1 in ReceiptionistCaptionsProvider.setupRTTMessageObserver()(v8, v9, v10, v11, v1, v2, v3, v4);
}

uint64_t outlined bridged method (pb) of @objc RTTUtterance.text.getter(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id outlined bridged method (mbnn) of @objc RTTConversation.appendString(fromOtherContactPath:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0](a1);

  v5 = [a3 appendStringFromOtherContactPath_];

  return v5;
}

uint64_t partial apply for closure #1 in closure #1 in ReceiptionistCaptionsProvider.setupRTTMessageObserverIfNecessary()()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_60_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_16(v1);
  OUTLINED_FUNCTION_319();

  return closure #1 in closure #1 in ReceiptionistCaptionsProvider.setupRTTMessageObserverIfNecessary()(v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_109();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.streamTokenDidChange(_:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_60_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_16(v1);
  OUTLINED_FUNCTION_319();

  return closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.streamTokenDidChange(_:)(v3, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.setupTUCaptionsClient(_:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_60_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_16(v1);
  OUTLINED_FUNCTION_319();

  return closure #1 in ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.setupTUCaptionsClient(_:)(v3, v4, v5, v6, v7);
}

uint64_t outlined init with copy of CallScreeningTranscript?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore23CallScreeningTranscriptVSgMd, &_s20CommunicationsUICore23CallScreeningTranscriptVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Participant.Caption(uint64_t a1)
{
  v2 = type metadata accessor for Participant.Caption(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InCallControlButton.__allocating_init(style:symbolDescriber:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:isImageTrailing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  OUTLINED_FUNCTION_28_34();
  v19 = a9;
  outlined init with copy of Conversation?(v10, &v39, &_s15ConversationKit21SymbolImageDescribing_pSgMd, &_s15ConversationKit21SymbolImageDescribing_pSgMR);
  if (v40)
  {
    outlined init with take of TapInteractionHandler(&v39, v36);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    v20 = a7;
    v34 = v10;
    v21 = a6;
    v22 = v13;
    v23 = a5;
    v24 = v37;
    v25 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v26 = *(v25 + 8);
    v27 = v24;
    a7 = v20;
    v19 = a9;
    v28 = v25;
    a5 = v23;
    v13 = v22;
    a6 = v21;
    v10 = v34;
    v26(&v39, v27, v28);
    v29 = static UIImage.symbolImage(for:)(&v39);
    outlined destroy of SymbolImageDescription(&v39);
    __swift_destroy_boxed_opaque_existential_1(v36);
    v30 = v29;
  }

  else
  {
    outlined destroy of TapInteractionHandler?(&v39, &_s15ConversationKit21SymbolImageDescribing_pSgMd, &_s15ConversationKit21SymbolImageDescribing_pSgMR);
    v29 = 0;
  }

  HIBYTE(v33) = a10 & 1;
  LOBYTE(v33) = v19 & 1;
  v31 = (*(v11 + 528))(v14, v29, v12, v13, a5, a6 & 1, a7, a8, v15, v33);

  outlined destroy of TapInteractionHandler?(v10, &_s15ConversationKit21SymbolImageDescribing_pSgMd, &_s15ConversationKit21SymbolImageDescribing_pSgMR);
  return v31;
}

uint64_t InCallControlButtonConfiguration.Regular.init(contentColor:discContentColor:disc:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

__n128 InCallControlButtonConfiguration.init(regular:flat:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 32);
  result = *a1;
  v7 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v7;
  *(a5 + 32) = v5;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  return result;
}

uint64_t InCallControlButton.__allocating_init(style:imageName:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, char a9)
{
  OUTLINED_FUNCTION_28_34();
  outlined init with copy of Conversation?(v9, &v36, &_s15ConversationKit9ImageName_pSgMd, &_s15ConversationKit9ImageName_pSgMR);
  if (v37)
  {
    outlined init with take of TapInteractionHandler(&v36, v38);
    v17 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    v33 = v10;
    v18 = v9;
    v19 = v11;
    v20 = v13;
    v21 = v12;
    v22 = a7;
    v23 = v39;
    v24 = v40;
    v25 = __swift_project_boxed_opaque_existential_1(v38, v39);
    v26 = v23;
    v11 = v19;
    v9 = v18;
    v10 = v33;
    v27 = v24;
    a7 = v22;
    v12 = v21;
    v13 = v20;
    v28 = specialized static UIImage.image(named:)(v25, v17, v26, v27);
    __swift_destroy_boxed_opaque_existential_1(v38);
    v29 = v28;
  }

  else
  {
    outlined destroy of TapInteractionHandler?(&v36, &_s15ConversationKit9ImageName_pSgMd, &_s15ConversationKit9ImageName_pSgMR);
    v28 = 0;
  }

  HIBYTE(v32) = 1;
  LOBYTE(v32) = a9 & 1;
  v30 = (*(v10 + 528))(v13, v28, v11, v12, a5, a6 & 1, a7, a8, v14, v32);

  outlined destroy of TapInteractionHandler?(v9, &_s15ConversationKit9ImageName_pSgMd, &_s15ConversationKit9ImageName_pSgMR);
  return v30;
}

uint64_t key path getter for InCallControlButton.callbackCancellable : InCallControlButton@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for InCallControlButton.callbackCancellable : InCallControlButton(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xE8);

  return v2(v3);
}

uint64_t InCallControlButton.callbackCancellable.getter()
{
  OUTLINED_FUNCTION_36_2();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
}

uint64_t InCallControlButton.callbackCancellable.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_callbackCancellable;
  OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = a1;
}

void *InCallControlButton.imageView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_imageView);
  v2 = v1;
  return v1;
}

void *InCallControlButton.label.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label);
  v2 = v1;
  return v1;
}

uint64_t key path getter for InCallControlButton.image : InCallControlButton@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x148))();
  *a2 = result;
  return result;
}

uint64_t key path setter for InCallControlButton.image : InCallControlButton(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x150);
  v4 = *a1;
  return v3(v2);
}

void *InCallControlButton.image.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_image;
  OUTLINED_FUNCTION_36_2();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void InCallControlButton.image.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_image;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  InCallControlButton.updateImage()();
  InCallControlButton.updateColors()();
}

uint64_t InCallControlButton.image.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

void InCallControlButton.image.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    InCallControlButton.updateImage()();
    InCallControlButton.updateColors()();
  }
}

uint64_t key path getter for InCallControlButton.action : InCallControlButton@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x160))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for InCallControlButton.action : InCallControlButton(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x168);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return v7(v6, v5);
}

uint64_t InCallControlButton.action.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_38_2();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v0, v1);
  return OUTLINED_FUNCTION_38_2();
}

uint64_t InCallControlButton.action.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_action);
  OUTLINED_FUNCTION_3_5(v5, v9);
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
}

uint64_t InCallControlButton.imageLoadingTask.setter(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_imageLoadingTask);
  *(v1 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_imageLoadingTask) = result;
  if (v2)
  {

    MEMORY[0x1BFB21000](v2, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  return result;
}

void InCallControlButton.updateImage()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_imageView);
  if (v4)
  {
    v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x148);
    v15 = v4;
    v6 = v5();
    if (v6)
    {
      v7 = v6;
      static TaskPriority.userInitiated.getter();
      v8 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v3, 0, 1, v8);
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = swift_allocObject();
      v10[2] = 0;
      v10[3] = 0;
      v10[4] = v7;
      v10[5] = v9;
      v11 = v7;
      v12 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in InCallControlButton.updateImage(), v10);
      outlined destroy of TapInteractionHandler?(v3, &_sScPSgMd, &_sScPSgMR);
      InCallControlButton.imageLoadingTask.setter(v12);
    }

    else
    {
      InCallControlButton.imageLoadingTask.setter(0);
      [v15 setImage_];
      v13 = v15;
    }
  }
}

uint64_t closure #1 in InCallControlButton.updateImage()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in InCallControlButton.updateImage(), 0, 0);
}

uint64_t closure #1 in InCallControlButton.updateImage()()
{
  v1 = [*(v0 + 48) imageByPreparingForDisplay];
  if (!v1)
  {
    v1 = *(v0 + 48);
  }

  *(v0 + 64) = v1;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in InCallControlButton.updateImage(), v4, v3);
}

{
  v1 = *(v0 + 64);

  specialized closure #1 in closure #1 in InCallControlButton.updateImage()(v0 + 40, v1);
  MEMORY[0x1BFB23F10](v0 + 40);

  return MEMORY[0x1EEE6DFA0](closure #1 in InCallControlButton.updateImage(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void specialized closure #1 in closure #1 in InCallControlButton.updateImage()(uint64_t a1, uint64_t a2)
{
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      [Strong setImage_];
    }
  }
}

double key path getter for InCallControlButton.symbolDescription : InCallControlButton@<D0>(void **a1@<X0>, _OWORD *a2@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & **a1) + 0x198))(v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t key path setter for InCallControlButton.symbolDescription : InCallControlButton(_OWORD *a1, void **a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1A0);
  outlined init with copy of Conversation?(v7, &v6, &_s15ConversationKit22SymbolImageDescriptionVSgMd, &_s15ConversationKit22SymbolImageDescriptionVSgMR);
  return v4(v7);
}

void *InCallControlButton.symbolDescription.didset(uint64_t *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_symbolDescription);
  swift_beginAccess();
  v4 = v3[1];
  v36[0] = *v3;
  v36[1] = v4;
  v5 = v3[1];
  v6 = v3[3];
  v37 = v3[2];
  v38 = v6;
  v7 = v36[0];
  v32 = v5;
  v33 = v37;
  v34 = v3[3];
  v9 = *a1;
  v8 = a1[1];
  if (*(&v36[0] + 1))
  {
    if (v8)
    {
      *&v18 = *a1;
      *(&v18 + 1) = v8;
      v10 = *(a1 + 2);
      v19 = *(a1 + 1);
      v20 = v10;
      v21 = *(a1 + 3);
      v25 = v10;
      v26 = v21;
      v23 = v18;
      v24 = v19;
      v11 = v3[1];
      v12 = v3[3];
      v35[2] = v3[2];
      v35[3] = v12;
      v35[1] = v11;
      v35[0] = v36[0];
      outlined init with copy of Conversation?(v36, v22, &_s15ConversationKit22SymbolImageDescriptionVSgMd, &_s15ConversationKit22SymbolImageDescriptionVSgMR);
      outlined init with copy of Conversation?(v36, v22, &_s15ConversationKit22SymbolImageDescriptionVSgMd, &_s15ConversationKit22SymbolImageDescriptionVSgMR);
      outlined init with copy of Conversation?(a1, v22, &_s15ConversationKit22SymbolImageDescriptionVSgMd, &_s15ConversationKit22SymbolImageDescriptionVSgMR);
      v13 = static SymbolImageDescription.== infix(_:_:)(v35, &v23);
      outlined destroy of TapInteractionHandler?(v36, &_s15ConversationKit22SymbolImageDescriptionVSgMd, &_s15ConversationKit22SymbolImageDescriptionVSgMR);
      outlined destroy of TapInteractionHandler?(&v18, &_s15ConversationKit22SymbolImageDescriptionVSgMd, &_s15ConversationKit22SymbolImageDescriptionVSgMR);
      v22[0] = v7;
      v22[1] = v32;
      v22[2] = v33;
      v22[3] = v34;
      result = outlined destroy of TapInteractionHandler?(v22, &_s15ConversationKit22SymbolImageDescriptionVSgMd, &_s15ConversationKit22SymbolImageDescriptionVSgMR);
      if (v13)
      {
        return result;
      }

      return InCallControlButton.updateSymbol()();
    }
  }

  else if (!v8)
  {
    v23 = *&v36[0];
    v17 = v3[2];
    v24 = v3[1];
    v25 = v17;
    v26 = v3[3];
    outlined init with copy of Conversation?(v36, v35, &_s15ConversationKit22SymbolImageDescriptionVSgMd, &_s15ConversationKit22SymbolImageDescriptionVSgMR);
    outlined init with copy of Conversation?(a1, v35, &_s15ConversationKit22SymbolImageDescriptionVSgMd, &_s15ConversationKit22SymbolImageDescriptionVSgMR);
    return outlined destroy of TapInteractionHandler?(&v23, &_s15ConversationKit22SymbolImageDescriptionVSgMd, &_s15ConversationKit22SymbolImageDescriptionVSgMR);
  }

  v23 = v36[0];
  v15 = v3[2];
  v24 = v3[1];
  v25 = v15;
  v26 = v3[3];
  v27 = v9;
  v28 = v8;
  v16 = *(a1 + 2);
  v29 = *(a1 + 1);
  v30 = v16;
  v31 = *(a1 + 3);
  outlined init with copy of Conversation?(v36, v35, &_s15ConversationKit22SymbolImageDescriptionVSgMd, &_s15ConversationKit22SymbolImageDescriptionVSgMR);
  outlined init with copy of Conversation?(a1, v35, &_s15ConversationKit22SymbolImageDescriptionVSgMd, &_s15ConversationKit22SymbolImageDescriptionVSgMR);
  outlined destroy of TapInteractionHandler?(&v23, &_s15ConversationKit22SymbolImageDescriptionVSg_ADtMd, &_s15ConversationKit22SymbolImageDescriptionVSg_ADtMR);
  return InCallControlButton.updateSymbol()();
}

double InCallControlButton.symbolDescription.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_symbolDescription);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v4 = v3[1];
  v10 = *v3;
  v11 = v4;
  v5 = v3[3];
  v12 = v3[2];
  v13 = v5;
  outlined init with copy of Conversation?(&v10, v9, &_s15ConversationKit22SymbolImageDescriptionVSgMd, &_s15ConversationKit22SymbolImageDescriptionVSgMR);
  v6 = v11;
  *a1 = v10;
  a1[1] = v6;
  result = *&v12;
  v8 = v13;
  a1[2] = v12;
  a1[3] = v8;
  return result;
}

uint64_t InCallControlButton.symbolDescription.setter(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_symbolDescription);
  OUTLINED_FUNCTION_3_5(v1 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_symbolDescription, v12);
  v4 = v3[1];
  v13[0] = *v3;
  v13[1] = v4;
  v5 = v3[3];
  v14 = v3[2];
  v15 = v5;
  v16[0] = v13[0];
  v16[1] = v4;
  v16[2] = v14;
  v16[3] = v5;
  v6 = a1[1];
  *v3 = *a1;
  v3[1] = v6;
  v7 = a1[3];
  v3[2] = a1[2];
  v3[3] = v7;
  outlined init with copy of Conversation?(v13, v11, &_s15ConversationKit22SymbolImageDescriptionVSgMd, &_s15ConversationKit22SymbolImageDescriptionVSgMR);
  outlined init with copy of Conversation?(a1, v11, &_s15ConversationKit22SymbolImageDescriptionVSgMd, &_s15ConversationKit22SymbolImageDescriptionVSgMR);
  outlined destroy of TapInteractionHandler?(v16, &_s15ConversationKit22SymbolImageDescriptionVSgMd, &_s15ConversationKit22SymbolImageDescriptionVSgMR);
  InCallControlButton.symbolDescription.didset(v13);
  outlined destroy of TapInteractionHandler?(v13, &_s15ConversationKit22SymbolImageDescriptionVSgMd, &_s15ConversationKit22SymbolImageDescriptionVSgMR);
  v8 = OUTLINED_FUNCTION_44_0();
  return outlined destroy of TapInteractionHandler?(v8, v9, &_s15ConversationKit22SymbolImageDescriptionVSgMR);
}

void (*InCallControlButton.symbolDescription.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x1A0uLL);
  *a1 = v3;
  v3[51] = v1;
  v4 = (v1 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_symbolDescription);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[3];
  *(v3 + 2) = v4[2];
  *(v3 + 3) = v7;
  *v3 = v5;
  *(v3 + 1) = v6;
  v8 = *v4;
  v9 = v4[1];
  v10 = v4[3];
  *(v3 + 14) = v4[2];
  *(v3 + 15) = v10;
  *(v3 + 12) = v8;
  *(v3 + 13) = v9;
  outlined init with copy of Conversation?(v3, (v3 + 32), &_s15ConversationKit22SymbolImageDescriptionVSgMd, &_s15ConversationKit22SymbolImageDescriptionVSgMR);
  return InCallControlButton.symbolDescription.modify;
}

void InCallControlButton.symbolDescription.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 208);
  if (a2)
  {
    v2[4] = v2[12];
    v2[5] = v3;
    v4 = v2[15];
    v2[6] = v2[14];
    v2[7] = v4;
    outlined init with copy of Conversation?((v2 + 4), (v2 + 20), &_s15ConversationKit22SymbolImageDescriptionVSgMd, &_s15ConversationKit22SymbolImageDescriptionVSgMR);
    InCallControlButton.symbolDescription.setter(v2 + 4);
    v5 = v2[13];
    v2[16] = v2[12];
    v2[17] = v5;
    v6 = v2[15];
    v2[18] = v2[14];
    v2[19] = v6;
    outlined destroy of TapInteractionHandler?((v2 + 16), &_s15ConversationKit22SymbolImageDescriptionVSgMd, &_s15ConversationKit22SymbolImageDescriptionVSgMR);
  }

  else
  {
    v2[8] = v2[12];
    v2[9] = v3;
    v7 = v2[15];
    v2[10] = v2[14];
    v2[11] = v7;
    InCallControlButton.symbolDescription.setter(v2 + 8);
  }

  free(v2);
}

uint64_t key path getter for InCallControlButton.text : InCallControlButton@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1B0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for InCallControlButton.text : InCallControlButton(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1B8);

  return v4(v2, v3);
}

uint64_t InCallControlButton.text.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 text];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

void InCallControlButton.text.setter(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label);
  if (v4)
  {
    if (a2)
    {
      v5 = MEMORY[0x1BFB209B0](a1, a2, a3);
    }

    else
    {
      v5 = 0;
    }

    [v4 setText_];
  }

  else
  {
  }

  InCallControlButton.hyphenateLabelText()();
}

void (*InCallControlButton.text.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  a1[2] = v1;
  *a1 = InCallControlButton.text.getter();
  a1[1] = v3;
  return InCallControlButton.text.modify;
}

void InCallControlButton.text.modify(uint64_t *a1, char a2, double a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (a2)
  {

    InCallControlButton.text.setter(v4, v3, v5);
  }

  else
  {
    InCallControlButton.text.setter(*a1, v3, a3);
  }
}

uint64_t key path getter for InCallControlButton.colorConfiguration : InCallControlButton@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for InCallControlButton.colorConfiguration : InCallControlButton(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1D0);

  return v2(v3);
}

double InCallControlButton.colorConfiguration.getter()
{
  OUTLINED_FUNCTION_36_2();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();

  return result;
}

void InCallControlButton.colorConfiguration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_colorConfiguration;
  OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = a1;

  InCallControlButton.updateColors()();
}

uint64_t InCallControlButton.colorConfiguration.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

void *InCallControlButton.isSelected.setter(uint64_t a1)
{
  v2 = a1;
  v3 = type metadata accessor for InCallControlButton();
  v7.receiver = v1;
  v7.super_class = v3;
  v4 = objc_msgSendSuper2(&v7, sel_isSelected);
  v6.receiver = v1;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, sel_setSelected_, v2 & 1);
  return InCallControlButton.isSelected.didset(v4);
}

void *InCallControlButton.isSelected.didset(char a1)
{
  v2 = a1 & 1;
  result = [v1 isSelected];
  if (result != v2)
  {
    InCallControlButton.updateColors()();

    return InCallControlButton.updateSymbol()();
  }

  return result;
}

id InCallControlButton.isSelected.getter(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for InCallControlButton();
  return objc_msgSendSuper2(&v4, *a1);
}

void InCallControlButton.isHighlighted.setter(uint64_t a1, SEL *a2)
{
  v4 = a1;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for InCallControlButton();
  objc_msgSendSuper2(&v5, *a2, v4 & 1);
  InCallControlButton.updateColors()();
}

uint64_t InCallControlButton.cnkContentAlpha.didset()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd, &_ss23_ContiguousArrayStorageCySo6UIViewCSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BE790;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundFlatView);
  *(inited + 32) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundEffectView);
  *(inited + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_glassBackgroundView);
  *(inited + 48) = v4;
  v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_imageView);
  *(inited + 56) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label);
  *(inited + 64) = v6;
  v7 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_cnkContentAlpha;
  if (v2)
  {
    swift_beginAccess();
    v8 = *(v0 + v7);
    v9 = v6;
    v10 = v2;
    v11 = v3;
    v12 = v4;
    v13 = v5;
    [v10 setAlpha_];
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = v6;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  if (v3)
  {
LABEL_3:
    swift_beginAccess();
    [v3 setAlpha_];
  }

LABEL_4:
  if (v4)
  {
    swift_beginAccess();
    [v4 setAlpha_];
  }

  if (v5)
  {
    swift_beginAccess();
    [v5 setAlpha_];
  }

  if (v6)
  {
    swift_beginAccess();
    [v6 setAlpha_];
  }

  swift_setDeallocating();
  return specialized _ContiguousArrayStorage.__deallocating_deinit();
}

double InCallControlButton.cnkContentAlpha.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_cnkContentAlpha;
  OUTLINED_FUNCTION_36_2();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t InCallControlButton.cnkContentAlpha.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_cnkContentAlpha;
  v4 = OUTLINED_FUNCTION_36_2();
  OUTLINED_FUNCTION_3_5(v4, v5);
  *(v1 + v3) = a1;
  return InCallControlButton.cnkContentAlpha.didset();
}

uint64_t InCallControlButton.cnkContentAlpha.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t InCallControlButton.colorConfiguration.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t key path getter for InCallControlButton.menuDataSource : InCallControlButton@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for InCallControlButton.menuDataSource : InCallControlButton(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x200);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

id InCallControlButton.menuDataSource.didset()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  [v0 setContextMenuInteractionEnabled_];
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    swift_unknownObjectRelease();
  }

  return [v0 setShowsMenuAsPrimaryAction_];
}

uint64_t InCallControlButton.menuDataSource.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t InCallControlButton.menuDataSource.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_menuDataSource;
  OUTLINED_FUNCTION_3_5(v2 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_menuDataSource, v6);
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  InCallControlButton.menuDataSource.didset();
  return swift_unknownObjectRelease();
}

void (*InCallControlButton.menuDataSource.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_menuDataSource;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlButton.menuDataSource.modify;
}

void InCallControlButton.menuDataSource.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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
    InCallControlButton.menuDataSource.didset();
  }

  free(v3);
}

char *InCallControlButton.init(style:image:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:isImageTrailing:)(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11)
{
  v12 = v11;
  *&v11[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_callbackCancellable] = 0;
  v16 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundEffectView;
  *&v11[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundEffectView] = 0;
  v17 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundVibrancyView;
  *&v11[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundVibrancyView] = 0;
  v18 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_glassBackgroundView;
  *&v11[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_glassBackgroundView] = 0;
  v19 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_paragraphStyle;
  v20 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  LODWORD(v21) = 1.0;
  [v20 setHyphenationFactor_];
  [v20 setAlignment_];
  *(v12 + v19) = v20;
  v22 = a1;
  v23 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_image;
  *(v12 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_image) = 0;
  v24 = v12 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_action;
  *v24 = 0;
  v24[1] = 0;
  *(v12 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_imageLoadingTask) = 0;
  v25 = v12 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_symbolDescription;
  *v25 = 0u;
  v25[1] = 0u;
  v25[2] = 0u;
  v25[3] = 0u;
  *(v12 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_cnkContentAlpha) = 0x3FF0000000000000;
  *(v12 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_menuDataSource + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_style) = a1;
  if (a1 > 7)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x1BFB20B10](0xD000000000000044, 0x80000001BC50A440);
    v165[3] = a1;
    v144 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1BFB20B10](v144);

    OUTLINED_FUNCTION_2_117("Fatal error", v145, v146, 0, 0xE000000000000000, "ConversationKit/InCallControlButton.swift");
    __break(1u);
LABEL_99:
    JUMPOUT(0);
  }

  v155 = a3;
  if (a1 == 3)
  {
    *(v12 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_isUsingVisualEffects) = 0;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    *(v12 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_isUsingVisualEffects) = ((*(*static Defaults.shared + 336))() & 1) == 0;
  }

  v26 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v27 = OUTLINED_FUNCTION_28();
  v30 = [v28 v29];
  v157 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView;
  *(v12 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView) = v30;
  v31 = objc_opt_self();
  v32 = v30;
  v160 = v31;
  v33 = [v31 clearColor];
  [v32 setBackgroundColor_];

  v163 = a1;
  if (*(v12 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_isUsingVisualEffects) != 1)
  {
    goto LABEL_23;
  }

  if (a1 - 1 < 2)
  {
    v151 = v18;
    if (one-time initialization token for backgroundBlurEffect != -1)
    {
      OUTLINED_FUNCTION_8_74(&one-time initialization token for backgroundBlurEffect);
    }

    v34 = static Colors.InCallControls.backgroundBlurEffect;
    goto LABEL_13;
  }

  if (a1 == 6)
  {
    v151 = v18;
    v34 = [objc_opt_self() effectWithStyle_];
LABEL_13:
    v35 = v34;
    v36 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
    [v36 setAutoresizingMask_];

    v37 = *(v12 + v16);
    *(v12 + v16) = v36;

    v38 = objc_opt_self();
    if (one-time initialization token for backgroundBlurEffect != -1)
    {
      OUTLINED_FUNCTION_8_74(&one-time initialization token for backgroundBlurEffect);
    }

    v39 = [v38 _effectForBlurEffect_vibrancyStyle_];
    v40 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

    [v40 setAutoresizingMask_];
    v41 = *(v12 + v17);
    *(v12 + v17) = v40;
    v42 = v40;

    v43 = *(v12 + v16);
    if (v43)
    {
      v44 = [v43 contentView];
      [v44 addSubview_];

      v45 = *(v12 + v16);
      v18 = v151;
      if (v45)
      {
        v46 = [v45 contentView];
        v47 = [v31 whiteColor];
        v48 = [v47 colorWithAlphaComponent_];

        [v46 setBackgroundColor_];
      }

      v22 = a1;
    }

    else
    {
      v22 = a1;
      v18 = v151;
    }

    goto LABEL_22;
  }

  v49 = closure #3 in InCallControlButton.init(style:image:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:isImageTrailing:)();
  v42 = *(v12 + v16);
  *(v12 + v16) = v49;
LABEL_22:

LABEL_23:
  v50 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v51 = OUTLINED_FUNCTION_28();
  v54 = [v52 v53];
  *(v12 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundFlatView) = v54;
  v55 = v54;
  v56 = [v160 clearColor];
  v57 = OUTLINED_FUNCTION_2_105();
  [v57 v58];

  if (_UISolariumEnabled())
  {
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for shared);
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      v59 = closure #4 in InCallControlButton.init(style:image:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:isImageTrailing:)();
      v60 = *(v18 + v12);
      *(v18 + v12) = v59;
    }
  }

  v61 = *(v12 + v16);
  if (v61)
  {
    v62 = v61;
    if (a9)
    {

      v63 = MEMORY[0x1BFB209B0](a8, a9);
    }

    else
    {
      v63 = 0;
    }

    [v62 _setGroupName_];
  }

  v64 = a10;
  switch(v22)
  {
    case 4uLL:
    case 5uLL:
    case 7uLL:
      if (a2)
      {
        goto LABEL_35;
      }

      *(v12 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_imageView) = 0;
      OUTLINED_FUNCTION_3_5(v12 + v23, v165);
      v70 = *(v12 + v23);
      *(v12 + v23) = 0;
      break;
    default:
LABEL_35:
      v65 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
      v66 = OUTLINED_FUNCTION_28();
      v69 = [v67 v68];
      *(v12 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_imageView) = v69;
      if (v69)
      {
        [v69 setContentMode_];
      }

      OUTLINED_FUNCTION_3_5(v12 + v23, v165);
      v70 = *(v12 + v23);
      *(v12 + v23) = a2;
      v71 = a2;
      break;
  }

  v72 = MEMORY[0x1E69DDCF8];
  switch(a1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 6uLL:
      if (a4)
      {
        v73 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
        v74 = OUTLINED_FUNCTION_28();
        v77 = OUTLINED_FUNCTION_22_36([v75 v76]);
        if (v77)
        {
          [v77 setLineBreakMode_];
          v77 = *(&lazy protocol witness table cache variable for type CurrentValueSubject<CallDisplayStatus, Never> and conformance CurrentValueSubject<A, B> + v12);
        }

        if (v77)
        {
          v78 = v77;

          v79 = MEMORY[0x1BFB209B0](v155, a4);

          v80 = OUTLINED_FUNCTION_2_105();
          [v80 v81];

          v82 = *(&lazy protocol witness table cache variable for type CurrentValueSubject<CallDisplayStatus, Never> and conformance CurrentValueSubject<A, B> + v12);
          if (v82)
          {
            objc_opt_self();
            v83 = v82;
            v84 = OUTLINED_FUNCTION_2_105();
            v86 = [v84 v85];
            [v83 setFont_];

LABEL_63:
          }
        }
      }

      else
      {
        v18 = &lazy protocol witness table cache variable for type CurrentValueSubject<CallDisplayStatus, Never> and conformance CurrentValueSubject<A, B>;
        *(v12 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label) = 0;
      }

LABEL_64:
      if (((1 << a1) & 0xB0) != 0)
      {
LABEL_65:
        v109 = [*&v157[v12] layer];
        [v109 setMasksToBounds_];

        [*&v157[v12] setClipsToBounds_];
      }

      if (one-time initialization token for button != -1)
      {
        swift_once();
      }

      *(v12 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_colorConfiguration) = static Colors.InCallControls.button;
      v164.receiver = v12;
      v164.super_class = type metadata accessor for InCallControlButton();

      v110 = objc_msgSendSuper2(&v164, sel_initWithFrame_, 0.0, 0.0, a5, a5 * 1.5);
      InCallControlButton.updateImage()();
      v111 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView;
      v112 = *&v110[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView];
      v113 = v110;
      v158 = v112;
      [v113 setUserInteractionEnabled_];
      if (v64)
      {
        v114 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];
        [v113 addInteraction_];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd, &_ss23_ContiguousArrayStorageCySo6UIViewCSgGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BB450;
      v116 = *&v110[v111];
      *(inited + 32) = v116;
      v152 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundEffectView;
      v117 = *&v113[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundEffectView];
      *(inited + 40) = v117;
      v154 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundFlatView;
      v156 = v111;
      v118 = *&v113[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundFlatView];
      *(inited + 48) = v118;
      v119 = *&v113[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundVibrancyView];
      *(inited + 56) = v119;
      v147 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_imageView;
      v120 = *&v113[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_imageView];
      *(inited + 64) = v120;
      v149 = v18[140];
      v121 = *&v113[v149];
      *(inited + 72) = v121;
      v150 = v121;
      v148 = v121;
      if (v116)
      {
        v116 = v116;
        v122 = v117;
        v123 = v118;
        v124 = v119;
        v125 = v120;
        [v116 setTranslatesAutoresizingMaskIntoConstraints_];
        [v116 setUserInteractionEnabled_];
      }

      else
      {
        v126 = v117;
        v127 = v118;
        v128 = v119;
        v129 = v120;
      }

      if (v117)
      {
        OUTLINED_FUNCTION_16_48(v117);
        OUTLINED_FUNCTION_20_39();
      }

      OUTLINED_FUNCTION_16_48(v118);
      OUTLINED_FUNCTION_20_39();

      if (v119)
      {
        OUTLINED_FUNCTION_16_48(v119);
        OUTLINED_FUNCTION_20_39();
      }

      if (v120)
      {
        OUTLINED_FUNCTION_16_48(v120);
        OUTLINED_FUNCTION_20_39();
      }

      if (v150)
      {
        v130 = v148;
        [v130 setTranslatesAutoresizingMaskIntoConstraints_];
        [v130 setUserInteractionEnabled_];
      }

      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      [v113 addSubview_];
      if (*&v113[v152])
      {
        [v158 addSubview_];
      }

      if (*&v113[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_glassBackgroundView])
      {
        [*&v110[v156] addSubview_];
      }

      [*&v110[v156] addSubview_];

      if (((1 << v163) & 0x4F) != 0)
      {
        v131 = *&v113[v149];
        if (v131)
        {
          v132 = v131;
          InCallControlButton.addConstraintsForLabeledDisc(size:label:)(v132, a5);
LABEL_90:

          goto LABEL_93;
        }

        InCallControlButton.addConstraintsForDisc(size:)(a5);
      }

      else
      {
        v133 = *&v113[v147];
        if (v133)
        {
          v132 = v133;
          InCallControlButton.addConstraintsForPillWithImageView(_:imageSpacing:isImageTrailing:)(v132, 0, 1, a11 & 1);
          goto LABEL_90;
        }

        InCallControlButton.addConstraintsForPill()();
      }

LABEL_93:
      v134 = [v160 clearColor];
      [v113 setBackgroundColor_];

      InCallControlButton.updateColors()();
      return v113;
    case 4uLL:
      v94 = objc_allocWithZone(MEMORY[0x1E69DCC10]);

      v95 = OUTLINED_FUNCTION_28();
      v97 = OUTLINED_FUNCTION_22_36([v94 v96]);
      if (v97)
      {
        [v97 &selRef:4 systemLayoutSizeFittingSize:? withHorizontalFittingPriority:? verticalFittingPriority:?];
        v97 = *(&lazy protocol witness table cache variable for type CurrentValueSubject<CallDisplayStatus, Never> and conformance CurrentValueSubject<A, B> + v12);
      }

      if (v97)
      {
        v98 = v97;
        if (a4)
        {

          v99 = MEMORY[0x1BFB209B0](v155, a4);
          v64 = a10;
        }

        else
        {
          v99 = 0;
        }

        v136 = OUTLINED_FUNCTION_2_105();
        [v136 v137];

        v138 = *(&lazy protocol witness table cache variable for type CurrentValueSubject<CallDisplayStatus, Never> and conformance CurrentValueSubject<A, B> + v12);
        if (v138)
        {
          objc_opt_self();
          v139 = v138;
          v140 = OUTLINED_FUNCTION_2_105();
          v142 = [v140 v141];
          isa = UIFont.caseSensitive()().super.isa;

          [v139 setFont_];
        }
      }

      goto LABEL_65;
    case 5uLL:
    case 7uLL:
      v87 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
      v88 = OUTLINED_FUNCTION_28();
      v91 = OUTLINED_FUNCTION_22_36([v89 v90]);
      if (v91)
      {
        [v91 &selRef:4 systemLayoutSizeFittingSize:? withHorizontalFittingPriority:? verticalFittingPriority:?];
        v91 = *(&lazy protocol witness table cache variable for type CurrentValueSubject<CallDisplayStatus, Never> and conformance CurrentValueSubject<A, B> + v12);
      }

      if (!v91)
      {
        goto LABEL_64;
      }

      v92 = v91;
      if (a4)
      {

        v93 = MEMORY[0x1BFB209B0](v155, a4);
      }

      else
      {
        v93 = 0;
      }

      v100 = OUTLINED_FUNCTION_2_105();
      [v100 v101];

      v102 = *(&lazy protocol witness table cache variable for type CurrentValueSubject<CallDisplayStatus, Never> and conformance CurrentValueSubject<A, B> + v12);
      if (!v102)
      {
        goto LABEL_64;
      }

      v103 = objc_opt_self();
      if (a1 == 5)
      {
        v104 = *MEMORY[0x1E69DDD08];
        v105 = v102;
        v86 = [v103 preferredFontForTextStyle_];
      }

      else
      {
        v106 = *v72;
        v107 = v102;
        v108 = [v103 preferredFontForTextStyle_];
        v86 = UIFont.withTraits(_:)(2u).super.isa;
      }

      [v102 setFont_];

      goto LABEL_63;
    default:
      goto LABEL_99;
  }
}

id closure #3 in InCallControlButton.init(style:image:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:isImageTrailing:)()
{
  v0 = objc_opt_self();
  if (one-time initialization token for backgroundBlurEffect != -1)
  {
    swift_once();
  }

  v1 = [v0 _effectForBlurEffect_vibrancyStyle_];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  v3 = [v2 contentView];
  v4 = [objc_opt_self() tintColor];
  [v3 setBackgroundColor_];

  return v2;
}

id closure #4 in InCallControlButton.init(style:image:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:isImageTrailing:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v0 tuui_applySmallGlassBackground];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 layer];
  [v1 setMasksToBounds_];

  return v0;
}

id InCallControlButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlButton.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_callbackCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundVibrancyView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_glassBackgroundView) = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_paragraphStyle;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  LODWORD(v3) = 1.0;
  [v2 setHyphenationFactor_];
  [v2 setAlignment_];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_image) = 0;
  v4 = (v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_action);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_imageLoadingTask) = 0;
  v5 = (v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_symbolDescription);
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  *(v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_cnkContentAlpha) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_menuDataSource + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_0_134();
  OUTLINED_FUNCTION_12_57(v6, v7, v8, 37, v9, v10);
  __break(1u);
}

Swift::Void __swiftcall InCallControlButton.layoutSubviews()()
{
  v31.receiver = v0;
  v31.super_class = type metadata accessor for InCallControlButton();
  objc_msgSendSuper2(&v31, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_style];
  if (v1 > 7)
  {
    OUTLINED_FUNCTION_7_75();
    _StringGuts.grow(_:)(52);
    MEMORY[0x1BFB20B10](0xD000000000000032, 0x80000001BC50A490);
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_30_24();

    OUTLINED_FUNCTION_27_32();
    OUTLINED_FUNCTION_2_117("Fatal error", v27, v28, v29, v30, "ConversationKit/InCallControlButton.swift");
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_31_27();
  if (v2)
  {
    if (((1 << v1) & 0xA0) == 0)
    {
      v12 = [*&v0[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView] layer];
      v22 = [v0 traitCollection];
      _UITableViewDefaultSectionCornerRadiusForTraitCollection();
      v24 = v23;

      [v12 setCornerRadius_];
      goto LABEL_17;
    }

    [v0 bounds];
    v14 = v13 * 0.5;
    v15 = [*&v0[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView] layer];
    [v15 setCornerRadius_];

    v16 = *&v0[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundFlatView];
    v17 = [v16 layer];
    [v17 setCornerRadius_];

    v18 = [v16 layer];
    [v18 setCornerCurve_];

    v19 = *&v0[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundEffectView];
    if (v19)
    {
      [v19 _setContinuousCornerRadius_];
    }

    v20 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_glassBackgroundView;
    v21 = *&v0[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_glassBackgroundView];
    if (v1 == 5)
    {
      if (v21)
      {
        [v21 setHidden_];
      }
    }

    else if (v21)
    {
      v25 = [v21 layer];
      [v25 setCornerRadius_];

      v26 = *&v0[v20];
      if (v26)
      {
        [v26 setHidden_];
      }
    }
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView];
    [v3 bounds];
    v5 = v4;
    [v3 bounds];
    if (v6 >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v6;
    }

    v8 = v7 * 0.5;
    v9 = [*&v0[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundFlatView] layer];
    [v9 setCornerRadius_];

    v10 = *&v0[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundEffectView];
    if (v10)
    {
      [v10 _setCornerRadius_continuous_maskedCorners_];
    }

    v11 = *&v0[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_glassBackgroundView];
    if (v11)
    {
      v12 = [v11 layer];
      [v12 setCornerRadius_];
LABEL_17:
    }
  }
}

void InCallControlButton.updateSymbolDescribing(_:)(uint64_t a1)
{
  outlined init with copy of Conversation?(a1, &v7, &_s15ConversationKit21SymbolImageDescribing_pSgMd, &_s15ConversationKit21SymbolImageDescribing_pSgMR);
  if (v8)
  {
    outlined init with take of TapInteractionHandler(&v7, v6);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v2 = OUTLINED_FUNCTION_40_2();
    v3(v2);
    v4 = static UIImage.symbolImage(for:)(&v7);
    outlined destroy of SymbolImageDescription(&v7);
    __swift_destroy_boxed_opaque_existential_1(v6);
    v5 = v4;
  }

  else
  {
    outlined destroy of TapInteractionHandler?(&v7, &_s15ConversationKit21SymbolImageDescribing_pSgMd, &_s15ConversationKit21SymbolImageDescribing_pSgMR);
    v4 = 0;
  }

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x150))(v4);
}

void InCallControlButton.addConstraintsForDisc(size:)(double a1)
{
  v4 = *&v1[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_imageView];
  if (v4)
  {
    if (*&v1[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_style] == 2)
    {
      v6 = *&v1[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundVibrancyView];
      if (v6)
      {
        v7 = v4;
        v8 = [v6 contentView];
        [v8 addSubview_];
      }

      else
      {
        v10 = v4;
      }
    }

    else
    {
      [*&v1[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView] addSubview_];
    }

    LODWORD(v9) = 1148846080;
    [v1 setContentCompressionResistancePriority:0 forAxis:v9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSLayoutConstraintCSgGMd, &_ss23_ContiguousArrayStorageCySo18NSLayoutConstraintCSgGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BB990;
    v12 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_glassBackgroundView;
    v13 = *&v1[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_glassBackgroundView];
    if (v13)
    {
      v14 = [v13 topAnchor];
      v15 = [OUTLINED_FUNCTION_11_71() topAnchor];
      v16 = OUTLINED_FUNCTION_0_12(v15);
    }

    else
    {
      v16 = 0;
    }

    *(inited + 32) = v16;
    v17 = *&v1[v12];
    if (v17)
    {
      v18 = [v17 bottomAnchor];
      v19 = [OUTLINED_FUNCTION_11_71() bottomAnchor];
      v20 = OUTLINED_FUNCTION_0_12(v19);
    }

    else
    {
      v20 = 0;
    }

    *(inited + 40) = v20;
    v21 = *&v1[v12];
    if (v21)
    {
      v22 = [v21 leadingAnchor];
      v23 = [OUTLINED_FUNCTION_11_71() leadingAnchor];
      v24 = OUTLINED_FUNCTION_0_12(v23);
    }

    else
    {
      v24 = 0;
    }

    *(inited + 48) = v24;
    v25 = *&v1[v12];
    if (v25)
    {
      v26 = [v25 trailingAnchor];
      v27 = [OUTLINED_FUNCTION_11_71() trailingAnchor];
      v28 = OUTLINED_FUNCTION_0_12(v27);
    }

    else
    {
      v28 = 0;
    }

    *(inited + 56) = v28;
    v29 = MEMORY[0x1BFB232D0]();
    closure #1 in InCallControlButton.addConstraintsForDisc(size:)(v1, v4, a1);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    objc_autoreleasePoolPop(v29);
  }

  else
  {
    OUTLINED_FUNCTION_0_134();
    OUTLINED_FUNCTION_12_57(v30, v31, v32, 67, v33, v34);
    __break(1u);
    objc_autoreleasePoolPop(v2);
    __break(1u);
  }
}

void closure #1 in InCallControlButton.addConstraintsForDisc(size:)(char *a1, void *a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSLayoutConstraintCSgGMd, &_ss23_ContiguousArrayStorageCySo18NSLayoutConstraintCSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4D4AA0;
  v6 = *&a1[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView];
  v7 = [v6 topAnchor];
  v8 = [a1 topAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(inited + 32) = v9;
  v10 = [v6 leadingAnchor];
  v11 = [a1 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(inited + 40) = v12;
  v13 = [v6 trailingAnchor];
  v14 = [a1 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(inited + 48) = v15;
  v16 = [v6 bottomAnchor];
  v17 = [a1 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(inited + 56) = v18;
  v19 = [v6 widthAnchor];
  v20 = [v19 constraintEqualToConstant_];

  type metadata accessor for UILayoutPriority(0);
  lazy protocol witness table accessor for type UIControlState and conformance UIControlState(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC400]);
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v21) = v90;
  [v20 setPriority_];
  *(inited + 64) = v20;
  v22 = [v6 heightAnchor];
  v23 = [v22 constraintEqualToConstant_];

  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v24) = v90;
  [v23 setPriority_];
  *(inited + 72) = v23;
  v25 = [v6 heightAnchor];
  v26 = [v6 widthAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  LODWORD(v28) = 1148846080;
  [v27 setPriority_];
  *(inited + 80) = v27;
  v29 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundEffectView;
  v30 = *&a1[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundEffectView];
  if (v30)
  {
    v31 = [v30 topAnchor];
    v32 = [v6 topAnchor];
    v33 = [v31 constraintEqualToAnchor_];
  }

  else
  {
    v33 = 0;
  }

  *(inited + 88) = v33;
  v34 = *&a1[v29];
  if (v34)
  {
    v35 = [v34 bottomAnchor];
    v36 = [v6 bottomAnchor];
    v37 = [v35 constraintEqualToAnchor_];
  }

  else
  {
    v37 = 0;
  }

  *(inited + 96) = v37;
  v38 = *&a1[v29];
  if (v38)
  {
    v39 = [v38 leadingAnchor];
    v40 = [v6 leadingAnchor];
    v41 = [v39 constraintEqualToAnchor_];
  }

  else
  {
    v41 = 0;
  }

  *(inited + 104) = v41;
  v42 = *&a1[v29];
  if (v42)
  {
    v43 = [v42 trailingAnchor];
    v44 = [v6 trailingAnchor];
    v45 = [v43 constraintEqualToAnchor_];
  }

  else
  {
    v45 = 0;
  }

  *(inited + 112) = v45;
  v46 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundVibrancyView;
  v47 = *&a1[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundVibrancyView];
  if (v47)
  {
    v48 = [v47 topAnchor];
    v49 = [v6 topAnchor];
    v50 = [v48 constraintEqualToAnchor_];
  }

  else
  {
    v50 = 0;
  }

  *(inited + 120) = v50;
  v51 = *&a1[v46];
  if (v51)
  {
    v52 = [v51 bottomAnchor];
    v53 = [v6 bottomAnchor];
    v54 = [v52 constraintEqualToAnchor_];
  }

  else
  {
    v54 = 0;
  }

  *(inited + 128) = v54;
  v55 = *&a1[v46];
  if (v55)
  {
    v56 = [v55 leadingAnchor];
    v57 = [v6 leadingAnchor];
    v58 = [v56 constraintEqualToAnchor_];
  }

  else
  {
    v58 = 0;
  }

  *(inited + 136) = v58;
  v59 = *&a1[v46];
  if (v59)
  {
    v60 = [v59 trailingAnchor];
    v61 = [v6 trailingAnchor];
    v62 = [v60 constraintEqualToAnchor_];
  }

  else
  {
    v62 = 0;
  }

  *(inited + 144) = v62;
  v63 = *&a1[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundFlatView];
  v64 = [v63 topAnchor];
  v65 = [v6 topAnchor];
  v66 = [v64 constraintEqualToAnchor_];

  *(inited + 152) = v66;
  v67 = [v63 bottomAnchor];
  v68 = [v6 bottomAnchor];
  v69 = [v67 constraintEqualToAnchor_];

  *(inited + 160) = v69;
  v70 = [v63 leadingAnchor];
  v71 = [v6 leadingAnchor];
  v72 = [v70 constraintEqualToAnchor_];

  *(inited + 168) = v72;
  v73 = [v63 trailingAnchor];
  v74 = [v6 trailingAnchor];
  v75 = [v73 constraintEqualToAnchor_];

  *(inited + 176) = v75;
  v76 = [a2 centerXAnchor];
  v77 = [v6 centerXAnchor];
  v78 = [v76 constraintEqualToAnchor_];

  *(inited + 184) = v78;
  v79 = [a2 centerYAnchor];
  v80 = [v6 centerYAnchor];
  v81 = [v79 constraintEqualToAnchor_];

  *(inited + 192) = v81;

  specialized Array.append<A>(contentsOf:)(v82);
  v83 = 0;
  v91 = MEMORY[0x1E69E7CC0];
  v84 = *(inited + 16);
  while (1)
  {
    if (v84 == v83)
    {

      v87 = objc_opt_self();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v87 activateConstraints_];

      return;
    }

    if (v83 >= *(inited + 16))
    {
      break;
    }

    v85 = *(inited + 8 * v83++ + 32);
    if (v85)
    {
      v86 = v85;
      MEMORY[0x1BFB20CC0]();
      if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  __break(1u);
}

void InCallControlButton.addConstraintsForLabeledDisc(size:label:)(void *a1, double a2)
{
  v4 = *&v2[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_imageView];
  if (v4)
  {
    v18 = *&v2[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_imageView];
    if (*&v2[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_style] == 2)
    {
      v6 = *&v2[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundVibrancyView];
      if (v6)
      {
        v7 = v4;
        v8 = [v6 contentView];
        [v8 addSubview_];
      }

      else
      {
        v10 = v4;
      }
    }

    else
    {
      [*&v2[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView] addSubview_];
    }

    LODWORD(v9) = 1148846080;
    [a1 setContentHuggingPriority:1 forAxis:v9];
    LODWORD(v11) = 1148846080;
    [a1 setContentCompressionResistancePriority:1 forAxis:v11];
    v12 = MEMORY[0x1BFB232D0]([v2 addSubview_]);
    closure #1 in InCallControlButton.addConstraintsForLabeledDisc(size:label:)(v2, v18, a1, a2);
    objc_autoreleasePoolPop(v12);
  }

  else
  {
    OUTLINED_FUNCTION_0_134();
    OUTLINED_FUNCTION_12_57(v13, v14, v15, 67, v16, v17);
    __break(1u);
  }
}

void closure #1 in InCallControlButton.addConstraintsForLabeledDisc(size:label:)(char *a1, void *a2, void *a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSLayoutConstraintCSgGMd, &_ss23_ContiguousArrayStorageCySo18NSLayoutConstraintCSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4D4AB0;
  v7 = *&a1[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView];
  v8 = [v7 topAnchor];
  v9 = [a1 topAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(inited + 32) = v10;
  v11 = [v7 leadingAnchor];
  v12 = [a1 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(inited + 40) = v13;
  v14 = [v7 trailingAnchor];
  v15 = [a1 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(inited + 48) = v16;
  v17 = [v7 widthAnchor];
  v18 = [v17 constraintEqualToConstant_];

  *(inited + 56) = v18;
  v19 = [v7 heightAnchor];
  v20 = [v19 constraintEqualToConstant_];

  *(inited + 64) = v20;
  v21 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundEffectView;
  v22 = *&a1[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundEffectView];
  if (v22)
  {
    v23 = [v22 topAnchor];
    v24 = [v7 topAnchor];
    v25 = [v23 constraintEqualToAnchor_];
  }

  else
  {
    v25 = 0;
  }

  *(inited + 72) = v25;
  v26 = *&a1[v21];
  if (v26)
  {
    v27 = [v26 bottomAnchor];
    v28 = [v7 bottomAnchor];
    v29 = [v27 constraintEqualToAnchor_];
  }

  else
  {
    v29 = 0;
  }

  *(inited + 80) = v29;
  v30 = *&a1[v21];
  if (v30)
  {
    v31 = [v30 leadingAnchor];
    v32 = [v7 leadingAnchor];
    v33 = [v31 constraintEqualToAnchor_];
  }

  else
  {
    v33 = 0;
  }

  *(inited + 88) = v33;
  v34 = *&a1[v21];
  if (v34)
  {
    v35 = [v34 trailingAnchor];
    v36 = [v7 trailingAnchor];
    v37 = [v35 constraintEqualToAnchor_];
  }

  else
  {
    v37 = 0;
  }

  *(inited + 96) = v37;
  v38 = *&a1[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundFlatView];
  v39 = [v38 topAnchor];
  v40 = [v7 topAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(inited + 104) = v41;
  v42 = [v38 bottomAnchor];
  v43 = [v7 &off_1E7FE9D20 + 5];
  v44 = [v42 constraintEqualToAnchor_];

  *(inited + 112) = v44;
  v45 = [v38 leadingAnchor];
  v46 = [v7 leadingAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(inited + 120) = v47;
  v48 = [v38 trailingAnchor];
  v49 = [v7 trailingAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(inited + 128) = v50;
  v51 = [a2 centerXAnchor];
  v52 = [v7 centerXAnchor];
  v53 = [v51 constraintEqualToAnchor_];

  *(inited + 136) = v53;
  v54 = [a2 centerYAnchor];
  v55 = [v7 centerYAnchor];
  v56 = [v54 constraintEqualToAnchor_];

  *(inited + 144) = v56;
  v57 = [a3 topAnchor];
  v58 = [v7 0x1FBB20D25];
  v59 = [v57 constraintEqualToAnchor:v58 constant:5.0];

  *(inited + 152) = v59;
  v60 = [a3 centerXAnchor];
  v61 = [v7 centerXAnchor];
  v62 = [v60 constraintEqualToAnchor_];

  *(inited + 160) = v62;
  v63 = [a3 0x1FBB20D25];
  v64 = [a1 0x1FBB20D25];
  v65 = [v63 constraintEqualToAnchor_];

  v66 = 0;
  *(inited + 168) = v65;
  v73 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v66 == 18)
    {
      v69 = objc_opt_self();
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v69 activateConstraints_];

      return;
    }

    if (v66 > 0x11)
    {
      break;
    }

    v67 = *(inited + 8 * v66++ + 32);
    if (v67)
    {
      v68 = v67;
      MEMORY[0x1BFB20CC0]();
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  __break(1u);
}

void InCallControlButton.addConstraintsForPillWithImageView(_:imageSpacing:isImageTrailing:)(void *a1, uint64_t a2, char a3, char a4)
{
  v5 = *&v4[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label];
  if (v5)
  {
    if (a3)
    {
      v8 = 3.0;
    }

    else
    {
      v8 = *&a2;
    }

    v9 = objc_allocWithZone(MEMORY[0x1E69DCC20]);
    v10 = v5;
    v11 = [v9 init];
    v20 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
    v12 = *&v4[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView];
    [v12 addLayoutGuide_];
    [v12 addSubview_];
    [v12 addSubview_];
    v13 = MEMORY[0x1BFB232D0]([v12 addLayoutGuide_]);
    closure #1 in InCallControlButton.addConstraintsForPillWithImageView(_:imageSpacing:isImageTrailing:)(v4, v11, v20, v10, a4 & 1, a1, v8);
    objc_autoreleasePoolPop(v13);
    LODWORD(v14) = 1148846080;
    [a1 setContentCompressionResistancePriority:0 forAxis:v14];
  }

  else
  {
    OUTLINED_FUNCTION_0_134();
    OUTLINED_FUNCTION_12_57(v15, v16, v17, 63, v18, v19);
    __break(1u);
  }
}

void closure #1 in InCallControlButton.addConstraintsForPillWithImageView(_:imageSpacing:isImageTrailing:)(char *a1, void *a2, void *a3, void *a4, char a5, void *a6, double a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSLayoutConstraintCSgGMd, &_ss23_ContiguousArrayStorageCySo18NSLayoutConstraintCSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4D4AC0;
  v10 = [a1 heightAnchor];
  v11 = [v10 constraintGreaterThanOrEqualToConstant_];

  LODWORD(v12) = 1148846080;
  [v11 setPriority_];
  *(inited + 32) = v11;
  v13 = [a1 widthAnchor];
  v14 = [v13 constraintGreaterThanOrEqualToConstant_];

  LODWORD(v15) = 1148846080;
  [v14 setPriority_];
  *(inited + 40) = v14;
  v16 = *&a1[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView];
  v17 = [v16 topAnchor];
  v18 = [a1 topAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(inited + 48) = v19;
  v20 = [v16 bottomAnchor];
  v21 = [a1 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(inited + 56) = v22;
  v23 = [v16 leadingAnchor];
  v24 = [a1 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(inited + 64) = v25;
  v26 = [v16 trailingAnchor];
  v27 = [a1 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(inited + 72) = v28;
  v29 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundEffectView;
  v141 = a1;
  v30 = *&a1[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundEffectView];
  if (v30)
  {
    v31 = [v30 topAnchor];
    v32 = [v16 topAnchor];
    v33 = [v31 constraintEqualToAnchor_];
  }

  else
  {
    v33 = 0;
  }

  *(inited + 80) = v33;
  v34 = a1;
  v35 = *&a1[v29];
  if (v35)
  {
    v36 = [v35 bottomAnchor];
    v34 = a1;
    v37 = [v16 bottomAnchor];
    v38 = [v36 constraintEqualToAnchor_];
  }

  else
  {
    v38 = 0;
  }

  *(inited + 88) = v38;
  v39 = *&v34[v29];
  if (v39)
  {
    v40 = [v39 leadingAnchor];
    v41 = [v16 leadingAnchor];
    v42 = [v40 constraintEqualToAnchor_];
  }

  else
  {
    v42 = 0;
  }

  *(inited + 96) = v42;
  v43 = *&v34[v29];
  if (v43)
  {
    v44 = [v43 trailingAnchor];
    v45 = [v16 trailingAnchor];
    v46 = [v44 constraintEqualToAnchor_];
  }

  else
  {
    v46 = 0;
  }

  *(inited + 104) = v46;
  v47 = *&v34[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundFlatView];
  v48 = [v47 topAnchor];
  v49 = [v16 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];
  v50 = [v48 constraintEqualToAnchor_];

  *(inited + 112) = v50;
  v51 = [v47 bottomAnchor];
  v52 = [v16 &off_1E7FE9D20 + 5];
  v53 = [v51 constraintEqualToAnchor_];

  *(inited + 120) = v53;
  v54 = [v47 leadingAnchor];
  v55 = [v16 leadingAnchor];
  v56 = [v54 constraintEqualToAnchor_];

  *(inited + 128) = v56;
  v57 = [v47 trailingAnchor];
  v58 = [v16 trailingAnchor];
  v59 = [v57 constraintEqualToAnchor_];

  *(inited + 136) = v59;
  v60 = [a2 topAnchor];
  v61 = [v16 topAnchor];
  v62 = [v60 constraintEqualToAnchor_];

  *(inited + 144) = v62;
  v63 = [a2 bottomAnchor];
  v64 = [v16 bottomAnchor];
  v65 = [v63 constraintEqualToAnchor_];

  *(inited + 152) = v65;
  v66 = [a2 leadingAnchor];
  v67 = [v16 leadingAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:10.0];

  *(inited + 160) = v68;
  v69 = [a3 topAnchor];
  v70 = [v16 topAnchor];
  v71 = [v69 constraintEqualToAnchor_];

  *(inited + 168) = v71;
  v72 = [a3 bottomAnchor];
  v73 = [v16 bottomAnchor];
  v74 = [v72 constraintEqualToAnchor_];

  *(inited + 176) = v74;
  v75 = [a3 leadingAnchor];
  v76 = [a4 trailingAnchor];
  v77 = [v75 constraintEqualToAnchor_];

  *(inited + 184) = v77;
  v78 = [a3 trailingAnchor];
  v79 = [v16 trailingAnchor];
  v80 = [v78 constraintEqualToAnchor:v79 constant:-10.0];

  *(inited + 192) = v80;
  v81 = [a2 widthAnchor];
  v82 = [a3 widthAnchor];
  v83 = [v81 constraintEqualToAnchor_];

  *(inited + 200) = v83;
  v143 = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1BC4BA920;
  if (a5)
  {
    v85 = a6;
    v86 = &off_1E7FE9000;
    v87 = [a6 trailingAnchor];
    v88 = [a3 trailingAnchor];
    v89 = [v87 constraintEqualToAnchor:v88 constant:-a7];
    v90 = &selRef_leadingAnchor;
  }

  else
  {
    v86 = &off_1E7FE9000;
    v85 = a6;
    v87 = [a6 leadingAnchor];
    v90 = &selRef_trailingAnchor;
    v88 = [a2 trailingAnchor];
    v89 = [v87 constraintEqualToAnchor_];
    a2 = a6;
  }

  v91 = v89;

  *(v84 + 32) = v91;
  v92 = [v85 centerYAnchor];
  v93 = [v16 centerYAnchor];
  v94 = [v92 constraintEqualToAnchor_];

  *(v84 + 40) = v94;
  v95 = [a4 v86[478]];
  v96 = [a2 *v90];
  v97 = [v95 constraintEqualToAnchor:v96 constant:a7];

  *(v84 + 48) = v97;
  v98 = [a4 topAnchor];
  v99 = [v16 topAnchor];
  v100 = [v98 constraintEqualToAnchor:v99 constant:8.0];

  *(v84 + 56) = v100;
  v101 = [a4 bottomAnchor];
  v102 = [v16 bottomAnchor];
  v103 = [v101 constraintEqualToAnchor:v102 constant:-8.0];

  *(v84 + 64) = v103;
  v104 = specialized _arrayForceCast<A, B>(_:)(v84);

  specialized Array.append<A>(contentsOf:)(v104);
  v105 = swift_initStackObject();
  *(v105 + 16) = xmmword_1BC4BB990;
  v106 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_glassBackgroundView;
  v107 = v141;
  v108 = *&v141[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_glassBackgroundView];
  if (v108)
  {
    v109 = [v108 topAnchor];
    v110 = [v16 topAnchor];
    v111 = [v109 constraintEqualToAnchor_];

    v107 = v141;
  }

  else
  {
    v111 = 0;
  }

  *(v105 + 32) = v111;
  v112 = *&v107[v106];
  if (v112)
  {
    v113 = [v112 bottomAnchor];
    v114 = [v16 bottomAnchor];
    v115 = [v113 constraintEqualToAnchor_];

    v107 = v141;
  }

  else
  {
    v115 = 0;
  }

  *(v105 + 40) = v115;
  v116 = *&v107[v106];
  if (v116)
  {
    v117 = [v116 v86[478]];
    v118 = [v16 v86[478]];
    v119 = [v117 constraintEqualToAnchor_];

    v107 = v141;
  }

  else
  {
    v119 = 0;
  }

  *(v105 + 48) = v119;
  v120 = *&v107[v106];
  if (v120)
  {
    v121 = [v120 trailingAnchor];
    v122 = [v16 trailingAnchor];
    v123 = [v121 constraintEqualToAnchor_];
  }

  else
  {
    v123 = 0;
  }

  v124 = 0;
  *(v105 + 56) = v123;
  v125 = MEMORY[0x1E69E7CC0];
  v142 = MEMORY[0x1E69E7CC0];
  v126 = MEMORY[0x1E69E7CC0];
  while (v124 != 4)
  {
    if (v124 > 3)
    {
      __break(1u);
LABEL_44:
      __break(1u);
      return;
    }

    v127 = *(v105 + 8 * v124++ + 32);
    if (v127)
    {
      v128 = v127;
      MEMORY[0x1BFB20CC0]();
      if (*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v142 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v126 = v142;
    }
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v129 = specialized _arrayForceCast<A, B>(_:)(v126);

  specialized Array.append<A>(contentsOf:)(v129);
  v130 = 0;
  v131 = *(v143 + 16);
  while (v131 != v130)
  {
    if (v130 >= *(v143 + 16))
    {
      goto LABEL_44;
    }

    v132 = *(v143 + 8 * v130++ + 32);
    if (v132)
    {
      v133 = v132;
      MEMORY[0x1BFB20CC0]();
      if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v134 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v134 activateConstraints_];
}

void InCallControlButton.addConstraintsForPill()()
{
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label];
  if (v2)
  {
    v3 = v2;
    LODWORD(v4) = 1144750080;
    [v3 setContentHuggingPriority:0 forAxis:v4];
    LODWORD(v5) = 1144750080;
    [v3 setContentCompressionResistancePriority:0 forAxis:v5];
    v6 = *&v0[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView];
    [v6 addSubview_];
    v7 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
    v8 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
    [v6 addLayoutGuide_];
    v33 = v8;
    [v6 addLayoutGuide_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSLayoutConstraintCSgGMd, &_ss23_ContiguousArrayStorageCySo18NSLayoutConstraintCSgGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BB990;
    v10 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_glassBackgroundView;
    v11 = *&v0[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_glassBackgroundView];
    if (v11)
    {
      v12 = [v11 topAnchor];
      v13 = [v6 topAnchor];
      v14 = [v12 constraintEqualToAnchor_];
    }

    else
    {
      v14 = 0;
    }

    *(inited + 32) = v14;
    v15 = *&v0[v10];
    if (v15)
    {
      v16 = [v15 bottomAnchor];
      v17 = [v6 bottomAnchor];
      v18 = [v16 constraintEqualToAnchor_];
    }

    else
    {
      v18 = 0;
    }

    *(inited + 40) = v18;
    v19 = *&v0[v10];
    if (v19)
    {
      v20 = [v19 leadingAnchor];
      v21 = [v6 leadingAnchor];
      v22 = [v20 constraintEqualToAnchor_];
    }

    else
    {
      v22 = 0;
    }

    *(inited + 48) = v22;
    v23 = *&v0[v10];
    if (v23)
    {
      v24 = [v23 trailingAnchor];
      v25 = [v6 trailingAnchor];
      v26 = [v24 constraintEqualToAnchor_];
    }

    else
    {
      v26 = 0;
    }

    *(inited + 56) = v26;
    v27 = MEMORY[0x1BFB232D0]();
    closure #1 in InCallControlButton.addConstraintsForPill()(v0, v7, v3, v33);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    objc_autoreleasePoolPop(v27);
  }

  else
  {
    OUTLINED_FUNCTION_0_134();
    OUTLINED_FUNCTION_12_57(v28, v29, v30, 63, v31, v32);
    __break(1u);
    objc_autoreleasePoolPop(v1);
    __break(1u);
  }
}

void closure #1 in InCallControlButton.addConstraintsForPill()(char *a1, void *a2, void *a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSLayoutConstraintCSgGMd, &_ss23_ContiguousArrayStorageCySo18NSLayoutConstraintCSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4D4AD0;
  v6 = [a1 heightAnchor];
  v7 = [v6 constraintGreaterThanOrEqualToConstant_];

  LODWORD(v8) = 1144750080;
  [v7 setPriority_];
  *(inited + 32) = v7;
  v9 = [a1 widthAnchor];
  v10 = [v9 constraintGreaterThanOrEqualToConstant_];

  LODWORD(v11) = 1144750080;
  [v10 setPriority_];
  *(inited + 40) = v10;
  v12 = *&a1[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView];
  v13 = [v12 topAnchor];
  v14 = [a1 topAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(inited + 48) = v15;
  v16 = [v12 bottomAnchor];
  v17 = [a1 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(inited + 56) = v18;
  v19 = [v12 leadingAnchor];
  v20 = [a1 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(inited + 64) = v21;
  v22 = [v12 trailingAnchor];
  v23 = [a1 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(inited + 72) = v24;
  v25 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundEffectView;
  v26 = *&a1[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundEffectView];
  if (v26)
  {
    v27 = [v26 topAnchor];
    v28 = [v12 topAnchor];
    v29 = [v27 constraintEqualToAnchor_];
  }

  else
  {
    v29 = 0;
  }

  *(inited + 80) = v29;
  v30 = *&a1[v25];
  if (v30)
  {
    v31 = [v30 bottomAnchor];
    v32 = [v12 bottomAnchor];
    v33 = [v31 constraintEqualToAnchor_];
  }

  else
  {
    v33 = 0;
  }

  *(inited + 88) = v33;
  v34 = *&a1[v25];
  if (v34)
  {
    v35 = [v34 leadingAnchor];
    v36 = [v12 leadingAnchor];
    v37 = [v35 constraintEqualToAnchor_];
  }

  else
  {
    v37 = 0;
  }

  *(inited + 96) = v37;
  v38 = *&a1[v25];
  if (v38)
  {
    v39 = [v38 trailingAnchor];
    v40 = [v12 trailingAnchor];
    v41 = [v39 constraintEqualToAnchor_];
  }

  else
  {
    v41 = 0;
  }

  *(inited + 104) = v41;
  v42 = *&a1[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundFlatView];
  v43 = [v42 topAnchor];
  v44 = [v12 topAnchor];
  v45 = [v43 constraintEqualToAnchor_];

  *(inited + 112) = v45;
  v46 = [v42 bottomAnchor];
  v47 = [v12 &off_1E7FE9D20 + 5];
  v48 = [v46 constraintEqualToAnchor_];

  *(inited + 120) = v48;
  v49 = [v42 leadingAnchor];
  v50 = [v12 leadingAnchor];
  v51 = [v49 constraintEqualToAnchor_];

  *(inited + 128) = v51;
  v52 = [v42 trailingAnchor];
  v53 = [v12 trailingAnchor];
  v54 = [v52 constraintEqualToAnchor_];

  *(inited + 136) = v54;
  v55 = [a2 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];
  v56 = [v12 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];
  v57 = [v55 constraintEqualToAnchor_];

  *(inited + 144) = v57;
  v58 = [a2 bottomAnchor];
  v59 = [v12 bottomAnchor];
  v60 = [v58 constraintEqualToAnchor_];

  *(inited + 152) = v60;
  v61 = [a2 leadingAnchor];
  v62 = [v12 leadingAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:10.0];

  *(inited + 160) = v63;
  v64 = [a3 leadingAnchor];
  v65 = [a2 trailingAnchor];
  v66 = [v64 constraintEqualToAnchor_];

  *(inited + 168) = v66;
  v67 = [a3 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];
  v68 = [v12 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];
  v69 = [v67 constraintEqualToAnchor:v68 constant:8.0];

  *(inited + 176) = v69;
  v70 = [a3 bottomAnchor];
  v71 = [v12 bottomAnchor];
  v72 = [v70 constraintEqualToAnchor:v71 constant:-8.0];

  *(inited + 184) = v72;
  v73 = [a4 topAnchor];
  v74 = [v12 topAnchor];
  v75 = [v73 constraintEqualToAnchor_];

  *(inited + 192) = v75;
  v76 = [a4 bottomAnchor];
  v77 = [v12 bottomAnchor];
  v78 = [v76 constraintEqualToAnchor_];

  *(inited + 200) = v78;
  v79 = [a4 leadingAnchor];
  v80 = [a3 trailingAnchor];
  v81 = [v79 constraintEqualToAnchor_];

  *(inited + 208) = v81;
  v82 = [a4 trailingAnchor];
  v83 = [v12 trailingAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:-10.0];

  *(inited + 216) = v84;
  v85 = [a2 widthAnchor];
  v86 = [a4 widthAnchor];
  v87 = [v85 constraintEqualToAnchor_];

  *(inited + 224) = v87;

  specialized Array.append<A>(contentsOf:)(v88);
  v89 = 0;
  v98 = MEMORY[0x1E69E7CC0];
  v90 = *(inited + 16);
  while (1)
  {
    if (v90 == v89)
    {

      v93 = objc_opt_self();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v93 activateConstraints_];

      return;
    }

    if (v89 >= *(inited + 16))
    {
      break;
    }

    v91 = *(inited + 8 * v89++ + 32);
    if (v91)
    {
      v92 = v91;
      MEMORY[0x1BFB20CC0]();
      if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  __break(1u);
}

void InCallControlButton.updateColors()()
{
  if ([v0 isEnabled])
  {
    v1 = [v0 isHighlighted];
    v2 = [v0 isSelected];
    if (!v1 && v2 && static Platform.current.getter() == 2)
    {
      [v0 isFocused];
    }
  }

  v3 = [v0 accessibilityTraits];
  if ((*MEMORY[0x1E69DDA30] & ~v3) == 0)
  {
    v4 = [v0 isSelected];
    v5 = [objc_opt_self() conversationKit];
    v93 = 0xE000000000000000;
    if (v4)
    {
      v6 = 20047;
      v7 = 0xE200000000000000;
    }

    else
    {
      v6 = 4605519;
      v7 = 0xE300000000000000;
    }

    v8.value._countAndFlagsBits = 0x61737265766E6F43;
    v8.value._object = 0xEF74694B6E6F6974;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v10 = 0;
    v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, v8, v5, v9, *(&v93 - 1));

    outlined bridged method (mbnn) of @objc NSObject.accessibilityValue.setter(v11._countAndFlagsBits, v11._object, v0);
  }

  v12 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1C8);
  v12();
  specialized Dictionary.subscript.getter();

  v14 = v115;
  v15 = MEMORY[0x1E69E6158];
  if (v115 == 1)
  {
    (v12)(v13);
    specialized Dictionary.subscript.getter();

    v14 = v122;
    if (v122 == 1)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      v105 = static OS_os_log.conversationKit;
      v16 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1BC4BB980;
      type metadata accessor for UIControlState(0);
      v18 = String.init<A>(reflecting:)();
      v20 = v19;
      *(v17 + 56) = v15;
      v21 = lazy protocol witness table accessor for type String and conformance String();
      *(v17 + 64) = v21;
      *(v17 + 32) = v18;
      *(v17 + 40) = v20;
      v22 = String.init<A>(reflecting:)();
      *(v17 + 96) = v15;
      *(v17 + 104) = v21;
      *(v17 + 72) = v22;
      *(v17 + 80) = v23;
      v108 = (v12)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo14UIControlStateV15ConversationKit32InCallControlButtonConfigurationVABSHACyHCg_GMd, &_sSDySo14UIControlStateV15ConversationKit32InCallControlButtonConfigurationVABSHACyHCg_GMR);
      v24 = String.init<A>(reflecting:)();
      *(v17 + 136) = v15;
      *(v17 + 144) = v21;
      *(v17 + 112) = v24;
      *(v17 + 120) = v25;
      os_log(_:dso:log:type:_:)("Unable to find colors for state %@ or %@ in %@", 46, 2, &dword_1BBC58000, v105, v16, v17);

      return;
    }

    v32 = v15;
    v99 = v12;
    v102 = v123;
    v106 = v124;
    v104 = v125;
    v28 = v126;
    v27 = v127;
    v103 = v128;
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v96 = static OS_os_log.conversationKit;
    HIDWORD(v95) = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1BC4BAA20;
    type metadata accessor for UIControlState(0);
    v34 = String.init<A>(reflecting:)();
    v36 = v35;
    v37 = v32;
    *(v33 + 56) = v32;
    v38 = lazy protocol witness table accessor for type String and conformance String();
    *(v33 + 64) = v38;
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    v15 = v37;
    v108 = v99();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo14UIControlStateV15ConversationKit32InCallControlButtonConfigurationVABSHACyHCg_GMd, &_sSDySo14UIControlStateV15ConversationKit32InCallControlButtonConfigurationVABSHACyHCg_GMR);
    v39 = String.init<A>(reflecting:)();
    *(v33 + 96) = v37;
    *(v33 + 104) = v38;
    *(v33 + 72) = v39;
    *(v33 + 80) = v40;
    os_log(_:dso:log:type:_:)("Unable to find colors for state %@ in %@. Falling back to .normal", 65, 2, &dword_1BBC58000, v96, HIDWORD(v95), v33);

    v31 = v102;
    v26 = v103;
    v29 = v104;
    v30 = v106;
  }

  else
  {
    v27 = v120;
    v26 = v121;
    v28 = v119;
    v29 = v118;
    v30 = v117;
    v31 = v116;
  }

  v41 = *(&v30 + 1);
  v107 = v30;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_isUsingVisualEffects) == 1)
  {
    if (v14)
    {
      v108 = v14;
      v109 = v31;
      v110 = v30;
      v111 = v29 & 1;
      v42 = v30;
      outlined copy of InCallControlButtonConfiguration.Regular?(v14, v31, v30, *(&v30 + 1), v29);
      InCallControlButton.update(with:)(&v108);

      outlined consume of InCallControlButtonConfiguration.DiscConfiguration(v42, v41, v29 & 1);
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      v100 = static OS_os_log.conversationKit;
      v97 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1BC4BAA20;
      v109 = v31;
      v110 = v107;
      v111 = v29;
      v112 = v28;
      v113 = v27;
      v114 = v26;
      v49 = OUTLINED_FUNCTION_10_61();
      outlined copy of InCallControlButtonConfiguration.Flat?(v49, v50, v51);
      v52 = String.init<A>(reflecting:)();
      v54 = v53;
      v55 = MEMORY[0x1E69E6158];
      *(v48 + 56) = MEMORY[0x1E69E6158];
      v56 = lazy protocol witness table accessor for type String and conformance String();
      *(v48 + 64) = v56;
      *(v48 + 32) = v52;
      *(v48 + 40) = v54;
      v108 = v0;
      type metadata accessor for InCallControlButton();
      v57 = v0;
      v58 = String.init<A>(reflecting:)();
      *(v48 + 96) = v55;
      *(v48 + 104) = v56;
      *(v48 + 72) = v58;
      *(v48 + 80) = v59;
      OUTLINED_FUNCTION_34_26("No regular configuration in %@ for button %@", 44, v60, &dword_1BBC58000, v61, v62, v63, v64, v92, v94, v95, v97, v100);
    }
  }

  else if (v28)
  {
    v43 = OUTLINED_FUNCTION_10_61();
    outlined copy of InCallControlButtonConfiguration.Flat?(v43, v44, v45);
    v46 = OUTLINED_FUNCTION_10_61();
    InCallControlButton.update(with:)(v46, v47);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v101 = static OS_os_log.conversationKit;
    v98 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1BC4BAA20;
    v109 = v31;
    v110 = v107;
    v111 = v29;
    v112 = 0;
    v113 = v27;
    v114 = v26;
    v66 = OUTLINED_FUNCTION_24_33();
    outlined copy of InCallControlButtonConfiguration.Regular?(v66, v67, v68, v69, v70);
    v71 = String.init<A>(reflecting:)();
    v73 = v72;
    *(v65 + 56) = v15;
    v74 = v15;
    v75 = lazy protocol witness table accessor for type String and conformance String();
    *(v65 + 64) = v75;
    *(v65 + 32) = v71;
    *(v65 + 40) = v73;
    v108 = v0;
    type metadata accessor for InCallControlButton();
    v76 = v0;
    v77 = String.init<A>(reflecting:)();
    *(v65 + 96) = v74;
    *(v65 + 104) = v75;
    *(v65 + 72) = v77;
    *(v65 + 80) = v78;
    OUTLINED_FUNCTION_34_26("No flat configuration in %@ for button %@", 41, v79, &dword_1BBC58000, v80, v81, v82, v83, v92, v94, v95, v98, v101);
  }

  InCallControlButton.hyphenateLabelText()();
  v84 = OUTLINED_FUNCTION_24_33();
  outlined consume of InCallControlButtonConfiguration.Regular?(v84, v85, v86, v87, v88);
  v89 = OUTLINED_FUNCTION_10_61();
  outlined consume of InCallControlButtonConfiguration.Flat?(v89, v90, v91);
}

id InCallControlButton.update(with:)(uint64_t *a1)
{
  v2 = v1;
  v4 = a1[2];
  v5 = a1[3];
  if (*(a1 + 32) == 1)
  {
    v6 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundEffectView;
    v7 = *(v1 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundEffectView);
    if (v7)
    {
      v8 = *(v1 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_style);
      v9 = v8 > 6;
      v10 = (1 << v8) & 0x46;
      v11 = v9 || v10 == 0;
      v12 = a1[2];
      if (v11)
      {
        v12 = a1[3];
      }

      v13 = v12;
      v14 = OUTLINED_FUNCTION_40_2();
      outlined copy of InCallControlButtonConfiguration.DiscConfiguration(v14, v15, 1);
      v16 = v7;
      [v16 setEffect_];
    }

    else
    {
      v22 = v4;
      v23 = v5;
    }

    v24 = *(v2 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundVibrancyView);
    if (v24)
    {
      [v24 setEffect_];
    }

    v25 = *(v2 + v6);
    if (v25)
    {
      [v25 setHidden_];
    }

    [*(v2 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundFlatView) setHidden_];
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for shared);
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      v26 = *(v2 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_glassBackgroundView);
      if (v26)
      {
        v27 = *(v2 + v6);
        if (v27)
        {
          v28 = *(v2 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_style) != 5;
          v29 = v26;
          [v27 setHidden_];
        }

        else
        {
          v32 = v26;
        }

        [v26 setHidden_];
      }
    }
  }

  else
  {
    v17 = *(v1 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundFlatView);
    [v17 setBackgroundColor_];
    [v17 setHidden_];
    v18 = *(v2 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundEffectView);
    if (v18)
    {
      v19 = v18;
      [v19 setHidden_];
      v20 = OUTLINED_FUNCTION_40_2();
      outlined consume of InCallControlButtonConfiguration.DiscConfiguration(v20, v21, 0);
    }

    else
    {
      v30 = OUTLINED_FUNCTION_40_2();
      outlined consume of InCallControlButtonConfiguration.DiscConfiguration(v30, v31, 0);
    }
  }

  if (*(v2 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_style) > 7uLL)
  {
    OUTLINED_FUNCTION_7_75();
    _StringGuts.grow(_:)(44);

    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_30_24();

    OUTLINED_FUNCTION_27_32();
    result = OUTLINED_FUNCTION_2_117("Fatal error", v37, v38, v39, v40, "ConversationKit/InCallControlButton.swift");
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_31_27();
  if (v11)
  {
    v33 = *(v2 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label);
    if (!v33)
    {
      goto LABEL_34;
    }

    v34 = a1[1];
  }

  else
  {
    v33 = *(v2 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label);
    if (!v33)
    {
      goto LABEL_34;
    }

    v34 = *a1;
  }

  [v33 setTextColor_];
LABEL_34:
  result = *(v2 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_imageView);
  if (result)
  {
    v36 = a1[1];

    return [result setTintColor_];
  }

  return result;
}

id InCallControlButton.update(with:)(uint64_t a1, uint64_t a2)
{
  [*(v2 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discBackgroundFlatView) setBackgroundColor_];
  v5 = *(v2 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_style);
  if (v5 > 7)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x1BFB20B10](0xD000000000000044, 0x80000001BC50A440);
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_30_24();

    OUTLINED_FUNCTION_27_32();
    result = OUTLINED_FUNCTION_2_117("Fatal error", v9, v10, v11, v12, "ConversationKit/InCallControlButton.swift");
    __break(1u);
  }

  else
  {
    if (((1 << v5) & 0x4F) != 0)
    {
      v6 = *(v2 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label);
      if (v6)
      {
        [v6 setTextColor_];
      }
    }

    else
    {
      v7 = *(v2 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label);
      if (v7)
      {
        [v7 setTextColor_];
      }
    }

    result = *(v2 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_imageView);
    if (result)
    {

      return [result setTintColor_];
    }
  }

  return result;
}

void *InCallControlButton.updateSymbol()()
{
  v1 = v0;
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x198))(&v33);
  v3 = *(&v33 + 1);
  if (*(&v33 + 1))
  {
    v4 = v33;
    v6 = *(&v34 + 1);
    v5 = v34;
    v27 = *(&v35 + 1);
    v7 = *(&v36 + 1);
    v8 = v36;
    v9 = BYTE1(v35);
    v10 = v35;
    v11 = [v1 isSelected];
    if (v9)
    {
      v12 = v11;
      *&v39 = v4;
      *(&v39 + 1) = v3;
      *&v29 = 0x6C6C69662ELL;
      *(&v29 + 1) = 0xE500000000000000;
      v13 = 0xE000000000000000;
      v28[0] = 0;
      v28[1] = 0xE000000000000000;
      v26 = lazy protocol witness table accessor for type String and conformance String();
      v25 = MEMORY[0x1E69E6158];
      OUTLINED_FUNCTION_3_0();
      v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v14, v15, v16, v17, 0, 1, v18, v18, v25, v26, v26, v26);
      v21 = v12 == 0;
      if (v12)
      {
        v22 = 0x6C6C69662ELL;
      }

      else
      {
        v22 = 0;
      }

      if (!v21)
      {
        v13 = 0xE500000000000000;
      }

      *&v39 = v19;
      *(&v39 + 1) = v20;

      MEMORY[0x1BFB20B10](v22, v13);

      v37 = v7;
      v38 = v6;
      v29 = v39;
      *&v30 = v5;
      *(&v30 + 1) = v6;
      LOBYTE(v31) = v10;
      BYTE1(v31) = 1;
      *(&v31 + 1) = v27;
      LOBYTE(v32) = v8;
      *(&v32 + 1) = v7;
      *&v40 = v5;
      *(&v40 + 1) = v6;
      LOBYTE(v41) = v10;
      BYTE1(v41) = 1;
      *(&v41 + 1) = v27;
      LOBYTE(v42) = v8;
      *(&v42 + 1) = v7;
      outlined init with copy of UIFontTextStyle(&v38, v28);
      outlined init with copy of Conversation?(&v37, v28, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
      outlined init with copy of SymbolImageDescription(&v29, v28);
      outlined destroy of SymbolImageDescription(&v39);
      v7 = *(&v32 + 1);
      v27 = *(&v31 + 1);
      v8 = v32;
      v23 = BYTE1(v31);
      v10 = v31;
      v6 = *(&v30 + 1);
      v5 = v30;
      v3 = *(&v29 + 1);
      v4 = v29;
    }

    else
    {
      v39 = v33;
      v40 = v34;
      v41 = v35;
      v42 = v36;
      outlined init with copy of SymbolImageDescription(&v39, &v29);
      v23 = 0;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    *&v29 = v4;
    *(&v29 + 1) = v3;
    *&v30 = v5;
    *(&v30 + 1) = v6;
    LOBYTE(v31) = v10 & 1;
    BYTE1(v31) = v23;
    *(&v31 + 1) = v27;
    LOBYTE(v32) = v8 & 1;
    *(&v32 + 1) = v7;
    v39 = v29;
    v40 = v30;
    v41 = v31;
    v42 = v32;
    v24 = static UIImage.symbolImage(for:)(&v39);
    outlined destroy of SymbolImageDescription(&v29);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x150))(v24);
    return outlined destroy of TapInteractionHandler?(&v33, &_s15ConversationKit22SymbolImageDescriptionVSgMd, &_s15ConversationKit22SymbolImageDescriptionVSgMR);
  }

  return result;
}

void InCallControlButton.hyphenateLabelText()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label);
  if (!v1)
  {
    return;
  }

  v21 = v1;
  if ([v21 lineBreakMode])
  {
    goto LABEL_3;
  }

  outlined bridged method (pb) of @objc RTTUtterance.text.getter(v21);
  if (!v2)
  {
    [v21 setAttributedText_];
LABEL_3:

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yXltGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yXltGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA940;
  v4 = *MEMORY[0x1E69DB688];
  *(inited + 32) = *MEMORY[0x1E69DB688];
  v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_paragraphStyle);
  *(inited + 40) = v5;
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type UIControlState and conformance UIControlState(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  v6 = v4;
  v7 = v5;
  v8 = Dictionary.init(dictionaryLiteral:)();
  v9 = [v21 textColor];
  if (v9)
  {
    v10 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_29_25(isUniquelyReferenced_nonNull_native);

    v8 = v22;
  }

  v12 = [v21 font];
  if (v12)
  {
    v13 = v12;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_29_25(v14);

    v8 = v22;
  }

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v8);
  v16 = v15;

  v17 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v18 = OUTLINED_FUNCTION_44_0();
  v20 = @nonobjc NSAttributedString.init(string:attributes:)(v18, v19, v16);
  [v21 setAttributedText_];
}

id InCallControlButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id InCallControlButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InCallControlButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t InCallControlButton.shape.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_style);
  if (v1 < 8)
  {
    return 0x201020001010101uLL >> (8 * v1);
  }

  OUTLINED_FUNCTION_7_75();
  _StringGuts.grow(_:)(48);

  OUTLINED_FUNCTION_18_43();
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_30_24();

  OUTLINED_FUNCTION_27_32();
  result = OUTLINED_FUNCTION_2_117("Fatal error", v3, v4, v5, v6, "ConversationKit/InCallControlButton.swift");
  __break(1u);
  return result;
}

unint64_t CNKInCallControlButtonStyle.shape.getter(unint64_t a1)
{
  if (a1 < 8)
  {
    return 0x201020001010101uLL >> (8 * a1);
  }

  OUTLINED_FUNCTION_7_75();
  _StringGuts.grow(_:)(48);

  OUTLINED_FUNCTION_18_43();
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_30_24();

  OUTLINED_FUNCTION_27_32();
  result = OUTLINED_FUNCTION_2_117("Fatal error", v2, v3, v4, v5, "ConversationKit/InCallControlButton.swift");
  __break(1u);
  return result;
}

void (*protocol witness for Control.cnkContentAlpha.modify in conformance InCallControlButton(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1F0))();
  return protocol witness for Control.cnkContentAlpha.modify in conformance BaseButton;
}

UIContextMenuConfiguration_optional __swiftcall InCallControlButton.contextMenuInteraction(_:configurationForMenuAtLocation:)(UIContextMenuInteraction _, CGPoint configurationForMenuAtLocation)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x1F8);
  v4 = v2;
  if (v3())
  {
    v6 = v5;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIContextMenuConfiguration, 0x1E69DC8D8);
    OUTLINED_FUNCTION_24();
    v7 = swift_allocObject();
    *(v7 + 24) = v6;
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_24();
    v8 = swift_allocObject();
    *(v8 + 24) = &protocol witness table for InCallControlButton;
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_24();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)();
    v11 = v10;
    [(objc_class *)v10 setPreferredMenuAlignment:0];
    swift_unknownObjectRelease();
  }

  else
  {

    v11 = 0;
  }

  v13 = v11;
  result.value.super.isa = v13;
  result.is_nil = v12;
  return result;
}

void InCallControlButton.contextMenuInteraction(_:willDisplayMenuFor:animator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v16.receiver = v3;
  v16.super_class = type metadata accessor for InCallControlButton();
  objc_msgSendSuper2(&v16, sel_contextMenuInteraction_willDisplayMenuForConfiguration_animator_, a1, a2, a3);
  v14 = [objc_opt_self() defaultCenter];
  static Notification.contextMenuWillPresent(target:)(v3);
  isa = Notification._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v13, v7);
  [v14 postNotification_];
}

uint64_t InCallControlButton.contextMenuInteraction(_:willEndFor:animator:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for InCallControlButton();
  objc_msgSendSuper2(&v17, sel_contextMenuInteraction_willEndForConfiguration_animator_, a1, a2, a3);
  v15 = [objc_opt_self() defaultCenter];
  static Notification.contextMenuDidDismiss(target:)(v4);
  NSNotificationCenter.post(_:afterAnimatorCompletes:)(v14, a3);

  return (*(v10 + 8))(v14, v8);
}

void @objc InCallControlButton.contextMenuInteraction(_:willDisplayMenuFor:animator:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  a6(v10, v11, a5);

  swift_unknownObjectRelease();
}

UIPointerRegion_optional __swiftcall InCallControlButton.pointerInteraction(_:regionFor:defaultRegion:)(UIPointerInteraction _, UIPointerRegionRequest regionFor, UIPointerRegion defaultRegion)
{
  v3 = [(objc_class *)_.super.isa view];
  if (v3)
  {
    v5 = v3;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPointerRegion, 0x1E69DCDC0);
    [v5 bounds];
    v6 = UIPointerRegion.init(rect:identifier:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  result.value.super.isa = v7;
  result.is_nil = v4;
  return result;
}

UIPointerStyle_optional __swiftcall InCallControlButton.pointerInteraction(_:styleFor:)(UIPointerInteraction _, UIPointerRegion styleFor)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit14UIPointerShapeOSgMd, &_s5UIKit14UIPointerShapeOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for UIPointerEffect();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = (v11 - v10);
  v13 = [(objc_class *)_.super.isa view];
  if (v13)
  {
    v15 = v13;
    v16 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPointerStyle, 0x1E69DCDD0);
    *v12 = v16;
    (*(v8 + 104))(v12, *MEMORY[0x1E69DBF70], v6);
    v17 = type metadata accessor for UIPointerShape();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v17);
    v18 = v16;
    OUTLINED_FUNCTION_38_2();
    v19 = UIPointerStyle.init(effect:shape:)();
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  result.value.super.super.isa = v20;
  result.is_nil = v14;
  return result;
}

uint64_t InCallControlButtonConfiguration.Regular.disc.getter()
{
  v1 = *(v0 + 32);
  v2 = OUTLINED_FUNCTION_44_0();
  outlined copy of InCallControlButtonConfiguration.DiscConfiguration(v2, v3, v1);
  return OUTLINED_FUNCTION_44_0();
}

void InCallControlButtonConfiguration.Regular.disc.setter(uint64_t a1, uint64_t a2, char a3)
{
  outlined consume of InCallControlButtonConfiguration.DiscConfiguration(*(v3 + 16), *(v3 + 24), *(v3 + 32));
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
}

uint64_t InCallControlButtonConfiguration.flat.getter()
{
  v1 = *(v0 + 56);
  v2 = OUTLINED_FUNCTION_44_0();
  outlined copy of InCallControlButtonConfiguration.Flat?(v2, v3, v1);
  return OUTLINED_FUNCTION_44_0();
}

void InCallControlButtonConfiguration.flat.setter(void *a1, void *a2, void *a3)
{
  outlined consume of InCallControlButtonConfiguration.Flat?(v3[5], v3[6], v3[7]);
  v3[5] = a1;
  v3[6] = a2;
  v3[7] = a3;
}

double InCallControlButtonConfiguration.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  return result;
}

void outlined bridged method (mbnn) of @objc NSObject.accessibilityValue.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0](a1);

  [a3 setAccessibilityValue_];
}

id outlined copy of InCallControlButtonConfiguration.DiscConfiguration(void *a1, void *a2, char a3)
{
  if (a3)
  {
    v5 = a1;
    a1 = a2;
    v3 = vars8;
  }

  return a1;
}

void outlined consume of InCallControlButtonConfiguration.DiscConfiguration(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t outlined assign with take of InCallControlButtonConfiguration.Regular?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32InCallControlButtonConfigurationV7RegularVSgMd, &_s15ConversationKit32InCallControlButtonConfigurationV7RegularVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id outlined copy of InCallControlButtonConfiguration.Flat?(id result, void *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2;

    return a3;
  }

  return result;
}

void outlined consume of InCallControlButtonConfiguration.Flat?(void *a1, void *a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t dispatch thunk of InCallControlButton.symbolDescription.setter(_OWORD *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1A0);
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v4 = a1[3];
  v6[2] = a1[2];
  v6[3] = v4;
  return v2(v6);
}

uint64_t getEnumTagSinglePayload for InCallControlButtonConfiguration(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for InCallControlButtonConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InCallControlButtonConfiguration.DiscConfiguration(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for InCallControlButtonConfiguration.DiscConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InCallControlButtonConfiguration.Regular(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for InCallControlButtonConfiguration.Regular(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of UIFontTextStyle(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIFontTextStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void outlined consume of SymbolImageDescription?(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a2)
  {
  }
}

uint64_t lazy protocol witness table accessor for type UIControlState and conformance UIControlState(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id outlined copy of InCallControlButtonConfiguration.Regular?(id result, void *a2, void *a3, void *a4, char a5)
{
  if (result)
  {
    v9 = result;
    v10 = a2;

    return outlined copy of InCallControlButtonConfiguration.DiscConfiguration(a3, a4, a5 & 1);
  }

  return result;
}

void outlined consume of InCallControlButtonConfiguration.Regular?(void *a1, void *a2, void *a3, void *a4, char a5)
{
  if (a1)
  {

    outlined consume of InCallControlButtonConfiguration.DiscConfiguration(a3, a4, a5 & 1);
  }
}

uint64_t partial apply for closure #1 in InCallControlButton.updateImage()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in InCallControlButton.updateImage()(a1, v4, v5, v7, v6);
}

uint64_t static RadarReporter.Strings.description.getter()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(307);
  MEMORY[0x1BFB20B10](0xD000000000000128, 0x80000001BC50A850);
  UUID.init()();
  v4 = UUID.uuidString.getter();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x1BFB20B10](v4, v6);

  MEMORY[0x1BFB20B10](0x706172676D656D2ELL, 0xE900000000000068);
  return v8[0];
}

BOOL RadarReporter.Reproducibility.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RadarReporter.Reproducibility.init(rawValue:), v3);
  OUTLINED_FUNCTION_28_0();

  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RadarReporter.Reproducibility@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = RadarReporter.Reproducibility.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

BOOL RadarReporter.Classification.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RadarReporter.Classification.init(rawValue:), v3);
  OUTLINED_FUNCTION_28_0();

  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RadarReporter.Classification@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = RadarReporter.Classification.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

BOOL RadarReporter.Component.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RadarReporter.Component.init(rawValue:), v3);
  OUTLINED_FUNCTION_28_0();

  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RadarReporter.Component@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = RadarReporter.Component.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RadarReporter.Component@<X0>(void *a1@<X8>)
{
  result = RadarReporter.Component.rawValue.getter();
  *a1 = 0xD00000000000001BLL;
  a1[1] = v3;
  return result;
}

void RadarReporter.Info.description.setter()
{
  OUTLINED_FUNCTION_55();

  *v1 = v2;
  v1[1] = v0;
}

void RadarReporter.Info.shortDescription.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t protocol witness for RadarReporting.shortDescription.getter in conformance RadarReporter.Info()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RadarReporter.reportingEnabled.getter()
{
  type metadata accessor for Defaults();
  swift_allocObject();
  v0 = *Defaults.init()();
  v1 = (*(v0 + 1120))();

  return v1 & 1;
}

uint64_t RadarReporter.title.getter()
{
  v1 = *v0;

  return v1;
}

void RadarReporter.title.setter()
{
  OUTLINED_FUNCTION_55();

  *v1 = v2;
  v1[1] = v0;
}

uint64_t RadarReporter.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void RadarReporter.description.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t RadarReporter.requestUserPermission.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RadarReporter.init(title:description:reproducibility:component:classification:requestUserPermission:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = 0;
  return result;
}

void RadarReporter.addSeperatorIfNeeded()()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    MEMORY[0x1BFB20B10](*(v0 + 16), *(v0 + 24));

    *(v0 + 16) = 0xD00000000000002FLL;
    *(v0 + 24) = 0x80000001BC50AA20;
    *(v0 + 48) = 1;
  }
}

double RadarReporter.add(info:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  MEMORY[0x1BFB20B10](v5);

  MEMORY[0x1BFB20B10](32, 0xE100000000000000);

  RadarReporter.addSeperatorIfNeeded()();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v6;
  MEMORY[0x1BFB20B10](10, 0xE100000000000000);
  MEMORY[0x1BFB20B10](*(v1 + 16), *(v1 + 24));

  *(v1 + 16) = v12;
  *(v1 + 24) = v13;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 24))(v7, v8);
  if (v11)
  {
    MEMORY[0x1BFB20B10](v9);

    MEMORY[0x1BFB20B10](10, 0xE100000000000000);
  }

  return result;
}

uint64_t RadarReporter.requestInternalUserToReportToRadar()()
{
  OUTLINED_FUNCTION_24_0();
  v1[3] = v0;
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  OUTLINED_FUNCTION_28_0();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x1EEE6DFA0](RadarReporter.requestInternalUserToReportToRadar(), v3, v2);
}

{
  v1 = [objc_opt_self() sharedInstance];
  if (v1 && (v2 = v1, v3 = [v1 isInternalInstall], v2, (v3 & 1) != 0))
  {
    type metadata accessor for Defaults();
    swift_allocObject();
    v4 = *Defaults.init()();
    v5 = (*(v4 + 1120))();

    if (v5)
    {
      v14 = (*(v0[3] + 32) + **(v0[3] + 32));
      v6 = swift_task_alloc();
      v0[7] = v6;
      *v6 = v0;
      v6[1] = RadarReporter.requestInternalUserToReportToRadar();

      return v14();
    }

    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.conversationKit);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v12, v13, "RadarReporter: Reporting is disabled, can be enabled in internal settings ");
      OUTLINED_FUNCTION_26();
    }
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

{
  v1 = *(v0 + 72);

  if (v1 == 1)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.conversationKit);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BBC58000, v3, v4, "RadarReporter: user gave permission to create radar", v5, 2u);
      OUTLINED_FUNCTION_26();
    }

    RadarReporter.createRadar()();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.conversationKit);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v9, v10, "RadarReporter: user declined to create a radar");
      OUTLINED_FUNCTION_26();
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

{
  v17 = v0;

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationKit);
  v3 = OUTLINED_FUNCTION_28_0();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1BBC58000, v4, v5, "RadarReporter: error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFB23DF0](v9, -1, -1);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t RadarReporter.requestInternalUserToReportToRadar()(char a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v4 + 64) = v1;

  if (v1)
  {
    v7 = *(v4 + 40);
    v8 = *(v4 + 48);
    v9 = RadarReporter.requestInternalUserToReportToRadar();
  }

  else
  {
    *(v4 + 72) = a1 & 1;
    v7 = *(v4 + 40);
    v8 = *(v4 + 48);
    v9 = RadarReporter.requestInternalUserToReportToRadar();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t RadarReporter.createRadar()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v47[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47[-v6];
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47[-v13];
  v56 = type metadata accessor for URLComponents();
  v15 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v17 = &v47[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  URLComponents.init()();
  URLComponents.scheme.setter();
  RadarReporter.queryItems()();
  URLComponents.queryItems.setter();
  MEMORY[0x1BFB19BD0](7824750, 0xE300000000000000);
  URLComponents.url.getter();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    outlined destroy of URL?(v7);
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.conversationKit);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v56;
    if (v21)
    {
      v23 = swift_slowAlloc();
      v55 = v4;
      v24 = v23;
      v25 = v15;
      v26 = swift_slowAlloc();
      v58 = v26;
      *v24 = 136315138;
      swift_beginAccess();
      lazy protocol witness table accessor for type URLComponents and conformance URLComponents(&lazy protocol witness table cache variable for type URLComponents and conformance URLComponents, MEMORY[0x1E69681B8], MEMORY[0x1E69681D0]);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v58);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1BBC58000, v19, v20, "RadarReporter: Failed to create url for radar using components %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v30 = v26;
      v15 = v25;
      MEMORY[0x1BFB23DF0](v30, -1, -1);
      v31 = v24;
      v4 = v55;
      MEMORY[0x1BFB23DF0](v31, -1, -1);
    }

    URL.init(string:)();
    RadarReporter.open(url:)(v4);
    outlined destroy of URL?(v4);
  }

  else
  {
    v55 = v4;
    (*(v9 + 32))(v14, v7, v8);
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v54 = v15;
    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.conversationKit);
    v53 = *(v9 + 16);
    v53(v11, v14, v8);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v49 = v35;
      v51 = swift_slowAlloc();
      v57[0] = v51;
      *v35 = 136315138;
      lazy protocol witness table accessor for type URLComponents and conformance URLComponents(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v48 = v34;
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v1;
      v38 = v37;
      v50 = v14;
      v39 = *(v9 + 8);
      v39(v11, v8);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v57);

      v41 = v49;
      *(v49 + 1) = v40;
      v42 = v41;
      _os_log_impl(&dword_1BBC58000, v33, v48, "RadarReporter: URL: %s", v41, 0xCu);
      v43 = v51;
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x1BFB23DF0](v43, -1, -1);
      MEMORY[0x1BFB23DF0](v42, -1, -1);

      v44 = v39;
      v14 = v50;
    }

    else
    {

      v44 = *(v9 + 8);
      v44(v11, v8);
    }

    v45 = v55;
    v53(v55, v14, v8);
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v8);
    RadarReporter.open(url:)(v45);
    outlined destroy of URL?(v45);
    v44(v14, v8);
    v22 = v56;
    v15 = v54;
  }

  return (*(v15 + 8))(v17, v22);
}

uint64_t RadarReporter.queryItems()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
  type metadata accessor for URLQueryItem();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BC4D4E70;
  MEMORY[0x1BFB20B10](*v0, v0[1]);
  URLQueryItem.init(name:value:)();

  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  return v1;
}

void RadarReporter.open(url:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = [objc_opt_self() defaultWorkspace];
  if (v5)
  {
    v6 = v5;
    outlined init with copy of URL?(a1, v4);
    v7 = type metadata accessor for URL();
    v9 = 0;
    if (__swift_getEnumTagSinglePayload(v4, 1, v7) != 1)
    {
      URL._bridgeToObjectiveC()(v8);
      v9 = v10;
      (*(*(v7 - 8) + 8))(v4, v7);
    }

    v11 = Dictionary.init(dictionaryLiteral:)();
    outlined bridged method (mnbnn) of @objc LSApplicationWorkspace.openSensitiveURL(_:withOptions:)(v9, v11, v6);
  }

  else
  {
    __break(1u);
  }
}

double static RadarReporter.createRadarReporterUsingAlert(title:description:reproducibility:component:classification:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = &async function pointer to implicit closure #1 in static RadarReporter.createRadarReporterUsingAlert(title:description:reproducibility:component:classification:);
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;

  return result;
}

uint64_t implicit closure #1 in static RadarReporter.createRadarReporterUsingAlert(title:description:reproducibility:component:classification:)()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = implicit closure #1 in static RadarReporter.createRadarReporterUsingAlert(title:description:reproducibility:component:classification:);

  return static RadarReporter.showAlert()();
}

uint64_t implicit closure #1 in static RadarReporter.createRadarReporterUsingAlert(title:description:reproducibility:component:classification:)(char a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 40) = v1;

  if (v1)
  {
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:);
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v10;
    v9 = implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

uint64_t static RadarReporter.showAlert()()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[4] = v2;
  v0[5] = v1;

  return MEMORY[0x1EEE6DFA0](static RadarReporter.showAlert(), v2, v1);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = static MainActor.shared.getter();
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = static RadarReporter.showAlert();
  v3 = MEMORY[0x1E69E85E0];
  v4 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 72, v1, v3, 0x72656C41776F6873, 0xEB00000000292874, closure #1 in static RadarReporter.showAlert(), 0, v4);
}

{
  OUTLINED_FUNCTION_24_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;
  v2[8] = v0;

  if (v0)
  {
    v4 = v2[4];
    v5 = v2[5];
    v6 = static RadarReporter.showAlert();
  }

  else
  {

    v4 = v2[4];
    v5 = v2[5];
    v6 = static RadarReporter.showAlert();
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_0_23();

  return v0();
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_0_23();

  return v0(0);
}

void closure #1 in static RadarReporter.showAlert()(uint64_t a1)
{
  v43 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v39 = *(v1 - 8);
  v40 = v1;
  v42 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v37 = &v34 - v2;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController, 0x1E69DC650);
  v3 = objc_opt_self();
  v4 = [v3 conversationKit];
  v45._object = 0xE000000000000000;
  v5._object = 0x80000001BC50A980;
  v5._countAndFlagsBits = 0xD000000000000019;
  v6.value._countAndFlagsBits = 0x61737265766E6F43;
  v6.value._object = 0xEF74694B6E6F6974;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v45._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v45);

  v36 = v3;
  v9 = [v3 &off_1E7FE9588];
  v46._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD00000000000001BLL;
  v10._object = 0x80000001BC50A9A0;
  v11.value._countAndFlagsBits = 0x61737265766E6F43;
  v11.value._object = 0xEF74694B6E6F6974;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v46._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v46);

  v38 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v8._countAndFlagsBits, v8._object, v13._countAndFlagsBits, v13._object, 1);
  v41 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction, 0x1E69DC648);
  v14 = [v3 conversationKit];
  v47._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD00000000000001ALL;
  v15._object = 0x80000001BC50A9C0;
  v16.value._countAndFlagsBits = 0x61737265766E6F43;
  v16.value._object = 0xEF74694B6E6F6974;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v47._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v47);

  v18 = v39;
  v19 = v40;
  v35 = *(v39 + 16);
  v20 = v37;
  v35(v37, v43, v40);
  v21 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v22 = swift_allocObject();
  v39 = *(v18 + 32);
  (v39)(v22 + v21, v20, v19);
  v23 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v24 = [v36 conversationKit];
  v48._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0x4C45434E4143;
  v25._object = 0xE600000000000000;
  v26.value._countAndFlagsBits = 0x61737265766E6F43;
  v26.value._object = 0xEF74694B6E6F6974;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v48._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v48);

  v35(v20, v43, v19);
  v28 = v23;
  v29 = swift_allocObject();
  (v39)(v29 + v21, v20, v19);
  v30 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v31 = v38;
  [v38 addAction_];
  [v31 addAction_];
  UIAlertController.show()();
  if (v32)
  {
    v44 = v32;
    v33 = v32;
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type RadarReporter.Reproducibility and conformance RadarReporter.Reproducibility()
{
  result = lazy protocol witness table cache variable for type RadarReporter.Reproducibility and conformance RadarReporter.Reproducibility;
  if (!lazy protocol witness table cache variable for type RadarReporter.Reproducibility and conformance RadarReporter.Reproducibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RadarReporter.Reproducibility and conformance RadarReporter.Reproducibility);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RadarReporter.Classification and conformance RadarReporter.Classification()
{
  result = lazy protocol witness table cache variable for type RadarReporter.Classification and conformance RadarReporter.Classification;
  if (!lazy protocol witness table cache variable for type RadarReporter.Classification and conformance RadarReporter.Classification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RadarReporter.Classification and conformance RadarReporter.Classification);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RadarReporter.Component and conformance RadarReporter.Component()
{
  result = lazy protocol witness table cache variable for type RadarReporter.Component and conformance RadarReporter.Component;
  if (!lazy protocol witness table cache variable for type RadarReporter.Component and conformance RadarReporter.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RadarReporter.Component and conformance RadarReporter.Component);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for RadarReporter.Info(uint64_t a1)
{
  result = lazy protocol witness table accessor for type RadarReporter.Info and conformance RadarReporter.Info();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type RadarReporter.Info and conformance RadarReporter.Info()
{
  result = lazy protocol witness table cache variable for type RadarReporter.Info and conformance RadarReporter.Info;
  if (!lazy protocol witness table cache variable for type RadarReporter.Info and conformance RadarReporter.Info)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RadarReporter.Info and conformance RadarReporter.Info);
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

uint64_t getEnumTagSinglePayload for RadarReporter(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for RadarReporter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RadarReporter.Reproducibility(_BYTE *result, int a2, int a3)
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

uint64_t lazy protocol witness table accessor for type URLComponents and conformance URLComponents(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id outlined bridged method (mnbnn) of @objc LSApplicationWorkspace.openSensitiveURL(_:withOptions:)(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [a3 openSensitiveURL:a1 withOptions:isa];

  return v6;
}

uint64_t key path getter for SystemApertureContainerView.content : SystemApertureContainerView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x58))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for SystemApertureContainerView.content : SystemApertureContainerView(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x60);
  v5 = *a1;
  return v4(v2, v3);
}

id SystemApertureContainerView.content.didset(void *a1)
{
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v2 = OBJC_IVAR____TtC15ConversationKit27SystemApertureContainerView_content;
  swift_beginAccess();
  if (*&v1[v2])
  {
    [v1 addSubview_];
  }

  return [v1 setNeedsLayout];
}

id SystemApertureContainerView.content.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit27SystemApertureContainerView_content);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void SystemApertureContainerView.content.setter(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC15ConversationKit27SystemApertureContainerView_content;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
  v7 = a1;
  SystemApertureContainerView.content.didset(v6);
}

void (*SystemApertureContainerView.content.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *(v3 + 5) = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit27SystemApertureContainerView_content;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v3 + 24) = v5;
  v6 = v5;
  return SystemApertureContainerView.content.modify;
}

void SystemApertureContainerView.content.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  if (a2)
  {
    v4 = *(*a1 + 24);
    v5 = OUTLINED_FUNCTION_1_5();
    SystemApertureContainerView.content.setter(v5, v6);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_1_5();
    SystemApertureContainerView.content.setter(v7, v8);
  }

  free(v2);
}

id SystemApertureContainerView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SystemApertureContainerView.init()()
{
  v1 = &v0[OBJC_IVAR____TtC15ConversationKit27SystemApertureContainerView_content];
  v2 = type metadata accessor for SystemApertureContainerView();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

id SystemApertureContainerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SystemApertureContainerView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit27SystemApertureContainerView_content);
  *v1 = 0;
  v1[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void SystemApertureContainerView.preferredLayoutMargins.getter(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5_18();
  v3 = (*(v2 + 88))();
  if (v3)
  {
    v5 = v3;
    v6 = v4;
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v13, ObjectType, v6);
    v11 = v13[1];
    v12 = v13[0];
    v8 = v14;

    v10 = v11;
    v9 = v12;
  }

  else
  {
    v9 = 0uLL;
    v8 = 2;
    v10 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v8;
}

Swift::Void __swiftcall SystemApertureContainerView.layoutSubviews()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SystemApertureContainerView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  OUTLINED_FUNCTION_5_18();
  v2 = (*(v1 + 88))();
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame_];
  }
}

CGSize __swiftcall SystemApertureContainerView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  OUTLINED_FUNCTION_5_18();
  v5 = (*(v4 + 88))();
  if (v5)
  {
    v6 = v5;
    v7 = OUTLINED_FUNCTION_3_109();
    [v8 v9];
    OUTLINED_FUNCTION_0_137();
  }

  else
  {
    v16 = type metadata accessor for SystemApertureContainerView();
    v10 = OUTLINED_FUNCTION_3_109();
    objc_msgSendSuper2(v11, v12, v10, v1, v16);
    OUTLINED_FUNCTION_0_137();
  }

  v13 = height;
  v14 = width;
  result.height = v14;
  result.width = v13;
  return result;
}

double SystemApertureContainerView.intrinsicContentSize.getter()
{
  OUTLINED_FUNCTION_5_18();
  v3 = (*(v2 + 88))();
  if (v3)
  {
    v4 = v3;
    [v3 intrinsicContentSize];
    OUTLINED_FUNCTION_0_137();
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = type metadata accessor for SystemApertureContainerView();
    objc_msgSendSuper2(&v6, sel_intrinsicContentSize);
    OUTLINED_FUNCTION_0_137();
  }

  return v1;
}

double SystemApertureContainerView.sizeThatFits(_:for:)(uint64_t a1, double a2, double a3)
{
  OUTLINED_FUNCTION_5_18();
  v6 = (*(v5 + 88))();
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  if (([v6 respondsToSelector_] & 1) == 0)
  {

LABEL_5:
    v11 = OUTLINED_FUNCTION_3_109();
    [v12 v13];
    OUTLINED_FUNCTION_0_137();
    return a3;
  }

  v8 = OUTLINED_FUNCTION_3_109();
  [v9 v10];
  OUTLINED_FUNCTION_0_137();

  return a3;
}

void SystemApertureContainerView.updateContentIfNeeded(_:)(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_18();
  v5 = (*(v4 + 88))();
  if (v5)
  {
    v7 = v6;
    v20 = v5;
    ObjectType = swift_getObjectType();
    if ((*(a2 + 16))(v20, v7, ObjectType, a2))
    {
      OUTLINED_FUNCTION_6_9();
      v10 = *(v9 + 96);
      v11 = a1;
      v12 = OUTLINED_FUNCTION_1_5();
      v10(v12);
    }

    else
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, &static Logger.conversationControls);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1BBC58000, v17, v18, "ignoring system aperture accessory view content update", v19, 2u);
        MEMORY[0x1BFB23DF0](v19, -1, -1);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_9();
    v21 = *(v13 + 96);
    v14 = a1;
    v15 = OUTLINED_FUNCTION_1_5();

    v21(v15);
  }
}

void *SystemApertureContainerView.accessibilityLabel.getter()
{
  OUTLINED_FUNCTION_5_18();
  result = (*(v0 + 88))();
  if (result)
  {
    return outlined bridged method (ob) of @objc NSObject.accessibilityLabel.getter(result);
  }

  return result;
}

void SystemApertureContainerView.accessibilityLabel.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_18();
  v4 = (*(v3 + 88))();
  if (v4)
  {
    v5 = v4;
    if (a2)
    {
      v6 = OUTLINED_FUNCTION_1_5();
      v7 = MEMORY[0x1BFB209B0](v6);
    }

    else
    {
      v7 = 0;
    }

    [v5 setAccessibilityLabel_];
  }

  else
  {
  }
}

id SystemApertureContainerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SystemApertureContainerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemApertureContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double protocol witness for SystemApertureAccessoryView.preferredLayoutMargins.getter in conformance SystemApertureContainerView@<D0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t outlined bridged method (ob) of @objc NSObject.accessibilityLabel.getter(void *a1)
{
  v2 = [a1 accessibilityLabel];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id SystemApertureIncomingCallLeadingView.init(avatar:)(void *a1)
{
  swift_getObjectType();
  v3 = a1;
  v4 = [v3 view];
  *&v1[OBJC_IVAR____TtC15ConversationKit37SystemApertureIncomingCallLeadingView_leadingView] = v4;
  v1[OBJC_IVAR____TtC15ConversationKit37SystemApertureIncomingCallLeadingView_isLeadingViewBrandedCallIcon] = 0;
  v22.receiver = v1;
  v22.super_class = type metadata accessor for SystemApertureIncomingCallLeadingView();
  v5 = OUTLINED_FUNCTION_0_3(&v22, sel_initWithFrame_);
  v6 = [v3 view];

  [v5 addSubview_];
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_7_12(&one-time initialization token for conversationKit);
  }

  OUTLINED_FUNCTION_4_102();
  v10 = OUTLINED_FUNCTION_3_110(v7, 0x80000001BC50AB00, v8, v9, v23);
  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v10, v11, v5);

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, &static Logger.conversationControls);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136446210;
    v17 = _typeName(_:qualified:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v21);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1BBC58000, v13, v14, "[SystemAperture] %{public}s created", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  [v5 setNeedsLayout];
  return v5;
}

char *SystemApertureIncomingCallLeadingView.init(leadingViewType:)(void *a1, uint64_t a2, char a3)
{
  swift_getObjectType();
  v6 = OBJC_IVAR____TtC15ConversationKit37SystemApertureIncomingCallLeadingView_isLeadingViewBrandedCallIcon;
  v3[OBJC_IVAR____TtC15ConversationKit37SystemApertureIncomingCallLeadingView_isLeadingViewBrandedCallIcon] = 0;
  if (a3)
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
    *&v3[OBJC_IVAR____TtC15ConversationKit37SystemApertureIncomingCallLeadingView_leadingView] = v7;
    v3[v6] = 1;
  }

  else
  {
    *&v3[OBJC_IVAR____TtC15ConversationKit37SystemApertureIncomingCallLeadingView_leadingView] = a1;
    v8 = a1;
  }

  v30.receiver = v3;
  v30.super_class = type metadata accessor for SystemApertureIncomingCallLeadingView();
  v9 = OUTLINED_FUNCTION_0_3(&v30, sel_initWithFrame_);
  v10 = OBJC_IVAR____TtC15ConversationKit37SystemApertureIncomingCallLeadingView_leadingView;
  v11 = *&v9[OBJC_IVAR____TtC15ConversationKit37SystemApertureIncomingCallLeadingView_leadingView];
  v12 = v9;
  [v12 addSubview_];
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_7_12(&one-time initialization token for conversationKit);
  }

  OUTLINED_FUNCTION_4_102();
  v16 = OUTLINED_FUNCTION_3_110(v13, 0x80000001BC50AB00, v14, v15, v31);
  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v16, v17, v12);
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, &static Logger.conversationControls);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = a1;
    v23 = swift_slowAlloc();
    v29 = v23;
    *v21 = 136446210;
    v24 = _typeName(_:qualified:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v29);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_1BBC58000, v19, v20, "[SystemAperture] %{public}s created", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    a1 = v22;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v27 = [*&v9[v10] layer];
  [v27 setAllowsHitTesting_];

  [*&v9[v10] setUserInteractionEnabled_];
  [v12 setNeedsLayout];
  outlined consume of PreCallControlsContext(a1);

  return v12;
}

id SystemApertureIncomingCallLeadingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SystemApertureIncomingCallLeadingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall SystemApertureIncomingCallLeadingView.layoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for SystemApertureIncomingCallLeadingView();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC15ConversationKit37SystemApertureIncomingCallLeadingView_isLeadingViewBrandedCallIcon;
  if (v0[OBJC_IVAR____TtC15ConversationKit37SystemApertureIncomingCallLeadingView_isLeadingViewBrandedCallIcon])
  {
    v2 = 10.0;
  }

  else
  {
    v2 = 0.0;
  }

  if (v0[OBJC_IVAR____TtC15ConversationKit37SystemApertureIncomingCallLeadingView_isLeadingViewBrandedCallIcon])
  {
    v3 = 23.0;
  }

  else
  {
    v3 = 25.0;
  }

  [v0 bounds];
  Height = CGRectGetHeight(v9);
  v5 = OBJC_IVAR____TtC15ConversationKit37SystemApertureIncomingCallLeadingView_leadingView;
  [*&v0[OBJC_IVAR____TtC15ConversationKit37SystemApertureIncomingCallLeadingView_leadingView] setFrame_];
  if (v0[v1] == 1)
  {
    v6 = [*&v0[v5] layer];
    [v6 setCornerRadius_];

    v7 = [*&v0[v5] layer];
    [v7 setMasksToBounds_];
  }
}

CGSize __swiftcall SystemApertureIncomingCallLeadingView.sizeThatFits(_:)(CGSize a1)
{
  v2 = 25.0;
  v3 = 23.0;
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit37SystemApertureIncomingCallLeadingView_isLeadingViewBrandedCallIcon))
  {
    v2 = 33.0;
  }

  else
  {
    v3 = 25.0;
  }

  result.height = v3;
  result.width = v2;
  return result;
}

double SystemApertureIncomingCallLeadingView.preferredLayoutMargins.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

id SystemApertureIncomingCallLeadingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemApertureIncomingCallLeadingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double protocol witness for SystemApertureAccessoryView.preferredLayoutMargins.getter in conformance SystemApertureIncomingCallLeadingView@<D0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

void *ConversationControlsSecondaryPillButtonProvider.buttonTextColor.getter()
{
  v1 = *(v0 + 168);
  v2 = v1;
  return v1;
}

id ConversationControlsSecondaryPillButtonProvider.init(controlsManager:context:buttonTextColor:)(void *a1, uint64_t a2, void *a3)
{
  *(v3 + 160) = a1;
  *(v3 + 168) = a3;
  v6 = ControlsButtonProvider.init(context:shape:)(a2, 2);
  v7 = objc_opt_self();
  v8 = a3;
  v9 = a1;

  ControlsButtonProvider.backgroundStyle.setter([v7 whiteColor], 0, 64);
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    ControlsButtonProvider.titleFont.setter(result, v11);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ConversationControlsSecondaryPillButtonProvider.buttonConfiguration.getter(uint64_t x8_0@<X8>)
{
  ControlsButtonProvider.defaultButtonConfiguration.getter(x8_0);
  v3 = *(v2 + 168);
  if (!v3)
  {
    v4 = [objc_opt_self() blackColor];
  }

  v5 = v3;
  UIButton.Configuration.baseForegroundColor.setter();
  UIButton.Configuration.contentInsets.setter();
  UIButton.Configuration.titleLineBreakMode.setter();
  swift_beginAccess();
  if (*(v2 + 104))
  {
    v6 = [objc_opt_self() preferredFontForTextStyle_];
    v7 = [objc_opt_self() configurationWithFont:v6 scale:2];

    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  }
}

uint64_t ConversationControlsSecondaryPillButtonProvider.deinit()
{
  v0 = ControlsButtonProvider.deinit();

  return v0;
}

uint64_t ConversationControlsSecondaryPillButtonProvider.__deallocating_deinit()
{
  ConversationControlsSecondaryPillButtonProvider.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall CallScreening.EnteringAnsweringStateService.enter(with:)(Swift::String with)
{

  TranscriptionViewModel.callUUID.setter();
  v2 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v1[4]);
  v3 = TranscriptionViewModel.callUUID.getter();
  (*(v2 + 88))(v3);

  TranscriptionViewModel.callerDisplayName.setter();
  TranscriptionViewModel.state.setter(1, v4);
}

void *CallCenter.currentAudioAndVideoCalls.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter) currentAudioAndVideoCalls];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  OUTLINED_FUNCTION_235();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = specialized _arrayForceCast<A, B>(_:)();

  return v2;
}

uint64_t CallCenter.localVideoProvider.getter@<X0>(void *a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter) videoDeviceController];
  result = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUVideoDeviceController, 0x1E69D8D18);
  a1[3] = result;
  a1[4] = &protocol witness table for TUVideoDeviceController;
  a1[5] = &protocol witness table for TUVideoDeviceController;
  *a1 = v3;
  return result;
}

id CallCenter.videoDeviceController.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter) videoDeviceController];

  return v1;
}

uint64_t key path getter for CallCenter.delegate : CallCenter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit10CallCenter_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CallCenter.delegate : CallCenter(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit10CallCenter_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

void (*CallCenter.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit10CallCenter_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return ParticipantGridViewController.participantGridViewControllerDelegate.modify;
}

uint64_t CallCenter.disconnect(_:reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_30_25();
  ObjectType = swift_getObjectType();
  return (*(v3 + 488))(a3, ObjectType, v3);
}

double CallCenter.downgradeToAVLess(for:)()
{
  v2 = v0;
  OUTLINED_FUNCTION_30_25();
  ObjectType = swift_getObjectType();
  v4 = (*(v1 + 504))(ObjectType, v1);
  if (v4)
  {
    v5 = v4;
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v6 = static OS_os_log.conversationKit;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v8 = OUTLINED_FUNCTION_13_12(v7);
    *(v8 + 16) = xmmword_1BC4BA940;
    v9 = v5;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v29 = v11;
    v31 = v13;
    v14 = MEMORY[0x1E69E6158];
    v15 = String.init<A>(reflecting:)();
    v17 = v16;
    *(v8 + 56) = v14;
    *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v8 + 32) = v15;
    *(v8 + 40) = v17;
    v18 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Requesting to update AVMode to .none for conversation %@", 56, 2, &dword_1BBC58000, v6, v18, v8, v29, v31);

    specialized PlaceholderCallCenter.downgradeToAVLess(for:)(v9, *(v2 + OBJC_IVAR____TtC15ConversationKit10CallCenter_placeholderCallCenter));
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v20 = static OS_os_log.conversationKit;
    v21 = static os_log_type_t.error.getter();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v23 = OUTLINED_FUNCTION_13_12(v22);
    *(v23 + 16) = xmmword_1BC4BA940;
    v30 = (*(v1 + 56))(ObjectType, v1);
    v32 = v24;
    v25 = MEMORY[0x1E69E6158];
    v26 = String.init<A>(reflecting:)();
    v28 = v27;
    *(v23 + 56) = v25;
    *(v23 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v23 + 32) = v26;
    *(v23 + 40) = v28;
    os_log(_:dso:log:type:_:)("Could not set AV mode to .none because call %@ has no active conversation", 73, 2, &dword_1BBC58000, v20, v21, v23, v30, v32);
  }

  return result;
}

double CallCenter.setGridDisplayMode(mode:for:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v30 - v4;
  v6 = OUTLINED_FUNCTION_33_26(OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter);
  v7 = [v6 activeConversations];

  v8 = OUTLINED_FUNCTION_29_26();
  type metadata accessor for NSObject(v8, v9, 0x1E69D8B20);
  OUTLINED_FUNCTION_1_65();
  lazy protocol witness table accessor for type TUCall and conformance TUCall(v10, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20, v11);
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = a2;
  specialized Sequence.first(where:)(partial apply for closure #1 in CallCenter.setGridDisplayMode(mode:for:), v30, v12);
  OUTLINED_FUNCTION_34_27();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v13 = static OS_os_log.conversationKit;
  v14 = static os_log_type_t.error.getter();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v16 = OUTLINED_FUNCTION_13_12(v15);
  *(v16 + 16) = xmmword_1BC4BA940;
  v17 = type metadata accessor for UUID();
  (*(*(v17 - 8) + 16))(v5, a2, v17);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v17);
  specialized >> prefix<A>(_:)(v5, v18, v19, v20, v21, v22, v23, v24, v30[0], v30[1], v31, v32, v33, v34, v35, v36, v37, v38);
  v26 = v25;
  v28 = v27;
  outlined destroy of TapInteractionHandler?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v16 + 32) = v26;
  *(v16 + 40) = v28;
  os_log(_:dso:log:type:_:)("Could not determine conversation from uuid %@", 45, 2, &dword_1BBC58000, v13, v14, v16);

  return result;
}

uint64_t closure #1 in CallCenter.setGridDisplayMode(mode:for:)(id *a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v7, v3);
  return v9 & 1;
}

void CallCenter.updateConversation(uuid:presentationContexts:)()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter) conversationManager];
  v2 = [v1 mediaController];

  isa = UUID._bridgeToObjectiveC()().super.isa;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipantPresentationContext, 0x1E69D8BA0);
  OUTLINED_FUNCTION_235();
  v4 = Array._bridgeToObjectiveC()().super.isa;
  [v2 updateConversationWithUUID:isa participantPresentationContexts:v4];
}

void *CallCenter.calls(passingTest:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for thunk for @callee_guaranteed (@guaranteed Call) -> (@unowned Bool);
  *(v7 + 24) = v6;
  v13[4] = _sSo6TUCallCSbIggd_ABSbIeggd_TRTA_0;
  v13[5] = v7;
  OUTLINED_FUNCTION_1_25();
  v13[1] = 1107296256;
  OUTLINED_FUNCTION_63();
  v13[2] = v8;
  v13[3] = &block_descriptor_58;
  v9 = _Block_copy(v13);

  v10 = [v5 callsPassingTest_];
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = specialized _arrayForceCast<A, B>(_:)();

    return v12;
  }

  return result;
}

void Conversation.performTUAction(for:action:)(uint64_t a1, void (*a2)(id, id, __n128), void *a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for Optional();
  v86 = *(v11 - 8);
  v87 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v68 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v84 = &v68 - v14;
  v89 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Participant(0);
  v18 = *(a1 + *(v83 + 28));
  if (!v18)
  {
LABEL_32:
    v38 = v5;
    if (one-time initialization token for conversationKit != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  (*(v89 + 16))(v17, v5, a4);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
  v88 = v18;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_32;
  }

  v75 = v92;
  v19 = (*(a5 + 88))(a4, a5);
  v20 = (*(a5 + 128))(a4, a5);
  specialized Set.union<A>(_:)(v20, v19, v21, v22, v23, v24, v25, v26, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89);
  v28 = v27;
  v72 = a2;
  v71 = a3;
  if ((v27 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    v30 = v92;
    v29 = v93;
    v31 = v94;
    v32 = v95;
    v33 = v96;
  }

  else
  {
    v34 = -1 << *(v27 + 32);
    v29 = v27 + 56;
    v35 = ~v34;
    v36 = -v34;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v33 = v37 & *(v27 + 56);

    v31 = v35;
    v32 = 0;
    v30 = v28;
  }

  v74 = v31;
  v38 = (v31 + 64) >> 6;
  v79 = a1;
  v80 = v30;
  v76 = v38;
  v81 = v29;
  while (1)
  {
    if (v30 < 0)
    {
      v43 = __CocoaSet.Iterator.next()();
      if (!v43)
      {
        goto LABEL_31;
      }

      v90 = v43;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
      swift_dynamicCast();
      v42 = v91;
      v41 = v32;
      v82 = v33;
      v38 = v76;
      if (!v91)
      {
LABEL_35:
        a1 = v79;
LABEL_31:
        outlined consume of Set<TUHandle>.Iterator._Variant(v30);

        goto LABEL_32;
      }

      goto LABEL_20;
    }

    v39 = v32;
    v40 = v33;
    v41 = v32;
    if (!v33)
    {
      break;
    }

LABEL_16:
    v82 = (v40 - 1) & v40;
    v42 = *(*(v30 + 48) + ((v41 << 9) | (8 * __clz(__rbit64(v40)))));
    if (!v42)
    {
      goto LABEL_35;
    }

LABEL_20:
    v77 = v32;
    v78 = v33;
    v44 = [v42 handles];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00, MEMORY[0x1E69E81B8]);
    v45 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v45 & 0xC000000000000001) != 0)
    {
      v46 = v88;
      v47 = __CocoaSet.contains(_:)();

      if (v47)
      {
LABEL_34:
        outlined consume of Set<TUHandle>.Iterator._Variant(v80);

        v67 = v75;
        (v72)(v75, v42);

        return;
      }

LABEL_23:
      v32 = v41;
      v29 = v81;
      v33 = v82;
      a1 = v79;
      v30 = v80;
    }

    else
    {
      if (!*(v45 + 16))
      {

        goto LABEL_23;
      }

      v73 = v28;
      v69 = v5;
      v70 = a4;
      v48 = NSObject._rawHashValue(seed:)(*(v45 + 40));
      v49 = ~(-1 << *(v45 + 32));
      while (1)
      {
        v50 = v48 & v49;
        if (((*(v45 + 56 + (((v48 & v49) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v48 & v49)) & 1) == 0)
        {
          break;
        }

        v51 = *(*(v45 + 48) + 8 * v50);
        v52 = static NSObject.== infix(_:_:)();

        v48 = v50 + 1;
        if (v52)
        {

          goto LABEL_34;
        }
      }

      v32 = v41;
      v29 = v81;
      v33 = v82;
      a4 = v70;
      v5 = v69;
      a1 = v79;
      v30 = v80;
      v28 = v73;
      v38 = v76;
    }
  }

  while (1)
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v41 >= v38)
    {
      goto LABEL_31;
    }

    v40 = *(v29 + 8 * v41);
    ++v39;
    if (v40)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_38:
  swift_once();
LABEL_33:
  v53 = static OS_os_log.conversationKit;
  v54 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1BC4BAA20;
  v56 = v84;
  outlined init with copy of Participant(a1, v84);
  __swift_storeEnumTagSinglePayload(v56, 0, 1, v83);
  specialized >> prefix<A>(_:)();
  v58 = v57;
  v60 = v59;
  outlined destroy of TapInteractionHandler?(v56, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v61 = MEMORY[0x1E69E6158];
  *(v55 + 56) = MEMORY[0x1E69E6158];
  v62 = lazy protocol witness table accessor for type String and conformance String();
  *(v55 + 64) = v62;
  *(v55 + 32) = v58;
  *(v55 + 40) = v60;
  v63 = v85;
  (*(v89 + 16))(v85, v38, a4);
  __swift_storeEnumTagSinglePayload(v63, 0, 1, a4);
  v64 = >> prefix<A>(_:)(v63, a4);
  v66 = v65;
  (*(v86 + 8))(v63, v87);
  *(v55 + 96) = v61;
  *(v55 + 104) = v62;
  *(v55 + 72) = v64;
  *(v55 + 80) = v66;
  os_log(_:dso:log:type:_:)("Could not determine member or conversation from %@ %@", 53, 2, &dword_1BBC58000, v53, v54, v55);
}

void closure #1 in CallCenter.buzz(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, SEL *a7)
{
  OUTLINED_FUNCTION_30_25();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v35 - v15;
  OUTLINED_FUNCTION_4_0(a3 + 16, v40);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v36 = v8;
    v37 = v7;
    v38 = a7;
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v19 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1BC4BAA20;
    outlined init with copy of Participant(a4, v16);
    v21 = type metadata accessor for Participant(0);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v21);
    specialized >> prefix<A>(_:)();
    v23 = v22;
    v25 = v24;
    outlined destroy of TapInteractionHandler?(v16, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v26 = MEMORY[0x1E69E6158];
    *(v20 + 56) = MEMORY[0x1E69E6158];
    v27 = lazy protocol witness table accessor for type String and conformance String();
    *(v20 + 64) = v27;
    *(v20 + 32) = v23;
    *(v20 + 40) = v25;
    v28 = OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter;
    v39 = *&v18[OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter];
    v29 = v39;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCallCenter, 0x1E69D8A58);
    v30 = v29;
    v31 = String.init<A>(reflecting:)();
    *(v20 + 96) = v26;
    *(v20 + 104) = v27;
    *(v20 + 72) = v31;
    *(v20 + 80) = v32;
    v33 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)(a5, a6, 2, &dword_1BBC58000, v19, v33, v20);

    v34 = [*&v18[v28] conversationManager];
    [v34 *v38];
  }
}

uint64_t CallCenter.buzz(_:in:)(uint64_t a1, void *a2, void (*a3)(id, id, __n128))
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  OUTLINED_FUNCTION_20();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[2] = v7;
  v9[3] = a1;
  Conversation.performTUAction(for:action:)(a1, a3, v9, v5, v6);
}

double CallCenter.generateLink(for:completionHandler:)(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = OUTLINED_FUNCTION_33_26(OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter);
  v9 = [v8 activeConversations];

  v10 = OUTLINED_FUNCTION_29_26();
  type metadata accessor for NSObject(v10, v11, 0x1E69D8B20);
  OUTLINED_FUNCTION_1_65();
  lazy protocol witness table accessor for type TUCall and conformance TUCall(v12, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20, v13);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  OUTLINED_FUNCTION_32_20(v14, v15, v16, v17, v18, v19, v20, v21, v31);
  OUTLINED_FUNCTION_34_27();
  if (v9)
  {
    v22 = [v3 (v4 + 2259)];
    if (a2)
    {
      aBlock[4] = a2;
      aBlock[5] = a3;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed ASCLockupRequest?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_12_1;
      a2 = _Block_copy(aBlock);
    }

    [v22 generateLinkForConversation:v9 completionHandler:a2];
    _Block_release(a2);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v25 = OUTLINED_FUNCTION_13_12(v24);
    *(v25 + 16) = xmmword_1BC4BA940;
    outlined init with copy of IDSLookupManager(a1, aBlock);
    v26 = specialized >> prefix<A>(_:)(aBlock);
    v28 = v27;
    outlined destroy of TapInteractionHandler?(aBlock, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    OUTLINED_FUNCTION_16_49("Could not determine conversation from %@", v29, v30, &dword_1BBC58000);
  }

  return result;
}

double CallCenter.setDownlinkMuted(_:forRemoteParticipantsIn:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(id *))
{
  v6 = [*(v3 + OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter) conversationManager];
  v7 = [v6 activeConversations];

  v8 = OUTLINED_FUNCTION_29_26();
  type metadata accessor for NSObject(v8, v9, 0x1E69D8B20);
  OUTLINED_FUNCTION_1_65();
  lazy protocol witness table accessor for type TUCall and conformance TUCall(v10, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20, v11);
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v21[2] = a2;
  specialized Sequence.first(where:)(a3, v21, v12);
  OUTLINED_FUNCTION_34_27();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  static os_log_type_t.error.getter();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v14 = OUTLINED_FUNCTION_13_12(v13);
  *(v14 + 16) = xmmword_1BC4BA940;
  outlined init with copy of IDSLookupManager(a2, v22);
  v15 = specialized >> prefix<A>(_:)(v22);
  v17 = v16;
  outlined destroy of TapInteractionHandler?(v22, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  OUTLINED_FUNCTION_16_49("Could not determine conversation from %@", v18, v19, &dword_1BBC58000);

  return result;
}

double CallCenter.addScreenSharingType(_:in:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter);
  v6 = [v5 conversationManager];
  v7 = [v6 activeConversations];

  v8 = OUTLINED_FUNCTION_29_26();
  type metadata accessor for NSObject(v8, v9, 0x1E69D8B20);
  OUTLINED_FUNCTION_1_65();
  lazy protocol witness table accessor for type TUCall and conformance TUCall(v10, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20, v11);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  OUTLINED_FUNCTION_32_20(v12, v13, v14, v15, v16, v17, v18, v19, v29);
  OUTLINED_FUNCTION_34_27();
  if (v7)
  {
    v20 = [v5 conversationManager];
    [v20 addScreenSharingType:a1 forConversation:v7];
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v23 = OUTLINED_FUNCTION_13_12(v22);
    *(v23 + 16) = xmmword_1BC4BA940;
    outlined init with copy of IDSLookupManager(a2, v30);
    v24 = specialized >> prefix<A>(_:)(v30);
    v26 = v25;
    outlined destroy of TapInteractionHandler?(v30, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    OUTLINED_FUNCTION_16_49("Could not determine conversation from %@", v27, v28, &dword_1BBC58000);
  }

  return result;
}

uint64_t closure #1 in CallCenter.setDownlinkMuted(_:forRemoteParticipantsIn:)(id *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  v12 = [*a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 8))(v13, v14);
  LOBYTE(a2) = static UUID.== infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v7, v4);
  v15(v11, v4);
  return a2 & 1;
}

id CallCenter.requestVideoUpgrade(for:)()
{
  objc_opt_self();
  OUTLINED_FUNCTION_235();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter);

    return [v3 requestVideoUpgradeForCall_];
  }

  return result;
}

void CallCenter.launchApp(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter);
  if (a2)
  {
    v7[4] = a2;
    v7[5] = a3;
    OUTLINED_FUNCTION_1_25();
    v7[1] = 1107296256;
    v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v7[3] = &block_descriptor_15_0;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
  }

  [v5 launchAppForDialRequest:a1 completion:v6];
  _Block_release(v6);
}

void CallCenter.requestScreenSharingPicker(for:with:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of IDSLookupManager(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd, &_s15ConversationKit0A0_pMR);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
  if (swift_dynamicCast())
  {
    v4 = [*(v2 + OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter) conversationManager];
    [v4 requestScreenSharingPickerForConversation:v5 withContentStyle:a2];
  }
}

id CallCenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CallCenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for CallCenterProvider.delegate.modify in conformance CallCenter(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = *v1;
  v5 = OBJC_IVAR____TtC15ConversationKit10CallCenter_delegate;
  v3[5] = *v1;
  v3[6] = v5;
  v6 = v4 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  v3[3] = Strong;
  v3[4] = v8;
  return ParticipantGridViewController.participantsViewControllerDelegate.modify;
}

void *CallCenter.pttStartTransmit(_:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  objc_opt_self();
  OUTLINED_FUNCTION_235();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v6 = result;
    swift_unknownObjectRetain();
    if ([v6 isPTT])
    {
      [*(v3 + OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter) *a3];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *CallCenter.pttLeaveChannel(_:)(uint64_t a1)
{
  objc_opt_self();
  OUTLINED_FUNCTION_235();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    swift_unknownObjectRetain();
    if ([v3 isPTT])
    {
      [*(v1 + OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter) disconnectCall_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CallCenter.audioDeviceControllerMutedTalkerDidStart(_:)()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC15ConversationKit10CallCenter_delegate];
  OUTLINED_FUNCTION_5_94(ObjectType, v16);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 1);
    swift_getObjectType();
    v15[3] = ObjectType;
    v15[4] = &protocol witness table for CallCenter;
    v15[0] = v0;
    v5 = *(v4 + 168);
    v6 = v0;
    v14 = OUTLINED_FUNCTION_24_34(v6, v7, v8, v9, v10, v11, v12, v13, v0);
    v5(v14);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return result;
}

double CallCenter.conversationManager(_:activeRemoteParticipantsChangedFor:)(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC15ConversationKit10CallCenter_delegate];
  OUTLINED_FUNCTION_4_0(&v2[OBJC_IVAR____TtC15ConversationKit10CallCenter_delegate], v41);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    v8 = swift_getObjectType();
    v35 = ObjectType;
    v36 = &protocol witness table for CallCenter;
    aBlock[0] = v2;
    v39 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
    v40 = &protocol witness table for TUConversation;
    v38[0] = a2;
    v9 = *(v7 + 32);
    v10 = v2;
    v11 = a2;
    v9(aBlock, v38, v8, v7);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v38);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
  }

  if ([a2 state] != 3)
  {
    return result;
  }

  if (![a2 isOneToOneModeEnabled])
  {
    return result;
  }

  v13 = [a2 activeRemoteParticipants];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
  OUTLINED_FUNCTION_1_65();
  lazy protocol witness table accessor for type TUCall and conformance TUCall(v14, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90, v15);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = specialized Set.count.getter();

  if (v16 != 1)
  {
    return result;
  }

  v17 = [objc_opt_self() sharedInstance];
  OUTLINED_FUNCTION_20();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  v19 = swift_allocObject();
  *(v19 + 16) = partial apply for closure #1 in CallCenter.conversationManager(_:activeRemoteParticipantsChangedFor:);
  *(v19 + 24) = v18;
  v36 = thunk for @callee_guaranteed (@guaranteed TUCall) -> (@unowned Bool)partial apply;
  v37 = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_63();
  aBlock[2] = v20;
  v35 = &block_descriptor_25_2;
  v21 = _Block_copy(aBlock);
  v22 = a2;

  v23 = [v17 callsPassingTest_];

  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!specialized Array.count.getter())
    {

      return result;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v19 & 0xC000000000000001) == 0, v19);
    if ((v19 & 0xC000000000000001) == 0)
    {
      v24 = *(v19 + 32);
      goto LABEL_10;
    }
  }

  v24 = MEMORY[0x1BFB22010](0, v19);
LABEL_10:
  v25 = v24;

  if (([v25 isVideo] & 1) != 0 || (v26 = objc_msgSend(v22, sel_activeRemoteParticipants), v27 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v26, v29 = specialized Collection.randomElement<A>(using:)(v28, v27), , !v29))
  {
  }

  else
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = *(v6 + 1);
      v31 = swift_getObjectType();
      v35 = ObjectType;
      v36 = &protocol witness table for CallCenter;
      aBlock[0] = v3;
      v39 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
      v40 = &protocol witness table for TUConversation;
      v38[0] = v22;
      v32 = v3;
      v33 = v22;
      (*(v30 + 192))(aBlock, v38, [v29 identifier], objc_msgSend(v29, sel_isAudioPaused), v31, v30);

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v38);
      __swift_destroy_boxed_opaque_existential_1(aBlock);

      return result;
    }
  }

  return result;
}

uint64_t closure #1 in CallCenter.conversationManager(_:activeRemoteParticipantsChangedFor:)(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - v19;
  v21 = [a1 callGroupUUID];
  if (v21)
  {
    v22 = v21;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v20, v23, 1, v4);
  v24 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_storeEnumTagSinglePayload(v16, 0, 1, v4);
  v25 = *(v8 + 48);
  outlined init with copy of UUID?(v20, v10);
  outlined init with copy of UUID?(v16, &v10[v25]);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) != 1)
  {
    outlined init with copy of UUID?(v10, v13);
    if (__swift_getEnumTagSinglePayload(&v10[v25], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v10[v25], v4);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v5 + 8);
      v27(v7, v4);
      outlined destroy of TapInteractionHandler?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of TapInteractionHandler?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v27(v13, v4);
      outlined destroy of TapInteractionHandler?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return v26 & 1;
    }

    outlined destroy of TapInteractionHandler?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of TapInteractionHandler?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v5 + 8))(v13, v4);
    goto LABEL_9;
  }

  outlined destroy of TapInteractionHandler?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of TapInteractionHandler?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (__swift_getEnumTagSinglePayload(&v10[v25], 1, v4) != 1)
  {
LABEL_9:
    outlined destroy of TapInteractionHandler?(v10, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v26 = 0;
    return v26 & 1;
  }

  outlined destroy of TapInteractionHandler?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v26 = 1;
  return v26 & 1;
}

uint64_t CallCenter.conversationManager(_:screenSharingAvailableChanged:)()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC15ConversationKit10CallCenter_delegate];
  OUTLINED_FUNCTION_5_94(ObjectType, v16);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 1);
    swift_getObjectType();
    v15[3] = ObjectType;
    v15[4] = &protocol witness table for CallCenter;
    v15[0] = v0;
    v5 = *(v4 + 264);
    v6 = v0;
    v14 = OUTLINED_FUNCTION_24_34(v6, v7, v8, v9, v10, v11, v12, v13, v0);
    v5(v14);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return result;
}

uint64_t CallCenter.conversationManager(_:migratingFrom:to:)()
{
  v3 = OUTLINED_FUNCTION_8_75();
  OUTLINED_FUNCTION_13_54(v3, v12);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_35_18(result);
    v11[3] = v3;
    v11[4] = &protocol witness table for CallCenter;
    v11[0] = v2;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
    OUTLINED_FUNCTION_25_35();
    v5 = *(v3 + 160);
    v6 = v2;
    v7 = v1;
    v8 = v0;
    OUTLINED_FUNCTION_15_45();
    v5();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v9);
    __swift_destroy_boxed_opaque_existential_1(v10);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return result;
}

uint64_t CallCenter.conversationManager(_:activitySessionsChangedFor:fromOldConversation:)()
{
  v3 = OUTLINED_FUNCTION_8_75();
  OUTLINED_FUNCTION_13_54(v3, v12);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_35_18(result);
    v11[3] = v3;
    v11[4] = &protocol witness table for CallCenter;
    v11[0] = v2;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
    OUTLINED_FUNCTION_25_35();
    v5 = *(v3 + 184);
    v6 = v2;
    v7 = v1;
    v8 = v0;
    OUTLINED_FUNCTION_15_45();
    v5();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v9);
    __swift_destroy_boxed_opaque_existential_1(v10);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return result;
}

uint64_t CallCenter.conversationManager(_:conversation:participant:addedNotice:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v8 = static OS_os_log.conversationKit;
  v9 = static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BC4BB980;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationNotice, 0x1E69D8B88);
  v31 = a4;
  v11 = String.init<A>(reflecting:)();
  v13 = v12;
  v14 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v15 = lazy protocol witness table accessor for type String and conformance String();
  *(v10 + 64) = v15;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
  v16 = a3;
  v17 = String.init<A>(reflecting:)();
  *(v10 + 96) = v14;
  *(v10 + 104) = v15;
  *(v10 + 72) = v17;
  *(v10 + 80) = v18;
  v34[0] = a2;
  v19 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
  v20 = a2;
  v21 = String.init<A>(reflecting:)();
  *(v10 + 136) = v14;
  *(v10 + 144) = v15;
  *(v10 + 112) = v21;
  *(v10 + 120) = v22;
  os_log(_:dso:log:type:_:)("CallCenter did receive notice %@ for %@ participant %@ in ", 58, 2, &dword_1BBC58000, v8, v9, v10);

  v24 = &v4[OBJC_IVAR____TtC15ConversationKit10CallCenter_delegate];
  OUTLINED_FUNCTION_13_54(v23, v35);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v26 = *(v24 + 1);
    v27 = swift_getObjectType();
    v34[3] = ObjectType;
    v34[4] = &protocol witness table for CallCenter;
    v34[0] = v4;
    v33[3] = v19;
    v33[4] = &protocol witness table for TUConversation;
    v33[0] = v20;
    v28 = *(v26 + 200);
    v29 = v20;
    v30 = v4;
    v28(v34, v31, v33, v16, v27, v26);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v33);
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  return result;
}

uint64_t CallCenter.conversationManager(_:remoteScreenShareAttributesChanged:isLocallySharing:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v8 = static OS_os_log.conversationKit;
  v9 = static os_log_type_t.default.getter();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v11 = OUTLINED_FUNCTION_13_12(v10);
  *(v11 + 16) = xmmword_1BC4BA940;
  v22[0] = a2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23TUScreenShareAttributes_pMd, &_sSo23TUScreenShareAttributes_pMR);
  v12 = String.init<A>(reflecting:)();
  v14 = v13;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  os_log(_:dso:log:type:_:)("CallCenter did receive remote screen share attributes %@", 56, 2, &dword_1BBC58000, v8, v9, v11, v22[0]);

  v16 = &v4[OBJC_IVAR____TtC15ConversationKit10CallCenter_delegate];
  OUTLINED_FUNCTION_13_54(v15, v23);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = *(v16 + 1);
    v19 = swift_getObjectType();
    v22[3] = ObjectType;
    v22[4] = &protocol witness table for CallCenter;
    v22[0] = v4;
    v20 = *(v18 + 224);
    v21 = v4;
    v20(v22, a2, a3 & 1, v19, v18);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  return result;
}

void @objc CallCenter.conversationManager(_:conversation:participant:addedNotice:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void (*a7)(void))
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a1;
  a7();
}

uint64_t CallCenter.conversationManager(_:screenSharingRequestsChangedFor:fromOldConversation:)()
{
  v3 = OUTLINED_FUNCTION_8_75();
  v4 = &v2[OBJC_IVAR____TtC15ConversationKit10CallCenter_delegate];
  OUTLINED_FUNCTION_5_94(v3, v18);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 1);
    v17[3] = v3;
    v17[4] = &protocol witness table for CallCenter;
    v17[0] = v2;
    v7 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
    v8 = &protocol witness table for TUConversation;
    v16[3] = v7;
    v16[4] = &protocol witness table for TUConversation;
    v16[0] = v1;
    if (v0)
    {
      v9 = v0;
    }

    else
    {
      v9 = 0;
      v7 = 0;
      v8 = 0;
      v15[1] = 0;
      v15[2] = 0;
    }

    v15[0] = v9;
    v15[3] = v7;
    v15[4] = v8;
    ObjectType = swift_getObjectType();
    v11 = *(v6 + 272);
    v12 = v2;
    v13 = v1;
    v14 = v0;
    v11(v17, v16, v15, ObjectType, v6);
    swift_unknownObjectRelease();
    outlined destroy of TapInteractionHandler?(v15, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(v16);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  return result;
}

void CallCenter.routesChanged(for:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v4 = [*&v1[OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter] routeController];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    v6 = &v2[OBJC_IVAR____TtC15ConversationKit10CallCenter_delegate];
    OUTLINED_FUNCTION_4_0(&v2[OBJC_IVAR____TtC15ConversationKit10CallCenter_delegate], v12);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 1);
      v8 = swift_getObjectType();
      v11[3] = ObjectType;
      v11[4] = &protocol witness table for CallCenter;
      v11[0] = v2;
      v9 = *(v7 + 176);
      v10 = v2;
      v9(v11, v8, v7);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v11);
    }
  }
}

uint64_t specialized PlaceholderCallCenter.downgradeToAVLess(for:)(void *a1, uint64_t a2)
{
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v37 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_queue);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13, v15);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v20 = [v38 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  PlaceholderCallCenter.setAVMode(_:for:)(0);
  v17 = *(v7 + 16);
  (v17)(v9, v12, v6);
  v21 = OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_expectedAVLessConversationUUIDs;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v39 = *(a2 + v21);
  specialized _NativeSet.update(with:isUnique:)();
  *(a2 + v21) = v39;
  outlined destroy of TapInteractionHandler?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_endAccess();
  if (one-time initialization token for conversationKit != -1)
  {
LABEL_5:
    swift_once();
  }

  v22 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BC4BA940;
  (v17)(v5, v12, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  specialized >> prefix<A>(_:)(v5, v24, v25, v26, v27, v28, v29, v30, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
  v32 = v31;
  v34 = v33;
  outlined destroy of TapInteractionHandler?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v23 + 32) = v32;
  *(v23 + 40) = v34;
  v35 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("PlaceholderCallCenter added %@ to expectedAVLessConversationUUIDs", 65, 2, &dword_1BBC58000, v22, v35, v23);

  return (*(v7 + 8))(v12, v6);
}

id CallRecordingEducationViewController.__allocating_init()()
{
  v1 = String.localizedCallRecording.getter();
  v2 = MEMORY[0x1BFB209B0](v1);

  v3 = static CallRecordingEducationViewController.educationScreenSubtitle.getter();
  if (v4)
  {
    v5 = MEMORY[0x1BFB209B0](v3);
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithTitle:v2 detailText:v5 icon:0 contentLayout:1];

  return v6;
}

uint64_t key path getter for CallRecordingEducationViewController.delegate : CallRecordingEducationViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for CallRecordingEducationViewController.delegate : CallRecordingEducationViewController(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x68);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t CallRecordingEducationViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit36CallRecordingEducationViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CallRecordingEducationViewController.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit36CallRecordingEducationViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

id closure #1 in variable initialization expression of CallRecordingEducationViewController.continueButton()
{
  v0 = [objc_opt_self() boldButton];
  v1 = String.localizedCallRecording.getter();
  outlined bridged method (mbnnn) of @objc UIButton.setTitle(_:for:)(v1, v2, 0, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit36CallRecordingEducationViewControllerCycACcMd, &_s15ConversationKit36CallRecordingEducationViewControllerCycACcMR);
  [v0 addTarget:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() action:sel_handleTappedEducationScreenContinue forControlEvents:{64, _s15ConversationKit36CallRecordingEducationViewControllerCACIego_Ieggo_ACxRi_zRi0_zlyACIsegr_Iegnr_TR04_s15a5Kit36cdefG94C14continueButton33_655044DE3502CE4C2EC422ECD64F29E5LLSo010OBBoldTrayI0CvpfiAGyXEfU_ACycACcfu_Tf3nnpf_n, 0}];
  swift_unknownObjectRelease();
  return v0;
}

id (*implicit closure #1 in closure #1 in variable initialization expression of CallRecordingEducationViewController.continueButton(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return partial apply for implicit closure #2 in implicit closure #1 in closure #1 in variable initialization expression of CallRecordingEducationViewController.continueButton;
}

id implicit closure #2 in implicit closure #1 in closure #1 in variable initialization expression of CallRecordingEducationViewController.continueButton(void *a1)
{
  v1 = [a1 self];

  return v1;
}

uint64_t _s15ConversationKit36CallRecordingEducationViewControllerCACIego_Ieggo_ACxRi_zRi0_zlyACIsegr_Iegnr_TR04_s15a5Kit36cdefG94C14continueButton33_655044DE3502CE4C2EC422ECD64F29E5LLSo010OBBoldTrayI0CvpfiAGyXEfU_ACycACcfu_Tf3nnpf_n@<X0>(void **a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = implicit closure #1 in closure #1 in variable initialization expression of CallRecordingEducationViewController.continueButton(*a1);
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> (@owned CallRecordingEducationViewController);
  a2[1] = result;
  return result;
}

Swift::Void __swiftcall CallRecordingEducationViewController.setupView()()
{
  v1 = v0;
  v2 = _sSo7UIImageC15ConversationKitE5image5namedAbC9ImageName_p_tFZTf4en_nAC0F5NamesV13CallRecordingO_Tt0g5();
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  v4 = v3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setContentMode_];
  v5 = [v1 buttonTray];
  [v5 addButton_];

  v6 = OUTLINED_FUNCTION_0_139();
  [v6 addSubview_];

  v7 = OUTLINED_FUNCTION_0_139();
  [v7 setBackgroundColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC4BC370;
  v9 = OUTLINED_FUNCTION_0_139();
  v10 = [v9 heightAnchor];

  v11 = [v1 view];
  if (v11)
  {
    v12 = v11;
    v13 = objc_opt_self();
    v14 = [v12 widthAnchor];

    v15 = [v10 constraintEqualToAnchor:v14 multiplier:0.4];
    *(v8 + 32) = v15;
    v16 = [v4 centerXAnchor];
    v17 = OUTLINED_FUNCTION_0_139();
    v18 = [v17 centerXAnchor];

    v19 = [v16 constraintEqualToAnchor_];
    *(v8 + 40) = v19;
    v20 = [v4 bottomAnchor];

    v21 = OUTLINED_FUNCTION_0_139();
    v22 = [v21 bottomAnchor];

    v23 = [v20 constraintEqualToAnchor_];
    *(v8 + 48) = v23;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v13 activateConstraints_];

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x1E69DC708);
    v28.value.super.super.isa = 0;
    v28.is_nil = 0;
    v26 = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemCancel, v28, v29).super.super.isa;
    [(objc_class *)v26 setAction:sel_handleTappedEducationScreenCancel];
    [(objc_class *)v26 setTarget:v1];
    v25 = [v1 navigationItem];
    [v25 setLeftBarButtonItem_];

    [v1 setModalPresentationStyle_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t static CallRecordingEducationViewController.educationScreenSubtitle.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore25CallRecordingAvailabilityOSgMd, &_s20CommunicationsUICore25CallRecordingAvailabilityOSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  type metadata accessor for CallRecordingAvailabilityManager();
  static CallRecordingAvailabilityManager.shared.getter();
  dispatch thunk of CallRecordingAvailabilityManager.availability.getter();

  v6 = type metadata accessor for CallRecordingAvailability();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
  {
    outlined init with copy of CallRecordingAvailability?(v5, v2);
    v8 = *(v6 - 8);
    v9 = (*(v8 + 88))(v2, v6);
    if (v9 == *MEMORY[0x1E6995F80] || v9 == *MEMORY[0x1E6995F88] || v9 == *MEMORY[0x1E6995F90])
    {
      v7 = String.localizedCallRecording.getter();
    }

    else
    {
      (*(v8 + 8))(v2, v6);
      v7 = 0;
    }
  }

  outlined destroy of CallRecordingAvailability?(v5);
  return v7;
}

uint64_t closure #1 in CallRecordingEducationViewController.handleTappedEducationScreenContinue()(void *a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x60))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void CallRecordingEducationViewController.handleTappedEducationScreenContinue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v9[4] = a2;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = a3;
  v7 = _Block_copy(v9);
  v8 = v3;

  [v8 dismissViewControllerAnimated:1 completion:v7];
  _Block_release(v7);
}

uint64_t closure #1 in CallRecordingEducationViewController.handleTappedEducationScreenCancel()(void *a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x60))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

id CallRecordingEducationViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v14 = MEMORY[0x1BFB209B0](a1);

  if (!a4)
  {
    v15 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = MEMORY[0x1BFB209B0](a3, a4);

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = MEMORY[0x1BFB209B0](a5, a6);

LABEL_6:
  v17 = [objc_allocWithZone(v8) initWithTitle:v14 detailText:v15 symbolName:v16 contentLayout:a7];

  return v17;
}

id CallRecordingEducationViewController.init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC15ConversationKit36CallRecordingEducationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC15ConversationKit36CallRecordingEducationViewController_continueButton;
  *&v7[v15] = closure #1 in variable initialization expression of CallRecordingEducationViewController.continueButton();
  v16 = MEMORY[0x1BFB209B0](a1, a2);

  if (!a4)
  {
    v17 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  v17 = MEMORY[0x1BFB209B0](a3, a4);

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = MEMORY[0x1BFB209B0](a5, a6);

LABEL_6:
  v21.receiver = v7;
  v21.super_class = type metadata accessor for CallRecordingEducationViewController();
  v19 = objc_msgSendSuper2(&v21, sel_initWithTitle_detailText_symbolName_contentLayout_, v16, v17, v18, a7);

  return v19;
}

id CallRecordingEducationViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v12 = MEMORY[0x1BFB209B0](a1);

  if (a4)
  {
    v13 = MEMORY[0x1BFB209B0](a3, a4);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(v7) initWithTitle:v12 detailText:v13 icon:a5 contentLayout:a6];

  return v14;
}

id CallRecordingEducationViewController.init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC15ConversationKit36CallRecordingEducationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC15ConversationKit36CallRecordingEducationViewController_continueButton;
  *&v6[v13] = closure #1 in variable initialization expression of CallRecordingEducationViewController.continueButton();
  v14 = MEMORY[0x1BFB209B0](a1, a2);

  if (a4)
  {
    v15 = MEMORY[0x1BFB209B0](a3, a4);
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v6;
  v18.super_class = type metadata accessor for CallRecordingEducationViewController();
  v16 = objc_msgSendSuper2(&v18, sel_initWithTitle_detailText_icon_contentLayout_, v14, v15, a5, a6);

  return v16;
}

id CallRecordingEducationViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CallRecordingEducationViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@owned CallRecordingEducationViewController)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t outlined destroy of CallRecordingAvailability?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore25CallRecordingAvailabilityOSgMd, &_s20CommunicationsUICore25CallRecordingAvailabilityOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of CallRecordingAvailability?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore25CallRecordingAvailabilityOSgMd, &_s20CommunicationsUICore25CallRecordingAvailabilityOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void ParticipantViewDragController.dragEnabled.setter(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 16, a2);
  v4 = *(v2 + 16);
  *(v2 + 16) = a1;
  ParticipantViewDragController.dragEnabled.didset(v4);
}

void ParticipantViewDragController.dragEnabled.didset(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 16) != v2)
  {
    [*(v1 + 96) setEnabled_];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = *(v1 + 48);
      ObjectType = swift_getObjectType();
      (*(v5 + 16))(*(v1 + 16), ObjectType, v5);
    }
  }
}

void (*ParticipantViewDragController.dragEnabled.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  OUTLINED_FUNCTION_4_0(v1 + 16, v3);
  *(v3 + 32) = *(v1 + 16);
  return ParticipantViewDragController.dragEnabled.modify;
}

void ParticipantViewDragController.dragEnabled.modify(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  ParticipantViewDragController.dragEnabled.setter(*(*a1 + 32), a2);

  free(v2);
}

uint64_t ParticipantViewDragController.delegate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 24, a2);
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ParticipantViewDragController.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return CaptionsViewDragController.delegate.modify;
}

uint64_t ParticipantViewDragController.isDragging.setter(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_6_0(v2 + 88, a2);
  *(v2 + 88) = a1;
  return result;
}

uint64_t ParticipantViewDragController.__allocating_init(participantView:constraintIdentifier:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_95(a1);
  v1 = OUTLINED_FUNCTION_0_140();

  return specialized ParticipantViewDragController.__allocating_init(participantView:constraintIdentifier:)(v1, v2, v3, v4, v5, v6);
}

uint64_t ParticipantViewDragController.init(participantView:constraintIdentifier:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_95(a1);
  v1 = OUTLINED_FUNCTION_0_140();

  return specialized ParticipantViewDragController.init(participantView:constraintIdentifier:)(v1, v2, v3, v4, v5, v6);
}

id static ParticipantViewDragController.boingAnimator(usingVelocity:)(double a1, double a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:4.5 stiffness:900.0 damping:95.0 initialVelocity:{a1 * 0.00333333333, a2 * 0.00333333333}];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v2 timingParameters:0.0];

  return v3;
}

Swift::Void __swiftcall ParticipantViewDragController.handlePanGestureRecognizer(_:)(UIPanGestureRecognizer *a1)
{
  switch([(UIPanGestureRecognizer *)a1 state])
  {
    case 0uLL:
      goto LABEL_7;
    case 1uLL:
      Strong = swift_unknownObjectWeakLoadStrong();
      [(UIPanGestureRecognizer *)a1 locationInView:Strong];
      v11 = v10;
      v13 = v12;

      ParticipantViewDragController.handleDragDidBegin(with:)(__PAIR128__(v13, v11));
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        goto LABEL_11;
      }

      v15 = 0;
      goto LABEL_14;
    case 2uLL:
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
LABEL_11:
        v14 = v8;
        v15 = [v8 superview];
      }

      else
      {
        v15 = 0;
      }

LABEL_14:
      [(UIPanGestureRecognizer *)a1 locationInView:v15];

      OUTLINED_FUNCTION_6_79();

      ParticipantViewDragController.handleDragDidMove(to:)(__PAIR128__(v17, v16));
      break;
    case 3uLL:
    case 4uLL:
    case 5uLL:
      v2 = swift_unknownObjectWeakLoadStrong();
      if (v2 && (v3 = v2, v20 = [v2 superview], v3, v20))
      {
        [(UIPanGestureRecognizer *)a1 velocityInView:v20];
        ParticipantViewDragController.handleDragDidEnd(with:)(__PAIR128__(v5, v4));
        OUTLINED_FUNCTION_6_79();
      }

      else
      {
LABEL_7:
        OUTLINED_FUNCTION_6_79();
      }

      break;
    default:
      _StringGuts.grow(_:)(73);
      MEMORY[0x1BFB20B10](0xD000000000000047, 0x80000001BC50B1D0);
      [(UIPanGestureRecognizer *)a1 state];
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1BFB20B10](v19);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }
}

Swift::Void __swiftcall ParticipantViewDragController.handleDragDidBegin(with:)(CGPoint with)
{
  v4 = OUTLINED_FUNCTION_4_80();
  if (v4 && (v5 = v4, v6 = [v4 superview], v5, v6))
  {
    *(v1 + 72) = v3;
    *(v1 + 80) = v2;
    OUTLINED_FUNCTION_4_104(v7, v8, v9);
    *(v1 + 88) = 1;
    OUTLINED_FUNCTION_4_0(v1 + 24, v21);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v1 + 32);
      ObjectType = swift_getObjectType();
      (*(v10 + 8))(v1, ObjectType, v10);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.conversationKit;
    v13 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BC4BA940;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = *(v1 + 48);
      v21[3] = Strong;
      v21[4] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13DraggableView_pMd, &_s15ConversationKit13DraggableView_pMR);
      v17 = String.init<A>(reflecting:)();
      v19 = v18;
    }

    else
    {
      v19 = 0xE300000000000000;
      v17 = 7104878;
    }

    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v14 + 32) = v17;
    *(v14 + 40) = v19;
    os_log(_:dso:log:type:_:)("Expected the dragable view to be part of a view hierarchy %@", 60, 2, &dword_1BBC58000, v12, v13, v14);

    ParticipantViewDragController.dragEnabled.setter(0, v20);
  }

  OUTLINED_FUNCTION_6_79();
}

Swift::Void __swiftcall ParticipantViewDragController.handleDragDidMove(to:)(CGPoint to)
{
  v4 = OUTLINED_FUNCTION_4_80();
  if (v4)
  {
    v7 = v4;
    OUTLINED_FUNCTION_4_0(v1 + 88, &v13);
    if (*(v1 + 88) == 1)
    {
      v8 = [v7 superview];
      if (v8)
      {
        v9 = v8;
        v10 = v3 - *(v1 + 72);
        v11 = v2 - *(v1 + 80);
        v12 = v7;
        [v12 frame];
        [v12 setFrame_];

        return;
      }
    }
  }

  OUTLINED_FUNCTION_4_104(v4, v5, v6);
  *(v1 + 88) = 0;
}

Swift::Void __swiftcall ParticipantViewDragController.handleDragDidEnd(with:)(CGPoint with)
{
  v4 = OUTLINED_FUNCTION_4_80();
  if (v4)
  {
    v6 = v4;
    OUTLINED_FUNCTION_4_0(v1 + 24, v14);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v1 + 32);
      OUTLINED_FUNCTION_6_0(v1 + 88, v7);
      if (*(v1 + 88))
      {
        *(v1 + 88) = 0;
        [v6 center];
        v10 = v3 * 0.3 + v9;
        [v6 center];
        v12 = v2 * 0.3 + v11;
        ObjectType = swift_getObjectType();
        (*(v8 + 16))(v1, ObjectType, v8, v10, v12);

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  ParticipantViewDragController.dragEnabled.setter(0, v5);
  swift_beginAccess();
  *(v1 + 88) = 0;
}

uint64_t ParticipantViewDragController.deinit()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 24);
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 40);

  return v0;
}

uint64_t ParticipantViewDragController.__deallocating_deinit()
{
  ParticipantViewDragController.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized ParticipantViewDragController.__allocating_init(participantView:constraintIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();

  return specialized ParticipantViewDragController.init(participantView:constraintIdentifier:)(a1, a2, a3, v11, a5, a6);
}

uint64_t specialized ParticipantViewDragController.init(participantView:constraintIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a4 + 16) = 0;
  *(a4 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = [objc_allocWithZone(MEMORY[0x1E69DCD28]) init];
  *(a4 + 48) = a6;
  swift_unknownObjectWeakAssign();
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  [*(a4 + 96) addTarget:a4 action:sel_handlePanGestureRecognizer_];
  [*(a4 + 96) setEnabled_];
  [a1 addGestureRecognizer_];

  return a4;
}

uint64_t key path getter for BadgedLabel.badge : BadgedLabel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t key path setter for BadgedLabel.badge : BadgedLabel(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x68);
  v4 = *a1;
  return v3(v2);
}

id BadgedLabel.badge.didset(void *a1)
{
  swift_getObjectType();
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, &static Logger.conversationControls);
  v4 = a1;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = &lazy protocol witness table cache variable for type CurrentValueSubject<CallDisplayStatus, Never> and conformance CurrentValueSubject<A, B>;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22[0] = v11;
    *v9 = 136446722;
    v12 = _typeName(_:qualified:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v22);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = OBJC_IVAR____TtC15ConversationKit11BadgedLabel_badge;
    swift_beginAccess();
    v16 = *&v5[v15];
    *(v9 + 14) = v16;
    *(v9 + 22) = 2112;
    *(v9 + 24) = v4;
    *v10 = v16;
    v10[1] = a1;
    v17 = v4;
    v18 = v16;
    _os_log_impl(&dword_1BBC58000, v6, v7, "[%{public}s] setting badge to %@ from %@", v9, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1BFB23DF0](v11, -1, -1);
    v19 = v9;
    v8 = &lazy protocol witness table cache variable for type CurrentValueSubject<CallDisplayStatus, Never> and conformance CurrentValueSubject<A, B>;
    MEMORY[0x1BFB23DF0](v19, -1, -1);
  }

  [v4 removeFromSuperview];
  v20 = v8[237];
  swift_beginAccess();
  if (*&v5[v20])
  {
    [v5 addSubview_];
  }

  return [v5 setNeedsLayout];
}

void *BadgedLabel.badge.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit11BadgedLabel_badge;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void BadgedLabel.badge.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit11BadgedLabel_badge;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  BadgedLabel.badge.didset(v4);
}

void (*BadgedLabel.badge.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit11BadgedLabel_badge;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return BadgedLabel.badge.modify;
}

void BadgedLabel.badge.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    BadgedLabel.badge.setter(v3);
  }

  else
  {
    BadgedLabel.badge.setter(*(*a1 + 24));
  }

  free(v2);
}

uint64_t key path getter for BadgedLabel.attributedText : BadgedLabel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t key path setter for BadgedLabel.attributedText : BadgedLabel(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x80);
  v4 = *a1;
  return v3(v2);
}

id BadgedLabel.attributedText.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit11BadgedLabel_label) attributedText];

  return v1;
}

void BadgedLabel.attributedText.setter(void *a1)
{
  [*&v1[OBJC_IVAR____TtC15ConversationKit11BadgedLabel_label] setAttributedText_];
  [v1 setNeedsLayout];
}

void (*BadgedLabel.attributedText.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(v1 + OBJC_IVAR____TtC15ConversationKit11BadgedLabel_label) attributedText];
  return BadgedLabel.attributedText.modify;
}

void BadgedLabel.attributedText.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    BadgedLabel.attributedText.setter(v2);
  }

  else
  {
    BadgedLabel.attributedText.setter(*a1);
  }
}

id BadgedLabel.font.getter()
{
  result = [*(v0 + OBJC_IVAR____TtC15ConversationKit11BadgedLabel_label) font];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

double BadgedLabel.glyphInsetFromTop.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit11BadgedLabel_label);
  [v1 _tightBoundingRectOfFirstLine];
  v2 = [v1 convertPoint:v0 toCoordinateSpace:?];
  v4 = v3;
  v5 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))(v2);
  if (v5)
  {
    v6 = v5;
    [v5 frame];
    MinY = CGRectGetMinY(v9);

    if (MinY < v4)
    {
      return MinY;
    }
  }

  return v4;
}

id BadgedLabel.init(label:badge:)(void *a1, void *a2)
{
  v5 = OBJC_IVAR____TtC15ConversationKit11BadgedLabel_badge;
  *&v2[OBJC_IVAR____TtC15ConversationKit11BadgedLabel_badge] = 0;
  *&v2[OBJC_IVAR____TtC15ConversationKit11BadgedLabel_label] = a1;
  swift_beginAccess();
  *&v2[v5] = a2;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for BadgedLabel();
  v6 = a1;
  v7 = a2;
  v8 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v8 addSubview_];
  if (a2)
  {
    [v8 addSubview_];

    v9 = v8;
  }

  else
  {
    v9 = v6;
    v6 = v8;
  }

  return v8;
}

uint64_t BadgedLabel.__allocating_init(font:textColor:badge:)(void *a1, void *a2)
{
  v3 = v2;
  type metadata accessor for UILabel();
  v6 = a1;
  v7 = a2;
  v11.value.super.isa = a2;
  UILabel.init(font:textColor:)(v8, v6, v11);
  v9 = (*(v3 + 160))();

  return v9;
}

id BadgedLabel.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void BadgedLabel.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit11BadgedLabel_badge) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall BadgedLabel.layoutSubviews()()
{
  ObjectType = swift_getObjectType();
  if (one-time initialization token for conversationControls != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, &static Logger.conversationControls);
    v4 = v0;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    v7 = os_log_type_enabled(v5, v6);
    v8 = MEMORY[0x1E69E7CA0];
    if (v7)
    {
      OUTLINED_FUNCTION_30_1();
      v251 = COERCE_DOUBLE(OUTLINED_FUNCTION_5_96());
      LODWORD(off_1E7FE9000) = 136446466;
      v9 = OUTLINED_FUNCTION_21_36();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v251);
      OUTLINED_FUNCTION_17_2();
      *(&off_1E7FE9000 + 4) = v1;
      WORD2(off_1E7FE9008) = 2080;
      [v4 bounds];
      v11 = CGRect.description.getter();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v251);
      OUTLINED_FUNCTION_17_2();
      *(&off_1E7FE9008 + 6) = v1;
      _os_log_impl(&dword_1BBC58000, v5, v6, "[%{public}s][sizing] bounds %s", &off_1E7FE9000, 0x16u);
      OUTLINED_FUNCTION_23_38(v13, v14, v8 + 8);
      OUTLINED_FUNCTION_3_26();
      OUTLINED_FUNCTION_27();
    }

    [v4 bounds];
    *&v17 = BadgedLabel.makeBadgeSize(fitting:)(v15, v16);
    *&v19 = v18;
    v20 = *&v17 > 2.22507386e-308;
    if (v18 <= 2.22507386e-308)
    {
      v20 = 0;
    }

    HIDWORD(v245) = v20;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_18_0(v22))
    {
      v23 = OUTLINED_FUNCTION_30_1();
      v255 = OUTLINED_FUNCTION_29_7();
      *v23 = 136446466;
      v24 = OUTLINED_FUNCTION_21_36();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v255);
      OUTLINED_FUNCTION_17_2();
      OUTLINED_FUNCTION_8_60();
      v251 = *&v17;
      v252 = *&v19;
      type metadata accessor for CGSize(0);
      v31 = OUTLINED_FUNCTION_20_40(v26, v27, v28, v29, v30);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v255);
      OUTLINED_FUNCTION_17_2();
      *(v23 + 14) = v1;
      OUTLINED_FUNCTION_4_105();
      _os_log_impl(v33, v34, v35, v36, v37, 0x16u);
      OUTLINED_FUNCTION_23_38(v38, v39, MEMORY[0x1E69E7CA0] + 8);
      OUTLINED_FUNCTION_3_26();
      OUTLINED_FUNCTION_27();
    }

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_18_0(v41))
    {
      v42 = swift_slowAlloc();
      v43 = OUTLINED_FUNCTION_23();
      v251 = *&v43;
      *v42 = 136446466;
      v44 = _typeName(_:qualified:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v251);
      OUTLINED_FUNCTION_17_2();
      *(v42 + 4) = v1;
      *(v42 + 12) = 1024;
      v46 = HIDWORD(v245);
      *(v42 + 14) = HIDWORD(v245);
      OUTLINED_FUNCTION_4_105();
      _os_log_impl(v47, v48, v49, v50, v51, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v43);
      OUTLINED_FUNCTION_3_26();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      v46 = HIDWORD(v245);
    }

    [v4 bounds];
    Width = CGRectGetWidth(v256);
    if (v46)
    {
      v53 = Width - *&v17 + -3.0;
    }

    else
    {
      v53 = Width;
    }

    [v4 bounds];
    Height = CGRectGetHeight(v257);
    v55 = *(v4 + OBJC_IVAR____TtC15ConversationKit11BadgedLabel_label);
    [v55 sizeThatFits_];
    v58 = v57;
    if (v53 >= v56)
    {
      v59 = v56;
    }

    else
    {
      v59 = v53;
    }

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_42_1(v61))
    {
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_5_96();
      OUTLINED_FUNCTION_19_36();
      v62 = OUTLINED_FUNCTION_8_76(4.8752e-34);
      OUTLINED_FUNCTION_17_48(v62, v63, v64, v65, v66, v67, v68, v69, v227, v233, v239, v245, *&v251, *&v252, v253, v254);
      OUTLINED_FUNCTION_16_50();
      OUTLINED_FUNCTION_1_118();
      v251 = v53;
      v252 = Height;
      type metadata accessor for CGSize(0);
      v75 = OUTLINED_FUNCTION_20_40(v70, v71, v72, v73, v74);
      OUTLINED_FUNCTION_17_48(v75, v76, v77, v78, v79, v80, v81, v82, v228, v234, v240, v246, *&v251, *&v252, v253, v254);
      OUTLINED_FUNCTION_16_50();
      *(v41 + 14) = ObjectType;
      OUTLINED_FUNCTION_0_141(&dword_1BBC58000, v83, v84, "[%{public}s][layout] labelFittingSize %s");
      OUTLINED_FUNCTION_9_69();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_2_2();
    }

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_42_1(v86))
    {
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_5_96();
      OUTLINED_FUNCTION_19_36();
      v87 = OUTLINED_FUNCTION_8_76(4.8752e-34);
      OUTLINED_FUNCTION_17_48(v87, v88, v89, v90, v91, v92, v93, v94, v227, v233, v239, v245, *&v251, *&v252, v253, v254);
      OUTLINED_FUNCTION_16_50();
      OUTLINED_FUNCTION_1_118();
      v251 = v59;
      v252 = v58;
      type metadata accessor for CGSize(0);
      v100 = OUTLINED_FUNCTION_20_40(v95, v96, v97, v98, v99);
      OUTLINED_FUNCTION_17_48(v100, v101, v102, v103, v104, v105, v106, v107, v229, v235, v241, v247, *&v251, *&v252, v253, v254);
      OUTLINED_FUNCTION_16_50();
      *(v41 + 14) = ObjectType;
      OUTLINED_FUNCTION_0_141(&dword_1BBC58000, v108, v109, "[%{public}s][layout] labelSize %s");
      OUTLINED_FUNCTION_9_69();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_2_2();
    }

    [v4 bounds];
    v110 = (CGRectGetHeight(v258) - *&v19) * 0.5;
    v233 = (*MEMORY[0x1E69E7D40] & *v4) + 96;
    v239 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x60);
    v111 = v239();
    v112 = OUTLINED_FUNCTION_25_36();
    [v113 v114];

    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_42_1(v116))
    {
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_5_96();
      OUTLINED_FUNCTION_19_36();
      v117 = OUTLINED_FUNCTION_8_76(4.8752e-34);
      OUTLINED_FUNCTION_17_48(v117, v118, v119, v120, v121, v122, v123, v124, v227, v233, v239, v245, *&v251, *&v252, v253, v254);
      OUTLINED_FUNCTION_16_50();
      OUTLINED_FUNCTION_1_118();
      v251 = 0.0;
      v252 = v110;
      type metadata accessor for CGPoint(0);
      v130 = OUTLINED_FUNCTION_20_40(v125, v126, v127, v128, v129);
      OUTLINED_FUNCTION_17_48(v130, v131, v132, v133, v134, v135, v136, v137, v230, v236, v242, v248, *&v251, *&v252, v253, v254);
      OUTLINED_FUNCTION_16_50();
      *(v41 + 14) = ObjectType;
      OUTLINED_FUNCTION_0_141(&dword_1BBC58000, v138, v139, "[%{public}s][layout] badgeOrigin %s");
      OUTLINED_FUNCTION_9_69();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_2_2();
    }

    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_42_1(v141))
    {
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_5_96();
      OUTLINED_FUNCTION_19_36();
      v142 = OUTLINED_FUNCTION_8_76(4.8752e-34);
      OUTLINED_FUNCTION_17_48(v142, v143, v144, v145, v146, v147, v148, v149, v227, v233, v239, v245, *&v251, *&v252, v253, v254);
      OUTLINED_FUNCTION_16_50();
      OUTLINED_FUNCTION_1_118();
      v251 = 0.0;
      v252 = v110;
      v253 = v17;
      v254 = v19;
      type metadata accessor for CGRect(0);
      v155 = OUTLINED_FUNCTION_20_40(v150, v151, v152, v153, v154);
      OUTLINED_FUNCTION_17_48(v155, v156, v157, v158, v159, v160, v161, v162, v231, v237, v243, v249, *&v251, *&v252, v253, v254);
      OUTLINED_FUNCTION_16_50();
      *(v41 + 14) = ObjectType;
      OUTLINED_FUNCTION_0_141(&dword_1BBC58000, v163, v164, "[%{public}s][layout] badgeFrame %s");
      OUTLINED_FUNCTION_9_69();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_2_2();
    }

    ObjectType = &off_1E7FE9000;
    v165 = 0.0;
    if (HIDWORD(v245))
    {
      v259.origin.x = OUTLINED_FUNCTION_25_36();
      v165 = CGRectGetMaxX(v259) + 3.0;
    }

    [v4 bounds];
    v166 = (CGRectGetHeight(v260) - v58) * 0.5;
    [v55 setFrame_];
    v167 = Logger.logObject.getter();
    v168 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_42_1(v168))
    {
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_5_96();
      OUTLINED_FUNCTION_19_36();
      v169 = OUTLINED_FUNCTION_8_76(4.8752e-34);
      OUTLINED_FUNCTION_17_48(v169, v170, v171, v172, v173, v174, v175, v176, v227, v233, v239, v245, *&v251, *&v252, v253, v254);
      OUTLINED_FUNCTION_16_50();
      OUTLINED_FUNCTION_1_118();
      v251 = v165;
      v252 = v166;
      type metadata accessor for CGPoint(0);
      v182 = OUTLINED_FUNCTION_20_40(v177, v178, v179, v180, v181);
      OUTLINED_FUNCTION_17_48(v182, v183, v184, v185, v186, v187, v188, v189, v232, v238, v244, v250, *&v251, *&v252, v253, v254);
      OUTLINED_FUNCTION_16_50();
      *(v41 + 14) = &off_1E7FE9000;
      ObjectType = &off_1E7FE9000;
      OUTLINED_FUNCTION_0_141(&dword_1BBC58000, v190, v191, "[%{public}s][layout] labelOrigin %s");
      OUTLINED_FUNCTION_9_69();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_2_2();
    }

    v192 = v4;
    v193 = Logger.logObject.getter();
    v194 = static os_log_type_t.debug.getter();

    v1 = 0x1FB3E9000;
    if (os_log_type_enabled(v193, v194))
    {
      v195 = OUTLINED_FUNCTION_30_1();
      v255 = OUTLINED_FUNCTION_29_7();
      *v195 = 136446466;
      v196 = _typeName(_:qualified:)();
      v198 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v196, v197, &v255);

      *(v195 + 4) = v198;
      *(v195 + 12) = 2080;
      OUTLINED_FUNCTION_24_35();
      v251 = *&v199;
      v252 = *&v200;
      v253 = v201;
      v254 = v202;
      type metadata accessor for CGRect(0);
      v208 = OUTLINED_FUNCTION_20_40(v203, v204, v205, v206, v207);
      v210 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v208, v209, &v255);

      *(v195 + 14) = v210;
      _os_log_impl(&dword_1BBC58000, v193, v194, "[%{public}s][layout] label.frame %s", v195, 0x16u);
      OUTLINED_FUNCTION_23_38(v211, v212, MEMORY[0x1E69E7CA0] + 8);
      OUTLINED_FUNCTION_3_26();
      OUTLINED_FUNCTION_27();
    }

    if ([v192 effectiveUserInterfaceLayoutDirection] != 1)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd, &_ss23_ContiguousArrayStorageCySo6UIViewCSgGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BAA20;
    *(inited + 32) = v239();
    *(inited + 40) = v55;
    v214 = MEMORY[0x1E69E7CC0];
    v251 = MEMORY[0x1E69E7CC0];
    v215 = v55;
    for (i = 0; i != 2; ++i)
    {
      v217 = *(inited + 8 * i + 32);
      if (v217)
      {
        v218 = v217;
        MEMORY[0x1BFB20CC0]();
        if (*((*&v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v214 = *&v251;
      }
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v0 = specialized Array.count.getter();
    for (j = 0; ; ++j)
    {
      if (v0 == j)
      {

        return;
      }

      if ((v214 & 0xC000000000000001) != 0)
      {
        v220 = MEMORY[0x1BFB22010](j, v214);
      }

      else
      {
        if (j >= *((v214 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v220 = *(v214 + 8 * j + 32);
      }

      v221 = v220;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v192 bounds];
      v222 = CGRectGetWidth(v261);
      OUTLINED_FUNCTION_24_35();
      v224 = v222 - v223;
      OUTLINED_FUNCTION_24_35();
      v225 = v224 - CGRectGetMinX(v262);
      OUTLINED_FUNCTION_24_35();
      MinY = CGRectGetMinY(v263);
      OUTLINED_FUNCTION_24_35();
      [v221 setFrame_];
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }
}

CGSize __swiftcall BadgedLabel.sizeThatFits(_:)(CGSize a1)
{
  v2 = v1;
  height = a1.height;
  width = a1.width;
  ObjectType = swift_getObjectType();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, &static Logger.conversationControls);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = OUTLINED_FUNCTION_18_0(v8);
  v10 = MEMORY[0x1E69E7CA0];
  v164 = ObjectType;
  if (v9)
  {
    v11 = OUTLINED_FUNCTION_30_1();
    v171 = OUTLINED_FUNCTION_29_7();
    *v11 = 136446466;
    v12 = _typeName(_:qualified:)();
    OUTLINED_FUNCTION_26_6(v12, v13, v14, v15, v16, v17, v18, v19, v154, v159, ObjectType, v169);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_8_60();
    v170 = height;
    type metadata accessor for CGSize(0);
    v24 = OUTLINED_FUNCTION_28_36(v20, v21, v22, v23);
    OUTLINED_FUNCTION_26_6(v24, v25, v26, v27, v28, v29, v30, v31, v155, v160, v165, *&width);
    OUTLINED_FUNCTION_17_2();
    *(v11 + 14) = ObjectType;
    OUTLINED_FUNCTION_4_105();
    _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
    OUTLINED_FUNCTION_23_38(v37, v38, v10 + 8);
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_27();
  }

  *&v39 = BadgedLabel.makeBadgeSize(fitting:)(width, height);
  v41 = v40;
  v42 = *&v39 > 2.22507386e-308;
  if (v40 <= 2.22507386e-308)
  {
    v42 = 0;
  }

  HIDWORD(v159) = v42;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v44))
  {
    v45 = OUTLINED_FUNCTION_30_1();
    v171 = OUTLINED_FUNCTION_29_7();
    *v45 = 136446466;
    v46 = _typeName(_:qualified:)();
    OUTLINED_FUNCTION_26_6(v46, v47, v48, v49, v50, v51, v52, v53, v154, v159, v164, v169);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_8_60();
    v170 = v41;
    type metadata accessor for CGSize(0);
    v58 = OUTLINED_FUNCTION_28_36(v54, v55, v56, v57);
    OUTLINED_FUNCTION_26_6(v58, v59, v60, v61, v62, v63, v64, v65, v156, v161, v166, v39);
    OUTLINED_FUNCTION_17_2();
    *(v45 + 14) = v10;
    OUTLINED_FUNCTION_4_105();
    _os_log_impl(v66, v67, v68, v69, v70, 0x16u);
    OUTLINED_FUNCTION_23_38(v71, v72, v10 + 8);
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_27();
  }

  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v74))
  {
    v75 = swift_slowAlloc();
    v76 = OUTLINED_FUNCTION_23();
    v169 = v76;
    *v75 = 136446466;
    v77 = _typeName(_:qualified:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v169);
    OUTLINED_FUNCTION_17_2();
    *(v75 + 4) = v10;
    *(v75 + 12) = 1024;
    v79 = HIDWORD(v159);
    *(v75 + 14) = HIDWORD(v159);
    _os_log_impl(&dword_1BBC58000, v73, v74, "[%{public}s][sizing] hasBadge %{BOOL}d", v75, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v76);
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_2_2();
  }

  else
  {

    v79 = HIDWORD(v159);
  }

  if (v79)
  {
    v80 = width - *&v39 + -3.0;
  }

  else
  {
    v80 = width;
  }

  [*(v2 + OBJC_IVAR____TtC15ConversationKit11BadgedLabel_label) sizeThatFits_];
  v82 = v81;
  v84 = v83;
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v86))
  {
    v87 = OUTLINED_FUNCTION_30_1();
    v171 = OUTLINED_FUNCTION_29_7();
    *v87 = 136446466;
    v88 = OUTLINED_FUNCTION_21_36();
    OUTLINED_FUNCTION_29_27(v88, v89, v90, v91, v92, v93, v94, v95, v154, v159, v164, v169);
    OUTLINED_FUNCTION_420();
    *(v87 + 4) = v79;
    *(v87 + 12) = 2080;
    v169 = *&v80;
    v170 = height;
    type metadata accessor for CGSize(0);
    v100 = OUTLINED_FUNCTION_28_36(v96, v97, v98, v99);
    OUTLINED_FUNCTION_29_27(v100, v101, v102, v103, v104, v105, v106, v107, v157, v162, v167, v169);
    OUTLINED_FUNCTION_420();
    *(v87 + 14) = v79;
    OUTLINED_FUNCTION_11_73(&dword_1BBC58000, v108, v109, "[%{public}s][sizing] labelFittingSize %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_27();
  }

  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v111))
  {
    v112 = OUTLINED_FUNCTION_30_1();
    v171 = OUTLINED_FUNCTION_29_7();
    *v112 = 136446466;
    v113 = OUTLINED_FUNCTION_21_36();
    OUTLINED_FUNCTION_29_27(v113, v114, v115, v116, v117, v118, v119, v120, v154, v159, v164, v169);
    OUTLINED_FUNCTION_420();
    *(v112 + 4) = v79;
    *(v112 + 12) = 2080;
    v169 = *&v82;
    v170 = v84;
    type metadata accessor for CGSize(0);
    v125 = OUTLINED_FUNCTION_28_36(v121, v122, v123, v124);
    OUTLINED_FUNCTION_29_27(v125, v126, v127, v128, v129, v130, v131, v132, v158, v163, v168, v169);
    OUTLINED_FUNCTION_420();
    *(v112 + 14) = v79;
    OUTLINED_FUNCTION_11_73(&dword_1BBC58000, v133, v134, "[%{public}s][sizing] labelSize %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_27();
  }

  if (v41 <= v84)
  {
    v41 = v84;
  }

  if (HIDWORD(v159))
  {
    v135 = *&v39 + 3.0 + v82;
  }

  else
  {
    v135 = v82;
  }

  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v137))
  {
    v138 = OUTLINED_FUNCTION_30_1();
    v139 = OUTLINED_FUNCTION_23();
    v169 = v139;
    *v138 = 136446466;
    v140 = OUTLINED_FUNCTION_21_36();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v141, &v169);
    OUTLINED_FUNCTION_420();
    *(v138 + 4) = v79;
    *(v138 + 12) = 2048;
    *(v138 + 14) = v41;
    OUTLINED_FUNCTION_11_73(&dword_1BBC58000, v142, v143, "[%{public}s][sizing] measuredHeight %f");
    __swift_destroy_boxed_opaque_existential_1(v139);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_27();
  }

  v144 = Logger.logObject.getter();
  v145 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v145))
  {
    v146 = OUTLINED_FUNCTION_30_1();
    v147 = OUTLINED_FUNCTION_23();
    v169 = v147;
    *v146 = 136446466;
    v148 = OUTLINED_FUNCTION_21_36();
    v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v149, &v169);

    *(v146 + 4) = v150;
    *(v146 + 12) = 2048;
    *(v146 + 14) = v135;
    _os_log_impl(&dword_1BBC58000, v144, v145, "[%{public}s][sizing] measuredWidth %f", v146, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v147);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  if (v135 <= width)
  {
    v151 = v135;
  }

  else
  {
    v151 = width;
  }

  if (v41 <= height)
  {
    v152 = v41;
  }

  else
  {
    v152 = height;
  }

  result.height = v152;
  result.width = v151;
  return result;
}

double BadgedLabel.makeBadgeSize(fitting:)(double a1, double a2)
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x60))();
  if (!v5)
  {
    return 0.0;
  }

  v6 = v5;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  v8 = v7 == 0;
  if (!v7)
  {
    v7 = v6;
  }

  v9 = &selRef_sizeThatFits_;
  if (!v8)
  {
    v9 = &selRef_systemLayoutSizeFittingSize_;
  }

  [v7 *v9];
  v11 = v10;

  return v11;
}

id BadgedLabel.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id BadgedLabel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BadgedLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for AlternatingLabel.attributedText.modify in conformance BadgedLabel(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))();
  return protocol witness for Control.cnkContentAlpha.modify in conformance BaseButton;
}

uint64_t key path getter for RemotePeoplePickerViewController.connection : RemotePeoplePickerViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t key path setter for RemotePeoplePickerViewController.connection : RemotePeoplePickerViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x70);
  v4 = *a1;
  return v3(v2);
}

void *RemotePeoplePickerViewController.connection.getter()
{
  v1 = OBJC_IVAR___CKRemotePeoplePickerViewController_connection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void RemotePeoplePickerViewController.connection.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CKRemotePeoplePickerViewController_connection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for RemotePeoplePickerViewController.contentViewController : RemotePeoplePickerViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for RemotePeoplePickerViewController.contentViewController : RemotePeoplePickerViewController(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);
  v5 = *a1;
  return v4(v2, v3);
}

id RemotePeoplePickerViewController.contentViewController.getter()
{
  v1 = &v0[OBJC_IVAR___CKRemotePeoplePickerViewController____lazy_storage___contentViewController];
  v2 = *&v0[OBJC_IVAR___CKRemotePeoplePickerViewController____lazy_storage___contentViewController];
  v3 = v2;
  if (v2 == 1)
  {
    v3 = closure #1 in RemotePeoplePickerViewController.contentViewController.getter(v0);
    v4 = *v1;
    *v1 = v3;
    *(v1 + 1) = v5;
    v6 = v3;
    outlined consume of IMAccount??(v4);
  }

  outlined copy of IMAccount??(v2);
  return v3;
}

id closure #1 in RemotePeoplePickerViewController.contentViewController.getter(void *a1)
{
  result = [a1 makeContentViewController];
  if (result)
  {
    v2 = result;
    ObjectType = swift_getObjectType();
    result = dynamic_cast_existential_1_conditional(v2, ObjectType, &protocol descriptor for SharePlayPeoplePicker);
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

void RemotePeoplePickerViewController.contentViewController.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___CKRemotePeoplePickerViewController____lazy_storage___contentViewController);
  v4 = *(v2 + OBJC_IVAR___CKRemotePeoplePickerViewController____lazy_storage___contentViewController);
  *v3 = a1;
  v3[1] = a2;
  outlined consume of IMAccount??(v4);
}

void (*RemotePeoplePickerViewController.contentViewController.modify(void **a1))(__int128 *a1, char a2)
{
  a1[2] = v1;
  *a1 = RemotePeoplePickerViewController.contentViewController.getter();
  a1[1] = v3;
  return RemotePeoplePickerViewController.contentViewController.modify;
}

void RemotePeoplePickerViewController.contentViewController.modify(__int128 *a1, char a2)
{
  v2 = (*(a1 + 2) + OBJC_IVAR___CKRemotePeoplePickerViewController____lazy_storage___contentViewController);
  v3 = *v2;
  v4 = *a1;
  *v2 = *a1;
  if (a2)
  {
    v5 = v4;
    outlined consume of IMAccount??(v3);
  }

  else
  {

    outlined consume of IMAccount??(v3);
  }
}

Swift::Void __swiftcall RemotePeoplePickerViewController.loadView()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v0 setView_];
}

Swift::Void __swiftcall RemotePeoplePickerViewController.viewDidLoad()()
{
  v1 = v0;
  v48.receiver = v0;
  v48.super_class = type metadata accessor for RemotePeoplePickerViewController();
  objc_msgSendSuper2(&v48, sel_viewDidLoad);
  v2 = (v0 + OBJC_IVAR___CKRemotePeoplePickerViewController_state);
  os_unfair_lock_lock((v0 + OBJC_IVAR___CKRemotePeoplePickerViewController_state));
  os_unfair_lock_opaque = v2[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v2);
  if (os_unfair_lock_opaque)
  {
    if (one-time initialization token for default != -1)
    {
      OUTLINED_FUNCTION_0_142();
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, &static Log.default);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (!OUTLINED_FUNCTION_25(v6))
    {
      goto LABEL_20;
    }

    v7 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v7);
    v10 = "View controller has been dismissed. Skipping view controller configuration";
    goto LABEL_19;
  }

  v11 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))();
  if (!v11)
  {
LABEL_15:
    if (one-time initialization token for default != -1)
    {
      OUTLINED_FUNCTION_0_142();
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, &static Log.default);
    v5 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_25(v46))
    {
      goto LABEL_20;
    }

    v47 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v47);
    v10 = "Failed to create SharePlay people picker view controller";
LABEL_19:
    OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v8, v9, v10);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    goto LABEL_20;
  }

  v13 = v11;
  v14 = v12;
  ObjectType = swift_getObjectType();
  v16 = [v13 view];
  if (!v16)
  {

    goto LABEL_15;
  }

  v17 = v16;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = *(v14 + 64);
  v19 = swift_unknownObjectRetain();
  v18(v19, ObjectType, v14);
  v5 = v13;
  [v1 addChildViewController_];
  v20 = [v1 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_22;
  }

  v21 = v20;
  [v20 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BC4BA7F0;
  v23 = [v17 topAnchor];
  v24 = OUTLINED_FUNCTION_9_70();
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = v24;
  v26 = [v24 topAnchor];

  v27 = OUTLINED_FUNCTION_8_4();
  *(v22 + 32) = v27;
  v28 = [v17 bottomAnchor];
  v29 = OUTLINED_FUNCTION_9_70();
  if (!v29)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v30 = v29;
  v31 = [v29 bottomAnchor];

  v32 = OUTLINED_FUNCTION_8_4();
  *(v22 + 40) = v32;
  v33 = [v17 leadingAnchor];
  v34 = OUTLINED_FUNCTION_9_70();
  if (!v34)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v35 = v34;
  v36 = [v34 leadingAnchor];

  v37 = OUTLINED_FUNCTION_8_4();
  *(v22 + 48) = v37;
  v38 = [v17 trailingAnchor];
  v39 = [v1 view];
  if (v39)
  {
    v40 = v39;
    v41 = objc_opt_self();
    v42 = [v40 trailingAnchor];

    v43 = [v38 constraintEqualToAnchor_];
    *(v22 + 56) = v43;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v41 activateConstraints_];

    [v5 didMoveToParentViewController_];
LABEL_20:

    return;
  }

LABEL_25:
  __break(1u);
}