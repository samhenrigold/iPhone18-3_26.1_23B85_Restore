uint64_t protocol witness for RCHFlowStrategyAsync.makeParameterMetadata(intent:) in conformance ContactsFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 96);
  v8[0] = *(a2 + 80);
  v8[1] = v5;
  v6 = type metadata accessor for ContactsFlowStrategy(0, v8);
  return MEMORY[0x26D5E00E0](a1, v6, a3);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeErrorResponse(error:) in conformance ContactsFlowStrategy<A1, B1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for RCHFlowStrategyAsync.makeErrorResponse(error:) in conformance ContactsFlowStrategy<A1, B1>;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeErrorResponse(error:) in conformance ContactsFlowStrategy<A1, B1>()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance ContactsFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 48) = v11;
  v12 = *(a4 + 96);
  *(v5 + 16) = *(a4 + 80);
  *(v5 + 32) = v12;
  v13 = type metadata accessor for ContactsFlowStrategy(0, v5 + 16);
  *v11 = v5;
  v11[1] = protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance ContactsFlowStrategy<A, B>;

  return MEMORY[0x2821B9D90](a1, a2, a3, v13, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:) in conformance ContactsFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 48) = v11;
  v12 = *(a4 + 96);
  *(v5 + 16) = *(a4 + 80);
  *(v5 + 32) = v12;
  v13 = type metadata accessor for ContactsFlowStrategy(0, v5 + 16);
  *v11 = v5;
  v11[1] = protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance ContactsFlowStrategy<A, B>;

  return MEMORY[0x2821B9D88](a1, a2, a3, v13, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:) in conformance ContactsFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 48) = v11;
  v12 = *(a4 + 96);
  *(v5 + 16) = *(a4 + 80);
  *(v5 + 32) = v12;
  v13 = type metadata accessor for ContactsFlowStrategy(0, v5 + 16);
  *v11 = v5;
  v11[1] = protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance ContactsFlowStrategy<A, B>;

  return MEMORY[0x2821B9D80](a1, a2, a3, v13, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance ContactsFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 48) = v13;
  v14 = *(a5 + 96);
  *(v6 + 16) = *(a5 + 80);
  *(v6 + 32) = v14;
  v15 = type metadata accessor for ContactsFlowStrategy(0, v6 + 16);
  *v13 = v6;
  v13[1] = protocol witness for ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance ContactsFlowStrategy<A, B>;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v15, a6);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance ContactsFlowStrategy<A, B>()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance ContactsFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 48) = v13;
  v14 = *(a5 + 96);
  *(v6 + 16) = *(a5 + 80);
  *(v6 + 32) = v14;
  v15 = type metadata accessor for ContactsFlowStrategy(0, v6 + 16);
  *v13 = v6;
  v13[1] = protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance ContactsFlowStrategy<A, B>;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v15, a6);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance ContactsFlowStrategy<A, B>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance ContactsFlowStrategy<A, B>;

  return ContactsFlowStrategy.makeIntentExecutionBehavior(app:intent:)();
}

{
  OUTLINED_FUNCTION_4();
  v2 = v1;
  OUTLINED_FUNCTION_5();
  v3 = *v0;
  OUTLINED_FUNCTION_0();
  *v4 = v3;

  OUTLINED_FUNCTION_12_14();

  return v5(v2);
}

id specialized BaseIntentHandler.init(contactService:contactResolver:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  return specialized BaseIntentHandler.init(contactService:contactResolver:)(a1, a2, a3, &_s19SiriContactsIntents17BaseIntentHandlerCyAA019GetContactAttributeE0CAA0ghiE8ResponseCAA0ghiA23MatchesResolutionResultCGMd, &_s19SiriContactsIntents17BaseIntentHandlerCyAA019GetContactAttributeE0CAA0ghiE8ResponseCAA0ghiA23MatchesResolutionResultCGMR);
}

{
  return specialized BaseIntentHandler.init(contactService:contactResolver:)(a1, a2, a3, &_s19SiriContactsIntents17BaseIntentHandlerCyAA010GetContactE0CAA0ghE8ResponseCAA0ghA23MatchesResolutionResultCGMd, &_s19SiriContactsIntents17BaseIntentHandlerCyAA010GetContactE0CAA0ghE8ResponseCAA0ghA23MatchesResolutionResultCGMR);
}

{
  return specialized BaseIntentHandler.init(contactService:contactResolver:)(a1, a2, a3, &_s19SiriContactsIntents17BaseIntentHandlerCyAA022ModifyContactAttributeE0CAA0ghiE8ResponseCAA0ghi7RelatedA23MatchesResolutionResultCGMd, &_s19SiriContactsIntents17BaseIntentHandlerCyAA022ModifyContactAttributeE0CAA0ghiE8ResponseCAA0ghi7RelatedA23MatchesResolutionResultCGMR);
}

id specialized BaseIntentHandler.init(contactService:contactResolver:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t *a4, uint64_t *a5)
{
  v20[3] = type metadata accessor for ContactService();
  v20[4] = &protocol witness table for ContactService;
  v20[0] = a1;
  v19[3] = type metadata accessor for ContactResolver();
  v19[4] = &protocol witness table for ContactResolver;
  v19[0] = a2;
  *&a3[direct field offset for BaseIntentHandler.$__lazy_storage_$_meCard] = 1;
  outlined init with copy of DeviceState(v20, &a3[direct field offset for BaseIntentHandler.contactService]);
  outlined init with copy of DeviceState(v19, &a3[direct field offset for BaseIntentHandler.contactResolver]);
  a3[direct field offset for BaseIntentHandler.passedPrereqs] = 0;
  v18.receiver = a3;
  v18.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = objc_msgSendSuper2(&v18, sel_init);
  v11 = one-time initialization token for siriContacts;
  v12 = v10;
  if (v11 != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.siriContacts);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_26686A000, v14, v15, "Constructed ContactsIntentHandler.", v16, 2u);
    OUTLINED_FUNCTION_6();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  return v12;
}

uint64_t dispatch thunk of ContactsFlowStrategy.makeIntentFromParse(parse:currentIntent:)()
{
  OUTLINED_FUNCTION_18_10();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_16_12(v1);

  return v3(v2);
}

{
  OUTLINED_FUNCTION_4();
  v2 = v1;
  OUTLINED_FUNCTION_5();
  v3 = *v0;
  OUTLINED_FUNCTION_0();
  *v4 = v3;

  OUTLINED_FUNCTION_12_14();

  return v5(v2);
}

uint64_t dispatch thunk of ContactsFlowStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  OUTLINED_FUNCTION_18_10();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_16_12(v1);

  return v3(v2);
}

uint64_t OUTLINED_FUNCTION_1_34(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_22()
{

  JUMPOUT(0x26D5E3300);
}

void OUTLINED_FUNCTION_4_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_8_17(float a1)
{
  *v1 = a1;

  return _typeName(_:qualified:)();
}

uint64_t OUTLINED_FUNCTION_9_20()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_21_13(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

unint64_t ContactsDirectInvocations.Identifiers.rawValue.getter(char a1)
{
  result = 0xD000000000000026;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000025;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD00000000000003CLL;
      break;
    case 5:
      result = 0xD000000000000034;
      break;
    case 6:
      result = 0xD00000000000001FLL;
      break;
    case 7:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

id static ContactsDirectInvocations.confirm()()
{
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, 0x277D5C220);
  v0 = SKIDirectInvocationPayload.__allocating_init(identifier:)(0xD00000000000001FLL, 0x800000026696E100);
  v1 = Dictionary.init(dictionaryLiteral:)();
  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v1, v0);
  v2 = objc_opt_self();
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v3 = OUTLINED_FUNCTION_7_14();
  v4 = [v2 runSiriKitExecutorCommandWithContext:v3 payload:v0];

  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  v5 = [v2 wrapCommandInStartLocalRequest_];

  return v5;
}

id static ContactsDirectInvocations.deny()()
{
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, 0x277D5C220);
  v0 = SKIDirectInvocationPayload.__allocating_init(identifier:)(0xD00000000000001CLL, 0x800000026696E120);
  v1 = Dictionary.init(dictionaryLiteral:)();
  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v1, v0);
  v2 = objc_opt_self();
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v3 = OUTLINED_FUNCTION_7_14();
  v4 = [v2 runSiriKitExecutorCommandWithContext:v3 payload:v0];

  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  v5 = [v2 wrapCommandInStartLocalRequest_];

  return v5;
}

unint64_t ContactsDirectInvocations.Keys.rawValue.getter(char a1)
{
  result = 0x656D616E6B63696ELL;
  switch(a1)
  {
    case 1:
      result = 0x49746361746E6F63;
      break;
    case 2:
      result = 0x7865646E69;
      break;
    case 3:
      result = 0x704F796669646F6DLL;
      break;
    case 4:
      result = 0x6D7269666E6F63;
      break;
    case 5:
      result = 0x7463656A6572;
      break;
    case 6:
      result = 0x6C65636E6163;
      break;
    case 7:
      result = 0x6C646E7542707061;
      break;
    case 8:
      result = 0x4E746361746E6F63;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x6449707061;
      break;
    case 11:
      result = 0x7954746E65746E69;
      break;
    case 12:
      result = 0x6144746E65746E69;
      break;
    default:
      return result;
  }

  return result;
}

id static ContactsDirectInvocations.startCall(fullName:phoneHandle:contactIdentifier:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v51 - v11;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, 0x277D5C220);
  v52 = SKIDirectInvocationPayload.__allocating_init(identifier:)(0xD000000000000034, 0x800000026696E0C0);
  *(&v56 + 1) = MEMORY[0x277D837D0];
  *&v55 = 0xD000000000000015;
  *(&v55 + 1) = 0x8000000266970810;
  outlined init with take of Any(&v55, v54);
  v13 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v53 = v13;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v54, 0x6449707061, 0xE500000000000000);
  v14 = v53;
  v15 = ContactAttribute.getINPersonHandleLabel.getter();
  v16 = outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(a3);
  v18 = v17;
  v19 = objc_allocWithZone(MEMORY[0x277CD3E98]);
  v51 = v15;
  v20 = @nonobjc INPersonHandle.init(value:type:label:)(v16, v18, 2, v15);

  PersonNameComponents.init(_:)();
  v21 = type metadata accessor for PersonNameComponents();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v21);
  v22 = objc_allocWithZone(MEMORY[0x277CD3E90]);

  v23 = @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:)(v20, v12, a1, a2, 0, a4, a5, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_266966A40;
  *(v24 + 32) = v23;
  v25 = objc_allocWithZone(MEMORY[0x277CD41A8]);
  v26 = v23;
  v27 = @nonobjc INStartCallIntent.init(callRecordFilter:callRecordToCallBack:audioRoute:destinationType:contacts:callCapability:)(0, 0, 0, 1, v24, 0);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for INStartCallIntent, 0x277CD41A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = outlined bridged method (pb) of @objc static INIntent.typeName()(ObjCClassFromMetadata);
  if (v30)
  {
    OUTLINED_FUNCTION_10_24(v29, v30, MEMORY[0x277D837D0]);
    v31 = OUTLINED_FUNCTION_3_23();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v32, 0xEE00656D614E6570);
    v14 = v53;
  }

  else
  {
    v33 = specialized __RawDictionaryStorage.find<A>(_:)(0x7954746E65746E69, 0xEE00656D614E6570);
    if (v34)
    {
      v35 = v33;
      swift_isUniquelyReferenced_nonNull_native();
      *&v54[0] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
      OUTLINED_FUNCTION_6_25();
      OUTLINED_FUNCTION_5_29();
      outlined init with take of Any((*(v14 + 56) + 32 * v35), &v55);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v55 = 0u;
      v56 = 0u;
    }

    outlined destroy of Any?(&v55);
  }

  v36 = outlined bridged method (ob) of @objc PBCodable.data.getter([v27 backingStore]);
  if (v37 >> 60 == 15)
  {
    v38 = specialized __RawDictionaryStorage.find<A>(_:)(0x6144746E65746E69, 0xEA00000000006174);
    if (v39)
    {
      v40 = v38;
      swift_isUniquelyReferenced_nonNull_native();
      *&v54[0] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
      OUTLINED_FUNCTION_6_25();
      OUTLINED_FUNCTION_5_29();
      outlined init with take of Any((*(v14 + 56) + 32 * v40), &v55);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v55 = 0u;
      v56 = 0u;
    }

    outlined destroy of Any?(&v55);
  }

  else
  {
    OUTLINED_FUNCTION_10_24(v36, v37, MEMORY[0x277CC9318]);
    v41 = OUTLINED_FUNCTION_3_23();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v41, v42, 0xEA00000000006174);
    v14 = v53;
  }

  v43 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v14);

  v44 = v52;
  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v43, v52);
  v45 = objc_opt_self();
  v46 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
  v47 = [v45 runSiriKitExecutorCommandWithContext:v46 payload:v44];

  v48 = v47;
  v49 = [v45 wrapCommandInStartLocalRequest_];

  return v49;
}

id static ContactsDirectInvocations.sendMessage(contactName:contactPhoneNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, 0x277D5C220);
  v8 = SKIDirectInvocationPayload.__allocating_init(identifier:)(0xD00000000000003CLL, 0x800000026696E080);
  v9 = Dictionary.init(dictionaryLiteral:)();
  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v9, v8);
  v10 = outlined bridged method (pb) of @objc SKIDirectInvocationPayload.userData.getter(v8);
  v17 = MEMORY[0x277D837D0];
  if (v10)
  {
    v7 = v10;
    OUTLINED_FUNCTION_2_37(v10, v11, MEMORY[0x277D837E0], v12, v13, v14, v15, v16, v91, v96);
    v101 = v17;
    *&v99 = 0xD000000000000013;
    *(&v99 + 1) = 0x8000000266970830;
    outlined init with take of Any(&v99, &v96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = OUTLINED_FUNCTION_0_41(isUniquelyReferenced_nonNull_native, v19, v20);
    OUTLINED_FUNCTION_9_21(v21, v22, v23, v24, v25, v26, v27, v28, v92, v96, *(&v96 + 1), v97, v98, v99, *(&v99 + 1), v100, v101);
    v29.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v8 setUserData_];

    if (a2)
    {
LABEL_6:

      if (outlined bridged method (pb) of @objc SKIDirectInvocationPayload.userData.getter(v8))
      {
        OUTLINED_FUNCTION_1_35();
        OUTLINED_FUNCTION_2_37(v32, v33, MEMORY[0x277D837E0], v34, v35, v36, v37, v38, v91, v96);
        v101 = v17;
        *&v99 = a1;
        *(&v99 + 1) = a2;
        outlined init with take of Any(&v99, &v96);
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v42 = OUTLINED_FUNCTION_0_41(v39, v40, v41);
        OUTLINED_FUNCTION_9_21(v42, v43, v44, v45, v46, v47, v48, v49, v93, v96, *(&v96 + 1), v97, v98, v99, *(&v99 + 1), v100, v101);
        if (v7)
        {
          v50.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v50.super.isa = 0;
        }

        v53 = OUTLINED_FUNCTION_4_26();
        [v53 v54];
      }

      else
      {

        v51 = OUTLINED_FUNCTION_4_26();
        [v51 v52];
      }
    }
  }

  else
  {
    v30 = OUTLINED_FUNCTION_4_26();
    [v30 v31];
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (a4)
  {

    v55 = outlined bridged method (pb) of @objc SKIDirectInvocationPayload.userData.getter(v8);
    if (v55)
    {
      *&v99 = 0xD000000000000012;
      *(&v99 + 1) = 0x8000000266970850;
      v62 = OUTLINED_FUNCTION_2_37(v55, v56, MEMORY[0x277D837E0], v57, v58, v59, v60, v61, v91, v96);
      OUTLINED_FUNCTION_8_18(v62, v63, v64, v65, v66, v67, v68, v69, v94, v96, v97, v98, v99, v100, v101);
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v73 = OUTLINED_FUNCTION_0_41(v70, v71, v72);
      OUTLINED_FUNCTION_9_21(v73, v74, v75, v76, v77, v78, v79, v80, v95, v96, *(&v96 + 1), v97, v98, v99, *(&v99 + 1), v100, v101);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v84 = OUTLINED_FUNCTION_4_26();
      [v84 v85];
    }

    else
    {

      v82 = OUTLINED_FUNCTION_4_26();
      [v82 v83];
    }
  }

  v86 = objc_opt_self();
  v87 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
  v88 = [v86 runSiriKitExecutorCommandWithContext:v87 payload:v8];

  v89 = [v86 wrapCommandInStartLocalRequest_];
  return v89;
}

id static ContactsDirectInvocations.getContact(contactName:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, 0x277D5C220);
  v3 = SKIDirectInvocationPayload.__allocating_init(identifier:)(0xD000000000000022, 0x800000026696E050);
  v4 = Dictionary.init(dictionaryLiteral:)();
  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v4, v3);
  if (outlined bridged method (pb) of @objc SKIDirectInvocationPayload.userData.getter(v3))
  {
    OUTLINED_FUNCTION_1_35();
    v12 = OUTLINED_FUNCTION_2_37(v5, v6, MEMORY[0x277D837E0], v7, v8, v9, v10, v11, v37, v40);
    OUTLINED_FUNCTION_8_18(v12, v13, v14, v15, v16, v17, v18, v19, v38, v40, v43, v45, v47, v50, v52);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = OUTLINED_FUNCTION_0_41(isUniquelyReferenced_nonNull_native, v21, v22);
    OUTLINED_FUNCTION_9_21(v23, v24, v25, v26, v27, v28, v29, v30, v39, v41, v42, v44, v46, v48, v49, v51, v53);
    if (v2)
    {
      v31.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v31.super.isa = 0;
    }

    [v3 setUserData_];
  }

  else
  {
    [v3 setUserData_];
  }

  v32 = objc_opt_self();
  v33 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
  v34 = [v32 runSiriKitExecutorCommandWithContext:v33 payload:v3];

  v35 = [v32 wrapCommandInStartLocalRequest_];
  return v35;
}

uint64_t ContactsDirectInvocations.Identifiers.shouldStayInDomain.getter(char a1)
{
  ContactsDirectInvocations.Identifiers.rawValue.getter(a1);
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  v1 = BidirectionalCollection<>.starts<A>(with:)();

  return v1 & 1;
}

unint64_t ContactsDirectInvocations.Identifiers.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContactsDirectInvocations.Identifiers.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

id SKIDirectInvocationPayload.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = MEMORY[0x26D5E2470](a1, a2);

  v6 = [v4 initWithIdentifier_];

  return v6;
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = outlined init with take of Any(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id @nonobjc INPersonHandle.init(value:type:label:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = MEMORY[0x26D5E2470](a1);
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithValue:v8 type:a3 label:a4];

  return v9;
}

id @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v18 = type metadata accessor for PersonNameComponents();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v18) != 1)
  {
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    (*(*(v18 - 8) + 8))(a2, v18);
  }

  if (a4)
  {
    v20 = MEMORY[0x26D5E2470](a3, a4);
  }

  else
  {
    v20 = 0;
  }

  if (!a7)
  {
    v21 = 0;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v22 = 0;
    goto LABEL_11;
  }

  v21 = MEMORY[0x26D5E2470](a6, a7);

  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_8:
  v22 = MEMORY[0x26D5E2470](a8, a9);

LABEL_11:
  v23 = [v10 initWithPersonHandle:a1 nameComponents:isa displayName:v20 image:a5 contactIdentifier:v21 customIdentifier:v22];

  return v23;
}

id @nonobjc INStartCallIntent.init(callRecordFilter:callRecordToCallBack:audioRoute:destinationType:contacts:callCapability:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (a5)
  {
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for INPerson, 0x277CD3E90);
    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v13.super.isa = 0;
  }

  v14 = [v7 initWithCallRecordFilter:a1 callRecordToCallBack:a2 audioRoute:a3 destinationType:a4 contacts:v13.super.isa callCapability:a6];

  return v14;
}

uint64_t outlined bridged method (pb) of @objc static INIntent.typeName()(void *a1)
{
  v1 = [a1 typeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc PBCodable.data.getter(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setUserData_];
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined bridged method (pb) of @objc SKIDirectInvocationPayload.userData.getter(void *a1)
{
  v1 = [a1 userData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

_OWORD *OUTLINED_FUNCTION_0_41(char a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, _OWORD);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);

  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(va, va1, a1);
}

uint64_t OUTLINED_FUNCTION_2_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return MEMORY[0x2821FCFB8](va, v10);
}

uint64_t OUTLINED_FUNCTION_5_29()
{
}

BOOL OUTLINED_FUNCTION_6_25()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

uint64_t OUTLINED_FUNCTION_7_14()
{

  return MEMORY[0x2821BAC48](v0, v1);
}

_OWORD *OUTLINED_FUNCTION_8_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  a15 = v17;
  *&a13 = v16;
  *(&a13 + 1) = v15;

  return outlined init with take of Any(&a13, &a10);
}

uint64_t OUTLINED_FUNCTION_9_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return outlined destroy of AnyHashable(va);
}

uint64_t OUTLINED_FUNCTION_10_24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 88) = a3;
  *(v3 - 112) = a1;
  *(v3 - 104) = a2;
  outlined init with take of Any((v3 - 112), (v3 - 144));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = result + 40;
  v5 = MEMORY[0x277D84F90];
  v14 = result + 40;
LABEL_2:
  for (i = (v4 + 16 * v2); ; i += 2)
  {
    if (v3 == v2)
    {

      return v5;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v8 = *(i - 1);
    v7 = *i;
    swift_bridgeObjectRetain_n();
    v9 = specialized Set._Variant.insert(_:)(v15, v8, v7);

    if (v9)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v16 = v5;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
        v5 = v16;
      }

      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v12 = v11 + 1;
        v5 = v16;
      }

      ++v2;
      *(v5 + 16) = v12;
      v13 = v5 + 16 * v11;
      *(v13 + 32) = v8;
      *(v13 + 40) = v7;
      v4 = v14;
      goto LABEL_2;
    }

    ++v2;
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.removeAllWhere(contactName:relationLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;

  specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v18, a1, a2, a3, a4);
  v10 = v9;
  v11 = v18;
  result = specialized Array._getCount()();
  v13 = result - v10;
  if (result < v10)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v10 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = result;
  result = specialized Array._getCount()(v11);
  if (result < v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = __OFSUB__(0, v13);
  v16 = -v13;
  if (v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = specialized Array._getCount()(v11);
  v15 = __OFADD__(v17, v16);
  result = v17 + v16;
  if (!v15)
  {
    specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v10, v14, 0);
    return v18;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t Array.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1 < 0 || MEMORY[0x26D5E2640](a2, a3) <= a1)
  {
    v6 = 1;
  }

  else
  {
    Array.subscript.getter();
    v6 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a4, v6, 1, a3);
}

