uint64_t IdentifyIncomingCallerOutputStrategy.init(incomingCallCats:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for IdentifyIncomingCallerCATsSimple(0);
  *(a2 + 24) = result;
  *(a2 + 32) = &protocol witness table for IdentifyIncomingCallerCATsSimple;
  *a2 = a1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

uint64_t IdentifyIncomingCallerOutputStrategy.makePromptForConfirmationFlow<A>(app:intentResponse:sharedGlobals:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *(a5 + 24);
  v12 = v11(a4, a5);
  if (FollowUpOfferType.rawValue.getter(v12) == 0xD000000000000011 && 0x8000000000452840 == v13)
  {
    goto LABEL_12;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_13;
  }

  v16 = OUTLINED_FUNCTION_1_66();
  v17 = (v11)(v16);
  if (FollowUpOfferType.rawValue.getter(v17) == 0x4C41435F44414552 && v18 == 0xE90000000000004CLL)
  {
LABEL_12:
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_13:
  v21 = *(a5 + 16);
  v22 = OUTLINED_FUNCTION_1_66();
  v23 = v21(v22);
  if (!v23)
  {
LABEL_24:
    type metadata accessor for IncomingCallActionConfirmation(255);
    lazy protocol witness table accessor for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation(&lazy protocol witness table cache variable for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation, 255, type metadata accessor for IncomingCallActionConfirmation, &protocol conformance descriptor for IncomingCallActionConfirmation);
    type metadata accessor for PromptForConfirmationFlowAsync();
    v66 = a2;
    type metadata accessor for IncomingCallActionConfirmationStrategy(0, a4, a5, v37);
    outlined init with copy of SignalProviding(v6, &v59);
    outlined init with copy of SignalProviding(a3, &v63);
    v38 = a2;
    v39 = default argument 3 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(a4, a5);
    default argument 2 of PhoneTCCFlowStrategy.init(sharedGlobals:phoneCallCommonCats:phoneCallCommonCatPatterns:labelTemplatesProvider:tccTemplatesProvider:appInfoBuilder:)(a4, a5);
    IncomingCallActionConfirmationStrategy.__allocating_init(incomingCallIntentResponse:incomingCallCats:sharedGlobals:announceCallsContext:phoneCommonCats:phoneCallCommonCatPatterns:)(v38, &v59, &v63, 0, 0, v39, v62);
    v40 = a3[3];
    v41 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v40);
    (*(v41 + 16))(&v59, v40, v41);
    v42 = v60;
    v43 = v61;
    v44 = __swift_project_boxed_opaque_existential_1(&v59, v60);
    v64 = v42;
    v65 = v43;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v63);
    (*(*(v42 - 8) + 16))(boxed_opaque_existential_1, v44, v42);
    swift_getWitnessTable();
    v46 = PromptForConfirmationFlowAsync.__allocating_init<A>(itemToConfirm:strategy:outputPublisher:)();
    __swift_destroy_boxed_opaque_existential_1(&v59);
    *&v59 = v46;
    swift_getWitnessTable();
    v47 = Flow.eraseToAnyValueFlow()();

    return v47;
  }

  v24 = v23;
  if (!specialized Array.count.getter(v23))
  {

    goto LABEL_24;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v24 & 0xC000000000000001) == 0, v24);
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v25 = *(v24 + 32);
  }

  v26 = v25;

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.siriPhone);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "#IdentifyIncomingCallerOutputStrategy Using SearchCallHistoryFlow to push offer to call back", v30, 2u);
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INSearchCallHistoryIntent, INSearchCallHistoryIntent_ptr);
  v67.value.super.isa = 0;
  v67.is_nil = 0;
  v68.value.super.isa = 0;
  v68.is_nil = 12;
  v33.super.super.isa = INSearchCallHistoryIntent.init(dateCreated:recipient:callCapabilities:callTypes:unseen:)(v67, v68, 2, v31, v32).super.super.isa;
  v34 = [objc_allocWithZone(INSearchCallHistoryIntentResponse) initWithCode:7 userActivity:0];
  v35 = OUTLINED_FUNCTION_1_66();
  if (v21(v35))
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
    v36.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v36.super.isa = 0;
  }

  [v34 setCallRecords:v36.super.isa];

  v48 = type metadata accessor for SingleCallResultFlow();
  outlined init with copy of SignalProviding(a3, &v63);

  v49 = v26;
  v50 = v33.super.super.isa;
  v51 = v34;
  default argument 6 of SingleCallResultFlow.init(app:callRecord:intent:intentResponse:isIncomingCallFollowupPrompt:sharedGlobals:schGlobals:)();
  v52 = SingleCallResultFlow.__allocating_init(app:callRecord:intent:intentResponse:isIncomingCallFollowupPrompt:sharedGlobals:schGlobals:)(a1, v49, v50, v51, 1, &v63, &v59);
  type metadata accessor for IncomingCallActionConfirmationFlowAdapter();
  v53 = swift_allocObject();
  v53[5] = v48;
  v53[6] = lazy protocol witness table accessor for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation(&lazy protocol witness table cache variable for type SingleCallResultFlow and conformance SingleCallResultFlow, 255, type metadata accessor for SingleCallResultFlow, &protocol conformance descriptor for SingleCallResultFlow);
  v53[2] = v52;
  *&v59 = v53;
  OUTLINED_FUNCTION_0_60();
  lazy protocol witness table accessor for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation(v54, v55, v56, &protocol conformance descriptor for IncomingCallActionConfirmationFlowAdapter);

  v47 = Flow.eraseToAnyValueFlow()();

  return v47;
}

uint64_t IncomingCallActionConfirmationFlowAdapter.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for PromptResult.cancelled<A>(_:);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin08IncomingG18ActionConfirmationOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin08IncomingG18ActionConfirmationOGMR);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t IncomingCallActionConfirmationFlowAdapter.__allocating_init(_:)(void *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t IncomingCallActionConfirmationFlowAdapter.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IncomingCallActionConfirmationFlowAdapter();
  OUTLINED_FUNCTION_0_60();
  lazy protocol witness table accessor for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation(v2, v3, v4, &protocol conformance descriptor for IncomingCallActionConfirmationFlowAdapter);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t IncomingCallActionConfirmationFlowAdapter.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(IncomingCallActionConfirmationFlowAdapter.execute(), 0, 0);
}

uint64_t IncomingCallActionConfirmationFlowAdapter.execute()()
{
  v1 = v0[3];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = IncomingCallActionConfirmationFlowAdapter.execute();
  v5 = v0[2];

  return dispatch thunk of Flow.execute()(v5, v2, v3);
}

{
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t protocol witness for Flow.execute() in conformance IncomingCallActionConfirmationFlowAdapter(uint64_t a1)
{
  v6 = (*(**v1 + 120) + **(**v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance AnnounceVoicemailReadingFlow;

  return v6(a1);
}

uint64_t lazy protocol witness table accessor for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *specialized IncomingCallActionConfirmationFlowAdapter.__allocating_init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IncomingCallActionConfirmationFlowAdapter();
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v11 = specialized IncomingCallActionConfirmationFlowAdapter.init(_:)(v9, v10, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v11;
}

void *specialized IncomingCallActionConfirmationFlowAdapter.init(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  return a2;
}

uint64_t IdiomKeyedHintHistory.get(device:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DeviceState.idiom.getter();
  return Dictionary.subscript.getter();
}

uint64_t IdiomKeyedHintHistory.set(device:hintHistory:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = type metadata accessor for Optional();
  __chkstk_darwin(v6 - 8);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = DeviceState.idiom.getter();
  (*(*(v5 - 8) + 16))(v8, a2, v5);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v5);
  v11[1] = v9;
  type metadata accessor for Dictionary();
  return Dictionary.subscript.setter();
}

uint64_t IdiomKeyedHintHistory.description.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  return 0;
}

uint64_t IdiomKeyedHintHistory.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x70614D6D6F696469 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IdiomKeyedHintHistory<A>.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  SharedNeedsValueContext.NeedsValueCase.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance IdiomKeyedHintHistory<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = IdiomKeyedHintHistory.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance IdiomKeyedHintHistory<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = default argument 1 of SharedConfirmationRepromptContext.hasPrompted(for:times:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IdiomKeyedHintHistory<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IdiomKeyedHintHistory<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t IdiomKeyedHintHistory.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IdiomKeyedHintHistory.CodingKeys(255, a3, a4, a4);
  OUTLINED_FUNCTION_0_61();
  swift_getWitnessTable();
  type metadata accessor for KeyedEncodingContainer();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v6 = OUTLINED_FUNCTION_1_67();
  return v7(v6);
}

void *IdiomKeyedHintHistory.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IdiomKeyedHintHistory.CodingKeys(255, a2, a3, a4);
  OUTLINED_FUNCTION_0_61();
  swift_getWitnessTable();
  type metadata accessor for KeyedDecodingContainer();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v6);
  swift_getTupleTypeMetadata2();
  static Array._allocateUninitialized(_:)();
  Dictionary.init(dictionaryLiteral:)();

  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v4)
  {
    type metadata accessor for Dictionary();
    swift_getWitnessTable();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = OUTLINED_FUNCTION_1_67();
    v10(v9);
    v7 = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t protocol witness for SiriPhoneDefaultsCodable.init() in conformance IdiomKeyedHintHistory<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = default argument 0 of IdiomKeyedHintHistory.init(idiomMap:)(*(a1 + 16));
  *a2 = result;
  return result;
}

void *protocol witness for Decodable.init(from:) in conformance IdiomKeyedHintHistory<A>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  result = IdiomKeyedHintHistory.init(from:)(a1, *(a2 + 16), *(a2 + 24), a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for IdiomKeyedHintHistory<A>(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for IdiomKeyedHintHistory<A>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata instantiation function for IdiomKeyedHintHistory(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *storeEnumTagSinglePayload for IdiomKeyedHintHistory.CodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  static Signpost.begin(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  *(v16 + 24) = v11;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;
  *(v16 + 41) = HIBYTE(v15) & 1;
  *(v16 + 48) = a2;
  *(v16 + 56) = a3;
  v17 = *(a5 + 16);

  v18 = OUTLINED_FUNCTION_4_37();
  v17(v18);
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v19 = OUTLINED_FUNCTION_2_58();
  v20(v19);
  __swift_project_boxed_opaque_existential_1(v72, v73);
  OUTLINED_FUNCTION_3_13();
  LOBYTE(a3) = dispatch thunk of DeviceState.isWatch.getter();
  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_destroy_boxed_opaque_existential_1(v74);
  if (a3)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.siriPhone);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_6_43(v23))
    {
      v24 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_8_43(v24);
      OUTLINED_FUNCTION_5_44(&dword_0, v25, v26, "#IdiomSensitiveViewBuilder: Building views for Watch");
      OUTLINED_FUNCTION_5_7();
    }
  }

  else
  {
    v27 = OUTLINED_FUNCTION_4_37();
    v17(v27);
    __swift_project_boxed_opaque_existential_1(v74, v75);
    v28 = OUTLINED_FUNCTION_2_58();
    v29(v28);
    __swift_project_boxed_opaque_existential_1(v72, v73);
    OUTLINED_FUNCTION_3_13();
    v30 = dispatch thunk of DeviceState.isMac.getter();
    __swift_destroy_boxed_opaque_existential_1(v72);
    __swift_destroy_boxed_opaque_existential_1(v74);
    if (v30)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logger.siriPhone);
      v22 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_6_43(v32))
      {
        v33 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_8_43(v33);
        OUTLINED_FUNCTION_5_44(&dword_0, v34, v35, "#IdiomSensitiveViewBuilder: Building views for Mac");
        OUTLINED_FUNCTION_5_7();
      }
    }

    else
    {
      v36 = OUTLINED_FUNCTION_4_37();
      v17(v36);
      __swift_project_boxed_opaque_existential_1(v74, v75);
      v37 = OUTLINED_FUNCTION_2_58();
      v38(v37);
      __swift_project_boxed_opaque_existential_1(v72, v73);
      OUTLINED_FUNCTION_3_13();
      v39 = dispatch thunk of DeviceState.isCarPlay.getter();
      __swift_destroy_boxed_opaque_existential_1(v72);
      __swift_destroy_boxed_opaque_existential_1(v74);
      if (v39)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v40 = type metadata accessor for Logger();
        __swift_project_value_buffer(v40, static Logger.siriPhone);
        v22 = Logger.logObject.getter();
        v41 = static os_log_type_t.info.getter();
        if (OUTLINED_FUNCTION_6_43(v41))
        {
          v42 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_8_43(v42);
          OUTLINED_FUNCTION_5_44(&dword_0, v43, v44, "#IdiomSensitiveViewBuilder: Building views for CarPlay");
          OUTLINED_FUNCTION_5_7();
        }
      }

      else
      {
        v45 = OUTLINED_FUNCTION_4_37();
        v17(v45);
        __swift_project_boxed_opaque_existential_1(v74, v75);
        v46 = OUTLINED_FUNCTION_2_58();
        v47(v46);
        __swift_project_boxed_opaque_existential_1(v72, v73);
        OUTLINED_FUNCTION_3_13();
        v48 = dispatch thunk of DeviceState.isAppleTV.getter();
        __swift_destroy_boxed_opaque_existential_1(v72);
        __swift_destroy_boxed_opaque_existential_1(v74);
        if (v48)
        {
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
          }

          v49 = type metadata accessor for Logger();
          __swift_project_value_buffer(v49, static Logger.siriPhone);
          v22 = Logger.logObject.getter();
          v50 = static os_log_type_t.info.getter();
          if (OUTLINED_FUNCTION_6_43(v50))
          {
            v51 = OUTLINED_FUNCTION_65_0();
            OUTLINED_FUNCTION_8_43(v51);
            OUTLINED_FUNCTION_5_44(&dword_0, v52, v53, "#IdiomSensitiveViewBuilder: Building views for AppleTV");
            OUTLINED_FUNCTION_5_7();
          }
        }

        else
        {
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
          }

          v54 = type metadata accessor for Logger();
          __swift_project_value_buffer(v54, static Logger.siriPhone);
          v22 = Logger.logObject.getter();
          v55 = static os_log_type_t.info.getter();
          if (OUTLINED_FUNCTION_6_43(v55))
          {
            v56 = OUTLINED_FUNCTION_65_0();
            OUTLINED_FUNCTION_8_43(v56);
            OUTLINED_FUNCTION_5_44(&dword_0, v57, v58, "#IdiomSensitiveViewBuilder: Building views for IOS");
            OUTLINED_FUNCTION_5_7();
          }
        }
      }
    }
  }

  v67 = OUTLINED_FUNCTION_0_62(v59, v60, v61, v62, v63, v64, v65, v66, v70, a1);
  v68(v67);
}

uint64_t IdiomSensitiveViewBuilding.makeViews()(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = AnnounceCallBellCATPatternsExecutor.announceCallBellEnded();

  return IdiomSensitiveViewBuilding.makeViews(utteranceViews:)(_swiftEmptyArrayStorage, a1, a2);
}

uint64_t IdiomSensitiveViewBuilding.makeViews(utteranceViews:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(IdiomSensitiveViewBuilding.makeViews(utteranceViews:), 0, 0);
}

uint64_t IdiomSensitiveViewBuilding.makeViews(utteranceViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = *(v20 + 48);
  v22 = *(v20 + 24);
  v23 = swift_task_alloc();
  *(v20 + 56) = v23;
  *(v23 + 16) = *(v20 + 32);
  *(v23 + 32) = v21;
  *(v23 + 40) = v22;
  v24 = swift_task_alloc();
  *(v20 + 64) = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
  *v24 = v20;
  v24[1] = IdiomSensitiveViewBuilding.makeViews(utteranceViews:);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v20 + 16, 0, 0, 0xD00000000000001ALL, 0x800000000045A9D0, partial apply for closure #1 in IdiomSensitiveViewBuilding.makeViews(utteranceViews:), v23, v25, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t IdiomSensitiveViewBuilding.makeViews(utteranceViews:)()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = IdiomSensitiveViewBuilding.makeViews(utteranceViews:);
  }

  else
  {

    v2 = CallingIntentContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in IdiomSensitiveViewBuilding.makeViews(utteranceViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  (*(a5 + 8))(a3, partial apply for closure #1 in closure #1 in IdiomSensitiveViewBuilding.makeViews(utteranceViews:), v15, a4, a5);
}

void closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  LOBYTE(v8) = a2;
  v9 = a1;
  if (a2)
  {
    swift_errorRetain();
    v10 = v9;
  }

  else
  {
    v11 = specialized Array.count.getter(a1);
    v10 = _swiftEmptyArrayStorage;
    if (v11)
    {
      v12 = v11;
      v43 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      if (v12 < 0)
      {
        __break(1u);
        return;
      }

      v39 = v8;
      v40 = a7;
      v8 = 0;
      v13 = v9 & 0xC000000000000001;
      v10 = v43;
      v41 = v9 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v14 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v13)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v41 + 16))
          {
            goto LABEL_32;
          }

          v15 = *(v9 + 8 * v8 + 32);
        }

        v16 = v15;
        v17 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v15, &selRef_encodedClassName);
        if (v18)
        {
          v19 = v17;
        }

        else
        {
          v19 = 0x416E776F6E6B6E55;
        }

        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = 0xEE00776569566563;
        }

        v21 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v16, &selRef_aceId);
        if (v22)
        {
          v23 = v21;
        }

        else
        {
          v23 = 7104878;
        }

        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = 0xE300000000000000;
        }

        v25._countAndFlagsBits = 0x3D64496563615BLL;
        v25._object = 0xE700000000000000;
        String.append(_:)(v25);
        v26._countAndFlagsBits = v23;
        v26._object = v24;
        String.append(_:)(v26);

        v27._countAndFlagsBits = 93;
        v27._object = 0xE100000000000000;
        String.append(_:)(v27);

        v28 = v20;
        v43 = v10;
        a7 = v10[2];
        if (a7 >= v10[3] >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v10 = v43;
        }

        v10[2] = a7 + 1;
        v29 = &v10[2 * a7];
        v29[4] = v19;
        v29[5] = v28;
        ++v8;
        v9 = a1;
        if (v14 == v12)
        {
          a7 = v40;
          LOBYTE(v8) = v39;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }
  }

LABEL_27:
  if (one-time initialization token for siriPhone != -1)
  {
LABEL_33:
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.siriPhone);
  v31 = v8 & 1;
  outlined copy of Result<[INPerson], Error>(v10, v8 & 1);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  outlined consume of Result<[INPerson], Error>(v10, v8 & 1);
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v8;
    v8 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v8 = 136315138;
    outlined copy of Result<[INPerson], Error>(v10, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOySaySSGs5Error_pGMd, &_ss6ResultOySaySSGs5Error_pGMR);
    v36 = String.init<A>(describing:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v43);
    v9 = a1;

    *(v8 + 4) = v38;
    _os_log_impl(&dword_0, v32, v33, "IdiomSensitiveViewBuilder: Built views: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);

    LOBYTE(v8) = v34;
  }

  Signpost.OpenSignpost.end()();
  (a7)(v9, v8 & 1);
  outlined consume of Result<[INPerson], Error>(v10, v8 & 1);
}

void partial apply for closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(uint64_t a1, char a2)
{
  if (*(v2 + 41))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v3 | *(v2 + 40), *(v2 + 48));
}

uint64_t IncomingCallActionConfirmationStrategy.__allocating_init(incomingCallIntentResponse:incomingCallCats:sharedGlobals:announceCallsContext:phoneCommonCats:phoneCallCommonCatPatterns:)(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  v9 = a5;
  v14 = swift_allocObject();
  IncomingCallActionConfirmationStrategy.init(incomingCallIntentResponse:incomingCallCats:sharedGlobals:announceCallsContext:phoneCommonCats:phoneCallCommonCatPatterns:)(a1, a2, a3, a4, v9, a6, a7);
  return v14;
}

uint64_t IncomingCallActionConfirmation.confirmationResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for IncomingCallActionConfirmation(0);
  v5 = OUTLINED_FUNCTION_21(v4);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of IncomingCallActionConfirmation(v2, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV03newD0_tMd, &_s11SiriKitFlow5InputV03newD0_tMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v8);
  v10 = type metadata accessor for ConfirmationResponse();
  OUTLINED_FUNCTION_23_1();
  v12 = *(v11 + 104);
  if (EnumTagSinglePayload == 1)
  {
    v12(a1, enum case for ConfirmationResponse.rejected(_:), v10);
    return OUTLINED_FUNCTION_21_18();
  }

  else
  {
    v12(a1, enum case for ConfirmationResponse.confirmed(_:), v10);
    OUTLINED_FUNCTION_21_18();
    type metadata accessor for Input();
    OUTLINED_FUNCTION_23_1();
    return (*(v14 + 8))(v7);
  }
}

void *IncomingCallActionConfirmationStrategy.init(incomingCallIntentResponse:incomingCallCats:sharedGlobals:announceCallsContext:phoneCommonCats:phoneCallCommonCatPatterns:)(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, char a5, uint64_t a6, __int128 *a7)
{
  v8 = v7;
  v15 = *v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17FollowUpOfferTypeO_ShyAC0dE4VerbOGtGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17FollowUpOfferTypeO_ShyAC0dE4VerbOGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FD0;
  *(inited + 32) = 2;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin0eF4VerbO_Tt0g5();
  *(inited + 40) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy27PhoneCallFlowDelegatePlugin0aB4VerbOGMd, &_sShy27PhoneCallFlowDelegatePlugin0aB4VerbOGMR);
  lazy protocol witness table accessor for type FollowUpOfferType and conformance FollowUpOfferType();
  v8[2] = Dictionary.init(dictionaryLiteral:)();
  v8[3] = a1;
  outlined init with take of SPHConversation(a2, (v8 + 9));
  type metadata accessor for IncomingCallNLContextProvider(0, *(v15 + 80), *(v15 + 88), v18);
  v8[14] = UnsetRelationshipTemplatesWrapper.__allocating_init()();
  v8[15] = a4;
  *(v8 + 128) = a5;
  outlined init with take of SPHConversation(a3, (v8 + 4));
  v8[17] = a6;
  outlined init with take of SPHConversation(a7, (v8 + 18));
  return v8;
}

uint64_t type metadata accessor for IncomingCallActionConfirmation(uint64_t a1)
{
  result = type metadata singleton initialization cache for IncomingCallActionConfirmation;
  if (!type metadata singleton initialization cache for IncomingCallActionConfirmation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of IncomingCallActionConfirmation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IncomingCallActionConfirmation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t IncomingCallActionConfirmationStrategy.actionForInput(_:)()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[7];
  v6 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v5);
  v7 = (*(v6 + 72))(v5, v6);
  Input.parse.getter();
  (*(*v7 + 192))(&v13, v4);

  (*(v2 + 8))(v4, v1);
  if (!v14)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v13, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    return static ActionForInput.ignore()();
  }

  outlined init with take of SPHConversation(&v13, v15);
  if (IncomingCallActionConfirmationStrategy.parsePhoneCallConfirmationFromIntent(intent:)(v15) == 5)
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    return static ActionForInput.ignore()();
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v9 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v9, static Logger.siriPhone);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_65_0();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "#IncomingCallActionConfirmationStrategy received a value for phoneCallConfirmation.", v12, 2u);
    OUTLINED_FUNCTION_26_0(v12);
  }

  static ActionForInput.handle()();
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t IncomingCallActionConfirmationStrategy.parseConfirmationResponse(input:)()
{
  OUTLINED_FUNCTION_15();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = type metadata accessor for Parse();
  v1[15] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[16] = v5;
  v1[17] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = v2[7];
  v4 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v3);
  v5 = (*(v4 + 72))(v3, v4);
  Input.parse.getter();
  (*(*v5 + 192))(v1);

  v6 = OUTLINED_FUNCTION_55();
  v7(v6);
  if (!*(v0 + 80))
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 56, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    goto LABEL_5;
  }

  outlined init with take of SPHConversation((v0 + 56), v0 + 16);
  if (IncomingCallActionConfirmationStrategy.parsePhoneCallConfirmationFromIntent(intent:)(v0 + 16))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_5:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v8 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v8, static Logger.siriPhone);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v10))
    {
      v11 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v11);
      OUTLINED_FUNCTION_14_1(&dword_0, v12, v13, "#IncomingCallActionConfirmationStrategy confirmation prompt rejected.");
      OUTLINED_FUNCTION_12_3();
    }

    v14 = *(v0 + 96);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV03newD0_tMd, &_s11SiriKitFlow5InputV03newD0_tMR);
    v16 = v14;
    v17 = 1;
    goto LABEL_15;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v18 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v18, static Logger.siriPhone);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v20))
  {
    v21 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v21);
    OUTLINED_FUNCTION_14_1(&dword_0, v22, v23, "#IncomingCallActionConfirmationStrategy phoneCallConfirmation = .yes");
    OUTLINED_FUNCTION_12_3();
  }

  v25 = *(v0 + 96);
  v24 = *(v0 + 104);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  type metadata accessor for Input();
  OUTLINED_FUNCTION_23_1();
  (*(v26 + 16))(v25, v24);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV03newD0_tMd, &_s11SiriKitFlow5InputV03newD0_tMR);
  v16 = v25;
  v17 = 0;
LABEL_15:
  __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);

  OUTLINED_FUNCTION_11();

  return v27();
}

