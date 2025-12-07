uint64_t PhoneCallStrategy.__allocating_init(catFamily:catPatternFamily:responseGenerator:appInfoBuilder:deviceState:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = swift_allocObject();
  PhoneCallStrategy.init(catFamily:catPatternFamily:responseGenerator:appInfoBuilder:deviceState:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t PhoneCallStrategy.init(catFamily:catPatternFamily:responseGenerator:appInfoBuilder:deviceState:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v6 = v5;
  *(v5 + 56) = a1;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a2, v5 + 64);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a3, v5 + 104);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a4, v5 + 144);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a5, v5 + 16);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v5 + 16, v13);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v11 = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  *(v6 + 184) = v11 & 1;
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v6;
}

uint64_t PhoneCallStrategy.__deallocating_deinit()
{
  PhoneCallStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t PhoneCallYesNoConfirmationFlowStrategy.__allocating_init(outputProducer:sharedGlobals:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  PhoneCallYesNoConfirmationFlowStrategy.init(outputProducer:sharedGlobals:)(a1, a2, a3);
  return v6;
}

void *PhoneCallYesNoConfirmationFlowStrategy.init(outputProducer:sharedGlobals:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3[3] = a1;
  v3[4] = a2;
  outlined init with copy of SignalProviding(a3, (v3 + 5));
  type metadata accessor for YesNoConfirmationParser();
  v5 = swift_allocObject();
  *(v5 + 16) = 5;
  outlined init with take of SPHConversation(a3, v5 + 24);
  v3[2] = v5;
  return v3;
}

uint64_t PhoneCallYesNoConfirmationFlowStrategy.actionForInput(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v4 = OUTLINED_FUNCTION_21(v3);
  v5 = __chkstk_darwin(v4);
  v7 = &v11 - v6;
  (*(**(v1 + 16) + 128))(a1, v5);
  v8 = type metadata accessor for ConfirmationResponse();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v8);
  outlined destroy of ConfirmationResponse?(v7);
  if (EnumTagSinglePayload == 1)
  {
    return static ActionForInput.ignore()();
  }

  else
  {
    return static ActionForInput.handle()();
  }
}

uint64_t PhoneCallYesNoConfirmationFlowStrategy.parseConfirmationResponse(input:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for PhoneError(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_21(v4);
  v1[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_21(v5);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = v0[9];
  (*(**(v0[4] + 16) + 128))(v0[3]);
  v2 = type metadata accessor for ConfirmationResponse();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    goto LABEL_2;
  }

  v11 = v0[8];
  outlined init with copy of ConfirmationResponse?(v0[9], v11);
  v12 = *(v2 - 8);
  v13 = (*(v12 + 88))(v11, v2);
  v14 = v13;
  if (v13 == enum case for ConfirmationResponse.confirmed(_:))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.siriPhone);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_18;
    }

    v18 = "PhoneCallYesNoConfirmationFlowStrategyTest user has confirmed to continue reading";
LABEL_17:
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v16, v17, v18, v20, 2u);

LABEL_18:
    v21 = v0[9];
    v22 = v0[7];

    (*(v12 + 104))(v22, v14, v2);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v2);
    SimpleConfirmationResponseProvider.init(_:)();
    outlined destroy of ConfirmationResponse?(v21);

    OUTLINED_FUNCTION_11();
    goto LABEL_19;
  }

  if (v13 == enum case for ConfirmationResponse.rejected(_:))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.siriPhone);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_18;
    }

    v18 = "PhoneCallYesNoConfirmationFlowStrategyTest user has rejected to continue reading";
    goto LABEL_17;
  }

  (*(v12 + 8))(v0[8], v2);
LABEL_2:
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "#PhoneCallYesNoConfirmationFlowStrategyTest returns an unknown value, which is not expected", v6, 2u);
  }

  v7 = v0[9];
  v8 = v0[6];

  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_8(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, 255, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
  swift_allocError();
  PhoneError.logged()(v9);
  outlined destroy of PhoneError(v8);
  swift_willThrow();
  outlined destroy of ConfirmationResponse?(v7);

  OUTLINED_FUNCTION_11();
LABEL_19:

  return v10();
}

uint64_t PhoneCallYesNoConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t PhoneCallYesNoConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  OUTLINED_FUNCTION_15();
  v4 = (*(v0[3] + 24) + **(v0[3] + 24));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = DialogOutputFactory.makeOutput();
  v2 = v0[2];

  return v4(v2);
}

uint64_t PhoneCallYesNoConfirmationFlowStrategy.makeConfirmationRejectedResponse()()
{
  OUTLINED_FUNCTION_15();
  v1[14] = v2;
  v1[15] = v0;
  v3 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v3);
  v1[16] = swift_task_alloc();
  v4 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v4);
  v1[17] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  v1 = v0[15];
  type metadata accessor for PhoneCallCommonCATsSimple(0);
  static CATOption.defaultMode.getter();
  CATWrapperSimple.__allocating_init(options:globals:)();
  static DialogPhase.canceled.getter();
  outlined init with copy of SignalProviding(v1 + 40, (v0 + 8));
  type metadata accessor for DialogOutputFactory(0);
  swift_allocObject();
  v2 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
  v0[18] = v2;
  v5 = (*(*v2 + 128) + **(*v2 + 128));
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = PhoneCallYesNoConfirmationFlowStrategy.makeConfirmationRejectedResponse();

  return v5(v0 + 2);
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
  if (*(v0 + 56))
  {
    *(v0 + 104) = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();
  }

  else
  {
    outlined init with take of SPHConversation((v0 + 16), *(v0 + 112));
  }

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t PhoneCallYesNoConfirmationFlowStrategy.makeFlowCancelledResponse()(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t PhoneCallYesNoConfirmationFlowStrategy.makeFlow()()
{
  v1 = v0[8];
  v2 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v1);
  (*(v2 + 16))(v11, v1, v2);
  v3 = v12;
  v4 = v13;
  v5 = __swift_project_boxed_opaque_existential_1(v11, v12);
  v10[3] = v3;
  v10[4] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR);
  swift_allocObject();
  type metadata accessor for PhoneCallYesNoConfirmationFlowStrategy();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_8(&lazy protocol witness table cache variable for type PhoneCallYesNoConfirmationFlowStrategy and conformance PhoneCallYesNoConfirmationFlowStrategy, v7, type metadata accessor for PhoneCallYesNoConfirmationFlowStrategy, &protocol conformance descriptor for PhoneCallYesNoConfirmationFlowStrategy);

  v8 = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v8;
}

uint64_t PhoneCallYesNoConfirmationFlowStrategy.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  return v0;
}

uint64_t PhoneCallYesNoConfirmationFlowStrategy.__deallocating_deinit()
{
  PhoneCallYesNoConfirmationFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance PhoneCallYesNoConfirmationFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 120) + **(*v2 + 120));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance PhoneCallYesNoConfirmationFlowStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:) in conformance PhoneCallYesNoConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for PhoneCallYesNoConfirmationFlowStrategy();
  *v8 = v4;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:)(a1, a2, v9, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:) in conformance PhoneCallYesNoConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for PhoneCallYesNoConfirmationFlowStrategy();
  *v8 = v4;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)(a1, a2, v9, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse() in conformance PhoneCallYesNoConfirmationFlowStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse() in conformance PhoneCallYesNoConfirmationFlowStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 144) + **(*v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:) in conformance PhoneCallYesNoConfirmationFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t outlined destroy of ConfirmationResponse?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t static PhoneCasinoFactory.makeConfirmationCardSection(person:image:sharedGlobals:)(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Image();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v52 = v13;
  v53 = v12;
  __chkstk_darwin(v12);
  v51 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v50 - v16;
  v18 = a3[3];
  v19 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v18);
  (*(v19 + 8))(v59, v18, v19);
  __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  v54 = v17;
  v20 = a1;
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v59);
  v21 = [a1 personHandle];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 label];

    if (v23)
    {
      v24 = Locale.identifier.getter();
      v50 = v25;
      v59[0] = v24;
      v59[1] = v25;
      v57 = 45;
      v58 = 0xE100000000000000;
      v55 = 95;
      v56 = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

      v26 = static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();
      v22 = v27;
    }

    else
    {
      v26 = 0;
      v22 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  (*(v8 + 16))(v11, a2, v6);
  v28 = OUTLINED_FUNCTION_104();
  v30 = v29(v28);
  if (v30 == enum case for Image.fromApp(_:))
  {
    v31 = OUTLINED_FUNCTION_104();
    v32(v31);
    v33 = [a1 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = [a1 image];
    OUTLINED_FUNCTION_1_88();
    OUTLINED_FUNCTION_0_87();
    v35 = static CasinoFactory.makeRowCardSection(possibleTitle:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:shouldUseDefaultImageSize:)();
  }

  else
  {
    if (v30 == enum case for Image.contact(_:))
    {
      v36 = OUTLINED_FUNCTION_104();
      v37(v36);
      v38 = *v11;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SFDetailedRowCardSection, SFDetailedRowCardSection_ptr);
      v40 = v51;
      v39 = v52;
      v42 = v53;
      v41 = v54;
      (*(v52 + 16))(v51, v54, v53);
      outlined init with copy of SignalProviding(a3, v59);
      v35 = SFDetailedRowCardSection.init(person:mappedLabel:contactIdentifiers:locale:sharedGlobals:titleMaxLines:)(v20, v26, v22, v38, v40, v59, 4);
      (*(v39 + 8))(v41, v42);
      return v35;
    }

    if (v30 != enum case for Image.monogram(_:))
    {
      v46 = [a1 displayName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      OUTLINED_FUNCTION_1_88();
      OUTLINED_FUNCTION_0_87();
      v35 = static CasinoFactory.makeRowCardSection(possibleTitle:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:shouldUseDefaultImageSize:)();

      (*(v52 + 8))(v54, v53);
      v47 = OUTLINED_FUNCTION_104();
      v48(v47);
      return v35;
    }

    v43 = OUTLINED_FUNCTION_104();
    v44(v43);
    v45 = [a1 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    OUTLINED_FUNCTION_1_88();
    OUTLINED_FUNCTION_0_87();
    v35 = static CasinoFactory.makeRowCardSection(possibleTitle:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:shouldUseDefaultImageSize:)();
  }

  (*(v52 + 8))(v54, v53);
  return v35;
}

id static PhoneCasinoFactory.makeSash<A>(intent:app:deviceState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = (*(a5 + 8))(a4, a5);
  v8 = static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(a2, v7, a3);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUISash, SAUISash_ptr);
  return SAUISash.init(app:)(v8);
}

id static SACardSnippet.makeFromCardSectionsWithConfirmationOptions(cardSections:intent:sash:confirmationOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = static SACardSnippet.makeFromCardSectionsWithIntentData(cardSections:intent:intentResponse:shouldGenerateAceId:)();
  [v6 setSash:a3];
  [v6 setConfirmationOptions:a4];

  return v6;
}

id SFDetailedRowCardSection.init(person:mappedLabel:contactIdentifiers:locale:sharedGlobals:titleMaxLines:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SFRichText, SFRichText_ptr);
  v13 = v12;
  v14 = [a1 displayName];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = @nonobjc SFRichText.__allocating_init(string:)(v15, v17);
  [v13 setTitle:v18];

  SFRichText.init(mappedLabel:titleMaxLines:)(a2, a3, a7);
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_426260;
  *(v21 + 32) = v20;
  v22 = v20;
  outlined bridged method (mbnn) of @objc SFDetailedRowCardSection.descriptions.setter(v21, v13);
  SFDetailedRowCardSection.setHintTextIfNeeded(sharedGlobals:person:)(a6);
  v23 = [objc_allocWithZone(SFContactImage) init];
  outlined bridged method (mbnn) of @objc SFContactImage.contactIdentifiers.setter(a4, v23);
  [v13 setThumbnail:v23];

  __swift_destroy_boxed_opaque_existential_1(a6);
  v24 = type metadata accessor for Locale();
  (*(*(v24 - 8) + 8))(a5, v24);
  return v13;
}

void SFRichText.init(mappedLabel:titleMaxLines:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = v5;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v5 setText:v7];

  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    [v5 setMaxLines:a3];
  }
}

void SFDetailedRowCardSection.setHintTextIfNeeded(sharedGlobals:person:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (INPerson.isProvidedByPlus.getter())
  {
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v8);
    v10 = (*(v9 + 176))(v8, v9);
    type metadata accessor for PhoneCallFlowDelegatePlugin();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    static Locale.current.getter();
    v13 = Locale.identifier.getter();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v23[4] = v13;
    v23[5] = v15;
    v23[2] = 45;
    v23[3] = 0xE100000000000000;
    v23[0] = 95;
    v23[1] = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v18 = v17;

    v19 = outlined bridged method (mbbnbnb) of @objc AFLocalization.localizedString(forKey:table:bundle:languageCode:)(0xD000000000000011, 0x800000000045C400, 1396918608, 0xE400000000000000, v12, v16, v18, v10);
    v21 = v20;

    if (v21)
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SFRichText, SFRichText_ptr);
      v22 = @nonobjc SFRichText.__allocating_init(string:)(v19, v21);
      [v2 setFootnote:v22];
    }
  }
}

void outlined bridged method (mbnn) of @objc SFDetailedRowCardSection.descriptions.setter(uint64_t a1, void *a2)
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SFRichText, SFRichText_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setDescriptions:isa];
}

void outlined bridged method (mbnn) of @objc SFContactImage.contactIdentifiers.setter(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setContactIdentifiers:isa];
}

void *PhoneContactDisambiguationHeaderItemFactory.makeHeaderItems(persons:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Image();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v26 - v9);
  if (a1 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return _swiftEmptyArrayStorage;
    }
  }

  else if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    return _swiftEmptyArrayStorage;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v11 = *(a1 + 32);
  }

  v12 = v11;
  OUTLINED_FUNCTION_0_88();
  if ((DeviceState.isStandaloneIOS.getter() & 1) == 0 || !PhoneContactDisambiguationProperties.isHandleDisambiguation.getter(a1))
  {

    return _swiftEmptyArrayStorage;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.siriPhone);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "#PhoneContactDisambiguationHeaderItemFactory Building header item", v16, 2u);
  }

  type metadata accessor for SiriKitDisambiguationItemComponent();
  v17 = [v12 displayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();

  v18 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

  OUTLINED_FUNCTION_0_88();
  v19 = DeviceState.isStandaloneIOS.getter();
  v20 = *(v2 + 32);
  v21 = OUTLINED_FUNCTION_0_88();
  v22 = DeviceState.isAuthenticatedForPhone.getter(v21, v20);
  INPerson.buildDisplayImage(supportsCompactView:isDeviceLocked:)(v19 & 1, (v22 & 1) == 0, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v23 = swift_allocObject();
  v26 = xmmword_426260;
  *(v23 + 16) = xmmword_426260;
  v24 = swift_allocObject();
  *(v24 + 16) = v26;
  *(v24 + 32) = v18;
  (*(v5 + 16))(v7, v10, v4);
  type metadata accessor for SiriKitDisambiguationItem();
  swift_allocObject();

  *(v23 + 32) = SiriKitDisambiguationItem.init(components:image:utterance:allowLineWrapForDisplayText:)();

  (*(v5 + 8))(v10, v4);
  return v23;
}

uint64_t PhoneContactDisambiguationItemFactory.init(contacts:templatingService:isDirectInvocation:appId:assistantProperties:deviceState:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a1;
  outlined init with take of SPHConversation(a2, a8 + 120);
  outlined init with take of SPHConversation(a6, a8 + 40);
  outlined init with take of SPHConversation(a7, a8 + 80);
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
}

uint64_t PhoneContactDisambiguationItemFactory.appId.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PhoneContactDisambiguationItemFactory.disambiguationListProperties.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  a1[3] = &type metadata for PhoneContactDisambiguationProperties;
  a1[4] = &protocol witness table for PhoneContactDisambiguationProperties;
  *a1 = v2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A32ContactDisambiguationItemFactoryV05buildgH04item_ySo8INPersonC_y07SiriKitC00mngH0CctF04_s11mn9Flow0aB18gH16CIegxT_ACIegg_TRAJIegxT_Tf1ncn_n(void *a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  v9 = [a1 personHandle];
  if (v9 && (v10 = v9, v11 = [v9 emergencyType], v10, v11 == &dword_0 + 1))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v12 = type metadata accessor for Logger();
    v13 = OUTLINED_FUNCTION_12_1(v12, static Logger.siriPhone);
    v14 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_43(v14))
    {
      v15 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_8_43(v15);
      OUTLINED_FUNCTION_6_44(&dword_0, v16, v17, "Building local emergency item");
      OUTLINED_FUNCTION_5_7();
    }

    v18 = OUTLINED_FUNCTION_3_73();
    PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)(v18, v19, v20);
  }

  else
  {
    INPerson.isUnnamedPhoneNumber.getter();
    if (v21)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v22 = type metadata accessor for Logger();
      v23 = OUTLINED_FUNCTION_12_1(v22, static Logger.siriPhone);
      v24 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_43(v24))
      {
        v25 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_8_43(v25);
        OUTLINED_FUNCTION_6_44(&dword_0, v26, v27, "Building unnamed phone number item");
        OUTLINED_FUNCTION_5_7();
      }

      v28 = OUTLINED_FUNCTION_3_73();
      PhoneContactDisambiguationItemFactory.buildUnnamedPhoneNumberDisambiguationItem(_:_:)(v28, v29, v30);
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v31 = type metadata accessor for Logger();
      v32 = OUTLINED_FUNCTION_12_1(v31, static Logger.siriPhone);
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = OUTLINED_FUNCTION_65_0();
        *v34 = 0;
        _os_log_impl(&dword_0, v32, v33, "Building regular item", v34, 2u);
      }

      _s27PhoneCallFlowDelegatePlugin0A32ContactDisambiguationItemFactoryV012buildRegulargH033_5F787DBA463515721263E7111A704531LLyySo8INPersonC_y07SiriKitC00qrgH0CctF04_s11qr9Flow0aB18gH16CIegxT_ACIegg_TRAJIegxT_Tf1ncn_n(a1, a2, a3, a4);
    }
  }
}

uint64_t PhoneContactDisambiguationItemFactory.buildDisambiguationItem(item:_:)(void *a1)
{
  v1 = [a1 personHandle];
  if (v1 && (v2 = v1, v3 = [v1 emergencyType], v2, v3 == &dword_0 + 1))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v4 = type metadata accessor for Logger();
    v5 = OUTLINED_FUNCTION_12_1(v4, static Logger.siriPhone);
    v6 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_43(v6))
    {
      v7 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_8_43(v7);
      OUTLINED_FUNCTION_6_44(&dword_0, v8, v9, "Building local emergency item");
      OUTLINED_FUNCTION_5_7();
    }

    v10 = OUTLINED_FUNCTION_12_50();

    return PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)(v10, v11, v12);
  }

  else
  {
    INPerson.isUnnamedPhoneNumber.getter();
    if (v14)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v15 = type metadata accessor for Logger();
      v16 = OUTLINED_FUNCTION_12_1(v15, static Logger.siriPhone);
      v17 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_43(v17))
      {
        v18 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_8_43(v18);
        OUTLINED_FUNCTION_6_44(&dword_0, v19, v20, "Building unnamed phone number item");
        OUTLINED_FUNCTION_5_7();
      }

      v21 = OUTLINED_FUNCTION_12_50();

      return PhoneContactDisambiguationItemFactory.buildUnnamedPhoneNumberDisambiguationItem(_:_:)(v21, v22, v23);
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v24 = type metadata accessor for Logger();
      v25 = OUTLINED_FUNCTION_12_1(v24, static Logger.siriPhone);
      v26 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_43(v26))
      {
        v27 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_8_43(v27);
        OUTLINED_FUNCTION_6_44(&dword_0, v28, v29, "Building regular item");
        OUTLINED_FUNCTION_5_7();
      }

      v30 = OUTLINED_FUNCTION_12_50();

      return PhoneContactDisambiguationItemFactory.buildRegularDisambiguationItem(_:_:)(v30, v31, v32);
    }
  }
}