uint64_t Optional<A>.toContactsPhoneHandles.getter(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a1 & 0xFFFFFFFFFFFFFF8);
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x26D5E2AA0](v25))
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    result = OUTLINED_FUNCTION_34_6(MEMORY[0x277D84F90]);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    v27 = a1 & 0xC000000000000001;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v27)
      {
        v10 = OUTLINED_FUNCTION_4_27();
        v11 = MEMORY[0x26D5E29D0](v10);
      }

      else
      {
        OUTLINED_FUNCTION_15_15();
        if (v12)
        {
          goto LABEL_21;
        }

        v11 = OUTLINED_FUNCTION_13_15();
      }

      v13 = v11;
      v14 = type metadata accessor for ContactsPhoneHandle.Builder(0);
      v15 = OUTLINED_FUNCTION_2_6(v14);
      type metadata accessor for SpeakableString();
      OUTLINED_FUNCTION_8_19();
      v16 = OBJC_IVAR____TtCC19SiriContactsIntents19ContactsPhoneHandle7Builder_phoneHandle;
      OUTLINED_FUNCTION_8_19();
      outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(v13);
      if (!v17)
      {
        static String.EMPTY.getter();
      }

      OUTLINED_FUNCTION_4_19();
      SpeakableString.init(print:speak:)();
      OUTLINED_FUNCTION_18_11();
      outlined assign with copy of SpeakableString?(v4, v15 + v16);
      swift_endAccess();
      outlined destroy of SpeakableString?(v4);
      outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(v13);
      if (v18)
      {
        String.sanitizeCNLabel.getter();
      }

      OUTLINED_FUNCTION_4_19();
      v23 = ContactsPhoneHandle.Builder.withPhoneLabel(print:speak:)(v19, v20, v21, v22);

      v24 = type metadata accessor for ContactsPhoneHandle(0);
      OUTLINED_FUNCTION_2_6(v24);
      ContactsPhoneHandle.init(builder:)(v23);

      v5 = &v28;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      OUTLINED_FUNCTION_29_9();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v8;
      if (v9 == i)
      {
        return v28;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    if ((a1 & 0x8000000000000000) == 0)
    {
      v25 = v5;
    }

    else
    {
      v25 = a1;
    }
  }

  return result;
}

uint64_t Optional<A>.toContactsEmailHandles.getter(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a1 & 0xFFFFFFFFFFFFFF8);
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x26D5E2AA0](v25))
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    result = OUTLINED_FUNCTION_34_6(MEMORY[0x277D84F90]);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    v27 = a1 & 0xC000000000000001;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v27)
      {
        v10 = OUTLINED_FUNCTION_4_27();
        v11 = MEMORY[0x26D5E29D0](v10);
      }

      else
      {
        OUTLINED_FUNCTION_15_15();
        if (v12)
        {
          goto LABEL_21;
        }

        v11 = OUTLINED_FUNCTION_13_15();
      }

      v13 = v11;
      v14 = type metadata accessor for ContactsEmailHandle.Builder(0);
      v15 = OUTLINED_FUNCTION_2_6(v14);
      type metadata accessor for SpeakableString();
      OUTLINED_FUNCTION_8_19();
      v16 = OBJC_IVAR____TtCC19SiriContactsIntents19ContactsEmailHandle7Builder_emailHandle;
      OUTLINED_FUNCTION_8_19();
      outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(v13);
      if (!v17)
      {
        static String.EMPTY.getter();
      }

      OUTLINED_FUNCTION_4_19();
      SpeakableString.init(print:speak:)();
      OUTLINED_FUNCTION_18_11();
      outlined assign with copy of SpeakableString?(v4, v15 + v16);
      swift_endAccess();
      outlined destroy of SpeakableString?(v4);
      outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(v13);
      if (v18)
      {
        String.sanitizeCNLabel.getter();
      }

      OUTLINED_FUNCTION_4_19();
      v23 = ContactsEmailHandle.Builder.withEmailLabel(print:speak:)(v19, v20, v21, v22);

      v24 = type metadata accessor for ContactsEmailHandle(0);
      OUTLINED_FUNCTION_2_6(v24);
      ContactsEmailHandle.init(builder:)(v23);

      v5 = &v28;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      OUTLINED_FUNCTION_29_9();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v8;
      if (v9 == i)
      {
        return v28;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    if ((a1 & 0x8000000000000000) == 0)
    {
      v25 = v5;
    }

    else
    {
      v25 = a1;
    }
  }

  return result;
}

void Optional<A>.toContactsAddressHandles(localeString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_5_30();
  a25 = v26;
  a26 = v29;
  v55 = v30;
  if (v28)
  {
    v31 = v28;
    v32 = v27;
    v33 = (v28 & 0xFFFFFFFFFFFFFF8);
    if (v28 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x26D5E2AA0](v53))
    {
      v54 = v33;
      a14 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_17_10();
      specialized ContiguousArray.reserveCapacity(_:)();
      if (i < 0)
      {
        __break(1u);
        return;
      }

      type metadata accessor for DialogLocation();
      type metadata accessor for DialogLocationAddress();
      v35 = 0;
      while (1)
      {
        v36 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if ((v31 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x26D5E29D0](v35, v31);
        }

        else
        {
          if (v35 >= v54[2])
          {
            goto LABEL_17;
          }

          v37 = *(v31 + 8 * v35 + 32);
        }

        v38 = v37;
        v39 = type metadata accessor for ContactsAddressHandle.Builder(0);
        v40 = OUTLINED_FUNCTION_2_6(v39);
        v41 = OBJC_IVAR____TtCC19SiriContactsIntents21ContactsAddressHandle7Builder_addressLabel;
        v42 = type metadata accessor for SpeakableString();
        __swift_storeEnumTagSinglePayload(v40 + v41, 1, 1, v42);
        *(v40 + OBJC_IVAR____TtCC19SiriContactsIntents21ContactsAddressHandle7Builder_addressHandle) = 0;
        v43 = [v38 postalAddress];

        v44 = DialogLocationAddress.init(postalAddress:localeString:)(v43, v55, v32);
        v45 = DialogLocation.init(locationAddress:)(v44);
        ContactsAddressHandle.Builder.withAddressHandle(_:)(v45);

        outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(v38);
        if (v46)
        {
          String.sanitizeCNLabel.getter();
        }

        OUTLINED_FUNCTION_4_19();
        v51 = ContactsAddressHandle.Builder.withAddressLabel(print:speak:)(v47, v48, v49, v50);

        v52 = type metadata accessor for ContactsAddressHandle(0);
        OUTLINED_FUNCTION_2_6(v52);
        ContactsAddressHandle.init(builder:)(v51);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v33 = &a14;
        specialized ContiguousArray._endMutation()();
        ++v35;
        if (v36 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      if (v31 >= 0)
      {
        v53 = v33;
      }

      else
      {
        v53 = v31;
      }
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_6_26();
}

BOOL Array<A>.hasSameLabels.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_17:
    OUTLINED_FUNCTION_22_10();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 < 2)
  {
    return 0;
  }

  v3 = specialized Array._getCount()();
  v4 = 0;
  do
  {
    v5 = v3 == v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D5E29D0](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v10 = v6;
    v8 = closure #1 in implicit closure #1 in Array<A>.hasSameLabels.getter(&v10, a1);

    ++v4;
  }

  while ((v8 & 1) != 0);
  return v5;
}

void Array<A>.toCNPostalAddresses.getter(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v3 = specialized Array._getCount()();
  v4 = 0;
  v5 = v2;
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D5E29D0](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    v9 = [v6 postalAddress];

    ++v4;
    if (v9)
    {
      MEMORY[0x26D5E25E0]();
      v10 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v10 >> 1)
      {
        OUTLINED_FUNCTION_28_6(v10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v19;
      v4 = v8;
    }
  }

  v11 = specialized Array._getCount()();
  for (i = 0; v11 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v18 = OUTLINED_FUNCTION_4_27();
      v13 = MEMORY[0x26D5E29D0](v18);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v13 = OUTLINED_FUNCTION_13_15();
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      goto LABEL_25;
    }

    v15 = OUTLINED_FUNCTION_29_9();
    __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
    CNLabeledValue<>.init(address:)(v14);
    MEMORY[0x26D5E25E0]();
    v17 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v17 >> 1)
    {
      OUTLINED_FUNCTION_28_6(v17);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }
}

void Array<A>.hasMultipleResultsWithUniqueLabels.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_33_5();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_44;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4 = v3;
  if (v3)
  {
    while (2)
    {
      if (v4 >= 2)
      {
        v5 = 0;
        v6 = v2 & 0xC000000000000001;
        v7 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v3 == v5)
          {
            if (*(v7 + 16))
            {
              v21 = v7;
            }

            else
            {

              v22 = 0;
              v23 = MEMORY[0x277D84F90];
              while (v3 != v22)
              {
                if (v6)
                {
                  v24 = MEMORY[0x26D5E29D0](v22, v2);
                }

                else
                {
                  if (v22 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_43;
                  }

                  v24 = *(v2 + 8 * v22 + 32);
                }

                v25 = v24;
                v26 = v22 + 1;
                if (__OFADD__(v22, 1))
                {
                  goto LABEL_42;
                }

                v27 = [v24 postalAddress];
                if (v27 && (outlined bridged method (ob) of @objc PostalAddress.handleLabel.getter(v27), v28))
                {
                  v29 = String.sanitizeCNLabel.getter();
                  v42 = v30;

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1, v23);
                    v23 = v36;
                  }

                  v31 = v23;
                  v32 = *(v23 + 16);
                  v33 = v31;
                  v34 = *(v31 + 24);
                  if (v32 >= v34 >> 1)
                  {
                    v37 = OUTLINED_FUNCTION_28_6(v34);
                    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v37, v32 + 1, 1, v38);
                    v33 = v39;
                  }

                  *(v33 + 16) = v32 + 1;
                  v35 = v33 + 16 * v32;
                  v23 = v33;
                  *(v35 + 32) = v29;
                  *(v35 + 40) = v42;
                  v22 = v26;
                }

                else
                {

                  ++v22;
                }
              }

              if (!*(v23 + 16))
              {

                goto LABEL_39;
              }

              v21 = v23;
            }

            specialized _ArrayProtocol.filter(_:)(v21);

            goto LABEL_39;
          }

          if (v6)
          {
            v8 = MEMORY[0x26D5E29D0](v5, v2);
          }

          else
          {
            if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_41;
            }

            v8 = *(v2 + 8 * v5 + 32);
          }

          v9 = v8;
          v10 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(v8);
          if (v11)
          {
            v12 = String.sanitizeCNLabel.getter();
            v14 = v13;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
              v7 = v18;
            }

            v16 = *(v7 + 16);
            v15 = *(v7 + 24);
            if (v16 >= v15 >> 1)
            {
              v19 = OUTLINED_FUNCTION_28_6(v15);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19, v16 + 1, 1, v7);
              v7 = v20;
            }

            *(v7 + 16) = v16 + 1;
            v17 = v7 + 16 * v16;
            *(v17 + 32) = v12;
            *(v17 + 40) = v14;
            v5 = v10;
          }

          else
          {

            ++v5;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        if (v2 < 0)
        {
          v40 = v2;
        }

        else
        {
          v40 = v2 & 0xFFFFFFFFFFFFFF8;
        }

        v41 = MEMORY[0x26D5E2AA0](v40);
        if (v41)
        {
          v3 = v41;
          v4 = MEMORY[0x26D5E2AA0](v40);
          continue;
        }
      }

      break;
    }
  }

LABEL_39:
  OUTLINED_FUNCTION_32_7();
}

uint64_t closure #1 in implicit closure #1 in Array<A>.hasSameLabels.getter(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(*a1);
  if (v5)
  {
    v4 = String.sanitizeCNLabel.getter();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = a2 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((a2 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x26D5E29D0](0, a2);
  }

  else
  {
    v9 = *(a2 + 32);
  }

  outlined bridged method (ob) of @objc ContactAttribute.handleLabel.getter(v9);
  if (!v10)
  {
    if (!v7)
    {
      goto LABEL_37;
    }

    goto LABEL_18;
  }

  v11 = String.sanitizeCNLabel.getter();
  v13 = v12;

  if (!v7)
  {
    if (!v13)
    {
      goto LABEL_37;
    }

    goto LABEL_18;
  }

  if (!v13)
  {
LABEL_18:

    goto LABEL_19;
  }

  if (v4 == v11 && v7 == v13)
  {
    goto LABEL_38;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_37;
  }

LABEL_19:
  v16 = [v3 postalAddress];
  if (v16 && (outlined bridged method (ob) of @objc PostalAddress.handleLabel.getter(v16), v17))
  {
    v18 = String.sanitizeCNLabel.getter();
    v20 = v19;

    if (!v8)
    {
LABEL_22:
      v21 = *(a2 + 32);
      goto LABEL_25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  v21 = MEMORY[0x26D5E29D0](0, a2);
LABEL_25:
  outlined bridged method (ob) of @objc ContactAttribute.handleLabel.getter(v21);
  if (v22)
  {
    v23 = String.sanitizeCNLabel.getter();
    v25 = v24;

    if (v20)
    {
      if (v25)
      {
        if (v18 != v23 || v20 != v25)
        {
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

LABEL_39:

          return v27 & 1;
        }

LABEL_38:

        v27 = 1;
        goto LABEL_39;
      }

LABEL_34:
      v27 = 0;
      goto LABEL_39;
    }

    if (v25)
    {
      v27 = 0;
      goto LABEL_39;
    }
  }

  else if (v20)
  {
    goto LABEL_34;
  }

LABEL_37:
  v27 = 1;
  return v27 & 1;
}

uint64_t Array<A>.matchingLabeledValues(for:)(void *a1, uint64_t a2)
{
  v5 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(a1);
  if (v6)
  {
    if (v5 == 0x656E6F6870 && v6 == 0xE500000000000000)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    return a2;
  }

LABEL_7:
  v14 = MEMORY[0x277D84F90];
  v9 = specialized Array._getCount()();
  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {
      return v14;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x26D5E29D0](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v11 = *(a2 + 8 * i + 32);
    }

    v2 = v11;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v13 = v11;
    if (closure #1 in Array<A>.matchingLabeledValues(for:)(&v13, a1))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);

  __break(1u);
  return result;
}

{
  v5 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(a1);
  if (v6)
  {
    if (v5 == 0x6C69616D65 && v6 == 0xE500000000000000)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    return a2;
  }

LABEL_7:
  v14 = MEMORY[0x277D84F90];
  v9 = specialized Array._getCount()();
  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {
      return v14;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x26D5E29D0](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v11 = *(a2 + 8 * i + 32);
    }

    v2 = v11;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v13 = v11;
    if (closure #1 in Array<A>.matchingLabeledValues(for:)(&v13, a1))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);

  __break(1u);
  return result;
}

{
  v5 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(a1);
  if (v6)
  {
    if (v5 == 0x73736572646461 && v6 == 0xE700000000000000)
    {
LABEL_24:

LABEL_25:

      return a2;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_25;
    }
  }

  v9 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(a1);
  if (!v10)
  {
    goto LABEL_13;
  }

  if (v9 == 0x7264646120796E61 && v10 == 0xEB00000000737365)
  {
    goto LABEL_24;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_25;
  }

LABEL_13:
  v18 = MEMORY[0x277D84F90];
  v13 = specialized Array._getCount()();
  for (i = 0; ; ++i)
  {
    if (v13 == i)
    {
      return v18;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x26D5E29D0](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v15 = *(a2 + 8 * i + 32);
    }

    v2 = v15;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v17 = v15;
    if (closure #1 in Array<A>.matchingLabeledValues(for:)(&v17, a1))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t closure #1 in Array<A>.matchingLabeledValues(for:)(void **a1, void *a2)
{
  v3 = *a1;
  outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(a2);
  if (!v4)
  {
    goto LABEL_30;
  }

  v5 = [v3 label];
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = String.sanitizeCNLabel.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(a2);
  if (v11)
  {
    v12 = String.convertToContactAttributeLabel.getter(v10, v11);
    v14 = v13;

    if (v9)
    {
      if (v14)
      {
        if (v7 == v12 && v9 == v14)
        {
          goto LABEL_32;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_30;
        }

        goto LABEL_18;
      }
    }

    else if (!v14)
    {
      goto LABEL_30;
    }
  }

  else if (!v9)
  {
    goto LABEL_30;
  }

LABEL_18:
  v17 = [v3 label];
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(a2);
  if (v21)
  {
    if (!v23)
    {
      v25 = 0;
      goto LABEL_33;
    }

    if (v19 != v22 || v21 != v23)
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

LABEL_33:

      return v25 & 1;
    }

LABEL_32:

    v25 = 1;
    goto LABEL_33;
  }

  if (v23)
  {
    v25 = 0;
    goto LABEL_33;
  }

LABEL_30:
  v25 = 1;
  return v25 & 1;
}

CNPhoneNumber __swiftcall CNPhoneNumber.__allocating_init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_20_9();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = OUTLINED_FUNCTION_47_0();
  v3 = MEMORY[0x26D5E2470](v2);

  v4 = [v1 initWithStringValue_];

  return v4;
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_26696AFA0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *a1;

  specialized Collection.firstIndex(where:)(v11, a2, a3, a4, a5);
  if (v5)
  {
    goto LABEL_56;
  }

  v52 = a2;
  v50 = a4;
  v51 = a5;
  if (v13)
  {
    specialized Array._getCount()();
LABEL_56:

    return;
  }

  v14 = v12;
  v48 = 0;
  v49 = a1;
  v15 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    while (1)
    {
      if (v11 >> 62)
      {
        if (v11 < 0)
        {
          v47 = v11;
        }

        else
        {
          v47 = v11 & 0xFFFFFFFFFFFFFF8;
        }

        v16 = MEMORY[0x26D5E2AA0](v47);
      }

      else
      {
        v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v15 == v16)
      {
        goto LABEL_56;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x26D5E29D0](v15, v11);
      }

      else
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          break;
        }

        if (v15 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v17 = *(v11 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = [v17 value];
      v20 = [v19 name];

      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      if (v21 == v52 && v23 == a3)
      {
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v25 & 1) == 0)
        {

LABEL_27:
          if (v14 != v15)
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v36 = MEMORY[0x26D5E29D0](v14, v11);
              v37 = MEMORY[0x26D5E29D0](v15, v11);
            }

            else
            {
              if ((v14 & 0x8000000000000000) != 0)
              {
                goto LABEL_62;
              }

              v38 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v14 >= v38)
              {
                goto LABEL_63;
              }

              if (v15 >= v38)
              {
                goto LABEL_64;
              }

              v39 = *(v11 + 32 + 8 * v15);
              v36 = *(v11 + 32 + 8 * v14);
              v37 = v39;
            }

            v40 = v37;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v11 < 0 || (v11 & 0x4000000000000000) != 0)
            {
              v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
              v41 = (v11 >> 62) & 1;
            }

            else
            {
              LODWORD(v41) = 0;
            }

            v42 = v11 & 0xFFFFFFFFFFFFFF8;
            v43 = *((v11 & 0xFFFFFFFFFFFFFF8) + 8 * v14 + 0x20);
            *((v11 & 0xFFFFFFFFFFFFFF8) + 8 * v14 + 0x20) = v40;

            if (v11 < 0 || v41)
            {
              v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
              v42 = v11 & 0xFFFFFFFFFFFFFF8;
              if ((v15 & 0x8000000000000000) != 0)
              {
LABEL_55:
                __break(1u);
                goto LABEL_56;
              }
            }

            else if ((v15 & 0x8000000000000000) != 0)
            {
              goto LABEL_55;
            }

            if (v15 >= *(v42 + 16))
            {
              goto LABEL_61;
            }

            v44 = v42 + 8 * v15;
            v45 = *(v44 + 32);
            *(v44 + 32) = v36;

            *v49 = v11;
          }

          v46 = __OFADD__(v14++, 1);
          if (v46)
          {
            goto LABEL_60;
          }

          goto LABEL_46;
        }
      }

      v26 = [v18 label];
      if (v26)
      {
        v27 = v26;
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      v31 = static Dictionary<>.nlSemantic(forCNLabel:)(v28, v30);
      v33 = v32;

      if (v31 == v50 && v33 == v51)
      {

        goto LABEL_46;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v35 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_46:
      v46 = __OFADD__(v15++, 1);
      if (v46)
      {
        goto LABEL_59;
      }
    }
  }

  __break(1u);
}

void specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = specialized Array._getCount()();
  v10 = 0;
  v32 = a1;
  v33 = a1 & 0xC000000000000001;
  v31 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v34 == v10)
    {
      goto LABEL_27;
    }

    if (!v33)
    {
      break;
    }

    v11 = MEMORY[0x26D5E29D0](v10, v32);
LABEL_6:
    v12 = v11;
    v13 = [v11 value];
    v14 = [v13 name];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v15 == a2 && v17 == a3)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {

        goto LABEL_21;
      }
    }

    v20 = [v12 label];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v25 = static Dictionary<>.nlSemantic(forCNLabel:)(v22, v24);
    v27 = v26;

    if (v25 == a4 && v27 == a5)
    {

LABEL_27:

      return;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      goto LABEL_27;
    }