uint64_t IncomingCallActionConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return OUTLINED_FUNCTION_0_1(IncomingCallActionConfirmationStrategy.makePromptForConfirmation(itemToConfirm:));
}

uint64_t IncomingCallActionConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  v17 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    *(v0 + 56) = (*(*(v4 + 88) + 24))(*(v4 + 80));
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "#IncomingCallActionConfirmationStrategy prompting user for confirmation on followUpOffer: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_26_0(v6);
    OUTLINED_FUNCTION_26_0(v5);
  }

  v15 = (*(**(v0 + 32) + 224) + **(**(v0 + 32) + 224));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 48) = v10;
  *v10 = v11;
  v10[1] = CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationMixedLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:);
  v12 = *(v0 + 24);
  v13 = *(v0 + 16);

  return v15(v13, v12);
}

uint64_t IncomingCallActionConfirmationStrategy.makeConfirmationRejectedResponse()()
{
  OUTLINED_FUNCTION_15();
  v1[8] = v2;
  v1[9] = v0;
  v1[10] = *v0;
  v3 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v3);
  v1[11] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v4);
  v1[12] = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  v36 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#IncomingCallActionConfirmationStrategy Submitting SiriKitFlow.Output to acknowledge rejection", v4, 2u);
    OUTLINED_FUNCTION_26_0(v4);
  }

  if (one-time initialization token for announceTelephony != -1)
  {
    OUTLINED_FUNCTION_0_24(&one-time initialization token for announceTelephony);
  }

  OUTLINED_FUNCTION_9_0(v1, static Logger.announceTelephony);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[10];
  if (v7)
  {
    v9 = v0[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = v11;
    *v10 = 136315138;
    v0[7] = v9;
    v13 = *(v8 + 80);
    v12 = *(v8 + 88);
    type metadata accessor for IncomingCallActionConfirmationStrategy(0, v13, v12, v14);

    v15 = String.init<A>(describing:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v35);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_0, v5, v6, "#%s: User declined", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_26_0(v11);
    OUTLINED_FUNCTION_26_0(v10);
  }

  else
  {

    v13 = *(v8 + 80);
    v12 = *(v8 + 88);
  }

  v18 = (*(v12 + 24))(v13, v12);
  if (FollowUpOfferType.rawValue.getter(v18) == 0xD000000000000013 && 0x8000000000452820 == v19)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      v22 = v0[9];
      type metadata accessor for PhoneCallCommonCATsSimple(0);
      static CATOption.defaultMode.getter();
      CATWrapperSimple.__allocating_init(options:globals:)();
      static DialogPhase.canceled.getter();
      outlined init with copy of SignalProviding(v22 + 32, (v0 + 2));
      type metadata accessor for DialogOutputFactory(0);
      swift_allocObject();
      v23 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
      v0[13] = v23;
      v34 = (*(*v23 + 136) + **(*v23 + 136));
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[14] = v24;
      *v24 = v25;
      v24[1] = IncomingCallActionConfirmationStrategy.makeConfirmationRejectedResponse();
      v26 = v0[8];

      return v34(v26);
    }
  }

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v29))
  {
    v30 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v30);
    OUTLINED_FUNCTION_14_1(&dword_0, v31, v32, "#IncomingCallActionConfirmationStrategy Offered to answer and user rejected -- allow HangUp flow to execute and provide dialog");
    OUTLINED_FUNCTION_12_3();
  }

  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();

  OUTLINED_FUNCTION_11();

  return v33();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v3 + 120) = v0;

  if (v0)
  {

    return _swift_task_switch(IncomingCallActionConfirmationStrategy.makeConfirmationRejectedResponse(), 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v6();
  }
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t IncomingCallActionConfirmationStrategy.makeFlowCancelledResponse()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1(IncomingCallActionConfirmationStrategy.makeFlowCancelledResponse());
}

uint64_t IncomingCallActionConfirmationStrategy.makeFlowCancelledResponse()()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v4);
    OUTLINED_FUNCTION_14_1(&dword_0, v5, v6, "#IncomingCallActionConfirmationStrategy makeFlowCancelledResponse: cancellation = rejection");
    OUTLINED_FUNCTION_12_3();
  }

  v7 = v0[3];

  v12 = (*(*v7 + 200) + **(*v7 + 200));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[4] = v8;
  *v8 = v9;
  v8[1] = DialogOutputFactory.makeOutput();
  v10 = v0[2];

  return v12(v10);
}

uint64_t IncomingCallActionConfirmationStrategy.makeErrorResponse(_:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v0, static Logger.siriPhone);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v2))
  {
    v3 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v3);
    OUTLINED_FUNCTION_14_1(&dword_0, v4, v5, "#IncomingCallActionConfirmationStrategy makeErrorResponse");
    OUTLINED_FUNCTION_12_3();
  }

  swift_willThrow();
  swift_errorRetain();
  OUTLINED_FUNCTION_11();

  return v6();
}

uint64_t IncomingCallActionConfirmationStrategy.makePromptForConfirmationOutput(itemToConfirm:)()
{
  OUTLINED_FUNCTION_15();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v1[10] = *v0;
  v4 = type metadata accessor for Logger();
  v1[11] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[12] = v5;
  v1[13] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v6);
  v1[14] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for OutputGenerationManifest();
  v1[15] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[16] = v8;
  v1[17] = OUTLINED_FUNCTION_45();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v9);
  v1[18] = OUTLINED_FUNCTION_45();
  v10 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v10, v11, v12);
}

{
  v1 = v0[18];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v2[12];
  v5 = v2[13];
  __swift_project_boxed_opaque_existential_1(v2 + 9, v4);
  v6 = (*(*(v3 + 88) + 24))(*(v3 + 80));
  FollowUpOfferType.rawValue.getter(v6);
  SpeakableString.init(print:speak:)();
  v7 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v7);
  v11 = (*(v5 + 16) + **(v5 + 16));
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = IncomingCallActionConfirmationStrategy.makePromptForConfirmationOutput(itemToConfirm:);
  v9 = v0[18];

  return v11(v9, v4, v5);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = *(v2 + 144);
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v7 + 160) = v6;
  *(v7 + 168) = v0;

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v0)
  {
    v8 = IncomingCallActionConfirmationStrategy.makePromptForConfirmationOutput(itemToConfirm:);
  }

  else
  {
    v8 = IncomingCallActionConfirmationStrategy.makePromptForConfirmationOutput(itemToConfirm:);
  }

  return _swift_task_switch(v8, 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  (*(v3 + 8))(v1, v2);
  v4 = OUTLINED_FUNCTION_55();
  v5(v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_11();

  return v6();
}

{

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t IncomingCallActionConfirmationStrategy.makePromptForConfirmationOutput(itemToConfirm:)(uint64_t a1)
{
  v68 = v1;
  v2 = *(v1 + 72);
  static DialogPhase.confirmation.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  if (!*(v2 + 120))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v3 = static Logger.siriPhone;
    goto LABEL_7;
  }

  if (one-time initialization token for announceTelephony != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v3 = static Logger.announceTelephony;
LABEL_7:
    v4 = *(v1 + 160);
    v6 = *(v1 + 96);
    v5 = *(v1 + 104);
    v7 = *(v1 + 88);
    v8 = __swift_project_value_buffer(v7, v3);
    (*(v6 + 16))(v5, v8, v7);
    v9 = v4;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v10, v11))
    {
      break;
    }

    v12 = *(v1 + 160);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v64 = v14;
    *v13 = 136315394;
    v15 = [v12 catId];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v64);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v12 dialog];
    type metadata accessor for DialogElement();
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = specialized Array.count.getter(v21);
    if (!v22)
    {

LABEL_21:
      v42 = Array.description.getter();
      v44 = v43;

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v64);

      *(v13 + 14) = v45;
      _os_log_impl(&dword_0, v10, v11, "#IncomingCallActionConfirmationStrategy Follow-up offer: {\n    catId=%s,\n    dialog={\n        %s\n    }\n}", v13, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0(v14);
      OUTLINED_FUNCTION_26_0(v13);
      break;
    }

    v23 = v22;
    v65 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v23 < 0)
    {
      __break(1u);
      return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v24, v25, v26, v27, v28, v29, v30, v31);
    }

    v57 = v14;
    v58 = v11;
    v59 = v13;
    v60 = v10;
    v32 = 0;
    v33 = v65;
    v62 = v21 & 0xFFFFFFFFFFFFFF8;
    v63 = v21 & 0xC000000000000001;
    v61 = v1;
    v34 = v21;
    v35 = v23;
    while (1)
    {
      v36 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v63)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v32 >= *(v62 + 16))
        {
          goto LABEL_26;
        }

        v37 = *(v21 + 8 * v32 + 32);
      }

      v38 = v37;
      v67 = v37;
      closure #1 in implicit closure #2 in closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)(&v67, v66);

      v39 = v66[0];
      v40 = v66[1];
      v65 = v33;
      v1 = v33[2];
      if (v1 >= v33[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v33 = v65;
      }

      v33[2] = v1 + 1;
      v41 = &v33[2 * v1];
      v41[4] = v39;
      v41[5] = v40;
      ++v32;
      v21 = v34;
      if (v36 == v35)
      {

        v10 = v60;
        v1 = v61;
        v13 = v59;
        v11 = v58;
        v14 = v57;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    OUTLINED_FUNCTION_0_24(&one-time initialization token for announceTelephony);
  }

  v46 = *(v1 + 160);
  __swift_project_boxed_opaque_existential_1((*(v1 + 72) + 32), *(*(v1 + 72) + 56));
  v47 = OUTLINED_FUNCTION_55();
  v48(v47);
  v49 = *(v1 + 40);
  v50 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v51 = swift_allocObject();
  *(v1 + 176) = v51;
  *(v51 + 16) = xmmword_426260;
  *(v51 + 32) = v46;
  v52 = *(v50 + 8);
  v53 = v46;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 184) = v54;
  *v54 = v55;
  v54[1] = IncomingCallActionConfirmationStrategy.makePromptForConfirmationOutput(itemToConfirm:);
  v26 = *(v1 + 136);
  v24 = *(v1 + 56);
  v25 = v51;
  v27 = v49;
  v28 = v52;

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v24, v25, v26, v27, v28, v29, v30, v31);
}

uint64_t closure #1 in IncomingCallActionConfirmationStrategy.makePromptForConfirmationOutput(itemToConfirm:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v0 - 8);
  OutputGenerationManifest.canUseServerTTS.setter();
  IncomingCallActionConfirmationStrategy.shouldListenAfterSpeaking()();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  IncomingCallActionConfirmationStrategy.makeNLContextUpdate()();
  return OutputGenerationManifest.nlContextUpdate.setter();
}

BOOL IncomingCallActionConfirmationStrategy.shouldListenAfterSpeaking()()
{
  v1 = *(v0 + 120);
  if (one-time initialization token for announceTelephony != -1)
  {
    OUTLINED_FUNCTION_0_24(&one-time initialization token for announceTelephony);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v2, static Logger.announceTelephony);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1 == 0;
    _os_log_impl(&dword_0, v3, v4, "#IncomingCallActionConfirmationStrategy listenAfterSpeaking = %{BOOL}d", v5, 8u);
    OUTLINED_FUNCTION_12_3();
  }

  return v1 == 0;
}

uint64_t IncomingCallActionConfirmationStrategy.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  return v0;
}

uint64_t IncomingCallActionConfirmationStrategy.__deallocating_deinit()
{
  IncomingCallActionConfirmationStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance IncomingCallActionConfirmationStrategy<A>(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 176) + **(*v2 + 176));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance IncomingCallActionConfirmationStrategy<A>(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v8 = (*(*v2 + 192) + **(*v2 + 192));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1, v5);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:) in conformance IncomingCallActionConfirmationStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v11 = type metadata accessor for IncomingCallActionConfirmationStrategy(0, *(a3 + 80), *(a3 + 88), v10);
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:)(a1, a2, v11, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:) in conformance IncomingCallActionConfirmationStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v11 = type metadata accessor for IncomingCallActionConfirmationStrategy(0, *(a3 + 80), *(a3 + 88), v10);
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)(a1, a2, v11, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse() in conformance IncomingCallActionConfirmationStrategy<A>(uint64_t a1)
{
  v6 = (*(*v1 + 200) + **(*v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse() in conformance IncomingCallActionConfirmationStrategy<A>(uint64_t a1)
{
  v6 = (*(*v1 + 208) + **(*v1 + 208));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:) in conformance IncomingCallActionConfirmationStrategy<A>(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 216) + **(*v2 + 216));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t type metadata completion function for IncomingCallActionConfirmation(uint64_t a1)
{
  type metadata accessor for (newInput: Input)();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void type metadata accessor for (newInput: Input)()
{
  if (!lazy cache variable for type metadata for (newInput: Input))
  {
    v0 = type metadata accessor for Input();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (newInput: Input));
    }
  }
}

uint64_t IncomingCallActionContinueInAppStrategy.requireUnlock(intentResolutionRecord:)()
{
  v1 = *v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "#IncomingCallActionContinueInAppStrategy: requireUnlock", v5, 2u);
    OUTLINED_FUNCTION_26_0(v5);
  }

  v6 = *(v1 + 88);
  type metadata accessor for IntentResolutionRecord();
  v7 = IntentResolutionRecord.intentResponse.getter();
  IncomingCallIntentResponse.isIncomingCall.getter(v6, *(v1 + 96));
  v9 = v8;

  return v9 & 1;
}

uint64_t IncomingCallActionContinueInAppStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = *v0;
  v1[7] = *v0;
  v1[8] = *(v4 + 80);
  v1[9] = *(v4 + 88);
  v5 = type metadata accessor for IntentResolutionRecord();
  v1[10] = v5;
  v1[11] = *(v5 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(IncomingCallActionContinueInAppStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:), 0, 0);
}

{
  v48 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[5];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriPhone);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);
  v7(v1, v5, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[10];
  v14 = v0[11];
  if (v10)
  {
    v44 = v9;
    v15 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v46[0] = v45;
    *v15 = 136315394;
    v0[3] = IntentResolutionRecord.app.getter();
    v16 = *(v14 + 8);
    v16(v11, v13);
    type metadata accessor for App();
    lazy protocol witness table accessor for type App and conformance App();
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v46);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    v21 = IntentResolutionRecord.intentResponse.getter();
    v16(v12, v13);
    *(v15 + 14) = v21;
    *v43 = v21;
    _os_log_impl(&dword_0, v8, v44, "#IncomingCallActionContinueInAppStrategy: makeContinueInAppAutoPunchOutResponse to app %s with intentResponse %@", v15, 0x16u);
    outlined destroy of NSObject?(v43);
    OUTLINED_FUNCTION_26_0(v43);
    __swift_destroy_boxed_opaque_existential_1(v45);
    OUTLINED_FUNCTION_26_0(v45);
    OUTLINED_FUNCTION_26_0(v15);
  }

  else
  {
    v22 = *(v14 + 8);
    v22(v0[13], v0[10]);

    v22(v12, v13);
  }

  v23 = v0[9];
  v24 = v0[7];
  v25 = IntentResolutionRecord.intentResponse.getter();
  v26 = *(v24 + 96);
  IncomingCallIntentResponse.isIncomingCall.getter(v23, v26);
  LOBYTE(v23) = v27;

  if (v23)
  {
    v28 = v0[4];
    type metadata accessor for SAIntentGroupLaunchAppWithIntent();
    IntentResolutionRecord.app.getter();
    v29 = IntentResolutionRecord.intent.getter();
    v30 = IntentResolutionRecord.intentResponse.getter();
    v31 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_426260;
    *(v32 + 32) = v31;
    v33 = type metadata accessor for AceOutput();
    memset(v46, 0, sizeof(v46));
    v47 = 0;
    v28[3] = v33;
    v28[4] = &protocol witness table for AceOutput;
    __swift_allocate_boxed_opaque_existential_1(v28);
    AceOutput.init(commands:flowActivity:)();

    OUTLINED_FUNCTION_11();

    return v34();
  }

  else
  {
    v36 = v0[8];
    v37 = v0[9];
    v0[2] = v0[6];
    v38 = swift_task_alloc();
    v0[14] = v38;
    v39 = type metadata accessor for IncomingCallActionContinueInAppStrategy(0, v36, v37, v26);
    WitnessTable = swift_getWitnessTable();
    *v38 = v0;
    v38[1] = IncomingCallActionContinueInAppStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:);
    v41 = v0[4];
    v42 = v0[5];

    return ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)(v41, v42, v39, WitnessTable);
  }
}

{
  OUTLINED_FUNCTION_15();
  *(*v1 + 120) = v0;

  if (v0)
  {

    return _swift_task_switch(IncomingCallActionContinueInAppStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:), 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v2();
  }
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t protocol witness for ContinueInAppAutoPunchOutFlowStrategyAsync.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:) in conformance IncomingCallActionContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 112) + **(**v2 + 112));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance AnnounceVoicemailPromptForValueFlowStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance IncomingCallActionContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for IncomingCallActionContinueInAppStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance AnnounceVoicemailPromptForValueFlowStrategy;

  return ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance IncomingCallActionContinueInAppStrategy<A1, B1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance AnnounceVoicemailPromptForValueFlowStrategy;

  return UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock()(a1, a2, a3);
}

unint64_t type metadata accessor for SAIntentGroupLaunchAppWithIntent()
{
  result = lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent;
  if (!lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent);
  }

  return result;
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.announceCallsContext.getter()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = OUTLINED_FUNCTION_4_3();
  return v2(v1);
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.incomingCallCatsSimple.getter()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = OUTLINED_FUNCTION_4_38();
  return v2(v1);
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.deviceState.getter()
{
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  v1 = OUTLINED_FUNCTION_4_38();
  return v2(v1);
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.__allocating_init(strategy:sharedGlobals:callStateNotificationManager:audioSessionManager:sbsManager:)()
{
  OUTLINED_FUNCTION_24_8();
  v0 = swift_allocObject();
  IncomingCallActionHandleIntentFlowStrategy.init(strategy:sharedGlobals:callStateNotificationManager:audioSessionManager:sbsManager:)();
  return v0;
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.init(strategy:sharedGlobals:callStateNotificationManager:audioSessionManager:sbsManager:)()
{
  OUTLINED_FUNCTION_24_8();
  outlined init with take of SPHConversation(v5, v1 + 16);
  outlined init with take of SPHConversation(v4, v1 + 96);
  outlined init with take of SPHConversation(v3, v1 + 56);
  outlined init with take of SPHConversation(v2, v1 + 136);
  outlined init with take of SPHConversation(v0, v1 + 176);
  return v1;
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  return OUTLINED_FUNCTION_0_1(IncomingCallActionHandleIntentFlowStrategy.makeIntentExecutionBehavior(app:intent:));
}

{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v4);
    OUTLINED_FUNCTION_17_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_12_3();
  }

  type metadata accessor for SiriKitIntentExecutionBehavior();
  v10 = static SiriKitIntentExecutionBehavior.standard()();
  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.makePreHandleIntentOutput(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return OUTLINED_FUNCTION_0_1(IncomingCallActionHandleIntentFlowStrategy.makePreHandleIntentOutput(rchRecord:));
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.makePreHandleIntentOutput(rchRecord:)()
{
  v1 = *(v0 + 32);
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  if (one-time initialization token for defaultLoggingTaskTimeout != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 32);
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = __swift_project_value_buffer(v5, static CallStateNotificationManager.defaultLoggingTaskTimeout);
  v7 = *(v3 + 8);

  v7(v6, partial apply for closure #1 in IncomingCallActionHandleIntentFlowStrategy.makePreHandleIntentOutput(rchRecord:), v4, v2, v3);

  v8 = v4[15];
  v9 = v4[16];
  __swift_project_boxed_opaque_existential_1(v4 + 12, v8);
  v10 = (*(v9 + 56))(v8, v9);
  LOBYTE(v8) = (*(*v10 + 208))(v10);

  if (v8)
  {
    v11 = *(v0 + 32);
    v12 = v11[5];
    v13 = v11[6];
    __swift_project_boxed_opaque_existential_1(v11 + 2, v12);
    type metadata accessor for IntentResolutionRecord();
    v14 = IntentResolutionRecord.app.getter();
    v15 = (*(v13 + 48))(v4 + 12, v14, v12, v13);

    if (v15)
    {
      IntentResolutionRecord.app.getter();
      v16 = App.appIdentifier.getter();
      v18 = v17;

      if (v18)
      {
        v19 = *(v0 + 32);
        v20 = v19[20];
        v21 = v19[21];
        __swift_project_boxed_opaque_existential_1(v19 + 17, v20);
        (*(v21 + 8))(v16, v18, v20, v21);

        __swift_project_boxed_opaque_existential_1(v19 + 22, v19[25]);
        v22 = OUTLINED_FUNCTION_4_3();
        v23(v22);
      }
    }
  }

  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();
  OUTLINED_FUNCTION_11();

  return v24();
}

BOOL closure #1 in IncomingCallActionHandleIntentFlowStrategy.makePreHandleIntentOutput(rchRecord:)(int a1, void *a2)
{
  if (a1 == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.siriPhone);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "#SiriKitEventSender call state went active, logging .uufrReady", v7, 2u);
    }

    v8 = a2[15];
    v9 = a2[16];
    __swift_project_boxed_opaque_existential_1(a2 + 12, v8);
    (*(v9 + 40))(v11, v8, v9);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    type metadata accessor for SiriKitEvent();
    static SiriKitEvent.uufrReady()();
    dispatch thunk of SiriKitEventSending.send(_:)();

    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return a1 == 1;
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = *v2;
  return OUTLINED_FUNCTION_0_1(IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledResponse(rchRecord:));
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledResponse(rchRecord:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#IncomingCallActionHandleIntentFlowStrategy makeIntentHandledResponse", v4, 2u);
    OUTLINED_FUNCTION_26_0(v4);
  }

  v5 = v0[9];
  v6 = v0[10];

  v7 = v5[5];
  v8 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v7);
  type metadata accessor for IntentResolutionRecord();
  v9 = IntentResolutionRecord.intentResponse.getter();
  v10 = (*(v8 + 40))(v9, *(v6 + 96), v7, v8);

  if (v10)
  {
    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledResponse(rchRecord:);

    return IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledRFOutput(rchRecord:)();
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v14))
    {
      v15 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v15);
      OUTLINED_FUNCTION_17_4();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_12_3();
    }

    v21 = v0[9];

    v22 = v21[15];
    v23 = v21[16];
    __swift_project_boxed_opaque_existential_1(v21 + 12, v22);
    (*(v23 + 24))(v22, v23);
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    IncomingCallActionHandleIntentFlowStrategy.makePostIntentHandledCommands(rchRecord:)();
    dispatch thunk of AceServiceInvoker.submitAndForget(_:)();

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    type metadata accessor for EmptyOutput();
    static EmptyOutput.instance.getter();
    OUTLINED_FUNCTION_11();

    return v24();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledRFOutput(rchRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = type metadata accessor for OutputGenerationManifest();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();

  return _swift_task_switch(IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledRFOutput(rchRecord:), 0, 0);
}

{
  v18 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x800000000045C000, &v17);
    OUTLINED_FUNCTION_17_4();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_26_0(v5);
    OUTLINED_FUNCTION_12_3();
  }

  (*(**(v0 + 112) + 152))();
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
  v13 = IncomingCallActionHandleIntentFlowStrategy.getIncomingCallConcept(rchRecord:)();
  *(v0 + 144) = v13;
  v16 = (*(v12 + 8) + **(v12 + 8));
  v14 = swift_task_alloc();
  *(v0 + 152) = v14;
  *v14 = v0;
  v14[1] = IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledRFOutput(rchRecord:);

  return v16(v13, v11, v12);
}

{
  v1 = v0[21];
  v3 = v0[13];
  v2 = v0[14];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  IncomingCallActionHandleIntentFlowStrategy.getCompletionOutputManifest(rchRecord:)(v3);
  __swift_project_boxed_opaque_existential_1((v2 + 96), *(v2 + 120));
  v4 = OUTLINED_FUNCTION_4_3();
  v5(v4);
  v6 = v0[10];
  v7 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = swift_allocObject();
  v0[22] = v8;
  *(v8 + 16) = xmmword_426260;
  *(v8 + 32) = v1;
  v9 = *(v7 + 8);
  v10 = v1;
  v14 = swift_task_alloc();
  v0[23] = v14;
  *v14 = v0;
  v14[1] = IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledRFOutput(rchRecord:);
  v15 = v0[17];
  v16 = v0[12];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v16, v8, v15, v6, v9, v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  return _swift_task_switch(IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledRFOutput(rchRecord:), 0, 0);
}

{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  OUTLINED_FUNCTION_11();

  return v4();
}