uint64_t PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v59 = a3;
  v57 = a2;
  v4 = type metadata accessor for Image();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v10 = *(v5 + 104);
  v60 = &v52 - v11;
  v10(v9);
  v12 = [a1 displayName];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16 && INPerson.hasHandleLabel.getter() && (v17 = [a1 personHandle]) != 0 && (v18 = v17, v19 = objc_msgSend(v17, "label"), v18, v19))
  {
    v56 = v19;
    v20 = [a1 personHandle];
    v53 = a1;
    if (v20 && (v21 = outlined bridged method (ob) of @objc INPersonHandle.value.getter(v20), v22))
    {
      v54 = v21;
      v55 = v22;
    }

    else
    {
      v35 = [a1 displayName];
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v36;
    }

    v37 = v58;
    outlined init with copy of PhoneContactDisambiguationItemFactory(v58, v62);
    (*(v5 + 16))(v7, v60, v4);
    v38 = (*(v5 + 80) + 200) & ~*(v5 + 80);
    v39 = (v6 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    memcpy(v40 + 16, v62, 0xA0uLL);
    v42 = v56;
    v41 = v57;
    *(v40 + 22) = v56;
    *(v40 + 23) = v41;
    *(v40 + 24) = v59;
    (*(v5 + 32))(&v40[v38], v7, v4);
    v43 = v53;
    *&v40[v39] = v53;
    outlined init with copy of PhoneContactDisambiguationItemFactory(v37, v61);
    v44 = swift_allocObject();
    *(v44 + 16) = partial apply for closure #1 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:);
    *(v44 + 24) = v40;
    *(v44 + 32) = 1;
    memcpy((v44 + 40), v61, 0xA0uLL);
    v45 = v42;
    v46 = v43;

    PhoneContactDisambiguationItemFactory.getPhoneNumberSpeakableString(value:_:)(v54, v55, partial apply for closure #1 in PhoneContactDisambiguationItemFactory.buildHandleValueItemComponent(_:_:allowedOnLockScreen:_:), v44);

    return (*(v5 + 8))(v60, v4);
  }

  else
  {
    v23 = a1;
    if (INPerson.hasHandleValue.getter())
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.siriPhone);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v62[0] = v51;
        *v50 = 136315138;
        *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000095, 0x800000000045EE30, v62);
        _os_log_impl(&dword_0, v48, v49, "%s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v24 = v58;
      outlined init with copy of PhoneContactDisambiguationItemFactory(v58, v62);
      (*(v5 + 16))(v7, v60, v4);
      v25 = (*(v5 + 80) + 192) & ~*(v5 + 80);
      v26 = (v6 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v27 = swift_allocObject();
      v28 = v59;
      *(v27 + 2) = v57;
      *(v27 + 3) = v28;
      memcpy(v27 + 32, v62, 0xA0uLL);
      (*(v5 + 32))(&v27[v25], v7, v4);
      *&v27[v26] = v23;
      v29 = v24[18];
      v30 = v24[19];
      v58 = __swift_project_boxed_opaque_existential_1(v24 + 15, v29);
      v31 = swift_allocObject();
      *(v31 + 16) = partial apply for closure #2 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:);
      *(v31 + 24) = v27;
      v57 = v4;
      v32 = *(v30 + 56);
      v33 = v23;

      v32(partial apply for closure #1 in PhoneContactDisambiguationItemFactory.buildEmergencyServicesItemComponent(_:), v31, v29, v30);

      return (*(v5 + 8))(v60, v57);
    }
  }

  return result;
}

uint64_t PhoneContactDisambiguationItemFactory.buildUnnamedPhoneNumberDisambiguationItem(_:_:)(void *a1, char *a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v5 = type metadata accessor for Image();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v25 - v11;
  v13 = [a1 personHandle];
  if (v13 && (v14 = outlined bridged method (ob) of @objc INPersonHandle.value.getter(v13), v15))
  {
    v16 = v15;
    v25 = v14;
  }

  else
  {
    v17 = [a1 displayName];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v18;
  }

  (*(v6 + 104))(v12, enum case for Image.none(_:), v5);
  outlined init with copy of PhoneContactDisambiguationItemFactory(v3, v29);
  (*(v6 + 16))(v8, v12, v5);
  v19 = (*(v6 + 80) + 200) & ~*(v6 + 80);
  v20 = swift_allocObject();
  v21 = v26;
  *(v20 + 2) = a1;
  *(v20 + 3) = v21;
  v26 = v12;
  *(v20 + 4) = v27;
  memcpy(v20 + 40, v29, 0xA0uLL);
  (*(v6 + 32))(&v20[v19], v8, v5);
  outlined init with copy of PhoneContactDisambiguationItemFactory(v3, v28);
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for closure #1 in PhoneContactDisambiguationItemFactory.buildUnnamedPhoneNumberDisambiguationItem(_:_:);
  *(v22 + 24) = v20;
  *(v22 + 32) = 1;
  memcpy((v22 + 40), v28, 0xA0uLL);

  v23 = a1;

  PhoneContactDisambiguationItemFactory.getPhoneNumberSpeakableString(value:_:)(v25, v16, closure #1 in PhoneContactDisambiguationItemFactory.buildHandleValueItemComponent(_:_:allowedOnLockScreen:_:)partial apply, v22);

  return (*(v6 + 8))(v26, v5);
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A32ContactDisambiguationItemFactoryV012buildRegulargH033_5F787DBA463515721263E7111A704531LLyySo8INPersonC_y07SiriKitC00qrgH0CctF04_s11qr9Flow0aB18gH16CIegxT_ACIegg_TRAJIegxT_Tf1ncn_n(void *a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v69 = a1;
  v7 = type metadata accessor for Image();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v64 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  v65 = a3;
  v10[2] = a3;
  v10[3] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = _swiftEmptyArrayStorage;
  v12 = swift_allocBox();
  v14 = v13;
  v66 = v8;
  (*(v8 + 104))(v13, enum case for Image.none(_:), v7);
  v15 = a2[1];

  v16 = PhoneContactDisambiguationProperties.isHandleDisambiguation.getter(v15);
  v67 = a4;
  v68 = v12;
  if (!v16)
  {
    PhoneContactDisambiguationItemFactory.buildFullNameItemComponent(_:)(v69);
    v63 = v10;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    __swift_project_boxed_opaque_existential_1(a2 + 10, a2[13]);
    v26 = DeviceState.isStandaloneIOS.getter();
    v27 = a2[13];
    v28 = a2[14];
    __swift_project_boxed_opaque_existential_1(a2 + 10, v27);
    v29 = DeviceState.isAuthenticatedForPhone.getter(v27, v28);
    v30 = v64;
    v31 = v69;
    INPerson.buildDisplayImage(supportsCompactView:isDeviceLocked:)(v26 & 1, (v29 & 1) == 0, v64);
    v32 = v66;
    (*(v66 + 40))(v14, v30, v7);
    (*(v32 + 16))(v30, v14, v7);

    PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v33, v30, v31);

    (*(v32 + 8))(v30, v7);

    v65(v34);

LABEL_8:
  }

  v60 = v11 + 16;
  v61 = v7;
  v62 = v14;
  v63 = a2;
  v17 = v66;
  v18 = v69;
  v19 = [v69 personHandle];
  if (!v19 || (v20 = outlined bridged method (ob) of @objc INPersonHandle.value.getter(v19), !v21))
  {
    v35 = v64;
    v36 = v61;
    (*(v17 + 16))(v64, v62, v61);

    PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v37, v35, v18);

    (*(v17 + 8))(v35, v36);

    v65(v38);

    goto LABEL_8;
  }

  v58 = v20;
  v59 = v21;
  v22 = v18;
  v23 = [v18 personHandle];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 type];
  }

  else
  {
    v25 = 0;
  }

  v40 = v63;
  outlined init with copy of PhoneContactDisambiguationItemFactory(v63, __src);
  outlined init with copy of PhoneContactDisambiguationItemFactory(__src, v71);
  v41 = swift_allocObject();
  v41[2] = v11;
  v41[3] = v22;
  v41[4] = _s11SiriKitFlow0aB18DisambiguationItemCIegxT_ACIegg_TRTA_53;
  v41[5] = v10;
  memcpy(v41 + 6, __src, 0xA0uLL);
  v41[26] = v68;
  v41[27] = v25;
  if (v25 == &dword_0 + 2)
  {
    outlined init with copy of PhoneContactDisambiguationItemFactory(v40, v70);
    v42 = swift_allocObject();
    *(v42 + 16) = closure #1 in PhoneContactDisambiguationItemFactory.buildRegularDisambiguationItem(_:_:)partial apply;
    *(v42 + 24) = v41;
    *(v42 + 32) = 0;
    memcpy((v42 + 40), v70, 0xA0uLL);

    v43 = v22;

    PhoneContactDisambiguationItemFactory.getPhoneNumberSpeakableString(value:_:)(v58, v59, closure #1 in PhoneContactDisambiguationItemFactory.buildHandleValueItemComponent(_:_:allowedOnLockScreen:_:)partial apply, v42);

    outlined destroy of PhoneContactDisambiguationItemFactory(v71);
  }

  v56 = v25;
  v57 = v41;
  type metadata accessor for SiriKitDisambiguationItemComponent();
  swift_retain_n();

  v63 = v10;

  v44 = v22;
  dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();

  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withAllowedOnLockScreen(_:)();

  __swift_project_boxed_opaque_existential_1(v40 + 10, v40[13]);
  DeviceState.isStandaloneIOS.getter();
  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withPrintBlue(_:)();

  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  if (INPerson.hasHandleLabel.getter() && (v45 = [v44 personHandle]) != 0 && (v46 = v45, v47 = objc_msgSend(v45, "label"), v46, v47))
  {
    outlined init with copy of PhoneContactDisambiguationItemFactory(v71, v70);
    v48 = swift_allocObject();
    v48[2] = v11;
    v48[3] = _s11SiriKitFlow0aB18DisambiguationItemCIegxT_ACIegg_TRTA_53;
    v48[4] = v63;
    memcpy(v48 + 5, v70, 0xA0uLL);
    v48[25] = v68;
    v48[26] = v44;

    v49 = v44;
    PhoneContactDisambiguationItemFactory.buildHandleLabelItemComponent(_:_:_:)(v47, v56, closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildRegularDisambiguationItem(_:_:)partial apply, v48);

    outlined destroy of PhoneContactDisambiguationItemFactory(v71);
  }

  else
  {
    v50 = v62;
    swift_beginAccess();
    v51 = v64;
    v52 = v61;
    (*(v17 + 16))(v64, v50, v61);

    PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v53, v51, v44);

    (*(v17 + 8))(v51, v52);

    v65(v54);

    outlined destroy of PhoneContactDisambiguationItemFactory(v71);
  }
}

uint64_t PhoneContactDisambiguationItemFactory.buildRegularDisambiguationItem(_:_:)(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v72 = a3;
  v74 = a1;
  v6 = type metadata accessor for Image();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  *(v10 + 16) = _swiftEmptyArrayStorage;
  v11 = swift_allocBox();
  v13 = v12;
  (*(v7 + 104))(v12, enum case for Image.none(_:), v6);
  v14 = PhoneContactDisambiguationProperties.isHandleDisambiguation.getter(v4[1]);
  v73 = v11;
  v70 = v13;
  v71 = a2;
  if (!v14)
  {
    v69 = PhoneContactDisambiguationItemFactory.buildFullNameItemComponent(_:)(v74);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v25 = v6;
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
    v26 = DeviceState.isStandaloneIOS.getter();
    v27 = v4[13];
    v28 = v4[14];
    __swift_project_boxed_opaque_existential_1(v4 + 10, v27);
    v29 = DeviceState.isAuthenticatedForPhone.getter(v27, v28);
    v30 = v74;
    INPerson.buildDisplayImage(supportsCompactView:isDeviceLocked:)(v26 & 1, (v29 & 1) == 0, v9);
    v31 = v70;
    (*(v7 + 40))(v70, v9, v25);
    (*(v7 + 16))(v9, v31, v25);

    v33 = PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v32, v9, v30);

    (*(v7 + 8))(v9, v25);
    v71(v33);
LABEL_8:
  }

  v67 = v10 + 16;
  v68 = v6;
  v15 = v10;
  v69 = v4;
  v16 = v74;
  v17 = [v74 personHandle];
  if (!v17 || (v18 = outlined bridged method (ob) of @objc INPersonHandle.value.getter(v17), !v19))
  {
    v34 = v68;
    (*(v7 + 16))(v9, v70, v68);

    v36 = PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v35, v9, v16);

    (*(v7 + 8))(v9, v34);
    v71(v36);
    goto LABEL_8;
  }

  v65 = v18;
  v66 = v19;
  v20 = [v16 personHandle];
  v21 = v15;
  v22 = v71;
  if (v20)
  {
    v23 = v20;
    v24 = [v20 type];
  }

  else
  {
    v24 = 0;
  }

  v38 = v69;
  outlined init with copy of PhoneContactDisambiguationItemFactory(v69, __src);
  outlined init with copy of PhoneContactDisambiguationItemFactory(__src, v76);
  v39 = swift_allocObject();
  v40 = v74;
  v39[2] = v21;
  v39[3] = v40;
  v39[4] = v22;
  v39[5] = v72;
  memcpy(v39 + 6, __src, 0xA0uLL);
  v39[26] = v73;
  v39[27] = v24;
  if (v24 == &dword_0 + 2)
  {
    outlined init with copy of PhoneContactDisambiguationItemFactory(v38, v75);
    v41 = swift_allocObject();
    *(v41 + 16) = partial apply for closure #1 in PhoneContactDisambiguationItemFactory.buildRegularDisambiguationItem(_:_:);
    *(v41 + 24) = v39;
    *(v41 + 32) = 0;
    memcpy((v41 + 40), v75, 0xA0uLL);

    v42 = v40;

    PhoneContactDisambiguationItemFactory.getPhoneNumberSpeakableString(value:_:)(v65, v66, closure #1 in PhoneContactDisambiguationItemFactory.buildHandleValueItemComponent(_:_:allowedOnLockScreen:_:)partial apply, v41);

    outlined destroy of PhoneContactDisambiguationItemFactory(v76);
  }

  v63 = v24;
  v64 = v9;
  v43 = v70;
  type metadata accessor for SiriKitDisambiguationItemComponent();
  v69 = v21;
  swift_retain_n();

  v44 = v40;
  dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();

  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withAllowedOnLockScreen(_:)();

  __swift_project_boxed_opaque_existential_1((v38 + 80), *(v38 + 104));
  DeviceState.isStandaloneIOS.getter();
  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withPrintBlue(_:)();
  v45 = v69;

  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  v46 = v44;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  if (INPerson.hasHandleLabel.getter() && (v47 = [v44 personHandle]) != 0 && (v48 = v47, v49 = objc_msgSend(v47, "label"), v48, v49))
  {
    outlined init with copy of PhoneContactDisambiguationItemFactory(v76, v75);
    v50 = v46;
    v51 = swift_allocObject();
    v52 = v71;
    v53 = v72;
    v51[2] = v45;
    v51[3] = v52;
    v51[4] = v53;
    memcpy(v51 + 5, v75, 0xA0uLL);
    v51[25] = v73;
    v51[26] = v50;

    v54 = v50;
    PhoneContactDisambiguationItemFactory.buildHandleLabelItemComponent(_:_:_:)(v49, v63, partial apply for closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildRegularDisambiguationItem(_:_:), v51);

    outlined destroy of PhoneContactDisambiguationItemFactory(v76);
  }

  else
  {
    v55 = v43;
    swift_beginAccess();
    v56 = v7;
    v57 = *(v7 + 16);
    v58 = v64;
    v59 = v68;
    v57(v64, v55, v68);

    v61 = PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v60, v58, v46);

    (*(v56 + 8))(v58, v59);
    v71(v61);

    outlined destroy of PhoneContactDisambiguationItemFactory(v76);
  }
}

uint64_t PhoneContactDisambiguationItemFactory.buildFullNameItemComponent(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17[-1] - v6;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  type metadata accessor for DialogPerson();
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v9 = a1;
  v10 = DialogPerson.__allocating_init(person:locale:useConversationalName:)();
  if (!v10)
  {
LABEL_4:
    v12 = [v9 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  dispatch thunk of DialogPerson.fullName.getter();

  v11 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    goto LABEL_4;
  }

  SpeakableString.print.getter();
  (*(*(v11 - 8) + 8))(v7, v11);
LABEL_7:

  dispatch thunk of DialogPerson.fullName.getter();

  v13 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v4, 1, v13) != 1)
  {
    SpeakableString.speak.getter();
    (*(*(v13 - 8) + 8))(v4, v13);
    goto LABEL_11;
  }

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
LABEL_9:

LABEL_11:
  type metadata accessor for SiriKitDisambiguationItemComponent();
  dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();

  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withSpeak(_:)();

  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withSpeakOnLockScreen(_:)();

  v14 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

  return v14;
}

uint64_t PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Image();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 16) == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriPhone);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "#PhoneContactDisambiguationItemFactory Building disambiguation item with direct invocation payload", v14, 2u);
    }

    type metadata accessor for SKIDirectInvocationPayload();
    static SKIDirectInvocationPayload.contactDisambiguation(contact:)(a3);
    (*(v7 + 16))(v10, a2, v6);
    type metadata accessor for SiriKitDisambiguationItem();
    swift_allocObject();

    return SiriKitDisambiguationItem.init(components:image:directInvocation:allowLineWrapForDisplayText:)();
  }

  else
  {
    (*(v7 + 16))(v10, a2, v6, v8);

    INPerson.toStartRequestUtterance()();
    type metadata accessor for SiriKitDisambiguationItem();
    swift_allocObject();
    return SiriKitDisambiguationItem.init(components:image:utterance:allowLineWrapForDisplayText:)();
  }
}

void closure #1 in PhoneContactDisambiguationItemFactory.buildRegularDisambiguationItem(_:_:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a8;
  v27 = a6;
  v26 = a5;
  v25 = a4;
  v11 = type metadata accessor for Image();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_projectBox();
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  if (INPerson.hasHandleLabel.getter() && (v16 = [a3 personHandle]) != 0 && (v17 = v16, v18 = objc_msgSend(v16, "label"), v17, v18))
  {
    outlined init with copy of PhoneContactDisambiguationItemFactory(v27, __src);
    v19 = swift_allocObject();
    v20 = v25;
    v19[2] = a2;
    v19[3] = v20;
    v19[4] = v26;
    memcpy(v19 + 5, __src, 0xA0uLL);
    v19[25] = a7;
    v19[26] = a3;

    v21 = a3;
    PhoneContactDisambiguationItemFactory.buildHandleLabelItemComponent(_:_:_:)(v18, v24, closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildRegularDisambiguationItem(_:_:)partial apply, v19);
  }

  else
  {
    swift_beginAccess();
    swift_beginAccess();
    (*(v12 + 16))(v14, v15, v11);

    v23 = PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v22, v14, a3);

    (*(v12 + 8))(v14, v11);
    v25(v23);
  }
}

uint64_t closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildRegularDisambiguationItem(_:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v16[1] = a4;
  v17 = a3;
  v8 = type metadata accessor for Image();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_projectBox();
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);

  v14 = PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v13, v11, a7);

  (*(v9 + 8))(v11, v8);
  v17(v14);
}

uint64_t PhoneContactDisambiguationItemFactory.buildHandleLabelItemComponent(_:_:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v28 = a3;
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v33 = Locale.identifier.getter();
  v34 = v13;
  v31 = 45;
  v32 = 0xE100000000000000;
  v29 = 95;
  v30 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  (*(v10 + 8))(v12, v9);
  v14 = static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();
  v16 = v15;

  type metadata accessor for SiriKitDisambiguationItemComponent();
  dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();
  v17 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

  if (PhoneContactDisambiguationProperties.hasOneHandleType.getter(v4[1]) || (a2 - 3) < 0xFFFFFFFFFFFFFFFELL)
  {

    v28(v17);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.siriPhone);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "More than one handle type -- appending HandleType", v21, 2u);
    }

    v22 = v5[18];
    v23 = v5[19];
    __swift_project_boxed_opaque_existential_1(v5 + 15, v22);
    v24 = swift_allocObject();
    v24[2] = v28;
    v24[3] = a4;
    v24[4] = v14;
    v24[5] = v16;
    v25 = *(v23 + 48);

    v25(a1, a2, partial apply for closure #1 in PhoneContactDisambiguationItemFactory.buildHandleLabelItemComponent(_:_:_:), v24, v22, v23);
  }
}

void closure #1 in PhoneContactDisambiguationItemFactory.buildUnnamedPhoneNumberDisambiguationItem(_:_:)(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a6;
  v36 = a3;
  v10 = type metadata accessor for Image();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_426260;
  *(v14 + 32) = a1;
  *(v13 + 16) = v14;

  v15 = [a2 personHandle];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 label];
    if (v17)
    {
      v18 = v17;
      v34 = v10;
      v19 = v11;
      v33 = a4;
      v20 = a5;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v24 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        v32 = [v16 type];
        v31[1] = v20;
        outlined init with copy of PhoneContactDisambiguationItemFactory(v20, __src);
        (*(v19 + 16))(v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v34);
        v25 = (*(v19 + 80) + 200) & ~*(v19 + 80);
        v26 = swift_allocObject();
        v27 = v36;
        *(v26 + 2) = v13;
        *(v26 + 3) = v27;
        *(v26 + 4) = v33;
        memcpy(v26 + 40, __src, 0xA0uLL);
        (*(v19 + 32))(&v26[v25], v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v34);
        *&v26[(v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;

        v28 = a2;
        PhoneContactDisambiguationItemFactory.buildHandleLabelItemComponent(_:_:_:)(v18, v32, partial apply for closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildUnnamedPhoneNumberDisambiguationItem(_:_:), v26);

        return;
      }
    }

    else
    {
      v18 = v16;
    }
  }

  v30 = PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v29, v35, a2);

  v36(v30);
}

uint64_t closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildUnnamedPhoneNumberDisambiguationItem(_:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  v11 = PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v10, a6, a7);

  a3(v11);
}

uint64_t closure #1 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v20 = a4;
  v21 = a3;
  v12 = type metadata accessor for Image();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  outlined init with copy of PhoneContactDisambiguationItemFactory(a2, __src);
  (*(v13 + 16))(&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v12);
  v15 = (*(v13 + 80) + 200) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v20;
  *(v16 + 3) = a5;
  memcpy(v16 + 32, __src, 0xA0uLL);
  *(v16 + 24) = a1;
  (*(v13 + 32))(&v16[v15], &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  *&v16[(v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8] = a7;

  v17 = a7;
  PhoneContactDisambiguationItemFactory.buildHandleLabelItemComponent(_:_:_:)(v21, 2, partial apply for closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:), v16);
}

uint64_t closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_427BB0;
  *(v12 + 32) = a5;
  *(v12 + 40) = a1;

  v13 = PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v12, a6, a7);

  a2(v13);
}

uint64_t closure #2 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_426260;
  *(v10 + 32) = a1;

  v11 = PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v10, a5, a6);

  a2(v11);
}

void *closure #1 in PhoneContactDisambiguationItemFactory.buildHandleLabelItemComponent(_:_:_:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a4;
  v9 = type metadata accessor for TemplatingResult();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  outlined init with copy of Result<TemplatingResult, Error>(a1, &v35 - v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v18, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

  v40 = a5;
  (*(v10 + 32))(v15, v18, v9);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.siriPhone);
  (*(v10 + 16))(v12, v15, v9);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  v23 = os_log_type_enabled(v21, v22);
  v39 = v10;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v38 = a2;
    v36 = v25;
    v42 = v25;
    *v24 = 136315138;
    TemplatingResult.print.getter();
    v26 = Array.description.getter();
    v37 = a3;
    v27 = v26;
    v29 = v28;

    v30 = v12;
    v31 = *(v10 + 8);
    v31(v30, v9);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v42);

    *(v24 + 4) = v32;
    _os_log_impl(&dword_0, v21, v22, "snippetDisplayHandleLabelWithType SUCCESS: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    a2 = v38;
  }

  else
  {

    v33 = v12;
    v31 = *(v10 + 8);
    v31(v33, v9);
  }

  type metadata accessor for SiriKitDisambiguationItemComponent();
  dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();
  result = TemplatingResult.print.getter();
  if (!result[2])
  {
    __break(1u);
    goto LABEL_13;
  }

  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withPrintOnLockScreen(_:)();

  result = TemplatingResult.speak.getter();
  if (!result[2])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withSpeak(_:)();

  result = TemplatingResult.speak.getter();
  if (result[2])
  {

    dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withSpeakOnLockScreen(_:)();

    v34 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

    a2(v34);

    return (v31)(v15, v9);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t closure #1 in PhoneContactDisambiguationItemFactory.buildHandleValueItemComponent(_:_:allowedOnLockScreen:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for SiriKitDisambiguationItemComponent();
  dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();
  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withSpeak(_:)();

  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withSpeakOnLockScreen(_:)();

  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withAllowedOnLockScreen(_:)();

  __swift_project_boxed_opaque_existential_1((a8 + 80), *(a8 + 104));
  DeviceState.isStandaloneIOS.getter();
  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withPrintBlue(_:)();

  v10 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

  a5(v10);
}

uint64_t PhoneContactDisambiguationItemFactory.getPhoneNumberSpeakableString(value:_:)(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, uint64_t, unint64_t, unint64_t), uint64_t a4)
{
  v5 = v4;
  v38 = a4;
  v39 = a3;
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CharacterSet.controlCharacters.getter();
  v41 = v11;

  v12 = specialized RangeReplaceableCollection.filter(_:)(partial apply for closure #1 in String.remove(characters:), v40, a1, a2);
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);

  v42 = 0xD000000000000012;
  v43 = 0x800000000045EED0;
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000013;
  v16._object = 0x800000000045EEF0;
  String.append(_:)(v16);
  v17 = v42;
  v18 = v43;
  v20 = v5[8];
  v19 = v5[9];
  __swift_project_boxed_opaque_existential_1(v5 + 5, v20);
  v21 = (*(v19 + 8))(v20, v19);
  if (v22)
  {
    v23 = v22;
    v36 = v21;
    v37 = v18;
    v24 = v38;
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriPhone);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v42 = v29;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v42);
      _os_log_impl(&dword_0, v26, v27, "Format phone number call: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
    }

    v30 = v5[18];
    v31 = v5[19];
    __swift_project_boxed_opaque_existential_1(v5 + 15, v30);
    v32 = swift_allocObject();
    v32[2] = v39;
    v32[3] = v24;
    v32[4] = v12;
    v32[5] = v14;
    v33 = v37;
    v32[6] = v17;
    v32[7] = v33;
    v34 = *(v31 + 64);

    v34(v36, v23, v12, v14, partial apply for closure #1 in PhoneContactDisambiguationItemFactory.getPhoneNumberSpeakableString(value:_:), v32, v30, v31);
  }

  else
  {
    v39(a1, a2, v17, v18);
  }
}

