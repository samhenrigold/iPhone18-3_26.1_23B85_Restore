uint64_t sub_26686C520()
{
  type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_26686C620()
{
  v1 = type metadata accessor for Input();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_26686C77C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Input();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 4)
  {
    return EnumTagSinglePayload - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26686C7C4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Input();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_26686CAE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OSSignpostID();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_26686CB30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OSSignpostID();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_26686D34C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NLIntent();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_26686D3D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NLIntent();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26686D890()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26686D8E0()
{
  type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_10_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_26686D974()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26686D9B4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26686DAE8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26686DBF8()
{
  OUTLINED_FUNCTION_36_11();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_26686DF14@<X0>(uint64_t *a1@<X8>)
{
  result = GetContactIntentResponse.code.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26686E378@<X0>(uint64_t *a1@<X8>)
{
  result = GetContactAttributeIntentResponse.code.getter();
  *a1 = result;
  return result;
}

uint64_t _s19SiriContactsIntents022ModifyContactAttributeD29RelationshipUnsupportedReasonOSYAASY8rawValuexSg03RawK0Qz_tcfCTW_0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_52(a1);
  result = ModifyContactAttributeModifyNickNameUnsupportedReason.init(rawValue:)(v2);
  *v1 = result;
  *(v1 + 8) = v4 & 1;
  return result;
}

id sub_26686E3FC(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_1_52(a1) contactAttributeToModify];
  *v1 = result;
  return result;
}

id sub_26686E440(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_1_52(a1) modifyOperation];
  *v1 = result;
  return result;
}

uint64_t sub_26686E53C@<X0>(uint64_t *a1@<X8>)
{
  result = ModifyContactAttributeIntentResponse.code.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26686E590@<X0>(uint64_t *a1@<X8>)
{
  result = LearnPronunciationIntentResponse.code.getter();
  *a1 = result;
  return result;
}

id sub_26686E69C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contactAttributeType];
  *a2 = result;
  return result;
}

id sub_26686ECA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 qualifier];
  *a2 = result;
  return result;
}

uint64_t outlined init with take of DeviceState(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id ContactRelation.__allocating_init(relationship:relatedFullName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = static String.EMPTY.getter();
  v11 = MEMORY[0x26D5E2470](v10);

  v12 = [v9 initWithIdentifier:0 displayString:v11];

  v13 = v12;
  if (a4)
  {
    v14 = MEMORY[0x26D5E2470](a3, a4);
  }

  else
  {
    v14 = 0;
  }

  [v12 setRelatedFullName_];

  if (a2)
  {
    v15 = MEMORY[0x26D5E2470](a1, a2);
  }

  else
  {
    v15 = 0;
  }

  [v12 setRelationship_];

  return v12;
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSPersonNameComponentsFormatterOptions@<X0>(uint64_t *a1@<X8>)
{
  result = specialized OptionSet<>.init()();
  *a1 = result;
  return result;
}

uint64_t outlined init with copy of DeviceState(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t ContactsUnsupportedFlow.__allocating_init(deviceState:commonCATs:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  outlined init with take of DeviceState(a1, v4 + 24);
  *(v4 + 16) = a2;
  return v4;
}

uint64_t ContactsUnsupportedFlow.init(deviceState:commonCATs:)(__int128 *a1, uint64_t a2)
{
  outlined init with take of DeviceState(a1, v2 + 24);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t ContactsUnsupportedFlow.on(input:)()
{
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.siriContacts);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v3 = 136315394;
    *(v3 + 4) = OUTLINED_FUNCTION_1("/Library/Caches/com.apple.xbs/Sources/SiriContacts/SiriContactsIntents/Flow/Shared/ContactsUnsupportedFlow.swift", v5);
    *(v3 + 12) = 2080;
    *(v3 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7475706E69286E6FLL, 0xEA0000000000293ALL, &v6);
    _os_log_impl(&dword_26686A000, v1, v2, "%s:%s", v3, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  return 1;
}

uint64_t ContactsUnsupportedFlow.execute()()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for TemplatingResult();
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](ContactsUnsupportedFlow.execute(), 0, 0);
}

{
  v9 = v0;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 56) = __swift_project_value_buffer(v1, static Logger.siriContacts);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = OUTLINED_FUNCTION_1("/Library/Caches/com.apple.xbs/Sources/SiriContacts/SiriContactsIntents/Flow/Shared/ContactsUnsupportedFlow.swift", v7);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xE900000000000029, &v8);
    _os_log_impl(&dword_26686A000, v2, v3, "%s:%s", v4, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = ContactsUnsupportedFlow.execute();

  return ContactsCommonCATs.unsupportedAction()();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_0();
  *v3 = v2;
  *(v4 + 72) = v0;

  if (v0)
  {
    v5 = ContactsUnsupportedFlow.execute();
  }

  else
  {
    v5 = ContactsUnsupportedFlow.execute();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  ContactsUnsupportedFlow.getUnsupportedFlow(for:)(v1);
  static ExecuteResponse.complete(next:)();

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_3();

  return v4();
}

{
  v1 = *(v0 + 72);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 72);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = OUTLINED_FUNCTION_1("/Library/Caches/com.apple.xbs/Sources/SiriContacts/SiriContactsIntents/Flow/Shared/ContactsUnsupportedFlow.swift", v13);
    *(v7 + 12) = 2112;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&dword_26686A000, v3, v4, "%s: %@", v7, 0x16u);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_6();
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_3();

  return v11();
}

uint64_t ContactsUnsupportedFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContactsUnsupportedFlow();
  lazy protocol witness table accessor for type ContactsUnsupportedFlow and conformance ContactsUnsupportedFlow(&lazy protocol witness table cache variable for type ContactsUnsupportedFlow and conformance ContactsUnsupportedFlow, &protocol conformance descriptor for ContactsUnsupportedFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t ContactsUnsupportedFlow.getUnsupportedFlow(for:)(uint64_t a1)
{
  v3 = type metadata accessor for TemplatingResult();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v7 + ((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;

  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v10[1] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  v8 = Flow.eraseToAnyFlow()();

  return v8;
}

uint64_t closure #1 in ContactsUnsupportedFlow.getUnsupportedFlow(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in ContactsUnsupportedFlow.getUnsupportedFlow(for:), 0, 0);
}

uint64_t closure #1 in ContactsUnsupportedFlow.getUnsupportedFlow(for:)()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((*(v0 + 72) + 24), *(*(v0 + 72) + 48));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v3 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  v4 = type metadata accessor for AceOutput();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v5 = MEMORY[0x277D5C1D8];
  v2[3] = v4;
  v2[4] = v5;
  __swift_allocate_boxed_opaque_existential_1(v2);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of NSObject?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of NSObject?(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t ContactsUnsupportedFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  return v0;
}

uint64_t ContactsUnsupportedFlow.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance ContactsUnsupportedFlow(uint64_t *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance ContactsUnsupportedFlow;
}

void protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance ContactsUnsupportedFlow(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance ContactsUnsupportedFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for Flow.onAsync(input:) in conformance ContactsUnsupportedFlow;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance ContactsUnsupportedFlow()
{
  OUTLINED_FUNCTION_4();
  v2 = v1;
  OUTLINED_FUNCTION_5();
  v3 = *v0;
  OUTLINED_FUNCTION_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return ContactsUnsupportedFlow.execute()();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t protocol witness for Flow.exitValue.getter in conformance ContactsUnsupportedFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ContactsUnsupportedFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(uint64_t (*a1)(void))
{
  return a1();
}

{
  a1();

  return _typeName(_:qualified:)();
}

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
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
    v10 = MEMORY[0x277D84F90];
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

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t lazy protocol witness table accessor for type ContactsUnsupportedFlow and conformance ContactsUnsupportedFlow(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ContactsUnsupportedFlow();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of ContactsUnsupportedFlow.execute()(uint64_t a1)
{
  v6 = (*(*v1 + 112) + **(*v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return v6(a1);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t partial apply for closure #1 in ContactsUnsupportedFlow.getUnsupportedFlow(for:)(uint64_t a1)
{
  v4 = *(type metadata accessor for TemplatingResult() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return closure #1 in ContactsUnsupportedFlow.getUnsupportedFlow(for:)(a1, v1 + v5, v6);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t OUTLINED_FUNCTION_1@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va, a2);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000070, (a1 - 32) | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_6()
{

  JUMPOUT(0x26D5E3300);
}

uint64_t SiriKitContactIntent.me.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 24))(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  type metadata accessor for NSNumber();
  v4 = 1;
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  return v4;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t SiriKitContactIntent.handleTypePreference.getter@<X0>(uint64_t a1@<X8>)
{
  static ContactHandleTypePreference.preferPhone.getter();
  v2 = type metadata accessor for ContactHandleTypePreference();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

double SiriKitContactIntent.value(forSlot:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 24))(v4, v5);
  v7 = MEMORY[0x26D5E2470](v6);

  v8 = [v2 valueForKey_];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void SiriKitContactIntent.shouldRunReferenceResolution(given:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = type metadata accessor for UsoEntity_common_Person.DefinedValues();
  OUTLINED_FUNCTION_1_0();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v37 = &a9 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &a9 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &a9 - v41;
  if (v23)
  {

    UsoEntity_common_Person.contactId.getter();
    if (v43 || (dispatch thunk of UsoEntity_common_Person.name.getter(), v44))
    {

      goto LABEL_18;
    }

    if (!dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter() && !dispatch thunk of UsoEntity_common_Person.associatedOrganization.getter())
    {
      dispatch thunk of UsoEntity_common_Person.definedValue.getter();
      (*(v26 + 104))(v40, *MEMORY[0x277D5E828], v24);
      __swift_storeEnumTagSinglePayload(v40, 0, 1, v24);
      v45 = *(v31 + 48);
      outlined init with copy of UsoEntity_common_Person.DefinedValues?(v42, v33);
      outlined init with copy of UsoEntity_common_Person.DefinedValues?(v40, &v33[v45]);
      OUTLINED_FUNCTION_2_0(v33);
      if (v46)
      {

        OUTLINED_FUNCTION_25(v40);
        OUTLINED_FUNCTION_25(v42);
        OUTLINED_FUNCTION_2_0(&v33[v45]);
        if (v46)
        {
          outlined destroy of UsoEntity_common_Person.DefinedValues?(v33, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          goto LABEL_18;
        }
      }

      else
      {
        outlined init with copy of UsoEntity_common_Person.DefinedValues?(v33, v37);
        OUTLINED_FUNCTION_2_0(&v33[v45]);
        if (!v46)
        {
          (*(v26 + 32))(v30, &v33[v45], v24);
          lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
          dispatch thunk of static Equatable.== infix(_:_:)();

          v47 = *(v26 + 8);
          v47(v30, v24);
          outlined destroy of UsoEntity_common_Person.DefinedValues?(v40, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          outlined destroy of UsoEntity_common_Person.DefinedValues?(v42, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          v47(v37, v24);
          outlined destroy of UsoEntity_common_Person.DefinedValues?(v33, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_25(v40);
        OUTLINED_FUNCTION_25(v42);
        (*(v26 + 8))(v37, v24);
      }

      outlined destroy of UsoEntity_common_Person.DefinedValues?(v33, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
      goto LABEL_18;
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_14();
}

uint64_t outlined init with copy of UsoEntity_common_Person.DefinedValues?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues()
{
  result = lazy protocol witness table cache variable for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues;
  if (!lazy protocol witness table cache variable for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues)
  {
    type metadata accessor for UsoEntity_common_Person.DefinedValues();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues);
  }

  return result;
}

void _s19SiriContactsIntents0A16KitContactIntentPAAE22runReferenceResolution_10completiony0ahI027RRReferenceResolverProtocol_p_yAA0adeF13ResolvedValueOctFZAA03Gete9AttributeF0C_Tt1g504_s19ab11Intents0A18dp6Entityf9PAAE22runh19Resolutionyy0aiJ027klm10_pFyAA0ad7e3G13no18OcfU_Tf0ns_nAA0en9Q7G0C_Tg5AKSgXwTf1nc_nTm(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.siriContacts);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_22(&dword_26686A000, v16, v17, "#SiriKitContactIntent: running reference resolution");
    OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2_0(v2);
  if (!v18)
  {
    v20 = OUTLINED_FUNCTION_12();
    v21(v20);
    RREntity.usoEntity.getter();
    type metadata accessor for UsoEntity_common_Person();
    OUTLINED_FUNCTION_17();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    if (v25)
    {
      if (dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter())
      {
        CodeGenBase.entity.getter();

        type metadata accessor for UsoEntity_common_PhoneNumber();

        static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

        v22 = dispatch thunk of UsoEntity_common_PhoneNumber.value.getter();
        v4(v22);

LABEL_15:
        (*(v8 + 8))(v12, v6);
        goto LABEL_16;
      }

      if (RREntity.isFromContactSource.getter())
      {
        v23 = RREntity.id.getter();
        v4(v23);

        goto LABEL_15;
      }
    }

    v24 = OUTLINED_FUNCTION_5_0();
    v4(v24);
    goto LABEL_15;
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v2, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v19 = OUTLINED_FUNCTION_5_0();
  v4(v19);
LABEL_16:
  OUTLINED_FUNCTION_14();
}

void static SiriKitContactIntent.runReferenceResolution(_:completion:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.siriContacts);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_22(&dword_26686A000, v16, v17, "#SiriKitContactIntent: running reference resolution");
    OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2_0(v2);
  if (!v18)
  {
    v20 = OUTLINED_FUNCTION_12();
    v21(v20);
    RREntity.usoEntity.getter();
    type metadata accessor for UsoEntity_common_Person();
    OUTLINED_FUNCTION_17();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    if (v25)
    {
      if (dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter())
      {
        CodeGenBase.entity.getter();

        type metadata accessor for UsoEntity_common_PhoneNumber();

        static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

        v22 = dispatch thunk of UsoEntity_common_PhoneNumber.value.getter();
        v4(v22);

LABEL_15:
        (*(v8 + 8))(v12, v6);
        goto LABEL_16;
      }

      if (RREntity.isFromContactSource.getter())
      {
        v23 = RREntity.id.getter();
        v4(v23);

        goto LABEL_15;
      }
    }

    v24 = OUTLINED_FUNCTION_5_0();
    v4(v24);
    goto LABEL_15;
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v2, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v19 = OUTLINED_FUNCTION_5_0();
  v4(v19);
LABEL_16:
  OUTLINED_FUNCTION_14();
}

uint64_t SiriKitGetEntityIntent.runReferenceResolution(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v8;
  static SiriKitContactIntent.runReferenceResolution(_:completion:)(a1, partial apply for specialized closure #1 in SiriKitGetEntityIntent.runReferenceResolution(_:));

  return MEMORY[0x26D5E33A0](v8);
}

void specialized closure #1 in SiriKitGetEntityIntent.runReferenceResolution(_:)(void *a1, unint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    switch(a3)
    {
      case 1:
        if (one-time initialization token for siriContacts != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        __swift_project_value_buffer(v33, static Logger.siriContacts);

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 1u);
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v42 = a2;
          v43 = v37;
          *v36 = 136315138;
          v41 = a1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v38 = String.init<A>(describing:)();
          v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v43);

          *(v36 + 4) = v40;
          _os_log_impl(&dword_26686A000, v34, v35, "#SiriKitGetEntityIntent: Resolved an email from reference resolution: %s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v37);
          MEMORY[0x26D5E3300](v37, -1, -1);
          MEMORY[0x26D5E3300](v36, -1, -1);
        }

        if (a2)
        {
          v28 = MEMORY[0x26D5E2470](a1, a2);
        }

        else
        {
          v28 = 0;
        }

        [v8 setEmailAddress_];
        goto LABEL_29;
      case 2:
        if (one-time initialization token for siriContacts != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        __swift_project_value_buffer(v20, static Logger.siriContacts);

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 2u);
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v42 = a2;
          v43 = v24;
          *v23 = 136315138;
          v41 = a1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v25 = String.init<A>(describing:)();
          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v43);

          *(v23 + 4) = v27;
          _os_log_impl(&dword_26686A000, v21, v22, "#SiriKitGetEntityIntent: Resolved a phone number from reference resolution: %s", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v24);
          MEMORY[0x26D5E3300](v24, -1, -1);
          MEMORY[0x26D5E3300](v23, -1, -1);
        }

        if (a2)
        {
          v28 = MEMORY[0x26D5E2470](a1, a2);
        }

        else
        {
          v28 = 0;
        }

        [v8 setPhoneNumber_];
LABEL_29:

        v8 = v28;
        break;
      case 3:
        if (one-time initialization token for siriContacts != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        __swift_project_value_buffer(v29, static Logger.siriContacts);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_26686A000, v30, v31, "#SiriKitGetEntityIntent: no value found from reference resolution", v32, 2u);
          MEMORY[0x26D5E3300](v32, -1, -1);
        }

        break;
      default:
        v9 = one-time initialization token for siriContacts;

        if (v9 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        __swift_project_value_buffer(v10, static Logger.siriContacts);

        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 0);
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v41 = v14;
          *v13 = 136315138;
          *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v41);
          _os_log_impl(&dword_26686A000, v11, v12, "#SiriKitGetEntityIntent: Resolved a contact from reference resolution with identifier: %s", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v14);
          MEMORY[0x26D5E3300](v14, -1, -1);
          MEMORY[0x26D5E3300](v13, -1, -1);
        }

        v8 = v8;
        v15 = MEMORY[0x26D5E2470](a1, a2);
        [v8 setIdentifier_];

        v16 = MEMORY[0x26D5E2470](a1, a2);
        [v8 setContactIdentifier_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_266966A40;
        type metadata accessor for SiriMatch();
        v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        *(v17 + 32) = @nonobjc INObject.init(identifier:display:)(a1, a2, a1, a2);
        v19 = off_287822350[0];
        type metadata accessor for GetContactAttributeIntent();
        v19(v17);
        break;
    }
  }
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    switch(a3)
    {
      case 1:
        if (one-time initialization token for siriContacts != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        __swift_project_value_buffer(v33, static Logger.siriContacts);

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 1u);
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v42 = a2;
          v43 = v37;
          *v36 = 136315138;
          v41 = a1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v38 = String.init<A>(describing:)();
          v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v43);

          *(v36 + 4) = v40;
          _os_log_impl(&dword_26686A000, v34, v35, "#SiriKitGetEntityIntent: Resolved an email from reference resolution: %s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v37);
          MEMORY[0x26D5E3300](v37, -1, -1);
          MEMORY[0x26D5E3300](v36, -1, -1);
        }

        if (a2)
        {
          v28 = MEMORY[0x26D5E2470](a1, a2);
        }

        else
        {
          v28 = 0;
        }

        [v8 setEmailAddress_];
        goto LABEL_29;
      case 2:
        if (one-time initialization token for siriContacts != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        __swift_project_value_buffer(v20, static Logger.siriContacts);

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 2u);
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v42 = a2;
          v43 = v24;
          *v23 = 136315138;
          v41 = a1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v25 = String.init<A>(describing:)();
          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v43);

          *(v23 + 4) = v27;
          _os_log_impl(&dword_26686A000, v21, v22, "#SiriKitGetEntityIntent: Resolved a phone number from reference resolution: %s", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v24);
          MEMORY[0x26D5E3300](v24, -1, -1);
          MEMORY[0x26D5E3300](v23, -1, -1);
        }

        if (a2)
        {
          v28 = MEMORY[0x26D5E2470](a1, a2);
        }

        else
        {
          v28 = 0;
        }

        [v8 setPhoneNumber_];
LABEL_29:

        v8 = v28;
        break;
      case 3:
        if (one-time initialization token for siriContacts != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        __swift_project_value_buffer(v29, static Logger.siriContacts);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_26686A000, v30, v31, "#SiriKitGetEntityIntent: no value found from reference resolution", v32, 2u);
          MEMORY[0x26D5E3300](v32, -1, -1);
        }

        break;
      default:
        v9 = one-time initialization token for siriContacts;

        if (v9 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        __swift_project_value_buffer(v10, static Logger.siriContacts);

        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 0);
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v41 = v14;
          *v13 = 136315138;
          *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v41);
          _os_log_impl(&dword_26686A000, v11, v12, "#SiriKitGetEntityIntent: Resolved a contact from reference resolution with identifier: %s", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v14);
          MEMORY[0x26D5E3300](v14, -1, -1);
          MEMORY[0x26D5E3300](v13, -1, -1);
        }

        v8 = v8;
        v15 = MEMORY[0x26D5E2470](a1, a2);
        [v8 setIdentifier_];

        v16 = MEMORY[0x26D5E2470](a1, a2);
        [v8 setContactIdentifier_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_266966A40;
        type metadata accessor for SiriMatch();
        v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        *(v17 + 32) = @nonobjc INObject.init(identifier:display:)(a1, a2, a1, a2);
        v19 = off_287822260[0];
        type metadata accessor for GetContactIntent();
        v19(v17);
        break;
    }
  }
}

void specialized closure #1 in SiriKitGetEntityIntent.runReferenceResolution(_:)(void *a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    switch(a3)
    {
      case 1:
        v38 = one-time initialization token for siriContacts;

        if (v38 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        __swift_project_value_buffer(v39, static Logger.siriContacts);

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 1u);
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v48 = a1;
          v49 = a2;
          v50 = v47;
          *v42 = 136315138;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v43 = String.init<A>(describing:)();
          v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v50);

          *(v42 + 4) = v45;
          _os_log_impl(&dword_26686A000, v40, v41, "#SiriKitGetEntityIntent: Resolved an email from reference resolution: %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v47);
          MEMORY[0x26D5E3300](v47, -1, -1);
          MEMORY[0x26D5E3300](v42, -1, -1);
        }

        (*(a6 + 88))(a1, a2, a5, a6);
        break;
      case 2:
        v24 = one-time initialization token for siriContacts;

        if (v24 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        __swift_project_value_buffer(v25, static Logger.siriContacts);

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 2u);
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v48 = a1;
          v49 = a2;
          v50 = v46;
          *v28 = 136315138;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v29 = String.init<A>(describing:)();
          v31 = a6;
          v32 = a5;
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v50);

          *(v28 + 4) = v33;
          a5 = v32;
          a6 = v31;
          _os_log_impl(&dword_26686A000, v26, v27, "#SiriKitGetEntityIntent: Resolved a phone number from reference resolution: %s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v46);
          MEMORY[0x26D5E3300](v46, -1, -1);
          MEMORY[0x26D5E3300](v28, -1, -1);
        }

        (*(a6 + 64))(a1, a2, a5, a6);
        break;
      case 3:
        if (one-time initialization token for siriContacts != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        __swift_project_value_buffer(v34, static Logger.siriContacts);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_26686A000, v35, v36, "#SiriKitGetEntityIntent: no value found from reference resolution", v37, 2u);
          MEMORY[0x26D5E3300](v37, -1, -1);
        }

        break;
      default:
        v13 = one-time initialization token for siriContacts;

        if (v13 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        __swift_project_value_buffer(v14, static Logger.siriContacts);

        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 0);
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v48 = v18;
          *v17 = 136315138;
          *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v48);
          _os_log_impl(&dword_26686A000, v15, v16, "#SiriKitGetEntityIntent: Resolved a contact from reference resolution with identifier: %s", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v18);
          MEMORY[0x26D5E3300](v18, -1, -1);
          MEMORY[0x26D5E3300](v17, -1, -1);
        }

        v19 = v12;
        v20 = MEMORY[0x26D5E2470](a1, a2);
        [v19 setIdentifier_];

        v21 = *(a6 + 128);
        swift_bridgeObjectRetain_n();
        v21(a1, a2, a5, a6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_266966A40;
        type metadata accessor for SiriMatch();
        v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        *(v22 + 32) = @nonobjc INObject.init(identifier:display:)(a1, a2, a1, a2);
        (*(a6 + 112))(v22, a5, a6);
        break;
    }
  }
}

