uint64_t key path getter for AnswerSynthesisClient.session : AnswerSynthesisClient@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t key path setter for AnswerSynthesisClient.session : AnswerSynthesisClient(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 96);

  return v2(v3);
}

uint64_t AnswerSynthesisClient.session.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t AnswerSynthesisClient.__allocating_init()()
{
  OUTLINED_FUNCTION_11();
  v0 = swift_allocObject();
  AnswerSynthesisClient.init()();
  return v0;
}

uint64_t AnswerSynthesisClient.init()()
{
  *(v0 + 16) = 0;
  swift_beginAccess();
  *(v0 + 16) = 0;
  return v0;
}

void *AnswerSynthesisClient.connection()()
{
  v2 = type metadata accessor for XPCSession.InitializationOptions();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_8();
  v4 = (*(v3 + 88))();
  if (v4)
  {
    return v4;
  }

  type metadata accessor for XPCSession();
  v5 = AnswerSynthesisXPCServiceName.getter();
  swift_allocObject();
  swift_weakInit();

  static XPCSession.InitializationOptions.none.getter();
  v6 = XPCSession.__allocating_init(machService:targetQueue:options:cancellationHandler:)();
  if (v1)
  {

    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logging.answerSynthesis);
    MEMORY[0x25F8A1890](v1);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v10 = 138412290;
      MEMORY[0x25F8A1890](v1);
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v11;
      *v5 = v11;
      _os_log_impl(&dword_25DC59000, v8, v9, "Failed to connect to listener, error: %@", v10, 0xCu);
      outlined destroy of NSObject?(v5);
      OUTLINED_FUNCTION_16();
      MEMORY[0x25F8A1970]();
      OUTLINED_FUNCTION_16();
      MEMORY[0x25F8A1970]();
    }

    swift_willThrow();
  }

  else
  {
    v5 = v6;

    v12 = *(*v0 + 96);

    v12(v13);
  }

  return v5;
}

uint64_t sub_25DC5AE40()
{
  swift_weakDestroy();
  v0 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t closure #1 in AnswerSynthesisClient.connection()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCRichError();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for answerSynthesis != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logging.answerSynthesis);
  v9 = *(v5 + 16);
  v9(v7, a1, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    lazy protocol witness table accessor for type AnswerSynthesisXPCRequest and conformance AnswerSynthesisXPCRequest(&lazy protocol witness table cache variable for type XPCRichError and conformance XPCRichError, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
    swift_allocError();
    v9(v15, v7, v4);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v7, v4);
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_25DC59000, v10, v11, "Session cancelled, error: %@", v13, 0xCu);
    outlined destroy of NSObject?(v14);
    MEMORY[0x25F8A1970](v14, -1, -1);
    MEMORY[0x25F8A1970](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 96))(0);
  }

  return result;
}

Swift::Void __swiftcall AnswerSynthesisClient.resetConnection()()
{
  OUTLINED_FUNCTION_8();
  if ((*(v1 + 88))())
  {
    dispatch thunk of XPCSession.cancel(reason:)();
  }

  v2 = *(*v0 + 96);

  v2(0);
}

uint64_t AnswerSynthesisClient.deinit(uint64_t a1)
{
  OUTLINED_FUNCTION_20(a1);
  if (*(v1 + 16))
  {

    dispatch thunk of XPCSession.cancel(reason:)();
  }

  return v1;
}

uint64_t AnswerSynthesisClient.__deallocating_deinit(uint64_t a1)
{
  AnswerSynthesisClient.deinit(a1);
  v1 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2821FE8D8](v1);
}

uint64_t AnswerSynthesisClient.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  OUTLINED_FUNCTION_9();
  return MEMORY[0x2822009F8](v5);
}

uint64_t AnswerSynthesisClient.perform(_:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 120))();
  v0[5] = v2;
  v3 = v2;
  v4 = v0[3];
  v5 = swift_task_alloc();
  v0[6] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = swift_task_alloc();
  v0[7] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15OmniSearchTypes21AnswerSynthesisResultCGSgMd, &_sSay15OmniSearchTypes21AnswerSynthesisResultCGSgMR);
  *v6 = v0;
  v6[1] = AnswerSynthesisClient.perform(_:);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822008A0](v7);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_19();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_2();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

{
  OUTLINED_FUNCTION_2();

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t closure #1 in AnswerSynthesisClient.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v30 = type metadata accessor for XPCServiceError();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AnswerSynthesisXPCResponse();
  v31 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = type metadata accessor for XPCReceivedMessage();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnswerSynthesisXPCRequest();
  lazy protocol witness table accessor for type AnswerSynthesisXPCRequest and conformance AnswerSynthesisXPCRequest(&lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest and conformance AnswerSynthesisXPCRequest, MEMORY[0x277D36FB8], MEMORY[0x277D36FC0]);
  dispatch thunk of XPCSession.sendSync<A>(_:)();
  v28 = v12;
  v29 = v11;
  v16 = v31;
  v15 = v32;
  lazy protocol witness table accessor for type AnswerSynthesisXPCRequest and conformance AnswerSynthesisXPCRequest(&lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse and conformance AnswerSynthesisXPCResponse, MEMORY[0x277D36FD8], MEMORY[0x277D36FE0]);
  XPCReceivedMessage.decode<A>(as:)();
  v17 = v16;
  v18 = *(v16 + 16);
  v19 = v8;
  v18(v8, v10, v5);
  v20 = (*(v17 + 88))(v8, v5);
  if (v20 == *MEMORY[0x277D36FC8])
  {
    (*(v17 + 96))(v8, v5);
    v21 = v8;
    v22 = v30;
    (*(v15 + 32))(v4, v21, v30);
    lazy protocol witness table accessor for type AnswerSynthesisXPCRequest and conformance AnswerSynthesisXPCRequest(&lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError, MEMORY[0x277D36F10], MEMORY[0x277D36F18]);
    v23 = swift_allocError();
    (*(v15 + 16))(v24, v4, v22);
    v34 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay15OmniSearchTypes21AnswerSynthesisResultCGSgs5Error_pGMd, &_sScCySay15OmniSearchTypes21AnswerSynthesisResultCGSgs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    (*(v15 + 8))(v4, v22);
    (*(v17 + 8))(v10, v5);
    return (*(v28 + 8))(v14, v29);
  }

  else
  {
    v27 = v28;
    v26 = v29;
    if (v20 == *MEMORY[0x277D36FD0])
    {
      (*(v17 + 96))(v19, v5);
      v34 = *v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay15OmniSearchTypes21AnswerSynthesisResultCGSgs5Error_pGMd, &_sScCySay15OmniSearchTypes21AnswerSynthesisResultCGSgs5Error_pGMR);
      CheckedContinuation.resume(returning:)();
      (*(v17 + 8))(v10, v5);
      return (*(v27 + 8))(v14, v26);
    }

    else
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t AnswerSynthesisClient.preheat()()
{
  OUTLINED_FUNCTION_2();
  v1[2] = v0;
  v2 = type metadata accessor for AnswerSynthesisXPCRequest();
  v1[3] = v2;
  OUTLINED_FUNCTION_4(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4);
}

{
  OUTLINED_FUNCTION_2();
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D36FA8], v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_1(v1);

  return AnswerSynthesisClient.perform(_:)(v2, v3, v4);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v0;

  if (!v0)
  {

    v8 = OUTLINED_FUNCTION_0();
    v9(v8);

    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_21();

    __asm { BRAA            X1, X16 }
  }

  v4 = OUTLINED_FUNCTION_0();
  v5(v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v6);
}