void *closure #1 in PhoneContactDisambiguationItemFactory.getPhoneNumberSpeakableString(value:_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43[0] = a7;
  v43[1] = a3;
  v44 = a2;
  v11 = type metadata accessor for TemplatingResult();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v18);
  v20 = v43 - v19;
  outlined init with copy of Result<TemplatingResult, Error>(a1, v43 - v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v20, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.siriPhone);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "Format phone number failure", v24, 2u);
    }

    return v44(a4, a5, a6, v43[0]);
  }

  else
  {
    (*(v12 + 32))(v17, v20, v11);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.siriPhone);
    (*(v12 + 16))(v14, v17, v11);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43[0] = v12;
      v31 = v30;
      v45 = v30;
      *v29 = 136315138;
      TemplatingResult.speak.getter();
      v32 = Array.description.getter();
      v34 = v33;

      v35 = v14;
      v36 = *(v43[0] + 8);
      v36(v35, v11);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v45);

      *(v29 + 4) = v37;
      _os_log_impl(&dword_0, v27, v28, "Format phone number success: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
    }

    else
    {

      v38 = v14;
      v36 = *(v12 + 8);
      v36(v38, v11);
    }

    result = TemplatingResult.print.getter();
    if (result[2])
    {
      v40 = result[4];
      v39 = result[5];

      result = TemplatingResult.speak.getter();
      if (result[2])
      {
        v41 = result[4];
        v42 = result[5];

        v44(v40, v39, v41, v42);

        return (v36)(v17, v11);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void *closure #1 in PhoneContactDisambiguationItemFactory.buildEmergencyServicesItemComponent(_:)(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for TemplatingResult();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  outlined init with copy of Result<TemplatingResult, Error>(a1, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for SiriKitDisambiguationItemComponent();
    dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();
    v11 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

    a2(v11);

    return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    type metadata accessor for SiriKitDisambiguationItemComponent();
    result = TemplatingResult.print.getter();
    if (result[2])
    {

      dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();

      v13 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

      a2(v13);

      return (*(v5 + 8))(v7, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneContactDisambiguationItemFactory(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t storeEnumTagSinglePayload for PhoneContactDisambiguationItemFactory(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for closure #2 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)()
{
  v2 = OUTLINED_FUNCTION_16_43();
  OUTLINED_FUNCTION_13_2(v2);
  OUTLINED_FUNCTION_5_68();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + v6);

  return closure #2 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)(v0, v4, v5, v1 + 32, v1 + v3, v7);
}

uint64_t partial apply for closure #1 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)()
{
  v0 = OUTLINED_FUNCTION_16_43();
  OUTLINED_FUNCTION_13_2(v0);
  OUTLINED_FUNCTION_5_68();
  v1 = OUTLINED_FUNCTION_17_37();

  return closure #1 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)(v1, v2, v3, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)()
{
  v0 = OUTLINED_FUNCTION_16_43();
  OUTLINED_FUNCTION_13_2(v0);
  OUTLINED_FUNCTION_5_68();
  v1 = OUTLINED_FUNCTION_17_37();

  return closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)(v1, v2, v3, v4, v5, v6, v7);
}

void partial apply for closure #1 in PhoneContactDisambiguationItemFactory.buildUnnamedPhoneNumberDisambiguationItem(_:_:)()
{
  OUTLINED_FUNCTION_16_43();
  v0 = OUTLINED_FUNCTION_17_37();

  closure #1 in PhoneContactDisambiguationItemFactory.buildUnnamedPhoneNumberDisambiguationItem(_:_:)(v0, v1, v2, v3, v4, v5);
}

uint64_t objectdestroy_8Tm()
{

  OUTLINED_FUNCTION_7_55();

  return _swift_deallocObject(v0, 200, 7);
}

uint64_t partial apply for closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildUnnamedPhoneNumberDisambiguationItem(_:_:)()
{
  v0 = OUTLINED_FUNCTION_16_43();
  OUTLINED_FUNCTION_13_2(v0);
  OUTLINED_FUNCTION_5_68();
  v1 = OUTLINED_FUNCTION_17_37();

  return closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildUnnamedPhoneNumberDisambiguationItem(_:_:)(v1, v2, v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_37Tm()
{

  OUTLINED_FUNCTION_7_55();

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t objectdestroy_34Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  __swift_destroy_boxed_opaque_existential_1((v0 + 168));

  return _swift_deallocObject(v0, 224, 7);
}

uint64_t PhoneContactDisambiguationProperties.shouldReadItemsInVox.getter(unint64_t a1)
{
  if (specialized Array.count.getter(a1) < 6 || PhoneContactDisambiguationProperties.isHandleDisambiguation.getter(a1))
  {
    static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(a1);
    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void PhoneContactDisambiguationProperties.isEmergencyDisambiguation.getter(uint64_t a1)
{
  static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(a1);
  if ((v2 & 1) == 0)
  {

    static EmergencyUtils.isRegularEmergencyDisambiguation(_:)(a1);
  }
}

BOOL PhoneContactDisambiguationProperties.isHandleDisambiguation.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_28:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v3 = *(a1 + 32);
  }

  v19 = v3;
  if (specialized Array.count.getter(a1) < 2)
  {
LABEL_24:
    v5 = 0;
  }

  else
  {
    for (i = 0; ; ++i)
    {
      v5 = v2 == i;
      if (v2 == i)
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_27;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (!INPerson.hasHandleLabel.getter() && !INPerson.hasHandleValue.getter())
      {

        goto LABEL_24;
      }

      v8 = [v19 displayName];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = [v7 displayName];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if (v9 == v13 && v11 == v15)
      {
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
          break;
        }
      }
    }
  }

  return v5;
}

BOOL PhoneContactDisambiguationProperties.hasOneHandleType.getter(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v2 > 1)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_25:
  if (_CocoaArrayWrapper.endIndex.getter() < 2)
  {
    return 0;
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v3 = *(a1 + 32);
  }

  v4 = v3;
  v5 = [v3 personHandle];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 type];

  v7 = 0;
  do
  {
    v8 = v2 == v7;
    if (v2 == v7)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_24;
      }

      v9 = *(a1 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v11 = [v9 personHandle];
    if (!v11)
    {

      return 0;
    }

    v12 = v11;
    v13 = [v11 type];

    ++v7;
  }

  while (v13 == v6 && v13 != 0);
  return v8;
}

uint64_t PhoneContactDisplayHintFactory.init(assistantProperties:deviceState:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CATOption();
  __chkstk_darwin(v6 - 8);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a1, a3);
  type metadata accessor for PhoneCallDisplayTextCATs(0);
  static CATOption.defaultMode.getter();
  type metadata accessor for CATGlobals();
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a2, v9);
  CATGlobals.__allocating_init(device:)();
  v7 = CATWrapper.__allocating_init(options:globals:)();
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(a3 + 80) = v7;
  return outlined init with take of PhoneCallFeatureFlagProviding(a2, a3 + 40);
}

uint64_t PhoneContactDisplayHintFactory.build(for:_:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  type metadata accessor for SemanticValue();
  OUTLINED_FUNCTION_7();
  v91 = v6;
  v92 = v7;
  __chkstk_darwin(v6);
  v81 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
  OUTLINED_FUNCTION_7();
  v84 = v9;
  __chkstk_darwin(v10);
  v90 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (v76 - v13);
  __chkstk_darwin(v15);
  v89 = v76 - v16;
  v17 = type metadata accessor for OrdinalDisplayHintsBuilder();
  OUTLINED_FUNCTION_7();
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v22);
  v23 = v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v76 - v25;
  v27 = swift_allocObject();
  v83 = a2;
  *(v27 + 16) = a2;
  *(v27 + 24) = a3;
  v87 = v27;

  OrdinalDisplayHintsBuilder.init(referenceNode:)();
  v28 = swift_allocObject();
  *(v28 + 16) = _swiftEmptyArrayStorage;
  v85 = v28 + 16;
  v29 = swift_allocObject();
  v86 = v29;
  *(v29 + 16) = _swiftEmptyArrayStorage;
  v82 = v29 + 16;
  static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(a1);
  if (v30)
  {
    if (one-time initialization token for siriPhone == -1)
    {
LABEL_3:
      v31 = a1;
      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.siriPhone);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_0, v33, v34, "Building display hints for foreign emergency disambiguation", v35, 2u);
      }

      (*(v19 + 16))(v23, v26, v17);
      v36 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v37 = swift_allocObject();
      v38 = v86;
      *(v37 + 16) = v28;
      *(v37 + 24) = v38;
      (*(v19 + 32))(v37 + v36, v23, v17);
      v39 = (v37 + ((v21 + v36 + 7) & 0xFFFFFFFFFFFFFFF8));
      v40 = v87;
      *v39 = partial apply for closure #1 in PhoneContactDisplayHintFactory.build(for:_:);
      v39[1] = v40;

      PhoneContactDisplayHintFactory.buildForeignEmergencyHints(_:_:)(v31, partial apply for closure #2 in PhoneContactDisplayHintFactory.build(for:_:), v37);

      (*(v19 + 8))(v26, v17);
    }

LABEL_36:
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    goto LABEL_3;
  }

  v76[0] = a3;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v76[1] = v28;
  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Logger.siriPhone);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_0, v42, v43, "Building display hints for regular contact disambiguation", v44, 2u);
  }

  v77 = v26;
  v78 = v19;
  v79 = v17;

  __chkstk_darwin(v45);
  v76[-2] = v88;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8INPersonCG_Say11SiriKitFlow11DisplayHintVG12displayHints_AI13SemanticValueV02idM0ts5NeverOTg5();
  v28 = *(v46 + 16);
  v47 = _swiftEmptyArrayStorage;
  v80 = v46;
  if (v28)
  {
    OUTLINED_FUNCTION_36_5();
    v21 = v48 + v49;
    v88 = *(v50 + 72);
    v17 = (v92 + 8);
    v26 = &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR;
    while (1)
    {
      v51 = v89;
      outlined init with copy of (displayHints: [DisplayHint], idValue: SemanticValue)(v21, v89, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
      outlined init with take of (displayHints: [DisplayHint], idValue: SemanticValue)(v51, v14, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
      v19 = *v14;
      (*v17)(v14 + *(v93 + 48), v91);
      v52 = *(v19 + 16);
      a1 = v47[2];
      v23 = (a1 + v52);
      if (__OFADD__(a1, v52))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v23 > v47[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v47 = v53;
      }

      if (*(v19 + 16))
      {
        a1 = v47[2];
        v23 = ((v47[3] >> 1) - a1);
        type metadata accessor for DisplayHint();
        if (v23 < v52)
        {
          goto LABEL_34;
        }

        swift_arrayInitWithCopy();

        if (v52)
        {
          v54 = v47[2];
          v55 = __OFADD__(v54, v52);
          v56 = v54 + v52;
          if (v55)
          {
            goto LABEL_35;
          }

          v47[2] = v56;
        }
      }

      else
      {

        if (v52)
        {
          goto LABEL_33;
        }
      }

      v21 += v88;
      if (!--v28)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_23:
  specialized Array.append<A>(contentsOf:)(v47);
  v57 = v80;
  v58 = *(v80 + 16);
  if (v58)
  {
    v94 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58, 0);
    v59 = v94;
    OUTLINED_FUNCTION_36_5();
    v61 = v57 + v60;
    v89 = *(v62 + 72);
    v63 = v91;
    v64 = (v92 + 32);
    v65 = v81;
    do
    {
      outlined init with copy of (displayHints: [DisplayHint], idValue: SemanticValue)(v61, v14, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
      v66 = v90;
      outlined init with take of (displayHints: [DisplayHint], idValue: SemanticValue)(v14, v90, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);

      v67 = *v64;
      (*v64)(v65, v66 + *(v93 + 48), v63);
      v94 = v59;
      v69 = v59[2];
      v68 = v59[3];
      if (v69 >= v68 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v68 > 1, v69 + 1, 1);
        v59 = v94;
      }

      v59[2] = v69 + 1;
      OUTLINED_FUNCTION_36_5();
      v67(v59 + v70 + *(v71 + 72) * v69, v65, v63);
      v61 += v89;
      --v58;
    }

    while (v58);
  }

  else
  {

    v59 = _swiftEmptyArrayStorage;
  }

  specialized Array.append<A>(contentsOf:)(v59);

  v72 = v77;
  v73 = OrdinalDisplayHintsBuilder.build(for:)();

  specialized Array.append<A>(contentsOf:)(v73);

  closure #1 in PhoneContactDisplayHintFactory.build(for:_:)(v74, v83, v76[0]);

  (*(v78 + 8))(v72, v79);
}

void *static PhoneContactDisplayHintFactory.build(for:deviceState:appInfoBuilder:)(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);

  return specialized static PhoneContactDisplayHintFactory.build(for:deviceState:appInfoBuilder:)(a1, a2);
}

uint64_t closure #1 in PhoneContactDisplayHintFactory.build(for:_:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v26 = a3;
  v27 = a2;
  v4 = type metadata accessor for DisplayHint();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = *(a1 + 16);
  v11 = (v5 + 16);
  v32 = (v5 + 8);
  v6.n128_u64[0] = 136315138;
  v28 = v6;
  v29 = (v5 + 16);
  v30 = v10;
  while (v10 != v9)
  {
    v12 = *(v5 + 80);
    v13 = *(v5 + 72);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.siriPhone);
    (*v11)(v8, a1 + ((v12 + 32) & ~v12) + v13 * v9, v4);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v17 = v28.n128_u32[0];
      v19 = DisplayHint.description.getter();
      v31 = v9;
      v20 = v5;
      v21 = a1;
      v23 = v22;
      (*v32)(v8, v4);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v23, &v33);
      a1 = v21;
      v5 = v20;
      v9 = v31;

      *(v17 + 4) = v24;
      _os_log_impl(&dword_0, v15, v16, "DisplayHint: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v11 = v29;

      v10 = v30;
    }

    else
    {

      (*v32)(v8, v4);
    }

    ++v9;
  }

  return v27(a1);
}

uint64_t closure #2 in PhoneContactDisplayHintFactory.build(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v37[5] = a4;
  v38 = a5;
  v37[4] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = v37 - v9;
  v11 = type metadata accessor for SemanticValue();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v45 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DisplayHint();
  v14 = *(v44 - 8);
  __chkstk_darwin(v44);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v17);
  swift_endAccess();
  swift_beginAccess();
  v18 = *(a2 + 16);
  v19 = *(v18 + 16);
  if (v19)
  {
    v37[2] = a2;
    v37[3] = a6;
    v21 = *(v14 + 16);
    v20 = v14 + 16;
    v22 = v18 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v42 = *(v20 + 56);
    v43 = v21;
    v23 = (v20 - 8);
    v39 = v12;
    v41 = (v12 + 32);
    v37[1] = v18;

    v24 = _swiftEmptyArrayStorage;
    v40 = v11;
    v25 = v20;
    do
    {
      v26 = v44;
      v27 = v25;
      v43(v16, v22, v44);
      DisplayHint.idValue.getter();
      (*v23)(v16, v26);
      if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
      {
        outlined destroy of SpeakableString?(v10, &_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
      }

      else
      {
        v28 = *v41;
        (*v41)(v45, v10, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v24 = v31;
        }

        v29 = v24[2];
        if (v29 >= v24[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v24 = v32;
        }

        v24[2] = v29 + 1;
        v30 = v24 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v29;
        v11 = v40;
        v28(v30, v45, v40);
      }

      v22 += v42;
      --v19;
      v25 = v27;
    }

    while (v19);

    v33 = v38;
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
    v33 = v38;
  }

  swift_beginAccess();
  specialized Array.append<A>(contentsOf:)(v24);
  swift_endAccess();
  swift_beginAccess();

  v34 = OrdinalDisplayHintsBuilder.build(for:)();

  swift_beginAccess();
  specialized Array.append<A>(contentsOf:)(v34);
  swift_endAccess();
  swift_beginAccess();

  v33(v35);
}

void PhoneContactDisplayHintFactory.buildForeignEmergencyHints(_:_:)(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t))
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriPhone);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Building foreign emergency disambiguation display hints...", v9, 2u);
  }

  PhoneContactDisplayHintFactory.buildForeignEmergencyHintsSerially(_:index:currentDisplayHints:_:)(a1, 0, _swiftEmptyArrayStorage, a2, a3);
}

void *closure #3 in PhoneContactDisplayHintFactory.build(for:_:)@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
  result = PhoneContactDisplayHintFactory.buildRegularDisplayHint(_:)(a2 + *(v4 + 48), v3);
  *a2 = result;
  return result;
}