void static SiriKitGetEntityIntent.resolveAddressType(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v4 = v3;
  v145 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v138 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  v144 = &v135 - v10;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  v140 = &v135 - v12;
  OUTLINED_FUNCTION_16();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v135 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v135 - v18;
  MEMORY[0x28223BE20](v17);
  v141 = &v135 - v20;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  v23 = &v135 - v22;
  if (one-time initialization token for siriContacts != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v24 = type metadata accessor for Logger();
    v25 = __swift_project_value_buffer(v24, static Logger.siriContacts);

    v142 = v25;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    v28 = os_log_type_enabled(v26, v27);
    v143 = v4;
    v139 = v19;
    if (v28)
    {
      v29 = OUTLINED_FUNCTION_24();
      v30 = OUTLINED_FUNCTION_23();
      v146 = v2;
      v147 = v30;
      *v29 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_ContactAddressCSgMd, &_s12SiriOntology31UsoEntity_common_ContactAddressCSgMR);
      v31 = String.init<A>(describing:)();
      v33 = v2;
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v147);

      *(v29 + 4) = v34;
      v2 = v33;
      _os_log_impl(&dword_26686A000, v26, v27, "#SiriKitGetEntityIntent resolveAddressType from address %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      OUTLINED_FUNCTION_6();
      v4 = v143;
      OUTLINED_FUNCTION_6();
    }

    if (!v2)
    {
      goto LABEL_70;
    }

    swift_retain_n();
    CodeGenBase.entity.getter();
    static UsoEntity_CodeGenConverter.convert(entity:)();

    v19 = MEMORY[0x277D84F70];
    if (v149)
    {
      v35 = type metadata accessor for UsoEntity_common_PhoneNumber();
      if (OUTLINED_FUNCTION_3_0(v35))
      {
        v136 = v146;
        v36 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
        v37 = v2;
        v2 = v36;
        v137 = v37;

        v38 = 0;
        v39 = *(v2 + 16);
        OUTLINED_FUNCTION_18();
        v16 = (v6 + 8);
        v140 = MEMORY[0x277D84F90];
        while (1)
        {
          while (1)
          {
            if (v39 == v38)
            {

              v61 = v140;
              if (*(v140 + 2))
              {
                OUTLINED_FUNCTION_4_0();
                v63 = v145;
                v64(v139, &v61[v62], v145);

                v65 = UsoIdentifier.value.getter();
                v66 = OUTLINED_FUNCTION_9();
                v67(v66, v63);
                v68 = v143;
              }

              else
              {

                v99 = dispatch thunk of UsoEntity_common_PhoneNumber.label.getter();
                v65 = v99;
                v68 = v143;
                if (v100)
                {
                  v65 = String.convertToContactAttributeLabel.getter(v99, v100);
                  v23 = v101;
                }

                else
                {
                  v23 = 0;
                }
              }

              v108 = Logger.logObject.getter();
              v109 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v108, v109))
              {
                v110 = OUTLINED_FUNCTION_24();
                v111 = OUTLINED_FUNCTION_23();
                v146 = v111;
                v147 = v65;
                *v110 = 136315138;
                v148 = v23;

                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                v112 = String.init<A>(describing:)();
                v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v113, &v146);

                *(v110 + 4) = v114;
                OUTLINED_FUNCTION_20(&dword_26686A000, v115, v116, "#SiriKitGetEntityIntent address was converted to a phone number with value %s");
                __swift_destroy_boxed_opaque_existential_0Tm(v111);
                OUTLINED_FUNCTION_6();
                OUTLINED_FUNCTION_6();
              }

              *v68 = v65;
              *(v68 + 8) = v23;
              *(v68 + 16) = 1;
              goto LABEL_94;
            }

            if (v38 >= *(v2 + 16))
            {
              __break(1u);
              goto LABEL_96;
            }

            OUTLINED_FUNCTION_7_0();
            v19 = *(v6 + 72);
            (*(v6 + 16))(v23, v2 + v4 + v19 * v38, v145);
            v40 = UsoIdentifier.namespace.getter();
            if (v41)
            {
              break;
            }

LABEL_16:
            (*v16)(v23, v145);
            ++v38;
          }

          if (v40 == 0x707954656E6F6870 && v41 == 0xE900000000000065)
          {
          }

          else
          {
            v43 = OUTLINED_FUNCTION_21(v40, v41, 0x707954656E6F6870);

            if ((v43 & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          v44 = *v138;
          (*v138)(v141, v23, v145);
          v45 = v140;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v47 = v45;
          v147 = v45;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_13(isUniquelyReferenced_nonNull_native, *(v45 + 16) + 1);
            v47 = v147;
          }

          v49 = *(v47 + 16);
          v48 = *(v47 + 24);
          v50 = (v49 + 1);
          if (v49 >= v48 >> 1)
          {
            v135 = v44;
            v140 = (v49 + 1);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v49 + 1, 1);
            v50 = v140;
            v44 = v135;
            v47 = v147;
          }

          ++v38;
          *(v47 + 16) = v50;
          v140 = v47;
          v44((v47 + v4 + v49 * v19), v141, v145);
        }
      }
    }

    else
    {
      outlined destroy of UsoEntity_common_Person.DefinedValues?(&v147, &_sypSgMd, &_sypSgMR);
    }

    CodeGenBase.entity.getter();
    static UsoEntity_CodeGenConverter.convert(entity:)();

    if (!v149)
    {
      break;
    }

    v51 = type metadata accessor for UsoEntity_common_EmailAddress();
    if ((OUTLINED_FUNCTION_3_0(v51) & 1) == 0)
    {
      goto LABEL_45;
    }

    v135 = v146;
    v52 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
    v137 = v2;

    v2 = 0;
    v23 = *(v52 + 16);
    OUTLINED_FUNCTION_18();
    v141 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v23 == v2)
      {

        v80 = v141;
        if (*(v141 + 2))
        {
          OUTLINED_FUNCTION_4_0();
          v82 = v145;
          v83(v139, &v80[v81], v145);

          v84 = UsoIdentifier.value.getter();
          v85 = OUTLINED_FUNCTION_9();
          v86(v85, v82);
          v87 = v143;
        }

        else
        {

          v102 = dispatch thunk of UsoEntity_common_EmailAddress.label.getter();
          v84 = v102;
          if (v103)
          {
            v84 = String.convertToContactAttributeLabel.getter(v102, v103);
            v23 = v104;
          }

          else
          {
            v23 = 0;
          }

          v87 = v143;
        }

        v117 = Logger.logObject.getter();
        v118 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v117, v118))
        {
          v119 = OUTLINED_FUNCTION_24();
          v120 = OUTLINED_FUNCTION_23();
          v146 = v120;
          v147 = v84;
          *v119 = 136315138;
          v148 = v23;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v121 = String.init<A>(describing:)();
          v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v122, &v146);

          *(v119 + 4) = v123;
          OUTLINED_FUNCTION_20(&dword_26686A000, v124, v125, "#SiriKitGetEntityIntent address was converted to an email with value %s");
          __swift_destroy_boxed_opaque_existential_0Tm(v120);
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_6();
        }

        *v87 = v84;
        *(v87 + 8) = v23;
        *(v87 + 16) = 0;
        goto LABEL_94;
      }

      if (v2 >= *(v52 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_7_0();
      v53 = *(v6 + 72);
      (*(v6 + 16))(v16, v52 + v4 + v53 * v2, v145);
      v54 = UsoIdentifier.namespace.getter();
      if (!v55)
      {
        goto LABEL_35;
      }

      if (v54 == 0x7079546C69616D65 && v55 == 0xE900000000000065)
      {

LABEL_37:
        v136 = *v138;
        v136(v140, v16, v145);
        v57 = v141;
        v58 = swift_isUniquelyReferenced_nonNull_native();
        v147 = v57;
        if ((v58 & 1) == 0)
        {
          OUTLINED_FUNCTION_13(v58, *(v57 + 16) + 1);
          v57 = v147;
        }

        v19 = *(v57 + 16);
        v59 = *(v57 + 24);
        v60 = (v19 + 1);
        if (v19 >= v59 >> 1)
        {
          OUTLINED_FUNCTION_10(v59);
          v60 = v141;
          v57 = v147;
        }

        ++v2;
        *(v57 + 16) = v60;
        v141 = v57;
        v136((v57 + v4 + v19 * v53), v140, v145);
      }

      else
      {
        v19 = OUTLINED_FUNCTION_21(v54, v55, 0x7079546C69616D65);

        if (v19)
        {
          goto LABEL_37;
        }

LABEL_35:
        (*(v6 + 8))(v16, v145);
        ++v2;
      }
    }

LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(&v147, &_sypSgMd, &_sypSgMR);
LABEL_45:
  CodeGenBase.entity.getter();
  static UsoEntity_CodeGenConverter.convert(entity:)();

  if (!v149)
  {

    outlined destroy of UsoEntity_common_Person.DefinedValues?(&v147, &_sypSgMd, &_sypSgMR);
LABEL_67:
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_26686A000, v88, v89, "#SiriKitGetEntityIntent address did not convert to a known contact address type", v90, 2u);
      OUTLINED_FUNCTION_6();
    }

LABEL_70:
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = -1;
    goto LABEL_94;
  }

  v69 = type metadata accessor for UsoEntity_common_PostalAddress();
  if ((OUTLINED_FUNCTION_3_0(v69) & 1) == 0)
  {

    goto LABEL_67;
  }

  v135 = v146;
  v70 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v137 = v2;

  v16 = 0;
  v71 = *(v70 + 16);
  v2 = v6 + 16;
  v140 = (v6 + 32);
  v141 = MEMORY[0x277D84F90];
  while (v71 != v16)
  {
    if (v16 >= *(v70 + 16))
    {
      goto LABEL_97;
    }

    OUTLINED_FUNCTION_7_0();
    v23 = *(v6 + 72);
    (*(v6 + 16))(v144, v70 + v4 + v23 * v16, v145);
    v72 = UsoIdentifier.namespace.getter();
    if (v73)
    {
      if (v72 == 0x5473736572646461 && v73 == 0xEB00000000657079)
      {
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v19 & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      v75 = *v140;
      (*v140)(v138, v144, v145);
      v76 = v141;
      v77 = swift_isUniquelyReferenced_nonNull_native();
      v147 = v76;
      v136 = v75;
      if ((v77 & 1) == 0)
      {
        OUTLINED_FUNCTION_13(v77, *(v76 + 16) + 1);
        v76 = v147;
      }

      v19 = *(v76 + 16);
      v78 = *(v76 + 24);
      v79 = (v19 + 1);
      if (v19 >= v78 >> 1)
      {
        OUTLINED_FUNCTION_10(v78);
        v79 = v141;
        v76 = v147;
      }

      v16 = (v16 + 1);
      *(v76 + 16) = v79;
      v141 = v76;
      v136((v76 + v4 + v19 * v23), v138, v145);
    }

    else
    {
LABEL_56:
      (*(v6 + 8))(v144, v145);
      v16 = (v16 + 1);
    }
  }

  v91 = v141;
  if (*(v141 + 2))
  {
    OUTLINED_FUNCTION_4_0();
    v93 = v145;
    v94(v139, &v91[v92], v145);

    v95 = UsoIdentifier.value.getter();
    v96 = OUTLINED_FUNCTION_9();
    v97(v96, v93);
    v98 = v143;
  }

  else
  {

    v105 = dispatch thunk of UsoEntity_common_PostalAddress.label.getter();
    v98 = v143;
    if (v106)
    {
      v95 = String.convertToContactAttributeLabel.getter(v105, v106);
      v23 = v107;
    }

    else
    {
      v126 = UsoEntity_common_PostalAddress.requestedAddressField.getter(v105);
      if (v126 == 5)
      {
        v95 = 0;
        v23 = 0;
      }

      else
      {
        v95 = ContactNLIntent.ContactPostalAddressField.rawValue.getter(v126);
        v23 = v127;
      }
    }
  }

  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v128, v129))
  {
    v130 = OUTLINED_FUNCTION_24();
    v131 = OUTLINED_FUNCTION_23();
    v146 = v131;
    v147 = v95;
    *v130 = 136315138;
    v148 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v132 = String.init<A>(describing:)();
    v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v133, &v146);

    *(v130 + 4) = v134;
    _os_log_impl(&dword_26686A000, v128, v129, "#SiriKitGetEntityIntent address was converted to a postal address with value %s", v130, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v131);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  *v98 = v95;
  *(v98 + 8) = v23;
  *(v98 + 16) = 2;
LABEL_94:
  OUTLINED_FUNCTION_14();
}

void specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2);
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2);
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2);
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2);
  *v3 = v4;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SpecifyingContactAddressType(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for SpecifyingContactAddressType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
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

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay11SiriKitFlow11DisplayHintVG12displayHints_AC13SemanticValueV02idL0tGMd, _ss23_ContiguousArrayStorageCySay11SiriKitFlow11DisplayHintVG12displayHints_AC13SemanticValueV02idL0tGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
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
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15();
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v12 = v11;
  if (v13)
  {
    v14 = *(v3 + 24);
    v15 = v14 >> 1;
    if ((v14 >> 1) < v2)
    {
      if (v15 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
      if ((v14 & 0xFFFFFFFFFFFFFFFELL) <= v2)
      {
        v15 = v2;
      }
    }
  }

  else
  {
    v15 = v2;
  }

  v16 = *(v3 + 16);
  if (v15 <= v16)
  {
    v17 = *(v3 + 16);
  }

  else
  {
    v17 = v15;
  }

  if (!v17)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v18 = *(v9(0) - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v19)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 - v20 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v16;
  v21[3] = 2 * ((v22 - v20) / v19);
LABEL_19:
  v24 = *(v9(0) - 8);
  if (v12)
  {
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v7(v10 + v25, v16, v21 + v25);
    *(v10 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_14();
}

uint64_t outlined destroy of UsoEntity_common_Person.DefinedValues?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined consume of SiriKitContactIntentResolvedValue(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_10(unint64_t a1@<X8>)
{
  *(v2 - 160) = v1;

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_11()
{
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);

  return RRReferenceResolverProtocol.resolveCommonPerson()(v2, v3, v0);
}

void OUTLINED_FUNCTION_13(uint64_t a1, uint64_t a2)
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2, 1);
}

uint64_t OUTLINED_FUNCTION_19()
{

  return type metadata accessor for RREntity();
}

void OUTLINED_FUNCTION_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_21(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_22(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25(uint64_t a1)
{

  return outlined destroy of UsoEntity_common_Person.DefinedValues?(a1, v1, v2);
}

uint64_t GetContactAttributeHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  OUTLINED_FUNCTION_4();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for SiriKitIntentHandler();
  v0[4] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriContacts);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_11_0();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_6();
  }

  type metadata accessor for SiriKitIntentExecutionBehavior();
  v9 = one-time initialization token for current;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 24);
  type metadata accessor for ContactResolver();
  swift_allocObject();
  v11 = ContactResolver.init()();
  v12 = objc_allocWithZone(type metadata accessor for GetContactAttributeIntentHandler(0));

  specialized BaseIntentHandler.init(contactService:contactResolver:)(v13, v11, v12);
  type metadata accessor for GetContactAttributeIntent();
  v14 = v10;
  SiriKitIntentHandler.init<A>(app:intentHandler:intent:)();
  v15 = static SiriKitIntentExecutionBehavior.embeddedIntentHandler(intentHandler:)();
  v16 = OUTLINED_FUNCTION_17_0();
  v17(v16);

  v18 = *(v0 + 8);

  return v18(v15);
}

uint64_t GetContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v1[39] = OUTLINED_FUNCTION_10_0();
  v5 = type metadata accessor for TemplatingResult();
  v1[40] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v1[41] = v6;
  v1[42] = OUTLINED_FUNCTION_10_0();
  v7 = type metadata accessor for ContactsSnippetPluginModel();
  v1[43] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v1[44] = v8;
  v1[45] = OUTLINED_FUNCTION_10_0();
  ContactAttributeSnippetModel = type metadata accessor for GetContactAttributeSnippetModel();
  v1[46] = ContactAttributeSnippetModel;
  OUTLINED_FUNCTION_1_1(ContactAttributeSnippetModel);
  v1[47] = v10;
  v1[48] = OUTLINED_FUNCTION_10_0();
  v11 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_18_0(v11);
  v1[49] = OUTLINED_FUNCTION_10_0();
  v12 = type metadata accessor for OutputGenerationManifest();
  v1[50] = v12;
  OUTLINED_FUNCTION_1_1(v12);
  v1[51] = v13;
  v1[52] = OUTLINED_FUNCTION_10_0();
  v14 = type metadata accessor for Locale();
  v1[53] = v14;
  OUTLINED_FUNCTION_1_1(v14);
  v1[54] = v15;
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v16 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_18_0(v16);
  v1[57] = OUTLINED_FUNCTION_10_0();
  v17 = type metadata accessor for NLContextUpdate();
  v1[58] = v17;
  OUTLINED_FUNCTION_1_1(v17);
  v1[59] = v18;
  v1[60] = OUTLINED_FUNCTION_10_0();
  v19 = type metadata accessor for Signpost.OpenSignpost(0);
  v1[61] = v19;
  OUTLINED_FUNCTION_18_0(v19);
  v1[62] = OUTLINED_FUNCTION_10_0();
  v20 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