{
  OUTLINED_FUNCTION_15();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledRFOutput(rchRecord:)(uint64_t a1)
{
  OUTLINED_FUNCTION_28();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v5 + 160) = v1;

  if (v1)
  {
    v8 = IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledRFOutput(rchRecord:);
  }

  else
  {
    *(v5 + 168) = a1;

    v8 = IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledRFOutput(rchRecord:);
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.getIncomingCallConcept(rchRecord:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v5 = &v27[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v2 + 88);
  type metadata accessor for IntentResolutionRecord();
  v7 = IntentResolutionRecord.intentResponse.getter();
  v8 = (*(*(v2 + 96) + 24))(v6, *(v2 + 96));

  if (FollowUpOfferType.rawValue.getter(v8) == 0xD000000000000011 && 0x8000000000452840 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v12 = v1[15];
  v13 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v12);
  (*(v13 + 8))(v27, v12, v13);
  v14 = v28;
  v15 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  LOBYTE(v14) = DeviceState.isAuthenticatedForPhone.getter(v14, v15);
  __swift_destroy_boxed_opaque_existential_1(v27);
  if (v14)
  {
LABEL_9:
    v16 = IntentResolutionRecord.intentResponse.getter();
    (*(*v1 + 160))(v27);
    __swift_project_boxed_opaque_existential_1(v27, v28);
    dispatch thunk of DeviceState.siriLocale.getter();
    type metadata accessor for AppInfoBuilder();
    v17 = swift_allocObject();
    v18 = _s27PhoneCallFlowDelegatePlugin0a8IncomingB0C14intentResponse10siriLocale7options14appInfoBuilderAcA0fb6IntentH0_p_10Foundation0J0VAA0aB6RecordC7OptionsVAA03AppM8Building_ptcfCTf4nnnen_nAA0smN0C_Tt3g5Tf4ennn_n(v16, v5, 0, v17, v6);
    __swift_destroy_boxed_opaque_existential_1(v27);
    return v18;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.siriPhone);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v22);
    OUTLINED_FUNCTION_33(&dword_0, v23, v24, "#IncomingCallActionHandleIntentFlowStrategy not setting incoming call concept for followUpOfferType == .callBack because device is not authenticated.");
    OUTLINED_FUNCTION_12_3();
  }

  return 0;
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.getCompletionOutputManifest(rchRecord:)(uint64_t a1)
{
  v1 = type metadata accessor for DialogPhase();
  __chkstk_darwin(v1 - 8);
  static DialogPhase.completion.getter();
  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t closure #1 in IncomingCallActionHandleIntentFlowStrategy.getCompletionOutputManifest(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  IncomingCallActionHandleIntentFlowStrategy.makePostIntentHandledCommands(rchRecord:)();
  return OutputGenerationManifest.additionalCommands.setter();
}

void *IncomingCallActionHandleIntentFlowStrategy.makePostIntentHandledCommands(rchRecord:)()
{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for IntentResolutionRecord();
  IntentResolutionRecord.app.getter();
  v3 = App.isFirstParty()();

  if (v3)
  {
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    v6 = IntentResolutionRecord.intentResponse.getter();
    v7 = *(v2 + 96);
    v8 = (*(v5 + 24))(v6, v7, v4, v5);

    if (v8)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.siriPhone);
      v10 = v8;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        v15 = [v10 dictionary];
        *(v13 + 4) = v15;
        *v14 = v15;
        _os_log_impl(&dword_0, v11, v12, "#IncomingCallActionHandleIntentFlowStrategy Sending PlayNotificationSound for call connected: %@", v13, 0xCu);
        outlined destroy of NSObject?(v14);
        OUTLINED_FUNCTION_26_0(v14);
        OUTLINED_FUNCTION_26_0(v13);
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v16 = v1[5];
    v17 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v16);
    v18 = IntentResolutionRecord.intentResponse.getter();
    v19 = (*(v17 + 32))(v18, v7, v16, v17);

    if (v19)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.siriPhone);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v23);
        OUTLINED_FUNCTION_33(&dword_0, v24, v25, "#IncomingCallActionHandleIntentFlowStrategy Sending CloseAssistant command after answering the call.");
        OUTLINED_FUNCTION_12_3();
      }

      [objc_allocWithZone(SAUICloseAssistant) init];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  return _swiftEmptyArrayStorage;
}

void *IncomingCallActionHandleIntentFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  return v0;
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.__deallocating_deinit()
{
  IncomingCallActionHandleIntentFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance IncomingCallActionHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for IncomingCallActionHandleIntentFlowStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance IncomingCallActionHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for IncomingCallActionHandleIntentFlowStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance IncomingCallActionHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 184) + **(**v2 + 184));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance IncomingCallActionHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 192) + **(**v2 + 192));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance IncomingCallActionHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for IncomingCallActionHandleIntentFlowStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance IncomingCallActionHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for IncomingCallActionHandleIntentFlowStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance IncomingCallActionHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for IncomingCallActionHandleIntentFlowStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = closure #2 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance IncomingCallActionHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 176) + **(**v2 + 176));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for Flow.onAsync(input:) in conformance ActionableCallControlFlow;

  return v8(a1, a2);
}

void IncomingCallFlow.init(state:app:strategy:sharedGlobals:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v0;
  v10 = type metadata accessor for PhoneCallFlowState(0, *(*v0 + 256), *(*v0 + 264), v1);
  OUTLINED_FUNCTION_7();
  v12 = v11;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v13);
  v15 = &v17 - v14;
  outlined init with copy of SignalProviding(v4, v0 + *(v9 + 288));
  OUTLINED_FUNCTION_2_0();
  *(v0 + *(v16 + 296)) = v6;
  (*(v12 + 16))(v15, v8, v10);
  outlined init with copy of SignalProviding(v2, v18);
  PhoneFlow.init(state:sharedGlobals:)(v15, v18);
  __swift_destroy_boxed_opaque_existential_1(v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  (*(v12 + 8))(v8, v10);
  OUTLINED_FUNCTION_65();
}

void IncomingCallFlow.__allocating_init(rchFlow:app:strategy:sharedGlobals:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for PhoneCallFlowState(0, *(v0 + 256), *(v0 + 264), v1);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  v11 = &v12[-v10];
  v13[0] = v8;
  type metadata accessor for RCHFlowResult();
  type metadata accessor for AnyValueFlow();
  swift_getWitnessTable();
  *v11 = Flow.eraseToAnyValueFlow()();
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(v4, v13);
  outlined init with copy of SignalProviding(v2, v12);
  (*(v0 + 304))(v11, v6, v13, v12);

  __swift_destroy_boxed_opaque_existential_1(v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_65();
}

uint64_t IncomingCallFlow.__allocating_init(app:strategy:sharedGlobals:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  type metadata accessor for PhoneCallFlowState(0, *(v4 + 256), *(v4 + 264), a4);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  v10 = &v13[-v9];
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(a2, v14);
  outlined init with copy of SignalProviding(a3, v13);
  v11 = (*(v4 + 304))(v10, a1, v14, v13);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v11;
}

void IncomingCallFlow.on(input:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_5_45();
  v7 = type metadata accessor for PhoneCallFlowState(0, *(v4 + 256), *(v5 + 264), v6);
  OUTLINED_FUNCTION_7();
  v38 = v8;
  __chkstk_darwin(v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.siriPhone);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_42();
    v37 = v3;
    v39 = v7;
    v19 = v18;
    v20 = OUTLINED_FUNCTION_36();
    v40[0] = v20;
    *v19 = 136315138;
    (*(*v0 + 128))();
    v21 = PhoneCallFlowState.description.getter(v39);
    v23 = v22;

    (*(v38 + 8))(v14, v39);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v40);
    OUTLINED_FUNCTION_40_0();

    *(v19 + 4) = v21;
    _os_log_impl(&dword_0, v16, v17, "#IncomingCallFlow: State = %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_26_0(v20);
    v24 = v19;
    v7 = v39;
    v3 = v37;
    OUTLINED_FUNCTION_26_0(v24);
  }

  else
  {
  }

  (*(*v1 + 128))();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    dispatch thunk of AnyValueFlow.on(input:)();
  }

  else if (EnumCaseMultiPayload == 5)
  {
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR) + 48);
    type metadata accessor for Input();
    OUTLINED_FUNCTION_23_1();
    (*(v27 + 16))(v14, v3);
    v28 = *v1;
    *&v14[v26] = *(v1 + *(*v1 + 296));
    v29 = *(v28 + 152);

    v29(v40, v30);
    v31 = v40[4];
    __swift_project_boxed_opaque_existential_1(v40, v40[3]);
    v32 = OUTLINED_FUNCTION_40_0();
    v33(v32, v31);
    swift_storeEnumTagMultiPayload();
    (*(*v1 + 136))(v14);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_4(v35))
    {
      v36 = OUTLINED_FUNCTION_65_0();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "#IncomingCallFlow: Flow is not in a state that will expect input.", v36, 2u);
      OUTLINED_FUNCTION_26_0(v36);
    }

    (*(v38 + 8))(v11, v7);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t IncomingCallFlow.execute()(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = *v1;
  v2[11] = *v1;
  v4 = type metadata accessor for Input();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v5 = *(v3 + 256);
  v2[17] = v5;
  v6 = *(v3 + 264);
  v2[18] = v6;
  v8 = type metadata accessor for PhoneCallFlowState(0, v5, v6, v7);
  v2[19] = v8;
  v2[20] = *(v8 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(IncomingCallFlow.execute(), 0, 0);
}

uint64_t IncomingCallFlow.execute()()
{
  v87 = v0;
  OUTLINED_FUNCTION_2_0();
  v2 = *(v1 + 128);
  v2();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v3 = v0[24];
      v4 = v0[16];
      v6 = v0[12];
      v5 = v0[13];
      (*(v0[20] + 16))(v3, v0[25], v0[19]);
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);
      v84 = *(v3 + *(v7 + 48));
      (*(v5 + 32))(v4, v3, v6);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v9 = v0[15];
      v8 = v0[16];
      v11 = v0[12];
      v10 = v0[13];
      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.siriPhone);
      v81 = *(v10 + 16);
      v81(v9, v8, v11);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = v0[15];
        v16 = v0[12];
        v17 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *&v86[0] = v79;
        *v17 = 136315394;
        lazy protocol witness table accessor for type Input and conformance Input();
        v18 = v7;
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v21 = v20;
        v22 = OUTLINED_FUNCTION_7_37();
        v23(v22, v16);
        v24 = v19;
        v7 = v18;
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v21, v86);
        OUTLINED_FUNCTION_40_0();

        *(v17 + 4) = v15;
        *(v17 + 12) = 2080;
        swift_getMetatypeMetadata();
        v25 = _typeName(_:qualified:)();
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v86);

        *(v17 + 14) = v27;
        _os_log_impl(&dword_0, v13, v14, "#IncomingCallFlow: Converting input: %s to intent of type %s.", v17, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0(v79);
        OUTLINED_FUNCTION_26_0(v17);
      }

      else
      {
        v51 = v0[12];

        v52 = OUTLINED_FUNCTION_7_37();
        v53(v52, v51);
      }

      v54 = v0[16];
      v55 = v0[14];
      v57 = v0[11];
      v56 = v0[12];
      v58 = v0[10];
      v78 = *(v7 + 64);
      v80 = v0[24];
      v77 = *(v0 + 17);
      type metadata accessor for IntentConversionFlow(0, v0[17], v28, v29);
      v81(v55, v54, v56);
      v59 = *(*v58 + 152);

      v59(v86, v60);
      v0[8] = IntentConversionFlow.__allocating_init(input:app:sharedGlobals:)(v55, v84, v86);
      v61 = implicit closure #3 in IncomingCallFlow.execute()();
      v63 = v62;
      v64 = swift_allocObject();
      *(v64 + 16) = v77;
      *(v64 + 32) = *(v57 + 272);
      *(v64 + 40) = *(v57 + 280);
      *(v64 + 48) = v61;
      *(v64 + 56) = v63;
      swift_getWitnessTable();
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      v82(v54, v56);
      __swift_destroy_boxed_opaque_existential_1((v80 + v78));
      goto LABEL_24;
    case 2u:
      (*(v0[20] + 16))(v0[23], v0[25], v0[19]);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.siriPhone);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v32))
      {
        v33 = OUTLINED_FUNCTION_65_0();
        *v33 = 0;
        _os_log_impl(&dword_0, v31, v32, "#IncomingCallFlow: Executing first RCHFlow. IncomingCallFlow will stay on the stack.", v33, 2u);
        OUTLINED_FUNCTION_26_0(v33);
      }

      implicit closure #5 in IncomingCallFlow.execute()();
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      goto LABEL_13;
    case 3u:
      v34 = v0[22];
      (*(v0[20] + 16))(v34, v0[25], v0[19]);
      v35 = type metadata accessor for RCHFlowResult();
      v36 = *(v35 - 8);
      v37 = (*(v36 + 88))(v34, v35);
      v38 = v0[22];
      if (v37 == enum case for RCHFlowResult.complete<A, B>(_:))
      {
        v40 = v0[17];
        v39 = v0[18];
        v41 = v0[10];
        v42 = v0[11];
        (*(v36 + 96))(v38, v35);
        v43 = *(v38 + 8);
        v44 = *(v38 + 16);
        type metadata accessor for IncomingCallFollowUpFlow(0, v40, v39, *(v42 + 280));
        OUTLINED_FUNCTION_2_0();
        outlined init with copy of SignalProviding(v41 + *(v45 + 288), (v0 + 2));
        OUTLINED_FUNCTION_2_0();
        v47 = *(v46 + 152);

        v48 = v43;
        v49 = v44;
        v47(v86);
        v0[7] = IncomingCallFollowUpFlow.__allocating_init(app:intent:intentResponse:strategy:sharedGlobals:)();
        swift_getWitnessTable();
        static ExecuteResponse.complete<A>(next:)();

LABEL_13:
      }

      else
      {
        (*(v36 + 8))(v0[22], v35);
LABEL_18:
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v65 = type metadata accessor for Logger();
        __swift_project_value_buffer(v65, static Logger.siriPhone);

        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = v0[20];
          v69 = v0[21];
          v83 = v0[19];
          v70 = OUTLINED_FUNCTION_42();
          v85 = OUTLINED_FUNCTION_36();
          *&v86[0] = v85;
          *v70 = 136315138;
          v2();
          v71 = PhoneCallFlowState.description.getter(v83);
          v73 = v72;

          (*(v68 + 8))(v69, v83);
          v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, v86);

          *(v70 + 4) = v74;
          _os_log_impl(&dword_0, v66, v67, "#IncomingCallFlow: encountered unexpected state %s", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v85);
          OUTLINED_FUNCTION_26_0(v85);
          OUTLINED_FUNCTION_26_0(v70);
        }

        else
        {
        }

LABEL_23:
        static ExecuteResponse.complete()();
      }

LABEL_24:
      (*(v0[20] + 8))(v0[25], v0[19]);

      v75 = v0[1];

      return v75();
    case 6u:
      OUTLINED_FUNCTION_2_0();
      (*(v50 + 232))();
      goto LABEL_24;
    case 7u:
      goto LABEL_23;
    default:
      goto LABEL_18;
  }
}

void IncomingCallFlow.onRCHFlowComplete(exitValue:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  OUTLINED_FUNCTION_5_45();
  v3 = v2;
  v5 = *(v4 + 264);
  v7 = type metadata accessor for PhoneCallFlowState(0, *(v4 + 256), v5, v6);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  v10 = &v52[-v9];
  v11 = type metadata accessor for RCHFlowResult();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  OUTLINED_FUNCTION_49_0();
  v15 = __chkstk_darwin(v14);
  v17 = &v52[-v16];
  v18 = *(v13 + 16);
  v59 = v1;
  v19 = v1;
  v20 = v18;
  (v18)(v17, v19, v11, v15);
  if ((*(v13 + 88))(v17, v11) == enum case for RCHFlowResult.complete<A, B>(_:))
  {
    v58 = v7;
    (*(v13 + 96))(v17, v11);
    v21 = *(v17 + 1);
    v22 = *(v17 + 2);

    OUTLINED_FUNCTION_41_0();
    if ((*(v23 + 240))(v22))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logger.siriPhone);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_65_0();
        *v27 = 0;
        _os_log_impl(&dword_0, v25, v26, "#IncomingCallFlow: First RCHFlow complete with intent response indicating we should dismiss Siri -> will dismiss Siri", v27, 2u);
        OUTLINED_FUNCTION_26_0(v27);
      }

LABEL_8:
      goto LABEL_22;
    }

    v28 = *(v3 + 280);
    v56 = *(v28 + 24);
    v57 = v28;
    v29 = v56(v5);
    if (FollowUpOfferType.rawValue.getter(v29) == 1162760014 && v30 == 0xE400000000000000)
    {
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v40 = type metadata accessor for Logger();
        __swift_project_value_buffer(v40, static Logger.siriPhone);
        v22 = v22;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = OUTLINED_FUNCTION_42();
          v55 = v22;
          v44 = v43;
          v54 = OUTLINED_FUNCTION_36();
          v60 = v54;
          *v44 = 136315138;
          v53 = v42;
          v45 = (v56)(v5, v57);
          v46 = FollowUpOfferType.rawValue.getter(v45);
          v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v60);

          *(v44 + 4) = v48;
          _os_log_impl(&dword_0, v41, v53, "#IncomingCallFlow: First RCHFlow complete with followUpAction=%s.", v44, 0xCu);
          v49 = v54;
          __swift_destroy_boxed_opaque_existential_1(v54);
          OUTLINED_FUNCTION_26_0(v49);
          v50 = v44;
          v22 = v55;
          OUTLINED_FUNCTION_26_0(v50);
        }

        v20(v10, v59, v11);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_41_0();
        (*(v51 + 136))(v10);
        goto LABEL_8;
      }
    }
  }

  else
  {
    (*(v13 + 8))(v17, v11);
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.siriPhone);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v35))
  {
    v36 = OUTLINED_FUNCTION_65_0();
    *v36 = 0;
    OUTLINED_FUNCTION_13_31(&dword_0, v37, v38, "#IncomingCallFlow: First RCHFlow complete with no followUpAction.");
    OUTLINED_FUNCTION_26_0(v36);
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_41_0();
  (*(v39 + 136))(v10);
LABEL_22:
  OUTLINED_FUNCTION_65();
}

void IncomingCallFlow.processIntentConversionResult(exitValue:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  OUTLINED_FUNCTION_5_45();
  v3 = v2;
  v6 = type metadata accessor for PhoneCallFlowState(0, *(v4 + 256), *(v4 + 264), v5);
  OUTLINED_FUNCTION_7();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v12);
  v15 = &v37 - v14;
  v16 = *(v3 + 128);
  v16(v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v8 + 8))(v15, v6);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_42();
      v26 = OUTLINED_FUNCTION_36();
      v38 = v26;
      *v25 = 136315138;
      (v16)();
      swift_getWitnessTable();
      v27 = String.init<A>(describing:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v38);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_0, v23, v24, "Unexpected state, stopping: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_26_0(v26);
      OUTLINED_FUNCTION_26_0(v25);
    }

    goto LABEL_14;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);

  __swift_destroy_boxed_opaque_existential_1(&v15[*(v17 + 64)]);
  type metadata accessor for Input();
  OUTLINED_FUNCTION_23_1();
  (*(v18 + 8))(v15);
  if (!v1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.siriPhone);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_4(v32))
    {
      v33 = OUTLINED_FUNCTION_65_0();
      *v33 = 0;
      OUTLINED_FUNCTION_13_31(&dword_0, v34, v35, "Could not convert Intent, stopping");
      OUTLINED_FUNCTION_26_0(v33);
    }

LABEL_14:
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_41_0();
    (*(v36 + 136))(v11);
    goto LABEL_15;
  }

  v19 = v1;
  *v11 = IncomingCallFlow.makeRCHFlow(intent:)(v19);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_41_0();
  v21 = *(v20 + 136);

  v21(v11);

LABEL_15:
  OUTLINED_FUNCTION_65();
}

uint64_t IncomingCallFlow.makeRCHFlow(intent:)(uint64_t a1)
{
  (*(*v1 + 152))(v5, a1);
  static PhoneCallFlowFactory.makeIncomingCallRCHFlow<A, B>(strategy:intent:app:sharedGlobals:)();
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t IncomingCallFlow.__ivar_destroyer()
{
  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v1 + 288)));
  OUTLINED_FUNCTION_2_0();
}

char *IncomingCallFlow.deinit()
{
  v0 = PhoneFlow.deinit();
  __swift_destroy_boxed_opaque_existential_1(&v0[*(*v0 + 288)]);
  OUTLINED_FUNCTION_41_0();

  return v0;
}

uint64_t IncomingCallFlow.__deallocating_deinit()
{
  IncomingCallFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t IncomingCallFlowOutputStrategy.makePromptForConfirmationFlow<A>(app:intentResponse:sharedGlobals:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for IncomingCallActionConfirmation(255);
  lazy protocol witness table accessor for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation();
  type metadata accessor for PromptForConfirmationFlowAsync();
  v33 = a2;
  type metadata accessor for IncomingCallActionConfirmationStrategy(0, a5, a7, v13);
  v14 = *(a6 + 8);
  v15 = a2;
  v14(&v26, a4, a6);
  outlined init with copy of SignalProviding(a3, &v30);
  v16 = default argument 3 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(a5, a7);
  default argument 2 of PhoneTCCFlowStrategy.init(sharedGlobals:phoneCallCommonCats:phoneCallCommonCatPatterns:labelTemplatesProvider:tccTemplatesProvider:appInfoBuilder:)(a5, a7);
  IncomingCallActionConfirmationStrategy.__allocating_init(incomingCallIntentResponse:incomingCallCats:sharedGlobals:announceCallsContext:phoneCommonCats:phoneCallCommonCatPatterns:)(v15, &v26, &v30, 0, 0, v16, v29);
  v17 = a3[3];
  v18 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v17);
  (*(v18 + 16))(&v26, v17, v18);
  v19 = v27;
  v20 = v28;
  v21 = __swift_project_boxed_opaque_existential_1(&v26, v27);
  v31 = v19;
  v32 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v21, v19);
  swift_getWitnessTable();
  v23 = PromptForConfirmationFlowAsync.__allocating_init<A>(itemToConfirm:strategy:outputPublisher:)();
  __swift_destroy_boxed_opaque_existential_1(&v26);
  *&v26 = v23;
  swift_getWitnessTable();
  v24 = Flow.eraseToAnyValueFlow()();

  return v24;
}

uint64_t IncomingCallFollowUpFlow.__allocating_init(app:intent:intentResponse:strategy:sharedGlobals:)()
{
  OUTLINED_FUNCTION_29_1();
  outlined init with copy of SignalProviding(v6, v10);
  outlined init with copy of SignalProviding(v0, v9);
  v7 = (*(v1 + 152))(v5, v4, v3, v10, v9);
  __swift_destroy_boxed_opaque_existential_1(v0);
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v7;
}

uint64_t key path getter for IncomingCallFollowUpFlow.state : <A, B>IncomingCallFollowUpFlow<A, B>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

void key path setter for IncomingCallFollowUpFlow.state : <A, B>IncomingCallFollowUpFlow<A, B>(unint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  swift_beginAccess();
  v6 = v5[12];
  v7 = v5[13];
  v8 = v5[14];
  v5[12] = v2;
  v5[13] = v3;
  v5[14] = v4;
  outlined copy of IncomingCallFollowUpFlow<A, B>.State<A, B>(v2, v3, v4);
  outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(v6, v7, v8);
}

unint64_t IncomingCallFollowUpFlow.state.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  outlined copy of IncomingCallFollowUpFlow<A, B>.State<A, B>(v1, *(v0 + 104), *(v0 + 112));
  return v1;
}

unint64_t outlined copy of IncomingCallFollowUpFlow<A, B>.State<A, B>(unint64_t result, void *a2, void *a3)
{
  if (result >> 62 == 1)
  {
  }

  else if (!(result >> 62))
  {

    v5 = a2;

    return a3;
  }

  return result;
}

uint64_t IncomingCallFollowUpFlow.__allocating_init(state:strategy:sharedGlobals:)()
{
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_11_33();
  v5 = swift_allocObject();
  IncomingCallFollowUpFlow.init(state:strategy:sharedGlobals:)(v4, v3, v2, v1, v0);
  return v5;
}

void *IncomingCallFollowUpFlow.init(state:strategy:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v5[12] = a1;
  v5[13] = a2;
  v5[14] = a3;
  outlined init with take of SPHConversation(a4, (v5 + 2));
  outlined init with take of SPHConversation(a5, (v5 + 7));
  return v5;
}

uint64_t IncomingCallFollowUpFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IncomingCallFollowUpFlow(0, *(*v2 + 80), *(*v2 + 88), *(*v2 + 96));
  swift_getWitnessTable();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t IncomingCallFollowUpFlow.execute()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  return _swift_task_switch(IncomingCallFollowUpFlow.execute(), 0, 0);
}

uint64_t IncomingCallFollowUpFlow.execute()()
{
  v1 = (*(**(v0 + 64) + 128))();
  v3 = v2;
  v5 = v4;
  if (!(v1 >> 62))
  {
    v13 = *(v0 + 72);
    v15 = *(v13 + 88);
    v14 = *(v13 + 96);
    v16 = *(v14 + 24);

    v45 = v3;
    v46 = v5;
    v17 = v16(v15, v14);
    if (FollowUpOfferType.rawValue.getter(v17) == 0xD000000000000011 && 0x8000000000452840 == v18)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v21 = *(v0 + 64);
    v23 = v21[10];
    v22 = v21[11];
    __swift_project_boxed_opaque_existential_1(v21 + 7, v23);
    (*(v22 + 8))(v23, v22);
    v24 = *(v0 + 40);
    v25 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v24);
    LOBYTE(v24) = DeviceState.isAuthenticatedForPhone.getter(v24, v25);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if ((v24 & 1) == 0)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v38 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v38, static Logger.siriPhone);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v40))
      {
        v41 = OUTLINED_FUNCTION_65_0();
        *v41 = 0;
        OUTLINED_FUNCTION_13_7(&dword_0, v42, v40, "#IncomingCallFollowUpFlow: Execute. Device is not authenticated for phone. Not offering follow callBack follow up.");
        OUTLINED_FUNCTION_26_0(v41);
      }

      static ExecuteResponse.complete()();
      goto LABEL_27;
    }