LABEL_21:
    if (__OFADD__(v10++, 1))
    {
      goto LABEL_29;
    }
  }

  if (v10 < *(v31 + 16))
  {
    v11 = *(v32 + 8 * v10 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

BOOL specialized Set._Variant.insert(_:)(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      specialized _NativeSet.resize(capacity:)(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
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
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
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

          v2 = v1;
          goto LABEL_25;
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

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(void *a1)
{
  v1 = [a1 handleLabel];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t type metadata accessor for CNPhoneNumber()
{
  result = lazy cache variable for type metadata for CNPhoneNumber;
  if (!lazy cache variable for type metadata for CNPhoneNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNPhoneNumber);
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc PostalAddress.handleLabel.getter(void *a1)
{
  v2 = [a1 handleLabel];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined assign with copy of SpeakableString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = a3;
  v6 = a2;
  v7 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v8 = v4 + 4;
  v5 = &v4[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v10);
  v10 = v3 - v10;
  if (v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v9 = v7 >> 62;
  if (!(v7 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_19:
  if (v7 < 0)
  {
    v14 = v7;
  }

  else
  {
    v14 = v4;
  }

  result = MEMORY[0x26D5E2AA0](v14);
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(&v8[v6], result - v6, (v5 + 8 * v3));
  if (v9)
  {
    if (v7 < 0)
    {
      v13 = v7;
    }

    else
    {
      v13 = v4;
    }

    result = MEMORY[0x26D5E2AA0](v13);
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v4[2] = result + v10;
LABEL_15:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    MEMORY[0x26D5E2AA0](a1);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_8_19()
{

  return __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_10_25()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_12_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

id OUTLINED_FUNCTION_13_15()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_18_11()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21_14()
{
}

void OUTLINED_FUNCTION_22_10()
{

  JUMPOUT(0x26D5E2AA0);
}

id OUTLINED_FUNCTION_23_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{

  return ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(a1, a2, a3, a4, a5, a6, a7, 0, a9);
}

uint64_t OUTLINED_FUNCTION_24_9()
{
}

uint64_t OUTLINED_FUNCTION_26_11(uint64_t a1)
{

  return specialized ContiguousArray.reserveCapacity(_:)();
}

void OUTLINED_FUNCTION_27_9()
{
}

uint64_t OUTLINED_FUNCTION_34_6(uint64_t a1)
{
  *(v2 - 128) = v1;
  *(v2 - 88) = a1;

  return specialized ContiguousArray.reserveCapacity(_:)();
}

void OUTLINED_FUNCTION_35_8()
{
}

uint64_t OUTLINED_FUNCTION_36_7()
{

  return String.sanitizeCNLabel.getter();
}

void OUTLINED_FUNCTION_38_3()
{
}

uint64_t ContactsStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 144));
  return v0;
}

uint64_t ContactsStrategy.isSmartEnabled.getter()
{
  v2[3] = &type metadata for SiriContactsFeatures;
  v2[4] = lazy protocol witness table accessor for type SiriContactsFeatures and conformance SiriContactsFeatures();
  v0 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  return v0 & 1;
}

uint64_t ContactsStrategy.confirmationOutput(templateResult:views:meCard:listenAfterSpeaking:nlContextUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - v12;
  outlined init with copy of DeviceState(v5 + 16, v18);
  outlined init with copy of NLContextUpdate?(a5, v11);
  v14 = type metadata accessor for NLContextUpdate();
  if (__swift_getEnumTagSinglePayload(v11, 1, v14) == 1)
  {
    static ContactsContextProvider.confirm(person:attribute:)(a3, 0, 1);
    if (__swift_getEnumTagSinglePayload(v11, 1, v14) != 1)
    {
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v11, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    }
  }

  else
  {
    (*(*(v14 - 8) + 32))(v13, v11, v14);
  }

  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v13, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  return __swift_destroy_boxed_opaque_existential_0Tm(v18);
}

uint64_t static StrategyUtil.getActionForInput<A>(input:intentType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a2;
  v89 = a3;
  type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_1_0();
  v84 = v5;
  v85 = v4;
  MEMORY[0x28223BE20](v4);
  v83 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_1_0();
  v90 = v8;
  v10 = MEMORY[0x28223BE20](v9);
  v86 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v87 = v81 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = v81 - v14;
  v16 = type metadata accessor for Input();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static Logger.siriContacts);
  (*(v18 + 16))(v21, a1, v16);
  v88 = v23;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v81[0] = v15;
    v27 = v26;
    v28 = swift_slowAlloc();
    v81[1] = a1;
    v29 = v28;
    v91 = v28;
    *v27 = 136315138;
    lazy protocol witness table accessor for type Input and conformance Input();
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v7;
    v33 = v32;
    (*(v18 + 8))(v21, v16);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v33, &v91);
    v7 = v31;

    *(v27 + 4) = v34;
    _os_log_impl(&dword_26686A000, v24, v25, "#getActionForInput received input: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    OUTLINED_FUNCTION_6();
    v15 = v81[0];
    OUTLINED_FUNCTION_6();
  }

  else
  {

    (*(v18 + 8))(v21, v16);
  }

  Input.parse.getter();
  v35 = v90;
  v36 = (v90 + 88);
  v37 = *(v90 + 88);
  v38 = v37(v15, v7);
  v39 = *MEMORY[0x277D5C150];
  if (v38 != *MEMORY[0x277D5C128] && v38 != v39 && v38 != *MEMORY[0x277D5C160])
  {
    v52 = v88;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v54))
    {
      v56 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_7_16(v56);
      _os_log_impl(&dword_26686A000, v53, v52, "#getActionForInput: Received unsupported parse type, returning .ignore() actionForInput", v36, 2u);
      OUTLINED_FUNCTION_6();
    }

    static ActionForInput.ignore()();
    return (*(v35 + 8))(v15, v7);
  }

  v42 = *(v35 + 8);
  v42(v15, v7);
  v43 = v87;
  Input.parse.getter();
  Parse.cancelOrContactIntent.getter();
  v45 = v44;
  v42(v43, v7);
  if (v45)
  {
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v47))
    {
      v48 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v48);
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v49, v50, "#getActionForInput: .cancel() actionForInput");
      OUTLINED_FUNCTION_6();
    }

    return static ActionForInput.cancel()();
  }

  if ((v45 & 0x100) == 0)
  {
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_21_2(v58))
    {
LABEL_25:

      return static ActionForInput.ignore()();
    }

    v59 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v59);
    v62 = "#getActionForInput: .ignore() actionForInput";
LABEL_24:
    OUTLINED_FUNCTION_7_4(&dword_26686A000, v60, v61, v62);
    OUTLINED_FUNCTION_6();
    goto LABEL_25;
  }

  v63 = v86;
  Input.parse.getter();
  v64 = OUTLINED_FUNCTION_8_20();
  if ((v37)(v64) == v39)
  {
    v65 = OUTLINED_FUNCTION_8_20();
    v66(v65);
    v68 = v83;
    v67 = v84;
    v69 = v63;
    v70 = v85;
    (*(v84 + 32))(v83, v69, v85);
    static StrategyUtil.actionForDirectInvocation(_:)(v68);
    return (*(v67 + 8))(v68, v70);
  }

  v71 = OUTLINED_FUNCTION_8_20();
  (v42)(v71);
  Input.parse.getter();
  Parse.getSiriKitIntentType()();
  v73 = v72;
  v74 = OUTLINED_FUNCTION_8_20();
  (v42)(v74);
  v57 = Logger.logObject.getter();
  v75 = static os_log_type_t.debug.getter();
  v76 = OUTLINED_FUNCTION_21_2(v75);
  if (!v73 || v73 != v82)
  {
    if (!v76)
    {
      goto LABEL_25;
    }

    v80 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v80);
    v62 = "#getActionForInput: parse intent type does not match flow's intent type, returning .ignore()";
    goto LABEL_24;
  }

  if (v76)
  {
    v77 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v77);
    OUTLINED_FUNCTION_7_4(&dword_26686A000, v78, v79, "#getActionForInput: .handle() actionForInput");
    OUTLINED_FUNCTION_6();
  }

  return static ActionForInput.handle()();
}

uint64_t ContactsStrategy.__deallocating_deinit()
{
  ContactsStrategy.deinit();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t static StrategyUtil.actionForDirectInvocation(_:)(uint64_t a1)
{
  v28._countAndFlagsBits = Parse.DirectInvocation.identifier.getter();
  v1 = ContactsDirectInvocations.Identifiers.init(rawValue:)(v28);
  if (v1 == 8)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.siriContacts);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_19;
    }

    v5 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_7_16(v5);
    v8 = "#getActionForInput Direct Invocation identifier did not match a known value, returning .ignore()";
    goto LABEL_18;
  }

  v9 = v1;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriContacts);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136315138;
    v15 = ContactsDirectInvocations.Identifiers.rawValue.getter(v9);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v26);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_26686A000, v11, v12, "#getActionForInput: Direct Invocation known invocation identifier found: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v18 = ContactsDirectInvocations.Identifiers.shouldStayInDomain.getter(v9);
  v3 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v20 = os_log_type_enabled(v3, v19);
  if ((v18 & 1) == 0)
  {
    if (!v20)
    {
LABEL_19:

      return static ActionForInput.ignore()();
    }

    v25 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_7_16(v25);
    v8 = "#getActionForInput: Direct Invocation identifier is not intended for this domain, returning .ignore()";
LABEL_18:
    OUTLINED_FUNCTION_9_22(&dword_26686A000, v6, v7, v8);
    OUTLINED_FUNCTION_6();
    goto LABEL_19;
  }

  if (v20)
  {
    v21 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_7_16(v21);
    OUTLINED_FUNCTION_9_22(&dword_26686A000, v22, v23, "#getActionForInput: Direct Invocation identifier is intended for this domain, returning .handle()");
    OUTLINED_FUNCTION_6();
  }

  return static ActionForInput.handle()();
}

unint64_t lazy protocol witness table accessor for type Input and conformance Input()
{
  result = lazy protocol witness table cache variable for type Input and conformance Input;
  if (!lazy protocol witness table cache variable for type Input and conformance Input)
  {
    type metadata accessor for Input();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Input and conformance Input);
  }

  return result;
}

void OUTLINED_FUNCTION_9_22(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t specialized IdiomSensitiveViewBuilder.makeContactsAppLaunchButton(appUtil:result:)()
{
  AppUtil.buildPunchoutFor(contactIdentifier:)();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_266966A40;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_266966A40;
  *(v3 + 32) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  Result<>.firstPrint.getter();
  if (!v5)
  {
    static String.EMPTY.getter();
  }

  type metadata accessor for SAUIButton();
  *(v2 + 32) = SAUIButton.init(commands:text:)();

  return v2;
}

uint64_t ErrorViewBuilder.makeViewsForMac()(const char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriContacts);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26686A000, v6, v7, a1, v8, 2u);
    MEMORY[0x26D5E3300](v8, -1, -1);
  }

  ContactsLabelCATs.openContacts()();
  v9 = specialized IdiomSensitiveViewBuilder.makeContactsAppLaunchButton(appUtil:result:)();
  outlined destroy of Result<TemplatingResult, Error>(v4);
  return v9;
}

SiriContactsIntents::GetContactAttributeSlots_optional __swiftcall GetContactAttributeSlots.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GetContactAttributeSlots.init(rawValue:), v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

void GetContactSlots.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_3_25();
      break;
    case 2:
      OUTLINED_FUNCTION_7_17(0x6B63696Eu);
      break;
    case 3:
      OUTLINED_FUNCTION_7_17(0x7473616Cu);
      break;
    case 4:
      OUTLINED_FUNCTION_4_28();
      break;
    case 5:
      OUTLINED_FUNCTION_21_11();
      break;
    case 6:
      OUTLINED_FUNCTION_5_31();
      break;
    case 7:
      OUTLINED_FUNCTION_0_43();
      break;
    case 8:
      OUTLINED_FUNCTION_7_17(0x6C6C7566u);
      break;
    case 9:
      OUTLINED_FUNCTION_1_37();
      break;
    case 10:
      OUTLINED_FUNCTION_2_39();
      break;
    default:
      return;
  }
}

void ModifyContactAttributeSlots.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 2:
    case 4:
      OUTLINED_FUNCTION_21_11();
      break;
    default:
      return;
  }
}

SiriContactsIntents::ModifyContactAttributeSlots_optional __swiftcall ModifyContactAttributeSlots.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ModifyContactAttributeSlots.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

id specialized Slot<>.slotDescription.getter(uint64_t a1, void (*a2)(void), void (*a3)(uint64_t))
{
  v6 = type metadata accessor for ContactsError(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0);
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = [v9 _intentInstanceDescription];

  a3(a1);
  v11 = MEMORY[0x26D5E2470]();

  v12 = [v10 slotByName_];

  if (!v12)
  {
    OUTLINED_FUNCTION_8_21();
    v28 = ContactsError.errorDescription.getter();
    v15 = v14;
    outlined destroy of ContactsError(v8);
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.siriContacts);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    v29 = v17;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30[0] = v20;
      *v19 = 136315138;
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v15, v30);

      *(v19 + 4) = v21;
      v22 = v29;
      _os_log_impl(&dword_26686A000, v29, v18, "%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x26D5E3300](v20, -1, -1);
      MEMORY[0x26D5E3300](v19, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v23 = static FatalError.fatalErrorClosure;
    OUTLINED_FUNCTION_8_21();

    v24 = ContactsError.errorDescription.getter();
    v26 = v25;
    outlined destroy of ContactsError(v8);
    v23(v24, v26, "/Library/Caches/com.apple.xbs/Sources/SiriContacts/SiriContactsIntents/Util/Slot.swift", 86, 2, 29);
  }

  return v12;
}

id Slot<>.slotDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  (*(a2 + 8))();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = [v10 _intentInstanceDescription];

  dispatch thunk of RawRepresentable.rawValue.getter();
  v12 = MEMORY[0x26D5E2470](v16[8], v16[9]);

  v13 = [v11 slotByName_];

  if (!v13)
  {
    MEMORY[0x28223BE20](v14);
    v16[2] = a1;
    v16[3] = a2;
    v16[4] = a3;
    v16[5] = a4;
    v16[6] = v5;
    fatalError(_:file:line:)(partial apply for implicit closure #1 in Slot<>.slotDescription.getter, v16, "/Library/Caches/com.apple.xbs/Sources/SiriContacts/SiriContactsIntents/Util/Slot.swift", 86, 2u, 29);
  }

  return v13;
}

uint64_t implicit closure #1 in Slot<>.slotDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for ContactsError(0);
  MEMORY[0x28223BE20](v7);
  v9 = (v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  dispatch thunk of RawRepresentable.rawValue.getter();
  v10 = v15[0];
  v11 = v15[1];
  v12 = (*(a3 + 8))(a2, a3);
  *v9 = v10;
  v9[1] = v11;
  v9[2] = v12;
  swift_storeEnumTagMultiPayload();
  v13 = ContactsError.errorDescription.getter();
  outlined destroy of ContactsError(v9);
  return v13;
}