{
  v129 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v2 = v0[61];
  v3 = v0[62];
  v4 = static Signpost.contactsLog;
  v0[63] = static Signpost.contactsLog;
  v4;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v5 = 44;
  OUTLINED_FUNCTION_8_0();
  os_signpost(_:dso:log:name:signpostID:)();
  v6 = v3 + *(v2 + 20);
  *v6 = "MakeGetContactAttributeIntentHandledResponse";
  *(v6 + 8) = 44;
  *(v6 + 16) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents019GetContactAttributeD0CAD0ijkD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents019GetContactAttributeD0CAD0ijkD8ResponseCGMR);
  v7 = IntentResolutionRecord.intentResponse.getter();
  ContactAttributeIntent = outlined bridged method (ob) of @objc GetContactAttributeIntentResponse.contactIdentifiers.getter(v7);
  if (!ContactAttributeIntent)
  {
    goto LABEL_11;
  }

  v9 = ContactAttributeIntent;
  if (!*(ContactAttributeIntent + 16))
  {

LABEL_11:
    type metadata accessor for ContactsError(0);
    OUTLINED_FUNCTION_0_0();
    ContactAttributeHandleIntentStrategy = lazy protocol witness table accessor for type GetContactAttributeHandleIntentStrategy and conformance GetContactAttributeHandleIntentStrategy(v22, v23, &protocol conformance descriptor for ContactsError);
    OUTLINED_FUNCTION_7_1(ContactAttributeHandleIntentStrategy);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_21:
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_8_0();
    os_signpost(_:dso:log:name:signpostID:)();
    OUTLINED_FUNCTION_6_0();
    outlined destroy of Signpost.OpenSignpost(v2);

    OUTLINED_FUNCTION_3();
    goto LABEL_22;
  }

  v10 = IntentResolutionRecord.intent.getter();
  v11 = [v10 isMe];

  if (v11 && (LOBYTE(v128[0]) = 2, MEMORY[0x26D5E2680](v11, v128), v11, (v128[0] & 1) != 0))
  {
    v12 = v0[38];
    v13 = v12[10];
    v14 = v12[11];
    v11 = __swift_project_boxed_opaque_existential_1(v12 + 7, v13);
    v1 = (*(v14 + 24))(v13, v14);
    v5 = 1;
  }

  else
  {
    v2 = v0;
    v15 = v0[38];
    v16 = v15[10];
    v17 = v15[11];
    v18 = __swift_project_boxed_opaque_existential_1(v15 + 7, v16);
    if (!v9[2])
    {
      __break(1u);
      goto LABEL_42;
    }

    v11 = v18;
    v19 = v9[4];
    v20 = v9[5];
    v21 = *(v17 + 8);

    v1 = v21(v19, v20, v16, v17);

    v5 = 0;
  }

  v0[64] = v1;
  if (!v1)
  {
    type metadata accessor for ContactsError(0);
    OUTLINED_FUNCTION_0_0();
    v50 = lazy protocol witness table accessor for type GetContactAttributeHandleIntentStrategy and conformance GetContactAttributeHandleIntentStrategy(v48, v49, &protocol conformance descriptor for ContactsError);
    v51 = OUTLINED_FUNCTION_7_1(v50);
    if (v9[2])
    {
      v2 = v51;
      v53 = v52;
      v54 = v9[4];
      v55 = v9[5];

      *v53 = v54;
      v53[1] = v55;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_21;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v25 = IntentResolutionRecord.intent.getter();
  v11 = [v25 contactAttributeToGet];
  v0[65] = v11;

  if (!v11)
  {
    type metadata accessor for ContactsError(0);
    OUTLINED_FUNCTION_0_0();
    v60 = lazy protocol witness table accessor for type GetContactAttributeHandleIntentStrategy and conformance GetContactAttributeHandleIntentStrategy(v58, v59, &protocol conformance descriptor for ContactsError);
    OUTLINED_FUNCTION_7_1(v60);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_21;
  }

  if (one-time initialization token for siriContacts != -1)
  {
LABEL_43:
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v26 = type metadata accessor for Logger();
  v0[66] = __swift_project_value_buffer(v26, static Logger.siriContacts);
  v27 = v11;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  v126 = v27;
  v125 = v5;
  if (os_log_type_enabled(v28, v29))
  {
    v123 = v29;
    v30 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v128[0] = v121;
    *v30 = 136315138;
    v31 = v27;
    v32 = [v31 description];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v27 = v126;
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v128);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_26686A000, v28, v123, "#GetContactAttributeHandleIntentStrategy Attempting to create views for %s lookup.", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v121);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v37 = IntentResolutionRecord.intent.getter();
  ContactAttribute = outlined bridged method (ob) of @objc GetContactAttributeIntent.contactHandleMatches.getter(v37, &selRef_contactHandleMatches);
  v0[67] = ContactAttribute;
  v39 = IntentResolutionRecord.intent.getter();
  v40 = outlined bridged method (ob) of @objc GetContactAttributeIntent.contactHandleMatches.getter(v39, &selRef_contactHandleAlternatives);
  v0[68] = v40;
  v124 = ContactAttribute;
  v41 = specialized ContactsStrategy.handles(matches:alternatives:)(ContactAttribute, v40);
  v0[69] = v41;
  v42 = [v27 contactAttributeType];
  v43 = swift_allocBox();
  v45 = v44;
  NLContextUpdate.init()();
  NLContextUpdate.currentDomainName.setter();
  v0[70] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266966A40;
  *(inited + 32) = v1;

  v47 = v1;
  specialized DisplayHintFactory.build(for:handles:contactAttributeType:_:)(inited, v41, v42, 0, v43);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v122 = v40;
  if (specialized Array._getCount()() < 2)
  {
    static RREntity.makeEntityList(for:)(v47);
  }

  else
  {
    static RREntity.makeDisambiguationGroup(for:with:)(v47, v41);
  }

  swift_beginAccess();
  NLContextUpdate.rrEntities.setter();
  swift_endAccess();
  v61 = v0[59];
  v62 = v0[60];
  v63 = v0[58];
  swift_beginAccess();
  v64 = v0;
  v118 = *(v61 + 16);
  v118(v62, v45, v63);

  if ([v126 contactAttributeType] == 9)
  {
    v65 = 1;
  }

  else
  {
    v65 = *(v0[38] + 112);
  }

  if (specialized ContactsStrategy.isSmartEnabled.getter())
  {
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v66, v67))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11_0();
      _os_log_impl(v68, v69, v70, v71, v72, 2u);
      OUTLINED_FUNCTION_6();
    }

    v73 = v0[56];
    v75 = v0[53];
    v74 = v0[54];
    v76 = v64[38];

    type metadata accessor for GetContactAttributeCATsModern(0);
    static CATOption.defaultMode.getter();
    v64[71] = CATWrapperSimple.__allocating_init(options:globals:)();
    __swift_project_boxed_opaque_existential_1((v76 + 16), *(v76 + 40));
    OUTLINED_FUNCTION_17_0();
    dispatch thunk of DeviceState.siriLocale.getter();
    v77 = Locale.identifier.getter();
    v79 = v78;
    v64[72] = v78;
    (*(v74 + 8))(v73, v75);
    __swift_project_boxed_opaque_existential_1((v76 + 16), *(v76 + 40));
    v80 = OUTLINED_FUNCTION_20_0();
    v81 = swift_task_alloc();
    v64[73] = v81;
    *v81 = v64;
    v81[1] = GetContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
    v132 = 0;
    v131 = 0;

    return GetContactAttributeCATsModern.intentHandledResponse(matches:alternatives:attribute:contact:isMe:localeString:isVoiceMode:mockGlobals:isModern:)(v124, v122, v126, v47, v125, v77, v79, v80 & 1);
  }

  v133 = v65;
  v82 = IntentResolutionRecord.intent.getter();
  isa = [v82 isMe];

  if (!isa)
  {
    type metadata accessor for NSNumber();
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  }

  v84 = v0[38];
  outlined init with copy of DeviceState(v84 + 16, (v0 + 6));
  v117 = v84;
  v85 = *(v84 + 104);
  v0[2] = v41;
  v0[3] = v47;
  v0[4] = isa;
  v0[5] = v126;
  v0[11] = v85;
  v86 = v126;
  v127 = v47;

  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
  outlined destroy of GetContactAttributeViewBuilder((v0 + 2));
  v87 = v86;
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.debug.getter();

  v119 = v87;
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v128[0] = v91;
    *v90 = 136315138;
    v92 = v87;
    v93 = [v92 description];
    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v95;

    v64 = v0;
    v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v96, v128);

    *(v90 + 4) = v97;
    _os_log_impl(&dword_26686A000, v88, v89, "#GetContactAttributeHandleIntentStrategy Attempting to create intentHandledResponse for %s lookup.", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v91);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v99 = v64[54];
  v98 = v64[55];
  v100 = v64[53];
  v101 = v64[42];
  v102 = v64[38];
  v103 = v64;
  __swift_project_boxed_opaque_existential_1((v117 + 16), *(v102 + 40));
  dispatch thunk of DeviceState.siriLocale.getter();
  v104 = Locale.identifier.getter();
  v106 = v105;
  (*(v99 + 8))(v98, v100);
  __swift_project_boxed_opaque_existential_1((v117 + 16), *(v102 + 40));
  v107 = OUTLINED_FUNCTION_20_0();
  GetContactAttributeCATs.intentHandledResponse(matches:alternatives:attribute:contact:isMe:localeString:isVoiceMode:mockGlobals:)(v124, v122, v119, v127, v125, v104, v106, v107 & 1, v101, 0);
  v109 = v103[59];
  v108 = v103[60];
  v110 = v103[58];
  v111 = v103[41];
  v116 = v103[42];
  v112 = v103[39];
  v120 = v103[40];
  v113 = v103[36];

  v118(v112, v108, v110);
  __swift_storeEnumTagSinglePayload(v112, 0, 1, v110);
  v114 = type metadata accessor for AceOutput();
  *(v103 + 19) = 0u;
  v103[21] = 0;
  *(v103 + 17) = 0u;
  v115 = MEMORY[0x277D5C1D8];
  v113[3] = v114;
  v113[4] = v115;
  __swift_allocate_boxed_opaque_existential_1(v113);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of UsoEntity_common_Person.DefinedValues?((v103 + 17), &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v112, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v111 + 8))(v116, v120);
  (*(v109 + 8))(v108, v110);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_8_0();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v103[62]);

  v56 = v103[1];
LABEL_22:

  return v56();
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_0();
  *v3 = v2;
  *(v2 + 592) = v4;
  *(v2 + 600) = v0;

  if (v0)
  {

    v5 = GetContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {
    v5 = GetContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  v1 = v0[74];
  v2 = v0[45];
  v3 = v0[43];
  v4 = v0[44];
  (*(v0[47] + 16))(v2, v0[48], v0[46]);
  (*(v4 + 104))(v2, *MEMORY[0x277D559F0], v3);
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  v0[80] = ResponseFactory.init()();
  v0[25] = v3;
  v0[26] = lazy protocol witness table accessor for type GetContactAttributeHandleIntentStrategy and conformance GetContactAttributeHandleIntentStrategy(&lazy protocol witness table cache variable for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel, MEMORY[0x277D55A00], MEMORY[0x277D559E0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
  (*(v4 + 16))(boxed_opaque_existential_1, v2, v3);
  v6 = swift_allocObject();
  v0[81] = v6;
  *(v6 + 16) = xmmword_266966A40;
  *(v6 + 32) = v1;
  OUTLINED_FUNCTION_16_0(MEMORY[0x277D5BD38]);
  v7 = v1;
  v8 = swift_task_alloc();
  v0[82] = v8;
  *v8 = v0;
  v8[1] = GetContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  v9 = v0[52];
  v10 = v0[36];

  return v12(v10, v0 + 22, v6, v9);
}

{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_0();
  *v4 = v3;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 176));
  v5 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  v3 = *(v0 + 472);
  v15 = *(v0 + 464);
  v16 = *(v0 + 480);
  v4 = *(v0 + 408);
  v13 = *(v0 + 400);
  v14 = *(v0 + 416);
  v5 = *(v0 + 376);
  v12 = *(v0 + 384);
  v7 = *(v0 + 360);
  v6 = *(v0 + 368);
  v8 = *(v0 + 344);
  v9 = *(v0 + 352);

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v12, v6);
  (*(v4 + 8))(v14, v13);
  (*(v3 + 8))(v16, v15);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_8_0();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_5_1();
  outlined destroy of Signpost.OpenSignpost(v8);

  OUTLINED_FUNCTION_3();

  return v10();
}

void GetContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_19_0();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = *(v22 + 552);
  v26 = *(v22 + 520);
  v27 = *(v22 + 480);
  v28 = *(v22 + 304);
  v29 = DialogExecutionResult.responseViewIDForManifest.getter();
  v31 = v30;
  static DialogPhase.completion.getter();
  v32 = swift_task_alloc();
  v32[2] = v28;
  v32[3] = v27;
  v32[4] = v29;
  v32[5] = v31;
  v32[6] = v26;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v33 = specialized Array._getCount()();
  v34 = 0;
  v35 = v25 & 0xC000000000000001;
  v36 = v25 & 0xFFFFFFFFFFFFFF8;
  v37 = v25 + 32;
  while (v33 != v34)
  {
    if (v35)
    {
      v38 = MEMORY[0x26D5E29D0](v34, *(v22 + 552));
    }

    else
    {
      if (v34 >= *(v36 + 16))
      {
        goto LABEL_20;
      }

      v38 = *(v37 + 8 * v34);
    }

    v39 = v38;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v40 = ContactAttribute.isEmpty.getter();

    ++v34;
    if ((v40 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (CNContact.containsData(for:)(*(v22 + 520)))
  {
LABEL_11:
    v41 = swift_task_alloc();
    *(v22 + 632) = v41;
    *v41 = v22;
    v41[1] = GetContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
    OUTLINED_FUNCTION_13_0();

    static GetContactAttributeSnippetModel.from(_:requestedAttribute:handlesToReturn:deviceState:mockGlobals:)(v42, v43, v44, v45, v46, v47);
    return;
  }

  v49 = *(v22 + 520);

  v50 = v49;
  v51 = Logger.logObject.getter();
  LOBYTE(v49) = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v51, v49))
  {
    v52 = *(v22 + 520);
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    a11 = v54;
    *v53 = 136315138;
    v55 = v52;
    v56 = [v55 description];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &a11);

    *(v53 + 4) = v60;
    OUTLINED_FUNCTION_11_0();
    _os_log_impl(v61, v62, v63, v64, v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v66 = *(v22 + 592);
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  *(v22 + 608) = ResponseFactory.init()();
  v67 = swift_allocObject();
  *(v22 + 616) = v67;
  *(v67 + 16) = xmmword_266966A40;
  *(v67 + 32) = v66;
  OUTLINED_FUNCTION_16_0(MEMORY[0x277D5BD50]);
  v68 = v66;
  v69 = swift_task_alloc();
  *(v22 + 624) = v69;
  *v69 = v22;
  v69[1] = GetContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  OUTLINED_FUNCTION_13_0();

  v73(v70, v71, v72, v73, v74, v75, v76, v77, a9, a10, a11, a12, a13, a14);
}

uint64_t GetContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_0();
  v15 = *(v14 + 520);
  v16 = *(v14 + 504);
  v17 = *(v14 + 512);
  v18 = *(v14 + 408);
  v19 = *(v14 + 416);
  v20 = *(v14 + 400);

  (*(v18 + 8))(v19, v20);
  v21 = OUTLINED_FUNCTION_17_0();
  v22(v21);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_8_0();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_5_1();
  v34 = v24;
  v35 = v23;
  outlined destroy of Signpost.OpenSignpost(v16);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, v35, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_19_0();
  v15 = *(v14 + 512);
  v16 = *(v14 + 496);

  v17 = OUTLINED_FUNCTION_17_0();
  v18(v17);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_8_0();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_6_0();
  v29 = *(v14 + 336);
  v30 = *(v14 + 312);
  v31 = v19;
  outlined destroy of Signpost.OpenSignpost(v16);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, a12, a13, a14);
}

char *closure #1 in GetContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = type metadata accessor for ResponseMode();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - v10;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v12 = type metadata accessor for NLContextUpdate();
  (*(*(v12 - 8) + 16))(v11, a3, v12);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  OutputGenerationManifest.nlContextUpdate.setter();

  OutputGenerationManifest.responseViewId.setter();
  result = [a6 contactAttributeType];
  if ((result - 6) <= 3)
  {
    static ResponseMode.voiceForward.getter();
    return OutputGenerationManifest.responseMode.setter();
  }

  return result;
}

uint64_t GetContactAttributeHandleIntentStrategy.__deallocating_deinit()
{
  v0 = specialized ContactsStrategy.deinit();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t type metadata accessor for GetContactAttributeHandleIntentStrategy(uint64_t a1)
{
  result = type metadata singleton initialization cache for GetContactAttributeHandleIntentStrategy;
  if (!type metadata singleton initialization cache for GetContactAttributeHandleIntentStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized ContactsStrategy.handles(matches:alternatives:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
    if (a2)
    {
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }
  }

  return v2;
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ContactAttributeHandleIntentStrategy = type metadata accessor for GetContactAttributeHandleIntentStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C68](a1, a2, ContactAttributeHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ContactAttributeHandleIntentStrategy = type metadata accessor for GetContactAttributeHandleIntentStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C70](a1, a2, ContactAttributeHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ContactAttributeHandleIntentStrategy = type metadata accessor for GetContactAttributeHandleIntentStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C48](a1, a2, ContactAttributeHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return GetContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)();
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ContactAttributeHandleIntentStrategy = type metadata accessor for GetContactAttributeHandleIntentStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C60](a1, a2, ContactAttributeHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ContactAttributeHandleIntentStrategy = type metadata accessor for GetContactAttributeHandleIntentStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C58](a1, a2, ContactAttributeHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ContactAttributeHandleIntentStrategy = type metadata accessor for GetContactAttributeHandleIntentStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return MEMORY[0x2821B9C38](a1, a2, ContactAttributeHandleIntentStrategy, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance GetContactAttributeHandleIntentStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for Flow.onAsync(input:) in conformance ContactsUnsupportedFlow;

  return GetContactAttributeHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)();
}

uint64_t outlined bridged method (ob) of @objc GetContactAttributeIntentResponse.contactIdentifiers.getter(void *a1)
{
  v2 = [a1 contactIdentifiers];

  if (!v2)
  {
    return 0;
  }

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined destroy of Signpost.OpenSignpost(uint64_t a1)
{
  v2 = type metadata accessor for Signpost.OpenSignpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined bridged method (ob) of @objc GetContactAttributeIntent.contactHandleMatches.getter(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  type metadata accessor for ContactAttribute();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t lazy protocol witness table accessor for type GetContactAttributeHandleIntentStrategy and conformance GetContactAttributeHandleIntentStrategy(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_20_0()
{

  return DeviceState.isVox.getter();
}

uint64_t ContactsDelegateFlow.__allocating_init(flowFactory:)(__int128 *a1)
{
  v2 = swift_allocObject();
  ContactsDelegateFlow.init(flowFactory:)(a1);
  return v2;
}

uint64_t ContactsDelegateFlow.init(flowFactory:)(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_restrictionGuards;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
  v4 = type metadata accessor for CommonFlowGuard();
  OUTLINED_FUNCTION_1_1(v4);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_266966D80;
  static CommonFlowGuard.ensuringPersonalRequestsAreEnabledWhenApplicable.getter();
  static CommonFlowGuard.ensuringDeviceIsAuthenticated.getter();
  static CommonFlowGuard.disallowInSharingMode.getter();
  *(v1 + v3) = v5;
  type metadata accessor for ContactsFlowState(0);
  swift_storeEnumTagMultiPayload();
  outlined init with take of DeviceState(a1, v1 + OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_flowFactory);
  return v1;
}

BOOL ContactsDelegateFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v44 = type metadata accessor for ContactsFlowState(0);
  OUTLINED_FUNCTION_10_1();
  v5 = MEMORY[0x28223BE20](v4);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = &v37 - v7;
  v39 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v9 = type metadata accessor for Input();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v16 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v16, static Logger.siriContacts);
  v40 = *(v11 + 16);
  v40(v15, a1, v9);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v41 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v38 = v1;
    v21 = v20;
    v22 = OUTLINED_FUNCTION_23();
    v45[0] = v22;
    *v21 = 136315138;
    Input.parse.getter();
    v23 = String.init<A>(describing:)();
    v25 = v24;
    v26 = OUTLINED_FUNCTION_42();
    v27(v26);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v45);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_26686A000, v17, v18, "#ContactsDelegateFlow on(input:) %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    OUTLINED_FUNCTION_6();
    v2 = v38;
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v29 = OUTLINED_FUNCTION_42();
    v30(v29);
  }

  v31 = OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_flowState;
  swift_beginAccess();
  v32 = v43;
  outlined init with copy of ContactsFlowState(v2 + v31, v43);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_2_1();
  outlined destroy of ContactsFlowState(v32, v34);
  if (EnumCaseMultiPayload == 2)
  {
    v35 = v42;
    v40(v42, v41, v15);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of ContactsFlowState(v35, v2 + v31);
    swift_endAccess();
  }

  return EnumCaseMultiPayload == 2;
}

uint64_t ContactsDelegateFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContactsDelegateFlow(0);
  lazy protocol witness table accessor for type ContactsDelegateFlow and conformance ContactsDelegateFlow();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t ContactsDelegateFlow.execute()()
{
  OUTLINED_FUNCTION_4();
  v1[9] = v2;
  v1[10] = v0;
  v3 = type metadata accessor for Input();
  v1[11] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v1[12] = v4;
  v1[13] = *(v5 + 64);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = type metadata accessor for ContactsFlowState(0);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[10];
  v4 = OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_flowState;
  v0[20] = OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_flowState;
  swift_beginAccess();
  outlined init with copy of ContactsFlowState(v3 + v4, v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v0[12] + 32))(v0[14], v0[19], v0[11]);
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v32 = type metadata accessor for Logger();
      v0[21] = __swift_project_value_buffer(v32, static Logger.siriContacts);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_15_0(v34))
      {
        v35 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_24_0(v35);
        OUTLINED_FUNCTION_11_0();
        _os_log_impl(v36, v37, v38, v39, v40, 2u);
        OUTLINED_FUNCTION_11_1();
      }

      v41 = swift_task_alloc();
      v0[22] = v41;
      *v41 = v0;
      v41[1] = ContactsDelegateFlow.execute();
      OUTLINED_FUNCTION_13_0();

      return ContactsDelegateFlow.getFlow(for:)();
    case 2u:
      OUTLINED_FUNCTION_14_0((v0[10] + OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_flowFactory));
      OUTLINED_FUNCTION_21_0();
      v18 = swift_task_alloc();
      v0[24] = v18;
      *v18 = v0;
      OUTLINED_FUNCTION_9_0(v18);
      OUTLINED_FUNCTION_13_0();

      __asm { BRAA            X2, X16 }

      return result;
    case 3u:
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v21 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v21, static Logger.siriContacts);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_15_0(v23))
      {
        v24 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_24_0(v24);
        OUTLINED_FUNCTION_11_0();
        _os_log_impl(v25, v26, v27, v28, v29, 2u);
        OUTLINED_FUNCTION_11_1();
      }

      static ExecuteResponse.complete()();
      break;
    default:
      v5 = v0[10];
      v44 = *(v0[12] + 32);
      v44(v0[16], v0[19], v0[11]);
      OUTLINED_FUNCTION_14_0((v5 + OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_flowFactory));
      v6 = (*(v3 + 88))(*(v5 + OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_restrictionGuards), v2, v3);
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v7 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v7, static Logger.siriContacts);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_24_0(v10);
        _os_log_impl(&dword_26686A000, v8, v9, "#ContactsDelegateFlow runningGuardFlow ...", v3, 2u);
        OUTLINED_FUNCTION_11_1();
      }

      v12 = v0[15];
      v11 = v0[16];
      v13 = v0[12];
      v15 = v0[10];
      v14 = v0[11];

      v0[8] = v6;
      (*(v13 + 16))(v12, v11, v14);
      v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = v15;
      v44(v17 + v16, v12, v14);
      type metadata accessor for GuardFlow();

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      (*(v13 + 8))(v11, v14);

      break;
  }

  OUTLINED_FUNCTION_23_0();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0();

  __asm { BRAA            X1, X16 }

  return result;
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v4;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_39();
  if (*(v1 + 184))
  {
    static ExecuteResponse.complete(next:)();

    v4 = OUTLINED_FUNCTION_22_0();
    v5(v4);
  }

  else
  {
    Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_0(v6))
    {
      v7 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v7);
      OUTLINED_FUNCTION_11_0();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_11_1();
    }

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_22_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_44();
    outlined assign with take of ContactsFlowState(v0, v3 + v2);
    swift_endAccess();
    static ExecuteResponse.complete()();
    v13 = OUTLINED_FUNCTION_43();
    v14(v13);
  }

  OUTLINED_FUNCTION_23_0();

  OUTLINED_FUNCTION_3();

  return v15();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 200) = v4;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_39();
  v22 = v0;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v4, static Logger.siriContacts);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_37();
    v8 = OUTLINED_FUNCTION_23();
    v21 = v8;
    *v7 = 136315138;
    outlined init with copy of ContactsFlowState(v3 + v2, v1);
    OUTLINED_FUNCTION_43();
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v21);

    *(v7 + 4) = v11;
    OUTLINED_FUNCTION_11_0();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_11_1();
  }

  v17 = *(v0 + 152);
  static ExecuteResponse.complete(next:)();

  OUTLINED_FUNCTION_2_1();
  outlined destroy of ContactsFlowState(v17, v18);
  OUTLINED_FUNCTION_23_0();

  OUTLINED_FUNCTION_3();

  return v19();
}