LABEL_17:
    v26 = *(v0 + 64);
    v27 = v26[5];
    v28 = v26[6];
    __swift_project_boxed_opaque_existential_1(v26 + 2, v27);
    (*(v28 + 56))(v1, v46, v26 + 7, v15, v14, v27, v28);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v29 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v29, static Logger.siriPhone);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v31))
    {
      v32 = OUTLINED_FUNCTION_65_0();
      *v32 = 0;
      OUTLINED_FUNCTION_13_7(&dword_0, v33, v31, "#IncomingCallFollowUpFlow: Offer prompt. IncomingCallFlow is still ongoing.");
      OUTLINED_FUNCTION_26_0(v32);
    }

    v34 = *(v0 + 64);

    v35 = swift_allocObject();
    v35[2] = v34;
    v35[3] = v1;
    v35[4] = v45;
    v35[5] = v46;

    v36 = v45;
    v37 = v46;

    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

LABEL_27:

    goto LABEL_28;
  }

  if (v1 >> 62 != 1)
  {
    static ExecuteResponse.complete()();
    goto LABEL_29;
  }

  v6 = one-time initialization token for siriPhone;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v7, static Logger.siriPhone);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v9))
  {
    v10 = OUTLINED_FUNCTION_65_0();
    *v10 = 0;
    OUTLINED_FUNCTION_6_44(&dword_0, v11, v12, "#IncomingCallFollowUpFlow: Executing next RCHFlow.");
    OUTLINED_FUNCTION_26_0(v10);
  }

  static ExecuteResponse.complete(next:)();
  outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(v1, v3, v5);
LABEL_28:
  outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(v1, v3, v5);
LABEL_29:
  v43 = *(v0 + 8);

  return v43();
}

void IncomingCallFollowUpFlow.onOfferFlowComplete(app:intent:intentResponse:exitValue:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v11 = (*(*(*v5 + 96) + 24))(*(*v5 + 88));
  if (v11 == 1 || v11 == 3)
  {

    IncomingCallFollowUpFlow.processCallPromptResponse(app:intent:intentResponse:promptResult:)(a1, v10, a3, a4);
  }

  else if (v11 == 2)
  {

    IncomingCallFollowUpFlow.processAnswerCallPromptResponse(app:intent:intentResponse:promptResult:)(a1, a2, a3);
  }

  else
  {
    swift_beginAccess();
    v13 = OUTLINED_FUNCTION_4_39();
    v5[13] = 0;
    v5[14] = 0;
    v5[12] = v14;
    outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(v13, v15, v16);
  }
}

uint64_t IncomingCallFollowUpFlow.processCallPromptResponse(app:intent:intentResponse:promptResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v82 = a1;
  v86 = *v5;
  v87 = a3;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin08IncomingE14IntentResponse_p0a3KitF05InputVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin08IncomingE14IntentResponse_p0a3KitF05InputVGMR);
  OUTLINED_FUNCTION_7();
  v83 = v7;
  __chkstk_darwin(v8);
  v10 = v79 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  __chkstk_darwin(v11 - 8);
  OUTLINED_FUNCTION_12_5();
  v84 = v12 - v13;
  __chkstk_darwin(v14);
  v81 = v79 - v15;
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v90 = v17;
  v91 = v16;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_4();
  v89 = v19 - v18;
  v88 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  v93 = v20;
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_12_5();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  v27 = v79 - v26;
  __chkstk_darwin(v28);
  v92 = v79 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin08IncomingG18ActionConfirmationOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin08IncomingG18ActionConfirmationOGMR);
  OUTLINED_FUNCTION_7();
  v31 = v30;
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_12_5();
  v35 = v33 - v34;
  v37 = __chkstk_darwin(v36);
  v39 = v79 - v38;
  v40 = *(v31 + 16);
  v41 = a4;
  v43 = v42;
  v40(v79 - v38, v41, v42, v37);
  v44 = *(v31 + 88);
  v94 = v39;
  if (v44(v39, v43) != enum case for PromptResult.answered<A>(_:))
  {
    goto LABEL_4;
  }

  (v40)(v35, v94, v43);
  (*(v31 + 96))(v35, v43);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV03newD0_tMd, &_s11SiriKitFlow5InputV03newD0_tMR);
  if (__swift_getEnumTagSinglePayload(v35, 1, v45) != 1)
  {
    v80 = v43;
    v50 = *(v93 + 32);
    v51 = v88;
    v79[1] = v93 + 32;
    v52 = v50;
    v50(v92, v35, v88);
    v53 = v89;
    Input.parse.getter();
    v54 = (*(v90 + 88))(v53, v91);
    if (v54 == enum case for Parse.NLv3IntentOnly(_:))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08IncomingB14IntentResponse_pMd, &_s27PhoneCallFlowDelegatePlugin08IncomingB14IntentResponse_pMR);
      Transformer.init(transform:)();
      v55 = v85;
      v56 = Transformer.transform.getter();
      (*(v83 + 8))(v10, v55);
      v57 = *(v86 + 96);
      v95 = v87;
      v96 = v57;
      v58 = v84;
      v56(&v95);

      OUTLINED_FUNCTION_20_24(v58, 0);
      v52(v24, v58, v51);
      IncomingCallFollowUpFlow.getFollowUpActionWithStartCallFlow(app:input:)(v82, v24);
      v70 = *(v93 + 8);
      v70(v24, v51);
      v70(v92, v51);
      OUTLINED_FUNCTION_2_59();
      v71 = OUTLINED_FUNCTION_15_29();
    }

    else
    {
      if (v54 == enum case for Parse.NLv4IntentOnly(_:) || v54 == enum case for Parse.uso(_:))
      {
        (*(v90 + 8))(v89, v91);
        if (one-time initialization token for transformer != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_9_0(v85, static Transformer<>.transformer);
        v60 = Transformer.transform.getter();
        v61 = *(v86 + 96);
        v95 = v87;
        v96 = v61;
        v62 = v81;
        v60(&v95);

        OUTLINED_FUNCTION_20_24(v62, 0);
        v52(v27, v62, v51);
        IncomingCallFollowUpFlow.getFollowUpActionWithStartCallFlow(app:input:)(v82, v27);
        v74 = *(v93 + 8);
        v74(v27, v51);
        v74(v92, v51);
        OUTLINED_FUNCTION_2_59();
        v75 = OUTLINED_FUNCTION_15_29();
        v5[13] = 0;
        outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(v75, v76, v77);
        goto LABEL_21;
      }

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v63 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v63, static Logger.siriPhone);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v65))
      {
        v66 = OUTLINED_FUNCTION_65_0();
        *v66 = 0;
        OUTLINED_FUNCTION_15_3(&dword_0, v67, v68, "#IncomingCallFollowUpFlow: Rely on FlowPlugin to provide next RCHFlow. IncomingCallFlow is now complete.");
        OUTLINED_FUNCTION_26_0(v66);
      }

      (*(v93 + 8))(v92, v51);
      OUTLINED_FUNCTION_2_59();
      v71 = OUTLINED_FUNCTION_4_39();
      v5[14] = 0;
      v5[12] = v69;
    }

    v5[13] = 0;
    outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(v71, v72, v73);
    (*(v90 + 8))(v89, v91);
LABEL_21:
    v43 = v80;
    return (*(v31 + 8))(v94, v43);
  }

  outlined destroy of PhoneCallNLv3Intent(v35, type metadata accessor for IncomingCallActionConfirmation);
LABEL_4:
  OUTLINED_FUNCTION_2_59();
  v46 = OUTLINED_FUNCTION_4_39();
  v5[13] = 0;
  v5[14] = 0;
  v5[12] = v47;
  outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(v46, v48, v49);
  return (*(v31 + 8))(v94, v43);
}

uint64_t IncomingCallFollowUpFlow.getFollowUpActionWithStartCallFlow(app:input:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  outlined init with copy of SignalProviding(v2 + 56, v25);
  default argument 2 of PhoneCallFlow.init(state:sharedGlobals:appFinder:eligibleAppsFinder:)(v24);
  type metadata accessor for StartCallFlow(0);
  swift_allocObject();

  v12 = StartCallFlow.init(app:sharedGlobals:appFinder:)(v11, v25, v24);
  (*(*v12 + 192))(a2);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v13 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v13, static Logger.siriPhone);
  (*(v6 + 16))(v10, a2, v4);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25[0] = v17;
    *v16 = 136315138;
    lazy protocol witness table accessor for type StartCallFlow and conformance PhoneFlow<A, B>(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v6 + 8))(v10, v4);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v25);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_0, v14, v15, "#IncomingCallFollowUpFlow: Initialized StartCallFlow for input %s, setting to followup action.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_26_0(v17);
    OUTLINED_FUNCTION_26_0(v16);
  }

  else
  {

    (*(v6 + 8))(v10, v4);
  }

  v25[0] = v12;
  lazy protocol witness table accessor for type StartCallFlow and conformance PhoneFlow<A, B>(&lazy protocol witness table cache variable for type StartCallFlow and conformance PhoneFlow<A, B>, type metadata accessor for StartCallFlow, &protocol conformance descriptor for PhoneFlow<A, B>);
  v22 = Flow.eraseToAnyFlow()();

  return v22 | 0x4000000000000000;
}

uint64_t IncomingCallFollowUpFlow.processAnswerCallPromptResponse(app:intent:intentResponse:promptResult:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v101 = a3;
  v102 = a2;
  v105 = a1;
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v99 = v6;
  v100 = v5;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = type metadata accessor for CATOption();
  __chkstk_darwin(v10 - 8);
  OUTLINED_FUNCTION_4();
  type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  v103 = v12;
  v104 = v11;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v106 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin08IncomingG18ActionConfirmationOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin08IncomingG18ActionConfirmationOGMR);
  OUTLINED_FUNCTION_7();
  v17 = v16;
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_12_5();
  v21 = v19 - v20;
  v23 = __chkstk_darwin(v22);
  v24 = *(v17 + 16);
  v26 = &v96 - v25;
  v24(v23);
  if ((*(v17 + 88))(v26, v15) != enum case for PromptResult.answered<A>(_:))
  {
    OUTLINED_FUNCTION_7_38();
    v47 = OUTLINED_FUNCTION_12_35();
    v4[13] = 0;
    v4[14] = 0;
    v4[12] = v48;
    outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(v47, v49, v50);
    return (*(v17 + 8))(v26, v15);
  }

  (v24)(v21, v26, v15);
  (*(v17 + 96))(v21, v15);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV03newD0_tMd, &_s11SiriKitFlow5InputV03newD0_tMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v27);
  v97 = v15;
  v98 = v26;
  if (EnumTagSinglePayload == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v106 = v17;
    v29 = type metadata accessor for Logger();
    v100 = __swift_project_value_buffer(v29, static Logger.siriPhone);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v31))
    {
      v32 = OUTLINED_FUNCTION_65_0();
      *v32 = 0;
      OUTLINED_FUNCTION_6_44(&dword_0, v33, v34, "#IncomingCallFollowUpFlow: Offer type is .answerCall and user rejected. Transitioning to .executeFollowUpAction with RCHFlow<HangUpCall>");
      OUTLINED_FUNCTION_26_0(v32);
    }

    v35 = v4[10];
    v36 = v4[11];
    __swift_project_boxed_opaque_existential_1(v4 + 7, v35);
    v37 = *(v36 + 80);
    v38 = v101;
    v104 = v101;
    v39 = v102;
    v103 = v102;
    v40 = v105;

    v37(&v109, v35, v36);
    v115 = 0;
    v114 = 0u;
    v113 = 0u;
    v112[0] = _swiftEmptyArrayStorage;
    v112[1] = _swiftEmptyArrayStorage;
    LOBYTE(v116[0]) = 2;
    v116[1] = 0;
    v116[2] = 0xB23030905050204;
    v117 = 518;
    v118 = _swiftEmptyArrayStorage;
    v119 = _swiftEmptyArrayStorage;
    v41 = specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v112, v40, v39, v38, &v109);
    outlined destroy of SKTransformer(&v109);
    outlined destroy of PhoneCallNLv4Intent(v112);
    if (v41)
    {
      static PhoneCallFlowFactory.makeHangUpCallRCHFlow(intent:app:sharedGlobals:)();
      v112[0] = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMR);
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INHangUpCallIntent, INHangUpCallIntentResponse>> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMR, &protocol conformance descriptor for AnyValueFlow<A>);
      v43 = Flow.eraseToAnyFlow()();

      OUTLINED_FUNCTION_7_38();
      v44 = v4[12];
      v45 = v4[13];
      v46 = v4[14];
      v4[13] = 0;
      v4[14] = 0;
      v4[12] = v43 | 0x4000000000000000;
      outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(v44, v45, v46);
      v15 = v97;
      v26 = v98;
      v17 = v106;
      return (*(v17 + 8))(v26, v15);
    }

    v78 = v103;
    v79 = v104;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    v82 = OUTLINED_FUNCTION_16_4(v81);
    v17 = v106;
    if (v82)
    {
      v83 = OUTLINED_FUNCTION_65_0();
      *v83 = 0;
      OUTLINED_FUNCTION_13_7(&dword_0, v84, v81, "#IncomingCallFollowUpFlow: Unable to construct PhoneCallNLIntent from follow-up SiriKitFlow.Input.");
      OUTLINED_FUNCTION_26_0(v83);
    }

    OUTLINED_FUNCTION_7_38();
    v75 = OUTLINED_FUNCTION_12_35();
    v4[14] = 0;
    v4[12] = v85;
LABEL_20:
    v4[13] = 0;
    outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(v75, v76, v77);
    v15 = v97;
    v26 = v98;
    return (*(v17 + 8))(v26, v15);
  }

  (*(v103 + 4))(v106, v21, v104);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v51 = type metadata accessor for Logger();
  v96 = __swift_project_value_buffer(v51, static Logger.siriPhone);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v53))
  {
    v54 = OUTLINED_FUNCTION_65_0();
    *v54 = 0;
    _os_log_impl(&dword_0, v52, v53, "#IncomingCallFollowUpFlow: Offer type is .answerCall and user confirmed. Transitioning to .executeFollowUpAction with AnswerCallFlow", v54, 2u);
    OUTLINED_FUNCTION_26_0(v54);
  }

  v55 = v4[10];
  v56 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v55);
  (*(v56 + 8))(v116, v55, v56);
  v57 = v4[5];
  v58 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v57);
  v59 = (*(v58 + 16))(v57, v58);
  LOBYTE(v58) = v60;
  v61 = type metadata accessor for AnswerCallCATsSimple(0);
  static CATOption.defaultMode.getter();
  v62 = CATWrapperSimple.__allocating_init(options:globals:)();
  v120 = &type metadata for AudioSessionManager;
  v121 = &protocol witness table for AudioSessionManager;
  v122 = &type metadata for EntitlementChecker;
  v123 = &protocol witness table for EntitlementChecker;
  *(&v113 + 1) = v61;
  v112[0] = v62;
  *&v114 = &protocol witness table for AnswerCallCATsSimple;
  *(&v114 + 1) = v59;
  LOBYTE(v115) = v58;
  v63 = v4[10];
  v64 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v63);
  v65 = *(v64 + 72);
  v101 = v101;
  v102 = v102;

  v66 = v65(v63, v64);
  Input.parse.getter();
  (*(*v66 + 192))(&v109, v9);

  (*(v99 + 8))(v9, v100);
  if (v110)
  {
    outlined init with take of SPHConversation(&v109, v111);
    v67 = v4[10];
    v68 = v4[11];
    __swift_project_boxed_opaque_existential_1(v4 + 7, v67);
    (*(v68 + 80))(&v109, v67, v68);
    v70 = v101;
    v69 = v102;
    v71 = specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v111);
    outlined destroy of SKTransformer(&v109);
    if (v71)
    {
      outlined init with copy of AnswerCallOutputStrategy(v112, &v109);
      _s27PhoneCallFlowDelegatePlugin0abC7FactoryO012makeIncomingB7RCHFlow8strategy6intent3app13sharedGlobals07SiriKitC008AnyValueC0CyAI0I6ResultOyxq_GGAA0hbC14OutputStrategy_p_x0O13AppResolution0V0CAA06SharedN9Providing_ptSo8INIntentCRbzAA0hB14IntentResponseR_r0_lFZSo08INAnswerB6IntentC_So08INAnswerB14IntentResponseCTt3g5Tf4ennn_nAA06AnswerbtU0V_Tg5();
      outlined init with copy of SignalProviding((v4 + 7), &v108);
      outlined init with copy of AnswerCallOutputStrategy(&v109, &v107);

      _s27PhoneCallFlowDelegatePlugin08IncomingbC0C03rchC03app8strategy13sharedGlobalsACyxq_G07SiriKitC008AnyValueC0CyAI13RCHFlowResultOyxq_GG_0L13AppResolution0R0CAA0fbC14OutputStrategy_pAA06SharedK9Providing_ptcfCSo08INAnswerB6IntentC_So0xbY8ResponseCTt3g5Tf4nnen_nAA06AnswerbtU0V_Tg5();
      v73 = v72;
      v100 = v72;
      outlined destroy of AnswerCallOutputStrategy(&v109);
      *&v109 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type IncomingCallFlow<INAnswerCallIntent, INAnswerCallIntentResponse> and conformance PhoneFlow<A, B>, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMR, &protocol conformance descriptor for PhoneFlow<A, B>);
      v74 = Flow.eraseToAnyFlow()();

      __swift_destroy_boxed_opaque_existential_1(v111);
      (*(v103 + 1))(v106, v104);
      outlined destroy of AnswerCallOutputStrategy(v112);

      OUTLINED_FUNCTION_19_23();
      v75 = v4[12];
      v76 = v4[13];
      v77 = v4[14];
      v4[14] = 0;
      v4[12] = v74 | 0x4000000000000000;
      goto LABEL_20;
    }

    __swift_destroy_boxed_opaque_existential_1(v111);
    v15 = v97;
  }

  else
  {
    outlined destroy of PhoneCallNLIntent?(&v109, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    v15 = v97;
    v70 = v101;
    v69 = v102;
  }

  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_16_4(v87))
  {
    v88 = OUTLINED_FUNCTION_65_0();
    *v88 = 0;
    OUTLINED_FUNCTION_6_44(&dword_0, v89, v90, "#IncomingCallFollowUpFlow: Unable to construct PhoneCallNLIntent from follow-up SiriKitFlow.Input.");
    OUTLINED_FUNCTION_26_0(v88);
  }

  (*(v103 + 1))(v106, v104);
  outlined destroy of AnswerCallOutputStrategy(v112);
  OUTLINED_FUNCTION_19_23();
  v91 = OUTLINED_FUNCTION_12_35();
  v4[13] = 0;
  v4[14] = 0;
  v4[12] = v92;
  outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(v91, v93, v94);
  v26 = v98;
  return (*(v17 + 8))(v26, v15);
}

void *IncomingCallFollowUpFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(*(v0 + 96), *(v0 + 104), *(v0 + 112));
  return v0;
}

uint64_t IncomingCallFollowUpFlow.__deallocating_deinit()
{
  IncomingCallFollowUpFlow.deinit();
  OUTLINED_FUNCTION_11_33();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance IncomingCallFollowUpFlow<A, B>(uint64_t a1)
{
  v6 = (*(**v1 + 176) + **(**v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance IncomingCallFollowUpFlow<A, B>(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for IncomingCallFollowUpFlow(0, a1[10], a1[11], a1[12]);

  return Flow<>.exitValue.getter(v3, a2);
}

void outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(unint64_t a1, void *a2, void *a3)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

uint64_t type metadata instantiation function for IncomingCallFollowUpFlow.State(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin08Incomingb8FollowUpC0C5StateOyxq__G(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t getEnumTagSinglePayload for IncomingCallFollowUpFlow.State(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 24))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for IncomingCallFollowUpFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *destructiveInjectEnumTag for IncomingCallFollowUpFlow.State(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
    result[1] = 0;
    result[2] = 0;
  }

  *result = v2;
  return result;
}

uint64_t lazy protocol witness table accessor for type StartCallFlow and conformance PhoneFlow<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v32 = a4;
  v31 = a3;
  v30 = a2;
  v34 = type metadata accessor for PhoneCallNLv3Intent(0);
  __chkstk_darwin(v34);
  v35 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[3] = &type metadata for PhoneCallNLv4Intent;
  v41[4] = &protocol witness table for PhoneCallNLv4Intent;
  v41[0] = swift_allocObject();
  outlined init with copy of PhoneCallNLv4Intent(a1, v41[0] + 16);
  static Signpost.begin(_:)();
  v37 = v7;
  v38 = v8;
  v9 = type metadata accessor for INHangUpCallIntent();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = [v10 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Signpost.begin(_:string1:)();
  v36 = v12;

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v29 = __swift_project_value_buffer(v13, static Logger.siriPhone);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  v28 = v9;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v39[0] = v27;
    *v17 = 136315394;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x800000000045C090, v39);
    *(v17 + 12) = 2080;
    v40[0] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18INHangUpCallIntentCmMd, &_sSo18INHangUpCallIntentCmMR);
    v18 = String.init<A>(describing:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v39);

    *(v17 + 14) = v20;
    _os_log_impl(&dword_0, v14, v15, "#SKTransformer %s to %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  v21 = v35;
  outlined init with copy of SignalProviding(v41, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if (swift_dynamicCast())
  {
    specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    v23 = v22;
    outlined destroy of PhoneCallNLv3Intent(v21, type metadata accessor for PhoneCallNLv3Intent);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    if (swift_dynamicCast())
    {
      outlined destroy of PhoneCallNLv4Intent(v39);
    }

    else
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v40);
        v23 = 0;
        goto LABEL_13;
      }

      outlined destroy of PhoneCallIFIntent(v39);
    }

    __swift_destroy_boxed_opaque_existential_1(v40);
    specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    v23 = v24;
  }

LABEL_13:
  Signpost.OpenSignpost.end()();
  Signpost.OpenSignpost.end()();

  __swift_destroy_boxed_opaque_existential_1(v41);
  return v23;
}

{
  v36 = a5;
  v35 = a4;
  v34 = a3;
  v33 = a2;
  v6 = type metadata accessor for PhoneCallNLv3Intent(0);
  __chkstk_darwin(v6);
  v38 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v8;
  v44[3] = v8;
  v44[4] = &protocol witness table for PhoneCallNLv3Intent;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  outlined init with copy of PhoneCallNLv3Intent(a1, boxed_opaque_existential_1);
  static Signpost.begin(_:)();
  v40 = v10;
  v41 = v11;
  v12 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartAudioCallIntent, INStartAudioCallIntent_ptr);
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = [v13 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Signpost.begin(_:string1:)();
  v39 = v15;

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v32 = __swift_project_value_buffer(v16, static Logger.siriPhone);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v31 = v12;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v42[0] = v30;
    *v20 = 136315394;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x800000000045C090, v42);
    *(v20 + 12) = 2080;
    v43[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartAudioCallIntentCmMd, &_sSo22INStartAudioCallIntentCmMR);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v42);

    *(v20 + 14) = v23;
    _os_log_impl(&dword_0, v17, v18, "#SKTransformer %s to %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  v24 = v38;
  outlined init with copy of SignalProviding(v44, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if (swift_dynamicCast())
  {
    specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)(v44, v33, v34);
    v26 = v25;
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v24, type metadata accessor for PhoneCallNLv3Intent);
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    if (swift_dynamicCast())
    {
      outlined destroy of PhoneCallNLv4Intent(v42);
    }

    else
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v43);
        v26 = 0;
        goto LABEL_13;
      }

      outlined destroy of PhoneCallIFIntent(v42);
    }

    __swift_destroy_boxed_opaque_existential_1(v43);
    specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    v26 = v27;
  }

LABEL_13:
  Signpost.OpenSignpost.end()();
  Signpost.OpenSignpost.end()();

  __swift_destroy_boxed_opaque_existential_1(v44);
  return v26;
}

{
  v36 = a5;
  v35 = a4;
  v34 = a3;
  v33 = a2;
  v6 = type metadata accessor for PhoneCallNLv3Intent(0);
  __chkstk_darwin(v6);
  v38 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v8;
  v44[3] = v8;
  v44[4] = &protocol witness table for PhoneCallNLv3Intent;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  outlined init with copy of PhoneCallNLv3Intent(a1, boxed_opaque_existential_1);
  static Signpost.begin(_:)();
  v40 = v10;
  v41 = v11;
  v12 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = [v13 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Signpost.begin(_:string1:)();
  v39 = v15;

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v32 = __swift_project_value_buffer(v16, static Logger.siriPhone);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v31 = v12;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v42[0] = v30;
    *v20 = 136315394;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x800000000045C090, v42);
    *(v20 + 12) = 2080;
    v43[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17INStartCallIntentCmMd, &_sSo17INStartCallIntentCmMR);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v42);

    *(v20 + 14) = v23;
    _os_log_impl(&dword_0, v17, v18, "#SKTransformer %s to %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  v24 = v38;
  outlined init with copy of SignalProviding(v44, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if (swift_dynamicCast())
  {
    specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)(v44, v33, v34);
    v26 = v25;
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_0(v24, type metadata accessor for PhoneCallNLv3Intent);
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    if (swift_dynamicCast())
    {
      outlined destroy of PhoneCallNLv4Intent(v42);
    }

    else
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v43);
        v26 = 0;
        goto LABEL_13;
      }

      outlined destroy of PhoneCallIFIntent(v42);
    }

    __swift_destroy_boxed_opaque_existential_1(v43);
    specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)(v44, v33, v34, v35);
    v26 = v27;
  }

