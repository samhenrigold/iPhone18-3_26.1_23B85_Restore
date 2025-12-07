uint64_t one-time initialization function for kLocalSearchManagerTimeout(uint64_t a1)
{
  result = AFIsInternalInstall();
  v2 = 5.0;
  if (result)
  {
    v2 = 30.0;
  }

  static LocalQueryTask.kLocalSearchManagerTimeout = *&v2;
  return result;
}

id LocalQueryTask.init(queryTask:startTime:diagnostics:)(uint64_t a1, void *a2)
{
  __swift_mutable_project_boxed_opaque_existential_1(a2, a2[3]);
  OUTLINED_FUNCTION_21_28();
  MEMORY[0x28223BE20](v3);
  v5 = OUTLINED_FUNCTION_13_27(v4, v9);
  v6(v5);
  v7 = OUTLINED_FUNCTION_19_30();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v7;
}

void LocalQueryTask.resumeContinuation()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_lock);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t closure #1 in LocalQueryTask.resumeContinuation()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v14[-v10];
  v12 = OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_continuation;
  swift_beginAccess();
  outlined init with copy of CheckedContinuation<(), Never>?(a1 + v12, v11, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2))
  {
    outlined destroy of (offset: Int, element: SearchResult)(v11, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  }

  else
  {
    (*(v3 + 16))(v5, v11, v2);
    outlined destroy of (offset: Int, element: SearchResult)(v11, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
    CheckedContinuation.resume(returning:)();
    (*(v3 + 8))(v5, v2);
  }

  __swift_storeEnumTagSinglePayload(v8, 1, 1, v2);
  swift_beginAccess();
  outlined assign with take of CheckedContinuation<(), Never>?(v8, a1 + v12);
  return swift_endAccess();
}

uint64_t LocalQueryTask.run()()
{
  OUTLINED_FUNCTION_48();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = swift_getObjectType();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v3);
}

{
  OUTLINED_FUNCTION_48();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = LocalQueryTask.run();
  v3 = *(v0 + 16);

  return MEMORY[0x282200740](v3, &type metadata for SpotlightResult, &type metadata for SpotlightResult, 0, 0, &async function pointer to partial apply for closure #1 in LocalQueryTask.run(), v1, &type metadata for SpotlightResult);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    OUTLINED_FUNCTION_127();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();

  return v0();
}

uint64_t closure #1 in LocalQueryTask.run()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in LocalQueryTask.run());
}

uint64_t closure #1 in LocalQueryTask.run()()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_16_32();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v3;
  v5 = v3;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF10OmniSearch15SpotlightResultV_s5Error_pTg5(v1, &async function pointer to partial apply for closure #1 in closure #1 in LocalQueryTask.run(), v4);
  v6 = OUTLINED_FUNCTION_34_5();
  outlined destroy of (offset: Int, element: SearchResult)(v6, v7, &_sScPSgMR);
  OUTLINED_FUNCTION_16_32();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v8[5] = v2;
  v9 = v5;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF10OmniSearch15SpotlightResultV_s5Error_pTg5(v1, &async function pointer to partial apply for closure #2 in closure #1 in LocalQueryTask.run(), v8);
  v10 = OUTLINED_FUNCTION_34_5();
  outlined destroy of (offset: Int, element: SearchResult)(v10, v11, &_sScPSgMR);
  OUTLINED_FUNCTION_16_32();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v2;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF10OmniSearch15SpotlightResultV_s5Error_pTg5(v1, &async function pointer to partial apply for closure #3 in closure #1 in LocalQueryTask.run(), v12);
  v13 = OUTLINED_FUNCTION_34_5();
  outlined destroy of (offset: Int, element: SearchResult)(v13, v14, &_sScPSgMR);
  v15 = swift_task_alloc();
  v0[12] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgy10OmniSearch15SpotlightResultVs5Error_pGMd, &_sScgy10OmniSearch15SpotlightResultVs5Error_pGMR);
  *v15 = v0;
  OUTLINED_FUNCTION_7_40();

  return MEMORY[0x2822004C0](v0 + 2);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v2 == 255)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v20, static Logging.search);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_11(v22))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_9_11(&dword_25D85C000, v23, v24, "LocalSearchManager.search - Unexpected internal state. All tasks completed without yielding results. Defaulting to empty results.");
      OUTLINED_FUNCTION_42_0();
    }

    v25 = *(v0 + 72);
    v26 = *(v0 + 56);

    v27 = *(v25 + OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_ecrResult);
    *v26 = MEMORY[0x277D84F90];
    v26[1] = v27;

    goto LABEL_17;
  }

  v3 = *(v0 + 24);
  if ((v2 & 1) == 0)
  {
    v28 = *(v0 + 56);
    v29 = **(v0 + 64);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x25F89FB00](v29, &type metadata for SpotlightResult, v30, MEMORY[0x277D84950]);
    *v28 = v1;
    v28[1] = v3;
LABEL_17:

    OUTLINED_FUNCTION_127();

    return v33();
  }

  *(v0 + 40) = v1;
  v4 = OUTLINED_FUNCTION_34_5();
  outlined copy of Result<SpotlightResult, Error>(v4, v5, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();
  *(v0 + 48) = v1;
  v6 = OUTLINED_FUNCTION_34_5();
  outlined copy of Result<SpotlightResult, Error>(v6, v7, 1);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_willThrow();
    v31 = OUTLINED_FUNCTION_34_5();
    outlined consume of Result<SpotlightResult, Error>?(v31, v32, v2);
    goto LABEL_17;
  }

  v8 = OUTLINED_FUNCTION_34_5();
  outlined consume of Result<SpotlightResult, Error>?(v8, v9, v2);
  if (*(v0 + 33) == 1)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v10, static Logging.search);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_172();
      *v13 = 0;
      _os_log_impl(&dword_25D85C000, v11, v12, "LocalQueryTask.run - Timed out waiting on update", v13, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v14 = *(v0 + 72);

    v15 = *(v14 + OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_queryTask);
    [v15 setDelegate_];
    [v15 cancel];
    LocalQueryTask.resumeContinuation()();
    v16 = lazy protocol witness table accessor for type LocalSearchManager.LocalSearchManagerError and conformance LocalSearchManager.LocalSearchManagerError();
    OUTLINED_FUNCTION_5_12(&type metadata for LocalSearchManager.LocalSearchManagerError, v16);
    *v17 = 0;
    swift_willThrow();
    v18 = OUTLINED_FUNCTION_34_5();
    outlined consume of Result<SpotlightResult, Error>?(v18, v19, v2);

    goto LABEL_17;
  }

  v35 = OUTLINED_FUNCTION_34_5();
  outlined consume of Result<SpotlightResult, Error>?(v35, v36, v2);

  v37 = swift_task_alloc();
  *(v0 + 96) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgy10OmniSearch15SpotlightResultVs5Error_pGMd, &_sScgy10OmniSearch15SpotlightResultVs5Error_pGMR);
  *v37 = v0;
  OUTLINED_FUNCTION_7_40();

  return MEMORY[0x2822004C0](v0 + 16);
}

{
  return MEMORY[0x2821FEBD8](*(v0 + 104), "_Concurrency/arm64e-apple-ios.private.swiftinterface", 52, 1, 3126);
}

uint64_t closure #1 in closure #1 in LocalQueryTask.run()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in LocalQueryTask.run());
}

uint64_t closure #1 in closure #1 in LocalQueryTask.run()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48();
  v21 = v20[6];
  v22 = swift_task_alloc();
  v20[7] = v22;
  *(v22 + 16) = v21;
  v23 = swift_task_alloc();
  v20[8] = v23;
  *v23 = v20;
  v23[1] = closure #1 in closure #1 in LocalQueryTask.run();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822007B8](v24, v25, v26, v27, 0xE500000000000000, v28, v22, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t closure #1 in closure #1 in LocalQueryTask.run()()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v3);
}

{
  OUTLINED_FUNCTION_72();
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v1, static Logging.search);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_11(v3))
  {
    *OUTLINED_FUNCTION_172() = 0;
    OUTLINED_FUNCTION_9_11(&dword_25D85C000, v4, v5, "LocalQueryTask.run - Success!");
    OUTLINED_FUNCTION_42_0();
  }

  v7 = v0[5];
  v6 = v0[6];

  v8 = OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_sections;
  swift_beginAccess();
  v9 = *(v6 + v8);
  v10 = *(v6 + OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_ecrResult);
  *v7 = v9;
  v7[1] = v10;
  v12 = v0[1];

  return v12();
}

id closure #1 in closure #1 in closure #1 in LocalQueryTask.run()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_continuation;
  swift_beginAccess();
  outlined assign with take of CheckedContinuation<(), Never>?(v6, a2 + v8);
  swift_endAccess();
  v9 = *(a2 + OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_queryTask);
  [v9 setDelegate_];
  [v9 setForceStableResults_];
  [v9 setMaxTopHitAppResults_];
  return [v9 start];
}

uint64_t closure #2 in closure #1 in LocalQueryTask.run()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in closure #1 in LocalQueryTask.run());
}

uint64_t closure #2 in closure #1 in LocalQueryTask.run()()
{
  OUTLINED_FUNCTION_78();
  static Duration.seconds(_:)();
  static Clock<>.continuous.getter();
  v1 = OUTLINED_FUNCTION_28_23();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = closure #2 in closure #1 in LocalQueryTask.run();
  v2 = OUTLINED_FUNCTION_15_31();

  return v3(v2);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = v4[5];
  v6 = v4[4];
  v7 = v4[3];
  v8 = *v1;
  OUTLINED_FUNCTION_11();
  *v9 = v8;
  *(v10 + 56) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11);
}

{
  OUTLINED_FUNCTION_78();
  v1 = static Task<>.isCancelled.getter();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    LocalQueryTask.submitTailspinRequest(queryStartTime:)(v1, *(*(v0 + 16) + OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_startTime));
    v2 = 0;
  }

  v3 = lazy protocol witness table accessor for type LocalQueryTask.LocalSearchTimingErrorSignaling and conformance LocalQueryTask.LocalSearchTimingErrorSignaling();
  OUTLINED_FUNCTION_5_12(&unk_286F820D8, v3);
  *v4 = v2;
  swift_willThrow();

  OUTLINED_FUNCTION_127();

  return v5();
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();

  return v0();
}

uint64_t closure #3 in closure #1 in LocalQueryTask.run()()
{
  v1 = type metadata accessor for ContinuousClock();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #3 in closure #1 in LocalQueryTask.run());
}

{
  OUTLINED_FUNCTION_78();
  if (one-time initialization token for kLocalSearchManagerTimeout != -1)
  {
    swift_once();
  }

  static Duration.seconds(_:)();
  static Clock<>.continuous.getter();
  v1 = OUTLINED_FUNCTION_28_23();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = closure #3 in closure #1 in LocalQueryTask.run();
  v2 = OUTLINED_FUNCTION_15_31();

  return v3(v2);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = v4[4];
  v6 = v4[3];
  v7 = v4[2];
  v8 = *v1;
  OUTLINED_FUNCTION_11();
  *v9 = v8;
  *(v10 + 48) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11);
}

{
  OUTLINED_FUNCTION_78();
  v0 = static Task<>.isCancelled.getter();
  v1 = lazy protocol witness table accessor for type LocalQueryTask.LocalSearchTimingErrorSignaling and conformance LocalQueryTask.LocalSearchTimingErrorSignaling();
  OUTLINED_FUNCTION_5_12(&unk_286F820D8, v1);
  if (v0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  *v2 = v3;
  swift_willThrow();

  OUTLINED_FUNCTION_127();

  return v4();
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();

  return v0();
}

void LocalQueryTask.submitTailspinRequest(queryStartTime:)(uint64_t a1, double a2)
{
  v3 = v2;
  v54[33] = *MEMORY[0x277D85DE8];
  if (AFIsInternalInstall())
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logging.search);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_172();
      *v8 = 0;
      _os_log_impl(&dword_25D85C000, v6, v7, "LocalQueryTask.submitTailspinRequest - emitting request to capture tailspin", v8, 2u);
      OUTLINED_FUNCTION_37_0();
    }

    Current = CFAbsoluteTimeGetCurrent();
    v10 = Current - a2 + 2.0;
    if (COERCE_UNSIGNED_INT64(fabs(v10)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v10 > -1.0)
    {
      if (v10 < 1.84467441e19)
      {
        if (is_mul_ok(v10, 0x3E8uLL))
        {
          v11 = 1000 * v10;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_25DBC8400;
          v13 = MEMORY[0x277D837D0];
          OUTLINED_FUNCTION_22_23(inited, v14, v15, v16, v17, v18, v19, v20, v50);
          v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
          v22 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
          *(inited + 96) = v22;
          *(inited + 72) = v21;
          v30 = OUTLINED_FUNCTION_22_23(v22, v23, v24, v25, v26, v27, v28, v29, v51);
          *(inited + 168) = v13;
          *(inited + 144) = 0xD000000000000014;
          *(inited + 152) = 0x800000025DBF6940;
          v54[0] = 0x656D6954776F6ELL;
          v54[1] = 0xE700000000000000;
          OUTLINED_FUNCTION_22_23(v30, v31, v32, v33, v34, v35, v36, v37, v52);
          v38 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          *(inited + 240) = v22;
          *(inited + 216) = v38;
          v39 = Dictionary.init(dictionaryLiteral:)();
          v40 = *(v3 + OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_diagnostics + 24);
          v41 = *(v3 + OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_diagnostics + 32);
          __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_diagnostics), v40);
          v54[0] = 0;
          LOBYTE(v53) = 1;
          LOBYTE(v41) = (*(v41 + 8))(0xD000000000000013, 0x800000025DBF7210, 0xD000000000000010, 0x800000025DBF7230, 0xD000000000000020, 0x800000025DBF7250, v39, 1, v53, 0, 0, v54, v40, v41);

          v42 = v54[0];
          v43 = Logger.logObject.getter();
          if (v41)
          {
            v44 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = OUTLINED_FUNCTION_172();
              *v45 = 0;
              _os_log_impl(&dword_25D85C000, v43, v44, "LocalQueryTask.submitTailspinRequest - tailspin request emitted successfully", v45, 2u);
LABEL_15:
              OUTLINED_FUNCTION_42_0();
            }
          }

          else
          {
            v46 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v43, v46))
            {
              v47 = swift_slowAlloc();
              v48 = swift_slowAlloc();
              v54[0] = v48;
              *v47 = 136315138;
              v42 = v42;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7NSErrorCSgMd, &_sSo7NSErrorCSgMR);
              String.init<A>(describing:)();
              v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v47 + 4) = v49;
              _os_log_impl(&dword_25D85C000, v43, v46, "LocalQueryTask.submitTailspinRequest - tailspin request failed. Error: %s", v47, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v48);
              OUTLINED_FUNCTION_37_0();
              goto LABEL_15;
            }
          }

          return;
        }

LABEL_21:
        __break(1u);
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_20;
  }
}

uint64_t LocalQueryTask.resultsDidBecomeInvalid(_:)()
{
  v1 = OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_sections;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x277D84F90];
}

void LocalQueryTask.didReceive(_:)(void *a1)
{
  v2 = v1;
  v4 = [a1 state];
  if ([a1 kind] > 1)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v18, static Logging.search);
    v19 = a1;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 136315138;
      [v19 kind];
      type metadata accessor for SPResponseKind(0);
      String.init<A>(describing:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v14 + 4) = v20;
      v17 = "LocalQueryTask received response of unknown kind: %s";
      goto LABEL_10;
    }
  }

  else
  {
    v5 = [a1 resultSections];
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFResultSection, 0x277D4C588);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    specialized Array.append<A>(contentsOf:)(v6);
    swift_endAccess();
    v7 = [a1 ecrGroundedPersons];
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SPECRGroundedPerson, 0x277D65858);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = decodeECRMapping(from:)(v8);

    *&v2[OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_ecrResult] = v9;

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v10, static Logging.search);
    v11 = v2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 136642819;

      Dictionary.description.getter();

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v14 + 4) = v16;
      v17 = "Spotlight ECR output is: %{sensitive}s)";
LABEL_10:
      _os_log_impl(&dword_25D85C000, v12, v13, v17, v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_37_0();
    }
  }

  if (v4 == 4)
  {
    LocalQueryTask.resumeContinuation()();
  }
}

id LocalQueryTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocalQueryTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalQueryTask(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:));
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = specialized Clock.sleep(for:tolerance:);
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[8];
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;
  *(v3 + 120) = v0;

  v6(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v11);
  }

  else
  {

    OUTLINED_FUNCTION_127();

    return v12();
  }
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();

  return v0();
}

uint64_t outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

id specialized LocalQueryTask.init(queryTask:startTime:diagnostics:)(uint64_t a1, char *a2, double a3)
{
  v15[3] = &type metadata for DiagnoseticImp;
  v15[4] = &protocol witness table for DiagnoseticImp;
  v6 = OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_ecrResult;
  v7 = MEMORY[0x277D84F90];
  *&a2[v6] = Dictionary.init(dictionaryLiteral:)();
  v8 = OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_continuation;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  __swift_storeEnumTagSinglePayload(&a2[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *&a2[v10] = v11;
  *&a2[OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_sections] = v7;
  *&a2[OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_queryTask] = a1;
  *&a2[OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_startTime] = a3;
  outlined init with copy of ChatMessageRecord(v15, &a2[OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_diagnostics]);
  v14.receiver = a2;
  v14.super_class = type metadata accessor for LocalQueryTask(0);
  v12 = objc_msgSendSuper2(&v14, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  return v12;
}

id specialized LocalQueryTask.init(queryTask:startTime:diagnostics:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, double a6)
{
  v21[3] = a4;
  v21[4] = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v21);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a4);
  v12 = OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_ecrResult;
  v13 = MEMORY[0x277D84F90];
  *&a3[v12] = Dictionary.init(dictionaryLiteral:)();
  v14 = OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_continuation;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  __swift_storeEnumTagSinglePayload(&a3[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *&a3[v16] = v17;
  *&a3[OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_sections] = v13;
  *&a3[OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_queryTask] = a1;
  *&a3[OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_startTime] = a6;
  outlined init with copy of ChatMessageRecord(v21, &a3[OBJC_IVAR____TtC10OmniSearch14LocalQueryTask_diagnostics]);
  v20.receiver = a3;
  v20.super_class = type metadata accessor for LocalQueryTask(0);
  v18 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return v18;
}

uint64_t specialized LocalSearchManager.init(infinitePatience:session:)(char a1, void *a2, uint64_t a3)
{
  *(a3 + 16) = a2;
  swift_unknownObjectRetain();
  [a2 setInfinitePatience_];
  v6 = objc_opt_self();
  v7 = [v6 sharedResourcesManager];
  v8 = MEMORY[0x25F89F4C0](0x6867696C746F7053, 0xE900000000000074);
  [v7 loadAllParametersForClient_];

  v9 = [v6 sharedResourcesManager];
  v10 = MEMORY[0x25F89F4C0](0xD000000000000012, 0x800000025DBF70F0);
  [v9 loadAllParametersForClient_];

  v11 = [v6 sharedResourcesManager];
  v12 = MEMORY[0x25F89F4C0](1818845517, 0xE400000000000000);
  [v11 loadAllParametersForClient_];

  return a3;
}

{
  *(a3 + 16) = a2;
  swift_unknownObjectRetain();
  [a2 setInfinitePatience_];
  v6 = objc_opt_self();
  v7 = [v6 sharedResourcesManager];
  v8 = MEMORY[0x25F89F4C0](0x6867696C746F7053, 0xE900000000000074);
  [v7 loadAllParametersForClient_];

  v9 = [v6 sharedResourcesManager];
  v10 = MEMORY[0x25F89F4C0](0xD000000000000012, 0x800000025DBF70F0);
  [v9 loadAllParametersForClient_];

  v11 = [v6 sharedResourcesManager];
  v12 = MEMORY[0x25F89F4C0](1818845517, 0xE400000000000000);
  [v11 loadAllParametersForClient_];
  swift_unknownObjectRelease();

  return a3;
}

unint64_t lazy protocol witness table accessor for type LocalSearchManager.LocalSearchManagerError and conformance LocalSearchManager.LocalSearchManagerError()
{
  result = lazy protocol witness table cache variable for type LocalSearchManager.LocalSearchManagerError and conformance LocalSearchManager.LocalSearchManagerError;
  if (!lazy protocol witness table cache variable for type LocalSearchManager.LocalSearchManagerError and conformance LocalSearchManager.LocalSearchManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalSearchManager.LocalSearchManagerError and conformance LocalSearchManager.LocalSearchManagerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalSearchManager.LocalSearchManagerError and conformance LocalSearchManager.LocalSearchManagerError;
  if (!lazy protocol witness table cache variable for type LocalSearchManager.LocalSearchManagerError and conformance LocalSearchManager.LocalSearchManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalSearchManager.LocalSearchManagerError and conformance LocalSearchManager.LocalSearchManagerError);
  }

  return result;
}

uint64_t type metadata accessor for LocalQueryTask(uint64_t a1)
{
  result = type metadata singleton initialization cache for LocalQueryTask;
  if (!type metadata singleton initialization cache for LocalQueryTask)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in LocalQueryTask.run()()
{
  OUTLINED_FUNCTION_78();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_23(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_246(v4);

  return closure #1 in LocalQueryTask.run()(v6, v7, v2, v1);
}

uint64_t dispatch thunk of LocalSearchManager.search(with:)()
{
  OUTLINED_FUNCTION_72();
  v6 = (*(*v0 + 120) + **(*v0 + 120));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_23(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_246(v2);

  return v6(v4);
}

_BYTE *storeEnumTagSinglePayload for LocalSearchManager.LocalSearchManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for LocalQueryTask(uint64_t a1)
{
  type metadata accessor for CheckedContinuation<(), Never>?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of LocalQueryTask.run()()
{
  OUTLINED_FUNCTION_78();
  v2 = v1;
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0xE0);
  v8 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_23(v4);
  *v5 = v6;
  v5[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v8(v2);
}

void type metadata accessor for CheckedContinuation<(), Never>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CheckedContinuation<(), Never>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CheckedContinuation<(), Never>?);
    }
  }
}

uint64_t outlined assign with take of CheckedContinuation<(), Never>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in LocalQueryTask.run()()
{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_23(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_41(v3);

  return closure #1 in closure #1 in LocalQueryTask.run()(v5, v6, v7, v1);
}

uint64_t objectdestroyTm_0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t partial apply for closure #2 in closure #1 in LocalQueryTask.run()()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_23(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_41(v3);

  return closure #2 in closure #1 in LocalQueryTask.run()(v5, v6, v7, v1);
}

uint64_t partial apply for closure #3 in closure #1 in LocalQueryTask.run()()
{
  OUTLINED_FUNCTION_78();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_41(v1);

  return closure #3 in closure #1 in LocalQueryTask.run()();
}

id outlined copy of Result<SpotlightResult, Error>(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
  }
}

void outlined consume of Result<SpotlightResult, Error>?(void *result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    outlined consume of Result<SpotlightResult, Error>(result, a2, a3 & 1);
  }
}

void outlined consume of Result<SpotlightResult, Error>(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type LocalQueryTask.LocalSearchTimingErrorSignaling and conformance LocalQueryTask.LocalSearchTimingErrorSignaling()
{
  result = lazy protocol witness table cache variable for type LocalQueryTask.LocalSearchTimingErrorSignaling and conformance LocalQueryTask.LocalSearchTimingErrorSignaling;
  if (!lazy protocol witness table cache variable for type LocalQueryTask.LocalSearchTimingErrorSignaling and conformance LocalQueryTask.LocalSearchTimingErrorSignaling)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalQueryTask.LocalSearchTimingErrorSignaling and conformance LocalQueryTask.LocalSearchTimingErrorSignaling);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalQueryTask.LocalSearchTimingErrorSignaling and conformance LocalQueryTask.LocalSearchTimingErrorSignaling;
  if (!lazy protocol witness table cache variable for type LocalQueryTask.LocalSearchTimingErrorSignaling and conformance LocalQueryTask.LocalSearchTimingErrorSignaling)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalQueryTask.LocalSearchTimingErrorSignaling and conformance LocalQueryTask.LocalSearchTimingErrorSignaling);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of CheckedContinuation<(), Never>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for LocalQueryTask.LocalSearchTimingErrorSignaling(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_12_35(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_32()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

id OUTLINED_FUNCTION_19_30()
{

  return specialized LocalQueryTask.init(queryTask:startTime:diagnostics:)(v1, v4, v0, v2, v3, v6);
}

uint64_t OUTLINED_FUNCTION_22_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return AnyHashable.init<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_28_23()
{

  return swift_task_alloc();
}

uint64_t *LocalSearchService.dateFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for dateFormatter != -1)
  {
    OUTLINED_FUNCTION_10_36(&one-time initialization token for dateFormatter);
  }

  return &static LocalSearchService.dateFormatter;
}

uint64_t *LocalSearchService.iWorkBundleIds.unsafeMutableAddressor()
{
  if (one-time initialization token for iWorkBundleIds != -1)
  {
    OUTLINED_FUNCTION_9_39(&one-time initialization token for iWorkBundleIds);
  }

  return &static LocalSearchService.iWorkBundleIds;
}

uint64_t static LocalSearchService.iWorkBundleIds.getter()
{
  if (one-time initialization token for iWorkBundleIds != -1)
  {
    OUTLINED_FUNCTION_9_39(&one-time initialization token for iWorkBundleIds);
  }
}

void one-time initialization function for dateFormatter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  outlined bridged method (mbnn) of @objc NSDateFormatter.dateFormat.setter(0x2D4D4D2D79797979, 0xEA00000000006464, v0);
  static LocalSearchService.dateFormatter = v0;
}

id static LocalSearchService.dateFormatter.getter()
{
  if (one-time initialization token for dateFormatter != -1)
  {
    OUTLINED_FUNCTION_10_36(&one-time initialization token for dateFormatter);
  }

  v1 = static LocalSearchService.dateFormatter;

  return v1;
}

uint64_t LocalSearchService.init(maxItemCount:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for FeatureFlagService();
  v6 = swift_allocObject();
  v7 = type metadata accessor for LocalIndexClient();
  result = LocalIndexClient.__allocating_init()(v7);
  *a3 = 1;
  *(a3 + 8) = 1;
  *(a3 + 16) = result;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2 & 1;
  *(a3 + 40) = v6;
  return result;
}

uint64_t LocalSearchService.init(maxItemCount:featureFlagService:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 1;
  *(a4 + 8) = 1;
  v8 = type metadata accessor for LocalIndexClient();
  result = LocalIndexClient.__allocating_init()(v8);
  *(a4 + 16) = result;
  *(a4 + 24) = a1;
  *(a4 + 32) = a2 & 1;
  *(a4 + 40) = a3;
  return result;
}