void *PhoneContactDisplayHintFactory.buildRegularDisplayHint(_:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  v102 = *(v4 - 8);
  v103 = v4;
  __chkstk_darwin(v4);
  v100 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  __chkstk_darwin(v6 - 8);
  v106 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v107 = v96 - v9;
  __chkstk_darwin(v10);
  v104 = v96 - v11;
  __chkstk_darwin(v12);
  v105 = v96 - v13;
  v14 = type metadata accessor for SemanticValue();
  v112 = *(v14 - 8);
  __chkstk_darwin(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  __chkstk_darwin(v15 - 8);
  v17 = v96 - v16;
  v18 = type metadata accessor for DisplayHint();
  v110 = *(v18 - 8);
  v111 = v18;
  __chkstk_darwin(v18);
  v96[2] = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v96[1] = v96 - v21;
  __chkstk_darwin(v22);
  v101 = v96 - v23;
  __chkstk_darwin(v24);
  v98 = v96 - v25;
  __chkstk_darwin(v26);
  v97 = v96 - v27;
  __chkstk_darwin(v28);
  v30 = v96 - v29;
  INPerson.asBase64()();
  SemanticValue.init()();
  SemanticValue.string.setter();
  SemanticValue.label.setter();
  PhoneCallNLConstants.canonicalName.getter(2);
  SemanticValue.nodeClass.setter();
  v31 = a2;
  v32 = [a2 displayName];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v33 & 0xFFFFFFFFFFFFLL;
  }

  v108 = a1;
  v109 = v14;
  if (v36)
  {
    (*(v112 + 16))(v17, a1, v14);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v14);
    v37 = [v31 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    SemanticValue.init()();
    SemanticValue.string.setter();
    SemanticValue.label.setter();
    PhoneCallNLConstants.canonicalName.getter(10);
    SemanticValue.nodeClass.setter();
    DisplayHint.init(idValue:displayValue:)();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v39 = v38;
    v40 = v38[2];
    v41 = v17;
    if (v40 >= v38[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v39 = v87;
    }

    v42 = v104;
    v43 = v105;
    v39[2] = v40 + 1;
    (*(v110 + 32))(v39 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v40, v30, v111);
  }

  else
  {
    v39 = _swiftEmptyArrayStorage;
    v41 = v17;
    v42 = v104;
    v43 = v105;
  }

  v44 = [v31 nameComponents];
  v45 = v112;
  if (v44)
  {
    v46 = v44;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v48 = type metadata accessor for PersonNameComponents();
  __swift_storeEnumTagSinglePayload(v42, v47, 1, v48);
  outlined init with take of (displayHints: [DisplayHint], idValue: SemanticValue)(v42, v43, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  if (__swift_getEnumTagSinglePayload(v43, 1, v48))
  {
    outlined destroy of SpeakableString?(v43, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  }

  else
  {
    v53 = PersonNameComponents.givenName.getter();
    v55 = v54;
    outlined destroy of SpeakableString?(v43, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    if (v55)
    {
      v56 = HIBYTE(v55) & 0xF;
      if ((v55 & 0x2000000000000000) == 0)
      {
        v56 = v53 & 0xFFFFFFFFFFFFLL;
      }

      if (v56)
      {
        v57 = v109;
        (*(v45 + 16))(v41, v108, v109);
        __swift_storeEnumTagSinglePayload(v41, 0, 1, v57);
        SemanticValue.init()();
        SemanticValue.string.setter();
        SemanticValue.label.setter();
        PhoneCallNLConstants.canonicalName.getter(11);
        SemanticValue.nodeClass.setter();
        v58 = v97;
        DisplayHint.init(idValue:displayValue:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v39 = v92;
        }

        v59 = v39[2];
        if (v59 >= v39[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v39 = v93;
        }

        v39[2] = v59 + 1;
        (*(v110 + 32))(v39 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v59, v58, v111);
      }

      else
      {
      }
    }
  }

  v49 = [v31 nameComponents];
  v50 = v106;
  if (v49)
  {
    v51 = v49;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  v60 = v109;
  v61 = v107;
  __swift_storeEnumTagSinglePayload(v50, v52, 1, v48);
  outlined init with take of (displayHints: [DisplayHint], idValue: SemanticValue)(v50, v61, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  if (__swift_getEnumTagSinglePayload(v61, 1, v48))
  {
    outlined destroy of SpeakableString?(v61, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  }

  else
  {
    v78 = PersonNameComponents.familyName.getter();
    v80 = v79;
    outlined destroy of SpeakableString?(v61, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    if (v80)
    {
      v81 = HIBYTE(v80) & 0xF;
      if ((v80 & 0x2000000000000000) == 0)
      {
        v81 = v78 & 0xFFFFFFFFFFFFLL;
      }

      if (v81)
      {
        (*(v45 + 16))(v41, v108, v60);
        __swift_storeEnumTagSinglePayload(v41, 0, 1, v60);
        SemanticValue.init()();
        SemanticValue.string.setter();
        SemanticValue.label.setter();
        PhoneCallNLConstants.canonicalName.getter(12);
        SemanticValue.nodeClass.setter();
        v82 = v98;
        DisplayHint.init(idValue:displayValue:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v39 = v94;
        }

        v83 = v39[2];
        if (v83 >= v39[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v39 = v95;
        }

        v39[2] = v83 + 1;
        (*(v110 + 32))(v39 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v83, v82, v111);
      }

      else
      {
      }
    }
  }

  v62 = [v31 personHandle];
  if (v62)
  {
    v63 = v62;
    v64 = [v62 label];
    if (v64)
    {
      v65 = v64;
      __swift_project_boxed_opaque_existential_1((v99 + 40), *(v99 + 64));
      v66 = v60;
      v67 = v41;
      v68 = v100;
      dispatch thunk of DeviceState.siriLocale.getter();
      v117 = Locale.identifier.getter();
      v118 = v69;
      v115 = 45;
      v116 = 0xE100000000000000;
      v113 = 95;
      v114 = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

      v70 = v68;
      v41 = v67;
      v60 = v66;
      (*(v102 + 8))(v70, v103);
      static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();
      v45 = v112;

      (*(v45 + 16))(v41, v108, v66);
      __swift_storeEnumTagSinglePayload(v41, 0, 1, v66);
      SemanticValue.init()();
      SemanticValue.string.setter();
      SemanticValue.label.setter();
      PhoneCallNLConstants.canonicalName.getter(13);
      SemanticValue.nodeClass.setter();
      v71 = v101;
      DisplayHint.init(idValue:displayValue:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v39 = v88;
      }

      v72 = v39[2];
      if (v72 >= v39[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v39 = v89;
      }

      v39[2] = v72 + 1;
      (*(v110 + 32))(v39 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v72, v71, v111);
    }

    v73 = outlined bridged method (pb) of @objc INPersonHandle.value.getter(v63);
    if (v74)
    {
      v75 = HIBYTE(v74) & 0xF;
      if ((v74 & 0x2000000000000000) == 0)
      {
        v75 = v73 & 0xFFFFFFFFFFFFLL;
      }

      if (v75)
      {
        v76 = [v63 type];
        (*(v45 + 16))(v41, v108, v60);
        __swift_storeEnumTagSinglePayload(v41, 0, 1, v60);
        SemanticValue.init()();
        SemanticValue.string.setter();
        SemanticValue.label.setter();
        if (v76 == &dword_0 + 1)
        {
          PhoneCallNLConstants.canonicalName.getter(9);
          SemanticValue.nodeClass.setter();
          v77 = &v119;
        }

        else
        {
          PhoneCallNLConstants.canonicalName.getter(8);
          SemanticValue.nodeClass.setter();
          v77 = &v120;
        }

        v84 = *(v77 - 32);
        DisplayHint.init(idValue:displayValue:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v39 = v90;
        }

        v85 = v39[2];
        if (v85 >= v39[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v39 = v91;
        }

        v39[2] = v85 + 1;
        (*(v110 + 32))(v39 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v85, v84, v111);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return v39;
}

void PhoneContactDisplayHintFactory.buildForeignEmergencyHintsSerially(_:index:currentDisplayHints:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v48 - v11;
  v13 = type metadata accessor for DisplayHint();
  v53 = *(v13 - 8);
  v54 = v13;
  __chkstk_darwin(v13);
  v52 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SemanticValue();
  v59 = *(v15 - 8);
  v16 = *(v59 + 64);
  __chkstk_darwin(v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v48 - v19;
  if (specialized Array.count.getter(a1) == a2)
  {
    a4(a3);
    return;
  }

  v50 = a4;
  v51 = a5;
  v21 = swift_allocObject();
  v56 = v21;
  *(v21 + 16) = a3;
  v49 = v21 + 16;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a2, (a1 & 0xC000000000000001) == 0, a1);
  v57 = v15;
  if ((a1 & 0xC000000000000001) != 0)
  {

    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v22 = *(a1 + 8 * a2 + 32);

    v23 = v22;
  }

  v24 = v23;
  INPerson.asBase64()();
  SemanticValue.init()();
  SemanticValue.string.setter();
  SemanticValue.label.setter();
  PhoneCallNLConstants.canonicalName.getter(2);
  SemanticValue.nodeClass.setter();
  v55 = v24;
  v25 = [v24 personHandle];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 emergencyType];

    if (v27 == &dword_0 + 2)
    {
      v40 = [v55 personHandle];
      if (v40)
      {
        outlined bridged method (ob) of @objc INPersonHandle.value.getter(v40);
        if (v41)
        {
          v42 = v57;
          (*(v59 + 16))(v12, v20, v57);
          __swift_storeEnumTagSinglePayload(v12, 0, 1, v42);
          SemanticValue.init()();
          SemanticValue.string.setter();
          SemanticValue.label.setter();
          PhoneCallNLConstants.canonicalName.getter(8);
          SemanticValue.nodeClass.setter();
          v43 = v52;
          DisplayHint.init(idValue:displayValue:)();
          v44 = v49;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v45 = *(*v44 + 16);
          specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v45);
          v46 = *v44;
          *(v46 + 16) = v45 + 1;
          (*(v53 + 32))(v46 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v45, v43, v54);
          *v44 = v46;
        }
      }
    }

    else if (v27 == &dword_0 + 1)
    {
      v28 = v58;
      v29 = v59;
      v54 = *(v58 + 80);
      (*(v59 + 16))(v17, v20, v57);
      outlined init with copy of PhoneContactDisplayHintFactory(v28, __src);
      v30 = (*(v29 + 80) + 24) & ~*(v29 + 80);
      v31 = (v16 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      v58 = (v31 + 95) & 0xFFFFFFFFFFFFFFF8;
      v32 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
      v33 = swift_allocObject();
      *(v33 + 16) = v56;
      v34 = v33 + v30;
      v35 = v57;
      (*(v29 + 32))(v34, v17, v57);
      memcpy((v33 + v31), __src, 0x58uLL);
      v36 = v54;
      *(v33 + v58) = a1;
      *(v33 + v32) = a2;
      v37 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
      v38 = v51;
      *v37 = v50;
      v37[1] = v38;
      v39 = *(*v36 + class metadata base offset for PhoneCallDisplayTextCATs + 288);

      v39(partial apply for closure #1 in PhoneContactDisplayHintFactory.buildForeignEmergencyHintsSerially(_:index:currentDisplayHints:_:), v33);

      (*(v29 + 8))(v20, v35);
      goto LABEL_14;
    }
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return;
  }

  v47 = *(v56 + 16);

  PhoneContactDisplayHintFactory.buildForeignEmergencyHintsSerially(_:index:currentDisplayHints:_:)(a1, a2 + 1, v47, v50, v51);

  (*(v59 + 8))(v20, v57);
LABEL_14:
}

void *closure #1 in PhoneContactDisplayHintFactory.buildForeignEmergencyHintsSerially(_:index:currentDisplayHints:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), void (*a8)(uint64_t))
{
  v37 = a7;
  v38 = a8;
  v39 = a6;
  v40 = a1;
  v35 = a5;
  v36 = a4;
  v33 = a3;
  v34 = type metadata accessor for SemanticValue();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for DisplayHint();
  v30 = *(v12 - 8);
  v31 = v12;
  __chkstk_darwin(v12);
  v29 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  v17 = type metadata accessor for TemplatingResult();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of (displayHints: [DisplayHint], idValue: SemanticValue)(v40, v16, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = outlined destroy of SpeakableString?(v16, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    v22 = v34;
    (*(v32 + 16))(v11, v33, v34);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v22);
    result = TemplatingResult.print.getter();
    if (!result[2])
    {
      goto LABEL_8;
    }

    SemanticValue.init()();
    SemanticValue.string.setter();
    SemanticValue.label.setter();
    PhoneCallNLConstants.canonicalName.getter(4);
    SemanticValue.nodeClass.setter();
    v23 = v29;
    DisplayHint.init(idValue:displayValue:)();
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v24 = *(*(a2 + 16) + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v24);
    v25 = *(a2 + 16);
    *(v25 + 16) = v24 + 1;
    (*(v30 + 32))(v25 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24, v23, v31);
    *(a2 + 16) = v25;
    swift_endAccess();
    result = (*(v18 + 8))(v20, v17);
  }

  v26 = v39 + 1;
  if (!__OFADD__(v39, 1))
  {
    swift_beginAccess();
    v27 = *(a2 + 16);

    PhoneContactDisplayHintFactory.buildForeignEmergencyHintsSerially(_:index:currentDisplayHints:_:)(v35, v26, v27, v37, v38);
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t DisplayHint.description.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v48 - v4;
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  __chkstk_darwin(v9);
  v11 = &v48 - v10;
  v48 = 40;
  v49 = 0xE100000000000000;
  DisplayHint.displayValue.getter();
  v12 = type metadata accessor for SemanticValue();
  OUTLINED_FUNCTION_6_1(v11);
  if (v13)
  {
    outlined destroy of SpeakableString?(v11, &_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
LABEL_5:

    v16 = 0xE300000000000000;
    v14 = 7104878;
    goto LABEL_6;
  }

  v14 = SemanticValue.label.getter();
  v16 = v15;
  OUTLINED_FUNCTION_2_9();
  (*(v17 + 8))(v11, v12);
  if (!v16)
  {
    goto LABEL_5;
  }

LABEL_6:
  v18._countAndFlagsBits = v14;
  v18._object = v16;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 8236;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  DisplayHint.displayValue.getter();
  OUTLINED_FUNCTION_6_1(v8);
  if (v13)
  {
    outlined destroy of SpeakableString?(v8, &_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  }

  else
  {
    SemanticValue.string.getter();
    v21 = v20;
    OUTLINED_FUNCTION_2_9();
    (*(v22 + 8))(v8, v12);
    if (v21)
    {
      v23 = String.debugDescription.getter();
      v25 = v24;

      goto LABEL_12;
    }
  }

  v25 = 0xE300000000000000;
  v23 = 7104878;
LABEL_12:
  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0x203E3D2029;
  v27._object = 0xE500000000000000;
  String.append(_:)(v27);
  v29 = v48;
  v28 = v49;
  v48 = 40;
  v49 = 0xE100000000000000;
  DisplayHint.idValue.getter();
  OUTLINED_FUNCTION_6_1(v5);
  if (v13)
  {
    outlined destroy of SpeakableString?(v5, &_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
LABEL_16:

    v32 = 0xE300000000000000;
    v30 = 7104878;
    goto LABEL_17;
  }

  v30 = SemanticValue.label.getter();
  v32 = v31;
  OUTLINED_FUNCTION_2_9();
  (*(v33 + 8))(v5, v12);
  if (!v32)
  {
    goto LABEL_16;
  }

LABEL_17:
  v34._countAndFlagsBits = v30;
  v34._object = v32;
  String.append(_:)(v34);

  v35._countAndFlagsBits = 8236;
  v35._object = 0xE200000000000000;
  String.append(_:)(v35);
  DisplayHint.idValue.getter();
  OUTLINED_FUNCTION_6_1(v2);
  if (v13)
  {
    outlined destroy of SpeakableString?(v2, &_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
LABEL_22:
    Substring.init(_:)();
    goto LABEL_23;
  }

  SemanticValue.string.getter();
  v37 = v36;
  OUTLINED_FUNCTION_2_9();
  (*(v38 + 8))(v2, v12);
  if (!v37)
  {
    goto LABEL_22;
  }

  specialized Collection.prefix(_:)(30);
LABEL_23:
  v39 = static String._fromSubstring(_:)();
  v41 = v40;

  v42._countAndFlagsBits = v39;
  v42._object = v41;
  String.append(_:)(v42);

  v43._countAndFlagsBits = 41;
  v43._object = 0xE100000000000000;
  String.append(_:)(v43);
  v44 = v48;
  v45 = v49;
  v48 = v29;
  v49 = v28;

  v46._countAndFlagsBits = v44;
  v46._object = v45;
  String.append(_:)(v46);

  return v48;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2)
{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t partial apply for closure #2 in PhoneContactDisplayHintFactory.build(for:_:)(uint64_t a1)
{
  v3 = *(type metadata accessor for OrdinalDisplayHintsBuilder() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return closure #2 in PhoneContactDisplayHintFactory.build(for:_:)(a1, v5, v6, v1 + v4, v8, v9);
}

void *specialized static PhoneContactDisplayHintFactory.build(for:deviceState:appInfoBuilder:)(uint64_t a1, void *a2)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  __chkstk_darwin(v3 - 8);
  v63 = &v54 - v4;
  v64 = type metadata accessor for DisplayHint();
  v66 = *(v64 - 8);
  __chkstk_darwin(v64);
  v74 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for SemanticValue();
  v65 = *(v79 - 8);
  __chkstk_darwin(v79);
  v62 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v73 = &v54 - v8;
  __chkstk_darwin(v9);
  v80 = &v54 - v10;
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  v69 = type metadata accessor for Locale();
  v14 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OrdinalDisplayHintsBuilder();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _swiftEmptyArrayStorage;
  v83 = _swiftEmptyArrayStorage;
  v76 = a1;
  result = specialized Array.count.getter(a1);
  v57 = v16;
  v56 = v17;
  v55 = v19;
  if (result)
  {
    v70 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v22 = 0;
    v75 = v76 & 0xC000000000000001;
    v67 = (v14 + 8);
    v72 = (v65 + 16);
    v61 = v65 + 32;
    v60 = (v65 + 8);
    v59 = v66 + 32;
    v78 = _swiftEmptyArrayStorage;
    v23 = v70;
    v58 = v13;
    do
    {
      if (v75)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v24 = *(v76 + 8 * v22 + 32);
      }

      v25 = v24;
      if (App.isFirstParty()())
      {
        v25 = static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(v24, 0, v77);
      }

      App.appIdentifier.getter();
      if (v26)
      {
        v81 = v20;
        __swift_project_boxed_opaque_existential_1(v77, v77[3]);
        v27 = v68;
        dispatch thunk of DeviceState.siriLocale.getter();
        type metadata accessor for AppInfoBuilder();
        swift_initStackObject();
        AppInfoBuilder.getAppName(_:requestedLocale:)(v25, v27);
        v29 = v28;
        (*v67)(v27, v69);
        if (v29)
        {
          v71 = v25;
          if (one-time initialization token for applicationId != -1)
          {
            swift_once();
          }

          TerminalOntologyNode.name.getter();
          v30 = v58;
          SemanticValue.init(string:label:)();
          if (one-time initialization token for appName != -1)
          {
            swift_once();
          }

          TerminalOntologyNode.name.getter();
          SemanticValue.init(string:label:)();
          v31 = *v72;
          (*v72)(v73, v30, v79);
          v20 = v81;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v20 = v39;
          }

          v32 = v20[2];
          if (v32 >= v20[3] >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v20 = v40;
          }

          v20[2] = v32 + 1;
          v33 = v79;
          (*(v65 + 32))(v20 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v32, v73, v79);
          v34 = v63;
          v31(v63, v30, v33);
          __swift_storeEnumTagSinglePayload(v34, 0, 1, v33);
          v31(v62, v80, v33);
          DisplayHint.init(idValue:displayValue:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v78 = v41;
          }

          v35 = v78[2];
          if (v35 >= v78[3] >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v78 = v42;
          }

          v36 = *v60;
          v37 = v79;
          (*v60)(v80, v79);
          v36(v30, v37);
          v38 = v78;
          v78[2] = v35 + 1;
          (*(v66 + 32))(v38 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v35, v74, v64);
          v83 = v38;
        }

        else
        {

          v20 = v81;
        }

        v23 = v70;
      }

      else
      {
      }

      ++v22;
    }

    while (v23 != v22);
  }

  if (one-time initialization token for reference != -1)
  {
    swift_once();
  }

  TerminalOntologyNode.name.getter();
  v43 = v55;
  OrdinalDisplayHintsBuilder.init(referenceNode:)();
  v44 = OrdinalDisplayHintsBuilder.build(for:)();

  (*(v56 + 8))(v43, v57);
  specialized Array.append<A>(contentsOf:)(v44);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static Logger.siriPhone);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v82 = v49;
    *v48 = 136315138;
    swift_beginAccess();

    v50 = Array.description.getter();
    v52 = v51;

    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v82);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_0, v46, v47, "Built display hints for app disambiguation: %s'", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  swift_beginAccess();
  return v83;
}

uint64_t getEnumTagSinglePayload for PhoneContactDisplayHintFactory(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for PhoneContactDisplayHintFactory(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *partial apply for closure #1 in PhoneContactDisplayHintFactory.buildForeignEmergencyHintsSerially(_:index:currentDisplayHints:_:)(uint64_t a1)
{
  v3 = *(type metadata accessor for SemanticValue() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 95) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v6);
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = (v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return closure #1 in PhoneContactDisplayHintFactory.buildForeignEmergencyHintsSerially(_:index:currentDisplayHints:_:)(a1, v10, v1 + v4, v1 + v5, v8, v9, v12, v13);
}

uint64_t outlined init with copy of (displayHints: [DisplayHint], idValue: SemanticValue)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_112(a1, a2, a3, a4);
  OUTLINED_FUNCTION_40();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t outlined init with take of (displayHints: [DisplayHint], idValue: SemanticValue)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_112(a1, a2, a3, a4);
  OUTLINED_FUNCTION_40();
  (*(v6 + 32))(v4, v5);
  return v4;
}

void __swiftcall PhoneContactHeader.init(appBundleId:contactId:displayName:handle:isFirstPartyApp:)(PhoneCallFlowDelegatePlugin::PhoneContactHeader *__return_ptr retstr, Swift::String appBundleId, Swift::String contactId, Swift::String displayName, Swift::String handle, Swift::Bool isFirstPartyApp)
{
  retstr->appBundleId = appBundleId;
  retstr->contactId = contactId;
  retstr->displayName = displayName;
  retstr->handle = handle;
  retstr->isFirstPartyApp = isFirstPartyApp;
}

uint64_t PhoneContactHeader.description.getter()
{
  _StringGuts.grow(_:)(95);
  v1._countAndFlagsBits = 0xD00000000000001FLL;
  v1._object = 0x800000000045EF10;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._countAndFlagsBits = 0x6361746E6F63202CLL;
  v2._object = 0xEC0000003D644974;
  String.append(_:)(v2);
  String.append(_:)(*(v0 + 16));
  v3._countAndFlagsBits = 0x616C70736964202CLL;
  v3._object = 0xEE003D656D614E79;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + 32));
  v4._countAndFlagsBits = 0x656C646E6168202CLL;
  v4._object = 0xE90000000000003DLL;
  String.append(_:)(v4);
  String.append(_:)(*(v0 + 48));
  v5._object = 0x800000000045EF30;
  v5._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v5);
  if (*(v0 + 64))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + 64))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return 0;
}

uint64_t PhoneContactHeader.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x49746361746E6F63 && a2 == 0xE900000000000064;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x5074737269467369 && a2 == 0xEF70704179747261)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t PhoneContactHeader.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C646E7542707061;
  switch(a1)
  {
    case 1:
      result = 0x49746361746E6F63;
      break;
    case 2:
      result = 0x4E79616C70736964;
      break;
    case 3:
      result = 0x656C646E6168;
      break;
    case 4:
      result = 0x5074737269467369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PhoneContactHeader.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PhoneContactHeader.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneContactHeader.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneContactHeader.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PhoneContactHeader.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D13ContactHeaderV10CodingKeys33_E8940F9EFAFBA0BBB8D39FEFD2BBB989LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D13ContactHeaderV10CodingKeys33_E8940F9EFAFBA0BBB8D39FEFD2BBB989LLOGMR);
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v20[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v24 = 0;
  OUTLINED_FUNCTION_2_84(v11, v12, &v24);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v23 = 1;
    OUTLINED_FUNCTION_2_84(v13, v14, &v23);
    v15 = v3[4];
    v16 = v3[5];
    v22 = 2;
    OUTLINED_FUNCTION_2_84(v15, v16, &v22);
    v17 = v3[6];
    v18 = v3[7];
    v21 = 3;
    OUTLINED_FUNCTION_2_84(v17, v18, &v21);
    v20[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t lazy protocol witness table accessor for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys);
  }

  return result;
}

void *PhoneContactHeader.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D13ContactHeaderV10CodingKeys33_E8940F9EFAFBA0BBB8D39FEFD2BBB989LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D13ContactHeaderV10CodingKeys33_E8940F9EFAFBA0BBB8D39FEFD2BBB989LLOGMR);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v24[0]) = 0;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v7;
  OUTLINED_FUNCTION_1_89(1);
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v9;
  v18 = v8;
  OUTLINED_FUNCTION_1_89(2);
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v10;
  OUTLINED_FUNCTION_1_89(3);
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v11;
  v27 = 4;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = OUTLINED_FUNCTION_0_89();
  v14(v13);
  v26 = v12 & 1;
  __src[0] = v6;
  __src[1] = v22;
  __src[2] = v18;
  __src[3] = v21;
  __src[4] = v17;
  __src[5] = v20;
  __src[6] = v16;
  __src[7] = v19;
  LOBYTE(__src[8]) = v12 & 1;
  outlined init with copy of PhoneContactHeader(__src, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v24[0] = v6;
  v24[1] = v22;
  v24[2] = v18;
  v24[3] = v21;
  v24[4] = v17;
  v24[5] = v20;
  v24[6] = v16;
  v24[7] = v19;
  v25 = v26;
  outlined destroy of PhoneContactHeader(v24);
  return memcpy(a2, __src, 0x41uLL);
}

void *protocol witness for Decodable.init(from:) in conformance PhoneContactHeader@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = PhoneContactHeader.init(from:)(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x41uLL);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneContactHeader(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for PhoneContactHeader(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneContactHeader.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t PhoneContactResolver.__allocating_init(configCache:queryCache:resolver:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(a3, a3[3]);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v4);
  v6 = OUTLINED_FUNCTION_3_5(v5, v10);
  v7(v6);
  v8 = OUTLINED_FUNCTION_3_74();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v8;
}

uint64_t PhoneContactResolver.init(configCache:queryCache:resolver:)(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_mutable_project_boxed_opaque_existential_1(a3, a3[3]);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v4);
  v6 = OUTLINED_FUNCTION_3_5(v5, v10);
  v7(v6);
  v8 = OUTLINED_FUNCTION_3_74();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v8;
}

uint64_t PhoneContactResolver.resolve(queries:config:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of SignalProviding(v2 + 32, v9);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v7 = (*(v6 + 8))(a1, a2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

NSObject *PhoneContactResolver.resolveContacts(queries:configHash:)(uint64_t a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for ContactResolverConfigHashable(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v17 = PhoneContactResolver.get(config:queries:)(a2, a1);
  if (v17)
  {
    v18 = v17;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.siriPhone);
    outlined init with copy of ContactResolverConfigHashable(a2, v16);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v57 = v23;
      *v22 = 136315394;
      type metadata accessor for ContactQuery();
      v24 = Array.description.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v57);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      v27 = ContactResolverConfigHashable.description.getter();
      v29 = v28;
      outlined destroy of ContactResolverConfigHashable(v16);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v57);

      *(v22 + 14) = v30;
      _os_log_impl(&dword_0, v20, v21, "#PhoneContactResolver resolveContacts: reusing cached result for contactQuery:%s and config:%s.", v22, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0(v23);
      OUTLINED_FUNCTION_26_0(v22);
    }

    else
    {

      outlined destroy of ContactResolverConfigHashable(v16);
    }
  }

  else
  {
    v56 = v10;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v31 = type metadata accessor for Logger();
    v32 = __swift_project_value_buffer(v31, static Logger.siriPhone);
    outlined init with copy of ContactResolverConfigHashable(a2, v13);

    v18 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v18, v33))
    {
      v34 = swift_slowAlloc();
      v55 = v32;
      v35 = v34;
      v54 = swift_slowAlloc();
      v57 = v54;
      *v35 = 136315394;
      type metadata accessor for ContactQuery();
      v36 = Array.description.getter();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v57);
      OUTLINED_FUNCTION_6_61();
      *(v35 + 4) = v3;
      *(v35 + 12) = 2080;
      v38 = ContactResolverConfigHashable.description.getter();
      v4 = v39;
      outlined destroy of ContactResolverConfigHashable(v13);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v4, &v57);
      OUTLINED_FUNCTION_5_69();
      *(v35 + 14) = v38;
      _os_log_impl(&dword_0, v18, v33, "#PhoneContactResolver resolveContacts: no cached result for contactQuery:%s and config:%s.", v35, 0x16u);
      v40 = v54;
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0(v40);
      OUTLINED_FUNCTION_26_0(v35);
    }

    else
    {

      v41 = outlined destroy of ContactResolverConfigHashable(v13);
    }

    __chkstk_darwin(v41);
    *(&v54 - 4) = v5;
    *(&v54 - 3) = a1;
    *(&v54 - 2) = a2;
    v42 = PhoneContactResolver.signpost(configHash:around:)(a2, partial apply for closure #1 in PhoneContactResolver.resolveContacts(queries:configHash:), (&v54 - 6));
    if (!v4)
    {
      v18 = v42;
      v43 = v56;
      outlined init with copy of ContactResolverConfigHashable(a2, v56);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v57 = v55;
        *v46 = 136315394;
        type metadata accessor for ContactQuery();
        v47 = Array.description.getter();
        LODWORD(v54) = v45;
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v57);
        OUTLINED_FUNCTION_6_61();
        *(v46 + 4) = 0;
        *(v46 + 12) = 2080;
        v49 = ContactResolverConfigHashable.description.getter();
        v51 = v50;
        outlined destroy of ContactResolverConfigHashable(v43);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v57);
        OUTLINED_FUNCTION_5_69();
        *(v46 + 14) = v49;
        _os_log_impl(&dword_0, v44, v54, "#PhoneContactResolver resolveContacts: caching result from CRR for contactQuery:%s and config:%s.", v46, 0x16u);
        v52 = v55;
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0(v52);
        OUTLINED_FUNCTION_26_0(v46);
      }

      else
      {

        outlined destroy of ContactResolverConfigHashable(v43);
      }

      PhoneContactResolver.update(config:queries:resolvedSiriKitContacts:)(a2, a1, v18);
    }
  }

  return v18;
}

uint64_t closure #1 in PhoneContactResolver.resolveContacts(queries:configHash:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of SignalProviding(a1 + 32, v9);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v7 = (*(v6 + 16))(a2, a3, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

uint64_t PhoneContactResolver.update(config:queries:resolvedSiriKitContacts:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 16);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v9;
  swift_endAccess();
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 24);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, a2);
  *(v3 + 24) = v10;
  return swift_endAccess();
}

