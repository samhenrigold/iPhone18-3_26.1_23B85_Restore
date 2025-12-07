id key path getter for INStartCallIntentExport.callRecordFilter : INStartCallIntentExport@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 callRecordFilter];
  *a2 = result;
  return result;
}

uint64_t closure #8 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11INCallGroupCGSgMd, &_sSaySo11INCallGroupCGSgMR);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v2 + 8))(v4, v16[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23INStartCallIntentExport_pMd, &_sSo23INStartCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMR);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v14 + v13, v11, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v12)(v11, v5);
}

uint64_t key path getter for PhoneCallNLIntent.smsGroups : PhoneCallNLIntent@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 136))(v3, v4);
  *a2 = result;
  return result;
}

void closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)()
{
  OUTLINED_FUNCTION_30_1();
  v42 = v1;
  OUTLINED_FUNCTION_65_8(v4);
  v40[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMR);
  OUTLINED_FUNCTION_7();
  v40[2] = v7;
  v40[3] = v6;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_27_3();
  v41 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartVideoE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartVideoE12IntentExport_pGMR);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_16_2();
  v40[1] = v11;
  __chkstk_darwin(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
  OUTLINED_FUNCTION_7();
  v44 = v14;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v15);
  v17 = v40 - v16;
  [objc_allocWithZone(INStartVideoCallIntent) init];
  OUTLINED_FUNCTION_51_13();
  outlined init with copy of SignalProviding(v3, v46);
  OUTLINED_FUNCTION_102_0();
  v18 = swift_allocObject();
  outlined init with take of SPHConversation(v46, v18 + 16);
  *(v18 + 56) = v0;
  v19 = v0;
  v20 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for INCallAudioRoute(0);
  OUTLINED_FUNCTION_43_14();
  Transformer.init(transform:)();
  v43 = v17;
  v45 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28INStartVideoCallIntentExport_pMd, &_sSo28INStartVideoCallIntentExport_pMR);
  OUTLINED_FUNCTION_52_10();
  Reducer.reduce.getter();
  v21 = OUTLINED_FUNCTION_14_35();
  v22 = v42;
  v23(v21);
  if (v22)
  {

    v24 = OUTLINED_FUNCTION_42_12();
    v25(v24);

    v33 = OUTLINED_FUNCTION_60_7();
    v35 = v13;
  }

  else
  {
    v42 = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMd, &_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
    OUTLINED_FUNCTION_2_66();
    v26 = v41;
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v27);
    OUTLINED_FUNCTION_6_49();
    *(v28 - 16) = v26;
    OUTLINED_FUNCTION_53_13(v29, v30);
    Reducer.reduce.getter();
    v31 = OUTLINED_FUNCTION_14_35();
    v32(v31);

    v36 = OUTLINED_FUNCTION_30_17();
    v26(v36);
    v37 = OUTLINED_FUNCTION_42_12();
    v26(v37);

    *v40[0] = v20;
    v38 = OUTLINED_FUNCTION_29_19();
    v39(v38);
    v33 = OUTLINED_FUNCTION_60_7();
    v35 = v42;
  }

  v34(v33, v35);
  OUTLINED_FUNCTION_29_2();
}

void closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  v8 = [objc_allocWithZone(INIdentifyIncomingCallerIntent) init];
  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(a1, a2, a3);
  *a4 = v8;
}

void closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)(uint64_t a1, void **a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMR);
  v10 = Transformer.transform.getter();
  v10(v13, a1);
  if (v5)
  {
  }

  else
  {

    if (v13[1] || (static Transformer<>.getCallIdentifierFromCallNotifications(sharedGlobals:app:)(a4, a5), v11))
    {
      v12 = String._bridgeToObjectiveC()();
    }

    else
    {
      v12 = 0;
    }

    [v9 setCallIdentifier:v12];
  }
}

uint64_t static Transformer<>.getCallIdentifierFromCallNotifications(sharedGlobals:app:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 56))(v4, v5);
  LOBYTE(v4) = (*(*v6 + 176))(v6);

  v7 = 0;
  if ((v4 & 1) != 0 && a2)
  {

    if (!App.isFirstParty()())
    {
      v8 = a1[3];
      v9 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v8);
      v7 = (*(v9 + 112))(v8, v9);
      if (!v7)
      {

        return v7;
      }

      v10 = CurrentRequest.refId.getter();
      v12 = v11;

      if (v12)
      {
        v13 = a1[3];
        v14 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v13);
        (*(v14 + 160))(v23, v13, v14);
        v15 = v24;
        v16 = v25;
        __swift_project_boxed_opaque_existential_1(v23, v24);
        v17 = (*(v16 + 16))(v10, v12, v15, v16);
        __swift_destroy_boxed_opaque_existential_1(v23);
        if (v17)
        {
          v18 = a1[3];
          v19 = a1[4];
          __swift_project_boxed_opaque_existential_1(a1, v18);
          (*(v19 + 160))(v23, v18, v19);
          v20 = v24;
          v21 = v25;
          __swift_project_boxed_opaque_existential_1(v23, v24);
          v7 = (*(v21 + 32))(v10, v12, v20, v21);

          __swift_destroy_boxed_opaque_existential_1(v23);
          return v7;
        }
      }
    }

    return 0;
  }

  return v7;
}

void closure #1 in static Transformer<>.transformer(sharedGlobals:previousIntent:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - v6;
  v8 = *a1;
  v9 = *(v8 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v29 = a2;
    v30 = v2;
    v38 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v11 = v8 + 32;
    do
    {
      outlined init with copy of SignalProviding(v11, v35);
      static Signpost.begin(_:)();
      v33 = v13;
      v34 = v12;
      v32 = v14;
      v15 = objc_allocWithZone(INPersonHandle);
      v31 = @nonobjc INPersonHandle.init(value:type:)(0, 0, 0);
      v16 = type metadata accessor for PersonNameComponents();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v16);
      v18 = v36;
      v17 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v19 = (*(v17 + 408))(v18, v17);
      v21 = v20;
      v23 = v36;
      v22 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v24 = (*(v22 + 32))(v23, v22);
      v26 = v25;
      v27 = objc_allocWithZone(INPerson);
      @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:relationship:)(v31, v7, v19, v21, 0, v24, v26, 0, 0, 0);
      Signpost.OpenSignpost.end()();

      __swift_destroy_boxed_opaque_existential_1(v35);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v11 += 40;
      --v9;
    }

    while (v9);
    v10 = v38;
    a2 = v29;
  }

  *a2 = v10;
}

uint64_t closure #1 in static Transformer<>.transformer(sharedGlobals:previousIntent:)@<X0>(void *a1@<X8>)
{
  static Signpost.begin(_:)();
  *a1 = 0;
  Signpost.OpenSignpost.end()();
}

void closure #1 in static Transformer<>.transformer(app:)()
{
  OUTLINED_FUNCTION_30_1();
  v1 = v0;
  v15[1] = v2;
  v3 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 8);
  static Signpost.begin(_:)();
  ObjectType = swift_getObjectType();
  v11 = (*(v9 + 24))(ObjectType, v9);
  if (FollowUpOfferType.rawValue.getter(v11) == 0xD000000000000011 && 0x8000000000452840 == v12)
  {

    goto LABEL_8;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
LABEL_8:
    static PhoneCallNLv3Intent.placeCallBack()(v8);
    goto LABEL_9;
  }

  static PhoneCallNLv3Intent.placeCall()(v8);
LABEL_9:
  (*(v5 + 104))(v8, enum case for Parse.NLv3IntentOnly(_:), v3);
  Input.init(parse:)();
  Signpost.OpenSignpost.end()();

  OUTLINED_FUNCTION_29_2();
}

uint64_t objectdestroyTm_9()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return _swift_deallocObject(v0, 80, 7);
}

void partial apply for closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)()
{
  OUTLINED_FUNCTION_41_13();
  closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)();
}

{
  OUTLINED_FUNCTION_41_13();
  closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(v0, v1, v2, v3);
}

uint64_t _s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginAD0dE8NLIntent_pRszSo16INCallAudioRouteVRs_rlE11transformer10intentType13sharedGlobals14previousIntentACyAdE_pAGGqd__m_AD06SharedQ9Providing_pSo8INIntentCSgtAORbd__lFZAgdE_pcfU_So07INStartkeS0C_Tt1t4G5@<X0>(uint64_t *a1@<X8>, void *a2@<X0>, void *a3@<X1>, void *a4@<X2>)
{
  result = _s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginAD0dE8NLIntent_pRszSo16INCallAudioRouteVRs_rlE11transformer10intentType13sharedGlobals14previousIntentACyAdE_pAGGqd__m_AD06SharedQ9Providing_pSo8INIntentCSgtAORbd__lFZAgdE_pcfU_So07INStartkeS0C_Tt1t4g5(a2, a3, a4);
  if (!v4)
  {
    *a1 = result;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a1@<X8>)
{
  return closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

{
  return closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

{
  return closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

uint64_t partial apply for closure #2 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a1@<X8>)
{
  return closure #2 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

{
  return closure #2 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

{
  return closure #2 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

uint64_t objectdestroy_23Tm_0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_102_0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t partial apply for closure #3 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a1@<X8>)
{
  return closure #3 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

{
  return closure #3 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

uint64_t partial apply for closure #4 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a1@<X8>)
{
  return closure #4 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

{
  return closure #4 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

uint64_t partial apply for closure #5 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a1@<X8>)
{
  return closure #5 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

{
  return closure #5 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

uint64_t partial apply for closure #6 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a1@<X8>)
{
  return closure #6 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

{
  return closure #6 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

uint64_t partial apply for closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)@<X0>(uint64_t a1@<X8>)
{
  return closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)(a1);
}

{
  return closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)(a1);
}

{
  return closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)(a1);
}

void partial apply for closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)(uint64_t a1, void **a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMR) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)(a1, a2, v2 + v6, (v2 + v7), *(v2 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t OUTLINED_FUNCTION_37_14()
{

  return type metadata accessor for CNContactStore(0, v1, v0);
}

uint64_t OUTLINED_FUNCTION_50_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return Transformer.init(transform:)();
}

void OUTLINED_FUNCTION_51_13()
{

  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_53_13(uint64_t a1, uint64_t a2)
{

  return Reducer.init(builder:)();
}

id static NLv4IntentConversion.setIntentMetadata(for:sharedGlobals:app:previousIntent:)(void *a1, void *a2, uint64_t a3, id a4)
{
  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(a3, a4, a2);
  v5 = [a1 _metadata];
  if (!v5 || (v6 = v5, v7 = [v5 intentId], v6, !v7))
  {
    v7 = 0;
  }

  [a1 setIdentifier:v7];

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.siriPhone);
  v20 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315394;
    v21 = v12;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for String, &outlined read-only object #0 of static NLv4IntentConversion.setIntentMetadata(for:sharedGlobals:app:previousIntent:), 0, 0);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v21);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    v14 = [v20 debugDescription];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v21);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_0, v9, v10, "%s Converted intent: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  return v20;
}

uint64_t static NLv4IntentConversion.updateSiriKitIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:nlIntent:sharedGlobals:contactGroupResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v32 = a5;
  v33 = a6;
  HIDWORD(v30) = a4;
  v31 = a3;
  v12 = type metadata accessor for Locale();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a7, a7[3]);
  v16 = OUTLINED_FUNCTION_8_8();
  v18 = v17(v16);
  v19 = (*(*v18 + 232))(v18);

  if (v19)
  {
    static SiriKitEventSender.current.getter();
    type metadata accessor for EmergencyContactResolution();
    v20 = swift_allocObject();
    ObjectType = swift_getObjectType();
    specialized static ReferenceContactResolutionWrapper.resolveUpdateSKIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:contactGroupResolver:)(a1, v31, BYTE4(v30) & 1, v32, v33, a7, 0, 1, &v39, v20, a8, ObjectType, a2, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
  }

  else
  {
    v22 = type metadata accessor for ContactResolution();
    __swift_project_boxed_opaque_existential_1(a7, a7[3]);
    v23 = OUTLINED_FUNCTION_8_8();
    v24(v23);
    __swift_project_boxed_opaque_existential_1(&v39, v42);
    OUTLINED_FUNCTION_8_8();
    dispatch thunk of DeviceState.siriLocale.getter();
    static SiriKitEventSender.current.getter();
    type metadata accessor for EmergencyContactResolution();
    v25 = swift_allocObject();
    v26 = swift_getObjectType();
    LOBYTE(v28) = 1;
    specialized static ContactResolution.updateSiriKitIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:locale:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:)(a1, v31, BYTE4(v30) & 1, v32, v15, v33, a7, 0, v28, &v34, v25, v22, v26, a2, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);

    __swift_destroy_boxed_opaque_existential_1(&v34);
    (*(v13 + 8))(v15, v12);
  }

  return __swift_destroy_boxed_opaque_existential_1(&v39);
}

void static NLv4JoinTransformer.transform(joinTask:)(uint64_t a1@<X8>)
{
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMR);
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_2();
  v101 = v5;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v6);
  v104 = v97 - v7;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v8);
  v10 = v97 - v9;
  v11 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_7();
  v105 = v12;
  __chkstk_darwin(v13);
  v15 = v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_91();
  v107 = v17;
  dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
  v18 = v111;
  if (v111)
  {
    v98 = v10;
    v99 = v3;
    v106 = v11;
    v19 = dispatch thunk of UsoEntity_common_PhoneCall.sender.getter();
    v20 = _swiftEmptyArrayStorage;
    v100 = a1;
    v97[0] = v15;
    if (v19)
    {
      v21 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0kL11ContactRoleO07contactQ0tGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0kL11ContactRoleO07contactQ0tGMR);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_424FD0;
      *(v22 + 32) = v21;
      v103 = v22;
      *(v22 + 40) = 0;
    }

    else
    {
      v103 = _swiftEmptyArrayStorage;
    }

    v102 = v18;
    v25 = dispatch thunk of UsoEntity_common_PhoneCall.recipients.getter();
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = _swiftEmptyArrayStorage;
    }

    v111 = _swiftEmptyArrayStorage;
    v27 = specialized Array.count.getter(v26);
    v28 = 0;
    while (v27 != v28)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v28 >= *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_81;
        }
      }

      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        return;
      }

      dispatch thunk of CodeGenListEntry.entry.getter();

      ++v28;
      if (v110)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v30 = *(&dword_18 + (v111 & 0xFFFFFFFFFFFFFF8));
        if (*(&dword_10 + (v111 & 0xFFFFFFFFFFFFFF8)) >= v30 >> 1)
        {
          OUTLINED_FUNCTION_76(v30);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v20 = v111;
        v28 = v29;
      }
    }

    v31 = specialized Array.count.getter(v20);
    if (v31)
    {
      v32 = v31;
      OUTLINED_FUNCTION_10_39(v31, _swiftEmptyArrayStorage);
      if (v32 < 0)
      {
        goto LABEL_84;
      }

      v33 = 0;
      v34 = v111;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v35 = *(v20 + 8 * v33 + 32);
        }

        v111 = v34;
        v37 = v34[2];
        v36 = v34[3];
        if (v37 >= v36 >> 1)
        {
          v39 = OUTLINED_FUNCTION_76(v36);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v39, v37 + 1, 1);
          v34 = v111;
        }

        ++v33;
        v34[2] = v37 + 1;
        v38 = &v34[2 * v37];
        v38[4] = v35;
        *(v38 + 40) = 2;
      }

      while (v32 != v33);
    }

    else
    {

      v34 = _swiftEmptyArrayStorage;
    }

    v40 = dispatch thunk of UsoEntity_common_PhoneCall.participants.getter();
    v41 = _swiftEmptyArrayStorage;
    if (v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = _swiftEmptyArrayStorage;
    }

    v111 = _swiftEmptyArrayStorage;
    v43 = specialized Array.count.getter(v42);
    v44 = 0;
    while (v43 != v44)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v44 >= *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_83;
        }
      }

      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_82;
      }

      dispatch thunk of CodeGenListEntry.entry.getter();

      ++v44;
      if (v110)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v46 = *(&dword_18 + (v111 & 0xFFFFFFFFFFFFFF8));
        if (*(&dword_10 + (v111 & 0xFFFFFFFFFFFFFF8)) >= v46 >> 1)
        {
          OUTLINED_FUNCTION_76(v46);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v41 = v111;
        v44 = v45;
      }
    }

    v47 = specialized Array.count.getter(v41);
    if (v47)
    {
      v48 = v47;
      OUTLINED_FUNCTION_10_39(v47, _swiftEmptyArrayStorage);
      if (v48 < 0)
      {
        goto LABEL_85;
      }

      v49 = 0;
      v50 = v111;
      do
      {
        if ((v41 & 0xC000000000000001) != 0)
        {
          v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v51 = *(v41 + 8 * v49 + 32);
        }

        v111 = v50;
        v53 = v50[2];
        v52 = v50[3];
        if (v53 >= v52 >> 1)
        {
          v55 = OUTLINED_FUNCTION_76(v52);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v55, v53 + 1, 1);
          v50 = v111;
        }

        ++v49;
        v50[2] = v53 + 1;
        v54 = &v50[2 * v53];
        v54[4] = v51;
        *(v54 + 40) = 1;
      }

      while (v48 != v49);
    }

    else
    {

      v50 = _swiftEmptyArrayStorage;
    }

    v109 = v103;
    specialized Array.append<A>(contentsOf:)(v34);
    specialized Array.append<A>(contentsOf:)(v50);
    v111 = _swiftEmptyArrayStorage;
    v56 = v109[2];
    v58 = v98;
    v57 = v99;
    v97[1] = v109;
    if (v56)
    {
      v59 = (v105 + 32);
      v60 = (v109 + 5);
      v61 = _swiftEmptyArrayStorage;
      v103 = _swiftEmptyArrayStorage;
      do
      {
        v62 = v61;
        v63 = *v60;

        if (UsoEntity_common_Agent.asCommonGroup()())
        {

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v64 = *(&dword_18 + (v111 & 0xFFFFFFFFFFFFFF8));
          if (*(&dword_10 + (v111 & 0xFFFFFFFFFFFFFF8)) >= v64 >> 1)
          {
            OUTLINED_FUNCTION_76(v64);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v103 = v111;
          v61 = v62;
        }

        else
        {

          v66 = _s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC18contactConvertible0I4RoleAcA03UsogJ0_p_AA0abgK0OtcfCTf4enn_n0F8Ontology0L19Entity_common_AgentC_Tt1g5(v65, v63);
          v67 = v107;
          UsoEntity_common_Agent.toContactQuery()();
          v68 = *(v108 + 48);
          *v58 = v66;
          (*v59)(v58 + v68, v67, v106);
          v61 = v62;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v61 = v71;
          }

          v70 = v61[2];
          v69 = v61[3];
          if (v70 >= v69 >> 1)
          {
            OUTLINED_FUNCTION_76(v69);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v61 = v72;
          }

          v61[2] = v70 + 1;
          outlined init with take of (contact: SiriPhoneContactImpl, contactQuery: ContactQuery)(v58, v61 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + v57[9] * v70);
        }

        v60 += 16;
        --v56;
      }

      while (v56);
    }

    else
    {
      v61 = _swiftEmptyArrayStorage;
      v103 = _swiftEmptyArrayStorage;
    }

    v73 = v61[2];
    if (v73)
    {
      v110 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v74 = *(v57 + 80);
      v98 = v61;
      v75 = v61 + ((v74 + 32) & ~v74);
      v107 = v57[9];
      v76 = v104;
      v77 = (v105 + 8);
      v78 = v75;
      v79 = v73;
      v80 = v101;
      do
      {
        outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v78, v76, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMR);
        outlined init with take of (contact: SiriPhoneContactImpl, contactQuery: ContactQuery)(v76, v80);
        (*v77)(v80 + *(v108 + 48), v106);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v78 += v107;
        --v79;
      }

      while (v79);
      v99 = v110;
      v110 = _swiftEmptyArrayStorage;
      v81 = v73;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73, 0);
      v82 = v110;
      v83 = v106;
      v84 = (v105 + 32);
      v85 = v97[0];
      do
      {
        v86 = v104;
        outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v75, v104, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMR);
        outlined init with take of (contact: SiriPhoneContactImpl, contactQuery: ContactQuery)(v86, v80);

        v87 = *v84;
        (*v84)(v85, v80 + *(v108 + 48), v83);
        v110 = v82;
        v89 = v82[2];
        v88 = v82[3];
        if (v89 >= v88 >> 1)
        {
          v90 = OUTLINED_FUNCTION_76(v88);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v90, v89 + 1, 1);
          v80 = v101;
          v82 = v110;
        }

        v82[2] = v89 + 1;
        v87(v82 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v89, v85, v83);
        v75 += v107;
        --v81;
      }

      while (v81);
    }

    else
    {

      v82 = _swiftEmptyArrayStorage;
    }

    specialized _arrayForceCast<A, B>(_:)();
    v92 = v91;

    v93 = v100;
    *(v100 + 24) = &type metadata for PhoneCallNLv4Intent;
    *(v93 + 32) = &protocol witness table for PhoneCallNLv4Intent;
    v94 = swift_allocObject();
    OUTLINED_FUNCTION_16_31(v94);
    specialized _arrayForceCast<A, B>(_:)();
    v96 = v95;

    *(v94 + 16) = v82;
    *(v94 + 24) = v92;
    *(v94 + 72) = 2;
    *(v94 + 80) = 0;
    *(v94 + 88) = 0xE23030905050204;
    *(v94 + 96) = 518;
    *(v94 + 104) = v96;
    *(v94 + 112) = _swiftEmptyArrayStorage;
  }

  else
  {
    *(a1 + 24) = &type metadata for PhoneCallNLv4Intent;
    *(a1 + 32) = &protocol witness table for PhoneCallNLv4Intent;
    v23 = swift_allocObject();
    OUTLINED_FUNCTION_16_31(v23);
    *(v24 + 16) = _swiftEmptyArrayStorage;
    *(v24 + 24) = _swiftEmptyArrayStorage;
    *(v24 + 72) = 2;
    *(v24 + 80) = 0;
    *(v24 + 88) = 0xE23030905050204;
    *(v24 + 96) = 518;
    *(v24 + 104) = _swiftEmptyArrayStorage;
    *(v24 + 112) = _swiftEmptyArrayStorage;
  }
}

uint64_t specialized UsoContactConvertible.emergencyType.getter()
{
  v103 = type metadata accessor for IdentifierValue();
  v99 = *(v103 - 8);
  __chkstk_darwin(v103);
  v102 = &v96 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for IdentifierNamespace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v107 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology19IdentifierNamespaceOSg_ADtMd, &_s12SiriOntology19IdentifierNamespaceOSg_ADtMR);
  __chkstk_darwin(v5);
  v7 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v96 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
  __chkstk_darwin(v11 - 8);
  v105 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v96 - v14;
  __chkstk_darwin(v16);
  v119 = (&v96 - v17);
  __chkstk_darwin(v18);
  v106 = &v96 - v19;
  __chkstk_darwin(v20);
  v109 = &v96 - v21;
  __chkstk_darwin(v22);
  v24 = &v96 - v23;
  v123 = type metadata accessor for UsoIdentifier();
  v25 = *(v123 - 8);
  __chkstk_darwin(v123);
  v101 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v122 = &v96 - v28;
  v29 = specialized UsoContactConvertible.nameIdentifiers.getter();
  v30 = v29[2];
  v120 = v5;
  v111 = v10;
  v108 = v24;
  v98 = v0;
  v110 = v25;
  v97 = v3;
  if (v30)
  {
    v32 = *(v25 + 16);
    v31 = v25 + 16;
    v117 = v32;
    v33 = (*(v31 + 64) + 32) & ~*(v31 + 64);
    v96 = v29;
    v34 = v29 + v33;
    v35 = *(v31 + 56);
    v115 = (v3 + 104);
    v116 = v35;
    *&v100 = v3 + 32;
    v104 = (v3 + 8);
    v121 = _swiftEmptyArrayStorage;
    v118 = v31;
    v114 = (v31 - 8);
    v113 = enum case for IdentifierNamespace.nsEmergencyOrganization(_:);
    v36 = v101;
    while (1)
    {
      v117(v36, v34, v123);
      UsoIdentifier.namespaceSemantic.getter();
      v37 = v119;
      (*v115)(v15, v113, v2);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v2);
      v38 = *(v120 + 48);
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v37, v7, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v15, &v7[v38], &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
      if (__swift_getEnumTagSinglePayload(v7, 1, v2) == 1)
      {
        break;
      }

      v39 = v105;
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v7, v105, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
      if (__swift_getEnumTagSinglePayload(&v7[v38], 1, v2) == 1)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v119, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
        (*v104)(v39, v2);
LABEL_8:
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s12SiriOntology19IdentifierNamespaceOSg_ADtMd, &_s12SiriOntology19IdentifierNamespaceOSg_ADtMR);
        goto LABEL_9;
      }

      v40 = v107;
      (*v100)(v107, &v7[v38], v2);
      lazy protocol witness table accessor for type UsoEntity_common_Quantifier.DefinedValues and conformance UsoEntity_common_Quantifier.DefinedValues(&lazy protocol witness table cache variable for type IdentifierNamespace and conformance IdentifierNamespace, &type metadata accessor for IdentifierNamespace, &protocol conformance descriptor for IdentifierNamespace);
      LODWORD(v112) = dispatch thunk of static Equatable.== infix(_:_:)();
      v41 = *v104;
      (*v104)(v40, v2);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v119, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
      v41(v39, v2);
      v36 = v101;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
      if (v112)
      {
        goto LABEL_11;
      }

LABEL_9:
      (*v114)(v36, v123);
LABEL_16:
      v34 = v116 + v34;
      if (!--v30)
      {

        v10 = v111;
        v24 = v108;
        goto LABEL_19;
      }
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v37, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
    if (__swift_getEnumTagSinglePayload(&v7[v38], 1, v2) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
LABEL_11:
      v112 = UsoIdentifier.value.getter();
      v43 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v121[2] + 1, 1, v121);
        v121 = v48;
      }

      v44 = v121;
      v46 = v121[2];
      v45 = v121[3];
      if (v46 >= v45 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v45 > 1, v46 + 1, 1, v121);
        v44 = v49;
      }

      (*v114)(v36, v123);
      v121 = v44;
      v44[2] = v46 + 1;
      v47 = &v44[2 * v46];
      v47[4] = v112;
      v47[5] = v43;
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  v121 = _swiftEmptyArrayStorage;
LABEL_19:
  v50 = specialized UsoContactConvertible.nameIdentifiers.getter();
  v51 = v50[2];
  v52 = v109;
  if (v51)
  {
    v119 = *(v110 + 16);
    v53 = (*(v110 + 80) + 32) & ~*(v110 + 80);
    v96 = v50;
    v54 = v50 + v53;
    v118 = *(v110 + 72);
    LODWORD(v117) = enum case for IdentifierNamespace.nsPhoneCallContactName(_:);
    v116 = (v97 + 104);
    v104 = (v97 + 32);
    v114 = (v97 + 8);
    v115 = (v110 + 8);
    v112 = (v99 + 11);
    LODWORD(v105) = enum case for IdentifierValue.vEmergencyServices(_:);
    LODWORD(v101) = enum case for IdentifierValue.vEmergencyContact(_:);
    ++v99;
    v55 = &_s12SiriOntology19IdentifierNamespaceOSgMR;
    v100 = xmmword_425000;
    v110 += 16;
    while (1)
    {
      (v119)(v122, v54, v123);
      UsoIdentifier.namespaceSemantic.getter();
      (*v116)(v52, v117, v2);
      __swift_storeEnumTagSinglePayload(v52, 0, 1, v2);
      v56 = *(v120 + 48);
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v24, v10, &_s12SiriOntology19IdentifierNamespaceOSgMd, v55);
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v52, &v10[v56], &_s12SiriOntology19IdentifierNamespaceOSgMd, v55);
      if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
      {
        break;
      }

      v57 = v106;
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v10, v106, &_s12SiriOntology19IdentifierNamespaceOSgMd, v55);
      if (__swift_getEnumTagSinglePayload(&v10[v56], 1, v2) == 1)
      {
        v52 = v109;
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v109, &_s12SiriOntology19IdentifierNamespaceOSgMd, v55);
        v24 = v108;
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v108, &_s12SiriOntology19IdentifierNamespaceOSgMd, v55);
        (*v114)(v57, v2);