uint64_t LocalSearchService.search(text:)()
{
  OUTLINED_FUNCTION_48();
  *(v1 + 128) = v2;
  *(v1 + 136) = v3;
  *(v1 + 120) = v4;
  v5 = type metadata accessor for OSSignpostID();
  *(v1 + 144) = v5;
  OUTLINED_FUNCTION_21(v5);
  *(v1 + 152) = v6;
  *(v1 + 160) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *v0;
  *(v1 + 168) = v7;
  *(v1 + 176) = v8;
  *(v1 + 240) = *(v0 + 8);
  *(v1 + 184) = *(v0 + 1);
  *(v1 + 241) = *(v0 + 32);
  *(v1 + 200) = v0[5];
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9);
}

{
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v1 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = OUTLINED_FUNCTION_172();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v2, v3, v5, "LocalSearchService.search", "", v4, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v6 = *(v0 + 241);
  v7 = *(v0 + 192);
  v20 = *(v0 + 240);
  v8 = *(v0 + 176);
  v21 = *(v0 + 184);
  v22 = *(v0 + 200);
  v9 = *(v0 + 160);
  v10 = *(v0 + 168);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  v13 = *(v0 + 136);
  v19 = *(v0 + 128);

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v0 + 208) = OUTLINED_FUNCTION_38_6();
  (*(v12 + 8))(v10, v11);
  type metadata accessor for LatencyProfiler();
  swift_allocObject();
  *(v0 + 216) = LatencyProfiler.init(_:)(0xD000000000000010, 0x800000025DBF72D0);
  *(v0 + 72) = v8;
  v14 = 20;
  *(v0 + 80) = v20;
  if (!v6)
  {
    v14 = v7;
  }

  *(v0 + 88) = v21;
  *(v0 + 96) = v7;
  *(v0 + 104) = v6;
  *(v0 + 112) = v22;
  *(v0 + 16) = v19;
  *(v0 + 24) = v13;
  *(v0 + 32) = v14;
  v15 = MEMORY[0x277D84F90];
  *(v0 + 40) = 0;
  *(v0 + 48) = v15;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;

  v16 = swift_task_alloc();
  *(v0 + 224) = v16;
  *v16 = v0;
  v16[1] = LocalSearchService.search(text:);
  v17 = *(v0 + 120);

  return LocalSearchService.search(spotlightRequest:)(v17, (v0 + 16));
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{

  OUTLINED_FUNCTION_133();
  (*(v0 + 152))();

  OUTLINED_FUNCTION_4_45(v1, &one-time initialization token for searchSignposter, static Logging.searchSignposter, "LocalSearchService.search");

  OUTLINED_FUNCTION_127();

  return v2();
}

{

  OUTLINED_FUNCTION_133();
  (*(v0 + 152))();

  OUTLINED_FUNCTION_4_45(v1, &one-time initialization token for searchSignposter, static Logging.searchSignposter, "LocalSearchService.search");

  OUTLINED_FUNCTION_127();

  return v2();
}

uint64_t LocalSearchService.search(spotlightRequest:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(v3 + 72) = a1;
  *(v3 + 80) = v4;
  *(v3 + 88) = v5;
  *(v3 + 96) = *(a2 + 1);
  *(v3 + 112) = a2[4];
  *(v3 + 120) = *(a2 + 5);
  *(v3 + 136) = *(v2 + 16);
  return MEMORY[0x2822009F8](LocalSearchService.search(spotlightRequest:));
}

uint64_t LocalSearchService.search(spotlightRequest:)()
{
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
  }

  v1 = *(v0 + 104);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logging.search);

  v3 = v1;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v15 = v5;
    v6 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v7 = 136315138;

    v8 = v3;

    SpotlightIndexRequest.description.getter();

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v7 + 4) = v9;
    _os_log_impl(&dword_25D85C000, v4, v15, "Start Spotlight search with request: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  v10 = *(v0 + 112);
  v11 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 24) = v11;
  *(v0 + 32) = *(v0 + 96);
  *(v0 + 48) = v10;
  *(v0 + 56) = *(v0 + 120);
  v12 = swift_task_alloc();
  *(v0 + 144) = v12;
  *v12 = v0;
  v12[1] = LocalSearchService.search(spotlightRequest:);
  v13 = *(v0 + 72);

  return LocalIndexClient.search(spotlightRequest:)(v13, (v0 + 16));
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    OUTLINED_FUNCTION_127();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_127();
  return v0();
}

uint64_t LocalSearchService.search(query:sources:allowedTypes:searchOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 144) = a2;
  *(v6 + 152) = a4;
  *(v6 + 136) = a1;
  v8 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  *(v6 + 160) = v8;
  OUTLINED_FUNCTION_21(v8);
  *(v6 + 168) = v9;
  *(v6 + 176) = OUTLINED_FUNCTION_199();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef9SpotlightE13RetrievalTypeOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef9SpotlightE13RetrievalTypeOSgMR);
  *(v6 + 184) = OUTLINED_FUNCTION_199();
  v10 = type metadata accessor for SearchResult(0);
  *(v6 + 192) = v10;
  OUTLINED_FUNCTION_21(v10);
  *(v6 + 200) = v11;
  *(v6 + 208) = OUTLINED_FUNCTION_199();
  v12 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult();
  *(v6 + 216) = v12;
  OUTLINED_FUNCTION_21(v12);
  *(v6 + 224) = v13;
  *(v6 + 232) = OUTLINED_FUNCTION_199();
  v14 = type metadata accessor for OSSignpostID();
  *(v6 + 240) = v14;
  OUTLINED_FUNCTION_21(v14);
  *(v6 + 248) = v15;
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = *(a5 + 48);
  v16 = *(a5 + 72);
  *(v6 + 288) = *(a5 + 64);
  *(v6 + 296) = v16;
  *(v6 + 408) = *(a5 + 98);
  v17 = *v5;
  *(v6 + 409) = *(v5 + 8);
  v18 = v5[2];
  v19 = v5[3];
  *(v6 + 304) = v17;
  *(v6 + 312) = v18;
  *(v6 + 410) = *(v5 + 32);
  v20 = v5[5];
  *(v6 + 320) = v19;
  *(v6 + 328) = v20;
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v21);
}

uint64_t LocalSearchService.search(query:sources:allowedTypes:searchOptions:)()
{
  v44 = v0;
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    OUTLINED_FUNCTION_8_38(&one-time initialization token for searchComponentSignposter);
  }

  v1 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v1, static Logging.searchComponentSignposter);
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  __swift_project_value_buffer(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = OUTLINED_FUNCTION_172();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v2, v3, v5, "LocalSearchService.search", "", v4, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  v8 = *(v0 + 240);
  v9 = *(v0 + 248);

  (*(v9 + 16))(v6, v7, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v0 + 336) = OUTLINED_FUNCTION_38_6();
  (*(v9 + 8))(v7, v8);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 410);
  v12 = *(v0 + 320);
  v11 = *(v0 + 328);
  v13 = *(v0 + 409);
  v15 = *(v0 + 304);
  v14 = *(v0 + 312);
  v30 = *(v0 + 408);
  v28 = *(v0 + 272);
  v29 = *(v0 + 280);
  v16 = *(v0 + 144);
  v27 = *(v0 + 152);
  *(v0 + 344) = static MetricsLogger.shared;
  OUTLINED_FUNCTION_133();
  (*(v17 + 168))();
  type metadata accessor for LatencyProfiler();
  swift_allocObject();
  *(v0 + 352) = LatencyProfiler.init(_:)(0xD00000000000001DLL, 0x800000025DBF7310);
  v38 = v15;
  v39 = v13;
  v40 = v14;
  v41 = v12;
  v42 = v10;
  v43 = v11;
  LocalSearchService.constructSpotlightIndexRequest(query:allowedTypes:isExpectingAnswer:locale:)(v16, v27, v30, v28, v29, &v31);
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v21 = v34;
  *(v0 + 360) = v32;
  *(v0 + 368) = v21;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  *(v0 + 376) = v35;
  *(v0 + 384) = v24;
  *(v0 + 72) = v15;
  *(v0 + 80) = v13;
  *(v0 + 88) = v14;
  *(v0 + 96) = v12;
  *(v0 + 104) = v10;
  *(v0 + 112) = v11;
  *(v0 + 16) = v18;
  *(v0 + 24) = v19;
  *(v0 + 32) = v20;
  *(v0 + 40) = v21;
  *(v0 + 48) = v22;
  *(v0 + 56) = v23;
  *(v0 + 64) = v24;
  v25 = swift_task_alloc();
  *(v0 + 392) = v25;
  *v25 = v0;
  v25[1] = LocalSearchService.search(query:sources:allowedTypes:searchOptions:);

  return LocalSearchService.search(spotlightRequest:)(v0 + 120, (v0 + 16));
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 400) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  v1 = v0[15];
  v40 = v0[16];
  v2 = *(v1 + 16);
  v41 = v1;
  if (v2)
  {
    v3 = v0[28];
    v4 = v0[25];
    v43 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v42 = *(v4 + 72);
    do
    {
      _s10OmniSearch0B6ResultVWOcTm_10(v5, v0[26], type metadata accessor for SearchResult);
      IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.init()();
      v6 = SpotlightRankingItem.retrievalType.getter();
      if ((v7 & 1) == 0)
      {
        v8 = v0[23];
        MEMORY[0x25F89E9E0](v6);
        MEMORY[0x25F89E2F0](v8);
      }

      v9 = v0[26];
      SpotlightRankingItem.bundleId.getter();
      IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.bundleId.setter();
      v10 = SpotlightRankingItem.likelihood.getter();
      v11 = OUTLINED_FUNCTION_0_66(v10);
      MEMORY[0x25F89E2C0](v11);
      v12 = SpotlightRankingItem.topicality.getter();
      v13 = OUTLINED_FUNCTION_0_66(v12);
      MEMORY[0x25F89E2D0](v13);
      v14 = SpotlightRankingItem.pommesL1Score.getter();
      v15 = OUTLINED_FUNCTION_0_66(v14);
      MEMORY[0x25F89E2E0](v15);
      v16 = SpotlightRankingItem.pommesCalibratedL1Score.getter();
      v17 = OUTLINED_FUNCTION_0_66(v16);
      MEMORY[0x25F89E320](v17);
      v18 = SpotlightRankingItem.embeddingSimilarity.getter();
      v19 = OUTLINED_FUNCTION_0_66(v18);
      MEMORY[0x25F89E310](v19);
      matched = SpotlightRankingItem.keywordMatchScore.getter();
      v21 = OUTLINED_FUNCTION_0_66(matched);
      MEMORY[0x25F89E300](v21);
      v22 = SpotlightRankingItem.freshness.getter();
      v23 = OUTLINED_FUNCTION_0_66(v22);
      MEMORY[0x25F89E340](v23);
      _s10OmniSearch0B6ResultVWOhTm_8(v9, type metadata accessor for SearchResult);
      v25 = *(v43 + 16);
      v24 = *(v43 + 24);
      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1);
      }

      v26 = v0[29];
      v27 = v0[27];
      *(v43 + 16) = v25 + 1;
      (*(v3 + 32))(v43 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v25, v26, v27);
      v5 += v42;
      --v2;
    }

    while (v2);
  }

  v28 = v0[46];
  v29 = v0[44];
  v30 = v0[42];
  v31 = v0[17];
  OUTLINED_FUNCTION_133();
  (*(v32 + 176))();

  *v31 = v41;
  v31[1] = v40;
  (*(*v29 + 152))(v33);

  OUTLINED_FUNCTION_12_4();
  $defer #1 () in LocalSearchService.search(text:)(v30, v34, v35, v36, v37);

  OUTLINED_FUNCTION_127();

  return v38();
}

{
  v1 = v0[50];
  v2 = v0[46];
  v3 = v0[43];
  v4 = v0[42];
  v16 = v0[37];
  v5 = v0[22];
  v6 = v0[21];
  v14 = v0[36];
  v15 = v0[20];

  OUTLINED_FUNCTION_133();
  (*(v7 + 152))();

  OUTLINED_FUNCTION_12_4();
  $defer #1 () in LocalSearchService.search(text:)(v4, v8, v9, v10, v11);

  (*(*v3 + 320))(v1);
  (*(*v3 + 184))(v14, v16, v5);
  (*(v6 + 8))(v5, v15);
  swift_willThrow();

  OUTLINED_FUNCTION_127();

  return v12();
}

uint64_t LocalSearchService.constructSpotlightIndexRequest(query:allowedTypes:isExpectingAnswer:locale:)@<X0>(Swift::String *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v65 = a4;
  v66 = a5;
  v59 = a3;
  countAndFlagsBits = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v64 = &v56 - v10;
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v11);
  v57 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v58 = &v56 - v14;
  v15 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  v63 = *(v6 + 24);
  v62 = *(v6 + 32);
  v60 = *(v6 + 40);
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    OUTLINED_FUNCTION_8_38(&one-time initialization token for searchComponentSignposter);
  }

  v24 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v24, static Logging.searchComponentSignposter);
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  __swift_project_value_buffer(v24, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v25 = OSSignposter.logHandle.getter();
  v26 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v27 = OUTLINED_FUNCTION_172();
    *v27 = 0;
    v28 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v25, v26, v28, "SearchTool.ConstructSpotlightIndexRequest", "", v27, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  (*(v17 + 16))(v20, v23, v15);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v29 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v17 + 8))(v23, v15);
  v30 = static LocalSearchService.normalizeTypeIdentifiers(identifiers:)(countAndFlagsBits);
  v31 = type metadata accessor for UserQuery(0);
  v32 = UtteranceNormalizer.normalize(_:preserveCase:)(a1[1], 1);
  countAndFlagsBits = v32._countAndFlagsBits;
  object = v32._object;
  v34 = a1[2]._object;
  if (v34)
  {
    v56 = v30;
    v35 = v29;
    v36 = a1[2]._countAndFlagsBits;
    OUTLINED_FUNCTION_133();
    v38 = *(v37 + 80);

    if (v38(30))
    {

      countAndFlagsBits = v36;
      object = v34;
      v29 = v35;
    }

    else
    {

      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logging.search);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.info.getter();
      v29 = v35;
      if (os_log_type_enabled(v40, v41))
      {
        v42 = OUTLINED_FUNCTION_172();
        *v42 = 0;
        _os_log_impl(&dword_25D85C000, v40, v41, "OmniSearch/simplifiedQuery FF is not enabled, ignoring simplified query", v42, 2u);
        OUTLINED_FUNCTION_42_0();
      }
    }

    v30 = v56;
  }

  v43 = v64;
  outlined init with copy of StructuredQueryEntity?(a1 + *(v31 + 28), v64);
  if (__swift_getEnumTagSinglePayload(v43, 1, Entity) == 1)
  {
    outlined destroy of StructuredQueryEntity?(v43);
    v44 = 0;
    v45 = countAndFlagsBits;
  }

  else
  {
    v46 = v58;
    outlined init with take of StructuredQueryEntity(v43, v58);
    type metadata accessor for SPQUParse();
    v47 = v57;
    _s10OmniSearch0B6ResultVWOcTm_10(v46, v57, type metadata accessor for StructuredQueryEntity);

    v45 = countAndFlagsBits;
    v44 = SPQUParse.init(from:query:isExpectingAnswer:)(v47, countAndFlagsBits, object, v59 & 1);
    _s10OmniSearch0B6ResultVWOhTm_8(v46, type metadata accessor for StructuredQueryEntity);
  }

  v48 = 20;
  if (!v62)
  {
    v48 = v63;
  }

  *a6 = v45;
  a6[1] = object;
  a6[2] = v48;
  a6[3] = v44;
  v50 = v65;
  v49 = v66;
  a6[4] = v30;
  a6[5] = v50;
  a6[6] = v49;

  OUTLINED_FUNCTION_12_4();
  $defer #1 () in LocalSearchService.search(text:)(v29, v51, v52, v53, v54);
}

Swift::String __swiftcall LocalSearchService.toString(documents:)(Swift::OpaquePointer documents)
{
  v1 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_36();
  if (one-time initialization token for iso8601PrettyPrinted != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
  lazy protocol witness table accessor for type [SearchResult] and conformance <A> [A]();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;
  static String.Encoding.utf8.getter();
  v5 = String.init(data:encoding:)();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    outlined consume of Data._Representation(v2, v4);
  }

  else
  {
    outlined consume of Data._Representation(v2, v4);
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = v7;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t $defer #1 () in LocalSearchService.search(text:)(uint64_t a1, void *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v7 = type metadata accessor for OSSignpostError();
  OUTLINED_FUNCTION_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  v13 = v12 - v11;
  v14 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_36();
  v20 = v19 - v18;
  if (*a2 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v21, a3);
  v22 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v23 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v9 + 88))(v13, v7) == *MEMORY[0x277D85B00])
    {
      v24 = "[Error] Interval already ended";
    }

    else
    {
      (*(v9 + 8))(v13, v7);
      v24 = "";
    }

    v25 = OUTLINED_FUNCTION_172();
    *v25 = 0;
    v26 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v22, v23, v26, a4, v24, v25, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  return (*(v16 + 8))(v20, v14);
}

uint64_t static LocalSearchService.normalizeTypeIdentifiers(identifiers:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v3;
  }

  while (1)
  {
    v16 = *v2;

    closure #1 in static LocalSearchService.normalizeTypeIdentifiers(identifiers:)(&v16, &v15);

    v4 = v15;
    v5 = *(v15 + 16);
    v6 = *(v3 + 16);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v7 > *(v3 + 24) >> 1)
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1, v3);
      v3 = v10;
    }

    if (*(v4 + 16))
    {
      if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      if (v5)
      {
        v11 = *(v3 + 16);
        v12 = __OFADD__(v11, v5);
        v13 = v11 + v5;
        if (v12)
        {
          goto LABEL_20;
        }

        *(v3 + 16) = v13;
      }
    }

    else
    {

      if (v5)
      {
        goto LABEL_18;
      }
    }

    ++v2;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t closure #1 in static LocalSearchService.normalizeTypeIdentifiers(identifiers:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (one-time initialization token for iWorkBundleIds != -1)
  {
    swift_once();
  }

  v5 = static LocalSearchService.iWorkBundleIds;
  EntityProperty.wrappedValue.getter();
  LOBYTE(v5) = specialized Set.contains(_:)(v11, v12, v5);

  if ((v5 & 1) == 0)
  {
    EntityProperty.wrappedValue.getter();
    if (v11 == 0xD000000000000016 && 0x800000025DBF7360 == v12)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    EntityProperty.wrappedValue.getter();
    if (v12)
    {

LABEL_15:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E20EntityTypeIdentifierVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E20EntityTypeIdentifierVGMR);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_25DBC8180;
      *(v8 + 32) = v4;
      *(v8 + 40) = v3;
      *a2 = v8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E20EntityTypeIdentifierVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E20EntityTypeIdentifierVGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25DBC9D00;
  EntityProperty.wrappedValue.getter();
  SearchEntityTypeIdentifier.init(bundleId:typeName:)((v10 + 32));
  EntityProperty.wrappedValue.getter();
  result = SearchEntityTypeIdentifier.init(bundleId:typeName:)((v10 + 48));
  *a2 = v10;
  return result;
}

uint64_t protocol witness for SearchService.search(query:sources:allowedTypes:searchOptions:) in conformance LocalSearchService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return LocalSearchService.search(query:sources:allowedTypes:searchOptions:)(a1, a2, v10, a4, a5);
}

Swift::Int LocalSearchService.ParseError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocalSearchService.ParseError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  LocalSearchService.ParseError.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t outlined init with copy of StructuredQueryEntity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of StructuredQueryEntity?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for SPQUParse()
{
  result = lazy cache variable for type metadata for SPQUParse;
  if (!lazy cache variable for type metadata for SPQUParse)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SPQUParse);
  }

  return result;
}