void specialized Slot<>.propertyName.getter(uint64_t a1, void (*a2)(void), void (*a3)(uint64_t))
{
  v3 = specialized Slot<>.slotDescription.getter(a1, a2, a3);
  v4 = [v3 facadePropertyName];

  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

void Slot<>.propertyName.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = Slot<>.slotDescription.getter(a1, a2, a3, a4);
  v5 = [v4 facadePropertyName];

  if (v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

SiriContactsIntents::GetContactSlots_optional __swiftcall GetContactSlots.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GetContactSlots.init(rawValue:), v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

SiriContactsIntents::GetContactSlots_optional protocol witness for RawRepresentable.init(rawValue:) in conformance GetContactSlots@<W0>(Swift::String *a1@<X0>, SiriContactsIntents::GetContactSlots_optional *a2@<X8>)
{
  result.value = GetContactSlots.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GetContactSlots(void *a1@<X8>)
{
  GetContactSlots.rawValue.getter(*v1);
  *a1 = v3;
  a1[1] = v4;
}

SiriContactsIntents::GetContactSlots_optional protocol witness for Slot.init(rawValue:) in conformance GetContactSlots@<W0>(uint64_t a1@<X0>, SiriContactsIntents::GetContactSlots_optional *a2@<X8>)
{
  result.value = GetContactSlots.init(rawValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

void GetContactAttributeSlots.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_3_25();
      break;
    case 2:
      OUTLINED_FUNCTION_7_17(0x6B63696Eu);
      break;
    case 3:
      OUTLINED_FUNCTION_7_17(0x7473616Cu);
      break;
    case 4:
      OUTLINED_FUNCTION_4_28();
      break;
    case 5:
      OUTLINED_FUNCTION_21_11();
      break;
    case 6:
      OUTLINED_FUNCTION_5_31();
      break;
    case 7:
      OUTLINED_FUNCTION_0_43();
      break;
    case 8:
      OUTLINED_FUNCTION_7_17(0x6C6C7566u);
      break;
    case 9:
      OUTLINED_FUNCTION_1_37();
      break;
    case 10:
      OUTLINED_FUNCTION_2_39();
      break;
    default:
      return;
  }
}

SiriContactsIntents::GetContactAttributeSlots_optional protocol witness for RawRepresentable.init(rawValue:) in conformance GetContactAttributeSlots@<W0>(Swift::String *a1@<X0>, SiriContactsIntents::GetContactAttributeSlots_optional *a2@<X8>)
{
  result.value = GetContactAttributeSlots.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GetContactAttributeSlots(void *a1@<X8>)
{
  GetContactAttributeSlots.rawValue.getter(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t getEnumTagSinglePayload for GetContactAttributeSlots(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GetContactAttributeSlots(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModifyContactAttributeSlots(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ModifyContactAttributeSlots(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GetContactSlots(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GetContactSlots(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GetContactSlots and conformance GetContactSlots()
{
  result = lazy protocol witness table cache variable for type GetContactSlots and conformance GetContactSlots;
  if (!lazy protocol witness table cache variable for type GetContactSlots and conformance GetContactSlots)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactSlots and conformance GetContactSlots);
  }

  return result;
}

SiriContactsIntents::GetContactAttributeSlots_optional protocol witness for Slot.init(rawValue:) in conformance GetContactAttributeSlots@<W0>(uint64_t a1@<X0>, SiriContactsIntents::GetContactAttributeSlots_optional *a2@<X8>)
{
  result.value = GetContactAttributeSlots.init(rawValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

SiriContactsIntents::ModifyContactAttributeSlots_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ModifyContactAttributeSlots@<W0>(Swift::String *a1@<X0>, SiriContactsIntents::ModifyContactAttributeSlots_optional *a2@<X8>)
{
  result.value = ModifyContactAttributeSlots.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ModifyContactAttributeSlots(void *a1@<X8>)
{
  ModifyContactAttributeSlots.rawValue.getter(*v1);
  *a1 = v3;
  a1[1] = v4;
}

SiriContactsIntents::ModifyContactAttributeSlots_optional protocol witness for Slot.init(rawValue:) in conformance ModifyContactAttributeSlots@<W0>(uint64_t a1@<X0>, SiriContactsIntents::ModifyContactAttributeSlots_optional *a2@<X8>)
{
  result.value = ModifyContactAttributeSlots.init(rawValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeSlots and conformance ModifyContactAttributeSlots()
{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSlots and conformance ModifyContactAttributeSlots;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSlots and conformance ModifyContactAttributeSlots)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSlots and conformance ModifyContactAttributeSlots);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [GetContactSlots] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t lazy protocol witness table accessor for type GetContactAttributeSlots and conformance GetContactAttributeSlots()
{
  result = lazy protocol witness table cache variable for type GetContactAttributeSlots and conformance GetContactAttributeSlots;
  if (!lazy protocol witness table cache variable for type GetContactAttributeSlots and conformance GetContactAttributeSlots)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactAttributeSlots and conformance GetContactAttributeSlots);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_21()
{
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t GetContactAttributeIntentHandler.__allocating_init(contactService:contactResolver:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  v8 = a1[3];
  v7 = a1[4];
  v9 = OUTLINED_FUNCTION_19_11();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  specialized GetContactAttributeIntentHandler.init(contactService:contactResolver:)(v13, v19, v6, v8, v15, v7, v16);
  v21 = OUTLINED_FUNCTION_22_11();
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

uint64_t GetContactAttributeIntentHandler.resolveSiriMatches(for:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = type metadata accessor for Signpost.OpenSignpost(0);
  v1[5] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v5 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_26_12(v5);
  v6 = v1 + *(v2 + 20);
  *v6 = "ResolveSiriMatchesGetContactAttribute";
  *(v6 + 8) = 37;
  *(v6 + 16) = 2;
  v7 = specialized BaseIntentHandler.resolveSiriMatches(for:)(v3);
  v8 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_26_12(v8);
  outlined destroy of Signpost.OpenSignpost(v1);

  OUTLINED_FUNCTION_12_14();

  return v9(v7);
}

uint64_t @objc closure #1 in GetContactAttributeIntentHandler.resolveSiriMatches(for:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in GetContactAttributeIntentHandler.resolveSiriMatches(for:);

  return GetContactAttributeIntentHandler.resolveSiriMatches(for:)();
}

uint64_t @objc closure #1 in GetContactAttributeIntentHandler.resolveSiriMatches(for:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_25_10();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  OUTLINED_FUNCTION_0();
  *v6 = v5;

  type metadata accessor for GetContactAttributeSiriMatchesResolutionResult();
  OUTLINED_FUNCTION_73();
  Array._bridgeToObjectiveC()();
  OUTLINED_FUNCTION_22_11();

  v7 = OUTLINED_FUNCTION_24_10();
  v8(v7, v3);

  _Block_release(v2);
  OUTLINED_FUNCTION_3();

  return v9();
}

uint64_t GetContactAttributeIntentHandler.resolveContactAttributeToGet(for:)()
{
  OUTLINED_FUNCTION_4();
  v0[2] = v1;
  v0[3] = type metadata accessor for Signpost.OpenSignpost(0);
  v0[4] = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

{
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v5 = v1 + *(v2 + 20);
  *v5 = "ResolveContactAttributeToGet";
  *(v5 + 8) = 28;
  *(v5 + 16) = 2;
  v6 = [v3 contactAttributeToGet];
  if (v6)
  {
    v7 = v6;
    if ([v6 contactAttributeType])
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v8 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v8, static Logger.siriContacts);
      v9 = v7;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v30 = OUTLINED_FUNCTION_23();
        *v12 = 136315394;
        *(v12 + 4) = OUTLINED_FUNCTION_10_26("GetContactAttributeIntent", v29);
        *(v12 + 12) = 2112;
        *(v12 + 14) = v9;
        *v13 = v7;
        v14 = v9;
        _os_log_impl(&dword_26686A000, v10, v11, "[%s] Resolved desired contact attribute: %@", v12, 0x16u);
        outlined destroy of NSObject?(v13);
        OUTLINED_FUNCTION_6();
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_5_32();
      }

      type metadata accessor for GetContactAttributeContactAttributeToGetResolutionResult();
      v15 = static ContactAttributeResolutionResult.success(with:)(v9);
    }

    else
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v22 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v22, static Logger.siriContacts);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_31(v24))
      {
        v25 = OUTLINED_FUNCTION_24();
        v32 = OUTLINED_FUNCTION_23();
        *v25 = 136315138;
        *(v25 + 4) = OUTLINED_FUNCTION_10_26("GetContactAttributeIntent", v29);
        _os_log_impl(&dword_26686A000, v23, v24, "[%s] Returning unsupported invalidAttribute for contactAttributeToGet", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_5_32();
      }

      type metadata accessor for GetContactAttributeContactAttributeToGetResolutionResult();
      v15 = static GetContactAttributeContactAttributeToGetResolutionResult.unsupported(forReason:)(3);
    }
  }

  else
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v16 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v16, static Logger.siriContacts);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_13_16(v18))
    {
      v19 = OUTLINED_FUNCTION_24();
      v31 = OUTLINED_FUNCTION_23();
      *v19 = 136315138;
      *(v19 + 4) = OUTLINED_FUNCTION_10_26("GetContactAttributeIntent", v29);
      OUTLINED_FUNCTION_14_17(&dword_26686A000, v20, v21, "[%s] Returning needsValue for contactAttributeToGet");
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      OUTLINED_FUNCTION_5_32();
      OUTLINED_FUNCTION_3_22();
    }

    type metadata accessor for GetContactAttributeContactAttributeToGetResolutionResult();
    v15 = [swift_getObjCClassFromMetadata() needsValue];
  }

  v26 = v0[4];
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v26);

  OUTLINED_FUNCTION_12_14();

  return v27(v15);
}

uint64_t @objc closure #1 in GetContactAttributeIntentHandler.resolveContactAttributeToGet(for:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = @objc closure #1 in GetContactAttributeIntentHandler.resolveContactAttributeToGet(for:);

  return GetContactAttributeIntentHandler.resolveContactAttributeToGet(for:)();
}

uint64_t @objc closure #1 in GetContactAttributeIntentHandler.resolveContactAttributeToGet(for:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_25_10();
  v3 = v2[4];
  v4 = v2[3];
  v5 = v2[2];
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;

  v8 = OUTLINED_FUNCTION_24_10();
  v9(v8, v0);
  _Block_release(v3);

  OUTLINED_FUNCTION_3();

  return v10();
}

uint64_t GetContactAttributeIntentHandler.resolveContactHandleMatches(for:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_8_5(GetContactAttributeIntentHandler.resolveContactHandleMatches(for:));
}

uint64_t GetContactAttributeIntentHandler.resolveContactHandleMatches(for:)()
{
  v59 = v2;
  v3 = [*(v2 + 56) contactAttributeToGet];
  v4 = &off_266966000;
  v5 = "GetContactAttributeIntent";
  if (!v3)
  {
    goto LABEL_11;
  }

  v6 = v3;
  if ([v3 contactAttributeType] - 1 > 2)
  {

LABEL_11:
    OUTLINED_FUNCTION_17_11();
    if (!v14)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v15 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v15, static Logger.siriContacts);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_31(v17))
    {
      v18 = OUTLINED_FUNCTION_24();
      v19 = OUTLINED_FUNCTION_23();
      v58 = v19;
      *v18 = 136315138;
      *(v18 + 4) = OUTLINED_FUNCTION_2_40("edsValueStrategy", v55, v56, v57);
      OUTLINED_FUNCTION_4_25(&dword_26686A000, v20, v21, "[%s] Contact attribute type is not a labeled handle, returning notRequired");
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      OUTLINED_FUNCTION_3_22();
      OUTLINED_FUNCTION_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_6_27();
    v22 = swift_allocObject();
    OUTLINED_FUNCTION_29_10(v22, xmmword_266966A40);
    v22[2].n128_u64[0] = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_48;
  }

  Contact = outlined bridged method (pb) of @objc GetContactIntent.siriMatches.getter(*(v2 + 56));
  if (Contact)
  {
    OUTLINED_FUNCTION_31_6(Contact);
    if (v1)
    {
      goto LABEL_53;
    }

    v8 = v0[2].n128_u64[0];
    while (1)
    {
      OUTLINED_FUNCTION_22_11();

      v9 = outlined bridged method (ob) of @objc INObject.identifier.getter(v1);
      if (!v10)
      {
        break;
      }

      v1 = v9;
      v11 = specialized SiriKitContactIntent.me.getter();
      v0 = *(v2 + 64);
      if (v11)
      {

        v13 = specialized BaseIntentHandler.meCard.getter(v12);
        if (!v13)
        {
          break;
        }
      }

      else
      {
        outlined init with copy of DeviceState(v0 + direct field offset for BaseIntentHandler.contactService, v2 + 16);
        __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
        v23 = OUTLINED_FUNCTION_11_18();
        v25 = v24(v23);
        if (v1)
        {

          __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
          break;
        }

        v13 = v25;
        v57 = 0;

        __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
        if (!v13)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_17_11();
      if (!v14)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v26 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v26, static Logger.siriContacts);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = OUTLINED_FUNCTION_24();
        v1 = v5;
        v30 = OUTLINED_FUNCTION_23();
        v58 = v30;
        *v29 = *(v4 + 327);
        *(v29 + 4) = OUTLINED_FUNCTION_2_40(v1 - 32, v55, v56, v57);
        _os_log_impl(&dword_26686A000, v27, v28, "[%s] Attempting to resolve contactHandleMatches", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        v5 = v1;
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      v31 = OUTLINED_FUNCTION_19_11();
      v33 = GetContactAttributeIntentHandler.getMatches(contactAttribute:contact:)(v31, v32);
      if (!v33)
      {
        goto LABEL_43;
      }

      v1 = v33;
      Array<A>.hasMultipleResultsWithUniqueLabels.getter(v33);
      if (v34)
      {
        v35 = v13;
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_31(v37))
        {
          v38 = OUTLINED_FUNCTION_24();
          v39 = OUTLINED_FUNCTION_23();
          v58 = v39;
          *v38 = *(v4 + 327);
          *(v38 + 4) = OUTLINED_FUNCTION_2_40(v5 - 32, v55, v56, v57);
          _os_log_impl(&dword_26686A000, v36, v37, "[%s] Found contactHandleMatches with unique labels, returning disambiguation", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v39);
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_6();
        }

        outlined bridged method (mbgnn) of @objc GetContactAttributeIntent.contactHandleMatches.setter(v1, *(v2 + 56), &selRef_setContactHandleMatches_);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        OUTLINED_FUNCTION_6_27();
        v22 = swift_allocObject();
        OUTLINED_FUNCTION_29_10(v22, xmmword_266966A40);
        v40 = static ContactAttributeResolutionResult.disambiguation(with:)(v1);

        v22[2].n128_u64[0] = v40;

        goto LABEL_47;
      }

      v41 = specialized Array._getCount()();
      if (!v41)
      {

LABEL_43:
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_13_16(v50))
        {
          v51 = OUTLINED_FUNCTION_24();
          v52 = OUTLINED_FUNCTION_23();
          v58 = v52;
          *v51 = *(v4 + 327);
          *(v51 + 4) = OUTLINED_FUNCTION_2_40(v5 - 32, v55, v56, v57);
          _os_log_impl(&dword_26686A000, v49, v1, "[%s] Found nil or empty contactHandleMatches, returning notRequired", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v52);
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_5_32();
        }

        break;
      }

      v42 = v41;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      v56 = v13;
      if (os_log_type_enabled(v43, v44))
      {
        v45 = v5;
        v46 = OUTLINED_FUNCTION_24();
        v0 = OUTLINED_FUNCTION_23();
        v58 = v0;
        *v46 = *(v4 + 327);
        *(v46 + 4) = OUTLINED_FUNCTION_2_40(v45 - 32, v55, v56, v57);
        _os_log_impl(&dword_26686A000, v43, v44, "[%s] Found nonempty contactHandleMatches, returning success", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v0);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      outlined bridged method (mbgnn) of @objc GetContactAttributeIntent.contactHandleMatches.setter(v1, *(v2 + 56), &selRef_setContactHandleMatches_);
      v5 = 0;
      v22 = MEMORY[0x277D84F90];
      v58 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v42 == v5)
        {

          goto LABEL_47;
        }

        if ((v1 & 0xC000000000000001) != 0)
        {
          v47 = MEMORY[0x26D5E29D0](v5, v1);
        }

        else
        {
          if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v47 = *(v1 + 8 * v5 + 32);
        }

        v4 = v47;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        type metadata accessor for ContactAttributeResolutionResult();
        static ContactAttributeResolutionResult.success(with:)(v4);

        MEMORY[0x26D5E25E0]();
        OUTLINED_FUNCTION_33_6();
        if (v48)
        {
          OUTLINED_FUNCTION_30_8();
        }

        v0 = &v58;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v22 = v58;
        ++v5;
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      MEMORY[0x26D5E29D0](0, v0);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_6_27();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_29_10(v22, xmmword_266966A40);
  v22[2].n128_u64[0] = [swift_getObjCClassFromMetadata() notRequired];
LABEL_47:

LABEL_48:
  OUTLINED_FUNCTION_12_14();

  return v53(v22);
}

uint64_t @objc closure #1 in GetContactAttributeIntentHandler.resolveContactHandleMatches(for:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in GetContactAttributeIntentHandler.resolveContactHandleMatches(for:);

  return GetContactAttributeIntentHandler.resolveContactHandleMatches(for:)(v6);
}

uint64_t @objc closure #1 in GetContactAttributeIntentHandler.resolveContactHandleMatches(for:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_25_10();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  OUTLINED_FUNCTION_0();
  *v6 = v5;

  type metadata accessor for ContactAttributeResolutionResult();
  OUTLINED_FUNCTION_73();
  Array._bridgeToObjectiveC()();
  OUTLINED_FUNCTION_22_11();

  v7 = OUTLINED_FUNCTION_24_10();
  v8(v7, v3);

  _Block_release(v2);
  OUTLINED_FUNCTION_3();

  return v9();
}

uint64_t GetContactAttributeIntentHandler.resolveContactHandleAlternatives(for:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_8_5(GetContactAttributeIntentHandler.resolveContactHandleAlternatives(for:));
}

uint64_t GetContactAttributeIntentHandler.resolveContactHandleAlternatives(for:)()
{
  v3 = [*(v2 + 56) contactAttributeToGet];
  v4 = &off_266966000;
  v5 = "GetContactAttributeIntent";
  if (v3)
  {
    v6 = v3;
    if ([v3 contactAttributeType] - 1 <= 2)
    {
      ContactAttribute = outlined bridged method (pb) of @objc GetContactAttributeIntent.contactHandleMatches.getter(*(v2 + 56));
      if (ContactAttribute)
      {
        v0 = ContactAttribute;
        specialized Array._getCount()();
        OUTLINED_FUNCTION_22_11();

        if (v1)
        {
          OUTLINED_FUNCTION_17_11();
          if (!v8)
          {
            OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
          }

          v9 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_29(v9, static Logger.siriContacts);
          v10 = Logger.logObject.getter();
          v11 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_13_16(v11))
          {
            v12 = OUTLINED_FUNCTION_24();
            v64 = OUTLINED_FUNCTION_23();
            *v12 = 136315138;
            *(v12 + 4) = OUTLINED_FUNCTION_2_40("edsValueStrategy", v60, v61, v62);
            OUTLINED_FUNCTION_14_17(&dword_26686A000, v13, v14, "[%s] Already resolved contactHandleMatches, returning notRequired for contactHandleAlternatives");
            __swift_destroy_boxed_opaque_existential_0Tm(v64);
            OUTLINED_FUNCTION_5_32();
            OUTLINED_FUNCTION_3_22();
          }

LABEL_55:

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          OUTLINED_FUNCTION_6_27();
          v21 = swift_allocObject();
          OUTLINED_FUNCTION_29_10(v21, xmmword_266966A40);
          v21[2].n128_u64[0] = [swift_getObjCClassFromMetadata() notRequired];
LABEL_56:

          goto LABEL_57;
        }
      }

      Contact = outlined bridged method (pb) of @objc GetContactIntent.siriMatches.getter(*(v2 + 56));
      if (!Contact)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_31_6(Contact);
      if (v1)
      {
        MEMORY[0x26D5E29D0](0, v0);
      }

      else
      {
        v23 = *(v0 + 32);
      }

      OUTLINED_FUNCTION_22_11();

      v24 = outlined bridged method (ob) of @objc INObject.identifier.getter(v1);
      if (!v25)
      {
        goto LABEL_51;
      }

      v26 = v24;
      if (specialized SiriKitContactIntent.me.getter())
      {

        v28 = specialized BaseIntentHandler.meCard.getter(v27);
        if (!v28)
        {
          goto LABEL_51;
        }
      }

      else
      {
        outlined init with copy of DeviceState(*(v2 + 64) + direct field offset for BaseIntentHandler.contactService, v2 + 16);
        __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
        v29 = OUTLINED_FUNCTION_11_18();
        v31 = v30(v29);
        if (v26)
        {

          __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
          goto LABEL_51;
        }

        v28 = v31;
        v61 = 0;

        __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
        if (!v28)
        {
LABEL_51:
          OUTLINED_FUNCTION_17_11();
          if (v8)
          {
            goto LABEL_53;
          }

          goto LABEL_62;
        }
      }

      OUTLINED_FUNCTION_17_11();
      if (!v8)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v32 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v32, static Logger.siriContacts);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = OUTLINED_FUNCTION_24();
        v63 = v28;
        v36 = OUTLINED_FUNCTION_23();
        *v35 = 136315138;
        *(v35 + 4) = OUTLINED_FUNCTION_2_40("edsValueStrategy", v60, v61, v63);
        _os_log_impl(&dword_26686A000, v33, v34, "[%s] Attempting to resolve contactHandleAlternatives", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v36);
        v28 = v62;
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_5_32();
      }

      v37 = OUTLINED_FUNCTION_19_11();
      v39 = GetContactAttributeIntentHandler.getAlternatives(contactAttribute:contact:)(v37, v38);
      if (v39)
      {
        v40 = v39;
        Array<A>.hasMultipleResultsWithUniqueLabels.getter(v39);
        if (v41)
        {
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_13_16(v43))
          {
            v44 = OUTLINED_FUNCTION_24();
            v66 = OUTLINED_FUNCTION_23();
            *v44 = 136315138;
            *(v44 + 4) = OUTLINED_FUNCTION_2_40("edsValueStrategy", v60, v61, v62);
            _os_log_impl(&dword_26686A000, v42, v33, "[%s] Found contactHandleAlternatives with unique labels, returning disambiguation", v44, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v66);
            OUTLINED_FUNCTION_6();
            OUTLINED_FUNCTION_6();
          }

          outlined bridged method (mbgnn) of @objc GetContactAttributeIntent.contactHandleMatches.setter(v40, *(v2 + 56), &selRef_setContactHandleAlternatives_);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          OUTLINED_FUNCTION_6_27();
          v21 = swift_allocObject();
          OUTLINED_FUNCTION_29_10(v21, xmmword_266966A40);
          v45 = static ContactAttributeResolutionResult.disambiguation(with:)(v40);

          v21[2].n128_u64[0] = v45;

          goto LABEL_56;
        }

        v46 = specialized Array._getCount()();
        if (v46)
        {
          v47 = v46;
          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.debug.getter();
          v62 = v28;
          if (os_log_type_enabled(v48, v49))
          {
            v50 = OUTLINED_FUNCTION_24();
            v67 = OUTLINED_FUNCTION_23();
            *v50 = 136315138;
            *(v50 + 4) = OUTLINED_FUNCTION_2_40("edsValueStrategy", v60, v61, v62);
            _os_log_impl(&dword_26686A000, v48, v49, "[%s] Found nonempty contactHandleAlternatives, returning success", v50, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v67);
            OUTLINED_FUNCTION_6();
            OUTLINED_FUNCTION_3_22();
          }

          outlined bridged method (mbgnn) of @objc GetContactAttributeIntent.contactHandleMatches.setter(v40, *(v2 + 56), &selRef_setContactHandleAlternatives_);
          v4 = 0;
          v21 = MEMORY[0x277D84F90];
          v68 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v47 == v4)
            {

              goto LABEL_56;
            }

            if ((v40 & 0xC000000000000001) != 0)
            {
              v51 = MEMORY[0x26D5E29D0](v4, v40);
            }

            else
            {
              if (v4 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_61;
              }

              v51 = *(v40 + 8 * v4 + 32);
            }

            v5 = v51;
            if (__OFADD__(v4, 1))
            {
              break;
            }

            type metadata accessor for ContactAttributeResolutionResult();
            static ContactAttributeResolutionResult.success(with:)(v5);

            MEMORY[0x26D5E25E0]();
            OUTLINED_FUNCTION_33_6();
            if (v52)
            {
              OUTLINED_FUNCTION_30_8();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v21 = v68;
            v4 = (v4 + 1);
          }

          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
LABEL_53:
          v53 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_29(v53, static Logger.siriContacts);
          v10 = Logger.logObject.getter();
          v54 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_13_16(v54))
          {
            v55 = OUTLINED_FUNCTION_24();
            v69 = OUTLINED_FUNCTION_23();
            *v55 = *(v4 + 327);
            *(v55 + 4) = OUTLINED_FUNCTION_2_40((v5 - 32), v60, v61, v62);
            OUTLINED_FUNCTION_14_17(&dword_26686A000, v56, v57, "[%s] Found nil or empty contactHandleAlternatives, returning notRequired");
            __swift_destroy_boxed_opaque_existential_0Tm(v69);
            OUTLINED_FUNCTION_5_32();
            OUTLINED_FUNCTION_3_22();
          }

          goto LABEL_55;
        }
      }

      else
      {
      }

      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_17_11();
  if (!v8)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v15 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v15, static Logger.siriContacts);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_31(v17))
  {
    v18 = OUTLINED_FUNCTION_24();
    v65 = OUTLINED_FUNCTION_23();
    *v18 = 136315138;
    *(v18 + 4) = OUTLINED_FUNCTION_2_40("edsValueStrategy", v60, v61, v62);
    OUTLINED_FUNCTION_4_25(&dword_26686A000, v19, v20, "[%s] Contact attribute type is not a labeled handle, returning notRequired");
    __swift_destroy_boxed_opaque_existential_0Tm(v65);
    OUTLINED_FUNCTION_3_22();
    OUTLINED_FUNCTION_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_6_27();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_29_10(v21, xmmword_266966A40);
  v21[2].n128_u64[0] = [swift_getObjCClassFromMetadata() notRequired];
LABEL_57:
  OUTLINED_FUNCTION_12_14();

  return v58(v21);
}

uint64_t @objc closure #1 in GetContactAttributeIntentHandler.resolveContactHandleAlternatives(for:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in GetContactAttributeIntentHandler.resolveContactHandleAlternatives(for:);

  return GetContactAttributeIntentHandler.resolveContactHandleAlternatives(for:)(v6);
}

uint64_t GetContactAttributeIntentHandler.confirm(intent:)()
{
  return OUTLINED_FUNCTION_8_5(GetContactAttributeIntentHandler.confirm(intent:));
}

{
  OUTLINED_FUNCTION_4();
  objc_allocWithZone(type metadata accessor for GetContactAttributeIntentResponse());
  GetContactAttributeIntentResponse.init(code:userActivity:)(4, 0);
  OUTLINED_FUNCTION_12_14();

  return v0();
}

uint64_t @objc closure #1 in GetContactAttributeIntentHandler.confirm(intent:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = @objc closure #1 in GetContactAttributeIntentHandler.confirm(intent:);

  return GetContactAttributeIntentHandler.confirm(intent:)();
}

uint64_t GetContactAttributeIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_4();
  v0[2] = v1;
  v0[3] = type metadata accessor for Signpost.OpenSignpost(0);
  v0[4] = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

{
  v37 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v2 = *(v0 + 24);
    v1 = *(v0 + 32);
    static Signpost.contactsLog;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    v3 = v1 + *(v2 + 20);
    *v3 = "HandleGetContactAttribute";
    *(v3 + 8) = 25;
    *(v3 + 16) = 2;
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v4 = *(v0 + 16);
    v5 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v5, static Logger.siriContacts);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 16);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = OUTLINED_FUNCTION_23();
      v36 = v12;
      *v10 = 136315394;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000026696F160, &v36);
      *(v10 + 12) = 2112;
      *(v10 + 14) = v9;
      *v11 = v9;
      v13 = v9;
      _os_log_impl(&dword_26686A000, v7, v8, "[%s] Handling intent: %@", v10, 0x16u);
      outlined destroy of NSObject?(v11);
      OUTLINED_FUNCTION_5_32();
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    Contact = outlined bridged method (pb) of @objc GetContactIntent.siriMatches.getter(*(v0 + 16));
    if (!Contact)
    {
      break;
    }

    v15 = Contact;
    v16 = specialized Array._getCount()();
    v17 = 0;
    v35 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v16 == v17)
      {

        v30 = v35;
        goto LABEL_22;
      }

      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x26D5E29D0](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = outlined bridged method (pb) of @objc INObject.identifier.getter(v18);
      v23 = v22;

      ++v17;
      if (v23)
      {
        v24 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 16) + 1, 1, v35);
          v24 = v28;
        }

        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        v35 = v24;
        if (v26 >= v25 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1, v24);
          v35 = v29;
        }

        *(v35 + 16) = v26 + 1;
        v27 = v35 + 16 * v26;
        *(v27 + 32) = v21;
        *(v27 + 40) = v23;
        v17 = v20;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v30 = 0;
LABEL_22:
  v31 = *(v0 + 32);
  type metadata accessor for GetContactAttributeIntentResponse();
  v32 = GetContactAttributeIntentResponse.__allocating_init(contactIdentifiers:code:)(v30, 4);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v31);

  OUTLINED_FUNCTION_12_14();

  return v33(v32);
}

uint64_t @objc GetContactAttributeIntentHandler.resolveSiriMatches(for:)(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_6_27();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return _runTaskForBridgedAsyncMethod(_:)(a6, v10);
}

uint64_t @objc closure #1 in GetContactAttributeIntentHandler.handle(intent:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = @objc closure #1 in GetContactAttributeIntentHandler.confirm(intent:);

  return GetContactAttributeIntentHandler.handle(intent:)();
}

uint64_t GetContactAttributeIntentHandler.getMatches(contactAttribute:contact:)(void *a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v9 = [a1 contactAttributeType];
  if (v9 == 1)
  {
    v15 = [a2 emailAddresses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
    OUTLINED_FUNCTION_73();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = OUTLINED_FUNCTION_19_11();
    v12 = a4(v16);
  }

  else if (v9 == 3)
  {
    v13 = [a2 postalAddresses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
    OUTLINED_FUNCTION_73();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = OUTLINED_FUNCTION_19_11();
    v12 = a5(v14);
  }

  else
  {
    if (v9 != 2)
    {
      return 0;
    }

    v10 = [a2 phoneNumbers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = OUTLINED_FUNCTION_19_11();
    v12 = a3(v11);
  }

  v17 = v12;

  return v17;
}

id GetContactAttributeIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetContactAttributeIntentHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GetContactAttributeIntentHandler(uint64_t a1)
{
  result = type metadata singleton initialization cache for GetContactAttributeIntentHandler;
  if (!type metadata singleton initialization cache for GetContactAttributeIntentHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc INObject.identifier.getter(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc GetContactAttributeIntent.contactHandleMatches.getter(void *a1)
{
  v1 = [a1 contactHandleMatches];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for ContactAttribute();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbgnn) of @objc GetContactAttributeIntent.contactHandleMatches.setter(uint64_t a1, void *a2, SEL *a3)
{
  type metadata accessor for ContactAttribute();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a2 *a3];
}

uint64_t partial apply for @objc closure #1 in GetContactAttributeIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_18_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_36(v1);

  return v4(v3);
}

uint64_t partial apply for @objc closure #1 in GetContactAttributeIntentHandler.confirm(intent:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_18_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_36(v1);

  return v4(v3);
}

uint64_t partial apply for @objc closure #1 in GetContactAttributeIntentHandler.resolveContactHandleAlternatives(for:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_18_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_36(v1);

  return v4(v3);
}

uint64_t partial apply for @objc closure #1 in GetContactAttributeIntentHandler.resolveContactHandleMatches(for:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_18_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_36(v1);

  return v4(v3);
}

uint64_t partial apply for @objc closure #1 in GetContactAttributeIntentHandler.resolveContactAttributeToGet(for:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_18_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_36(v1);

  return v4(v3);
}

uint64_t objectdestroyTm_0()
{
  _Block_release(*(v0 + 24));

  OUTLINED_FUNCTION_6_27();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t partial apply for @objc closure #1 in GetContactAttributeIntentHandler.resolveSiriMatches(for:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_18_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_36(v1);

  return v4(v3);
}

{
  OUTLINED_FUNCTION_4();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

id specialized GetContactAttributeIntentHandler.init(contactService:contactResolver:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a6;
  v28 = a7;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v27 - v16;
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v27 - v23;
  (*(v19 + 32))(&v27 - v23);
  (*(v11 + 32))(v17, a2, a5);
  (*(v19 + 16))(v22, v24, a4);
  (*(v11 + 16))(v14, v17, a5);
  v25 = specialized BaseIntentHandler.init(contactService:contactResolver:)(v22, v14, a3, a4, a5, v27, v28);
  (*(v11 + 8))(v17, a5);
  (*(v19 + 8))(v24, a4);
  return v25;
}

unint64_t OUTLINED_FUNCTION_2_40@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, a1 | 0x8000000000000000, va);
}

void OUTLINED_FUNCTION_5_32()
{

  JUMPOUT(0x26D5E3300);
}

unint64_t OUTLINED_FUNCTION_10_26@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va, a2);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, (a1 - 32) | 0x8000000000000000, va);
}

BOOL OUTLINED_FUNCTION_13_16(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_14_17(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_26_12(uint64_t a1)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_29_10(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for ContactAttributeResolutionResult();
}

uint64_t OUTLINED_FUNCTION_30_8()
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_31_6(uint64_t a1)
{

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
}

uint64_t ContactsAddressHandle.Builder.withAddressLabel(print:speak:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;

  SpeakableString.init(print:speak:)();
  v8 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  v9 = OBJC_IVAR____TtCC19SiriContactsIntents21ContactsAddressHandle7Builder_addressLabel;
  swift_beginAccess();
  outlined assign with take of SpeakableString?(v7, v4 + v9);
  swift_endAccess();
}

uint64_t ContactsAddressHandle.Builder.withAddressHandle(_:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCC19SiriContactsIntents21ContactsAddressHandle7Builder_addressHandle) = a1;
}

uint64_t ContactsAddressHandle.Builder.__deallocating_deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC19SiriContactsIntents21ContactsAddressHandle7Builder_addressLabel);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t ContactsAddressHandle.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = OBJC_IVAR____TtCC19SiriContactsIntents21ContactsAddressHandle7Builder_addressLabel;
  swift_beginAccess();
  outlined init with copy of SpeakableString?(a1 + v3, v1 + OBJC_IVAR____TtC19SiriContactsIntents21ContactsAddressHandle_addressLabel);
  v4 = *(a1 + OBJC_IVAR____TtCC19SiriContactsIntents21ContactsAddressHandle7Builder_addressHandle);

  *(v1 + OBJC_IVAR____TtC19SiriContactsIntents21ContactsAddressHandle_addressHandle) = v4;
  return v1;
}

uint64_t ContactsAddressHandle.getProperty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = a1 == 0x4C73736572646461 && a2 == 0xEC0000006C656261;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC19SiriContactsIntents21ContactsAddressHandle_addressLabel, v9);
    v11 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v9, 1, v11) == 1)
    {
      result = outlined destroy of SpeakableString?(v9);
LABEL_8:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v11 - 8) + 32))(boxed_opaque_existential_1, v9, v11);
  }

  else
  {
    result = 0x4873736572646461;
    if (a1 != 0x4873736572646461 || a2 != 0xED0000656C646E61)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v15 = *(v3 + OBJC_IVAR____TtC19SiriContactsIntents21ContactsAddressHandle_addressHandle);
    if (!v15)
    {
      goto LABEL_8;
    }

    *(a3 + 24) = type metadata accessor for DialogLocation();
    *a3 = v15;
  }
}