{
  OUTLINED_FUNCTION_39();
  v22 = v0;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v4, static Logger.siriContacts);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_37();
    v8 = OUTLINED_FUNCTION_23();
    v21 = v8;
    *v7 = 136315138;
    outlined init with copy of ContactsFlowState(v3 + v2, v1);
    OUTLINED_FUNCTION_43();
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v21);

    *(v7 + 4) = v11;
    OUTLINED_FUNCTION_11_0();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_11_1();
  }

  v17 = *(v0 + 152);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_2_1();
  outlined destroy of ContactsFlowState(v17, v18);
  OUTLINED_FUNCTION_23_0();

  OUTLINED_FUNCTION_3();

  return v19();
}

{
  OUTLINED_FUNCTION_39();
  Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_15_0(v3))
  {
    v4 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v4);
    OUTLINED_FUNCTION_11_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_11_1();
  }

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_22_0();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_44();
  outlined assign with take of ContactsFlowState(v0, v2 + v1);
  swift_endAccess();
  static ExecuteResponse.complete()();
  v10 = OUTLINED_FUNCTION_43();
  v11(v10);
  OUTLINED_FUNCTION_23_0();

  OUTLINED_FUNCTION_3();

  return v12();
}

uint64_t ContactsDelegateFlow.handleGuardFlowResult(_:input:)(char a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for ContactsFlowState(0);
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  if (static GuardFlowResult.== infix(_:_:)())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v9 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v9, static Logger.siriContacts);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_31(v11))
    {
      v12 = OUTLINED_FUNCTION_30();
      *v12 = 0;
      _os_log_impl(&dword_26686A000, v10, v11, "#ContactsDelegateFlow Moved state to runningContactsFlow", v12, 2u);
      OUTLINED_FUNCTION_6();
    }

    type metadata accessor for Input();
    OUTLINED_FUNCTION_10_1();
    (*(v13 + 16))(v8, a2);
  }

  else
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v14 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v14, static Logger.siriContacts);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_31(v16))
    {
      v17 = swift_slowAlloc();
      v18 = OUTLINED_FUNCTION_23();
      v24[0] = v18;
      *v17 = 136315138;
      v19 = GuardFlowResult.description.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_26686A000, v15, v16, "#ContactsDelegateFlow GuardFlow yielded an ExitValue that is either invalid or not passing: %s. Ending the flow.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }
  }

  swift_storeEnumTagMultiPayload();
  v22 = OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_flowState;
  swift_beginAccess();
  outlined assign with take of ContactsFlowState(v8, v3 + v22);
  return swift_endAccess();
}

uint64_t ContactsDelegateFlow.getFlow(for:)()
{
  OUTLINED_FUNCTION_4();
  v1[14] = v2;
  v1[15] = v0;
  v3 = type metadata accessor for Input();
  v1[16] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v1[17] = v4;
  v1[18] = swift_task_alloc();
  v1[19] = type metadata accessor for Signpost.OpenSignpost(0);
  v1[20] = swift_task_alloc();
  v5 = type metadata accessor for Parse();
  v1[21] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v1[22] = v6;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  Input.parse.getter();
  v0[12] = 0;
  v0[13] = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  v1 = v0[12];
  v2 = v0[13];
  v0[5] = MEMORY[0x277D837D0];
  v3 = lazy protocol witness table accessor for type String and conformance String();
  v0[2] = v1;
  v0[6] = v3;
  v0[3] = v2;
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v5 = v0[19];
  v4 = v0[20];
  v19 = v0[15];
  v6 = static Signpost.contactsLog;
  v0[25] = static Signpost.contactsLog;
  v7 = v6;
  OSSignpostID.init(log:)();
  v8 = static os_signpost_type_t.begin.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_266966D90;
  outlined init with copy of DeviceState((v0 + 2), v9 + 32);
  os_signpost(_:dso:log:name:signpostID:_:_:)(v8, &dword_26686A000, v7, "GetFlowForInput", 15, 2, v4, "Parse = %s", 0xA);

  v10 = v4 + *(v5 + 20);
  *v10 = "GetFlowForInput";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v11 = OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_flowFactory;
  v0[26] = OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_flowFactory;
  __swift_project_boxed_opaque_existential_1((v19 + v11), *(v19 + v11 + 24));
  v12 = OUTLINED_FUNCTION_22_0();
  v13(v12);
  v14 = swift_task_alloc();
  v0[27] = v14;
  *v14 = v0;
  v14[1] = ContactsDelegateFlow.getFlow(for:);
  OUTLINED_FUNCTION_16_1();

  return Parse.toSiriKitIntent(referenceResolver:previousIntent:)(v15, v16, v17);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 224) = v4;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_5();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v5 + 240) = v0;

  if (!v0)
  {
    *(v5 + 248) = v3;
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_5();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v5 + 264) = v0;

  if (!v0)
  {
    *(v5 + 272) = v3;
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_5();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v5 + 288) = v0;

  if (!v0)
  {
    *(v5 + 296) = v3;
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void ContactsDelegateFlow.getFlow(for:)()
{
  v1 = v0[28];
  if (v1)
  {
    type metadata accessor for GetContactIntent();
    if (swift_dynamicCastClass())
    {
      v2 = one-time initialization token for siriContacts;
      v3 = v1;
      if (v2 != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v4 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v4, static Logger.siriContacts);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_31(v6))
      {
        *OUTLINED_FUNCTION_30() = 0;
        OUTLINED_FUNCTION_27(&dword_26686A000, v7, v8, "#ContactsDelegateFlow Returning GetContactFlow");
        OUTLINED_FUNCTION_6();
      }

      goto LABEL_19;
    }

    type metadata accessor for GetContactAttributeIntent();
    if (swift_dynamicCastClass())
    {
      v9 = one-time initialization token for siriContacts;
      v10 = v1;
      if (v9 != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v11 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v11, static Logger.siriContacts);
      v5 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_31(v12))
      {
        *OUTLINED_FUNCTION_30() = 0;
        OUTLINED_FUNCTION_27(&dword_26686A000, v13, v14, "#ContactsDelegateFlow Returning GetContactAttributeFlow");
        OUTLINED_FUNCTION_6();
      }

      goto LABEL_19;
    }

    type metadata accessor for ModifyContactAttributeIntent();
    if (swift_dynamicCastClass())
    {
      v15 = one-time initialization token for siriContacts;
      v16 = v1;
      if (v15 != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v17 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v17, static Logger.siriContacts);
      v5 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_31(v18))
      {
        *OUTLINED_FUNCTION_30() = 0;
        OUTLINED_FUNCTION_27(&dword_26686A000, v19, v20, "#ContactsDelegateFlow Returning ModifyContactAttributeFlow)");
        OUTLINED_FUNCTION_6();
      }

LABEL_19:

      OUTLINED_FUNCTION_26();
      v21 = OUTLINED_FUNCTION_32();
      v22(v21);

      OUTLINED_FUNCTION_3_2();
      v23 = static os_signpost_type_t.end.getter();
      OUTLINED_FUNCTION_6_1(v23);
      OUTLINED_FUNCTION_1_2();
      v24 = OUTLINED_FUNCTION_5_2();
      v25(v24);

      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_13_0();

      __asm { BRAA            X2, X16 }
    }
  }

  Parse.isLearnPronunciation.getter();
  if (v28)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v29 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v29, static Logger.siriContacts);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_0(v31))
    {
      v32 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v32);
      OUTLINED_FUNCTION_11_0();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_11_1();
    }

    v38 = v0[26];
    v39 = v0[15];

    OUTLINED_FUNCTION_14_0((v39 + v38));
    OUTLINED_FUNCTION_21_0();
    v40 = swift_task_alloc();
    v0[29] = v40;
    *v40 = v0;
    OUTLINED_FUNCTION_9_0(v40);
    OUTLINED_FUNCTION_13_0();

    __asm { BRAA            X2, X16 }
  }

  Parse.isRequestForMultipleContacts.getter();
  if (v43)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v44 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v44, static Logger.siriContacts);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_0(v46))
    {
      v47 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v47);
      OUTLINED_FUNCTION_11_0();
      _os_log_impl(v48, v49, v50, v51, v52, 2u);
      OUTLINED_FUNCTION_11_1();
    }

    v53 = v0[26];
    v54 = v0[15];

    OUTLINED_FUNCTION_14_0((v54 + v53));
    OUTLINED_FUNCTION_21_0();
    v55 = swift_task_alloc();
    v0[32] = v55;
    *v55 = v0;
    OUTLINED_FUNCTION_9_0(v55);
    OUTLINED_FUNCTION_13_0();

    __asm { BRAA            X2, X16 }
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v59 = v0[17];
  v58 = v0[18];
  v60 = v0[16];
  v61 = v0[14];
  v62 = type metadata accessor for Logger();
  __swift_project_value_buffer(v62, static Logger.siriContacts);
  (*(v59 + 16))(v58, v61, v60);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v66 = v0[17];
    v65 = v0[18];
    v67 = v0[16];
    v68 = swift_slowAlloc();
    v69 = OUTLINED_FUNCTION_23();
    v80 = v69;
    *v68 = 136315138;
    Input.parse.getter();
    v70 = String.init<A>(describing:)();
    v72 = v71;
    (*(v66 + 8))(v65, v67);
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v80);

    *(v68 + 4) = v73;
    _os_log_impl(&dword_26686A000, v63, v64, "#ContactsDelegateFlow Falling back to UnsupportedActionFlow for parse: %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v69);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
    v75 = v0[17];
    v74 = v0[18];
    v76 = v0[16];

    (*(v75 + 8))(v74, v76);
  }

  OUTLINED_FUNCTION_14_0((v0[15] + v0[26]));
  OUTLINED_FUNCTION_21_0();
  v77 = swift_task_alloc();
  v0[35] = v77;
  *v77 = v0;
  OUTLINED_FUNCTION_9_0(v77);
  OUTLINED_FUNCTION_13_0();

  __asm { BRAA            X2, X16 }
}

uint64_t ContactsDelegateFlow.getFlow(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_3_2();
  v11 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_6_1(v11);
  OUTLINED_FUNCTION_1_2();
  v12 = OUTLINED_FUNCTION_5_2();
  v13(v12);

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_34();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_3_2();
  v11 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_6_1(v11);
  OUTLINED_FUNCTION_1_2();
  v12 = OUTLINED_FUNCTION_5_2();
  v13(v12);

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_34();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_3_2();
  v11 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_6_1(v11);
  OUTLINED_FUNCTION_1_2();
  v12 = OUTLINED_FUNCTION_5_2();
  v13(v12);

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_34();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_3_2();

  v11 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_6_1(v11);
  OUTLINED_FUNCTION_1_2();
  v12 = OUTLINED_FUNCTION_5_2();
  v13(v12);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_3_2();

  v11 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_6_1(v11);
  OUTLINED_FUNCTION_1_2();
  v12 = OUTLINED_FUNCTION_5_2();
  v13(v12);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_3_2();

  v11 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_6_1(v11);
  OUTLINED_FUNCTION_1_2();
  v12 = OUTLINED_FUNCTION_5_2();
  v13(v12);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t ContactsDelegateFlow.deinit(uint64_t a1)
{
  OUTLINED_FUNCTION_2_1();
  outlined destroy of ContactsFlowState(v1 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_flowFactory));

  return v1;
}