uint64_t _s10OmniSearch0B6ResultVWOcTm_10(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t _s10OmniSearch0B6ResultVWOhTm_8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type LocalSearchService.ParseError and conformance LocalSearchService.ParseError()
{
  result = lazy protocol witness table cache variable for type LocalSearchService.ParseError and conformance LocalSearchService.ParseError;
  if (!lazy protocol witness table cache variable for type LocalSearchService.ParseError and conformance LocalSearchService.ParseError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalSearchService.ParseError and conformance LocalSearchService.ParseError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocalSearchService(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for LocalSearchService(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocalSearchService.ParseError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_4_45(uint64_t a1, void *a2, uint64_t a3, const char *a4)
{

  return $defer #1 () in LocalSearchService.search(text:)(v4, a2, a3, a4, one-time initialization function for searchSignposter);
}

uint64_t OUTLINED_FUNCTION_8_38(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_39(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_36(uint64_t a1)
{

  return swift_once();
}

uint64_t PreExtractedCard.Keys.llmPrompt.getter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for NSUserDefaults();
  v9 = static NSUserDefaults.llmPromptLineBreak.getter(v4, v5, v6, v7, v8);
  v14 = static NSUserDefaults.llmPromptLineBreak.getter(v9, v10, v11, v12, v13);
  v16 = v15;

  MEMORY[0x25F89F6C0](v14, v16);

  v17 = a2(a1);
  v19 = v18;

  MEMORY[0x25F89F6C0](v17, v19);

  MEMORY[0x25F89F6C0](58, 0xE100000000000000);

  return v9;
}

void PartialExtractedAttributes.init(item:bundleID:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v149 = a2;
  v157 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes13ShippingOrderVSgMd, &_s15OmniSearchTypes13ShippingOrderVSgMR);
  v8 = OUTLINED_FUNCTION_114(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_36_21();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_2();
  v158 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
  v12 = OUTLINED_FUNCTION_114(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_109();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_2();
  v162 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
  v19 = OUTLINED_FUNCTION_114(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_109();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_2();
  v161 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
  v26 = OUTLINED_FUNCTION_114(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_39_0();
  v150 = v27;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_2();
  v160 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
  v31 = OUTLINED_FUNCTION_114(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_39_0();
  v156 = v32;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_14_2();
  v159 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
  v36 = OUTLINED_FUNCTION_114(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_39_0();
  v155 = v37;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_14_2();
  v40 = v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
  v42 = OUTLINED_FUNCTION_114(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_39_0();
  v154 = v43;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v44);
  v46 = &v139 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
  v48 = OUTLINED_FUNCTION_114(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_39_0();
  v153 = v49;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v50);
  v52 = &v139 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
  v54 = OUTLINED_FUNCTION_114(v53);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_39_0();
  v152 = v55;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v56);
  v58 = &v139 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
  v60 = OUTLINED_FUNCTION_114(v59);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_39_0();
  v151 = v61;
  OUTLINED_FUNCTION_174();
  *&v63 = MEMORY[0x28223BE20](v62).n128_u64[0];
  v65 = &v139 - v64;
  v66 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.detectedEventTypes.getter([a1 attributeSet]);
  if (v66)
  {
    if (*(v66 + 16))
    {
      v147 = v4;
      v148 = v66;
      outlined bridged method (mbgnn) of @objc CSSearchableItem.bundleID.setter(v149, a3, a1);

      v67 = [a1 uniqueIdentifier];
      v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v144 = v68;

      v69 = type metadata accessor for RentalCarReservation();
      OUTLINED_FUNCTION_10_24(v65, v70, v71, v69);
      v72 = type metadata accessor for TicketedTransportation();
      OUTLINED_FUNCTION_10_24(v58, v73, v74, v72);
      v75 = type metadata accessor for TicketedShow();
      OUTLINED_FUNCTION_10_24(v52, v76, v77, v75);
      v78 = type metadata accessor for Appointment();
      OUTLINED_FUNCTION_10_24(v46, v79, v80, v78);
      v81 = type metadata accessor for Party();
      OUTLINED_FUNCTION_10_24(v40, v82, v83, v81);
      v84 = type metadata accessor for Trip();
      OUTLINED_FUNCTION_10_24(v159, v85, v86, v84);
      v87 = type metadata accessor for FlightReservation();
      OUTLINED_FUNCTION_10_24(v160, v88, v89, v87);
      v90 = type metadata accessor for HotelReservation();
      OUTLINED_FUNCTION_10_24(v161, v91, v92, v90);
      v93 = type metadata accessor for RestaurantReservation();
      OUTLINED_FUNCTION_10_24(v162, v94, v95, v93);
      type metadata accessor for ShippingOrder();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
      }

      v149 = v22;
      v100 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v100, static Logging.search);
      v101 = v148;

      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.info.getter();

      v104 = os_log_type_enabled(v102, v103);
      v146 = v15;
      v142 = a1;
      if (v104)
      {
        v141 = v103;
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v163 = v106;
        *v105 = 136315138;
        MEMORY[0x25F89F8A0](v101, MEMORY[0x277D837D0]);
        v140 = v102;
        v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v105 + 4) = v107;
        v108 = v140;
        _os_log_impl(&dword_25D85C000, v140, v141, "PartialExtractedAttributes: processing detectedEventTypes: %s", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v106);
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {
      }

      v122 = *(v101 + 16);
      v123 = v142;
      for (i = (v101 + 40); v122; --v122)
      {
        v125 = *i;
        v163 = *(i - 1);
        v164 = v125;

        v138 = v158;
        v137 = v162;
        v136 = v161;
        v135 = v160;
        OUTLINED_FUNCTION_44_22();
        closure #1 in PartialExtractedAttributes.init(item:bundleID:)(v126, v127, v128, v129, v52, v46, v40, v159, v135, v136, v137, v138);

        i += 2;
      }

      outlined init with copy of RentalCarReservation?(v65, v151, &_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
      outlined init with copy of RentalCarReservation?(v58, v152, &_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
      outlined init with copy of RentalCarReservation?(v52, v153, &_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
      outlined init with copy of RentalCarReservation?(v46, v154, &_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
      v143 = v40;
      outlined init with copy of RentalCarReservation?(v40, v155, &_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
      outlined init with copy of RentalCarReservation?(v159, v156, &_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
      outlined init with copy of RentalCarReservation?(v160, v150, &_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
      outlined init with copy of RentalCarReservation?(v161, v149, &_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
      outlined init with copy of RentalCarReservation?(v162, v146, &_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
      v130 = v158;
      outlined init with copy of RentalCarReservation?(v158, v147, &_s15OmniSearchTypes13ShippingOrderVSgMd, &_s15OmniSearchTypes13ShippingOrderVSgMR);
      PartialExtractedAttributes.init(id:rentalCarReservation:ticketedTransportation:ticketedShow:appointment:party:trip:flightReservation:hotelReservation:restaurantReservation:shippingOrder:)();

      outlined destroy of ResourceBundle?(v130, &_s15OmniSearchTypes13ShippingOrderVSgMd, &_s15OmniSearchTypes13ShippingOrderVSgMR);
      outlined destroy of ResourceBundle?(v162, &_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
      outlined destroy of ResourceBundle?(v161, &_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
      outlined destroy of ResourceBundle?(v160, &_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
      outlined destroy of ResourceBundle?(v159, &_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
      outlined destroy of ResourceBundle?(v143, &_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
      outlined destroy of ResourceBundle?(v46, &_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
      outlined destroy of ResourceBundle?(v52, &_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
      outlined destroy of ResourceBundle?(v58, &_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
      outlined destroy of ResourceBundle?(v65, &_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
      type metadata accessor for PartialExtractedAttributes();
      OUTLINED_FUNCTION_48_13();
      OUTLINED_FUNCTION_44_0();
      __swift_storeEnumTagSinglePayload(v131, v132, v133, v134);
      OUTLINED_FUNCTION_148();
      return;
    }
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
  }

  v109 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v109, static Logging.search);
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_105_6(v111))
  {
    v112 = OUTLINED_FUNCTION_172();
    *v112 = 0;
    OUTLINED_FUNCTION_25_25();
    _os_log_impl(v113, v114, v115, v116, v112, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  type metadata accessor for PartialExtractedAttributes();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_148();

  __swift_storeEnumTagSinglePayload(v117, v118, v119, v120);
}

void closure #1 in PartialExtractedAttributes.init(item:bundleID:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v134 = a3;
  v128 = a8;
  v129 = a7;
  v130 = a6;
  v131 = a5;
  v132 = a4;
  v133 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes13ShippingOrderVSgMd, &_s15OmniSearchTypes13ShippingOrderVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v122 = &v120 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v123 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v120 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v125 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v124 = &v120 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
  MEMORY[0x28223BE20](v24 - 8);
  v126 = &v120 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
  MEMORY[0x28223BE20](v26 - 8);
  v127 = &v120 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v120 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v120 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v120 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v120 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v120 - v41;
  v43 = *a1;
  v44 = a1[1];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v43 && v45 == v44)
  {

    goto LABEL_57;
  }

  v121 = v19;
  v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v47)
  {
LABEL_57:
    RentalCarReservation.init(item:checkEventType:)(v134, 0);
    outlined assign with take of ShippingOrder?(v42, v133, &_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    __swift_project_value_buffer(v80, static Logging.search);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v81, v82))
    {
      goto LABEL_62;
    }

    v83 = swift_slowAlloc();
    *v83 = 0;
    v84 = "PartialExtractedAttributes: created RentalCarReservation";
    goto LABEL_61;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v43 && v48 == v44)
  {

    goto LABEL_64;
  }

  v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v50)
  {
LABEL_64:
    TicketedTransportation.init(item:checkEventType:)(v134, 0);
    outlined assign with take of ShippingOrder?(v39, v132, &_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    __swift_project_value_buffer(v85, static Logging.search);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v81, v82))
    {
      goto LABEL_62;
    }

    v83 = swift_slowAlloc();
    *v83 = 0;
    v84 = "PartialExtractedAttributes: created TicketedTransportation";
    goto LABEL_61;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v43 && v51 == v44)
  {

    goto LABEL_69;
  }

  v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v53)
  {
LABEL_69:
    TicketedShow.init(item:checkEventType:)(v134, 0);
    outlined assign with take of ShippingOrder?(v36, v131, &_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    __swift_project_value_buffer(v86, static Logging.search);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v81, v82))
    {
      goto LABEL_62;
    }

    v83 = swift_slowAlloc();
    *v83 = 0;
    v84 = "PartialExtractedAttributes: created TicketedShow";
    goto LABEL_61;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v43 && v54 == v44)
  {

    goto LABEL_74;
  }

  v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v56)
  {
LABEL_74:
    Appointment.init(item:checkEventType:)(v134, 0);
    outlined assign with take of ShippingOrder?(v33, v130, &_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    __swift_project_value_buffer(v87, static Logging.search);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v81, v82))
    {
      goto LABEL_62;
    }

    v83 = swift_slowAlloc();
    *v83 = 0;
    v84 = "PartialExtractedAttributes: created Appointment";
    goto LABEL_61;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v43 && v57 == v44)
  {

    goto LABEL_79;
  }

  v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v59)
  {
LABEL_79:
    Party.init(item:checkEventType:)(v134, 0);
    outlined assign with take of ShippingOrder?(v30, v129, &_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    __swift_project_value_buffer(v88, static Logging.search);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v81, v82))
    {
      goto LABEL_62;
    }

    v83 = swift_slowAlloc();
    *v83 = 0;
    v84 = "PartialExtractedAttributes: created Party";
    goto LABEL_61;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v43 && v60 == v44)
  {

    goto LABEL_84;
  }

  v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v62)
  {
LABEL_84:
    v89 = v134;
    v90 = v127;
    Trip.init(item:checkEventType:)(v89, 0);
    outlined assign with take of ShippingOrder?(v90, v128, &_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    __swift_project_value_buffer(v91, static Logging.search);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v81, v82))
    {
      goto LABEL_62;
    }

    v83 = swift_slowAlloc();
    *v83 = 0;
    v84 = "PartialExtractedAttributes: created Trip";
    goto LABEL_61;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v43 && v63 == v44)
  {

    goto LABEL_89;
  }

  v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v65)
  {
LABEL_89:
    v92 = v134;
    v93 = v126;
    FlightReservation.init(item:)(v92, v126);
    outlined assign with take of ShippingOrder?(v93, a9, &_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v94 = type metadata accessor for Logger();
    __swift_project_value_buffer(v94, static Logging.search);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v81, v82))
    {
      goto LABEL_62;
    }

    v83 = swift_slowAlloc();
    *v83 = 0;
    v84 = "PartialExtractedAttributes: created FlightReservation";
    goto LABEL_61;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v43 && v66 == v44)
  {

    goto LABEL_94;
  }

  v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v68)
  {
LABEL_94:
    type metadata accessor for FeatureFlagService();
    v95 = swift_allocObject();
    v96 = v134;
    v97 = v125;
    HotelReservation.init(item:answerAttributes:requireDates:featureFlagService:)(v96, MEMORY[0x277D84F90], 0, v95, v98, v99, v100, v101, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
    v102 = type metadata accessor for HotelReservation();
    if (__swift_getEnumTagSinglePayload(v97, 1, v102))
    {
      outlined destroy of ResourceBundle?(v125, &_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
      v103 = 1;
    }

    else
    {
      (*(*(v102 - 8) + 32))(v124, v125, v102);
      v103 = 0;
    }

    v104 = v124;
    __swift_storeEnumTagSinglePayload(v124, v103, 1, v102);
    outlined assign with take of ShippingOrder?(v104, a10, &_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v105 = type metadata accessor for Logger();
    __swift_project_value_buffer(v105, static Logging.search);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v81, v82))
    {
      goto LABEL_62;
    }

    v83 = swift_slowAlloc();
    *v83 = 0;
    v84 = "PartialExtractedAttributes: created HotelReservation";
    goto LABEL_61;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v43 && v69 == v44)
  {

    goto LABEL_102;
  }

  v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v71)
  {
LABEL_102:
    type metadata accessor for FeatureFlagService();
    v106 = swift_allocObject();
    v107 = v134;
    v108 = v123;
    RestaurantReservation.init(item:answerAttributes:requireDates:featureFlagService:)(v107, MEMORY[0x277D84F90], 0, v106, v109, v110, v111, v112, v120, SHIDWORD(v120), v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
    v113 = type metadata accessor for RestaurantReservation();
    if (__swift_getEnumTagSinglePayload(v108, 1, v113))
    {
      outlined destroy of ResourceBundle?(v123, &_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
      v114 = 1;
    }

    else
    {
      (*(*(v113 - 8) + 32))(v121, v123, v113);
      v114 = 0;
    }

    v115 = v121;
    __swift_storeEnumTagSinglePayload(v121, v114, 1, v113);
    outlined assign with take of ShippingOrder?(v115, a11, &_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v116 = type metadata accessor for Logger();
    __swift_project_value_buffer(v116, static Logging.search);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v81, v82))
    {
      goto LABEL_62;
    }

    v83 = swift_slowAlloc();
    *v83 = 0;
    v84 = "PartialExtractedAttributes: created RestaurantReservation";
    goto LABEL_61;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v43 && v72 == v44)
  {

    goto LABEL_110;
  }

  v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v74)
  {
LABEL_110:
    v117 = v134;
    v118 = v122;
    ShippingOrder.init(item:)(v117, v122);
    outlined assign with take of ShippingOrder?(v118, a12, &_s15OmniSearchTypes13ShippingOrderVSgMd, &_s15OmniSearchTypes13ShippingOrderVSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v119 = type metadata accessor for Logger();
    __swift_project_value_buffer(v119, static Logging.search);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v81, v82))
    {
      goto LABEL_62;
    }

    v83 = swift_slowAlloc();
    *v83 = 0;
    v84 = "PartialExtractedAttributes: created ShippingOrder";
LABEL_61:
    _os_log_impl(&dword_25D85C000, v81, v82, v84, v83, 2u);
    MEMORY[0x25F8A1050](v83, -1, -1);
LABEL_62:

    return;
  }

  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  __swift_project_value_buffer(v75, static Logging.search);

  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v135 = v79;
    *v78 = 136315138;
    *(v78 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v76, v77, "PartialExtractedAttributes: unimplemented eventType: %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    MEMORY[0x25F8A1050](v79, -1, -1);
    MEMORY[0x25F8A1050](v78, -1, -1);
  }
}

void PreExtractedCard.init(item:featureFlagService:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = OUTLINED_FUNCTION_114(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_109();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v264[1] = v258 - v13;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_45_16();
  MEMORY[0x28223BE20](v15);
  v17 = v258 - v16;
  MEMORY[0x28223BE20](v18);
  v264[0] = v258 - v19;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v20);
  v22 = v258 - v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_36_21();
  MEMORY[0x28223BE20](v24);
  v26 = v258 - v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_2();
  v265 = v28;
  if ((*(*a2 + 80))(14))
  {
    v262 = v11;
    v29 = [a1 attributeSet];
    outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v29, &selRef_cardType);
    if (v30)
    {
      v263 = v3;

      v31 = [a1 uniqueIdentifier];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v258[32] = v33;
      v259 = v32;

      v34 = [v29 attributeForKey_];
      if (v34)
      {
        OUTLINED_FUNCTION_26_22(v34);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      v261[0] = a2;
      OUTLINED_FUNCTION_16_31();
      if (v56)
      {
        v57 = OUTLINED_FUNCTION_49_18();
        v59 = v58;
        if (OUTLINED_FUNCTION_43_13(v57, v60, v61, v62))
        {
          v63 = v267;
          v258[31] = v266;
          goto LABEL_24;
        }
      }

      else
      {
        v59 = MEMORY[0x277D84F70];
        outlined destroy of ResourceBundle?(v270, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v278);
LABEL_24:
      v258[30] = v63;
      v64 = [v29 attributeForKey_];
      if (v64)
      {
        OUTLINED_FUNCTION_26_22(v64);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v65)
      {
        v66 = OUTLINED_FUNCTION_49_18();
        if (OUTLINED_FUNCTION_42_20(v66, v67, v68, v69))
        {
          v70 = v267;
          v258[29] = v266;
          goto LABEL_32;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v270, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v277);
LABEL_32:
      v258[28] = v70;
      v71 = [v29 attributeForKey_];
      if (v71)
      {
        OUTLINED_FUNCTION_26_22(v71);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v72)
      {
        v73 = OUTLINED_FUNCTION_49_18();
        if (OUTLINED_FUNCTION_42_20(v73, v74, v75, v76))
        {
          v77 = v267;
          v258[27] = v266;
          goto LABEL_40;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v270, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v276);
LABEL_40:
      v258[26] = v77;
      v78 = [v29 attributeForKey_];
      if (v78)
      {
        OUTLINED_FUNCTION_26_22(v78);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v79)
      {
        v80 = OUTLINED_FUNCTION_49_18();
        if (OUTLINED_FUNCTION_42_20(v80, v81, v82, v83))
        {
          v84 = v267;
          v258[25] = v266;
          goto LABEL_48;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v270, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v275);
LABEL_48:
      v258[24] = v84;
      v85 = [v29 attributeForKey_];
      if (v85)
      {
        OUTLINED_FUNCTION_26_22(v85);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v86)
      {
        v87 = OUTLINED_FUNCTION_49_18();
        if (OUTLINED_FUNCTION_42_20(v87, v88, v89, v90))
        {
          v91 = v267;
          v258[23] = v266;
          goto LABEL_56;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v270, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v274);
LABEL_56:
      v258[22] = v91;
      v92 = [v29 attributeForKey_];
      if (v92)
      {
        OUTLINED_FUNCTION_26_22(v92);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v93)
      {
        v94 = OUTLINED_FUNCTION_49_18();
        if (OUTLINED_FUNCTION_42_20(v94, v95, v96, v97))
        {
          v98 = v267;
          v258[21] = v266;
          goto LABEL_64;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v270, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v273);
LABEL_64:
      v258[20] = v98;
      v99 = [v29 attributeForKey_];
      if (v99)
      {
        OUTLINED_FUNCTION_26_22(v99);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v100)
      {
        type metadata accessor for Date();
        OUTLINED_FUNCTION_46_20();
        v102 = OUTLINED_FUNCTION_51_17(v26, v101, v59 + 8);
        OUTLINED_FUNCTION_28_24(v26, v102 ^ 1u);
        OUTLINED_FUNCTION_38_5(v26);
        if (!v103)
        {
          OUTLINED_FUNCTION_51();
          (*(v104 + 32))(v265, v26, v31);
          OUTLINED_FUNCTION_44_0();
          __swift_storeEnumTagSinglePayload(v105, v106, v107, v31);
          goto LABEL_73;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v270, &_sypSgMd, &_sypSgMR);
        v31 = type metadata accessor for Date();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v108, v109, v110, v31);
      }

      type metadata accessor for Date();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v111, v112, v113, v31);
      OUTLINED_FUNCTION_38_5(v26);
      if (!v103)
      {
        outlined destroy of ResourceBundle?(v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

LABEL_73:
      v114 = [v29 attributeForKey_];
      if (v114)
      {
        OUTLINED_FUNCTION_26_22(v114);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v115)
      {
        type metadata accessor for Date();
        OUTLINED_FUNCTION_46_20();
        v117 = OUTLINED_FUNCTION_51_17(v22, v116, v59 + 8);
        OUTLINED_FUNCTION_28_24(v22, v117 ^ 1u);
        OUTLINED_FUNCTION_38_5(v22);
        if (!v103)
        {
          OUTLINED_FUNCTION_51();
          (*(v118 + 32))(v263, v22, v31);
          OUTLINED_FUNCTION_44_0();
          __swift_storeEnumTagSinglePayload(v119, v120, v121, v31);
          goto LABEL_82;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v270, &_sypSgMd, &_sypSgMR);
        v31 = type metadata accessor for Date();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v122, v123, v124, v31);
      }

      type metadata accessor for Date();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v125, v126, v127, v31);
      OUTLINED_FUNCTION_38_5(v22);
      if (!v103)
      {
        outlined destroy of ResourceBundle?(v22, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

LABEL_82:
      v128 = OUTLINED_FUNCTION_18_22();
      v130 = [v128 v129];
      if (v130)
      {
        OUTLINED_FUNCTION_26_22(v130);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      v131 = v264[0];
      OUTLINED_FUNCTION_16_31();
      if (v135)
      {
        if (OUTLINED_FUNCTION_8_39(v132, v133, v134, MEMORY[0x277D837D0]))
        {
          v136 = v267;
          v258[19] = v266;
          goto LABEL_90;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v270, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v272);
LABEL_90:
      v258[18] = v136;
      v137 = OUTLINED_FUNCTION_18_22();
      v139 = [v137 v138];
      if (v139)
      {
        OUTLINED_FUNCTION_26_22(v139);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v143)
      {
        if (OUTLINED_FUNCTION_8_39(v140, v141, v142, MEMORY[0x277D837D0]))
        {
          v144 = v267;
          v258[17] = v266;
          goto LABEL_98;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v270, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v271);
LABEL_98:
      v258[16] = v144;
      v145 = OUTLINED_FUNCTION_18_22();
      v147 = [v145 v146];
      if (v147)
      {
        OUTLINED_FUNCTION_26_22(v147);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v151)
      {
        if (OUTLINED_FUNCTION_8_39(v148, v149, v150, MEMORY[0x277D837D0]))
        {
          v152 = v267;
          v258[15] = v266;
          goto LABEL_106;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v270, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v269);
LABEL_106:
      v258[14] = v152;
      v153 = OUTLINED_FUNCTION_18_22();
      v155 = [v153 v154];
      if (v155)
      {
        OUTLINED_FUNCTION_26_22(v155);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v156)
      {
        type metadata accessor for Date();
        OUTLINED_FUNCTION_46_20();
        v158 = OUTLINED_FUNCTION_51_17(v17, v157, v59 + 8);
        OUTLINED_FUNCTION_28_24(v17, v158 ^ 1u);
        OUTLINED_FUNCTION_38_5(v17);
        if (!v103)
        {
          OUTLINED_FUNCTION_51();
          (*(v159 + 32))(v131, v17, v31);
          OUTLINED_FUNCTION_44_0();
          __swift_storeEnumTagSinglePayload(v160, v161, v162, v31);
          goto LABEL_115;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v270, &_sypSgMd, &_sypSgMR);
        v31 = type metadata accessor for Date();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v163, v164, v165, v31);
      }

      type metadata accessor for Date();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v166, v167, v168, v31);
      OUTLINED_FUNCTION_38_5(v17);
      if (!v103)
      {
        outlined destroy of ResourceBundle?(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

LABEL_115:
      v169 = OUTLINED_FUNCTION_18_22();
      v171 = [v169 v170];
      if (v171)
      {
        OUTLINED_FUNCTION_26_22(v171);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v175)
      {
        if (OUTLINED_FUNCTION_8_39(v172, v173, v174, MEMORY[0x277D837D0]))
        {
          v176 = v267;
          v258[13] = v266;
          goto LABEL_123;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v270, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v268);
LABEL_123:
      v258[12] = v176;
      v177 = OUTLINED_FUNCTION_18_22();
      v179 = [v177 v178];
      if (v179)
      {
        OUTLINED_FUNCTION_26_22(v179);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v183)
      {
        if (OUTLINED_FUNCTION_8_39(v180, v181, v182, MEMORY[0x277D837D0]))
        {
          v184 = v267;
          v258[11] = v266;
          goto LABEL_131;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v270, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v267);
LABEL_131:
      v258[10] = v184;
      v185 = OUTLINED_FUNCTION_18_22();
      v187 = [v185 v186];
      if (v187)
      {
        OUTLINED_FUNCTION_26_22(v187);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v191)
      {
        if (OUTLINED_FUNCTION_8_39(v188, v189, v190, MEMORY[0x277D837D0]))
        {
          v192 = v267;
          v258[9] = v266;
          goto LABEL_139;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v270, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v265);
LABEL_139:
      v258[8] = v192;
      v193 = OUTLINED_FUNCTION_18_22();
      v195 = [v193 v194];
      if (v195)
      {
        OUTLINED_FUNCTION_26_22(v195);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v199)
      {
        if (OUTLINED_FUNCTION_8_39(v196, v197, v198, MEMORY[0x277D837D0]))
        {
          v200 = v267;
          v258[7] = v266;
          goto LABEL_147;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v270, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(v264);
LABEL_147:
      v258[6] = v200;
      v201 = OUTLINED_FUNCTION_18_22();
      v203 = [v201 v202];
      if (v203)
      {
        OUTLINED_FUNCTION_26_22(v203);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v207)
      {
        if (OUTLINED_FUNCTION_8_39(v204, v205, v206, MEMORY[0x277D837D0]))
        {
          v208 = v267;
          v258[5] = v266;
          goto LABEL_155;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v270, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v262);
LABEL_155:
      v258[4] = v208;
      v209 = OUTLINED_FUNCTION_18_22();
      v211 = [v209 v210];
      if (v211)
      {
        OUTLINED_FUNCTION_26_22(v211);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v215)
      {
        if (OUTLINED_FUNCTION_8_39(v212, v213, v214, MEMORY[0x277D837D0]))
        {
          v216 = v267;
          v258[3] = v266;
          goto LABEL_163;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v270, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(v261);
LABEL_163:
      v258[2] = v216;
      v217 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v218 = MEMORY[0x25F89F4C0](v217);

      v219 = OUTLINED_FUNCTION_18_22();
      v221 = [v219 v220];

      if (v221)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      v261[1] = a3;
      if (v225)
      {
        if (OUTLINED_FUNCTION_8_39(v222, v223, v224, MEMORY[0x277D837D0]))
        {
          v226 = v267;
          v258[1] = v266;
LABEL_171:
          v258[0] = v226;
          v227 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v228 = MEMORY[0x25F89F4C0](v227);

          v229 = OUTLINED_FUNCTION_18_22();
          v231 = [v229 v230];

          if (v231)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            OUTLINED_FUNCTION_44_21();
          }

          OUTLINED_FUNCTION_16_31();
          v260 = a1;
          if (v235)
          {
            OUTLINED_FUNCTION_8_39(v232, v233, v234, MEMORY[0x277D837D0]);
          }

          else
          {
            outlined destroy of ResourceBundle?(v270, &_sypSgMd, &_sypSgMR);
          }

          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
          }

          v264[0] = v29;
          v236 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v236, static Logging.search);
          v237 = Logger.logObject.getter();
          v238 = static os_log_type_t.info.getter();
          if (OUTLINED_FUNCTION_88_0(v238))
          {
            v239 = OUTLINED_FUNCTION_172();
            *v239 = 0;
            _os_log_impl(&dword_25D85C000, v237, v238, "PreExtractedCard: Created for the source document.", v239, 2u);
            OUTLINED_FUNCTION_42_0();
          }

          v240 = v265;
          OUTLINED_FUNCTION_44_22();
          outlined init with copy of RentalCarReservation?(v241, v242, v243, v244);
          v245 = v263;
          OUTLINED_FUNCTION_44_22();
          outlined init with copy of RentalCarReservation?(v246, v247, v248, v249);
          OUTLINED_FUNCTION_44_22();
          outlined init with copy of RentalCarReservation?(v250, v251, v252, v253);
          PreExtractedCard.init(id:cardType:cardSubType:cardProvider:cardUnderName:cardNumber:cardGroupNumber:cardIssueDate:cardExpirationDate:cardIssuedBy:cardRegion:cardCountry:birthday:cardPlaceOfBirth:cardAddress:cardSex:cardHeight:cardEyeColor:cardWeight:cardCategory:cardRestrictions:)();

          outlined destroy of ResourceBundle?(v131, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          outlined destroy of ResourceBundle?(v245, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          outlined destroy of ResourceBundle?(v240, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          type metadata accessor for PreExtractedCard();
          OUTLINED_FUNCTION_48_13();
          OUTLINED_FUNCTION_44_0();
          __swift_storeEnumTagSinglePayload(v254, v255, v256, v257);
          OUTLINED_FUNCTION_148();
          return;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v270, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v259);
      goto LABEL_171;
    }

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v43 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v43, static Logging.search);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_105_6(v45))
    {
      v46 = OUTLINED_FUNCTION_172();
      *v46 = 0;
      OUTLINED_FUNCTION_25_25();
      _os_log_impl(v47, v48, v49, v50, v46, 2u);
      OUTLINED_FUNCTION_42_0();
    }
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v35 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v35, static Logging.search);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_105_6(v37))
    {
      v38 = OUTLINED_FUNCTION_172();
      *v38 = 0;
      OUTLINED_FUNCTION_25_25();
      _os_log_impl(v39, v40, v41, v42, v38, 2u);
      OUTLINED_FUNCTION_42_0();
    }
  }

  type metadata accessor for PreExtractedCard();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_148();

  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
}

uint64_t PreExtractedCard.Keys.rawValue.getter(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_24_25();
      break;
    case 2:
      result = 0x72656469766F7270;
      break;
    case 3:
      result = 0x616E207265646E75;
      break;
    case 4:
      result = 0x7265626D756ELL;
      break;
    case 5:
      result = 0x756E2070756F7267;
      break;
    case 6:
      result = 0x6164206575737369;
      break;
    case 7:
      result = 0x6974617269707865;
      break;
    case 8:
      result = OUTLINED_FUNCTION_40_20(0x75737369u);
      break;
    case 9:
      result = 0x6E6F69676572;
      break;
    case 10:
      result = 0x7972746E756F63;
      break;
    case 11:
      result = OUTLINED_FUNCTION_23_24();
      break;
    case 12:
      result = 0x666F206563616C70;
      break;
    case 13:
      result = 0x73736572646461;
      break;
    case 14:
      result = 7890291;
      break;
    case 15:
      result = 0x746867696568;
      break;
    case 16:
      result = 0x6F6C6F6320657965;
      break;
    case 17:
      result = 0x746867696577;
      break;
    case 18:
      result = 0x79726F6765746163;
      break;
    case 19:
      result = 0x7463697274736572;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t PreExtractedCard.Keys.init(rawValue:)()
{
  OUTLINED_FUNCTION_89_7();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_112_2();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PreExtractedCard.Keys@<X0>(_BYTE *a1@<X8>)
{
  result = PreExtractedCard.Keys.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PreExtractedCard.Keys()
{
  v1 = OUTLINED_FUNCTION_319();
  result = PreExtractedCard.Keys.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PreExtractedCard.init(item:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = OUTLINED_FUNCTION_114(v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  type metadata accessor for FeatureFlagService();
  v16 = swift_allocObject();
  a4(a1, v16);
  v17 = a5(0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v17))
  {
    outlined destroy of ResourceBundle?(v15, a2, a3);
    v18 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_51();
    (*(v19 + 32))(a6, v15, v17);
    v18 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a6, v18, 1, v17);
}

void PreExtractedContact.init(item:featureFlagService:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = OUTLINED_FUNCTION_114(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_109();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v162 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v162 - v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_45_16();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_36_21();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v162 - v23;
  if ((*(*a2 + 80))(14, v22))
  {
    v172 = v15;
    v173 = a2;
    v25 = [a1 attributeSet];
    outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v25, &selRef_contactType);
    if (v26)
    {
      v163 = v12;

      v27 = [a1 uniqueIdentifier];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v168 = v29;
      v169 = v28;

      v30 = a3;
      if ([v25 attributeForKey_])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      v52 = MEMORY[0x277D84F70];
      if (v53)
      {
        v54 = OUTLINED_FUNCTION_49_18();
        if (OUTLINED_FUNCTION_43_13(v54, v55, v56, v57))
        {
          v58 = v175;
          v167 = v174;
          goto LABEL_24;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v176, &_sypSgMd, &_sypSgMR);
      }

      v167 = 0;
      v58 = 0xE000000000000000;
LABEL_24:
      v166 = v58;
      v59 = OUTLINED_FUNCTION_30_22();
      if (v59)
      {
        OUTLINED_FUNCTION_26_22(v59);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v60)
      {
        v61 = OUTLINED_FUNCTION_49_18();
        if (OUTLINED_FUNCTION_43_13(v61, v62, v63, v64))
        {
          v65 = v175;
          v165 = v174;
          goto LABEL_32;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v176, &_sypSgMd, &_sypSgMR);
      }

      v165 = 0;
      v65 = 0xE000000000000000;
LABEL_32:
      v164 = v65;
      v66 = OUTLINED_FUNCTION_30_22();
      if (v66)
      {
        OUTLINED_FUNCTION_26_22(v66);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v67)
      {
        v68 = OUTLINED_FUNCTION_49_18();
        if (OUTLINED_FUNCTION_43_13(v68, v69, v70, v71))
        {
          v72 = v175;
          v162[12] = v174;
          goto LABEL_40;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v176, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v180);
LABEL_40:
      v162[11] = v72;
      v73 = OUTLINED_FUNCTION_30_22();
      if (v73)
      {
        OUTLINED_FUNCTION_26_22(v73);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v74)
      {
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (OUTLINED_FUNCTION_7_41(v75))
        {
          v76 = v174;
          goto LABEL_48;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v176, &_sypSgMd, &_sypSgMR);
      }

      v76 = MEMORY[0x277D84F90];
LABEL_48:
      v162[10] = v76;
      v77 = OUTLINED_FUNCTION_30_22();
      if (v77)
      {
        OUTLINED_FUNCTION_26_22(v77);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v78)
      {
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (OUTLINED_FUNCTION_7_41(v79))
        {
          v80 = v174;
          goto LABEL_56;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v176, &_sypSgMd, &_sypSgMR);
      }

      v80 = MEMORY[0x277D84F90];
LABEL_56:
      v162[9] = v80;
      v81 = OUTLINED_FUNCTION_30_22();
      if (v81)
      {
        OUTLINED_FUNCTION_26_22(v81);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v82)
      {
        v83 = OUTLINED_FUNCTION_49_18();
        if (OUTLINED_FUNCTION_43_13(v83, v84, v85, v86))
        {
          v87 = v175;
          v162[8] = v174;
          goto LABEL_64;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v176, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v179);
LABEL_64:
      v162[7] = v87;
      v88 = OUTLINED_FUNCTION_30_22();
      if (v88)
      {
        OUTLINED_FUNCTION_26_22(v88);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v89)
      {
        type metadata accessor for Date();
        OUTLINED_FUNCTION_46_20();
        v91 = OUTLINED_FUNCTION_51_17(v3, v90, v52 + 8);
        OUTLINED_FUNCTION_28_24(v3, v91 ^ 1u);
        OUTLINED_FUNCTION_38_5(v3);
        if (!v92)
        {
          OUTLINED_FUNCTION_51();
          (*(v93 + 32))(v24, v3, v52);
          OUTLINED_FUNCTION_44_0();
          __swift_storeEnumTagSinglePayload(v94, v95, v96, v52);
          goto LABEL_73;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v176, &_sypSgMd, &_sypSgMR);
        type metadata accessor for Date();
        OUTLINED_FUNCTION_112_2();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v97, v98, v99, v52);
      }

      type metadata accessor for Date();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v100, v101, v102, v52);
      OUTLINED_FUNCTION_38_5(v3);
      if (!v92)
      {
        outlined destroy of ResourceBundle?(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

LABEL_73:
      v103 = OUTLINED_FUNCTION_30_22();
      if (v103)
      {
        OUTLINED_FUNCTION_168_5(v103);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v107)
      {
        if (OUTLINED_FUNCTION_11_38(v104, v105, v106, MEMORY[0x277D837D0]))
        {
          v108 = v175;
          v162[6] = v174;
          goto LABEL_81;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v176, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v178);
LABEL_81:
      v162[5] = v108;
      v109 = OUTLINED_FUNCTION_30_22();
      if (v109)
      {
        OUTLINED_FUNCTION_168_5(v109);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v110)
      {
        v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (OUTLINED_FUNCTION_7_41(v111))
        {
          v112 = v174;
          goto LABEL_89;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v176, &_sypSgMd, &_sypSgMR);
      }

      v112 = MEMORY[0x277D84F90];
LABEL_89:
      v162[4] = v112;
      v113 = OUTLINED_FUNCTION_30_22();
      if (v113)
      {
        OUTLINED_FUNCTION_168_5(v113);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v114)
      {
        v115 = type metadata accessor for Date();
        v116 = swift_dynamicCast();
        OUTLINED_FUNCTION_53_15(v18, v116 ^ 1u, 1);
        if (!v92)
        {
          OUTLINED_FUNCTION_51();
          (*(v117 + 32))(v4, v18, v115);
          OUTLINED_FUNCTION_44_0();
          __swift_storeEnumTagSinglePayload(v118, v119, v120, v115);
          goto LABEL_98;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v176, &_sypSgMd, &_sypSgMR);
        v121 = type metadata accessor for Date();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v122, v123, v124, v121);
      }

      type metadata accessor for Date();
      OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_53_15(v125, v126, v127);
      if (!v92)
      {
        outlined destroy of ResourceBundle?(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

LABEL_98:
      v128 = OUTLINED_FUNCTION_30_22();
      if (v128)
      {
        OUTLINED_FUNCTION_168_5(v128);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v129)
      {
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (OUTLINED_FUNCTION_7_41(v130))
        {
          v131 = v174;
          goto LABEL_106;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v176, &_sypSgMd, &_sypSgMR);
      }

      v131 = MEMORY[0x277D84F90];
LABEL_106:
      v162[3] = v131;
      v132 = OUTLINED_FUNCTION_30_22();
      if (v132)
      {
        OUTLINED_FUNCTION_168_5(v132);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v133)
      {
        v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (OUTLINED_FUNCTION_7_41(v134))
        {
          v135 = v174;
          goto LABEL_114;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v176, &_sypSgMd, &_sypSgMR);
      }

      v135 = MEMORY[0x277D84F90];
LABEL_114:
      v162[2] = v135;
      v136 = OUTLINED_FUNCTION_30_22();
      if (v136)
      {
        OUTLINED_FUNCTION_168_5(v136);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v140)
      {
        if (OUTLINED_FUNCTION_11_38(v137, v138, v139, MEMORY[0x277D837D0]))
        {
          v141 = v175;
          v162[1] = v174;
LABEL_122:
          v162[0] = v141;
          v142 = OUTLINED_FUNCTION_30_22();
          if (v142)
          {
            OUTLINED_FUNCTION_168_5(v142);
            swift_unknownObjectRelease();
          }

          else
          {
            OUTLINED_FUNCTION_44_21();
          }

          OUTLINED_FUNCTION_16_31();
          v170 = v30;
          v171 = a1;
          if (v143)
          {
            v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            OUTLINED_FUNCTION_7_41(v144);
          }

          else
          {
            outlined destroy of ResourceBundle?(v176, &_sypSgMd, &_sypSgMR);
          }

          v145 = OUTLINED_FUNCTION_30_22();
          if (v145)
          {
            OUTLINED_FUNCTION_168_5(v145);
            swift_unknownObjectRelease();
          }

          else
          {
            OUTLINED_FUNCTION_44_21();
          }

          v146 = v163;
          OUTLINED_FUNCTION_16_31();
          if (v147)
          {
            v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            v149 = v4;
            OUTLINED_FUNCTION_7_41(v148);
          }

          else
          {
            v149 = v4;
            outlined destroy of ResourceBundle?(v176, &_sypSgMd, &_sypSgMR);
          }

          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
          }

          v150 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v150, static Logging.search);
          v151 = Logger.logObject.getter();
          v152 = static os_log_type_t.info.getter();
          if (OUTLINED_FUNCTION_105_6(v152))
          {
            v153 = OUTLINED_FUNCTION_172();
            *v153 = 0;
            OUTLINED_FUNCTION_25_25();
            _os_log_impl(v154, v155, v156, v157, v153, 2u);
            OUTLINED_FUNCTION_42_0();
          }

          outlined init with copy of RentalCarReservation?(v24, v172, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          outlined init with copy of RentalCarReservation?(v149, v146, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          PreExtractedContact.init(id:contactType:contactName:contactNickname:emailAddresses:phoneNumbers:contactSharedBy:contactSharedDateTime:contactSharedAppName:links:birthday:homeAddresses:workAddresses:relationship:addresses:businessHours:)();

          outlined destroy of ResourceBundle?(v149, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          outlined destroy of ResourceBundle?(v24, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          type metadata accessor for PreExtractedContact();
          OUTLINED_FUNCTION_44_0();
          __swift_storeEnumTagSinglePayload(v158, v159, v160, v161);
          OUTLINED_FUNCTION_148();
          return;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v176, &_sypSgMd, &_sypSgMR);
      }

      OUTLINED_FUNCTION_15_32(&v177);
      goto LABEL_122;
    }

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v39 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v39, static Logging.search);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_105_6(v41))
    {
      v42 = OUTLINED_FUNCTION_172();
      *v42 = 0;
      OUTLINED_FUNCTION_25_25();
      _os_log_impl(v43, v44, v45, v46, v42, 2u);
      OUTLINED_FUNCTION_42_0();
    }
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v31 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v31, static Logging.search);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_105_6(v33))
    {
      v34 = OUTLINED_FUNCTION_172();
      *v34 = 0;
      OUTLINED_FUNCTION_25_25();
      _os_log_impl(v35, v36, v37, v38, v34, 2u);
      OUTLINED_FUNCTION_42_0();
    }
  }

  type metadata accessor for PreExtractedContact();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_148();

  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
}

uint64_t PreExtractedContact.Keys.rawValue.getter(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_41_17();
      break;
    case 2:
      result = 0x656D616E6B63696ELL;
      break;
    case 3:
      result = 0x6461206C69616D65;
      break;
    case 4:
      result = 0x737265626D756ELL;
      break;
    case 5:
      result = OUTLINED_FUNCTION_40_20(0x72616873u);
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6120646572616873;
      break;
    case 8:
      result = 0x736B6E696CLL;
      break;
    case 9:
      result = OUTLINED_FUNCTION_23_24();
      break;
    case 10:
      v3 = 1701670760;
      goto LABEL_15;
    case 11:
      v3 = 1802661751;
LABEL_15:
      result = v3 | 0x6464612000000000;
      break;
    case 12:
      result = 0x6E6F6974616C6572;
      break;
    case 13:
      result = 0x6573736572646461;
      break;
    case 14:
      result = 0x7373656E69737562;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t PreExtractedContact.Keys.init(rawValue:)()
{
  OUTLINED_FUNCTION_89_7();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PreExtractedContact.Keys.init(rawValue:), v2);
  OUTLINED_FUNCTION_112_2();

  if (v1 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v1;
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PreExtractedContact.Keys@<X0>(_BYTE *a1@<X8>)
{
  result = PreExtractedContact.Keys.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PreExtractedContact.Keys()
{
  v1 = OUTLINED_FUNCTION_319();
  result = PreExtractedContact.Keys.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PreExtractedBreadcrumb.init(item:featureFlagService:)(void *a1, uint64_t a2)
{
  if ((*(*a2 + 80))(15))
  {
    v3 = [a1 attributeSet];
    if (static PreExtractedBreadcrumb.isValid(attr:)(v3))
    {
      v4 = [a1 uniqueIdentifier];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v423 = v6;
      v433 = v5;

      v7 = OUTLINED_FUNCTION_34_26();
      if (v7)
      {
        OUTLINED_FUNCTION_35_24(v7, v8, v9, v10, v11, v12, v13, v14, v305, v316, v327, v338, v349, v361, v373);
        v15 = swift_unknownObjectRelease();
      }

      else
      {
        v23.n128_f64[0] = OUTLINED_FUNCTION_19_31();
      }

      OUTLINED_FUNCTION_5_42(v15, v16, v17, v18, v19, v20, v21, v22, v23, v305, v316, v327, v338, v349, v361, v373, v383, v393, v403, v413, v423, v433, v443, v453, v24);
      if (v38)
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DateVGMd, &_sSay10Foundation4DateVGMR);
        if (OUTLINED_FUNCTION_3_50(v39, v40, v41, v42, v43, v44, v45, v46, v306, v317, v328, v339, v350, v362))
        {
          v47 = v444;
          goto LABEL_24;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v463, &_sypSgMd, &_sypSgMR);
      }

      v47 = MEMORY[0x277D84F90];
LABEL_24:
      v414 = v47;
      v48 = OUTLINED_FUNCTION_34_26();
      if (v48)
      {
        OUTLINED_FUNCTION_35_24(v48, v49, v50, v51, v52, v53, v54, v55, v306, v317, v328, v339, v350, v362, v374);
        v56 = swift_unknownObjectRelease();
      }

      else
      {
        v64.n128_f64[0] = OUTLINED_FUNCTION_19_31();
      }

      OUTLINED_FUNCTION_5_42(v56, v57, v58, v59, v60, v61, v62, v63, v64, v306, v317, v328, v339, v350, v362, v374, v384, v394, v404, v414, v424, v434, v444, v454, v65);
      if (v66)
      {
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (OUTLINED_FUNCTION_3_50(v67, v68, v69, v70, v71, v72, v73, v74, v307, v318, v329, v340, v351, v363))
        {
          v75 = v445;
          goto LABEL_32;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v463, &_sypSgMd, &_sypSgMR);
      }

      v75 = MEMORY[0x277D84F90];
LABEL_32:
      v405 = v75;
      v76 = OUTLINED_FUNCTION_34_26();
      if (v76)
      {
        OUTLINED_FUNCTION_35_24(v76, v77, v78, v79, v80, v81, v82, v83, v307, v318, v329, v340, v351, v363, v375);
        v84 = swift_unknownObjectRelease();
      }

      else
      {
        v92.n128_f64[0] = OUTLINED_FUNCTION_19_31();
      }

      OUTLINED_FUNCTION_5_42(v84, v85, v86, v87, v88, v89, v90, v91, v92, v307, v318, v329, v340, v351, v363, v375, v385, v395, v405, v415, v425, v435, v445, v455, v93);
      if (v94)
      {
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (OUTLINED_FUNCTION_3_50(v95, v96, v97, v98, v99, v100, v101, v102, v308, v319, v330, v341, v352, v364))
        {
          v103 = v446;
          goto LABEL_40;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v463, &_sypSgMd, &_sypSgMR);
      }

      v103 = MEMORY[0x277D84F90];
LABEL_40:
      v396 = v103;
      v104 = OUTLINED_FUNCTION_34_26();
      if (v104)
      {
        OUTLINED_FUNCTION_35_24(v104, v105, v106, v107, v108, v109, v110, v111, v308, v319, v330, v341, v352, v364, v376);
        v112 = swift_unknownObjectRelease();
      }

      else
      {
        v120.n128_f64[0] = OUTLINED_FUNCTION_19_31();
      }

      OUTLINED_FUNCTION_5_42(v112, v113, v114, v115, v116, v117, v118, v119, v120, v308, v319, v330, v341, v352, v364, v376, v386, v396, v406, v416, v426, v436, v446, v456, v121);
      if (v122)
      {
        v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (OUTLINED_FUNCTION_3_50(v123, v124, v125, v126, v127, v128, v129, v130, v309, v320, v331, v342, v353, v365))
        {
          v131 = v447;
          goto LABEL_48;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v463, &_sypSgMd, &_sypSgMR);
      }

      v131 = MEMORY[0x277D84F90];
LABEL_48:
      v387 = v131;
      v132 = OUTLINED_FUNCTION_34_26();
      if (v132)
      {
        OUTLINED_FUNCTION_35_24(v132, v133, v134, v135, v136, v137, v138, v139, v309, v320, v331, v342, v353, v365, v377);
        v140 = swift_unknownObjectRelease();
      }

      else
      {
        v148.n128_f64[0] = OUTLINED_FUNCTION_19_31();
      }

      OUTLINED_FUNCTION_5_42(v140, v141, v142, v143, v144, v145, v146, v147, v148, v309, v320, v331, v342, v353, v365, v377, v387, v397, v407, v417, v427, v437, v447, v457, v149);
      if (v150)
      {
        v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (OUTLINED_FUNCTION_3_50(v151, v152, v153, v154, v155, v156, v157, v158, v310, v321, v332, v343, v354, v366))
        {
          v159 = v448;
          goto LABEL_56;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v463, &_sypSgMd, &_sypSgMR);
      }

      v159 = MEMORY[0x277D84F90];
LABEL_56:
      v378 = v159;
      v160 = OUTLINED_FUNCTION_34_26();
      if (v160)
      {
        OUTLINED_FUNCTION_35_24(v160, v161, v162, v163, v164, v165, v166, v167, v310, v321, v332, v343, v354, v366, v378);
        v168 = swift_unknownObjectRelease();
      }

      else
      {
        v176.n128_f64[0] = OUTLINED_FUNCTION_19_31();
      }

      OUTLINED_FUNCTION_5_42(v168, v169, v170, v171, v172, v173, v174, v175, v176, v310, v321, v332, v343, v354, v366, v378, v388, v398, v408, v418, v428, v438, v448, v458, v177);
      if (v178)
      {
        v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (OUTLINED_FUNCTION_3_50(v179, v180, v181, v182, v183, v184, v185, v186, v311, v322, v333, v344, v355, v367))
        {
          v187 = v449;
          goto LABEL_64;
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v463, &_sypSgMd, &_sypSgMR);
      }

      v187 = MEMORY[0x277D84F90];
LABEL_64:
      v368 = v187;
      v188 = OUTLINED_FUNCTION_34_26();
      if (v188)
      {
        OUTLINED_FUNCTION_35_24(v188, v189, v190, v191, v192, v193, v194, v195, v311, v322, v333, v344, v355, v368, v379);
        v196 = swift_unknownObjectRelease();
      }

      else
      {
        v204.n128_f64[0] = OUTLINED_FUNCTION_19_31();
      }

      OUTLINED_FUNCTION_5_42(v196, v197, v198, v199, v200, v201, v202, v203, v204, v311, v322, v333, v344, v355, v368, v379, v389, v399, v409, v419, v429, v439, v449, v459, v205);
      if (v206)
      {
        v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if (OUTLINED_FUNCTION_3_50(v207, v208, v209, v210, v211, v212, v213, v214, v312, v323, v334, v345, v356, v369))
        {
          v215 = v450;
LABEL_72:
          v357 = v215;
          v216 = OUTLINED_FUNCTION_34_26();
          if (v216)
          {
            OUTLINED_FUNCTION_35_24(v216, v217, v218, v219, v220, v221, v222, v223, v312, v323, v334, v345, v357, v369, v380);
            v224 = swift_unknownObjectRelease();
          }

          else
          {
            v232.n128_f64[0] = OUTLINED_FUNCTION_19_31();
          }

          OUTLINED_FUNCTION_5_42(v224, v225, v226, v227, v228, v229, v230, v231, v232, v312, v323, v334, v345, v357, v369, v380, v390, v400, v410, v420, v430, v440, v450, v460, v233);
          if (v234)
          {
            v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            OUTLINED_FUNCTION_3_50(v235, v236, v237, v238, v239, v240, v241, v242, v313, v324, v335, v346, v358, v370);
          }

          else
          {
            outlined destroy of ResourceBundle?(v463, &_sypSgMd, &_sypSgMR);
          }

          v243 = OUTLINED_FUNCTION_34_26();
          if (v243)
          {
            OUTLINED_FUNCTION_35_24(v243, v244, v245, v246, v247, v248, v249, v250, v313, v324, v335, v346, v358, v370, v381);
            v251 = swift_unknownObjectRelease();
          }

          else
          {
            v259.n128_f64[0] = OUTLINED_FUNCTION_19_31();
          }

          OUTLINED_FUNCTION_5_42(v251, v252, v253, v254, v255, v256, v257, v258, v259, v313, v324, v335, v346, v358, v370, v381, v391, v401, v411, v421, v431, v441, v451, v461, v260);
          if (v261)
          {
            v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            OUTLINED_FUNCTION_3_50(v262, v263, v264, v265, v266, v267, v268, v269, v314, v325, v336, v347, v359, v371);
          }

          else
          {
            outlined destroy of ResourceBundle?(v463, &_sypSgMd, &_sypSgMR);
          }

          v270 = OUTLINED_FUNCTION_34_26();
          if (v270)
          {
            OUTLINED_FUNCTION_35_24(v270, v271, v272, v273, v274, v275, v276, v277, v314, v325, v336, v347, v359, v371, v382);
            v278 = swift_unknownObjectRelease();
          }

          else
          {
            v286.n128_f64[0] = OUTLINED_FUNCTION_19_31();
          }

          OUTLINED_FUNCTION_5_42(v278, v279, v280, v281, v282, v283, v284, v285, v286, v314, v325, v336, v347, v359, v371, v382, v392, v402, v412, v422, v432, v442, v452, v462, v287);
          if (v288)
          {
            v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            OUTLINED_FUNCTION_3_50(v289, v290, v291, v292, v293, v294, v295, v296, v315, v326, v337, v348, v360, v372);
          }

          else
          {
            outlined destroy of ResourceBundle?(v463, &_sypSgMd, &_sypSgMR);
          }

          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
          }

          v297 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v297, static Logging.search);
          v298 = Logger.logObject.getter();
          v299 = static os_log_type_t.info.getter();
          if (OUTLINED_FUNCTION_88_0(v299))
          {
            v300 = OUTLINED_FUNCTION_172();
            *v300 = 0;
            _os_log_impl(&dword_25D85C000, v298, v299, "PreExtractedBreadcrumb: Created for the source document.", v300, 2u);
            OUTLINED_FUNCTION_42_0();
          }

          PreExtractedBreadcrumb.init(id:extractedDatesValues:extractedLocationsValues:extractedPhoneNumbersLabels:extractedPhoneNumbersCountryCodes:extractedAddressesLabels:extractedFlightsLabels:extractedLinksLabels:extractedTrackingNumbersLabels:extractedCurrenciesValues:extractedEmailsLabels:)();

          type metadata accessor for PreExtractedBreadcrumb();
          OUTLINED_FUNCTION_48_13();
          OUTLINED_FUNCTION_44_0();
          return __swift_storeEnumTagSinglePayload(v301, v302, v303, v304);
        }
      }

      else
      {
        outlined destroy of ResourceBundle?(v463, &_sypSgMd, &_sypSgMR);
      }

      v215 = MEMORY[0x277D84F90];
      goto LABEL_72;
    }

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v29 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v29, static Logging.search);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_88_0(v31))
    {
      v32 = OUTLINED_FUNCTION_172();
      *v32 = 0;
      _os_log_impl(&dword_25D85C000, v30, v31, "PreExtractedBreadcrumb: no relevant attribute exist, skip creating PreExtractedBreadcrumb.", v32, 2u);
      OUTLINED_FUNCTION_42_0();
    }
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v25 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v25, static Logging.search);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_88_0(v27))
    {
      v28 = OUTLINED_FUNCTION_172();
      *v28 = 0;
      _os_log_impl(&dword_25D85C000, v26, v27, "PreExtractedBreadcrumb: FF OmniSearch/preExtractedBreadcrumbs disabled, skip creating PreExtractedBreadcrumb.", v28, 2u);
      OUTLINED_FUNCTION_42_0();
    }
  }

  type metadata accessor for PreExtractedBreadcrumb();
  OUTLINED_FUNCTION_48_13();
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
}

BOOL static PreExtractedBreadcrumb.isValid(attr:)(void *a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x25F89F4C0](v2);

  v4 = [a1 attributeForKey_];

  if (v4 || (v34 = 0u, v35 = 0u, outlined destroy of ResourceBundle?(&v34, &_sypSgMd, &_sypSgMR), v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v6 = MEMORY[0x25F89F4C0](v5), , v7 = [a1 attributeForKey_], v6, v7) || (v34 = 0u, v35 = 0u, outlined destroy of ResourceBundle?(&v34, &_sypSgMd, &_sypSgMR), v8 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v9 = MEMORY[0x25F89F4C0](v8), , v10 = objc_msgSend(a1, sel_attributeForKey_, v9), v9, v10) || (v34 = 0u, v35 = 0u, outlined destroy of ResourceBundle?(&v34, &_sypSgMd, &_sypSgMR), v11 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v12 = MEMORY[0x25F89F4C0](v11), , v13 = objc_msgSend(a1, sel_attributeForKey_, v12), v12, v13) || (v34 = 0u, v35 = 0u, outlined destroy of ResourceBundle?(&v34, &_sypSgMd, &_sypSgMR), v14 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v15 = MEMORY[0x25F89F4C0](v14), , v16 = objc_msgSend(a1, sel_attributeForKey_, v15), v15, v16) || (v34 = 0u, v35 = 0u, outlined destroy of ResourceBundle?(&v34, &_sypSgMd, &_sypSgMR), v17 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v18 = MEMORY[0x25F89F4C0](v17), , v19 = objc_msgSend(a1, sel_attributeForKey_, v18), v18, v19) || (v34 = 0u, v35 = 0u, outlined destroy of ResourceBundle?(&v34, &_sypSgMd, &_sypSgMR), v20 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v21 = MEMORY[0x25F89F4C0](v20), , v22 = objc_msgSend(a1, sel_attributeForKey_, v21), v21, v22) || (v34 = 0u, v35 = 0u, outlined destroy of ResourceBundle?(&v34, &_sypSgMd, &_sypSgMR), v23 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v24 = MEMORY[0x25F89F4C0](v23), , v25 = objc_msgSend(a1, sel_attributeForKey_, v24), v24, v25) || (v34 = 0u, v35 = 0u, outlined destroy of ResourceBundle?(&v34, &_sypSgMd, &_sypSgMR), v26 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v27 = MEMORY[0x25F89F4C0](v26), , v28 = objc_msgSend(a1, sel_attributeForKey_, v27), v27, v28))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of ResourceBundle?(&v34, &_sypSgMd, &_sypSgMR);
    return 1;
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    outlined destroy of ResourceBundle?(&v34, &_sypSgMd, &_sypSgMR);
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = MEMORY[0x25F89F4C0](v31);

    v33 = [a1 attributeForKey_];

    v29 = v33 != 0;
    if (v33)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    outlined destroy of ResourceBundle?(&v34, &_sypSgMd, &_sypSgMR);
  }

  return v29;
}

uint64_t PreExtractedBreadcrumb.Keys.rawValue.getter(char a1)
{
  result = 0x6574636172747865;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      OUTLINED_FUNCTION_54_21();
      result = v4 | 4;
      break;
    case 3:
      OUTLINED_FUNCTION_54_21();
      result = v5 + 18;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      OUTLINED_FUNCTION_54_21();
      result = v7 - 2;
      break;
    case 7:
      OUTLINED_FUNCTION_54_21();
      result = v6 + 7;
      break;
    case 8:
      OUTLINED_FUNCTION_54_21();
      result = v8 + 1;
      break;
    case 9:
      OUTLINED_FUNCTION_54_21();
      result = v3 - 3;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t PreExtractedBreadcrumb.Keys.init(rawValue:)()
{
  OUTLINED_FUNCTION_89_7();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PreExtractedBreadcrumb.Keys.init(rawValue:), v2);
  OUTLINED_FUNCTION_112_2();

  if (v1 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v1;
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PreExtractedBreadcrumb.Keys@<X0>(_BYTE *a1@<X8>)
{
  result = PreExtractedBreadcrumb.Keys.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PreExtractedBreadcrumb.Keys()
{
  v1 = OUTLINED_FUNCTION_319();
  result = PreExtractedBreadcrumb.Keys.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PreExtractedSharedLink.init(item:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = OUTLINED_FUNCTION_114(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_109();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v79 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = OUTLINED_FUNCTION_114(v12);
  MEMORY[0x28223BE20](v13);
  v15 = v79 - v14;
  v16 = type metadata accessor for PreExtractedSharedLink();
  v17 = *(v16 - 8);
  *&v18 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v20 = v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 attributeSet];
  v22 = outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v21, &selRef_linkType);
  if (v23)
  {
    v79[13] = v23;
    v79[14] = v22;
    v81 = v17;
    v24 = [a1 uniqueIdentifier];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79[11] = v26;
    v79[12] = v25;

    v27 = outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v21, &selRef_linkSubType);
    v79[9] = v28;
    v79[10] = v27;
    v29 = outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v21, &selRef_linkName);
    v79[7] = v30;
    v79[8] = v29;
    v31 = [v21 URL];
    if (v31)
    {
      v32 = v31;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = type metadata accessor for URL();
      v34 = 0;
    }

    else
    {
      v33 = type metadata accessor for URL();
      v34 = 1;
    }

    v82 = v16;
    v47 = 1;
    v79[15] = v15;
    __swift_storeEnumTagSinglePayload(v15, v34, 1, v33);
    v48 = outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v21, &selRef_urlDescription);
    v79[5] = v49;
    v79[6] = v48;
    v79[4] = outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v21, &selRef_artist);
    v79[3] = v50;
    v79[2] = outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v21, &selRef_album);
    v79[1] = v51;
    v52 = [v21 recordingDate];
    if (v52)
    {
      v53 = v52;
      v54 = a2;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v47 = 0;
    }

    else
    {
      v54 = a2;
    }

    v55 = type metadata accessor for Date();
    v56 = 1;
    v79[16] = v11;
    __swift_storeEnumTagSinglePayload(v11, v47, 1, v55);
    v57 = [v21 recordingDate];
    if (v57)
    {
      v58 = v57;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v56 = 0;
    }

    __swift_storeEnumTagSinglePayload(v8, v56, 1, v55);
    v59 = [v21 duration];
    v60 = v59;
    v83 = a1;
    v84 = v54;
    v79[17] = v8;
    v80 = v20;
    if (v59)
    {
      [v59 doubleValue];
      v62 = v61;

      v79[0] = v62;
    }

    else
    {
      v79[0] = 0;
    }

    outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v21, &selRef_musicalGenre);
    outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v21, &selRef_curator);
    outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v21, &selRef_episode);
    outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v21, &selRef_podcastName);
    outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v21, &selRef_textContent);
    v63 = v80;
    PreExtractedSharedLink.init(id:type:subType:name:url:urlDescription:artist:album:publishedDate:releaseDate:lengthInSeconds:musicalGenre:curator:episode:podcastName:summary:)();
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v64 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v64, static Logging.search);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.info.getter();
    v67 = OUTLINED_FUNCTION_105_6(v66);
    v69 = v83;
    v68 = v84;
    v70 = v82;
    if (v67)
    {
      v71 = OUTLINED_FUNCTION_172();
      *v71 = 0;
      OUTLINED_FUNCTION_25_25();
      _os_log_impl(v72, v73, v74, v75, v71, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    (*(v81 + 32))(v68, v63, v70);
    OUTLINED_FUNCTION_44_0();
    return __swift_storeEnumTagSinglePayload(v76, v77, v78, v70);
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v35 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v35, static Logging.search);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_105_6(v37))
    {
      v38 = OUTLINED_FUNCTION_172();
      *v38 = 0;
      OUTLINED_FUNCTION_25_25();
      _os_log_impl(v39, v40, v41, v42, v38, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    OUTLINED_FUNCTION_92();

    return __swift_storeEnumTagSinglePayload(v43, v44, v45, v16);
  }
}

uint64_t PreExtractedSharedLink.Keys.rawValue.getter(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_24_25();
      break;
    case 2:
      result = OUTLINED_FUNCTION_41_17();
      break;
    case 3:
      result = 7107189;
      break;
    case 4:
      result = 0x63736564206C7275;
      break;
    case 5:
      result = 0x747369747261;
      break;
    case 6:
      result = 0x6D75626C61;
      break;
    case 7:
      result = 0x656873696C627570;
      break;
    case 8:
      result = 0x20657361656C6572;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x206C61636973756DLL;
      break;
    case 11:
      result = 0x726F7461727563;
      break;
    case 12:
      result = 0x65646F73697065;
      break;
    case 13:
      result = 0x2074736163646F70;
      break;
    case 14:
      result = 0x7972616D6D7573;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t PreExtractedSharedLink.Keys.init(rawValue:)()
{
  OUTLINED_FUNCTION_89_7();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PreExtractedSharedLink.Keys.init(rawValue:), v2);
  OUTLINED_FUNCTION_112_2();

  if (v1 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v1;
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PreExtractedSharedLink.Keys@<X0>(_BYTE *a1@<X8>)
{
  result = PreExtractedSharedLink.Keys.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PreExtractedSharedLink.Keys()
{
  v1 = OUTLINED_FUNCTION_319();
  result = PreExtractedSharedLink.Keys.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void outlined bridged method (mbgnn) of @objc CSSearchableItem.bundleID.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0](a1, a2);
  [a3 setBundleID_];
}

uint64_t outlined init with copy of RentalCarReservation?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_34_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_51();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t instantiation function for generic protocol witness table for PartialExtractedAttributes(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PartialExtractedAttributes and conformance PartialExtractedAttributes, MEMORY[0x277D37478], &protocol conformance descriptor for PartialExtractedAttributes);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PartialExtractedAttributes(void *a1)
{
  v2 = MEMORY[0x277D37478];
  a1[1] = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PartialExtractedAttributes and conformance PartialExtractedAttributes, MEMORY[0x277D37478], MEMORY[0x277D37490]);
  a1[2] = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PartialExtractedAttributes and conformance PartialExtractedAttributes, v2, MEMORY[0x277D37480]);
  result = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PartialExtractedAttributes and conformance PartialExtractedAttributes, v2, MEMORY[0x277D37488]);
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PreExtractedCard.Keys and conformance PreExtractedCard.Keys()
{
  result = lazy protocol witness table cache variable for type PreExtractedCard.Keys and conformance PreExtractedCard.Keys;
  if (!lazy protocol witness table cache variable for type PreExtractedCard.Keys and conformance PreExtractedCard.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedCard.Keys and conformance PreExtractedCard.Keys);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PreExtractedCard(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedCard and conformance PreExtractedCard, MEMORY[0x277D37270], &protocol conformance descriptor for PreExtractedCard);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PreExtractedCard(void *a1)
{
  v2 = MEMORY[0x277D37270];
  a1[1] = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedCard and conformance PreExtractedCard, MEMORY[0x277D37270], MEMORY[0x277D37288]);
  a1[2] = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedCard and conformance PreExtractedCard, v2, MEMORY[0x277D37278]);
  result = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedCard and conformance PreExtractedCard, v2, MEMORY[0x277D37280]);
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PreExtractedContact.Keys and conformance PreExtractedContact.Keys()
{
  result = lazy protocol witness table cache variable for type PreExtractedContact.Keys and conformance PreExtractedContact.Keys;
  if (!lazy protocol witness table cache variable for type PreExtractedContact.Keys and conformance PreExtractedContact.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedContact.Keys and conformance PreExtractedContact.Keys);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PreExtractedContact(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedContact and conformance PreExtractedContact, MEMORY[0x277D37308], &protocol conformance descriptor for PreExtractedContact);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PreExtractedContact(void *a1)
{
  v2 = MEMORY[0x277D37308];
  a1[1] = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedContact and conformance PreExtractedContact, MEMORY[0x277D37308], MEMORY[0x277D37320]);
  a1[2] = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedContact and conformance PreExtractedContact, v2, MEMORY[0x277D37310]);
  result = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedContact and conformance PreExtractedContact, v2, MEMORY[0x277D37318]);
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PreExtractedBreadcrumb.Keys and conformance PreExtractedBreadcrumb.Keys()
{
  result = lazy protocol witness table cache variable for type PreExtractedBreadcrumb.Keys and conformance PreExtractedBreadcrumb.Keys;
  if (!lazy protocol witness table cache variable for type PreExtractedBreadcrumb.Keys and conformance PreExtractedBreadcrumb.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedBreadcrumb.Keys and conformance PreExtractedBreadcrumb.Keys);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PreExtractedBreadcrumb(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb, MEMORY[0x277D373F8], &protocol conformance descriptor for PreExtractedBreadcrumb);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PreExtractedBreadcrumb(void *a1)
{
  v2 = MEMORY[0x277D373F8];
  a1[1] = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb, MEMORY[0x277D373F8], MEMORY[0x277D37410]);
  a1[2] = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb, v2, MEMORY[0x277D37400]);
  result = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb, v2, MEMORY[0x277D37408]);
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PreExtractedSharedLink.Keys and conformance PreExtractedSharedLink.Keys()
{
  result = lazy protocol witness table cache variable for type PreExtractedSharedLink.Keys and conformance PreExtractedSharedLink.Keys;
  if (!lazy protocol witness table cache variable for type PreExtractedSharedLink.Keys and conformance PreExtractedSharedLink.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedSharedLink.Keys and conformance PreExtractedSharedLink.Keys);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PreExtractedSharedLink(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedSharedLink and conformance PreExtractedSharedLink, MEMORY[0x277D37418], &protocol conformance descriptor for PreExtractedSharedLink);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PreExtractedSharedLink(void *a1)
{
  v2 = MEMORY[0x277D37418];
  a1[1] = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedSharedLink and conformance PreExtractedSharedLink, MEMORY[0x277D37418], MEMORY[0x277D37430]);
  a1[2] = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedSharedLink and conformance PreExtractedSharedLink, v2, MEMORY[0x277D37420]);
  result = lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(&lazy protocol witness table cache variable for type PreExtractedSharedLink and conformance PreExtractedSharedLink, v2, MEMORY[0x277D37428]);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type PartialExtractedAttributes and conformance PartialExtractedAttributes(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for PreExtractedCard.Keys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PreExtractedCard.Keys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PreExtractedBreadcrumb.Keys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PreExtractedContact.Keys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t outlined assign with take of ShippingOrder?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_34_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_51();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_3_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_5_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a24, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, __n128 a25)
{
  result = a25;
  *(v25 - 128) = a23;
  *(v25 - 112) = a25;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_41(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_11_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_26_22(uint64_t a1)
{

  return _bridgeAnyObjectToAny(_:)();
}

uint64_t OUTLINED_FUNCTION_28_24(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

id OUTLINED_FUNCTION_30_22()
{

  return [v0 (v1 + 607)];
}

id OUTLINED_FUNCTION_34_26()
{

  return [v0 (v1 + 607)];
}

void *OUTLINED_FUNCTION_35_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{

  return _bridgeAnyObjectToAny(_:)();
}

uint64_t OUTLINED_FUNCTION_42_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_43_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_51_17(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FlightReservation.setResolvedFlight(_:)(Swift::String a1)
{
  countAndFlagsBits = a1._countAndFlagsBits;
  v191 = type metadata accessor for FlightSnippet.Airport(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
  v17 = OUTLINED_FUNCTION_114(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_2();
  v30 = OUTLINED_FUNCTION_28_2(v29);
  v31 = type metadata accessor for FlightSnippet.Leg(v30);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_36();
  v189 = v34 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v35);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_194_1();
  v37 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v186 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v40);
  v42 = &v180[-v41];
  type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_14();
  v187 = v44;
  v188 = v43;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_46_14();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
  v47 = OUTLINED_FUNCTION_114(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_36_21();
  MEMORY[0x28223BE20](v48);
  v50 = &v180[-v49];

  FlightReservation._resolvedFlightJSON.setter();
  FlightReservation.leg.getter(v50);
  v51 = v31;
  if (__swift_getEnumTagSinglePayload(v50, 1, v31) == 1)
  {
    outlined destroy of FlightSnippet.Leg?(v50, &_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
    v52 = 1;
    v53 = 0.0;
  }

  else
  {
    countAndFlagsBits = v2;
    FlightReservation.flightDepartureDateComponents.getter();
    DateComponents.date.getter();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v37);
    v181 = EnumTagSinglePayload == 1;
    if (EnumTagSinglePayload == 1)
    {
      (*(v187 + 8))(v3, v188);
      outlined destroy of FlightSnippet.Leg?(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v53 = 0.0;
    }

    else
    {
      v55 = v186;
      (*(v186 + 32))(v42, v4, v37);
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();
      v56 = v185;
      Date.init(timeIntervalSince1970:)();
      Date.timeIntervalSince(_:)();
      v53 = fabs(v57);
      v58 = *(v55 + 8);
      v58(v56, v37);
      v58(v42, v37);
      (*(v187 + 8))(v3, v188);
    }

    OUTLINED_FUNCTION_17_33();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v50, v59);
    v52 = v181;
  }

  FlightReservation.leg.getter(v1);
  v60 = OUTLINED_FUNCTION_11_1();
  if (__swift_getEnumTagSinglePayload(v60, v61, v51) == 1)
  {
    outlined destroy of FlightSnippet.Leg?(v1, &_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
    goto LABEL_17;
  }

  v62 = v1;
  v63 = v189;
  outlined init with take of FlightSnippet.Leg(v62, v189, type metadata accessor for FlightSnippet.Leg);
  if ((v52 & 1) != 0 || v53 >= 3600.0)
  {
    OUTLINED_FUNCTION_17_33();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v63, v82);
LABEL_17:
    FlightReservation._resolvedFlightJSON.setter();
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    v84 = __swift_project_value_buffer(v83, static Logging.search);
    v85 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v86 = OUTLINED_FUNCTION_60_7();
    if (!os_log_type_enabled(v86, v87))
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_28_3();
    v88 = swift_slowAlloc();
    *v88 = 134217984;
    v89 = -1.0;
    if (!v52)
    {
      v89 = v53;
    }

    if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v90 = 1;
    }

    else
    {
      v90 = v52;
    }

    if (v90 == 1)
    {
      if (v89 > -9.22337204e18)
      {
        if (v89 < 9.22337204e18)
        {
          *(v88 + 4) = v89;
          _os_log_impl(&dword_25D85C000, v85, v84, "Rejecting resolved flight - data doesn’t align with pre-extracted info (timeInterval: %ld.", v88, 0xCu);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
LABEL_29:

          lazy protocol witness table accessor for type EagerResolutionError and conformance EagerResolutionError();
          swift_allocError();
          *v91 = 0;
          swift_willThrow();
          return;
        }

        goto LABEL_72;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  v64 = v184;
  FlightSnippet.Leg.arrivalDateComponents.getter(v184);
  FlightReservation.flightArrivalDateComponents.setter();
  FlightSnippet.Leg.departureDateComponents.getter(v64);
  FlightReservation.flightDepartureDateComponents.setter();
  v65 = *(v63 + *(v51 + 20));
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();

  FlightReservation.flightArrivalTerminal.setter();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v66 = *(v65 + 64);

  FlightReservation.flightDepartureTerminal.setter();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_251_1();
  OUTLINED_FUNCTION_50_9();
  outlined init with copy of ResourceBundle?(v67, v68, v69, v70);
  OUTLINED_FUNCTION_70_12();
  LODWORD(v64) = __swift_getEnumTagSinglePayload(v71, v72, v73);
  OUTLINED_FUNCTION_33_13();
  outlined destroy of FlightSnippet.Leg?(v74, v75, v76);
  if (v64 != 1)
  {
    OUTLINED_FUNCTION_131_2();
    outlined init with copy of ResourceBundle?(v77, v78, v79, v80);
    OUTLINED_FUNCTION_11_39();
    if (v81)
    {
      OUTLINED_FUNCTION_5_43(0xE000000000000000);
      OUTLINED_FUNCTION_11_39();
      v95 = v182;
      if (!v81)
      {
        outlined destroy of FlightSnippet.Leg?(&_s10OmniSearch13FlightSnippetV7AirportVSgMR, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_51();
      OUTLINED_FUNCTION_113_10();
      outlined init with take of FlightSnippet.Leg(v92, v93, v94);
      v95 = v182;
    }

    OUTLINED_FUNCTION_320_0();
    OUTLINED_FUNCTION_2_52();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v66, v96);
    OUTLINED_FUNCTION_33_26();
    FlightReservation.flightDepartureAirportCode.setter();
    OUTLINED_FUNCTION_131_2();
    outlined init with copy of ResourceBundle?(v97, v98, v99, v100);
    OUTLINED_FUNCTION_11_39();
    if (v81)
    {
      OUTLINED_FUNCTION_5_43(0xE000000000000000);
      OUTLINED_FUNCTION_11_39();
      if (!v81)
      {
        outlined destroy of FlightSnippet.Leg?(&_s10OmniSearch13FlightSnippetV7AirportVSgMR, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_51();
      OUTLINED_FUNCTION_113_10();
      outlined init with take of FlightSnippet.Leg(v101, v102, v103);
    }

    OUTLINED_FUNCTION_319_0();
    OUTLINED_FUNCTION_2_52();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v66, v104);
    OUTLINED_FUNCTION_33_26();
    FlightReservation.flightDepartureAirportName.setter();
    OUTLINED_FUNCTION_131_2();
    outlined init with copy of ResourceBundle?(v105, v106, v107, v108);
    OUTLINED_FUNCTION_11_39();
    if (v81)
    {
      OUTLINED_FUNCTION_5_43(0xE000000000000000);
      OUTLINED_FUNCTION_11_39();
      if (!v81)
      {
        outlined destroy of FlightSnippet.Leg?(&_s10OmniSearch13FlightSnippetV7AirportVSgMR, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_51();
      OUTLINED_FUNCTION_113_10();
      outlined init with take of FlightSnippet.Leg(v109, v110, v111);
    }

    OUTLINED_FUNCTION_322_0();
    OUTLINED_FUNCTION_2_52();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v66, v112);
    OUTLINED_FUNCTION_33_26();
    FlightReservation.flightDepartureAirportLocality.setter();
    OUTLINED_FUNCTION_131_2();
    outlined init with copy of ResourceBundle?(v113, v114, v115, v116);
    OUTLINED_FUNCTION_11_39();
    if (v81)
    {
      OUTLINED_FUNCTION_5_43(0xE000000000000000);
      OUTLINED_FUNCTION_11_39();
      if (!v81)
      {
        outlined destroy of FlightSnippet.Leg?(&_s10OmniSearch13FlightSnippetV7AirportVSgMR, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_51();
      OUTLINED_FUNCTION_113_10();
      outlined init with take of FlightSnippet.Leg(v117, v118, v119);
    }

    OUTLINED_FUNCTION_321_0();
    OUTLINED_FUNCTION_2_52();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v66, v120);
    OUTLINED_FUNCTION_33_26();
    FlightReservation.flightDepartureAirportRegion.setter();
    OUTLINED_FUNCTION_113_10();
    outlined init with copy of ResourceBundle?(v121, v122, v123, v124);
    v125 = OUTLINED_FUNCTION_10_2(&_s10OmniSearch13FlightSnippetV7AirportVSgMd);
    if (v81)
    {
      OUTLINED_FUNCTION_123_11(v125);
      OUTLINED_FUNCTION_10_2(&_s10OmniSearch13FlightSnippetV7AirportVSgMd);
      if (!v81)
      {
        outlined destroy of FlightSnippet.Leg?(&_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_51();
      outlined init with take of FlightSnippet.Leg(&_s10OmniSearch13FlightSnippetV7AirportVSgMd, v95, v126);
    }

    OUTLINED_FUNCTION_2_52();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v95, v127);
    OUTLINED_FUNCTION_33_26();
    FlightReservation.flightDepartureAirportCountry.setter();
  }

  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_251_1();
  OUTLINED_FUNCTION_50_9();
  outlined init with copy of ResourceBundle?(v128, v129, v130, v131);
  OUTLINED_FUNCTION_70_12();
  v135 = __swift_getEnumTagSinglePayload(v132, v133, v134);
  OUTLINED_FUNCTION_33_13();
  outlined destroy of FlightSnippet.Leg?(v136, v137, v138);
  if (v135 != 1)
  {
    OUTLINED_FUNCTION_131_2();
    outlined init with copy of ResourceBundle?(v139, v140, v141, v142);
    OUTLINED_FUNCTION_11_39();
    if (v81)
    {
      OUTLINED_FUNCTION_5_43(0xE000000000000000);
      OUTLINED_FUNCTION_11_39();
      v146 = v183;
      if (!v81)
      {
        outlined destroy of FlightSnippet.Leg?(&_s10OmniSearch13FlightSnippetV7AirportVSgMR, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_51();
      OUTLINED_FUNCTION_113_10();
      outlined init with take of FlightSnippet.Leg(v143, v144, v145);
      v146 = v183;
    }

    OUTLINED_FUNCTION_320_0();
    OUTLINED_FUNCTION_2_52();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v66, v147);
    OUTLINED_FUNCTION_33_26();
    FlightReservation.flightArrivalAirportCode.setter();
    OUTLINED_FUNCTION_131_2();
    outlined init with copy of ResourceBundle?(v148, v149, v150, v151);
    OUTLINED_FUNCTION_11_39();
    if (v81)
    {
      OUTLINED_FUNCTION_5_43(0xE000000000000000);
      OUTLINED_FUNCTION_11_39();
      if (!v81)
      {
        outlined destroy of FlightSnippet.Leg?(&_s10OmniSearch13FlightSnippetV7AirportVSgMR, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_51();
      OUTLINED_FUNCTION_113_10();
      outlined init with take of FlightSnippet.Leg(v152, v153, v154);
    }

    OUTLINED_FUNCTION_319_0();
    OUTLINED_FUNCTION_2_52();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v66, v155);
    OUTLINED_FUNCTION_33_26();
    FlightReservation.flightArrivalAirportName.setter();
    OUTLINED_FUNCTION_131_2();
    outlined init with copy of ResourceBundle?(v156, v157, v158, v159);
    OUTLINED_FUNCTION_11_39();
    if (v81)
    {
      OUTLINED_FUNCTION_5_43(0xE000000000000000);
      OUTLINED_FUNCTION_11_39();
      if (!v81)
      {
        outlined destroy of FlightSnippet.Leg?(&_s10OmniSearch13FlightSnippetV7AirportVSgMR, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_51();
      OUTLINED_FUNCTION_113_10();
      outlined init with take of FlightSnippet.Leg(v160, v161, v162);
    }

    OUTLINED_FUNCTION_322_0();
    OUTLINED_FUNCTION_2_52();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v66, v163);
    OUTLINED_FUNCTION_33_26();
    FlightReservation.flightArrivalAirportLocality.setter();
    OUTLINED_FUNCTION_131_2();
    outlined init with copy of ResourceBundle?(v164, v165, v166, v167);
    OUTLINED_FUNCTION_11_39();
    if (v81)
    {
      OUTLINED_FUNCTION_5_43(0xE000000000000000);
      OUTLINED_FUNCTION_11_39();
      if (!v81)
      {
        outlined destroy of FlightSnippet.Leg?(&_s10OmniSearch13FlightSnippetV7AirportVSgMR, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_51();
      OUTLINED_FUNCTION_113_10();
      outlined init with take of FlightSnippet.Leg(v168, v169, v170);
    }

    OUTLINED_FUNCTION_321_0();
    OUTLINED_FUNCTION_2_52();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v66, v171);
    OUTLINED_FUNCTION_33_26();
    FlightReservation.flightArrivalAirportRegion.setter();
    OUTLINED_FUNCTION_113_10();
    outlined init with copy of ResourceBundle?(v172, v173, v174, v175);
    v176 = OUTLINED_FUNCTION_10_2(&_s10OmniSearch13FlightSnippetV7AirportVSgMd);
    if (v81)
    {
      OUTLINED_FUNCTION_123_11(v176);
      OUTLINED_FUNCTION_10_2(&_s10OmniSearch13FlightSnippetV7AirportVSgMd);
      if (!v81)
      {
        outlined destroy of FlightSnippet.Leg?(&_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_51();
      outlined init with take of FlightSnippet.Leg(&_s10OmniSearch13FlightSnippetV7AirportVSgMd, v146, v177);
    }

    OUTLINED_FUNCTION_2_52();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v146, v178);
    OUTLINED_FUNCTION_33_26();
    FlightReservation.flightArrivalAirportCountry.setter();
  }

  FlightReservation.flightArrivalDateString.setter();
  FlightReservation.flightDepartureDateString.setter();
  OUTLINED_FUNCTION_17_33();
  _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v189, v179);
}

void FlightReservation.init(flightNumber:flightCarrierCode:bundleId:flightDepartureDateComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v22;
  a20 = v23;
  v165 = v24;
  v166 = v26;
  v167 = v25;
  v168 = v28;
  v169 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_114(v29);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_194_1();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v32 = OUTLINED_FUNCTION_114(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_14_2();
  v164 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v35);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_49_3();
  v176 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  OUTLINED_FUNCTION_114(v38);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_49_3();
  v174 = v40;
  OUTLINED_FUNCTION_78_0();
  v41 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_14();
  v163 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_7_4();
  v162 = v46;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_14_2();
  v161 = v48;
  OUTLINED_FUNCTION_78_0();
  v173 = type metadata accessor for FlightDesignator();
  OUTLINED_FUNCTION_14();
  v50 = v49;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_36();
  v54 = v53 - v52;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v56 = OUTLINED_FUNCTION_114(v55);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_123_8();
  v60 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_14();
  v62 = v61;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_36();
  v66 = v65 - v64;
  UUID.init()();
  v67 = UUID.uuidString.getter();
  OUTLINED_FUNCTION_167_4(v67, v68);
  (*(v62 + 8))(v66, v60);
  v69 = type metadata accessor for URL();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v69);
  v160 = v20;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v69);

  FlightDesignator.init(number:airline:)();
  FlightDesignator.airline.getter();
  v77 = v76;
  v78 = FlightDesignator.number.getter();
  v80 = v79;

  MEMORY[0x25F89F6C0](v78, v80);

  OUTLINED_FUNCTION_288_0(v77);
  (*(v50 + 8))(v54, v173);
  v81 = *(v163 + 16);
  v81(v161, v165, v41);
  type metadata accessor for Calendar();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
  type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)(v174, v176, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_25DBC8180;
  *(v94 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v94 + 40) = v95;
  v96 = (v94 + 40);
  v81(v21, v161, v41);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v41);
  v172 = dateString(fromDateComponents:)(v21);
  v101 = v100;
  outlined destroy of FlightSnippet.Leg?(v21, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v157 = v81;
  v81(v21, v162, v41);
  OUTLINED_FUNCTION_44_0();
  v159 = v41;
  __swift_storeEnumTagSinglePayload(v102, v103, v104, v41);
  v170 = dateString(fromDateComponents:)(v21);
  v171 = v105;
  outlined destroy of FlightSnippet.Leg?(v21, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v106 = 0;
  v175 = *(v94 + 16);
  v177 = v94;
  OUTLINED_FUNCTION_205_5(*MEMORY[0x277CC2898]);
  OUTLINED_FUNCTION_230_3(*MEMORY[0x277CC2848]);
  OUTLINED_FUNCTION_259_4(*MEMORY[0x277CC28C0]);
  OUTLINED_FUNCTION_190_8(*MEMORY[0x277CC2860]);
  v107 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_188_7(*MEMORY[0x277CC28E0]);
  while (1)
  {
    if (v175 == v106)
    {
      OUTLINED_FUNCTION_8_40();
      _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSSaySS_SStGTt0g5Tm(v107, v139, v140, v141);
      OUTLINED_FUNCTION_69_15();
      outlined init with copy of ResourceBundle?(v142, v143, v144, v145);
      OUTLINED_FUNCTION_131_2();
      outlined init with copy of ResourceBundle?(v146, v147, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v148 = OUTLINED_FUNCTION_226_1(&a10);
      v157(v148, v161, v159);
      v157(v158, v162, v159);
      OUTLINED_FUNCTION_107_8();
      outlined init with copy of ResourceBundle?(v149, v150, v151, v152);
      OUTLINED_FUNCTION_120_9();
      OUTLINED_FUNCTION_126_13();
      OUTLINED_FUNCTION_136_11();
      OUTLINED_FUNCTION_241_4();
      FlightReservation.init(id:answers:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:timeIsUnknown:flightNumber:flightCheckInUrl:flightBookingInfoUrl:flightCarrier:flightCarrierCode:flightDesignator:flightDepartureDateComponents:flightArrivalDateComponents:flightArrivalAirportAddress:flightDepartureAirportAddress:flightArrivalAirportCode:flightDepartureAirportCode:flightArrivalAirportCountry:flightDepartureAirportCountry:flightArrivalAirportLocality:flightDepartureAirportLocality:flightArrivalAirportName:flightDepartureAirportName:flightArrivalAirportRegion:flightDepartureAirportRegion:flightConfirmationNumber:flightPassengerNames:flightPassengerSeatNumbers:flightArrivalTerminal:flightDepartureTerminal:flightBookingProvider:flightBoardingTimeDate:flightDepartureGate:flightArrivalGate:flightDuration:flightCostCurrency:flightCostAmount:flightStatus:flightUpdateStatus:flightDepartureDateString:flightArrivalDateString:_resolvedFlightJSON();
      v153 = *(v163 + 8);
      v153(v165, v159);
      outlined destroy of FlightSnippet.Leg?(v164, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v153(v162, v159);
      v153(v161, v159);
      outlined destroy of FlightSnippet.Leg?(v160, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      OUTLINED_FUNCTION_33_13();
      outlined destroy of FlightSnippet.Leg?(v154, v155, v156);
      OUTLINED_FUNCTION_148();
      return;
    }

    if (v106 >= *(v177 + 16))
    {
      break;
    }

    v108 = *v96;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_201_6();
    v110 = v110 && v109 == v108;
    if (v110)
    {

LABEL_46:
      if (!v101)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_83_14();
      v128 = v127 + 2;
      v129 = 0x800000025DBF73C0;
      v130 = v172;
      v131 = v101;
      goto LABEL_48;
    }

    v111 = OUTLINED_FUNCTION_54_22();

    if (v111)
    {
      goto LABEL_46;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_201_6();
    if (v110 && v112 == v108)
    {

LABEL_54:
      v131 = v171;
      if (!v171)
      {
        goto LABEL_56;
      }

      v128 = 0xD000000000000017;
      v129 = 0x800000025DBF73E0;
      v130 = v170;
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_54_22();
    OUTLINED_FUNCTION_282_1();
    if (v111)
    {
      goto LABEL_54;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_201_6();
    if (v110 && v114 == v108)
    {

LABEL_59:

      MEMORY[0x25F89F6C0](v169, v168);

      v130 = v167;
      v131 = v166;
      v128 = 0x754E746867696C66;
      v129 = 0xEC0000007265626DLL;
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_54_22();
    OUTLINED_FUNCTION_282_1();
    if (v111)
    {
      goto LABEL_59;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_201_6();
    if (v110 && v116 == v108)
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_54_22();
    OUTLINED_FUNCTION_282_1();
    if (v111)
    {
      goto LABEL_56;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_201_6();
    if (v110 && v118 == v108)
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_54_22();
    OUTLINED_FUNCTION_282_1();
    if (v111)
    {
      goto LABEL_56;
    }

    OUTLINED_FUNCTION_298_0();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_201_6();
    if (v110 && v120 == v108)
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_54_22();
    OUTLINED_FUNCTION_282_1();
    if (v111)
    {
      goto LABEL_56;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_201_6();
    if (v110 && v122 == v108)
    {
    }

    else
    {
      OUTLINED_FUNCTION_54_22();
      OUTLINED_FUNCTION_282_1();
      if ((v111 & 1) == 0)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        OUTLINED_FUNCTION_201_6();
        if (v110 && v124 == v108)
        {
LABEL_60:
        }

        else
        {
          v126 = OUTLINED_FUNCTION_54_22();

          if ((v126 & 1) == 0)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }
        }

LABEL_56:

        goto LABEL_57;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_286_0();
    v130 = BidirectionalCollection<>.joined(separator:)();
    v131 = v137;

    OUTLINED_FUNCTION_83_14();
    v128 = v138 + 3;
    v129 = 0x800000025DBF75C0;
LABEL_48:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v107 = v135;
    }

    v133 = *(v107 + 16);
    v132 = *(v107 + 24);
    if (v133 >= v132 >> 1)
    {
      OUTLINED_FUNCTION_26_3(v132);
      OUTLINED_FUNCTION_160_6();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v107 = v136;
    }

    *(v107 + 16) = v133 + 1;
    v134 = (v107 + 32 * v133);
    v134[4] = v128;
    v134[5] = v129;
    v134[6] = v130;
    v134[7] = v131;
LABEL_57:
    v96 += 2;
    ++v106;
  }

  __break(1u);
}

uint64_t FlightReservation.resolvedFlight.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for JSONDecodingOptions();
  v3 = OUTLINED_FUNCTION_114(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  FlightReservation._resolvedFlightJSON.getter();
  if (v4)
  {
    v5 = type metadata accessor for FlightSnippet.Flight(0);
    JSONDecodingOptions.init()();
    OUTLINED_FUNCTION_135_8();
    lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v6, v7, &protocol conformance descriptor for FlightSnippet.Flight);
    OUTLINED_FUNCTION_121_0();
    Message.init(jsonString:options:)();
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
  }

  else
  {
    type metadata accessor for FlightSnippet.Flight(0);
    OUTLINED_FUNCTION_92();

    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOSaySS_AGtGTt0g5(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15OmniSearchTypes34AnswerSynthesisExtractionCandidateOGMd, &_ss18_DictionaryStorageCySS15OmniSearchTypes34AnswerSynthesisExtractionCandidateOGMR);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v6 = v1;
  v2 = OUTLINED_FUNCTION_11_1();
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v2, v3, v4);
  return v6;
}

uint64_t _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSSaySS_SStGTt0g5Tm(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_326_0(a1, a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t FlightReservation.status.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
  OUTLINED_FUNCTION_114(v0);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v1);
  v3 = v13 - v2;
  FlightReservation.leg.getter(v13 - v2);
  v4 = type metadata accessor for FlightSnippet.Leg(0);
  v5 = OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_166(v5, v6, v4);
  if (v7)
  {
    outlined destroy of FlightSnippet.Leg?(v3, &_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v8 = *&v3[*(v4 + 20)];
    OUTLINED_FUNCTION_28_1();
    swift_beginAccess();
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    OUTLINED_FUNCTION_17_33();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v3, v11);
  }

  v13[4] = v9;
  v14 = v10;
  return String.init<A>(describing:)();
}

uint64_t FlightReservation.flightCost.getter@<X0>(uint64_t a1@<X8>)
{
  FlightReservation.flightCostAmount.getter();
  if ((v2 & 0x100000000) != 0 || (FlightReservation.flightCostCurrency.getter(), !v3))
  {
    v4 = 1;
  }

  else
  {
    IntentCurrencyAmount.init(amount:currencyCode:)();
    v4 = 0;
  }

  v5 = type metadata accessor for IntentCurrencyAmount();

  return __swift_storeEnumTagSinglePayload(a1, v4, 1, v5);
}

uint64_t FlightReservation.destinationForDialog.getter(uint64_t a1)
{
  result = FlightReservation.flightArrivalAirportLocality.getter();
  if (!v2)
  {
    result = FlightReservation.flightArrivalAirportRegion.getter();
    if (!v3)
    {
      result = FlightReservation.flightArrivalAirportName.getter();
      if (!v4)
      {
        result = FlightReservation.flightArrivalAirportCode.getter();
        if (!v5)
        {
          return FlightReservation.flightArrivalAirportCountry.getter();
        }
      }
    }
  }

  return result;
}

uint64_t specialized SearchItem.llmConsumableDescription.getter()
{
  return VoiceMemo.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return Reminder.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return Contact.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return Safari.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return Photo.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return Party.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return Trip.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return TicketedTransportation.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return PreExtractedSharedLink.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return PreExtractedBreadcrumb.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return RestaurantReservation.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return RentalCarReservation.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return GenericSpotlightItem.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return VoicemailTranscript.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return PreExtractedContact.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return WalletTransaction.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return MobileSMSDocument.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return FlightReservation.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return PreExtractedCard.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return HotelReservation.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return ShippingOrder.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return EmailDocument.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return CalendarEvent.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return TicketedShow.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return PhoneHistory.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return NoteDocument.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return JournalEntry.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return FileDocument.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return Appointment.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return WalletPass.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return WebAnswer.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return WebImage.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return Answer.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return AppEntityItem.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  memcpy(v2, v0, sizeof(v2));
  return GeoLocation.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

{
  return KGDocument.llmConsumableDescription(locale:)(0)._countAndFlagsBits;
}

uint64_t FlightReservation.init(item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  FlightReservation.init(item:answerAttributes:)(a1, MEMORY[0x277D84F90], &v14 - v6);
  v8 = type metadata accessor for FlightReservation();
  v9 = OUTLINED_FUNCTION_93_6();
  if (__swift_getEnumTagSinglePayload(v9, v10, v8))
  {
    outlined destroy of FlightSnippet.Leg?(v7, &_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
    v11 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_103_10();
    v12();
    v11 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v11, 1, v8);
}

uint64_t HotelReservation.init(item:)(uint64_t a1, uint64_t *x1_0, uint64_t *x2_0, void (*a2)(uint64_t, void, uint64_t, uint64_t), uint64_t (*a3)(void))
{
  v9 = OUTLINED_FUNCTION_326_0(a1, x1_0, x2_0);
  v10 = OUTLINED_FUNCTION_114(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_46_14();
  v12 = type metadata accessor for FeatureFlagService();
  v13 = OUTLINED_FUNCTION_197_0(v12);
  a2(a1, MEMORY[0x277D84F90], 1, v13);
  a3(0);
  v14 = OUTLINED_FUNCTION_291_0();
  if (__swift_getEnumTagSinglePayload(v14, 1, a3))
  {
    OUTLINED_FUNCTION_103_10();
    outlined destroy of FlightSnippet.Leg?(v15, v16, v17);
  }

  else
  {
    OUTLINED_FUNCTION_51();
    v18 = OUTLINED_FUNCTION_65_15();
    v19(v18);
  }

  OUTLINED_FUNCTION_102_10();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v24 = OUTLINED_FUNCTION_93_0();
  if (__swift_getEnumTagSinglePayload(v24, v25, a3))
  {
    OUTLINED_FUNCTION_103_10();
    outlined destroy of FlightSnippet.Leg?(v26, v27, v28);
  }

  else
  {
    OUTLINED_FUNCTION_51();
    v29 = OUTLINED_FUNCTION_242_3();
    v30(v29);
  }

  OUTLINED_FUNCTION_102_10();
  return __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
}

void preExtractedSearchResult(from:spotlightRankingItem:eventSourceItemsMap:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v845 = v23;
  v841 = v24;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes13ShippingOrderVSgMd, &_s15OmniSearchTypes13ShippingOrderVSgMR);
  OUTLINED_FUNCTION_114(v29);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v31);
  v787 = type metadata accessor for ShippingOrder();
  OUTLINED_FUNCTION_14();
  v786 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
  OUTLINED_FUNCTION_114(v37);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v39);
  v792 = type metadata accessor for Trip();
  OUTLINED_FUNCTION_14();
  v791 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
  OUTLINED_FUNCTION_114(v45);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v47);
  v798 = type metadata accessor for Party();
  OUTLINED_FUNCTION_14();
  v796[1] = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
  OUTLINED_FUNCTION_114(v53);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v55);
  v805 = type metadata accessor for Appointment();
  OUTLINED_FUNCTION_14();
  v804[1] = v56;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
  OUTLINED_FUNCTION_114(v61);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v63);
  v817 = type metadata accessor for TicketedShow();
  OUTLINED_FUNCTION_14();
  v811[1] = v64;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
  OUTLINED_FUNCTION_114(v69);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v71);
  v821 = type metadata accessor for TicketedTransportation();
  OUTLINED_FUNCTION_14();
  v819[0] = v72;
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v75);
  v77 = &v771 - v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
  OUTLINED_FUNCTION_114(v78);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v80);
  v81 = type metadata accessor for RentalCarReservation();
  OUTLINED_FUNCTION_156_1(v81);
  OUTLINED_FUNCTION_14();
  v825 = v82;
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v86);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
  OUTLINED_FUNCTION_114(v87);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v89);
  v832 = type metadata accessor for RestaurantReservation();
  OUTLINED_FUNCTION_14();
  v830 = v90;
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v94);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
  OUTLINED_FUNCTION_114(v95);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v97);
  v839 = type metadata accessor for HotelReservation();
  OUTLINED_FUNCTION_14();
  v833 = v98;
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v102);
  type metadata accessor for SpotlightRankingItem();
  OUTLINED_FUNCTION_14();
  v842 = v103;
  v843 = v104;
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_14_2();
  v115 = OUTLINED_FUNCTION_28_2(v114);
  v847 = type metadata accessor for SearchResult(v115);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_14_2();
  v838 = v126;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v128 = OUTLINED_FUNCTION_114(v127);
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v142);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v145);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_14_2();
  v149 = OUTLINED_FUNCTION_28_2(v148);
  v840 = type metadata accessor for SearchResultItem(v149);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v153);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v154);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v156);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v157);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v158);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_216_3();
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
  OUTLINED_FUNCTION_114(v160);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v161);
  v163 = (&v771 - v162);
  v164 = type metadata accessor for FlightReservation();
  OUTLINED_FUNCTION_14();
  v844 = v165;
  MEMORY[0x28223BE20](v166);
  OUTLINED_FUNCTION_36();
  v169 = v168 - v167;
  v846 = v26;
  v170 = [v26 attributeSet];
  v171 = [v170 attributeForKey_];
  v819[1] = v77;
  if (v171)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v850 = 0u;
    v851 = 0u;
  }

  OUTLINED_FUNCTION_16_31();
  if (!v172)
  {
    outlined destroy of FlightSnippet.Leg?(&v852, &_sypSgMd, &_sypSgMR);
    goto LABEL_9;
  }

  if ((OUTLINED_FUNCTION_324_0() & 1) == 0)
  {
LABEL_9:
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v175 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v175, static Logging.search);
    v176 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v177 = OUTLINED_FUNCTION_60_7();
    if (os_log_type_enabled(v177, v178))
    {
      v179 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v179);
      OUTLINED_FUNCTION_110_4();
      _os_log_impl(v180, v181, v182, v183, v184, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v185 = 1;
    goto LABEL_37;
  }

  v779 = v28;
  v776 = v848;
  v778 = v849;
  v173 = MEMORY[0x25F89F4C0](0xD000000000000025, 0x800000025DBF6D00);
  v174 = [v170 attributeForKey_];

  if (v174)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v850 = 0u;
    v851 = 0u;
  }

  OUTLINED_FUNCTION_16_31();
  if (v186)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v187 = v848;
      goto LABEL_20;
    }
  }

  else
  {
    outlined destroy of FlightSnippet.Leg?(&v852, &_sypSgMd, &_sypSgMR);
  }

  v187 = MEMORY[0x277D84F90];
LABEL_20:
  v777 = v187;
  v188 = [v846 uniqueIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OUTLINED_FUNCTION_232();
  v28 = v845;
  v189 = specialized Dictionary.subscript.getter();

  if (!v189)
  {
    goto LABEL_30;
  }

  if (!specialized Array.count.getter())
  {

LABEL_30:

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v209 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v209, static Logging.search);
    v210 = v846;

    v211 = Logger.logObject.getter();
    v212 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v211, v212))
    {
      v213 = swift_slowAlloc();
      v852 = swift_slowAlloc();
      OUTLINED_FUNCTION_313_0(4.8154e-34);
      v214 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v213 + 4) = v214;
      *(v213 + 12) = 2080;
      outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.mailMessageID.getter([v210 attributeSet]);
      v215 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v213 + 14) = v215;
      *(v213 + 22) = 2080;
      outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.eventMessageIdentifier.getter([v210 attributeSet]);
      v216 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v213 + 24) = v216;
      *(v213 + 32) = 2080;
      outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.eventSourceBundleIdentifier.getter([v210 attributeSet]);
      v217 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v213 + 34) = v217;
      *(v213 + 42) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16CSSearchableItemCGMd, &_sSaySo16CSSearchableItemCGMR);
      Dictionary.description.getter();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v213 + 44) = v28;
      _os_log_impl(&dword_25D85C000, v211, v212, "Pre-extracted event - missing source. eventType: %s, mailMessageId: %s, eventMessageId: %s, sourceBundle:%s, sourceMapping: %s", v213, 0x34u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    else
    {
    }

    goto LABEL_36;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v189 & 0xC000000000000001) != 0)
  {
    v190 = MEMORY[0x25F89FFD0](0, v189);
  }

  else
  {
    v190 = *(v189 + 32);
  }

  v191 = v190;

  v192 = one-time initialization token for search;
  v845 = v191;
  if (v192 != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v193 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v193, static Logging.search);
  v194 = v170;
  v775 = v189;
  v195 = Logger.logObject.getter();
  v196 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v195, v196))
  {
    v197 = swift_slowAlloc();
    v774 = swift_slowAlloc();
    *&v850 = v774;
    *v197 = 136643587;
    v852 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v194, &selRef_eventMessageIdentifier);
    v853 = v198;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    HIDWORD(v773) = v196;
    String.init<A>(describing:)();
    v199 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v197 + 4) = v199;
    v772 = v195;
    *(v197 + 12) = 2085;
    v852 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v194, &selRef_mailMessageID);
    v853 = v200;
    String.init<A>(describing:)();
    v201 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v197 + 14) = v201;
    *(v197 + 22) = 2085;
    v852 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v194, &selRef_eventSourceBundleIdentifier);
    v853 = v202;
    String.init<A>(describing:)();
    v203 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v197 + 24) = v203;
    *(v197 + 32) = 2085;
    v852 = [v194 eventSourceIsForwarded];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
    String.init<A>(describing:)();
    v204 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v197 + 34) = v204;
    OUTLINED_FUNCTION_251_0();
    _os_log_impl(v205, v206, v207, v208, v197, 0x2Au);
    OUTLINED_FUNCTION_48_12(v795);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  v218 = v847;
  v219 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v221 = v220;
  v28 = v776;
  v222 = v778;
  v223 = v219 == v776 && v220 == v778;
  if (v223)
  {

    goto LABEL_47;
  }

  v224 = v194;
  v225 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v225)
  {
    v194 = v224;
LABEL_47:

    v226 = v846;
    FlightReservation.init(item:answerAttributes:)(v226, v777, v163);
    OUTLINED_FUNCTION_166(v163, 1, v164);
    v28 = v779;
    if (!v223)
    {
      v835 = v194;
      (*(v844 + 4))(v169, v163, v164);
      v231 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR) + 48);
      OUTLINED_FUNCTION_289_0();
      v232();
      v233 = MEMORY[0x277D84F90];
      *(v20 + v231) = MEMORY[0x277D84F90];
      swift_storeEnumTagMultiPayload();
      v234 = v837;
      v235 = v218;
      v236 = v842;
      (*(v843 + 16))(v837, v841, v842);
      v237 = OUTLINED_FUNCTION_13_2();
      __swift_storeEnumTagSinglePayload(v237, v238, v239, v236);
      v240 = v838;
      *(v838 + v235[7]) = v233;
      v241 = (v240 + v235[10]);
      *v241 = 0;
      v241[1] = 0;
      outlined init with copy of SearchResultItem(v20, v240);
      v242 = type metadata accessor for CSSearchableItem();
      OUTLINED_FUNCTION_4_46();
      lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v243, v244, MEMORY[0x277D85380]);
      v245 = v845;
      CodableNSSecureCoding.init(wrappedValue:)();
      OUTLINED_FUNCTION_251_0();
      outlined init with copy of ResourceBundle?(v246, v247, v248, v249);
      OUTLINED_FUNCTION_70_12();
      OUTLINED_FUNCTION_166(v250, v251, v252);
      if (v253)
      {
        v28 = &_s15OmniSearchTypes20SpotlightRankingItemVSgMd;
        v254 = OUTLINED_FUNCTION_65_15();
        outlined destroy of FlightSnippet.Leg?(v254, v255, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        v218 = v847;
        OUTLINED_FUNCTION_6_34();
        OUTLINED_FUNCTION_19_18();
        OUTLINED_FUNCTION_63_18();

        outlined destroy of FlightSnippet.Leg?(v234, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_0_67();
        _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v20, v257);
        v258 = OUTLINED_FUNCTION_306();
        v259(v258);
        OUTLINED_FUNCTION_144_10();
      }

      else
      {
        OUTLINED_FUNCTION_63_18();

        outlined destroy of FlightSnippet.Leg?(v234, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_0_67();
        _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v20, v265);
        v266 = OUTLINED_FUNCTION_306();
        v267(v266);
        v28 = (v843 + 32);
        v268 = *(v843 + 32);
        v269 = OUTLINED_FUNCTION_48_12(&a12);
        v268(v269, v242, v236);
        v270 = v847;
        v268(v240 + *(v847 + 20), v245, v236);
        OUTLINED_FUNCTION_144_10();
        v218 = v270;
      }

LABEL_59:
      *(v240 + v218[8]) = 1;
      *(v240 + v218[9]) = 1;
      OUTLINED_FUNCTION_31_24();
      v272 = v240;
LABEL_60:
      outlined init with take of FlightSnippet.Leg(v272, v28, v271);
      v185 = 0;
      goto LABEL_38;
    }

    v227 = v845;
    v228 = &_s15OmniSearchTypes17FlightReservationVSgMd;
    v229 = &_s15OmniSearchTypes17FlightReservationVSgMR;
    v230 = v163;