LABEL_13:
  Signpost.OpenSignpost.end()();
  Signpost.OpenSignpost.end()();

  __swift_destroy_boxed_opaque_existential_1(v44);
  return v26;
}

{
  v36 = a5;
  v35 = a4;
  v34 = a3;
  v33 = a2;
  v6 = type metadata accessor for PhoneCallNLv3Intent(0);
  __chkstk_darwin(v6);
  v38 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v8;
  v44[3] = v8;
  v44[4] = &protocol witness table for PhoneCallNLv3Intent;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  outlined init with copy of PhoneCallNLv3Intent(a1, boxed_opaque_existential_1);
  static Signpost.begin(_:)();
  v40 = v10;
  v41 = v11;
  v12 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartVideoCallIntent, INStartVideoCallIntent_ptr);
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = [v13 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Signpost.begin(_:string1:)();
  v39 = v15;

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v32 = __swift_project_value_buffer(v16, static Logger.siriPhone);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v31 = v12;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v42[0] = v30;
    *v20 = 136315394;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x800000000045C090, v42);
    *(v20 + 12) = 2080;
    v43[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartVideoCallIntentCmMd, &_sSo22INStartVideoCallIntentCmMR);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v42);

    *(v20 + 14) = v23;
    _os_log_impl(&dword_0, v17, v18, "#SKTransformer %s to %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  v24 = v38;
  outlined init with copy of SignalProviding(v44, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if (swift_dynamicCast())
  {
    specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)(v44, v33, v34);
    v26 = v25;
    _s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVWOhTm_0(v24, type metadata accessor for PhoneCallNLv3Intent);
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    if (swift_dynamicCast())
    {
      outlined destroy of PhoneCallNLv4Intent(v42);
    }

    else
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v43);
        v26 = 0;
        goto LABEL_13;
      }

      outlined destroy of PhoneCallIFIntent(v42);
    }

    __swift_destroy_boxed_opaque_existential_1(v43);
    specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    v26 = v27;
  }

LABEL_13:
  Signpost.OpenSignpost.end()();
  Signpost.OpenSignpost.end()();

  __swift_destroy_boxed_opaque_existential_1(v44);
  return v26;
}

uint64_t outlined destroy of PhoneCallNLv3Intent(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_5();
  (*(v3 + 8))(a1);
  return a1;
}

void IncomingCallIntentResponse.isIncomingCall.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4() != 2 && !(v4)(a1, a2))
  {
    v5 = (*(a2 + 16))(a1, a2);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = _swiftEmptyArrayStorage;
    }

    v7 = specialized Array.count.getter(v6);
    v8 = 0;
    while (1)
    {
      if (v7 == v8)
      {
LABEL_15:

        return;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v11 = [v9 callRecordType];

      ++v8;
      if (v11 == &dword_4 + 2)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t specialized IncomingCallIntentResponse.hasCallHistory.getter(uint64_t (*a1)(uint64_t))
{
  result = a1(v1);
  if (result)
  {
    specialized Array.count.getter(result);
    OUTLINED_FUNCTION_33_2();
    return v1 != 0;
  }

  return result;
}

uint64_t IncomingCallIntentResponse.hasCallHistory.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 16))(a1);
  if (result)
  {
    specialized Array.count.getter(result);
    OUTLINED_FUNCTION_33_2();
    return v2 != 0;
  }

  return result;
}

unint64_t specialized IncomingCallIntentResponse.latestCallRecord.getter(uint64_t (*a1)(uint64_t))
{
  v2 = a1(v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (!specialized Array.count.getter(v2))
  {

    return 0;
  }

  v4 = v3 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000001) == 0, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v5 = *(v3 + 32);
  }

  OUTLINED_FUNCTION_33_2();
  return v4;
}

unint64_t IncomingCallIntentResponse.latestCallRecord.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (!specialized Array.count.getter(v2))
  {

    return 0;
  }

  v4 = v3 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000001) == 0, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v5 = *(v3 + 32);
  }

  OUTLINED_FUNCTION_33_2();
  return v4;
}

BOOL specialized IncomingCallIntentResponse.unknownCaller.getter(uint64_t (*a1)(uint64_t))
{
  v1 = specialized IncomingCallIntentResponse.latestCallRecord.getter(a1);
  v2 = [v1 caller];

  if (v2)
  {
  }

  return v2 == 0;
}

BOOL IncomingCallIntentResponse.unknownCaller.getter(uint64_t a1, uint64_t a2)
{
  v2 = IncomingCallIntentResponse.latestCallRecord.getter(a1, a2);
  v3 = [v2 caller];

  if (v3)
  {
  }

  return v3 == 0;
}

uint64_t INAnswerCallIntentResponse.followUpOfferType.getter()
{
  if ([v0 statusCode] != &dword_0 + 1)
  {
    return 0;
  }

  v1 = OUTLINED_FUNCTION_1_68();
  if (specialized IncomingCallIntentResponse.canCallBack.getter(v1))
  {
    return 3;
  }

  v3 = OUTLINED_FUNCTION_1_68();
  return (specialized IncomingCallIntentResponse.hasCallHistory.getter(v3) & 1) == 0;
}

char *INIdentifyIncomingCallerIntentResponse.followUpOfferType.getter()
{
  result = [v0 statusCode];
  if (result != &dword_0 + 2)
  {
    if (result == &dword_0 + 1)
    {
      v2 = OUTLINED_FUNCTION_0_63();
      if (specialized IncomingCallIntentResponse.canCallBack.getter(v2))
      {
        return (&dword_0 + 3);
      }

      else
      {
        v3 = OUTLINED_FUNCTION_0_63();
        if (specialized IncomingCallIntentResponse.hasCallHistory.getter(v3))
        {
          return &dword_4;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t INSearchCallHistoryIntentResponse.followUpOfferType.getter()
{
  if (specialized IncomingCallIntentResponse.canCallBack.getter(outlined bridged method (pb) of @objc INSearchCallHistoryIntentResponse.callRecords.getter))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t outlined bridged method (pb) of @objc INIdentifyIncomingCallerIntentResponse.callRecords.getter(void *a1)
{
  v1 = [a1 callRecords];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for INCallRecord();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t type metadata accessor for INCallRecord()
{
  result = lazy cache variable for type metadata for INCallRecord;
  if (!lazy cache variable for type metadata for INCallRecord)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INCallRecord);
  }

  return result;
}

uint64_t IncomingCallNLContextProvider.makeOfferFollowUpIntentContext(intentResponse:isAnnouncement:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v6 = (*(*(*v3 + 88) + 24))(*(*v3 + 80));
    v7 = *(*v3 + 104);

    return v7(v6, a2 & 1);
  }

  else
  {
    v9 = type metadata accessor for NLContextUpdate();

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v9);
  }
}

uint64_t IncomingCallNLContextProvider.makeOfferFollowUpIntentContext(followUpOfferType:isAnnouncement:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (FollowUpOfferType.requiresConfirmation.getter(a1))
  {
    IncomingCallNLContextProvider.makeFollowUpConfirmationContext(followUpOfferType:)(a1);
    switch(a1)
    {
      case 1u:
        OUTLINED_FUNCTION_11_8();
        if (!v12)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v26, static Logger.siriPhone);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_7_39(v28))
        {
          v29 = OUTLINED_FUNCTION_65_0();
          *v29 = 0;
          OUTLINED_FUNCTION_3_48(&dword_0, v30, v31, "#IncomingCallNLContextProvider: Adding NLv4 context for startCall");
          OUTLINED_FUNCTION_26_0(v29);
        }

        IncomingCallNLContextProvider.nlContextUpdateForCall()();
        break;
      case 2u:
        OUTLINED_FUNCTION_11_8();
        if (!v12)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v20, static Logger.siriPhone);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_7_39(v22))
        {
          v23 = OUTLINED_FUNCTION_65_0();
          *v23 = 0;
          OUTLINED_FUNCTION_3_48(&dword_0, v24, v25, "#IncomingCallNLContextProvider: Adding NLv4 context for answerCall");
          OUTLINED_FUNCTION_26_0(v23);
        }

        IncomingCallNLContextProvider.nlContextUpdateForAnswer()();
        break;
      case 3u:
        OUTLINED_FUNCTION_11_8();
        if (!v12)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v13, static Logger.siriPhone);
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_7_39(v15))
        {
          v16 = OUTLINED_FUNCTION_65_0();
          *v16 = 0;
          OUTLINED_FUNCTION_3_48(&dword_0, v17, v18, "#IncomingCallNLContextProvider: Adding NLv4 context for callBack");
          OUTLINED_FUNCTION_26_0(v16);
        }

        IncomingCallNLContextProvider.nlContextUpdateForCallBack()();
        break;
      default:
LABEL_24:
        if (a2)
        {
          OUTLINED_FUNCTION_11_8();
          if (!v12)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v32 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_9_0(v32, static Logger.siriPhone);
          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = OUTLINED_FUNCTION_65_0();
            *v35 = 0;
            _os_log_impl(&dword_0, v33, v34, "#NLContextUpdate: Setting Announce Calls NLContextUpdate fields", v35, 2u);
            OUTLINED_FUNCTION_26_0(v35);
          }

          NLContextUpdate.submitAsSpokenNotificationContext.setter();
          NLContextUpdate.weightedPromptStrict.setter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_426260;
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;
          v40 = [objc_allocWithZone(SAAceConfirmationContext) init];
          outlined bridged method (mbnn) of @objc SAAceConfirmationContext.reason.setter(v37, v39, v40);
          *(v36 + 32) = v40;
          NLContextUpdate.conversationStateAttachments.setter();
        }

        (*(v8 + 32))(a3, v11, v6);
        return __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
    }

    NLContextUpdate.nluSystemDialogActs.setter();
    goto LABEL_24;
  }

  return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
}

id IncomingCallNLContextProvider.makeFollowUpConfirmationContext(followUpOfferType:)(uint64_t a1)
{
  v2 = a1;
  v3 = a1;
  v4 = *v1;
  v5 = type metadata accessor for INIntent();
  v7 = type metadata accessor for PhoneCallNLContextProvider(0, v5, *(v4 + 80), v6);
  static PhoneCallNLContextProvider.makeGenericConfirmationNLv3Context()(v7);
  v8 = _swiftEmptyArrayStorage;
  v9 = _swiftEmptyArrayStorage;
  if (v3 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_424FD0;
    v9[4] = PhoneCallNLConstants.canonicalName.getter(15);
    v9[5] = v10;
    v8 = swift_allocObject();
    *(v8 + 1) = xmmword_424FF0;
    v26 = String.uppercased()();
    v24 = 32;
    v25 = 0xE100000000000000;
    v22 = 95;
    v23 = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_6_45(&v24, &v22);

    v26._countAndFlagsBits = PhoneCallNLConstants.canonicalName.getter(15);
    v26._object = v11;
    v12._countAndFlagsBits = 0x2E65756C61562ELL;
    v12._object = 0xE700000000000000;
    String.append(_:)(v12);
    v13 = String.uppercased()();
    String.append(_:)(v13);

    object = v26._object;
    v8[4] = v26._countAndFlagsBits;
    v8[5] = object;
    v26 = String.uppercased()();
    v24 = 32;
    v25 = 0xE100000000000000;
    v22 = 95;
    v23 = 0xE100000000000000;
    OUTLINED_FUNCTION_6_45(&v24, &v22);

    v26._countAndFlagsBits = PhoneCallNLConstants.canonicalName.getter(15);
    v26._object = v15;
    v16._countAndFlagsBits = 0x2E65756C61562ELL;
    v16._object = 0xE700000000000000;
    String.append(_:)(v16);
    v17 = String.uppercased()();
    String.append(_:)(v17);

    v18 = v26._object;
    v8[6] = v26._countAndFlagsBits;
    v8[7] = v18;
  }

  NLContextUpdate.weightedPromptResponseTargets.getter();
  OUTLINED_FUNCTION_9_34();
  specialized Array.append<A>(contentsOf:)(v9);
  NLContextUpdate.weightedPromptResponseTargets.setter();
  NLContextUpdate.weightedPromptResponseOptions.getter();
  OUTLINED_FUNCTION_9_34();
  specialized Array.append<A>(contentsOf:)(v8);
  NLContextUpdate.weightedPromptResponseOptions.setter();
  result = IncomingCallNLContextProvider.getConfirmationAttachment(for:)(v2);
  if (result)
  {
    v20 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_426260;
    *(v21 + 32) = v20;
    return NLContextUpdate.conversationStateAttachments.setter();
  }

  return result;
}

id IncomingCallNLContextProvider.getConfirmationAttachment(for:)(char a1)
{
  if (a1 == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v7, static Logger.siriPhone);
    v2 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v2, v8))
    {
      goto LABEL_13;
    }

    v4 = OUTLINED_FUNCTION_65_0();
    *v4 = 0;
    OUTLINED_FUNCTION_11_34(&dword_0, v9, v10, "#IncomingCallNLContextProvider: Adding NLv3 context for startCall");
    goto LABEL_11;
  }

  if (a1 == 3)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_13;
    }

    v4 = OUTLINED_FUNCTION_65_0();
    *v4 = 0;
    OUTLINED_FUNCTION_11_34(&dword_0, v5, v6, "#IncomingCallNLContextProvider: Adding NLv3 context for callBack");
LABEL_11:
    OUTLINED_FUNCTION_26_0(v4);
LABEL_13:

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    v11 = [objc_allocWithZone(SAAceConfirmationContext) init];
    outlined bridged method (mbnn) of @objc SAAceConfirmationContext.reason.setter(v12, v14, v11);
    return v11;
  }

  return 0;
}

uint64_t IncomingCallNLContextProvider.nlContextUpdateForCallBack()(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  a1(0);
  swift_allocObject();
  v7 = a2();
  v8 = IncomingCallNLContextProvider.createNLUSystemDialogAct(taskBuilder:typeForLogging:)(v7, a3, a4);

  return v8;
}

uint64_t IncomingCallNLContextProvider.createNLUSystemDialogAct(taskBuilder:typeForLogging:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a3;
  v67 = a2;
  v77 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v77);
  OUTLINED_FUNCTION_16_2();
  v76 = v4;
  __chkstk_darwin(v5);
  v75 = (&v65 - v6);
  v81 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  OUTLINED_FUNCTION_7();
  v79 = v7;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v9);
  v71 = &v65 - v10;
  v80 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  OUTLINED_FUNCTION_7();
  v78 = v11;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v13);
  v15 = &v65 - v14;
  v82 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7();
  v69 = v16;
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v18);
  v20 = &v65 - v19;
  v21 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  __chkstk_darwin(v21 - 8);
  v22 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  OUTLINED_FUNCTION_7();
  v24 = v23;
  __chkstk_darwin(v25);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v65 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  __chkstk_darwin(v31 - 8);
  v33 = &v65 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_426260;
  *(v34 + 32) = a1;
  v35 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v35);

  v36 = static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of UsoBuilderOptions?(v33);
  Siri_Nlu_External_UserWantedToProceed.init()();
  v72 = v36;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  Siri_Nlu_External_UserWantedToProceed.reference.setter();
  Siri_Nlu_External_UserDialogAct.init()();
  v75 = v24;
  v76 = v22;
  v37 = v24[2];
  v73 = v30;
  (v37)(v27, v30, v22);
  Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
  Siri_Nlu_External_SystemOffered.init()();
  v38 = v69;
  v39 = *(v69 + 16);
  v77 = v20;
  v39(v68, v20, v82);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  v40 = v71;
  Siri_Nlu_External_SystemDialogAct.init()();
  v41 = v78;
  v42 = v80;
  (*(v78 + 16))(v70, v15, v80);
  Siri_Nlu_External_SystemDialogAct.offered.setter();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v43, static Logger.siriPhone);
  v44 = v74;

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();

  v47 = os_log_type_enabled(v45, v46);
  v48 = v81;
  v49 = v79;
  if (v47)
  {
    v50 = swift_slowAlloc();
    v51 = v38;
    v52 = swift_slowAlloc();
    v83[0] = v52;
    *v50 = 136315394;
    *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v44, v83);
    *(v50 + 12) = 2080;
    swift_beginAccess();
    v53 = *(v49 + 16);
    v54 = v66;
    v53(v66, v40, v48);
    v55 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K29_Nlu_External_SystemDialogActV_Tt0g5(v54);
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v83);
    v49 = v79;

    *(v50 + 14) = v57;
    v48 = v81;
    _os_log_impl(&dword_0, v45, v46, "Returning NLUUserDialogAct.NLUSystemOffered for %s: %s", v50, 0x16u);
    swift_arrayDestroy();
    v58 = v52;
    v38 = v51;
    v59 = v82;
    OUTLINED_FUNCTION_26_0(v58);
    v60 = v50;
    v41 = v78;
    v42 = v80;
    OUTLINED_FUNCTION_26_0(v60);
  }

  else
  {

    v59 = v82;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v61 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v62 = v49;
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_424FD0;
  swift_beginAccess();
  (*(v62 + 16))(v63 + v61, v40, v48);

  (*(v41 + 8))(v15, v42);
  (*(v38 + 8))(v77, v59);
  v75[1](v73, v76);
  (*(v62 + 8))(v40, v48);
  return v63;
}

void outlined bridged method (mbnn) of @objc SAAceConfirmationContext.reason.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setReason:v4];
}

uint64_t outlined destroy of UsoBuilderOptions?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL InferenceSource.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InferenceSource.init(rawValue:), v2);

  return v3 != 0;
}

unint64_t lazy protocol witness table accessor for type InferenceSource and conformance InferenceSource()
{
  result = lazy protocol witness table cache variable for type InferenceSource and conformance InferenceSource;
  if (!lazy protocol witness table cache variable for type InferenceSource and conformance InferenceSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InferenceSource and conformance InferenceSource);
  }

  return result;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance InferenceSource@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = InferenceSource.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for InferenceSource(_BYTE *result, int a2, int a3)
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

void (*INPersonCodable.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *v1;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return INPersonCodable.wrappedValue.modify;
}

void INPersonCodable.wrappedValue.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    v5 = v4;

    *v2 = v5;
  }

  else
  {

    *v2 = v4;
  }
}

void INPersonCodable.init(from:)(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(_INPBContact);
  outlined copy of Data._Representation(a1, a2);
  v5 = @nonobjc _SFPBCard.init(data:)(a1, a2);
  v6 = INIntentSlotValueTransformFromContact();

  if (v6)
  {
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    __break(1u);
  }
}

id INPersonCodable.data.getter(uint64_t a1)
{
  result = INIntentSlotValueTransformToContact();
  if (!result)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = outlined bridged method (ob) of @objc PBCodable.data.getter(result);
  if (v2 >> 60 == 15)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void INPersonCodable.init(from:)(void *a1)
{
  OUTLINED_FUNCTION_6_46(a1);
  OUTLINED_FUNCTION_33_4();
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v3 = objc_allocWithZone(_INPBContact);
    v4 = OUTLINED_FUNCTION_33_4();
    outlined copy of Data._Representation(v4, v5);
    v6 = OUTLINED_FUNCTION_33_4();
    v8 = @nonobjc _SFPBCard.init(data:)(v6, v7);
    v9 = INIntentSlotValueTransformFromContact();

    if (v9)
    {
      v10 = OUTLINED_FUNCTION_33_4();
      outlined consume of Data._Representation(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v12);
      __swift_destroy_boxed_opaque_existential_1(v1);
    }

    else
    {
      __break(1u);
    }
  }
}

id INPersonCodable.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_5_46(a1);
  OUTLINED_FUNCTION_33_4();
  dispatch thunk of Encoder.singleValueContainer()();
  result = INIntentSlotValueTransformToContact();
  if (result)
  {
    result = outlined bridged method (ob) of @objc PBCodable.data.getter(result);
    if (v2 >> 60 != 15)
    {
      v3 = result;
      v4 = v2;
      __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
      lazy protocol witness table accessor for type Data and conformance Data();
      dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
      outlined consume of Data._Representation(v3, v4);
      return __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for transformer()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy10Foundation4DataVSo8INPersonCGMd, &_s13SiriUtilities11TransformerVy10Foundation4DataVSo8INPersonCGMR);
  __swift_allocate_value_buffer(v0, static INPersonCodable.transformer);
  __swift_project_value_buffer(v0, static INPersonCodable.transformer);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  return Transformer.init(transform:reverseTransform:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMd, &_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMR);
  __swift_allocate_value_buffer(v0, static INPersonArrayCodable.transformer);
  __swift_project_value_buffer(v0, static INPersonArrayCodable.transformer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  return Transformer.init(transform:reverseTransform:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin08IncomingE14IntentResponse_p0a3KitF05InputVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin08IncomingE14IntentResponse_p0a3KitF05InputVGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.transformer);
  v1 = OUTLINED_FUNCTION_19_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08IncomingB14IntentResponse_pMd, &_s27PhoneCallFlowDelegatePlugin08IncomingB14IntentResponse_pMR);
  OUTLINED_FUNCTION_88();
  type metadata accessor for Input();
  return Transformer.init(transform:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMd, &_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.transformer);
  v1 = OUTLINED_FUNCTION_19_0();
  __swift_project_value_buffer(v1, v2);
  type metadata accessor for Siri_Nlu_External_UserDialogAct();
  return Transformer.init(transform:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH10AudioRouteOSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH10AudioRouteOSgGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.transformer);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  type metadata accessor for UsoTask();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB10AudioRouteOSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10AudioRouteOSgMR);
  return Transformer.init(transform:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH4VerbOSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH4VerbOSgGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.transformer);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  type metadata accessor for UsoTask();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB4VerbOSgMd, &_s27PhoneCallFlowDelegatePlugin0aB4VerbOSgMR);
  return Transformer.init(transform:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin9VoiceMailO0lM4VerbOSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin9VoiceMailO0lM4VerbOSgGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.transformer);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  type metadata accessor for UsoTask();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin9VoiceMailO0fG4VerbOSgMd, &_s27PhoneCallFlowDelegatePlugin9VoiceMailO0fG4VerbOSgMR);
  return Transformer.init(transform:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology22UsoEntity_common_AgentCSo8INPersonCSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology22UsoEntity_common_AgentCSo8INPersonCSgGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.transformer);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  type metadata accessor for UsoEntity_common_Agent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INPersonCSgMd, &_sSo8INPersonCSgMR);
  return Transformer.init(transform:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology33UsoTask_noVerb_common_PhoneNumberCAD0eF0CSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology33UsoTask_noVerb_common_PhoneNumberCAD0eF0CSgGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.transformer);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  type metadata accessor for UsoTask_noVerb_common_PhoneNumber();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology7UsoTaskCSgMd, &_s12SiriOntology7UsoTaskCSgMR);
  return Transformer.init(transform:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySSSg10Foundation20PersonNameComponentsVSgGMd, &_s13SiriUtilities11TransformerVySSSg10Foundation20PersonNameComponentsVSgGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.transformer);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  return Transformer.init(transform:)();
}

void closure #1 in variable initialization expression of static INPersonCodable.transformer(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  objc_allocWithZone(_INPBContact);
  outlined copy of Data._Representation(v3, v4);
  v5 = @nonobjc _SFPBCard.init(data:)(v3, v4);
  v6 = INIntentSlotValueTransformFromContact();

  if (v6)
  {
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }
}

id closure #2 in variable initialization expression of static INPersonCodable.transformer@<X0>(void *a2@<X8>)
{
  result = INIntentSlotValueTransformToContact();
  if (result)
  {
    result = outlined bridged method (ob) of @objc PBCodable.data.getter(result);
    if (v4 >> 60 != 15)
    {
      *a2 = result;
      a2[1] = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t INPersonCodable.transformer.unsafeMutableAddressor()
{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_1_69(&one-time initialization token for transformer);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy10Foundation4DataVSo8INPersonCGMd, &_s13SiriUtilities11TransformerVy10Foundation4DataVSo8INPersonCGMR);

  return __swift_project_value_buffer(v0, static INPersonCodable.transformer);
}

uint64_t static INPersonCodable.transformer.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_1_69(&one-time initialization token for transformer);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy10Foundation4DataVSo8INPersonCGMd, &_s13SiriUtilities11TransformerVy10Foundation4DataVSo8INPersonCGMR);
  __swift_project_value_buffer(v2, static INPersonCodable.transformer);
  OUTLINED_FUNCTION_3_49();
  v4 = *(v3 + 16);

  return v4(a1);
}