uint64_t ContactsDelegateFlow.__deallocating_deinit(uint64_t a1)
{
  ContactsDelegateFlow.deinit(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t protocol witness for Flow.execute() in conformance ContactsDelegateFlow()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return ContactsDelegateFlow.execute()();
}

uint64_t protocol witness for Flow.exitValue.getter in conformance ContactsDelegateFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ContactsDelegateFlow(0);

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t outlined init with copy of ContactsFlowState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactsFlowState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of ContactsFlowState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactsFlowState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ContactsFlowState(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsDelegateFlow and conformance ContactsDelegateFlow()
{
  result = lazy protocol witness table cache variable for type ContactsDelegateFlow and conformance ContactsDelegateFlow;
  if (!lazy protocol witness table cache variable for type ContactsDelegateFlow and conformance ContactsDelegateFlow)
  {
    type metadata accessor for ContactsDelegateFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsDelegateFlow and conformance ContactsDelegateFlow);
  }

  return result;
}

uint64_t partial apply for closure #1 in ContactsDelegateFlow.execute()(char *a1)
{
  v3 = *(type metadata accessor for Input() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return closure #1 in ContactsDelegateFlow.execute()(a1, v4, v5);
}

uint64_t type metadata completion function for ContactsDelegateFlow(uint64_t a1)
{
  result = type metadata accessor for ContactsFlowState(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ContactsDelegateFlow.execute()()
{
  OUTLINED_FUNCTION_41();
  v3 = v2;
  v6 = (*(*v0 + 152) + **(*v0 + 152));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return v6(v3);
}

uint64_t type metadata completion function for ContactsFlowState(uint64_t a1)
{
  result = type metadata accessor for Input();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined destroy of ContactsFlowState(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_2()
{

  return outlined destroy of ContactsFlowState(v0, type metadata accessor for Signpost.OpenSignpost);
}

uint64_t OUTLINED_FUNCTION_6_1(uint64_t a1)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

void OUTLINED_FUNCTION_11_1()
{

  JUMPOUT(0x26D5E3300);
}

BOOL OUTLINED_FUNCTION_15_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_23_0()
{
}

void OUTLINED_FUNCTION_27(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_30()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_31(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_36()
{
}

uint64_t OUTLINED_FUNCTION_37()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_44()
{

  return swift_beginAccess();
}

uint64_t GetContactHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  OUTLINED_FUNCTION_4();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for SiriKitIntentHandler();
  v0[4] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriContacts);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_31(v3))
  {
    *OUTLINED_FUNCTION_30() = 0;
    OUTLINED_FUNCTION_23_1(&dword_26686A000, v4, v5, "#GetContactHandleIntentStrategy makeIntentExecutionBehavior");
    OUTLINED_FUNCTION_6();
  }

  type metadata accessor for SiriKitIntentExecutionBehavior();
  v6 = one-time initialization token for current;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 24);
  type metadata accessor for ContactResolver();
  swift_allocObject();
  v8 = ContactResolver.init()();
  v9 = objc_allocWithZone(type metadata accessor for GetContactIntentHandler(0));

  specialized BaseIntentHandler.init(contactService:contactResolver:)(v10, v8, v9);
  type metadata accessor for GetContactIntent();
  v11 = v7;
  OUTLINED_FUNCTION_46();
  SiriKitIntentHandler.init<A>(app:intentHandler:intent:)();
  v12 = static SiriKitIntentExecutionBehavior.embeddedIntentHandler(intentHandler:)();
  v13 = OUTLINED_FUNCTION_17_0();
  v14(v13);

  v15 = *(v0 + 8);

  return v15(v12);
}

uint64_t GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[24] = v2;
  v1[25] = v0;
  v1[23] = v3;
  v4 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_18_0(v4);
  v1[26] = OUTLINED_FUNCTION_10_0();
  v5 = type metadata accessor for OutputGenerationManifest();
  v1[27] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v1[28] = v6;
  v1[29] = OUTLINED_FUNCTION_10_0();
  v7 = type metadata accessor for ContactsSnippetPluginModel();
  v1[30] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v1[31] = v8;
  v1[32] = OUTLINED_FUNCTION_10_0();
  v9 = type metadata accessor for ContactsSnippetFlowState();
  v1[33] = v9;
  OUTLINED_FUNCTION_1_1(v9);
  v1[34] = v10;
  v1[35] = OUTLINED_FUNCTION_10_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon14CodableContactVySo9CNContactCGMd, &_s18SiriContactsCommon14CodableContactVySo9CNContactCGMR);
  OUTLINED_FUNCTION_18_0(v11);
  v1[36] = OUTLINED_FUNCTION_10_0();
  ContactSnippetModel = type metadata accessor for GetContactSnippetModel();
  v1[37] = ContactSnippetModel;
  OUTLINED_FUNCTION_1_1(ContactSnippetModel);
  v1[38] = v13;
  v1[39] = OUTLINED_FUNCTION_10_0();
  ContactDirectInvocationsModel = type metadata accessor for GetContactDirectInvocationsModel();
  v1[40] = ContactDirectInvocationsModel;
  OUTLINED_FUNCTION_1_1(ContactDirectInvocationsModel);
  v1[41] = v15;
  v1[42] = OUTLINED_FUNCTION_45();
  v1[43] = swift_task_alloc();
  v16 = type metadata accessor for Locale();
  v1[44] = v16;
  OUTLINED_FUNCTION_1_1(v16);
  v1[45] = v17;
  v1[46] = OUTLINED_FUNCTION_10_0();
  v18 = type metadata accessor for ContactsLabelCATContainer();
  v1[47] = v18;
  OUTLINED_FUNCTION_1_1(v18);
  v1[48] = v19;
  v1[49] = OUTLINED_FUNCTION_45();
  v1[50] = swift_task_alloc();
  v20 = type metadata accessor for ContactsLabelCATContainer.LabelType();
  v1[51] = v20;
  OUTLINED_FUNCTION_1_1(v20);
  v1[52] = v21;
  v1[53] = OUTLINED_FUNCTION_10_0();
  v22 = type metadata accessor for TemplatingText();
  v1[54] = v22;
  OUTLINED_FUNCTION_1_1(v22);
  v1[55] = v23;
  v1[56] = OUTLINED_FUNCTION_10_0();
  v24 = type metadata accessor for TemplatingResult();
  v1[57] = v24;
  OUTLINED_FUNCTION_1_1(v24);
  v1[58] = v25;
  v1[59] = OUTLINED_FUNCTION_45();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  OUTLINED_FUNCTION_18_0(v26);
  v1[63] = OUTLINED_FUNCTION_45();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v27 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_18_0(v27);
  v1[66] = OUTLINED_FUNCTION_10_0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_18_0(v28);
  v1[67] = OUTLINED_FUNCTION_10_0();
  v29 = type metadata accessor for NLContextUpdate();
  v1[68] = v29;
  OUTLINED_FUNCTION_1_1(v29);
  v1[69] = v30;
  v1[70] = OUTLINED_FUNCTION_10_0();
  v31 = type metadata accessor for ResponseMode();
  v1[71] = v31;
  OUTLINED_FUNCTION_1_1(v31);
  v1[72] = v32;
  v1[73] = OUTLINED_FUNCTION_10_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSg_ADtMd, &_s13SiriUtilities12ResponseModeVSg_ADtMR);
  v1[74] = v33;
  OUTLINED_FUNCTION_18_0(v33);
  v1[75] = OUTLINED_FUNCTION_45();
  v1[76] = swift_task_alloc();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  OUTLINED_FUNCTION_18_0(v34);
  v1[77] = OUTLINED_FUNCTION_45();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v35 = type metadata accessor for Signpost.OpenSignpost(0);
  v1[82] = v35;
  OUTLINED_FUNCTION_18_0(v35);
  v1[83] = OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v36, v37, v38);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_3();
  *v2 = v1;
  *(v1 + 728) = v3;
  *(v1 + 736) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  v1 = *(v0 + 416);
  v55 = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO_SStGMd, &_ss23_ContiguousArrayStorageCy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO_SStGMR);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon0B17LabelCATContainerV0D4TypeO_SStMd, &_s18SiriContactsCommon0B17LabelCATContainerV0D4TypeO_SStMR) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_266966EE0;
  v6 = v5 + v4;
  v7 = (v6 + v2[14]);
  *(v0 + 952) = *MEMORY[0x277D55988];
  v8 = *(v1 + 104);
  *(v0 + 744) = v8;
  *(v0 + 752) = (v1 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  (v8)(v6);
  *(v0 + 964) = 1;
  *v7 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v7[1] = v9;
  v10 = (v6 + v3 + v2[14]);
  *(v0 + 956) = *MEMORY[0x277D55980];
  v8();
  *(v0 + 965) = 7;
  *v10 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v10[1] = v11;
  v12 = (v6 + 2 * v3 + v2[14]);
  *(v0 + 960) = *MEMORY[0x277D55990];
  v8();
  *(v0 + 966) = 8;
  *v12 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v12[1] = v13;
  v14 = (v6 + 3 * v3 + v2[14]);
  v8();
  *(v0 + 967) = 9;
  *v14 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v14[1] = v15;
  v16 = (v6 + 4 * v3 + v2[14]);
  v8();
  *(v0 + 968) = 14;
  *v16 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v16[1] = v17;
  lazy protocol witness table accessor for type GetContactHandleIntentStrategy and conformance GetContactHandleIntentStrategy(&lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType, MEMORY[0x277D559C8], MEMORY[0x277D559D0]);
  v18 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 760) = v18;
  __swift_project_boxed_opaque_existential_1((v55 + 16), *(v55 + 40));
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    *(v0 + 768) = *(*(v0 + 200) + 104);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    *(v0 + 776) = v19;
    *v19 = v20;
    v19[1] = GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
    OUTLINED_FUNCTION_54();

    return ContactsLabelCATs.phone()();
  }

  else
  {
    v23 = *(v0 + 696);
    v51 = *(v0 + 392);
    v52 = *(v0 + 376);
    v24 = *(v0 + 360);
    v25 = *(v0 + 368);
    v44 = *(v0 + 352);
    v45 = *(v0 + 400);
    v49 = *(v0 + 384);
    v46 = *(v0 + 272);
    v47 = *(v0 + 280);
    v48 = *(v0 + 264);
    v50 = *(v0 + 256);
    v53 = *(v0 + 248);
    v54 = *(v0 + 240);
    v26 = *(v0 + 200);
    v27 = *(v26 + 104);
    OUTLINED_FUNCTION_38();
    v28 = v23;

    OUTLINED_FUNCTION_47();
    dispatch thunk of DeviceState.siriLocale.getter();
    v29 = Locale.identifier.getter();
    v31 = v30;
    (*(v24 + 8))(v25, v44);
    ContactsLabelCATContainer.init(labels:contact:labelMapper:siriLocale:)(v18, v28, v27, v29, v31, v45);
    v32 = v28;
    GetContactDirectInvocationsModel.init(contact:)(v32);
    type metadata accessor for CNContact();
    v33 = v32;
    CodableContact.init(wrappedValue:)();
    v34 = OUTLINED_FUNCTION_47();
    v35(v34);
    (*(v46 + 104))(v47, *MEMORY[0x277D55970], v48);
    (*(v49 + 16))(v51, v45, v52);
    GetContactSnippetModel.init(contact:directInvocationsModel:flowState:labelCATs:)();
    v36 = OUTLINED_FUNCTION_37_0();
    v37(v36);
    (*(v53 + 104))(v50, *MEMORY[0x277D559E8], v54);
    type metadata accessor for GetContactCATsModern(0);
    type metadata accessor for CATGlobals();
    outlined init with copy of DeviceState(v26 + 16, v0 + 104);
    CATGlobals.__allocating_init(device:)();
    static CATOption.defaultMode.getter();
    *(v0 + 864) = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for DialogPerson();
    OUTLINED_FUNCTION_38();
    v38 = v33;
    OUTLINED_FUNCTION_47();
    dispatch thunk of DeviceState.siriLocale.getter();
    *(v0 + 872) = DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v38, 0, v25, 0);
    v39 = swift_task_alloc();
    *(v0 + 880) = v39;
    *v39 = v0;
    OUTLINED_FUNCTION_8_2(v39);
    OUTLINED_FUNCTION_54();

    return GetContactCATsModern.intentHandledResponse(isMe:requestedContact:shouldPrompt:)(v40, v41, v42);
  }
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 784) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  v2 = *(v0 + 520);
  v3 = *(v0 + 464);
  v4 = TemplatingResult.sections.getter();
  *(v0 + 792) = *(v3 + 8);
  *(v0 + 800) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  specialized Collection.first.getter(v4, v2);

  v7 = type metadata accessor for TemplatingSection();
  *(v0 + 808) = v7;
  OUTLINED_FUNCTION_57(v2, 1, v7);
  if (v8)
  {
    outlined destroy of ResponseMode?(*(v0 + 520), &_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
    v19 = *(v0 + 760);
  }

  else
  {
    v9 = *(v0 + 760);
    v25 = *(v0 + 744);
    v24 = *(v0 + 952);
    OUTLINED_FUNCTION_34_0();
    v23 = v10;
    TemplatingSection.content.getter();
    OUTLINED_FUNCTION_52();
    v11 = OUTLINED_FUNCTION_49();
    v12(v11);
    v13 = TemplatingText.text.getter();
    v14 = OUTLINED_FUNCTION_16_2();
    v15(v14);
    v25(v2, v24, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v1, v2, isUniquelyReferenced_nonNull_native);
    v17 = OUTLINED_FUNCTION_33();
    v18(v17);
    v19 = v9;
  }

  *(v0 + 816) = v19;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 824) = v20;
  *v20 = v21;
  v20[1] = GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);

  return ContactsLabelCATs.email()();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 832) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  v2 = *(v0 + 808);
  v3 = *(v0 + 792);
  v4 = *(v0 + 512);
  TemplatingResult.sections.getter();
  v5 = OUTLINED_FUNCTION_49();
  v3(v5);
  v6 = OUTLINED_FUNCTION_46();
  specialized Collection.first.getter(v6, v7);

  OUTLINED_FUNCTION_57(v4, 1, v2);
  if (v8)
  {
    outlined destroy of ResponseMode?(*(v0 + 512), &_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
    v21 = *(v0 + 816);
  }

  else
  {
    v9 = *(v0 + 816);
    v10 = *(v0 + 808);
    v28 = *(v0 + 960);
    v11 = *(v0 + 512);
    OUTLINED_FUNCTION_34_0();
    v26 = v12;
    v27 = v13;
    TemplatingSection.content.getter();
    OUTLINED_FUNCTION_52();
    (*(v14 + 8))(v11, v10);
    v15 = TemplatingText.text.getter();
    v16 = OUTLINED_FUNCTION_16_2();
    v17(v16);
    v27(v2, v28, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v1, v2, isUniquelyReferenced_nonNull_native);
    v19 = OUTLINED_FUNCTION_33();
    v20(v19);
    v21 = v9;
  }

  *(v0 + 840) = v21;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 848) = v22;
  *v22 = v23;
  v22[1] = GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  v24 = *(v0 + 480);

  return ContactsLabelCATs.address()(v24);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 856) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  v2 = *(v0 + 808);
  v3 = *(v0 + 792);
  v4 = *(v0 + 504);
  TemplatingResult.sections.getter();
  v5 = OUTLINED_FUNCTION_49();
  v3(v5);
  v6 = OUTLINED_FUNCTION_46();
  specialized Collection.first.getter(v6, v7);

  OUTLINED_FUNCTION_57(v4, 1, v2);
  if (v8)
  {
    outlined destroy of ResponseMode?(*(v0 + 504), &_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
    v21 = *(v0 + 840);
  }

  else
  {
    v9 = *(v0 + 840);
    v10 = *(v0 + 808);
    v58 = *(v0 + 956);
    v11 = *(v0 + 504);
    OUTLINED_FUNCTION_34_0();
    v55 = v12;
    v57 = v13;
    TemplatingSection.content.getter();
    OUTLINED_FUNCTION_52();
    (*(v14 + 8))(v11, v10);
    v15 = TemplatingText.text.getter();
    v16 = OUTLINED_FUNCTION_16_2();
    v17(v16);
    v57(v2, v58, v55);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v1, v2, isUniquelyReferenced_nonNull_native);
    v19 = OUTLINED_FUNCTION_33();
    v20(v19);
    v21 = v9;
  }

  v48 = v21;
  v22 = *(v0 + 696);
  v23 = *(v0 + 360);
  v24 = *(v0 + 368);
  v45 = *(v0 + 352);
  v46 = *(v0 + 400);
  v47 = *(v0 + 344);
  v25 = *(v0 + 328);
  v50 = *(v0 + 336);
  v51 = *(v0 + 320);
  v49 = *(v0 + 272);
  v52 = *(v0 + 280);
  v53 = *(v0 + 264);
  v54 = *(v0 + 256);
  v56 = *(v0 + 248);
  v59 = *(v0 + 240);
  v26 = *(v0 + 200);
  v27 = v26[13];
  __swift_project_boxed_opaque_existential_1(v26 + 2, v26[5]);
  v28 = v22;

  OUTLINED_FUNCTION_39_0();
  dispatch thunk of DeviceState.siriLocale.getter();
  v29 = Locale.identifier.getter();
  v31 = v30;
  (*(v23 + 8))(v24, v45);
  ContactsLabelCATContainer.init(labels:contact:labelMapper:siriLocale:)(v48, v28, v27, v29, v31, v46);
  v32 = v28;
  GetContactDirectInvocationsModel.init(contact:)(v32);
  type metadata accessor for CNContact();
  v33 = v32;
  CodableContact.init(wrappedValue:)();
  (*(v25 + 16))(v50, v47, v51);
  (*(v49 + 104))(v52, *MEMORY[0x277D55970], v53);
  v34 = OUTLINED_FUNCTION_37_0();
  v35(v34);
  OUTLINED_FUNCTION_39_0();
  GetContactSnippetModel.init(contact:directInvocationsModel:flowState:labelCATs:)();
  v36 = OUTLINED_FUNCTION_37_0();
  v37(v36);
  (*(v56 + 104))(v54, *MEMORY[0x277D559E8], v59);
  type metadata accessor for GetContactCATsModern(0);
  type metadata accessor for CATGlobals();
  outlined init with copy of DeviceState((v26 + 2), v0 + 104);
  CATGlobals.__allocating_init(device:)();
  static CATOption.defaultMode.getter();
  *(v0 + 864) = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for DialogPerson();
  OUTLINED_FUNCTION_38();
  v38 = v33;
  OUTLINED_FUNCTION_47();
  dispatch thunk of DeviceState.siriLocale.getter();
  *(v0 + 872) = DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v38, 0, v24, 0);
  v39 = swift_task_alloc();
  *(v0 + 880) = v39;
  *v39 = v0;
  OUTLINED_FUNCTION_8_2(v39);
  OUTLINED_FUNCTION_54();

  return GetContactCATsModern.intentHandledResponse(isMe:requestedContact:shouldPrompt:)(v40, v41, v42);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_3();
  *v2 = v1;
  *(v1 + 888) = v3;
  *(v1 + 896) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  v1 = *(v0 + 970);
  v2 = *(v0 + 560);
  v3 = *(v0 + 256);
  v4 = *(v0 + 200);
  static DialogPhase.completion.getter();
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_31(v7))
  {
    *OUTLINED_FUNCTION_30() = 0;
    OUTLINED_FUNCTION_23_1(&dword_26686A000, v8, v9, "#GetContactHandleIntentStrategy makeIntentHandledResponse generating SMART Dialog");
    OUTLINED_FUNCTION_6();
  }

  v10 = *(v0 + 888);
  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v13 = *(v0 + 240);

  type metadata accessor for ResponseFactory();
  swift_allocObject();
  *(v0 + 904) = ResponseFactory.init()();
  *(v0 + 168) = v13;
  *(v0 + 176) = lazy protocol witness table accessor for type GetContactHandleIntentStrategy and conformance GetContactHandleIntentStrategy(&lazy protocol witness table cache variable for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel, MEMORY[0x277D55A00], MEMORY[0x277D559E0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  (*(v12 + 16))(boxed_opaque_existential_1, v11, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  *(v0 + 912) = v15;
  *(v15 + 16) = xmmword_266966A40;
  *(v15 + 32) = v10;
  v22 = (*MEMORY[0x277D5BD38] + MEMORY[0x277D5BD38]);
  v16 = v10;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 920) = v17;
  *v17 = v18;
  v17[1] = GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  v19 = *(v0 + 232);
  v20 = *(v0 + 184);

  return v22(v20, v0 + 144, v15, v19);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 144));
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v13 = v0[111];
  v15 = v0[87];
  OUTLINED_FUNCTION_26_0();
  v1 = v0[69];
  v22 = v2;
  v23 = v0[68];
  v3 = v0[48];
  v18 = v0[47];
  v19 = v0[50];
  v4 = v0[41];
  v16 = v0[40];
  v17 = v0[43];
  v5 = v0[38];
  v14 = v0[39];
  v6 = v0[37];
  v7 = v0[31];
  v21 = v0[32];
  v8 = v0[29];
  v20 = v0[30];
  v9 = v0[27];
  v10 = v0[28];

  (*(v10 + 8))(v8, v9);
  (*(v5 + 8))(v14, v6);
  (*(v4 + 8))(v17, v16);
  (*(v3 + 8))(v19, v18);
  outlined destroy of ResponseMode?(v22, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  (*(v7 + 8))(v21, v20);
  (*(v1 + 8))(v24, v23);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_10_2();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_3();

  return v11();
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 944) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  v1 = *(v0 + 200);
  v2 = *(v1 + 104);
  outlined init with copy of DeviceState(v1 + 16, v0 + 24);
  *(v0 + 16) = v2;

  v3 = IntentResolutionRecord.intent.getter();
  v4 = [v3 isMe];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  v20 = *(v0 + 696);
  v22 = *(v0 + 648);
  v6 = *(v0 + 560);
  v7 = *(v0 + 552);
  v8 = *(v0 + 544);
  v9 = *(v0 + 536);
  v10 = *(v0 + 464);
  v19 = *(v0 + 472);
  v21 = *(v0 + 456);
  v11 = *(v0 + 184);
  Views.buildViews(for:isMe:mockGlobals:)(v20, v5);
  outlined destroy of Views(v0 + 16);
  (*(v7 + 16))(v9, v6, v8);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v8);
  v15 = type metadata accessor for AceOutput();
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  *(v0 + 64) = 0u;
  v16 = MEMORY[0x277D5C1D8];
  v11[3] = v15;
  v11[4] = v16;
  __swift_allocate_boxed_opaque_existential_1(v11);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of ResponseMode?(v0 + 64, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of ResponseMode?(v9, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v10 + 8))(v19, v21);
  outlined destroy of ResponseMode?(v22, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  (*(v7 + 8))(v6, v8);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_10_2();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_3();

  return v17();
}

void GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  v181 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 664);
  v2 = *(v0 + 656);
  v3 = static Signpost.contactsLog;
  *(v0 + 672) = static Signpost.contactsLog;
  v4 = v3;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_10_2();
  os_signpost(_:dso:log:name:signpostID:)();
  v5 = v1 + *(v2 + 20);
  *v5 = "MakeGetContactIntentHandledResponse";
  *(v5 + 8) = 35;
  *(v5 + 16) = 2;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v6 = type metadata accessor for Logger();
  *(v0 + 680) = __swift_project_value_buffer(v6, static Logger.siriContacts);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_30();
    *v9 = 0;
    _os_log_impl(&dword_26686A000, v7, v8, "#GetContactHandleIntentStrategy makeIntentHandledResponse", v9, 2u);
    OUTLINED_FUNCTION_6();
  }

  *(v0 + 688) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents010GetContactD0CAD0ijD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents010GetContactD0CAD0ijD8ResponseCGMR);
  v10 = IntentResolutionRecord.intentResponse.getter();
  ContactAttributeIntent = outlined bridged method (ob) of @objc GetContactAttributeIntentResponse.contactIdentifiers.getter(v10);
  if (!ContactAttributeIntent)
  {
    goto LABEL_14;
  }

  if (!ContactAttributeIntent[2])
  {

LABEL_14:
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_31(v24))
    {
      *OUTLINED_FUNCTION_30() = 0;
      OUTLINED_FUNCTION_30_0();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      OUTLINED_FUNCTION_6();
    }

    type metadata accessor for ContactsError(0);
    OUTLINED_FUNCTION_12_1();
    ContactHandleIntentStrategy = lazy protocol witness table accessor for type GetContactHandleIntentStrategy and conformance GetContactHandleIntentStrategy(v30, v31, &protocol conformance descriptor for ContactsError);
    OUTLINED_FUNCTION_56(ContactHandleIntentStrategy);
    goto LABEL_23;
  }

  v13 = ContactAttributeIntent[4];
  v12 = ContactAttributeIntent[5];

  v14 = IntentResolutionRecord.intent.getter();
  v15 = [v14 isMe];

  if (v15 && (v16 = [v15 BOOLValue], v15, v16))
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 200) + 56), *(*(v0 + 200) + 80));
    v17 = OUTLINED_FUNCTION_17_0();
    v19 = v18(v17);
    v20 = 1;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 200) + 56), *(*(v0 + 200) + 80));
    v21 = OUTLINED_FUNCTION_39_0();
    v19 = v22(v21);
    v20 = 0;
  }

  *(v0 + 696) = v19;
  *(v0 + 969) = v20;
  if (!v19)
  {

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v180[0] = v37;
      *v36 = 136315138;
      v38 = OUTLINED_FUNCTION_39_0();
      *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v40);
      OUTLINED_FUNCTION_30_0();
      _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    type metadata accessor for ContactsError(0);
    OUTLINED_FUNCTION_12_1();
    v48 = lazy protocol witness table accessor for type GetContactHandleIntentStrategy and conformance GetContactHandleIntentStrategy(v46, v47, &protocol conformance descriptor for ContactsError);
    OUTLINED_FUNCTION_56(v48);
    *v49 = v13;
    v49[1] = v12;