uint64_t AnswerSynthesisClient.activate()()
{
  OUTLINED_FUNCTION_2();
  v1[2] = v0;
  v2 = type metadata accessor for AnswerSynthesisXPCRequest();
  v1[3] = v2;
  OUTLINED_FUNCTION_4(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4);
}

{
  OUTLINED_FUNCTION_2();
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D36FB0], v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_1(v1);

  return AnswerSynthesisClient.perform(_:)(v2, v3, v4);
}

uint64_t AnswerSynthesisClient.deactivate()()
{
  OUTLINED_FUNCTION_2();
  v1[2] = v0;
  v2 = type metadata accessor for AnswerSynthesisXPCRequest();
  v1[3] = v2;
  OUTLINED_FUNCTION_4(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4);
}

{
  OUTLINED_FUNCTION_2();
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D36FA0], v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_1(v1);

  return AnswerSynthesisClient.perform(_:)(v2, v3, v4);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v0;

  if (!v0)
  {

    v8 = OUTLINED_FUNCTION_0();
    v9(v8);

    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_21();

    __asm { BRAA            X1, X16 }
  }

  v4 = OUTLINED_FUNCTION_0();
  v5(v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v6);
}

{
  OUTLINED_FUNCTION_2();

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t AnswerSynthesisClient.extractAnswer(query:structuredQuery:extractionCandidates:resolutionType:options:)()
{
  OUTLINED_FUNCTION_2();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes29AnswerSynthesisResolutionTypeOSgMd, &_s15OmniSearchTypes29AnswerSynthesisResolutionTypeOSgMR);
  v1[10] = OUTLINED_FUNCTION_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v1[11] = OUTLINED_FUNCTION_17();
  v8 = type metadata accessor for AnswerSynthesisXPCRequest();
  v1[12] = v8;
  OUTLINED_FUNCTION_4(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v10);
}

{
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[15] = __swift_project_value_buffer(v1, static Logging.answerSynthesis);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25DC59000, v2, v3, "performing extract answers", v4, 2u);
    OUTLINED_FUNCTION_16();
    MEMORY[0x25F8A1970]();
  }

  v5 = v0[13];
  v6 = v0[11];
  v15 = v0[14];
  v16 = v0[12];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[5];

  outlined init with copy of StructuredQueryEntity?(v9, v6, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  outlined init with copy of StructuredQueryEntity?(v8, v7, &_s15OmniSearchTypes29AnswerSynthesisResolutionTypeOSgMd, &_s15OmniSearchTypes29AnswerSynthesisResolutionTypeOSgMR);

  AnswerSynthesisQuery.init(query:structuredQuery:extractionCandidates:resolutionType:options:)();
  (*(v5 + 104))(v15, *MEMORY[0x277D36F98], v16);
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = AnswerSynthesisClient.extractAnswer(query:structuredQuery:extractionCandidates:resolutionType:options:);
  v13 = v0[14];

  return AnswerSynthesisClient.perform(_:)(v13, v11, v12);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = v4[14];
  v6 = v4[13];
  v7 = v4[12];
  v8 = *v1;
  OUTLINED_FUNCTION_6();
  *v9 = v8;
  *(v11 + 136) = v10;
  *(v11 + 144) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v12);
}

{
  v15 = v0;
  v1 = v0[17];

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[17];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v0[2] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15OmniSearchTypes21AnswerSynthesisResultCGSgMd, &_sSay15OmniSearchTypes21AnswerSynthesisResultCGSgMR);
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25DC59000, v2, v3, "Returning extracted answers: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_16();
    MEMORY[0x25F8A1970](v10);
    OUTLINED_FUNCTION_16();
    MEMORY[0x25F8A1970](v11);
  }

  if (!v0[17])
  {
    v1 = MEMORY[0x277D84F90];
  }

  v12 = v0[1];

  return v12(v1);
}

{
  OUTLINED_FUNCTION_2();

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t outlined init with copy of StructuredQueryEntity?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_9();
  v9 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v10;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t dispatch thunk of AnswerSynthesisClient.preheat()()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_8();
  v14 = v0 + 144;
  v15 = *(v0 + 144) + **(v0 + 144);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_18(v1);
  *v2 = v3;
  v11 = OUTLINED_FUNCTION_13(v2, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);

  return v11();
}

uint64_t dispatch thunk of AnswerSynthesisClient.activate()()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_8();
  v14 = v0 + 152;
  v15 = *(v0 + 152) + **(v0 + 152);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_18(v1);
  *v2 = v3;
  v11 = OUTLINED_FUNCTION_13(v2, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);

  return v11();
}

uint64_t dispatch thunk of AnswerSynthesisClient.deactivate()()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_8();
  v14 = v0 + 160;
  v15 = *(v0 + 160) + **(v0 + 160);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_18(v1);
  *v2 = v3;
  v11 = OUTLINED_FUNCTION_13(v2, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);

  return v11();
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_19();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t dispatch thunk of AnswerSynthesisClient.extractAnswer(query:structuredQuery:extractionCandidates:resolutionType:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_8();
  v17 = (*(v12 + 168) + **(v12 + 168));
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_18(v13);
  *v14 = v15;
  v14[1] = dispatch thunk of AnswerSynthesisClient.extractAnswer(query:structuredQuery:extractionCandidates:resolutionType:options:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AnswerSynthesisClient.extractAnswer(query:structuredQuery:extractionCandidates:resolutionType:options:)()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  OUTLINED_FUNCTION_19();
  v3 = *v0;
  OUTLINED_FUNCTION_6();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t lazy protocol witness table accessor for type AnswerSynthesisXPCRequest and conformance AnswerSynthesisXPCRequest(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_17()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t key path setter for LLMSearchClient.session : LLMSearchClient(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 104);

  return v2(v3);
}

uint64_t LLMSearchClient.session.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_25(v1 + 16, v4);
  *(v1 + 16) = a1;
}

uint64_t key path setter for LLMSearchClient.progress : LLMSearchClient(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);
  v4 = *a1;
  return v3(v2);
}

void *LLMSearchClient.progress.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_0(v2 + 24, a2);
  v3 = *(v2 + 24);
  v4 = v3;
  return v3;
}