LABEL_26:
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v10, &_s12SiriOntology19IdentifierNamespaceOSg_ADtMd, &_s12SiriOntology19IdentifierNamespaceOSg_ADtMR);
        goto LABEL_27;
      }

      v58 = v55;
      v59 = v107;
      (*v104)(v107, &v10[v56], v2);
      lazy protocol witness table accessor for type UsoEntity_common_Quantifier.DefinedValues and conformance UsoEntity_common_Quantifier.DefinedValues(&lazy protocol witness table cache variable for type IdentifierNamespace and conformance IdentifierNamespace, &type metadata accessor for IdentifierNamespace, &protocol conformance descriptor for IdentifierNamespace);
      v113 = dispatch thunk of static Equatable.== infix(_:_:)();
      v60 = *v114;
      v61 = v59;
      v55 = v58;
      (*v114)(v61, v2);
      v52 = v109;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v109, &_s12SiriOntology19IdentifierNamespaceOSgMd, v55);
      v24 = v108;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v108, &_s12SiriOntology19IdentifierNamespaceOSgMd, v55);
      v60(v57, v2);
      v10 = v111;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v111, &_s12SiriOntology19IdentifierNamespaceOSgMd, v55);
      if (v113)
      {
        goto LABEL_29;
      }

LABEL_27:
      (*v115)(v122, v123);
LABEL_43:
      v54 += v118;
      if (!--v51)
      {
        goto LABEL_44;
      }
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v52, &_s12SiriOntology19IdentifierNamespaceOSgMd, v55);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v24, &_s12SiriOntology19IdentifierNamespaceOSgMd, v55);
    if (__swift_getEnumTagSinglePayload(&v10[v56], 1, v2) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v10, &_s12SiriOntology19IdentifierNamespaceOSgMd, v55);
LABEL_29:
      v62 = v102;
      UsoIdentifier.valueSemantic.getter();
      v63 = (*v112)(v62, v103);
      if (v63 == v105)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v121[2] + 1, 1, v121);
          v121 = v71;
        }

        v64 = v121;
        v66 = v121[2];
        v65 = v121[3];
        if (v66 >= v65 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v65 > 1, v66 + 1, 1, v121);
          v64 = v72;
        }

        (*v115)(v122, v123);
        v121 = v64;
        v64[2] = v66 + 1;
        *&v64[2 * v66 + 4] = v100;
      }

      else if (v63 == v101)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v121[2] + 1, 1, v121);
          v121 = v73;
        }

        v67 = v121;
        v69 = v121[2];
        v68 = v121[3];
        if (v69 >= v68 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v68 > 1, v69 + 1, 1, v121);
          v67 = v74;
        }

        (*v115)(v122, v123);
        v121 = v67;
        v67[2] = v69 + 1;
        v70 = &v67[2 * v69];
        v70[4] = 0;
        v70[5] = 0;
      }

      else
      {
        (*v115)(v122, v123);
        (*v99)(v102, v103);
      }

      v10 = v111;
      goto LABEL_43;
    }

    goto LABEL_26;
  }

LABEL_44:

  if (dispatch thunk of UsoEntity_common_Agent.specifyingContactAddress.getter())
  {
    CodeGenBase.entity.getter();
  }

  type metadata accessor for UsoEntity_common_PhoneNumber();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (v124)
  {

    UsoEntity_common_PhoneNumber.tags.getter();
    v76 = v75;
  }

  else
  {
    v76 = _swiftEmptyArrayStorage;
  }

  v77 = v76[2];

  if (v77)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v121[2] + 1, 1, v121);
      v121 = v94;
    }

    v79 = v121[2];
    v78 = v121[3];
    if (v79 >= v78 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v78 > 1, v79 + 1, 1, v121);
      v121 = v95;
    }

    v80 = v121;
    v121[2] = v79 + 1;
    *&v80[2 * v79 + 4] = xmmword_435450;
  }

  v81 = v121;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  __swift_project_value_buffer(v82, static Logger.siriPhone);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *v85 = 136315394;
    v124 = 0;
    v125 = 0xE000000000000000;
    v126 = v86;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for String, &outlined read-only object #0 of specialized UsoContactConvertible.emergencyType.getter, 0, 0);
    v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v125, &v126);

    *(v85 + 4) = v87;
    *(v85 + 12) = 2080;

    v88 = Array.description.getter();
    v90 = v89;

    v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, &v126);

    *(v85 + 14) = v91;
    _os_log_impl(&dword_0, v83, v84, "%s Parsed emergencyTypes: %s, returning first entry", v85, 0x16u);
    swift_arrayDestroy();
  }

  if (v81[2])
  {
    v92 = v81[4];
    outlined copy of PhoneCallEmergencyType(v92, v81[5]);
  }

  else
  {
    v92 = 0;
  }

  return v92;
}

void *specialized UsoContactConvertible.vocabularyAppsBundleSet.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _swiftEmptySetSingleton;
  v4 = specialized UsoContactConvertible.nameIdentifiers.getter();
  v5 = v4[2];
  if (v5)
  {
    v8 = *(v1 + 16);
    v6 = v1 + 16;
    v7 = v8;
    v9 = (*(v6 + 64) + 32) & ~*(v6 + 64);
    v18 = v4;
    v10 = v4 + v9;
    v11 = *(v6 + 56);
    v12 = (v6 - 8);
    while (1)
    {
      v7(v3, v10, v0);
      v13 = UsoIdentifier.namespace.getter();
      if (v14)
      {
        if (v13 == 0x64695F6D657469 && v14 == 0xE700000000000000)
        {

LABEL_12:
          UsoIdentifier.appBundleId.getter();
          specialized Set._Variant.insert(_:)();
          (*v12)(v3, v0);

          goto LABEL_13;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_12;
        }
      }

      (*v12)(v3, v0);
LABEL_13:
      v10 += v11;
      if (!--v5)
      {

        return v19;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

void *specialized UsoContactConvertible.nameIdentifiers.getter()
{
  if (!UsoEntity_common_Agent.asCommonPerson()() || (v0 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)(), , !v0))
  {

    return _swiftEmptyArrayStorage;
  }

  return v0;
}

uint64_t _s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC18contactConvertible0I4RoleAcA03UsogJ0_p_AA0abgK0OtcfCTf4enn_n0F8Ontology0L19Entity_common_AgentC_Tt1g5(uint64_t a1, int a2)
{
  v130 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  OUTLINED_FUNCTION_21(v3);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  v127 = &v118 - v5;
  OUTLINED_FUNCTION_15_0();
  v129 = type metadata accessor for UsoEntity_common_Quantifier.DefinedValues();
  OUTLINED_FUNCTION_7();
  v136 = v6;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_5_4();
  v120 = v8;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMR);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  v128 = &v118 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  v12 = OUTLINED_FUNCTION_21(v11);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_16_2();
  v125 = v13;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v14);
  v135 = &v118 - v15;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_91();
  v137 = v17;
  OUTLINED_FUNCTION_15_0();
  v138 = type metadata accessor for UsoEntity_common_SearchQualifier.DefinedValues();
  OUTLINED_FUNCTION_7();
  v134 = v18;
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_5_4();
  v119 = v20;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMR);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v21);
  v23 = &v118 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  v25 = OUTLINED_FUNCTION_21(v24);
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_16_2();
  v121 = v26;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v27);
  v133 = &v118 - v28;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_91();
  v139 = v30;
  OUTLINED_FUNCTION_15_0();
  v31 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  OUTLINED_FUNCTION_7();
  v132 = v32;
  __chkstk_darwin(v33);
  OUTLINED_FUNCTION_5_4();
  v118 = v34;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v35);
  v37 = &v118 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v39 = OUTLINED_FUNCTION_21(v38);
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_16_2();
  v122 = v40;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v41);
  v43 = &v118 - v42;
  __chkstk_darwin(v44);
  OUTLINED_FUNCTION_91();
  v131 = v45;
  OUTLINED_FUNCTION_15_0();
  v149[3] = type metadata accessor for UsoEntity_common_Agent();
  v149[4] = &protocol witness table for UsoEntity_common_Agent;
  v149[0] = a1;
  type metadata accessor for SiriPhoneContactImpl(0);
  swift_allocObject();
  v46 = SiriPhoneContactImpl.init()();
  v140 = a1;
  if (UsoEntity_common_Agent.identifyingRelationship.getter(v46))
  {
    CodeGenBase.entity.getter();

    type metadata accessor for UsoEntity_common_PersonRelationship();

    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    if (v148[0])
    {
      UsoEntity_common_PersonRelationship.relationshipIdentifierOrLabel.getter();
      v48 = v47;
      v49 = v23;
      v51 = v50;

      OUTLINED_FUNCTION_6_50(v46 + 224, &v141);
      *(v46 + 224) = v48;
      *(v46 + 232) = v51;
      v23 = v49;
    }

    else
    {
    }
  }

  v52 = specialized UsoContactConvertible.emergencyType.getter();
  v54 = v53;
  OUTLINED_FUNCTION_6_50(v46 + 272, v148);
  v55 = *(v46 + 272);
  v56 = *(v46 + 280);
  *(v46 + 272) = v52;
  *(v46 + 280) = v54;
  outlined consume of PhoneCallEmergencyType?(v55, v56);
  v57 = specialized UsoContactConvertible.vocabularyAppsBundleSet.getter();
  OUTLINED_FUNCTION_6_50(v46 + 296, v147);
  *(v46 + 296) = v57;

  v58 = dispatch thunk of UsoEntity_common_Agent.name.getter();
  v60 = v59;
  OUTLINED_FUNCTION_6_50(v46 + 40, v146);
  *(v46 + 40) = v58;
  *(v46 + 48) = v60;

  if (dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter())
  {
    v61 = v131;
    dispatch thunk of UsoEntity_common_ReferenceType.definedValue.getter();
  }

  else
  {
    v61 = v131;
    __swift_storeEnumTagSinglePayload(v131, 1, 1, v31);
  }

  (*(v132 + 104))(v43, enum case for UsoEntity_common_ReferenceType.DefinedValues.common_ReferenceType_DefiniteReference(_:), v31);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v31);
  v65 = *(v123 + 48);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v61, v37, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v43, &v37[v65], &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_9_40(v37, 1, v31);
  if (v69)
  {
    OUTLINED_FUNCTION_17_22(v43);
    OUTLINED_FUNCTION_17_22(v61);
    OUTLINED_FUNCTION_9_40(&v37[v65], 1, v31);
    if (v69)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v37, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      v66 = v129;
      v67 = v133;
LABEL_18:
      OUTLINED_FUNCTION_6_50(v46 + 289, &v142);
      *(v46 + 289) = 31;
      goto LABEL_19;
    }

LABEL_16:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v37, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
    v66 = v129;
    v67 = v133;
    goto LABEL_19;
  }

  v68 = v122;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v37, v122, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_9_40(&v37[v65], 1, v31);
  if (v69)
  {
    OUTLINED_FUNCTION_17_22(v43);
    OUTLINED_FUNCTION_17_22(v131);
    (*(v132 + 8))(v68, v31);
    goto LABEL_16;
  }

  v70 = v132;
  v71 = v118;
  (*(v132 + 32))(v118, &v37[v65], v31);
  lazy protocol witness table accessor for type UsoEntity_common_Quantifier.DefinedValues and conformance UsoEntity_common_Quantifier.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues, &type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues, &protocol conformance descriptor for UsoEntity_common_ReferenceType.DefinedValues);
  LODWORD(v123) = dispatch thunk of static Equatable.== infix(_:_:)();
  v72 = *(v70 + 8);
  v72(v71, v31);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v43, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v131, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v72(v122, v31);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v37, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v66 = v129;
  v67 = v133;
  if (v123)
  {
    goto LABEL_18;
  }

LABEL_19:
  v73 = dispatch thunk of UsoEntity_common_Agent.specifyingContactAddress.getter();
  v74 = v137;
  if (!v73)
  {
    goto LABEL_29;
  }

  CodeGenBase.entity.getter();

  type metadata accessor for UsoEntity_common_PhoneNumber();

  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();
  if (v145[0])
  {
    dispatch thunk of UsoEntity_common_PhoneNumber.value.getter();
    if (v75)
    {

      v76 = dispatch thunk of UsoEntity_common_PhoneNumber.value.getter();
      v78 = v77;

      OUTLINED_FUNCTION_6_50(v46 + 192, &v143);
      *(v46 + 192) = v76;
      *(v46 + 200) = v78;
      v74 = v137;
    }

    else
    {
    }
  }

  type metadata accessor for UsoEntity_common_EmailAddress();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (v145[0])
  {
    dispatch thunk of UsoEntity_common_EmailAddress.value.getter();
    if (v79)
    {

      v80 = dispatch thunk of UsoEntity_common_EmailAddress.value.getter();
      v82 = v81;

      OUTLINED_FUNCTION_6_50(v46 + 208, &v144);
      *(v46 + 208) = v80;
      *(v46 + 216) = v82;
      v74 = v137;

      goto LABEL_29;
    }
  }

LABEL_29:
  if (dispatch thunk of CodeGenGlobalArgs.usoSearchQualifier.getter())
  {
    dispatch thunk of UsoEntity_common_SearchQualifier.definedValue.getter();

    v83 = v138;
  }

  else
  {
    v83 = v138;
    __swift_storeEnumTagSinglePayload(v139, 1, 1, v138);
  }

  (*(v134 + 104))(v67, enum case for UsoEntity_common_SearchQualifier.DefinedValues.common_SearchQualifier_Exactly(_:), v83);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v83);
  v87 = *(v124 + 48);
  v88 = v139;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v139, v23, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  v89 = v138;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v67, v23 + v87, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_9_40(v23, 1, v89);
  if (v69)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v67, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v88, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
    OUTLINED_FUNCTION_9_40(v23 + v87, 1, v89);
    v90 = v128;
    if (v69)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v23, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
      LODWORD(v23) = 256;
      goto LABEL_45;
    }

LABEL_40:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v23, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMR);
    LODWORD(v23) = 0;
    goto LABEL_45;
  }

  v91 = v121;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v23, v121, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_9_40(v23 + v87, 1, v89);
  if (v92)
  {
    OUTLINED_FUNCTION_20_6(v133);
    OUTLINED_FUNCTION_20_6(v139);
    (*(v134 + 8))(v91, v89);
    v90 = v128;
    goto LABEL_40;
  }

  v93 = v134;
  v94 = v119;
  (*(v134 + 32))(v119, v23 + v87, v89);
  lazy protocol witness table accessor for type UsoEntity_common_Quantifier.DefinedValues and conformance UsoEntity_common_Quantifier.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_SearchQualifier.DefinedValues and conformance UsoEntity_common_SearchQualifier.DefinedValues, &type metadata accessor for UsoEntity_common_SearchQualifier.DefinedValues, &protocol conformance descriptor for UsoEntity_common_SearchQualifier.DefinedValues);
  v132 = v23;
  v95 = v89;
  v96 = dispatch thunk of static Equatable.== infix(_:_:)();
  v97 = *(v93 + 8);
  v97(v94, v95);
  OUTLINED_FUNCTION_7_42(v133);
  OUTLINED_FUNCTION_7_42(v139);
  v97(v91, v95);
  v74 = v137;
  OUTLINED_FUNCTION_7_42(v132);
  if (v96)
  {
    LODWORD(v23) = 256;
  }

  else
  {
    LODWORD(v23) = 0;
  }

  v90 = v128;
LABEL_45:
  if (UsoEntity_common_Agent.asCommonPerson()() && (v98 = dispatch thunk of CodeGenGlobalArgs.usoQuantifier.getter(), , v98))
  {
    dispatch thunk of UsoEntity_common_Quantifier.definedValue.getter();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v66);
  }

  v99 = v135;
  (*(v136 + 104))(v135, enum case for UsoEntity_common_Quantifier.DefinedValues.common_Quantifier_None(_:), v66);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v66);
  v103 = *(v126 + 48);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v74, v90, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v99, v90 + v103, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_9_40(v90, 1, v66);
  if (v69)
  {
    OUTLINED_FUNCTION_20_6(v99);
    OUTLINED_FUNCTION_20_6(v74);
    OUTLINED_FUNCTION_9_40(v90 + v103, 1, v66);
    if (v69)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v90, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
      v104 = 0x10000;
      goto LABEL_61;
    }

LABEL_57:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v90, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMR);
    v104 = 0;
    goto LABEL_61;
  }

  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v90, v125, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_9_40(v90 + v103, 1, v66);
  if (v105)
  {
    OUTLINED_FUNCTION_20_6(v135);
    OUTLINED_FUNCTION_20_6(v74);
    (*(v136 + 8))(v125, v66);
    goto LABEL_57;
  }

  v106 = v136;
  v107 = v120;
  (*(v136 + 32))(v120, v90 + v103, v66);
  lazy protocol witness table accessor for type UsoEntity_common_Quantifier.DefinedValues and conformance UsoEntity_common_Quantifier.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_Quantifier.DefinedValues and conformance UsoEntity_common_Quantifier.DefinedValues, &type metadata accessor for UsoEntity_common_Quantifier.DefinedValues, &protocol conformance descriptor for UsoEntity_common_Quantifier.DefinedValues);
  LODWORD(v140) = v23;
  v23 = v125;
  LODWORD(v139) = dispatch thunk of static Equatable.== infix(_:_:)();
  v108 = *(v106 + 8);
  v108(v107, v66);
  OUTLINED_FUNCTION_7_42(v135);
  OUTLINED_FUNCTION_7_42(v74);
  v109 = v23;
  LOWORD(v23) = v140;
  v108(v109, v66);
  OUTLINED_FUNCTION_7_42(v90);
  if (v139)
  {
    v104 = 0x10000;
  }

  else
  {
    v104 = 0;
  }

LABEL_61:
  v110 = v23 | v130 | v104;
  OUTLINED_FUNCTION_6_50(v46 + 291, v145);
  *(v46 + 293) = BYTE2(v104);
  *(v46 + 291) = v110;
  v111 = v127;
  outlined init with copy of SignalProviding(v149, v127);
  v112 = type metadata accessor for BackingContact(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v112);
  v116 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20SiriPhoneContactImpl_backingContact;
  swift_beginAccess();
  outlined assign with take of BackingContact?(v111, v46 + v116);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v149);
  return v46;
}

uint64_t outlined init with take of (contact: SiriPhoneContactImpl, contactQuery: ContactQuery)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of BackingContact?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of PhoneCallEmergencyType(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UsoEntity_common_Quantifier.DefinedValues and conformance UsoEntity_common_Quantifier.DefinedValues(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *CallRegistrationManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_67(&one-time initialization token for shared);
  }

  return &static CallRegistrationManager.shared;
}

uint64_t one-time initialization function for shared(uint64_t a1)
{
  type metadata accessor for CallRegistrationManager();
  v1 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static CallRegistrationManager.shared = v1;
  return result;
}

uint64_t static CallRegistrationManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_67(&one-time initialization token for shared);
  }
}

uint64_t CallRegistrationManager.registerForDropInCalls()()
{
  *(v1 + 48) = v0;
  return _swift_task_switch(CallRegistrationManager.registerForDropInCalls(), v0, 0);
}

{
  static Signpost.begin(_:)();
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  v5 = [objc_allocWithZone(TUConversationProviderManager) init];
  *(v0 + 56) = v5;
  lazy protocol witness table accessor for type CallRegistrationManager and conformance CallRegistrationManager();
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *(v6 + 16) = v5;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = CallRegistrationManager.registerForDropInCalls();

  return withCheckedContinuation<A>(isolation:function:_:)(v7);
}

{
  v1 = *(*v0 + 48);

  return _swift_task_switch(CallRegistrationManager.registerForDropInCalls(), v1, 0);
}

{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#CallStateProvider registered for drop-in calls", v4, 2u);
  }

  Signpost.OpenSignpost.end()();

  v5 = *(v0 + 8);

  return v5();
}

void closure #1 in CallRegistrationManager.registerForDropInCalls()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = String._bridgeToObjectiveC()();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in CallRegistrationManager.registerForDropInCalls();
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_5;
  v11 = _Block_copy(aBlock);

  [a2 registerForCallbacksForProvider:v8 completionHandler:v11];
  _Block_release(v11);
}

uint64_t closure #1 in closure #1 in CallRegistrationManager.registerForDropInCalls()(uint64_t a1)
{
  v2 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v2);
  v4 = (v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  if (a1)
  {
    swift_errorRetain();
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.siriPhone);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&dword_0, v9, v10, "#CallRegistrationManager failed to register for callbacks for drop in calls. Error: %@", v11, 0xCu);
      outlined destroy of NSObject?(v12);
    }

    v21 = 0;
    v22 = 0xE000000000000000;
    v20[1] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
    v14 = v22;
    *v4 = v21;
    v4[1] = v14;
    swift_storeEnumTagMultiPayload();
    PhoneError.logged()(v7);
    outlined destroy of PhoneError(v4);
    outlined destroy of PhoneError(v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.siriPhone);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "#CallRegistrationManager successfully registered for callbacks for drop in calls.", v19, 2u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

unint64_t lazy protocol witness table accessor for type CallRegistrationManager and conformance CallRegistrationManager()
{
  result = lazy protocol witness table cache variable for type CallRegistrationManager and conformance CallRegistrationManager;
  if (!lazy protocol witness table cache variable for type CallRegistrationManager and conformance CallRegistrationManager)
  {
    type metadata accessor for CallRegistrationManager();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallRegistrationManager and conformance CallRegistrationManager);
  }

  return result;
}

uint64_t protocol witness for CallRegistrationManaging.registerForDropInCalls() in conformance CallRegistrationManager()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return CallRegistrationManager.registerForDropInCalls()();
}

uint64_t partial apply for closure #1 in closure #1 in CallRegistrationManager.registerForDropInCalls()(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);

  return closure #1 in closure #1 in CallRegistrationManager.registerForDropInCalls()(a1);
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1)
{
  result = specialized Array.count.getter(a1);
  v3 = result;
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_11;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = UsoEntity_common_UserEntity.nameIdentifiers.getter();
    specialized Array.append<A>(contentsOf:)(v5);
  }

  return result;
}

void one-time initialization function for logPrefix()
{
  static Transformer<>.logPrefix = &type metadata for String;
  qword_599B50 = &outlined read-only object #0 of one-time initialization function for logPrefix;
  qword_599B58 = 0;
  unk_599B60 = 0;
}

{
  static SearchCallHistoryHelper.logPrefix = &type metadata for SearchCallHistoryHelper;
  unk_55D380 = &outlined read-only object #0 of one-time initialization function for logPrefix;
  qword_55D388 = 0;
  unk_55D390 = 0;
}

uint64_t *Transformer<>.logPrefix.unsafeMutableAddressor()
{
  if (one-time initialization token for logPrefix != -1)
  {
    OUTLINED_FUNCTION_0_68();
    swift_once();
  }

  return &static Transformer<>.logPrefix;
}

uint64_t static Transformer<>.logPrefix.getter()
{
  if (one-time initialization token for logPrefix != -1)
  {
    OUTLINED_FUNCTION_0_68();
    swift_once();
  }

  v0 = static Transformer<>.logPrefix;

  return v0;
}

uint64_t static Transformer<>.transformer.getter()
{
  type metadata accessor for UsoTask();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB15ControlNLIntentCSgMd, &_s27PhoneCallFlowDelegatePlugin0aB15ControlNLIntentCSgMR);

  return Transformer.init(transform:)();
}

{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_27_17(&one-time initialization token for transformer);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin08IncomingE14IntentResponse_p0a3KitF05InputVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin08IncomingE14IntentResponse_p0a3KitF05InputVGMR);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  OUTLINED_FUNCTION_3_49();
  v1 = OUTLINED_FUNCTION_53_14();

  return v2(v1);
}

{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_4_44();
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMd, &_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMR);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  OUTLINED_FUNCTION_3_49();
  v1 = OUTLINED_FUNCTION_53_14();

  return v2(v1);
}

{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_6_51();
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH10AudioRouteOSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH10AudioRouteOSgGMR);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  OUTLINED_FUNCTION_3_49();
  v1 = OUTLINED_FUNCTION_53_14();

  return v2(v1);
}

{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_5_52();
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology33UsoTask_noVerb_common_PhoneNumberCAD0eF0CSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology33UsoTask_noVerb_common_PhoneNumberCAD0eF0CSgGMR);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  OUTLINED_FUNCTION_3_49();
  v1 = OUTLINED_FUNCTION_53_14();

  return v2(v1);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology26UsoEntity_common_PhoneCallCSgMd, &_s12SiriOntology26UsoEntity_common_PhoneCallCSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMd, &_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMR);

  return Transformer.init(transform:)();
}

{
  return static Transformer<>.transformer.getter();
}

_BYTE *closure #1 in static Transformer<>.transformer.getter@<X0>(uint64_t *a2@<X8>)
{
  if ((UsoTask.isCallControlTask()() & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.siriPhone);
    v5 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v5, v14))
    {
      goto LABEL_16;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136315138;
    if (one-time initialization token for logPrefix != -1)
    {
      OUTLINED_FUNCTION_0_68();
      swift_once();
    }

    OUTLINED_FUNCTION_2_67(&static Transformer<>.logPrefix);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v20);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_0, v5, v14, "%s usoTask is not a CallControls task.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);

    goto LABEL_15;
  }

  result = static Transformer<>.getPhoneCallControlNLIntent(for:)();
  if (!result)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.siriPhone);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_16;
    }

    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136315394;
    if (one-time initialization token for logPrefix != -1)
    {
      OUTLINED_FUNCTION_0_68();
      swift_once();
    }

    OUTLINED_FUNCTION_2_67(&static Transformer<>.logPrefix);
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v20);

    *(v7 + 4) = v8;
    *(v7 + 12) = 2080;

    v9 = UsoTask.description.getter();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v20);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_0, v5, v6, "%s PhoneCallControlNLIntent was nil for %s", v7, 0x16u);
    swift_arrayDestroy();

LABEL_15:

LABEL_16:

    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t UsoTask.isCallControlTask()()
{
  if (UsoTask.baseEntityAsString.getter() == 0x535F6E6F6D6D6F63 && v0 == 0xEE00676E69747465)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0 && (UsoTask.isSwitchToFaceTimeOrVideoCallTask.getter() & 1) == 0 && (UsoTask.isSwitchToSpeakerphoneTask.getter() & 1) == 0 && (UsoTask.isAppTask.getter() & 1) == 0)
    {
      return 0;
    }
  }

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
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v10 = v8;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for String, &outlined read-only object #0 of UsoTask.isCallControlTask(), 0, 0);
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v10);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_0, v5, v6, "%s task is call control or switch to FaceTime task.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return 1;
}