uint64_t ContactsAddressHandle.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContactsAddressHandle.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
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

uint64_t ContactsAddressHandle.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x4873736572646461;
  }

  else
  {
    return 0x4C73736572646461;
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ContactsAddressHandle.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = ContactsAddressHandle.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactsAddressHandle.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = ContactsAddressHandle.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ContactsAddressHandle.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = ContactsAddressHandle.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsAddressHandle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsAddressHandle.CodingKeys and conformance ContactsAddressHandle.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsAddressHandle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsAddressHandle.CodingKeys and conformance ContactsAddressHandle.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactsAddressHandle.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC19SiriContactsIntents21ContactsAddressHandle_addressLabel);

  return v0;
}

uint64_t ContactsAddressHandle.__deallocating_deinit()
{
  ContactsAddressHandle.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for ContactsAddressHandle(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t ContactsAddressHandle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriContactsIntents0E13AddressHandleC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy19SiriContactsIntents0E13AddressHandleC10CodingKeysOGMR);
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ContactsAddressHandle.CodingKeys and conformance ContactsAddressHandle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = OBJC_IVAR____TtC19SiriContactsIntents21ContactsAddressHandle_addressLabel;
  v20 = 0;
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_0_44();
  lazy protocol witness table accessor for type ContactsAddressHandle and conformance ContactsAddressHandle(v12, v13, MEMORY[0x277D55C50]);
  OUTLINED_FUNCTION_5_33(v3 + v11, &v20);
  if (!v2)
  {
    v19 = *(v3 + OBJC_IVAR____TtC19SiriContactsIntents21ContactsAddressHandle_addressHandle);
    v18 = 1;
    type metadata accessor for DialogLocation();
    OUTLINED_FUNCTION_1_38();
    lazy protocol witness table accessor for type ContactsAddressHandle and conformance ContactsAddressHandle(v14, v15, MEMORY[0x277D55BD0]);
    OUTLINED_FUNCTION_5_33(&v19, &v18);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t ContactsAddressHandle.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ContactsAddressHandle.init(from:)(a1);
  return v2;
}

void type metadata completion function for ContactsAddressHandle.Builder(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id *ContactsAddressHandle.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v5);
  v7 = v18 - v6;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriContactsIntents0E13AddressHandleC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy19SiriContactsIntents0E13AddressHandleC10CodingKeysOGMR);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v8);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ContactsAddressHandle.CodingKeys and conformance ContactsAddressHandle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for ContactsAddressHandle(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = type metadata accessor for SpeakableString();
    v20 = 0;
    OUTLINED_FUNCTION_0_44();
    lazy protocol witness table accessor for type ContactsAddressHandle and conformance ContactsAddressHandle(v10, v11, MEMORY[0x277D55C60]);
    OUTLINED_FUNCTION_6_28(v9, &v20);
    outlined init with take of SpeakableString?(v7, v3 + OBJC_IVAR____TtC19SiriContactsIntents21ContactsAddressHandle_addressLabel);
    v13 = type metadata accessor for DialogLocation();
    v19 = 1;
    OUTLINED_FUNCTION_1_38();
    lazy protocol witness table accessor for type ContactsAddressHandle and conformance ContactsAddressHandle(v14, v15, MEMORY[0x277D55BD8]);
    OUTLINED_FUNCTION_6_28(v13, &v19);
    v16 = OUTLINED_FUNCTION_2_33();
    v17(v16);
    *(v3 + OBJC_IVAR____TtC19SiriContactsIntents21ContactsAddressHandle_addressHandle) = v18[1];
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v3;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ContactsAddressHandle@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ContactsAddressHandle.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ContactsAddressHandle and conformance ContactsAddressHandle(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ContactsAddressHandle.CodingKeys and conformance ContactsAddressHandle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsAddressHandle.CodingKeys and conformance ContactsAddressHandle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsAddressHandle.CodingKeys and conformance ContactsAddressHandle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsAddressHandle.CodingKeys and conformance ContactsAddressHandle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsAddressHandle.CodingKeys and conformance ContactsAddressHandle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsAddressHandle.CodingKeys and conformance ContactsAddressHandle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsAddressHandle.CodingKeys and conformance ContactsAddressHandle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsAddressHandle.CodingKeys and conformance ContactsAddressHandle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsAddressHandle.CodingKeys and conformance ContactsAddressHandle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsAddressHandle.CodingKeys and conformance ContactsAddressHandle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsAddressHandle.CodingKeys and conformance ContactsAddressHandle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsAddressHandle.CodingKeys and conformance ContactsAddressHandle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsAddressHandle.CodingKeys and conformance ContactsAddressHandle.CodingKeys);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactsAddressHandle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_5_33(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_6_28(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t UsoTask_request_common_Person.contactIds.getter(uint64_t a1)
{
  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
  if (v4)
  {
    UsoEntity_common_Person.contactIds.getter();
    OUTLINED_FUNCTION_3_26();
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();
  if (v4)
  {
    v2 = UsoEntity_common_Person.contactIds.getter();
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  specialized Array.append<A>(contentsOf:)(v2);
  return v1;
}

uint64_t UsoTask_update_common_Person.updateTaskType.getter(uint64_t a1)
{
  updated = UsoTask_update_common_Person.isUpdateNicknameTask.getter(a1);
  if (updated)
  {
    return 0;
  }

  if (UsoTask_update_common_Person.isUpdateRelationshipTask.getter(updated))
  {
    return 1;
  }

  return 2;
}

uint64_t UsoTask_update_common_Person.updateRelationshipInfoLocation.getter(uint64_t a1)
{
  dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
  if (v4 && (v2 = dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter(), , v2))
  {

    return 0;
  }

  else
  {
    dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
    if (v4 && (dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter(), OUTLINED_FUNCTION_3_26(), v1))
    {

      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t UsoTask_noVerb_common_Person.isGetAttributeIntent.getter(uint64_t a1)
{
  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
  if (v3)
  {
    if (dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter() || dispatch thunk of UsoEntity_common_Person.structuredName.getter() || dispatch thunk of UsoEntity_common_Person.age.getter())
    {
      OUTLINED_FUNCTION_3_26();
LABEL_6:

      return 1;
    }

    dispatch thunk of UsoEntity_common_Person.associatedDate.getter();
    OUTLINED_FUNCTION_3_26();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  return 0;
}

uint64_t UsoTask_noVerb_common_Person.isRequestForMultipleContacts.getter(void *(*a1)(uint64_t *__return_ptr, uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, _s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  type metadata accessor for UsoEntity_common_Quantifier.DefinedValues();
  OUTLINED_FUNCTION_1_39();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - v13;
  a1(&v23, v12);
  if (!v23 || (v15 = dispatch thunk of CodeGenGlobalArgs.usoQuantifier.getter(), , !v15))
  {
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v1);
    goto LABEL_7;
  }

  dispatch thunk of UsoEntity_common_Quantifier.definedValue.getter();

  OUTLINED_FUNCTION_2_0(v5);
  if (v16)
  {
LABEL_7:
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v5, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, _s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
    v20 = 0;
    return v20 & 1;
  }

  (*(v7 + 32))(v14, v5, v1);
  v17 = *(v7 + 104);
  v17(v11, *MEMORY[0x277D5EA28], v1);
  v18 = specialized == infix<A>(_:_:)(v14, v11);
  v19 = *(v7 + 8);
  v19(v11, v1);
  if (v18)
  {
    v19(v14, v1);
    v20 = 1;
  }

  else
  {
    v17(v11, *MEMORY[0x277D5EA58], v1);
    v20 = specialized == infix<A>(_:_:)(v14, v11);
    v19(v11, v1);
    v19(v14, v1);
  }

  return v20 & 1;
}

uint64_t UsoTask_read_common_Person.isGetAttributeIntent.getter(uint64_t a1)
{
  v1 = dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  if (v4)
  {
    Attribute = UsoEntity_common_Person.isGetAttributeIntent.getter(v1);
  }

  else
  {
    Attribute = 0;
  }

  return Attribute & 1;
}

uint64_t UsoTask_update_common_Person.isChangeContactPoster.getter()
{
  type metadata accessor for UsoEntity_commonContact_ContactAttribute.DefinedValues();
  OUTLINED_FUNCTION_1_39();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v23 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
  if (!v24)
  {
    goto LABEL_19;
  }

  v18 = dispatch thunk of UsoEntity_common_Person.attributes.getter();

  if (!v18)
  {
    return v18 & 1;
  }

  if (!specialized Array._getCount()())
  {

LABEL_9:
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v0);
    goto LABEL_10;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v18 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5E29D0](0, v18);
  }

  else
  {
  }

  dispatch thunk of CodeGenListEntry.entry.getter();

  if (!v24)
  {
    goto LABEL_9;
  }

  dispatch thunk of UsoEntity_commonContact_ContactAttribute.definedValue.getter();

LABEL_10:
  (*(v2 + 104))(v15, *MEMORY[0x277D5E398], v0);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v0);
  v19 = *(v6 + 48);
  outlined init with copy of UsoEntity_commonContact_ContactAttribute.DefinedValues?(v17, v8);
  outlined init with copy of UsoEntity_commonContact_ContactAttribute.DefinedValues?(v15, &v8[v19]);
  OUTLINED_FUNCTION_2_0(v8);
  if (!v20)
  {
    outlined init with copy of UsoEntity_commonContact_ContactAttribute.DefinedValues?(v8, v12);
    OUTLINED_FUNCTION_2_0(&v8[v19]);
    if (!v20)
    {
      (*(v2 + 32))(v5, &v8[v19], v0);
      lazy protocol witness table accessor for type UsoEntity_commonContact_ContactAttribute.DefinedValues and conformance UsoEntity_commonContact_ContactAttribute.DefinedValues();
      LOBYTE(v18) = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v2 + 8);
      v22(v5, v0);
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v15, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMR);
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v17, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMR);
      v22(v12, v0);
      outlined destroy of UsoEntity_common_Person.DefinedValues?(v8, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMR);
      return v18 & 1;
    }

    OUTLINED_FUNCTION_25(v15);
    OUTLINED_FUNCTION_25(v17);
    (*(v2 + 8))(v12, v0);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_25(v15);
  OUTLINED_FUNCTION_25(v17);
  OUTLINED_FUNCTION_2_0(&v8[v19]);
  if (!v20)
  {
LABEL_18:
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v8, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSg_AFtMR);
LABEL_19:
    LOBYTE(v18) = 0;
    return v18 & 1;
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v8, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMR);
  LOBYTE(v18) = 1;
  return v18 & 1;
}

uint64_t UsoTask_update_common_Person.isUpdateNicknameTask.getter(uint64_t a1)
{
  dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
  if (!v3)
  {
    return 0;
  }

  v1 = dispatch thunk of UsoEntity_common_Person.structuredName.getter();

  if (!v1)
  {
    return 0;
  }

  return 1;
}

uint64_t UsoTask_update_common_Person.isUpdateRelationshipTask.getter(uint64_t a1)
{
  dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
  if (!v4 || (v1 = dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter(), , !v1))
  {
    dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
    if (!v4)
    {
      return 0;
    }

    v2 = dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter();

    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t outlined init with copy of UsoEntity_commonContact_ContactAttribute.DefinedValues?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology024UsoEntity_commonContact_F9AttributeC13DefinedValuesOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UsoEntity_commonContact_ContactAttribute.DefinedValues and conformance UsoEntity_commonContact_ContactAttribute.DefinedValues()
{
  result = lazy protocol witness table cache variable for type UsoEntity_commonContact_ContactAttribute.DefinedValues and conformance UsoEntity_commonContact_ContactAttribute.DefinedValues;
  if (!lazy protocol witness table cache variable for type UsoEntity_commonContact_ContactAttribute.DefinedValues and conformance UsoEntity_commonContact_ContactAttribute.DefinedValues)
  {
    type metadata accessor for UsoEntity_commonContact_ContactAttribute.DefinedValues();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoEntity_commonContact_ContactAttribute.DefinedValues and conformance UsoEntity_commonContact_ContactAttribute.DefinedValues);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_26()
{
}

id SFDetailedRowCardSection.init(title:descriptions:commands:thumbnail:footnote:action:trailingMiddleText:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7)
{
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v14 setTitle_];
  outlined bridged method (mbnn) of @objc SASTColumnDataListItem.decoratedRows.setter(a2, v14, &lazy cache variable for type metadata for SFRichText, 0x277D4C598, &selRef_setDescriptions_);
  [v14 setFootnote_];

  if (a4)
  {
    [v14 setThumbnail_];
  }

  outlined bridged method (mbnn) of @objc SASTColumnDataListItem.decoratedRows.setter(a3, v14, &lazy cache variable for type metadata for SFAbstractCommand, 0x277D4C1A0, &selRef_setCommands_);
  if (a6)
  {
    [v14 setAction_];
  }

  if (a7)
  {
    v15 = a7;
    [v14 setTrailingMiddleText_];
  }

  return v14;
}

id @nonobjc SFFormattedText.__allocating_init(string:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = MEMORY[0x26D5E2470](a1);
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() textWithString_];

  return v3;
}

id SFRowCardSection.init(blueTitle:subtitle:commands:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFFormattedText, 0x277D4C3A0);
  v11 = @nonobjc SFFormattedText.__allocating_init(string:)(a1, a2);
  if (v11)
  {
    v12 = v11;
    [v11 setTextColor_];
    v13 = [objc_allocWithZone(MEMORY[0x277D4C598]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_266966A40;
    *(v14 + 32) = v12;
    v15 = v12;
    outlined bridged method (mbnn) of @objc SASTColumnDataListItem.decoratedRows.setter(v14, v13, &lazy cache variable for type metadata for SFFormattedText, 0x277D4C3A0, &selRef_setFormattedTextPieces_);
    [v10 setLeadingText_];
  }

  [v10 setLeadingSubtitle_];
  outlined bridged method (mbnn) of @objc SASTColumnDataListItem.decoratedRows.setter(a4, v10, &lazy cache variable for type metadata for SFAbstractCommand, 0x277D4C1A0, &selRef_setCommands_);

  return v10;
}

id SFRowCardSection.init(leadingText:image:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setLeadingText_];
  v5 = a2;
  [v4 setImage_];

  return v4;
}

id SFContactImage.init(contactId:size:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_266966D90;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  outlined bridged method (mbnn) of @objc SFContactImage.contactIdentifiers.setter(v11, v10);
  if ((a5 & 1) == 0)
  {
    [v10 setSize_];
  }

  return v10;
}

id SFActionItem.init(phoneNumber:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = v6;
  if (a2)
  {
    v8 = MEMORY[0x26D5E2470](a1, a2);
  }

  else
  {
    v8 = 0;
  }

  [v6 *a3];

  return v6;
}

id SFRichText.init(string:bold:color:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFFormattedText, 0x277D4C3A0);
  v9 = @nonobjc SFFormattedText.__allocating_init(string:)(a1, a2);
  if (v9)
  {
    v10 = v9;
    [v9 setIsBold_];
    [v10 setTextColor_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_266966A40;
    *(v11 + 32) = v10;
    outlined bridged method (mbnn) of @objc SASTColumnDataListItem.decoratedRows.setter(v11, v8, &lazy cache variable for type metadata for SFFormattedText, 0x277D4C3A0, &selRef_setFormattedTextPieces_);
  }

  return v8;
}

void outlined bridged method (mbnn) of @objc SFContactImage.contactIdentifiers.setter(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setContactIdentifiers_];
}

id AgeDateTime.__allocating_init(dateComponents:qualifier:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_45();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v2);
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v7 + 8))(v10, v5);
  v15 = static String.EMPTY.getter();
  v16 = MEMORY[0x26D5E2470](v15);

  v17 = outlined bridged method (mbnnn) of @objc INObject.init(identifier:display:)(v12, v14, v16, v11);

  v18 = v17;
  isa = DateComponents._bridgeToObjectiveC()().super.isa;
  [v18 setDateComponents_];

  [v18 setQualifier_];
  type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_7();
  (*(v20 + 8))(a1);
  return v18;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v11 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_45();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(v2);
  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  (*(v13 + 8))(v16, v11);
  v21 = static String.EMPTY.getter();
  v22 = MEMORY[0x26D5E2470](v21);

  v23 = outlined bridged method (mbnnn) of @objc INObject.init(identifier:display:)(v18, v20, v22, v17);

  v24 = v23;
  isa = DateComponents._bridgeToObjectiveC()().super.isa;
  [v24 setDateComponents_];

  outlined init with copy of TerminalElement.Qualifier?(a2, v10);
  v26 = type metadata accessor for TerminalElement.Qualifier();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v26);
  v28 = 0;
  if (EnumTagSinglePayload != 1)
  {
    outlined init with copy of TerminalElement.Qualifier?(v10, v8);
    OUTLINED_FUNCTION_0_45();
    v30 = v29;
    v32 = (*(v31 + 88))(v8, v26);
    if (v32 == *MEMORY[0x277D5E640])
    {
      v28 = 1;
    }

    else if (v32 == *MEMORY[0x277D5E648])
    {
      v28 = 2;
    }

    else
    {
      (*(v30 + 8))(v8, v26);
      v28 = 0;
    }
  }

  [v24 setQualifier_];
  outlined destroy of TerminalElement.Qualifier?(a2);
  type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_7();
  (*(v33 + 8))(a1);
  outlined destroy of TerminalElement.Qualifier?(v10);
  return v24;
}

id outlined bridged method (mbnnn) of @objc INObject.init(identifier:display:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x26D5E2470](a1);

  v7 = [a4 initWithIdentifier:v6 displayString:a3];

  return v7;
}

uint64_t outlined destroy of TerminalElement.Qualifier?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ModifyContactAttributeCATsModern(uint64_t a1)
{
  result = type metadata singleton initialization cache for ModifyContactAttributeCATsModern;
  if (!type metadata singleton initialization cache for ModifyContactAttributeCATsModern)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ModifyContactAttributeCATsModern.confirmModifyNickname(requestedNickname:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v3);
  v1[4] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = swift_allocObject();
  v0[5] = v1;
  *(v1 + 16) = xmmword_266966D90;
  OUTLINED_FUNCTION_14_6();
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = v3;
  OUTLINED_FUNCTION_27_0(v2, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v5();
  }

  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_36_0();
  v0[6] = v6;
  *v6 = v7;
  v6[1] = ModifyContactAttributeCATsModern.confirmModifyNickname(requestedNickname:);
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_32_1();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_2_41();

    return v11(v10);
  }
}

{
  OUTLINED_FUNCTION_4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ModifyContactAttributeCATsModern.confirmModifyRelationship(requestedRelationship:existingRelationship:contactName:modifyOperation:)()
{
  OUTLINED_FUNCTION_4();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v6);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = swift_allocObject();
  v0[11] = v1;
  *(v1 + 16) = xmmword_266967350;
  OUTLINED_FUNCTION_14_6();
  *(v2 + 32) = 0xD000000000000015;
  *(v2 + 40) = v3;
  OUTLINED_FUNCTION_27_0(v2, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[10], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v6();
  }

  v7 = v0[9];
  OUTLINED_FUNCTION_14_6();
  *(v1 + 80) = 0xD000000000000014;
  *(v1 + 88) = v8;
  outlined init with copy of URL?(v9, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = OUTLINED_FUNCTION_10_6();
  v11 = v0[9];
  if (v10 == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[9], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
  }

  else
  {
    *(v1 + 120) = v5;
    __swift_allocate_boxed_opaque_existential_1((v1 + 96));
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v12();
  }

  v13 = OUTLINED_FUNCTION_7_18();
  outlined init with copy of URL?(v13, v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[8], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v1 + 144) = 0u;
    *(v1 + 160) = 0u;
  }

  else
  {
    *(v1 + 168) = v5;
    __swift_allocate_boxed_opaque_existential_1((v1 + 144));
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v14();
  }

  v15 = v0[7];
  OUTLINED_FUNCTION_5_7();
  *(v1 + 176) = v16;
  *(v1 + 184) = v17;
  outlined init with copy of URL?(v18, v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v1 + 192) = 0u;
    *(v1 + 208) = 0u;
  }

  else
  {
    *(v1 + 216) = v5;
    __swift_allocate_boxed_opaque_existential_1((v1 + 192));
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v19();
  }

  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_36_0();
  v0[12] = v20;
  *v20 = v21;
  v20[1] = ModifyContactAttributeCATsModern.confirmModifyRelationship(requestedRelationship:existingRelationship:contactName:modifyOperation:);
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_32_1();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_32_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_2_41();
    OUTLINED_FUNCTION_32_1();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t ModifyContactAttributeCATsModern.intentHandledModifyNickname(updatedNickname:existingNickname:contactName:modifyOperation:)()
{
  OUTLINED_FUNCTION_4();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v6);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = swift_allocObject();
  v0[11] = v1;
  *(v1 + 16) = xmmword_266967350;
  *(v1 + 32) = 0x4E64657461647075;
  *(v1 + 40) = 0xEF656D616E6B6369;
  OUTLINED_FUNCTION_27_0(v1, v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[10], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v4();
  }

  v5 = v0[9];
  OUTLINED_FUNCTION_14_6();
  *(v1 + 80) = 0xD000000000000010;
  *(v1 + 88) = v6;
  outlined init with copy of URL?(v7, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_10_6();
  v9 = v0[9];
  if (v8 == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[9], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
  }

  else
  {
    *(v1 + 120) = v3;
    __swift_allocate_boxed_opaque_existential_1((v1 + 96));
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v10();
  }

  v11 = OUTLINED_FUNCTION_7_18();
  outlined init with copy of URL?(v11, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[8], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v1 + 144) = 0u;
    *(v1 + 160) = 0u;
  }

  else
  {
    *(v1 + 168) = v3;
    __swift_allocate_boxed_opaque_existential_1((v1 + 144));
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v12();
  }

  v13 = v0[7];
  OUTLINED_FUNCTION_5_7();
  *(v1 + 176) = v14;
  *(v1 + 184) = v15;
  outlined init with copy of URL?(v16, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v1 + 192) = 0u;
    *(v1 + 208) = 0u;
  }

  else
  {
    *(v1 + 216) = v3;
    __swift_allocate_boxed_opaque_existential_1((v1 + 192));
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v17();
  }

  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_36_0();
  v0[12] = v18;
  *v18 = v19;
  v18[1] = ModifyContactAttributeCATsModern.intentHandledModifyNickname(updatedNickname:existingNickname:contactName:modifyOperation:);
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_32_1();

  return v23(v20, v21, v22, v23, v24, v25, v26, v27);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_32_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_2_41();
    OUTLINED_FUNCTION_32_1();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