void LLMSearchClient.progress.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_25(v1 + 24, v4);
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t LLMSearchClient.__allocating_init()()
{
  OUTLINED_FUNCTION_15_0();
  v0 = swift_allocObject();
  LLMSearchClient.init()();
  return v0;
}

uint64_t LLMSearchClient.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  OUTLINED_FUNCTION_25(v0 + 24, v3);
  *(v0 + 24) = 0;
  OUTLINED_FUNCTION_25(v0 + 16, &v2);
  *(v0 + 16) = 0;
  return v0;
}

void LLMSearchClient.encodeProgress(progressUpdate:)()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 120);
  v2 = v1();
  if (v2)
  {
    v3 = v2;
    [v2 setTotalUnitCount_];
  }

  v4 = v1();
  if (v4)
  {
    v5 = v4;
    [v4 setCompletedUnitCount_];
  }

  v6 = v1();
  if (v6)
  {
    v7 = v6;
    v8 = OmniSearchProgressUpdate.localizedDescription.getter();
    if (v9)
    {
      v10 = MEMORY[0x25F8A15C0](v8);
    }

    else
    {
      v10 = 0;
    }

    [v7 setLocalizedDescription_];
  }
}

double LLMSearchClient.processProgressUpdate(progressUpdate:)@<D0>(uint64_t a2@<X8>)
{
  if (one-time initialization token for llmSearch != -1)
  {
    OUTLINED_FUNCTION_7_0();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logging.llmSearch);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    type metadata accessor for OmniSearchProgressUpdate();

    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25DC59000, v4, v5, "Received progress update: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_16();
    MEMORY[0x25F8A1970](v11, v12);
    OUTLINED_FUNCTION_16();
    MEMORY[0x25F8A1970](v13, v14);
  }

  LLMSearchClient.encodeProgress(progressUpdate:)();
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void *LLMSearchClient.connection()()
{
  v2 = type metadata accessor for XPCSession.InitializationOptions();
  v3 = OUTLINED_FUNCTION_18_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v5 = (*(v4 + 96))();
  if (v5)
  {
    return v5;
  }

  type metadata accessor for XPCSession();
  v6 = OmniSearchXPCServiceName.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for implicit closure #2 in implicit closure #1 in LLMSearchClient.connection();
  *(v7 + 24) = v0;
  swift_allocObject();
  swift_weakInit();

  static XPCSession.InitializationOptions.none.getter();
  type metadata accessor for OmniSearchProgressUpdate();
  lazy protocol witness table accessor for type OmniSearchProgressUpdate and conformance OmniSearchProgressUpdate(&lazy protocol witness table cache variable for type OmniSearchProgressUpdate and conformance OmniSearchProgressUpdate, MEMORY[0x277D36E28], MEMORY[0x277D36E30]);
  v8 = XPCSession.__allocating_init<A>(machService:targetQueue:options:incomingMessageHandler:cancellationHandler:)();
  if (v1)
  {

    if (one-time initialization token for llmSearch != -1)
    {
      OUTLINED_FUNCTION_7_0();
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logging.llmSearch);
    MEMORY[0x25F8A1890](v1);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v12 = 138412290;
      MEMORY[0x25F8A1890](v1);
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v13;
      *v6 = v13;
      _os_log_impl(&dword_25DC59000, v10, v11, "Failed to connect to listener, error: %@", v12, 0xCu);
      outlined destroy of NSObject?(v6);
      OUTLINED_FUNCTION_16();
      MEMORY[0x25F8A1970]();
      OUTLINED_FUNCTION_16();
      MEMORY[0x25F8A1970]();
    }

    swift_willThrow();
  }

  else
  {
    v6 = v8;

    v14 = *(*v0 + 104);

    v14(v15);
  }

  return v6;
}

uint64_t sub_25DC5E1AC()
{

  v0 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_25DC5E208()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t closure #1 in LLMSearchClient.connection()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCRichError();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for llmSearch != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logging.llmSearch);
  v9 = *(v5 + 16);
  v9(v7, a1, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    lazy protocol witness table accessor for type OmniSearchProgressUpdate and conformance OmniSearchProgressUpdate(&lazy protocol witness table cache variable for type XPCRichError and conformance XPCRichError, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
    swift_allocError();
    v9(v15, v7, v4);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v7, v4);
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_25DC59000, v10, v11, "Session cancelled, error: %@", v13, 0xCu);
    outlined destroy of NSObject?(v14);
    MEMORY[0x25F8A1970](v14, -1, -1);
    MEMORY[0x25F8A1970](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 104))(0);
  }

  return result;
}

Swift::Void __swiftcall LLMSearchClient.resetConnection()()
{
  OUTLINED_FUNCTION_8();
  if ((*(v1 + 96))())
  {
    dispatch thunk of XPCSession.cancel(reason:)();
  }

  v2 = *(*v0 + 104);

  v2(0);
}

uint64_t LLMSearchClient.deinit(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_0(v2 + 16, a2);
  if (*(v2 + 16))
  {

    dispatch thunk of XPCSession.cancel(reason:)();
  }

  return v2;
}

uint64_t LLMSearchClient.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  LLMSearchClient.deinit(a1, a2);
  v2 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x2821FE8D8](v2);
}

uint64_t LLMSearchClient.perform(_:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  v3 = OUTLINED_FUNCTION_20_0();
  return MEMORY[0x2822009F8](v3);
}

uint64_t LLMSearchClient.perform(_:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 168))();
  v0[5] = v2;
  v3 = v2;
  v4 = v0[3];
  v5 = swift_task_alloc();
  v0[6] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = swift_task_alloc();
  v0[7] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0aB8ResponseCSgMd, &_s10OmniSearch0aB8ResponseCSgMR);
  *v6 = v0;
  v6[1] = LLMSearchClient.perform(_:);

  return MEMORY[0x2822008A0](v0 + 2);
}