_BYTE *static Transformer<>.getPhoneCallControlNLIntent(for:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.siriPhone);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  v3 = &unk_426000;
  if (os_log_type_enabled(v1, v2))
  {
    v4 = swift_slowAlloc();
    *&v57 = swift_slowAlloc();
    *v4 = 136315394;
    if (one-time initialization token for logPrefix != -1)
    {
      swift_once();
    }

    *&v59[0] = 0;
    *(&v59[0] + 1) = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static Transformer<>.logPrefix, qword_599B50, qword_599B58, unk_599B60);
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v57);

    *(v4 + 4) = v5;
    *(v4 + 12) = 2080;
    v6 = UsoTask.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v57);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_0, v1, v2, "%s attempting to get call control action for %s", v4, 0x16u);
    swift_arrayDestroy();

    v3 = &unk_426000;
  }

  else
  {
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v58)
  {
    outlined destroy of Any?(&v57);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v57 = v17;
      *v16 = 136315138;
      if (one-time initialization token for logPrefix != -1)
      {
        swift_once();
      }

      *&v59[0] = 0;
      *(&v59[0] + 1) = 0xE000000000000000;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static Transformer<>.logPrefix, qword_599B50, qword_599B58, unk_599B60);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v59[0], *(&v59[0] + 1), &v57);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_0, v14, v15, "%s could not convert task.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
    }

    return 0;
  }

  outlined init with take of Any(&v57, v59);
  if (UsoTask.isSwitchToFaceTimeOrVideoCallTask.getter())
  {
    if (UsoTask.hasFaceTimeAudioSemantics.getter())
    {
      v9 = 4;
    }

    else
    {
      v9 = 3;
    }

    if (PhoneCallControlNLIntent.Verb.rawValue.getter(v9) == 0xD000000000000015 && 0x8000000000452E80 == v10)
    {

      v13 = 9;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        v13 = 9;
      }

      else
      {
        v13 = 8;
      }
    }

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v28 = v3[71];
      if (one-time initialization token for logPrefix != -1)
      {
        swift_once();
      }

      *&v57 = 0;
      *(&v57 + 1) = 0xE000000000000000;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static Transformer<>.logPrefix, qword_599B50, qword_599B58, unk_599B60);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, *(&v57 + 1), &v56);

      *(v28 + 4) = v29;
      *(v28 + 12) = 2080;
      v30 = PhoneCallControlAction.description.getter(v13);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v56);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_0, v26, v27, "%s getPhoneCallControlAction parsed task to PhoneCallControlAction.%s", v28, 0x16u);
      swift_arrayDestroy();
    }

    __swift_destroy_boxed_opaque_existential_1(v59);
    type metadata accessor for PhoneCallControlNLIntent();
    swift_allocObject();
    v24 = v9;
    v25 = 5;
    return PhoneCallControlNLIntent.init(verb:target:)(v24, v25);
  }

  if (UsoTask.isSwitchToSpeakerphoneTask.getter())
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v22 = v3[71];
      if (one-time initialization token for logPrefix != -1)
      {
        swift_once();
      }

      *&v57 = 0;
      *(&v57 + 1) = 0xE000000000000000;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static Transformer<>.logPrefix, qword_599B50, qword_599B58, unk_599B60);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, *(&v57 + 1), &v56);

      *(v22 + 4) = v23;
      *(v22 + 12) = 2080;
      *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000000452EB0, &v56);
      _os_log_impl(&dword_0, v20, v21, "%s getPhoneCallControlAction parsed task to PhoneCallControlAction.%s", v22, 0x16u);
      swift_arrayDestroy();
    }

    __swift_destroy_boxed_opaque_existential_1(v59);
    type metadata accessor for PhoneCallControlNLIntent();
    swift_allocObject();
    v24 = 0;
    v25 = 3;
    return PhoneCallControlNLIntent.init(verb:target:)(v24, v25);
  }

  v34 = UsoTask.usoIdentifiers.getter();
  v35.namespaceToIdentifierMap._rawValue = CallControlUsoIdentifiers.init(usoIdentifiers:)(v34).namespaceToIdentifierMap._rawValue;
  v36 = static Transformer<>.mapIdentifiersToTarget(usoIdentifiers:)(v35.namespaceToIdentifierMap._rawValue);

  v37 = static Transformer<>.mapTaskToVerb(usoTask:isTargetWithNegation:)(v59, HIBYTE(v36) & 1);
  if (v37 == 7)
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v56 = v41;
      *v40 = 136315138;
      if (one-time initialization token for logPrefix != -1)
      {
        swift_once();
      }

      *&v57 = 0;
      *(&v57 + 1) = 0xE000000000000000;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static Transformer<>.logPrefix, qword_599B50, qword_599B58, unk_599B60);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, *(&v57 + 1), &v56);

      *(v40 + 4) = v42;
      _os_log_impl(&dword_0, v38, v39, "%s could not determine a verb for call control.", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
    }

    __swift_destroy_boxed_opaque_existential_1(v59);
    return 0;
  }

  v43 = v37;
  type metadata accessor for PhoneCallControlNLIntent();
  swift_allocObject();
  v19 = PhoneCallControlNLIntent.init(verb:target:)(v43, v36);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v46 = v3[71];
    if (one-time initialization token for logPrefix != -1)
    {
      swift_once();
    }

    v47 = static Transformer<>.logPrefix;
    v48 = qword_599B50;
    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;

    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v47, v48, 0xD000000000000021, 0x800000000045C8F0);

    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, *(&v57 + 1), &v56);

    *(v46 + 4) = v49;
    *(v46 + 12) = 2080;
    v50 = *(*v19 + 144);

    v52 = v50(v51);
    v54 = v53;

    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v56);

    *(v46 + 14) = v55;
    _os_log_impl(&dword_0, v44, v45, "%s intent = %s)", v46, 0x16u);
    swift_arrayDestroy();
  }

  __swift_destroy_boxed_opaque_existential_1(v59);
  return v19;
}

uint64_t UsoTask.usoIdentifiers.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  v0 = _swiftEmptyArrayStorage;
  if (!v25[3])
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_51;
  }

  outlined init with copy of Any?(v25, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology33Uso_VerbTemplate_ReferenceTriggerCyAA0C21Entity_common_SettingCGMd, &_s12SiriOntology33Uso_VerbTemplate_ReferenceTriggerCyAA0C21Entity_common_SettingCGMR);
  if (!swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology39Uso_VerbTemplate_ReferenceNumberTriggerCyAA0C21Entity_common_SettingCGMd, &_s12SiriOntology39Uso_VerbTemplate_ReferenceNumberTriggerCyAA0C21Entity_common_SettingCGMR);
    if (swift_dynamicCast())
    {
      dispatch thunk of Uso_VerbTemplate_ReferenceNumberTrigger.reference.getter();
      v21 = v23;
      v9 = dispatch thunk of Uso_VerbTemplate_ReferenceNumberTrigger.userEntities.getter();
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = _swiftEmptyArrayStorage;
      }

      result = specialized Array.count.getter(v10);
      v11 = result;
      v12 = 0;
      while (v11 != v12)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_69;
          }
        }

        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_68;
        }

        dispatch thunk of CodeGenListEntry.entry.getter();

        ++v12;
        if (v22)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v12 = v13;
        }
      }

LABEL_49:

      __swift_destroy_boxed_opaque_existential_1(v24);
      v8 = 0;
LABEL_50:
      v7 = v21;
      goto LABEL_51;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology26Uso_VerbTemplate_ReferenceCyAA0C21Entity_common_SettingCGMd, &_s12SiriOntology26Uso_VerbTemplate_ReferenceCyAA0C21Entity_common_SettingCGMR);
    if (swift_dynamicCast())
    {
      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      v21 = v23;
      v14 = dispatch thunk of Uso_VerbTemplate_Reference.userEntities.getter();
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = _swiftEmptyArrayStorage;
      }

      result = specialized Array.count.getter(v15);
      v16 = result;
      v17 = 0;
      while (v16 != v17)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v17 >= *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_71;
          }
        }

        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_70;
        }

        dispatch thunk of CodeGenListEntry.entry.getter();

        ++v17;
        if (v22)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v17 = v18;
        }
      }

      goto LABEL_49;
    }

    type metadata accessor for UsoTask_noVerb_common_Setting();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

      v7 = v23;
      __swift_destroy_boxed_opaque_existential_1(v24);
    }

    else
    {
      type metadata accessor for UsoTask_open_common_App();
      if (swift_dynamicCast() || (type metadata accessor for UsoTask_close_common_App(), swift_dynamicCast()))
      {

        dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

        v8 = v23;
        __swift_destroy_boxed_opaque_existential_1(v24);
        v7 = 0;
        goto LABEL_51;
      }

      __swift_destroy_boxed_opaque_existential_1(v24);
      v7 = 0;
    }

    v8 = 0;
LABEL_51:
    outlined destroy of Any?(v25);
    v25[0] = _swiftEmptyArrayStorage;
    if (v8)
    {
      v0 = sub_2EB70();
    }

    specialized Array.append<A>(contentsOf:)(v0);
    if (v7)
    {
      v19 = sub_2EB70();
      specialized Array.append<A>(contentsOf:)(v19);
      if (dispatch thunk of UsoEntity_common_Setting.associatedSetting.getter())
      {
        v20 = sub_2EB70();
      }

      else
      {
        v20 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v20 = _swiftEmptyArrayStorage;
      specialized Array.append<A>(contentsOf:)(_swiftEmptyArrayStorage);
    }

    specialized Array.append<A>(contentsOf:)(v20);
    specialized Sequence.forEach(_:)(_swiftEmptyArrayStorage);

    return v25[0];
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.reference.getter();
  v21 = v23;
  v1 = dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.userEntities.getter();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  result = specialized Array.count.getter(v2);
  v4 = result;
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {

      __swift_destroy_boxed_opaque_existential_1(v24);
      v8 = 0;
      v0 = _swiftEmptyArrayStorage;
      goto LABEL_50;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_67;
      }
    }

    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    dispatch thunk of CodeGenListEntry.entry.getter();

    ++v5;
    if (v22)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v6;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t static Transformer<>.mapIdentifiersToTarget(usoIdentifiers:)(uint64_t a1)
{
  if (CallControlUsoIdentifiers.hasAnyVolumeIdentifier.getter(a1))
  {
    v2 = 0;
    v3 = 4;
    return v2 | v3;
  }

  if (CallControlUsoIdentifiers.hasMuteCallIdentifier.getter(a1))
  {
    v2 = 256;
LABEL_8:
    v3 = 2;
    return v2 | v3;
  }

  if (CallControlUsoIdentifiers.hasUnmuteCallIdentifier.getter(a1) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pGMR), inited = swift_initStackObject(), *(inited + 16) = xmmword_424FD0, *(inited + 56) = &type metadata for CallControlUsoIdentifiers.BoolSettingName, *(inited + 64) = &protocol witness table for CallControlUsoIdentifiers.BoolSettingName, v5 = CallControlUsoIdentifiers.contains(anyOf:)(inited, a1), swift_setDeallocating(), specialized _ContiguousArrayStorage.__deallocating_deinit(), v5))
  {
    v2 = 0;
    goto LABEL_8;
  }

  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_424FD0;
  *(v7 + 56) = &type metadata for CallControlUsoIdentifiers.PhoneSetting;
  *(v7 + 64) = &protocol witness table for CallControlUsoIdentifiers.PhoneSetting;
  *(v7 + 32) = 8;
  v8 = CallControlUsoIdentifiers.contains(anyOf:)(v7, a1);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  if (v8)
  {
    v2 = 0;
    v3 = 3;
  }

  else
  {
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_424FD0;
    *(v9 + 56) = &type metadata for CallControlUsoIdentifiers.PhoneSetting;
    *(v9 + 64) = &protocol witness table for CallControlUsoIdentifiers.PhoneSetting;
    *(v9 + 32) = 0;
    v10 = CallControlUsoIdentifiers.contains(anyOf:)(v9, a1);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    if (v10 || (v11 = swift_initStackObject(), *(v11 + 16) = xmmword_424FD0, *(v11 + 56) = &type metadata for CallControlUsoIdentifiers.AppName, *(v11 + 64) = &protocol witness table for CallControlUsoIdentifiers.AppName, v12 = CallControlUsoIdentifiers.contains(anyOf:)(v11, a1), swift_setDeallocating(), specialized _ContiguousArrayStorage.__deallocating_deinit(), v12))
    {
      v3 = 0;
      v2 = 0;
    }

    else
    {
      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_424FD0;
      *(v13 + 56) = &type metadata for CallControlUsoIdentifiers.PhoneSetting;
      *(v13 + 64) = &protocol witness table for CallControlUsoIdentifiers.PhoneSetting;
      *(v13 + 32) = 5;
      v14 = CallControlUsoIdentifiers.contains(anyOf:)(v13, a1);
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      v2 = 0;
      if (v14)
      {
        v3 = 1;
      }

      else
      {
        v3 = 5;
      }
    }
  }

  return v2 | v3;
}

uint64_t static Transformer<>.mapTaskToVerb(usoTask:isTargetWithNegation:)(uint64_t a1, char a2)
{
  outlined init with copy of Any(a1, v12);
  type metadata accessor for UsoTask_enable_common_Setting();
  if (swift_dynamicCast())
  {

    v3 = a2 & 1;
  }

  else
  {
    type metadata accessor for UsoTask_disable_common_Setting();
    if (swift_dynamicCast())
    {

      v3 = (a2 & 1) == 0;
    }

    else
    {
      type metadata accessor for UsoTask_toggle_common_Setting();
      if (swift_dynamicCast())
      {

        v3 = 2;
      }

      else
      {
        type metadata accessor for UsoTask_set_common_Setting();
        if (swift_dynamicCast() || (type metadata accessor for UsoTask_increaseBy_common_Setting(), swift_dynamicCast()) || (type metadata accessor for UsoTask_decreaseBy_common_Setting(), swift_dynamicCast()) || (type metadata accessor for UsoTask_setNumber_common_Setting(), swift_dynamicCast()))
        {

          v3 = 5;
        }

        else
        {
          type metadata accessor for UsoTask_summarise_common_Setting();
          if (swift_dynamicCast() || (type metadata accessor for UsoTask_checkExistence_common_Setting(), swift_dynamicCast()) || (type metadata accessor for UsoTask_noVerb_common_Setting(), swift_dynamicCast()))
          {

            v3 = 6;
          }

          else
          {
            type metadata accessor for UsoTask_open_common_App();
            if (swift_dynamicCast())
            {

              v3 = 0;
            }

            else
            {
              type metadata accessor for UsoTask_close_common_App();
              if (swift_dynamicCast())
              {

                v3 = 1;
              }

              else
              {
                if (one-time initialization token for siriPhone != -1)
                {
                  swift_once();
                }

                v5 = type metadata accessor for Logger();
                __swift_project_value_buffer(v5, static Logger.siriPhone);
                v6 = Logger.logObject.getter();
                v7 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v6, v7))
                {
                  v8 = swift_slowAlloc();
                  v9 = swift_slowAlloc();
                  v11 = v9;
                  *v8 = 136315138;
                  if (one-time initialization token for logPrefix != -1)
                  {
                    swift_once();
                  }

                  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static Transformer<>.logPrefix, qword_599B50, qword_599B58, unk_599B60);
                  v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v11);

                  *(v8 + 4) = v10;
                  _os_log_impl(&dword_0, v6, v7, "#%s unsupported UsoTask", v8, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v9);
                }

                v3 = 7;
              }
            }
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v3;
}

void *UsoEntity_common_UserEntity.nameIdentifiers.getter()
{
  result = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

  return result;
}

void *specialized UsoContactConvertible.nameSpans.getter()
{
  result = dispatch thunk of CodeGenGlobalArgs.getEntitySpansFor(attributeName:)();
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t UsoIdentifierAppBundleType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x746163696C707041;
  }
}

uint64_t UsoIdentifierNamespaceType.rawValue.getter(char a1)
{
  result = 0x6D754E656E6F6870;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      return result;
    case 3:
      result = 0x73746361746E6F43;
      break;
    case 4:
      result = 0x64695F6D657469;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x656D614E707061;
      break;
    case 8:
      result = 0x6369746E616D6573;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = OUTLINED_FUNCTION_20_25();
      break;
    case 11:
      result = 0x65746C615F727361;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t Transformer<>.transformer.unsafeMutableAddressor()
{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_27_17(&one-time initialization token for transformer);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin08IncomingE14IntentResponse_p0a3KitF05InputVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin08IncomingE14IntentResponse_p0a3KitF05InputVGMR);

  return __swift_project_value_buffer(v0, static Transformer<>.transformer);
}

{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_4_44();
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMd, &_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMR);

  return __swift_project_value_buffer(v0, static Transformer<>.transformer);
}

{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_6_51();
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH10AudioRouteOSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH10AudioRouteOSgGMR);

  return __swift_project_value_buffer(v0, static Transformer<>.transformer);
}

{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_5_52();
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology33UsoTask_noVerb_common_PhoneNumberCAD0eF0CSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology33UsoTask_noVerb_common_PhoneNumberCAD0eF0CSgGMR);

  return __swift_project_value_buffer(v0, static Transformer<>.transformer);
}