uint64_t PhoneContactResolver.get(config:queries:)(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 16);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v8 & 1) == 0)
  {

    return 0;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  V_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ13SiriInference12ContactQueryV_Tt1g5(a2, v9);

  if ((V_Tt1g5 & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v11 = *(v3 + 24);

  v12 = specialized Dictionary.subscript.getter(a2, v11);

  return v12;
}

NSObject *PhoneContactResolver.signpost(configHash:around:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ResolvedSiriKitContact();
  OUTLINED_FUNCTION_9_1();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = mach_continuous_time();
  v28 = a1;
  v29 = a2;
  v30 = a3;
  v14 = _s27PhoneCallFlowDelegatePlugin8SignpostO4wrap_6aroundxAA0aF0V_xyKXEtKlFZSay13SiriInference08ResolvedI10KitContactVG_Tt2g5("ResolveCRR", 10, 258, partial apply for closure #1 in PhoneContactResolver.signpost(configHash:around:), v27);
  if (!v3 && (ContactResolverConfigHashable.isFaceTime.getter() & 1) != 0)
  {
    isa = v14[2].isa;
    v16 = _swiftEmptyArrayStorage;
    if (isa)
    {
      v22[1] = 0;
      v24 = v13;
      v31 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v18 = *(v9 + 16);
      v17 = v9 + 16;
      v19 = *(v17 + 64);
      v23 = v14;
      v20 = v14 + ((v19 + 32) & ~v19);
      v25 = *(v17 + 56);
      v26 = v18;
      do
      {
        v26(v12, v20, v7);
        ResolvedSiriKitContact.person.getter();
        (*(v17 - 8))(v12, v7);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v20 += v25;
        isa = (isa - 1);
      }

      while (isa);
      v16 = v31;
      v14 = v23;
      v13 = v24;
    }

    PhoneContactResolver.emitFaceTimeEvents(beginTimestamp:persons:)(v13, v16);
  }

  return v14;
}

uint64_t closure #1 in PhoneContactResolver.signpost(configHash:around:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  static SiriKitEventSender.current.getter();
  v9 = _s27PhoneCallFlowDelegatePlugin0A21SelfPerformanceLoggerC8signpost19domainExecutionType04taskL018siriKitEventSender_xSo020FLOWSchemaFLOWDomainkL0V_SS04SirioC00toP7Sending_pxyKXEtKlFZSay0T9Inference08ResolvedtO7ContactVG_Tt4g504_s27abcd10Plugin0A15x79ResolverC8signpost33_3D9467E65F3897762758A24265D9663FLL10configHash6aroundSay13t21Inference08Resolvedq3O54F0VGAA0fG14ConfigHashableV_AKyKXEtKFAKyKXEfU_AKyKXEfU_AOs5Error_pIgozo_Tf1nnnc_n(300, v7, v8, v11, a2);
  result = __swift_destroy_boxed_opaque_existential_1(v11);
  if (!v4)
  {
    *a4 = v9;
  }

  return result;
}

NSObject *_s27PhoneCallFlowDelegatePlugin8SignpostO4wrap_6aroundxAA0aF0V_xyKXEtKlFZSay13SiriInference08ResolvedI10KitContactVG_Tt2g5(const char *a1, uint64_t a2, __int16 a3, void (*a4)(NSObject **__return_ptr), uint64_t a5)
{
  v30 = a4;
  v29 = a5;
  v6 = a3;
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignposter();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, static OSSignposter.siriPhone);
  (*(v12 + 16))(v14, v15, v11);
  OSSignposter.logHandle.getter();
  result = OSSignpostID.init(log:)();
  v33 = v11;
  v34 = v8;
  v32 = v12;
  if (v6)
  {
LABEL_6:
    if (a1 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_16:
        __break(1u);
        return result;
      }

      if (a1 >> 16 <= 0x10)
      {
        a1 = &v37;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_10:
  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v36 = v18;
  *v17 = 136315138;
  v19 = StaticString.description.getter();
  v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v36);

  *(v17 + 4) = v21;
  v22 = OSSignposter.logHandle.getter();
  v23 = static os_signpost_type_t.begin.getter();
  v24 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&dword_0, v22, v23, v24, a1, "%s", v17, 0xCu);
  v25 = v31;
  v30(&v35);
  if (v25)
  {

    (*(v34 + 8))(v10, v7);
  }

  else
  {
    v26 = static os_signpost_type_t.end.getter();
    v31 = v7;
    v27 = v26;
    v28 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v22, v27, v28, a1, "%s", v17, 0xCu);

    v22 = v35;
    __swift_destroy_boxed_opaque_existential_1(v18);

    (*(v34 + 8))(v10, v31);
  }

  (*(v32 + 8))(v14, v33);
  return v22;
}

void PhoneContactResolver.emitFaceTimeEvents(beginTimestamp:persons:)(unint64_t a1, uint64_t a2)
{
  static Signpost.emitSyntheticInterval(_:beginTimestamp:)();
  if (specialized Array.count.getter(a2) == 1)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a2 & 0xC000000000000001) == 0, a2);
    if ((a2 & 0xC000000000000001) != 0)
    {
LABEL_63:
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v3 = *(a2 + 32);
    }

    v4 = outlined bridged method (ob) of @objc INPerson.siriMatches.getter(v3);
    if (v4)
    {
      v5 = v4;
      v6 = specialized Array.count.getter(v4);
      v7 = 0;
      v8 = v5 & 0xC000000000000001;
      while (v6 != v7)
      {
        if (v8)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_60;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        if (__OFADD__(v7, 1))
        {
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v11 = [v9 personHandle];
        if (!v11)
        {
          goto LABEL_19;
        }

        v12 = outlined bridged method (ob) of @objc INPersonHandle.value.getter(v11);
        if (!v13)
        {
          goto LABEL_19;
        }

        v14 = v13;
        v15 = v12 & 0xFFFFFFFFFFFFLL;

        v16 = HIBYTE(v14) & 0xF;
        if ((v14 & 0x2000000000000000) == 0)
        {
          v16 = v15;
        }

        if (v16 && (v17 = [v10 personHandle]) != 0)
        {
          v18 = v17;
          v19 = [v17 faceTimeType];

          if (!v19)
          {
            break;
          }
        }

        else
        {
LABEL_19:
        }

        ++v7;
      }

      v20 = 0;
      v36 = _swiftEmptyArrayStorage;
      while (v6 != v20)
      {
        if (v8)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v20 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_58;
          }

          v21 = *(v5 + 8 * v20 + 32);
        }

        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v23 = v21;
        v24 = [v23 personHandle];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 faceTimeType];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v36 = v28;
          }

          v27 = v36[2];
          if (v27 >= v36[3] >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v36 = v29;
          }

          v36[2] = v27 + 1;
          v36[v27 + 4] = v26;
          v20 = v22;
        }

        else
        {

          ++v20;
        }
      }

      v30 = v36[2];
      if (v30)
      {
        v31 = 0;
        v32 = 0;
LABEL_38:
        for (i = v31; ; ++i)
        {
          if (i >= v30)
          {
            goto LABEL_61;
          }

          v31 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_62;
          }

          v34 = v36[i + 4];
          if (v34 > -65 && v34 <= 64)
          {
            if (v34 < 0)
            {
              if (v34 != -64)
              {
                v35 = 0;
                goto LABEL_51;
              }
            }

            else if (v34 != 64)
            {
              v35 = 1 << v34;
LABEL_51:
              v32 |= v35;
              if (v31 != v30)
              {
                goto LABEL_38;
              }

              break;
            }
          }

          if (v31 == v30)
          {
            break;
          }
        }
      }

      static Signpost.event(_:number1:)();
      if (v6 != v7)
      {

        static Signpost.emitSyntheticInterval(_:beginTimestamp:)();
      }
    }
  }
}

uint64_t specialized PhoneContactResolver.init(configCache:queryCache:resolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a5;
  v15 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  outlined init with take of SPHConversation(&v13, a4 + 32);
  return a4;
}

uint64_t outlined destroy of ContactResolverConfigHashable(uint64_t a1)
{
  v2 = type metadata accessor for ContactResolverConfigHashable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *static PhoneDomainContextMetricsUtils.populatePhoneDomainContext(phoneCallNLIntent:contextNLType:app:resolvedSiriKitContacts:callStateProvider:)(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5[3];
  v10 = a5[4];
  v11 = __swift_project_boxed_opaque_existential_1(a5, v9);

  return specialized static PhoneDomainContextMetricsUtils.populatePhoneDomainContext(phoneCallNLIntent:contextNLType:app:resolvedSiriKitContacts:callStateProvider:)(a1, a2 & 1, a3, a4, v11, v9, v10);
}

void *static PhoneDomainContextMetricsUtils.populatePhoneDomainContextForThirdPartyFaceTime()()
{
  v1 = [objc_allocWithZone(FLOWSchemaFLOWDomainContext) init];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(FLOWSchemaFLOWPhoneCallContext) init];
    if (v3)
    {
      v4 = v3;
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v5 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v5, static Logger.siriPhone);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v7))
      {
        v8 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_102(v8);
        OUTLINED_FUNCTION_47_1(&dword_0, v9, v10, "#PhoneDomainContextMetricsUtils add DomainContext for making FaceTime call to non-Apple users");
        OUTLINED_FUNCTION_26_0(v0);
      }

      [v4 setIsThirdPartyFaceTime:1];
      [v2 setPhoneCallContext:v4];
      [v2 setHasPhoneCallContext:1];
      goto LABEL_14;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v11, static Logger.siriPhone);
  v4 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v12))
  {
    v13 = OUTLINED_FUNCTION_65_0();
    *v13 = 0;
    OUTLINED_FUNCTION_33(&dword_0, v14, v15, "#PhoneDomainContextMetricsUtils returning without logging phone domain context for making FaceTime call to non-Apple users");
    OUTLINED_FUNCTION_26_0(v13);
  }

  v2 = 0;
LABEL_14:

  return v2;
}

void *static PhoneDomainContextMetricsUtils.populatePhoneDomainContextForHangUpDirectInvocation(callStateProvider:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(FLOWSchemaFLOWDomainContext) init];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(FLOWSchemaFLOWPhoneCallContext) init];
    if (v4)
    {
      v5 = v4;
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v6 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v6, static Logger.siriPhone);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v8))
      {
        v9 = OUTLINED_FUNCTION_65_0();
        *v9 = 0;
        _os_log_impl(&dword_0, v7, v8, "#PhoneDomainContextMetricsUtils add DomainContext for HangUpIntentResponse", v9, 2u);
        OUTLINED_FUNCTION_26_0(v9);
      }

      v10 = *(a1 + 24);
      v11 = *(a1 + 32);
      v12 = OUTLINED_FUNCTION_15_41();
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v11 + 16))(v25, v10, v11);
      __swift_project_boxed_opaque_existential_1(v25, v25[3]);
      v14 = OUTLINED_FUNCTION_15_41();
      v16 = v15(v14);
      __swift_destroy_boxed_opaque_existential_1(v25);
      if (v16)
      {
        v17 = 4;
      }

      else
      {
        v17 = 0;
      }

      [v5 setPhoneCallAppType:v17];
      [v3 setPhoneCallContext:v5];
      [v3 setHasPhoneCallContext:1];

      return v3;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v18 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v18, static Logger.siriPhone);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v20))
  {
    v21 = OUTLINED_FUNCTION_65_0();
    *v21 = 0;
    OUTLINED_FUNCTION_33(&dword_0, v22, v23, "#PhoneDomainContextMetricsUtils returning without logging phone domain context for HangUpIntent");
    OUTLINED_FUNCTION_26_0(v21);
  }

  return 0;
}

void *static PhoneDomainContextMetricsUtils.populatePhoneDomainContextSRR()()
{
  v1 = [objc_allocWithZone(FLOWSchemaFLOWDomainContext) init];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(FLOWSchemaFLOWPhoneCallContext) init];
    if (v3)
    {
      v4 = v3;
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v5 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v5, static Logger.siriPhone);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v7))
      {
        v8 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_102(v8);
        OUTLINED_FUNCTION_47_1(&dword_0, v9, v10, "#PhoneDomainContextMetricsUtils add DomainContext resolved via SRR");
        OUTLINED_FUNCTION_26_0(v0);
      }

      [v4 addPersonType:11];
      [v2 setPhoneCallContext:v4];
      [v2 setHasPhoneCallContext:1];
      goto LABEL_14;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v11, static Logger.siriPhone);
  v4 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v12))
  {
    v13 = OUTLINED_FUNCTION_65_0();
    *v13 = 0;
    OUTLINED_FUNCTION_33(&dword_0, v14, v15, "#PhoneDomainContextMetricsUtils returning without logging phone domain context resolved via SRR");
    OUTLINED_FUNCTION_26_0(v13);
  }

  v2 = 0;
LABEL_14:

  return v2;
}

void *static PhoneDomainContextMetricsUtils.populatePhoneDomainContextWithAppSelectionUserPersona(phoneCallNLIntent:contextNLType:userPersona:app:resolvedSiriKitContacts:callStateProvider:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a6[3];
  v12 = a6[4];
  v13 = __swift_project_boxed_opaque_existential_1(a6, v11);
  v14 = specialized static PhoneDomainContextMetricsUtils.populatePhoneDomainContext(phoneCallNLIntent:contextNLType:app:resolvedSiriKitContacts:callStateProvider:)(a1, a2 & 1, a4, a5, v13, v11, v12);
  v15 = v14;
  if (v14)
  {
    v16 = [v14 phoneCallContext];
    if (v16)
    {
      v17 = v16;
      [v16 setUserPersona:a3];
      [v15 setPhoneCallContext:v17];
    }
  }

  return v15;
}

void static PhoneDomainContextMetricsUtils.addContactRecipientTypeNLv3(phoneCallContacts:phoneContext:)(uint64_t a1, void *a2)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v5, static Logger.siriPhone);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v7))
  {
    v8 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_102(v8);
    OUTLINED_FUNCTION_47_1(&dword_0, v9, v10, "#PhoneDomainContextMetricsUtils addContactRecipientTypeNLv3");
    OUTLINED_FUNCTION_26_0(v2);
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + 32;
    do
    {
      v13 = outlined init with copy of SignalProviding(v12, &v62);
      OUTLINED_FUNCTION_5_70(v13, v14, v15, v16, v17, v18, v19, v20, v61, v62, v63, v64, v65);
      OUTLINED_FUNCTION_10_57();
      v21 = default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)();
      v22 = OUTLINED_FUNCTION_4_61(v21);
      v31 = SiriPhoneContact.getFullName(filteredAlternatives:)(v22);
      object = v31.value._object;
      countAndFlagsBits = v31.value._countAndFlagsBits;
      if (v31.value._object && (OUTLINED_FUNCTION_3_75(v31.value._countAndFlagsBits, v31.value._object), OUTLINED_FUNCTION_2_85(), v32))
      {
        v33 = 4;
      }

      else
      {
        OUTLINED_FUNCTION_5_70(countAndFlagsBits, object, v25, v26, v27, v28, v29, v30, v61, v62, v63, v64, v65);
        OUTLINED_FUNCTION_10_57();
        v34 = default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)();
        v35 = OUTLINED_FUNCTION_4_61(v34);
        v44 = SiriPhoneContact.getFirstName(filteredAlternatives:)(v35);
        v37 = v44.value._object;
        v36 = v44.value._countAndFlagsBits;
        if (v44.value._object && (OUTLINED_FUNCTION_3_75(v44.value._countAndFlagsBits, v44.value._object), OUTLINED_FUNCTION_2_85(), v45))
        {
          v33 = 2;
        }

        else
        {
          OUTLINED_FUNCTION_5_70(v36, v37, v38, v39, v40, v41, v42, v43, v61, v62, v63, v64, v65);
          OUTLINED_FUNCTION_10_57();
          v46 = default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)();
          v47 = OUTLINED_FUNCTION_4_61(v46);
          v48 = SiriPhoneContact.getLastName(filteredAlternatives:)(v47);
          if (v48.value._object && (OUTLINED_FUNCTION_3_75(v48.value._countAndFlagsBits, v48.value._object), OUTLINED_FUNCTION_2_85(), v49))
          {
            v33 = 3;
          }

          else
          {
            OUTLINED_FUNCTION_1_83(&v62);
            v50 = SiriPhoneContact.getNickName()();
            if (v50.value._object && (OUTLINED_FUNCTION_3_75(v50.value._countAndFlagsBits, v50.value._object), OUTLINED_FUNCTION_2_85(), v51))
            {
              v33 = 5;
            }

            else
            {
              __swift_project_boxed_opaque_existential_1(&v62, v65);
              v52 = OUTLINED_FUNCTION_15_41();
              v54 = v53(v52);
              if (v55 && (OUTLINED_FUNCTION_3_75(v54, v55), OUTLINED_FUNCTION_2_85(), v56))
              {
                v33 = 6;
              }

              else
              {
                OUTLINED_FUNCTION_1_83(&v62);
                v57 = SiriPhoneContact.getOrganzationName()();
                if (v57.value._object && (OUTLINED_FUNCTION_3_75(v57.value._countAndFlagsBits, v57.value._object), OUTLINED_FUNCTION_2_85(), v58))
                {
                  v33 = 7;
                }

                else
                {
                  OUTLINED_FUNCTION_1_83(&v62);
                  v59 = SiriPhoneContact.getPhoneNumber()();
                  if (!v59.value._object)
                  {
                    goto LABEL_29;
                  }

                  OUTLINED_FUNCTION_3_75(v59.value._countAndFlagsBits, v59.value._object);
                  OUTLINED_FUNCTION_2_85();
                  if (!v60)
                  {
                    goto LABEL_29;
                  }

                  v33 = 9;
                }
              }
            }
          }
        }
      }

      [a2 addPersonType:v33];
LABEL_29:
      __swift_destroy_boxed_opaque_existential_1(&v62);
      v12 += 40;
      --v11;
    }

    while (v11);
  }
}

void static PhoneDomainContextMetricsUtils.addContactRecipientTypeNLv4(phoneContext:resolvedSiriKitContacts:)(void *a1, uint64_t a2)
{
  v37 = a1;
  v3 = type metadata accessor for ResolvedSiriKitContact();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v10 = type metadata accessor for Logger();
  v36 = __swift_project_value_buffer(v10, static Logger.siriPhone);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v12))
  {
    v13 = v4;
    v14 = OUTLINED_FUNCTION_65_0();
    *v14 = 0;
    _os_log_impl(&dword_0, v11, v12, "#PhoneDomainContextMetricsUtils addContactRecipientTypeNLv4", v14, 2u);
    v15 = v14;
    v4 = v13;
    OUTLINED_FUNCTION_26_0(v15);
  }

  v17 = *(a2 + 16);
  if (v17)
  {
    v19 = *(v4 + 16);
    v18 = v4 + 16;
    v20 = a2 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v34 = *(v18 + 56);
    v35 = v19;
    *&v16 = 67109120;
    v30 = v16;
    v33 = (v18 - 8);
    v31 = v18;
    v32 = (v18 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    do
    {
      v21 = v35;
      (v35)(v9, v20, v3);
      v22 = OUTLINED_FUNCTION_15_41();
      v21(v22);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = v6;
        v26 = swift_slowAlloc();
        *v26 = v30;
        v27 = v9;
        v28 = ResolvedSiriKitContact.personType.getter();
        v29 = *v33;
        (*v33)(v25, v3);
        *(v26 + 4) = v28;
        v9 = v27;
        _os_log_impl(&dword_0, v23, v24, "#PhoneDomainContextMetricsUtils personType : %d", v26, 8u);
        v6 = v25;
        OUTLINED_FUNCTION_26_0(v26);
      }

      else
      {
        v29 = *v33;
        (*v33)(v6, v3);
      }

      [v37 addPersonType:ResolvedSiriKitContact.personType.getter()];
      v29(v9, v3);
      v20 += v34;
      --v17;
    }

    while (v17);
  }
}

id static PhoneDomainContextMetricsUtils.addPhoneCallType(phoneCallNLIntent:phoneContext:)(void *a1, void *a2)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v4, static Logger.siriPhone);
  outlined init with copy of SignalProviding(a1, v18);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    outlined init with copy of SignalProviding(v18, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    v9 = String.init<A>(describing:)();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1(v18);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v17);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_0, v5, v6, "#PhoneDomainContextMetricsUtils addPhoneCallType with phoneIntent: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_26_0(v8);
    OUTLINED_FUNCTION_26_0(v7);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  OUTLINED_FUNCTION_1_83(a1);
  if (PhoneCallNLIntent.isAudioCall()())
  {
    return [a2 setPhoneCallType:1];
  }

  OUTLINED_FUNCTION_1_83(a1);
  if (PhoneCallNLIntent.isVideoCall()())
  {
    v14 = a2;
    v15 = 2;
  }

  else
  {
    v14 = a2;
    v15 = 0;
  }

  return [v14 setPhoneCallType:v15];
}

void static PhoneDomainContextMetricsUtils.addEmergencyType(phoneCallNLIntent:phoneContext:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(FLOWSchemaFLOWPhoneCallEmergencyContext) init];
  if (v4)
  {
    v8 = v4;
    OUTLINED_FUNCTION_1_83(a1);
    if (PhoneCallNLIntent.isEmergencyNumberCall()())
    {
      [v8 setEmergencyCallType:2];
    }

    OUTLINED_FUNCTION_1_83(a1);
    if (PhoneCallNLIntent.isEmergencyServicesCall()())
    {
      [v8 setEmergencyCallType:3];
    }

    OUTLINED_FUNCTION_1_83(a1);
    if (PhoneCallNLIntent.isEmergencyContactCall()())
    {
      [v8 setEmergencyCallType:1];
    }

    [a2 setEmergencyContext:v8];
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v5 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v5, static Logger.siriPhone);
    v8 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v6))
    {
      v7 = OUTLINED_FUNCTION_65_0();
      *v7 = 0;
      _os_log_impl(&dword_0, v8, v6, "#PhoneDomainContextMetricsUtils returning without logging phoneCall emergency context", v7, 2u);
      OUTLINED_FUNCTION_26_0(v7);
    }
  }
}

void *specialized static PhoneDomainContextMetricsUtils.populatePhoneDomainContext(phoneCallNLIntent:contextNLType:app:resolvedSiriKitContacts:callStateProvider:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a6 - 8);
  v15 = __chkstk_darwin(a1);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v18, v19, v15);
  v20 = [objc_allocWithZone(FLOWSchemaFLOWDomainContext) init];
  if (v20)
  {
    v7 = v20;
    v21 = [objc_allocWithZone(FLOWSchemaFLOWPhoneCallContext) init];
    if (v21)
    {
      v22 = v21;
      v34 = a7;
      if (a2)
      {
        static PhoneDomainContextMetricsUtils.addContactRecipientTypeNLv4(phoneContext:resolvedSiriKitContacts:)(v21, a4);
      }

      else
      {
        v26 = a1[3];
        v27 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v26);
        v28 = (*(v27 + 24))(v26, v27);
        static PhoneDomainContextMetricsUtils.addContactRecipientTypeNLv3(phoneCallContacts:phoneContext:)(v28, v22);
      }

      v29 = a1[3];
      v30 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v29);
      v31 = *((*(v30 + 136))(v29, v30) + 16);

      if (v31)
      {
        [v22 addPersonType:10];
      }

      specialized static PhoneDomainContextMetricsUtils.addPhoneCallAppType(phoneCallNLIntent:app:phoneContext:callStateProvider:)(a1, a3, v22, v17, a6, v34);
      static PhoneDomainContextMetricsUtils.addPhoneCallType(phoneCallNLIntent:phoneContext:)(a1, v22);
      static PhoneDomainContextMetricsUtils.addEmergencyType(phoneCallNLIntent:phoneContext:)(a1, v22);
      [v7 setPhoneCallContext:v22];
      [v7 setHasPhoneCallContext:1];
      goto LABEL_15;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v23 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v23, static Logger.siriPhone);
  v22 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v24))
  {
    v25 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_102(v25);
    _os_log_impl(&dword_0, v22, v24, "#PhoneDomainContextMetricsUtils returning without logging phone domain context", v7, 2u);
    OUTLINED_FUNCTION_26_0(v7);
  }

  v7 = 0;
LABEL_15:

  (*(v14 + 8))(v17, a6);
  return v7;
}

unint64_t lazy protocol witness table accessor for type PhoneDomainContextNLType and conformance PhoneDomainContextNLType()
{
  result = lazy protocol witness table cache variable for type PhoneDomainContextNLType and conformance PhoneDomainContextNLType;
  if (!lazy protocol witness table cache variable for type PhoneDomainContextNLType and conformance PhoneDomainContextNLType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneDomainContextNLType and conformance PhoneDomainContextNLType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneDomainContextNLType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t specialized static PhoneDomainContextMetricsUtils.addPhoneCallAppType(phoneCallNLIntent:app:phoneContext:callStateProvider:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v6 = a5;
  v10 = *(a5 - 8);
  v11 = __chkstk_darwin(a1);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v14, v15, v11);
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
    v32 = v6;
    v20 = v19;
    v21 = swift_slowAlloc();
    v31 = a3;
    v22 = v21;
    v34 = a2;
    v35[0] = v21;
    *v20 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B0CSgMd, &_s17SiriAppResolution0B0CSgMR);
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v35);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_0, v17, v18, "#PhoneDomainContextMetricsUtils addPhoneCallAppType with app: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    a3 = v31;

    v6 = v32;
  }

  if (a2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);

    if (PhoneCallNLIntent.isFaceTimeCall()() && App.isFirstParty()())
    {
      [a3 setPhoneCallAppType:2];
    }

    else if (App.isFirstParty()())
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      if (PhoneCallNLIntent.isHangUpCall()() && ((*(v33 + 16))(v35, v6), v26 = v36, v27 = v37, __swift_project_boxed_opaque_existential_1(v35, v36), v28 = (*(v27 + 16))(v26, v27), __swift_destroy_boxed_opaque_existential_1(v35), (v28 & 1) != 0))
      {
        [a3 setPhoneCallAppType:4];
      }

      else
      {
        [a3 setPhoneCallAppType:1];
      }
    }

    else
    {
      [a3 setPhoneCallAppType:3];
    }
  }

  else
  {
    [a3 setPhoneCallAppType:0];
  }

  return (*(v10 + 8))(v13, v6);
}

