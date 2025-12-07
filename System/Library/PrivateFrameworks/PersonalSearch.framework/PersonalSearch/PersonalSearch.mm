uint64_t EchoClient.__allocating_init(clientSessionFactory:)(__int128 *a1)
{
  v2 = swift_allocObject();
  outlined init with take of ClientSessionFactory(a1, v2 + 16);
  return v2;
}

uint64_t outlined init with take of ClientSessionFactory(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t EchoClient.__allocating_init()()
{
  EchoServiceName.getter();
  v2[3] = type metadata accessor for MachClientSessionFactory();
  v2[4] = MEMORY[0x277D3A318];
  __swift_allocate_boxed_opaque_existential_1(v2);
  MachClientSessionFactory.init(serviceName:)();
  return (*(v0 + 88))(v2);
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

uint64_t EchoClient.echo(_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for Logger();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](EchoClient.echo(_:), 0, 0);
}

uint64_t EchoClient.echo(_:)()
{
  __swift_project_boxed_opaque_existential_1((v0[6] + 16), *(v0[6] + 40));
  v1 = ClientSessionFactory.createSession()();
  v0[10] = v1;
  v2 = v1;
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v0[11] = v5;
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;

  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = EchoClient.echo(_:);
  v7 = MEMORY[0x277D837D0];

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x293A5F286F686365, 0xE800000000000000, partial apply for closure #1 in EchoClient.echo(_:), v5, v7);
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = EchoClient.echo(_:);
  }

  else
  {

    v2 = EchoClient.echo(_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[2];
  v2 = v0[3];
  OUTLINED_FUNCTION_0();
  dispatch thunk of XPCSession.cancel(reason:)();

  v3 = v0[1];

  return v3(v1, v2);
}

{

  OUTLINED_FUNCTION_0();
  dispatch thunk of XPCSession.cancel(reason:)();

  v1 = *(v0 + 8);

  return v1();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t closure #1 in EchoClient.echo(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = type metadata accessor for XPCReceivedMessage();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a3;
  v40 = a4;
  dispatch thunk of XPCSession.sendSync<A>(_:)();
  v33 = v11;
  v34 = v14;
  v35 = v15;
  v36 = a1;
  static Logging.client.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_25E466000, v18, v19, "Sent message, waiting for reply...", v20, 2u);
    MEMORY[0x25F8B3A30](v20, -1, -1);
  }

  v21 = *(v37 + 8);
  v21(v13, v38);
  XPCReceivedMessage.decode<A>(as:)();
  v23 = v39;
  v22 = v40;
  v24 = v33;
  static Logging.client.getter();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39 = v28;
    *v27 = 136315138;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, &v39);
    _os_log_impl(&dword_25E466000, v25, v26, "Received response with result: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x25F8B3A30](v28, -1, -1);
    MEMORY[0x25F8B3A30](v27, -1, -1);
  }

  v21(v24, v38);
  v30 = v34;
  v29 = v35;
  v39 = v23;
  v40 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSs5Error_pGMd, &_sScCySSs5Error_pGMR);
  CheckedContinuation.resume(returning:)();
  return (*(v29 + 8))(v17, v30);
}

uint64_t EchoClient.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
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

uint64_t dispatch thunk of EchoClient.echo(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 96) + **(*v2 + 96));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of EchoClient.echo(_:);

  return v8(a1, a2);
}