uint64_t NLv4Transformer.__allocating_init(referenceResolver:featureManager:)(void *a1)
{
  swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_4_36();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_54(v3);
  v5(v4);
  v6 = OUTLINED_FUNCTION_60_8();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t static Transformer<>.transformer(sharedGlobals:app:sirikitIntent:)(uint64_t a1, uint64_t a2, void *a3)
{
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_1();
  v5 = swift_allocObject();
  outlined init with take of SPHConversation(&v8, v5 + 16);
  *(v5 + 56) = a3;
  *(v5 + 64) = a2;

  v6 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  return Transformer.init(transform:)();
}

uint64_t one-time initialization function for logPrefix()
{
  result = type metadata accessor for NLv4Transformer(0);
  static NLv4Transformer.logPrefix = result;
  unk_599B70 = &outlined read-only object #0 of one-time initialization function for logPrefix;
  qword_599B78 = 0;
  unk_599B80 = 0;
  return result;
}

uint64_t *NLv4Transformer.logPrefix.unsafeMutableAddressor()
{
  if (one-time initialization token for logPrefix != -1)
  {
    OUTLINED_FUNCTION_0_69();
    swift_once();
  }

  return &static NLv4Transformer.logPrefix;
}

uint64_t static NLv4Transformer.logPrefix.getter()
{
  if (one-time initialization token for logPrefix != -1)
  {
    OUTLINED_FUNCTION_0_69();
    swift_once();
  }

  return OUTLINED_FUNCTION_19_0();
}

uint64_t NLv4Transformer.init(referenceResolver:featureManager:)(void *a1)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_4_36();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_54(v3);
  v5(v4);
  v6 = OUTLINED_FUNCTION_60_8();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

void NLv4Transformer.transformUserDialogAct(userDialogAct:previousPhoneCallNLIntent:)()
{
  OUTLINED_FUNCTION_66();
  v46 = v0;
  v48 = v1;
  v3 = v2;
  v50 = v4;
  v47 = type metadata accessor for TransformerInput(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v9 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_12_5();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v45 = &v41 - v17;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = __swift_project_value_buffer(v21, static Logger.siriPhone);
  v23 = *(v11 + 16);
  v49 = v3;
  v52 = v23;
  v23(v20, v3, v9);
  v44 = v22;
  v24 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  v25 = os_log_type_enabled(v24, v42);
  v51 = v11;
  if (v25)
  {
    v41 = v15;
    v26 = v9;
    OUTLINED_FUNCTION_21_21();
    v27 = swift_slowAlloc();
    OUTLINED_FUNCTION_24_19();
    v53[0] = swift_slowAlloc();
    *v27 = 136315394;
    if (one-time initialization token for logPrefix != -1)
    {
      OUTLINED_FUNCTION_0_69();
      swift_once();
    }

    *&v54[0] = 0;
    *(&v54[0] + 1) = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
    v28 = *(&v54[0] + 1);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v54[0], *(&v54[0] + 1), v53);

    *(v27 + 4) = v29;
    v30 = OUTLINED_FUNCTION_67_6();
    v31 = v52;
    v52(v30, v20, v26);
    OUTLINED_FUNCTION_10_40();
    v34 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K27_Nlu_External_UserDialogActV_Tt0g5Tm(v28, v32, v33, &type metadata accessor for Siri_Nlu_External_UserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct);
    v36 = v35;
    v43 = *(v51 + 8);
    v43(v20, v26);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v53);

    *(v27 + 14) = v37;
    _os_log_impl(&dword_0, v24, v42, "%s attempting to transform %s into NLv4PhoneCallNLIntent.", v27, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();

    v9 = v26;
    OUTLINED_FUNCTION_8();

    v38 = v50;
  }

  else
  {

    v43 = *(v11 + 8);
    v43(v20, v9);
    v31 = v52;
    v38 = v50;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVAD0dE8NLIntent_pSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVAD0dE8NLIntent_pSgGMR);
  v39 = Transformer.transform.getter();
  v31(v8, v49, v9);
  outlined init with copy of ButtonConfigurationModel?(v48, v8 + *(v47 + 20), &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  v39(v54, v8);
  OUTLINED_FUNCTION_22_15();

  v40 = v54[1];
  *v38 = v54[0];
  *(v38 + 16) = v40;
  *(v38 + 32) = v55;
  OUTLINED_FUNCTION_65();
}

uint64_t NLv4Transformer.deinit()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15NLv4Transformer_transformer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVAD0dE8NLIntent_pSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVAD0dE8NLIntent_pSgGMR);
  OUTLINED_FUNCTION_23_1();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t one-time initialization function for phoneCallAttributesLast(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  OUTLINED_FUNCTION_40();
  v5 = *(v4 + 104);

  return v5();
}

uint64_t static Transformer<>.updatePhoneNounAndAttributesForLatestCallHistory(attribute:phoneCallAttributes:phoneCallNoun:)(uint64_t a1, uint64_t *a2, char *a3)
{
  v5 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  v35 = *(v5 - 8);
  __chkstk_darwin(v5);
  v33 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
  __chkstk_darwin(v7);
  v9 = &v31[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v31[-v14];
  __chkstk_darwin(v16);
  v18 = &v31[-v17];
  dispatch thunk of CodeGenListEntry.entry.getter();
  if (v36)
  {
    CodeGenBase.entity.getter();
  }

  type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (v37)
  {
    v34 = a3;
    dispatch thunk of UsoEntity_applePhoneCall_PhoneCallAttribute.definedValue.getter();
    (*(v35 + 104))(v15, enum case for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues.applePhoneCall_PhoneCallAttribute_PhoneCallAttributesCurrent(_:), v5);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v5);
    v20 = *(v7 + 48);
    outlined init with copy of ButtonConfigurationModel?(v18, v9, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
    outlined init with copy of ButtonConfigurationModel?(v15, &v9[v20], &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
    if (__swift_getEnumTagSinglePayload(v9, 1, v5) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
      if (__swift_getEnumTagSinglePayload(&v9[v20], 1, v5) == 1)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        v21 = 8;
        a3 = v34;
LABEL_12:
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v25 = *(*a2 + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();

        v22 = 0;
        v26 = *a2;
        *(v26 + 16) = v25 + 1;
        *(v26 + v25 + 32) = v21;
        *a2 = v26;
        goto LABEL_13;
      }
    }

    else
    {
      outlined init with copy of ButtonConfigurationModel?(v9, v12, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
      if (__swift_getEnumTagSinglePayload(&v9[v20], 1, v5) != 1)
      {
        v27 = v35;
        v28 = &v9[v20];
        v29 = v33;
        (*(v35 + 32))(v33, v28, v5);
        lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &protocol conformance descriptor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();
        v30 = *(v27 + 8);
        v30(v29, v5);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        v30(v12, v5);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        a3 = v34;
        if (v32)
        {
          v21 = 8;
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
      (*(v35 + 8))(v12, v5);
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
    a3 = v34;
LABEL_11:
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v23 = *(*a2 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    v24 = *a2;
    *(v24 + 16) = v23 + 1;
    *(v24 + v23 + 32) = 6;
    *a2 = v24;
    v21 = 4;
    goto LABEL_12;
  }

  v22 = 1;
LABEL_13:
  *a3 = v22;
  return result;
}

uint64_t static Transformer<>.updatePhoneNounAndAttributesForGeneralCallHistory(attribute:phoneCallAttributes:)(uint64_t a1, uint64_t *a2)
{
  v100 = a2;
  v2 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  v101 = *(v2 - 8);
  __chkstk_darwin(v2);
  v99 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
  __chkstk_darwin(v103);
  v5 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v88 - v7;
  __chkstk_darwin(v9);
  v11 = &v88 - v10;
  __chkstk_darwin(v12);
  v14 = &v88 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  __chkstk_darwin(v15 - 8);
  v89 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v93 = &v88 - v18;
  __chkstk_darwin(v19);
  v92 = &v88 - v20;
  __chkstk_darwin(v21);
  v95 = &v88 - v22;
  __chkstk_darwin(v23);
  v94 = &v88 - v24;
  __chkstk_darwin(v25);
  v27 = &v88 - v26;
  __chkstk_darwin(v28);
  v30 = &v88 - v29;
  __chkstk_darwin(v31);
  v33 = &v88 - v32;
  __chkstk_darwin(v34);
  v102 = &v88 - v35;
  dispatch thunk of CodeGenListEntry.entry.getter();
  if (v104)
  {
    CodeGenBase.entity.getter();
  }

  type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (v105)
  {
    v96 = v8;
    v97 = v105;
    v91 = v5;
    v37 = v102;
    dispatch thunk of UsoEntity_applePhoneCall_PhoneCallAttribute.definedValue.getter();
    if (one-time initialization token for phoneCallAttributesMissed != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v2, static Transformer<>.phoneCallAttributesMissed);
    v39 = *(v101 + 16);
    v90 = v101 + 16;
    v98 = v39;
    v39(v33, v38, v2);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v2);
    v40 = *(v103 + 48);
    outlined init with copy of ButtonConfigurationModel?(v33, v14, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
    outlined init with copy of ButtonConfigurationModel?(v37, &v14[v40], &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
    if (__swift_getEnumTagSinglePayload(v14, 1, v2) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v33, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v14[v40], 1, v2);
      v42 = v96;
      if (EnumTagSinglePayload == 1)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        v43 = v102;
LABEL_26:
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v43, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        v57 = v100;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v58 = *(*v57 + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();

        v59 = *v57;
        *(v59 + 16) = v58 + 1;
        *(v59 + v58 + 32) = 0;
LABEL_46:
        *v57 = v59;
        return result;
      }
    }

    else
    {
      outlined init with copy of ButtonConfigurationModel?(v14, v30, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
      if (__swift_getEnumTagSinglePayload(&v14[v40], 1, v2) != 1)
      {
        v53 = v99;
        v54 = v101;
        (*(v101 + 32))(v99, &v14[v40], v2);
        lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &protocol conformance descriptor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v56 = *(v54 + 8);
        v56(v53, v2);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v33, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        v56(v30, v2);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        v43 = v102;
        v42 = v96;
        v44 = v98;
        if (v55)
        {
          goto LABEL_26;
        }

LABEL_12:
        if (one-time initialization token for phoneCallAttributesOutgoing != -1)
        {
          swift_once();
        }

        v45 = __swift_project_value_buffer(v2, static Transformer<>.phoneCallAttributesOutgoing);
        v44(v27, v45, v2);
        __swift_storeEnumTagSinglePayload(v27, 0, 1, v2);
        v46 = *(v103 + 48);
        outlined init with copy of ButtonConfigurationModel?(v27, v11, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        outlined init with copy of ButtonConfigurationModel?(v43, &v11[v46], &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
        {
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v27, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
          v47 = __swift_getEnumTagSinglePayload(&v11[v46], 1, v2);
          v48 = v91;
          if (v47 == 1)
          {
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
LABEL_36:
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v43, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
            v57 = v100;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v69 = *(*v57 + 16);
            specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();

            v59 = *v57;
            *(v59 + 16) = v69 + 1;
            v70 = v59 + v69;
            v71 = 5;
LABEL_45:
            *(v70 + 32) = v71;
            goto LABEL_46;
          }
        }

        else
        {
          v49 = v94;
          outlined init with copy of ButtonConfigurationModel?(v11, v94, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
          if (__swift_getEnumTagSinglePayload(&v11[v46], 1, v2) != 1)
          {
            v64 = v101;
            v65 = v99;
            (*(v101 + 32))(v99, &v11[v46], v2);
            lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &protocol conformance descriptor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
            v66 = v49;
            v67 = dispatch thunk of static Equatable.== infix(_:_:)();
            v68 = *(v64 + 8);
            v68(v65, v2);
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v27, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
            v68(v66, v2);
            v44 = v98;
            v43 = v102;
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
            v48 = v91;
            if (v67)
            {
              goto LABEL_36;
            }

LABEL_20:
            if (one-time initialization token for phoneCallAttributesReceived != -1)
            {
              swift_once();
            }

            v50 = __swift_project_value_buffer(v2, static Transformer<>.phoneCallAttributesReceived);
            v51 = v95;
            v44(v95, v50, v2);
            __swift_storeEnumTagSinglePayload(v51, 0, 1, v2);
            v52 = *(v103 + 48);
            outlined init with copy of ButtonConfigurationModel?(v51, v42, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
            outlined init with copy of ButtonConfigurationModel?(v43, v42 + v52, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
            if (__swift_getEnumTagSinglePayload(v42, 1, v2) == 1)
            {
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v51, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
              if (__swift_getEnumTagSinglePayload(v42 + v52, 1, v2) == 1)
              {
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v42, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
LABEL_40:
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v43, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                v57 = v100;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                v81 = *(*v57 + 16);
                specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();

                v59 = *v57;
                *(v59 + 16) = v81 + 1;
                v70 = v59 + v81;
                v71 = 4;
                goto LABEL_45;
              }
            }

            else
            {
              v60 = v92;
              outlined init with copy of ButtonConfigurationModel?(v42, v92, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
              if (__swift_getEnumTagSinglePayload(v42 + v52, 1, v2) != 1)
              {
                v73 = v101;
                v74 = v42 + v52;
                v75 = v99;
                (*(v101 + 32))(v99, v74, v2);
                lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &protocol conformance descriptor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
                v76 = v60;
                v77 = dispatch thunk of static Equatable.== infix(_:_:)();
                v78 = v51;
                v79 = *(v73 + 8);
                v79(v75, v2);
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v78, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                v80 = v76;
                v44 = v98;
                v79(v80, v2);
                v48 = v91;
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v42, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                if (v77)
                {
                  goto LABEL_40;
                }

LABEL_30:
                if (one-time initialization token for phoneCallAttributesLast != -1)
                {
                  swift_once();
                }

                v61 = __swift_project_value_buffer(v2, static Transformer<>.phoneCallAttributesLast);
                v62 = v93;
                v44(v93, v61, v2);
                __swift_storeEnumTagSinglePayload(v62, 0, 1, v2);
                v63 = *(v103 + 48);
                outlined init with copy of ButtonConfigurationModel?(v62, v48, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                outlined init with take of ButtonConfigurationModel?(v43, v48 + v63, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                if (__swift_getEnumTagSinglePayload(v48, 1, v2) == 1)
                {
                  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v62, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                  if (__swift_getEnumTagSinglePayload(v48 + v63, 1, v2) == 1)
                  {
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v48, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
LABEL_44:
                    v57 = v100;
                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    v87 = *(*v57 + 16);
                    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();

                    v59 = *v57;
                    *(v59 + 16) = v87 + 1;
                    v70 = v59 + v87;
                    v71 = 6;
                    goto LABEL_45;
                  }
                }

                else
                {
                  v72 = v89;
                  outlined init with copy of ButtonConfigurationModel?(v48, v89, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                  if (__swift_getEnumTagSinglePayload(v48 + v63, 1, v2) != 1)
                  {
                    v82 = v101;
                    v83 = v48 + v63;
                    v84 = v99;
                    (*(v101 + 32))(v99, v83, v2);
                    lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &protocol conformance descriptor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
                    v85 = dispatch thunk of static Equatable.== infix(_:_:)();
                    v86 = *(v82 + 8);
                    v86(v84, v2);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v62, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                    v86(v72, v2);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v48, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                    if ((v85 & 1) == 0)
                    {
                    }

                    goto LABEL_44;
                  }

                  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v62, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                  (*(v101 + 8))(v72, v2);
                }

                return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v48, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
              }

              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v51, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
              (*(v101 + 8))(v60, v2);
            }

            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v42, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
            goto LABEL_30;
          }

          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v27, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
          (*(v101 + 8))(v49, v2);
          v48 = v91;
        }

        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
        goto LABEL_20;
      }

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v33, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
      (*(v101 + 8))(v30, v2);
      v42 = v96;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
    v43 = v102;
    v44 = v98;
    goto LABEL_12;
  }

  return result;
}

uint64_t static Transformer<>.incomingCallTransformerOutput(phoneCallVerb:voicemailVerb:phoneCallUsoTask:audioRoute:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = a1;
  v8 = a1;
  v154 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154);
  v145 = &v134[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
  __chkstk_darwin(v153);
  v150 = &v134[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v144 = &v134[-v12];
  __chkstk_darwin(v13);
  v147 = &v134[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  __chkstk_darwin(v15 - 8);
  v143 = &v134[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v134[-v18];
  __chkstk_darwin(v20);
  v148 = &v134[-v21];
  __chkstk_darwin(v22);
  v141 = &v134[-v23];
  __chkstk_darwin(v24);
  v146 = &v134[-v25];
  __chkstk_darwin(v26);
  v160 = &v134[-v27];
  __chkstk_darwin(v28);
  v142 = &v134[-v29];
  __chkstk_darwin(v30);
  v151 = &v134[-v31];
  __chkstk_darwin(v32);
  v149 = &v134[-v33];
  static Signpost.begin(_:)();
  v35 = v34;
  v163 = v36;
  v164 = v37;
  v162 = v38;
  v171 = _swiftEmptyArrayStorage;
  v170 = 9;
  if (v8 != 17)
  {
    if (PhoneCallVerb.rawValue.getter(v6) == 1684957542 && v40 == 0xE400000000000000)
    {
LABEL_18:

      goto LABEL_19;
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v42)
    {
      goto LABEL_19;
    }
  }

  if (v5 == 6)
  {
LABEL_3:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    Signpost.OpenSignpost.end()();
  }

  if (VoiceMail.VoiceMailVerb.rawValue.getter(v5) == 2036427888 && v43 == 0xE400000000000000)
  {
    goto LABEL_18;
  }

  v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v45 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_19:
  static UsoTask_CodegenConverter.convert(task:)();
  v140 = v19;
  v157 = a3;
  if (v169[3])
  {
    type metadata accessor for UsoTask_request_common_PhoneCall();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();

      if (v169[0])
      {
        v46 = dispatch thunk of UsoEntity_common_PhoneCall.attributes.getter();

        if (v46)
        {
          if (specialized Array.count.getter(v46))
          {
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v46 & 0xC000000000000001) == 0, v46);
            if ((v46 & 0xC000000000000001) != 0)
            {
              v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v47 = *(v46 + 32);
            }

            static Transformer<>.updatePhoneNounAndAttributesForLatestCallHistory(attribute:phoneCallAttributes:phoneCallNoun:)(v47, &v171, &v170);
          }

          else
          {
          }
        }
      }
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v169, &_sypSgMd, &_sypSgMR);
  }

  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of ButtonConfigurationModel?(v169, &v166, &_sypSgMd, &_sypSgMR);
  v156 = a4;
  if (v168)
  {
    type metadata accessor for UsoTask_summarise_common_PhoneCall();
    if (swift_dynamicCast())
    {
LABEL_37:
      v170 = 1;
      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      if (v166)
      {
        v48 = dispatch thunk of UsoEntity_common_PhoneCall.attributes.getter();
      }

      else
      {
        v48 = 0;
      }

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      if (v166)
      {
        v158 = dispatch thunk of UsoEntity_common_PhoneCall.sender.getter();
      }

      else
      {
        v158 = 0;
      }

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      if (!v166)
      {

        v159 = 0;
        goto LABEL_60;
      }

      goto LABEL_49;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v166, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of ButtonConfigurationModel?(v169, &v166, &_sypSgMd, &_sypSgMR);
  if (v168)
  {
    type metadata accessor for UsoTask_read_common_PhoneCall();
    if (swift_dynamicCast())
    {
      goto LABEL_37;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v166, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of ButtonConfigurationModel?(v169, &v166, &_sypSgMd, &_sypSgMR);
  if (!v168)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v166, &_sypSgMd, &_sypSgMR);
    goto LABEL_52;
  }

  type metadata accessor for UsoTask_noVerb_common_PhoneCall();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_52:
    v158 = 0;
    v159 = 0;
    v49 = _swiftEmptyArrayStorage;
    goto LABEL_63;
  }

  v170 = 1;

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
  if (v166)
  {
    v48 = dispatch thunk of UsoEntity_common_PhoneCall.attributes.getter();
  }

  else
  {
    v48 = 0;
  }

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
  if (v166)
  {
    v158 = dispatch thunk of UsoEntity_common_PhoneCall.sender.getter();
  }

  else
  {
    v158 = 0;
  }

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

  if (!v166)
  {
    v159 = 0;
    goto LABEL_59;
  }

LABEL_49:
  v159 = dispatch thunk of UsoEntity_common_PhoneCall.associatedDateTimeRange.getter();

LABEL_59:

LABEL_60:
  if (v48)
  {
    v49 = v48;
  }

  else
  {
    v49 = _swiftEmptyArrayStorage;
  }

LABEL_63:
  v50 = specialized Array.count.getter(v49);
  if (v50)
  {
    v51 = v50;
    if (v50 < 1)
    {
      __break(1u);
LABEL_176:
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v55 = v124;
      goto LABEL_75;
    }

    for (i = 0; i != v51; ++i)
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v53 = *(v49 + 8 * i + 32);
      }

      static Transformer<>.updatePhoneNounAndAttributesForGeneralCallHistory(attribute:phoneCallAttributes:)(v53, &v171);
    }
  }

  if (v158)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
    type metadata accessor for ContactQuery();
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_424FD0;

    v161 = v54;
    UsoEntity_common_Agent.toContactQuery()();
  }

  else
  {
    v161 = _swiftEmptyArrayStorage;
  }

  if (!v159)
  {
    goto LABEL_78;
  }

  v55 = v171;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_176;
  }

LABEL_75:
  v56 = v55[2];
  if (v56 >= v55[3] >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v55 = v125;
  }

  v55[2] = v56 + 1;
  *(v55 + v56 + 32) = 11;
  v171 = v55;
LABEL_78:
  outlined init with copy of ButtonConfigurationModel?(v169, &v166, &_sypSgMd, &_sypSgMR);
  v155 = v35;
  if (v168)
  {
    type metadata accessor for UsoTask_play_common_Voicemail();
    if (swift_dynamicCast())
    {
      goto LABEL_88;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v166, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of ButtonConfigurationModel?(v169, &v166, &_sypSgMd, &_sypSgMR);
  if (v168)
  {
    type metadata accessor for UsoTask_read_common_Voicemail();
    if (swift_dynamicCast())
    {
      goto LABEL_88;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v166, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of ButtonConfigurationModel?(v169, &v166, &_sypSgMd, &_sypSgMR);
  if (v168)
  {
    type metadata accessor for UsoTask_summarise_common_Voicemail();
    if (swift_dynamicCast())
    {
LABEL_88:
      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      v57 = v160;
      if (v166)
      {
        v58 = dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter();

        if (v58)
        {

          if (one-time initialization token for siriPhone != -1)
          {
            swift_once();
          }

          v59 = type metadata accessor for Logger();
          __swift_project_value_buffer(v59, static Logger.siriPhone);
          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v165 = v63;
            *v62 = 136315138;
            if (one-time initialization token for logPrefix != -1)
            {
              swift_once();
            }

            v166 = 0;
            v167 = 0xE000000000000000;
            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
            v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v166, v167, &v165);

            *(v62 + 4) = v64;
            _os_log_impl(&dword_0, v60, v61, "%s current request is recognized as play it", v62, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v63);
          }

          v65 = v171;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v65 = v126;
          }

          v66 = v65[2];
          if (v66 >= v65[3] >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v65 = v127;
          }

          v65[2] = v66 + 1;
          *(v65 + v66 + 32) = 6;
          v171 = v65;
          v67 = 2;
          goto LABEL_152;
        }
      }

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      v67 = v166;
      if (!v166)
      {
LABEL_152:
        dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
        if (v166)
        {
          v106 = dispatch thunk of UsoEntity_common_Voicemail.sender.getter();

          if (v106)
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
            type metadata accessor for ContactQuery();
            v107 = swift_allocObject();
            *(v107 + 16) = xmmword_424FD0;
            v161 = v107;
            UsoEntity_common_Agent.toContactQuery()();
          }
        }

        dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
        if (v166)
        {
          v108 = dispatch thunk of UsoEntity_common_Voicemail.associatedDateTimeRange.getter();

          if (v108)
          {

            v109 = v171;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v109 = v128;
            }

            v110 = v109[2];
            if (v110 >= v109[3] >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v109 = v129;
            }

            v5 = 0;
            v109[2] = v110 + 1;
            *(v109 + v110 + 32) = 11;
            v171 = v109;
            goto LABEL_164;
          }
        }

LABEL_163:
        v5 = 0;
LABEL_164:
        v70 = 2;
        v6 = 17;
        goto LABEL_165;
      }

      v68 = dispatch thunk of UsoEntity_common_Voicemail.attributes.getter();

      if (v68)
      {
        if (specialized Array.count.getter(v68))
        {
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v68 & 0xC000000000000001) == 0, v68);
          if ((v68 & 0xC000000000000001) != 0)
          {
            v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v69 = *(v68 + 32);
          }

          v138 = v69;
          dispatch thunk of CodeGenListEntry.entry.getter();
          if (v165)
          {
            CodeGenBase.entity.getter();
          }

          v71 = v151;
          type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute();
          static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

          v72 = v154;
          if (!v166)
          {
            goto LABEL_150;
          }

          v73 = v149;
          v139 = v166;
          dispatch thunk of UsoEntity_applePhoneCall_PhoneCallAttribute.definedValue.getter();
          if (one-time initialization token for phoneCallAttributesLast != -1)
          {
            swift_once();
          }

          v74 = __swift_project_value_buffer(v72, static Transformer<>.phoneCallAttributesLast);
          v75 = *(v152 + 16);
          v137 = v152 + 16;
          v136 = v75;
          v75(v71, v74, v72);
          __swift_storeEnumTagSinglePayload(v71, 0, 1, v72);
          v76 = *(v153 + 48);
          v77 = v73;
          v78 = v147;
          outlined init with copy of ButtonConfigurationModel?(v77, v147, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
          outlined init with copy of ButtonConfigurationModel?(v71, &v78[v76], &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
          if (__swift_getEnumTagSinglePayload(v78, 1, v72) == 1)
          {
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v71, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v149, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
            if (__swift_getEnumTagSinglePayload(&v78[v76], 1, v72) == 1)
            {
              goto LABEL_129;
            }
          }

          else
          {
            v79 = v142;
            outlined init with copy of ButtonConfigurationModel?(v78, v142, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
            if (__swift_getEnumTagSinglePayload(&v78[v76], 1, v72) != 1)
            {
              v88 = v152;
              v89 = v145;
              (*(v152 + 32))(v145, &v78[v76], v72);
              lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &protocol conformance descriptor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
              v135 = dispatch thunk of static Equatable.== infix(_:_:)();
              v90 = *(v88 + 8);
              v90(v89, v72);
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v151, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v149, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
              v90(v79, v72);
              v57 = v160;
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v78, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
              v86 = v148;
              if (v135)
              {
                goto LABEL_136;
              }

LABEL_125:
              dispatch thunk of UsoEntity_applePhoneCall_PhoneCallAttribute.definedValue.getter();
              v80 = v57;
              if (one-time initialization token for phoneCallAttributesRecent != -1)
              {
                swift_once();
              }

              v81 = v154;
              v82 = __swift_project_value_buffer(v154, static Transformer<>.phoneCallAttributesRecent);
              v83 = v146;
              v136(v146, v82, v81);
              __swift_storeEnumTagSinglePayload(v83, 0, 1, v81);
              v84 = *(v153 + 48);
              v78 = v144;
              outlined init with copy of ButtonConfigurationModel?(v80, v144, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
              v85 = v81;
              outlined init with copy of ButtonConfigurationModel?(v83, &v78[v84], &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
              if (__swift_getEnumTagSinglePayload(v78, 1, v81) == 1)
              {
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v83, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v80, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                if (__swift_getEnumTagSinglePayload(&v78[v84], 1, v154) == 1)
                {
LABEL_129:
                  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v78, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                  v86 = v148;
LABEL_136:
                  v95 = v171;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v95 = v130;
                  }

                  v96 = v95[2];
                  if (v96 >= v95[3] >> 1)
                  {
                    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v95 = v131;
                  }

                  v95[2] = v96 + 1;
                  *(v95 + v96 + 32) = 6;
                  v171 = v95;
LABEL_141:
                  dispatch thunk of UsoEntity_applePhoneCall_PhoneCallAttribute.definedValue.getter();
                  if (one-time initialization token for phoneCallAttributesNewVoicemail != -1)
                  {
                    swift_once();
                  }

                  v97 = v154;
                  v98 = __swift_project_value_buffer(v154, static Transformer<>.phoneCallAttributesNewVoicemail);
                  v99 = v140;
                  v136(v140, v98, v97);
                  __swift_storeEnumTagSinglePayload(v99, 0, 1, v97);
                  v100 = *(v153 + 48);
                  v101 = v150;
                  outlined init with copy of ButtonConfigurationModel?(v86, v150, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                  v102 = v97;
                  outlined init with copy of ButtonConfigurationModel?(v99, &v101[v100], &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                  if (__swift_getEnumTagSinglePayload(v101, 1, v97) == 1)
                  {
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v99, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                    v103 = v150;
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v86, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                    if (__swift_getEnumTagSinglePayload(&v103[v100], 1, v97) == 1)
                    {
                      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v103, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
LABEL_170:
                      v122 = v171;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                        v122 = v132;
                      }

                      v123 = v122[2];
                      if (v123 >= v122[3] >> 1)
                      {
                        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                        v122 = v133;
                      }

                      v67 = 0;
                      v122[2] = v123 + 1;
                      *(v122 + v123 + 32) = 12;
                      v171 = v122;
                      goto LABEL_152;
                    }
                  }

                  else
                  {
                    v104 = v143;
                    outlined init with copy of ButtonConfigurationModel?(v101, v143, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                    if (__swift_getEnumTagSinglePayload(&v101[v100], 1, v102) != 1)
                    {
                      v118 = v152;
                      v119 = &v101[v100];
                      v120 = v145;
                      (*(v152 + 32))(v145, v119, v102);
                      lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &protocol conformance descriptor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
                      LODWORD(v160) = dispatch thunk of static Equatable.== infix(_:_:)();
                      v121 = *(v118 + 8);
                      v121(v120, v102);
                      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v140, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v148, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                      v121(v104, v102);
                      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v150, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                      if (v160)
                      {
                        goto LABEL_170;
                      }

                      goto LABEL_149;
                    }

                    v105 = v102;
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v140, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                    v103 = v150;
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v86, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                    (*(v152 + 8))(v104, v105);
                  }

                  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v103, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
LABEL_149:

LABEL_150:

                  goto LABEL_151;
                }
              }

              else
              {
                v87 = v141;
                outlined init with copy of ButtonConfigurationModel?(v78, v141, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                if (__swift_getEnumTagSinglePayload(&v78[v84], 1, v85) != 1)
                {
                  v91 = v152;
                  v92 = &v78[v84];
                  v93 = v145;
                  (*(v152 + 32))(v145, v92, v85);
                  lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &protocol conformance descriptor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
                  LODWORD(v151) = dispatch thunk of static Equatable.== infix(_:_:)();
                  v94 = *(v91 + 8);
                  v94(v93, v85);
                  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v146, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v160, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                  v86 = v148;
                  v94(v87, v85);
                  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v78, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                  if ((v151 & 1) == 0)
                  {
                    goto LABEL_141;
                  }

                  goto LABEL_136;
                }

                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v146, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v160, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                (*(v152 + 8))(v87, v154);
              }

              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v78, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
              v86 = v148;
              goto LABEL_141;
            }

            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v151, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v149, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
            (*(v152 + 8))(v79, v72);
          }

          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v78, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
          goto LABEL_125;
        }
      }

LABEL_151:
      v67 = 0;
      goto LABEL_152;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v166, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of ButtonConfigurationModel?(v169, &v166, &_sypSgMd, &_sypSgMR);
  if (v168)
  {
    type metadata accessor for UsoTask_call_common_Voicemail();
    if (swift_dynamicCast())
    {

      v67 = 0;
      goto LABEL_163;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v166, &_sypSgMd, &_sypSgMR);
  }

  v70 = 0;
  v67 = 2;
LABEL_165:
  v111 = UsoTask.usoAssociatedApp.getter();
  if (v111)
  {
    v112 = type metadata accessor for UsoEntity_common_App();
    v113 = &protocol witness table for UsoEntity_common_App;
  }

  else
  {
    v112 = 0;
    v113 = 0;
  }

  v114 = v171;
  v115 = v170;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v169, &_sypSgMd, &_sypSgMR);
  v116 = v156;
  *(v156 + 24) = &type metadata for PhoneCallNLv4Intent;
  v116[4] = &protocol witness table for PhoneCallNLv4Intent;
  v117 = swift_allocObject();
  *v116 = v117;
  *(v117 + 16) = v161;
  *(v117 + 24) = _swiftEmptyArrayStorage;
  *(v117 + 32) = v111;
  *(v117 + 40) = 0;
  *(v117 + 48) = 0;
  *(v117 + 56) = v112;
  *(v117 + 64) = v113;
  *(v117 + 72) = 2;
  *(v117 + 80) = v114;
  *(v117 + 88) = v157;
  *(v117 + 89) = 1282;
  *(v117 + 91) = v70;
  *(v117 + 92) = v115;
  *(v117 + 93) = 8963;
  *(v117 + 95) = v6;
  *(v117 + 96) = v5;
  *(v117 + 97) = v67;
  *(v117 + 104) = _swiftEmptyArrayStorage;
  *(v117 + 112) = _swiftEmptyArrayStorage;
  Signpost.OpenSignpost.end()();
}

uint64_t static Transformer<>.findPositionReference(entity:referenceResolver:)@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MatchedResultsSetting();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
  __chkstk_darwin(v11 - 8);
  v13 = (v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = (v49 - v15);
  __chkstk_darwin(v17);
  v19 = v49 - v18;
  static Signpost.begin(_:)();
  v51 = v21;
  v52 = v20;
  v50 = v22;
  v49[3] = v23;
  v24 = CodeGenBase.entity.getter();
  (*(v5 + 104))(v7, enum case for MatchedResultsSetting.defaultMatching(_:), v4);
  static PhoneReferenceResolution.resolveEntity(_:referenceResolver:matchedResultsSetting:)(v24, a1, v7, v10);

  (*(v5 + 8))(v7, v4);
  v25 = type metadata accessor for PhoneRRTarget(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v25) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v10, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMR);
    v26 = 1;
  }

  else
  {
    outlined init with copy of PhoneRRTarget.Target(v10, v19);
    outlined destroy of TransformerInput(v10, type metadata accessor for PhoneRRTarget);
    v26 = 0;
  }

  v27 = type metadata accessor for PhoneRRTarget.Target(0);
  __swift_storeEnumTagSinglePayload(v19, v26, 1, v27);
  outlined init with copy of ButtonConfigurationModel?(v19, v16, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
  if (__swift_getEnumTagSinglePayload(v16, 1, v27) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v38 = *v16;
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.siriPhone);
      v40 = v38;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v55 = v45;
        *v43 = 136315394;
        if (one-time initialization token for logPrefix != -1)
        {
          swift_once();
        }

        v53 = 0;
        v54 = 0xE000000000000000;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v55);

        *(v43 + 4) = v46;
        *(v43 + 12) = 2112;
        *(v43 + 14) = v40;
        *v44 = v40;
        v47 = v40;
        _os_log_impl(&dword_0, v41, v42, "%s referenceResolution findPositionReference selected person: %@ as the resolution result", v43, 0x16u);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v44, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        __swift_destroy_boxed_opaque_existential_1(v45);
      }

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
      *(a2 + 40) = 0;
      *(a2 + 24) = 0u;
      *(a2 + 8) = 0u;
      *a2 = v40;
      goto LABEL_30;
    }

    outlined destroy of TransformerInput(v16, type metadata accessor for PhoneRRTarget.Target);
  }

  outlined init with copy of ButtonConfigurationModel?(v19, v13, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
  if (__swift_getEnumTagSinglePayload(v13, 1, v27) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
LABEL_22:
    *a2 = 1;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0;
    goto LABEL_30;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
    outlined destroy of TransformerInput(v13, type metadata accessor for PhoneRRTarget.Target);
    goto LABEL_22;
  }

  v28 = *v13;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.siriPhone);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v32 = 136315394;
    if (one-time initialization token for logPrefix != -1)
    {
      swift_once();
    }

    v53 = 0;
    v54 = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v55);

    *(v32 + 4) = v33;
    *(v32 + 12) = 2080;
    UsoEntity_common_App.applicationId.getter();
    if (v35)
    {
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0xE000000000000000;
    }

    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v55);

    *(v32 + 14) = v37;
    _os_log_impl(&dword_0, v30, v31, "%s referenceResolution findPositionReference selected app: %s as the resolution result", v32, 0x16u);
    swift_arrayDestroy();
  }

  *(a2 + 32) = type metadata accessor for UsoEntity_common_App();
  *(a2 + 40) = &protocol witness table for UsoEntity_common_App;
  *(a2 + 8) = v28;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
  *a2 = 0;
LABEL_30:
  Signpost.OpenSignpost.end()();
}

uint64_t static Transformer<>.convertPhoneCallPositionToNoVerbPosition(task:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v31 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = (&v31 - v4);
  v6 = type metadata accessor for UsoEntity_common_ListPosition.DefinedValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v39)
  {
    goto LABEL_24;
  }

  type metadata accessor for UsoTask_call_common_PhoneCall();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  dispatch thunk of Uso_VerbTemplate_Target.target.getter();

  if (!v37 || (v10 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter(), , !v10) || (v11 = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter(), , !v11))
  {

    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    goto LABEL_9;
  }

  dispatch thunk of UsoEntity_common_ListPosition.definedValue.getter();

  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {

LABEL_9:
    v12 = &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd;
    v13 = &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR;
    v14 = v5;
LABEL_25:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, v12, v13);
    return 0;
  }

  (*(v7 + 32))(v9, v5, v6);
  type metadata accessor for UsoTaskBuilder_noVerb_uso_NoEntity();
  swift_allocObject();
  v15 = UsoTaskBuilder_noVerb_uso_NoEntity.init()();
  type metadata accessor for UsoEntityBuilder_uso_NoEntity();
  swift_allocObject();
  v16 = UsoEntityBuilder_uso_NoEntity.init()();
  type metadata accessor for UsoEntityBuilder_common_ListPosition();
  swift_allocObject();
  v17 = UsoEntityBuilder_common_ListPosition.init()();
  dispatch thunk of UsoEntityBuilder_common_ListPosition.setDefinedValue(value:)();

  dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoListPosition(value:)();
  v34 = v17;

  v35 = v16;
  dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_426260;
  *(v18 + 32) = v15;
  v19 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v19);

  v20 = static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v2, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.siriPhone);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v32 = v23;
    v33 = v15;
    v24 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36 = v31;
    *v24 = 136315394;
    if (one-time initialization token for logPrefix != -1)
    {
      swift_once();
    }

    v37 = 0;
    v38 = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v36);

    *(v24 + 4) = v25;
    *(v24 + 12) = 2080;
    v37 = v20;
    type metadata accessor for Graph();
    lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type Graph and conformance Graph, &type metadata accessor for Graph, &protocol conformance descriptor for Graph);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v36);

    *(v24 + 14) = v28;
    _os_log_impl(&dword_0, v22, v32, "%s convert to a new entity graph: %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v29 = static UsoConversionUtils.convertGraphToTasks(graph:)();
  if (specialized Array.count.getter(v29))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v29 & 0xC000000000000001) == 0, v29);
    if ((v29 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }
  }

  static UsoTask_CodegenConverter.convert(task:)();

  (*(v7 + 8))(v9, v6);
  if (!v39)
  {
LABEL_24:
    v12 = &_sypSgMd;
    v13 = &_sypSgMR;
    v14 = &v37;
    goto LABEL_25;
  }

  type metadata accessor for UsoTask_noVerb_uso_NoEntity();
  if (swift_dynamicCast())
  {
    return v36;
  }

  else
  {
    return 0;
  }
}

uint64_t static Transformer<>.findNextVoicemailTask(usoTask:)(uint64_t a1, void (*a2)(void))
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (v5)
  {
    a2(0);
    OUTLINED_FUNCTION_31_15();
    if (swift_dynamicCast())
    {

      return 1;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v4, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

double static Transformer<>.buildNLIntentByVoicemailVerb(phoneCallUsoTask:voiceMailVerb:)@<D0>(char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = UsoTask.usoAssociatedApp.getter();
  if (v5)
  {
    v6 = type metadata accessor for UsoEntity_common_App();
    v7 = &protocol witness table for UsoEntity_common_App;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  a3[3] = &type metadata for PhoneCallNLv4Intent;
  a3[4] = &protocol witness table for PhoneCallNLv4Intent;
  v8 = swift_allocObject();
  *a3 = v8;
  *(v8 + 16) = _swiftEmptyArrayStorage;
  *(v8 + 24) = _swiftEmptyArrayStorage;
  *(v8 + 32) = v5;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
  *(v8 + 72) = 2;
  *(v8 + 80) = 0;
  result = 4.01271014e-226;
  *(v8 + 88) = 0x1123030905050204;
  *(v8 + 96) = a2;
  *(v8 + 97) = 0;
  *(v8 + 104) = _swiftEmptyArrayStorage;
  *(v8 + 112) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t closure #1 in static Transformer<>.transformer(referenceResolver:featureManager:)@<X0>(uint64_t a1@<X0>, NSObject *a2@<X1>, NSObject *a3@<X2>, uint64_t *a4@<X8>)
{
  v250 = a2;
  v251 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin14TargetContacts33_9A2BD23864AF7C0BC1A75979566F7BA5LLVGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin14TargetContacts33_9A2BD23864AF7C0BC1A75979566F7BA5LLVGMR);
  OUTLINED_FUNCTION_7();
  v249 = v7;
  __chkstk_darwin(v8);
  v10 = &v233 - v9;
  v11 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v17 = v16 - v15;
  static Signpost.begin(_:)();
  v19 = v18;
  v253 = v20;
  v254 = v21;
  v252 = v22;
  (*(v13 + 16))(v17, a1, v11);
  v23 = type metadata accessor for TransformerInput(0);
  outlined init with copy of ButtonConfigurationModel?(a1 + *(v23 + 20), v267, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  if ((Siri_Nlu_External_UserDialogAct.hasAccepted.getter() & 1) == 0)
  {
    v248 = a4;
    if (Siri_Nlu_External_UserDialogAct.hasRejected.getter())
    {
      v24 = v248;
      v25 = 1;
      goto LABEL_7;
    }

    if (Siri_Nlu_External_UserDialogAct.hasCancelled.getter())
    {
      v24 = v248;
      v25 = 2;
      goto LABEL_7;
    }

    if (Siri_Nlu_External_UserDialogAct.hasWantedToRepeat.getter())
    {
      v29 = v248;
      v248[3] = &type metadata for PhoneCallNLv4Intent;
      v29[4] = &protocol witness table for PhoneCallNLv4Intent;
      OUTLINED_FUNCTION_50_1();
      v30 = swift_allocObject();
      *v29 = v30;
      OUTLINED_FUNCTION_45_11(v30);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v267, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      v31 = OUTLINED_FUNCTION_3_59();
      v32(v31);
      v30[2] = _swiftEmptyArrayStorage;
      v30[3] = _swiftEmptyArrayStorage;
      OUTLINED_FUNCTION_44_11();
      OUTLINED_FUNCTION_43_15(2.17529453e-245);
      v30[13] = _swiftEmptyArrayStorage;
      v30[14] = _swiftEmptyArrayStorage;
      goto LABEL_8;
    }

    if (one-time initialization token for transformer != -1)
    {
      OUTLINED_FUNCTION_4_44();
      swift_once();
    }

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMd, &_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMR);
    v34 = OUTLINED_FUNCTION_29_20(v33, static Transformer<>.transformer);
    v35 = v255;
    v34(&v264, v17);
    v255 = v35;
    if (v35)
    {

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v267, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      v36 = OUTLINED_FUNCTION_3_59();
      v37(v36);
      goto LABEL_8;
    }

    v246 = v19;

    v38 = v264;

    v40 = static Transformer<>.findNextVoicemailTask(usoTask:)(v39, &type metadata accessor for UsoTask_update_uso_NoEntity);
    v245 = *(&v38 + 1);
    v247 = v38;
    if (v40)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.siriPhone);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v42, v43))
      {
        OUTLINED_FUNCTION_13_14();
        v44 = swift_slowAlloc();
        OUTLINED_FUNCTION_12_17();
        v250 = swift_slowAlloc();
        *&v261 = v250;
        v251 = v44;
        LODWORD(v44->isa) = 136315138;
        if (one-time initialization token for logPrefix != -1)
        {
          OUTLINED_FUNCTION_0_69();
          swift_once();
        }

        OUTLINED_FUNCTION_9_41();
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v45, v46, v47, v48);
        OUTLINED_FUNCTION_23_16();
        OUTLINED_FUNCTION_49_11();

        *(&v251->isa + 4) = &static NLv4Transformer.logPrefix;
        OUTLINED_FUNCTION_70_3(&dword_0, v49, v50, "%s user selects change, parse current request as confirmation=no");
        __swift_destroy_boxed_opaque_existential_1(v250);
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();
      }

      static PhoneCallNLv4Intent.getConfirmationNLIntent(phoneCallConfirmation:)(1, v248);
      OUTLINED_FUNCTION_68_5();

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v267, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      v51 = OUTLINED_FUNCTION_3_59();
      v52(v51);
      goto LABEL_76;
    }

    (*(v250->isa + 30))();
    UserDialogActParse.isCallToOffDeviceContactEntity(useEntitySpans:referenceResolver:)();
    if (v53)
    {
      LODWORD(v243) = 0;
      v54 = &outlined read-only object #0 of closure #1 in static Transformer<>.transformer(referenceResolver:featureManager:);
    }

    else
    {
      v55 = UserDialogActParse.isRedirectBusinessCall()();
      v54 = &outlined read-only object #1 of closure #1 in static Transformer<>.transformer(referenceResolver:featureManager:);
      LODWORD(v243) = v55;
      if (!v55)
      {
        v54 = _swiftEmptyArrayStorage;
      }
    }

    v244 = v54;

    static UsoTask_CodegenConverter.convert(task:)();

    v56 = &type metadata for Any;
    if (*(&v265 + 1))
    {
      type metadata accessor for UsoTask_noVerb_uso_NoEntity();
      OUTLINED_FUNCTION_17_23();
      if (swift_dynamicCast())
      {
        v56 = v261;
LABEL_32:
        v57 = v56;

        dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

        v58 = v264;
        if (v264)
        {
          v250 = v57;

          static Transformer<>.findPositionReference(entity:referenceResolver:)(v251, &v261);
          v242 = v58;
          if (v261 == 1)
          {
            v59 = &_s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginAD0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVRszAD0dE8NLIntent_pSgRs_rlE24SrrOrdinalResolvedResultAFLLVyAgI_GSgMd;
            v60 = &_s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginAD0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVRszAD0dE8NLIntent_pSgRs_rlE24SrrOrdinalResolvedResultAFLLVyAgI_GSgMR;
            v61 = &v261;
          }

          else
          {
            v264 = v261;
            v265 = v262;
            v266 = v263;
            v85 = v261;
            if (v261)
            {
              v86 = one-time initialization token for siriPhone;
              v87 = v261;
              if (v86 != -1)
              {
                OUTLINED_FUNCTION_0_6();
                swift_once();
              }

              v88 = type metadata accessor for Logger();
              __swift_project_value_buffer(v88, static Logger.siriPhone);
              v89 = v87;
              v90 = Logger.logObject.getter();
              v91 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v90, v91))
              {
                LODWORD(v244) = v91;
                v249 = v90;
                v92 = v89;
                OUTLINED_FUNCTION_21_21();
                v93 = swift_slowAlloc();
                v241 = swift_slowAlloc();
                OUTLINED_FUNCTION_12_17();
                v243 = swift_slowAlloc();
                *&v258 = v243;
                *v93 = 136315394;
                if (one-time initialization token for logPrefix != -1)
                {
                  OUTLINED_FUNCTION_0_69();
                  swift_once();
                }

                *&v261 = 0;
                *(&v261 + 1) = 0xE000000000000000;
                DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
                getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v261, *(&v261 + 1), &v258);
                OUTLINED_FUNCTION_62_11();

                *(v93 + 4) = v91;
                *(v93 + 12) = 2112;
                *(v93 + 14) = v92;
                v94 = v241;
                *v241 = v85;
                v95 = v92;
                v96 = v249;
                _os_log_impl(&dword_0, v249, v244, "%s referenceResolution find a position reference for person:%@", v93, 0x16u);
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v94, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                OUTLINED_FUNCTION_8();

                __swift_destroy_boxed_opaque_existential_1(v243);
                OUTLINED_FUNCTION_8();

                v89 = v92;
                OUTLINED_FUNCTION_8();
              }

              else
              {
              }

              v251 = v89;
              v120 = type metadata accessor for SiriPhoneContactImpl(0);
              swift_allocObject();
              v121 = SiriPhoneContactImpl.init()();
              *&v261 = v121;

              specialized SiriPhoneContact.update(person:)();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin04SiriD7Contact_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin04SiriD7Contact_pGMR);
              v122 = swift_allocObject();
              *(v122 + 16) = xmmword_424FD0;
              *(v122 + 56) = v120;
              *(v122 + 64) = &protocol witness table for SiriPhoneContactImpl;
              *(v122 + 32) = v121;
              v123 = v248;
              v248[3] = &type metadata for PhoneCallNLv4Intent;
              v123[4] = &protocol witness table for PhoneCallNLv4Intent;
              OUTLINED_FUNCTION_50_1();
              v124 = swift_allocObject();
              *v123 = v124;
              OUTLINED_FUNCTION_45_11(v124);

              OUTLINED_FUNCTION_8_48();
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v267, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
              v125 = OUTLINED_FUNCTION_3_59();
              v126(v125);
              *(v124 + 16) = _swiftEmptyArrayStorage;
              *(v124 + 24) = v122;
              *(v124 + 72) = 2;
              *(v124 + 80) = 0;
              *(v124 + 88) = 0x1123030905050204;
              *(v124 + 96) = 518;
              *(v124 + 104) = _swiftEmptyArrayStorage;
              *(v124 + 112) = _swiftEmptyArrayStorage;
              goto LABEL_76;
            }

            outlined init with copy of ButtonConfigurationModel?(&v264 + 8, &v258, &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMR);
            if (v259)
            {
              outlined init with take of SPHConversation(&v258, &v261);
              v107 = v248;
              if (one-time initialization token for siriPhone != -1)
              {
                OUTLINED_FUNCTION_0_6();
                swift_once();
              }

              v108 = type metadata accessor for Logger();
              __swift_project_value_buffer(v108, static Logger.siriPhone);
              _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_1();
              v109 = Logger.logObject.getter();
              LODWORD(v251) = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v109, v251))
              {
                v249 = v109;
                OUTLINED_FUNCTION_21_21();
                v110 = swift_slowAlloc();
                OUTLINED_FUNCTION_24_19();
                v270 = swift_slowAlloc();
                *v110 = 136315394;
                if (one-time initialization token for logPrefix != -1)
                {
                  OUTLINED_FUNCTION_0_69();
                  swift_once();
                }

                v256 = 0;
                v257 = 0xE000000000000000;
                DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
                getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v256, v257, &v270);
                OUTLINED_FUNCTION_35_12();

                *(v110 + 4) = v58;
                *(v110 + 12) = 2080;
                v111 = v260;
                __swift_project_boxed_opaque_existential_1(&v258, v259);
                v112 = OUTLINED_FUNCTION_64();
                v114 = v113(v112, v111);
                if (v115)
                {
                  v116 = v114;
                }

                else
                {
                  v116 = 0;
                }

                if (v115)
                {
                  v117 = v115;
                }

                else
                {
                  v117 = 0xE000000000000000;
                }

                __swift_destroy_boxed_opaque_existential_1(&v258);
                v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, &v270);

                *(v110 + 14) = v118;
                v119 = v249;
                _os_log_impl(&dword_0, v249, v251, "%s referenceResolution find a position reference for app:%s", v110, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_8();

                OUTLINED_FUNCTION_8();

                v107 = v248;
              }

              else
              {

                __swift_destroy_boxed_opaque_existential_1(&v258);
              }

              v107[3] = &type metadata for PhoneCallNLv4Intent;
              v107[4] = &protocol witness table for PhoneCallNLv4Intent;
              OUTLINED_FUNCTION_50_1();
              v135 = swift_allocObject();
              *v107 = v135;
              _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_1();

              OUTLINED_FUNCTION_40_14();

              __swift_destroy_boxed_opaque_existential_1(&v261);
              OUTLINED_FUNCTION_8_48();
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v267, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
              v136 = OUTLINED_FUNCTION_3_59();
              v137(v136);
              v135[2] = _swiftEmptyArrayStorage;
              v135[3] = _swiftEmptyArrayStorage;
              OUTLINED_FUNCTION_44_11();
              OUTLINED_FUNCTION_43_15(4.01271014e-226);
              v135[13] = _swiftEmptyArrayStorage;
              v135[14] = _swiftEmptyArrayStorage;
              goto LABEL_76;
            }

            OUTLINED_FUNCTION_8_48();
            v59 = &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMd;
            v60 = &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMR;
            v61 = &v258;
          }

          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v61, v59, v60);
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v62 = type metadata accessor for Logger();
          __swift_project_value_buffer(v62, static Logger.siriPhone);
          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v63, v64))
          {
            OUTLINED_FUNCTION_13_14();
            v65 = swift_slowAlloc();
            OUTLINED_FUNCTION_12_17();
            v249 = swift_slowAlloc();
            *&v261 = v249;
            v251 = v65;
            LODWORD(v65->isa) = 136315138;
            if (one-time initialization token for logPrefix != -1)
            {
              OUTLINED_FUNCTION_0_69();
              swift_once();
            }

            OUTLINED_FUNCTION_9_41();
            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v66, v67, v68, v69);
            OUTLINED_FUNCTION_23_16();
            OUTLINED_FUNCTION_49_11();

            *(&v251->isa + 4) = &static NLv4Transformer.logPrefix;
            OUTLINED_FUNCTION_70_3(&dword_0, v70, v71, "%s referenceResolution find a position reference but can't be resolved, return an empty NL intent");
            __swift_destroy_boxed_opaque_existential_1(v249);
            OUTLINED_FUNCTION_8();

            OUTLINED_FUNCTION_8();
          }

          v72 = v248;
          v248[3] = &type metadata for PhoneCallNLv4Intent;
          v72[4] = &protocol witness table for PhoneCallNLv4Intent;
          OUTLINED_FUNCTION_50_1();
          v73 = swift_allocObject();
          *v72 = v73;
          OUTLINED_FUNCTION_45_11(v73);

          OUTLINED_FUNCTION_40_14();

          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v267, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
          v74 = OUTLINED_FUNCTION_3_59();
          v75(v74);
          v73[2] = _swiftEmptyArrayStorage;
          v73[3] = _swiftEmptyArrayStorage;
          OUTLINED_FUNCTION_44_11();
          OUTLINED_FUNCTION_43_15(4.01271014e-226);
          v73[13] = v76;
          v73[14] = v76;