void protocol witness for Decodable.init(from:) in conformance INPersonCodable(void *a1@<X0>, void *a2@<X8>)
{
  INPersonCodable.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t INPersonArrayCodable.wrappedValue.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t (*INPersonArrayCodable.wrappedValue.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return INPersonArrayCodable.wrappedValue.modify;
}

uint64_t INPersonArrayCodable.wrappedValue.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    *v2 = v3;
  }

  else
  {

    *v2 = v3;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::INPersonArrayCodable __swiftcall INPersonArrayCodable.init(from:)(PhoneCallFlowDelegatePlugin::INPersonArrayCodable from)
{
  rawValue = from.persons._rawValue;
  v2 = 0;
  v3 = *(from.persons._rawValue + 2);
  v4 = from.persons._rawValue + 40;
  v18 = from.persons._rawValue + 40;
LABEL_2:
  v5 = &v4[16 * v2];
  while (1)
  {
    if (v3 == v2)
    {

      return _swiftEmptyArrayStorage;
    }

    if (v2 >= rawValue[2])
    {
      break;
    }

    ++v2;
    v6 = v5 + 16;
    v7 = objc_allocWithZone(_INPBContact);
    v8 = OUTLINED_FUNCTION_104();
    outlined copy of Data._Representation(v8, v9);
    v10 = OUTLINED_FUNCTION_104();
    outlined copy of Data._Representation(v10, v11);
    v12 = OUTLINED_FUNCTION_104();
    v14 = @nonobjc _SFPBCard.init(data:)(v12, v13);
    v15 = INIntentSlotValueTransformFromContact();

    v16 = OUTLINED_FUNCTION_104();
    from.persons._rawValue = outlined consume of Data._Representation(v16, v17);
    v5 = v6;
    if (v15)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      from.persons._rawValue = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v18;
      goto LABEL_2;
    }
  }

  __break(1u);
  return from;
}

void INPersonArrayCodable.data.getter()
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v1 = INIntentSlotValueTransformToContacts();

  if (v1)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for _INPBContact, _INPBContact_ptr);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = specialized Array.count.getter(v2);
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v3 == v4)
      {

        return;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = outlined bridged method (pb) of @objc PBCodable.data.getter(v6);
      v11 = v10;

      ++v4;
      if (v11 >> 60 != 15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
          v5 = v15;
        }

        v13 = v5[2];
        v12 = v5[3];
        if (v13 >= v12 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1, v5);
          v5 = v16;
        }

        v5[2] = v13 + 1;
        v14 = &v5[2 * v13];
        v14[4] = v9;
        v14[5] = v11;
        v4 = v8;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
}

void *INPersonArrayCodable.init(from:)(void *a1)
{
  rawValue = OUTLINED_FUNCTION_6_46(a1);
  OUTLINED_FUNCTION_33_4();
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    lazy protocol witness table accessor for type [Data] and conformance <A> [A](&lazy protocol witness table cache variable for type [Data] and conformance <A> [A], lazy protocol witness table accessor for type Data and conformance Data, &protocol conformance descriptor for <A> [A]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    rawValue = INPersonArrayCodable.init(from:)(from).persons._rawValue;
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v1);
  return rawValue;
}

uint64_t INPersonArrayCodable.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_5_46(a1);
  OUTLINED_FUNCTION_33_4();
  dispatch thunk of Encoder.singleValueContainer()();
  INPersonArrayCodable.data.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [Data] and conformance <A> [A](&lazy protocol witness table cache variable for type [Data] and conformance <A> [A], lazy protocol witness table accessor for type Data and conformance Data, &protocol conformance descriptor for <A> [A]);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

PhoneCallFlowDelegatePlugin::INPersonArrayCodable closure #1 in variable initialization expression of static INPersonArrayCodable.transformer@<X0>(PhoneCallFlowDelegatePlugin::INPersonArrayCodable *a2@<X8>)
{

  result.persons._rawValue = INPersonArrayCodable.init(from:)(v3).persons._rawValue;
  a2->persons._rawValue = result.persons._rawValue;
  return result;
}

uint64_t INPersonArrayCodable.transformer.unsafeMutableAddressor()
{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_0_64(&one-time initialization token for transformer);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMd, &_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMR);

  return __swift_project_value_buffer(v0, static INPersonArrayCodable.transformer);
}

uint64_t static INPersonArrayCodable.transformer.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_0_64(&one-time initialization token for transformer);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMd, &_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMR);
  __swift_project_value_buffer(v2, static INPersonArrayCodable.transformer);
  OUTLINED_FUNCTION_3_49();
  v4 = *(v3 + 16);

  return v4(a1);
}

void *protocol witness for Decodable.init(from:) in conformance INPersonArrayCodable@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = INPersonArrayCodable.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc PBCodable.data.getter(void *a1)
{
  v1 = [a1 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t lazy protocol witness table accessor for type [Data] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t IntentConversionFlow.__allocating_init(input:app:sharedGlobals:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  IntentConversionFlow.init(input:app:sharedGlobals:)(a1, a2, a3, v7);
  return v6;
}

uint64_t key path setter for IntentConversionFlow.exitValue : <A>IntentConversionFlow<A>(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 136);
  v4 = *a1;
  return v3(v2);
}

void PhoneCallProvider.mockGlobals.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t key path setter for IntentConversionFlow.input : <A>IntentConversionFlow<A>(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Input();
  v5 = __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return (*(**a2 + 160))(v7);
}

uint64_t IntentConversionFlow.input.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for IntentConversionFlow.input;
  swift_beginAccess();
  type metadata accessor for Input();
  OUTLINED_FUNCTION_23_1();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t IntentConversionFlow.input.setter(uint64_t a1)
{
  v3 = direct field offset for IntentConversionFlow.input;
  swift_beginAccess();
  type metadata accessor for Input();
  OUTLINED_FUNCTION_23_1();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

char *IntentConversionFlow.init(input:app:sharedGlobals:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = *v4;
  *(v4 + 2) = 0;
  v9 = &v4[direct field offset for IntentConversionFlow.logPrefix];
  *v9 = type metadata accessor for IntentConversionFlow(0, *(v8 + 80), a3, a4);
  v9[1] = &outlined read-only object #0 of IntentConversionFlow.init(input:app:sharedGlobals:);
  v9[2] = 0;
  v9[3] = 0;
  v10 = direct field offset for IntentConversionFlow.input;
  type metadata accessor for Input();
  OUTLINED_FUNCTION_23_1();
  (*(v11 + 32))(&v4[v10], a1);
  *&v4[direct field offset for IntentConversionFlow.appResolved] = a2;
  outlined init with take of PhoneCallFeatureFlagProviding(a3, &v4[direct field offset for IntentConversionFlow.sharedGlobals]);
  return v4;
}

uint64_t IntentConversionFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.siriPhone);
  v14 = *(v6 + 16);
  v14(v12, a1, v4);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v38 = v9;
    v18 = v17;
    v19 = swift_slowAlloc();
    v36 = v19;
    *v18 = 136315394;
    v39 = v4;
    v40 = a1;
    v35 = v16;
    v20 = *(v2 + direct field offset for IntentConversionFlow.logPrefix);
    v21 = *(v2 + direct field offset for IntentConversionFlow.logPrefix + 8);
    v37 = v14;
    v22 = *(v2 + direct field offset for IntentConversionFlow.logPrefix + 16);
    v23 = *(v2 + direct field offset for IntentConversionFlow.logPrefix + 24);
    v41 = 0;
    v42 = 0xE000000000000000;
    v43 = v19;

    v34 = v15;
    v24 = v22;
    v4 = v39;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v20, v21, v24, v23);
    v14 = v37;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v43);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    lazy protocol witness table accessor for type Input and conformance Input();
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v6 + 8))(v12, v4);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v43);
    a1 = v40;

    *(v18 + 14) = v29;
    v30 = v34;
    _os_log_impl(&dword_0, v34, v35, "%s.on: %s", v18, 0x16u);
    v31 = v36;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v31);
    v32 = v18;
    v9 = v38;
    OUTLINED_FUNCTION_26_0(v32);
  }

  else
  {

    (*(v6 + 8))(v12, v4);
  }

  v14(v9, a1, v4);
  (*(*v2 + 160))(v9);
  return 1;
}

uint64_t IntentConversionFlow.prepare(completion:)(void (*a1)(uint64_t))
{
  v2 = v1;
  type metadata accessor for PrepareResponse();
  OUTLINED_FUNCTION_7();
  v36 = v4;
  v37 = v3;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v35 = v6 - v5;
  type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  v32 = v8;
  v33 = v7;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v31 = v10 - v9;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.siriPhone);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v38 = v15;
    v39[0] = 0;
    *v14 = 136315394;
    v16 = *(v1 + direct field offset for IntentConversionFlow.logPrefix);
    v17 = *(v1 + direct field offset for IntentConversionFlow.logPrefix + 8);
    v18 = *(v1 + direct field offset for IntentConversionFlow.logPrefix + 16);
    v19 = *(v1 + direct field offset for IntentConversionFlow.logPrefix + 24);
    v39[1] = 0xE000000000000000;

    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v16, v17, v18, v19);

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39[0], 0xE000000000000000, &v38);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = _typeName(_:qualified:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v38);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_0, v12, v13, "%s.prepare: intent type: %s", v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v15);
    OUTLINED_FUNCTION_26_0(v14);
  }

  else
  {
  }

  v24 = *(v1 + direct field offset for IntentConversionFlow.sharedGlobals + 24);
  v25 = *(v1 + direct field offset for IntentConversionFlow.sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((v1 + direct field offset for IntentConversionFlow.sharedGlobals), v24);
  v26 = *(v25 + 80);

  v27 = v26(v39, v24, v25);
  (*(*v1 + 152))(v27);
  SKTransformer.convertToSKIntent<A>(input:rchFlowContext:)();
  v29 = v28;
  (*(v32 + 8))(v31, v33);
  outlined destroy of SKTransformer(v39);
  (*(*v2 + 136))(v29);
  static PrepareResponse.complete()();
  a1(v35);

  return (*(v36 + 8))(v35, v37);
}

uint64_t IntentConversionFlow.execute(completion:)(void (*a1)(void))
{
  v3 = type metadata accessor for ExecuteResponse();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 136315138;
    v24 = a1;
    v13 = *(v1 + direct field offset for IntentConversionFlow.logPrefix);
    v14 = *(v1 + direct field offset for IntentConversionFlow.logPrefix + 8);
    v23 = v5;
    v15 = v3;
    v16 = *(v1 + direct field offset for IntentConversionFlow.logPrefix + 16);
    v17 = *(v1 + direct field offset for IntentConversionFlow.logPrefix + 24);
    v25 = v22;

    v18 = v16;
    v3 = v15;
    v5 = v23;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v13, v14, v18, v17);

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v25);
    a1 = v24;

    *(v21 + 4) = v19;
    _os_log_impl(&dword_0, v11, v12, "%s.execute", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_26_0(v22);
    OUTLINED_FUNCTION_26_0(v21);
  }

  else
  {
  }

  static ExecuteResponse.complete()();
  a1(v9);
  return (*(v5 + 8))(v9, v3);
}

uint64_t IntentConversionFlow.deinit()
{
  v1 = direct field offset for IntentConversionFlow.input;
  type metadata accessor for Input();
  OUTLINED_FUNCTION_23_1();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for IntentConversionFlow.sharedGlobals));

  return v0;
}

uint64_t IntentConversionFlow.__deallocating_deinit()
{
  IntentConversionFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance IntentConversionFlow<A1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return Flow.execute()(a1, a2, a3);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance IntentConversionFlow<A>@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 128))();
  *a1 = result;
  return result;
}

uint64_t type metadata completion function for IntentConversionFlow(uint64_t a1)
{
  result = type metadata accessor for Input();
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

uint64_t IntentFromParseFlowStrategyHelper.__allocating_init(sharedGlobals:appResolved:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  outlined init with take of SPHConversation(a1, v4 + 24);
  *(v4 + 16) = a2;
  return v4;
}

uint64_t IntentFromParseFlowStrategyHelper.init(sharedGlobals:appResolved:)(__int128 *a1, uint64_t a2)
{
  outlined init with take of SPHConversation(a1, v2 + 24);
  *(v2 + 16) = a2;
  return v2;
}

void *IntentFromParseFlowStrategyHelper.makeIntentFromParse(parse:previousIntent:)(void (*a1)(char *, uint64_t), void *a2)
{
  v3 = v2;
  v160 = a1;
  v154 = *v2;
  v155 = a2;
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v151 = v5;
  v152 = v4;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v150 = v7 - v6;
  v149 = type metadata accessor for PhoneCallNLv3Intent(0);
  __chkstk_darwin(v149);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_7();
  v157 = v12;
  v158 = v11;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_12_5();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = &v140 - v17;
  __chkstk_darwin(v19);
  v156 = &v140 - v20;
  v21 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v23 = v22;
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_12_5();
  v148 = v25 - v26;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v27);
  v153 = &v140 - v28;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v29);
  v31 = &v140 - v30;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v159 = __swift_project_value_buffer(v32, static Logger.siriPhone);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_10_0(v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    OUTLINED_FUNCTION_40_3();
    _os_log_impl(v36, v37, v38, v39, v35, 2u);
    v40 = v35;
    v3 = v2;
    OUTLINED_FUNCTION_26_0(v40);
  }

  v41 = *(v23 + 16);
  v41(v31, v160, v21);
  v42 = OUTLINED_FUNCTION_5_48();
  v44 = v43(v42);
  if (v44 != enum case for Parse.NLv3IntentOnly(_:))
  {
    if (v44 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      v146 = v15;
      v142 = v41;
      v53 = OUTLINED_FUNCTION_5_48();
      v54(v53);
      v55 = *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48)];
      v57 = v156;
      v56 = v157;
      v58 = v31;
      v59 = v158;
      (*(v157 + 32))(v156, v58, v158);
      v60 = *(v56 + 16);
      v145 = (v56 + 16);
      v144 = v60;
      v60(v18, v57, v59);
      PhoneCallNLv3Intent.init(intent:)(v18, v10);

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();

      v63 = os_log_type_enabled(v61, v62);
      v147 = v10;
      v143 = v3;
      if (v63)
      {
        v64 = OUTLINED_FUNCTION_42();
        v65 = OUTLINED_FUNCTION_36();
        v163[0] = v65;
        *v64 = 136315138;
        v66 = Parse.ServerConversion.siriKitIntent.getter();
        v67 = [v66 _metadata];

        v68 = [v67 userUtterance];
        *&v161 = v68;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11_INPBStringCSgMd, &_sSo11_INPBStringCSgMR);
        v69 = String.init<A>(describing:)();
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v163);

        *(v64 + 4) = v71;
        _os_log_impl(&dword_0, v61, v62, "User utterance: %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v65);
        OUTLINED_FUNCTION_26_0(v65);
        OUTLINED_FUNCTION_26_0(v64);
      }

      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.debug.getter();

      v74 = os_log_type_enabled(v72, v73);
      v75 = v158;
      v155 = v55;
      if (v74)
      {
        v76 = OUTLINED_FUNCTION_42();
        v141 = OUTLINED_FUNCTION_36();
        v163[0] = v141;
        *v76 = 136315138;
        v77 = Parse.ServerConversion.siriKitIntent.getter();
        v78 = [v77 description];
        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v81 = v80;

        v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v163);
        v75 = v158;

        *(v76 + 4) = v82;
        _os_log_impl(&dword_0, v72, v73, "SKIntent from server: %s", v76, 0xCu);
        v83 = v141;
        __swift_destroy_boxed_opaque_existential_1(v141);
        OUTLINED_FUNCTION_26_0(v83);
        OUTLINED_FUNCTION_26_0(v76);
      }

      v84 = v146;
      v144(v146, v156, v75);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = v84;
        v88 = OUTLINED_FUNCTION_42();
        v145 = OUTLINED_FUNCTION_36();
        v163[0] = v145;
        *v88 = 136315138;
        lazy protocol witness table accessor for type NLIntent and conformance NLIntent(&lazy protocol witness table cache variable for type NLIntent and conformance NLIntent, &type metadata accessor for NLIntent, &protocol conformance descriptor for NLIntent);
        v89 = dispatch thunk of CustomStringConvertible.description.getter();
        v91 = v90;
        v92 = v87;
        v93 = *(v157 + 8);
        v93(v92, v75);
        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v91, v163);

        *(v88 + 4) = v94;
        _os_log_impl(&dword_0, v85, v86, "NLIntent from server: %s", v88, 0xCu);
        v95 = v145;
        __swift_destroy_boxed_opaque_existential_1(v145);
        OUTLINED_FUNCTION_26_0(v95);
        OUTLINED_FUNCTION_26_0(v88);
      }

      else
      {

        v93 = *(v157 + 8);
        v93(v84, v75);
      }

      v99 = v147;
      v100 = v154;
      v101 = Parse.ServerConversion.siriKitIntent.getter();
      v102 = *(v100 + 80);
      v52 = INIntent.typed<A>(as:)(v102, v102);

      if (v52)
      {
        v160 = v93;
        v154 = type metadata accessor for ContactResolution();
        v163[3] = v149;
        v163[4] = &protocol witness table for PhoneCallNLv3Intent;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v163);
        outlined init with copy of PhoneCallNLv3Intent(v99, boxed_opaque_existential_1);
        v104 = v52;
        v105 = v100;
        v106 = IntentFromParseFlowStrategyHelper.inferApp(from:)();
        v107 = v143;
        v108 = v143[6];
        v109 = v143[7];
        __swift_project_boxed_opaque_existential_1(v143 + 3, v108);
        (*(v109 + 8))(&v161, v108, v109);
        __swift_project_boxed_opaque_existential_1(&v161, v162);
        v110 = v150;
        dispatch thunk of DeviceState.siriLocale.getter();
        specialized static ContactResolution.updateSiriKitIntentNLv3(siriKitIntent:nlIntent:app:locale:sharedGlobals:multicardinalIndex:)(v104, v163, v106, v110, (v107 + 3), 0, 1, v154, v102, *(v105 + 88), v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);

        (*(v151 + 8))(v110, v152);
        __swift_destroy_boxed_opaque_existential_1(&v161);
        __swift_destroy_boxed_opaque_existential_1(v163);
        v111 = v104;
        v112 = Logger.logObject.getter();
        v113 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v112, v113))
        {
          v114 = OUTLINED_FUNCTION_42();
          v115 = OUTLINED_FUNCTION_36();
          v163[0] = v115;
          *v114 = 136315138;
          *&v161 = v111;
          v116 = v111;
          OUTLINED_FUNCTION_2_60();
          swift_getWitnessTable();
          v117 = String.init<A>(describing:)();
          v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v118, v163);

          *(v114 + 4) = v119;
          _os_log_impl(&dword_0, v112, v113, "SKIntent after NCR replacement: %s", v114, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v115);
          OUTLINED_FUNCTION_26_0(v115);
          OUTLINED_FUNCTION_26_0(v114);
        }

        outlined destroy of PhoneCallNLv3Intent(v147);
        v160(v156, v158);
        return v52;
      }

      outlined destroy of PhoneCallNLv3Intent(v99);
      v93(v156, v158);
      v41 = v142;
    }

    else
    {
      if (v44 == enum case for Parse.NLv4IntentOnly(_:) || v44 == enum case for Parse.uso(_:))
      {
        goto LABEL_6;
      }

      v97 = OUTLINED_FUNCTION_5_48();
      v98(v97);
    }

    v120 = v153;
    v41(v153, v160, v21);
    v121 = v41;
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = OUTLINED_FUNCTION_42();
      v125 = OUTLINED_FUNCTION_36();
      v163[0] = v125;
      *v124 = 136315138;
      v126 = v148;
      v121(v148, v120, v21);
      v127 = String.init(describing:)(v126);
      v129 = v128;
      (*(v23 + 8))(v120, v21);
      v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v129, v163);

      *(v124 + 4) = v130;
      _os_log_impl(&dword_0, v122, v123, "#IntentFromParseFlowStrategyHelper makeIntentFromParse get unexpected parse: %s", v124, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v125);
      OUTLINED_FUNCTION_26_0(v125);
      OUTLINED_FUNCTION_26_0(v124);
    }

    else
    {

      (*(v23 + 8))(v120, v21);
    }

    return 0;
  }