{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t outlined init with copy of ClientSessionFactory(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t key path setter for PersonalSearchClient.session : PersonalSearchClient(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 104);

  return v2(v3);
}

uint64_t PersonalSearchClient.session.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t PersonalSearchClient.__allocating_init(clientSessionFactory:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = 0;
  outlined init with take of ClientSessionFactory(a1, v2 + 16);
  return v2;
}

uint64_t PersonalSearchClient.init(clientSessionFactory:)(__int128 *a1)
{
  *(v1 + 56) = 0;
  outlined init with take of ClientSessionFactory(a1, v1 + 16);
  return v1;
}

uint64_t PersonalSearchClient.__allocating_init()()
{
  PersonalSearchServiceName.getter();
  v2[3] = type metadata accessor for MachClientSessionFactory();
  v2[4] = MEMORY[0x277D3A318];
  __swift_allocate_boxed_opaque_existential_1(v2);
  MachClientSessionFactory.init(serviceName:)();
  return (*(v0 + 120))(v2);
}

uint64_t PersonalSearchClient.connection()()
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_4();
  v7 = (*(v6 + 96))();
  if (v7)
  {
    return v7;
  }

  v8 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  swift_allocObject();
  swift_weakInit();

  v9 = dispatch thunk of ClientSessionFactory.createSession(cancellationHandler:)();
  if (v1)
  {

    static Logging.client.getter();
    MEMORY[0x25F8B3980](v1);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    MEMORY[0x25F8B3970](v1);
    if (os_log_type_enabled(v10, v11))
    {
      v8 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v8 = 138412290;
      MEMORY[0x25F8B3980](v1);
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&dword_25E466000, v10, v11, "Failed to connect to listener, error: %@", v8, 0xCu);
      outlined destroy of NSObject?(v12);
      MEMORY[0x25F8B3A30](v12, -1, -1);
      MEMORY[0x25F8B3A30](v8, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    swift_willThrow();
  }

  else
  {
    v8 = v9;

    v14 = *(*v0 + 104);

    v14(v15);
  }

  return v8;
}

uint64_t sub_25E4687C4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t closure #1 in PersonalSearchClient.connection()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCRichError();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v24 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logging.client.getter();
  v11 = *(v5 + 16);
  v11(v7, a1, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = a2;
    v15 = v14;
    v21 = swift_slowAlloc();
    *v15 = 138412290;
    lazy protocol witness table accessor for type PersonalSearchRequest and conformance PersonalSearchRequest(&lazy protocol witness table cache variable for type XPCRichError and conformance XPCRichError, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
    swift_allocError();
    v22 = v8;
    v11(v16, v7, v4);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v7, v4);
    *(v15 + 4) = v17;
    v18 = v21;
    *v21 = v17;
    v8 = v22;
    _os_log_impl(&dword_25E466000, v12, v13, "Session cancelled, error: %@", v15, 0xCu);
    outlined destroy of NSObject?(v18);
    MEMORY[0x25F8B3A30](v18, -1, -1);
    MEMORY[0x25F8B3A30](v15, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  (*(v24 + 8))(v10, v8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 104))(0);
  }

  return result;
}

Swift::Void __swiftcall PersonalSearchClient.resetConnection()()
{
  OUTLINED_FUNCTION_4();
  if ((*(v1 + 96))())
  {
    dispatch thunk of XPCSession.cancel(reason:)();
  }

  v2 = *(*v0 + 104);

  v2(0);
}

uint64_t PersonalSearchClient.deinit(uint64_t a1)
{
  OUTLINED_FUNCTION_17(a1);
  if (*(v1 + 56))
  {

    dispatch thunk of XPCSession.cancel(reason:)();
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  return v1;
}

uint64_t PersonalSearchClient.__deallocating_deinit(uint64_t a1)
{
  PersonalSearchClient.deinit(a1);

  return MEMORY[0x2821FE8D8](v1, 64, 7);
}

uint64_t PersonalSearchClient.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  OUTLINED_FUNCTION_8();
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t PersonalSearchClient.perform(_:)()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_4();
  v2 = (*(v1 + 128))();
  *(v0 + 40) = v2;
  v3 = v2;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19PersonalSearchTypes0aB6ResultVGMd, &_sSay19PersonalSearchTypes0aB6ResultVGMR);
  *v6 = v0;
  v6[1] = PersonalSearchClient.perform(_:);
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822008A0](v7, v8, v9, v10, v11, v12, v4, v13);
}

{
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v2 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_3();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_12();

  return v0();
}