{
  OUTLINED_FUNCTION_41();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ModifyContactAttributeCATsModern.intentHandledModifyRelationship(updatedRelationship:contactName:modifyOperation:isVoiceMode:)()
{
  OUTLINED_FUNCTION_4();
  *(v1 + 96) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v0;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v6);
  *(v1 + 48) = swift_task_alloc();
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_19_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = swift_allocObject();
  *(v0 + 72) = v1;
  *(v1 + 16) = xmmword_266967350;
  OUTLINED_FUNCTION_14_6();
  *(v2 + 32) = 0xD000000000000013;
  *(v2 + 40) = v3;
  OUTLINED_FUNCTION_27_0(v2, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(*(v0 + 64), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v6();
  }

  v7 = *(v0 + 56);
  v8 = *(v0 + 24);
  *(v1 + 80) = 0x4E746361746E6F63;
  *(v1 + 88) = 0xEB00000000656D61;
  outlined init with copy of URL?(v8, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(*(v0 + 56), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
  }

  else
  {
    *(v1 + 120) = v5;
    __swift_allocate_boxed_opaque_existential_1((v1 + 96));
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v9();
  }

  v10 = *(v0 + 48);
  OUTLINED_FUNCTION_5_7();
  *(v1 + 128) = v11;
  *(v1 + 136) = v12;
  outlined init with copy of URL?(v13, v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_10_6() == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(*(v0 + 48), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v1 + 144) = 0u;
    *(v1 + 160) = 0u;
  }

  else
  {
    *(v1 + 168) = v5;
    __swift_allocate_boxed_opaque_existential_1((v1 + 144));
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_12_3();
    v14();
  }

  v15 = *(v0 + 96);
  *(v1 + 176) = 0x4D6563696F567369;
  *(v1 + 184) = 0xEB0000000065646FLL;
  *(v1 + 216) = MEMORY[0x277D839B0];
  *(v1 + 192) = v15;
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 80) = v16;
  *v16 = v17;
  v16[1] = ModifyContactAttributeCATsModern.intentHandledModifyRelationship(updatedRelationship:contactName:modifyOperation:isVoiceMode:);
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_32_1();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_2_41();

    return v11(v10);
  }
}

{
  OUTLINED_FUNCTION_41();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ModifyContactAttributeCATsModern.__allocating_init(templateDir:options:globals:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_12_3();
  return ModifyContactAttributeCATsModern.init(templateDir:options:globals:)(v0, v1, v2);
}

uint64_t ModifyContactAttributeCATsModern.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_10_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = OUTLINED_FUNCTION_18_0(v11);
  MEMORY[0x28223BE20](v12);
  outlined init with copy of URL?(a1, &v16 - v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v7 + 16))(v10, a2, v3);
  v14 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v14;
}

uint64_t ModifyContactAttributeCATsModern.__allocating_init(useResponseMode:options:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_10_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = CATWrapperSimple.init(useResponseMode:options:)();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t OUTLINED_FUNCTION_7_18()
{
  result = *(v0 + 32);
  *(v1 + 128) = 0x4E746361746E6F63;
  *(v1 + 136) = 0xEB00000000656D61;
  return result;
}

uint64_t RRReferenceResolverProtocol.resolveCommonPerson()@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for UsoEntityBuilder_common_Person();
  swift_allocObject();
  UsoEntityBuilder_common_Person.init()();
  v6 = MEMORY[0x26D5E0C50]();

  if (v6)
  {
    RRReferenceResolverProtocol.resolveEntity(referenceEntity:)(v6, a1, a2, a3);
  }

  else
  {
    v8 = type metadata accessor for RREntity();

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v8);
  }
}

void *RRReferenceResolverProtocol.resolveAttributeDisambiguationReference(from:)(uint64_t a1, char *a2, char *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for RREntity();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  RRReferenceResolverProtocol.resolvePositionEntity(from:)(a2, a3, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    outlined destroy of Result<TemplatingResult, Error>(v7, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
    RREntity.usoEntity.getter();
    type metadata accessor for UsoEntity_common_ContactAddress();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    v14 = v25;
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v15 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v15, static Logger.siriContacts);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_24();
      v19 = OUTLINED_FUNCTION_23();
      v24 = v14;
      v25 = v19;
      *v18 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_ContactAddressCSgMd, &_s12SiriOntology31UsoEntity_common_ContactAddressCSgMR);
      v20 = Optional.debugDescription.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v25);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_26686A000, v16, v17, "#ReferenceResolution Converted positional reference entity to UsoEntity_common_ContactAddress: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    (*(v10 + 8))(v13, v8);
  }

  return v14;
}

uint64_t RRReferenceResolverProtocol.resolveEntity(referenceEntity:)@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v195 = a3;
  v192 = a1;
  v193 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_2_16();
  v178 = v6;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  v183 = &v177 - v8;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  v181 = &v177 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_2_16();
  v179 = v12;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  v182 = &v177 - v14;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  v180 = &v177 - v16;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  v185 = &v177 - v18;
  v191 = type metadata accessor for RRCandidate();
  OUTLINED_FUNCTION_1_0();
  v186 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_16();
  v184 = v21;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  v187 = &v177 - v23;
  v24 = type metadata accessor for RRResult();
  OUTLINED_FUNCTION_1_0();
  v190 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_16();
  v177 = v27;
  OUTLINED_FUNCTION_16();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = (&v177 - v30);
  MEMORY[0x28223BE20](v29);
  v33 = &v177 - v32;
  v34 = type metadata accessor for RRQuery();
  OUTLINED_FUNCTION_1_0();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  v39 = (&v177 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  OUTLINED_FUNCTION_10_1();
  v42 = MEMORY[0x28223BE20](v41);
  v44 = (&v177 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v42);
  v46 = &v177 - v45;
  v188 = type metadata accessor for RREntity();
  v189 = a4;
  __swift_storeEnumTagSinglePayload(a4, 1, 1, v188);
  *v39 = v192;
  (*(v36 + 104))(v39, *MEMORY[0x277D5FEA8], v34);

  dispatch thunk of RRReferenceResolverProtocol.resolve(reference:)();
  (*(v36 + 8))(v39, v34);
  v195 = v46;
  outlined init with copy of Result<RRResult, Error>(v46, v44, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = *v44;
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v48 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v48, static Logger.siriContacts);
    v49 = v47;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = OUTLINED_FUNCTION_24();
      v53 = OUTLINED_FUNCTION_23();
      v196 = v47;
      v197[0] = v53;
      *v52 = 136315138;
      v54 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v55 = String.init<A>(describing:)();
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v197);

      *(v52 + 4) = v57;
      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v58, v59, v60, v61, v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7_19();
    }

    else
    {
    }

    return outlined destroy of Result<TemplatingResult, Error>(v195, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  }

  v63 = v190;
  (*(v190 + 32))(v33, v44, v24);
  v64 = *(v63 + 16);
  (v64)(v31, v33, v24);
  v65 = (*(v63 + 88))(v31, v24);
  v66 = v31;
  if (v65 == *MEMORY[0x277D5FEC0])
  {
    v67 = OUTLINED_FUNCTION_5_34();
    v194 = v24;
    v68(v67, v24);
    v69 = v186;
    v70 = v187;
    v71 = v31;
    v72 = v191;
    (*(v186 + 32))(v187, v71, v191);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v73 = v33;
    v74 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v74, static Logger.siriContacts);
    v75 = v184;
    (*(v69 + 16))(v184, v70, v72);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = OUTLINED_FUNCTION_24();
      v79 = v69;
      v80 = OUTLINED_FUNCTION_23();
      v197[0] = v80;
      *v78 = 136315138;
      lazy protocol witness table accessor for type RRResult and conformance RRResult(&lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate, MEMORY[0x277D5FE08], MEMORY[0x277D5FE10]);
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      v84 = v75;
      v85 = *(v79 + 8);
      v85(v84, v191);
      v70 = v187;
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, v197);
      v72 = v191;

      *(v78 + 4) = v86;
      _os_log_impl(&dword_26686A000, v76, v77, "#ReferenceResolution Found a candidate %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v80);
      OUTLINED_FUNCTION_6();
      v63 = v190;
      OUTLINED_FUNCTION_6();
    }

    else
    {

      v111 = v75;
      v85 = *(v69 + 8);
      v85(v111, v72);
    }

    v112 = v185;
    RRCandidate.entity.getter();
    v85(v70, v72);
    (*(v63 + 8))(v73, v194);
    outlined destroy of Result<TemplatingResult, Error>(v195, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
    v113 = OUTLINED_FUNCTION_12_16();
    outlined destroy of Result<TemplatingResult, Error>(v113, v114, v115);
    __swift_storeEnumTagSinglePayload(v112, 0, 1, v188);
    v116 = v112;
    return outlined init with take of RREntity?(v116, v76);
  }

  if (v65 == *MEMORY[0x277D5FED0])
  {
    v88 = OUTLINED_FUNCTION_5_34();
    v89(v88, v24);
    v76 = *v31;
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v90 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v90, static Logger.siriContacts);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_13_16(v92))
    {
      *OUTLINED_FUNCTION_30() = 0;
      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v93, v94, v95, v96, v97, 2u);
      OUTLINED_FUNCTION_7_19();
    }

    v98 = v183;
    specialized Collection.first.getter(v76, v183);

    v99 = v191;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v98, 1, v191);
    v101 = v182;
    if (EnumTagSinglePayload == 1)
    {
LABEL_19:
      v102 = OUTLINED_FUNCTION_1_40();
      v103(v102);
      outlined destroy of Result<TemplatingResult, Error>(v195, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
      v104 = OUTLINED_FUNCTION_12_16();
      outlined destroy of Result<TemplatingResult, Error>(v104, v105, v106);
      v107 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd;
      v108 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR;
      v109 = v98;
LABEL_20:
      outlined destroy of Result<TemplatingResult, Error>(v109, v107, v108);
      v110 = 1;
LABEL_40:
      __swift_storeEnumTagSinglePayload(v101, v110, 1, v188);
      v116 = v101;
      return outlined init with take of RREntity?(v116, v76);
    }

    goto LABEL_38;
  }

  if (v65 == *MEMORY[0x277D5FEC8])
  {
    v117 = OUTLINED_FUNCTION_5_34();
    v118(v117, v24);
    v76 = *v31;
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v119 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v119, static Logger.siriContacts);

    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_13_16(v121))
    {
      v122 = OUTLINED_FUNCTION_24();
      *v122 = 134217984;
      *(v122 + 4) = v76[2];

      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v123, v124, v125, v126, v127, 0xCu);
      OUTLINED_FUNCTION_7_19();
    }

    else
    {
    }

    v99 = v191;
    v101 = v180;
    v98 = v181;
    specialized Collection.first.getter(v76, v181);

    if (__swift_getEnumTagSinglePayload(v98, 1, v99) == 1)
    {
      goto LABEL_19;
    }

LABEL_38:
    RRCandidate.entity.getter();
    v147 = OUTLINED_FUNCTION_1_40();
    v148(v147);
    outlined destroy of Result<TemplatingResult, Error>(v195, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
    v149 = OUTLINED_FUNCTION_12_16();
    outlined destroy of Result<TemplatingResult, Error>(v149, v150, v151);
    (*(v186 + 8))(v98, v99);
    goto LABEL_39;
  }

  if (v65 == *MEMORY[0x277D5FED8])
  {
    v128 = OUTLINED_FUNCTION_5_34();
    v129(v128, v24);
    v76 = *v31;
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v130 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v130, static Logger.siriContacts);
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.debug.getter();
    v133 = OUTLINED_FUNCTION_13_16(v132);
    v134 = v178;
    if (v133)
    {
      *OUTLINED_FUNCTION_30() = 0;
      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v135, v136, v137, v138, v139, 2u);
      OUTLINED_FUNCTION_7_19();
    }

    v140 = v191;
    v101 = v179;
    if (!v76[2].isa)
    {

      v169 = OUTLINED_FUNCTION_1_40();
      v170(v169);
      outlined destroy of Result<TemplatingResult, Error>(v195, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
      v109 = OUTLINED_FUNCTION_12_16();
      goto LABEL_20;
    }

    isa = v76[4].isa;

    specialized Collection.first.getter(isa, v134);

    if (__swift_getEnumTagSinglePayload(v134, 1, v140) == 1)
    {
      v142 = OUTLINED_FUNCTION_1_40();
      v143(v142);
      outlined destroy of Result<TemplatingResult, Error>(v195, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
      v144 = OUTLINED_FUNCTION_12_16();
      outlined destroy of Result<TemplatingResult, Error>(v144, v145, v146);
      v107 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd;
      v108 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR;
      v109 = v134;
      goto LABEL_20;
    }

    RRCandidate.entity.getter();
    v171 = OUTLINED_FUNCTION_1_40();
    v172(v171);
    outlined destroy of Result<TemplatingResult, Error>(v195, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
    v173 = OUTLINED_FUNCTION_12_16();
    outlined destroy of Result<TemplatingResult, Error>(v173, v174, v175);
    (*(v186 + 8))(v134, v140);
LABEL_39:
    v110 = 0;
    goto LABEL_40;
  }

  if (v65 == *MEMORY[0x277D5FEE0])
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v152 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v152, static Logger.siriContacts);
    v153 = Logger.logObject.getter();
    v154 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v154))
    {
      *OUTLINED_FUNCTION_30() = 0;
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v155, v156, "#ReferenceResolution No matches found");
      OUTLINED_FUNCTION_6();
    }

    v157 = OUTLINED_FUNCTION_1_40();
    v158(v157);
    return outlined destroy of Result<TemplatingResult, Error>(v195, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v159 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v159, static Logger.siriContacts);
  (v64)(v177, v33, v24);
  v160 = Logger.logObject.getter();
  v161 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v160, v161))
  {
    v64 = OUTLINED_FUNCTION_24();
    v192 = v64;
    v194 = OUTLINED_FUNCTION_23();
    v197[0] = v194;
    *v64 = 136315138;
    lazy protocol witness table accessor for type RRResult and conformance RRResult(&lazy protocol witness table cache variable for type RRResult and conformance RRResult, MEMORY[0x277D5FEE8], MEMORY[0x277D5FEF0]);
    v162 = dispatch thunk of CustomStringConvertible.description.getter();
    v193 = v33;
    v164 = v163;
    v165 = OUTLINED_FUNCTION_13_17();
    v40(v165);
    v166 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v162, v164, v197);

    v167 = v192;
    *(v192 + 4) = v166;
    _os_log_impl(&dword_26686A000, v160, v161, "#ReferenceResolution Received unknown result type %s", v167, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v194);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_19();

    v168 = v193;
  }

  else
  {

    v176 = OUTLINED_FUNCTION_13_17();
    v40(v176);
    v168 = v33;
  }

  (v40)(v168, v64);
  outlined destroy of Result<TemplatingResult, Error>(v195, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, _ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  return (v40)(v66, v64);
}

uint64_t RRReferenceResolverProtocol.resolvePositionEntity(from:)@<X0>(char *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  USOParse.preferredUserDialogAct.getter(&v27 - v10);
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    v13 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd;
    v14 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR;
    v15 = v11;
  }

  else
  {
    v16 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
    if (!v16)
    {
      goto LABEL_9;
    }

    v17 = static RRReferenceResolverProtocol.extractPositionEntity(task:)(v16, a1, a2);
    if (!v17)
    {

      goto LABEL_9;
    }

    RRReferenceResolverProtocol.resolveEntity(referenceEntity:)(v17, a1, a2, v8);

    v18 = type metadata accessor for RREntity();
    if (__swift_getEnumTagSinglePayload(v8, 1, v18) != 1)
    {
      (*(*(v18 - 8) + 32))(a3, v8, v18);
      v24 = a3;
      v25 = 0;
      v23 = v18;
      return __swift_storeEnumTagSinglePayload(v24, v25, 1, v23);
    }

    v13 = &_s32SiriReferenceResolutionDataModel8RREntityVSgMd;
    v14 = &_s32SiriReferenceResolutionDataModel8RREntityVSgMR;
    v15 = v8;
  }

  outlined destroy of Result<TemplatingResult, Error>(v15, v13, v14);
LABEL_9:
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.siriContacts);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_26686A000, v20, v21, "#ReferenceResolution Did not resolve RREntity from UsoParse, returning nil", v22, 2u);
    MEMORY[0x26D5E3300](v22, -1, -1);
  }

  v23 = type metadata accessor for RREntity();
  v24 = a3;
  v25 = 1;
  return __swift_storeEnumTagSinglePayload(v24, v25, 1, v23);
}

uint64_t static RRReferenceResolverProtocol.extractPositionEntity(task:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v39)
  {
    goto LABEL_20;
  }

  outlined init with copy of Result<RRResult, Error>(v38, v37, &_sypSgMd, &_sypSgMR);
  v3 = type metadata accessor for UsoTask_noVerb_uso_NoEntity();
  if (OUTLINED_FUNCTION_4_29(v3, v4, v5, v3, v6))
  {

    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

    if (v36)
    {

      v7 = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter();

      if (v7)
      {

        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
        }

        v8 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_29(v8, static Logger.siriContacts);

        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = OUTLINED_FUNCTION_24();
          v12 = OUTLINED_FUNCTION_23();
          v36 = v12;
          *v11 = 136315138;
          CodeGenBase.entity.getter();
          v13 = UsoEntity.debugString.getter();
          v15 = v14;

          v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v36);

          *(v11 + 4) = v16;
          _os_log_impl(&dword_26686A000, v9, v10, "#ReferenceResolution Found positional reference, returning: %s", v11, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v12);
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_6();
        }

        v17 = CodeGenBase.entity.getter();

        goto LABEL_16;
      }
    }

    goto LABEL_19;
  }

  v18 = type metadata accessor for UsoTask_request_common_Person();
  if (OUTLINED_FUNCTION_4_29(v18, v19, v20, v18, v21))
  {

    dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
LABEL_15:

    v17 = static RRReferenceResolverProtocol.helper(person:)(v36);

LABEL_16:
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    outlined destroy of Result<TemplatingResult, Error>(v38, &_sypSgMd, &_sypSgMR);
    return v17;
  }

  v22 = type metadata accessor for UsoTask_summarise_common_Person();
  if (OUTLINED_FUNCTION_4_29(v22, v23, v24, v22, v25) || (common_Person = type metadata accessor for UsoTask_read_common_Person(), OUTLINED_FUNCTION_4_29(common_Person, v27, v28, common_Person, v29)))
  {

    dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
    goto LABEL_15;
  }

LABEL_19:
  __swift_destroy_boxed_opaque_existential_0Tm(v37);
LABEL_20:
  outlined destroy of Result<TemplatingResult, Error>(v38, &_sypSgMd, &_sypSgMR);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v30 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v30, static Logger.siriContacts);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_21_2(v32))
  {
    *OUTLINED_FUNCTION_30() = 0;
    OUTLINED_FUNCTION_7_4(&dword_26686A000, v33, v34, "#ReferenceResolution Found no positional reference, returning nil");
    OUTLINED_FUNCTION_6();
  }

  return 0;
}

uint64_t static RRReferenceResolverProtocol.helper(person:)(uint64_t a1)
{
  if (a1)
  {

    if (dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter())
    {

      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v1 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v1, static Logger.siriContacts);

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v2, v3))
      {
        v4 = OUTLINED_FUNCTION_24();
        v5 = OUTLINED_FUNCTION_23();
        v17 = v5;
        *v4 = 136315138;
        CodeGenBase.entity.getter();
        v6 = UsoEntity.debugString.getter();
        v8 = v7;

        v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v17);

        *(v4 + 4) = v9;
        _os_log_impl(&dword_26686A000, v2, v3, "#ReferenceResolution Found positional reference, returning: %s", v4, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v5);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      v10 = CodeGenBase.entity.getter();

      return v10;
    }
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v11, static Logger.siriContacts);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_21_2(v13))
  {
    *OUTLINED_FUNCTION_30() = 0;
    OUTLINED_FUNCTION_7_4(&dword_26686A000, v14, v15, "#ReferenceResolution Found no positional reference, returning nil");
    OUTLINED_FUNCTION_6();
  }

  return 0;
}

uint64_t outlined init with take of RREntity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type RRResult and conformance RRResult(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of Result<RRResult, Error>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_10_1();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_7_19()
{

  JUMPOUT(0x26D5E3300);
}

uint64_t UsoEntity_common_Person.contactId.getter()
{
  v31 = type metadata accessor for IdentifierAppBundle();
  OUTLINED_FUNCTION_1_0();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v5 = v4 - v3;
  v6 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30[0] = v30 - v13;
  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v15 = result;
  v16 = 0;
  v32 = *(result + 16);
  v30[1] = v8 + 16;
  v17 = (v1 + 8);
  while (1)
  {
    if (v32 == v16)
    {

      return 0;
    }

    if (v16 >= *(v15 + 16))
    {
      break;
    }

    (*(v8 + 16))(v12, v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, v6);
    UsoIdentifier.appBundleSemantic.getter();
    v18 = IdentifierAppBundle.rawValue.getter();
    v20 = v19;
    (*v17)(v5, v31);
    OUTLINED_FUNCTION_2_42();
    v22 = v18 == v21 && v20 == 0xE800000000000000;
    if (v22)
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    UsoIdentifier.namespace.getter();
    if (v24)
    {
      OUTLINED_FUNCTION_6_30();
      if (v22 && v25 == 0xE700000000000000)
      {

LABEL_20:

        v29 = v30[0];
        (*(v8 + 32))(v30[0], v12, v6);
        v28 = UsoIdentifier.value.getter();
        (*(v8 + 8))(v29, v6);
        return v28;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        goto LABEL_20;
      }
    }

LABEL_17:
    result = (*(v8 + 8))(v12, v6);
    ++v16;
  }

  __break(1u);
  return result;
}

uint64_t UsoEntity_common_PostalAddress.requestedAddressField.getter(uint64_t a1)
{
  v1 = 0;
  while (1)
  {
    v2 = outlined read-only object #0 of static ContactNLIntent.ContactPostalAddressField.allCases.getter[v1++ + 32];
    CodeGenBase.entity.getter();
    v3 = UsoEntity.attributes.getter();

    v4 = 0xE400000000000000;
    v5 = 2037672291;
    switch(v2)
    {
      case 1:
        v5 = 0x726F62686769656ELL;
        v4 = 0xEC000000646F6F68;
        break;
      case 2:
        v4 = 0xEA00000000006564;
        v5 = 0x6F436C6174736F70;
        break;
      case 3:
        v4 = 0xE800000000000000;
        v5 = 0x65636E69766F7270;
        break;
      case 4:
        v4 = 0xE600000000000000;
        v5 = 0x746565727473;
        break;
      default:
        break;
    }

    if (!*(v3 + 16))
    {

      goto LABEL_17;
    }

    v6 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v4);
    v8 = v7;

    if (v8)
    {
      break;
    }

LABEL_17:

    if (v1 == 5)
    {
      return 5;
    }
  }

  v9 = *(*(v3 + 56) + 8 * v6);

  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  if (v9 < 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x26D5E2AA0](v13);
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_11:
  if ((v9 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5E29D0](0, v9);
LABEL_14:

    dispatch thunk of UsoValue.getAsPrimitiveValueString()();
    v12 = v11;

    if (!v12)
    {
      return v2;
    }

    goto LABEL_17;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

unint64_t UsoEntity_common_Person.contactIds.getter()
{
  v57 = type metadata accessor for IdentifierAppBundle();
  OUTLINED_FUNCTION_1_0();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v5 = v4 - v3;
  v60 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v55 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v53 = &v50 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - v13;
  result = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  v16 = 0;
  if (result)
  {
    v17 = result;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v58 = *(v17 + 16);
  v59 = v7 + 16;
  v56 = (v1 + 8);
  v52 = (v7 + 32);
  v18 = (v7 + 8);
  v54 = MEMORY[0x277D84F90];
  while (v58 != v16)
  {
    if (v16 >= *(v17 + 16))
    {
      __break(1u);
      return result;
    }

    v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v20 = *(v7 + 72);
    (*(v7 + 16))(v14, v17 + v19 + v20 * v16, v60);
    UsoIdentifier.appBundleSemantic.getter();
    v21 = IdentifierAppBundle.rawValue.getter();
    v23 = v22;
    (*v56)(v5, v57);
    OUTLINED_FUNCTION_2_42();
    v25 = v21 == v24 && v23 == 0xE800000000000000;
    if (v25)
    {

LABEL_14:
      UsoIdentifier.namespace.getter();
      if (!v27)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_6_30();
      if (v25 && v28 == 0xE700000000000000)
      {
      }

      else
      {
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v30 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v31 = *v52;
      (*v52)(v53, v14, v60);
      v32 = v54;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v32;
      v51 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 16) + 1, 1);
        v32 = v61;
      }

      v35 = *(v32 + 16);
      v34 = *(v32 + 24);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v54 = v35 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v34 > 1, v35 + 1, 1);
        v36 = v54;
        v32 = v61;
      }

      ++v16;
      *(v32 + 16) = v36;
      v54 = v32;
      result = (v51)(v32 + v19 + v35 * v20, v53, v60);
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
        goto LABEL_14;
      }

LABEL_20:
      result = (*v18)(v14, v60);
      ++v16;
    }
  }

  v37 = *(v54 + 16);
  if (v37)
  {
    v61 = MEMORY[0x277D84F90];
    v38 = v54;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
    v39 = v61;
    v40 = v38 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v58 = *(v7 + 72);
    v41 = *(v7 + 16);
    do
    {
      v42 = v55;
      v43 = v60;
      v41(v55, v40, v60);
      v44 = UsoIdentifier.value.getter();
      v46 = v45;
      (*v18)(v42, v43);
      v61 = v39;
      v48 = *(v39 + 16);
      v47 = *(v39 + 24);
      if (v48 >= v47 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1);
        v39 = v61;
      }

      *(v39 + 16) = v48 + 1;
      v49 = v39 + 16 * v48;
      *(v49 + 32) = v44;
      *(v49 + 40) = v46;
      v40 += v58;
      --v37;
    }

    while (v37);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v39;
}