uint64_t PhoneError.logged()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_15_6();
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v16 = OUTLINED_FUNCTION_19_0();
  outlined init with copy of PhoneError(v16, v17);
  if (swift_getEnumCaseMultiPayload() == 26)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.siriPhone);
    outlined init with copy of PhoneError(v3, v12);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
      OUTLINED_FUNCTION_3_46(v5, v23);
      v32 = a1;
      outlined init with copy of PhoneError(v12, v24);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      outlined destroy of PhoneError(v12);
      *(v21 + 4) = v25;
      *v22 = v25;
      a1 = v32;
      _os_log_impl(&dword_0, v19, v20, "#PhoneError Emitting signpost for %@", v21, 0xCu);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_26_0(v22);
      OUTLINED_FUNCTION_26_0(v21);
    }

    else
    {

      outlined destroy of PhoneError(v12);
    }

    static Signpost.event(_:)();
  }

  else
  {
    outlined destroy of PhoneError(v15);
  }

  outlined init with copy of PhoneError(v3, v9);
  OUTLINED_FUNCTION_104();
  v26 = swift_getEnumCaseMultiPayload() - 17;
  if (v26 < 8 && ((0x8Du >> v26) & 1) != 0)
  {
    v27 = 0;
  }

  else
  {
    outlined destroy of PhoneError(v9);
    v27 = 1;
  }

  outlined init with copy of PhoneError(v3, v2);
  v28 = swift_getEnumCaseMultiPayload() - 17;
  if (v28 < 0xA && ((0x28Du >> v28) & 1) != 0)
  {
    v29 = 0;
  }

  else
  {
    outlined destroy of PhoneError(v2);
    v29 = 1;
  }

  return specialized LoggableError.logged(shouldLogToAbc:shouldCreateTTR:)(v27, v29, a1);
}

uint64_t specialized LoggableError.logged(shouldLogToAbc:shouldCreateTTR:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  type metadata accessor for PhoneError(0);
  _print_unlocked<A, B>(_:_:)();
  if (a1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v8 = type metadata accessor for Logger();
    v9 = __swift_project_value_buffer(v8, static Logger.siriPhone);

    v56 = v9;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    v57 = a3;
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v12 = 136315138;
      v13 = OUTLINED_FUNCTION_104();
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v15);
      _os_log_impl(&dword_0, v10, v11, "#LoggableError Trying ABC for %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      OUTLINED_FUNCTION_26_0(v58);
      OUTLINED_FUNCTION_26_0(v12);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_424FF0;
    *(inited + 32) = PhoneError.errorDescription.getter();
    *(inited + 40) = v17;
    v18 = 0;
    *(inited + 48) = PhoneError.subTypeContext.getter();
    *(inited + 56) = v19;
    v20 = _swiftEmptyArrayStorage;
LABEL_7:
    v21 = (inited + 40 + 16 * v18);
    while (++v18 != 3)
    {
      v23 = *(v21 - 1);
      v22 = *v21;
      v21 += 2;
      v24 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v24 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        v55 = v4;

        v25 = a2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v20 = v28;
        }

        v26 = v20[2];
        if (v26 >= v20[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v20 = v29;
        }

        v20[2] = v26 + 1;
        v27 = &v20[2 * v26];
        v27[4] = v23;
        v27[5] = v22;
        a2 = v25;
        v4 = v55;
        goto LABEL_7;
      }
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_2_13();
    v30 = BidirectionalCollection<>.joined(separator:)();
    v32 = v31;

    v33 = specialized LoggableError.caseName.getter();
    static FileRadarUtils.autoBugCapture(errorType:errorSubType:subTypeContext:logger:)(0x4C41544146, 0xE500000000000000, v33, v34, v30, v32, v56);

    a3 = v57;
  }

  if (a2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v35 = type metadata accessor for Logger();
    v36 = __swift_project_value_buffer(v35, static Logger.siriPhone);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v39 = 136315138;
      v40 = OUTLINED_FUNCTION_104();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v42);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_0, v37, v38, "#LoggableError Trying TTR for %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      OUTLINED_FUNCTION_26_0(v59);
      OUTLINED_FUNCTION_26_0(v39);
    }

    else
    {
    }

    _StringGuts.grow(_:)(28);

    OUTLINED_FUNCTION_27_2();
    v61 = v44;
    v45._countAndFlagsBits = specialized LoggableError.caseName.getter();
    String.append(_:)(v45);

    v46 = v61;
    v60 = PhoneError.errorDescription.getter();
    v62 = v47;
    v48._countAndFlagsBits = OUTLINED_FUNCTION_2_13();
    String.append(_:)(v48);
    v49._countAndFlagsBits = PhoneError.subTypeContext.getter();
    String.append(_:)(v49);

    v50._countAndFlagsBits = OUTLINED_FUNCTION_2_13();
    String.append(_:)(v50);
    v51._countAndFlagsBits = PhoneError.additionalContext.getter();
    String.append(_:)(v51);

    _StringGuts.grow(_:)(31);
    v52._countAndFlagsBits = 0x45656E6F68502061;
    v52._object = 0xEE002820726F7272;
    String.append(_:)(v52);
    _print_unlocked<A, B>(_:_:)();
    v53._countAndFlagsBits = 0x6564207361772029;
    v53._object = 0xEF2E646574636574;
    String.append(_:)(v53);
    static FileRadarUtils.tapToRadar(title:desc:reason:logger:)(0xD00000000000001ALL, v46, v60, v62, 0, 0xE000000000000000, v36);
  }

  return outlined init with copy of PhoneError(v4, a3);
}

uint64_t specialized LoggableError.caseName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[3] = type metadata accessor for PhoneError(0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  outlined init with copy of PhoneError(v1, boxed_opaque_existential_1);
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  (*(v3 + 8))(v5, v2);
  specialized Collection.first.getter(&v14);

  if (!v15[3])
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v14, &_sSSSg5label_yp5valuetSgMd, &_sSSSg5label_yp5valuetSgMR);
LABEL_5:
    *&v14 = 0;
    *(&v14 + 1) = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();

    v7 = *(&v14 + 1);
    v8 = v14;
    goto LABEL_6;
  }

  v7 = *(&v14 + 1);
  v8 = v14;
  __swift_destroy_boxed_opaque_existential_1(v15);
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_6:
  *&v14 = _typeName(_:qualified:)();
  *(&v14 + 1) = v9;
  v10._countAndFlagsBits = 46;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = v8;
  v11._object = v7;
  String.append(_:)(v11);

  return v14;
}

uint64_t PhoneError.caseName.getter()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_2_86();
  v8[3] = type metadata accessor for PhoneError(0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  outlined init with copy of PhoneError(v0, boxed_opaque_existential_1);
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  (*(v2 + 8))(v0, v1);
  specialized Collection.first.getter(&v9);

  if (!v10[3])
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v9, &_sSSSg5label_yp5valuetSgMd, &_sSSSg5label_yp5valuetSgMR);
LABEL_5:
    *&v9 = 0;
    *(&v9 + 1) = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();

    v4 = *(&v9 + 1);
    v5 = v9;
    goto LABEL_6;
  }

  v4 = *(&v9 + 1);
  v5 = v9;
  __swift_destroy_boxed_opaque_existential_1(v10);
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_6:
  *&v9 = 0x727245656E6F6850;
  *(&v9 + 1) = 0xEB000000002E726FLL;
  v6._countAndFlagsBits = v5;
  v6._object = v4;
  String.append(_:)(v6);

  return v9;
}

uint64_t PhoneError.errorDescription.getter()
{
  type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_2_86();
  v2 = OUTLINED_FUNCTION_19_0();
  outlined init with copy of PhoneError(v2, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v25 = *v0;
      v26 = lazy protocol witness table accessor for type SlotResolutionError and conformance SlotResolutionError();
      OUTLINED_FUNCTION_3_46(&type metadata for SlotResolutionError, v26);
      *v27 = v25;
      goto LABEL_17;
    case 2u:
      v47 = *v0;
      v48 = *(v0 + 16);
      *v49 = *(v0 + 32);
      *&v49[9] = *(v0 + 41);
      v18 = lazy protocol witness table accessor for type TemplatingError and conformance TemplatingError();
      OUTLINED_FUNCTION_3_46(&type metadata for TemplatingError, v18);
      *(v19 + 41) = *&v49[9];
      v19[1] = v48;
      v19[2] = *v49;
      *v19 = v47;
      goto LABEL_17;
    case 3u:
      outlined destroy of PhoneError(v0);
      goto LABEL_14;
    case 4u:
      outlined destroy of PhoneError(v0);
      goto LABEL_19;
    case 5u:
      v30 = *v0;
      v31 = *(v0 + 8);
      _StringGuts.grow(_:)(39);

      v46 = 0x756220726F727245;
      if (v31)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0;
      }

      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = 0xE000000000000000;
      }

      v34 = v33;
      String.append(_:)(*&v32);

      v35._countAndFlagsBits = 0xD000000000000014;
      v35._object = 0x800000000045F350;
      String.append(_:)(v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v14 = String.init<A>(describing:)();
      goto LABEL_36;
    case 6u:
      OUTLINED_FUNCTION_9_41();
      _StringGuts.grow(_:)(107);
      v37._countAndFlagsBits = 0xD000000000000024;
      v37._object = 0x800000000045F290;
      String.append(_:)(v37);
      OUTLINED_FUNCTION_19_32();

      v38._countAndFlagsBits = 0xD000000000000045;
      v38._object = 0x800000000045F2C0;
      String.append(_:)(v38);
      goto LABEL_38;
    case 7u:
      v22 = *v0;
      OUTLINED_FUNCTION_9_41();
      _StringGuts.grow(_:)(29);

      v46 = v22;
      v23 = 0x800000000045F270;
      v24 = 0xD000000000000019;
      goto LABEL_30;
    case 8u:
      OUTLINED_FUNCTION_9_41();
      _StringGuts.grow(_:)(30);

      OUTLINED_FUNCTION_6_62();
      v46 = v42 + 3;
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      goto LABEL_36;
    case 9u:
      OUTLINED_FUNCTION_9_41();
      _StringGuts.grow(_:)(28);

      OUTLINED_FUNCTION_6_62();
      v46 = v13 + 1;
      v14 = _typeName(_:qualified:)();
LABEL_36:
      String.append(_:)(*&v14);
      goto LABEL_37;
    case 0xAu:
      OUTLINED_FUNCTION_9_41();
      _StringGuts.grow(_:)(36);

      OUTLINED_FUNCTION_6_62();
      v46 = v40 + 9;
      swift_getErrorValue();
      goto LABEL_34;
    case 0xBu:
      outlined destroy of PhoneError(v0);
      return 0xD000000000000021;
    case 0xCu:
      OUTLINED_FUNCTION_9_41();
      _StringGuts.grow(_:)(27);

      OUTLINED_FUNCTION_6_62();
      v46 = v12;
      swift_getErrorValue();
LABEL_34:
      v41._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v41);

      goto LABEL_38;
    case 0xDu:
      OUTLINED_FUNCTION_9_41();
      _StringGuts.grow(_:)(53);
      v24 = 0xD000000000000033;
      v23 = 0x800000000045F060;
LABEL_30:
      String.append(_:)(*&v24);
      OUTLINED_FUNCTION_19_32();
LABEL_37:

LABEL_38:
      v10 = v46;
      break;
    case 0xEu:
      OUTLINED_FUNCTION_0_90();
      v10 = v11 - 6;
      break;
    case 0xFu:
      OUTLINED_FUNCTION_0_90();
      v10 = v20 + 105;
      break;
    case 0x10u:
LABEL_14:
      OUTLINED_FUNCTION_0_90();
      v10 = v21 + 1;
      break;
    case 0x11u:
      OUTLINED_FUNCTION_0_90();
      v10 = v28 + 14;
      break;
    case 0x12u:
      OUTLINED_FUNCTION_0_90();
      v10 = v39 + 7;
      break;
    case 0x13u:
      v10 = 0xD00000000000003BLL;
      break;
    case 0x14u:
LABEL_19:
      OUTLINED_FUNCTION_0_90();
      v10 = v29 + 24;
      break;
    case 0x15u:
      OUTLINED_FUNCTION_0_90();
      v10 = v36 - 7;
      break;
    case 0x16u:
      OUTLINED_FUNCTION_0_90();
      v10 = v44 | 4;
      break;
    case 0x17u:
      v10 = 0xD000000000000019;
      break;
    case 0x18u:
      OUTLINED_FUNCTION_0_90();
      v10 = v17 | 2;
      break;
    case 0x19u:
      OUTLINED_FUNCTION_0_90();
      v10 = v16 - 4;
      break;
    case 0x1Au:
      OUTLINED_FUNCTION_0_90();
      v10 = v45 + 16;
      break;
    case 0x1Bu:
      OUTLINED_FUNCTION_0_90();
      v10 = v9 | 6;
      break;
    default:
      v4 = *v0;
      v5 = *(v0 + 8);
      v6 = *(v0 + 16);
      v7 = lazy protocol witness table accessor for type ParseError and conformance ParseError();
      OUTLINED_FUNCTION_3_46(&type metadata for ParseError, v7);
      *v8 = v4;
      *(v8 + 8) = v5;
      *(v8 + 16) = v6;
LABEL_17:
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();

      break;
  }

  return v10;
}

uint64_t PhoneError.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.siriPhone);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t PhoneError.subTypeContext.getter()
{
  type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_2_86();
  v2 = OUTLINED_FUNCTION_19_0();
  outlined init with copy of PhoneError(v2, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v4 = *(v0 + 8);
      v5 = *(v0 + 16);
      *&v35 = *v0;
      *(&v35 + 1) = v4;
      LOBYTE(v36) = v5;
      lazy protocol witness table accessor for type ParseError and conformance ParseError();
      Error.localizedDescription.getter();
      v6 = OUTLINED_FUNCTION_72();
      outlined consume of ParseError(v6, v7, v5);
      return OUTLINED_FUNCTION_19_0();
    case 1u:
      return OUTLINED_FUNCTION_19_0();
    case 2u:
      v23 = *(v0 + 16);
      v35 = *v0;
      v36 = v23;
      v37[0] = *(v0 + 32);
      *(v37 + 9) = *(v0 + 41);
      String.init<A>(describing:)();
      return OUTLINED_FUNCTION_19_0();
    case 3u:
      outlined init with take of DialogResultError(v0, &v35);
      DialogResultError.description.getter();
      outlined destroy of DialogResultError(&v35);
      return OUTLINED_FUNCTION_19_0();
    case 4u:
      v8 = *v0;
      v9 = *(v0 + 8);
      v11 = *(v0 + 16);
      v10 = *(v0 + 24);
      v13 = *(v0 + 32);
      v12 = *(v0 + 40);
      v14 = *(v0 + 48);
      OUTLINED_FUNCTION_13_44();
      _StringGuts.grow(_:)(50);

      *&v35 = 0x3D736C6961746564;
      *(&v35 + 1) = 0xE800000000000000;
      v15._countAndFlagsBits = v8;
      v15._object = v9;
      String.append(_:)(v15);

      v16._countAndFlagsBits = OUTLINED_FUNCTION_7_56(0x66202D20u);
      String.append(_:)(v16);
      v17._countAndFlagsBits = v11;
      v17._object = v10;
      String.append(_:)(v17);

      v18._countAndFlagsBits = OUTLINED_FUNCTION_3_76();
      String.append(_:)(v18);
      v19._countAndFlagsBits = v13;
      v19._object = v12;
      String.append(_:)(v19);

      v20._countAndFlagsBits = OUTLINED_FUNCTION_8_57();
      v20._object = 0xE800000000000000;
      String.append(_:)(v20);
      v38 = v14;
      goto LABEL_12;
    case 5u:
      v28 = *(v0 + 16);
      v29 = *(v0 + 24);
      OUTLINED_FUNCTION_13_44();
      _StringGuts.grow(_:)(21);

      *&v35 = 0x3D657079546F7375;
      *(&v35 + 1) = 0xE800000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v30._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v30);

      v31._countAndFlagsBits = 0x726F727265202D20;
      v31._object = 0xE90000000000003DLL;
      String.append(_:)(v31);
      v38 = v28;
      v39 = v29;
      v21 = String.init<A>(describing:)();
      goto LABEL_13;
    case 6u:
      v21 = *v0;
      v32 = *(v0 + 8);
      *&v35 = 0x614E646F6874656DLL;
      *(&v35 + 1) = 0xEB000000003D656DLL;
      v22 = v32;
      goto LABEL_13;
    case 7u:
      v24 = *(v0 + 16);
      v25 = *(v0 + 24);
      OUTLINED_FUNCTION_13_44();
      _StringGuts.grow(_:)(26);

      *&v35 = 0x656D614E776F6C66;
      *(&v35 + 1) = 0xE90000000000003DLL;
      OUTLINED_FUNCTION_19_32();

      v26._countAndFlagsBits = 0x53776F6C66202D20;
      v26._object = 0xED00003D65746174;
      String.append(_:)(v26);
      v27._countAndFlagsBits = v24;
      v27._object = v25;
      String.append(_:)(v27);
      goto LABEL_14;
    case 8u:
      v33 = *v0;
      *&v35 = 0x3D7865646E69;
      *(&v35 + 1) = 0xE600000000000000;
      v38 = v33;
LABEL_12:
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      goto LABEL_13;
    case 9u:
      *&v35 = 0x3D65707974;
      *(&v35 + 1) = 0xE500000000000000;
      v21 = _typeName(_:qualified:)();
LABEL_13:
      String.append(_:)(*&v21);
LABEL_14:

      break;
    default:
      outlined destroy of PhoneError(v0);
      break;
  }

  return OUTLINED_FUNCTION_19_0();
}

unint64_t SlotResolutionError.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000020;
  }

  else
  {
    return 0xD000000000000014;
  }
}

unint64_t PhoneError.additionalContext.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_15_6();
  __chkstk_darwin(v3);
  v5 = &v11 - v4;
  type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_2_86();
  outlined init with copy of PhoneError(v0, v0);
  if (swift_getEnumCaseMultiPayload() == 11)
  {
    outlined init with take of Parse?(v0, v5);
    v11 = 0;
    v12 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    OUTLINED_FUNCTION_27_2();
    v11 = 0xD00000000000001FLL;
    v12 = v7;
    outlined init with copy of Parse?(v5, v1);
    v8._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v8);

    v9 = v11;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v5, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  }

  else
  {
    outlined destroy of PhoneError(v0);
    return 0;
  }

  return v9;
}

unint64_t ParseError.errorDescription.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    OUTLINED_FUNCTION_12_51();
    _StringGuts.grow(_:)(44);

    OUTLINED_FUNCTION_27_2();
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    OUTLINED_FUNCTION_12_51();
    _StringGuts.grow(_:)(41);

    OUTLINED_FUNCTION_27_2();
LABEL_5:
    OUTLINED_FUNCTION_18_24(v3, v4, v5, v6, v7, v8, v9, v10, v13, v15);
    return v14;
  }

  v12 = 0x61746E6F63206F4ELL;
  if (a1 ^ 1 | a2)
  {
    v12 = 0xD000000000000016;
  }

  if (a1 | a2)
  {
    return v12;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t static ParseError.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 != 1)
      {
        return 0;
      }

      goto LABEL_6;
    }

    if (!(a1 | a2))
    {
      return a6 == 2 && !(a5 | a4);
    }

    if (a1 ^ 1 | a2)
    {
      if (a6 != 2 || a4 != 2)
      {
        return 0;
      }
    }

    else if (a6 != 2 || a4 != 1)
    {
      return 0;
    }

    if (!a5)
    {
      return 1;
    }
  }

  else if (!a6)
  {
LABEL_6:
    if (a1 != a4 || a2 != a5)
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 1;
  }

  return 0;
}

uint64_t TemplatingError.errorDescription.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 56))
  {
    _StringGuts.grow(_:)(48);

    v14 = 0x2720746F6C53;
    v2._countAndFlagsBits = OUTLINED_FUNCTION_72();
    String.append(_:)(v2);
    v3 = 0xD000000000000026;
    v4 = 0x800000000045F5E0;
  }

  else
  {
    v5 = *(v0 + 24);
    v14 = 0;
    _StringGuts.grow(_:)(78);
    v6._object = 0x800000000045F610;
    v6._countAndFlagsBits = 0xD000000000000024;
    String.append(_:)(v6);
    v7._countAndFlagsBits = OUTLINED_FUNCTION_72();
    String.append(_:)(v7);
    v8._countAndFlagsBits = OUTLINED_FUNCTION_7_56(0x46202E22u);
    String.append(_:)(v8);
    v9._countAndFlagsBits = v1;
    v9._object = v5;
    String.append(_:)(v9);
    v10._countAndFlagsBits = OUTLINED_FUNCTION_3_76();
    String.append(_:)(v10);
    v11._countAndFlagsBits = OUTLINED_FUNCTION_104();
    String.append(_:)(v11);
    v3 = OUTLINED_FUNCTION_8_57();
    v4 = 0xE800000000000000;
  }

  String.append(_:)(*&v3);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  return v14;
}

BOOL static TemplatingError.__derived_enum_equals(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  if (a1[7])
  {
    if (a2[7])
    {
      v10 = v4 == v7 && v5 == v8;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return v6 == v9;
      }
    }

    return 0;
  }

  if (a2[7])
  {
    return 0;
  }

  v14 = a1[3];
  v13 = a1[4];
  v15 = a1[5];
  v16 = a1[6];
  v18 = a2[3];
  v17 = a2[4];
  v19 = v4 == v7 && v5 == v8;
  v20 = a2[5];
  v21 = a2[6];
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v22 = v6 == v9 && v14 == v18;
  if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v13 != v17 || v15 != v20)
  {
    OUTLINED_FUNCTION_72();
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  return v16 == v21;
}

uint64_t DialogResultError.description.getter()
{
  outlined init with take of DialogResultError(v0, v13);
  v1 = v13[0];
  v2 = v13[1];
  v3 = v13[2];
  v4 = v13[3];
  _StringGuts.grow(_:)(73);
  v5._object = 0x800000000045F640;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v5);
  v6._countAndFlagsBits = v1;
  v6._object = v2;
  String.append(_:)(v6);
  v7._countAndFlagsBits = OUTLINED_FUNCTION_7_56(0x46202E22u);
  String.append(_:)(v7);
  v8._countAndFlagsBits = v3;
  v8._object = v4;
  String.append(_:)(v8);
  v9._countAndFlagsBits = OUTLINED_FUNCTION_3_76();
  String.append(_:)(v9);
  OUTLINED_FUNCTION_19_32();
  v10._countAndFlagsBits = OUTLINED_FUNCTION_8_57();
  v10._object = 0xE800000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  return 0;
}

PhoneCallFlowDelegatePlugin::SlotResolutionError_optional __swiftcall SlotResolutionError.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SlotResolutionError.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_SlotResolutionError_resolutionTypeUnsupportedForSlot;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_SlotResolutionError_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