{
  OUTLINED_FUNCTION_2();
  v2 = *v1;
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v2 + 64) = v0;

  if (v0)
  {
    v6 = AnswerSynthesisClient.perform(_:);
  }

  else
  {

    v6 = AnswerSynthesisClient.perform(_:);
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t closure #1 in LLMSearchClient.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v30 = type metadata accessor for XPCServiceError();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OmniSearchXPCResponse();
  v31 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = type metadata accessor for XPCReceivedMessage();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OmniSearchXPCRequest();
  lazy protocol witness table accessor for type OmniSearchProgressUpdate and conformance OmniSearchProgressUpdate(&lazy protocol witness table cache variable for type OmniSearchXPCRequest and conformance OmniSearchXPCRequest, MEMORY[0x277D36DF8], MEMORY[0x277D36E00]);
  dispatch thunk of XPCSession.sendSync<A>(_:)();
  v28 = v12;
  v29 = v11;
  v16 = v31;
  v15 = v32;
  lazy protocol witness table accessor for type OmniSearchProgressUpdate and conformance OmniSearchProgressUpdate(&lazy protocol witness table cache variable for type OmniSearchXPCResponse and conformance OmniSearchXPCResponse, MEMORY[0x277D36E18], MEMORY[0x277D36E20]);
  XPCReceivedMessage.decode<A>(as:)();
  v17 = v16;
  v18 = *(v16 + 16);
  v19 = v8;
  v18(v8, v10, v5);
  v20 = (*(v17 + 88))(v8, v5);
  if (v20 == *MEMORY[0x277D36E08])
  {
    (*(v17 + 96))(v8, v5);
    v21 = v8;
    v22 = v30;
    (*(v15 + 32))(v4, v21, v30);
    lazy protocol witness table accessor for type OmniSearchProgressUpdate and conformance OmniSearchProgressUpdate(&lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError, MEMORY[0x277D36F10], MEMORY[0x277D36F18]);
    v23 = swift_allocError();
    (*(v15 + 16))(v24, v4, v22);
    v34 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10OmniSearch0aB8ResponseCSgs5Error_pGMd, &_sScCy10OmniSearch0aB8ResponseCSgs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    (*(v15 + 8))(v4, v22);
    (*(v17 + 8))(v10, v5);
    return (*(v28 + 8))(v14, v29);
  }

  else
  {
    v27 = v28;
    v26 = v29;
    if (v20 == *MEMORY[0x277D36E10])
    {
      (*(v17 + 96))(v19, v5);
      v34 = *v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10OmniSearch0aB8ResponseCSgs5Error_pGMd, &_sScCy10OmniSearch0aB8ResponseCSgs5Error_pGMR);
      CheckedContinuation.resume(returning:)();
      (*(v17 + 8))(v10, v5);
      return (*(v27 + 8))(v14, v26);
    }

    else
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t LLMSearchClient.preheat()()
{
  OUTLINED_FUNCTION_2();
  v1[2] = v0;
  v2 = type metadata accessor for OmniSearchXPCRequest();
  OUTLINED_FUNCTION_8_0(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0();

  return MEMORY[0x2822009F8](v4);
}

{
  OUTLINED_FUNCTION_2();
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D36DE8], v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_1(v1);

  return LLMSearchClient.perform(_:)(v2);
}

{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v0;

  if (!v0)
  {

    v8 = OUTLINED_FUNCTION_0();
    v9(v8);

    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_21();

    __asm { BRAA            X1, X16 }
  }

  v4 = OUTLINED_FUNCTION_0();
  v5(v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v6);
}

uint64_t LLMSearchClient.activate()()
{
  OUTLINED_FUNCTION_2();
  v1[2] = v0;
  v2 = type metadata accessor for OmniSearchXPCRequest();
  OUTLINED_FUNCTION_8_0(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0();

  return MEMORY[0x2822009F8](v4);
}

{
  OUTLINED_FUNCTION_2();
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D36DF0], v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_1(v1);

  return LLMSearchClient.perform(_:)(v2);
}

uint64_t LLMSearchClient.deactivate()()
{
  OUTLINED_FUNCTION_2();
  v1[2] = v0;
  v2 = type metadata accessor for OmniSearchXPCRequest();
  OUTLINED_FUNCTION_8_0(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0();

  return MEMORY[0x2822009F8](v4);
}

{
  OUTLINED_FUNCTION_2();
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D36DE0], v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_1(v1);

  return LLMSearchClient.perform(_:)(v2);
}

{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v0;

  if (!v0)
  {

    v8 = OUTLINED_FUNCTION_0();
    v9(v8);

    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_21();

    __asm { BRAA            X1, X16 }
  }

  v4 = OUTLINED_FUNCTION_0();
  v5(v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v6);
}

void LLMSearchClient.search(utterance:searchQuery:structuredSearchQuery:typeIdentifiers:options:)()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8();
  v5 = *(v0 + 224) + **(v0 + 224);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_0(v1);
  *v2 = v3;
  v2[1] = LLMSearchClient.search(utterance:searchQuery:structuredSearchQuery:typeIdentifiers:options:);
  OUTLINED_FUNCTION_0_0();

  __asm { BRAA            X8, X16 }
}

uint64_t LLMSearchClient.search(utterance:searchQuery:structuredSearchQuery:typeIdentifiers:options:)()
{
  OUTLINED_FUNCTION_2();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t LLMSearchClient.search(utterance:searchQuery:structuredSearchQuery:typeIdentifiers:options:progress:)(uint64_t a1)
{
  v2[3] = v5;
  v2[4] = v1;
  v2[2] = a1;
  v3 = OUTLINED_FUNCTION_20_0();
  return MEMORY[0x2822009F8](v3);
}

uint64_t LLMSearchClient.search(utterance:searchQuery:structuredSearchQuery:typeIdentifiers:options:progress:)()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 128);
  v4 = v1;
  v3(v1);
  LLMSearchResponse.init(resultLists:)();
  v3(0);
  OUTLINED_FUNCTION_14();

  return v5();
}

uint64_t LLMSearchClient.search(utterance:searchQuery:structuredSearchQuery:options:)()
{
  OUTLINED_FUNCTION_8();
  v6 = (*(v0 + 216) + **(v0 + 216));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_0(v1);
  *v2 = v3;
  v2[1] = LLMSearchClient.search(utterance:searchQuery:structuredSearchQuery:options:);
  v4 = OUTLINED_FUNCTION_11_0();

  return v6(v4);
}

uint64_t OmniSearchOptions.init(llmSearchOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  OUTLINED_FUNCTION_18_0(v3);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v4);
  v6 = v19 - v5;
  v19[1] = v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);
  OUTLINED_FUNCTION_18_0(v7);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  v11 = type metadata accessor for SearchContext();
  v23 = *(v11 - 8);
  v12 = v23;
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchContext.init()();
  SearchContext.latitude.setter();
  SearchContext.longitude.setter();
  v15 = type metadata accessor for LLMSearchOptions(0);
  v16 = *(a1 + v15[11]);
  v20 = *(a1 + v15[10]);
  v21 = v16;
  v17 = *(v12 + 16);
  v22 = v11;
  v17(v10, v14, v11);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  outlined init with copy of StructuredQueryEntity?(a1 + v15[6], v6, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  v19[0] = *(a1 + v15[8]);
  swift_unknownObjectRetain();

  OmniSearchOptions.init(isFirstToolInvocation:isOnScreenReference:isExpectingAnswer:isSingleStepSearch:searchContext:interactionMode:assistantLocale:clientId:alwaysHydrateDocuments:skipGlobalSearch:skipLocalSearch:progressReporter:)();
  outlined destroy of LLMSearchOptions(a1);
  return (*(v23 + 8))(v14, v22);
}