uint64_t UsoEntity_common_Person.isGetAttributeIntent.getter(uint64_t a1)
{
  if (dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter() || dispatch thunk of UsoEntity_common_Person.structuredName.getter() || dispatch thunk of UsoEntity_common_Person.age.getter() || (result = dispatch thunk of UsoEntity_common_Person.associatedDate.getter()) != 0)
  {

    return 1;
  }

  return result;
}

uint64_t static UsoEntity.from(_:)(uint64_t a1)
{
  return static UsoEntity.from(_:)(a1, MEMORY[0x277D5F300], static UsoEntityBuilder_common_PostalAddress.from(_:));
}

{
  return static UsoEntity.from(_:)(a1, MEMORY[0x277D5F228], static UsoEntityBuilder_common_PhoneNumber.from(_:));
}

{
  return static UsoEntity.from(_:)(a1, MEMORY[0x277D5F280], static UsoEntityBuilder_common_EmailAddress.from(_:));
}

uint64_t static UsoEntity.from(_:)(uint64_t a1, void (*a2)(void), void (*a3)(uint64_t))
{
  a2(0);
  v4 = OUTLINED_FUNCTION_73();
  a3(v4);
  v5 = MEMORY[0x26D5E0C50]();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = type metadata accessor for ContactsError(0);
    _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_2(&lazy protocol witness table cache variable for type ContactsError and conformance ContactsError, type metadata accessor for ContactsError);
    OUTLINED_FUNCTION_73();
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
    v7 = _typeName(_:qualified:)();
    OUTLINED_FUNCTION_3_28(v7, v8);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v6;
}

uint64_t ContactAttribute.asUsoBuilder.getter()
{
  if (one-time initialization token for transformer != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A15ContactsIntents16ContactAttributeC0A8Ontology032UsoEntityBuilderProtocol_common_F7Address_pSgGMd, &_s13SiriUtilities11TransformerVy0A15ContactsIntents16ContactAttributeC0A8Ontology032UsoEntityBuilderProtocol_common_F7Address_pSgGMR);
  __swift_project_value_buffer(v1, static Transformer<>.transformer);
  OUTLINED_FUNCTION_73();
  v2 = Transformer.transform.getter();
  v5 = v0;
  v2(&v4, &v5);

  return v4;
}

uint64_t static UsoEntity.from(_:_:)(void *a1, void *a2)
{
  v33 = type metadata accessor for ContactsError(0);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8();
  v5 = v4 - v3;
  v34 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  type metadata accessor for UsoEntityBuilder_common_Person();
  swift_allocObject();
  v12 = UsoEntityBuilder_common_Person.init()();
  type metadata accessor for UsoEntityBuilder_common_PersonName();
  swift_allocObject();
  UsoEntityBuilder_common_PersonName.init()();
  v13 = [a1 nickname];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  dispatch thunk of UsoEntityBuilder_common_PersonName.setNickName(value:)();

  v16 = [a1 givenName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_5_35();

  OUTLINED_FUNCTION_1_41();
  dispatch thunk of UsoEntityBuilder_common_PersonName.setGivenName(value:)();

  v17 = [a1 familyName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_5_35();

  OUTLINED_FUNCTION_1_41();
  dispatch thunk of UsoEntityBuilder_common_PersonName.setFamilyName(value:)();

  v18 = [a1 middleName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_5_35();

  OUTLINED_FUNCTION_1_41();
  dispatch thunk of UsoEntityBuilder_common_PersonName.setMiddleName(value:)();

  v19 = [a1 namePrefix];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_5_35();

  OUTLINED_FUNCTION_1_41();
  dispatch thunk of UsoEntityBuilder_common_PersonName.setNamePrefix(value:)();

  v20 = [a1 nameSuffix];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_5_35();

  OUTLINED_FUNCTION_1_41();
  dispatch thunk of UsoEntityBuilder_common_PersonName.setNamePostfix(value:)();

  dispatch thunk of UsoEntityBuilder_common_Person.setStructuredName(value:)();

  CNContact.formattedFullName.getter();
  dispatch thunk of UsoEntityBuilder_common_Person.setName(value:)();

  if (dispatch thunk of UsoEntityBuilder_common_Person.name.getter())
  {
    v21 = [a1 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v22;

    OUTLINED_FUNCTION_2_42();
    UsoIdentifier.init(value:appBundleId:namespace:)();
    dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();

    (*(v7 + 8))(v11, v34);
  }

  if (a2)
  {
    v23 = a2;
    v24 = ContactAttribute.asUsoBuilder.getter();
    if (v24)
    {
      v15 = v24;
      dispatch thunk of UsoEntityBuilder_common_Person.setSpecifyingContactAddress(value:)();
    }

    else
    {
    }
  }

  v25 = MEMORY[0x26D5E0C50](v12);
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v27 = type metadata accessor for TransformationError();
    _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_2(&lazy protocol witness table cache variable for type TransformationError and conformance TransformationError, MEMORY[0x277D61E08]);
    swift_allocError();
    v29 = v28;
    type metadata accessor for CNContact();
    v30 = _typeName(_:qualified:)();
    OUTLINED_FUNCTION_3_28(v30, v31);
    swift_storeEnumTagMultiPayload();
    v26 = v5;
    ContactsError.errorDescription.getter();
    OUTLINED_FUNCTION_5_35();
    outlined destroy of ContactsError(v5);
    *v29 = v5;
    v29[1] = v15;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D61E00], v27);
    swift_willThrow();
  }

  return v26;
}

uint64_t _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_73();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *OUTLINED_FUNCTION_3_28(uint64_t a1, uint64_t a2)
{
  *v2 = a1;
  v2[1] = a2;
  v2[2] = 0x7469746E456F7355;
  v2[3] = 0xE900000000000079;
  return v2;
}

uint64_t specialized SiriKitContactIntent.me.getter()
{
  v1 = [v0 isMe];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSNumber();
  v3 = 1;
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v5 = static NSObject.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  return v3;
}

{
  type metadata accessor for NSNumber();
  isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
  v1 = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v2 = static NSObject.== infix(_:_:)();

  return v2 & 1;
}

id ModifyContactAttributeIntentHandler.__allocating_init(contactService:contactResolver:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  v8 = a1[3];
  v7 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = specialized ModifyContactAttributeIntentHandler.init(contactService:contactResolver:)(v11, v17, v6, v8, v13, v7, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v19;
}

void *specialized BaseIntentHandler.meCard.getter()
{
  v1 = v0;
  v2 = direct field offset for BaseIntentHandler.$__lazy_storage_$_meCard;
  v3 = *(v0 + direct field offset for BaseIntentHandler.$__lazy_storage_$_meCard);
  v4 = v3;
  if (v3 == 1)
  {
    outlined init with copy of DeviceState(v1 + direct field offset for BaseIntentHandler.contactService, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v4 = (*(v6 + 24))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    v7 = *(v1 + v2);
    *(v1 + v2) = v4;
    v8 = v4;
    outlined consume of CNContact??(v7);
  }

  outlined copy of CNContact??(v3);
  return v4;
}

id _s19SiriContactsIntents17BaseIntentHandlerC18checkPrerequisites10resultType11needsMeCardqd__Sgqd__m_SbtSo24INIntentResolutionResultCRbd__lFAA010GetContactE0C_AA0qrE8ResponseCAA0qra7MatchesoP0CAOTtg5(char a1)
{
  v2 = v1;
  type metadata accessor for GetContactSiriMatchesResolutionResult();
  outlined init with copy of DeviceState(v1 + direct field offset for BaseIntentHandler.contactService, v20);
  v4 = v21;
  v5 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v6 = (*(v5 + 16))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  if (v6)
  {
    if ((a1 & 1) == 0)
    {
LABEL_5:
      result = 0;
      *(v2 + direct field offset for BaseIntentHandler.passedPrereqs) = 1;
      return result;
    }

    v7 = specialized BaseIntentHandler.meCard.getter();
    if (v7)
    {

      goto LABEL_5;
    }

    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.siriContacts);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000266970E80, v20);
      _os_log_impl(&dword_26686A000, v16, v17, "[%s] MeCard was not found and user requested info about their MeCard or relationships. Returning unsupported due to missingMeCard.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x26D5E3300](v19, -1, -1);
      MEMORY[0x26D5E3300](v18, -1, -1);
    }

    v14 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  }

  else
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.siriContacts);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000266970E80, v20);
      _os_log_impl(&dword_26686A000, v10, v11, "[%s] Siri isn't authorized to access Contacts app data, need to prompt the user.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x26D5E3300](v13, -1, -1);
      MEMORY[0x26D5E3300](v12, -1, -1);
    }

    v14 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  }

  return v14;
}

id _s19SiriContactsIntents17BaseIntentHandlerC18checkPrerequisites10resultType11needsMeCardqd__Sgqd__m_SbtSo24INIntentResolutionResultCRbd__lFAA019GetContactAttributeE0C_AA0qrsE8ResponseCAA0qrsa7MatchesoP0CAOTtg5(char a1)
{
  v2 = v1;
  type metadata accessor for GetContactAttributeSiriMatchesResolutionResult();
  outlined init with copy of DeviceState(v1 + direct field offset for BaseIntentHandler.contactService, v20);
  v4 = v21;
  v5 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v6 = (*(v5 + 16))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  if (v6)
  {
    if ((a1 & 1) == 0)
    {
LABEL_5:
      result = 0;
      *(v2 + direct field offset for BaseIntentHandler.passedPrereqs) = 1;
      return result;
    }

    v7 = specialized BaseIntentHandler.meCard.getter();
    if (v7)
    {

      goto LABEL_5;
    }

    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.siriContacts);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000026696F160, v20);
      _os_log_impl(&dword_26686A000, v16, v17, "[%s] MeCard was not found and user requested info about their MeCard or relationships. Returning unsupported due to missingMeCard.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x26D5E3300](v19, -1, -1);
      MEMORY[0x26D5E3300](v18, -1, -1);
    }

    v14 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  }

  else
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.siriContacts);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000026696F160, v20);
      _os_log_impl(&dword_26686A000, v10, v11, "[%s] Siri isn't authorized to access Contacts app data, need to prompt the user.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x26D5E3300](v13, -1, -1);
      MEMORY[0x26D5E3300](v12, -1, -1);
    }

    v14 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  }

  return v14;
}

id _s19SiriContactsIntents17BaseIntentHandlerC18checkPrerequisites10resultType11needsMeCardqd__Sgqd__m_SbtSo24INIntentResolutionResultCRbd__lFAA022ModifyContactAttributeE0C_AA0qrsE8ResponseCAA0qrs7Relateda7MatchesoP0CAOTtg5Tm(char a1, void (*a2)(void))
{
  v3 = v2;
  a2(0);
  outlined init with copy of DeviceState(v2 + direct field offset for BaseIntentHandler.contactService, v29);
  v5 = v30;
  v6 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v7 = (*(v6 + 16))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);
  if (v7)
  {
    if ((a1 & 1) == 0)
    {
LABEL_5:
      result = 0;
      *(v3 + direct field offset for BaseIntentHandler.passedPrereqs) = 1;
      return result;
    }

    v8 = specialized BaseIntentHandler.meCard.getter();
    if (v8)
    {

      goto LABEL_5;
    }

    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v20 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v20, static Logger.siriContacts);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_13_16(v22))
    {
      v23 = OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_68_4();
      *v23 = 136315138;
      OUTLINED_FUNCTION_7_20();
      *(v23 + 4) = OUTLINED_FUNCTION_36_8(v24, v25, v26);
      OUTLINED_FUNCTION_24_11(&dword_26686A000, v27, v28, "[%s] MeCard was not found and user requested info about their MeCard or relationships. Returning unsupported due to missingMeCard.");
      OUTLINED_FUNCTION_11_19();
      OUTLINED_FUNCTION_6();
    }

    v19 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  }

  else
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v10 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v10, static Logger.siriContacts);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_13_16(v12))
    {
      v13 = OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_68_4();
      *v13 = 136315138;
      OUTLINED_FUNCTION_7_20();
      *(v13 + 4) = OUTLINED_FUNCTION_36_8(v14, v15, v16);
      OUTLINED_FUNCTION_24_11(&dword_26686A000, v17, v18, "[%s] Siri isn't authorized to access Contacts app data, need to prompt the user.");
      OUTLINED_FUNCTION_11_19();
      OUTLINED_FUNCTION_6();
    }

    v19 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  }

  return v19;
}

void specialized BaseIntentHandler.resolveContacts(intent:)(void (**a1)(char *, uint64_t))
{
  v209 = type metadata accessor for PersonNameComponents();
  v188 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v208 = &v181 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContactSiriMatchesResolutionResult = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA7ContactVGMd, &_s13SiriInference14RecommendationOyAA7ContactVGMR);
  v186 = *(ContactSiriMatchesResolutionResult - 8);
  MEMORY[0x28223BE20](ContactSiriMatchesResolutionResult);
  v215 = &v181 - v3;
  v4 = type metadata accessor for ContactQuery();
  v204 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v213 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v205 = &v181 - v7;
  v201 = type metadata accessor for RecommenderType();
  v200 = *(v201 - 1);
  MEMORY[0x28223BE20](v201);
  v199 = &v181 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for SearchSuggestedContacts();
  v196 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v198 = &v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContactResolverDomain();
  MEMORY[0x28223BE20](v10 - 8);
  v195 = &v181 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v12 - 8);
  v194 = &v181 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v193 = &v181 - v15;
  v16 = type metadata accessor for ContactResolverConfig();
  v17 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v206 = &v181 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for Contact();
  v19 = *(v218 - 8);
  v20 = MEMORY[0x28223BE20](v218);
  v207 = &v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v185 = &v181 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v184 = &v181 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v183 = &v181 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v181 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v181 - v31;
  v202 = a1;
  GetContactIntent.siriInferenceContact.getter();
  if (one-time initialization token for siriContacts != -1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v33 = type metadata accessor for Logger();
    v34 = __swift_project_value_buffer(v33, static Logger.siriContacts);
    v210 = *(v19 + 16);
    v211 = v19 + 16;
    v210(v30, v32, v218);
    v212 = v34;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    v37 = os_log_type_enabled(v35, v36);
    v217 = v19;
    v192 = v16;
    v191 = v17;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v219 = v39;
      *v38 = 136315394;
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000266970E80, &v219);
      *(v38 + 12) = 2080;
      lazy protocol witness table accessor for type ContactQuery and conformance ContactQuery(&lazy protocol witness table cache variable for type Contact and conformance Contact, MEMORY[0x277D56178], MEMORY[0x277D56198]);
      v40 = v4;
      v41 = v218;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v32;
      v45 = v44;
      v214 = *(v217 + 8);
      v214(v30, v41);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v45, &v219);
      v4 = v40;
      v32 = v43;

      *(v38 + 14) = v46;
      _os_log_impl(&dword_26686A000, v35, v36, "[%s] Built skeleton contact for resolution: %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5E3300](v39, -1, -1);
      MEMORY[0x26D5E3300](v38, -1, -1);
    }

    else
    {

      v214 = *(v19 + 8);
      v47 = (v214)(v30, v218);
    }

    v48 = Contact.isEmpty.getter(v47);
    v49 = v204;
    v50 = v205;
    if (v48)
    {
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v219 = v54;
        *v53 = 136315138;
        *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000266970E80, &v219);
        _os_log_impl(&dword_26686A000, v51, v52, "[%s] No search terms provided to resolve contact with, returning needsValue.", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v54);
        MEMORY[0x26D5E3300](v54, -1, -1);
        MEMORY[0x26D5E3300](v53, -1, -1);
      }

      type metadata accessor for GetContactSiriMatchesResolutionResult();
      [swift_getObjCClassFromMetadata() needsValue];