LABEL_6:
  v45 = OUTLINED_FUNCTION_5_48();
  v46(v45);
  v47 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v48 = OUTLINED_FUNCTION_40_0();
  v50 = v49(v48, v47);
  v51 = v160;
  (*(*v50 + 192))(&v161, v160);

  if (v162)
  {
    outlined init with take of SPHConversation(&v161, v163);
    v52 = IntentFromParseFlowStrategyHelper.makeIntentFromParseSiriX(parse:nlIntent:previousIntent:)(v51, v163, v155);
    __swift_destroy_boxed_opaque_existential_1(v163);
    return v52;
  }

  outlined destroy of PhoneCallNLIntent?(&v161);
  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v133))
  {
    v134 = OUTLINED_FUNCTION_42();
    v135 = OUTLINED_FUNCTION_36();
    v163[0] = v135;
    *v134 = 136315138;
    *(v134 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000050, 0x800000000045C0D0, v163);
    OUTLINED_FUNCTION_40_3();
    _os_log_impl(v136, v137, v138, v139, v134, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v135);
    OUTLINED_FUNCTION_26_0(v135);
    OUTLINED_FUNCTION_26_0(v134);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  OUTLINED_FUNCTION_11_4();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id IntentFromParseFlowStrategyHelper.makeIntentFromParseSiriX(parse:nlIntent:previousIntent:)(id a1, void (*a2)(uint64_t, uint64_t), void *a3)
{
  v4 = v3;
  v135 = a1;
  v6 = *v3;
  v133 = a3;
  v134 = v6;
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v130 = v8;
  v131 = v7;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v129 = v10 - v9;
  v11 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_12_5();
  v127 = v15 - v16;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v17);
  v128 = &v124 - v18;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v19);
  v21 = &v124 - v20;
  v22 = v3[2];
  v136 = a2;
  if (v22)
  {
    v23 = one-time initialization token for siriPhone;

    if (v23 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.siriPhone);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_42();
      v28 = OUTLINED_FUNCTION_36();
      v132 = v21;
      v29 = v28;
      v137 = v22;
      v138[0] = v28;
      *v27 = 136315138;
      type metadata accessor for App();
      v30 = v13;
      lazy protocol witness table accessor for type NLIntent and conformance NLIntent(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App, &protocol conformance descriptor for App);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v138);

      *(v27 + 4) = v33;
      v13 = v30;
      _os_log_impl(&dword_0, v25, v26, "#IntentFromParseFlowStrategyHelper makeIntentFromParse: appResolved: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v34 = v29;
      v21 = v132;
      OUTLINED_FUNCTION_26_0(v34);
      OUTLINED_FUNCTION_26_0(v27);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.siriPhone);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = v13;
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v36, v37, "#IntentFromParseFlowStrategyHelper makeIntentFromParse: no appResolved", v39, 2u);
      v40 = v39;
      v13 = v38;
      OUTLINED_FUNCTION_26_0(v40);
    }
  }

  v41 = *(v13 + 16);
  v41(v21, v135, v11);
  v42 = OUTLINED_FUNCTION_5_48();
  v44 = v43(v42);
  if (v44 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v124 = v41;
    v125 = v13;
    v126 = v11;
    v132 = v21;
    v45 = v4[6];
    v46 = v4[7];
    __swift_project_boxed_opaque_existential_1(v4 + 3, v45);
    v47 = *(v46 + 80);

    v48 = v133;
    v49 = v133;
    v47(v138, v45, v46);
    v50 = v134;
    v51 = *(v134 + 80);
    SKTransformer.convertToSKIntent<A>(ofType:phoneCallNLIntent:rchFlowContext:)(v51, v136, v22, v48, 0, v51, v52, v53, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135);
    v55 = v54;
    outlined destroy of SKTransformer(v138);
    if (v55)
    {
      v135 = v49;
      v128 = type metadata accessor for ContactResolution();
      v57 = v4[6];
      v56 = v4[7];
      __swift_project_boxed_opaque_existential_1(v4 + 3, v57);
      v58 = v50;
      v59 = *(v56 + 8);
      v133 = v55;
      v60 = v55;
      v59(v138, v57, v56);
      __swift_project_boxed_opaque_existential_1(v138, v138[3]);
      v61 = v129;
      OUTLINED_FUNCTION_40_0();
      dispatch thunk of DeviceState.siriLocale.getter();
      specialized static ContactResolution.updateSiriKitIntentNLv3(siriKitIntent:nlIntent:app:locale:sharedGlobals:multicardinalIndex:)(v60, v136, v22, v61, (v4 + 3), 0, 1, v128, v51, *(v58 + 88), v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135);

      (*(v130 + 8))(v61, v131);
      __swift_destroy_boxed_opaque_existential_1(v138);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      __swift_project_value_buffer(v62, static Logger.siriPhone);
      v63 = v60;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.debug.getter();

      v66 = os_log_type_enabled(v64, v65);
      v67 = v135;
      if (v66)
      {
        v68 = OUTLINED_FUNCTION_42();
        v69 = OUTLINED_FUNCTION_36();
        v137 = v63;
        v138[0] = v69;
        *v68 = 136315138;
        v70 = v63;
        OUTLINED_FUNCTION_2_60();
        swift_getWitnessTable();
        v71 = String.init<A>(describing:)();
        v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, v138);

        *(v68 + 4) = v73;
        _os_log_impl(&dword_0, v64, v65, "#IntentFromParseFlowStrategyHelper SKIntent after NCR replacement: %s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v69);
        OUTLINED_FUNCTION_26_0(v69);
        OUTLINED_FUNCTION_26_0(v68);
      }

      (*(v125 + 8))(v132, v126);
      return v133;
    }

    else
    {

      v98 = v126;
      v99 = *(v125 + 8);
      v99(v132, v126);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v100 = type metadata accessor for Logger();
      __swift_project_value_buffer(v100, static Logger.siriPhone);
      v101 = v128;
      v102 = v124;
      v124(v128, v135, v98);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = OUTLINED_FUNCTION_42();
        v106 = OUTLINED_FUNCTION_36();
        v136 = v99;
        v107 = v106;
        v138[0] = v106;
        *v105 = 136315138;
        v108 = v127;
        v102(v127, v101, v98);
        v109 = String.init(describing:)(v108);
        v110 = v101;
        v112 = v111;
        v136(v110, v98);
        v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v112, v138);

        *(v105 + 4) = v113;
        _os_log_impl(&dword_0, v103, v104, "#IntentFromParseFlowStrategyHelper makeIntentFromParseSiriX get unexpected parse: %s", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v107);
        OUTLINED_FUNCTION_26_0(v107);
        OUTLINED_FUNCTION_26_0(v105);
      }

      else
      {

        v99(v101, v98);
      }

      return 0;
    }
  }

  if (v44 == enum case for Parse.NLv4IntentOnly(_:) || v44 == enum case for Parse.uso(_:))
  {
    v76 = OUTLINED_FUNCTION_5_48();
    v77(v76);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    __swift_project_value_buffer(v78, static Logger.siriPhone);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.debug.getter();
    v81 = OUTLINED_FUNCTION_10_0(v80);
    v82 = v134;
    if (v81)
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      OUTLINED_FUNCTION_40_3();
      _os_log_impl(v84, v85, v86, v87, v83, 2u);
      OUTLINED_FUNCTION_26_0(v83);
    }

    v88 = v4[7];
    __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
    v89 = OUTLINED_FUNCTION_40_0();
    v90(v89, v88);
    v91 = *(v82 + 80);

    v92 = v133;
    v93 = v133;
    SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v136, v22, v92, 0, v91, v94, v95, v96, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135);
    v74 = v97;

    outlined destroy of SKTransformer(v138);
    return v74;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v115 = type metadata accessor for Logger();
  __swift_project_value_buffer(v115, static Logger.siriPhone);
  v116 = Logger.logObject.getter();
  v117 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v117))
  {
    v118 = OUTLINED_FUNCTION_42();
    v119 = OUTLINED_FUNCTION_36();
    v138[0] = v119;
    *v118 = 136315138;
    *(v118 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000057, 0x800000000045C130, v138);
    OUTLINED_FUNCTION_40_3();
    _os_log_impl(v120, v121, v122, v123, v118, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v119);
    OUTLINED_FUNCTION_26_0(v119);
    OUTLINED_FUNCTION_26_0(v118);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  OUTLINED_FUNCTION_11_4();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t IntentFromParseFlowStrategyHelper.inferApp(from:)()
{
  Parse.ServerConversion.appResolutionStateProviding.getter();
  __swift_project_boxed_opaque_existential_1(v2, v3);
  OUTLINED_FUNCTION_40_0();
  v0 = dispatch thunk of AppResolutionStateProviding.getRequestedApp()();
  if (!v0)
  {
    __swift_project_boxed_opaque_existential_1(v2, v3);
    OUTLINED_FUNCTION_40_0();
    v0 = dispatch thunk of AppResolutionStateProviding.getSuggestedApp()();
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

uint64_t IntentFromParseFlowStrategyHelper.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  return v0;
}

uint64_t IntentFromParseFlowStrategyHelper.__deallocating_deinit()
{
  IntentFromParseFlowStrategyHelper.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of PhoneCallNLv3Intent(uint64_t a1)
{
  v2 = type metadata accessor for PhoneCallNLv3Intent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of PhoneCallNLv3Intent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneCallNLv3Intent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type NLIntent and conformance NLIntent(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

INPerson __swiftcall INPerson.init(personHandle:)(INPersonHandle personHandle)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersonHandle:personHandle.super.isa nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];

  return v2;
}

Swift::Void __swiftcall INAddCallParticipantIntent.overwriteContacts(newContacts:)(Swift::OpaquePointer newContacts)
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  Array._bridgeToObjectiveC()();
  OUTLINED_FUNCTION_51_12();
  [v1 setParticipants:?];
}

INPerson __swiftcall INPerson.with(scoredAlternatives:)(Swift::OpaquePointer scoredAlternatives)
{
  outlined bridged method (mbgnn) of @objc INPerson.scoredAlternatives.setter(scoredAlternatives._rawValue, v1, &lazy cache variable for type metadata for INScoredPerson, INScoredPerson_ptr, &selRef_setScoredAlternatives_);

  return v3;
}

uint64_t INCallInviteType.INPBStringRepresentation.getter(uint64_t a1)
{
  if (a1)
  {
    BackingType = INCallInviteTypeGetBackingType();
    switch(BackingType)
    {
      case 3:
        v2 = @"LINK";
        break;
      case 2:
        v2 = @"RING";
        break;
      case 1:
        v2 = @"ADD";
        break;
      default:
        v2 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        goto LABEL_11;
    }

    v3 = v2;
LABEL_11:
    v4 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_40_13();
    return OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_2_1();
  return OUTLINED_FUNCTION_0();
}

INPerson __swiftcall INPerson.with(alternatives:)(Swift::OpaquePointer alternatives)
{
  outlined bridged method (mbgnn) of @objc INPerson.alternatives.setter(alternatives._rawValue, v1);

  return v3;
}

id static INPlayVoicemailIntent.makeFirstPartyHandleIntent(identifier:)()
{
  OUTLINED_FUNCTION_1_15();
  objc_allocWithZone(INPlayVoicemailIntent);

  v0 = OUTLINED_FUNCTION_0();
  v2 = @nonobjc INPlayVoicemailIntent.init(callRecordIdentifier:)(v0, v1);
  v3 = [objc_allocWithZone(_INPBIntentMetadata) init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = String._bridgeToObjectiveC()();
    [v5 setLaunchId:v6];

    v7 = v5;
    v8 = String._bridgeToObjectiveC()();
    [v7 setSystemExtensionBundleId:v8];
  }

  v9 = v2;
  [v9 _setMetadata:v4];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupHandleIntent, SAIntentGroupHandleIntent_ptr);
  v10 = SAIntentGroupHandleIntent.init(intent:appIdentifier:)(v9, 0, 0);

  return v10;
}

uint64_t INCallAudioRoute.INPBStringRepresentation.getter(uint64_t a1)
{
  if (a1)
  {
    BackingType = INCallAudioRouteGetBackingType();
    switch(BackingType)
    {
      case 4:
        v2 = @"HEY_SIRI_AUDIO_ROUTE";
        break;
      case 3:
        v2 = @"BLUETOOTH_AUDIO_ROUTE";
        break;
      case 2:
        v2 = @"SPEAKERPHONE_AUDIO_ROUTE";
        break;
      default:
        v2 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        goto LABEL_11;
    }

    v3 = v2;
LABEL_11:
    v4 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_40_13();
    return OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_2_1();
  return OUTLINED_FUNCTION_0();
}

uint64_t INCallCapability.INPBStringRepresentation.getter(uint64_t a1)
{
  if (a1)
  {
    BackingType = INCallCapabilityGetBackingType();
    if (BackingType == 2)
    {
      v2 = @"VIDEO_CALL";
    }

    else
    {
      if (BackingType != 1)
      {
        v2 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        goto LABEL_9;
      }

      v2 = @"AUDIO_CALL";
    }

    v3 = v2;
LABEL_9:
    v4 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_40_13();
    return OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_2_1();
  return OUTLINED_FUNCTION_0();
}

BOOL INPerson.hasHandleValue.getter()
{
  v1 = [v0 personHandle];
  if (v1)
  {
    v1 = outlined bridged method (ob) of @objc INPersonHandle.value.getter(v1, &selRef_value);
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = specialized Optional<A>.isNilOrEmpty.getter(v1, v3);

  return !v4;
}

id INPerson.isEmergency.getter()
{
  result = [v0 personHandle];
  if (result)
  {
    v2 = result;
    v3 = [result emergencyType];

    return (v3 != 0);
  }

  return result;
}

INPerson __swiftcall INPerson.mutableCopyOrCrash()()
{
  [v0 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v1 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  if (OUTLINED_FUNCTION_58_5(v1, v2, v3, v1))
  {
    return v12;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x800000000045C210, v13);
    OUTLINED_FUNCTION_57(&dword_0, v10, v11, "%s");
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_26_0(v9);
    OUTLINED_FUNCTION_26_0(v8);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result.super.isa = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *INPerson.withTranslatedHandleLabel(locale:)()
{
  v1 = v0;
  if (INPerson.hasHandleLabel.getter())
  {
    v2 = [v0 personHandle];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 label];
      if (v4)
      {
        v5 = v4;
        v6 = INIntentSlotValueTransformToContactHandle();
        v29[0] = Locale.identifier.getter();
        v29[1] = v7;
        v26 = lazy protocol witness table accessor for type String and conformance String();
        OUTLINED_FUNCTION_19_3();
        StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

        v8 = static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();
        v10 = v9;

        if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
        {
        }

        else
        {
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v13 & 1) == 0)
          {
            if (one-time initialization token for siriPhone != -1)
            {
              OUTLINED_FUNCTION_0_6();
              swift_once();
            }

            v14 = type metadata accessor for Logger();
            __swift_project_value_buffer(v14, static Logger.siriPhone);
            v15 = v5;

            v16 = Logger.logObject.getter();
            v17 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v16, v17))
            {
              v18 = swift_slowAlloc();
              v28 = swift_slowAlloc();
              v29[0] = v28;
              *v18 = 136315394;
              v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v27 = v17;
              v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v29);

              *(v18 + 4) = v21;
              *(v18 + 12) = 2080;
              *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v29);
              _os_log_impl(&dword_0, v16, v27, "#INPerson Replacing handle label with translated label! %s => %s", v18, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_26_0(v28);
              OUTLINED_FUNCTION_26_0(v18);
            }

            if (v6)
            {
              outlined bridged method (mbnn) of @objc INIntent._uiExtensionBundleId.setter(v8, v10, v6, &selRef_setLabel_);
LABEL_20:
              v24 = INIntentSlotValueTransformFromContactHandle();
              [v1 setPersonHandle:{v24, &type metadata for String, v26, v26, v26}];
              v25 = v1;

              return v1;
            }
          }
        }

        goto LABEL_20;
      }
    }
  }

  v22 = v0;
  return v1;
}

uint64_t INPreferredCallProvider.INPBStringRepresentation.getter(uint64_t a1)
{
  if (a1)
  {
    v1 = INPreferredCallProviderGetBackingType();
    switch(v1)
    {
      case 4:
        v2 = @"THIRD_PARTY_PROVIDER";
        break;
      case 3:
        v2 = @"FACETIME_PROVIDER";
        break;
      case 2:
        v2 = @"TELEPHONY_PROVIDER";
        break;
      default:
        v2 = [NSString stringWithFormat:@"(unknown: %i)", v1];
        goto LABEL_11;
    }

    v3 = v2;
LABEL_11:
    v4 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_40_13();
    return OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_2_1();
  return OUTLINED_FUNCTION_0();
}

id INPerson.nameLowercasedWithFirstUppercased.getter()
{
  OUTLINED_FUNCTION_66();
  v64 = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v8 = OUTLINED_FUNCTION_21(v7);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_12_5();
  v61 = v9 - v10;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v11);
  v62 = v60 - v12;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v13);
  v63 = v60 - v14;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_15_30();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_35_10();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_13_32();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_34_10();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_33_12();
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_14_33();
  *&v22 = __chkstk_darwin(v21).n128_u64[0];
  v24 = v60 - v23;
  v25 = [v64 displayName];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v65 = v26;
  v66 = v28;
  v60[1] = lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.capitalized.getter();
  v29 = String._bridgeToObjectiveC()();

  [v64 setDisplayName:v29];

  v30 = [v64 nameComponents];
  if (v30)
  {
    v31 = v30;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_42_11(v2, v32);
  outlined init with take of PersonNameComponents?();
  if (OUTLINED_FUNCTION_32_1(v24))
  {
    outlined init with copy of PersonNameComponents?();
    OUTLINED_FUNCTION_4_1(v3);
    if (v34)
    {
      v38 = 0;
    }

    else
    {
      v38 = v3;
      PersonNameComponents._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_8_44();
      (*(v39 + 8))(v3, v33);
    }

    [v64 setNameComponents:v38];

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v24, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  }

  else
  {
    v35 = [v64 nameComponents];
    if (v35)
    {
      v36 = v35;
      static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    OUTLINED_FUNCTION_42_11(v4, v37);
    outlined init with take of PersonNameComponents?();
    if (OUTLINED_FUNCTION_32_1(v6) || (PersonNameComponents.givenName.getter(), !v40))
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v6, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    }

    else
    {
      OUTLINED_FUNCTION_29_18();
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v6, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
      v65 = v6;
      v66 = v2;
      StringProtocol.capitalized.getter();
    }

    OUTLINED_FUNCTION_31_12();
    PersonNameComponents.givenName.setter();
    OUTLINED_FUNCTION_4_1(v24);
    if (v34)
    {
      v41 = 0;
    }

    else
    {
      v41 = v24;
      PersonNameComponents._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_8_44();
      (*(v42 + 8))(v24, v33);
    }

    [v64 setNameComponents:v41];
  }

  v43 = [v64 nameComponents];
  if (v43)
  {
    v44 = v43;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  OUTLINED_FUNCTION_42_11(v5, v45);
  outlined init with take of PersonNameComponents?();
  if (OUTLINED_FUNCTION_32_1(v0))
  {
    v46 = v63;
    outlined init with copy of PersonNameComponents?();
    OUTLINED_FUNCTION_4_1(v46);
    if (v34)
    {
      v52 = 0;
    }

    else
    {
      v52 = v46;
      PersonNameComponents._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_8_44();
      (*(v53 + 8))(v46, v33);
    }

    [v64 setNameComponents:v52];

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  }

  else
  {
    v47 = [v64 nameComponents];
    if (v47)
    {
      v48 = v47;
      v49 = v61;
      static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v50 = 0;
    }

    else
    {
      v50 = 1;
      v49 = v61;
    }

    v51 = v62;
    OUTLINED_FUNCTION_42_11(v49, v50);
    outlined init with take of PersonNameComponents?();
    if (OUTLINED_FUNCTION_32_1(v51) || (PersonNameComponents.familyName.getter(), !v54))
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v51, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    }

    else
    {
      OUTLINED_FUNCTION_29_18();
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v51, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
      v65 = v51;
      v66 = v49;
      StringProtocol.capitalized.getter();
    }

    OUTLINED_FUNCTION_31_12();
    PersonNameComponents.familyName.setter();
    OUTLINED_FUNCTION_4_1(v0);
    if (v34)
    {
      v55 = 0;
    }

    else
    {
      v55 = v0;
      PersonNameComponents._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_8_44();
      (*(v56 + 8))(v0, v33);
    }

    [v64 setNameComponents:v55];
  }

  OUTLINED_FUNCTION_65();

  return v57;
}

uint64_t INCallRecordTypeOptions.INPBStringRepresentation.getter()
{
  v0 = swift_allocObject();
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v1 = (v0 + 16);
  OUTLINED_FUNCTION_10_36();
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed (@unowned _INPBCallRecordType) -> ();
  v5[3] = &block_descriptor_3;
  v2 = _Block_copy(v5);

  OUTLINED_FUNCTION_31_12();
  INCallRecordTypeOptionsEnumerateBackingTypes();
  _Block_release(v2);
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  v3 = *v1;

  return v3;
}

INPerson __swiftcall INPerson.init(phoneContact:)(CNContact phoneContact)
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v4 = type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v12 = OUTLINED_FUNCTION_21(v11);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_13_32();
  __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_15_30();
  __chkstk_darwin(v15);
  v17 = &v56 - v16;
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContact:v3];
  v19 = [v18 nameComponents];
  if (v19)
  {
    v20 = v19;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OUTLINED_FUNCTION_54_13();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  outlined init with take of PersonNameComponents?();
  if (!__swift_getEnumTagSinglePayload(v17, 1, v4))
  {
    static PersonNameComponents.phoneticComponents(for:)(v3);
    OUTLINED_FUNCTION_54_13();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
    PersonNameComponents.phoneticRepresentation.setter();
  }

  outlined init with copy of PersonNameComponents?();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v4);
  if (EnumTagSinglePayload == 1)
  {
    isa = 0;
  }

  else
  {
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    EnumTagSinglePayload = (*(v6 + 8))(v1, v4);
  }

  OUTLINED_FUNCTION_59_6(EnumTagSinglePayload, "setNameComponents:");

  v31 = [v18 personHandle];
  if (v31)
  {

    v32 = v18;
LABEL_26:

    goto LABEL_27;
  }

  if ([v3 contactType] == &dword_0 + 1)
  {

LABEL_15:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v57 = v6;
    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.siriPhone);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "#INPerson Using CNContactFormatter to follow user's display name preferences", v41, 2u);
      OUTLINED_FUNCTION_26_0(v41);
    }

    v42 = objc_opt_self();
    v43 = [v42 stringFromContact:v3 style:0];
    if (v43)
    {
      v44 = v43;
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    v48 = [v42 stringFromContact:v3 style:1];
    if (v48)
    {
      v49 = v48;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v50 = 0;
    }

    PersonNameComponents.init(name:phoneticName:)(v45, v47, v50);
    v32 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v51 = (*(v57 + 8))(v10, v4);
    OUTLINED_FUNCTION_59_6(v51, "setNameComponents:");
    goto LABEL_26;
  }

  v33 = [v18 displayName];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {
    goto LABEL_15;
  }

LABEL_27:
  v52 = outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(v3, &selRef_phonemeData);
  if (v53)
  {
    v54 = String._bridgeToObjectiveC()();
  }

  else
  {
    v54 = 0;
  }

  OUTLINED_FUNCTION_59_6(v52, "setPhonemeData:");

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  OUTLINED_FUNCTION_65();
  return result;
}

INPerson __swiftcall INPerson.init(contactIdentifier:)(Swift::String contactIdentifier)
{
  object = contactIdentifier._object;
  countAndFlagsBits = contactIdentifier._countAndFlagsBits;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = objc_allocWithZone(INPersonHandle);
  v5 = @nonobjc INPersonHandle.init(value:type:)(0, 0, 0);
  OUTLINED_FUNCTION_19_3();
  v10 = outlined bridged method (mnnnnbnnn) of @objc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:)(v6, v7, v8, v9, countAndFlagsBits, object, 0, v3);

  return v10;
}

id static INPerson.from(base64ContactId:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_55();
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_19_3();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  OUTLINED_FUNCTION_70_1();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSData, NSData_ptr);
  v2._countAndFlagsBits = OUTLINED_FUNCTION_19_0();
  v3 = NSData.__allocating_init(base64Encoded:options:)(v2, 0);
  if (v3)
  {
    v4 = v3;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_70_1();
  }

  v6 = objc_allocWithZone(_INPBContactValue);
  v7 = OUTLINED_FUNCTION_19_0();
  v9 = @nonobjc _SFPBCard.init(data:)(v7, v8);
  v5 = INIntentSlotValueTransformFromContactValue();

  return v5;
}

BOOL INPerson.hasHandleLabel.getter()
{
  v1 = [v0 personHandle];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 label];

    if (v3)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_40_13();
    }
  }

  v4 = OUTLINED_FUNCTION_0();
  v6 = specialized Optional<A>.isNilOrEmpty.getter(v4, v5);

  return !v6;
}

void INPersonRelationship.toSpeakableString(startCallCats:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v34 = v5;
  type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_7();
  v32 = v7;
  v33 = v6;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = OUTLINED_FUNCTION_21(v11);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_35_10();
  __chkstk_darwin(v16);
  v18 = &v32 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy16SiriDialogEngine15SpeakableStringVs5Error_pGMd, &_ss6ResultOy16SiriDialogEngine15SpeakableStringVs5Error_pGMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_12_5();
  v22 = (v20 - v21);
  __chkstk_darwin(v23);
  v25 = (&v32 - v24);
  INPersonRelationship.nlString.getter(v2);
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  v26 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v26);
  (*(*v4 + class metadata base offset for StartCallCATs + 1496))(v14);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined init with copy of PersonNameComponents?();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    *v25 = *v0;
  }

  else
  {
    v27 = v32;
    v28 = v0;
    v29 = v33;
    (*(v32 + 32))(v10, v28, v33);
    closure #1 in INPersonRelationship.toSpeakableString(startCallCats:)(v10);
    (*(v27 + 8))(v10, v29);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

  swift_storeEnumTagMultiPayload();
  outlined init with copy of PersonNameComponents?();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = *v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v25, &_ss6ResultOy16SiriDialogEngine15SpeakableStringVs5Error_pGMd, &_ss6ResultOy16SiriDialogEngine15SpeakableStringVs5Error_pGMR);

    v30 = 1;
    v31 = v34;
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v25, &_ss6ResultOy16SiriDialogEngine15SpeakableStringVs5Error_pGMd, &_ss6ResultOy16SiriDialogEngine15SpeakableStringVs5Error_pGMR);
    v31 = v34;
    (*(*(v26 - 8) + 32))(v34, v22, v26);
    v30 = 0;
  }

  __swift_storeEnumTagSinglePayload(v31, v30, 1, v26);
  OUTLINED_FUNCTION_65();
}

id INPerson.hasNameComponents.getter()
{
  type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  result = [v0 nameComponents];
  if (result)
  {
    v3 = result;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_42BF10;
    *(inited + 32) = PersonNameComponents.givenName.getter();
    *(inited + 40) = v5;
    *(inited + 48) = PersonNameComponents.middleName.getter();
    *(inited + 56) = v6;
    *(inited + 64) = PersonNameComponents.familyName.getter();
    *(inited + 72) = v7;
    v8 = PersonNameComponents.nickname.getter();
    v9 = 0;
    *(inited + 80) = v8;
    *(inited + 88) = v10;
    while (1)
    {
      if (v9 == 64)
      {
        swift_setDeallocating();
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        v13 = OUTLINED_FUNCTION_20_0();
        v14(v13);
        return 0;
      }

      v11 = *(inited + v9 + 40);
      if (v11)
      {
        if ((v11 & 0x2000000000000000) != 0 ? HIBYTE(v11) & 0xF : *(inited + v9 + 32) & 0xFFFFFFFFFFFFLL)
        {
          break;
        }
      }

      v9 += 16;
    }

    v15 = OUTLINED_FUNCTION_20_0();
    v16(v15);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    return &dword_0 + 1;
  }

  return result;
}

uint64_t INCallDestinationType.INPBStringRepresentation.getter(uint64_t a1)
{
  if (a1)
  {
    BackingType = INCallDestinationTypeGetBackingType();
    switch(BackingType)
    {
      case 1:
        v2 = @"NORMAL_DESTINATION";
        goto LABEL_9;
      case 2:
        v2 = @"EMERGENCY_DESTINATION";
        goto LABEL_9;
      case 3:
        v2 = @"VOICEMAIL_DESTINATION";
        goto LABEL_9;
      case 4:
        v2 = @"REDIAL_DESTINATION";
        goto LABEL_9;
      case 5:
        v2 = @"CALL_BACK_DESTINATION";
LABEL_9:
        v3 = v2;
        break;
      default:
        v2 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        break;
    }

    v4 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_40_13();
  }

  else
  {
    OUTLINED_FUNCTION_2_1();
  }

  return OUTLINED_FUNCTION_0();
}