LABEL_76:

          goto LABEL_8;
        }

LABEL_43:

        v78 = static Transformer<>.findNextVoicemailTask(usoTask:)(v77, &type metadata accessor for UsoTask_skipForward_uso_NoEntity);

        if (v78)
        {

          v79 = v248;
          v80 = 2;
LABEL_47:
          static Transformer<>.buildNLIntentByVoicemailVerb(phoneCallUsoTask:voiceMailVerb:)(v80, v79);

          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v267, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
          v83 = OUTLINED_FUNCTION_3_59();
          v84(v83);
          goto LABEL_76;
        }

        v82 = static Transformer<>.findNextVoicemailTask(usoTask:)(v81, &type metadata accessor for UsoTask_repeat_uso_NoEntity);

        if (v82)
        {

          v79 = v248;
          v80 = 1;
          goto LABEL_47;
        }

        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v97 = type metadata accessor for Logger();
        v241 = __swift_project_value_buffer(v97, static Logger.siriPhone);
        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v98, v99))
        {
          v242 = v98;
          v239 = v99;
          OUTLINED_FUNCTION_13_14();
          v100 = swift_slowAlloc();
          OUTLINED_FUNCTION_12_17();
          v101 = swift_slowAlloc();
          *&v261 = v101;
          v240 = v100;
          *v100 = 136315138;
          if (one-time initialization token for logPrefix != -1)
          {
            OUTLINED_FUNCTION_0_69();
            swift_once();
          }

          OUTLINED_FUNCTION_9_41();
          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v102, v103, v104, v105);
          v238 = OUTLINED_FUNCTION_23_16();

          v106 = v240;
          *(v240 + 1) = v238;
          _os_log_impl(&dword_0, v242, v239, "%s ReferenceResolution can't find any item, proceeding to a regular check", v106, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v101);
          OUTLINED_FUNCTION_8();

          OUTLINED_FUNCTION_8();
        }

        else
        {
        }

        if (one-time initialization token for transformer != -1)
        {
          OUTLINED_FUNCTION_6_51();
          swift_once();
        }

        v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH10AudioRouteOSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH10AudioRouteOSgGMR);
        v242 = OUTLINED_FUNCTION_29_20(v127, static Transformer<>.transformer);
        *&v264 = v247;

        v128 = OUTLINED_FUNCTION_28_16();
        (v242)(v128);
        v255 = 0;

        LODWORD(v240) = v261;
        if (one-time initialization token for transformer != -1)
        {
          swift_once();
        }

        v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH4VerbOSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH4VerbOSgGMR);
        v130 = OUTLINED_FUNCTION_29_20(v129, static Transformer<>.transformer);
        OUTLINED_FUNCTION_73_4(v130);
        v131 = OUTLINED_FUNCTION_28_16();
        (v242)(v131);
        v255 = 0;

        v239 = v261;
        if (one-time initialization token for transformer != -1)
        {
          swift_once();
        }

        v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin9VoiceMailO0lM4VerbOSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin9VoiceMailO0lM4VerbOSgGMR);
        v133 = OUTLINED_FUNCTION_29_20(v132, static Transformer<>.transformer);
        OUTLINED_FUNCTION_73_4(v133);
        v134 = OUTLINED_FUNCTION_28_16();
        (v242)(v134);
        v255 = 0;

        v138 = v261;
        v139 = v239;
        if (v239 == 17 && v261 == 6)
        {

          type metadata accessor for TransformationError();
          OUTLINED_FUNCTION_19_24();
          v145 = lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(v143, v144, &protocol conformance descriptor for TransformationError);
          v255 = OUTLINED_FUNCTION_61_12(v145);
          v250 = v146;
          OUTLINED_FUNCTION_9_41();
          _StringGuts.grow(_:)(77);
          if (one-time initialization token for logPrefix != -1)
          {
            OUTLINED_FUNCTION_0_69();
            swift_once();
          }

          v147 = OUTLINED_FUNCTION_63_7();
          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v147, v148, v149, v150);
          OUTLINED_FUNCTION_48_14(" UsoTask_CodegenConverter convert failed for USO Task: ");
          OUTLINED_FUNCTION_40_14();

          v151 = UsoTask.verbString.getter();
          v153 = v152;

          v154._countAndFlagsBits = v151;
          v154._object = v153;
          String.append(_:)(v154);

          v155._countAndFlagsBits = &static CallRegistrationManager.shared + 3;
          v155._object = 0x800000000045CA80;
          String.append(_:)(v155);
          v156 = *(&v264 + 1);
          v157 = v250;
          v250->isa = v264;
          v157[1].isa = v156;
          OUTLINED_FUNCTION_40();
          (*(v158 + 104))();
          swift_willThrow();

          goto LABEL_97;
        }

        OUTLINED_FUNCTION_68_5();

        static UsoTask_CodegenConverter.convert(task:)();

        LODWORD(v242) = v138;
        static Transformer<>.incomingCallTransformerOutput(phoneCallVerb:voicemailVerb:phoneCallUsoTask:audioRoute:)(v139, v138, v240, &v261);

        if (*(&v262 + 1))
        {
          OUTLINED_FUNCTION_68_5();

          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v258, &_sypSgMd, &_sypSgMR);
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v267, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
          v141 = OUTLINED_FUNCTION_3_59();
          v142(v141);
          outlined init with take of SPHConversation(&v261, &v264);
          outlined init with take of SPHConversation(&v264, v248);
          goto LABEL_76;
        }

        v161 = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v261, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
        OUTLINED_FUNCTION_78_6(v161, v162, &_sypSgMd, &_sypSgMR);
        if (*(&v265 + 1))
        {
          type metadata accessor for UsoTask_join_common_PhoneCall();
          OUTLINED_FUNCTION_17_23();
          OUTLINED_FUNCTION_31_15();
          v163 = swift_dynamicCast();
          if (v163)
          {

            static NLv4JoinTransformer.transform(joinTask:)(v248);
            OUTLINED_FUNCTION_40_14();

            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v258, &_sypSgMd, &_sypSgMR);
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v267, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
            v165 = OUTLINED_FUNCTION_3_59();
            v166(v165);
            goto LABEL_76;
          }
        }

        else
        {
          v163 = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v264, &_sypSgMd, &_sypSgMR);
        }

        OUTLINED_FUNCTION_78_6(v163, v164, &_sypSgMd, &_sypSgMR);
        if (*(&v265 + 1))
        {
          type metadata accessor for UsoTask_update_common_PhoneCall();
          OUTLINED_FUNCTION_17_23();
          OUTLINED_FUNCTION_31_15();
          v167 = swift_dynamicCast();
          if (v167)
          {

            _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_1();
            NLv4UpdateTransformer.transform(updateTask:)(v248);
LABEL_109:
            OUTLINED_FUNCTION_68_5();

            outlined destroy of NLv4UpdateTransformer(&v264);
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v258, &_sypSgMd, &_sypSgMR);
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v267, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
            v171 = OUTLINED_FUNCTION_3_59();
            v172(v171);
            goto LABEL_76;
          }
        }

        else
        {
          v167 = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v264, &_sypSgMd, &_sypSgMR);
        }

        OUTLINED_FUNCTION_78_6(v167, v168, &_sypSgMd, &_sypSgMR);
        if (*(&v265 + 1))
        {
          type metadata accessor for UsoTask_update_common_Communication();
          OUTLINED_FUNCTION_17_23();
          OUTLINED_FUNCTION_31_15();
          v169 = swift_dynamicCast();
          if (v169)
          {

            _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_1();
            NLv4UpdateTransformer.transform(updateTask:)(v248);
            goto LABEL_109;
          }
        }

        else
        {
          v169 = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v264, &_sypSgMd, &_sypSgMR);
        }

        if (v239 == 17)
        {

          type metadata accessor for TransformationError();
          OUTLINED_FUNCTION_19_24();
          v175 = lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(v173, v174, &protocol conformance descriptor for TransformationError);
          v255 = OUTLINED_FUNCTION_61_12(v175);
          v250 = v176;
          OUTLINED_FUNCTION_9_41();
          _StringGuts.grow(_:)(83);
          if (one-time initialization token for logPrefix != -1)
          {
            OUTLINED_FUNCTION_0_69();
            swift_once();
          }

          v177 = OUTLINED_FUNCTION_63_7();
          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v177, v178, v179, v180);
          OUTLINED_FUNCTION_48_14(" UsoTask_CodegenConverter convert failed for USO Task: ");
          OUTLINED_FUNCTION_40_14();

          v181 = UsoTask.verbString.getter();
          v183 = v182;

          v184._countAndFlagsBits = v181;
          v184._object = v183;
          String.append(_:)(v184);

          v185._countAndFlagsBits = &static Transformer<>.logPrefix + 1;
          v185._object = 0x800000000045CAA0;
          String.append(_:)(v185);
          v186 = *(&v264 + 1);
          v187 = v250;
          v250->isa = v264;
          v187[1].isa = v186;
          OUTLINED_FUNCTION_40();
          (*(v188 + 104))();
          swift_willThrow();

          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v258, &_sypSgMd, &_sypSgMR);