PhoneCallFlowDelegatePlugin::SlotResolutionError_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SlotResolutionError@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SlotResolutionError_optional *a2@<X8>)
{
  result.value = SlotResolutionError.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SlotResolutionError@<X0>(unint64_t *a1@<X8>)
{
  result = SlotResolutionError.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AppIntentDispatcherError.errorDescription.getter()
{
  OUTLINED_FUNCTION_12_51();
  _StringGuts.grow(_:)(20);

  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_18_24(v0, v1, v2, v3, v4, v5, v6, v7, v9, v11);
  return v10;
}

uint64_t AppIntentDispatcherError.subTypeContext.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

unint64_t lazy protocol witness table accessor for type SlotResolutionError and conformance SlotResolutionError()
{
  result = lazy protocol witness table cache variable for type SlotResolutionError and conformance SlotResolutionError;
  if (!lazy protocol witness table cache variable for type SlotResolutionError and conformance SlotResolutionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SlotResolutionError and conformance SlotResolutionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SlotResolutionError and conformance SlotResolutionError;
  if (!lazy protocol witness table cache variable for type SlotResolutionError and conformance SlotResolutionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SlotResolutionError and conformance SlotResolutionError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TemplatingError and conformance TemplatingError()
{
  result = lazy protocol witness table cache variable for type TemplatingError and conformance TemplatingError;
  if (!lazy protocol witness table cache variable for type TemplatingError and conformance TemplatingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemplatingError and conformance TemplatingError);
  }

  return result;
}

uint64_t outlined init with take of DialogResultError(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

uint64_t outlined consume of ParseError(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t outlined init with take of Parse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t type metadata completion function for PhoneError(uint64_t a1)
{
  v1 = type metadata accessor for (details: String, fileName: String, methodName: String, line: Int)(319);
  if (v2 <= 0x3F)
  {
    type metadata accessor for (usoEntity: String?, error: String?)(319);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      v1 = type metadata accessor for (methodName: String)();
      if (v5 <= 0x3F)
      {
        type metadata accessor for (flowName: String, flowState: String)();
        v1 = v6;
        if (v7 <= 0x3F)
        {
          v1 = type metadata accessor for (index: Int)();
          if (v8 <= 0x3F)
          {
            type metadata accessor for (type: @thick AnyPhoneNLIntent.Type)();
            v1 = v9;
            if (v10 <= 0x3F)
            {
              v1 = type metadata accessor for Error();
              if (v11 <= 0x3F)
              {
                type metadata accessor for Parse?(319);
                if (v13 > 0x3F)
                {
                  return v12;
                }

                else
                {
                  v1 = type metadata accessor for (error: String)();
                  if (v14 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for (details: String, fileName: String, methodName: String, line: Int)(uint64_t a1)
{
  v1 = lazy cache variable for type metadata for (details: String, fileName: String, methodName: String, line: Int);
  if (!lazy cache variable for type metadata for (details: String, fileName: String, methodName: String, line: Int))
  {
    __chkstk_darwin(a1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v1 = TupleTypeMetadata;
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (details: String, fileName: String, methodName: String, line: Int));
    }
  }

  return v1;
}

void type metadata accessor for (usoEntity: String?, error: String?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (usoEntity: String?, error: String?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (usoEntity: String?, error: String?));
    }
  }
}

void *type metadata accessor for (methodName: String)()
{
  result = lazy cache variable for type metadata for (methodName: String);
  if (!lazy cache variable for type metadata for (methodName: String))
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &lazy cache variable for type metadata for (methodName: String));
  }

  return result;
}

void type metadata accessor for (flowName: String, flowState: String)()
{
  if (!lazy cache variable for type metadata for (flowName: String, flowState: String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (flowName: String, flowState: String));
    }
  }
}

void type metadata accessor for (type: @thick AnyPhoneNLIntent.Type)()
{
  if (!lazy cache variable for type metadata for (type: @thick AnyPhoneNLIntent.Type))
  {
    v0 = type metadata accessor for @thick AnyPhoneNLIntent.Type();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (type: @thick AnyPhoneNLIntent.Type));
    }
  }
}

unint64_t type metadata accessor for @thick AnyPhoneNLIntent.Type()
{
  result = lazy cache variable for type metadata for @thick AnyPhoneNLIntent.Type;
  if (!lazy cache variable for type metadata for @thick AnyPhoneNLIntent.Type)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pMR);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for @thick AnyPhoneNLIntent.Type);
  }

  return result;
}

void type metadata accessor for Parse?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Parse?)
  {
    type metadata accessor for Parse();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Parse?);
    }
  }
}

void *type metadata accessor for (error: String)()
{
  result = lazy cache variable for type metadata for (error: String);
  if (!lazy cache variable for type metadata for (error: String))
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &lazy cache variable for type metadata for (error: String));
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin10ParseErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for TemplatingError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 57))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 56);
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

uint64_t storeEnumTagSinglePayload for TemplatingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SlotResolutionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppIntentDispatcherError(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for AppIntentDispatcherError(uint64_t result, int a2, int a3)
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

uint64_t PhoneFlow.init(sharedGlobals:)(__int128 *a1)
{
  *(v1 + 16) = 0x6F6C46656E6F6850;
  *(v1 + 24) = 0xE900000000000077;
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_47_0();
  type metadata accessor for PhoneCallFlowState(0, v4, *(v3 + 88), v5);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_2_0();
  outlined init with take of PhoneCallFeatureFlagProviding(a1, v1 + *(v6 + 120));
  return v1;
}

char *PhoneFlow.deinit()
{
  v1 = *v0;

  OUTLINED_FUNCTION_2_0();
  v3 = *(v2 + 112);
  type metadata accessor for PhoneCallFlowState(0, *(v1 + 80), *(v1 + 88), v4);
  OUTLINED_FUNCTION_23_1();
  (*(v5 + 8))(&v0[v3]);
  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1(&v0[*(v6 + 120)]);
  return v0;
}

uint64_t PhoneFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_33_0();
  v5 = *(v4 + 112);
  swift_beginAccess();
  OUTLINED_FUNCTION_33_0();
  type metadata accessor for PhoneCallFlowState(0, *(v6 + 80), *(v3 + 88), v7);
  OUTLINED_FUNCTION_23_1();
  return (*(v8 + 16))(a1, &v1[v5]);
}

uint64_t PhoneFlow.state.setter(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_33_0();
  v5 = *(v4 + 112);
  swift_beginAccess();
  OUTLINED_FUNCTION_33_0();
  type metadata accessor for PhoneCallFlowState(0, *(v6 + 80), *(v3 + 88), v7);
  OUTLINED_FUNCTION_23_1();
  (*(v8 + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t (*PhoneFlow.state.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_77();
  return CallingIntentNeedsValueFlowStrategy.rePromptCount.modify;
}

uint64_t PhoneFlow.sharedGlobals.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  v4 = *(v3 + 120);
  swift_beginAccess();
  return outlined init with copy of SignalProviding(v1 + v4, a1);
}

uint64_t PhoneFlow.sharedGlobals.setter(__int128 *a1)
{
  OUTLINED_FUNCTION_2_0();
  v4 = *(v3 + 120);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + v4));
  outlined init with take of PhoneCallFeatureFlagProviding(a1, v1 + v4);
  return swift_endAccess();
}

uint64_t (*PhoneFlow.sharedGlobals.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_77();
  return ActionableCallControlFlow.state.modify;
}

uint64_t PhoneFlow.execute(completion:)()
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_47_0();
  type metadata accessor for PhoneFlow(0, v1, v2, *(v0 + 96));
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_0();
  return Flow.deferToExecuteAsync(_:)();
}

void PhoneFlow.onRCHFlowComplete(exitValue:)(uint64_t a1)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_47_0();
  v3 = type metadata accessor for RCHFlowResult();
  OUTLINED_FUNCTION_9_1();
  v5 = v4;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_5_63();
  (*(v5 + 16))(v1, a1, v3);
  v7 = OUTLINED_FUNCTION_20_0();
  if (v8(v7) == enum case for RCHFlowResult.complete<A, B>(_:))
  {
    v9 = OUTLINED_FUNCTION_20_0();
    v10(v9);
    v11 = *(v1 + 8);
    v12 = *(v1 + 16);

    v13 = v12;
    PhoneFlow.onRCHFlowCompletedWithIntentResponse(_:)(v12);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_20_0();
    v15(v14);
    PhoneFlow.onRCHFlowCompletedWithIntentResponse(_:)(0);
  }
}

{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_47_0();
  v3 = type metadata accessor for RCHFlowResult();
  v4 = type metadata accessor for ConditionalFlowResult();
  OUTLINED_FUNCTION_9_1();
  v6 = v5;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_5_63();
  (*(v6 + 16))(v1, a1, v4);
  if (__swift_getEnumTagSinglePayload(v1, 1, v3) == 1 || (OUTLINED_FUNCTION_9_1(), v8 = OUTLINED_FUNCTION_20_0(), v9(v8) != enum case for RCHFlowResult.complete<A, B>(_:)))
  {
    v15 = OUTLINED_FUNCTION_20_0();
    v16(v15);
    PhoneFlow.onRCHFlowCompletedWithIntentResponse(_:)(0);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_20_0();
    v11(v10);
    v12 = *(v1 + 8);
    v13 = *(v1 + 16);

    v14 = v13;
    PhoneFlow.onRCHFlowCompletedWithIntentResponse(_:)(v13);
  }
}

uint64_t PhoneFlow.dismissSiri()()
{
  OUTLINED_FUNCTION_2_0();
  (*(v1 + 152))(v5);
  type metadata accessor for DismissSiriFlow();
  v2 = swift_allocObject();
  outlined init with take of PhoneCallFeatureFlagProviding(v5, v2 + 16);
  *&v5[0] = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in PhoneFlow.dismissSiri();
  *(v3 + 24) = v0;
  lazy protocol witness table accessor for type DismissSiriFlow and conformance DismissSiriFlow();

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

uint64_t PhoneFlow.checkShouldDismissSiri(intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 88);
  type metadata accessor for PhoneCallFlowState(0, *(*v4 + 80), v6, a4);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_49_0();
  v8 = __chkstk_darwin(v7);
  v10 = &v13 - v9;
  v11 = (*(*(v5 + 96) + 8))(v6, v8);
  if (v11)
  {
    swift_storeEnumTagMultiPayload();
    (*(*v4 + 136))(v10);
  }

  return v11 & 1;
}

void PhoneFlow.onRCHFlowCompletedWithIntentResponse(_:)(void *a1)
{
  OUTLINED_FUNCTION_47_0();
  v4 = v3;
  OUTLINED_FUNCTION_47_0();
  type metadata accessor for PhoneCallFlowState(0, v6, *(v5 + 88), v7);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_5_63();
  if (!a1 || (v9 = *(v4 + 240), v10 = a1, v11 = v9(), v10, (v11 & 1) == 0))
  {
    OUTLINED_FUNCTION_20_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_0();
    (*(v12 + 136))(v1);
  }
}

uint64_t PhoneFlow.init(state:sharedGlobals:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = 0x6F6C46656E6F6850;
  *(v2 + 24) = 0xE900000000000077;
  OUTLINED_FUNCTION_47_0();
  v6 = *(v5 + 112);
  OUTLINED_FUNCTION_47_0();
  type metadata accessor for PhoneCallFlowState(0, v8, *(v7 + 88), v9);
  OUTLINED_FUNCTION_23_1();
  (*(v10 + 32))(v2 + v6, a1);
  OUTLINED_FUNCTION_2_0();
  outlined init with take of PhoneCallFeatureFlagProviding(a2, v2 + *(v11 + 120));
  return v2;
}

uint64_t key path setter for PhoneFlow.state : <A, B>PhoneFlow<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for PhoneCallFlowState(0, *(a3 + a4 - 24), *(a3 + a4 - 16), a4);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, v7);
  return (*(**a2 + 136))(v9);
}

uint64_t PhoneFlow.__allocating_init(sharedGlobals:)(__int128 *a1)
{
  v2 = swift_allocObject();
  PhoneFlow.init(sharedGlobals:)(a1);
  return v2;
}

uint64_t PhoneFlow.__allocating_init(state:sharedGlobals:)()
{
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_20_0();
  PhoneFlow.init(state:sharedGlobals:)(v1, v2);
  return v0;
}

uint64_t PhoneFlow.on(input:)()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 16), *(v1 + 24), &v8);
    _os_log_impl(&dword_0, v3, v4, "%s: on(input:) called. This should never happen.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_26_0(v6);
    OUTLINED_FUNCTION_26_0(v5);
  }

  return 0;
}

uint64_t PhoneFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(PhoneFlow.execute(), 0, 0);
}

uint64_t PhoneFlow.execute()()
{
  v10 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v4 + 16), *(v4 + 24), &v9);
    _os_log_impl(&dword_0, v2, v3, "%s: execute() called. This should never happen.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_26_0(v6);
    OUTLINED_FUNCTION_26_0(v5);
  }

  static ExecuteResponse.complete()();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t closure #1 in PhoneFlow.dismissSiri()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PhoneCallFlowState(0, *(*a1 + 80), *(*a1 + 88), a4);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  swift_storeEnumTagMultiPayload();
  return (*(*a1 + 136))(v7);
}

uint64_t PhoneFlow.__deallocating_deinit()
{
  PhoneFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance PhoneFlow<A, B>(uint64_t a1)
{
  v6 = (*(**v1 + 208) + **(**v1 + 208));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance PhoneFlow<A, B>(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for PhoneFlow(0, a1[10], a1[11], a1[12]);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t type metadata completion function for PhoneFlow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PhoneCallFlowState(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t PhoneIncomingCall.__allocating_init(intentResponse:siriLocale:options:appInfoBuilder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = a5[3];
  v12 = a5[4];
  __swift_mutable_project_boxed_opaque_existential_1(a5, v11);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  (*(v17 + 16))(v15 - v14);
  v18 = specialized PhoneIncomingCall.__allocating_init(intentResponse:siriLocale:options:appInfoBuilder:)(a1, a2, a3, a4, v16, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v18;
}

uint64_t specialized PhoneIncomingCall.__allocating_init(intentResponse:siriLocale:options:appInfoBuilder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v61 = a3;
  v60 = type metadata accessor for Locale();
  v15 = *(v60 - 8);
  __chkstk_darwin(v60);
  v17 = (&v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63[3] = a7;
  v63[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a5, a7);
  ObjectType = swift_getObjectType();
  v58 = a2;
  v59 = ObjectType;
  v20 = IncomingCallIntentResponse.latestCallRecord.getter(ObjectType, a2);
  if (v20)
  {
    v56 = v20;
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v57 = a6;
    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.siriPhone);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    v24 = os_log_type_enabled(v22, v23);
    v55 = a4;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v53 = v17;
      v26 = v25;
      v27 = swift_slowAlloc();
      v54 = a8;
      v62[0] = v27;
      v28 = v15;
      v29 = v27;
      *v26 = 136315138;
      v30 = PhoneCallRecord.Options.description.getter(a4);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v62);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_0, v22, v23, "#PhoneIncomingCall PhoneCallRecord w/ options: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v15 = v28;
      a8 = v54;

      v17 = v53;
    }

    v33 = type metadata accessor for PhoneCallRecord(0);
    outlined init with copy of SignalProviding(v63, v62);
    (*(v15 + 16))(v17, v61, v60);
    v34 = __swift_mutable_project_boxed_opaque_existential_1(v62, v62[3]);
    v35 = __chkstk_darwin(v34);
    v37 = v17;
    v38 = &v53 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v38, v35);
    v40 = specialized PhoneCallRecord.__allocating_init(callRecord:options:appInfoBuilder:locale:)(v56, v55, v38, v37, v33, a7, a8);
    v41 = v15;
    v42 = v40;
    __swift_destroy_boxed_opaque_existential_1(v62);

    a6 = v57;
  }

  else
  {
    v41 = v15;
    v42 = 0;
  }

  type metadata accessor for PhoneIncomingCall.Builder();
  swift_allocObject();
  v43 = PhoneIncomingCall.Builder.init()();
  v44 = v58;
  v45 = v59;
  IncomingCallIntentResponse.isIncomingCall.getter(v59, v58);
  v47 = (*(*v43 + 184))(v46 & 1);

  v48 = IncomingCallIntentResponse.unknownCaller.getter(v45, v44);
  v49 = (*(*v47 + 192))(v48);

  v50 = (*(*v49 + 200))(v42);

  v51 = (*(a6 + 152))(v50);

  (*(v41 + 8))(v61, v60);
  __swift_destroy_boxed_opaque_existential_1(v63);
  return v51;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0a8IncomingB0C14intentResponse10siriLocale7options14appInfoBuilderAcA0fb6IntentH0_p_10Foundation0J0VAA0aB6RecordC7OptionsVAA03AppM8Building_ptcfCTf4nnnen_nAA0smN0C_Tt3g5Tf4ennn_n(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v53 = a2;
  v52 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_9_1();
  v10 = v9;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v14 = (v13 - v12);
  v55[3] = type metadata accessor for AppInfoBuilder();
  v55[4] = &protocol witness table for AppInfoBuilder;
  v55[0] = a4;
  v15 = OUTLINED_FUNCTION_0_91();
  v17 = IncomingCallIntentResponse.latestCallRecord.getter(v15, v16);
  if (v17)
  {
    v51 = v17;
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.siriPhone);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v50 = a5;
      v21 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v54[0] = v49;
      *v21 = 136315138;
      v22 = PhoneCallRecord.Options.description.getter(a3);
      v24 = v10;
      v25 = a1;
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v54);

      *(v21 + 4) = v26;
      a1 = v25;
      v10 = v24;
      _os_log_impl(&dword_0, v19, v20, "#PhoneIncomingCall PhoneCallRecord w/ options: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
    }

    outlined init with copy of SignalProviding(v55, v54);
    v27 = v52;
    (*(v10 + 16))(v14, v53, v52);
    __swift_mutable_project_boxed_opaque_existential_1(v54, v54[3]);
    v50 = &v48;
    OUTLINED_FUNCTION_9_1();
    __chkstk_darwin(v28);
    OUTLINED_FUNCTION_4();
    v31 = (v30 - v29);
    (*(v32 + 16))(v30 - v29);
    v33 = v51;
    v34 = _s27PhoneCallFlowDelegatePlugin0aB6RecordC10getBuilder04callF07options07appInfoH06localeAC0H0CSo06INCallF0C_AC7OptionsVAA03AppL8Building_p10Foundation6LocaleVtFZTf4nnenn_nAA0plH0C_Tt3g5(v51, a3, *v31, v14);
    type metadata accessor for PhoneCallRecord(0);
    swift_allocObject();
    v35 = PhoneCallRecord.init(builder:)(v34);

    (*(v10 + 8))(v14, v27);
    __swift_destroy_boxed_opaque_existential_1(v54);
  }

  else
  {
    v35 = 0;
  }

  type metadata accessor for PhoneIncomingCall.Builder();
  swift_allocObject();
  v36 = PhoneIncomingCall.Builder.init()();
  v37 = OUTLINED_FUNCTION_0_91();
  IncomingCallIntentResponse.isIncomingCall.getter(v37, v38);
  v40 = (*(*v36 + 184))(v39 & 1);

  v41 = OUTLINED_FUNCTION_0_91();
  v43 = IncomingCallIntentResponse.unknownCaller.getter(v41, v42);
  v44 = (*(*v40 + 192))(v43);

  v45 = (*(*v44 + 200))(v35);

  type metadata accessor for PhoneIncomingCall();
  swift_allocObject();
  v46 = PhoneIncomingCall.init(builder:)(v45);

  (*(v10 + 8))(v53, v52);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return v46;
}

uint64_t PhoneIncomingCall.Builder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t PhoneIncomingCall.Builder.incomingCall.setter(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_11_2(v2 + 16, a2);
  *(v2 + 16) = a1;
  return result;
}

uint64_t PhoneIncomingCall.Builder.unknownCaller.setter(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_11_2(v2 + 17, a2);
  *(v2 + 17) = a1;
  return result;
}

uint64_t key path setter for PhoneIncomingCall.Builder.latestCallRecord : PhoneIncomingCall.Builder(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 160);

  return v2(v3);
}

uint64_t PhoneIncomingCall.Builder.latestCallRecord.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_2(v2 + 24, a2);
  *(v2 + 24) = a1;
}

uint64_t PhoneIncomingCall.Builder.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t PhoneIncomingCall.Builder.withIncomingCall(_:)()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 112))();
}

uint64_t PhoneIncomingCall.Builder.withUnknownCaller(_:)()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 136))();
}

uint64_t PhoneIncomingCall.Builder.withLatestCallRecord(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 160);

  v1(v2);
}

uint64_t PhoneIncomingCall.Builder.withLatestCallRecord(_:)(uint64_t a1)
{
  if (a1)
  {
    a1 = (*(*a1 + 1176))();
  }

  (*(*v1 + 160))(a1);
}

uint64_t PhoneIncomingCall.Builder.build()(uint64_t a1)
{
  type metadata accessor for PhoneIncomingCall();
  v1 = swift_allocObject();

  PhoneIncomingCall.init(builder:)(v2);
  return v1;
}

uint64_t PhoneIncomingCall.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_6_63();
  v2 = swift_allocObject();
  PhoneIncomingCall.init(builder:)(a1);
  return v2;
}

uint64_t key path setter for PhoneIncomingCall.mockGlobals : PhoneIncomingCall(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 136);
  v4 = *a1;
  return v3(v2);
}

uint64_t PhoneIncomingCall.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = (*(*a1 + 104))(a1) & 1;
  OUTLINED_FUNCTION_2_0();
  *(v1 + 25) = (*(v2 + 128))() & 1;
  OUTLINED_FUNCTION_2_0();
  v4 = (*(v3 + 152))();

  *(v1 + 32) = v4;
  return v1;
}

uint64_t PhoneIncomingCall.__allocating_init(incomingCall:unknownCaller:latestCallRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for PhoneIncomingCall.Builder();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  (*(*v8 + 184))(a1);

  OUTLINED_FUNCTION_2_0();
  v10 = (*(v9 + 192))(a2);

  v11 = (*(*v10 + 200))(a3);

  v12 = (*(v4 + 152))(v11);

  return v12;
}

uint64_t PhoneIncomingCall.getProperty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = OUTLINED_FUNCTION_8_58();
  v9 = a1 == result && a2 == v8;
  if (v9 || (result = OUTLINED_FUNCTION_8_4(result, v8), (result & 1) != 0))
  {
    v10 = *(v3 + 24);
LABEL_7:
    *(a3 + 24) = &type metadata for Bool;
    *a3 = v10;
    return result;
  }

  result = 0x436E776F6E6B6E75;
  v11 = a1 == 0x436E776F6E6B6E75 && a2 == 0xED000072656C6C61;
  if (v11 || (result = OUTLINED_FUNCTION_8_4(0x436E776F6E6B6E75, 0xED000072656C6C61), (result & 1) != 0))
  {
    v10 = *(v3 + 25);
    goto LABEL_7;
  }

  v12 = a1 == 0xD000000000000010 && 0x8000000000453A50 == a2;
  if (v12 || (result = OUTLINED_FUNCTION_8_4(0xD000000000000010, 0x8000000000453A50), (result)) && (v13 = *(v3 + 32)) != 0)
  {
    *(a3 + 24) = type metadata accessor for PhoneCallRecord(0);
    *a3 = v13;
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneIncomingCall::CodingKeys_optional __swiftcall PhoneIncomingCall.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneIncomingCall.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t PhoneIncomingCall.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_8_58();
  }

  if (a1 == 1)
  {
    return 0x436E776F6E6B6E75;
  }

  return 0xD000000000000010;
}

PhoneCallFlowDelegatePlugin::PhoneIncomingCall::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneIncomingCall.CodingKeys@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneIncomingCall::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneIncomingCall.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneIncomingCall.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneIncomingCall.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneIncomingCall::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance PhoneIncomingCall.CodingKeys@<W0>(uint64_t a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneIncomingCall::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneIncomingCall.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneIncomingCall.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneIncomingCall.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PhoneIncomingCall.__deallocating_deinit()
{
  PhoneIncomingCall.deinit();
  OUTLINED_FUNCTION_6_63();

  return swift_deallocClassInstance();
}

uint64_t PhoneIncomingCall.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0d8IncomingE0C10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0d8IncomingE0C10CodingKeysOGMR);
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 32);
    v14[15] = 2;
    type metadata accessor for PhoneCallRecord(0);
    OUTLINED_FUNCTION_2_87();
    lazy protocol witness table accessor for type PhoneCallRecord and conformance PhoneCallRecord(v11, 255, v12, &protocol conformance descriptor for PhoneCallRecord);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t lazy protocol witness table accessor for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys);
  }

  return result;
}