uint64_t DialogContext.init(llmSearchOptions:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  OUTLINED_FUNCTION_18_0(v2);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  OUTLINED_FUNCTION_18_0(v6);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  v10 = type metadata accessor for LLMSearchOptions(0);
  outlined init with copy of StructuredQueryEntity?(a1 + *(v10 + 24), v9, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  outlined init with copy of StructuredQueryEntity?(a1 + *(v10 + 28), v5, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);

  DialogContext.init(interactionMode:interfaceIdiom:assistantLocale:isQuestionQuery:)();
  return outlined destroy of LLMSearchOptions(a1);
}

uint64_t outlined destroy of LLMSearchOptions(uint64_t a1)
{
  v2 = type metadata accessor for LLMSearchOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25DC5FE3C@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  result = (*(v2 + 96))();
  *a1 = result;
  return result;
}

uint64_t sub_25DC5FE88@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  result = (*(v2 + 120))();
  *a1 = result;
  return result;
}

uint64_t dispatch thunk of LLMSearchClient.preheat()()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_8();
  v13 = v1 + 192;
  v14 = *(v1 + 192) + **(v1 + 192);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v10 = OUTLINED_FUNCTION_13(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, v14);

  return v10();
}

uint64_t dispatch thunk of LLMSearchClient.activate()()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_8();
  v13 = v1 + 200;
  v14 = *(v1 + 200) + **(v1 + 200);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v10 = OUTLINED_FUNCTION_13(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, v14);

  return v10();
}

uint64_t dispatch thunk of LLMSearchClient.deactivate()()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_8();
  v13 = v1 + 208;
  v14 = *(v1 + 208) + **(v1 + 208);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v10 = OUTLINED_FUNCTION_13(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, v14);

  return v10();
}

uint64_t dispatch thunk of LLMSearchClient.search(utterance:searchQuery:structuredSearchQuery:typeIdentifiers:options:)()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8();
  v6 = (*(v0 + 216) + **(v0 + 216));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_0(v1);
  *v2 = v3;
  v2[1] = LLMSearchClient.search(utterance:searchQuery:structuredSearchQuery:options:);
  v4 = OUTLINED_FUNCTION_0_0();

  return v6(v4);
}

uint64_t dispatch thunk of LLMSearchClient.search(utterance:searchQuery:structuredSearchQuery:typeIdentifiers:options:progress:)()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8();
  v6 = (*(v0 + 224) + **(v0 + 224));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_0(v1);
  *v2 = v3;
  v2[1] = LLMSearchClient.search(utterance:searchQuery:structuredSearchQuery:options:);
  v4 = OUTLINED_FUNCTION_0_0();

  return v6(v4);
}

uint64_t dispatch thunk of LLMSearchClient.search(utterance:searchQuery:structuredSearchQuery:options:)()
{
  OUTLINED_FUNCTION_8();
  v6 = (*(v0 + 232) + **(v0 + 232));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_0(v1);
  *v2 = v3;
  v2[1] = LLMSearchClient.search(utterance:searchQuery:structuredSearchQuery:options:);
  v4 = OUTLINED_FUNCTION_11_0();

  return v6(v4);
}