LABEL_97:
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v267, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
          v159 = OUTLINED_FUNCTION_3_59();
          v160(v159);
          goto LABEL_76;
        }

        OUTLINED_FUNCTION_78_6(v169, v170, &_sypSgMd, &_sypSgMR);
        if (*(&v265 + 1))
        {
          type metadata accessor for UsoTask_noVerb_common_PhoneNumber();
          OUTLINED_FUNCTION_17_23();
          OUTLINED_FUNCTION_31_15();
          if (swift_dynamicCast())
          {
            v189 = v261;
            if (one-time initialization token for transformer != -1)
            {
              OUTLINED_FUNCTION_5_52();
              swift_once();
            }

            v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology33UsoTask_noVerb_common_PhoneNumberCAD0eF0CSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology33UsoTask_noVerb_common_PhoneNumberCAD0eF0CSgGMR);
            OUTLINED_FUNCTION_29_20(v190, static Transformer<>.transformer);
            *&v264 = v189;
            v191 = OUTLINED_FUNCTION_28_16();
            v192(v191);
            v255 = 0;

            v238 = v261;
            if (v261)
            {

              v223 = Logger.logObject.getter();
              LODWORD(v236) = static os_log_type_t.debug.getter();
              v237 = v223;
              if (os_log_type_enabled(v223, v236))
              {
                OUTLINED_FUNCTION_21_21();
                v224 = swift_slowAlloc();
                OUTLINED_FUNCTION_24_19();
                v235 = swift_slowAlloc();
                *&v261 = v235;
                *v224 = 136315394;
                if (one-time initialization token for logPrefix != -1)
                {
                  OUTLINED_FUNCTION_0_69();
                  swift_once();
                }

                OUTLINED_FUNCTION_9_41();
                DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v225, v226, v227, v228);
                v233 = OUTLINED_FUNCTION_23_16();

                v234 = v224;
                *(v224 + 4) = v233;
                *(v224 + 12) = 2080;

                v233 = UsoTask.description.getter();
                v230 = v229;

                v231 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v233, v230, &v261);

                v232 = v234;
                *(v234 + 14) = v231;
                _os_log_impl(&dword_0, v237, v236, "%s Obtained a verbless phone number task and transformed to common call task: %s", v232, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_8();

                OUTLINED_FUNCTION_8();
              }

LABEL_122:
              _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_1();
              v193 = swift_allocObject();
              outlined init with take of SPHConversation(&v264, v193 + 16);
              *(v193 + 56) = v239;
              *(v193 + 64) = v250;
              *(v193 + 72) = v243 & 1;
              type metadata accessor for UsoTask();

              Transformer.init(transform:)();
              v194 = Transformer.transform.getter();
              *&v261 = v238;

              v195 = v255;
              v194(&v264, &v261);
              v255 = v195;
              if (v195)
              {
                v235 = 0;

                v196 = Logger.logObject.getter();
                LODWORD(v241) = static os_log_type_t.error.getter();
                v250 = v196;
                if (os_log_type_enabled(v196, v241))
                {
                  OUTLINED_FUNCTION_21_21();
                  v197 = swift_slowAlloc();
                  OUTLINED_FUNCTION_24_19();
                  v237 = swift_slowAlloc();
                  *&v261 = v237;
                  v243 = v197;
                  *v197 = 136315394;
                  if (one-time initialization token for logPrefix != -1)
                  {
                    OUTLINED_FUNCTION_0_69();
                    swift_once();
                  }

                  OUTLINED_FUNCTION_63_7();
                  OUTLINED_FUNCTION_9_41();
                  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v198, v199, v200, v201);
                  OUTLINED_FUNCTION_23_16();
                  OUTLINED_FUNCTION_35_12();

                  v202 = v243;
                  *(v243 + 4) = v194;
                  *(v202 + 6) = 2080;

                  v203 = UsoTask.baseEntityAsString.getter();
                  v205 = v204;

                  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v203, v205, &v261);
                  OUTLINED_FUNCTION_64();

                  v206 = v243;
                  *(v243 + 14) = v203;
                  v207 = v250;
                  _os_log_impl(&dword_0, v250, v241, "%s transformer cannot transform %s", v206, 0x16u);
                  swift_arrayDestroy();
                  OUTLINED_FUNCTION_8();

                  OUTLINED_FUNCTION_8();
                }

                else
                {
                }

                v236 = 0;
                v237 = 0;
                v250 = 0;
                v243 = 0;
                v208 = _swiftEmptyArrayStorage;
              }

              else
              {

                v236 = *(&v264 + 1);
                v208 = v264;
                v250 = *(&v265 + 1);
                v237 = v265;
                v243 = v266;
                if (BYTE8(v266) == 1)
                {

                  v209 = Logger.logObject.getter();
                  LODWORD(v250) = static os_log_type_t.debug.getter();
                  v251 = v209;
                  if (os_log_type_enabled(v209, v250))
                  {
                    OUTLINED_FUNCTION_13_14();
                    v210 = swift_slowAlloc();
                    OUTLINED_FUNCTION_12_17();
                    v243 = swift_slowAlloc();
                    *&v261 = v243;
                    v244 = v210;
                    *v210 = 136315138;
                    if (one-time initialization token for logPrefix != -1)
                    {
                      OUTLINED_FUNCTION_0_69();
                      swift_once();
                    }

                    OUTLINED_FUNCTION_63_7();
                    OUTLINED_FUNCTION_9_41();
                    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v211, v212, v213, v214);
                    OUTLINED_FUNCTION_23_16();
                    OUTLINED_FUNCTION_35_12();

                    v215 = v244;
                    *(v244 + 4) = v194;
                    v216 = v251;
                    _os_log_impl(&dword_0, v251, v250, "%s found change contact request, return NL as confirmation=no", v215, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v243);
                    OUTLINED_FUNCTION_8();

                    OUTLINED_FUNCTION_8();
                  }

                  else
                  {
                  }

                  static PhoneCallNLv4Intent.getConfirmationNLIntent(phoneCallConfirmation:)(1, v248);

                  goto LABEL_142;
                }

                v235 = v255;
              }

              v217 = v235;
              v218 = UsoTask.convertToCommonPhoneCallEntity()();
              v255 = v217;
              if (v217)
              {

                v219 = 0;
                v255 = 0;
              }

              else
              {
                v219 = v218;
              }

              v241 = UsoTask.usoAssociatedApp.getter();

              if (v219)
              {

                dispatch thunk of UsoEntity_common_PhoneCall.mode.getter();
                OUTLINED_FUNCTION_64();

                UsoEntity_common_PhoneCallMode.phoneCallAVMode.getter();
                LODWORD(v235) = v220;
              }

              else
              {
                LODWORD(v235) = 2;
              }

              v234 = v208;
              v268[0] = v208;
              v268[1] = v236;
              v268[2] = v237;
              v268[3] = v250;
              v268[4] = v243;
              v269 = 0;
              static Transformer<>.createNLIntent(app:phoneCallAVMode:phoneCallAttributes:targetContacts:commonPhoneCall:audioRoute:phoneCallVerb:voicemailVerb:referenceResolver:previousNLIntent:)(v241, v235, v244, v268, v219, v240, v239, v242, v248, v251, v267);

LABEL_142:

              (v249[1].isa)(v10, v6);
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v258, &_sypSgMd, &_sypSgMR);
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v267, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
              v221 = OUTLINED_FUNCTION_3_59();
              v222(v221);
              goto LABEL_76;
            }
          }
        }

        else
        {
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v264, &_sypSgMd, &_sypSgMR);
        }

        v238 = v247;
        goto LABEL_122;
      }
    }

    else
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v264, &_sypSgMd, &_sypSgMR);
    }

    static Transformer<>.convertPhoneCallPositionToNoVerbPosition(task:)();
    OUTLINED_FUNCTION_35_12();

    if (!&type metadata for Any)
    {
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  v24 = a4;
  v25 = 0;
LABEL_7:
  static PhoneCallNLv4Intent.getConfirmationNLIntent(phoneCallConfirmation:)(v25, v24);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v267, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  v26 = OUTLINED_FUNCTION_3_59();
  v27(v26);
LABEL_8:
  Signpost.OpenSignpost.end()();
}

void UserDialogActParse.isCallToOffDeviceContactEntity(useEntitySpans:referenceResolver:)()
{
  OUTLINED_FUNCTION_66();
  v203 = v1;
  v3 = v2;
  v5 = v4;
  v223 = type metadata accessor for IdentifierAppBundle();
  OUTLINED_FUNCTION_7();
  v216 = v6;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_12_5();
  v210 = v8 - v9;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_42_13();
  v227 = type metadata accessor for IdentifierNamespace();
  OUTLINED_FUNCTION_7();
  v213 = v11;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_12_5();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v219 = (&v186 - v17);
  v226 = type metadata accessor for Google_Protobuf_StringValue();
  OUTLINED_FUNCTION_7();
  v215 = v18;
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_12_5();
  v220 = v20 - v21;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v22);
  v218 = &v186 - v23;
  v24 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  OUTLINED_FUNCTION_7();
  v26 = v25;
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_12_5();
  v204 = v28 - v29;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v30);
  v225 = &v186 - v31;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v32);
  v205 = &v186 - v33;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v34);
  v224 = &v186 - v35;
  static Signpost.begin(_:)();
  v37 = v36;
  v39 = v38;
  v222 = v40;
  v221 = v41;
  static UsoTask_CodegenConverter.convert(task:)();
  if (!*(&v232 + 1))
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v231, &_sypSgMd, &_sypSgMR);
    goto LABEL_156;
  }

  type metadata accessor for UsoTask_call_common_PhoneCall();
  OUTLINED_FUNCTION_31_15();
  if (swift_dynamicCast())
  {
    v195 = v5;
    v42 = *&v230[0];

    dispatch thunk of Uso_VerbTemplate_Target.target.getter();
    if (!v231 || (v196 = v37, dispatch thunk of UsoEntity_common_PhoneCall.recipients.getter(), OUTLINED_FUNCTION_35_12(), , !v37))
    {

      goto LABEL_156;
    }

    v201 = v15;
    v188 = v3;
    v43 = specialized Array.count.getter(v37);
    v44 = _swiftEmptyArrayStorage;
    v192 = v39;
    v194 = v42;
    v202 = v24;
    v228 = v37;
    v208 = _swiftEmptyArrayStorage;
    if (v43)
    {
      v45 = v43;
      *&v230[0] = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43 & ~(v43 >> 63), 0);
      if (v45 < 0)
      {
        goto LABEL_164;
      }

      v46 = 0;
      v44 = *&v230[0];
      v47 = v37 & 0xC000000000000001;
      do
      {
        if (v47)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        dispatch thunk of CodeGenListEntry.entry.getter();
        if (v231)
        {
          CodeGenBase.entity.getter();
          OUTLINED_FUNCTION_35_12();
        }

        static UsoEntity_CodeGenConverter.convert(entity:)();

        *&v230[0] = v44;
        v49 = v44[2];
        v48 = v44[3];
        if (v49 >= v48 >> 1)
        {
          v52 = OUTLINED_FUNCTION_76(v48);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v52, v49 + 1, 1);
          v44 = *&v230[0];
        }

        ++v46;
        v44[2] = v49 + 1;
        v50 = &v44[4 * v49];
        v51 = v232;
        *(v50 + 2) = v231;
        *(v50 + 3) = v51;
        v37 = v228;
      }

      while (v45 != v46);
      v39 = v192;
    }

    v53 = v44[2];
    if (v53)
    {
      v54 = 0;
      LOBYTE(v42) = v44 + 32;
      do
      {
        if (v54 >= v44[2])
        {
          goto LABEL_159;
        }

        v55 = OUTLINED_FUNCTION_53_14();
        outlined init with copy of ButtonConfigurationModel?(v55, v56, v57, &_sypSgMR);
        v230[0] = v231;
        v230[1] = v232;
        if (*(&v232 + 1))
        {
          type metadata accessor for UsoEntity_common_Group();
          OUTLINED_FUNCTION_31_15();
          if (swift_dynamicCast())
          {

            OUTLINED_FUNCTION_37_15();

            goto LABEL_69;
          }
        }

        else
        {
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v230, &_sypSgMd, &_sypSgMR);
        }

        ++v54;
        LOBYTE(v42) = v42 + 32;
      }

      while (v53 != v54);
    }

    dispatch thunk of Uso_VerbTemplate_Target.target.getter();

    v58 = v231;
    if (v231)
    {

      v59 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

      v60 = v202;
      if (v59)
      {
        UsoEntity_common_App.applicationId.getter();
        v62 = v61;
        v64 = v63;

        if (v64)
        {

          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v65 = type metadata accessor for Logger();
          __swift_project_value_buffer(v65, static Logger.siriPhone);
          OUTLINED_FUNCTION_11_0();

          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.debug.getter();

          if (!os_log_type_enabled(v66, v67))
          {

            goto LABEL_155;
          }

          v68 = v62;
          v228 = v58;
          OUTLINED_FUNCTION_21_21();
          v69 = swift_slowAlloc();
          OUTLINED_FUNCTION_24_19();
          *&v230[0] = swift_slowAlloc();
          *v69 = 136315394;
          if (one-time initialization token for logPrefix != -1)
          {
            OUTLINED_FUNCTION_0_69();
            swift_once();
          }

          v70 = static NLv4Transformer.logPrefix;
          OUTLINED_FUNCTION_16_32();

          OUTLINED_FUNCTION_18_17();

          OUTLINED_FUNCTION_36_15();
          OUTLINED_FUNCTION_49_11();

          *(v69 + 4) = v70;
          *(v69 + 12) = 2080;
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v64, v230);
          OUTLINED_FUNCTION_11_0();

          *(v69 + 14) = v59;
          OUTLINED_FUNCTION_41_14();
          _os_log_impl(v71, v72, v73, v74, v75, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_8();

          OUTLINED_FUNCTION_8();

          OUTLINED_FUNCTION_37_15();
LABEL_69:

          goto LABEL_156;
        }
      }
    }

    else
    {
      v60 = v202;
    }

    if (!v203)
    {
      goto LABEL_94;
    }

    v191 = *(v203 + 16);
    if (!v191)
    {
      goto LABEL_94;
    }

    v76 = 0;
    v78 = *(v26 + 16);
    v77 = v26 + 16;
    v217 = v78;
    v79 = (*(v77 + 64) + 32) & ~*(v77 + 64);
    v80 = *(v77 + 56);
    v215 += 8;
    v199 = enum case for IdentifierNamespace.nsItemId(_:);
    v214 = v213 + 104;
    v213 += 8;
    v198 = enum case for IdentifierAppBundle.abContacts(_:);
    v207 = (v216 + 104);
    v206 = (v216 + 8);
    v197 = enum case for IdentifierAppBundle.abApplications(_:);
    v209 = v77 - 8;
    v200 = v77;
    v193 = (v77 + 16);
    v189 = v79;
    v187 = v203 + v79;
    v190 = _swiftEmptyArrayStorage;
    v81 = v224;
    v216 = v80;
LABEL_42:
    v82 = ~v76;
    v83 = v187 + v80 * v76;
    v84 = v191 - v76;
    if (v191 != v76)
    {
      do
      {
        v212 = v82;
        v211 = v83;
        v217(v81);
        v85 = v218;
        Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
        v86 = Google_Protobuf_StringValue.value.getter();
        v88 = v87;
        OUTLINED_FUNCTION_30_0();
        v89(v85, v226);
        OUTLINED_FUNCTION_30_0();
        v90 = v219;
        v91 = v227;
        v92(v219, v199, v227);
        IdentifierNamespace.rawValue.getter();
        OUTLINED_FUNCTION_69_7();
        OUTLINED_FUNCTION_30_0();
        v93(v90, v91);
        if (v86 == v39 && v88 == v90)
        {
        }

        else
        {
          v95 = OUTLINED_FUNCTION_26_16();

          if ((v95 & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        v96 = Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter();
        v98 = v97;
        v99 = *v207;
        v100 = v223;
        (*v207)(v0, v198, v223);
        IdentifierAppBundle.rawValue.getter();
        OUTLINED_FUNCTION_69_7();
        v101 = *v206;
        (*v206)(v0, v100);
        if (v96 == v39 && v98 == v0)
        {
          goto LABEL_63;
        }

        v103 = OUTLINED_FUNCTION_26_16();

        v81 = v224;
        if (v103)
        {
          goto LABEL_64;
        }

        v104 = v0;
        v105 = Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter();
        v107 = v106;
        v108 = v210;
        v109 = v223;
        v99(v210, v197, v223);
        IdentifierAppBundle.rawValue.getter();
        OUTLINED_FUNCTION_69_7();
        v101(v108, v109);
        if (v105 == v39 && v107 == v108)
        {
          v0 = v104;
LABEL_63:
          v81 = v224;

LABEL_64:
          v113 = *v193;
          (*v193)(v205, v81, v202);
          v114 = v190;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v231 = v114;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_75_5(v114[2]);
            v114 = v231;
          }

          v60 = v114[2];
          v116 = v114[3];
          if (v60 >= v116 >> 1)
          {
            v117 = OUTLINED_FUNCTION_76(v116);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v117, v60 + 1, 1);
            v114 = v231;
          }

          v76 = -v212;
          v114[2] = v60 + 1;
          v190 = v114;
          v80 = v216;
          OUTLINED_FUNCTION_55_13();
          v113();
          goto LABEL_42;
        }

        v111 = OUTLINED_FUNCTION_26_16();

        v0 = v104;
        v81 = v224;
        if (v111)
        {
          goto LABEL_64;
        }

LABEL_60:
        OUTLINED_FUNCTION_30_0();
        v60 = v202;
        v112(v81, v202);
        v82 = v212 - 1;
        v80 = v216;
        v83 = v211 + v216;
        --v84;
      }

      while (v84);
    }

    v118 = 0;
    *&v230[0] = v190;
    LODWORD(v223) = enum case for IdentifierNamespace.nsPersonRelationship(_:);
    v119 = (v203 + v189);
    v219 = _swiftEmptyArrayStorage;
    v120 = v200;
    v218 = (v203 + v189);
    v121 = v201;
    while (1)
    {
      v122 = ~v118;
      v123 = &v119[v80 * v118];
      v124 = v191 - v118;
      if (v191 == v118)
      {
        break;
      }

      while (1)
      {
        v224 = v122;
        v125 = v60;
        v126 = v120;
        (v217)(v225, v123, v60);
        v127 = v220;
        Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
        v128 = Google_Protobuf_StringValue.value.getter();
        v130 = v129;
        OUTLINED_FUNCTION_30_0();
        v131(v127, v226);
        OUTLINED_FUNCTION_30_0();
        v132 = v227;
        v133(v121, v223, v227);
        v134 = IdentifierNamespace.rawValue.getter();
        v136 = v135;
        OUTLINED_FUNCTION_30_0();
        v137(v121, v132);
        if (v128 == v134 && v130 == v136)
        {
          break;
        }

        v139 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v139)
        {
          goto LABEL_80;
        }

        OUTLINED_FUNCTION_30_0();
        v60 = v125;
        v140(v225, v125);
        v122 = v224 - 1;
        v123 += v216;
        --v124;
        v120 = v126;
        if (!v124)
        {
          goto LABEL_85;
        }
      }

LABEL_80:
      v141 = *v193;
      (*v193)(v204, v225, v125);
      v142 = v219;
      v143 = swift_isUniquelyReferenced_nonNull_native();
      *&v231 = v142;
      v120 = v126;
      if ((v143 & 1) == 0)
      {
        OUTLINED_FUNCTION_75_5(v142[2]);
        v142 = v231;
      }

      v60 = v142[2];
      v144 = v142[3];
      if (v60 >= v144 >> 1)
      {
        v145 = OUTLINED_FUNCTION_76(v144);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v145, v60 + 1, 1);
        v142 = v231;
      }

      v118 = -v224;
      v142[2] = v60 + 1;
      v219 = v142;
      v80 = v216;
      OUTLINED_FUNCTION_55_13();
      v141();
      v119 = v218;
    }

LABEL_85:
    specialized Array.append<A>(contentsOf:)(v219);
    if (*(*&v230[0] + 16))
    {

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v146 = type metadata accessor for Logger();
      __swift_project_value_buffer(v146, static Logger.siriPhone);
      v147 = Logger.logObject.getter();
      v148 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v147, v148))
      {
        OUTLINED_FUNCTION_21_21();
        v149 = swift_slowAlloc();
        OUTLINED_FUNCTION_24_19();
        v229[0] = swift_slowAlloc();
        *v149 = 136315394;
        if (one-time initialization token for logPrefix != -1)
        {
          OUTLINED_FUNCTION_0_69();
          swift_once();
        }

        v150 = static NLv4Transformer.logPrefix;
        OUTLINED_FUNCTION_16_32();

        OUTLINED_FUNCTION_18_17();

        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v231, *(&v231 + 1), v229);
        OUTLINED_FUNCTION_49_11();

        *(v149 + 4) = v150;
        *(v149 + 12) = 2080;

        v151 = Array.description.getter();
        v153 = v152;

        v154 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v151, v153, v229);

        *(v149 + 14) = v154;
        _os_log_impl(&dword_0, v147, v148, "%s returning false. Found identifiers %s", v149, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_37_15();

        goto LABEL_156;
      }

LABEL_155:
      OUTLINED_FUNCTION_37_15();

      goto LABEL_156;
    }

    v37 = v228;
LABEL_94:
    *&v231 = _swiftEmptyArrayStorage;
    v42 = specialized Array.count.getter(v37);
    for (i = 0; ; ++i)
    {
      while (1)
      {
        if (v42 == i)
        {

          if (v195)
          {
            v157 = v208;
            v42 = specialized Array.count.getter(v208);
            v158 = 0;
            v159 = v157 & 0xC000000000000001;
            v160 = v157 & 0xFFFFFFFFFFFFFF8;
            do
            {
              if (v42 == v158)
              {
                v162 = OUTLINED_FUNCTION_51_14();
                goto LABEL_120;
              }

              if (v159)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v158 >= *(&dword_10 + (v157 & 0xFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_163;
                }
              }

              if (__OFADD__(v158, 1))
              {
                goto LABEL_162;
              }

              v161 = specialized UsoContactConvertible.isNameLikelyNonBusiness()();

              ++v158;
            }

            while ((v161 & 1) == 0);
            OUTLINED_FUNCTION_51_14();

            if (one-time initialization token for siriPhone != -1)
            {
              OUTLINED_FUNCTION_0_6();
              swift_once();
            }

            v167 = type metadata accessor for Logger();
            __swift_project_value_buffer(v167, static Logger.siriPhone);
            v168 = Logger.logObject.getter();
            v169 = static os_log_type_t.debug.getter();
            if (OUTLINED_FUNCTION_5_21(v169))
            {
              OUTLINED_FUNCTION_13_14();
              v170 = swift_slowAlloc();
              OUTLINED_FUNCTION_12_17();
              v171 = swift_slowAlloc();
              *&v230[0] = v171;
              *v170 = 136315138;
              if (one-time initialization token for logPrefix != -1)
              {
LABEL_166:
                OUTLINED_FUNCTION_0_69();
                swift_once();
              }

              goto LABEL_145;
            }
          }

          else
          {
            v162 = OUTLINED_FUNCTION_51_14();
            v159 = v162 & 0xC000000000000001;
            v160 = v162 & 0xFFFFFFFFFFFFFF8;
LABEL_120:
            v163 = specialized Array.count.getter(v162);
            v42 = v163;
            for (j = 0; ; ++j)
            {
              if (v42 == j)
              {
                if (v42)
                {
                  __chkstk_darwin(v163);
                  *(&v186 - 2) = v188;
                  LOBYTE(v42) = specialized Sequence.allSatisfy(_:)(partial apply for closure #8 in implicit closure #7 in UserDialogActParse.isCallToOffDeviceContactEntity(useEntitySpans:referenceResolver:), (&v186 - 4), v208);
                }

                else
                {
                  OUTLINED_FUNCTION_51_14();
                }

                if (one-time initialization token for siriPhone != -1)
                {
                  goto LABEL_165;
                }

                goto LABEL_149;
              }

              if (v159)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (j >= *(v160 + 16))
                {
                  goto LABEL_161;
                }
              }

              if (__OFADD__(j, 1))
              {
                goto LABEL_160;
              }

              if (dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter())
              {
                dispatch thunk of UsoEntity_common_ContactAddress.value.getter();
                v166 = v165;

                if (v166)
                {

                  if (dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter())
                  {
                    CodeGenBase.entity.getter();
                    OUTLINED_FUNCTION_11_0();
                  }

                  type metadata accessor for UsoEntity_common_PostalAddress();
                  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

                  if (!v231)
                  {
                    break;
                  }
                }
              }
            }

            OUTLINED_FUNCTION_51_14();

            if (one-time initialization token for siriPhone != -1)
            {
              OUTLINED_FUNCTION_0_6();
              swift_once();
            }

            v172 = type metadata accessor for Logger();
            __swift_project_value_buffer(v172, static Logger.siriPhone);
            v168 = Logger.logObject.getter();
            v173 = static os_log_type_t.debug.getter();
            if (!OUTLINED_FUNCTION_5_21(v173))
            {
              goto LABEL_146;
            }

            OUTLINED_FUNCTION_13_14();
            v170 = swift_slowAlloc();
            OUTLINED_FUNCTION_12_17();
            v171 = swift_slowAlloc();
            *&v230[0] = v171;
            *v170 = 136315138;
            if (one-time initialization token for logPrefix != -1)
            {
              goto LABEL_166;
            }

LABEL_145:
            v174 = static NLv4Transformer.logPrefix;
            OUTLINED_FUNCTION_16_32();

            OUTLINED_FUNCTION_47_14();

            OUTLINED_FUNCTION_36_15();
            OUTLINED_FUNCTION_62_11();

            *(v170 + 4) = v174;
            OUTLINED_FUNCTION_41_14();
            _os_log_impl(v175, v176, v177, v178, v179, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v171);
            OUTLINED_FUNCTION_8();

            OUTLINED_FUNCTION_8();
          }

LABEL_146:

          goto LABEL_155;
        }

        if ((v37 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_158;
          }
        }

        if (__OFADD__(i, 1))
        {
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
          __break(1u);
LABEL_165:
          OUTLINED_FUNCTION_0_6();
          swift_once();
LABEL_149:
          v180 = type metadata accessor for Logger();
          __swift_project_value_buffer(v180, static Logger.siriPhone);
          v181 = Logger.logObject.getter();
          v182 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v181, v182))
          {
            v183 = swift_slowAlloc();
            OUTLINED_FUNCTION_12_17();
            v184 = swift_slowAlloc();
            *&v230[0] = v184;
            *v183 = 136315394;
            if (one-time initialization token for logPrefix != -1)
            {
              OUTLINED_FUNCTION_0_69();
              swift_once();
            }

            v185 = static NLv4Transformer.logPrefix;
            OUTLINED_FUNCTION_16_32();

            OUTLINED_FUNCTION_18_17();

            OUTLINED_FUNCTION_36_15();
            OUTLINED_FUNCTION_49_11();

            *(v183 + 4) = v185;
            *(v183 + 12) = 1024;
            *(v183 + 14) = v42 & 1;
            _os_log_impl(&dword_0, v181, v182, "%s returning %{BOOL}d.", v183, 0x12u);
            __swift_destroy_boxed_opaque_existential_1(v184);
            OUTLINED_FUNCTION_8();

            OUTLINED_FUNCTION_8();

            OUTLINED_FUNCTION_37_15();
          }

          else
          {

            OUTLINED_FUNCTION_37_15();
          }

          goto LABEL_156;
        }

        dispatch thunk of CodeGenListEntry.entry.getter();
        if (*&v230[0])
        {
          break;
        }

LABEL_106:
        ++i;
      }

      UsoEntity_common_Agent.asCommonPerson()();
      OUTLINED_FUNCTION_34_0();

      if (!v60)
      {
        goto LABEL_106;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v156 = *(&dword_18 + (v231 & 0xFFFFFFFFFFFFFF8));
      if (*(&dword_10 + (v231 & 0xFFFFFFFFFFFFFF8)) >= v156 >> 1)
      {
        OUTLINED_FUNCTION_76(v156);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v208 = v231;
    }
  }

LABEL_156:
  Signpost.OpenSignpost.end()();

  OUTLINED_FUNCTION_65();
}

Swift::Bool __swiftcall UserDialogActParse.isRedirectBusinessCall()()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v55 = type metadata accessor for Google_Protobuf_StringValue();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v9 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_12_5();
  v52 = v11 - v12;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_42_13();
  if (!v2)
  {
    goto LABEL_33;
  }

  v15 = *(v2 + 16);
  if (!v15)
  {
    goto LABEL_33;
  }

  v16 = 0;
  v54 = *(v14 + 16);
  v17 = *(v14 + 72);
  v18 = (v4 + 8);
  v19 = (v14 + 8);
  v50 = (v14 + 32);
  v48 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20 = v2 + v48;
  v51 = _swiftEmptyArrayStorage;
  v49 = *(v2 + 16);
  v53 = v17;
  v47 = v2 + v48;
LABEL_4:
  v21 = ~v16;
  v22 = v20 + v17 * v16;
  v23 = v15 - v16;
  if (v15 != v16)
  {
    do
    {
      v54(v0, v22, v9);
      Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
      Google_Protobuf_StringValue.value.getter();
      OUTLINED_FUNCTION_69_7();
      (*v18)(v8, v55);
      if (v16 == 0xD000000000000018 && 0x8000000000452950 == v8)
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      if (Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter() == 0xD000000000000016 && 0x80000000004586F0 == v25)
      {

LABEL_20:
        v27 = *v50;
        (*v50)(v52, v0, v9);
        v28 = v51;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51[2] + 1, 1);
          v28 = v51;
        }

        v30 = v28[2];
        v29 = v28[3];
        if (v30 >= v29 >> 1)
        {
          v32 = OUTLINED_FUNCTION_76(v29);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32, v30 + 1, 1);
          v28 = v51;
        }

        v16 = -v21;
        v28[2] = v30 + 1;
        v51 = v28;
        v31 = v28 + v48 + v30 * v53;
        v17 = v53;
        v27(v31, v52, v9);
        v15 = v49;
        v20 = v47;
        goto LABEL_4;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_20;
      }