uint64_t PhoneIncomingCall.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_6_63();
  v2 = swift_allocObject();
  PhoneIncomingCall.init(from:)(a1);
  return v2;
}

uint64_t PhoneIncomingCall.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0d8IncomingE0C10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0d8IncomingE0C10CodingKeysOGMR);
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v13 - v8;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for PhoneIncomingCall();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = 0;
    *(v1 + 24) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v15 = 1;
    *(v1 + 25) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    type metadata accessor for PhoneCallRecord(0);
    v14 = 2;
    OUTLINED_FUNCTION_2_87();
    lazy protocol witness table accessor for type PhoneCallRecord and conformance PhoneCallRecord(v10, 255, v11, &protocol conformance descriptor for PhoneCallRecord);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v9, v4);
    *(v1 + 32) = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t lazy protocol witness table accessor for type PhoneCallRecord and conformance PhoneCallRecord(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void (*protocol witness for CATType.mockGlobals.modify in conformance PhoneIncomingCall(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 144))();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PhoneIncomingCall@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 184))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneIncomingCall.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t AddCallParticipantRCHFlow.__allocating_init(phoneCallNLIntent:app:sharedGlobals:)(void *a1, uint64_t a2, void *a3)
{
  outlined init with copy of SignalProviding(a1, v9);
  outlined init with copy of SignalProviding(a3, v8);
  v6 = specialized PhoneIntentRCHFlow.__allocating_init(phoneCallNLIntent:app:rchFlowProvider:sharedGlobals:)(v9, a2, implicit closure #1 in AddCallParticipantRCHFlow.init(state:app:sharedGlobals:), 0, v8);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t key path setter for PhoneIntentRCHFlow.state : <A, B>PhoneIntentRCHFlow<A, B>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for PhoneIntentRCHFlow.State(0, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = *a2;
  v12 = *(*v11 + 120);
  swift_beginAccess();
  (*(v7 + 40))(v11 + v12, v10, v6);
  return swift_endAccess();
}

uint64_t PhoneIntentRCHFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  type metadata accessor for PhoneIntentRCHFlow.State(0, *(v3 + 80), *(v3 + 88), v5);
  OUTLINED_FUNCTION_0_92();
  return (*(v6 + 16))(a1, v1 + v4);
}

uint64_t PhoneIntentRCHFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_47_0();
  v3 = v2;
  OUTLINED_FUNCTION_47_0();
  v4 = OUTLINED_FUNCTION_4_62();
  type metadata accessor for PhoneIntentRCHFlow.State(v4, v5, v6, v7);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  v9 = __chkstk_darwin(v8);
  v11 = (&v21 - v10);
  (*(v3 + 128))(v9);
  OUTLINED_FUNCTION_33_4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *v11;
    *(a1 + 8) = 0;
    v15 = enum case for RCHFlowResult.error<A, B>(_:);
    OUTLINED_FUNCTION_4_62();
    type metadata accessor for RCHFlowResult();
    OUTLINED_FUNCTION_0_92();
    return (*(v16 + 104))(a1, v15);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    OUTLINED_FUNCTION_4_62();
    type metadata accessor for RCHFlowResult();
    OUTLINED_FUNCTION_0_92();
    return (*(v13 + 32))(a1, v11);
  }

  else
  {
    v17 = enum case for RCHFlowResult.cancelled<A, B>(_:);
    OUTLINED_FUNCTION_4_62();
    type metadata accessor for RCHFlowResult();
    OUTLINED_FUNCTION_0_92();
    (*(v18 + 104))(a1, v17);
    v19 = OUTLINED_FUNCTION_33_4();
    return v20(v19);
  }
}

uint64_t specialized PhoneIntentRCHFlow.__allocating_init(phoneCallNLIntent:app:rchFlowProvider:sharedGlobals:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMd, &_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMR);
  __chkstk_darwin(v11);
  v13 = &v17[-v12 - 8];
  outlined init with copy of SignalProviding(a1, &v17[-v12 - 8]);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(a5, v17);
  v14 = (*(v5 + 160))(v13, a2, a3, a4, v17);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

uint64_t PhoneIntentRCHFlow.__allocating_init(phoneCallNLIntent:app:rchFlowProvider:sharedGlobals:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for PhoneIntentRCHFlow.State(0, *(v5 + 80), *(v5 + 88), a4);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v11);
  v13 = &v17[-v12 - 8];
  outlined init with copy of SignalProviding(a1, &v17[-v12 - 8]);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(a5, v17);
  v14 = (*(v5 + 160))(v13, a2, a3, a4, v17);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

uint64_t PhoneIntentRCHFlow.__allocating_init(state:app:rchFlowProvider:sharedGlobals:)()
{
  OUTLINED_FUNCTION_29_1();
  swift_allocObject();
  OUTLINED_FUNCTION_6_64();
  PhoneIntentRCHFlow.init(state:app:rchFlowProvider:sharedGlobals:)();
  return v0;
}

void *specialized PhoneIntentRCHFlow.init(state:app:rchFlowProvider:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  outlined init with take of PhoneIntentRCHFlow<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>.State(a1, v5 + *(*v5 + 120));
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  outlined init with take of SPHConversation(a5, (v5 + 5));
  return v5;
}

char *PhoneIntentRCHFlow.init(state:app:rchFlowProvider:sharedGlobals:)()
{
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_47_0();
  v7 = *(v6 + 120);
  OUTLINED_FUNCTION_47_0();
  type metadata accessor for PhoneIntentRCHFlow.State(0, v9, *(v8 + 88), v10);
  OUTLINED_FUNCTION_0_92();
  (*(v11 + 32))(&v1[v7], v5);
  *(v1 + 2) = v4;
  *(v1 + 3) = v3;
  *(v1 + 4) = v2;
  outlined init with take of SPHConversation(v0, (v1 + 40));
  return v1;
}

uint64_t PhoneIntentRCHFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_47_0();
  type metadata accessor for PhoneIntentRCHFlow(0, v3, *(v2 + 88), v4);
  swift_getWitnessTable();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t PhoneIntentRCHFlow.execute()(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = *v1;
  type metadata accessor for CATOption();
  v2[33] = swift_task_alloc();
  v4 = *(v3 + 80);
  v2[34] = v4;
  v5 = *(v3 + 88);
  v2[35] = v5;
  v7 = type metadata accessor for PhoneIntentRCHFlow.State(0, v4, v5, v6);
  v2[36] = v7;
  v2[37] = *(v7 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return _swift_task_switch(PhoneIntentRCHFlow.execute(), 0, 0);
}

{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v4 + 352) = v1;

  if (v1)
  {
    v7 = PhoneIntentRCHFlow.execute();
  }

  else
  {

    *(v4 + 360) = a1;
    v7 = PhoneIntentRCHFlow.execute();
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t PhoneIntentRCHFlow.execute()()
{
  OUTLINED_FUNCTION_2_0();
  (*(v1 + 128))();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v52 = **(v0 + 312);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v53 = type metadata accessor for Logger();
      __swift_project_value_buffer(v53, static Logger.siriPhone);

      v54 = v52;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = *(v0 + 256);
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v86 = v60;
        *v58 = 136315394;
        *(v0 + 232) = v57;
        OUTLINED_FUNCTION_15_42(v60, v61, v62, v63);
        v64 = String.init<A>(describing:)();
        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v86);

        *(v58 + 4) = v66;
        *(v58 + 12) = 2112;
        *(v58 + 14) = v54;
        *v59 = v54;
        v67 = v54;
        _os_log_impl(&dword_0, v55, v56, "#%s .convertedToSKIntent: %@", v58, 0x16u);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v59, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_26_0(v59);
        __swift_destroy_boxed_opaque_existential_1(v60);
        OUTLINED_FUNCTION_26_0(v60);
        OUTLINED_FUNCTION_26_0(v58);
      }

      (*(*(v0 + 256) + 24))(v54, *(*(v0 + 256) + 16), *(v0 + 256) + 40);
      implicit closure #5 in PhoneIntentRCHFlow.execute()();
      static ExecuteResponse.complete<A>(next:childCompletion:)();

      break;
    case 2u:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.siriPhone);

      swift_errorRetain();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v33 = *(v0 + 272);
        v32 = *(v0 + 280);
        v34 = *(v0 + 256);
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v86 = v36;
        *v35 = 136315394;
        *(v0 + 216) = v34;
        type metadata accessor for PhoneIntentRCHFlow(0, v33, v32, v37);

        v38 = String.init<A>(describing:)();
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v86);

        *(v35 + 4) = v40;
        *(v35 + 12) = 2080;
        swift_getErrorValue();
        v41 = Error.localizedDescription.getter();
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v86);

        *(v35 + 14) = v43;
        _os_log_impl(&dword_0, v30, v31, "#%s .completeWithError: %s", v35, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0(v36);
        OUTLINED_FUNCTION_26_0(v35);
      }

      v44 = *(v0 + 256);
      type metadata accessor for StartCallCATsSimple(0);
      static CATOption.defaultMode.getter();
      v45 = CATWrapperSimple.__allocating_init(options:globals:)();
      v46 = static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)((v44 + 40), v45);

      v48 = (*(*v46 + 112))(v47);

      *(v0 + 208) = v48;
      type metadata accessor for SimpleOutputFlowAsync();
      static ExecuteResponse.complete<A>(next:)();

      break;
    case 3u:
      v49 = *(v0 + 312);
      v50 = *(v0 + 288);
      v51 = *(v0 + 296);
      static ExecuteResponse.complete()();
      (*(v51 + 8))(v49, v50);
      break;
    default:
      v2 = *(v0 + 272);
      v3 = *(v0 + 256);
      outlined init with take of SPHConversation(*(v0 + 312), v0 + 16);
      v4 = v3[2];
      *(v0 + 320) = v4;
      v5 = v3[9];
      __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
      v6 = *(v5 + 80);

      v7 = OUTLINED_FUNCTION_33_4();
      v6(v7);
      SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v0 + 16, v4, 0, 0, v2, v8, v9, v10, v73, v74, v76, v77, v78, v79, v80, v81, v82, v83, v84, v0);
      v12 = v11;
      outlined destroy of SKTransformer(v0 + 56);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.siriPhone);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = *(v0 + 256);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v86 = v18;
        *v17 = 136315138;
        *(v0 + 240) = v16;
        OUTLINED_FUNCTION_15_42(v18, v19, v20, v21);
        v22 = String.init<A>(describing:)();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v86);

        *(v17 + 4) = v24;
        _os_log_impl(&dword_0, v14, v15, "#%s Resolving SKIntent:", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        OUTLINED_FUNCTION_26_0(v18);
        OUTLINED_FUNCTION_26_0(v17);
      }

      __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
      v25 = OUTLINED_FUNCTION_33_4();
      v26(v25);
      v27 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
      if (v12)
      {
        v28 = v12;
      }

      else
      {
        v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      }

      *(v0 + 328) = v12;
      *(v0 + 336) = v28;
      v70 = *(v27 + 8);
      v71 = v12;
      v75 = v70 + *v70;
      v72 = swift_task_alloc();
      *(v0 + 344) = v72;
      *v72 = v0;
      v72[1] = PhoneIntentRCHFlow.execute();

      __asm { BRAA            X8, X16 }

      return result;
  }

  OUTLINED_FUNCTION_11();

  return v68();
}

{
  v1 = v0[45];
  v2 = v0[38];
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v3 = OUTLINED_FUNCTION_14_47();
  v4(v3);
  swift_endAccess();
  v5 = v0[41];
  static ExecuteResponse.replan(requireInput:)();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  OUTLINED_FUNCTION_11();

  return v6();
}

{
  v1 = *(v0 + 352);
  v2 = *(v0 + 304);

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v3 = OUTLINED_FUNCTION_14_47();
  v4(v3);
  swift_endAccess();
  v5 = *(v0 + 328);
  static ExecuteResponse.replan(requireInput:)();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_11();

  return v6();
}

uint64_t PhoneIntentRCHFlow.childRCHFlowComplete(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_47_0();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_47_0();
  v7 = type metadata accessor for PhoneIntentRCHFlow.State(0, v4, *(v5 + 88), v6);
  OUTLINED_FUNCTION_7();
  v9 = v8;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  type metadata accessor for RCHFlowResult();
  OUTLINED_FUNCTION_0_92();
  (*(v13 + 16))(v12, a1);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_2_0();
  v15 = *(v14 + 120);
  swift_beginAccess();
  (*(v9 + 40))(v1 + v15, v12, v7);
  return swift_endAccess();
}

void *specialized PhoneIntentRCHFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + *(*v0 + 120), &_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMd, &_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMR);
  return v0;
}

char *PhoneIntentRCHFlow.deinit()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  OUTLINED_FUNCTION_2_0();
  v3 = *(v2 + 120);
  type metadata accessor for PhoneIntentRCHFlow.State(0, *(v1 + 80), *(v1 + 88), v4);
  OUTLINED_FUNCTION_23_1();
  (*(v5 + 8))(&v0[v3]);
  return v0;
}

uint64_t PhoneIntentRCHFlow.__deallocating_deinit()
{
  PhoneIntentRCHFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance PhoneIntentRCHFlow<A, B>(uint64_t a1)
{
  v6 = (*(**v1 + 184) + **(**v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance PhoneIntentRCHFlow<A, B>;

  return v6(a1);
}

uint64_t protocol witness for Flow.execute() in conformance PhoneIntentRCHFlow<A, B>()
{
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t AddCallParticipantRCHFlow.__allocating_init(state:app:sharedGlobals:)(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMd, &_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMR);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v7);
  v9 = &v13[-v8 - 8];
  outlined init with copy of PhoneIntentRCHFlow<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>.State(a1, &v13[-v8 - 8]);
  outlined init with copy of SignalProviding(a3, v13);
  v10 = (*(v3 + 160))(v9, a2, implicit closure #1 in AddCallParticipantRCHFlow.init(state:app:sharedGlobals:), 0, v13);
  __swift_destroy_boxed_opaque_existential_1(a3);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, &_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMd, &_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMR);
  return v10;
}

void *AddCallParticipantRCHFlow.__allocating_init(state:app:rchFlowProvider:sharedGlobals:)()
{
  OUTLINED_FUNCTION_29_1();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_6_64();
  return specialized PhoneIntentRCHFlow.init(state:app:rchFlowProvider:sharedGlobals:)(v0, v1, v2, v3, v4);
}

uint64_t AddCallParticipantRCHFlow.__deallocating_deinit()
{
  specialized PhoneIntentRCHFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined init with copy of PhoneIntentRCHFlow<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>.State(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMd, &_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for PhoneIntentRCHFlow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PhoneIntentRCHFlow.State(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for PhoneIntentRCHFlow.State(uint64_t a1)
{
  type metadata accessor for (phoneCallNLIntent: PhoneCallNLIntent)();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      v5 = type metadata accessor for PhoneCallNLIntent(319, &lazy cache variable for type metadata for Error, &protocol descriptor for Error);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        v2 = type metadata accessor for RCHFlowResult();
        if (v7 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void type metadata accessor for (phoneCallNLIntent: PhoneCallNLIntent)()
{
  if (!lazy cache variable for type metadata for (phoneCallNLIntent: PhoneCallNLIntent))
  {
    v0 = type metadata accessor for PhoneCallNLIntent(0, &lazy cache variable for type metadata for PhoneCallNLIntent, &protocol descriptor for PhoneCallNLIntent);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (phoneCallNLIntent: PhoneCallNLIntent));
    }
  }
}

uint64_t type metadata accessor for PhoneCallNLIntent(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for AddCallParticipantRCHFlow(uint64_t a1)
{
  result = type metadata singleton initialization cache for AddCallParticipantRCHFlow;
  if (!type metadata singleton initialization cache for AddCallParticipantRCHFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of PhoneIntentRCHFlow<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>.State(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMd, &_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PhoneIntentExecutionBehavior.asSiriKitIntentExecutionBehavior.getter(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for SiriKitIntentHandler();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SiriKitIntentExecutionBehavior();
  if (!a1)
  {
    return static SiriKitIntentExecutionBehavior.standard()();
  }

  type metadata accessor for INIntent();

  v10 = a2;
  v11 = a3;
  SiriKitIntentHandler.init<A>(app:intentHandler:intent:)();
  v12 = static SiriKitIntentExecutionBehavior.embeddedIntentHandler(intentHandler:)();
  (*(v7 + 8))(v9, v6);
  return v12;
}

BOOL static PhoneIntentExecutionBehavior.== infix(_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a1)
  {
    if (a4)
    {
      type metadata accessor for App();
      if (static App.== infix(_:_:)())
      {
        ObjectType = swift_getObjectType();
        if (ObjectType == swift_getObjectType())
        {
          v9 = [a3 typeName];
          v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v12 = v11;

          v13 = [a6 typeName];
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          if (v10 != v14 || v12 != v16)
          {
            v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

            return v18 & 1;
          }

          return 1;
        }
      }
    }

    return 0;
  }

  return !a4;
}

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin0A23IntentExecutionBehaviorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for PhoneIntentExecutionBehavior(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PhoneIntentExecutionBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for PhoneIntentExecutionBehavior(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t PhoneIntentNoOpHandleIntentFlowStrategy.makeIntentHandledResponse(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();
  v6[40] = 0;
  a4(v6);
  return outlined destroy of Result<Output, Error>(v6);
}

uint64_t protocol witness for HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:) in conformance PhoneIntentNoOpHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = type metadata accessor for PhoneIntentNoOpHandleIntentFlowStrategy(0, *(a6 + 80), *(a6 + 88), a4);

  return a8(a1, a2, a3, a4, a5, v14, a7);
}

uint64_t protocol witness for IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:) in conformance PhoneIntentNoOpHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for PhoneIntentNoOpHandleIntentFlowStrategy(0, *(a2 + 80), *(a2 + 88), a4);

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v6, a3);
}

uint64_t protocol witness for IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:) in conformance PhoneIntentNoOpHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PhoneIntentNoOpHandleIntentFlowStrategy(0, *(a3 + 80), *(a3 + 88), a4);

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v7, a4);
}

uint64_t protocol witness for IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:) in conformance PhoneIntentNoOpHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PhoneIntentNoOpHandleIntentFlowStrategy(0, *(a3 + 80), *(a3 + 88), a4);

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v7, a4);
}

uint64_t protocol witness for IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:) in conformance PhoneIntentNoOpHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PhoneIntentNoOpHandleIntentFlowStrategy(0, *(a5 + 80), *(a5 + 88), a4);

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t PhoneIntentRCHFlowStrategy.__allocating_init(sharedGlobals:app:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  outlined init with take of SPHConversation(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t PhoneIntentRCHFlowStrategy.init(sharedGlobals:app:)(__int128 *a1, uint64_t a2)
{
  outlined init with take of SPHConversation(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t PhoneIntentRCHFlowStrategy.actionForInput(input:)()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v7 = (*(v6 + 72))(v5, v6);
  Input.parse.getter();
  (*(*v7 + 192))(&v21, v4);

  (*(v2 + 8))(v4, v1);
  if (!v22)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v21, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    return static ActionForInput.ignore()();
  }

  outlined init with take of SPHConversation(&v21, v23);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v8 = OUTLINED_FUNCTION_1_16();
  v10 = v9(v8);
  (*(*v10 + 224))(&v21);

  outlined init with copy of PhoneCallNLIntent?(&v21, v15, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
  if (!v15[4])
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    goto LABEL_8;
  }

  outlined init with copy of PhoneCallNLIntent?(&v16, &v17, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  outlined destroy of TransformationResult(v15);
  if (!*(&v18 + 1))
  {
LABEL_8:
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v17, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
LABEL_10:
    static ActionForInput.handle()();
    goto LABEL_11;
  }

  outlined init with take of SPHConversation(&v17, v20);
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  outlined init with copy of SignalProviding(v20, v15);
  PhoneCallNLIntent.shouldResetRequest(previousNLIntent:)();
  v12 = v11;
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  if ((v12 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    goto LABEL_10;
  }

  static ActionForInput.ignore()();
  __swift_destroy_boxed_opaque_existential_1(v20);
LABEL_11:
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v21, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t PhoneIntentRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v3[15] = *v2;
  return _swift_task_switch(PhoneIntentRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:), 0, 0);
}

uint64_t PhoneIntentRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)()
{
  v52 = v0;
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
    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v51[0] = v7;
    *v6 = 136315394;
    *(v0 + 16) = v4;
    type metadata accessor for PhoneIntentRCHFlowStrategy(0, *(v5 + 80), *(v5 + 88), v8);

    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v51);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x800000000045BB60, v51);
    _os_log_impl(&dword_0, v2, v3, "#%s %s", v6, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v7);
    OUTLINED_FUNCTION_26_0(v6);
  }

  v12 = *(v0 + 112);
  v13 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v12 + 16), *(v12 + 40));
  v14 = OUTLINED_FUNCTION_1_16();
  v16 = v15(v14);
  (*(*v16 + 192))(v13);

  if (*(v0 + 80))
  {
    v18 = *(v0 + 112);
    v17 = *(v0 + 120);
    v19 = *(v0 + 104);
    outlined init with take of SPHConversation((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v12 + 16), *(v12 + 40));
    v20 = OUTLINED_FUNCTION_1_16();
    v21(v20);
    v22 = *(v18 + 56);
    v23 = *(v17 + 80);

    v24 = v19;
    SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v0 + 16, v22, v19, 0, v23, v25, v26, v27, v49, v51[0], v51[1], v51[2], v51[3], v51[4], v51[5], v51[6], v51[7], v51[8], v51[9], v52);
    v29 = v28;

    outlined destroy of SKTransformer(v0 + 56);
    if (v29)
    {

      v30 = v29;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = *(v0 + 112);
        v50 = *(v0 + 120);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v51[0] = v36;
        *v34 = 136315394;
        *(v0 + 56) = v33;
        type metadata accessor for PhoneIntentRCHFlowStrategy(0, v23, *(v50 + 88), v37);

        v38 = String.init<A>(describing:)();
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v51);

        *(v34 + 4) = v40;
        *(v34 + 12) = 2112;
        *(v34 + 14) = v30;
        *v35 = v29;
        v41 = v30;
        _os_log_impl(&dword_0, v31, v32, "#%s intent: %@", v34, 0x16u);
        _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_26_0(v35);
        __swift_destroy_boxed_opaque_existential_1(v36);
        OUTLINED_FUNCTION_26_0(v36);
        OUTLINED_FUNCTION_26_0(v34);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v42 = *(v0 + 8);

      return v42(v30);
    }

    lazy protocol witness table accessor for type ParseError and conformance ParseError();
    v46 = swift_allocError();
    OUTLINED_FUNCTION_15_5(xmmword_42D060, v46, v47);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 56, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    lazy protocol witness table accessor for type ParseError and conformance ParseError();
    v44 = swift_allocError();
    OUTLINED_FUNCTION_15_5(xmmword_42D060, v44, v45);
  }

  v48 = *(v0 + 8);

  return v48();
}

uint64_t PhoneIntentRCHFlowStrategy.__deallocating_deinit()
{
  PhoneIntentRCHFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance PhoneIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 128) + **(**v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = AnnounceCallBellCATsSimple.announceCallBellEndedAsLabels();

  return v8(a1, a2);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeParameterMetadata(intent:) in conformance PhoneIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for PhoneIntentRCHFlowStrategy(0, *(a2 + 80), *(a2 + 88), a4);

  return RCHFlowStrategyAsync.makeParameterMetadata(intent:)(a1, v6, a3);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeErrorResponse(error:) in conformance PhoneIntentRCHFlowStrategy<A1, B1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for Flow.execute() in conformance AnnounceVoicemailReadingFlow;

  return RCHFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}