uint64_t INStartCallIntent.updatePreferredCallProvider(preferredCallProvider:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v3[3] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v3[0] = v1;
  NSObject.update(with:at:)(v3, 0xD000000000000015, 0x80000000004522D0);
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t INStartCallIntent.updateDestinationType(destinationType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v7[3] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v7[0] = v5;
  NSObject.update(with:at:)(v7, a2, a3);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

unint64_t FollowUpOfferType.rawValue.getter(char a1)
{
  result = 1162760014;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x4C41435F44414552;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t FollowUpOfferType.requiresConfirmation.getter(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_44_9();
      goto LABEL_3;
    case 3:
    case 4:
LABEL_3:
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v3 = 0;
      if (v2)
      {
        return v3 & 1;
      }

      if (FollowUpOfferType.rawValue.getter(a1) == 0x4C41435F44414552 && v4 == 0xE90000000000004CLL)
      {
LABEL_9:

        v3 = 0;
      }

      else
      {
        v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v3 = v6 ^ 1;
      }

      return v3 & 1;
    default:
      goto LABEL_9;
  }
}

uint64_t INIntent.typed<A>(as:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = swift_dynamicCastUnknownClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
  }

  else
  {
    v8 = INTypedIntentWithIntent();
    if (v8)
    {
      v9 = v8;
      v5 = swift_dynamicCastUnknownClass();
      if (!v5)
      {
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t INIntent.typedOrThrow<A>(as:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  result = INIntent.typed<A>(as:)(v7, a2);
  if (!result)
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
    swift_allocError();
    PhoneError.logged()(v9);
    outlined destroy of PhoneError(v6);
    return swift_willThrow();
  }

  return result;
}

id INIntent.copyMetadata(from:)(void *a1)
{
  v1 = [a1 _metadata];
  [v3 _setMetadata:v1];

  return v3;
}

Swift::Void __swiftcall INStartCallIntent.overwriteContacts(newContacts:)(Swift::OpaquePointer newContacts)
{
  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  v6[0] = newContacts._rawValue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  v3 = OUTLINED_FUNCTION_30_16(inited, xmmword_424FF0);
  v3[2].n128_u64[0] = v4;
  v3[2].n128_u64[1] = v5;
  v3[3].n128_u64[0] = 0xD00000000000001DLL;
  v3[3].n128_u64[1] = 0x800000000045C250;

  NSObject.update(with:at:)(v6, inited);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  __swift_destroy_boxed_opaque_existential_1(v6);
}

Swift::Void __swiftcall INStartCallIntent.overwriteCallGroups(newCallGroups:)(Swift::OpaquePointer newCallGroups)
{
  outlined bridged method (mbgnn) of @objc INPerson.scoredAlternatives.setter(newCallGroups._rawValue, v1, &lazy cache variable for type metadata for INCallGroup, INCallGroup_ptr, &selRef_setCallGroups_);
  [objc_allocWithZone(NSNumber) initWithBool:specialized Array.count.getter(newCallGroups._rawValue) != 0];
  OUTLINED_FUNCTION_51_12();
  [v1 setIsGroupCall:?];
}

Swift::Bool __swiftcall INStartCallIntent.isGroupCall()()
{
  v1 = [v0 isGroupCall];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
    v4 = static NSObject.== infix(_:_:)();

    LOBYTE(v1) = v4 & 1;
  }

  return v1;
}

id INStartCallIntent.init(callRecordFilter:callRecordToCallBack:audioRoute:destinationType:preferredCallProvider:contacts:ttyType:callCapability:isGroupCall:callGroups:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  if (a6)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v17.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v17.super.isa = 0;
  }

  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCallRecordFilter:a1 callRecordToCallBack:a2 audioRoute:a3 destinationType:a4 preferredCallProvider:a5 contacts:v17.super.isa ttyType:a7 callCapability:a8];

  v19 = objc_allocWithZone(NSNumber);
  v20 = v18;
  v21 = [v19 initWithBool:a9 & 1];
  [v20 setIsGroupCall:v21];

  if (a10)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallGroup, INCallGroup_ptr);
    OUTLINED_FUNCTION_74();
    v22.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v22.super.isa = 0;
  }

  [v20 setCallGroups:v22.super.isa];

  return v20;
}

INStartAudioCallIntent_optional __swiftcall INStartCallIntent.toStartAudioCallIntent()()
{
  v1 = [objc_allocWithZone(INStartAudioCallIntent) init];
  if (outlined bridged method (pb) of @objc INAnswerCallIntentResponse.callRecords.getter(v0, &selRef_contacts, &lazy cache variable for type metadata for INPerson, INPerson_ptr))
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    OUTLINED_FUNCTION_74();
    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  [v1 setContacts:v2.super.isa];

  [v1 setDestinationType:{objc_msgSend(v0, "destinationType")}];
  v4 = v1;
  result.value.super.super.isa = v4;
  result.is_nil = v3;
  return result;
}

BOOL INStartCallIntent.isThirdPartyCallKitCallBack.getter()
{
  if ([v0 preferredCallProvider] != &dword_0 + 3)
  {
    return 0;
  }

  if ([v0 destinationType] == &dword_4)
  {
    return 1;
  }

  return [v0 destinationType] == &dword_4 + 1;
}

void INStartCallIntent.setLaunchId(app:)(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 _metadata];
  if (v4)
  {
    outlined bridged method (ob) of @objc INPersonHandle.value.getter(v4, &selRef_launchId);
    if (v5)
    {

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.siriPhone);
      oslog = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(oslog, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_0, oslog, v7, "launchId is already configured, nothing to do.", v8, 2u);
        OUTLINED_FUNCTION_26_0(v8);
      }

      return;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriPhone);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "No launchId configured for intent. Applying based on the resolved app.", v12, 2u);
    OUTLINED_FUNCTION_26_0(v12);
  }

  v13 = [v2 _metadata];
  if (v13)
  {
    v14 = v13;
    [v13 copy];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v15 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for _INPBIntentMetadata, _INPBIntentMetadata_ptr);
    if (OUTLINED_FUNCTION_58_5(v15, v16, v17, v15))
    {
      v18 = v40;
      goto LABEL_18;
    }
  }

  v18 = [objc_allocWithZone(_INPBIntentMetadata) init];
  if (v18)
  {
LABEL_18:
    if (a1)
    {
      v19 = App.appIdentifier.getter();
      if (v20)
      {
        v21 = v19;
        v22 = v20;
        _StringGuts.grow(_:)(21);

        v41[0] = 0xD000000000000013;
        v41[1] = 0x8000000000458630;
        v23._countAndFlagsBits = v21;
        v23._object = v22;
        String.append(_:)(v23);

        outlined bridged method (mbnn) of @objc INIntent._uiExtensionBundleId.setter(0xD000000000000013, 0x8000000000458630, v18, &selRef_setLaunchId_);
      }
    }

    v24 = v18;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41[0] = v28;
      *v27 = 136315138;
      v29 = outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(v24, &selRef_launchId);
      if (v30)
      {
        v31 = v30;
      }

      else
      {
        v29 = 0x3E6C696E3CLL;
        v31 = 0xE500000000000000;
      }

      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v41);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_0, v25, v26, "Updating intent metadata with app information: launchId=%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_26_0(v28);
      OUTLINED_FUNCTION_26_0(v27);
    }

    [v2 _setMetadata:v24];
    return;
  }

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41[0] = v36;
    *v35 = 136315138;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000000045C270, v41);
    OUTLINED_FUNCTION_57(&dword_0, v37, v38, "%s");
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_26_0(v36);
    OUTLINED_FUNCTION_26_0(v35);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall INStartCallIntent.updateIsGroupCall(isGroupCall:)(Swift::Bool isGroupCall)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = isGroupCall;
    _os_log_impl(&dword_0, v3, v4, "#INStartCallIntent Updating intent with isGroupCall : %{BOOL}d", v5, 8u);
    OUTLINED_FUNCTION_26_0(v5);
  }

  v6[3] = &type metadata for Bool;
  LOBYTE(v6[0]) = isGroupCall;
  NSObject.update(with:at:)(v6, 0x4370756F72477369, 0xEB000000006C6C61);
  __swift_destroy_boxed_opaque_existential_1(v6);
}

Swift::Bool __swiftcall INStartCallIntent.isGroupFaceTimeCall()()
{
  if (INStartCallIntent.isGroupCall()() || (v1 = outlined bridged method (pb) of @objc INAnswerCallIntentResponse.callRecords.getter(v0, &selRef_callGroups, &lazy cache variable for type metadata for INCallGroup, INCallGroup_ptr)) == 0)
  {
    v3 = 1;
  }

  else
  {
    v2 = specialized Array.count.getter(v1);

    v3 = v2 != 0;
  }

  return [v0 preferredCallProvider] == &dword_0 + 2 && v3;
}

void @nonobjc INStartCallIntent.callGroups.setter(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallGroup, INCallGroup_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v1 setCallGroups:isa];
}

void (*protocol witness for CallingIntent.callGroups.modify in conformance INStartCallIntent(uint64_t **a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = INStartCallIntent.callGroups.modify(v2);
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

void (*INStartCallIntent.callGroups.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = outlined bridged method (pb) of @objc INAnswerCallIntentResponse.callRecords.getter(v1, &selRef_callGroups, &lazy cache variable for type metadata for INCallGroup, INCallGroup_ptr);
  return INStartCallIntent.callGroups.modify;
}

void INStartCallIntent.callGroups.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallGroup, INCallGroup_ptr);

      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      isa = 0;
    }

    [a1[1] setCallGroups:isa];
  }

  else if (v3)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallGroup, INCallGroup_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [a1[1] setCallGroups:isa];
  }

  else
  {
    isa = 0;
    [a1[1] setCallGroups:0];
  }
}

void (*protocol witness for CallingIntent.callRequestMetadata.modify in conformance INStartCallIntent(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 callRequestMetadata];
  return protocol witness for CallingIntent.callRequestMetadata.modify in conformance INStartCallIntent;
}

void protocol witness for CallingIntent.callRequestMetadata.modify in conformance INStartCallIntent(id *a1)
{
  v1 = *a1;
  [a1[1] setCallRequestMetadata:?];
}

id INStartCallIntentResponse.thirdPartyCallKitCallBackBundleId.getter()
{
  result = [v0 userActivity];
  if (result)
  {
    v2 = result;
    v3 = [result interaction];

    if (v3)
    {
      v4 = [v3 intent];

      return outlined bridged method (ob) of @objc INPersonHandle.value.getter(v4, &selRef_launchId);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void INSearchCallHistoryIntent.isSingleDateRequest.getter()
{
  OUTLINED_FUNCTION_66();
  v5 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = OUTLINED_FUNCTION_21(v6);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_33_12();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_35_10();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_15_30();
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  v13 = type metadata accessor for Date();
  OUTLINED_FUNCTION_7();
  v15 = v14;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_34_10();
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v40 - v19;
  v21 = [v5 dateCreated];
  if (!v21)
  {
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v13);
LABEL_7:
    v28 = v12;
    goto LABEL_15;
  }

  v22 = v21;
  v41 = v4;
  v23 = [v21 startDate];

  if (v23)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  __swift_storeEnumTagSinglePayload(v3, v24, 1, v13);
  outlined init with take of PersonNameComponents?();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    goto LABEL_7;
  }

  v29 = v15;
  v30 = *(v15 + 32);
  v30(v20, v12, v13);
  v31 = [v5 dateCreated];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 endDate];

    if (v33)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    __swift_storeEnumTagSinglePayload(v2, v34, 1, v13);
    OUTLINED_FUNCTION_5_26();
    outlined init with take of PersonNameComponents?();
    if (__swift_getEnumTagSinglePayload(v0, 1, v13) != 1)
    {
      v38 = v41;
      v30(v41, v0, v13);
      static Date.== infix(_:_:)();
      v39 = *(v29 + 8);
      v39(v38, v13);
      v39(v20, v13);
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v13);
  }

  (*(v15 + 8))(v20, v13);
  v28 = v0;
LABEL_15:
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v28, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_16:
  OUTLINED_FUNCTION_65();
}

uint64_t INSearchCallHistoryIntent.isTimeRangeRequest.getter()
{
  v1 = [v0 dateCreated];
  v2 = [v1 allDay];

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v3.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  if (v2)
  {
    v4 = static NSObject.== infix(_:_:)();

    v3.super.super.isa = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void (*protocol witness for CallingIntent.callRequestMetadata.modify in conformance INStartAudioCallIntent(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 callRequestMetadata];
  return protocol witness for CallingIntent.callRequestMetadata.modify in conformance INStartAudioCallIntent;
}

uint64_t INStartAudioCallIntent.overwriteContacts(newContacts:)(uint64_t a1)
{
  v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  v7[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  v3 = OUTLINED_FUNCTION_30_16(inited, xmmword_424FD0);
  v3[2].n128_u64[0] = v4;
  v3[2].n128_u64[1] = v5;

  NSObject.update(with:at:)(v7, inited);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

Swift::String __swiftcall INAddCallParticipantIntent.getContactsKeyPath()()
{
  v0 = 0x7069636974726170;
  v1 = 0xEC00000073746E61;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

double INSearchCallHistoryIntent.contacts.getter()
{
  v1 = [v0 recipient];
  if (v1)
  {
    v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v4 = swift_allocObject();
    *&result = 1;
    *(v4 + 16) = xmmword_426260;
    *(v4 + 32) = v3;
  }

  return result;
}

Swift::Void __swiftcall INSearchCallHistoryIntent.overwriteContacts(newContacts:)(Swift::OpaquePointer newContacts)
{
  if (newContacts._rawValue >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*(&dword_10 + (newContacts._rawValue & 0xFFFFFFFFFFFFFF8)))
  {
    return;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (newContacts._rawValue & 0xC000000000000001) == 0, newContacts._rawValue);
  if ((newContacts._rawValue & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v3 = *(newContacts._rawValue + 4);
  }

  v4 = v3;
  [v1 setRecipient:?];
}

Swift::String __swiftcall INSearchCallHistoryIntent.getContactsKeyPath()()
{
  v0 = 0x6E65697069636572;
  v1 = 0xE900000000000074;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

PhoneCallFlowDelegatePlugin::FollowUpOfferType_optional __swiftcall FollowUpOfferType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FollowUpOfferType.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

PhoneCallFlowDelegatePlugin::FollowUpOfferType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance FollowUpOfferType@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::FollowUpOfferType_optional *a2@<X8>)
{
  result.value = FollowUpOfferType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance FollowUpOfferType@<X0>(unint64_t *a1@<X8>)
{
  result = FollowUpOfferType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id INIdentifyIncomingCallerIntentResponse.init(statusCode:callRecords:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCode:a3 userActivity:0];
  [v4 setStatusCode:a1];
  OUTLINED_FUNCTION_20_0();
  outlined bridged method (mbnn) of @objc INIdentifyIncomingCallerIntentResponse.callRecords.setter();

  return v4;
}

Swift::Bool __swiftcall INAnswerCallIntentResponse.isSuccessCodeWithRingingCallRecord()()
{
  if ([v0 code] != &dword_4)
  {
    goto LABEL_8;
  }

  v1 = outlined bridged method (pb) of @objc INAnswerCallIntentResponse.callRecords.getter(v0, &selRef_callRecords, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
  if (!v1)
  {
    return v1;
  }

  v2 = v1;
  if (!specialized Array.count.getter(v1))
  {

LABEL_8:
    LOBYTE(v1) = 0;
    return v1;
  }

  v3 = (v2 & 0xC000000000000001);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v4 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_40_0();

  v5 = [v2 & 0xC000000000000001 callRecordType];

  LOBYTE(v1) = v5 == &dword_4 + 2;
  return v1;
}

void *INSearchCallHistoryIntentResponse.callRecordsCount.getter()
{
  result = outlined bridged method (pb) of @objc INAnswerCallIntentResponse.callRecords.getter(v0, &selRef_callRecords, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
  if (result)
  {
    specialized Array.count.getter(result);
    OUTLINED_FUNCTION_40_0();

    return v0;
  }

  return result;
}

uint64_t INSearchCallHistoryIntentResponse.totalCallRecordsCount.getter()
{
  v1 = outlined bridged method (pb) of @objc INAnswerCallIntentResponse.callRecords.getter(v0, &selRef_callRecords, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = specialized Array.count.getter(v1);
  if (!v3)
  {
LABEL_16:

    v16 = _swiftEmptyArrayStorage[2];
    if (v16)
    {
      v15 = 0;
      v17 = &_swiftEmptyArrayStorage[4];
      while (1)
      {
        v18 = *v17++;
        v19 = __OFADD__(v15, v18);
        v15 += v18;
        if (v19)
        {
          break;
        }

        if (!--v16)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

    v15 = 0;
LABEL_22:

    return v15;
  }

  v4 = v3;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v2 + 8 * i + 32);
      }

      v8 = v7;
      v9 = INCallRecord.numberOfCalls.getter();
      v11 = v10;

      if (v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = v9;
      }

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      _swiftEmptyArrayStorage[v14 + 4] = v12;
    }

    goto LABEL_16;
  }

LABEL_25:
  __break(1u);
  return result;
}

void INSearchCallHistoryIntentResponse.newRecordsCount.getter()
{
  v5 = outlined bridged method (pb) of @objc INAnswerCallIntentResponse.callRecords.getter(v0, &selRef_callRecords, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
  if (v5)
  {
    v6 = v5;
    specialized Array.count.getter(v5);
    OUTLINED_FUNCTION_49_10();
    while (1)
    {
      if (v1 == v2)
      {

        specialized Array.count.getter(_swiftEmptyArrayStorage);
        OUTLINED_FUNCTION_40_0();

        return;
      }

      if (v3)
      {
        OUTLINED_FUNCTION_5_26();
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v4 + 16))
        {
          goto LABEL_17;
        }

        v7 = *(v6 + 8 * v2 + 32);
      }

      v8 = v7;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v9 = INCallRecord.unseen.getter();
      if (v9 == 2 || (v9 & 1) == 0)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        OUTLINED_FUNCTION_46_11();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        OUTLINED_FUNCTION_46_11();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v2;
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

void INSearchCallHistoryIntentResponse.savedRecordsCount.getter()
{
  v5 = outlined bridged method (pb) of @objc INAnswerCallIntentResponse.callRecords.getter(v0, &selRef_callRecords, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
  if (v5)
  {
    v6 = v5;
    specialized Array.count.getter(v5);
    OUTLINED_FUNCTION_49_10();
    while (1)
    {
      if (v1 == v2)
      {

        specialized Array.count.getter(_swiftEmptyArrayStorage);
        OUTLINED_FUNCTION_40_0();

        return;
      }

      if (v3)
      {
        OUTLINED_FUNCTION_5_26();
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v4 + 16))
        {
          goto LABEL_18;
        }

        v7 = *(v6 + 8 * v2 + 32);
      }

      v8 = v7;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (INCallRecord.unseen.getter() == 2 || (v9 = INCallRecord.unseen.getter(), v9 == 2) || (v9 & 1) == 0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        OUTLINED_FUNCTION_46_11();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        OUTLINED_FUNCTION_46_11();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v2;
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }
}

NSData_optional __swiftcall NSData.__allocating_init(base64Encoded:options:)(Swift::String base64Encoded, NSDataBase64DecodingOptions options)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 initWithBase64EncodedString:v4 options:options];

  v7 = v5;
  result.value.super.isa = v7;
  result.is_nil = v6;
  return result;
}

Swift::String __swiftcall INPerson.asBase64()()
{
  v2 = INIntentSlotValueTransformToContactValue();
  if (!v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = outlined bridged method (ob) of @objc PBCodable.data.getter(v2);
  if (v3 >> 60 == 15)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_70_1();
  Data.base64EncodedString(options:)(0);
  OUTLINED_FUNCTION_50_2();
  v4 = OUTLINED_FUNCTION_19_0();
  outlined consume of Data?(v4, v5);
  OUTLINED_FUNCTION_0_55();
  v10 = v7;
  v11 = v6;
  v8._countAndFlagsBits = v0;
  v8._object = v1;
  String.append(_:)(v8);

  v2 = v10;
  v3 = v11;
LABEL_6:
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall INPerson.toStartRequestUtterance()()
{
  type metadata accessor for MachineUtteranceBuilder();
  swift_allocObject();
  MachineUtteranceBuilder.init()();
  INPerson.asBase64()();
  dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

  v0 = dispatch thunk of MachineUtteranceBuilder.build()();
  v2 = v1;

  v3 = v0;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

void INPerson.isUnnamedPhoneNumber.getter()
{
  v1 = [v0 personHandle];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 type];

    if (v3 == &dword_0 + 2)
    {

      INPerson.isUnnamedHandle.getter();
    }
  }
}

void INPerson.isUnnamedHandle.getter()
{
  OUTLINED_FUNCTION_66();
  v3 = type metadata accessor for CharacterSet();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_13_32();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_34_10();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_14_33();
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v41 - v14;
  v16 = [v0 personHandle];
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = v16;
  v18 = outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(v16, &selRef_value);
  if (!v19)
  {

    goto LABEL_6;
  }

  v20 = v19;
  v45 = v18;
  if (INPerson.hasNameComponents.getter())
  {

    goto LABEL_6;
  }

  v44 = v5;
  v21 = outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(v0, &selRef__displayName);
  if (!v22)
  {
LABEL_19:

    goto LABEL_6;
  }

  v23 = v21;
  v24 = v22;
  v25 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v25 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

    goto LABEL_19;
  }

  if ([v17 type] == &dword_0 + 2)
  {
    CharacterSet.init(charactersIn:)();
    static CharacterSet.decimalDigits.getter();
    v43 = v23;
    CharacterSet.union(_:)();
    v42 = v24;
    v26 = v1;
    v27 = *(v44 + 8);
    v27(v26, v3);
    v27(v2, v3);
    static CharacterSet.controlCharacters.getter();
    CharacterSet.union(_:)();
    v28 = v2;
    v29 = v27;
    v27(v28, v3);
    v30 = OUTLINED_FUNCTION_20_0();
    (v27)(v30);
    static CharacterSet.whitespacesAndNewlines.getter();
    CharacterSet.union(_:)();
    v31 = OUTLINED_FUNCTION_20_0();
    (v27)(v31);
    v32 = v42;
    v33 = (v27)(v11, v3);
    __chkstk_darwin(v33);
    *(&v41 - 2) = v15;

    v34 = specialized Sequence.allSatisfy(_:)(partial apply for closure #1 in INPerson.isUnnamedHandle.getter, (&v41 - 4), v43, v32);

    if (v34)
    {
      v35 = specialized RangeReplaceableCollection.filter(_:)(v43, v32);
      v37 = v36;
      if (v35 != specialized RangeReplaceableCollection.filter(_:)(v45, v20) || v37 != v38)
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    v29(v15, v3);
  }

  else
  {
    if (v23 != v45 || v24 != v20)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_6:
  OUTLINED_FUNCTION_65();
}

void INPerson.isUnnamedUnknownHandle.getter()
{
  v1 = [v0 personHandle];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 type];

    if (!v3)
    {

      INPerson.isUnnamedHandle.getter();
    }
  }
}

uint64_t specialized RangeReplaceableCollection.filter(_:)(uint64_t a1, unint64_t a2)
{
  v25 = type metadata accessor for CharacterSet();
  __chkstk_darwin(v25);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v24 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = a1;
    v19[1] = v2;
    v10 = 0;
    v20 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v21 = a2 & 0xFFFFFFFFFFFFFFLL;
    v11 = (v5 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v15 = v14;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v22[0] = v9;
          v22[1] = v21;
          if (*(v22 + v10) < 0)
          {
            OUTLINED_FUNCTION_37_1();
            switch(v17)
            {
              case 1:
LABEL_20:
                v15 = 2;
                break;
              case 2:
LABEL_21:
                v15 = 3;
                break;
              case 3:
LABEL_22:
                v15 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v12 = v20;
          if ((v9 & 0x1000000000000000) == 0)
          {
            v12 = _StringObject.sharedUTF8.getter();
          }

          if (*(v12 + v10) < 0)
          {
            OUTLINED_FUNCTION_37_1();
            switch(v13)
            {
              case 1:
                goto LABEL_20;
              case 2:
                goto LABEL_21;
              case 3:
                goto LABEL_22;
              default:
                break;
            }
          }
        }

LABEL_14:
        v15 = 1;
      }

LABEL_15:
      static CharacterSet.decimalDigits.getter();
      v16 = CharacterSet.contains(_:)();
      (*v11)(v7, v25);
      if (v16)
      {
        String.UnicodeScalarView.append(_:)();
      }

      v10 += v15;
      if (v10 >= v8)
      {

        return v23;
      }
    }
  }

  return 0;
}

id INPerson.isUnnamedHandleLabel.getter()
{
  result = [v0 personHandle];
  if (result)
  {
    v2 = result;
    v3 = [result label];
    if (v3)
    {
      v4 = v3;
      v5 = outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(v2, &selRef_value);
      v7 = specialized Optional<A>.isNilOrEmpty.getter(v5, v6);

      if (!v7)
      {
        goto LABEL_11;
      }

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 || (INPerson.hasNameComponents.getter() & 1) != 0)
      {
        goto LABEL_11;
      }

      v12 = [v0 displayName];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (!v16)
      {
        v17 = [v0 relationship];

        v2 = v17;
        if (!v17)
        {
          return &dword_0 + 1;
        }
      }

      else
      {
LABEL_11:
      }
    }

    return 0;
  }

  return result;
}

void INPerson.toCNContact.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v24;
  a20 = v25;
  v26 = v20;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v28 = OUTLINED_FUNCTION_21(v27);
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_33_12();
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_14_33();
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_13_32();
  __chkstk_darwin(v31);
  v33 = &a9 - v32;
  v34 = [objc_allocWithZone(CNMutableContact) init];
  v35 = [v26 nameComponents];
  if (v35)
  {
    v36 = v35;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for PersonNameComponents();
    v37 = 0;
  }

  else
  {
    type metadata accessor for PersonNameComponents();
    v37 = 1;
  }

  OUTLINED_FUNCTION_42_11(v23, v37);
  outlined init with take of PersonNameComponents?();
  type metadata accessor for PersonNameComponents();
  if (OUTLINED_FUNCTION_32_1(v33))
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v33, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
LABEL_6:

    goto LABEL_8;
  }

  PersonNameComponents.givenName.getter();
  v39 = v38;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v33, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  if (!v39)
  {
    goto LABEL_6;
  }

LABEL_8:
  v40 = String._bridgeToObjectiveC()();

  [v34 setGivenName:v40];

  v41 = [v26 nameComponents];
  if (v41)
  {
    v42 = v41;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  OUTLINED_FUNCTION_42_11(v22, v43);
  outlined init with take of PersonNameComponents?();
  if (OUTLINED_FUNCTION_32_1(v21))
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  }

  else
  {
    PersonNameComponents.familyName.getter();
    v45 = v44;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    if (v45)
    {
      goto LABEL_15;
    }
  }

LABEL_15:
  v46 = String._bridgeToObjectiveC()();

  [v34 setFamilyName:v46];

  OUTLINED_FUNCTION_65();
}