LABEL_17:
      (*v19)(v0, v9);
      --v21;
      v22 += v53;
      --v23;
    }

    while (v23);
  }

  v33 = v51[2];

  if (v33)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.siriPhone);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_5_21(v36))
    {
      OUTLINED_FUNCTION_13_14();
      v37 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_17();
      v38 = swift_slowAlloc();
      v56 = v38;
      *v37 = 136315138;
      if (one-time initialization token for logPrefix != -1)
      {
        OUTLINED_FUNCTION_0_69();
        swift_once();
      }

      v39 = static NLv4Transformer.logPrefix;
      v40 = unk_599B70;

      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v39, v40, 0xD000000000000018, 0x800000000045C9B0);

      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v56);
      OUTLINED_FUNCTION_62_11();

      *(v37 + 4) = v39;
      OUTLINED_FUNCTION_41_14();
      _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }
  }

LABEL_33:
  OUTLINED_FUNCTION_65();
  return result;
}

uint64_t static Transformer<>.createNLIntent(app:phoneCallAVMode:phoneCallAttributes:targetContacts:commonPhoneCall:audioRoute:phoneCallVerb:voicemailVerb:referenceResolver:previousNLIntent:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v73 = a8;
  v72 = a7;
  v71 = a6;
  v86 = a4;
  v78 = a3;
  HIDWORD(v70) = a2;
  v80 = a9;
  v79 = a11;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology26UsoEntity_common_PhoneCallCSgSay0hI18FlowDelegatePlugin0aH7Contact_pGGMd, &_s13SiriUtilities11TransformerVy0A8Ontology26UsoEntity_common_PhoneCallCSgSay0hI18FlowDelegatePlugin0aH7Contact_pGGMR);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v14 = &v70 - v13;
  static Signpost.begin(_:)();
  v77 = v15;
  v76 = v16;
  v75 = v17;
  v74 = v18;
  v81 = a1;
  v84 = a5;
  if (a5 && (v19 = dispatch thunk of UsoEntity_common_PhoneCall.recipients.getter()) != 0)
  {
    v20 = v19;
  }

  else
  {

    v20 = _swiftEmptyArrayStorage;
  }

  *&v88 = _swiftEmptyArrayStorage;
  v21 = specialized Array.count.getter(v20);
  v22 = 0;
  v23 = v20 & 0xC000000000000001;
  v85 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v21 == v22)
    {

      v104 = v85;
      v25 = v86[3];
      if (v25)
      {
        v26 = specialized Array.count.getter(v86[3]);
        v23 = v84;
        if (v26)
        {
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v25 & 0xC000000000000001) == 0, v25);
          if ((v25 & 0xC000000000000001) == 0)
          {

            goto LABEL_23;
          }

          goto LABEL_80;
        }
      }

      else
      {
        v23 = v84;
      }

      goto LABEL_27;
    }

    if (v23)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v22 >= *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_76;
      }
    }

    if (__OFADD__(v22, 1))
    {
      break;
    }

    dispatch thunk of CodeGenListEntry.entry.getter();
    if (v87[0])
    {
      v24 = UsoEntity_common_Agent.asCommonGroup()();

      if (!v24)
      {
        goto LABEL_17;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v88 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v88 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v85 = v88;
      ++v22;
    }

    else
    {

LABEL_17:
      ++v22;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  while (1)
  {
    __break(1u);
    do
    {
      __break(1u);
LABEL_80:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_23:
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v104 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v104 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v85 = v104;
LABEL_27:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology26UsoEntity_common_PhoneCallCSgMd, &_s12SiriOntology26UsoEntity_common_PhoneCallCSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMd, &_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMR);
      Transformer.init(transform:)();
      v27 = v83;
      v28 = Transformer.transform.getter();
      (*(v82 + 8))(v14, v27);
      *&v88 = v23;
      v28(v87, &v88);

      v23 = v87[0];
      v29 = *v86;
      v30 = specialized Array.count.getter(*v86);
    }

    while (v30 < 0);
    v14 = v30;
    if (v30)
    {
      v31 = 0;
      v32 = 0;
      do
      {
        if (v32 >= *(v23 + 16))
        {
          v33 = type metadata accessor for SiriPhoneContactImpl(0);
          swift_allocObject();
          v34 = SiriPhoneContactImpl.init()();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v23 = v39;
          }

          v35 = *(v23 + 16);
          if (v35 >= *(v23 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v23 = v40;
          }

          v90 = v33;
          v91 = &protocol witness table for SiriPhoneContactImpl;
          *&v88 = v34;
          *(v23 + 16) = v35 + 1;
          outlined init with take of SPHConversation(&v88, v23 + 40 * v35 + 32);
        }

        if ((v29 & 0xC000000000000001) != 0)
        {
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v36 = *(v29 + 8 * v32 + 32);
        }

        v37 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew()();
          v23 = v38;
        }

        if (v32 >= *(v23 + 16))
        {
          goto LABEL_77;
        }

        ++v32;
        __swift_mutable_project_boxed_opaque_existential_1(v23 + v31 + 32, *(v23 + v31 + 56));
        SiriPhoneContact.update(person:)(v37);

        v31 += 40;
      }

      while (v14 != v32);
    }

    if (*(v23 + 16))
    {
      v41 = v81;
    }

    else
    {
      v52 = v86[2];
      v41 = v81;
      if (v52 && *(v52 + 16) == 1)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        __swift_project_value_buffer(v53, static Logger.siriPhone);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v87[0] = v57;
          *v56 = 136315138;
          if (one-time initialization token for logPrefix != -1)
          {
            swift_once();
          }

          *&v88 = 0;
          *(&v88 + 1) = 0xE000000000000000;
          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
          v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, *(&v88 + 1), v87);

          *(v56 + 4) = v58;
          _os_log_impl(&dword_0, v54, v55, "%s add an dummy contact to align with its contactQuery size", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v57);
        }

        v59 = type metadata accessor for SiriPhoneContactImpl(0);
        swift_allocObject();
        v60 = SiriPhoneContactImpl.init()();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v23 = v68;
        }

        v61 = *(v23 + 16);
        v14 = (v61 + 1);
        if (v61 >= *(v23 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v23 = v69;
        }

        v90 = v59;
        v91 = &protocol witness table for SiriPhoneContactImpl;
        *&v88 = v60;
        *(v23 + 16) = v14;
        outlined init with take of SPHConversation(&v88, v23 + 40 * v61 + 32);
      }
    }

    v42 = v86[1];
    if (!v42)
    {
      break;
    }

    v43 = *(v42 + 16);
    if (!v43 || v43 != *(v23 + 16))
    {
      break;
    }

    v44 = 0;
    v45 = 0;
    v46 = v42 + 32;
    while (1)
    {
      v47.value = *(v46 + v45);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew()();
        v23 = v48;
      }

      if (v45 >= *(v23 + 16))
      {
        break;
      }

      ++v45;
      v14 = *(v23 + v44 + 64);
      __swift_mutable_project_boxed_opaque_existential_1(v23 + v44 + 32, *(v23 + v44 + 56));
      SiriPhoneContact.update(contactSource:)(v47);
      v44 += 40;
      if (v43 == v45)
      {
        goto LABEL_53;
      }
    }
  }

LABEL_53:
  v49 = v86[2];
  if (v41)
  {
    v50 = type metadata accessor for UsoEntity_common_App();
    v51 = &protocol witness table for UsoEntity_common_App;
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  v62 = v80;
  v63 = _swiftEmptyArrayStorage;
  if (v49)
  {
    v64 = v49;
  }

  else
  {
    v64 = _swiftEmptyArrayStorage;
  }

  specialized _arrayForceCast<A, B>(_:)();
  v66 = v65;
  if (v86[4])
  {
    v63 = v86[4];
  }

  *&v88 = v64;
  *(&v88 + 1) = v23;
  v89 = v41;
  v90 = 0;
  v91 = 0;
  v92 = v50;
  v93 = v51;
  v94 = BYTE4(v70);
  v95 = v78;
  v96 = v71;
  v97 = 151323906;
  v98 = 8963;
  v99 = v72;
  v100 = v73;
  v101 = 2;
  v102 = v66;
  v103 = v63;
  v87[3] = &type metadata for PhoneCallNLv4Intent;
  v87[4] = &protocol witness table for PhoneCallNLv4Intent;
  v87[0] = swift_allocObject();
  outlined init with copy of PhoneCallNLv4Intent(&v88, v87[0] + 16);

  static PhoneCallNLv4Intent.getMergedNLIntent(previousNLIntent:currentNLIntent:)(v87, v62);
  outlined destroy of PhoneCallNLv4Intent(&v88);
  __swift_destroy_boxed_opaque_existential_1(v87);
  Signpost.OpenSignpost.end()();
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = type metadata accessor for Parse();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = a1[1];
  static Signpost.begin(_:)();
  v21[0] = v8;
  ObjectType = swift_getObjectType();
  v10 = (*(v7 + 24))(ObjectType, v7);
  if (FollowUpOfferType.rawValue.getter(v10) == 0xD000000000000011 && 0x8000000000452840 == v11)
  {

    goto LABEL_8;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
LABEL_8:
    type metadata accessor for UsoTaskBuilder_callback_common_PhoneCall();
    swift_allocObject();
    v14 = UsoTaskBuilder_callback_common_PhoneCall.init()();
    goto LABEL_9;
  }

  type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
  swift_allocObject();
  v14 = UsoTaskBuilder_call_common_PhoneCall.init()();
LABEL_9:
  v15 = v14;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for USOSerializedGraph, USOSerializedGraph_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_426260;
  *(v16 + 32) = v15;

  v17 = static USOSerializedGraph.fromTaskBuilders(_:)();

  v18 = [objc_allocWithZone(SIRINLUUserStatedTask) initWithTask:v17];
  *v6 = v18;
  (*(v4 + 104))(v6, enum case for Parse.NLv4IntentOnly(_:), v3);
  v19 = v18;
  Input.init(parse:)();

  Signpost.OpenSignpost.end()();
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v55 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Signpost.begin(_:)();
  v58 = v12;
  v59 = v11;
  v57 = v13;
  v56 = v14;
  if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
  {
    Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
    if (Siri_Nlu_External_UserStatedTask.hasTask.getter())
    {
      v54 = v8;
      Siri_Nlu_External_UserStatedTask.task.getter();
      v15 = Siri_Nlu_External_UsoGraph.identifiers.getter();
      (*(v5 + 8))(v7, v4);
      v16 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
      if (v2)
      {

        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, static Logger.siriPhone);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v62 = v21;
          *v20 = 136315138;
          if (one-time initialization token for logPrefix != -1)
          {
            swift_once();
          }

          v60 = 0;
          v61 = 0xE000000000000000;
          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
          v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v62);

          *(v20 + 4) = v22;
          _os_log_impl(&dword_0, v18, v19, "%s could not convert user dialog act to task", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v21);
        }

        v23 = type metadata accessor for TransformationError();
        lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type TransformationError and conformance TransformationError, &type metadata accessor for TransformationError, &protocol conformance descriptor for TransformationError);
        swift_allocError();
        v25 = v24;
        v26 = 0x800000000045CD70;
        v27 = 0xD00000000000003ALL;
LABEL_11:
        *v24 = v27;
        v24[1] = v26;
        (*(*(v23 - 8) + 104))(v25, enum case for TransformationError.cannotTransform(_:), v23);
        swift_willThrow();
        (*(v55 + 8))(v10, v54);
        goto LABEL_26;
      }

      v46 = v16;
      if (!specialized Array.count.getter(v16))
      {

        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v48 = type metadata accessor for Logger();
        __swift_project_value_buffer(v48, static Logger.siriPhone);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v62 = v52;
          *v51 = 136315138;
          if (one-time initialization token for logPrefix != -1)
          {
            swift_once();
          }

          v60 = 0;
          v61 = 0xE000000000000000;
          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
          v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v62);

          *(v51 + 4) = v53;
          _os_log_impl(&dword_0, v49, v50, "%s no tasks found in input", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v52);
        }

        v23 = type metadata accessor for TransformationError();
        lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type TransformationError and conformance TransformationError, &type metadata accessor for TransformationError, &protocol conformance descriptor for TransformationError);
        swift_allocError();
        v25 = v24;
        v26 = 0x800000000045CDB0;
        v27 = 0xD000000000000028;
        goto LABEL_11;
      }

      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v46 & 0xC000000000000001) == 0, v46);
      if ((v46 & 0xC000000000000001) != 0)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v47 = *(v46 + 32);
      }

      (*(v55 + 8))(v10, v54);
      *a2 = v47;
      a2[1] = v15;
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v36 = v8;
      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.siriPhone);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v62 = v41;
        *v40 = 136315138;
        if (one-time initialization token for logPrefix != -1)
        {
          swift_once();
        }

        v60 = 0;
        v61 = 0xE000000000000000;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v62);

        *(v40 + 4) = v42;
        _os_log_impl(&dword_0, v38, v39, "%s userDialogAct.userStatedTask has no task UsoGraph", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v41);
      }

      v43 = type metadata accessor for TransformationError();
      lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type TransformationError and conformance TransformationError, &type metadata accessor for TransformationError, &protocol conformance descriptor for TransformationError);
      swift_allocError();
      *v44 = 0xD000000000000042;
      v44[1] = 0x800000000045CD20;
      (*(*(v43 - 8) + 104))(v44, enum case for TransformationError.cannotTransform(_:), v43);
      swift_willThrow();
      (*(v55 + 8))(v10, v36);
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.siriPhone);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v62 = v32;
      *v31 = 136315138;
      if (one-time initialization token for logPrefix != -1)
      {
        swift_once();
      }

      v60 = 0;
      v61 = 0xE000000000000000;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v62);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_0, v29, v30, "%s does NOT have UserStatedTask", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
    }

    v34 = type metadata accessor for TransformationError();
    lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type TransformationError and conformance TransformationError, &type metadata accessor for TransformationError, &protocol conformance descriptor for TransformationError);
    swift_allocError();
    *v35 = 0xD00000000000002DLL;
    v35[1] = 0x800000000045CCF0;
    (*(*(v34 - 8) + 104))(v35, enum case for TransformationError.cannotTransform(_:), v34);
    swift_willThrow();
  }

LABEL_26:
  Signpost.OpenSignpost.end()();
}

uint64_t static Transformer<>.toPhoneCallAudioRoute(phoneCallAttribute:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  static Signpost.begin(_:)();
  v10 = v9;
  dispatch thunk of CodeGenListEntry.entry.getter();
  if (v18)
  {
    CodeGenBase.entity.getter();
  }

  type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (v19)
  {
    dispatch thunk of UsoEntity_applePhoneCall_PhoneCallAttribute.definedValue.getter();

    if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v2, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
    }

    else
    {
      v16 = v10;
      v13 = v17;
      v14 = *(v17 + 32);
      v14(v8, v2, v3);
      v14(v5, v8, v3);
      v15 = (*(v13 + 88))(v5, v3);
      if (v15 == enum case for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues.applePhoneCall_PhoneCallAttribute_PhoneCallNounSpeakerphone(_:))
      {
        v11 = 0;
        goto LABEL_7;
      }

      if (v15 == enum case for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues.applePhoneCall_PhoneCallAttribute_PhoneCallNounNotSpeakerphone(_:))
      {
        v11 = 1;
        goto LABEL_7;
      }

      if (v15 == enum case for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues.applePhoneCall_PhoneCallAttribute_PhoneCallNounBluetooth(_:))
      {
        v11 = 2;
        goto LABEL_7;
      }

      (*(v17 + 8))(v5, v3);
    }
  }

  v11 = 4;
LABEL_7:
  Signpost.OpenSignpost.end()();

  return v11;
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(char *a1@<X8>)
{
  static Signpost.begin(_:)();
  static UsoTask_CodegenConverter.convert(task:)();
  if (v9)
  {
    type metadata accessor for UsoTask_call_common_PhoneCall();
    if (swift_dynamicCast())
    {
      v2 = a1;

      dispatch thunk of Uso_VerbTemplate_Target.target.getter();

      if (v8[0])
      {
        v3 = dispatch thunk of UsoEntity_common_PhoneCall.attributes.getter();

        if (v3)
        {
          if (specialized Array.count.getter(v3))
          {
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000001) == 0, v3);
            if ((v3 & 0xC000000000000001) != 0)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
            }

LABEL_19:

            v5 = static Transformer<>.toPhoneCallAudioRoute(phoneCallAttribute:)();

            a1 = v2;
            goto LABEL_35;
          }
        }
      }
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_sypSgMd, &_sypSgMR);
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (v9)
  {
    type metadata accessor for UsoTask_redial_common_PhoneCall();
    if (swift_dynamicCast())
    {
      v2 = a1;

      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();

      if (v8[0])
      {
        v4 = dispatch thunk of UsoEntity_common_PhoneCall.attributes.getter();

        if (v4)
        {
          if (specialized Array.count.getter(v4))
          {
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v4 & 0xC000000000000001) == 0, v4);
            if ((v4 & 0xC000000000000001) != 0)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
            }

            goto LABEL_19;
          }
        }
      }
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_sypSgMd, &_sypSgMR);
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v9)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_sypSgMd, &_sypSgMR);
    goto LABEL_32;
  }

  type metadata accessor for UsoTask_answer_common_PhoneCall();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v5 = 4;
    goto LABEL_35;
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();

  if (!v8[0])
  {
    goto LABEL_34;
  }

  v6 = dispatch thunk of UsoEntity_common_PhoneCall.attributes.getter();

  if (!v6)
  {
    goto LABEL_34;
  }

  if (!specialized Array.count.getter(v6))
  {

LABEL_34:

    v5 = 4;
    goto LABEL_35;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
  }

  v5 = static Transformer<>.toPhoneCallAudioRoute(phoneCallAttribute:)();

LABEL_35:
  *a1 = v5;
  Signpost.OpenSignpost.end()();
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  static Signpost.begin(_:)();
  v10 = v9;
  static UsoTask_CodegenConverter.convert(task:)();
  if (v41)
  {
    v36 = v10;
    outlined init with take of Any(&v40, v42);
    outlined init with copy of Any(v42, &v40);
    type metadata accessor for UsoTask_noVerb_common_PhoneNumber();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v42);

LABEL_4:
      *a1 = 0;
LABEL_34:
      __swift_destroy_boxed_opaque_existential_1(&v40);
      goto LABEL_35;
    }

    type metadata accessor for UsoTask_noVerb_common_PhoneCall();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

      __swift_destroy_boxed_opaque_existential_1(v42);
      if (!v43)
      {
        goto LABEL_4;
      }

      v11 = 5;
LABEL_33:
      *a1 = v11;
      goto LABEL_34;
    }

    type metadata accessor for UsoTask_call_common_PhoneCall();
    if (swift_dynamicCast())
    {
      v12 = v43;
      v13 = static Transformer<>.isCallingLastNumberUserCalled(callTask:)();
      v35 = v12;
      if (v13)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        __swift_project_value_buffer(v14, static Logger.siriPhone);
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v34 = v1;
          v17 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v39 = v33;
          *v17 = 136315138;
          if (one-time initialization token for logPrefix != -1)
          {
            swift_once();
          }

          v37 = 0;
          v38 = 0xE000000000000000;
          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
          v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v39);

          *(v17 + 4) = v18;
          _os_log_impl(&dword_0, v15, v16, "%s call last number user called is found, treat current request as redial", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v33);

          __swift_destroy_boxed_opaque_existential_1(v42);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v42);
        }

        v11 = 6;
        goto LABEL_33;
      }

      v34 = v1;

      dispatch thunk of Uso_VerbTemplate_Target.target.getter();

      if (v37 && (v21 = dispatch thunk of UsoEntity_common_PhoneCall.mode.getter(), , v21))
      {
        dispatch thunk of UsoEntity_common_PhoneCallMode.definedValue.getter();

        v22 = type metadata accessor for UsoEntity_common_PhoneCallMode.DefinedValues();
        if (__swift_getEnumTagSinglePayload(v8, 1, v22) != 1)
        {
          outlined init with copy of ButtonConfigurationModel?(v8, v5, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
          v23 = *(v22 - 8);
          v24 = (*(v23 + 88))(v5, v22);
          if (v24 == enum case for UsoEntity_common_PhoneCallMode.DefinedValues.common_PhoneCallMode_Audio(_:))
          {
            __swift_destroy_boxed_opaque_existential_1(v42);

            v25 = 3;
LABEL_30:
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
            *a1 = v25;
            goto LABEL_34;
          }

          if (v24 == enum case for UsoEntity_common_PhoneCallMode.DefinedValues.common_PhoneCallMode_Video(_:))
          {
            __swift_destroy_boxed_opaque_existential_1(v42);

            v25 = 2;
            goto LABEL_30;
          }

          (*(v23 + 8))(v5, v22);
        }
      }

      else
      {
        v27 = type metadata accessor for UsoEntity_common_PhoneCallMode.DefinedValues();
        __swift_storeEnumTagSinglePayload(v8, 1, 1, v27);
      }

      v28 = UsoTask.usoAssociatedApp.getter();
      v25 = static Transformer<>.overrideVerbForApp(originalVerb:usoApp:)(0, v28);

      __swift_destroy_boxed_opaque_existential_1(v42);
      goto LABEL_30;
    }

    type metadata accessor for UsoTask_callback_common_PhoneCall();
    if (swift_dynamicCast())
    {

      v19 = UsoTask.usoAssociatedApp.getter();
      v20 = 1;
LABEL_27:
      v26 = static Transformer<>.overrideVerbForApp(originalVerb:usoApp:)(v20, v19);

      __swift_destroy_boxed_opaque_existential_1(v42);
      *a1 = v26;
      goto LABEL_34;
    }

    type metadata accessor for UsoTask_redial_common_PhoneCall();
    if (swift_dynamicCast())
    {

      v19 = UsoTask.usoAssociatedApp.getter();
      v20 = 6;
      goto LABEL_27;
    }

    type metadata accessor for UsoTask_delete_common_Voicemail();
    if (swift_dynamicCast() || (type metadata accessor for UsoTask_delete_common_PhoneCall(), swift_dynamicCast()))
    {
      __swift_destroy_boxed_opaque_existential_1(v42);

      __swift_destroy_boxed_opaque_existential_1(&v40);
      v30 = 12;
LABEL_39:
      *a1 = v30;
      goto LABEL_35;
    }

    type metadata accessor for UsoTask_answer_common_PhoneCall();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v42);

LABEL_42:
      v11 = 10;
      goto LABEL_33;
    }

    type metadata accessor for UsoTask_reply_uso_NoEntity();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
      if (v43 || (dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter(), v43))
      {

        __swift_destroy_boxed_opaque_existential_1(v42);
      }

      else
      {
        v31 = dispatch thunk of Uso_VerbTemplate_ReferenceTarget.userEntities.getter();

        __swift_destroy_boxed_opaque_existential_1(v42);
        if (!v31)
        {
          goto LABEL_42;
        }
      }

      v11 = 17;
      goto LABEL_33;
    }

    __swift_destroy_boxed_opaque_existential_1(v42);
    type metadata accessor for UsoTask_join_common_PhoneCall();
    if (swift_dynamicCast())
    {

      v11 = 14;
      goto LABEL_33;
    }

    type metadata accessor for UsoTask_update_common_PhoneCall();
    if (swift_dynamicCast() || (type metadata accessor for UsoTask_update_common_Communication(), swift_dynamicCast()))
    {

      __swift_destroy_boxed_opaque_existential_1(&v40);
      v30 = 15;
      goto LABEL_39;
    }

    type metadata accessor for UsoTask_hangup_common_PhoneCall();
    if (swift_dynamicCast())
    {

      v11 = 11;
      goto LABEL_33;
    }

    type metadata accessor for UsoTask_request_common_PhoneCall();
    if (swift_dynamicCast() || (type metadata accessor for UsoTask_summarise_common_PhoneCall(), swift_dynamicCast()) || (type metadata accessor for UsoTask_summarise_common_Voicemail(), swift_dynamicCast()) || (type metadata accessor for UsoTask_read_common_PhoneCall(), swift_dynamicCast()) || (type metadata accessor for UsoTask_read_common_Voicemail(), swift_dynamicCast()) || (type metadata accessor for UsoTask_call_common_Voicemail(), swift_dynamicCast()))
    {

      __swift_destroy_boxed_opaque_existential_1(&v40);
      v30 = 5;
      goto LABEL_39;
    }

    __swift_destroy_boxed_opaque_existential_1(&v40);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v40, &_sypSgMd, &_sypSgMR);
  }

  *a1 = 17;
LABEL_35:
  Signpost.OpenSignpost.end()();
}

{
  static Signpost.begin(_:)();
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v5)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v4, &_sypSgMd, &_sypSgMR);
    goto LABEL_6;
  }

  outlined init with take of Any(&v4, v6);
  outlined init with take of Any(v6, &v4);
  type metadata accessor for UsoTask_play_common_Voicemail();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_noVerb_common_Voicemail();
    if (!swift_dynamicCast())
    {
      type metadata accessor for UsoTask_repeat_common_Voicemail();
      if (swift_dynamicCast())
      {

        v2 = 1;
LABEL_17:
        *a1 = v2;
        __swift_destroy_boxed_opaque_existential_1(&v4);
        goto LABEL_18;
      }

      type metadata accessor for UsoTask_skip_common_Voicemail();
      if (swift_dynamicCast())
      {

        v2 = 2;
        goto LABEL_17;
      }

      type metadata accessor for UsoTask_pause_common_Voicemail();
      if (swift_dynamicCast())
      {

        v2 = 3;
        goto LABEL_17;
      }

      type metadata accessor for UsoTask_resume_common_Voicemail();
      if (swift_dynamicCast())
      {

        v2 = 4;
        goto LABEL_17;
      }

      type metadata accessor for UsoTask_delete_common_Voicemail();
      if (swift_dynamicCast())
      {

        v2 = 5;
        goto LABEL_17;
      }

      __swift_destroy_boxed_opaque_existential_1(&v4);
LABEL_6:
      *a1 = 6;
      goto LABEL_18;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(&v4);
  *a1 = 0;
LABEL_18:
  Signpost.OpenSignpost.end()();
}