LABEL_23:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_10_2();
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(*(v0 + 664));

    OUTLINED_FUNCTION_3();
    goto LABEL_24;
  }

  type metadata accessor for SiriEnvironment();
  if (static SiriEnvironment.forCurrentTask.getter())
  {
    SiriEnvironment.currentRequest.getter();

    CurrentRequest.responseMode.getter();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v52 = *(v0 + 648);
  v53 = *(v0 + 640);
  v54 = *(v0 + 608);
  v55 = *(v0 + 592);
  v56 = *(v0 + 568);
  __swift_storeEnumTagSinglePayload(v52, v33, 1, v56);
  static ResponseMode.displayOnly.getter();
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v56);
  v174 = v55;
  v60 = *(v55 + 48);
  outlined init with copy of ResponseMode?(v52, v54);
  outlined init with copy of ResponseMode?(v53, v54 + v60);
  OUTLINED_FUNCTION_57(v54, 1, v56);
  v179 = v19;
  if (v61)
  {
    v62 = *(v0 + 568);
    outlined destroy of ResponseMode?(*(v0 + 640), &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    OUTLINED_FUNCTION_57(v54 + v60, 1, v62);
    if (!v61)
    {
      goto LABEL_35;
    }

    outlined destroy of ResponseMode?(*(v0 + 608), &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  }

  else
  {
    v63 = *(v0 + 568);
    outlined init with copy of ResponseMode?(*(v0 + 608), *(v0 + 632));
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54 + v60, 1, v63);
    v65 = *(v0 + 632);
    if (EnumTagSinglePayload == 1)
    {
      v66 = *(v0 + 576);
      v67 = *(v0 + 568);
      outlined destroy of ResponseMode?(*(v0 + 640), &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      (*(v66 + 8))(v65, v67);
LABEL_35:
      outlined destroy of ResponseMode?(*(v0 + 608), &_s13SiriUtilities12ResponseModeVSg_ADtMd, &_s13SiriUtilities12ResponseModeVSg_ADtMR);
LABEL_36:
      v68 = 1;
      goto LABEL_39;
    }

    v176 = *(v0 + 608);
    v69 = *(v0 + 584);
    v70 = *(v0 + 576);
    v71 = *(v0 + 568);
    v172 = *(v0 + 640);
    (*(v70 + 32))(v69, v54 + v60, v71);
    OUTLINED_FUNCTION_11_2();
    lazy protocol witness table accessor for type GetContactHandleIntentStrategy and conformance GetContactHandleIntentStrategy(v72, v73, MEMORY[0x277D61CD8]);
    v170 = dispatch thunk of static Equatable.== infix(_:_:)();
    v74 = *(v70 + 8);
    v74(v69, v71);
    outlined destroy of ResponseMode?(v172, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    v75 = OUTLINED_FUNCTION_17_0();
    (v74)(v75);
    v19 = v179;
    outlined destroy of ResponseMode?(v176, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    if ((v170 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  __swift_project_boxed_opaque_existential_1((*(v0 + 200) + 16), *(*(v0 + 200) + 40));
  OUTLINED_FUNCTION_17_0();
  v68 = dispatch thunk of DeviceState.isCarPlay.getter();
LABEL_39:
  v173 = v68;
  *(v0 + 970) = v68 & 1;
  v76 = *(v0 + 648);
  v77 = *(v0 + 624);
  v78 = *(v0 + 600);
  v79 = *(v0 + 568);
  static ContactsContextProvider.handleGetContact(contact:needsSDA:)(v19, v68 & 1, *(v0 + 560));
  ContactHandleIntent = GetContactHandleIntentStrategy.shouldAuthStateAllowPunchout()();
  static ResponseMode.voiceOnly.getter();
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v79);
  v83 = *(v174 + 48);
  outlined init with copy of ResponseMode?(v76, v78);
  outlined init with copy of ResponseMode?(v77, v78 + v83);
  OUTLINED_FUNCTION_57(v78, 1, v79);
  if (v61)
  {
    v84 = *(v0 + 568);
    outlined destroy of ResponseMode?(*(v0 + 624), &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    OUTLINED_FUNCTION_57(v78 + v83, 1, v84);
    if (v61)
    {
      outlined destroy of ResponseMode?(*(v0 + 600), &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      v85 = 0;
      v86 = v179;
      v87 = ContactHandleIntent;
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  v88 = *(v0 + 568);
  outlined init with copy of ResponseMode?(*(v0 + 600), *(v0 + 616));
  v89 = __swift_getEnumTagSinglePayload(v78 + v83, 1, v88);
  v90 = *(v0 + 616);
  if (v89 == 1)
  {
    v91 = *(v0 + 576);
    v92 = *(v0 + 568);
    outlined destroy of ResponseMode?(*(v0 + 624), &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    (*(v91 + 8))(v90, v92);
LABEL_46:
    outlined destroy of ResponseMode?(*(v0 + 600), &_s13SiriUtilities12ResponseModeVSg_ADtMd, &_s13SiriUtilities12ResponseModeVSg_ADtMR);
    v86 = v179;
    v87 = ContactHandleIntent;
LABEL_47:
    __swift_project_boxed_opaque_existential_1((*(v0 + 200) + 16), *(*(v0 + 200) + 40));
    OUTLINED_FUNCTION_37_0();
    v85 = DeviceState.supportsCompactView.getter();
    goto LABEL_48;
  }

  v175 = *(v0 + 600);
  v151 = *(v0 + 584);
  v152 = *(v0 + 576);
  v153 = *(v0 + 568);
  v171 = *(v0 + 624);
  (*(v152 + 32))(v151, v78 + v83, v153);
  OUTLINED_FUNCTION_11_2();
  lazy protocol witness table accessor for type GetContactHandleIntentStrategy and conformance GetContactHandleIntentStrategy(v154, v155, MEMORY[0x277D61CD8]);
  v169 = dispatch thunk of static Equatable.== infix(_:_:)();
  v156 = *(v152 + 8);
  v156(v151, v153);
  outlined destroy of ResponseMode?(v171, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v156(v90, v153);
  outlined destroy of ResponseMode?(v175, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v86 = v179;
  v87 = ContactHandleIntent;
  if ((v169 & 1) == 0)
  {
    goto LABEL_47;
  }

  v85 = 0;
LABEL_48:
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_31(v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 67109632;
    *(v95 + 4) = v173 & 1;
    *(v95 + 8) = 1024;
    *(v95 + 10) = v85 & 1;
    *(v95 + 14) = 1024;
    *(v95 + 16) = v87;
    _os_log_impl(&dword_26686A000, v93, v94, "#GetContactHandleIntentStrategy shouldPrompt: %{BOOL}d, shouldDeviceStateAllowPunchout: %{BOOL}d, shouldAuthStateAllowPunchout: %{BOOL}d", v95, 0x14u);
    OUTLINED_FUNCTION_6();
  }

  if ((v85 & v87 & 1) == 0)
  {

LABEL_60:
    if (specialized ContactsStrategy.isSmartEnabled.getter())
    {
      v134 = Logger.logObject.getter();
      v135 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_31(v135))
      {
        *OUTLINED_FUNCTION_30() = 0;
        OUTLINED_FUNCTION_23_1(&dword_26686A000, v136, v137, "#GetContactHandleIntentStrategy makeIntentHandledResponse constructing SMART snippet");
        OUTLINED_FUNCTION_6();
      }

      type metadata accessor for ContactsLabelCATsModern(0);
      static CATOption.defaultMode.getter();
      *(v0 + 704) = CATWrapperSimple.__allocating_init(options:globals:)();
      *(v0 + 712) = CNContact.toDialogPerson(useConversationalName:)(0);
      v138 = swift_task_alloc();
      *(v0 + 720) = v138;
      *v138 = v0;
      v138[1] = GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
      OUTLINED_FUNCTION_53();

      ContactsLabelCATsModern.quickActionButtonLabels(contact:)(v139);
    }

    else
    {
      v141 = *(v0 + 368);
      v142 = *(v0 + 200);
      type metadata accessor for DialogPerson();
      __swift_project_boxed_opaque_existential_1((v142 + 16), *(v142 + 40));
      v143 = v86;
      OUTLINED_FUNCTION_46();
      dispatch thunk of DeviceState.siriLocale.getter();
      *(v0 + 928) = DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v143, 0, v141, 0);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 936) = v144;
      *v144 = v145;
      v144[1] = GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
      OUTLINED_FUNCTION_53();

      GetContactCATs.intentHandledResponse(isMe:requestedContact:shouldPrompt:)(v146, v147, v148, v149);
    }

    return;
  }

  OUTLINED_FUNCTION_39_0();
  AppUtil.buildPunchoutFor(contactIdentifier:)();
  v97 = v96;

  if (!v97)
  {
    goto LABEL_60;
  }

  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_31(v99))
  {
    *OUTLINED_FUNCTION_30() = 0;
    OUTLINED_FUNCTION_30_0();
    _os_log_impl(v100, v101, v102, v103, v104, 2u);
    OUTLINED_FUNCTION_6();
  }

  v105 = *(v0 + 200);

  __swift_project_boxed_opaque_existential_1((v105 + 224), *(v105 + 248));
  type metadata accessor for SiriKitEvent();
  static SiriKitEvent.uufrReady()();
  dispatch thunk of SiriKitEventSending.send(_:)();

  v106 = v97;
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v180[0] = v110;
    *v109 = 136315138;
    v178 = v106;
    v111 = [v106 description];
    v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v114 = v113;

    v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v114, v180);

    *(v109 + 4) = v115;
    v106 = v178;
    _os_log_impl(&dword_26686A000, v107, v108, "#GetContactHandleIntentStrategy Constructed intent handled response for iOS, returning punchout for contact: %s.", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v110);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_266966ED0;
  v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v118 = MEMORY[0x277D837D0];
  *(v116 + 56) = MEMORY[0x277D837D0];
  *(v116 + 32) = v117;
  *(v116 + 40) = v119;
  v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v116 + 88) = v118;
  *(v116 + 64) = v120;
  *(v116 + 72) = v121;
  v122 = OUTLINED_FUNCTION_49();
  outlined bridged method (mbnn) of @objc SAUIAppPunchOut.launchOptions.setter(v122, v123);
  v124 = v106;
  v125 = Logger.logObject.getter();
  v126 = static os_log_type_t.debug.getter();
  if (!OUTLINED_FUNCTION_31(v126))
  {

    goto LABEL_72;
  }

  v127 = swift_slowAlloc();
  v128 = swift_slowAlloc();
  v180[0] = v128;
  *v127 = 136315138;
  v129 = outlined bridged method (pb) of @objc SAUIAppPunchOut.launchOptions.getter(v124);

  if (v129)
  {
    v130 = MEMORY[0x26D5E2610](v129, MEMORY[0x277D84F70] + 8);
    v132 = v131;

    v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v132, v180);

    *(v127 + 4) = v133;
    _os_log_impl(&dword_26686A000, v125, v126, "#GetContactHandleIntentStrategy added RetainSiri and RemoveResponseUI launchOptions to appPunchOut: %s", v127, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v128);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();

LABEL_72:
    v157 = *(v0 + 648);
    v158 = *(v0 + 560);
    v159 = *(v0 + 552);
    v160 = *(v0 + 544);
    v161 = *(v0 + 536);
    v162 = *(v0 + 184);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v163 = swift_allocObject();
    *(v163 + 16) = xmmword_266966A40;
    *(v163 + 32) = v124;
    memset(v180, 0, 40);
    (*(v159 + 16))(v161, v158, v160);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v164, v165, v166, v160);
    v167 = type metadata accessor for AceOutput();
    v168 = MEMORY[0x277D5C1D8];
    v162[3] = v167;
    v162[4] = v168;
    __swift_allocate_boxed_opaque_existential_1(v162);
    AceOutput.init(commands:flowActivity:nlContextUpdate:)();

    outlined destroy of ResponseMode?(v157, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    (*(v159 + 8))(v158, v160);
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_10_2();
    os_signpost(_:dso:log:name:signpostID:)();
    OUTLINED_FUNCTION_1_3();
    outlined destroy of Signpost.OpenSignpost(v157);

    OUTLINED_FUNCTION_3();
LABEL_24:
    OUTLINED_FUNCTION_53();

    __asm { BRAA            X1, X16 }
  }

  __break(1u);
}

uint64_t GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_4_1();
  v41 = v39[69];
  v42 = v39[68];

  outlined destroy of ResponseMode?(v38, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  (*(v41 + 8))(v40, v42);
  v44 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_9_1(v44);
  OUTLINED_FUNCTION_0_1(v39[92]);

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_20_1();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_28_0();
  v40 = *(v39 + 696);
  OUTLINED_FUNCTION_4_1();

  outlined destroy of ResponseMode?(v38, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v41 = OUTLINED_FUNCTION_31_0();
  v42(v41);
  v43 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_9_1(v43);
  OUTLINED_FUNCTION_0_1(*(v39 + 784));

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_20_1();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_28_0();
  v40 = *(v39 + 696);
  OUTLINED_FUNCTION_4_1();

  outlined destroy of ResponseMode?(v38, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v41 = OUTLINED_FUNCTION_31_0();
  v42(v41);
  v43 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_9_1(v43);
  OUTLINED_FUNCTION_0_1(*(v39 + 832));

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_20_1();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_28_0();
  v40 = *(v39 + 696);
  OUTLINED_FUNCTION_4_1();

  outlined destroy of ResponseMode?(v38, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v41 = OUTLINED_FUNCTION_31_0();
  v42(v41);
  v43 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_9_1(v43);
  OUTLINED_FUNCTION_0_1(*(v39 + 856));

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_20_1();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_28_0();
  v39 = v38[87];
  OUTLINED_FUNCTION_26_0();
  v40 = v38[69];
  v63 = v41;
  v64 = v38[68];
  v42 = v38[48];
  v59 = v38[47];
  v60 = v38[50];
  v58 = v38[43];
  v44 = v38[40];
  v43 = v38[41];
  v46 = v38[38];
  v45 = v38[39];
  v47 = v38[37];
  v48 = v38[31];
  v61 = v38[30];
  v62 = v38[32];

  (*(v46 + 8))(v45, v47);
  (*(v43 + 8))(v58, v44);
  (*(v42 + 8))(v60, v59);
  outlined destroy of ResponseMode?(v63, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  (*(v48 + 8))(v62, v61);
  (*(v40 + 8))(a32, v64);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_10_2();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_0_1(v38[112]);

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_20_1();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v58, v59, v60, v61, v62, v63, v64, a32, a33, a34, a35, a36, a37, a38);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_4_1();
  v41 = v39[69];
  v42 = v39[68];

  outlined destroy of ResponseMode?(v38, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  (*(v41 + 8))(v40, v42);
  v44 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_9_1(v44);
  OUTLINED_FUNCTION_0_1(v39[118]);

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_20_1();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t ContactsLabelCATContainer.init(labels:contact:labelMapper:siriLocale:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v128 = a4;
  v129 = a5;
  v130 = a3;
  v117 = a2;
  v8 = [a2 emailAddresses];
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v120 = v9;
  v10 = specialized Array._getCount()();
  v110 = a6;
  v113 = a1;
  if (v10)
  {
    if (v10 < 1)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v11 = 0;
    LOBYTE(v12) = MEMORY[0x277D84F98];
    OUTLINED_FUNCTION_29_0();
    while (1)
    {
      if (v119)
      {
        v21 = MEMORY[0x26D5E29D0](v11, v120);
      }

      else
      {
        v21 = OUTLINED_FUNCTION_41_0(v13, v14, v15, v16, v17, v18, v19, v20, v110, v113, v116, v117, v118, 0, v120);
      }

      v22 = v21;
      v23 = [v21 label];
      if (v23)
      {
        v24 = v23;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v25 = OUTLINED_FUNCTION_32_0();
      LabelMapper.localizedLabel(handleLabel:localeString:type:)(v25, v26, v27, v28, 1, v130);
      OUTLINED_FUNCTION_43_0();
      v123 = v22;
      v29 = [v22 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_35_0();
      if (__OFADD__(v31, v32))
      {
        break;
      }

      v33 = v30;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
      if (OUTLINED_FUNCTION_55(v34, v35, v36, v37, v38, v39, v40, v41, v111, v114, v116, v117, v118, v119, v120, v123, v128, v129, v130, v12))
      {
        OUTLINED_FUNCTION_42_0();
        if ((v33 & 1) != (v42 & 1))
        {
          goto LABEL_63;
        }
      }

      v12 = *v131;
      if (v33)
      {
        OUTLINED_FUNCTION_18_1();
      }

      else
      {
        OUTLINED_FUNCTION_2_2();
        if (v44)
        {
          goto LABEL_57;
        }

        *(*v131 + 16) = v43;
      }

      ++v11;
      v13 = v118;
      if (v118 == v11)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

  v12 = MEMORY[0x277D84F98];
LABEL_19:

  v45 = [v117 phoneNumbers];
  v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v121 = v46;
  v47 = specialized Array._getCount()();
  if (v47)
  {
    if (v47 < 1)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v48 = 0;
    OUTLINED_FUNCTION_29_0();
    while (1)
    {
      if (v119)
      {
        v57 = MEMORY[0x26D5E29D0](v48, v121);
      }

      else
      {
        v57 = OUTLINED_FUNCTION_41_0(v49, v50, v51, v52, v53, v54, v55, v56, v110, v113, v116, v117, v118, 0, v121);
      }

      v58 = v57;
      v59 = [v57 label];
      if (v59)
      {
        v60 = v59;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v61 = OUTLINED_FUNCTION_32_0();
      LabelMapper.localizedLabel(handleLabel:localeString:type:)(v61, v62, v63, v64, 2, v130);
      OUTLINED_FUNCTION_43_0();
      v125 = v58;
      v65 = [v58 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_35_0();
      if (__OFADD__(v67, v68))
      {
        break;
      }

      v69 = v66;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
      if (OUTLINED_FUNCTION_55(v70, v71, v72, v73, v74, v75, v76, v77, v112, v115, v116, v117, v118, v119, v121, v125, v128, v129, v130, v12))
      {
        OUTLINED_FUNCTION_42_0();
        if ((v69 & 1) != (v78 & 1))
        {
          goto LABEL_63;
        }
      }

      v12 = *v132;
      if (v69)
      {
        OUTLINED_FUNCTION_18_1();
      }

      else
      {
        OUTLINED_FUNCTION_2_2();
        if (v44)
        {
          goto LABEL_58;
        }

        *(*v132 + 16) = v79;
      }

      if (v118 == ++v48)
      {
        goto LABEL_35;
      }
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_35:

  v80 = [v117 postalAddresses];
  v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v122 = v81;
  v82 = specialized Array._getCount()();
  if (!v82)
  {
LABEL_51:

    ContactsLabelCATContainer.init(labels:localizedAttributeLabels:)();
  }

  if (v82 >= 1)
  {
    v83 = 0;
    OUTLINED_FUNCTION_29_0();
    while (1)
    {
      if (v119)
      {
        v92 = MEMORY[0x26D5E29D0](v83, v122);
      }

      else
      {
        v92 = OUTLINED_FUNCTION_41_0(v84, v85, v86, v87, v88, v89, v90, v91, v110, v113, v116, v117, v118, 0, v122);
      }

      v93 = v92;
      v94 = [v92 label];
      if (v94)
      {
        v95 = v94;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v96 = OUTLINED_FUNCTION_32_0();
      LabelMapper.localizedLabel(handleLabel:localeString:type:)(v96, v97, v98, v99, 3, v130);
      OUTLINED_FUNCTION_43_0();
      v127 = v93;
      v100 = [v93 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_35_0();
      v105 = v103 + v104;
      if (__OFADD__(v103, v104))
      {
        break;
      }

      v106 = v102;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v105))
      {
        OUTLINED_FUNCTION_42_0();
        if ((v106 & 1) != (v107 & 1))
        {
          goto LABEL_63;
        }
      }

      if (v106)
      {
        OUTLINED_FUNCTION_18_1();
      }

      else
      {
        OUTLINED_FUNCTION_2_2();
        if (v44)
        {
          goto LABEL_59;
        }

        *(v12 + 16) = v108;
      }

      ++v83;
      v84 = v118;
      if (v118 == v83)
      {
        goto LABEL_51;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v8 = type metadata accessor for NLContextUpdate();
  (*(*(v8 - 8) + 16))(v7, a4, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  OutputGenerationManifest.nlContextUpdate.setter();
  ContactsSnippetPluginModel.responseViewID.getter();
  return OutputGenerationManifest.responseViewId.setter();
}

Swift::Bool __swiftcall GetContactHandleIntentStrategy.shouldAuthStateAllowPunchout()()
{
  v1 = type metadata accessor for UnlockDevicePolicy();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  static UnlockDevicePolicy.requiringDeviceUnlock.getter();
  v5 = dispatch thunk of DeviceState.isAuthenticated(for:)();
  (*(v2 + 8))(v4, v1);
  return v5 & 1;
}

uint64_t GetContactHandleIntentStrategy.__deallocating_deinit()
{
  v0 = specialized ContactsStrategy.deinit();

  outlined destroy of AppUtil(v1 + 184);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 224));

  return MEMORY[0x2821FE8D8](v0, 264, 7);
}

uint64_t type metadata accessor for GetContactHandleIntentStrategy(uint64_t a1)
{
  result = type metadata singleton initialization cache for GetContactHandleIntentStrategy;
  if (!type metadata singleton initialization cache for GetContactHandleIntentStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance GetContactHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ContactHandleIntentStrategy = type metadata accessor for GetContactHandleIntentStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C68](a1, a2, ContactHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ContactHandleIntentStrategy = type metadata accessor for GetContactHandleIntentStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C70](a1, a2, ContactHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance GetContactHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ContactHandleIntentStrategy = type metadata accessor for GetContactHandleIntentStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C48](a1, a2, ContactHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance GetContactHandleIntentStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)();
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance GetContactHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ContactHandleIntentStrategy = type metadata accessor for GetContactHandleIntentStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C60](a1, a2, ContactHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance GetContactHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ContactHandleIntentStrategy = type metadata accessor for GetContactHandleIntentStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C58](a1, a2, ContactHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance GetContactHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ContactHandleIntentStrategy = type metadata accessor for GetContactHandleIntentStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return MEMORY[0x2821B9C38](a1, a2, ContactHandleIntentStrategy, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance GetContactHandleIntentStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for Flow.onAsync(input:) in conformance ContactsUnsupportedFlow;

  return GetContactHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)();
}

uint64_t outlined init with copy of ResponseMode?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for CNContact()
{
  result = lazy cache variable for type metadata for CNContact;
  if (!lazy cache variable for type metadata for CNContact)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNContact);
  }

  return result;
}

uint64_t outlined destroy of ResponseMode?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_52();
  (*(v4 + 8))(a1);
  return a1;
}

void outlined bridged method (mbnn) of @objc SAUIAppPunchOut.launchOptions.setter(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setLaunchOptions_];
}

uint64_t outlined bridged method (pb) of @objc SAUIAppPunchOut.launchOptions.getter(void *a1)
{
  v1 = [a1 launchOptions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t lazy protocol witness table accessor for type GetContactHandleIntentStrategy and conformance GetContactHandleIntentStrategy(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_1@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;
  v4 = v1[83];
  v6 = v1[35];
  v5 = v1[36];
  *(v2 - 136) = v1[39];
  *(v2 - 128) = v5;
  v7 = v1[32];
  *(v2 - 120) = v6;
  *(v2 - 112) = v7;
  v8 = v1[26];
  *(v2 - 104) = v1[29];
  *(v2 - 96) = v8;

  return outlined destroy of Signpost.OpenSignpost(v4);
}

void OUTLINED_FUNCTION_2_2()
{
  *(v1 + 8 * (v4 >> 6) + 64) |= 1 << v4;
  v6 = (*(v1 + 48) + 16 * v4);
  *v6 = v5;
  v6[1] = v0;
  v7 = (*(v1 + 56) + 16 * v4);
  *v7 = v2;
  v7[1] = v3;
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_14_1()
{
  v5 = v0[35];
  v4 = v0[36];
  *(v2 - 128) = v0[39];
  *(v2 - 120) = v4;
  v6 = v0[32];
  *(v2 - 112) = v5;
  *(v2 - 104) = v6;
  v7 = v0[26];
  *(v2 - 96) = v0[29];
  *(v2 - 88) = v7;

  return outlined destroy of Signpost.OpenSignpost(v1);
}

uint64_t OUTLINED_FUNCTION_18_1()
{
  v5 = (*(v0 + 56) + 16 * v3);
  *v5 = v1;
  v5[1] = v2;
}

void OUTLINED_FUNCTION_23_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_26_0()
{
  v2 = v0[83];
  *(v1 - 96) = v0[84];
  *(v1 - 88) = v2;
  *(v1 - 104) = v0[70];
}

id OUTLINED_FUNCTION_41_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = *(a15 + 8 * v15 + 32);

  return v17;
}

unint64_t OUTLINED_FUNCTION_42_0()
{

  return specialized __RawDictionaryStorage.find<A>(_:)(v1, v0);
}

uint64_t OUTLINED_FUNCTION_43_0()
{
}

uint64_t OUTLINED_FUNCTION_45()
{

  return swift_task_alloc();
}

BOOL OUTLINED_FUNCTION_55(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v21, v20);
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1)
{

  return swift_allocError();
}

uint64_t DateComponents.setImplicitYear(from:now:qualifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v92 = a3;
  v97 = a2;
  v5 = type metadata accessor for TerminalElement.Qualifier();
  OUTLINED_FUNCTION_1_0();
  v93 = v6;
  MEMORY[0x28223BE20](v7);
  v88 = &v82[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV9QualifierOSg_AFtMd, &_s12SiriOntology15TerminalElementV9QualifierOSg_AFtMR);
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_1_4();
  v89 = v9 - v10;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  v13 = &v82[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_1_4();
  v87 = v15 - v16;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  v91 = &v82[-v18];
  OUTLINED_FUNCTION_16();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v82[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v82[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v25 - 8);
  OUTLINED_FUNCTION_1_4();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v82[-v30];
  v32 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1_0();
  v95 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_4();
  v94 = (v35 - v36);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  v96 = &v82[-v38];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV9DayOfWeekOSgMd, _s12SiriOntology15TerminalElementV9DayOfWeekOSgMR);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v82[-v40];
  result = TerminalElement.Date.year.getter();
  if (v43)
  {
    TerminalElement.Date.dayOfWeek.getter();
    v44 = type metadata accessor for TerminalElement.DayOfWeek();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v44);
    result = outlined destroy of UsoEntity_common_Person.DefinedValues?(v41, &_s12SiriOntology15TerminalElementV9DayOfWeekOSgMd, _s12SiriOntology15TerminalElementV9DayOfWeekOSgMR);
    if (EnumTagSinglePayload == 1)
    {
      DateComponents.day.getter();
      if (v46)
      {
        DateComponents.day.getter();
        DateComponents.day.setter();
      }

      DateComponents.date.getter();
      if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
      {
        v47 = v31;
        return outlined destroy of UsoEntity_common_Person.DefinedValues?(v47, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      v86 = v5;
      v48 = v95;
      v49 = v4;
      v50 = v32;
      v51 = v96;
      v52 = v31;
      v53 = *(v95 + 32);
      v53(v96, v52, v50);
      v85 = v49;
      DateComponents.date.getter();
      if (__swift_getEnumTagSinglePayload(v28, 1, v50) == 1)
      {
        (*(v48 + 8))(v51, v50);
        v47 = v28;
        return outlined destroy of UsoEntity_common_Person.DefinedValues?(v47, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      v53(v94, v28, v50);
      v54 = *(v93 + 104);
      v55 = v86;
      v54(v24, *MEMORY[0x277D5E648], v86);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v55);
      v56 = v90;
      v57 = *(v90 + 48);
      v58 = v92;
      outlined init with copy of TerminalElement.Qualifier?(v92, v13);
      outlined init with copy of TerminalElement.Qualifier?(v24, &v13[v57]);
      OUTLINED_FUNCTION_0_2(v13);
      v84 = v50;
      if (v61)
      {
        outlined destroy of UsoEntity_common_Person.DefinedValues?(v24, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
        OUTLINED_FUNCTION_0_2(&v13[v57]);
        if (v61)
        {
          outlined destroy of UsoEntity_common_Person.DefinedValues?(v13, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
          v59 = v96;
          v60 = v91;
LABEL_20:
          if (static Date.> infix(_:_:)())
          {
            result = DateComponents.year.getter();
            if (v65)
            {
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

            v66 = __OFSUB__(result--, 1);
            if (v66)
            {
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

            OUTLINED_FUNCTION_4_2();
            DateComponents.year.setter();
            result = DateComponents.year.getter();
            if (v67)
            {
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            v66 = __OFSUB__(result--, 1);
            if (v66)
            {
              goto LABEL_46;
            }

            OUTLINED_FUNCTION_4_2();
            DateComponents.yearForWeekOfYear.setter();
          }

LABEL_26:
          v54(v60, *MEMORY[0x277D5E640], v55);
          __swift_storeEnumTagSinglePayload(v60, 0, 1, v55);
          v68 = *(v56 + 48);
          v69 = v89;
          outlined init with copy of TerminalElement.Qualifier?(v58, v89);
          outlined init with copy of TerminalElement.Qualifier?(v60, v69 + v68);
          OUTLINED_FUNCTION_0_2(v69);
          if (v61)
          {
            outlined destroy of UsoEntity_common_Person.DefinedValues?(v60, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
            OUTLINED_FUNCTION_0_2(v69 + v68);
            if (v61)
            {
              outlined destroy of UsoEntity_common_Person.DefinedValues?(v69, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
              v70 = v95;
              goto LABEL_36;
            }
          }

          else
          {
            v71 = v87;
            outlined init with copy of TerminalElement.Qualifier?(v69, v87);
            OUTLINED_FUNCTION_0_2(v69 + v68);
            if (!v72)
            {
              v73 = v60;
              v74 = v93;
              v75 = v88;
              (*(v93 + 32))(v88, v69 + v68, v55);
              lazy protocol witness table accessor for type TerminalElement.Qualifier and conformance TerminalElement.Qualifier();
              v76 = dispatch thunk of static Equatable.== infix(_:_:)();
              v77 = *(v74 + 8);
              v77(v75, v55);
              outlined destroy of UsoEntity_common_Person.DefinedValues?(v73, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
              v77(v71, v55);
              outlined destroy of UsoEntity_common_Person.DefinedValues?(v69, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
              v70 = v95;
              if ((v76 & 1) == 0)
              {
                goto LABEL_42;
              }

LABEL_36:
              if (static Date.< infix(_:_:)())
              {
                result = DateComponents.year.getter();
                if (v78)
                {
LABEL_49:
                  __break(1u);
                  goto LABEL_50;
                }

                v66 = __OFADD__(result++, 1);
                if (!v66)
                {
                  OUTLINED_FUNCTION_4_2();
                  DateComponents.year.setter();
                  result = DateComponents.year.getter();
                  if (v79)
                  {
LABEL_51:
                    __break(1u);
                    return result;
                  }

                  v66 = __OFADD__(result++, 1);
                  if (!v66)
                  {
                    OUTLINED_FUNCTION_4_2();
                    DateComponents.yearForWeekOfYear.setter();
                    goto LABEL_42;
                  }

                  goto LABEL_47;
                }

                goto LABEL_45;
              }

LABEL_42:
              v80 = *(v70 + 8);
              v81 = v84;
              v80(v94, v84);
              return (v80)(v59, v81);
            }

            outlined destroy of UsoEntity_common_Person.DefinedValues?(v60, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
            (*(v93 + 8))(v71, v55);
          }

          outlined destroy of UsoEntity_common_Person.DefinedValues?(v69, &_s12SiriOntology15TerminalElementV9QualifierOSg_AFtMd, &_s12SiriOntology15TerminalElementV9QualifierOSg_AFtMR);
          v70 = v95;
          goto LABEL_42;
        }
      }

      else
      {
        outlined init with copy of TerminalElement.Qualifier?(v13, v22);
        OUTLINED_FUNCTION_0_2(&v13[v57]);
        if (!v61)
        {
          v62 = v93;
          v63 = v88;
          (*(v93 + 32))(v88, &v13[v57], v55);
          lazy protocol witness table accessor for type TerminalElement.Qualifier and conformance TerminalElement.Qualifier();
          v83 = dispatch thunk of static Equatable.== infix(_:_:)();
          v64 = *(v62 + 8);
          v64(v63, v55);
          outlined destroy of UsoEntity_common_Person.DefinedValues?(v24, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
          v64(v22, v55);
          v58 = v92;
          outlined destroy of UsoEntity_common_Person.DefinedValues?(v13, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
          v59 = v96;
          v60 = v91;
          if ((v83 & 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_20;
        }

        outlined destroy of UsoEntity_common_Person.DefinedValues?(v24, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
        (*(v93 + 8))(v22, v55);
      }

      outlined destroy of UsoEntity_common_Person.DefinedValues?(v13, &_s12SiriOntology15TerminalElementV9QualifierOSg_AFtMd, &_s12SiriOntology15TerminalElementV9QualifierOSg_AFtMR);
      v59 = v96;
      v60 = v91;
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t outlined init with copy of TerminalElement.Qualifier?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TerminalElement.Qualifier and conformance TerminalElement.Qualifier()
{
  result = lazy protocol witness table cache variable for type TerminalElement.Qualifier and conformance TerminalElement.Qualifier;
  if (!lazy protocol witness table cache variable for type TerminalElement.Qualifier and conformance TerminalElement.Qualifier)
  {
    type metadata accessor for TerminalElement.Qualifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TerminalElement.Qualifier and conformance TerminalElement.Qualifier);
  }

  return result;
}

uint64_t type metadata accessor for ContactsLabelCATsModern(uint64_t a1)
{
  result = type metadata singleton initialization cache for ContactsLabelCATsModern;
  if (!type metadata singleton initialization cache for ContactsLabelCATsModern)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

SiriContactsIntents::ContactsLabelCATsModern::ContactsLabelDialogIDs_optional __swiftcall ContactsLabelCATsModern.ContactsLabelDialogIDs.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v1 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v1;
  }
}

uint64_t ContactsLabelCATsModern.ContactsLabelDialogIDs.rawValue.getter(char a1)
{
  result = 1819042147;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C65636E6163;
      break;
    case 3:
      result = 7954788;
      break;
    case 4:
      result = 1937334628;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 28519;
      break;
    case 8:
      result = 1818845549;
      break;
    case 9:
      result = 0x6567617373656DLL;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 1702257011;
      break;
    case 13:
      result = 0x6465766173;
      break;
    case 14:
      result = 0x6F65646976;
      break;
    case 15:
      v3 = 1801807223;
      goto LABEL_13;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
      v3 = 1918985593;
LABEL_13:
      result = v3 | 0x7262624100000000;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

SiriContactsIntents::ContactsLabelCATsModern::ContactsLabelDialogIDs_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ContactsLabelCATsModern.ContactsLabelDialogIDs@<W0>(Swift::String *a1@<X0>, SiriContactsIntents::ContactsLabelCATsModern::ContactsLabelDialogIDs_optional *a2@<X8>)
{
  result.value = ContactsLabelCATsModern.ContactsLabelDialogIDs.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactsLabelCATsModern.ContactsLabelDialogIDs@<X0>(uint64_t *a1@<X8>)
{
  result = ContactsLabelCATsModern.ContactsLabelDialogIDs.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t ContactsLabelCATsModern.cancelAsLabel()()
{
  OUTLINED_FUNCTION_41();
  v1 = OUTLINED_FUNCTION_5_4();
  *(v0 + 16) = v1;
  lazy protocol witness table accessor for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs();
  OUTLINED_FUNCTION_1_5();
  *v1 = v2;
  v1[1] = ContactsLabelCATsModern.cancelAsLabel();
  v3 = MEMORY[0x277D84F90];

  return v5(0xD000000000000014, 0x800000026696EC70, v3, &type metadata for ContactsLabelCATsModern.ContactsLabelDialogIDs);
}

uint64_t ContactsLabelCATsModern.saveAsLabel()()
{
  OUTLINED_FUNCTION_41();
  v1 = OUTLINED_FUNCTION_5_4();
  *(v0 + 16) = v1;
  lazy protocol witness table accessor for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs();
  OUTLINED_FUNCTION_1_5();
  *v1 = v2;
  v1[1] = ContactsLabelCATsModern.saveAsLabel();
  v3 = MEMORY[0x277D84F90];

  return v5(0xD000000000000012, 0x800000026696EC50, v3, &type metadata for ContactsLabelCATsModern.ContactsLabelDialogIDs);
}

uint64_t ContactsLabelCATsModern.saveAsLabel()(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t ContactsLabelCATsModern.savedAsLabel()()
{
  OUTLINED_FUNCTION_41();
  v1 = OUTLINED_FUNCTION_5_4();
  *(v0 + 16) = v1;
  lazy protocol witness table accessor for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs();
  OUTLINED_FUNCTION_1_5();
  *v1 = v2;
  v1[1] = ContactsLabelCATsModern.cancelAsLabel();
  v3 = MEMORY[0x277D84F90];

  return v5(0xD000000000000013, 0x800000026696EC30, v3, &type metadata for ContactsLabelCATsModern.ContactsLabelDialogIDs);
}

uint64_t ContactsLabelCATsModern.ageUnitsAsLabels(age:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ContactsLabelCATsModern.ageUnitsAsLabels(age:)()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_266966D90;
  *(v2 + 32) = 6645601;
  *(v2 + 40) = 0xE300000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for DialogDuration();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  OUTLINED_FUNCTION_11_3();
  v4 = swift_task_alloc();
  v0[5] = v4;
  lazy protocol witness table accessor for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs();
  OUTLINED_FUNCTION_1_5();
  *v4 = v5;
  v4[1] = ContactsLabelCATsModern.ageUnitsAsLabels(age:);

  return v7(0xD000000000000016, 0x800000026696EC10, v2, &type metadata for ContactsLabelCATsModern.ContactsLabelDialogIDs);
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
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_7_3();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_2_3();

    return v11(v10);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ContactsLabelCATsModern.modernBirthdayAsLabels(contact:birthdayInfo:isToday:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ContactsLabelCATsModern.modernBirthdayAsLabels(contact:birthdayInfo:isToday:)()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  *(v0 + 40) = v3;
  v4 = OUTLINED_FUNCTION_4_3(v3, xmmword_266966D80);
  v3[3].n128_u64[0] = v2;
  v3[4].n128_u64[1] = v4;
  strcpy(&v3[5], "birthdayInfo");
  v3[5].n128_u8[13] = 0;
  v3[5].n128_u16[7] = -5120;
  v5 = 0;
  if (v1)
  {
    v5 = type metadata accessor for DialogCalendar();
  }

  else
  {
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v6 = *(v0 + 64);
  v3[6].n128_u64[0] = v1;
  v3[7].n128_u64[1] = v5;
  v3[8].n128_u64[0] = 0x7961646F547369;
  v3[8].n128_u64[1] = 0xE700000000000000;
  v3[10].n128_u64[1] = MEMORY[0x277D839B0];
  v3[9].n128_u8[0] = v6;
  v10 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);

  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  lazy protocol witness table accessor for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs();
  OUTLINED_FUNCTION_1_5();
  *v7 = v8;
  v7[1] = ContactsLabelCATsModern.modernBirthdayAsLabels(contact:birthdayInfo:isToday:);

  return v10(0xD00000000000001CLL, 0x800000026696EBF0, v3, &type metadata for ContactsLabelCATsModern.ContactsLabelDialogIDs);
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
    OUTLINED_FUNCTION_7_3();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_2_3();

    return v11(v10);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ContactsLabelCATsModern.quickActionButtonLabels(contact:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ContactsLabelCATsModern.quickActionButtonLabels(contact:)()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[4] = v2;
  v2[4].n128_u64[1] = OUTLINED_FUNCTION_4_3(v2, xmmword_266966D90);
  v2[3].n128_u64[0] = v1;
  OUTLINED_FUNCTION_11_3();
  v3 = swift_task_alloc();
  v0[5] = v3;
  lazy protocol witness table accessor for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs();
  OUTLINED_FUNCTION_1_5();
  *v3 = v4;
  v3[1] = ContactsLabelCATsModern.quickActionButtonLabels(contact:);

  return v6(0xD000000000000025, 0x800000026696EBC0, v2, &type metadata for ContactsLabelCATsModern.ContactsLabelDialogIDs);
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
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_7_3();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_2_3();

    return v11(v10);
  }
}

uint64_t ContactsLabelCATsModern.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_10_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  outlined init with copy of URL?(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  outlined destroy of URL?(a1);
  return v13;
}

uint64_t ContactsLabelCATsModern.__allocating_init(useResponseMode:options:)(uint64_t a1, uint64_t a2)
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

uint64_t ContactsLabelCATsModern.__deallocating_deinit()
{
  v0 = CATWrapperSimple.deinit();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs()
{
  result = lazy protocol witness table cache variable for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactsLabelCATsModern.ContactsLabelDialogIDs(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactsLabelCATsModern.ContactsLabelDialogIDs(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_3(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x746361746E6F63;
  a1[2].n128_u64[1] = 0xE700000000000000;

  return type metadata accessor for DialogPerson();
}

uint64_t OUTLINED_FUNCTION_5_4()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_11_3()
{
}

id ContactService.contactStore.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t one-time initialization function for current()
{
  type metadata accessor for ContactService();
  swift_allocObject();
  result = ContactService.().init()();
  static ContactService.current = result;
  return result;
}

uint64_t static ContactService.current.getter()
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }
}

uint64_t ContactService.().init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_clearCachedMeCard name:*MEMORY[0x277CBD148] object:0];

  return v0;
}

void ContactService.clearCachedMeCard()()
{
  v1 = *(v0 + 24);
  *(v0 + 24) = 0;
}

uint64_t static ContactService.defaultProperties.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266967220;
  v1 = *MEMORY[0x277CBD018];
  v2 = *MEMORY[0x277CBD068];
  *(v0 + 32) = *MEMORY[0x277CBD018];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CBD000];
  v4 = *MEMORY[0x277CBD058];
  *(v0 + 48) = *MEMORY[0x277CBD000];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277CBCFF8];
  v6 = *MEMORY[0x277CBD070];
  *(v0 + 64) = *MEMORY[0x277CBCFF8];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277CBD078];
  v8 = *MEMORY[0x277CBD0B0];
  *(v0 + 80) = *MEMORY[0x277CBD078];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x277CBD0B8];
  v62 = *MEMORY[0x277CBD0A8];
  v10 = *MEMORY[0x277CBD0A8];
  *(v0 + 96) = *MEMORY[0x277CBD0B8];
  *(v0 + 104) = v10;
  v11 = *MEMORY[0x277CBD0C0];
  v65 = *MEMORY[0x277CBD0A0];
  v12 = *MEMORY[0x277CBD0A0];
  *(v0 + 112) = *MEMORY[0x277CBD0C0];
  *(v0 + 120) = v12;
  v61 = *MEMORY[0x277CBD158];
  v68 = *MEMORY[0x277CBD090];
  v13 = *MEMORY[0x277CBD090];
  *(v0 + 128) = *MEMORY[0x277CBD158];
  *(v0 + 136) = v13;
  v14 = *MEMORY[0x277CBCFB8];
  v67 = *MEMORY[0x277CBD040];
  v15 = *MEMORY[0x277CBD040];
  *(v0 + 144) = *MEMORY[0x277CBCFB8];
  *(v0 + 152) = v15;
  v63 = *MEMORY[0x277CBD098];
  v71 = *MEMORY[0x277CBCFC0];
  v16 = *MEMORY[0x277CBCFC0];
  *(v0 + 160) = *MEMORY[0x277CBD098];
  *(v0 + 168) = v16;
  v66 = *MEMORY[0x277CBD0C8];
  v74 = *MEMORY[0x277CBD168];
  v17 = *MEMORY[0x277CBD168];
  *(v0 + 176) = *MEMORY[0x277CBD0C8];
  *(v0 + 184) = v17;
  v64 = *MEMORY[0x277CBD120];
  v73 = *MEMORY[0x277CBD038];
  v18 = *MEMORY[0x277CBD038];
  *(v0 + 192) = *MEMORY[0x277CBD120];
  *(v0 + 200) = v18;
  v69 = *MEMORY[0x277CBCF90];
  v76 = *MEMORY[0x277CBD080];
  v19 = *MEMORY[0x277CBD080];
  *(v0 + 208) = *MEMORY[0x277CBCF90];
  *(v0 + 216) = v19;
  v72 = *MEMORY[0x277CBD160];
  v20 = *MEMORY[0x277CBCFB0];
  v79 = *MEMORY[0x277CBCFB0];
  *(v0 + 224) = *MEMORY[0x277CBD160];
  *(v0 + 232) = v20;
  v70 = *MEMORY[0x277CBD028];
  v78 = *MEMORY[0x277CBD020];
  v21 = *MEMORY[0x277CBD020];
  *(v0 + 240) = *MEMORY[0x277CBD028];
  *(v0 + 248) = v21;
  v75 = *MEMORY[0x277CBD088];
  v22 = *MEMORY[0x277CBD0E0];
  v80 = *MEMORY[0x277CBD0E0];
  *(v0 + 256) = *MEMORY[0x277CBD088];
  *(v0 + 264) = v22;
  v77 = *MEMORY[0x277CBD138];
  v23 = *MEMORY[0x277CBCF88];
  v81 = *MEMORY[0x277CBCF88];
  *(v0 + 272) = *MEMORY[0x277CBD138];
  *(v0 + 280) = v23;
  v83 = v0;
  v82 = *MEMORY[0x277CBD0F0];
  v24 = v1;
  v25 = v2;
  v26 = v3;
  v27 = v4;
  v28 = v5;
  v29 = v6;
  v30 = v7;
  v31 = v8;
  v32 = v9;
  v33 = v62;
  v34 = v11;
  v35 = v65;
  v36 = v61;
  v37 = v68;
  v38 = v14;
  v39 = v67;
  v40 = v63;
  v41 = v71;
  v42 = v66;
  v43 = v74;
  v44 = v64;
  v45 = v73;
  v46 = v69;
  v47 = v76;
  v48 = v72;
  v49 = v79;
  v50 = v70;
  v51 = v78;
  v52 = v75;
  v53 = v80;
  v54 = v77;
  v55 = v81;
  v56 = v82;
  MEMORY[0x26D5E25E0]();
  OUTLINED_FUNCTION_6_2();
  if (v57)
  {
    OUTLINED_FUNCTION_9_3();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v58 = *MEMORY[0x277CBD0E8];
  MEMORY[0x26D5E25E0]();
  OUTLINED_FUNCTION_6_2();
  if (v57)
  {
    OUTLINED_FUNCTION_9_3();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v59 = *MEMORY[0x277CBCFC8];
  MEMORY[0x26D5E25E0]();
  OUTLINED_FUNCTION_6_2();
  if (v57)
  {
    OUTLINED_FUNCTION_9_3();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v83;
}

char *static ContactService.defaultPropertiesString.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266967230;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v2;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v3;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v4;
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v5;
  *(inited + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 120) = v6;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v7;
  *(inited + 144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 152) = v8;
  *(inited + 160) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 168) = v9;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v10;
  *(inited + 192) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 200) = v11;
  *(inited + 208) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 216) = v12;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v13;
  *(inited + 240) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 248) = v14;
  *(inited + 256) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 264) = v15;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v16;
  *(inited + 288) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 296) = v17;
  *(inited + 304) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 312) = v18;
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v19;
  *(inited + 336) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 344) = v20;
  *(inited + 352) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 360) = v21;
  *(inited + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 376) = v22;
  *(inited + 384) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 392) = v23;
  *(inited + 400) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 408) = v24;
  *(inited + 416) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 424) = v25;
  *(inited + 432) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 440) = v26;
  *(inited + 448) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 456) = v27;
  *(inited + 464) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 472) = v28;
  *(inited + 480) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 488) = v29;
  *(inited + 496) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 504) = v30;
  *(inited + 512) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 520) = v31;
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 32, 1, inited);
  v36 = v35;
  *(v35 + 2) = 32;
  *(v35 + 66) = v32;
  *(v35 + 67) = v34;
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;
  v40 = *(v36 + 3);
  if (v40 <= 0x41)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v40 > 1, 33, 1, v36);
    v36 = v46;
  }

  *(v36 + 2) = 33;
  *(v36 + 68) = v37;
  *(v36 + 69) = v39;
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;
  v44 = *(v36 + 3);
  if (v44 <= 0x43)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, 34, 1, v36);
    v36 = v47;
  }

  *(v36 + 2) = 34;
  *(v36 + 70) = v41;
  *(v36 + 71) = v43;
  return v36;
}

Swift::Bool __swiftcall ContactService.isAuthorized()()
{
  v0 = type metadata accessor for Signpost.OpenSignpost(0);
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_8();
  v4 = v3 - v2;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_1_6();
    swift_once();
  }

  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v5 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_18_2(v5);
  v6 = v4 + *(v0 + 20);
  *v6 = "CheckAuthorizationStatus";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = [objc_opt_self() authorizationStatusForEntityType_];
  v8 = swift_allocObject();
  *(v8 + 16) = v7 == 3;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriContacts);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_5_5();
    v24 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_3();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315138;
    lazy protocol witness table accessor for type Int and conformance Int();
    v12 = BinaryInteger.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, aBlock);

    *(v24 + 4) = v14;
    _os_log_impl(&dword_26686A000, v10, v11, "[ContactsService] Contacts App authorization status: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
  }

  if (v7 != 3)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      OUTLINED_FUNCTION_11_4();
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_26686A000, v15, v16, "[ContactsService] Requesting authorization to access Contacts App...", v17, 2u);
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }

    v18 = ContactService.contactStore.getter();
    aBlock[4] = partial apply for closure #1 in ContactService.isAuthorized();
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor;
    v19 = _Block_copy(aBlock);

    [v18 requestAccessForEntityType:0 completionHandler:v19];
    _Block_release(v19);
  }

  v20 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_18_2(v20);
  OUTLINED_FUNCTION_2_4();
  outlined destroy of Signpost.OpenSignpost(v4, v21);
  swift_beginAccess();
  v22 = *(v8 + 16);

  return v22;
}

void closure #1 in ContactService.isAuthorized()(char a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriContacts);
    v7 = a2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21[0] = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v21);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_26686A000, v8, v9, "[ContactsService] Error occurred when trying to gain access to Contacts App: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x26D5E3300](v11, -1, -1);
      MEMORY[0x26D5E3300](v10, -1, -1);
    }
  }

  if (a1)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.siriContacts);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "[ContactsService] User has authorized access to Contacts App.";
LABEL_16:
      _os_log_impl(&dword_26686A000, v16, v17, v19, v18, 2u);
      MEMORY[0x26D5E3300](v18, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(a3 + 16) = 0;
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.siriContacts);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "[ContactsService] User has NOT authorized access to Contacts App.";
      goto LABEL_16;
    }
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

CNContact_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContactService.fetchContact(matchingIdentifier:)(Swift::String matchingIdentifier)
{
  object = matchingIdentifier._object;
  countAndFlagsBits = matchingIdentifier._countAndFlagsBits;
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for Signpost.OpenSignpost(0);
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_1_6();
    swift_once();
  }

  v8 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v9 = v7 + *(v3 + 20);
  *v9 = "FetchContactByID";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v10 = ContactService.contactStore.getter();
  v11 = MEMORY[0x26D5E2470](countAndFlagsBits, object);
  type metadata accessor for ContactService();
  static ContactService.defaultProperties.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v20[0] = 0;
  v13 = [v10 unifiedContactWithIdentifier:v11 keysToFetch:isa error:v20];

  v14 = v20[0];
  if (!v13)
  {
    v15 = v14;
    v16 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_2_4();
  outlined destroy of Signpost.OpenSignpost(v7, v17);
  v19 = v13;
  result.value.super.isa = v19;
  result.is_nil = v18;
  return result;
}

CNContact_optional __swiftcall ContactService.getMeCard()()
{
  type metadata accessor for ContactsError(0);
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_8();
  v4 = v3 - v2;
  v5 = type metadata accessor for Signpost.OpenSignpost(0);
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_1_6();
    swift_once();
  }

  v10 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v11 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_18_2(v11);
  v12 = v9 + *(v5 + 20);
  *v12 = "FetchMeCard";
  *(v12 + 8) = 11;
  *(v12 + 16) = 2;
  v13 = *(v0 + 24);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v15 = ContactService.fetchMeCard()();
    v13 = v15;
    if (v16)
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_0_4();
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.siriContacts);
      v18 = v13;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v21 = 136315394;
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
        v22 = Error.localizedDescription.getter();
        v24 = v23;
        outlined destroy of Signpost.OpenSignpost(v4, type metadata accessor for ContactsError);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v36);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2080;
        swift_getErrorValue();
        v26 = Error.localizedDescription.getter();
        v28 = v27;
        outlined consume of Result<CNContact, Error>(v13);
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v36);

        *(v21 + 14) = v29;
        _os_log_impl(&dword_26686A000, v19, v20, "%s: %s", v21, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_3_3();
        MEMORY[0x26D5E3300]();
        OUTLINED_FUNCTION_3_3();
        MEMORY[0x26D5E3300]();
      }

      else
      {

        outlined consume of Result<CNContact, Error>(v13);
      }

      outlined consume of Result<CNContact, Error>(v13);
      v13 = 0;
    }

    else
    {
      v30 = *(v0 + 24);
      *(v0 + 24) = v15;
      v31 = v15;
    }
  }

  v32 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_18_2(v32);
  OUTLINED_FUNCTION_2_4();
  outlined destroy of Signpost.OpenSignpost(v9, v33);
  v35 = v13;
  result.value.super.isa = v35;
  result.is_nil = v34;
  return result;
}