uint64_t lazy protocol witness table accessor for type OmniSearchProgressUpdate and conformance OmniSearchProgressUpdate(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_19_0(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_25(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t LLMSearchOptions.interactionMode.getter()
{
  return LLMSearchOptions.interactionMode.getter();
}

{
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = v3(v2);
  return outlined init with copy of IntentSystemContext.AssistantContext.InteractionMode?(v1 + *(v4 + 24), v0, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
}

uint64_t LLMSearchOptions.interfaceIdiom.getter()
{
  return LLMSearchOptions.interfaceIdiom.getter();
}

{
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = v3(v2);
  return outlined init with copy of IntentSystemContext.AssistantContext.InteractionMode?(v1 + *(v4 + 28), v0, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
}

uint64_t outlined init with copy of IntentSystemContext.AssistantContext.InteractionMode?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_4_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_1();
  v5 = OUTLINED_FUNCTION_7_1();
  v6(v5);
  return v4;
}

uint64_t LLMSearchOptions.searchSources.getter()
{
  v2 = OUTLINED_FUNCTION_6_0();
  result = type metadata accessor for LLMSearchOptions(v2);
  *v0 = *(v1 + *(result + 48));
  return result;
}

uint64_t LLMSearchOptions.Builder.latitude.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t LLMSearchOptions.Builder.longitude.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t type metadata accessor for LLMSearchOptions(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with take of IntentSystemContext.AssistantContext.InteractionMode?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_4_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_1();
  v5 = OUTLINED_FUNCTION_7_1();
  v6(v5);
  return v4;
}

uint64_t LLMSearchOptions.assistantLocale.getter(uint64_t (*a1)(void))
{
  a1(0);

  return OUTLINED_FUNCTION_7_1();
}

uint64_t LLMSearchOptions.Builder.assistantLocale.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_9_0() + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t LLMSearchOptions.clientId.getter(uint64_t (*a1)(void))
{
  a1(0);

  return OUTLINED_FUNCTION_7_1();
}

uint64_t LLMSearchOptions.Builder.clientId.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_9_0() + 36));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t LLMSearchOptions.Builder.isFirstToolInvocation.setter(char a1)
{
  result = type metadata accessor for LLMSearchOptions.Builder(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t LLMSearchOptions.Builder.isSingleStepSearch.setter(char a1)
{
  result = type metadata accessor for LLMSearchOptions.Builder(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t LLMSearchOptions.Builder.searchSources.getter()
{
  v2 = OUTLINED_FUNCTION_6_0();
  result = type metadata accessor for LLMSearchOptions.Builder(v2);
  *v0 = *(v1 + *(result + 48));
  return result;
}

uint64_t LLMSearchOptions.Builder.searchSources.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for LLMSearchOptions.Builder(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t LLMSearchOptions.Builder.progressReporter.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_9_0() + 52));
  result = swift_unknownObjectRelease();
  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t LLMSearchOptions.Builder.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v2 = type metadata accessor for LLMSearchOptions.Builder(0);
  v3 = v2[6];
  v4 = type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
  OUTLINED_FUNCTION_10_1(a1 + v3, v5, v6, v4);
  v7 = v2[7];
  v8 = type metadata accessor for IntentSystemContext.InterfaceIdiom();
  result = OUTLINED_FUNCTION_10_1(a1 + v7, v9, v10, v8);
  v12 = (a1 + v2[8]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v2[9]);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  *(a1 + v2[10]) = 0;
  *(a1 + v2[11]) = 0;
  *(a1 + v2[12]) = 3;
  v14 = (a1 + v2[13]);
  *v14 = 0;
  v14[1] = 0;
  return result;
}

void LLMSearchOptions.Builder.init(latitude:longitude:interactionMode:interfaceIdiom:assistantLocale:clientId:isFirstToolInvocation:isSingleStepSearch:searchSources:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_12_0();
  v22 = OUTLINED_FUNCTION_1_1(v18, v19, v20, v21);
  v23 = type metadata accessor for LLMSearchOptions.Builder(v22);
  outlined init with take of IntentSystemContext.AssistantContext.InteractionMode?(v17, v14 + v23[6], &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  outlined init with take of IntentSystemContext.AssistantContext.InteractionMode?(v16, v14 + v23[7], &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  v24 = (v14 + v23[8]);
  *v24 = v15;
  v24[1] = a8;
  v25 = (v14 + v23[9]);
  *v25 = a9;
  v25[1] = a10;
  OUTLINED_FUNCTION_3_0();
  *v26 = v27;
  v26[1] = a14;
}

uint64_t outlined init with take of IntentSystemContext.AssistantContext.InteractionMode?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_4_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_1();
  v5 = OUTLINED_FUNCTION_7_1();
  v6(v5);
  return v4;
}

void LLMSearchOptions.init(latitude:longitude:interactionMode:assistantLocale:clientId:isFirstToolInvocation:isSingleStepSearch:searchSources:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_12_0();
  v20 = OUTLINED_FUNCTION_1_1(v16, v17, v18, v19);
  v21 = type metadata accessor for LLMSearchOptions(v20);
  outlined init with take of IntentSystemContext.AssistantContext.InteractionMode?(v15, v12 + v21[6], &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  v22 = v21[7];
  v23 = type metadata accessor for IntentSystemContext.InterfaceIdiom();
  OUTLINED_FUNCTION_10_1(v12 + v22, v24, v25, v23);
  v26 = (v12 + v21[8]);
  *v26 = v14;
  v26[1] = v13;
  v27 = (v12 + v21[9]);
  *v27 = a8;
  v27[1] = a9;
  OUTLINED_FUNCTION_3_0();
  *v28 = a12;
  v28[1] = v29;
}

uint64_t LLMSearchOptions.init(_:)(void (*a1)(char *))
{
  v3 = OUTLINED_FUNCTION_6_0();
  v4 = type metadata accessor for LLMSearchOptions.Builder(v3);
  v5 = (v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  *v10 = 0;
  v10[8] = 1;
  *(v10 + 2) = 0;
  v10[24] = 1;
  v11 = v5[8];
  v12 = type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
  OUTLINED_FUNCTION_10_1(&v10[v11], v13, v14, v12);
  v15 = v5[9];
  v16 = type metadata accessor for IntentSystemContext.InterfaceIdiom();
  OUTLINED_FUNCTION_10_1(&v10[v15], v17, v18, v16);
  v19 = &v10[v5[10]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v10[v5[11]];
  *v20 = 0;
  *(v20 + 1) = 0xE000000000000000;
  v10[v5[12]] = 0;
  v10[v5[13]] = 0;
  *&v10[v5[14]] = 3;
  v21 = &v10[v5[15]];
  *v21 = 0;
  *(v21 + 1) = 0;
  a1(v10);
  outlined init with take of LLMSearchOptions.Builder(v10, v8);
  v22 = v8[8];
  *v1 = *v8;
  *(v1 + 8) = v22;
  v23 = v8[24];
  *(v1 + 16) = *(v8 + 2);
  *(v1 + 24) = v23;
  v24 = v5[8];
  v25 = type metadata accessor for LLMSearchOptions(0);
  outlined init with copy of IntentSystemContext.AssistantContext.InteractionMode?(&v8[v24], v1 + v25[6], &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  outlined init with copy of IntentSystemContext.AssistantContext.InteractionMode?(&v8[v5[9]], v1 + v25[7], &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  v26 = &v8[v5[10]];
  v27 = *v26;
  v28 = *(v26 + 1);
  v29 = (v1 + v25[8]);
  *v29 = v27;
  v29[1] = v28;
  v30 = &v8[v5[11]];
  v31 = *v30;
  v32 = *(v30 + 1);
  v33 = (v1 + v25[9]);
  *v33 = v31;
  v33[1] = v32;
  *(v1 + v25[10]) = v8[v5[12]];
  *(v1 + v25[11]) = v8[v5[13]];
  *(v1 + v25[12]) = *&v8[v5[14]];
  v34 = &v8[v5[15]];
  v35 = *v34;
  v36 = *(v34 + 1);
  swift_unknownObjectRetain();

  result = outlined destroy of LLMSearchOptions.Builder(v8);
  v38 = (v1 + v25[13]);
  *v38 = v35;
  v38[1] = v36;
  return result;
}

uint64_t outlined init with take of LLMSearchOptions.Builder(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LLMSearchOptions.Builder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LLMSearchOptions.init(builder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v4;
  v5 = *(a1 + 24);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = v5;
  v6 = type metadata accessor for LLMSearchOptions.Builder(0);
  v7 = v6[6];
  v8 = type metadata accessor for LLMSearchOptions(0);
  outlined init with copy of IntentSystemContext.AssistantContext.InteractionMode?(a1 + v7, a2 + v8[6], &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  outlined init with copy of IntentSystemContext.AssistantContext.InteractionMode?(a1 + v6[7], a2 + v8[7], &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  v9 = (a1 + v6[8]);
  v10 = *v9;
  v11 = v9[1];
  v12 = (a2 + v8[8]);
  *v12 = v10;
  v12[1] = v11;
  v13 = (a1 + v6[9]);
  v14 = *v13;
  v15 = v13[1];
  v16 = (a2 + v8[9]);
  *v16 = v14;
  v16[1] = v15;
  *(a2 + v8[10]) = *(a1 + v6[10]);
  *(a2 + v8[11]) = *(a1 + v6[11]);
  *(a2 + v8[12]) = *(a1 + v6[12]);
  v17 = (a1 + v6[13]);
  v18 = *v17;
  v19 = v17[1];
  swift_unknownObjectRetain();

  result = outlined destroy of LLMSearchOptions.Builder(a1);
  v21 = (a2 + v8[13]);
  *v21 = v18;
  v21[1] = v19;
  return result;
}

uint64_t outlined destroy of LLMSearchOptions.Builder(uint64_t a1)
{
  v2 = type metadata accessor for LLMSearchOptions.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type LLMSearchSources and conformance LLMSearchSources()
{
  result = lazy protocol witness table cache variable for type LLMSearchSources and conformance LLMSearchSources;
  if (!lazy protocol witness table cache variable for type LLMSearchSources and conformance LLMSearchSources)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMSearchSources and conformance LLMSearchSources);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LLMSearchSources and conformance LLMSearchSources;
  if (!lazy protocol witness table cache variable for type LLMSearchSources and conformance LLMSearchSources)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMSearchSources and conformance LLMSearchSources);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LLMSearchSources and conformance LLMSearchSources;
  if (!lazy protocol witness table cache variable for type LLMSearchSources and conformance LLMSearchSources)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMSearchSources and conformance LLMSearchSources);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LLMSearchSources and conformance LLMSearchSources;
  if (!lazy protocol witness table cache variable for type LLMSearchSources and conformance LLMSearchSources)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMSearchSources and conformance LLMSearchSources);
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A16B0](a1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A16B0](a2);
  return Hasher._finalize()();
}

BOOL specialized OptionSet<>.insert(_:)(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t specialized OptionSet<>.remove(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t specialized OptionSet<>.update(with:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

OmniSearchClient::LLMSearchSources protocol witness for RawRepresentable.init(rawValue:) in conformance LLMSearchSources@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = LLMSearchSources.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LLMSearchSources@<X0>(uint64_t *a1@<X8>)
{
  result = LLMSearchSources.rawValue.getter();
  *a1 = result;
  return result;
}

void type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for Double?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for SearchToolProgressReporter?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SearchToolProgressReporter?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10OmniSearch0B20ToolProgressReporter_pMd, &_s10OmniSearch0B20ToolProgressReporter_pMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for SearchToolProgressReporter?);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  OUTLINED_FUNCTION_11_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[6];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  OUTLINED_FUNCTION_11_1();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[9] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  OUTLINED_FUNCTION_11_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[6];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
    OUTLINED_FUNCTION_11_1();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[9] + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[7];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

void type metadata completion function for LLMSearchOptions(uint64_t a1)
{
  type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode?(319, &lazy cache variable for type metadata for IntentSystemContext.AssistantContext.InteractionMode?, MEMORY[0x277CBA0C8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode?(319, &lazy cache variable for type metadata for IntentSystemContext.InterfaceIdiom?, MEMORY[0x277CBA120]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for SearchToolProgressReporter?(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for LLMSearchSources(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LLMSearchSources(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *v4 = a1;
  *(v4 + 8) = a2 & 1;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4 & 1;
  return 0;
}

void OUTLINED_FUNCTION_3_0()
{
  *(v0 + v2[10]) = v4;
  *(v0 + v2[11]) = v3;
  *(v0 + v2[12]) = v1;
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return type metadata accessor for LLMSearchOptions.Builder(0);
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return type metadata accessor for LLMSearchOptions.Builder(0);
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t static LLMSearchResponseMockFactory.makeAudioMock()@<X0>(uint64_t a1@<X8>)
{
  v177 = a1;
  v160 = type metadata accessor for LLMSearchResultList.SnippetType();
  OUTLINED_FUNCTION_0_2();
  v159 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_1(v3);
  v156 = type metadata accessor for LLMSearchResultList.SearchSource();
  OUTLINED_FUNCTION_0_2();
  v154 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_1(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes0B10ToolDialogVSgMd, &_s15OmniSearchTypes0B10ToolDialogVSgMR);
  OUTLINED_FUNCTION_18_0(v7);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_2_1(v9);
  v153 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_2();
  v152 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_1(v12);
  v158 = type metadata accessor for LLMSearchResult();
  OUTLINED_FUNCTION_0_2();
  v157 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_1(v15);
  type metadata accessor for TypedValue();
  OUTLINED_FUNCTION_0_2();
  v178 = v16;
  v179 = v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v18);
  v176 = &v145 - v19;
  v149 = type metadata accessor for TypeIdentifier();
  OUTLINED_FUNCTION_0_2();
  v148 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_1(v22);
  v168 = type metadata accessor for AudioSearchCriteriaEntity();
  OUTLINED_FUNCTION_0_2();
  v169 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_1(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
  v27 = OUTLINED_FUNCTION_18_0(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v29);
  v180 = &v145 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23_MediaPlayer_AppIntents11AudioSearchV6ResultVSgMd, &_s23_MediaPlayer_AppIntents11AudioSearchV6ResultVSgMR);
  OUTLINED_FUNCTION_18_0(v31);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_1(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23_MediaPlayer_AppIntents19AudioSearchCriteriaV9SortOrderOSgMd, &_s23_MediaPlayer_AppIntents19AudioSearchCriteriaV9SortOrderOSgMR);
  OUTLINED_FUNCTION_18_0(v34);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_1(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23_MediaPlayer_AppIntents19AudioSearchCriteriaV13ContentSourceOSgMd, &_s23_MediaPlayer_AppIntents19AudioSearchCriteriaV13ContentSourceOSgMR);
  OUTLINED_FUNCTION_18_0(v37);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_1(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23_MediaPlayer_AppIntents19AudioSearchCriteriaV13ReleasePeriodOSgMd, &_s23_MediaPlayer_AppIntents19AudioSearchCriteriaV13ReleasePeriodOSgMR);
  OUTLINED_FUNCTION_18_0(v40);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_2_1(v42);
  type metadata accessor for AudioSearchCriteria();
  OUTLINED_FUNCTION_0_2();
  v174 = v44;
  v175 = v43;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_2();
  v184 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23_MediaPlayer_AppIntents11AudioSearchV5ErrorOSgMd, &_s23_MediaPlayer_AppIntents11AudioSearchV5ErrorOSgMR);
  OUTLINED_FUNCTION_18_0(v46);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_1(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23_MediaPlayer_AppIntents11AudioSearchV6ResultV4ItemVSgMd, &_s23_MediaPlayer_AppIntents11AudioSearchV6ResultV4ItemVSgMR);
  v50 = OUTLINED_FUNCTION_18_0(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v51);
  v53 = &v145 - v52;
  type metadata accessor for AudioSearch.Result();
  OUTLINED_FUNCTION_0_2();
  v182 = v55;
  v183 = v54;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_1_2();
  v181 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23_MediaPlayer_AppIntents19AudioSearchCriteriaV0A4KindOSgMd, &_s23_MediaPlayer_AppIntents19AudioSearchCriteriaV0A4KindOSgMR);
  OUTLINED_FUNCTION_18_0(v57);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v58);
  v60 = &v145 - v59;
  v61 = type metadata accessor for AudioSearch.Result.Item();
  OUTLINED_FUNCTION_0_2();
  v63 = v62;
  MEMORY[0x28223BE20](v64);
  v66 = &v145 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = "hClient";
  v164 = *MEMORY[0x277D7EEC8];
  v67 = v164;
  v68 = type metadata accessor for AudioSearchCriteria.MediaKind.MusicKind();
  v69 = *(v68 - 8);
  v163 = *(v69 + 104);
  v165 = v69 + 104;
  v163(v60, v67, v68);
  v70 = *MEMORY[0x277D7EED0];
  v71 = type metadata accessor for AudioSearchCriteria.MediaKind();
  v72 = *(*(v71 - 8) + 104);
  v72(v60, v70, v71);
  OUTLINED_FUNCTION_10_2();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v71);
  AudioSearch.Result.Item.init(id:title:artistName:kind:bundleID:assetInfo:recommendationID:requiresSubscription:provider:providerAppName:universalResourceLink:newsTopicID:children:)();
  v172 = v63;
  v76 = *(v63 + 16);
  v171 = v66;
  v76(v53, v66, v61);
  OUTLINED_FUNCTION_10_2();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v61);
  OUTLINED_FUNCTION_7_2();
  v173 = v61;
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v61);
  type metadata accessor for AudioSearch.Error();
  OUTLINED_FUNCTION_7_2();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
  v87 = v181;
  v88 = v180;
  AudioSearch.Result.init(searchResult:fallbackSearchResult:alternativeSearchResults:searchError:)();
  v163(v60, v164, v68);
  v89 = v178;
  v72(v60, v70, v71);
  OUTLINED_FUNCTION_10_2();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v71);
  type metadata accessor for AudioSearchCriteria.ReleasePeriod();
  OUTLINED_FUNCTION_7_2();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
  type metadata accessor for AudioSearchCriteria.ContentSource();
  OUTLINED_FUNCTION_7_2();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
  type metadata accessor for AudioSearchCriteria.SortOrder();
  OUTLINED_FUNCTION_7_2();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
  v105 = v87;
  v106 = v183;
  (*(v182 + 16))(v166, v105, v183);
  OUTLINED_FUNCTION_10_2();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v106);
  AudioSearchCriteria.init(name:albumName:artistNames:kind:genreNames:releasePeriod:source:sortOrder:privateSearchResult:spotlightSearchResults:)();
  OUTLINED_FUNCTION_7_2();
  __swift_storeEnumTagSinglePayload(v110, v111, v112, v89);
  v113 = v167;
  AudioSearchCriteria.convertToEntity()();
  lazy protocol witness table accessor for type AudioSearchCriteriaEntity and conformance AudioSearchCriteriaEntity();
  v114 = v168;
  v115 = SystemIntentValueConvertibleEntity.asValue.getter();
  (*(v169 + 8))(v113, v114);
  v116 = [v115 value];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for LNEntity();
  if (swift_dynamicCast())
  {
    type metadata accessor for TypedValue.EntityValue();
    v117 = swift_allocBox();
    v118 = swift_allocObject();
    v118[2] = 0xD000000000000020;
    v118[3] = 0x800000025DC64C60;
    v118[4] = 0xD000000000000031;
    v118[5] = 0x800000025DC64C90;
    v119 = v147;
    *v147 = v118;
    (*(v148 + 104))(v119, *MEMORY[0x277D72D28], v149);
    TypedValue.EntityValue.init(type:transientAppEntity:)();
    outlined destroy of TypedValue?(v88);
    v120 = v146;
    *v146 = v117;
    v121 = v179;
    (*(v179 + 104))(v120, *MEMORY[0x277D72A38], v89);
    OUTLINED_FUNCTION_10_2();
    __swift_storeEnumTagSinglePayload(v122, v123, v124, v89);
    outlined init with take of TypedValue?(v120, v88);
  }

  else
  {
    v121 = v179;
  }

  v125 = v170;
  outlined init with copy of TypedValue?(v88, v170);
  if (__swift_getEnumTagSinglePayload(v125, 1, v89) == 1)
  {
    outlined destroy of TypedValue?(v125);
    LLMSearchResponse.init(resultLists:)();
  }

  else
  {
    v126 = v176;
    (*(v121 + 32))(v176, v125, v89);
    v127 = v151;
    UUID.init()();
    UUID.uuidString.getter();
    v170 = *(v152 + 8);
    v128 = v153;
    v170(v127, v153);
    (*(v121 + 16))(v150, v126, v89);
    v129 = type metadata accessor for SearchToolDialog();
    v185 = 0u;
    v186 = 0u;
    v187 = 0u;
    v188 = 0;
    OUTLINED_FUNCTION_7_2();
    __swift_storeEnumTagSinglePayload(v130, v131, v132, v129);
    v133 = v155;
    LLMSearchResult.init(identifier:typedValue:standardRepresentation:associatedData:nlDescription:resultMetadata:sfCard:dialog:referenceEntities:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15OmniSearchTypes19LLMSearchResultListVGMd, &_ss23_ContiguousArrayStorageCy15OmniSearchTypes19LLMSearchResultListVGMR);
    type metadata accessor for LLMSearchResultList();
    v134 = swift_allocObject();
    v167 = xmmword_25DC64740;
    *(v134 + 16) = xmmword_25DC64740;
    UUID.init()();
    v169 = UUID.uuidString.getter();
    v168 = v135;
    v170(v127, v128);
    (*(v154 + 104))(v161, *MEMORY[0x277D372F8], v156);
    (*(v159 + 104))(v162, *MEMORY[0x277D37300], v160);
    OUTLINED_FUNCTION_7_2();
    __swift_storeEnumTagSinglePayload(v136, v137, v138, v129);
    Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15OmniSearchTypes15LLMSearchResultVGMd, &_ss23_ContiguousArrayStorageCy15OmniSearchTypes15LLMSearchResultVGMR);
    v139 = v157;
    v140 = (*(v157 + 80) + 32) & ~*(v157 + 80);
    v141 = swift_allocObject();
    *(v141 + 16) = v167;
    v142 = v141 + v140;
    v143 = v158;
    (*(v139 + 16))(v142, v133, v158);
    v88 = v180;
    LLMSearchResultList.init(identifier:source:snippetType:snippet:dialog:resultMetadata:results:isDisambiguationResponse:)();
    LLMSearchResponse.init(resultLists:)();
    (*(v139 + 8))(v133, v143);
    (*(v179 + 8))(v176, v178);
  }

  outlined destroy of TypedValue?(v88);
  (*(v174 + 8))(v184, v175);
  (*(v182 + 8))(v181, v183);
  return (*(v172 + 8))(v171, v173);
}

unint64_t lazy protocol witness table accessor for type AudioSearchCriteriaEntity and conformance AudioSearchCriteriaEntity()
{
  result = lazy protocol witness table cache variable for type AudioSearchCriteriaEntity and conformance AudioSearchCriteriaEntity;
  if (!lazy protocol witness table cache variable for type AudioSearchCriteriaEntity and conformance AudioSearchCriteriaEntity)
  {
    type metadata accessor for AudioSearchCriteriaEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioSearchCriteriaEntity and conformance AudioSearchCriteriaEntity);
  }

  return result;
}

unint64_t type metadata accessor for LNEntity()
{
  result = lazy cache variable for type metadata for LNEntity;
  if (!lazy cache variable for type metadata for LNEntity)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNEntity);
  }

  return result;
}

uint64_t outlined init with copy of TypedValue?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TypedValue?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25DC63570()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t outlined init with take of TypedValue?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Logging.answerSynthesis.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t one-time initialization function for answerSynthesis()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.answerSynthesis);
  __swift_project_value_buffer(v0, static Logging.answerSynthesis);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for llmSearch()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.llmSearch);
  __swift_project_value_buffer(v0, static Logging.llmSearch);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logging.answerSynthesis.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}