LABEL_9:
      v214(v32, v218);
      return;
    }

    v55 = [v202 intentId];
    v189 = v4;
    if (v55)
    {
      v56 = v55;
      v182 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v182 = static String.EMPTY.getter();
    }

    v57 = type metadata accessor for ContactHandleTypePreference();
    __swift_storeEnumTagSinglePayload(v193, 1, 1, v57);
    static Locale.current.getter();
    static ContactResolverDomain.all.getter();
    (*(v196 + 104))(v198, *MEMORY[0x277D56148], v197);
    (*(v200 + 104))(v199, *MEMORY[0x277D560D0], v201);
    ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
    Contact.asContactQuery.getter(v50);
    v58 = v213;
    v59 = v189;
    v201 = *(v49 + 16);
    v201(v213, v50, v189);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    v62 = os_log_type_enabled(v60, v61);
    v190 = v32;
    v187 = "ResolveModifyRelationship";
    if (v62)
    {
      v63 = v58;
      v64 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      v219 = v199;
      *v64 = 136315394;
      *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000266970E80, &v219);
      *(v64 + 12) = 2080;
      lazy protocol witness table accessor for type ContactQuery and conformance ContactQuery(&lazy protocol witness table cache variable for type ContactQuery and conformance ContactQuery, MEMORY[0x277D55FF8], MEMORY[0x277D56000]);
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      v200 = *(v49 + 8);
      (v200)(v63, v59);
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v219);

      *(v64 + 14) = v68;
      _os_log_impl(&dword_26686A000, v60, v61, "[%s] Converted skeleton contact to ContactQuery: %s", v64, 0x16u);
      v69 = v199;
      swift_arrayDestroy();
      v50 = v205;
      MEMORY[0x26D5E3300](v69, -1, -1);
      MEMORY[0x26D5E3300](v64, -1, -1);
    }

    else
    {

      v200 = *(v49 + 8);
      (v200)(v58, v59);
    }

    outlined init with copy of DeviceState(v203 + direct field offset for BaseIntentHandler.contactResolver, &v219);
    v70 = v220;
    v71 = v221;
    __swift_project_boxed_opaque_existential_1(&v219, v220);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
    v72 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_266966D90;
    v201((v73 + v72), v50, v59);
    v74 = (*(v71 + 8))(v73, v206, v70, v71);

    __swift_destroy_boxed_opaque_existential_0Tm(&v219);

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v219 = v78;
      *v77 = 136315394;
      *(v77 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v187 | 0x8000000000000000, &v219);
      *(v77 + 12) = 2080;
      v79 = MEMORY[0x26D5E2610](v74, ContactSiriMatchesResolutionResult);
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, &v219);

      *(v77 + 14) = v81;
      _os_log_impl(&dword_26686A000, v75, v76, "[%s] ContactResolver recommendations: %s", v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5E3300](v78, -1, -1);
      MEMORY[0x26D5E3300](v77, -1, -1);
    }

    v32 = v190;
    v19 = *(v74 + 16);
    if (!v19)
    {
      break;
    }

    v213 = *(v186 + 16);
    v82 = (*(v186 + 80) + 32) & ~*(v186 + 80);
    v201 = v74;
    v17 = v74 + v82;
    v4 = *(v186 + 72);
    v32 = (v186 + 16);
    v83 = (v186 + 8);
    v84 = MEMORY[0x277D84F90];
    while (1)
    {
      v86 = v215;
      v85 = ContactSiriMatchesResolutionResult;
      (v213)(v215, v17, ContactSiriMatchesResolutionResult);
      v30 = Recommendation<A>.assignConfidence()();
      (*v83)(v86, v85);
      v87 = *(v30 + 2);
      v16 = *(v84 + 16);
      if (__OFADD__(v16, v87))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v16 + v87 > *(v84 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v84 = v88;
      }

      if (*(v30 + 2))
      {
        if ((*(v84 + 24) >> 1) - *(v84 + 16) < v87)
        {
          goto LABEL_85;
        }

        swift_arrayInitWithCopy();

        if (v87)
        {
          v89 = *(v84 + 16);
          v90 = __OFADD__(v89, v87);
          v91 = v89 + v87;
          if (v90)
          {
            goto LABEL_87;
          }

          *(v84 + 16) = v91;
        }
      }

      else
      {

        if (v87)
        {
          goto LABEL_84;
        }
      }

      v17 += v4;
      if (!--v19)
      {

        v32 = v190;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
  }

  v84 = MEMORY[0x277D84F90];
LABEL_33:

  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.debug.getter();
  v94 = os_log_type_enabled(v92, v93);
  v95 = v187;
  if (v94)
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v219 = v97;
    *v96 = 136315394;
    *(v96 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v95 | 0x8000000000000000, &v219);
    *(v96 + 12) = 2048;
    *(v96 + 14) = *(v84 + 16);

    _os_log_impl(&dword_26686A000, v92, v93, "[%s] ContactResolver weighted recommendations count: %ld", v96, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v97);
    MEMORY[0x26D5E3300](v97, -1, -1);
    MEMORY[0x26D5E3300](v96, -1, -1);
  }

  else
  {
  }

  v19 = *(v84 + 16);
  if (v19 == 1)
  {
    v104 = specialized BaseIntentHandler.meCard.getter();
    if (!v104)
    {
LABEL_75:
      v157 = Logger.logObject.getter();
      v158 = static os_log_type_t.debug.getter();
      v159 = os_log_type_enabled(v157, v158);
      v160 = v217;
      if (v159)
      {
        v161 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v219 = v162;
        *v161 = 136315138;
        *(v161 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v95 | 0x8000000000000000, &v219);
        _os_log_impl(&dword_26686A000, v157, v158, "[%s] 1 recommendation returned. Returning success.", v161, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v162);
        MEMORY[0x26D5E3300](v162, -1, -1);
        MEMORY[0x26D5E3300](v161, -1, -1);
      }

      ContactSiriMatchesResolutionResult = type metadata accessor for GetContactSiriMatchesResolutionResult();
      v215 = type metadata accessor for SiriMatch();
      if (*(v84 + 16))
      {
        v163 = (*(v160 + 80) + 32) & ~*(v160 + 80);
        v164 = v184;
        v165 = v218;
        v166 = v210;
        v210(v184, (v84 + v163), v218);
        v213 = Contact.id.getter();
        v168 = v167;
        v169 = v214;
        v214(v164, v165);
        v170 = v185;
        v166(v185, v84 + v163, v165);

        v171 = v208;
        PersonNameComponents.init()();
        Contact.namePrefix.getter();
        PersonNameComponents.namePrefix.setter();
        Contact.givenName.getter();
        PersonNameComponents.givenName.setter();
        Contact.middleName.getter();
        PersonNameComponents.middleName.setter();
        Contact.familyName.getter();
        PersonNameComponents.familyName.setter();
        Contact.nameSuffix.getter();
        PersonNameComponents.nameSuffix.setter();
        v172 = objc_opt_self();
        isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v174 = [v172 localizedStringFromPersonNameComponents:isa style:2 options:0];

        v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v177 = v176;

        (*(v188 + 8))(v171, v209);
        v169(v170, v165);
        v178 = SiriMatch.__allocating_init(identifier:fullName:)(v213, v168, v175, v177);
        static SiriMatchResolutionResult.success(with:)(v178);

        (v200)(v205, v189);
        (*(v191 + 8))(v206, v192);
        v169(v190, v165);
        return;
      }

      __break(1u);
      goto LABEL_90;
    }

    v105 = v104;
    v106 = [v104 identifier];
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = v108;

    if (!*(v84 + 16))
    {
LABEL_90:
      __break(1u);
      return;
    }

    v110 = v218;
    v111 = v183;
    v210(v183, (v84 + ((*(v217 + 80) + 32) & ~*(v217 + 80))), v218);
    v112 = Contact.id.getter();
    v114 = v113;
    v214(v111, v110);
    if (v107 == v112 && v109 == v114)
    {

      v117 = v202;
    }

    else
    {
      v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v117 = v202;
      if ((v116 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    v155 = Int._bridgeToObjectiveC()().super.super.isa;
    v156 = MEMORY[0x26D5E2470](1699574633, 0xE400000000000000);
    [v117 setValue:v155 forProperty:v156];

    v105 = v156;
LABEL_74:

    goto LABEL_75;
  }

  if (!v19)
  {

    v98 = *(Contact.contactRelations.getter() + 16);

    if (v98)
    {
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v219 = v102;
        *v101 = 136315138;
        *(v101 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v95 | 0x8000000000000000, &v219);
        _os_log_impl(&dword_26686A000, v99, v100, "[%s] No recommendations returned for requested relationship. Returning unsupported.", v101, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v102);
        MEMORY[0x26D5E3300](v102, -1, -1);
        MEMORY[0x26D5E3300](v101, -1, -1);
      }

      type metadata accessor for GetContactSiriMatchesResolutionResult();
      v103 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    }

    else
    {
      v146 = Contact.organizationName.getter();
      v148 = v147;

      if ((v148 & 0x2000000000000000) != 0)
      {
        v149 = HIBYTE(v148) & 0xF;
      }

      else
      {
        v149 = v146 & 0xFFFFFFFFFFFFLL;
      }

      v150 = Logger.logObject.getter();
      v151 = static os_log_type_t.debug.getter();
      v152 = os_log_type_enabled(v150, v151);
      if (v149)
      {
        if (v152)
        {
          v153 = swift_slowAlloc();
          v154 = swift_slowAlloc();
          v219 = v154;
          *v153 = 136315138;
          *(v153 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v95 | 0x8000000000000000, &v219);
          _os_log_impl(&dword_26686A000, v150, v151, "[%s] No recommendations returned for requested company. Returning unsupported.", v153, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v154);
          MEMORY[0x26D5E3300](v154, -1, -1);
          MEMORY[0x26D5E3300](v153, -1, -1);
        }

        type metadata accessor for GetContactSiriMatchesResolutionResult();
        v103 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
      }

      else
      {
        if (v152)
        {
          v179 = swift_slowAlloc();
          v180 = swift_slowAlloc();
          v219 = v180;
          *v179 = 136315138;
          *(v179 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v95 | 0x8000000000000000, &v219);
          _os_log_impl(&dword_26686A000, v150, v151, "[%s] No recommendations returned. Returning unsupported.", v179, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v180);
          MEMORY[0x26D5E3300](v180, -1, -1);
          MEMORY[0x26D5E3300](v179, -1, -1);
        }

        type metadata accessor for GetContactSiriMatchesResolutionResult();
        v103 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
      }
    }

    v103;
    (v200)(v205, v189);
    (*(v191 + 8))(v206, v192);
    goto LABEL_9;
  }

  v213 = objc_opt_self();
  v118 = (v84 + ((*(v217 + 80) + 32) & ~*(v217 + 80)));
  v203 = *(v217 + 72);
  v202 = (v188 + 8);
  v215 = (v217 + 8);
  v16 = MEMORY[0x277D84F90];
  v119 = v207;
  v120 = v218;
  do
  {
    v210(v119, v118, v120);
    v121 = Contact.id.getter();
    ContactSiriMatchesResolutionResult = v122;
    v217 = v121;
    v123 = v208;
    PersonNameComponents.init()();
    Contact.namePrefix.getter();
    PersonNameComponents.namePrefix.setter();
    Contact.givenName.getter();
    PersonNameComponents.givenName.setter();
    Contact.middleName.getter();
    PersonNameComponents.middleName.setter();
    Contact.familyName.getter();
    PersonNameComponents.familyName.setter();
    Contact.nameSuffix.getter();
    PersonNameComponents.nameSuffix.setter();
    v124 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v125 = [v213 localizedStringFromPersonNameComponents:v124 style:2 options:0];

    v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v127;

    (*v202)(v123, v209);
    v214(v119, v120);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
      v16 = v132;
    }

    v129 = v16[2];
    v128 = v16[3];
    if (v129 >= v128 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v128 > 1, v129 + 1, 1, v16);
      v16 = v133;
    }

    v16[2] = v129 + 1;
    v130 = &v16[4 * v129];
    v131 = ContactSiriMatchesResolutionResult;
    v130[4] = v217;
    v130[5] = v131;
    v130[6] = v126;
    v130[7] = v17;
    v118 += v203;
    --v19;
  }

  while (v19);

  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v219 = v17;
    *v136 = 136315394;
    *(v136 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v187 | 0x8000000000000000, &v219);
    *(v136 + 12) = 2080;
    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    v138 = MEMORY[0x26D5E2610](v16, v137);
    v19 = v139;
    v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v139, &v219);

    *(v136 + 14) = v140;
    _os_log_impl(&dword_26686A000, v134, v135, "[%s] Multiple recommendations returned. Returning disambiguation of %s.", v136, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5E3300](v17, -1, -1);
    MEMORY[0x26D5E3300](v136, -1, -1);
  }

  v141 = MEMORY[0x277D84F90];
  v32 = 0;
  v219 = MEMORY[0x277D84F90];
  v30 = v16[2];
  v4 = (v16 + 7);
  while (v30 != v32)
  {
    if (v32 >= v16[2])
    {
      goto LABEL_86;
    }

    v143 = *(v4 - 8);
    v142 = *v4;
    v145 = *(v4 - 24);
    v144 = *(v4 - 16);
    v19 = type metadata accessor for SiriMatch();

    SiriMatch.__allocating_init(identifier:fullName:)(v145, v144, v143, v142);
    MEMORY[0x26D5E25E0]();
    v17 = *((v219 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17 >= *((v219 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v141 = v219;
    v4 += 32;
    ++v32;
  }

  type metadata accessor for GetContactSiriMatchesResolutionResult();
  static SiriMatchResolutionResult.disambiguation(with:)(v141);

  (v200)(v205, v189);
  (*(v191 + 8))(v206, v192);
  v214(v190, v218);
}

{
  v210 = type metadata accessor for PersonNameComponents();
  v189 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v209 = &v182 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA7ContactVGMd, &_s13SiriInference14RecommendationOyAA7ContactVGMR);
  v187 = *(v217 - 8);
  MEMORY[0x28223BE20](v217);
  v216 = &v182 - v3;
  v4 = type metadata accessor for ContactQuery();
  v205 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v214 = &v182 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v206 = &v182 - v7;
  v202 = type metadata accessor for RecommenderType();
  v201 = *(v202 - 1);
  MEMORY[0x28223BE20](v202);
  v200 = &v182 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for SearchSuggestedContacts();
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v199 = &v182 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContactResolverDomain();
  MEMORY[0x28223BE20](v10 - 8);
  v196 = &v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v12 - 8);
  v195 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v194 = &v182 - v15;
  v16 = type metadata accessor for ContactResolverConfig();
  v17 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v207 = &v182 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for Contact();
  v19 = *(v219 - 8);
  v20 = MEMORY[0x28223BE20](v219);
  v208 = &v182 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v186 = &v182 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v185 = &v182 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v184 = &v182 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v182 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v182 - v31;
  v203 = a1;
  ModifyContactAttributeIntent.siriInferenceContact.getter();
  if (one-time initialization token for siriContacts != -1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v33 = type metadata accessor for Logger();
    v34 = __swift_project_value_buffer(v33, static Logger.siriContacts);
    v211 = *(v19 + 16);
    v212 = v19 + 16;
    v211(v30, v32, v219);
    v213 = v34;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    v37 = os_log_type_enabled(v35, v36);
    v218 = v19;
    v193 = v16;
    v192 = v17;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v220 = v39;
      *v38 = 136315394;
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266970710, &v220);
      *(v38 + 12) = 2080;
      lazy protocol witness table accessor for type ContactQuery and conformance ContactQuery(&lazy protocol witness table cache variable for type Contact and conformance Contact, MEMORY[0x277D56178], MEMORY[0x277D56198]);
      v40 = v4;
      v41 = v219;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v32;
      v45 = v44;
      v215 = *(v218 + 8);
      v215(v30, v41);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v45, &v220);
      v4 = v40;
      v32 = v43;

      *(v38 + 14) = v46;
      _os_log_impl(&dword_26686A000, v35, v36, "[%s] Built skeleton contact for resolution: %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5E3300](v39, -1, -1);
      MEMORY[0x26D5E3300](v38, -1, -1);
    }

    else
    {

      v215 = *(v19 + 8);
      v47 = (v215)(v30, v219);
    }

    v48 = Contact.isEmpty.getter(v47);
    v49 = v205;
    v50 = v206;
    if (v48)
    {
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v220 = v54;
        *v53 = 136315138;
        *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266970710, &v220);
        _os_log_impl(&dword_26686A000, v51, v52, "[%s] No search terms provided to resolve contact with, returning needsValue.", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v54);
        MEMORY[0x26D5E3300](v54, -1, -1);
        MEMORY[0x26D5E3300](v53, -1, -1);
      }

      type metadata accessor for ModifyContactAttributeRelatedSiriMatchesResolutionResult();
      [swift_getObjCClassFromMetadata() needsValue];
LABEL_9:
      v215(v32, v219);
      return;
    }

    v55 = [v203 intentId];
    v190 = v4;
    if (v55)
    {
      v56 = v55;
      v183 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v183 = static String.EMPTY.getter();
    }

    v57 = v194;
    static ContactHandleTypePreference.preferPhone.getter();
    v58 = type metadata accessor for ContactHandleTypePreference();
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v58);
    static Locale.current.getter();
    static ContactResolverDomain.all.getter();
    (*(v197 + 104))(v199, *MEMORY[0x277D56148], v198);
    (*(v201 + 104))(v200, *MEMORY[0x277D560D0], v202);
    ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
    Contact.asContactQuery.getter(v50);
    v59 = v214;
    v60 = v190;
    v202 = *(v49 + 16);
    v202(v214, v50, v190);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    v63 = os_log_type_enabled(v61, v62);
    v191 = v32;
    v188 = "ortedValueOutput";
    if (v63)
    {
      v64 = v59;
      v65 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      v220 = v200;
      *v65 = 136315394;
      *(v65 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266970710, &v220);
      *(v65 + 12) = 2080;
      lazy protocol witness table accessor for type ContactQuery and conformance ContactQuery(&lazy protocol witness table cache variable for type ContactQuery and conformance ContactQuery, MEMORY[0x277D55FF8], MEMORY[0x277D56000]);
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      v201 = *(v49 + 8);
      (v201)(v64, v60);
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, &v220);

      *(v65 + 14) = v69;
      _os_log_impl(&dword_26686A000, v61, v62, "[%s] Converted skeleton contact to ContactQuery: %s", v65, 0x16u);
      v70 = v200;
      swift_arrayDestroy();
      v50 = v206;
      MEMORY[0x26D5E3300](v70, -1, -1);
      MEMORY[0x26D5E3300](v65, -1, -1);
    }

    else
    {

      v201 = *(v49 + 8);
      (v201)(v59, v60);
    }

    outlined init with copy of DeviceState(v204 + direct field offset for BaseIntentHandler.contactResolver, &v220);
    v71 = v221;
    v72 = v222;
    __swift_project_boxed_opaque_existential_1(&v220, v221);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
    v73 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_266966D90;
    v202((v74 + v73), v50, v60);
    v75 = (*(v72 + 8))(v74, v207, v71, v72);

    __swift_destroy_boxed_opaque_existential_0Tm(&v220);

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v220 = v79;
      *v78 = 136315394;
      *(v78 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, v188 | 0x8000000000000000, &v220);
      *(v78 + 12) = 2080;
      v80 = MEMORY[0x26D5E2610](v75, v217);
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &v220);

      *(v78 + 14) = v82;
      _os_log_impl(&dword_26686A000, v76, v77, "[%s] ContactResolver recommendations: %s", v78, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5E3300](v79, -1, -1);
      MEMORY[0x26D5E3300](v78, -1, -1);
    }

    v32 = v191;
    v19 = *(v75 + 16);
    if (!v19)
    {
      break;
    }

    v214 = *(v187 + 16);
    v83 = (*(v187 + 80) + 32) & ~*(v187 + 80);
    v202 = v75;
    v17 = v75 + v83;
    v4 = *(v187 + 72);
    v32 = (v187 + 16);
    v84 = (v187 + 8);
    v85 = MEMORY[0x277D84F90];
    while (1)
    {
      v87 = v216;
      v86 = v217;
      (v214)(v216, v17, v217);
      v30 = Recommendation<A>.assignConfidence()();
      (*v84)(v87, v86);
      v88 = *(v30 + 2);
      v16 = *(v85 + 16);
      if (__OFADD__(v16, v88))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v16 + v88 > *(v85 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v85 = v89;
      }

      if (*(v30 + 2))
      {
        if ((*(v85 + 24) >> 1) - *(v85 + 16) < v88)
        {
          goto LABEL_85;
        }

        swift_arrayInitWithCopy();

        if (v88)
        {
          v90 = *(v85 + 16);
          v91 = __OFADD__(v90, v88);
          v92 = v90 + v88;
          if (v91)
          {
            goto LABEL_87;
          }

          *(v85 + 16) = v92;
        }
      }

      else
      {

        if (v88)
        {
          goto LABEL_84;
        }
      }

      v17 += v4;
      if (!--v19)
      {

        v32 = v191;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
  }

  v85 = MEMORY[0x277D84F90];
LABEL_33:

  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.debug.getter();
  v95 = os_log_type_enabled(v93, v94);
  v96 = v188;
  if (v95)
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v220 = v98;
    *v97 = 136315394;
    *(v97 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, v96 | 0x8000000000000000, &v220);
    *(v97 + 12) = 2048;
    *(v97 + 14) = *(v85 + 16);

    _os_log_impl(&dword_26686A000, v93, v94, "[%s] ContactResolver weighted recommendations count: %ld", v97, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v98);
    MEMORY[0x26D5E3300](v98, -1, -1);
    MEMORY[0x26D5E3300](v97, -1, -1);
  }

  else
  {
  }

  v19 = *(v85 + 16);
  if (v19 == 1)
  {
    v105 = specialized BaseIntentHandler.meCard.getter();
    if (!v105)
    {
LABEL_75:
      v158 = Logger.logObject.getter();
      v159 = static os_log_type_t.debug.getter();
      v160 = os_log_type_enabled(v158, v159);
      v161 = v218;
      if (v160)
      {
        v162 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v220 = v163;
        *v162 = 136315138;
        *(v162 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, v96 | 0x8000000000000000, &v220);
        _os_log_impl(&dword_26686A000, v158, v159, "[%s] 1 recommendation returned. Returning success.", v162, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v163);
        MEMORY[0x26D5E3300](v163, -1, -1);
        MEMORY[0x26D5E3300](v162, -1, -1);
      }

      v217 = type metadata accessor for ModifyContactAttributeRelatedSiriMatchesResolutionResult();
      v216 = type metadata accessor for SiriMatch();
      if (*(v85 + 16))
      {
        v164 = (*(v161 + 80) + 32) & ~*(v161 + 80);
        v165 = v185;
        v166 = v219;
        v167 = v211;
        v211(v185, (v85 + v164), v219);
        v214 = Contact.id.getter();
        v169 = v168;
        v170 = v215;
        v215(v165, v166);
        v171 = v186;
        v167(v186, v85 + v164, v166);

        v172 = v209;
        PersonNameComponents.init()();
        Contact.namePrefix.getter();
        PersonNameComponents.namePrefix.setter();
        Contact.givenName.getter();
        PersonNameComponents.givenName.setter();
        Contact.middleName.getter();
        PersonNameComponents.middleName.setter();
        Contact.familyName.getter();
        PersonNameComponents.familyName.setter();
        Contact.nameSuffix.getter();
        PersonNameComponents.nameSuffix.setter();
        v173 = objc_opt_self();
        isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v175 = [v173 localizedStringFromPersonNameComponents:isa style:2 options:0];

        v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v178 = v177;

        (*(v189 + 8))(v172, v210);
        v170(v171, v166);
        v179 = SiriMatch.__allocating_init(identifier:fullName:)(v214, v169, v176, v178);
        static SiriMatchResolutionResult.success(with:)(v179);

        (v201)(v206, v190);
        (*(v192 + 8))(v207, v193);
        v170(v191, v166);
        return;
      }

      __break(1u);
      goto LABEL_90;
    }

    v106 = v105;
    v107 = [v105 identifier];
    v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v110 = v109;

    if (!*(v85 + 16))
    {
LABEL_90:
      __break(1u);
      return;
    }

    v111 = v219;
    v112 = v184;
    v211(v184, (v85 + ((*(v218 + 80) + 32) & ~*(v218 + 80))), v219);
    v113 = Contact.id.getter();
    v115 = v114;
    v215(v112, v111);
    if (v108 == v113 && v110 == v115)
    {

      v118 = v203;
    }

    else
    {
      v117 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v118 = v203;
      if ((v117 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    v156 = Int._bridgeToObjectiveC()().super.super.isa;
    v157 = MEMORY[0x26D5E2470](1699574633, 0xE400000000000000);
    [v118 setValue:v156 forProperty:v157];

    v106 = v157;
LABEL_74:

    goto LABEL_75;
  }

  if (!v19)
  {

    v99 = *(Contact.contactRelations.getter() + 16);

    if (v99)
    {
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v220 = v103;
        *v102 = 136315138;
        *(v102 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, v96 | 0x8000000000000000, &v220);
        _os_log_impl(&dword_26686A000, v100, v101, "[%s] No recommendations returned for requested relationship. Returning unsupported.", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v103);
        MEMORY[0x26D5E3300](v103, -1, -1);
        MEMORY[0x26D5E3300](v102, -1, -1);
      }

      type metadata accessor for ModifyContactAttributeRelatedSiriMatchesResolutionResult();
      v104 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    }

    else
    {
      v147 = Contact.organizationName.getter();
      v149 = v148;

      if ((v149 & 0x2000000000000000) != 0)
      {
        v150 = HIBYTE(v149) & 0xF;
      }

      else
      {
        v150 = v147 & 0xFFFFFFFFFFFFLL;
      }

      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.debug.getter();
      v153 = os_log_type_enabled(v151, v152);
      if (v150)
      {
        if (v153)
        {
          v154 = swift_slowAlloc();
          v155 = swift_slowAlloc();
          v220 = v155;
          *v154 = 136315138;
          *(v154 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, v96 | 0x8000000000000000, &v220);
          _os_log_impl(&dword_26686A000, v151, v152, "[%s] No recommendations returned for requested company. Returning unsupported.", v154, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v155);
          MEMORY[0x26D5E3300](v155, -1, -1);
          MEMORY[0x26D5E3300](v154, -1, -1);
        }

        type metadata accessor for ModifyContactAttributeRelatedSiriMatchesResolutionResult();
        v104 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
      }

      else
      {
        if (v153)
        {
          v180 = swift_slowAlloc();
          v181 = swift_slowAlloc();
          v220 = v181;
          *v180 = 136315138;
          *(v180 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, v96 | 0x8000000000000000, &v220);
          _os_log_impl(&dword_26686A000, v151, v152, "[%s] No recommendations returned. Returning unsupported.", v180, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v181);
          MEMORY[0x26D5E3300](v181, -1, -1);
          MEMORY[0x26D5E3300](v180, -1, -1);
        }

        type metadata accessor for ModifyContactAttributeRelatedSiriMatchesResolutionResult();
        v104 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
      }
    }

    v104;
    (v201)(v206, v190);
    (*(v192 + 8))(v207, v193);
    goto LABEL_9;
  }

  v214 = objc_opt_self();
  v119 = (v85 + ((*(v218 + 80) + 32) & ~*(v218 + 80)));
  v204 = *(v218 + 72);
  v203 = (v189 + 8);
  v216 = (v218 + 8);
  v16 = MEMORY[0x277D84F90];
  v120 = v208;
  v121 = v219;
  do
  {
    v211(v120, v119, v121);
    v122 = Contact.id.getter();
    v217 = v123;
    v218 = v122;
    v124 = v209;
    PersonNameComponents.init()();
    Contact.namePrefix.getter();
    PersonNameComponents.namePrefix.setter();
    Contact.givenName.getter();
    PersonNameComponents.givenName.setter();
    Contact.middleName.getter();
    PersonNameComponents.middleName.setter();
    Contact.familyName.getter();
    PersonNameComponents.familyName.setter();
    Contact.nameSuffix.getter();
    PersonNameComponents.nameSuffix.setter();
    v125 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v126 = [v214 localizedStringFromPersonNameComponents:v125 style:2 options:0];

    v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v128;

    (*v203)(v124, v210);
    v215(v120, v121);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
      v16 = v133;
    }

    v130 = v16[2];
    v129 = v16[3];
    if (v130 >= v129 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v129 > 1, v130 + 1, 1, v16);
      v16 = v134;
    }

    v16[2] = v130 + 1;
    v131 = &v16[4 * v130];
    v132 = v217;
    v131[4] = v218;
    v131[5] = v132;
    v131[6] = v127;
    v131[7] = v17;
    v119 += v204;
    --v19;
  }

  while (v19);

  v135 = Logger.logObject.getter();
  v136 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v220 = v17;
    *v137 = 136315394;
    *(v137 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, v188 | 0x8000000000000000, &v220);
    *(v137 + 12) = 2080;
    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    v139 = MEMORY[0x26D5E2610](v16, v138);
    v19 = v140;
    v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v140, &v220);

    *(v137 + 14) = v141;
    _os_log_impl(&dword_26686A000, v135, v136, "[%s] Multiple recommendations returned. Returning disambiguation of %s.", v137, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5E3300](v17, -1, -1);
    MEMORY[0x26D5E3300](v137, -1, -1);
  }

  v142 = MEMORY[0x277D84F90];
  v32 = 0;
  v220 = MEMORY[0x277D84F90];
  v30 = v16[2];
  v4 = (v16 + 7);
  while (v30 != v32)
  {
    if (v32 >= v16[2])
    {
      goto LABEL_86;
    }

    v144 = *(v4 - 8);
    v143 = *v4;
    v146 = *(v4 - 24);
    v145 = *(v4 - 16);
    v19 = type metadata accessor for SiriMatch();

    SiriMatch.__allocating_init(identifier:fullName:)(v146, v145, v144, v143);
    MEMORY[0x26D5E25E0]();
    v17 = *((v220 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17 >= *((v220 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v142 = v220;
    v4 += 32;
    ++v32;
  }

  type metadata accessor for ModifyContactAttributeRelatedSiriMatchesResolutionResult();
  static SiriMatchResolutionResult.disambiguation(with:)(v142);

  (v201)(v206, v190);
  (*(v192 + 8))(v207, v193);
  v215(v191, v219);
}