uint64_t ContactService.fetchMeCard()()
{
  OUTLINED_FUNCTION_10_4();
  closure #1 in ContactService.fetchMeCard()(&v1, &v2);
  return v2;
}

id closure #1 in ContactService.fetchMeCard()@<X0>(uint64_t *a1@<X2>, void *a2@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = ContactService.contactStore.getter();
  static ContactService.defaultProperties.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11[0] = 0;
  v6 = [v4 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  v7 = v11[0];
  if (v6)
  {
    *a2 = v6;
    return v7;
  }

  else
  {
    v9 = v11[0];
    v10 = _convertNSErrorToError(_:)();

    result = swift_willThrow();
    *a1 = v10;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContactService.setMeCardNickName(toNickname:forMeCard:)(Swift::String toNickname, CNContact forMeCard)
{
  object = toNickname._object;
  countAndFlagsBits = toNickname._countAndFlagsBits;
  v43[4] = *MEMORY[0x277D85DE8];
  [(objc_class *)forMeCard.super.isa mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v4 = type metadata accessor for CNMutableContact();
  OUTLINED_FUNCTION_17_1(v4, v5, v6, v4);
  v7 = MEMORY[0x26D5E2470](countAndFlagsBits, object);
  [v42 setNickname_];

  v8 = [objc_allocWithZone(MEMORY[0x277CBDBA0]) init];
  [v8 updateContact_];
  v9 = ContactService.contactStore.getter();
  v43[0] = 0;
  LODWORD(countAndFlagsBits) = [v9 executeSaveRequest:v8 error:v43];

  if (countAndFlagsBits)
  {
    v10 = one-time initialization token for siriContacts;
    v11 = v43[0];
    if (v10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.siriContacts);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      OUTLINED_FUNCTION_11_4();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_2(&dword_26686A000, v15, v16, "[ContactsService] Nickname was updated successfully!");
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }
  }

  else
  {
    v17 = v43[0];
    v18 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.siriContacts);
    v20 = v18;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_5_5();
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_3();
      v24 = swift_slowAlloc();
      v43[0] = v24;
      OUTLINED_FUNCTION_12_2(4.8149e-34, v24, v25, v26, v27, v28, v29, v30, v31, v38, v39, v40, v41);
      v32 = Error.localizedDescription.getter();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v43);

      *(v23 + 4) = v34;
      OUTLINED_FUNCTION_13_1(&dword_26686A000, v35, v36, "[ContactsService] Call to setMeCardNickName() threw an exception: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }

    type metadata accessor for ContactsError(0);
    v37 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    OUTLINED_FUNCTION_56(v37);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContactService.deleteMeCardNickName(forMeCard:)(CNContact forMeCard)
{
  v40[4] = *MEMORY[0x277D85DE8];
  [(objc_class *)forMeCard.super.isa mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v1 = type metadata accessor for CNMutableContact();
  OUTLINED_FUNCTION_17_1(v1, v2, v3, v1);
  [v39 setValue:0 forKeyPath:*MEMORY[0x277CBD078]];
  v4 = [objc_allocWithZone(MEMORY[0x277CBDBA0]) init];
  [v4 updateContact_];
  v5 = ContactService.contactStore.getter();
  v40[0] = 0;
  v6 = [v5 executeSaveRequest:v4 error:v40];

  if (v6)
  {
    v7 = one-time initialization token for siriContacts;
    v8 = v40[0];
    if (v7 != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.siriContacts);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_11_4();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_2(&dword_26686A000, v12, v13, "[ContactsService] Nickname was deleted successfully!");
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }
  }

  else
  {
    v14 = v40[0];
    v15 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.siriContacts);
    v17 = v15;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_5_5();
      v20 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_3();
      v21 = swift_slowAlloc();
      v40[0] = v21;
      OUTLINED_FUNCTION_12_2(4.8149e-34, v21, v22, v23, v24, v25, v26, v27, v28, v35, v36, v37, v38);
      v29 = Error.localizedDescription.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v40);

      *(v20 + 4) = v31;
      OUTLINED_FUNCTION_13_1(&dword_26686A000, v32, v33, "[ContactsService] Call to deleteMeCardNickName() threw an exception: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }

    type metadata accessor for ContactsError(0);
    v34 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    OUTLINED_FUNCTION_56(v34);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContactService.setMeCardRelationship(relationLabel:contactName:forMeCard:)(Swift::String relationLabel, Swift::String contactName, CNContact forMeCard)
{
  object = contactName._object;
  countAndFlagsBits = contactName._countAndFlagsBits;
  v48[4] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriContacts);
  v6 = forMeCard.super.isa;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_5_5();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_3();
    v10 = swift_slowAlloc();
    v48[0] = v10;
    *v9 = 136315138;
    v42 = object;
    v11 = [(objc_class *)v6 contactRelations];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = MEMORY[0x26D5E2610](v13, v12);
    v16 = v15;

    v17 = v14;
    object = v42;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, v48);

    *(v9 + 4) = v18;
    _os_log_impl(&dword_26686A000, v7, v8, "#ContactService contactRelations: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);

  v19 = CNLabeledValue<>.init(relationLabel:contactName:)(relationLabel._countAndFlagsBits, relationLabel._object, countAndFlagsBits, object);
  v20 = [(objc_class *)v6 contactRelations];
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = v21;
  v22 = v19;
  MEMORY[0x26D5E25E0]();
  if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  [(objc_class *)v6 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CNMutableContact();
  swift_dynamicCast();
  v23 = v46;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v46 setContactRelations_];

  v25 = [objc_allocWithZone(MEMORY[0x277CBDBA0]) init];
  [v25 updateContact_];
  v26 = ContactService.contactStore.getter();
  v48[0] = 0;
  LODWORD(isa) = [v26 executeSaveRequest:v25 error:v48];

  if (isa)
  {
    v27 = v48[0];
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      OUTLINED_FUNCTION_11_4();
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26686A000, v28, v29, "[ContactsService] Relationship was updated successfully!", v30, 2u);
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }
  }

  else
  {
    v31 = v48[0];
    v32 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v33 = v32;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      OUTLINED_FUNCTION_5_5();
      v36 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_3();
      v45 = swift_slowAlloc();
      v48[0] = v45;
      *v36 = 136315138;
      swift_getErrorValue();
      v37 = Error.localizedDescription.getter();
      v39 = v22;
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v48);

      *(v36 + 4) = v40;
      v22 = v39;
      v23 = v46;
      _os_log_impl(&dword_26686A000, v34, v35, "[ContactsService] Call to setMeCardRelationship() threw an exception: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }

    type metadata accessor for ContactsError(0);
    v41 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    OUTLINED_FUNCTION_15_1(v41);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContactService.deleteMeCardRelationship(relationLabel:contactName:forMeCard:)(Swift::String relationLabel, Swift::String contactName, CNContact forMeCard)
{
  countAndFlagsBits = contactName._countAndFlagsBits;
  v56 = relationLabel._countAndFlagsBits;
  object = contactName._object;
  v5 = relationLabel._object;
  v58[4] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriContacts);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_5_5();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_3();
    v10 = swift_slowAlloc();
    v58[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v5, v58);
    _os_log_impl(&dword_26686A000, v7, v8, "[ContactsService] Relation label: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
  }

  v11 = forMeCard.super.isa;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  v14 = &off_279BD3000;
  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_5_5();
    v15 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_3();
    v16 = swift_slowAlloc();
    v58[0] = v16;
    *v15 = 136315138;
    v54 = object;
    v17 = [(objc_class *)v11 contactRelations];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = MEMORY[0x26D5E2610](v19, v18);
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v58);
    object = v54;

    *(v15 + 4) = v23;
    _os_log_impl(&dword_26686A000, v12, v13, "[ContactsService] Relations before: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
    v14 = &off_279BD3000;
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
  }

  v24 = [v11 v14[485]];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = Array<A>.removeAllWhere(contactName:relationLabel:)(countAndFlagsBits, object, v56, v5, v26);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_5_5();
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_3();
    v31 = swift_slowAlloc();
    v58[0] = v31;
    *v30 = 136315138;
    v32 = MEMORY[0x26D5E2610](v27, v25);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v58);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_26686A000, v28, v29, "[ContactsService] Relations after: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
  }

  [(objc_class *)v11 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CNMutableContact();
  swift_dynamicCast();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v57 setContactRelations_];

  v36 = [objc_allocWithZone(MEMORY[0x277CBDBA0]) init];
  [v36 updateContact_];
  v37 = ContactService.contactStore.getter();
  v58[0] = 0;
  v38 = [v37 executeSaveRequest:v36 error:v58];

  if (v38)
  {
    v39 = v58[0];
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      OUTLINED_FUNCTION_11_4();
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_26686A000, v40, v41, "[ContactsService] Relationship was deleted successfully!", v42, 2u);
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }
  }

  else
  {
    v43 = v58[0];
    v44 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v45 = v44;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      OUTLINED_FUNCTION_5_5();
      v48 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_3();
      v49 = swift_slowAlloc();
      v58[0] = v49;
      *v48 = 136315138;
      swift_getErrorValue();
      v50 = Error.localizedDescription.getter();
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v58);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_26686A000, v46, v47, "[ContactsService] Call to deleteMeCardRelationship() threw an exception: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }

    type metadata accessor for ContactsError(0);
    v53 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    OUTLINED_FUNCTION_15_1(v53);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t ContactService.__deallocating_deinit()
{
  ContactService.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsError and conformance ContactsError()
{
  result = lazy protocol witness table cache variable for type ContactsError and conformance ContactsError;
  if (!lazy protocol witness table cache variable for type ContactsError and conformance ContactsError)
  {
    type metadata accessor for ContactsError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsError and conformance ContactsError);
  }

  return result;
}