LABEL_65:
    outlined destroy of FlightSnippet.Leg?(v230, v228, v229);
    v185 = 1;
    goto LABEL_38;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_271_1();
  if (v223 && v260 == v222)
  {

    v262 = v839;
    v263 = v835;
LABEL_62:

    v273 = type metadata accessor for FeatureFlagService();
    OUTLINED_FUNCTION_197_0(v273);
    v274 = v846;
    OUTLINED_FUNCTION_66_10();
    OUTLINED_FUNCTION_61_19();
    HotelReservation.init(item:answerAttributes:requireDates:featureFlagService:)(v275, v276, v277, v278, v279, v280, v281, v282, v771, v772, v773, v774, v775, v776, v777, v778, v779, v780, v781, v782, v783, v784);
    v283 = OUTLINED_FUNCTION_65();
    __swift_getEnumTagSinglePayload(v283, v284, v262);
    v285 = v834[1];
    OUTLINED_FUNCTION_144_10();
    if (v286)
    {

      v287 = v845;
      v228 = &_s15OmniSearchTypes16HotelReservationVSgMd;
      v229 = &_s15OmniSearchTypes16HotelReservationVSgMR;
LABEL_64:
      v230 = v221;
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_269_2();
    v288 = v833;
    OUTLINED_FUNCTION_47_11();
    v289();
    v290 = OUTLINED_FUNCTION_106_12();
    v221(v290);
    v291 = OUTLINED_FUNCTION_159_6();
    v292 = (v221)(v291);
    v293 = OUTLINED_FUNCTION_233_4(v292);
    static os_log_type_t.info.getter();
    v294 = OUTLINED_FUNCTION_32_9();
    if (os_log_type_enabled(v294, v295))
    {
      OUTLINED_FUNCTION_90_1();
      v838 = OUTLINED_FUNCTION_51_13();
      v852 = v838;
      *v262 = 136643075;
      specialized Encodable.oms_jsonPrettyPrinted()();
      OUTLINED_FUNCTION_212_3();
      v288 = *(v288 + 8);
      (v288)(v285, v839);
      OUTLINED_FUNCTION_91_8();
      OUTLINED_FUNCTION_92_11();

      v296.value._countAndFlagsBits = OUTLINED_FUNCTION_12_36();
      HotelReservation.llmConsumableDescription(locale:)(v296);
      OUTLINED_FUNCTION_212_3();
      v846 = v288;
      (v288)(v263, v839);
      v218 = v847;
      OUTLINED_FUNCTION_91_8();
      OUTLINED_FUNCTION_92_11();
      OUTLINED_FUNCTION_144_10();

      *(v262 + 14) = v263;
      OUTLINED_FUNCTION_53_16(&dword_25D85C000, v297, v298, "Hotel reservation found: %{sensitive}s ; %{sensitive}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    else
    {

      v301 = OUTLINED_FUNCTION_181_7();
      v221(v301);
      v302 = OUTLINED_FUNCTION_243_3();
      v221(v302);
    }

    OUTLINED_FUNCTION_264_3(&a10);
    OUTLINED_FUNCTION_163_5();
    v844();
    OUTLINED_FUNCTION_309();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_239_2();
    v303 = OUTLINED_FUNCTION_175_7();
    v304(v303);
    OUTLINED_FUNCTION_52_19();
    __swift_storeEnumTagSinglePayload(v305, v306, v307, v308);
    OUTLINED_FUNCTION_94_11(v218[7]);
    v309 = v218[6];
    v310 = type metadata accessor for CSSearchableItem();
    OUTLINED_FUNCTION_4_46();
    lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v311, v312, MEMORY[0x277D85380]);
    v313 = OUTLINED_FUNCTION_156_5();
    OUTLINED_FUNCTION_47_11();
    CodableNSSecureCoding.init(wrappedValue:)();
    OUTLINED_FUNCTION_251_0();
    outlined init with copy of ResourceBundle?(v314, v315, v316, v317);
    v318 = OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_166(v318, v319, v285);
    if (!v223)
    {
      OUTLINED_FUNCTION_63_18();

      outlined destroy of FlightSnippet.Leg?(v288, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_0_67();
      v332 = OUTLINED_FUNCTION_292_0();
      _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v332, v333);
      OUTLINED_FUNCTION_59_11();
      (v846)(v836, v839);
      v334 = *(v169 + 32);
      v335 = &v850 + 1;
LABEL_78:
      v336 = OUTLINED_FUNCTION_48_12(v335);
      v334(v336, v309, v285);
      v334(v263 + v218[5], v310, v285);
LABEL_112:
      *(v263 + v218[8]) = 1;
      *(v263 + v218[9]) = 1;
      OUTLINED_FUNCTION_31_24();
      v272 = v263;
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_47_11();
    outlined destroy of FlightSnippet.Leg?(v320, v321, v322);
    OUTLINED_FUNCTION_6_34();
    OUTLINED_FUNCTION_19_18();
    OUTLINED_FUNCTION_63_18();

    OUTLINED_FUNCTION_47_11();
    outlined destroy of FlightSnippet.Leg?(v324, v325, v326);
    OUTLINED_FUNCTION_0_67();
    v327 = OUTLINED_FUNCTION_292_0();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v327, v328);
    OUTLINED_FUNCTION_59_11();
    v329 = v836;
    v330 = v839;
LABEL_111:
    (v846)(v329, v330);
    goto LABEL_112;
  }

  OUTLINED_FUNCTION_108_10();
  OUTLINED_FUNCTION_174_5();
  v262 = v839;
  v263 = v835;
  if (v221)
  {
    goto LABEL_62;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_271_1();
  if (v223 && v299 == v222)
  {

    OUTLINED_FUNCTION_293_0();
LABEL_80:
    OUTLINED_FUNCTION_144_10();

    v337 = type metadata accessor for FeatureFlagService();
    OUTLINED_FUNCTION_197_0(v337);
    v338 = v846;
    OUTLINED_FUNCTION_66_10();
    OUTLINED_FUNCTION_61_19();
    RestaurantReservation.init(item:answerAttributes:requireDates:featureFlagService:)(v339, v340, v341, v342, v343, v344, v345, v346, v771, SHIDWORD(v771), v772, v773, v774, v775, v776, v777, v778, v779, v780, v781, v782);
    v347 = OUTLINED_FUNCTION_65();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v347, v348, v262);
    v285 = v831[1];
    if (EnumTagSinglePayload)
    {

      v350 = v845;
      v228 = &_s15OmniSearchTypes21RestaurantReservationVSgMd;
      v229 = &_s15OmniSearchTypes21RestaurantReservationVSgMR;
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_269_2();
    v351 = v830;
    OUTLINED_FUNCTION_47_11();
    v352();
    v353 = OUTLINED_FUNCTION_106_12();
    v221(v353);
    v354 = OUTLINED_FUNCTION_159_6();
    v355 = (v221)(v354);
    v356 = OUTLINED_FUNCTION_233_4(v355);
    static os_log_type_t.info.getter();
    v357 = OUTLINED_FUNCTION_32_9();
    if (os_log_type_enabled(v357, v358))
    {
      OUTLINED_FUNCTION_90_1();
      v359 = OUTLINED_FUNCTION_51_13();
      OUTLINED_FUNCTION_203_5(v359);
      *v262 = 136643075;
      specialized Encodable.oms_jsonPrettyPrinted()();
      OUTLINED_FUNCTION_212_3();
      v351 = *(v351 + 8);
      (v351)(v285, v832);
      OUTLINED_FUNCTION_91_8();
      OUTLINED_FUNCTION_92_11();

      v360.value._countAndFlagsBits = OUTLINED_FUNCTION_12_36();
      RestaurantReservation.llmConsumableDescription(locale:)(v360);
      OUTLINED_FUNCTION_212_3();
      v846 = v351;
      (v351)(v263, v832);
      v218 = v847;
      OUTLINED_FUNCTION_91_8();
      OUTLINED_FUNCTION_92_11();
      OUTLINED_FUNCTION_144_10();

      *(v262 + 14) = v263;
      OUTLINED_FUNCTION_53_16(&dword_25D85C000, v361, v362, "Restaurant reservation found: %{sensitive}s ; %{sensitive}s");
      OUTLINED_FUNCTION_61_20();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    else
    {

      v365 = OUTLINED_FUNCTION_181_7();
      v221(v365);
      v366 = OUTLINED_FUNCTION_243_3();
      v221(v366);
    }

    OUTLINED_FUNCTION_264_3(&v850);
    OUTLINED_FUNCTION_163_5();
    v844();
    OUTLINED_FUNCTION_309();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_239_2();
    v367 = OUTLINED_FUNCTION_175_7();
    v368(v367);
    OUTLINED_FUNCTION_52_19();
    __swift_storeEnumTagSinglePayload(v369, v370, v371, v372);
    OUTLINED_FUNCTION_94_11(v218[7]);
    v309 = v218[6];
    v310 = type metadata accessor for CSSearchableItem();
    OUTLINED_FUNCTION_4_46();
    lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v373, v374, MEMORY[0x277D85380]);
    v375 = OUTLINED_FUNCTION_156_5();
    OUTLINED_FUNCTION_47_11();
    CodableNSSecureCoding.init(wrappedValue:)();
    OUTLINED_FUNCTION_251_0();
    outlined init with copy of ResourceBundle?(v376, v377, v378, v379);
    v380 = OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_166(v380, v381, v285);
    if (!v223)
    {
      OUTLINED_FUNCTION_63_18();

      outlined destroy of FlightSnippet.Leg?(v351, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_0_67();
      v393 = OUTLINED_FUNCTION_298_0();
      _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v393, v394);
      OUTLINED_FUNCTION_59_11();
      OUTLINED_FUNCTION_119_9();
      v395();
      v334 = *(v169 + 32);
      v335 = &v839;
      goto LABEL_78;
    }

    OUTLINED_FUNCTION_47_11();
    outlined destroy of FlightSnippet.Leg?(v382, v383, v384);
    OUTLINED_FUNCTION_6_34();
    OUTLINED_FUNCTION_19_18();
    OUTLINED_FUNCTION_63_18();

    OUTLINED_FUNCTION_47_11();
    outlined destroy of FlightSnippet.Leg?(v386, v387, v388);
    OUTLINED_FUNCTION_0_67();
    v389 = OUTLINED_FUNCTION_298_0();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v389, v390);
    OUTLINED_FUNCTION_59_11();
    v329 = v831[6];
    v391 = &a9;
    goto LABEL_110;
  }

  OUTLINED_FUNCTION_108_10();
  OUTLINED_FUNCTION_174_5();
  OUTLINED_FUNCTION_293_0();
  if (v221)
  {
    goto LABEL_80;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_271_1();
  if (v223 && v363 == v222)
  {

    OUTLINED_FUNCTION_206_4();
    v263 = v826;
LABEL_95:
    OUTLINED_FUNCTION_144_10();

    v396 = v846;
    OUTLINED_FUNCTION_66_10();
    RentalCarReservation.init(item:)(v397, v398);
    v399 = OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_166(v399, v400, v262);
    v285 = v824[1];
    if (v223)
    {

      v401 = v845;
      v228 = &_s15OmniSearchTypes20RentalCarReservationVSgMd;
      v229 = &_s15OmniSearchTypes20RentalCarReservationVSgMR;
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_269_2();
    v402 = v825;
    OUTLINED_FUNCTION_47_11();
    v403();
    v404 = OUTLINED_FUNCTION_106_12();
    v221(v404);
    v405 = OUTLINED_FUNCTION_159_6();
    v406 = (v221)(v405);
    v407 = OUTLINED_FUNCTION_233_4(v406);
    static os_log_type_t.info.getter();
    v408 = OUTLINED_FUNCTION_32_9();
    if (os_log_type_enabled(v408, v409))
    {
      OUTLINED_FUNCTION_90_1();
      v411 = OUTLINED_FUNCTION_51_13();
      OUTLINED_FUNCTION_203_5(v411);
      *v262 = 136643075;
      specialized Encodable.oms_jsonPrettyPrinted()();
      OUTLINED_FUNCTION_212_3();
      v402 = *(v402 + 8);
      (v402)(v285, v828);
      OUTLINED_FUNCTION_91_8();
      OUTLINED_FUNCTION_92_11();

      v412.value._countAndFlagsBits = OUTLINED_FUNCTION_12_36();
      RentalCarReservation.llmConsumableDescription(locale:)(v412);
      OUTLINED_FUNCTION_212_3();
      v846 = v402;
      (v402)(v263, v828);
      v218 = v847;
      OUTLINED_FUNCTION_91_8();
      OUTLINED_FUNCTION_92_11();
      OUTLINED_FUNCTION_144_10();

      *(v262 + 14) = v263;
      OUTLINED_FUNCTION_53_16(&dword_25D85C000, v413, v414, "Rental car reservation found: %{sensitive}s ; %{sensitive}s");
      OUTLINED_FUNCTION_61_20();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_206_4();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    else
    {

      v417 = OUTLINED_FUNCTION_181_7();
      v221(v417);
      v418 = OUTLINED_FUNCTION_243_3();
      v221(v418);
    }

    OUTLINED_FUNCTION_264_3(&v840);
    OUTLINED_FUNCTION_163_5();
    v844();
    OUTLINED_FUNCTION_309();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_239_2();
    v419 = OUTLINED_FUNCTION_175_7();
    v420(v419);
    OUTLINED_FUNCTION_52_19();
    __swift_storeEnumTagSinglePayload(v421, v422, v423, v424);
    OUTLINED_FUNCTION_94_11(v218[7]);
    v309 = v218[6];
    v310 = type metadata accessor for CSSearchableItem();
    OUTLINED_FUNCTION_4_46();
    lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v425, v426, MEMORY[0x277D85380]);
    v427 = OUTLINED_FUNCTION_156_5();
    OUTLINED_FUNCTION_47_11();
    CodableNSSecureCoding.init(wrappedValue:)();
    OUTLINED_FUNCTION_251_0();
    outlined init with copy of ResourceBundle?(v428, v429, v430, v431);
    v432 = OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_166(v432, v433, v285);
    if (!v223)
    {
      OUTLINED_FUNCTION_63_18();

      outlined destroy of FlightSnippet.Leg?(v402, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_0_67();
      _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v823, v443);
      OUTLINED_FUNCTION_59_11();
      OUTLINED_FUNCTION_119_9();
      v444();
      v334 = *(v169 + 32);
      v335 = v834;
      goto LABEL_78;
    }

    OUTLINED_FUNCTION_47_11();
    outlined destroy of FlightSnippet.Leg?(v434, v435, v436);
    OUTLINED_FUNCTION_6_34();
    OUTLINED_FUNCTION_19_18();
    OUTLINED_FUNCTION_63_18();

    OUTLINED_FUNCTION_47_11();
    outlined destroy of FlightSnippet.Leg?(v438, v439, v440);
    OUTLINED_FUNCTION_0_67();
    _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v823, v441);
    OUTLINED_FUNCTION_59_11();
    v329 = v827[2];
    v391 = &v849;
LABEL_110:
    v330 = *(v391 - 32);
    goto LABEL_111;
  }

  OUTLINED_FUNCTION_108_10();
  OUTLINED_FUNCTION_174_5();
  OUTLINED_FUNCTION_206_4();
  v263 = v826;
  if (v221)
  {
    goto LABEL_95;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_271_1();
  if (v223 && v415 == v222)
  {

LABEL_114:
    v445 = v821;

    v446 = v846;
    OUTLINED_FUNCTION_66_10();
    TicketedTransportation.init(item:)(v447, v448);
    v449 = OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_166(v449, v450, v445);
    v28 = v779;
    if (!v223)
    {
      OUTLINED_FUNCTION_269_2();
      OUTLINED_FUNCTION_192_7();
      OUTLINED_FUNCTION_47_11();
      v452();
      v453 = *(v263 + 16);
      v454 = v814;
      OUTLINED_FUNCTION_289_0();
      v453();
      v455 = v816;
      OUTLINED_FUNCTION_289_0();
      v844 = v453;
      v456 = (v453)();
      v457 = OUTLINED_FUNCTION_233_4(v456);
      v458 = static os_log_type_t.info.getter();
      v459 = OUTLINED_FUNCTION_32_9();
      if (os_log_type_enabled(v459, v460))
      {
        OUTLINED_FUNCTION_90_1();
        v852 = OUTLINED_FUNCTION_51_13();
        *v445 = 136643075;
        specialized Encodable.oms_jsonPrettyPrinted()();
        OUTLINED_FUNCTION_212_3();
        v462 = *(v263 + 8);
        v462(v454, v821);
        OUTLINED_FUNCTION_91_8();
        OUTLINED_FUNCTION_92_11();

        v463.value._countAndFlagsBits = OUTLINED_FUNCTION_12_36();
        TicketedTransportation.llmConsumableDescription(locale:)(v463);
        OUTLINED_FUNCTION_212_3();
        v846 = v462;
        v462(v455, v821);
        OUTLINED_FUNCTION_91_8();
        OUTLINED_FUNCTION_92_11();
        OUTLINED_FUNCTION_144_10();

        *(v445 + 14) = v455;
        _os_log_impl(&dword_25D85C000, v457, v458, "Ticketed transportation found: %{sensitive}s ; %{sensitive}s", v445, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {

        v466 = *(v263 + 8);
        v466(v455, v445);
        v846 = v466;
        v466(v454, v445);
      }

      OUTLINED_FUNCTION_264_3(&v833);
      OUTLINED_FUNCTION_289_0();
      v844();
      OUTLINED_FUNCTION_309();
      swift_storeEnumTagMultiPayload();
      v468 = v842;
      v467 = v843;
      v469 = v813;
      (*(v843 + 16))(v813, v841, v842);
      v470 = OUTLINED_FUNCTION_49_19();
      __swift_storeEnumTagSinglePayload(v470, v471, v472, v468);
      v218 = v847;
      v240 = v815;
      *(v815 + *(v847 + 28)) = MEMORY[0x277D84F90];
      v473 = (v240 + v218[10]);
      *v473 = 0;
      v473[1] = 0;
      v474 = OUTLINED_FUNCTION_34_5();
      outlined init with copy of SearchResultItem(v474, v475);
      v476 = v218[6];
      v477 = type metadata accessor for CSSearchableItem();
      OUTLINED_FUNCTION_4_46();
      lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v478, v479, MEMORY[0x277D85380]);
      v480 = OUTLINED_FUNCTION_156_5();
      OUTLINED_FUNCTION_47_11();
      CodableNSSecureCoding.init(wrappedValue:)();
      OUTLINED_FUNCTION_261_2();
      outlined init with copy of ResourceBundle?(v481, v482, v483, v484);
      OUTLINED_FUNCTION_166(v476, 1, v468);
      if (v223)
      {
        OUTLINED_FUNCTION_47_11();
        outlined destroy of FlightSnippet.Leg?(v485, v486, v487);
        OUTLINED_FUNCTION_6_34();
        OUTLINED_FUNCTION_19_18();
        OUTLINED_FUNCTION_63_18();

        OUTLINED_FUNCTION_47_11();
        outlined destroy of FlightSnippet.Leg?(v489, v490, v491);
        OUTLINED_FUNCTION_0_67();
        _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v818, v492);
        OUTLINED_FUNCTION_59_11();
        OUTLINED_FUNCTION_119_9();
        v493();
      }

      else
      {
        OUTLINED_FUNCTION_63_18();

        outlined destroy of FlightSnippet.Leg?(v469, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_0_67();
        _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v818, v495);
        OUTLINED_FUNCTION_59_11();
        OUTLINED_FUNCTION_119_9();
        v496();
        v497 = *(v467 + 32);
        v498 = OUTLINED_FUNCTION_48_12(&v828);
        v497(v498, v476, v468);
        v497(v240 + v218[5], v477, v468);
      }

      goto LABEL_59;
    }

    v451 = v845;
    v228 = &_s15OmniSearchTypes22TicketedTransportationVSgMd;
    v229 = &_s15OmniSearchTypes22TicketedTransportationVSgMR;
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_108_10();
  OUTLINED_FUNCTION_174_5();
  if (v221)
  {
    goto LABEL_114;
  }

  OUTLINED_FUNCTION_269_2();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_271_1();
  if (v223 && v464 == v222)
  {

    goto LABEL_131;
  }

  OUTLINED_FUNCTION_108_10();
  OUTLINED_FUNCTION_174_5();
  if (v221)
  {
    OUTLINED_FUNCTION_260_3();
LABEL_131:

    v499 = v846;
    v500 = v809;
    TicketedShow.init(item:)(v499, v809);
    v501 = OUTLINED_FUNCTION_93_6();
    v502 = v817;
    OUTLINED_FUNCTION_166(v501, v503, v817);
    if (!v223)
    {
      OUTLINED_FUNCTION_104_11();
      v509 = OUTLINED_FUNCTION_257_4();
      v510(v509, v500, v502);
      v511 = *(v169 + 16);
      v512 = OUTLINED_FUNCTION_34_27(&v829);
      (v511)(v512);
      v513 = OUTLINED_FUNCTION_34_27(&v830);
      v844 = v511;
      v514 = (v511)(v513);
      v515 = OUTLINED_FUNCTION_233_4(v514);
      static os_log_type_t.info.getter();
      v516 = OUTLINED_FUNCTION_32_9();
      if (os_log_type_enabled(v516, v517))
      {
        OUTLINED_FUNCTION_90_1();
        v519 = OUTLINED_FUNCTION_51_13();
        OUTLINED_FUNCTION_203_5(v519);
        *v511 = 136643075;
        OUTLINED_FUNCTION_277_1();
        specialized Encodable.oms_jsonPrettyPrinted()();
        OUTLINED_FUNCTION_212_3();
        OUTLINED_FUNCTION_109_15();
        OUTLINED_FUNCTION_107_8();
        v163();
        OUTLINED_FUNCTION_91_8();
        OUTLINED_FUNCTION_92_11();

        v520.value._countAndFlagsBits = OUTLINED_FUNCTION_12_36();
        v521 = v810[1];
        TicketedShow.llmConsumableDescription(locale:)(v520);
        v522 = OUTLINED_FUNCTION_27_23();
        (v163)(v522);
        OUTLINED_FUNCTION_64_0();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_92_11();

        *(v511 + 14) = v521;
        OUTLINED_FUNCTION_53_16(&dword_25D85C000, v523, v524, "Ticketed show found: %{sensitive}s ; %{sensitive}s");
        OUTLINED_FUNCTION_61_20();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {

        OUTLINED_FUNCTION_263_1();
        OUTLINED_FUNCTION_131_2();
        (v511)();
        v527 = OUTLINED_FUNCTION_68_17(&v829);
        v846 = v511;
        (v511)(v527);
      }

      OUTLINED_FUNCTION_48_12(v827);
      OUTLINED_FUNCTION_256_4();
      v528();
      OUTLINED_FUNCTION_268_1();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_255_3();
      v529 = OUTLINED_FUNCTION_40_21();
      v530(v529);
      OUTLINED_FUNCTION_22_24();
      OUTLINED_FUNCTION_29_18(v531);
      v532 = OUTLINED_FUNCTION_283_0();
      OUTLINED_FUNCTION_4_46();
      lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v533, v534, MEMORY[0x277D85380]);
      v535 = OUTLINED_FUNCTION_156_5();
      OUTLINED_FUNCTION_47_11();
      CodableNSSecureCoding.init(wrappedValue:)();
      OUTLINED_FUNCTION_131_2();
      outlined init with copy of ResourceBundle?(v536, v537, v538, v539);
      OUTLINED_FUNCTION_105_3(v532);
      if (v223)
      {
        OUTLINED_FUNCTION_47_11();
        outlined destroy of FlightSnippet.Leg?(v540, v541, v542);
        OUTLINED_FUNCTION_7_42();
        OUTLINED_FUNCTION_19_18();
        OUTLINED_FUNCTION_63_18();

        OUTLINED_FUNCTION_47_11();
        outlined destroy of FlightSnippet.Leg?(v544, v545, v546);
        OUTLINED_FUNCTION_0_67();
        _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v806, v547);
        OUTLINED_FUNCTION_59_11();
        OUTLINED_FUNCTION_119_9();
        v548();
      }

      else
      {
        OUTLINED_FUNCTION_63_18();

        outlined destroy of FlightSnippet.Leg?(v807, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_0_67();
        _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v806, v550);
        OUTLINED_FUNCTION_59_11();
        OUTLINED_FUNCTION_119_9();
        v551();
        OUTLINED_FUNCTION_254_2();
        OUTLINED_FUNCTION_226_1(&v821);
        OUTLINED_FUNCTION_163_5();
        (v535)();
        OUTLINED_FUNCTION_155_8();
        v553 = OUTLINED_FUNCTION_95_8(v552);
        (v535)(v553);
      }

      OUTLINED_FUNCTION_110_13();
      v556 = v831;
LABEL_147:
      v557 = *(v556 - 32);
      *(v557 + v554) = v555;
      *(v557 + v218[9]) = v555;
      OUTLINED_FUNCTION_31_24();
      OUTLINED_FUNCTION_144_10();
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_63_18();

    v505 = v845;
    v506 = &_s15OmniSearchTypes12TicketedShowVSgMd;
    v507 = &_s15OmniSearchTypes12TicketedShowVSgMR;
    v508 = v500;
    goto LABEL_153;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_80_13();
  if (v223 && v525 == v778)
  {
    OUTLINED_FUNCTION_284_1();
    goto LABEL_149;
  }

  OUTLINED_FUNCTION_58_12();
  OUTLINED_FUNCTION_174_5();
  if (v221)
  {
    OUTLINED_FUNCTION_260_3();
LABEL_149:

    v558 = v846;
    OUTLINED_FUNCTION_104_10();
    Appointment.init(item:)(v559, v560);
    v561 = OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_166(v561, v562, v805);
    if (!v223)
    {
      OUTLINED_FUNCTION_104_11();
      OUTLINED_FUNCTION_257_4();
      OUTLINED_FUNCTION_105_4();
      v566();
      v567 = *(v169 + 16);
      v568 = OUTLINED_FUNCTION_34_27(&v822);
      (v567)(v568);
      v569 = OUTLINED_FUNCTION_34_27(&v823);
      v844 = v567;
      v570 = (v567)(v569);
      v571 = OUTLINED_FUNCTION_233_4(v570);
      static os_log_type_t.info.getter();
      v572 = OUTLINED_FUNCTION_32_9();
      if (os_log_type_enabled(v572, v573))
      {
        OUTLINED_FUNCTION_90_1();
        v575 = OUTLINED_FUNCTION_51_13();
        OUTLINED_FUNCTION_203_5(v575);
        *v567 = 136643075;
        OUTLINED_FUNCTION_277_1();
        specialized Encodable.oms_jsonPrettyPrinted()();
        OUTLINED_FUNCTION_212_3();
        OUTLINED_FUNCTION_109_15();
        OUTLINED_FUNCTION_107_8();
        v163();
        OUTLINED_FUNCTION_91_8();
        OUTLINED_FUNCTION_92_11();

        v576.value._countAndFlagsBits = OUTLINED_FUNCTION_12_36();
        v577 = v803;
        Appointment.llmConsumableDescription(locale:)(v576);
        v578 = OUTLINED_FUNCTION_27_23();
        (v163)(v578);
        OUTLINED_FUNCTION_64_0();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_92_11();

        *(v567 + 14) = v577;
        OUTLINED_FUNCTION_53_16(&dword_25D85C000, v579, v580, "Appointment found: %{sensitive}s ; %{sensitive}s");
        OUTLINED_FUNCTION_61_20();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {

        OUTLINED_FUNCTION_263_1();
        OUTLINED_FUNCTION_131_2();
        (v567)();
        v583 = OUTLINED_FUNCTION_68_17(&v822);
        v846 = v567;
        (v567)(v583);
      }

      OUTLINED_FUNCTION_48_12(&v820);
      OUTLINED_FUNCTION_256_4();
      v584();
      OUTLINED_FUNCTION_268_1();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_255_3();
      v585 = OUTLINED_FUNCTION_40_21();
      v586(v585);
      OUTLINED_FUNCTION_22_24();
      OUTLINED_FUNCTION_29_18(v587);
      v588 = OUTLINED_FUNCTION_283_0();
      OUTLINED_FUNCTION_4_46();
      lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v589, v590, MEMORY[0x277D85380]);
      v591 = OUTLINED_FUNCTION_156_5();
      OUTLINED_FUNCTION_47_11();
      CodableNSSecureCoding.init(wrappedValue:)();
      OUTLINED_FUNCTION_131_2();
      outlined init with copy of ResourceBundle?(v592, v593, v594, v595);
      OUTLINED_FUNCTION_105_3(v588);
      if (v223)
      {
        OUTLINED_FUNCTION_47_11();
        outlined destroy of FlightSnippet.Leg?(v596, v597, v598);
        OUTLINED_FUNCTION_7_42();
        OUTLINED_FUNCTION_19_18();
        OUTLINED_FUNCTION_63_18();

        OUTLINED_FUNCTION_47_11();
        outlined destroy of FlightSnippet.Leg?(v600, v601, v602);
        OUTLINED_FUNCTION_0_67();
        _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v799, v603);
        OUTLINED_FUNCTION_59_11();
        OUTLINED_FUNCTION_119_9();
        v604();
      }

      else
      {
        OUTLINED_FUNCTION_63_18();

        outlined destroy of FlightSnippet.Leg?(v800, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_0_67();
        _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v799, v606);
        OUTLINED_FUNCTION_59_11();
        OUTLINED_FUNCTION_119_9();
        v607();
        OUTLINED_FUNCTION_254_2();
        OUTLINED_FUNCTION_226_1(&v815);
        OUTLINED_FUNCTION_163_5();
        (v591)();
        OUTLINED_FUNCTION_155_8();
        v609 = OUTLINED_FUNCTION_95_8(v608);
        (v591)(v609);
      }

      OUTLINED_FUNCTION_110_13();
      v556 = v824;
      goto LABEL_147;
    }

    OUTLINED_FUNCTION_63_18();

    v564 = v845;
    v506 = &_s15OmniSearchTypes11AppointmentVSgMd;
    v507 = &_s15OmniSearchTypes11AppointmentVSgMR;
    v565 = &v826;
    goto LABEL_152;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_80_13();
  if (v223 && v581 == v778)
  {
    OUTLINED_FUNCTION_284_1();
    goto LABEL_168;
  }

  OUTLINED_FUNCTION_58_12();
  OUTLINED_FUNCTION_174_5();
  if (v221)
  {
    OUTLINED_FUNCTION_260_3();
LABEL_168:

    v610 = v846;
    OUTLINED_FUNCTION_104_10();
    Party.init(item:)(v611, v612);
    v613 = OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_166(v613, v614, v798);
    if (!v223)
    {
      OUTLINED_FUNCTION_104_11();
      OUTLINED_FUNCTION_257_4();
      OUTLINED_FUNCTION_105_4();
      v617();
      v618 = *(v169 + 16);
      v619 = OUTLINED_FUNCTION_34_27(&v816);
      (v618)(v619);
      v620 = OUTLINED_FUNCTION_34_27(&v817);
      v844 = v618;
      v621 = (v618)(v620);
      v622 = OUTLINED_FUNCTION_233_4(v621);
      static os_log_type_t.info.getter();
      v623 = OUTLINED_FUNCTION_32_9();
      if (os_log_type_enabled(v623, v624))
      {
        OUTLINED_FUNCTION_90_1();
        v626 = OUTLINED_FUNCTION_51_13();
        OUTLINED_FUNCTION_203_5(v626);
        *v618 = 136643075;
        OUTLINED_FUNCTION_277_1();
        specialized Encodable.oms_jsonPrettyPrinted()();
        OUTLINED_FUNCTION_212_3();
        OUTLINED_FUNCTION_109_15();
        OUTLINED_FUNCTION_107_8();
        v163();
        OUTLINED_FUNCTION_91_8();
        OUTLINED_FUNCTION_92_11();

        v627.value._countAndFlagsBits = OUTLINED_FUNCTION_12_36();
        v628 = v795[2];
        Party.llmConsumableDescription(locale:)(v627);
        v629 = OUTLINED_FUNCTION_27_23();
        (v163)(v629);
        OUTLINED_FUNCTION_64_0();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_92_11();

        *(v618 + 14) = v628;
        OUTLINED_FUNCTION_53_16(&dword_25D85C000, v630, v631, "Party found: %{sensitive}s ; %{sensitive}s");
        OUTLINED_FUNCTION_61_20();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {

        OUTLINED_FUNCTION_263_1();
        OUTLINED_FUNCTION_131_2();
        (v618)();
        v634 = OUTLINED_FUNCTION_68_17(&v816);
        v846 = v618;
        (v618)(v634);
      }

      OUTLINED_FUNCTION_48_12(&v812);
      OUTLINED_FUNCTION_256_4();
      v635();
      OUTLINED_FUNCTION_268_1();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_255_3();
      v636 = OUTLINED_FUNCTION_40_21();
      v637(v636);
      OUTLINED_FUNCTION_22_24();
      OUTLINED_FUNCTION_29_18(v638);
      v639 = OUTLINED_FUNCTION_283_0();
      OUTLINED_FUNCTION_4_46();
      lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v640, v641, MEMORY[0x277D85380]);
      v642 = OUTLINED_FUNCTION_156_5();
      OUTLINED_FUNCTION_47_11();
      CodableNSSecureCoding.init(wrappedValue:)();
      OUTLINED_FUNCTION_131_2();
      outlined init with copy of ResourceBundle?(v643, v644, v645, v646);
      OUTLINED_FUNCTION_105_3(v639);
      if (v223)
      {
        OUTLINED_FUNCTION_47_11();
        outlined destroy of FlightSnippet.Leg?(v647, v648, v649);
        OUTLINED_FUNCTION_7_42();
        OUTLINED_FUNCTION_19_18();
        OUTLINED_FUNCTION_63_18();

        OUTLINED_FUNCTION_47_11();
        outlined destroy of FlightSnippet.Leg?(v651, v652, v653);
        OUTLINED_FUNCTION_0_67();
        _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v793, v654);
        OUTLINED_FUNCTION_59_11();
        OUTLINED_FUNCTION_119_9();
        v655();
      }

      else
      {
        OUTLINED_FUNCTION_63_18();

        outlined destroy of FlightSnippet.Leg?(v794, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_0_67();
        _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v793, v657);
        OUTLINED_FUNCTION_59_11();
        OUTLINED_FUNCTION_119_9();
        v658();
        OUTLINED_FUNCTION_254_2();
        OUTLINED_FUNCTION_226_1(&v807);
        OUTLINED_FUNCTION_163_5();
        (v642)();
        OUTLINED_FUNCTION_155_8();
        v660 = OUTLINED_FUNCTION_95_8(v659);
        (v642)(v660);
      }

      OUTLINED_FUNCTION_110_13();
      v556 = &v818;
      goto LABEL_147;
    }

    OUTLINED_FUNCTION_63_18();

    v616 = v845;
    v506 = &_s15OmniSearchTypes5PartyVSgMd;
    v507 = &_s15OmniSearchTypes5PartyVSgMR;
    v565 = v819;
    goto LABEL_152;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_80_13();
  if (v223 && v632 == v778)
  {
    OUTLINED_FUNCTION_284_1();
  }

  else
  {
    OUTLINED_FUNCTION_58_12();
    OUTLINED_FUNCTION_174_5();
    if ((v221 & 1) == 0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_80_13();
      if (v223 && v683 == v778)
      {
        OUTLINED_FUNCTION_284_1();
      }

      else
      {
        OUTLINED_FUNCTION_58_12();
        OUTLINED_FUNCTION_174_5();
        if ((v221 & 1) == 0)
        {

          OUTLINED_FUNCTION_119_5(v796);

          v735 = OUTLINED_FUNCTION_233_4(v734);
          v736 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v735, v736))
          {
            OUTLINED_FUNCTION_28_3();
            swift_slowAlloc();
            v737 = OUTLINED_FUNCTION_10_23();
            v852 = v737;
            OUTLINED_FUNCTION_313_0(4.8149e-34);
            OUTLINED_FUNCTION_252_0();
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            OUTLINED_FUNCTION_291_0();

            *(v262 + 4) = v224;
            OUTLINED_FUNCTION_110_4();
            _os_log_impl(v738, v739, v740, v741, v742, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v737);
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
          }

          else
          {
            OUTLINED_FUNCTION_284_1();
          }

          OUTLINED_FUNCTION_63_18();
          goto LABEL_36;
        }

        OUTLINED_FUNCTION_260_3();
      }

      v712 = v846;
      OUTLINED_FUNCTION_104_10();
      ShippingOrder.init(item:)(v713, v714);
      v715 = OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_166(v715, v716, v787);
      if (!v223)
      {
        OUTLINED_FUNCTION_104_11();
        OUTLINED_FUNCTION_257_4();
        OUTLINED_FUNCTION_105_4();
        v719();
        v720 = *(v169 + 16);
        v721 = OUTLINED_FUNCTION_34_27(&v801);
        (v720)(v721);
        v722 = OUTLINED_FUNCTION_34_27(&v802);
        v844 = v720;
        v723 = (v720)(v722);
        v724 = OUTLINED_FUNCTION_233_4(v723);
        static os_log_type_t.info.getter();
        v725 = OUTLINED_FUNCTION_32_9();
        if (os_log_type_enabled(v725, v726))
        {
          OUTLINED_FUNCTION_90_1();
          v728 = OUTLINED_FUNCTION_51_13();
          OUTLINED_FUNCTION_203_5(v728);
          *v720 = 136643075;
          OUTLINED_FUNCTION_277_1();
          specialized Encodable.oms_jsonPrettyPrinted()();
          OUTLINED_FUNCTION_212_3();
          OUTLINED_FUNCTION_109_15();
          OUTLINED_FUNCTION_107_8();
          v163();
          OUTLINED_FUNCTION_91_8();
          OUTLINED_FUNCTION_92_11();

          v729.value._countAndFlagsBits = OUTLINED_FUNCTION_12_36();
          v730 = v785;
          ShippingOrder.llmConsumableDescription(locale:)(v729);
          v731 = OUTLINED_FUNCTION_27_23();
          (v163)(v731);
          OUTLINED_FUNCTION_64_0();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          OUTLINED_FUNCTION_92_11();

          *(v720 + 14) = v730;
          OUTLINED_FUNCTION_53_16(&dword_25D85C000, v732, v733, "Shipping Order found: %{sensitive}s ; %{sensitive}s");
          OUTLINED_FUNCTION_61_20();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        else
        {

          OUTLINED_FUNCTION_263_1();
          OUTLINED_FUNCTION_131_2();
          (v720)();
          v743 = OUTLINED_FUNCTION_68_17(&v801);
          v846 = v720;
          (v720)(v743);
        }

        OUTLINED_FUNCTION_48_12(&v798);
        OUTLINED_FUNCTION_256_4();
        v744();
        OUTLINED_FUNCTION_268_1();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_255_3();
        v745 = OUTLINED_FUNCTION_40_21();
        v746(v745);
        OUTLINED_FUNCTION_22_24();
        OUTLINED_FUNCTION_29_18(v747);
        v748 = OUTLINED_FUNCTION_283_0();
        OUTLINED_FUNCTION_4_46();
        lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v749, v750, MEMORY[0x277D85380]);
        v751 = OUTLINED_FUNCTION_156_5();
        OUTLINED_FUNCTION_47_11();
        CodableNSSecureCoding.init(wrappedValue:)();
        OUTLINED_FUNCTION_131_2();
        outlined init with copy of ResourceBundle?(v752, v753, v754, v755);
        OUTLINED_FUNCTION_105_3(v748);
        if (v223)
        {
          OUTLINED_FUNCTION_47_11();
          outlined destroy of FlightSnippet.Leg?(v756, v757, v758);
          OUTLINED_FUNCTION_7_42();
          OUTLINED_FUNCTION_19_18();
          OUTLINED_FUNCTION_63_18();

          OUTLINED_FUNCTION_47_11();
          outlined destroy of FlightSnippet.Leg?(v760, v761, v762);
          OUTLINED_FUNCTION_0_67();
          _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v781, v763);
          OUTLINED_FUNCTION_59_11();
          OUTLINED_FUNCTION_119_9();
          v764();
        }

        else
        {
          OUTLINED_FUNCTION_63_18();

          outlined destroy of FlightSnippet.Leg?(v783, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_0_67();
          _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v781, v766);
          OUTLINED_FUNCTION_59_11();
          OUTLINED_FUNCTION_119_9();
          v767();
          OUTLINED_FUNCTION_254_2();
          OUTLINED_FUNCTION_226_1(&v797);
          OUTLINED_FUNCTION_163_5();
          (v751)();
          OUTLINED_FUNCTION_155_8();
          v769 = OUTLINED_FUNCTION_95_8(v768);
          (v751)(v769);
        }

        OUTLINED_FUNCTION_110_13();
        v556 = &v803;
        goto LABEL_147;
      }

      OUTLINED_FUNCTION_63_18();

      v718 = v845;
      v506 = &_s15OmniSearchTypes13ShippingOrderVSgMd;
      v507 = &_s15OmniSearchTypes13ShippingOrderVSgMR;
      v565 = v804;
      goto LABEL_152;
    }

    OUTLINED_FUNCTION_260_3();
  }

  v661 = v846;
  OUTLINED_FUNCTION_104_10();
  Trip.init(item:)(v662, v663);
  v664 = OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_166(v664, v665, v792);
  if (!v223)
  {
    OUTLINED_FUNCTION_104_11();
    OUTLINED_FUNCTION_257_4();
    OUTLINED_FUNCTION_105_4();
    v668();
    v669 = *(v169 + 16);
    v670 = OUTLINED_FUNCTION_34_27(&v808);
    (v669)(v670);
    v671 = OUTLINED_FUNCTION_34_27(&v809);
    v844 = v669;
    v672 = (v669)(v671);
    v673 = OUTLINED_FUNCTION_233_4(v672);
    static os_log_type_t.info.getter();
    v674 = OUTLINED_FUNCTION_32_9();
    if (os_log_type_enabled(v674, v675))
    {
      OUTLINED_FUNCTION_90_1();
      v677 = OUTLINED_FUNCTION_51_13();
      OUTLINED_FUNCTION_203_5(v677);
      *v669 = 136643075;
      OUTLINED_FUNCTION_277_1();
      specialized Encodable.oms_jsonPrettyPrinted()();
      OUTLINED_FUNCTION_212_3();
      OUTLINED_FUNCTION_109_15();
      OUTLINED_FUNCTION_107_8();
      v163();
      OUTLINED_FUNCTION_91_8();
      OUTLINED_FUNCTION_92_11();

      v678.value._countAndFlagsBits = OUTLINED_FUNCTION_12_36();
      v679 = v790;
      Trip.llmConsumableDescription(locale:)(v678);
      v680 = OUTLINED_FUNCTION_27_23();
      (v163)(v680);
      OUTLINED_FUNCTION_64_0();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_92_11();

      *(v669 + 14) = v679;
      OUTLINED_FUNCTION_53_16(&dword_25D85C000, v681, v682, "Trip found: %{sensitive}s ; %{sensitive}s");
      OUTLINED_FUNCTION_61_20();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    else
    {

      OUTLINED_FUNCTION_263_1();
      OUTLINED_FUNCTION_131_2();
      (v669)();
      v685 = OUTLINED_FUNCTION_68_17(&v808);
      v846 = v669;
      (v669)(v685);
    }

    OUTLINED_FUNCTION_48_12(&v805);
    OUTLINED_FUNCTION_256_4();
    v686();
    OUTLINED_FUNCTION_268_1();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_3();
    v687 = OUTLINED_FUNCTION_40_21();
    v688(v687);
    OUTLINED_FUNCTION_22_24();
    OUTLINED_FUNCTION_29_18(v689);
    v690 = OUTLINED_FUNCTION_283_0();
    OUTLINED_FUNCTION_4_46();
    lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v691, v692, MEMORY[0x277D85380]);
    v693 = OUTLINED_FUNCTION_156_5();
    OUTLINED_FUNCTION_47_11();
    CodableNSSecureCoding.init(wrappedValue:)();
    OUTLINED_FUNCTION_131_2();
    outlined init with copy of ResourceBundle?(v694, v695, v696, v697);
    OUTLINED_FUNCTION_105_3(v690);
    if (v223)
    {
      OUTLINED_FUNCTION_47_11();
      outlined destroy of FlightSnippet.Leg?(v698, v699, v700);
      OUTLINED_FUNCTION_7_42();
      OUTLINED_FUNCTION_19_18();
      OUTLINED_FUNCTION_63_18();

      OUTLINED_FUNCTION_47_11();
      outlined destroy of FlightSnippet.Leg?(v702, v703, v704);
      OUTLINED_FUNCTION_0_67();
      _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v788, v705);
      OUTLINED_FUNCTION_59_11();
      OUTLINED_FUNCTION_119_9();
      v706();
    }

    else
    {
      OUTLINED_FUNCTION_63_18();

      outlined destroy of FlightSnippet.Leg?(v789, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_0_67();
      _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(v788, v708);
      OUTLINED_FUNCTION_59_11();
      OUTLINED_FUNCTION_119_9();
      v709();
      OUTLINED_FUNCTION_254_2();
      OUTLINED_FUNCTION_226_1(&v800);
      OUTLINED_FUNCTION_163_5();
      (v693)();
      OUTLINED_FUNCTION_155_8();
      v711 = OUTLINED_FUNCTION_95_8(v710);
      (v693)(v711);
    }

    OUTLINED_FUNCTION_110_13();
    v556 = v810;
    goto LABEL_147;
  }

  OUTLINED_FUNCTION_63_18();

  v667 = v845;
  v506 = &_s15OmniSearchTypes4TripVSgMd;
  v507 = &_s15OmniSearchTypes4TripVSgMR;
  v565 = v811;
LABEL_152:
  v508 = *(v565 - 32);
LABEL_153:
  outlined destroy of FlightSnippet.Leg?(v508, v506, v507);
LABEL_36:
  OUTLINED_FUNCTION_144_10();
LABEL_37:
  v218 = v847;
LABEL_38:
  __swift_storeEnumTagSinglePayload(v28, v185, 1, v218);
  OUTLINED_FUNCTION_148();
}

uint64_t RentalCarReservation.init(item:checkEventType:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_114(v11);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_59_4();
  v13 = type metadata accessor for FeatureFlagService();
  v14 = OUTLINED_FUNCTION_197_0(v13);
  a5(a1, a2, v14);
  v15 = a6(0);
  v16 = OUTLINED_FUNCTION_93_0();
  if (__swift_getEnumTagSinglePayload(v16, v17, v15))
  {
    OUTLINED_FUNCTION_103_10();
    outlined destroy of FlightSnippet.Leg?(v18, v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_51();
    v21 = OUTLINED_FUNCTION_242_3();
    v22(v21);
  }

  OUTLINED_FUNCTION_102_10();
  return __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
}

void HotelReservation.init(item:answerAttributes:requireDates:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_114(v12);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_59_4();
  v14 = type metadata accessor for FeatureFlagService();
  v15 = OUTLINED_FUNCTION_197_0(v14);
  v3(v9, v7, v5, v15);
  v16 = v1(0);
  v17 = OUTLINED_FUNCTION_93_0();
  if (__swift_getEnumTagSinglePayload(v17, v18, v16))
  {
    OUTLINED_FUNCTION_103_10();
    outlined destroy of FlightSnippet.Leg?(v19, v20, v21);
  }

  else
  {
    OUTLINED_FUNCTION_51();
    v22 = OUTLINED_FUNCTION_242_3();
    v23(v22);
  }

  OUTLINED_FUNCTION_102_10();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  OUTLINED_FUNCTION_148();
}

uint64_t RentalCarReservation.init(item:)@<X0>(void (*a1)(uint64_t)@<X3>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X8>, uint64_t a4@<X0>, uint64_t *a5@<X1>, uint64_t *a6@<X2>)
{
  v9 = OUTLINED_FUNCTION_326_0(a4, a5, a6);
  OUTLINED_FUNCTION_114(v9);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = OUTLINED_FUNCTION_202_5();
  a1(v13);
  v14 = a2(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v14))
  {
    OUTLINED_FUNCTION_103_10();
    outlined destroy of FlightSnippet.Leg?(v15, v16, v17);
    v18 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_51();
    v19 = OUTLINED_FUNCTION_34_5();
    v20(v19);
    v18 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v18, 1, v14);
}

void RentalCarReservation.init(item:checkEventType:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_194_6();
  a21 = v28;
  a22 = v29;
  OUTLINED_FUNCTION_84_12();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v31 = OUTLINED_FUNCTION_114(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_123_8();
  v33 = [v25 attributeSet];
  OUTLINED_FUNCTION_218_5();
  if ((v22 & 1) != 0 && (v34 = OUTLINED_FUNCTION_229_4(), v35 = [v34 containsString_], v34, (v35 & 1) == 0))
  {

    type metadata accessor for RentalCarReservation();
    OUTLINED_FUNCTION_26_23();
    OUTLINED_FUNCTION_101_9();

    __swift_storeEnumTagSinglePayload(v102, v103, v104, v105);
  }

  else
  {
    v36 = [v25 uniqueIdentifier];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108[7] = v38;
    v108[8] = v37;

    v39 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventMessageIdentifier);
    v108[5] = v40;
    v108[6] = v39;
    v41 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventGroupIdentifier);
    OUTLINED_FUNCTION_191_8(v41);
    *(v43 - 256) = v42;
    v44 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventFallbackGroupIdentifier);
    OUTLINED_FUNCTION_179_7(v44, v45);
    v107[3] = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventMegadomeIdentifier);
    v47 = OUTLINED_FUNCTION_161_4(v46, &a14);
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_163_7(v48, v49, &a13);

    v50 = [v23 eventSubType];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_73_15(v51, v52);

    v53 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventSourceBundleIdentifier);
    OUTLINED_FUNCTION_167_4(v53, v54);
    v55 = [v23 eventIsAllDay];
    if (v55)
    {
      OUTLINED_FUNCTION_217_5(v55);
    }

    v56 = [v23 eventSourceIsForwarded];
    if (v56)
    {
      OUTLINED_FUNCTION_217_5(v56);
    }

    outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v23);
    v57 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_mailMessageID);
    OUTLINED_FUNCTION_216_0(v57);
    OUTLINED_FUNCTION_89_16();
    v59 = v58;
    v60 = OUTLINED_FUNCTION_280_2(v58, sel_attributeForKey_);

    if (v60)
    {
      OUTLINED_FUNCTION_285_0();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_276_1();
    }

    OUTLINED_FUNCTION_116_8();
    v111 = v27;
    v108[4] = v26;
    if (v61)
    {
      OUTLINED_FUNCTION_115_11();
      OUTLINED_FUNCTION_114_12();
      if (v63)
      {
        v64 = 0;
      }

      else
      {
        v64 = v62;
      }

      OUTLINED_FUNCTION_230_3(v64);
    }

    else
    {
      outlined destroy of FlightSnippet.Leg?(&v113, &_sypSgMd, &_sypSgMR);
    }

    v110 = v24;
    v65 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_accountIdentifier);
    OUTLINED_FUNCTION_170_6(v65, v66);
    v67 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v23, &selRef_mailboxIdentifiers);
    OUTLINED_FUNCTION_146_1(v67);
    outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.detectedEventTypes.getter(v23);
    v68 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventStatus);
    OUTLINED_FUNCTION_162_8(v68, v69, &v112);
    v70 = OUTLINED_FUNCTION_281_0();
    OUTLINED_FUNCTION_78_17(v70, v71);
    v72 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.displayName.getter(v23);
    OUTLINED_FUNCTION_43_14(v72, v73);
    v74 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventReservationID);
    OUTLINED_FUNCTION_77_15(v74, v75);
    v76 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventProvider);
    OUTLINED_FUNCTION_71_17(v76, v77);
    outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v23, &selRef_eventCustomerNames);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventReservationForName);
    v78 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventStartLocationName);
    OUTLINED_FUNCTION_237_4(v78, v79, v108);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventStartLocationAddress);
    v80 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventStartLocationTelephone);
    OUTLINED_FUNCTION_236_3(v80, v81, v107);
    v82 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventEndLocationName);
    OUTLINED_FUNCTION_138_1(v82, v83);
    v84 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventEndLocationAddress);
    OUTLINED_FUNCTION_185_5(v84, v85);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventEndLocationTelephone);
    [v23 eventDuration];
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_eventTotalCost);
    CSSearchableItemAttributeSet.timeIsUnknownBool.getter();
    v86 = [v23 startDate];
    v109 = v25;
    if (v86)
    {
      v87 = v86;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
    }

    type metadata accessor for Date();
    OUTLINED_FUNCTION_61_19();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
    v92 = [v23 endDate];
    if (v92)
    {
      v93 = v92;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
    }

    OUTLINED_FUNCTION_61_19();
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_startDateTimeZone);
    OUTLINED_FUNCTION_258_3();
    OUTLINED_FUNCTION_274_2();
    OUTLINED_FUNCTION_266_2();
    OUTLINED_FUNCTION_317_0();
    OUTLINED_FUNCTION_265_3();
    OUTLINED_FUNCTION_223_4();
    OUTLINED_FUNCTION_221_5();
    OUTLINED_FUNCTION_275_1();
    OUTLINED_FUNCTION_224_4();
    OUTLINED_FUNCTION_222_4();
    OUTLINED_FUNCTION_273_2();
    OUTLINED_FUNCTION_225_5();
    OUTLINED_FUNCTION_184_6();
    OUTLINED_FUNCTION_183_6();
    OUTLINED_FUNCTION_198_5();
    OUTLINED_FUNCTION_129_12();
    OUTLINED_FUNCTION_127_14();
    OUTLINED_FUNCTION_125_10();
    OUTLINED_FUNCTION_131_8();
    OUTLINED_FUNCTION_128_10();
    OUTLINED_FUNCTION_130_11();
    OUTLINED_FUNCTION_197_7();
    OUTLINED_FUNCTION_157_5();
    OUTLINED_FUNCTION_141_6();
    OUTLINED_FUNCTION_120_9();
    OUTLINED_FUNCTION_126_13();
    OUTLINED_FUNCTION_150_6();
    OUTLINED_FUNCTION_182_8();
    OUTLINED_FUNCTION_118_9();
    OUTLINED_FUNCTION_151_6();
    OUTLINED_FUNCTION_134_10();
    OUTLINED_FUNCTION_149_9();
    OUTLINED_FUNCTION_148_9();
    OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_133_11();
    OUTLINED_FUNCTION_117_12();
    OUTLINED_FUNCTION_139_9();
    OUTLINED_FUNCTION_124_14();
    OUTLINED_FUNCTION_241_4();
    RentalCarReservation.init(id:eventMessageIdentifier:eventGroupIdentifier:eventFallbackGroupIdentifier:eventMegadomeIdentifier:eventType:eventSubType:eventSourceBundleIdentifier:eventIsAllDay:eventSourceIsForwarded:authors:mailMessageId:mailMessageHeader:accountIdentifier:mailboxes:detectedEventTypes:status:updateStatus:displayName:reservationId:provider:customerNames:reservationForName:startLocationName:startLocationAddress:startLocationTelephone:endLocationName:endLocationAddress:endLocationTelephone:durationInSeconds:totalCost:timeIsUnknown:startDate:endDate:eventSourceLLMConsumableDescription:startDateTimeZone:)();

    type metadata accessor for RentalCarReservation();
    v98 = OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v98, v99, v100, v101);
    OUTLINED_FUNCTION_101_9();
  }
}