uint64_t closure #1 in PersonalSearchClient.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v87 = a4;
  v90 = a1;
  v4 = type metadata accessor for PersonalSearchError();
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v79 = &v74[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v81 = &v74[-v7];
  v8 = type metadata accessor for Logger();
  v88 = *(v8 - 8);
  v89 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v86 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v80 = &v74[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v74[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v74[-v16];
  v18 = type metadata accessor for PersonalSearchResponse();
  v82 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v74[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v23 = &v74[-v22];
  v24 = type metadata accessor for XPCReceivedMessage();
  v85 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v74[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PersonalSearchRequest();
  lazy protocol witness table accessor for type PersonalSearchRequest and conformance PersonalSearchRequest(&lazy protocol witness table cache variable for type PersonalSearchRequest and conformance PersonalSearchRequest, MEMORY[0x277D3A2D0], MEMORY[0x277D3A2D8]);
  dispatch thunk of XPCSession.sendSync<A>(_:)();
  v77 = v17;
  v78 = v24;
  v27 = v83;
  v28 = v84;
  v29 = v82;
  lazy protocol witness table accessor for type PersonalSearchRequest and conformance PersonalSearchRequest(&lazy protocol witness table cache variable for type PersonalSearchResponse and conformance PersonalSearchResponse, MEMORY[0x277D3A2F8], MEMORY[0x277D3A308]);
  XPCReceivedMessage.decode<A>(as:)();
  v30 = v18;
  v31 = v29;
  v32 = v21;
  (*(v29 + 16))(v21, v23, v30);
  v33 = (*(v29 + 88))(v21, v30);
  if (v33 == *MEMORY[0x277D3A2E8])
  {
    v87 = v26;
    (*(v29 + 96))(v21, v30);
    v34 = v30;
    v35 = v81;
    v36 = v28;
    (*(v27 + 32))(v81, v32, v28);
    v37 = v80;
    static Logging.client.getter();
    v38 = *(v27 + 16);
    v39 = v79;
    v86 = (v27 + 16);
    v77 = v38;
    v38(v79, v35, v36);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v91[0] = v76;
      *v42 = 136315138;
      lazy protocol witness table accessor for type PersonalSearchRequest and conformance PersonalSearchRequest(&lazy protocol witness table cache variable for type PersonalSearchError and conformance PersonalSearchError, MEMORY[0x277D3A298], MEMORY[0x277D3A2A0]);
      v75 = v41;
      v43 = Error.localizedDescription.getter();
      v44 = v34;
      v45 = v39;
      v47 = v46;
      v48 = *(v27 + 8);
      v48(v45, v36);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v47, v91);
      v50 = v44;

      *(v42 + 4) = v49;
      _os_log_impl(&dword_25E466000, v40, v75, "Received error: %s", v42, 0xCu);
      v51 = v76;
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      v31 = v29;
      v52 = v48;
      MEMORY[0x25F8B3A30](v51, -1, -1);
      MEMORY[0x25F8B3A30](v42, -1, -1);

      (*(v88 + 8))(v80, v89);
      v53 = v78;
    }

    else
    {

      v52 = *(v27 + 8);
      v52(v39, v36);
      (*(v88 + 8))(v37, v89);
      v53 = v78;
      v50 = v34;
    }

    lazy protocol witness table accessor for type PersonalSearchRequest and conformance PersonalSearchRequest(&lazy protocol witness table cache variable for type PersonalSearchError and conformance PersonalSearchError, MEMORY[0x277D3A298], MEMORY[0x277D3A2A0]);
    v63 = swift_allocError();
    v64 = v81;
    v77(v65, v81, v36);
    v91[0] = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay19PersonalSearchTypes0aB6ResultVGs5Error_pGMd, &_sScCySay19PersonalSearchTypes0aB6ResultVGs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    v52(v64, v36);
    (*(v31 + 8))(v23, v50);
    return (*(v85 + 8))(v87, v53);
  }

  else if (v33 == *MEMORY[0x277D3A2F0])
  {
    v54 = *(v29 + 96);
    v55 = v30;
    v54(v21, v30);
    v56 = *v21;
    if (*v32)
    {
      v57 = v15;
      v58 = v23;

      static Logging.client.getter();

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 134217984;
        v62 = *(v56 + 16);

        *(v61 + 4) = v62;

        _os_log_impl(&dword_25E466000, v59, v60, "Received response with result: %ld", v61, 0xCu);
        MEMORY[0x25F8B3A30](v61, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v73 = v78;
      v71 = v85;
      (*(v88 + 8))(v57, v89);
    }

    else
    {
      v58 = v23;
      v67 = v77;
      static Logging.client.getter();
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.info.getter();
      v70 = os_log_type_enabled(v68, v69);
      v71 = v85;
      if (v70)
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_25E466000, v68, v69, "Received response success", v72, 2u);
        MEMORY[0x25F8B3A30](v72, -1, -1);

        (*(v88 + 8))(v67, v89);
      }

      else
      {

        (*(v88 + 8))(v67, v89);
      }

      v56 = MEMORY[0x277D84F90];
      v73 = v78;
    }

    v91[0] = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay19PersonalSearchTypes0aB6ResultVGs5Error_pGMd, &_sScCySay19PersonalSearchTypes0aB6ResultVGs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
    (*(v31 + 8))(v58, v55);
    return (*(v71 + 8))(v26, v73);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t PersonalSearchClient.preheat()()
{
  OUTLINED_FUNCTION_3();
  v1[2] = v0;
  v2 = type metadata accessor for PersonalSearchRequest();
  v1[3] = v2;
  OUTLINED_FUNCTION_5(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_3();
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D3A2C0], v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_2(v1);

  return PersonalSearchClient.perform(_:)(v2, v3, v4);
}

{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v0;

  if (!v0)
  {

    v10 = OUTLINED_FUNCTION_0_0();
    v11(v10);

    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_18();

    __asm { BRAA            X1, X16 }
  }

  v4 = OUTLINED_FUNCTION_0_0();
  v5(v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t PersonalSearchClient.activate()()
{
  OUTLINED_FUNCTION_3();
  v1[2] = v0;
  v2 = type metadata accessor for PersonalSearchRequest();
  v1[3] = v2;
  OUTLINED_FUNCTION_5(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_3();
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D3A2C8], v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_2(v1);

  return PersonalSearchClient.perform(_:)(v2, v3, v4);
}

uint64_t PersonalSearchClient.deactivate()()
{
  OUTLINED_FUNCTION_3();
  v1[2] = v0;
  v2 = type metadata accessor for PersonalSearchRequest();
  v1[3] = v2;
  OUTLINED_FUNCTION_5(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_3();
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D3A2B0], v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_2(v1);

  return PersonalSearchClient.perform(_:)(v2, v3, v4);
}

{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v0;

  if (!v0)
  {

    v10 = OUTLINED_FUNCTION_0_0();
    v11(v10);

    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_18();

    __asm { BRAA            X1, X16 }
  }

  v4 = OUTLINED_FUNCTION_0_0();
  v5(v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_12();

  return v0();
}

uint64_t PersonalSearchClient.search(_:structuredQuery:typeIdentifiers:options:)()
{
  OUTLINED_FUNCTION_3();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19PersonalSearchTypes0aB12QueryOptionsVSgMd, &_s19PersonalSearchTypes0aB12QueryOptionsVSgMR);
  v1[8] = OUTLINED_FUNCTION_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19PersonalSearchTypes15StructuredQueryVSgMd, &_s19PersonalSearchTypes15StructuredQueryVSgMR);
  v1[9] = OUTLINED_FUNCTION_13();
  v7 = type metadata accessor for PersonalSearchRequest();
  v1[10] = v7;
  OUTLINED_FUNCTION_5(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[6];
  outlined init with copy of StructuredQuery?(v0[4], v0[9], &_s19PersonalSearchTypes15StructuredQueryVSgMd, &_s19PersonalSearchTypes15StructuredQueryVSgMR);
  outlined init with copy of StructuredQuery?(v5, v4, &_s19PersonalSearchTypes0aB12QueryOptionsVSgMd, &_s19PersonalSearchTypes0aB12QueryOptionsVSgMR);

  PersonalSearchQuery.init(searchQuery:structuredQuery:typeIdentifiers:options:)();
  (*(v2 + 104))(v1, *MEMORY[0x277D3A2B8], v3);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = PersonalSearchClient.search(_:structuredQuery:typeIdentifiers:options:);
  v9 = v0[12];

  return PersonalSearchClient.perform(_:)(v9, v7, v8);
}

{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  v3[14] = v0;

  v5 = v2[11];
  v6 = v2[10];
  if (!v0)
  {
    (*(v5 + 8))(v2[12], v6);

    OUTLINED_FUNCTION_18();

    __asm { BRAA            X2, X16 }
  }

  (*(v5 + 8))(v2[12], v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_12();

  return v0();
}

uint64_t outlined init with copy of StructuredQuery?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25E46A738@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_4();
  result = (*(v2 + 96))();
  *a1 = result;
  return result;
}

uint64_t dispatch thunk of PersonalSearchClient.preheat()()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_4();
  v14 = v0 + 152;
  v15 = *(v0 + 152) + **(v0 + 152);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15(v1);
  *v2 = v3;
  v11 = OUTLINED_FUNCTION_11(v2, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);

  return v11();
}

uint64_t dispatch thunk of PersonalSearchClient.activate()()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_4();
  v14 = v0 + 160;
  v15 = *(v0 + 160) + **(v0 + 160);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15(v1);
  *v2 = v3;
  v11 = OUTLINED_FUNCTION_11(v2, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);

  return v11();
}

uint64_t dispatch thunk of PersonalSearchClient.deactivate()()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_4();
  v14 = v0 + 168;
  v15 = *(v0 + 168) + **(v0 + 168);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15(v1);
  *v2 = v3;
  v11 = OUTLINED_FUNCTION_11(v2, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);

  return v11();
}

{
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  OUTLINED_FUNCTION_12();

  return v3();
}

uint64_t dispatch thunk of PersonalSearchClient.search(_:structuredQuery:typeIdentifiers:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_4();
  v15 = (*(v10 + 176) + **(v10 + 176));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_15(v11);
  *v12 = v13;
  v12[1] = dispatch thunk of PersonalSearchClient.search(_:structuredQuery:typeIdentifiers:options:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PersonalSearchClient.search(_:structuredQuery:typeIdentifiers:options:)()
{
  OUTLINED_FUNCTION_3();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_6();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_8();
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

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v10;
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type PersonalSearchRequest and conformance PersonalSearchRequest(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_13()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1, ...)
{

  return swift_beginAccess();
}