uint64_t outlined destroy of Signpost.OpenSignpost(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t type metadata accessor for CNMutableContact()
{
  result = lazy cache variable for type metadata for CNMutableContact;
  if (!lazy cache variable for type metadata for CNMutableContact)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNMutableContact);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_12_2(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *v13 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_13_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_14_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_15_1(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_17_1(uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_18_2(uint64_t a1)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t ModifyOperation.stringify.getter(uint64_t a1)
{
  result = 6579297;
  switch(a1)
  {
    case 0:
      result = 0x6E776F6E6B6E75;
      break;
    case 1:
      return result;
    case 2:
      result = 0x6563616C706572;
      break;
    case 3:
      result = 0x6574656C6564;
      break;
    default:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t static ModifyOperation.from(_:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v4 = a1 == 0x6574656C6564 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 3;
  }

  v6 = a1 == 0x6563616C706572 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void static Siri_Nlu_External_UserStatedTask.from(_:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v3 = OUTLINED_FUNCTION_18_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  OUTLINED_FUNCTION_18_0(v10);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v11);
  v13 = &v17[-v12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_266966A40;
  *(v14 + 32) = v1;
  v15 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v15);

  MEMORY[0x26D5E09B0](v14, v13);

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v13, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  v16 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v16);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v9, v6);
  Siri_Nlu_External_UserStatedTask.init(_:)();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v9, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  OUTLINED_FUNCTION_14();
}

uint64_t Siri_Nlu_External_UserDialogAct.usoTask.getter()
{
  v0 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (specialized Array._getCount()())
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    if ((v0 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x26D5E29D0](0, v0);
    }

    else
    {
      v1 = *(v0 + 32);
    }
  }

  else
  {

    return 0;
  }

  return v1;
}

void Siri_Nlu_External_UserDialogAct.contactId.getter()
{
  OUTLINED_FUNCTION_15();
  v46 = type metadata accessor for Google_Protobuf_StringValue();
  OUTLINED_FUNCTION_1_0();
  v48 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v5 = v4 - v3;
  v49 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_6();
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  v16 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
  OUTLINED_FUNCTION_18_0(v23);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v24);
  v45 = &v44 - v25;
  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v18 + 8))(v22, v16);
  v26 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  (*(v11 + 8))(v15, v9);
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = 0;
    v47 = v26 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v29 = v7;
    v30 = v49;
    v31 = (v48 + 8);
    v48 = v29;
    v32 = (v29 + 8);
    while (1)
    {
      if (v28 >= *(v26 + 16))
      {
        __break(1u);
        return;
      }

      (*(v48 + 16))(v0, v47 + *(v48 + 72) * v28, v30);
      Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter();
      OUTLINED_FUNCTION_4_4();
      v34 = v34 && v33 == 0xE800000000000000;
      if (v34)
      {
      }

      else
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v35 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
      v36 = Google_Protobuf_StringValue.value.getter();
      v38 = v37;
      (*v31)(v5, v46);
      OUTLINED_FUNCTION_9_4();
      if (v36 == v39 && v38 == 0xE700000000000000)
      {

LABEL_21:

        v7 = v48;
        v30 = v49;
        v43 = v45;
        (*(v48 + 32))(v45, v0, v49);
        v42 = 0;
        goto LABEL_22;
      }

      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v41)
      {
        goto LABEL_21;
      }

LABEL_16:
      ++v28;
      v30 = v49;
      (*v32)(v0, v49);
      if (v27 == v28)
      {

        v42 = 1;
        v7 = v48;
        goto LABEL_19;
      }
    }
  }

  v42 = 1;
  v30 = v49;
LABEL_19:
  v43 = v45;
LABEL_22:
  __swift_storeEnumTagSinglePayload(v43, v42, 1, v30);
  if (__swift_getEnumTagSinglePayload(v43, 1, v30) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v43, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
  }

  else
  {
    Siri_Nlu_External_UsoEntityIdentifier.value.getter();
    (*(v7 + 8))(v43, v30);
  }

  OUTLINED_FUNCTION_14();
}

void Siri_Nlu_External_UserDialogAct.contactIds.getter()
{
  OUTLINED_FUNCTION_15();
  type metadata accessor for Google_Protobuf_StringValue();
  OUTLINED_FUNCTION_1_0();
  v70 = v1;
  v71 = v2;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_8();
  v69 = v4 - v3;
  v5 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  v65 = (v9 - v10);
  v12 = MEMORY[0x28223BE20](v11);
  v67 = &v63 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v63 - v14;
  v16 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_6();
  v20 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  OUTLINED_FUNCTION_1_0();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  v26 = v25 - v24;
  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v22 + 8))(v26, v20);
  v27 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  (*(v18 + 8))(v0, v16);
  v28 = 0;
  v72 = *(v27 + 16);
  v73 = v7 + 16;
  v68 = (v71 + 8);
  v29 = (v7 + 8);
  v71 = v7;
  v64 = (v7 + 32);
  v66 = MEMORY[0x277D84F90];
  while (v72 != v28)
  {
    if (v28 >= *(v27 + 16))
    {
      __break(1u);
      return;
    }

    v30 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v31 = *(v71 + 72);
    (*(v71 + 16))(v15, v27 + v30 + v31 * v28, v5);
    Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter();
    OUTLINED_FUNCTION_4_4();
    v33 = v33 && v32 == 0xE800000000000000;
    if (v33)
    {

LABEL_11:
      v35 = v27;
      v36 = v5;
      v37 = v69;
      Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
      v38 = Google_Protobuf_StringValue.value.getter();
      v40 = v39;
      (*v68)(v37, v70);
      OUTLINED_FUNCTION_9_4();
      if (v38 == v41 && v40 == 0xE700000000000000)
      {

        v5 = v36;
        v27 = v35;
      }

      else
      {
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v5 = v36;
        v27 = v35;
        if ((v43 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v44 = *v64;
      (*v64)(v65, v15, v5);
      v45 = v66;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v45;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 16) + 1, 1);
        v45 = v74;
      }

      v48 = *(v45 + 16);
      v47 = *(v45 + 24);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v66 = v48 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v47 > 1, v48 + 1, 1);
        v49 = v66;
        v45 = v74;
      }

      ++v28;
      *(v45 + 16) = v49;
      v66 = v45;
      v44(v45 + v30 + v48 * v31, v65, v5);
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v34)
      {
        goto LABEL_11;
      }

LABEL_16:
      (*v29)(v15, v5);
      ++v28;
    }
  }

  v50 = *(v66 + 16);
  if (v50)
  {
    v51 = v66 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v72 = *(v71 + 72);
    v52 = *(v71 + 16);
    v53 = MEMORY[0x277D84F90];
    do
    {
      v54 = v67;
      v52(v67, v51, v5);
      v55 = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
      v57 = v56;
      (*v29)(v54, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 16) + 1, 1, v53);
        v53 = v61;
      }

      v59 = *(v53 + 16);
      v58 = *(v53 + 24);
      if (v59 >= v58 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v58 > 1, v59 + 1, 1, v53);
        v53 = v62;
      }

      *(v53 + 16) = v59 + 1;
      v60 = v53 + 16 * v59;
      *(v60 + 32) = v55;
      *(v60 + 40) = v57;
      v51 += v72;
      --v50;
    }

    while (v50);
  }

  OUTLINED_FUNCTION_14();
}

void Siri_Nlu_External_UserStatedTask.init(_:)()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  OUTLINED_FUNCTION_18_0(v8);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_6();
  v10 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_4();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_3();
  v5();
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v7, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v10) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v7, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  }

  else
  {
    (*(v12 + 32))(v1, v0, v10);
    (*(v12 + 16))(v16, v1, v10);
    v3(v16);
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v7, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    (*(v12 + 8))(v1, v10);
  }

  OUTLINED_FUNCTION_14();
}

uint64_t outlined init with copy of Siri_Nlu_External_UsoGraph?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static Siri_Nlu_External_SystemPrompted.from(_:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  OUTLINED_FUNCTION_18_0(v3);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v8 = OUTLINED_FUNCTION_18_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_266966A40;
  *(v13 + 32) = v2;
  v14 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v14);

  MEMORY[0x26D5E09B0](v13, v6);

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v6, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();

  v15 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v15);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v0, v11);
  Siri_Nlu_External_UserStatedTask.init(_:)();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v0, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  OUTLINED_FUNCTION_14();
}