uint64_t static Transformer<>.getTargetContactsListFromRecipients(recipients:referenceResolver:phoneCallVerb:featureManager:isRedirectBusinessCall:siriKitEventSender:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, int a4@<W4>, void *a5@<X5>, void *a6@<X8>)
{
  v102 = a5;
  v98 = a4;
  v112 = a3;
  v126 = a2;
  v106 = a6;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology22UsoEntity_common_AgentCSo8INPersonCSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology22UsoEntity_common_AgentCSo8INPersonCSgGMR);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v97 - v7;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology23UsoEntity_common_PersonCSo8INPersonCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology23UsoEntity_common_PersonCSo8INPersonCGMR);
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v105 = &v97 - v8;
  v119 = type metadata accessor for ContactQuery();
  v9 = *(v119 - 8);
  __chkstk_darwin(v119);
  v120 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v115 = &v97 - v12;
  v13 = type metadata accessor for MatchedResultsSetting();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Signpost.begin(_:)();
  v109 = v17;
  v107 = v18;
  v108 = v19;
  v143 = v20;
  v134 = _swiftEmptyArrayStorage;
  v135 = _swiftEmptyArrayStorage;
  v133 = _swiftEmptyArrayStorage;
  v110 = v14;
  v21 = *(v14 + 104);
  v124 = v16;
  v111 = v13;
  (v21)(v16, enum case for MatchedResultsSetting.defaultMatching(_:), v13);
  v22 = specialized Array.count.getter(a1);
  v24 = &unk_426000;
  v117 = v9;
  v129 = v22;
  if (!v22)
  {
    v37 = PhoneCallVerb.isCallOrFaceTime()();
    if (v37)
    {
      v37 = (*(*v112 + 232))();
      if ((v37 & 1) == 0)
      {
        v37 = static UsoUtils.buildDummyReferenceEntity()();
        if (v37)
        {
          if (one-time initialization token for siriPhone == -1)
          {
            goto LABEL_52;
          }

          goto LABEL_108;
        }
      }
    }

    v122 = _swiftEmptyArrayStorage;
    v118 = _swiftEmptyArrayStorage;
    v51 = &v144;
    goto LABEL_57;
  }

  v25 = 0;
  v128 = a1 & 0xC000000000000001;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
  v123 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v26 = a1;
  }

  v97 = v26;
  v114 = (v9 + 8);
  *&v23 = 136315138;
  v113 = v23;
  v122 = _swiftEmptyArrayStorage;
  v118 = _swiftEmptyArrayStorage;
  v121 = _swiftEmptyArrayStorage;
  v27 = v124;
  v127 = a1;
  do
  {
    if (v128)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v25 >= *(v123 + 16))
      {
        goto LABEL_105;
      }
    }

    v21 = (v25 + 1);
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    dispatch thunk of CodeGenListEntry.entry.getter();
    if (v131 && (v28 = UsoEntity_common_Agent.asCommonPerson()(), , v28))
    {
      v125 = (v25 + 1);
      __swift_project_boxed_opaque_existential_1(v126, v126[3]);

      CodeGenBase.entity.getter();
      v29 = dispatch thunk of RRReferenceResolverProtocol.hasReference(usoEntity:)();

      if (v29)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static Logger.siriPhone);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v130 = v34;
          *v33 = v113;
          if (one-time initialization token for logPrefix != -1)
          {
            swift_once();
          }

          v131 = 0;
          v132 = 0xE000000000000000;
          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
          v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v132, &v130);

          *(v33 + 4) = v35;
          _os_log_impl(&dword_0, v31, v32, "%s found a reference from common person", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v34);

          v27 = v124;
        }

        else
        {
        }

        CodeGenBase.entity.getter();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v24 = &unk_426000;
        if (*(&dword_10 + (v133 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v133 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v121 = v133;
      }

      else
      {

        v24 = &unk_426000;
        if (v127 >> 62)
        {
          v38 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v38 = *(v123 + 16);
        }

        if (v38 == 1)
        {
          v39 = v115;
          UsoEntity_common_Person.toContactQuery()();
          if (one-time initialization token for emptyQuery != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v119, static ContactQuery.emptyQuery);
          v40 = v39;
          if (static ContactQuery.== infix(_:_:)())
          {
            (*v114)(v39, v119);
LABEL_95:

            (*(v110 + 8))(v27, v111);

            Signpost.OpenSignpost.end()();

            v63 = 0;
            v64 = 0;
            v62 = 0;
            v66 = 0;
            v68 = 1;
            v24 = _swiftEmptyArrayStorage;
            goto LABEL_99;
          }

          if (one-time initialization token for emptyNLv4Query != -1)
          {
            swift_once();
          }

          v41 = v119;
          __swift_project_value_buffer(v119, static ContactQuery.emptyNLv4Query);
          v42 = static ContactQuery.== infix(_:_:)();
          v43 = v40;
          v44 = v42;
          (*v114)(v43, v41);
          if (v44)
          {
            goto LABEL_95;
          }
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v135 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v122 = v135;
      }

      v21 = v125;
    }

    else
    {
      dispatch thunk of CodeGenListEntry.entry.getter();
      if (v131)
      {
        __swift_project_boxed_opaque_existential_1(v126, v126[3]);

        CodeGenBase.entity.getter();
        v36 = dispatch thunk of RRReferenceResolverProtocol.hasReference(usoEntity:)();

        if (v36)
        {
          CodeGenBase.entity.getter();

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v27 = v124;
          v24 = &unk_426000;
          if (*(&dword_10 + (v133 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v133 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v121 = v133;
        }

        else
        {

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v27 = v124;
          v24 = &unk_426000;
          if (*(&dword_10 + (v134 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v134 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v118 = v134;
        }
      }

      else
      {
      }
    }

    ++v25;
  }

  while (v21 != v129);
  while (1)
  {
    if ((*(*v112 + 232))(v37))
    {
      if (one-time initialization token for siriPhone != -1)
      {
LABEL_106:
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, static Logger.siriPhone);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v130 = v56;
        *v55 = v24[70];
        if (one-time initialization token for logPrefix != -1)
        {
          swift_once();
        }

        v131 = 0;
        v132 = 0xE000000000000000;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v132, &v130);

        *(v55 + 4) = v57;
        _os_log_impl(&dword_0, v53, v54, "%s skipping SRR", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
      }
    }

    else if (specialized Array.count.getter(v121))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v59 = outlined bridged method (pb) of @objc static INIntent.typeName()(ObjCClassFromMetadata);
      __chkstk_darwin(v59);
      *(&v97 - 4) = &v133;
      v60 = v124;
      *(&v97 - 3) = v126;
      *(&v97 - 2) = v60;
      static SiriKitEventSender.current.getter();
      _s27PhoneCallFlowDelegatePlugin0A21SelfPerformanceLoggerC8signpost19domainExecutionType04taskL018siriKitEventSender_xSo020FLOWSchemaFLOWDomainkL0V_SS04SirioC00toP7Sending_pxyXEtlFZAA14TargetContacts33_9A2BD23864AF7C0BC1A75979566F7BA5LLVSg_Tt4g5();
      __swift_destroy_boxed_opaque_existential_1(&v131);
      v61 = v136;
      if (v136)
      {
        v62 = v139;
        v129 = v140;
        v63 = v137;
        v64 = v138;
        v142 = v141;

        v65 = v102[3];
        v128 = v102[4];
        __swift_project_boxed_opaque_existential_1(v102, v65);
        type metadata accessor for SiriKitEvent();
        LOBYTE(v131) = 0;
        SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
        v24 = v61;
        v66 = v129;
        dispatch thunk of SiriKitEventSending.send(_:)();

        (*(v110 + 8))(v60, v111);

        Signpost.OpenSignpost.end()();

        v68 = v142;
        goto LABEL_99;
      }
    }

    v69 = v122;
    if (!specialized Array.count.getter(v122))
    {
      v74 = v118;
      if (!specialized Array.count.getter(v118))
      {
        v66 = v133;
        v92 = specialized Array.count.getter(v133);
        v75 = v124;
        if (v92)
        {
        }

        else
        {
          v66 = 0;
        }

        v24 = _swiftEmptyArrayStorage;
        goto LABEL_98;
      }

      v75 = v124;
      if (one-time initialization token for transformer != -1)
      {
        swift_once();
      }

      v76 = v101;
      v77 = __swift_project_value_buffer(v101, static Transformer<>.transformer);
      v78 = v100;
      v79 = v99;
      v80 = (*(v100 + 16))(v99, v77, v76);
      __chkstk_darwin(v80);
      *(&v97 - 2) = v79;
      v81 = v116;
      specialized Sequence.compactMap<A>(_:)(partial apply for closure #5 in static Transformer<>.getTargetContactsListFromRecipients(recipients:referenceResolver:phoneCallVerb:featureManager:isRedirectBusinessCall:siriKitEventSender:), (&v97 - 4), v74);
      v116 = v81;
      if (!v81)
      {
        v24 = v82;
        (*(v78 + 8))(v79, v76);
        v66 = 0;
        goto LABEL_98;
      }

      (*(v78 + 8))(v79, v76);
      (*(v110 + 8))(v75, v111);
      goto LABEL_77;
    }

    v70 = v105;
    v71 = static Transformer<>.transformer.getter();
    __chkstk_darwin(v71);
    *(&v97 - 2) = v70;
    v72 = v116;
    v73 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology23UsoEntity_common_PersonCG_So8INPersonCsAE_pTg5(partial apply for closure #3 in static Transformer<>.getTargetContactsListFromRecipients(recipients:referenceResolver:phoneCallVerb:featureManager:isRedirectBusinessCall:siriKitEventSender:), (&v97 - 4), v69);
    v116 = v72;
    if (v72)
    {

      (*(v103 + 8))(v70, v104);
      (*(v110 + 8))(v124, v111);
LABEL_77:

      Signpost.OpenSignpost.end()();
    }

    v24 = v73;
    v83 = specialized Array.count.getter(v69);
    if (!v83)
    {
      goto LABEL_93;
    }

    v84 = v83;
    v129 = v24;
    v131 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v83 & ~(v83 >> 63), 0);
    if ((v84 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_108:
    swift_once();
LABEL_52:
    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.siriPhone);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v130 = v49;
      *v48 = v24[70];
      if (one-time initialization token for logPrefix != -1)
      {
        swift_once();
      }

      v131 = 0;
      v132 = 0xE000000000000000;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v132, &v130);

      *(v48 + 4) = v50;
      _os_log_impl(&dword_0, v46, v47, "%s call verb only to query SRR is enabled, build dummy reference", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);

      v24 = &unk_426000;
    }

    else
    {
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v133 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v133 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v121 = v133;
    v95 = v124;
    v96 = v111;
    (*(v110 + 8))(v124, v111);
    v37 = (v21)(v95, enum case for MatchedResultsSetting.extremelySalientResultsOnly(_:), v96);
    v118 = _swiftEmptyArrayStorage;
    v51 = &v145;
LABEL_57:
    *(v51 - 32) = _swiftEmptyArrayStorage;
  }

  v85 = 0;
  v86 = v131;
  v87 = v122 & 0xC000000000000001;
  v88 = v98;
  do
  {
    if (v87)
    {
      v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (v88)
      {
        goto LABEL_83;
      }
    }

    else
    {

      if (v88)
      {
LABEL_83:
        UsoEntity_common_Person.toContactQuery()();
        goto LABEL_86;
      }
    }

    UsoEntity_common_Person.getRedactCommonPerson()(v89);
    UsoEntity_common_Person.toContactQuery()();

LABEL_86:

    v131 = v86;
    v91 = v86[2];
    v90 = v86[3];
    if (v91 >= v90 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v90 > 1, v91 + 1, 1);
      v86 = v131;
    }

    ++v85;
    v86[2] = v91 + 1;
    (*(v117 + 32))(v86 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v91, v120, v119);
  }

  while (v84 != v85);
  v70 = v105;
  v24 = v129;
LABEL_93:
  (*(v103 + 8))(v70, v104);
  v66 = 0;
  v75 = v124;
LABEL_98:

  static PhoneCallNLv4Intent.appendNewContactQueries(contactQueries:persons:)();
  v64 = v93;

  (*(v110 + 8))(v75, v111);

  Signpost.OpenSignpost.end()();

  v63 = 0;
  v62 = 0;
  v68 = 0;
LABEL_99:
  v94 = v106;
  *v106 = v24;
  v94[1] = v63;
  v94[2] = v64;
  v94[3] = v62;
  v94[4] = v66;
  *(v94 + 40) = v68;
  return result;
}

double closure #1 in static Transformer<>.getTargetContactsListFromRecipients(recipients:referenceResolver:phoneCallVerb:featureManager:isRedirectBusinessCall:siriKitEventSender:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = type metadata accessor for MatchedResultsSetting();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a3, v7, v9);

  static NLTransformerReferenceHelper.resolveEntitiesTargetContacts(_:referenceResolver:matchedResultsSetting:)(v12, a2, v11, &v15);

  (*(v8 + 8))(v11, v7);
  v13 = v16[0];
  *a4 = v15;
  a4[1] = v13;
  result = *(v16 + 9);
  *(a4 + 25) = *(v16 + 9);
  return result;
}

void static NLTransformerReferenceHelper.resolveEntitiesTargetContacts(_:referenceResolver:matchedResultsSetting:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v106 = a4;
  v129 = type metadata accessor for ContactQuery();
  v7 = *(v129 - 8);
  __chkstk_darwin(v129);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v103 - v11;
  __chkstk_darwin(v12);
  v121 = &v103 - v13;
  v14 = type metadata accessor for PhoneRRTarget.Target(0);
  __chkstk_darwin(v14);
  v16 = (&v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = type metadata accessor for PhoneRRTarget(0);
  v17 = *(v126 - 8);
  __chkstk_darwin(v126);
  v114 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v103 - v20;
  v131 = a2;
  v132 = a3;
  v22 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in static NLTransformerReferenceHelper.resolveEntitiesTargetContacts(_:referenceResolver:matchedResultsSetting:), v130, a1);
  v125 = v22[2];
  if (!v125)
  {

    v102 = 0;
    v94 = 0;
    v99 = 0;
    v100 = 0;
    v101 = v106;
LABEL_93:
    *v101 = v102;
    *(v101 + 8) = v94;
    *(v101 + 16) = v99;
    *(v101 + 24) = v100;
    *(v101 + 32) = 0;
    *(v101 + 40) = 0;
    return;
  }

  v103 = 0;
  v24 = 0;
  v25 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v137 = _swiftEmptyArrayStorage;
  v138 = _swiftEmptyArrayStorage;
  v124 = v22 + v25;
  v113 = "common_PhoneCall";
  v136 = _swiftEmptyArrayStorage;
  v128 = (v7 + 32);
  v104 = 0x8000000000453AB0;
  v111 = (v7 + 16);
  v110 = v7 + 8;
  *&v23 = 136315138;
  v109 = v23;
  *&v23 = 136315394;
  v107 = v23;
  v26 = _swiftEmptyArrayStorage;
  v108 = _swiftEmptyArrayStorage;
  v112 = _swiftEmptyArrayStorage;
  v117 = v14;
  v116 = v16;
  v119 = v17;
  v120 = v21;
  v123 = v22;
  v105 = v9;
  while (2)
  {
    if (v24 < v22[2])
    {
      v27 = v24 + 1;
      outlined init with copy of PhoneRRTarget.Target(&v124[*(v17 + 72) * v24], v21);
      outlined init with copy of PhoneRRTarget.Target(v21, v16);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v127 = v27;
      switch(EnumCaseMultiPayload)
      {
        case 1:
          v122 = v26;
          v49 = *v16;
          v50 = dispatch thunk of UsoEntity_common_Group.name.getter();
          if (v51)
          {
            v52 = v50;
            v53 = v51;

            v54 = HIBYTE(v53) & 0xF;
            if ((v53 & 0x2000000000000000) == 0)
            {
              v54 = v52 & 0xFFFFFFFFFFFFLL;
            }

            if (v54)
            {
              goto LABEL_37;
            }
          }

          v55 = dispatch thunk of UsoEntity_common_Group.members.getter();
          if (!v55)
          {
LABEL_37:
            if (one-time initialization token for siriPhone != -1)
            {
              swift_once();
            }

            v61 = type metadata accessor for Logger();
            __swift_project_value_buffer(v61, static Logger.siriPhone);
            v62 = Logger.logObject.getter();
            v63 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              v65 = swift_slowAlloc();
              v135 = v65;
              *v64 = v109;
              if (one-time initialization token for logPrefix != -1)
              {
                swift_once();
              }

              v66 = static NLv4Transformer.logPrefix;
              v67 = unk_599B70;
              v133 = 0;
              v134 = 0xE000000000000000;

              DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v66, v67, 0xD000000000000049, v113 | 0x8000000000000000);

              v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, &v135);

              *(v64 + 4) = v68;
              _os_log_impl(&dword_0, v62, v63, "%s referenceResolution resolved to a named common_Group", v64, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v65);

              v16 = v116;
              v17 = v119;
            }

            else
            {
            }

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v21 = v120;
            if (*(&dword_10 + (v136 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v136 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v108 = v136;
          }

          else
          {
            v56 = v55;
            v115 = v49;
            v57 = _swiftEmptyArrayStorage;
            v133 = _swiftEmptyArrayStorage;
            v58 = specialized Array.count.getter(v55);
            v59 = 0;
            while (v58 != v59)
            {
              if ((v56 & 0xC000000000000001) != 0)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v59 >= *(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_95;
                }
              }

              v60 = v59 + 1;
              if (__OFADD__(v59, 1))
              {
                __break(1u);
LABEL_95:
                __break(1u);
                goto LABEL_96;
              }

              dispatch thunk of CodeGenListEntry.entry.getter();

              ++v59;
              if (v135)
              {
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*(&dword_10 + (v133 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v133 & 0xFFFFFFFFFFFFFF8)) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v57 = v133;
                v59 = v60;
              }
            }

            v70 = specialized Array.count.getter(v57);
            if (v70)
            {
              v71 = v70;
              v133 = _swiftEmptyArrayStorage;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70 & ~(v70 >> 63), 0);
              v72 = v105;
              if (v71 < 0)
              {
                goto LABEL_97;
              }

              v73 = 0;
              v74 = v133;
              do
              {
                if ((v57 & 0xC000000000000001) != 0)
                {
                  specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                }

                UsoEntity_common_Agent.toContactQuery()();

                v133 = v74;
                v75 = v72;
                v77 = v74[2];
                v76 = v74[3];
                if (v77 >= v76 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v76 > 1, v77 + 1, 1);
                  v74 = v133;
                }

                ++v73;
                v74[2] = v77 + 1;
                (*(v7 + 32))(v74 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v77, v75, v129);
                v72 = v75;
              }

              while (v71 != v73);
            }

            else
            {

              v74 = _swiftEmptyArrayStorage;
            }

            v16 = v116;
            if (one-time initialization token for siriPhone != -1)
            {
              swift_once();
            }

            v78 = type metadata accessor for Logger();
            __swift_project_value_buffer(v78, static Logger.siriPhone);
            v79 = Logger.logObject.getter();
            v80 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              v82 = swift_slowAlloc();
              v135 = v82;
              *v81 = v109;
              if (one-time initialization token for logPrefix != -1)
              {
                swift_once();
              }

              v83 = static NLv4Transformer.logPrefix;
              v84 = unk_599B70;
              v133 = 0;
              v134 = 0xE000000000000000;

              DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v83, v84, 0xD000000000000049, v113 | 0x8000000000000000);

              v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, &v135);

              *(v81 + 4) = v85;
              _os_log_impl(&dword_0, v79, v80, "%s referenceResolution resolved to an unnamed common_Group", v81, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v82);

              v16 = v116;
            }

            else
            {
            }

            specialized Array.append<A>(contentsOf:)(v74);

            v17 = v119;
            v21 = v120;
          }

LABEL_78:
          v69 = v122;
LABEL_79:
          if (v21[*(v126 + 20)] == 3)
          {
            v91 = 2;
          }

          else
          {
            v91 = v21[*(v126 + 20)];
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v69 + 16) + 1, 1, v69);
            v69 = v95;
          }

          v93 = *(v69 + 16);
          v92 = *(v69 + 24);
          v94 = v69;
          if (v93 >= v92 >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v92 > 1, v93 + 1, 1, v69);
            v94 = v96;
          }

          outlined destroy of TransformerInput(v21, type metadata accessor for PhoneRRTarget);
          v94[2] = v93 + 1;
          v26 = v94;
          *(v94 + v93 + 32) = v91;
          v24 = v127;
          v22 = v123;
          if (v127 != v125)
          {
            continue;
          }

          v99 = v137;
          if (!*(v137 + 2))
          {

            v99 = 0;
          }

          v100 = v108;
          if (!specialized Array.count.getter(v108))
          {

            v100 = 0;
          }

          v101 = v106;
          v102 = v112;
          break;
        case 2:
          v122 = v26;
          v115 = *v128;
          v115(v121, v16, v129);
          if (one-time initialization token for siriPhone != -1)
          {
            swift_once();
          }

          v31 = type metadata accessor for Logger();
          __swift_project_value_buffer(v31, static Logger.siriPhone);
          v32 = v114;
          outlined init with copy of PhoneRRTarget.Target(v21, v114);
          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v135 = swift_slowAlloc();
            *v35 = v107;
            if (one-time initialization token for logPrefix != -1)
            {
              swift_once();
            }

            v37 = static NLv4Transformer.logPrefix;
            v36 = unk_599B70;
            v133 = 0;
            v134 = 0xE000000000000000;

            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v37, v36, 0xD000000000000049, v113 | 0x8000000000000000);

            v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, &v135);

            *(v35 + 4) = v38;
            *(v35 + 12) = 2080;
            v39 = 0xEB00000000737365;
            v40 = 0x6E69737542727273;
            switch(*(v114 + *(v126 + 20)))
            {
              case 1:
                v40 = 0xD000000000000012;
                v39 = v104;
                break;
              case 2:
                v40 = 0x54746C7561666564;
                v39 = 0xED00007465677261;
                break;
              case 3:
                v39 = 0xE600000000000000;
                v40 = 0x6C616D726F6ELL;
                break;
              default:
                break;
            }

            outlined destroy of TransformerInput(v114, type metadata accessor for PhoneRRTarget);
            v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v39, &v135);

            *(v35 + 14) = v86;
            _os_log_impl(&dword_0, v33, v34, "%s referenceResolution resolved to a contact query with contact source: %s", v35, 0x16u);
            swift_arrayDestroy();

            v16 = v116;
            v21 = v120;
          }

          else
          {

            outlined destroy of TransformerInput(v32, type metadata accessor for PhoneRRTarget);
          }

          (*v111)(v118, v121, v129);
          v87 = v137;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v17 = v119;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v87 = v97;
          }

          v89 = *(v87 + 2);
          if (v89 >= *(v87 + 3) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v87 = v98;
          }

          v90 = v129;
          (*(v7 + 8))(v121, v129);
          *(v87 + 2) = v89 + 1;
          v115(&v87[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v89], v118, v90);
          v137 = v87;
          goto LABEL_78;
        case 3:
          v29 = v26;
          outlined destroy of TransformerInput(v16, type metadata accessor for PhoneRRTarget.Target);
          if (one-time initialization token for siriPhone != -1)
          {
            swift_once();
          }

          v41 = type metadata accessor for Logger();
          __swift_project_value_buffer(v41, static Logger.siriPhone);
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v135 = v45;
            *v44 = v109;
            if (one-time initialization token for logPrefix != -1)
            {
              swift_once();
            }

            v46 = static NLv4Transformer.logPrefix;
            v47 = unk_599B70;
            v133 = 0;
            v134 = 0xE000000000000000;

            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v46, v47, 0xD000000000000049, v113 | 0x8000000000000000);

            v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, &v135);

            *(v44 + 4) = v48;
            _os_log_impl(&dword_0, v42, v43, "%s resolveEntities can't resolve apps", v44, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v45);

            v16 = v116;
            v17 = v119;
          }

          else
          {
          }

          v21 = v120;
          goto LABEL_46;
        default:
          v29 = v26;
          v30 = *v16;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v138 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v138 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v112 = v138;
LABEL_46:
          v69 = v29;
          goto LABEL_79;
      }

      goto LABEL_93;
    }

    break;
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
}

uint64_t closure #3 in static Transformer<>.getTargetContactsListFromRecipients(recipients:referenceResolver:phoneCallVerb:featureManager:isRedirectBusinessCall:siriKitEventSender:)@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology23UsoEntity_common_PersonCSo8INPersonCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology23UsoEntity_common_PersonCSo8INPersonCGMR);
  v7 = Transformer.transform.getter();
  v10 = v6;
  v7(&v9, &v10);

  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = v9;
  }

  return result;
}

uint64_t closure #5 in static Transformer<>.getTargetContactsListFromRecipients(recipients:referenceResolver:phoneCallVerb:featureManager:isRedirectBusinessCall:siriKitEventSender:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology22UsoEntity_common_AgentCSo8INPersonCSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology22UsoEntity_common_AgentCSo8INPersonCSgGMR);
  v5 = Transformer.transform.getter();
  v8 = v4;
  v5(&v7, &v8);

  if (!v2)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t closure #1 in static Transformer<>.transformer(referenceResolver:phoneCallVerb:featureManager:isRedirectBusinessCall:)@<X0>(void *a1@<X1>, uint64_t a2@<X3>, int a3@<W4>, _OWORD *a4@<X8>)
{
  v15 = a3;
  static Signpost.begin(_:)();
  v7 = UsoTask.convertToCommonPhoneCallEntity()();
  if (v4)
  {
    Signpost.OpenSignpost.end()();
  }

  else
  {
    if (!v7 || (, v8 = dispatch thunk of UsoEntity_common_PhoneCall.recipients.getter(), , !v8))
    {

      v8 = _swiftEmptyArrayStorage;
    }

    static SiriKitEventSender.current.getter();
    static Transformer<>.getTargetContactsListFromRecipients(recipients:referenceResolver:phoneCallVerb:featureManager:isRedirectBusinessCall:siriKitEventSender:)(v8, a1, a2, v15 & 1, v12, &v13);
    __swift_destroy_boxed_opaque_existential_1(v12);

    v9 = v14[0];
    *a4 = v13;
    a4[1] = v9;
    *(a4 + 25) = *(v14 + 9);
    Signpost.OpenSignpost.end()();
  }
}

uint64_t static Transformer<>.isCallingLastNumberUserCalled(callTask:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v20 - v4;
  dispatch thunk of Uso_VerbTemplate_Target.target.getter();
  if (!v22)
  {
    goto LABEL_13;
  }

  v6 = dispatch thunk of UsoEntity_common_PhoneCall.attributes.getter();

  if (!v6)
  {
    goto LABEL_13;
  }

  if (!specialized Array.count.getter(v6))
  {
    goto LABEL_12;
  }

  v7 = v6 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
  }

  dispatch thunk of CodeGenListEntry.entry.getter();

  if (v21)
  {
    CodeGenBase.entity.getter();
  }

  type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (!v22)
  {
LABEL_12:

LABEL_13:
    v10 = 0;
    return v10 & 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology025UsoEntity_applePhoneCall_iJ9AttributeC13DefinedValuesOSgGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology025UsoEntity_applePhoneCall_iJ9AttributeC13DefinedValuesOSgGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_424FD0;
  dispatch thunk of UsoEntity_applePhoneCall_PhoneCallAttribute.definedValue.getter();
  v9 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC12SiriOntology025UsoEntity_applePhoneCall_jK9AttributeC13DefinedValuesOSg_Tt0g5(v8);
  v22 = v9;
  if (specialized Array.count.getter(v6) <= 1)
  {

LABEL_22:
    v15 = 0;
    goto LABEL_24;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, v7 == 0, v6);
  if (v7)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
  }

  dispatch thunk of CodeGenListEntry.entry.getter();

  if (v20[1])
  {
    CodeGenBase.entity.getter();
  }

  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (!v21)
  {
    goto LABEL_22;
  }

  dispatch thunk of UsoEntity_applePhoneCall_PhoneCallAttribute.definedValue.getter();
  specialized Set._Variant.insert(_:)(v5, v2);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v5, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  v9 = v22;
  v12 = enum case for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues.applePhoneCall_PhoneCallAttribute_PhoneCallAttributesLast(_:);
  v13 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  v14 = *(*(v13 - 8) + 104);
  v14(v5, v12, v13);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v13);
  LOBYTE(v12) = specialized Set.contains(_:)(v5, v9);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v5, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  if (v12)
  {
    v14(v5, enum case for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues.applePhoneCall_PhoneCallAttribute_PhoneCallAttributesOutgoing(_:), v13);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v13);
    v15 = specialized Set.contains(_:)(v5, v9);

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v5, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  }

  else
  {

    v15 = 0;
  }

LABEL_24:
  if (v9[2] == 1)
  {
    v16 = enum case for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues.applePhoneCall_PhoneCallAttribute_PhoneCallAttributesLast(_:);
    v17 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
    v18 = *(*(v17 - 8) + 104);
    v18(v5, v16, v17);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v17);
    LOBYTE(v16) = specialized Set.contains(_:)(v5, v9);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v5, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
    if (v16)
    {

      v19 = 1;
    }

    else
    {
      v18(v5, enum case for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues.applePhoneCall_PhoneCallAttribute_PhoneCallAttributesRecent(_:), v17);
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v17);
      v19 = specialized Set.contains(_:)(v5, v9);

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v5, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
    }
  }

  else
  {

    v19 = 0;
  }

  v10 = v15 | v19;
  return v10 & 1;
}