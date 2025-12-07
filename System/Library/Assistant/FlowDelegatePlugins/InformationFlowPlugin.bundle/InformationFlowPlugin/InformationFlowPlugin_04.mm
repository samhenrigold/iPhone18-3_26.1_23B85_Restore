uint64_t ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  v4 = type metadata accessor for ConfirmationResponse();
  v3[36] = v4;
  v3[37] = *(v4 - 8);
  v3[38] = swift_task_alloc();
  v5 = type metadata accessor for WindowedPaginationParameters();
  v3[39] = v5;
  v6 = *(v5 - 8);
  v3[40] = v6;
  v3[41] = *(v6 + 64);
  v3[42] = swift_task_alloc();
  type metadata accessor for DialogPhase();
  v3[43] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v3[44] = v7;
  v3[45] = *(v7 - 8);
  v3[46] = swift_task_alloc();

  return _swift_task_switch(ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:), 0, 0);
}

uint64_t ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ContinuationResultSetFlowProvider.makeWindowFlow", v4, 2u);
  }

  v31 = *(v0 + 368);
  v32 = *(v0 + 360);
  v33 = *(v0 + 352);
  v5 = *(v0 + 336);
  v7 = *(v0 + 312);
  v6 = *(v0 + 320);
  v34 = *(v0 + 296);
  v8 = *(v0 + 280);
  v35 = *(v0 + 288);
  v36 = *(v0 + 304);
  v9 = *(v0 + 264);
  v30 = *(v0 + 272);

  static DialogPhase.completion.getter();
  *(swift_task_alloc() + 16) = v8;
  OutputGenerationManifest.init(dialogPhase:_:)();

  outlined init with copy of ContinuationResultSetFlowProvider(v8, v0 + 16);
  (*(v6 + 16))(v5, v9, v7);
  v10 = (*(v6 + 80) + 264) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v12 = *(v0 + 224);
  *(v11 + 208) = *(v0 + 208);
  *(v11 + 224) = v12;
  *(v11 + 240) = *(v0 + 240);
  v13 = *(v0 + 160);
  *(v11 + 144) = *(v0 + 144);
  *(v11 + 160) = v13;
  v14 = *(v0 + 192);
  *(v11 + 176) = *(v0 + 176);
  *(v11 + 192) = v14;
  v15 = *(v0 + 96);
  *(v11 + 80) = *(v0 + 80);
  *(v11 + 96) = v15;
  v16 = *(v0 + 128);
  *(v11 + 112) = *(v0 + 112);
  *(v11 + 128) = v16;
  v17 = *(v0 + 32);
  *(v11 + 16) = *(v0 + 16);
  *(v11 + 32) = v17;
  v18 = *(v0 + 64);
  *(v11 + 48) = *(v0 + 48);
  *(v11 + 64) = v18;
  *(v11 + 256) = v30;
  (*(v6 + 32))(v11 + v10, v5, v7);
  v19 = type metadata accessor for ResponseFactory();
  swift_allocObject();

  v20 = ResponseFactory.init()();
  type metadata accessor for RFSimpleYesNoPromptFlowStrategy(0);
  v21 = swift_allocObject();
  v22 = (v21 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_responseGenerator);
  v22[3] = v19;
  v22[4] = &protocol witness table for ResponseFactory;
  *v22 = v20;
  (*(v32 + 32))(v21 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_baseManifest, v31, v33);
  v23 = (v21 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_rejectionOutputProducer);
  *v23 = &async function pointer to closure #1 in default argument 2 of RFSimpleYesNoPromptFlowStrategy.init(baseManifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:promptPatternExecutionProducer:);
  v23[1] = 0;
  v24 = (v21 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_cancellationOutputProducer);
  *v24 = &async function pointer to closure #1 in default argument 3 of RFSimpleYesNoPromptFlowStrategy.init(baseManifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:promptPatternExecutionProducer:);
  v24[1] = 0;
  v25 = (v21 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_promptPatternExecutionProducer);
  *v25 = &async function pointer to partial apply for closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:);
  v25[1] = v11;
  __swift_project_boxed_opaque_existential_1((v8 + 128), *(v8 + 152));
  (*(v34 + 104))(v36, enum case for ConfirmationResponse.confirmed(_:), v35);
  lazy protocol witness table accessor for type PromptType and conformance PromptType(&lazy protocol witness table cache variable for type RFSimpleYesNoPromptFlowStrategy and conformance RFSimpleYesNoPromptFlowStrategy, type metadata accessor for RFSimpleYesNoPromptFlowStrategy, &protocol conformance descriptor for RFSimpleYesNoPromptFlowStrategy);
  v26 = dispatch thunk of PatternFlowProviding.makeResponseFlowWithContinuationPrompt<A>(strategy:shouldContinueForResponse:)();
  (*(v34 + 8))(v36, v35);
  *(v0 + 256) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA15WindowingActionVyytGGMd, &_s11SiriKitFlow08AnyValueC0CyAA15WindowingActionVyytGGMR);
  lazy protocol witness table accessor for type AnyValueFlow<WindowingAction<()>> and conformance AnyValueFlow<A>();
  v27 = Flow.eraseToAnyValueFlow()();

  v28 = *(v0 + 8);

  return v28(v27);
}

uint64_t closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for Date();
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for PerformanceUtil.Ticket();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:), 0, 0);
}

uint64_t closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)(uint64_t a1)
{
  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v2 = swift_task_alloc();
  v1[9] = v2;
  *v2 = v1;
  v2[1] = closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:);
  v4 = v1[3];
  v3 = v1[4];

  return ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:)(v4, v3);
}

{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:);
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:);
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];
  v5 = v0[11];

  return v4(v5);
}

{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t closure #2 in ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(closure #2 in ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:), 0, 0);
}

uint64_t closure #2 in ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:)()
{
  v1 = v0[3];
  v2 = v1[25];
  v3 = v1[26];
  __swift_project_boxed_opaque_existential_1(v1 + 22, v2);
  v5 = v1[28];
  v4 = v1[29];
  v6 = v1[27];
  v10 = (*(v3 + 8) + **(v3 + 8));
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = closure #2 in ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:);
  v8 = v0[4];

  return v10(v5, v4, v6, v8, v1 + 9, v2, v3);
}

{
  **(v0 + 16) = *(v0 + 48);
  return (*(v0 + 8))();
}

uint64_t closure #2 in ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(closure #2 in ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:), 0, 0);
  }
}

uint64_t protocol witness for ResultSetFlowProvider.makeNarrowingPromptFlowIfNeeded() in conformance ContinuationResultSetFlowProvider()
{
  v1 = ResultSetFlowProvider.makeNarrowingPromptFlowIfNeeded()();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t protocol witness for ResultSetFlowProvider.makeEmptyResultSetFlow() in conformance ContinuationResultSetFlowProvider()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for PatternExecutorProtocol.execute(pattern:in:with:deviceState:) in conformance PatternExecutor;

  return ContinuationResultSetFlowProvider.makeEmptyResultSetFlow()();
}

uint64_t protocol witness for ResultSetFlowProvider.makeSingleItemFlow() in conformance ContinuationResultSetFlowProvider()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for PatternExecutorProtocol.execute(pattern:in:with:deviceState:) in conformance PatternExecutor;

  return ContinuationResultSetFlowProvider.makeSingleItemFlow()();
}

uint64_t protocol witness for ResultSetFlowProvider.makeAllResultsFlow() in conformance ContinuationResultSetFlowProvider()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for PatternExecutorProtocol.execute(pattern:in:with:deviceState:) in conformance PatternExecutor;

  return ContinuationResultSetFlowProvider.makeAllResultsFlow()();
}

uint64_t protocol witness for ResultSetFlowProvider.makeWindowingConfiguration(promptType:) in conformance ContinuationResultSetFlowProvider(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return ContinuationResultSetFlowProvider.makeWindowingConfiguration(promptType:)(a1, a2);
}

uint64_t protocol witness for ContinuationPromptFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:) in conformance ContinuationResultSetFlowProvider(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for PatternExecutorProtocol.execute(pattern:in:with:deviceState:) in conformance PatternExecutor;

  return ContinuationResultSetFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:)(a1, v4);
}

uint64_t protocol witness for WindowingFlowProvider.makeWindowFlow(paginationParameters:windowContent:) in conformance ContinuationResultSetFlowProvider(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = PatternExecutor.execute(pattern:in:with:deviceState:);

  return ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)(a1, v4);
}

uint64_t sub_74EB0()
{
  v1 = type metadata accessor for WindowedPaginationParameters();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 88));
  v5 = *(v0 + 136);
  if (v5 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 128), v5);
  }

  v6 = (v3 + 264) & ~v3;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 144));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 192));

  (*(v2 + 8))(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v4, v3 | 7);
}

uint64_t partial apply for closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)()
{
  v2 = *(type metadata accessor for WindowedPaginationParameters() - 8);
  v3 = (*(v2 + 80) + 264) & ~*(v2 + 80);
  v4 = *(v0 + 256);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:);

  return closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)(v0 + 16, v4, v0 + v3);
}

uint64_t partial apply for closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t lazy protocol witness table accessor for type PromptType and conformance PromptType(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type AnyValueFlow<WindowingAction<()>> and conformance AnyValueFlow<A>()
{
  result = lazy protocol witness table cache variable for type AnyValueFlow<WindowingAction<()>> and conformance AnyValueFlow<A>;
  if (!lazy protocol witness table cache variable for type AnyValueFlow<WindowingAction<()>> and conformance AnyValueFlow<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow08AnyValueC0CyAA15WindowingActionVyytGGMd, &_s11SiriKitFlow08AnyValueC0CyAA15WindowingActionVyytGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyValueFlow<WindowingAction<()>> and conformance AnyValueFlow<A>);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t getEnumTagSinglePayload for ContinuationResultSetFlowProvider(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ContinuationResultSetFlowProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;

  specialized LazyMapSequence.Iterator.next()(&v46);
  v12 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    goto LABEL_25;
  }

  v13 = v46;
  outlined init with take of Any(v47, v45);
  v14 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    specialized _NativeDictionary.copy()();
    result = v26;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    outlined init with copy of Any(*(*a5 + 56) + 32 * result, v44);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);

    v25 = *(v23 + 56);
    __swift_destroy_boxed_opaque_existential_0Tm((v25 + v24));
    outlined init with take of Any(v44, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v28 = (v27[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = outlined init with take of Any(v45, (v27[7] + 32 * result));
  v29 = v27[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v27[2] = v30;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v46);
    v12 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v46;
        outlined init with take of Any(v47, v45);
        v34 = *a5;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v19 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (*(v34 + 24) < v38)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v38, 1);
          result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v31 = *a5;
          v32 = 32 * result;
          outlined init with copy of Any(*(*a5 + 56) + 32 * result, v44);
          __swift_destroy_boxed_opaque_existential_0Tm(v45);

          v33 = *(v31 + 56);
          __swift_destroy_boxed_opaque_existential_0Tm((v33 + v32));
          outlined init with take of Any(v44, (v33 + v32));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = outlined init with take of Any(v45, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        specialized LazyMapSequence.Iterator.next()(&v46);
        v12 = *(&v46 + 1);
      }

      while (*(&v46 + 1));
    }

LABEL_25:
    outlined consume of Set<String>.Iterator._Variant(v48);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #2 in ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return closure #2 in ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:)(a1, v5, v4);
}

unint64_t type metadata accessor for PatternExecutionResult()
{
  result = lazy cache variable for type metadata for PatternExecutionResult;
  if (!lazy cache variable for type metadata for PatternExecutionResult)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PatternExecutionResult);
  }

  return result;
}

void *InformationViewFactory.__allocating_init(deviceState:commonCATs:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = [objc_opt_self() sharedPreferences];
  v6 = type metadata accessor for PommesServerFallbackPreferences();
  swift_allocObject();
  v7 = PommesServerFallbackPreferences.init(_:)();
  v4[11] = v6;
  v4[12] = &protocol witness table for PommesServerFallbackPreferences;
  v4[8] = v7;
  outlined init with take of SiriSuggestionsBroker(a1, (v4 + 3));
  v4[2] = a2;
  return v4;
}

unint64_t *specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      outlined init with take of Any(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t InformationViewFactory.serverFallbackPreferences.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 64));
  outlined init with take of SiriSuggestionsBroker(a1, v1 + 64);
  return swift_endAccess();
}

void *InformationViewFactory.init(deviceState:commonCATs:)(__int128 *a1, uint64_t a2)
{
  v5 = [objc_opt_self() sharedPreferences];
  v6 = type metadata accessor for PommesServerFallbackPreferences();
  swift_allocObject();
  v7 = PommesServerFallbackPreferences.init(_:)();
  v2[11] = v6;
  v2[12] = &protocol witness table for PommesServerFallbackPreferences;
  v2[8] = v7;
  outlined init with take of SiriSuggestionsBroker(a1, (v2 + 3));
  v2[2] = a2;
  return v2;
}

uint64_t InformationViewFactory.makeAceOutputError()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for TemplatingResult();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for PerformanceUtil.Ticket();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(InformationViewFactory.makeAceOutputError(), 0, 0);
}

{
  v2 = v1[3];
  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v6 = (*(*v2 + 144) + **(*v2 + 144));
  v3 = swift_task_alloc();
  v1[13] = v3;
  *v3 = v1;
  v3[1] = InformationViewFactory.makeAceOutputError();
  v4 = v1[6];

  return v6(v4);
}

uint64_t InformationViewFactory.makeAceOutputError()()
{

  return _swift_task_switch(InformationViewFactory.makeAceOutputError(), 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[8];
  v10 = v0[12];
  v11 = v0[7];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v12 = v0[10];
  v13 = v0[4];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  static PerformanceUtil.shared.getter();
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  Date.init()();
  type metadata accessor for AceOutput();
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v3 + 8))(v2, v11);
  (*(v1 + 8))(v10, v12);

  (*(v5 + 8))(v4, v13);

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in InformationViewFactory.makeAceOutputError()(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = v8 - v4;
  __swift_project_boxed_opaque_existential_1(a2 + 3, a2[6]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v6 = type metadata accessor for NLContextUpdate();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  static AceOutputHelper.makeSummaryViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Any?(v8, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  return outlined destroy of Any?(v5, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

uint64_t InformationViewFactory.makeErrorRunInformationFlowTemplate()(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  type metadata accessor for Date();
  v2[10] = swift_task_alloc();
  v3 = type metadata accessor for PerformanceUtil.Ticket();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(InformationViewFactory.makeErrorRunInformationFlowTemplate(), 0, 0);
}

{
  v2 = v1[7];
  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v6 = (*(**(v2 + 16) + class metadata base offset for CommonCATs) + **(**(v2 + 16) + class metadata base offset for CommonCATs));
  v3 = swift_task_alloc();
  v1[14] = v3;
  *v3 = v1;
  v3[1] = InformationViewFactory.makeErrorRunInformationFlowTemplate();
  v4 = v1[6];

  return v6(v4);
}

uint64_t InformationViewFactory.makeErrorRunInformationFlowTemplate()()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = InformationViewFactory.makeErrorRunInformationFlowTemplate();
  }

  else
  {
    v2 = InformationViewFactory.makeErrorRunInformationFlowTemplate();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v21 = v0;
  (*(v0[12] + 8))(v0[13], v0[11]);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v2 = __swift_project_value_buffer(v1, static Logger.information);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v20);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Unable to generate dialog due to error: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v11 = v0[8];
  v10 = v0[9];
  v12 = *(v1 - 8);
  (*(v12 + 16))(v10, v2, v1);
  (*(v12 + 56))(v10, 0, 1, v1);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v10, v11, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  if ((*(v12 + 48))(v11, 1, v1) == 1)
  {
    outlined destroy of Any?(v0[8], &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v15 = 136315650;
      v16 = StaticString.description.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v20);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2048;
      *(v15 + 14) = 64;
      *(v15 + 22) = 2080;
      *(v15 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x80000000000C0280, &v20);
      _os_log_impl(&dword_0, v13, v14, "FatalError at %s:%lu - %s", v15, 0x20u);
      swift_arrayDestroy();
    }

    (*(v12 + 8))(v0[8], v1);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

_OWORD *InformationViewFactory.makeAceViewsForPegasus(layouts:dialogs:buttons:disambiguationLists:domainObjects:renderOptions:dialogPhase:requestId:pommesCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v191 = a7;
  v231 = a6;
  v204 = a5;
  v206 = a4;
  v209 = a3;
  v216 = a2;
  v229 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);
  __chkstk_darwin(v7 - 8);
  v192 = &v185 - v8;
  v190 = type metadata accessor for UUID();
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v188 = &v185 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent();
  v227 = *(v218 - 8);
  __chkstk_darwin(v218);
  v217 = &v185 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent();
  v198 = *(v228 - 8);
  __chkstk_darwin(v228);
  v226 = &v185 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent();
  v197 = *(v199 - 8);
  __chkstk_darwin(v199);
  v225 = &v185 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v196 = *(v224 - 8);
  __chkstk_darwin(v224);
  v223 = &v185 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v14 = *(v230 - 8);
  v15 = __chkstk_darwin(v230);
  v222 = &v185 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v185 - v17;
  v19 = type metadata accessor for ResponseMode();
  v221 = *(v19 - 8);
  __chkstk_darwin(v19);
  v186 = &v185 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSg_ADtMd, &_s13SiriUtilities12ResponseModeVSg_ADtMR);
  v21 = __chkstk_darwin(v220);
  v200 = &v185 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v214 = &v185 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v25 = __chkstk_darwin(v24 - 8);
  v185 = &v185 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v205 = &v185 - v28;
  v29 = __chkstk_darwin(v27);
  v187 = &v185 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v185 - v32;
  __chkstk_darwin(v31);
  v35 = &v185 - v34;
  v36 = type metadata accessor for Date();
  __chkstk_darwin(v36 - 8);
  v215 = &v185 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for PerformanceUtil.Ticket();
  v201 = *(v202 - 8);
  v38 = __chkstk_darwin(v202);
  v210 = &v185 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v213 = &v185 - v41;
  v42 = __chkstk_darwin(v40);
  v212 = &v185 - v43;
  v44 = __chkstk_darwin(v42);
  v211 = &v185 - v45;
  __chkstk_darwin(v44);
  v47 = &v185 - v46;
  if (one-time initialization token for information != -1)
  {
    goto LABEL_143;
  }

  while (1)
  {
    v48 = type metadata accessor for Logger();
    v203 = __swift_project_value_buffer(v48, static Logger.information);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    v51 = os_log_type_enabled(v49, v50);
    v219 = v33;
    if (v51)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_0, v49, v50, "PegasusViewFactory: makeAceViewsForPegasus", v52, 2u);
    }

    v234 = _swiftEmptyArrayStorage;
    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    type metadata accessor for SiriEnvironment();
    if (static SiriEnvironment.forCurrentTask.getter())
    {
      SiriEnvironment.currentRequest.getter();

      CurrentRequest.responseMode.getter();

      v53 = 0;
    }

    else
    {
      v53 = 1;
    }

    v54 = v221;
    v55 = v221 + 56;
    v56 = *(v221 + 56);
    v56(v35, v53, 1, v19);
    v57 = v219;
    static ResponseMode.displayForward.getter();
    v194 = v55;
    v193 = v56;
    v56(v57, 0, 1, v19);
    v58 = *(v220 + 48);
    v208 = v35;
    v59 = v35;
    v60 = v214;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v59, v214, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v57, v60 + v58, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    v61 = *(v54 + 48);
    v62 = v61(v60, 1, v19);
    v207 = v47;
    v195 = v61;
    if (v62 == 1)
    {
      outlined destroy of Any?(v57, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      v63 = v61(v60 + v58, 1, v19);
      v64 = v216;
      if (v63 == 1)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v65 = v187;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v60, v187, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    if (v61(v60 + v58, 1, v19) == 1)
    {
      outlined destroy of Any?(v219, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      (*(v221 + 8))(v65, v19);
LABEL_12:
      outlined destroy of Any?(v60, &_s13SiriUtilities12ResponseModeVSg_ADtMd, &_s13SiriUtilities12ResponseModeVSg_ADtMR);
      goto LABEL_13;
    }

    v71 = v221;
    v72 = v60 + v58;
    v73 = v186;
    (*(v221 + 32))(v186, v72, v19);
    lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(&lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode, &type metadata accessor for ResponseMode, &protocol conformance descriptor for ResponseMode);
    v74 = v65;
    v75 = dispatch thunk of static Equatable.== infix(_:_:)();
    v76 = *(v71 + 8);
    v76(v73, v19);
    outlined destroy of Any?(v219, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    v76(v74, v19);
    outlined destroy of Any?(v214, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    v64 = v216;
    if (v75)
    {
      goto LABEL_22;
    }

LABEL_13:
    v66 = v205;
    static ResponseMode.displayOnly.getter();
    v193(v66, 0, 1, v19);
    v67 = *(v220 + 48);
    v60 = v200;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v208, v200, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v66, v60 + v67, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    v68 = v195;
    if (v195(v60, 1, v19) == 1)
    {
      outlined destroy of Any?(v66, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      v69 = v68(v60 + v67, 1, v19);
      v64 = v216;
      if (v69 != 1)
      {
        goto LABEL_18;
      }

LABEL_15:
      outlined destroy of Any?(v60, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
LABEL_22:
      v81 = 0;
      v82 = *(v64 + 16);
      v83 = v230;
      do
      {
        if (v82 == v81)
        {
          break;
        }

        (*(v14 + 16))(v18, v64 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v81++, v83);
        v84 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.spokenOnly.getter();
        (*(v14 + 8))(v18, v83);
      }

      while ((v84 & 1) != 0);
      goto LABEL_25;
    }

    v70 = v185;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v60, v185, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    if (v68(v60 + v67, 1, v19) == 1)
    {
      outlined destroy of Any?(v66, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      (*(v221 + 8))(v70, v19);
      v64 = v216;
LABEL_18:
      outlined destroy of Any?(v60, &_s13SiriUtilities12ResponseModeVSg_ADtMd, &_s13SiriUtilities12ResponseModeVSg_ADtMR);
      goto LABEL_25;
    }

    v77 = v221;
    v78 = v186;
    (*(v221 + 32))(v186, v60 + v67, v19);
    lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(&lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode, &type metadata accessor for ResponseMode, &protocol conformance descriptor for ResponseMode);
    v79 = dispatch thunk of static Equatable.== infix(_:_:)();
    v80 = *(v77 + 8);
    v80(v78, v19);
    outlined destroy of Any?(v205, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    v80(v70, v19);
    outlined destroy of Any?(v60, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    v64 = v216;
    if (v79)
    {
      goto LABEL_22;
    }

LABEL_25:
    v233 = _swiftEmptyArrayStorage;
    v85 = *(v64 + 16);
    if (v85)
    {
      v221 = *(*v232 + 320);
      v220 = *(v14 + 16);
      v86 = v64 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v219 = *(v14 + 72);
      v87 = _swiftEmptyArrayStorage;
      do
      {
        v88 = v222;
        v89 = v230;
        (v220)(v222, v86, v230);
        v90 = (v221)(v88, v229);
        (*(v14 + 8))(v88, v89);
        if (v90)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v233 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v233 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v87 = v233;
        }

        v86 += v219;
        --v85;
      }

      while (v85);
    }

    else
    {
      v87 = _swiftEmptyArrayStorage;
    }

    v200 = v87 >> 62;
    if (v87 >> 62)
    {
      type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);

      v176 = _bridgeCocoaArray<A>(_:)();

      v91 = v176;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
      v91 = v87;
    }

    v205 = v87;
    specialized Array.append<A>(contentsOf:)(v91);
    v214 = type metadata accessor for PerformanceUtil();
    static PerformanceUtil.shared.getter();
    dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    v233 = _swiftEmptyArrayStorage;
    v92 = *(v229 + 16);
    if (v92)
    {
      v230 = *(*v232 + 192);
      v222 = *(v196 + 16);
      v93 = v229 + ((*(v196 + 80) + 32) & ~*(v196 + 80));
      v94 = *(v196 + 72);
      v95 = (v196 + 8);
      v216 = _swiftEmptyArrayStorage;
      do
      {
        v96 = v223;
        v97 = v224;
        (v222)(v223, v93, v224);
        v98 = (v230)(v96, v231);
        (*v95)(v96, v97);
        if (v98)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v233 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v233 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v229 = *(&dword_10 + (v233 & 0xFFFFFFFFFFFFFF8));
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v216 = v233;
        }

        v93 += v94;
        --v92;
      }

      while (v92);
    }

    else
    {
      v216 = _swiftEmptyArrayStorage;
    }

    specialized Array.append<A>(contentsOf:)(v99);
    static PerformanceUtil.shared.getter();
    dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    v100 = _swiftEmptyArrayStorage;
    v233 = _swiftEmptyArrayStorage;
    v101 = *(v209 + 16);
    if (v101)
    {
      v102 = (*v232 + 168);
      v230 = *v102;
      v229 = v102;
      v103 = *(v197 + 16);
      v104 = v209 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
      v105 = *(v197 + 72);
      v106 = (v197 + 8);
      v107 = v199;
      do
      {
        v108 = v225;
        v103(v225, v104, v107);
        (v230)(v108);
        (*v106)(v108, v107);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v233 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v233 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v107 = v199;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v104 += v105;
        --v101;
      }

      while (v101);
      v109 = v233;
      v100 = _swiftEmptyArrayStorage;
    }

    else
    {
      v109 = _swiftEmptyArrayStorage;
    }

    v47 = v231;
    v209 = v109;
    v199 = v109 >> 62;
    if (v109 >> 62)
    {
      type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);

      v177 = _bridgeCocoaArray<A>(_:)();

      v110 = v177;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
      v110 = v109;
    }

    specialized Array.append<A>(contentsOf:)(v110);
    static PerformanceUtil.shared.getter();
    dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    v233 = _swiftEmptyArrayStorage;
    v111 = *(v206 + 16);
    if (v111)
    {
      v112 = (*v232 + 176);
      v230 = *v112;
      v229 = v112;
      v113 = *(v198 + 16);
      v114 = v206 + ((*(v198 + 80) + 32) & ~*(v198 + 80));
      v115 = *(v198 + 72);
      v116 = (v198 + 8);
      do
      {
        v117 = v226;
        v118 = v228;
        v113(v226, v114, v228);
        (v230)(v117);
        (*v116)(v117, v118);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v233 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v233 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v225 = *(&dword_10 + (v233 & 0xFFFFFFFFFFFFFF8));
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v114 += v115;
        --v111;
      }

      while (v111);
      v100 = v233;
      v47 = v231;
    }

    v198 = v100 >> 62;
    if (v100 >> 62)
    {
      type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);

      v178 = _bridgeCocoaArray<A>(_:)();

      v119 = v178;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
      v119 = v100;
    }

    v206 = v100;
    specialized Array.append<A>(contentsOf:)(v119);
    static PerformanceUtil.shared.getter();
    dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    v226 = *(v204 + 16);
    if (!v226)
    {
      break;
    }

    v19 = 0;
    v120 = (*v232 + 184);
    v225 = *v120;
    v224 = v120;
    v223 = *(v227 + 16);
    v222 = (v204 + ((*(v227 + 80) + 32) & ~*(v227 + 80)));
    v18 = _swiftEmptyArrayStorage;
    v221 = v227 + 8;
    v227 += 16;
    v220 = *(v227 + 56);
    while (1)
    {
      v121 = v217;
      v122 = v218;
      (v223)(v217, &v222[v220 * v19], v218);
      v123 = (v225)(v121, v47);
      (*v221)(v121, v122);
      v33 = (v123 >> 62);
      if (v123 >> 62)
      {
        v124 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v124 = *(&dword_10 + (v123 & 0xFFFFFFFFFFFFFF8));
      }

      v125 = v18 >> 62;
      if (v18 >> 62)
      {
        v136 = _CocoaArrayWrapper.endIndex.getter();
        v127 = v136 + v124;
        if (__OFADD__(v136, v124))
        {
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }
      }

      else
      {
        v126 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
        v127 = v126 + v124;
        if (__OFADD__(v126, v124))
        {
          goto LABEL_91;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v125)
        {
          v128 = v18 & 0xFFFFFFFFFFFFFF8;
          if (v127 <= *(&dword_18 + (v18 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        }

LABEL_73:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_74;
      }

      if (v125)
      {
        goto LABEL_73;
      }

LABEL_74:
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v128 = v18 & 0xFFFFFFFFFFFFFF8;
LABEL_75:
      v129 = *(v128 + 16);
      v35 = *(v128 + 24);
      if (v33)
      {
        break;
      }

      v14 = *(&dword_10 + (v123 & 0xFFFFFFFFFFFFFF8));
      if (!v14)
      {
        goto LABEL_62;
      }

LABEL_79:
      if (((v35 >> 1) - v129) < v124)
      {
        goto LABEL_140;
      }

      v229 = v19;
      v230 = v18;
      v219 = v128;
      v130 = v128 + 8 * v129 + 32;
      v228 = v124;
      if (v33)
      {
        v19 = &_sSaySo9SAAceViewCGMR;
        if (v14 < 1)
        {
          goto LABEL_142;
        }

        lazy protocol witness table accessor for type [SAAceView] and conformance [A](&lazy protocol witness table cache variable for type [SAAceView] and conformance [A], &_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
        for (i = 0; i != v14; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
          v35 = specialized protocol witness for Collection.subscript.read in conformance [A](&v233, i, v123);
          v33 = *v132;
          (v35)(&v233, 0);
          *(v130 + 8 * i) = v33;
        }
      }

      else
      {
        v33 = (v123 & 0xFFFFFFFFFFFFFF8);
        type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
        swift_arrayInitWithCopy();
      }

      v47 = v231;
      v18 = v230;
      v19 = v229;
      if (v228 > 0)
      {
        v133 = *(v219 + 16);
        v134 = __OFADD__(v133, v228);
        v135 = v133 + v228;
        if (v134)
        {
          goto LABEL_141;
        }

        *(v219 + 16) = v135;
      }

LABEL_63:
      if (++v19 == v226)
      {
        goto LABEL_93;
      }
    }

    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_79;
    }

LABEL_62:

    if (v124 <= 0)
    {
      goto LABEL_63;
    }

    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    swift_once();
  }

LABEL_92:
  v18 = _swiftEmptyArrayStorage;
LABEL_93:

  v230 = v18;
  specialized Array.append<A>(contentsOf:)(v137);
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v138 = v206;
  if (v234 >> 62)
  {
    v179 = _CocoaArrayWrapper.endIndex.getter();
    v139 = v208;
    v140 = v205;
    v141 = v216;
    if (!v179)
    {
      goto LABEL_148;
    }

LABEL_95:

    v142 = v230;

    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.debug.getter();
    v145 = v141 >> 62;
    v146 = v142 >> 62;
    if (os_log_type_enabled(v143, v144))
    {
      v147 = swift_slowAlloc();
      *v147 = 134219008;
      if (v145)
      {
        v148 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v148 = *(&dword_10 + (v216 & 0xFFFFFFFFFFFFFF8));
      }

      *(v147 + 4) = v148;

      *(v147 + 12) = 2048;
      if (v200)
      {
        v149 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v149 = *(&dword_10 + (v140 & 0xFFFFFFFFFFFFFF8));
      }

      *(v147 + 14) = v149;

      *(v147 + 22) = 2048;
      if (v199)
      {
        v150 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v150 = *(&dword_10 + (v209 & 0xFFFFFFFFFFFFFF8));
      }

      *(v147 + 24) = v150;

      *(v147 + 32) = 2048;
      if (v198)
      {
        v151 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v151 = *(&dword_10 + (v138 & 0xFFFFFFFFFFFFFF8));
      }

      *(v147 + 34) = v151;

      *(v147 + 42) = 2048;
      if (v146)
      {
        v152 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v152 = *(&dword_10 + (v230 & 0xFFFFFFFFFFFFFF8));
      }

      *(v147 + 44) = v152;

      _os_log_impl(&dword_0, v143, v144, "PegasusViewFactory: pegasusResult generated\n    snippets %ld\n    utteranceViews %ld\n    buttonViews %ld\n    disambiguationListViews %ld\n    domainObjectViews %ld", v147, 0x34u);

      v141 = v216;
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21InformationFlowPlugin0D11ViewFactoryC03AceG8CategoryO_SitGMd, &_ss23_ContiguousArrayStorageCy21InformationFlowPlugin0D11ViewFactoryC03AceG8CategoryO_SitGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_BBFE0;
    *(inited + 32) = 0;
    if (v145)
    {
      v154 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v154 = *(&dword_10 + (v141 & 0xFFFFFFFFFFFFFF8));
    }

    *(inited + 40) = v154;
    *(inited + 48) = 1;
    v155 = v230;
    if (v200)
    {
      v156 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v156 = *(&dword_10 + (v140 & 0xFFFFFFFFFFFFFF8));
    }

    *(inited + 56) = v156;
    *(inited + 64) = 2;
    if (v199)
    {
      v157 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v157 = *(&dword_10 + (v209 & 0xFFFFFFFFFFFFFF8));
    }

    *(inited + 72) = v157;
    *(inited + 80) = 3;
    if (v198)
    {
      v158 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v158 = *(&dword_10 + (v138 & 0xFFFFFFFFFFFFFF8));
    }

    *(inited + 88) = v158;
    *(inited + 96) = 4;
    if (v146)
    {
      v159 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v159 = *(&dword_10 + (v155 & 0xFFFFFFFFFFFFFF8));
    }

    *(inited + 104) = v159;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21InformationFlowPlugin0C11ViewFactoryC03AceF8CategoryO_SiTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    v160 = [objc_allocWithZone(SAUIAddViews) init];
    v161 = v188;
    UUID.init()();
    UUID.uuidString.getter();
    (*(v189 + 8))(v161, v190);
    v162 = String._bridgeToObjectiveC()();

    [v160 setAceId:v162];

    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v160 setViews:isa];

    v164 = v192;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v191, v192, &_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);
    v165 = type metadata accessor for DialogPhase();
    v166 = *(v165 - 8);
    if ((*(v166 + 48))(v164, 1, v165) == 1)
    {
      outlined destroy of Any?(v164, &_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      DialogPhase.aceValue.getter();
      (*(v166 + 8))(v164, v165);
    }

    v167 = String._bridgeToObjectiveC()();

    [v160 setDialogPhase:v167];

    specialized _arrayForceCast<A, B>(_:)(_swiftEmptyArrayStorage);
    v168 = Array._bridgeToObjectiveC()().super.isa;

    [v160 setCoordinationOptions:v168];

    if (!v231)
    {

      v139 = v208;
      goto LABEL_138;
    }

    v169 = v231;
    [v160 setImmersiveExperience:PommesRenderOptions.isImmersiveExperience.getter() & 1];
    result = [v160 views];
    if (result)
    {
      v171 = result;

      v172 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v172 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = *(&dword_10 + (v172 & 0xFFFFFFFFFFFFFF8));
      }

      v139 = v208;
      if (!result)
      {

        goto LABEL_138;
      }

      if ((v172 & 0xC000000000000001) != 0)
      {
        v173 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_135;
      }

      if (*(&dword_10 + (v172 & 0xFFFFFFFFFFFFFF8)))
      {
        v173 = *(v172 + 32);
LABEL_135:
        v174 = v173;

        [v174 setPreserveResultSpaceIfPossible:PommesRenderOptions.preserveResultSpaceIfPossible.getter() & 1];

LABEL_138:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v175 = swift_allocObject();
        *(v175 + 1) = xmmword_B9BD0;
        v175[4] = v160;
        goto LABEL_151;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v139 = v208;
  v140 = v205;
  v141 = v216;
  if (*(&dword_10 + (v234 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_95;
  }

LABEL_148:

  v180 = Logger.logObject.getter();
  v181 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v180, v181))
  {
    v182 = swift_slowAlloc();
    *v182 = 0;
    _os_log_impl(&dword_0, v180, v181, "PegasusViewFactory: pegasusResult has no views", v182, 2u);
  }

  v175 = _swiftEmptyArrayStorage;
LABEL_151:
  v183 = *(v201 + 8);
  v184 = v202;
  v183(v210, v202);
  v183(v213, v184);
  v183(v212, v184);
  v183(v211, v184);
  outlined destroy of Any?(v139, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v183(v207, v184);
  return v175;
}

uint64_t InformationViewFactory.makeCommandForPegasusNavigation(layouts:)(uint64_t a1)
{
  v2 = v1;
  v38 = type metadata accessor for Date();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.information);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  v14 = os_log_type_enabled(v12, v13);
  v39 = v2;
  if (v14)
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = *(a1 + 16);

    _os_log_impl(&dword_0, v12, v13, "PegasusViewFactory: makeCommandForPegasusNavigation %ld", v15, 0xCu);
  }

  else
  {
  }

  v16 = *(a1 + 16);
  v17 = _swiftEmptyArrayStorage;
  if (v16)
  {
    v41 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v18 = type metadata accessor for PerformanceUtil();
    v20 = *(v8 + 16);
    v19 = v8 + 16;
    v36 = v20;
    v37 = v18;
    v21 = a1 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v34 = *(v19 + 56);
    v35 = "Make views for domain objects";
    v32 = (v4 + 8);
    v33 = v19;
    do
    {
      v36(v10, v21, v7);
      v22 = static PerformanceUtil.shared.getter();
      __chkstk_darwin(v22);
      Date.init()();
      v23 = type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
      v29 = &v27;
      v30 = v23;
      v28 = partial apply for closure #1 in closure #1 in InformationViewFactory.makeCommandForPegasusNavigation(layouts:);
      LOBYTE(v27) = 2;
      dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

      (*v32)(v6, v38);
      v24 = v40;
      [objc_msgSend(objc_allocWithZone(SACardShowNextCard) "init")];

      (*(v19 - 8))(v10, v7);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v21 += v34;
      --v16;
    }

    while (v16);
    v17 = v41;
  }

  if (v17 >> 62)
  {
    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);

    v25 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
    v25 = v17;
  }

  return v25;
}

id InformationViewFactory.makeButtonView(button:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [objc_allocWithZone(SAUIButton) init];
  UUID.init()();
  UUID.uuidString.getter();
  (*(v7 + 8))(v9, v6);
  v11 = String._bridgeToObjectiveC()();

  [v10 setAceId:v11];

  Apple_Parsec_Siri_V2alpha_ButtonViewComponent.text.getter();
  v12 = String._bridgeToObjectiveC()();

  [v10 setText:v12];

  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v16 = a1;
  Date.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo20SAClientBoundCommand_pGMd, &_sSaySo20SAClientBoundCommand_pGMR);
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setCommands:isa];

  return v10;
}

id InformationViewFactory.makeDisambiguationListView(list:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(SAUIDisambiguationList) init];
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams();
  lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_LocationBuilderParams and conformance Apple_Parsec_Siri_V2alpha_LocationBuilderParams, &type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams);
  static Google_Protobuf_Any.register(messageType:)();
  v4 = Apple_Parsec_Siri_V2alpha_DisambiguationListComponent.items.getter();
  v18 = _swiftEmptyArrayStorage;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v16 = v1 + 16;
    v7 = (v1 + 8);
    v14 = v5 - 1;
    while (v6 < *(v4 + 16))
    {
      (*(v1 + 16))(v3, v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v6, v0);
      closure #1 in InformationViewFactory.makeDisambiguationListView(list:)(v3, &v17);
      (*v7)(v3, v0);
      if (v17)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v18 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v13 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v13 = v6 + 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v8 = v14 == v6;
        v6 = v13;
        if (v8)
        {
          goto LABEL_11;
        }
      }

      else if (v5 == ++v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);

    (*v7)(v3, v0);

    __break(1u);
  }

  else
  {
LABEL_11:

    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUIListItem, SAUIListItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = v15;
    [v15 setItems:isa];

    return v10;
  }

  return result;
}

void closure #1 in InformationViewFactory.makeDisambiguationListView(list:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v71 = a2;
  v70 = type metadata accessor for Date();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams();
  v60 = *(v65 - 1);
  v5 = __chkstk_darwin(v65);
  v59 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v64 = &v58 - v7;
  v8 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v8 - 8);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Google_Protobuf_Any();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v58 - v15;
  v17 = [objc_allocWithZone(SAUIListItem) init];
  Apple_Parsec_Siri_V2alpha_DisambiguationListItem.title.getter();
  v18 = String._bridgeToObjectiveC()();

  [v17 setTitle:v18];

  Apple_Parsec_Siri_V2alpha_DisambiguationListItem.selectionText.getter();
  v19 = String._bridgeToObjectiveC()();

  v72 = v17;
  [v17 setSelectionText:v19];

  Apple_Parsec_Siri_V2alpha_DisambiguationListItem.object.getter();
  Google_Protobuf_Any.typeURL.getter();
  v22 = *(v11 + 8);
  v20 = (v11 + 8);
  v21 = v22;
  v58 = v16;
  v22(v16, v10);
  v23 = static Google_Protobuf_Any.messageType(forTypeURL:)();
  v25 = v24;

  if (v23)
  {
    v66 = a1;
    Apple_Parsec_Siri_V2alpha_DisambiguationListItem.object.getter();
    Google_Protobuf_Any.value.getter();
    v21(v14, v10);
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    default argument 3 of Message.init(serializedData:extensions:partial:options:)(v23);
    *(&v80 + 1) = v23;
    v81 = v25;
    __swift_allocate_boxed_opaque_existential_1(&v79);
    v26 = v73;
    Message.init(serializedData:extensions:partial:options:)();
    if (v26)
    {

      __swift_deallocate_boxed_opaque_existential_1(&v79);
      v81 = 0;
      v79 = 0u;
      v80 = 0u;
      outlined destroy of Any?(&v79, &_s21InternalSwiftProtobuf7Message_pSgMd, &_s21InternalSwiftProtobuf7Message_pSgMR);
    }

    else
    {
      outlined init with take of SiriSuggestionsBroker(&v79, v82);
      outlined init with copy of OutputPublisherAsync(v82, &v79);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf7Message_pMd, &_s21InternalSwiftProtobuf7Message_pMR);
      v27 = v64;
      v28 = v65;
      v29 = swift_dynamicCast();
      v30 = v66;
      if (v29)
      {
        v31 = v60;
        v32 = v59;
        (*(v60 + 32))(v59, v27, v28);
        v33 = specialized static PegasusACEConverters.makeLocation(params:)();
        [v72 setObject:v33];

        (*(v31 + 8))(v32, v28);
      }

      else
      {
        v65 = v21;
        v67 = v20;
        v64 = v10;
        if (one-time initialization token for information != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        __swift_project_value_buffer(v34, static Logger.information);
        outlined init with copy of OutputPublisherAsync(v82, &v76);
        v35 = v62;
        v36 = v61;
        v37 = v63;
        (*(v62 + 16))(v61, v30, v63);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *v40 = 136315394;
          LODWORD(v60) = v39;
          __swift_project_boxed_opaque_existential_1(&v76, *(&v77 + 1));
          DynamicType = swift_getDynamicType();
          v75 = v78;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf7Message_pXpMd, &_s21InternalSwiftProtobuf7Message_pXpMR);
          v41 = String.init<A>(describing:)();
          v73 = 0;
          v43 = v42;
          __swift_destroy_boxed_opaque_existential_0Tm(&v76);
          v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v83);

          *(v40 + 4) = v44;
          *(v40 + 12) = 2080;
          v45 = v58;
          Apple_Parsec_Siri_V2alpha_DisambiguationListItem.object.getter();
          v46 = Google_Protobuf_Any.typeURL.getter();
          v48 = v47;
          (v65)(v45, v64);
          (*(v35 + 8))(v36, v37);
          v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v83);

          *(v40 + 14) = v49;
          _os_log_impl(&dword_0, v38, v60, "Unknown or unsupported list item object type: %s (protobuf type url: %s)", v40, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          (*(v35 + 8))(v36, v37);
          __swift_destroy_boxed_opaque_existential_0Tm(&v76);
        }
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v82);
      __swift_destroy_boxed_opaque_existential_0Tm(&v79);
    }
  }

  type metadata accessor for PerformanceUtil();
  v50 = static PerformanceUtil.shared.getter();
  __chkstk_darwin(v50);
  v51 = v68;
  Date.init()();
  v56 = &v54;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo20SAClientBoundCommand_pGMd, &_sSaySo20SAClientBoundCommand_pGMR);
  v55 = partial apply for closure #1 in closure #1 in InformationViewFactory.makeDisambiguationListView(list:);
  LOBYTE(v54) = 2;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v69 + 8))(v51, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v53 = v72;
  [v72 setCommands:isa];

  *v71 = v53;
}

void *InformationViewFactory.makeDomainObjectComponentView(domainObject:renderOptions:)(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v37 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = (&v33 - v7);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMR);
  v9 = __chkstk_darwin(v36);
  v35 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v33 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  Apple_Parsec_Siri_V2alpha_DomainObjectComponent.component.getter();
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent.OneOf_Component();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v12, 1, v18) == 1)
  {
    outlined destroy of Any?(v12, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMR);
  }

  else
  {
    if ((*(v19 + 88))(v12, v18) == enum case for Apple_Parsec_Siri_V2alpha_DomainObjectComponent.OneOf_Component.videoObjects(_:))
    {
      (*(v19 + 96))(v12, v18);
      (*(v14 + 32))(v16, v12, v13);
      if (v34)
      {
        PommesRenderOptions.switchProfile.getter();
      }

      else
      {
        v31 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
        (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
      }

      v32 = specialized static VideoSnippetUtils.makeVideoSnippets(for:switchProfileBuilderParams:)(v16, v8);
      outlined destroy of Any?(v8, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
      (*(v14 + 8))(v16, v13);
      return v32;
    }

    (*(v19 + 8))(v12, v18);
  }

  v20 = v37;
  if (one-time initialization token for videoSnippet != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.videoSnippet);
  (*(v3 + 16))(v5, v17, v20);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v38 = v25;
    *v24 = 136315138;
    Apple_Parsec_Siri_V2alpha_DomainObjectComponent.component.getter();
    v26 = String.init<A>(describing:)();
    v28 = v27;
    (*(v3 + 8))(v5, v20);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v38);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_0, v22, v23, "Ignoring unsupported domain object component: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  else
  {

    (*(v3 + 8))(v5, v20);
  }

  return _swiftEmptyArrayStorage;
}

void *InformationViewFactory.makeSnippet(layoutSnippet:renderOptions:)(void *a1, uint64_t a2)
{
  v75 = a2;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v74 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v68 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v69 = &v68 - v11;
  __chkstk_darwin(v10);
  v70 = &v68 - v12;
  v13 = type metadata accessor for Date();
  v72 = *(v13 - 8);
  v73 = v13;
  __chkstk_darwin(v13);
  v71 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v68 - v23;
  v77 = a1;
  v25 = Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.perResultLayoutDetails.getter();
  if (*(v25 + 16))
  {
    (*(v16 + 16))(v18, v25 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v15);

    Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.snippet.getter();
    (*(v16 + 8))(v18, v15);
  }

  else
  {

    (*(v7 + 56))(v24, 1, 1, v6);
  }

  outlined init with copy of (String, Decodable & Encodable & Sendable)(v24, v22, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  if ((*(v7 + 48))(v22, 1, v6) != 1)
  {
    v37 = (*(v7 + 88))(v22, v6);
    if (v37 == enum case for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet.casinoSnippet(_:))
    {
      type metadata accessor for PerformanceUtil();
      v38 = static PerformanceUtil.shared.getter();
      __chkstk_darwin(v38);
      v64 = v76;
      v39 = v71;
      Date.init()();
      v66 = &v62;
      v67 = type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
      v65 = partial apply for closure #1 in InformationViewFactory.makeSnippet(layoutSnippet:renderOptions:);
      LOBYTE(v64) = 2;
      v62 = "makeSnippet(layoutSnippet:renderOptions:)";
      v63 = 41;
    }

    else if (v37 == enum case for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet.mapItemSnippet(_:))
    {
      type metadata accessor for PerformanceUtil();
      v44 = static PerformanceUtil.shared.getter();
      __chkstk_darwin(v44);
      v39 = v71;
      Date.init()();
      v66 = &v64;
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27SALocalSearchMapItemSnippetCSgMd, &_sSo27SALocalSearchMapItemSnippetCSgMR);
      v65 = partial apply for closure #2 in InformationViewFactory.makeSnippet(layoutSnippet:renderOptions:);
      LOBYTE(v64) = 2;
      v62 = "makeSnippet(layoutSnippet:renderOptions:)";
      v63 = 41;
    }

    else if (v37 == enum case for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet.legacySnippet(_:))
    {
      type metadata accessor for PerformanceUtil();
      v45 = static PerformanceUtil.shared.getter();
      __chkstk_darwin(v45);
      v39 = v71;
      Date.init()();
      v66 = &v64;
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11SAUISnippetCSgMd, &_sSo11SAUISnippetCSgMR);
      v65 = partial apply for closure #3 in InformationViewFactory.makeSnippet(layoutSnippet:renderOptions:);
      LOBYTE(v64) = 2;
      v62 = "makeSnippet(layoutSnippet:renderOptions:)";
      v63 = 41;
    }

    else
    {
      if (v37 != enum case for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet.personSnippet(_:))
      {
        v47 = v70;
        (*(v7 + 32))(v70, v22, v6);
        v48 = v7;
        if (one-time initialization token for information != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        __swift_project_value_buffer(v49, static Logger.information);
        v50 = *(v7 + 16);
        v51 = v69;
        v50(v69, v47, v6);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v78 = v77;
          *v54 = 136315138;
          v50(v68, v51, v6);
          v55 = String.init<A>(describing:)();
          v57 = v56;
          v58 = *(v48 + 8);
          v58(v51, v6);
          v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v78);

          *(v54 + 4) = v59;
          _os_log_impl(&dword_0, v52, v53, "InfoViewFactory unsupported snippet %s", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v77);

          v58(v70, v6);
        }

        else
        {

          v60 = *(v48 + 8);
          v60(v51, v6);
          v60(v47, v6);
        }

        goto LABEL_28;
      }

      type metadata accessor for PerformanceUtil();
      v46 = static PerformanceUtil.shared.getter();
      __chkstk_darwin(v46);
      v39 = v71;
      Date.init()();
      v66 = &v64;
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17SAABPersonSnippetCSgMd, &_sSo17SAABPersonSnippetCSgMR);
      v65 = partial apply for closure #4 in InformationViewFactory.makeSnippet(layoutSnippet:renderOptions:);
      LOBYTE(v64) = 2;
      v62 = "makeSnippet(layoutSnippet:renderOptions:)";
      v63 = 41;
    }

    dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

    (*(v72 + 8))(v39, v73);
    outlined destroy of Any?(v24, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
    v43 = v78;
    (*(v7 + 8))(v22, v6);
    return v43;
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = __swift_project_value_buffer(v26, static Logger.information);
  v28 = v74;
  v29 = v77;
  (*(v74 + 16))(v5, v77, v3);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v73 = v27;
    v33 = v32;
    v34 = swift_slowAlloc();
    v78 = v34;
    *v33 = 136315138;
    lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent and conformance Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent, &type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent);
    v35 = Message.textFormatString()();
    (*(v28 + 8))(v5, v3);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35._countAndFlagsBits, v35._object, &v78);

    *(v33 + 4) = v36;
    _os_log_impl(&dword_0, v30, v31, "InfoViewFactory missing perResultLayoutDetails snippet %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
  }

  else
  {

    (*(v28 + 8))(v5, v3);
  }

  if ((Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.hasCompactSnippet.getter() & 1) == 0)
  {
LABEL_28:
    outlined destroy of Any?(v24, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
    return 0;
  }

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_0, v40, v41, "InfoViewFactory received compact snippet without perResultLayoutDetails", v42, 2u);
  }

  v43 = (*(*v76 + 304))(v29, v75);
  outlined destroy of Any?(v24, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  return v43;
}

id InformationViewFactory.makeMapSnippet(layoutSnippet:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UIItemType();
  v87 = *(v2 - 8);
  v88 = v2;
  __chkstk_darwin(v2);
  v86 = v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v84 = *(v4 - 8);
  v85 = v4;
  __chkstk_darwin(v4);
  v83 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams();
  v94 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v92 = *(v9 - 8);
  v93 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v75 - v14;
  __chkstk_darwin(v13);
  v82 = v75 - v16;
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams();
  v80 = *(v17 - 8);
  v81 = v17;
  __chkstk_darwin(v17);
  v79 = v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  __chkstk_darwin(v23 - 8);
  v25 = v75 - v24;
  v26 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemSnippet();
  v90 = *(v26 - 8);
  v91 = v26;
  __chkstk_darwin(v26);
  v89 = v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.perResultLayoutDetails.getter();
  if (!*(v28 + 16))
  {

    v41 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
    (*(*(v41 - 8) + 56))(v25, 1, 1, v41);
    goto LABEL_9;
  }

  (*(v20 + 16))(v22, v28 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19);

  Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.snippet.getter();
  (*(v20 + 8))(v22, v19);
  v29 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v25, 1, v29) == 1)
  {
LABEL_9:
    outlined destroy of Any?(v25, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
    goto LABEL_10;
  }

  if ((*(v30 + 88))(v25, v29) == enum case for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet.mapItemSnippet(_:))
  {
    (*(v30 + 96))(v25, v29);
    v31 = v89;
    (*(v90 + 32))(v89, v25, v91);
    v32 = [objc_allocWithZone(SALocalSearchMapItemSnippet) init];
    v33 = Apple_Parsec_Siri_V2alpha_MapItemSnippet.objects.getter();
    v34 = *(v33 + 16);
    if (v34)
    {
      v76 = v32;
      v77 = a1;
      v95[0] = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v35 = v8;
      v36 = v6;
      v37 = v94 + 16;
      v94 = *(v94 + 16);
      v38 = (*(v37 + 64) + 32) & ~*(v37 + 64);
      v75[1] = v33;
      v39 = v33 + v38;
      v40 = *(v37 + 56);
      do
      {
        (v94)(v35, v39, v36);
        specialized static PegasusACEConverters.makeLocalSearchMapItem(params:)();
        (*(v37 - 8))(v35, v36);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v39 += v40;
        --v34;
      }

      while (v34);

      a1 = v77;
      v31 = v89;
      v32 = v76;
    }

    else
    {
    }

    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SALocalSearchMapItem, SALocalSearchMapItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v32 setItems:isa];

    Apple_Parsec_Siri_V2alpha_MapItemSnippet.responseViewID.getter();
    v56 = String._bridgeToObjectiveC()();

    [v32 setResponseViewId:v56];

    v57 = v79;
    Apple_Parsec_Siri_V2alpha_MapItemSnippet.searchRegionCenter.getter();
    v58 = specialized static PegasusACEConverters.makeLocation(params:)();
    (*(v80 + 8))(v57, v81);
    [v32 setSearchRegionCenter:v58];

    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    v59 = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
    [v32 setUserCurrentLocation:v59];

    [v32 setSearchAlongRoute:0];
    v60 = v82;
    (*(v92 + 16))(v82, a1, v93);
    v61 = v32;
    v62 = 0;
    if (AFIsInternalInstall())
    {
      (*(*v78 + 104))(v95);
      __swift_project_boxed_opaque_existential_1(v95, v95[3]);
      v63 = dispatch thunk of PommesServerFallbackDisabling.shouldDisableServerFallbackNL(isDomainDirected:)();
      __swift_destroy_boxed_opaque_existential_0Tm(v95);
      v62 = v63 ^ 1;
    }

    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUISash, SAUISash_ptr);
    v64 = SAUISash.init(layoutSnippet:showInternalPommesAttribution:)(v60, v62 & 1);
    [v61 setSash:v64];

    type metadata accessor for PerformanceUtil();
    v65 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v65);
    v66 = v83;
    Date.init()();
    v73 = &v71;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo20SAClientBoundCommand_pGMd, &_sSaySo20SAClientBoundCommand_pGMR);
    v72 = partial apply for closure #2 in InformationViewFactory.makeMapSnippet(layoutSnippet:);
    LOBYTE(v71) = 2;
    dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

    (*(v84 + 8))(v66, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v67 = Array._bridgeToObjectiveC()().super.isa;

    [v61 setProviderCommand:v67];

    v68 = v61;
    [v68 setIsTransient:Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.isTransient.getter() & 1];
    v69 = v86;
    Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.uiItemType.getter();
    Apple_Parsec_Siri_V2alpha_UIItemType.aceValue.getter();
    (*(v87 + 8))(v69, v88);
    v70 = String._bridgeToObjectiveC()();

    [v68 setItemType:v70];

    (*(v90 + 8))(v31, v91);
    return v68;
  }

  (*(v30 + 8))(v25, v29);
LABEL_10:
  v43 = v92;
  v42 = v93;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static Logger.information);
  v45 = *(v43 + 16);
  v45(v15, a1, v42);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v95[0] = v49;
    *v48 = 136315138;
    v45(v12, v15, v42);
    v50 = String.init<A>(describing:)();
    v52 = v51;
    (*(v43 + 8))(v15, v42);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v95);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_0, v46, v47, "InfoViewFactory invalid map snippet %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
  }

  else
  {

    (*(v43 + 8))(v15, v42);
  }

  return 0;
}

id SAUISash.init(layoutSnippet:showInternalPommesAttribution:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.sash.getter();
  v8 = Apple_Parsec_Siri_V2alpha_Sash.appName.getter();
  v10 = v9;
  v11 = *(v5 + 8);
  v11(v7, v4);
  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v12 && (a2 & 1) != 0)
  {
    v20 = v8;
    v21 = v10;
    v13._countAndFlagsBits = 0x454D4D4F50203A20;
    v13._object = 0xE900000000000053;
    String.append(_:)(v13);
    v8 = v20;
    v10 = v21;
  }

  Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.sash.getter();
  v14 = Apple_Parsec_Siri_V2alpha_Sash.appID.getter();
  v16 = v15;
  v11(v7, v4);
  v17 = SAUISash.init(appName:appID:)(v8, v10, v14, v16);
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v17;
}

uint64_t Apple_Parsec_Siri_V2alpha_UIItemType.aceValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UIItemType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for Apple_Parsec_Siri_V2alpha_UIItemType.UNRECOGNIZED(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v12, "unrecognized(");
    HIWORD(v12[1]) = -4864;
    v11[1] = v7;
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 41;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    return v12[0];
  }

  else if (v6 == enum case for Apple_Parsec_Siri_V2alpha_UIItemType.unspecified(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_UIItemType.conversation(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_UIItemType.result(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_UIItemType.floating(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_UIItemType.hint(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_UIItemType.announcement(_:))
  {
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 0x6E676F6365726E75;
  }
}

id InformationViewFactory.makePersonSnippet(layoutSnippet:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v86 = (&v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v87 = (&v72 - v6);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Person();
  v77 = *(v7 - 8);
  v78 = v7;
  __chkstk_darwin(v7);
  v76 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UIItemType();
  v80 = *(v9 - 8);
  __chkstk_darwin(v9);
  v79 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty();
  v12 = *(v11 - 8);
  v88 = v11;
  v89 = v12;
  __chkstk_darwin(v11);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  __chkstk_darwin(v19 - 8);
  v21 = &v72 - v20;
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonSnippet();
  v81 = *(v22 - 8);
  v82 = v22;
  __chkstk_darwin(v22);
  v83 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.perResultLayoutDetails.getter();
  if (!*(v24 + 16))
  {

    v43 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
    (*(*(v43 - 8) + 56))(v21, 1, 1, v43);
    goto LABEL_14;
  }

  (*(v16 + 16))(v18, v24 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v15);

  Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.snippet.getter();
  (*(v16 + 8))(v18, v15);
  v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v21, 1, v25) == 1)
  {
LABEL_14:
    outlined destroy of Any?(v21, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
    goto LABEL_15;
  }

  if ((*(v26 + 88))(v21, v25) == enum case for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet.personSnippet(_:))
  {
    (*(v26 + 96))(v21, v25);
    (*(v81 + 32))(v83, v21, v82);
    v27 = [objc_allocWithZone(SAABPersonSnippet) init];
    v28 = Apple_Parsec_Siri_V2alpha_PersonSnippet.displayProperties.getter();
    v29 = *(v28 + 16);
    v74 = v9;
    v75 = a1;
    v73 = v27;
    if (v29)
    {
      v30 = v84;
      v87 = *(*v84 + 216);
      v31 = *(v89 + 16);
      v32 = *(v89 + 80);
      v72 = v28;
      v33 = v28 + ((v32 + 32) & ~v32);
      v85 = *(v89 + 72);
      v86 = v31;
      v89 += 16;
      v34 = (v89 - 8);
      v35 = _swiftEmptyArrayStorage;
      do
      {
        v37 = v88;
        v86(v14, v33, v88);
        v38 = v87(v14);
        v40 = v39;
        (*v34)(v14, v37);
        if (v40)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
          }

          v42 = *(v35 + 2);
          v41 = *(v35 + 3);
          if (v42 >= v41 >> 1)
          {
            v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v35);
          }

          *(v35 + 2) = v42 + 1;
          v36 = &v35[16 * v42];
          *(v36 + 4) = v38;
          *(v36 + 5) = v40;
          v30 = v84;
        }

        v33 += v85;
        --v29;
      }

      while (v29);

      v9 = v74;
      v57 = v80;
      v27 = v73;
    }

    else
    {

      v30 = v84;
      v57 = v80;
    }

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v27 setDisplayProperties:isa];

    v59 = Apple_Parsec_Siri_V2alpha_PersonSnippet.objects.getter();
    v60 = *(v59 + 16);
    if (v60)
    {
      v90 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v61 = *(*v30 + 224);
      v88 = *v30 + 224;
      v89 = v61;
      v62 = v78;
      v63 = *(v77 + 16);
      v64 = *(v77 + 80);
      v85 = v59;
      v65 = v59 + ((v64 + 32) & ~v64);
      v86 = *(v77 + 72);
      v87 = v63;
      v66 = (v77 + 8);
      v67 = v76;
      do
      {
        (v87)(v67, v65, v62);
        (v89)(v67);
        (*v66)(v67, v62);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v65 += v86;
        --v60;
      }

      while (v60);

      v9 = v74;
      v57 = v80;
      v27 = v73;
    }

    else
    {
    }

    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAPerson, SAPerson_ptr);
    v68 = Array._bridgeToObjectiveC()().super.isa;

    [v27 setPersons:v68];

    v69 = v27;
    v70 = v79;
    Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.uiItemType.getter();
    Apple_Parsec_Siri_V2alpha_UIItemType.aceValue.getter();
    (*(v57 + 8))(v70, v9);
    v71 = String._bridgeToObjectiveC()();

    [v69 setItemType:v71];

    [v69 setIsTransient:Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.isTransient.getter() & 1];
    (*(v81 + 8))(v83, v82);
    return v69;
  }

  (*(v26 + 8))(v21, v25);
LABEL_15:
  v44 = v3;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static Logger.information);
  v46 = *(v3 + 16);
  v47 = v87;
  v46(v87, a1, v2);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v90 = v51;
    *v50 = 136315138;
    v46(v86, v47, v2);
    v52 = String.init<A>(describing:)();
    v54 = v53;
    (*(v44 + 8))(v47, v2);
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v90);

    *(v50 + 4) = v55;
    _os_log_impl(&dword_0, v48, v49, "InfoViewFactory invalid person snippet %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
  }

  else
  {

    (*(v44 + 8))(v47, v2);
  }

  return 0;
}

uint64_t InformationViewFactory.makePersonDisplayProperty(personProperty:)(char *a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v25 - v8;
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = *(v3 + 16);
  v12(&v25 - v10, a1, v2);
  v13 = (*(v3 + 88))(v11, v2);
  if (v13 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.firstName(_:) || v13 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.fullName(_:) || v13 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.lastName(_:) || v13 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.middleName(_:) || v13 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.nickName(_:) || v13 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.prefix(_:) || v13 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.suffix(_:) || v13 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.me(_:) || v13 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.phones(_:) || v13 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.company(_:) || v13 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.addresses(_:) || v13 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.emails(_:) || v13 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.relatedNames(_:))
  {
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.information);
  v16 = v12;
  v12(v9, a1, v2);
  v17 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v27))
  {
    v18 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v18 = 136315138;
    v16(v6, v9, v2);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    v22 = *(v3 + 8);
    v22(v9, v2);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v28);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_0, v17, v27, "Unable to translate an unknown person display property key: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);

    v22(v11, v2);
  }

  else
  {

    v24 = *(v3 + 8);
    v24(v9, v2);
    v24(v11, v2);
  }

  return 0;
}

id InformationViewFactory.makePerson(_:)()
{
  v64 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress();
  v0 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = v58 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(SAPerson) init];
  v10 = Apple_Parsec_Siri_V2alpha_Person.contactIdentifier.getter();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    Apple_Parsec_Siri_V2alpha_Person.contactIdentifier.getter();
    URL.init(string:)();

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      outlined destroy of Any?(v4, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      v14 = v9;
      URL._bridgeToObjectiveC()(v15);
      v17 = v16;
      [v14 setIdentifier:v16];

      (*(v6 + 8))(v8, v5);
    }
  }

  v18 = Apple_Parsec_Siri_V2alpha_Person.givenName.getter();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    Apple_Parsec_Siri_V2alpha_Person.givenName.getter();
    v22 = String._bridgeToObjectiveC()();

    [v9 setFirstName:v22];
  }

  v23 = Apple_Parsec_Siri_V2alpha_Person.middleName.getter();
  v25 = v24;

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    Apple_Parsec_Siri_V2alpha_Person.middleName.getter();
    v27 = String._bridgeToObjectiveC()();

    [v9 setMiddleName:v27];
  }

  v28 = Apple_Parsec_Siri_V2alpha_Person.familyName.getter();
  v30 = v29;

  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    Apple_Parsec_Siri_V2alpha_Person.familyName.getter();
    v32 = String._bridgeToObjectiveC()();

    [v9 setLastName:v32];
  }

  v33 = Apple_Parsec_Siri_V2alpha_Person.nickname.getter();
  v35 = v34;

  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    Apple_Parsec_Siri_V2alpha_Person.nickname.getter();
    v37 = String._bridgeToObjectiveC()();

    [v9 setNickName:v37];
  }

  v38 = Apple_Parsec_Siri_V2alpha_Person.fullName.getter();
  v40 = v39;

  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    Apple_Parsec_Siri_V2alpha_Person.fullName.getter();
    v42 = String._bridgeToObjectiveC()();

    [v9 setFullName:v42];
  }

  v43 = *(Apple_Parsec_Siri_V2alpha_Person.addresses.getter() + 16);

  if (v43)
  {
    v44 = Apple_Parsec_Siri_V2alpha_Person.addresses.getter();
    v66 = _swiftEmptyArrayStorage;
    v45 = *(v44 + 16);
    if (v45)
    {
      v59 = v9;
      v46 = *(*v65 + 232);
      v61 = *v65 + 232;
      v62 = v46;
      v49 = *(v0 + 16);
      v48 = v0 + 16;
      v47 = v49;
      v50 = (*(v48 + 64) + 32) & ~*(v48 + 64);
      v60 = v44;
      v51 = v44 + v50;
      v52 = *(v48 + 56);
      v53 = (v48 - 8);
      do
      {
        v55 = v63;
        v54 = v64;
        v47(v63, v51, v64);
        v62(v55);
        (*v53)(v55, v54);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v66 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v58[1] = *(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8));
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v51 += v52;
        --v45;
      }

      while (v45);

      v9 = v59;
    }

    else
    {
    }

    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SALocation, SALocation_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 setAddresses:isa];
  }

  return v9;
}

id InformationViewFactory.makeAddress(_:)()
{
  v0 = [objc_allocWithZone(SALocation) init];
  v1 = Apple_Parsec_Siri_V2alpha_ContactAddress.addressLabel.getter();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    Apple_Parsec_Siri_V2alpha_ContactAddress.addressLabel.getter();
    v5 = String._bridgeToObjectiveC()();

    [v0 setLabel:v5];
  }

  v6 = Apple_Parsec_Siri_V2alpha_ContactAddress.street.getter();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    Apple_Parsec_Siri_V2alpha_ContactAddress.street.getter();
    v10 = String._bridgeToObjectiveC()();

    [v0 setStreet:v10];
  }

  v11 = Apple_Parsec_Siri_V2alpha_ContactAddress.city.getter();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    Apple_Parsec_Siri_V2alpha_ContactAddress.city.getter();
    v15 = String._bridgeToObjectiveC()();

    [v0 setCity:v15];
  }

  v16 = Apple_Parsec_Siri_V2alpha_ContactAddress.state.getter();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    Apple_Parsec_Siri_V2alpha_ContactAddress.state.getter();
    v20 = String._bridgeToObjectiveC()();

    [v0 setStateCode:v20];
  }

  v21 = Apple_Parsec_Siri_V2alpha_ContactAddress.zipCode.getter();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    Apple_Parsec_Siri_V2alpha_ContactAddress.zipCode.getter();
    v25 = String._bridgeToObjectiveC()();

    [v0 setPostalCode:v25];
  }

  v26 = Apple_Parsec_Siri_V2alpha_ContactAddress.countryCode.getter();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    Apple_Parsec_Siri_V2alpha_ContactAddress.countryCode.getter();
    v30 = String._bridgeToObjectiveC()();

    [v0 setCountryCode:v30];
  }

  return v0;
}

void *InformationViewFactory.makeLegacySnippet(layoutSnippet:)(char *a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UIItemType();
  v78 = *(v2 - 8);
  v79 = v2;
  __chkstk_darwin(v2);
  v77 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v77 - v10;
  __chkstk_darwin(v9);
  v80 = &v77 - v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMd, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMR);
  v13 = __chkstk_darwin(v83);
  v82 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v84 = &v77 - v16;
  __chkstk_darwin(v15);
  v87 = &v77 - v17;
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  __chkstk_darwin(v22 - 8);
  v24 = &v77 - v23;
  v88 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet();
  v86 = *(v88 - 8);
  v25 = __chkstk_darwin(v88);
  v85 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v77 - v27;
  v89 = a1;
  v29 = Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.perResultLayoutDetails.getter();
  if (!*(v29 + 16))
  {

    v44 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
    (*(*(v44 - 8) + 56))(v24, 1, 1, v44);
    goto LABEL_10;
  }

  (*(v19 + 16))(v21, v29 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v18);

  Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.snippet.getter();
  (*(v19 + 8))(v21, v18);
  v30 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v24, 1, v30) == 1)
  {
LABEL_10:
    outlined destroy of Any?(v24, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
LABEL_11:
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.information);
    v46 = *(v5 + 16);
    v46(v11, v89, v4);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v90[0] = v50;
      *v49 = 136315138;
      v46(v8, v11, v4);
      v51 = String.init<A>(describing:)();
      v53 = v52;
      (*(v5 + 8))(v11, v4);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v90);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_0, v47, v48, "InfoViewFactory invalid legacy snippet %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }

    return 0;
  }

  if ((*(v31 + 88))(v24, v30) != enum case for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet.legacySnippet(_:))
  {
    (*(v31 + 8))(v24, v30);
    goto LABEL_11;
  }

  (*(v31 + 96))(v24, v30);
  v32 = v86;
  v33 = v28;
  v34 = v24;
  v35 = v88;
  (*(v86 + 32))(v28, v34, v88);
  v36 = v87;
  Apple_Parsec_Siri_Legacy_LegacySnippet.snippet.getter();
  v37 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
LABEL_18:
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.information);
    v56 = v85;
    (*(v32 + 16))(v85, v33, v35);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v90[0] = v60;
      *v59 = 136315138;
      Apple_Parsec_Siri_Legacy_LegacySnippet.snippet.getter();
      v61 = String.init<A>(describing:)();
      v89 = v33;
      v62 = v32;
      v63 = v61;
      v65 = v64;
      v66 = *(v62 + 8);
      v67 = v56;
      v68 = v88;
      v66(v67, v88);
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, v90);

      *(v59 + 4) = v69;
      _os_log_impl(&dword_0, v57, v58, "InfoViewFactory unsupported legacy snippet %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);

      v66(v89, v68);
    }

    else
    {

      v70 = *(v32 + 8);
      v70(v56, v35);
      v70(v33, v35);
    }

    outlined destroy of Any?(v36, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMd, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMR);
    return 0;
  }

  v39 = v84;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v36, v84, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMd, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMR);
  if ((*(v38 + 88))(v39, v37) != enum case for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet.generalKnowledgeSnippet(_:))
  {
    (*(v38 + 8))(v39, v37);
    goto LABEL_18;
  }

  v40 = (*(*v81 + 248))(v33);
  if (v40)
  {
    (*(v5 + 16))(v80, v89, v4);
    v41 = v40;
    if (AFIsInternalInstall())
    {
      (*(*v81 + 104))(v90);
      __swift_project_boxed_opaque_existential_1(v90, v90[3]);
      v42 = dispatch thunk of PommesServerFallbackDisabling.shouldDisableServerFallbackNL(isDomainDirected:)();
      __swift_destroy_boxed_opaque_existential_0Tm(v90);
      v43 = v42 ^ 1;
    }

    else
    {
      v43 = 0;
    }

    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUISash, SAUISash_ptr);
    v72 = SAUISash.init(layoutSnippet:showInternalPommesAttribution:)(v80, v43 & 1);
    [v41 setSash:v72];

    v73 = v41;
    v74 = v77;
    Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.uiItemType.getter();
    Apple_Parsec_Siri_V2alpha_UIItemType.aceValue.getter();
    (*(v78 + 8))(v74, v79);
    v75 = String._bridgeToObjectiveC()();

    [v73 setItemType:v75];

    v76 = v73;
    [v76 setIsTransient:Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.isTransient.getter() & 1];

    v35 = v88;
    v32 = v86;
    v39 = v84;
  }

  (*(v32 + 8))(v33, v35);
  (*(v38 + 8))(v39, v37);
  outlined destroy of Any?(v87, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMd, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMR);
  return v40;
}

id InformationViewFactory.makeGeneralKnowledgeSnippet(legacySnippet:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v57 - v7;
  v9 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut();
  v62 = *(v9 - 8);
  __chkstk_darwin(v9);
  v60 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMd, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMR);
  __chkstk_darwin(v13 - 8);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet();
  v63 = *(v16 - 8);
  v64 = v16;
  __chkstk_darwin(v16);
  v61 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_Legacy_LegacySnippet.snippet.getter();
  v18 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v15, 1, v18) == 1)
  {
    outlined destroy of Any?(v15, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMd, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMR);
LABEL_21:
    v42 = v3;
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.information);
    v44 = *(v3 + 16);
    v44(v8, a1, v2);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v70 = v48;
      *v47 = 136315138;
      v44(v6, v8, v2);
      v49 = String.init<A>(describing:)();
      v51 = v50;
      (*(v42 + 8))(v8, v2);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v70);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_0, v45, v46, "InfoViewFactory invalid general knowledge snippet %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
    }

    else
    {

      (*(v42 + 8))(v8, v2);
    }

    return 0;
  }

  if ((*(v19 + 88))(v15, v18) != enum case for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet.generalKnowledgeSnippet(_:))
  {
    (*(v19 + 8))(v15, v18);
    goto LABEL_21;
  }

  (*(v19 + 96))(v15, v18);
  v20 = v61;
  (*(v63 + 32))(v61, v15, v64);
  v21 = [objc_allocWithZone(SAGKSnippet) init];
  [v21 setCategory:Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.category.getter()];
  v22 = Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.title.getter();
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.title.getter();
    v26 = String._bridgeToObjectiveC()();

    [v21 setTitle:v26];
  }

  v27 = Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.subtitle.getter();
  v29 = v28;

  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = v27 & 0xFFFFFFFFFFFFLL;
  }

  v31 = v21;
  v32 = v62;
  if (v30)
  {
    Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.subtitle.getter();
    v31 = String._bridgeToObjectiveC()();

    [v21 setSubtitle:v31];
  }

  v33 = Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.pods.getter();
  v70 = _swiftEmptyArrayStorage;
  v34 = *(v33 + 16);
  if (v34)
  {
    v57 = v21;
    v58 = v9;
    v35 = v68;
    v67 = *(*v69 + 272);
    v36 = v66 + 16;
    v66 = *(v66 + 16);
    v37 = *(v36 + 64);
    v59 = v33;
    v38 = v33 + ((v37 + 32) & ~v37);
    v39 = *(v36 + 56);
    v40 = (v36 - 8);
    v65 = _swiftEmptyArrayStorage;
    (v66)(v12, v38, v68);
    while (1)
    {
      v41 = v67(v12);
      (*v40)(v12, v35);
      if (v41)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v70 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v65 = *(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8));
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v65 = v70;
      }

      v38 += v39;
      if (!--v34)
      {
        break;
      }

      (v66)(v12, v38, v35);
    }

    v21 = v57;
    v9 = v58;
    v20 = v61;
    v32 = v62;
  }

  else
  {
  }

  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAGKPodView, SAGKPodView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v21 setPods:isa];

  if (Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.hasAppPunchOut.getter())
  {
    v54 = v60;
    Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.appPunchOut.getter();
    v55 = (*(*v69 + 256))(v54);
    (*(v32 + 8))(v54, v9);
    [v21 setAppPunchOut:v55];
  }

  (*(v63 + 8))(v20, v64);
  return v21;
}

id InformationViewFactory.makeGeneralKnowledgeAppPunchOut(legacyAppPunchOut:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v55[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v55[-v6];
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v55[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [objc_allocWithZone(SAUIAppPunchOut) init];
  [v12 setAppAvailableInStorefront:Apple_Parsec_Siri_Legacy_AppPunchOut.appAvailableStorefront.getter() & 1];
  v13 = Apple_Parsec_Siri_Legacy_AppPunchOut.appDisplayName.getter();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    Apple_Parsec_Siri_Legacy_AppPunchOut.appDisplayName.getter();
    v17 = String._bridgeToObjectiveC()();

    [v12 setAppDisplayName:v17];
  }

  Apple_Parsec_Siri_Legacy_AppPunchOut.appIcon.getter();
  v18 = (*(*v1 + 264))(v11);
  (*(v9 + 8))(v11, v8);
  [v12 setAppIcon:v18];

  v19 = Apple_Parsec_Siri_Legacy_AppPunchOut.appIconMap.getter();

  specialized _NativeDictionary.mapValues<A>(_:)(v19, v1);

  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUIImageResource, SAUIImageResource_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 setAppIconMap:isa];

  [v12 setAppInstalled:Apple_Parsec_Siri_Legacy_AppPunchOut.appInstalled.getter() & 1];
  v21 = Apple_Parsec_Siri_Legacy_AppPunchOut.appStoreUri.getter();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    Apple_Parsec_Siri_Legacy_AppPunchOut.appStoreUri.getter();
    URL.init(string:)();

    v25 = type metadata accessor for URL();
    v26 = *(v25 - 8);
    v28 = 0;
    if ((*(v26 + 48))(v7, 1, v25) != 1)
    {
      URL._bridgeToObjectiveC()(v27);
      v28 = v29;
      (*(v26 + 8))(v7, v25);
    }

    [v12 setAppStoreUri:v28];
  }

  v30 = Apple_Parsec_Siri_Legacy_AppPunchOut.bundleID.getter();
  v32 = v31;

  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    Apple_Parsec_Siri_Legacy_AppPunchOut.bundleID.getter();
    v34 = String._bridgeToObjectiveC()();

    [v12 setBundleId:v34];
  }

  v35 = Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutName.getter();
  v37 = v36;

  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutName.getter();
    v39 = String._bridgeToObjectiveC()();

    [v12 setPunchOutName:v39];
  }

  v40 = Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutUri.getter();
  v42 = v41;

  v43 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v43 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (v43)
  {
    Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutUri.getter();
    URL.init(string:)();

    v44 = type metadata accessor for URL();
    v45 = *(v44 - 8);
    v47 = 0;
    if ((*(v45 + 48))(v5, 1, v44) != 1)
    {
      URL._bridgeToObjectiveC()(v46);
      v47 = v48;
      (*(v45 + 8))(v5, v44);
    }

    [v12 setPunchOutUri:v47];
  }

  v49 = Apple_Parsec_Siri_Legacy_AppPunchOut.subtitle.getter();
  v51 = v50;

  v52 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v52 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (v52)
  {
    Apple_Parsec_Siri_Legacy_AppPunchOut.subtitle.getter();
    v53 = String._bridgeToObjectiveC()();

    [v12 setSubtitle:v53];
  }

  return v12;
}

id InformationViewFactory.makeImageResource(legacyImageResource:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = [objc_allocWithZone(SAUIImageResource) init];
  v4 = Apple_Parsec_Siri_Legacy_ImageResource.imageData.getter();
  v6 = v5;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v4, v6);
  [v3 setImageData:isa];

  Apple_Parsec_Siri_Legacy_ImageResource.pixelHeight.getter();
  [v3 setPixelHeight:?];
  Apple_Parsec_Siri_Legacy_ImageResource.pixelWidth.getter();
  [v3 setPixelWidth:?];
  Apple_Parsec_Siri_Legacy_ImageResource.resourceURL.getter();
  URL.init(string:)();

  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v11 = 0;
  if ((*(v9 + 48))(v2, 1, v8) != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v11 = v12;
    (*(v9 + 8))(v2, v8);
  }

  [v3 setResourceUrl:v11];

  Apple_Parsec_Siri_Legacy_ImageResource.scaleFactor.getter();
  [v3 setScaleFactor:?];
  Apple_Parsec_Siri_Legacy_ImageResource.urlFormatString.getter();
  v13 = String._bridgeToObjectiveC()();

  [v3 setUrlFormatString:v13];

  Apple_Parsec_Siri_Legacy_ImageResource.userAgent.getter();
  v14 = String._bridgeToObjectiveC()();

  [v3 setUserAgent:v14];

  return v3;
}

id InformationViewFactory.makeGeneralKnowledgePodViews(podView:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView();
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod();
  v59 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v50 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource();
  v52 = *(v11 - 8);
  v53 = v11;
  __chkstk_darwin(v11);
  v51 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod();
  v57 = *(v13 - 8);
  v58 = v13;
  v14 = __chkstk_darwin(v13);
  v55 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v56 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMd, &_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMR);
  v17 = __chkstk_darwin(v60);
  v18 = __chkstk_darwin(v17);
  v20 = &v50 - v19;
  __chkstk_darwin(v18);
  v22 = &v50 - v21;
  v23 = a1;
  Apple_Parsec_Siri_Legacy_PodView.pod.getter();
  v24 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v22, 1, v24) != 1)
  {
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v22, v20, &_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMd, &_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMR);
    v39 = (*(v25 + 88))(v20, v24);
    if (v39 == enum case for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod.imagePod(_:))
    {
      (*(v25 + 96))(v20, v24);
      v40 = v59;
      (*(v59 + 32))(v10, v20, v5);
      type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAGKImagePod, SAGKImagePod_ptr);
      (*(v40 + 16))(v8, v10, v5);
      v41 = SAGKImagePod.init(imagePod:)(v8);
      (*(v40 + 8))(v10, v5);
      goto LABEL_10;
    }

    if (v39 == enum case for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod.summaryPod(_:))
    {
      (*(v25 + 96))(v20, v24);
      v44 = v56;
      v43 = v57;
      v45 = v58;
      (*(v57 + 32))(v56, v20, v58);
      if (Apple_Parsec_Siri_Legacy_SummaryPod.hasImageResource.getter())
      {
        v46 = v51;
        Apple_Parsec_Siri_Legacy_SummaryPod.imageResource.getter();
        v47 = (*(*v54 + 264))(v46);
        (*(v52 + 8))(v46, v53);
        type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAGKSummaryPod, SAGKSummaryPod_ptr);
        v48 = v55;
        (*(v43 + 16))(v55, v44, v45);
        v41 = specialized SAGKSummaryPod.init(summaryPod:imageResource:)(v48, v47);
      }

      else
      {
        type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAGKSummaryPod, SAGKSummaryPod_ptr);
        v49 = v55;
        (*(v43 + 16))(v55, v44, v45);
        v41 = specialized SAGKSummaryPod.init(summaryPod:imageResource:)(v49, 0);
      }

      (*(v43 + 8))(v44, v45);
      goto LABEL_10;
    }

    (*(v25 + 8))(v20, v24);
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.information);
  v27 = v61;
  v28 = v23;
  v29 = v62;
  (*(v61 + 16))(v4, v28, v62);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = v4;
    v34 = swift_slowAlloc();
    v63 = v34;
    *v32 = 136315138;
    Apple_Parsec_Siri_Legacy_PodView.pod.getter();
    v35 = String.init<A>(describing:)();
    v37 = v36;
    (*(v27 + 8))(v33, v29);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v63);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_0, v30, v31, "InfoViewFactory unhandled General Knowledge Pod: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
  }

  else
  {

    (*(v27 + 8))(v4, v29);
  }

  v41 = 0;
LABEL_10:
  outlined destroy of Any?(v22, &_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMd, &_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMR);
  return v41;
}

id SAGKSummaryPod.init(summaryPod:imageResource:)(uint64_t a1, void *a2)
{
  v3 = specialized SAGKSummaryPod.init(summaryPod:imageResource:)(a1, a2);

  return v3;
}

id SAGKImagePod.init(imagePod:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut();
  __chkstk_darwin(v2 - 8);
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource();
  __chkstk_darwin(v4 - 8);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v35 - v11;
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = Apple_Parsec_Siri_Legacy_ImagePod.images.getter();
  v14 = *(v13 + 16);
  if (v14)
  {
    v36 = v12;
    v37 = a1;
    v46 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v16 = *(v7 + 16);
    v15 = v7 + 16;
    v17 = *(v15 + 64);
    v35 = v13;
    v18 = v13 + ((v17 + 32) & ~v17);
    v19 = v46;
    v20 = (v15 - 8);
    v40 = *(v15 + 56);
    v41 = v16;
    v42 = v15;
    do
    {
      v21 = v43;
      v22 = v41;
      v41(v43, v18, v6);
      v22(v10, v21, v6);
      v23 = objc_allocWithZone(SAGKImageLinkedAnswer);
      v24 = [v23 init];
      if (Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.hasImageResource.getter())
      {
        type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUIImageResource, SAUIImageResource_ptr);
        v25 = v38;
        Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.imageResource.getter();
        v26 = SAUIImageResource.init(imageResource:)(v25);
        [v24 setImageResource:v26];
      }

      if (Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.hasPunchOut.getter())
      {
        type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUIAppPunchOut, SAUIAppPunchOut_ptr);
        v27 = v39;
        Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.punchOut.getter();
        v28 = SAUIAppPunchOut.init(punchOut:)(v27);
        [v24 setPunchOut:v28];
      }

      v29 = *v20;
      (*v20)(v10, v6);
      v45 = type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAGKImageLinkedAnswer, SAGKImageLinkedAnswer_ptr);
      *&v44 = v24;
      v29(v43, v6);
      v46 = v19;
      v31 = v19[2];
      v30 = v19[3];
      if (v31 >= v30 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
        v19 = v46;
      }

      v19[2] = v31 + 1;
      outlined init with take of Any(&v44, &v19[4 * v31 + 4]);
      v18 += v40;
      --v14;
    }

    while (v14);

    v12 = v36;
    a1 = v37;
  }

  else
  {
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 setImages:isa];

  v33 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod();
  (*(*(v33 - 8) + 8))(a1, v33);
  return v12;
}

uint64_t InformationViewFactory.makeCard(perResultLayoutDetails:renderOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v6 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI21Searchfoundation_CardVSgMd, &_s10PegasusAPI21Searchfoundation_CardVSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for Searchfoundation_Card();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v38 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v36 = &v30 - v15;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails() - 8);
    v18 = (v11 + 48);
    v34 = v11;
    v19 = (v11 + 32);
    v20 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v21 = *(v17 + 72);
    v22 = _swiftEmptyArrayStorage;
    v35 = v10;
    v33 = v21;
    do
    {
      closure #1 in InformationViewFactory.makeCard(perResultLayoutDetails:renderOptions:)(v20, v4, v9);
      if ((*v18)(v9, 1, v10) == 1)
      {
        v14 = outlined destroy of Any?(v9, &_s10PegasusAPI21Searchfoundation_CardVSgMd, &_s10PegasusAPI21Searchfoundation_CardVSgMR);
      }

      else
      {
        v37 = v6;
        v23 = v4;
        v24 = *v19;
        v25 = v36;
        (*v19)(v36, v9, v10);
        v24(v38, v25, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22);
        }

        v27 = v22[2];
        v26 = v22[3];
        if (v27 >= v26 >> 1)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v22);
        }

        v22[2] = v27 + 1;
        v10 = v35;
        v14 = (v24)(v22 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v27, v38, v35);
        v4 = v23;
        v6 = v37;
        v21 = v33;
      }

      v20 += v21;
      --v16;
    }

    while (v16);
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v14);
  v28 = v31;
  *(&v30 - 2) = v22;
  *(&v30 - 1) = v28;
  lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(&lazy protocol witness table cache variable for type Searchfoundation_Card and conformance Searchfoundation_Card, &type metadata accessor for Searchfoundation_Card, &protocol conformance descriptor for Searchfoundation_Card);
  static Message.with(_:)();
}

uint64_t closure #1 in InformationViewFactory.makeCard(perResultLayoutDetails:renderOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v38 = a2;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin(v8);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v37 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet();
  v13 = *(v37 - 8);
  __chkstk_darwin(v37);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.snippet.getter();
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v12, 1, v16) == 1)
  {
    outlined destroy of Any?(v12, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  }

  else
  {
    if ((*(v17 + 88))(v12, v16) == enum case for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet.casinoSnippet(_:))
    {
      (*(v17 + 96))(v12, v16);
      v18 = v13;
      v19 = v37;
      (*(v13 + 32))(v15, v12, v37);
      type metadata accessor for PerformanceUtil();
      v20 = static PerformanceUtil.shared.getter();
      __chkstk_darwin(v20);
      v21 = v36;
      Date.init()();
      v33 = &v31;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI21Searchfoundation_CardVSgMd, &_s10PegasusAPI21Searchfoundation_CardVSgMR);
      v32 = partial apply for closure #1 in closure #1 in InformationViewFactory.makeCard(perResultLayoutDetails:renderOptions:);
      LOBYTE(v31) = 2;
      dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

      (*(v39 + 8))(v21, v40);
      return (*(v18 + 8))(v15, v19);
    }

    (*(v17 + 8))(v12, v16);
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.information);
  (*(v5 + 16))(v7, a1, v4);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v42 = v27;
    *v26 = 136315138;
    lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails and conformance Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails, &type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails);
    v28 = Message.textFormatString()();
    (*(v5 + 8))(v7, v4);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28._countAndFlagsBits, v28._object, &v42);

    *(v26 + 4) = v29;
    _os_log_impl(&dword_0, v24, v25, "InfoViewFactory non casino snippet %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v30 = type metadata accessor for Searchfoundation_Card();
  return (*(*(v30 - 8) + 56))(v41, 1, 1, v30);
}

void closure #2 in InformationViewFactory.makeCard(perResultLayoutDetails:renderOptions:)(uint64_t a1, uint64_t a2, void *a3)
{
  v82 = a3;
  v86 = a1;
  v4 = type metadata accessor for Searchfoundation_Image();
  __chkstk_darwin(v4 - 8);
  v80 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Searchfoundation_Color();
  __chkstk_darwin(v6 - 8);
  v77 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Searchfoundation_CardSource();
  v87 = *(v8 - 8);
  v88 = v8;
  __chkstk_darwin(v8);
  v81 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Searchfoundation_Card();
  v11 = __chkstk_darwin(v10);
  v95 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v78 = &v74 - v14;
  v15 = __chkstk_darwin(v13);
  v79 = &v74 - v16;
  v17 = __chkstk_darwin(v15);
  v90 = &v74 - v18;
  v19 = __chkstk_darwin(v17);
  v94 = &v74 - v20;
  v21 = __chkstk_darwin(v19);
  v75 = &v74 - v22;
  v23 = __chkstk_darwin(v21);
  v76 = &v74 - v24;
  v25 = __chkstk_darwin(v23);
  v89 = (&v74 - v26);
  __chkstk_darwin(v25);
  v29 = &v74 - v28;
  v30 = *(a2 + 16);
  v83 = v27;
  v84 = a2;
  v85 = v30;
  if (v30)
  {
    v32 = *(v27 + 16);
    v31 = v27 + 16;
    v33 = a2 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v91 = *(v31 + 56);
    v92 = v32;
    v93 = v31;
    v34 = (v31 - 8);
    v35 = _swiftEmptyArrayStorage;
    do
    {
      v92(v29, v33, v10);
      v36 = Searchfoundation_Card.cardSections.getter();
      (*v34)(v29, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35[2] + 1, 1, v35);
      }

      v38 = v35[2];
      v37 = v35[3];
      if (v38 >= v37 >> 1)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v35);
      }

      v35[2] = v38 + 1;
      v35[v38 + 4] = v36;
      v33 += v91;
      --v30;
    }

    while (v30);
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  specialized _copySequenceToContiguousArray<A>(_:)(v35);

  Searchfoundation_Card.cardSections.setter();
  (*(v87 + 104))(v81, enum case for Searchfoundation_CardSource.parsec(_:), v88);
  Searchfoundation_Card.source.setter();
  v39 = v85;
  if (v85)
  {
    v40 = *(v83 + 16);
    v91 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v41 = v84 + v91;
    v42 = *(v83 + 72);
    v87 = v83 + 8;
    v43 = (v83 + 32);
    v44 = _swiftEmptyArrayStorage;
    v45 = v89;
    v92 = v40;
    v93 = (v83 + 16);
    v88 = v42;
    (v40)(v89, v84 + v91, v10);
    while (1)
    {
      if (Searchfoundation_Card.hasBackgroundColor.getter())
      {
        v46 = *v43;
        (*v43)(v94, v45, v10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v96 = v44;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1);
          v44 = v96;
        }

        v49 = v44[2];
        v48 = v44[3];
        if (v49 >= v48 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
          v44 = v96;
        }

        v44[2] = v49 + 1;
        v42 = v88;
        v46(v44 + v91 + v49 * v88, v94, v10);
        v45 = v89;
        v40 = v92;
      }

      else
      {
        (*v87)(v45, v10);
      }

      v41 += v42;
      if (!--v39)
      {
        break;
      }

      (v40)(v45, v41, v10);
    }
  }

  else
  {
    v44 = _swiftEmptyArrayStorage;
  }

  if (v44[2])
  {
    v50 = v83;
    v51 = v75;
    (*(v83 + 16))(v75, v44 + ((*(v50 + 80) + 32) & ~*(v50 + 80)), v10);

    v52 = v76;
    (*(v50 + 32))(v76, v51, v10);
    Searchfoundation_Card.backgroundColor.getter();
    Searchfoundation_Card.backgroundColor.setter();
    (*(v50 + 8))(v52, v10);
  }

  else
  {

    v50 = v83;
  }

  v53 = v85;
  v54 = v90;
  if (v85)
  {
    v55 = (v50 + 16);
    v56 = *(v50 + 16);
    v92 = ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v57 = v92 + v84;
    v58 = *(v55 + 7);
    v89 = (v55 - 8);
    v59 = (v55 + 16);
    v60 = _swiftEmptyArrayStorage;
    v93 = v56;
    v94 = v55;
    v91 = v58;
    v56(v90, v92 + v84, v10);
    while (1)
    {
      if (Searchfoundation_Card.hasBackgroundImage.getter())
      {
        v61 = *v59;
        (*v59)(v95, v54, v10);
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v96 = v60;
        if ((v62 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1);
          v60 = v96;
        }

        v64 = v60[2];
        v63 = v60[3];
        if (v64 >= v63 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1);
          v60 = v96;
        }

        v60[2] = v64 + 1;
        v65 = v92 + v60 + v64 * v91;
        v58 = v91;
        v61(v65, v95, v10);
        v54 = v90;
        v56 = v93;
      }

      else
      {
        (*v89)(v54, v10);
      }

      v57 += v58;
      if (!--v53)
      {
        break;
      }

      v56(v54, v57, v10);
    }
  }

  else
  {
    v60 = _swiftEmptyArrayStorage;
  }

  if (v60[2])
  {
    v66 = v83;
    v67 = v78;
    (*(v83 + 16))(v78, v60 + ((*(v66 + 80) + 32) & ~*(v66 + 80)), v10);

    v68 = v79;
    (*(v66 + 32))(v79, v67, v10);
    Searchfoundation_Card.backgroundImage.getter();
    Searchfoundation_Card.backgroundImage.setter();
    (*(v66 + 8))(v68, v10);
  }

  else
  {
  }

  if (v82)
  {
    v69 = v82;
    if (PommesRenderOptions.isPhoneCallActive.getter())
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      __swift_project_value_buffer(v70, static Logger.information);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_0, v71, v72, "Skipping FBR; phone call is active", v73, 2u);
      }

      return;
    }
  }

  if (v85 == 1)
  {
    Searchfoundation_Card.fbr.getter();
  }

  Searchfoundation_Card.fbr.setter();
}

uint64_t InformationViewFactory.makeCard(casinoSnippet:renderOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v5 = type metadata accessor for String.Encoding();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for Google_Protobuf_Any();
  __chkstk_darwin(v9 - 8);
  v58 = type metadata accessor for Searchfoundation_Card();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (Apple_Parsec_Siri_V2alpha_CasinoSnippet.hasCardData.getter())
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.information);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v58;
    if (v19)
    {
      v21 = swift_slowAlloc();
      v53 = a1;
      *v21 = 0;
      _os_log_impl(&dword_0, v17, v18, "One card was made with casinoSnippet.", v21, 2u);
    }

    Apple_Parsec_Siri_V2alpha_CasinoSnippet.cardData.getter();
    v60 = 0;
    memset(v59, 0, sizeof(v59));
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(&lazy protocol witness table cache variable for type Searchfoundation_Card and conformance Searchfoundation_Card, &type metadata accessor for Searchfoundation_Card, &protocol conformance descriptor for Searchfoundation_Card);
    Message.init(unpackingAny:extensions:options:)();
    if (a2 && (PommesRenderOptions.isSquawkResponse.getter() & 1) != 0)
    {
      Searchfoundation_Card.intentMessageName.setter();
      Searchfoundation_Card.intentResponseMessageName.setter();
      static String.Encoding.utf8.getter();
      v32 = String.data(using:allowLossyConversion:)();
      v34 = v33;
      v54 = *(v54 + 8);
      (v54)(v7, v55);
      if (v34 >> 60 == 15)
      {
LABEL_18:
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 67109120;
          static String.Encoding.utf8.getter();
          v40 = String.data(using:allowLossyConversion:)();
          v42 = v41;
          (v54)(v7, v55);
          v43 = 0;
          if (v42 >> 60 != 15)
          {
            outlined consume of Data?(v40, v42);
            v43 = 1;
          }

          *(v39 + 4) = v43;
          _os_log_impl(&dword_0, v37, v38, "intentMessageData is non-nil? %{BOOL}d", v39, 8u);
        }

        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 67109120;
          static String.Encoding.utf8.getter();
          v47 = String.data(using:allowLossyConversion:)();
          v49 = v48;
          (v54)(v7, v55);
          v50 = 0;
          if (v49 >> 60 != 15)
          {
            outlined consume of Data?(v47, v49);
            v50 = 1;
          }

          *(v46 + 4) = v50;
          _os_log_impl(&dword_0, v44, v45, "intentResponseMessageData is non-nil? %{BOOL}d", v46, 8u);
        }

        v31 = v56;
        v51 = v57;
        v20 = v58;
        (*(v56 + 32))(v57, v11, v58);
        goto LABEL_29;
      }

      static String.Encoding.utf8.getter();
      String.data(using:allowLossyConversion:)();
      v36 = v35;
      (v54)(v7, v55);
      if (v36 >> 60 == 15)
      {
        outlined consume of Data?(v32, v34);
        goto LABEL_18;
      }

      outlined copy of Data._Representation(v32, v34);
      Searchfoundation_Card.intentMessageData.setter();
      Searchfoundation_Card.intentResponseMessageData.setter();
      outlined consume of Data?(v32, v34);
    }

    v31 = v56;
    v51 = v57;
    (*(v56 + 32))(v57, v11, v20);
LABEL_29:
    v30 = v51;
    v29 = 0;
    return (*(v31 + 56))(v30, v29, 1, v20);
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.information);
  (*(v13 + 16))(v15, a1, v12);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v59[0] = v26;
    *v25 = 136315138;
    lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_CasinoSnippet and conformance Apple_Parsec_Siri_V2alpha_CasinoSnippet, &type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_CasinoSnippet);
    v27 = Message.textFormatString()();
    (*(v13 + 8))(v15, v12);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27._countAndFlagsBits, v27._object, v59);

    *(v25 + 4) = v28;
    _os_log_impl(&dword_0, v23, v24, "InfoViewFactory casinoSnippet has no card data %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v29 = 1;
  v30 = v57;
  v20 = v58;
  v31 = v56;
  return (*(v31 + 56))(v30, v29, 1, v20);
}

uint64_t InformationViewFactory.attachCompactCard(cardSnippet:layoutSnippet:renderOptions:)(void *a1, uint64_t a2, char *a3)
{
  v37 = a3;
  v33[0] = a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v34 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI21Searchfoundation_CardVSgMd, &_s10PegasusAPI21Searchfoundation_CardVSgMR);
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  v13 = type metadata accessor for Searchfoundation_Card();
  v35 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[1] = type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v39 = v36;
  v40 = a2;
  v41 = v37;
  Date.init()();
  v31 = v38;
  v32 = v10;
  v30 = partial apply for closure #1 in InformationViewFactory.attachCompactCard(cardSnippet:layoutSnippet:renderOptions:);
  LOBYTE(v29) = 2;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  v16 = *(v5 + 8);
  v17 = v9;
  v18 = v13;
  v19 = v35;
  v16(v17, v4);
  if ((*(v19 + 48))(v12, 1, v18) == 1)
  {
    return outlined destroy of Any?(v12, &_s10PegasusAPI21Searchfoundation_CardVSgMd, &_s10PegasusAPI21Searchfoundation_CardVSgMR);
  }

  (*(v19 + 32))(v15, v12, v18);
  v21 = *(Searchfoundation_Card.cardSections.getter() + 16);

  v22 = v15;
  if (v21)
  {
    v23 = static PerformanceUtil.shared.getter();
    v36 = v33;
    __chkstk_darwin(v23);
    v37 = v24;
    v25 = v34;
    Date.init()();
    v31 = &v29;
    v32 = &type metadata for Data;
    v30 = partial apply for closure #2 in InformationViewFactory.attachCompactCard(cardSnippet:layoutSnippet:renderOptions:);
    LOBYTE(v29) = 2;
    dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();
    v16(v25, v4);

    v26 = v42;
    v27 = v43;
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v26, v27);
    [v33[0] setCompactSizeCardData:isa];
    v22 = v37;
  }

  return (*(v19 + 8))(v22, v18);
}

uint64_t closure #1 in InformationViewFactory.attachCompactCard(cardSnippet:layoutSnippet:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.compactSnippet.getter();
  (*(*a1 + 288))(v8, a3);
  return (*(v6 + 8))(v8, v5);
}

id InformationViewFactory.makeCompactSnippet(layoutSnippet:renderOptions:)(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v32 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v37 = a1;
  Date.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo20SAClientBoundCommand_pGMd, &_sSaySo20SAClientBoundCommand_pGMR);
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v13 + 8))(v15, v12);
  v16 = [objc_allocWithZone(SACardSnippet) init];
  Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.compactSnippet.getter();
  Apple_Parsec_Siri_V2alpha_CasinoSnippet.responseViewID.getter();
  (*(v9 + 8))(v11, v8);
  v17 = String._bridgeToObjectiveC()();

  [v16 setResponseViewId:v17];

  v18 = v16;
  UUID.init()();
  UUID.uuidString.getter();
  v19 = v7;
  v20 = v32;
  (*(v30 + 8))(v19, v31);
  v21 = String._bridgeToObjectiveC()();

  [v18 setAceId:v21];

  (*(v33 + 16))(v20, a1, v34);
  v22 = v18;
  if (AFIsInternalInstall())
  {
    v23 = v35;
    (*(*v35 + 104))(v38);
    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    v24 = dispatch thunk of PommesServerFallbackDisabling.shouldDisableServerFallbackNL(isDomainDirected:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    v25 = v24 ^ 1;
  }

  else
  {
    v25 = 0;
    v23 = v35;
  }

  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUISash, SAUISash_ptr);
  v26 = SAUISash.init(layoutSnippet:showInternalPommesAttribution:)(v20, v25 & 1);
  [v22 setSash:v26];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v22 setReferencedCommands:isa];

  (*(*v23 + 296))(v22, a1, v36);
  return v22;
}

id InformationViewFactory.makeCasinoSnippet(layoutSnippet:renderOptions:)(uint64_t a1, uint64_t a2)
{
  v89 = a2;
  v91 = a1;
  v87 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UIItemType();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v81 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for UUID();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v95 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails();
  v96 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Searchfoundation_Card();
  v83 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v72 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v65 - v15;
  v17 = type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v102 = a1;
  Date.init()();
  v63 = v101;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo20SAClientBoundCommand_pGMd, &_sSaySo20SAClientBoundCommand_pGMR);
  v62 = partial apply for closure #1 in InformationViewFactory.makeCompactSnippet(layoutSnippet:renderOptions:);
  LOBYTE(v61) = 2;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  v18 = *(v12 + 8);
  v18(v16, v11);
  v75 = v103[0];
  v69 = v17;
  static PerformanceUtil.shared.getter();
  v19 = v91;
  v98 = v92;
  v99 = v91;
  v100 = v89;
  Date.init()();
  v84 = v8;
  v63 = v97;
  v64 = v8;
  v62 = partial apply for closure #2 in InformationViewFactory.makeCasinoSnippet(layoutSnippet:renderOptions:);
  LOBYTE(v61) = 2;
  v82 = v10;
  v20 = v19;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();
  v68 = 0;

  v74 = v11;
  v73 = v12 + 8;
  v70 = v18;
  v18(v16, v11);
  v71 = [objc_allocWithZone(SACardSnippet) init];
  v21 = Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.perResultLayoutDetails.getter();
  v22 = *(v21 + 16);
  if (v22)
  {
    v94 = *(v96 + 16);
    v23 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v65 = v21;
    v24 = v21 + v23;
    v93 = *(v96 + 72);
    v25 = (v88 + 8);
    v96 += 16;
    v26 = (v96 - 8);
    v27 = v90;
    v28 = v67;
    v29 = v66;
    do
    {
      v94(v29, v24, v28);
      Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.casinoSnippet.getter();
      Apple_Parsec_Siri_V2alpha_CasinoSnippet.responseViewID.getter();

      v30 = v95;
      (*v25)(v95, v27);
      (*v26)(v29, v28);
      v24 += v93;
      --v22;
    }

    while (v22);

    v31 = String._bridgeToObjectiveC()();

    v32 = v71;
    [v71 setResponseViewId:{v31, v65}];

    v33 = v87;
    v20 = v91;
  }

  else
  {

    v33 = v87;
    v32 = v71;
    v30 = v95;
  }

  v34 = Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.hasCompactSnippet.getter();
  v35 = v82;
  v36 = v81;
  v37 = v72;
  v38 = v90;
  if (v34)
  {
    Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.compactSnippet.getter();
    Apple_Parsec_Siri_V2alpha_CasinoSnippet.responseViewID.getter();
    (*(v88 + 8))(v30, v38);
    v39 = String._bridgeToObjectiveC()();

    [v32 setResponseViewId:v39];
  }

  v40 = static PerformanceUtil.shared.getter();
  __chkstk_darwin(v40);
  Date.init()();
  v63 = &v61;
  v64 = &type metadata for Data;
  v62 = partial apply for closure #4 in InformationViewFactory.makeCasinoSnippet(layoutSnippet:renderOptions:);
  LOBYTE(v61) = 2;
  v41 = v68;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();
  if (v41)
  {
    v70(v37, v74);

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.information);
    isa = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(isa, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, isa, v44, "Unable to serialize card for snippet. Results may appear incomplete.", v45, 2u);
    }
  }

  else
  {
    v70(v37, v74);

    v46 = v103[0];
    v47 = v103[1];
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v46, v47);
    [v32 setCardData:isa];
  }

  v48 = v32;
  v49 = v76;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v77 + 8))(v49, v78);
  v50 = String._bridgeToObjectiveC()();

  [v48 setAceId:v50];

  (*(v79 + 16))(v36, v20, v80);
  v51 = v48;
  if (AFIsInternalInstall())
  {
    (*(*v92 + 104))(v103);
    __swift_project_boxed_opaque_existential_1(v103, v103[3]);
    v52 = dispatch thunk of PommesServerFallbackDisabling.shouldDisableServerFallbackNL(isDomainDirected:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v103);
    v53 = v52 ^ 1;
  }

  else
  {
    v53 = 0;
  }

  v54 = v86;
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUISash, SAUISash_ptr);
  v55 = SAUISash.init(layoutSnippet:showInternalPommesAttribution:)(v36, v53 & 1);
  [v51 setSash:v55];

  v56 = v51;
  [v56 setIsTransient:Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.isTransient.getter() & 1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v57 = Array._bridgeToObjectiveC()().super.isa;

  [v56 setReferencedCommands:v57];

  if (Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.hasCompactSnippet.getter())
  {
    (*(*v92 + 296))(v56, v20, v89);
  }

  v58 = v85;
  Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.uiItemType.getter();
  Apple_Parsec_Siri_V2alpha_UIItemType.aceValue.getter();
  (*(v54 + 8))(v58, v33);
  v59 = String._bridgeToObjectiveC()();

  [v56 setItemType:v59];

  (*(v83 + 8))(v35, v84);
  return v56;
}

uint64_t closure #2 in InformationViewFactory.attachCompactCard(cardSnippet:layoutSnippet:renderOptions:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Searchfoundation_Card();
  lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(&lazy protocol witness table cache variable for type Searchfoundation_Card and conformance Searchfoundation_Card, &type metadata accessor for Searchfoundation_Card, &protocol conformance descriptor for Searchfoundation_Card);
  result = Message.serializedData(partial:)();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t InformationViewFactory.makeUtteranceView(dialog:layouts:)(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v4 = *(v3 - 8);
  v71 = v3;
  v72 = v4;
  v5 = __chkstk_darwin(v3);
  v70 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v67 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v60 - v9;
  v11 = type metadata accessor for ResponseMode();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v60 - v16;
  v18 = [objc_allocWithZone(DialogElement) init];
  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.print.getter();
  v19 = String._bridgeToObjectiveC()();

  [v18 setFullPrint:v19];

  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.print.getter();
  v20 = String._bridgeToObjectiveC()();

  [v18 setSupportingPrint:v20];

  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.redactedPrint.getter();
  v21 = String._bridgeToObjectiveC()();

  [v18 setRedactedFullPrint:v21];

  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.redactedPrint.getter();
  v22 = String._bridgeToObjectiveC()();

  [v18 setRedactedSupportingPrint:v22];

  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.speak.getter();
  v23 = String._bridgeToObjectiveC()();

  [v18 setFullSpeak:v23];

  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.speak.getter();
  v24 = String._bridgeToObjectiveC()();

  [v18 setSupportingSpeak:v24];

  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.redactedSpeak.getter();
  v25 = String._bridgeToObjectiveC()();

  [v18 setRedactedFullSpeak:v25];

  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.redactedSpeak.getter();
  v26 = String._bridgeToObjectiveC()();

  [v18 setRedactedSupportingSpeak:v26];

  [v18 setSpokenOnly:Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.spokenOnly.getter() & 1];
  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catID.getter();
  v27 = String._bridgeToObjectiveC()();

  [v18 setId:v27];

  v28 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.isApprovedForGrading.getter();
  v65 = v18;
  [v18 setIsApprovedForGrading:v28 & 1];
  type metadata accessor for SiriEnvironment();
  if (static SiriEnvironment.forCurrentTask.getter())
  {
    SiriEnvironment.currentRequest.getter();

    CurrentRequest.responseMode.getter();

    (*(v12 + 56))(v10, 0, 1, v11);
    (*(v12 + 32))(v17, v10, v11);
    v29 = v12;
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    static ResponseMode.displayForward.getter();
    v29 = v12;
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      outlined destroy of Any?(v10, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    }
  }

  v30 = v70;
  v31 = v15;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.information);
  v33 = *(v29 + 16);
  v69 = v17;
  v33(v15, v17, v11);
  v34 = *(v72 + 16);
  v35 = v67;
  v66 = v31;
  v36 = v71;
  v34(v67, a1, v71);
  v34(v30, a1, v36);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v73 = v64;
    *v39 = 136315650;
    lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(&lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode, &type metadata accessor for ResponseMode, &protocol conformance descriptor for ResponseMode);
    v63 = v38;
    v40 = v66;
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v11;
    v61 = v11;
    v62 = v37;
    v44 = v43;
    v45 = *(v29 + 8);
    v46 = v72;
    v45(v40, v42);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v44, &v73);

    *(v39 + 4) = v47;
    *(v39 + 12) = 1024;
    LODWORD(v47) = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.listenAfterSpeaking.getter() & 1;
    v48 = v35;
    v49 = *(v46 + 8);
    v50 = v71;
    v49(v48, v71);
    *(v39 + 14) = v47;
    *(v39 + 18) = 1024;
    v51 = v70;
    LODWORD(v47) = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.spokenOnly.getter() & 1;
    v49(v51, v50);
    v53 = v61;
    v52 = v62;
    *(v39 + 20) = v47;
    _os_log_impl(&dword_0, v52, v63, "Calling makeUtteranceView with responseMode: %s, listenAfterSpeaking: %{BOOL}d, spokenOnly: %{BOOL}d", v39, 0x18u);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
  }

  else
  {
    v54 = v71;
    v55 = *(v72 + 8);
    v55(v30, v71);
    v55(v35, v54);

    v45 = *(v29 + 8);
    v45(v66, v11);
    v53 = v11;
  }

  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.listenAfterSpeaking.getter();
  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.forcePrintDialog.getter();
  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catCategory.getter();
  v56 = v65;
  v57 = v69;
  v58 = static AceOutputHelper.makeUtteranceView(for:canUseServerTTS:listenAfterSpeaking:printSupportingDialogInDisplayModes:forcePrintDialog:containsVisual:responseMode:dialogCategory:)();

  v45(v57, v53);
  return v58;
}

void *InformationViewFactory.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 64));
  return v0;
}

uint64_t InformationViewFactory.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 64));

  return swift_deallocClassInstance();
}

id SAUISash.init(appName:appID:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v6 = String._bridgeToObjectiveC()();

    [v5 setTitle:v6];

    v7 = String._bridgeToObjectiveC()();

    [v5 setApplicationBundleIdentifier:v7];
  }

  else
  {

    return 0;
  }

  return v5;
}

id SAGKSummaryPod.init(title:text:caption:imageResource:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = String._bridgeToObjectiveC()();

    [v14 setTitle:v16];
  }

  else
  {
  }

  v17 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v17 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = String._bridgeToObjectiveC()();

    [v14 setText:v18];
  }

  else
  {
  }

  v19 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = String._bridgeToObjectiveC()();

    [v14 setCaption:v20];
  }

  else
  {
  }

  [v14 setImageResource:a7];

  return v14;
}

id SAGKImageLinkedAnswer.init(imageLinkedAnswer:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut();
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource();
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.hasImageResource.getter())
  {
    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUIImageResource, SAUIImageResource_ptr);
    Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.imageResource.getter();
    v9 = SAUIImageResource.init(imageResource:)(v7);
    [v8 setImageResource:v9];
  }

  if (Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.hasPunchOut.getter())
  {
    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUIAppPunchOut, SAUIAppPunchOut_ptr);
    Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.punchOut.getter();
    v10 = SAUIAppPunchOut.init(punchOut:)(v4);
    [v8 setPunchOut:v10];
  }

  v11 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v8;
}

id SAUIImageResource.init(imageResource:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v43 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = Apple_Parsec_Siri_Legacy_ImageResource.imageData.getter();
  v12 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (v12)
    {
      v16 = v10;
      outlined consume of Data._Representation(v10, v11);
      if (v16 == v16 >> 32)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v13 = v11;
      outlined consume of Data._Representation(v10, v11);
      if ((v13 & 0xFF000000000000) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_9:
    v17 = Apple_Parsec_Siri_Legacy_ImageResource.imageData.getter();
    v19 = v18;
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v17, v19);
    [v9 setImageData:isa];

    goto LABEL_11;
  }

  if (v12 != 2)
  {
    outlined consume of Data._Representation(v10, v11);
    goto LABEL_11;
  }

  v15 = *(v10 + 16);
  v14 = *(v10 + 24);
  outlined consume of Data._Representation(v10, v11);
  if (v15 != v14)
  {
    goto LABEL_9;
  }

LABEL_11:
  Apple_Parsec_Siri_Legacy_ImageResource.pixelWidth.getter();
  if (v21 > 0.0)
  {
    Apple_Parsec_Siri_Legacy_ImageResource.pixelWidth.getter();
    [v9 setPixelWidth:?];
  }

  Apple_Parsec_Siri_Legacy_ImageResource.pixelHeight.getter();
  if (v22 > 0.0)
  {
    Apple_Parsec_Siri_Legacy_ImageResource.pixelHeight.getter();
    [v9 setPixelHeight:?];
  }

  v23 = Apple_Parsec_Siri_Legacy_ImageResource.resourceURL.getter();
  v25 = v24;

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    Apple_Parsec_Siri_Legacy_ImageResource.resourceURL.getter();
    URL.init(string:)();

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      outlined destroy of Any?(v4, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      URL._bridgeToObjectiveC()(v27);
      v29 = v28;
      [v9 setResourceUrl:v28];

      (*(v6 + 8))(v8, v5);
    }
  }

  Apple_Parsec_Siri_Legacy_ImageResource.scaleFactor.getter();
  if (v30 > 0.0)
  {
    Apple_Parsec_Siri_Legacy_ImageResource.scaleFactor.getter();
    [v9 setScaleFactor:?];
  }

  v31 = Apple_Parsec_Siri_Legacy_ImageResource.urlFormatString.getter();
  v33 = v32;

  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    Apple_Parsec_Siri_Legacy_ImageResource.urlFormatString.getter();
    v35 = String._bridgeToObjectiveC()();

    [v9 setUrlFormatString:v35];
  }

  v36 = Apple_Parsec_Siri_Legacy_ImageResource.userAgent.getter();
  v38 = v37;

  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
    Apple_Parsec_Siri_Legacy_ImageResource.userAgent.getter();
    v40 = String._bridgeToObjectiveC()();

    [v9 setUserAgent:v40];
  }

  v41 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource();
  (*(*(v41 - 8) + 8))(a1, v41);
  return v9;
}

id SAUIAppPunchOut.init(punchOut:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v46 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v46 - v12;
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = Apple_Parsec_Siri_Legacy_PunchOut.subtitle.getter();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    Apple_Parsec_Siri_Legacy_PunchOut.subtitle.getter();
    v19 = String._bridgeToObjectiveC()();

    [v14 setSubtitle:v19];
  }

  Apple_Parsec_Siri_Legacy_PunchOut.punchOutUri.getter();
  URL.init(string:)();

  v20 = *(v9 + 48);
  if (v20(v7, 1, v8) == 1)
  {
    outlined destroy of Any?(v7, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v9 + 32))(v13, v7, v8);
    URL._bridgeToObjectiveC()(v21);
    v23 = v22;
    [v14 setPunchOutUri:v22];

    (*(v9 + 8))(v13, v8);
  }

  v24 = Apple_Parsec_Siri_Legacy_PunchOut.bundleID.getter();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    Apple_Parsec_Siri_Legacy_PunchOut.bundleID.getter();
    v28 = String._bridgeToObjectiveC()();

    [v14 setBundleId:v28];
  }

  v29 = Apple_Parsec_Siri_Legacy_PunchOut.appDisplayName.getter();
  v31 = v30;

  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {
    Apple_Parsec_Siri_Legacy_PunchOut.appDisplayName.getter();
    v33 = String._bridgeToObjectiveC()();

    [v14 setAppDisplayName:v33];
  }

  v34 = Apple_Parsec_Siri_Legacy_PunchOut.appStoreUri.getter();
  v36 = v35;

  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {
    Apple_Parsec_Siri_Legacy_PunchOut.appStoreUri.getter();
    URL.init(string:)();

    if (v20(v5, 1, v8) == 1)
    {
      v38 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut();
      (*(*(v38 - 8) + 8))(a1, v38);
      outlined destroy of Any?(v5, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
    }

    else
    {
      v40 = v47;
      (*(v9 + 32))(v47, v5, v8);
      URL._bridgeToObjectiveC()(v41);
      v43 = v42;
      [v14 setAppStoreUri:v42];

      v44 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut();
      (*(*(v44 - 8) + 8))(a1, v44);
      (*(v9 + 8))(v40, v8);
    }
  }

  else
  {
    v39 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut();
    (*(*(v39 - 8) + 8))(a1, v39);
  }

  return v14;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
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

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [SAAceView] and conformance [A](&lazy protocol witness table cache variable for type [SABaseCommand] and conformance [A], &_sSaySo13SABaseCommandCGMd, _sSaySo13SABaseCommandCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SABaseCommandCGMd, _sSaySo13SABaseCommandCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [SAAceView] and conformance [A](&lazy protocol witness table cache variable for type [SAAceView] and conformance [A], &_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [SAAceView] and conformance [A](&lazy protocol witness table cache variable for type [SAClientBoundCommand] and conformance [A], &_sSaySo20SAClientBoundCommand_pGMd, &_sSaySo20SAClientBoundCommand_pGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo20SAClientBoundCommand_pGMd, &_sSaySo20SAClientBoundCommand_pGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI28Searchfoundation_CardSectionVSgMd, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMR);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v53 = &v46 - v6;
  v7 = type metadata accessor for Searchfoundation_CardSection();
  result = __chkstk_darwin(v7);
  v56 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = 0;
  v59 = 0;
  v10 = 0;
  v47 = *(v11 + 80);
  v12 = _swiftEmptyArrayStorage;
  v52 = (v47 + 32) & ~v47;
  v57 = _swiftEmptyArrayStorage + v52;
  v13 = (v11 + 56);
  v48 = v11 + 48;
  v49 = v11 + 16;
  v50 = v11;
  v55 = (v11 + 32);
LABEL_4:
  v16 = *(a1 + 16);
  if (v10 != v16)
  {
    if (v10 < v16)
    {
      while (1)
      {
        v17 = *(a1 + 32 + 8 * v10);

        if (v17)
        {
          break;
        }

LABEL_9:
        ++v10;
        v18 = *(a1 + 16);
        if (v10 == v18)
        {
          goto LABEL_36;
        }

        if (v10 >= v18)
        {
          goto LABEL_42;
        }
      }

      v14 = *(v17 + 16);
      if (!v14)
      {
        (*v13)(v5, 1, 1, v7);
        result = outlined destroy of Any?(v5, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMd, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMR);
        goto LABEL_9;
      }

      v15 = 0;
      ++v10;
      while (1)
      {
        if (v15 >= v14)
        {
          goto LABEL_43;
        }

        v19 = v12;
        v20 = v50;
        v21 = *(v50 + 72);
        v59 = v15;
        v54 = v21;
        (*(v50 + 16))(v5, v17 + v52 + v21 * v15, v7);
        (*(v20 + 56))(v5, 0, 1, v7);
        v22 = v53;
        outlined init with take of Searchfoundation_CardSection?(v5, v53);
        if ((*(v20 + 48))(v22, 1, v7) == 1)
        {
          v12 = v19;
          goto LABEL_37;
        }

        v51 = *v55;
        result = v51(v56, v22, v7);
        v23 = v19;
        v24 = v58;
        if (!v58)
        {
          break;
        }

LABEL_34:
        v40 = __OFSUB__(v24, 1);
        v41 = v24 - 1;
        if (v40)
        {
          goto LABEL_44;
        }

        v58 = v41;
        ++v59;
        v42 = v57;
        result = v51(v57, v56, v7);
        v57 = &v42[v54];
        v12 = v23;
        v14 = *(v17 + 16);
        v15 = v59;
        if (v59 == v14)
        {
          (*v13)(v5, 1, 1, v7);
          result = outlined destroy of Any?(v5, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMd, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMR);
          goto LABEL_4;
        }
      }

      v25 = *(v19 + 3);
      if (((v25 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_46;
      }

      v26 = v25 & 0xFFFFFFFFFFFFFFFELL;
      if (v26 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI28Searchfoundation_CardSectionVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI28Searchfoundation_CardSectionVGMR);
      v28 = v52;
      v58 = v27;
      v23 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v23);
      v29 = v54;
      if (!v54)
      {
        goto LABEL_47;
      }

      v30 = result - v28;
      if ((result - v28) == 0x8000000000000000 && v54 == -1)
      {
        goto LABEL_48;
      }

      v32 = v28;
      v33 = v30 / v54;
      *(v23 + 2) = v58;
      *(v23 + 3) = 2 * (v30 / v29);
      v34 = &v23[v28];
      v35 = v19;
      v36 = *(v19 + 2);
      v37 = *(v19 + 3) >> 1;
      v38 = v37 * v29;
      if (!v36)
      {
LABEL_33:
        v57 = &v34[v38];
        v39 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v37;

        v24 = v39;
        goto LABEL_34;
      }

      if (v23 < v35 || v34 >= &v35[v32 + v38])
      {
        v57 = v33;
        v58 = v34;
        v46 = v38;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v23 == v35)
        {
LABEL_32:
          *(v35 + 2) = 0;
          goto LABEL_33;
        }

        v57 = v33;
        v58 = v34;
        v46 = v38;
        swift_arrayInitWithTakeBackToFront();
      }

      v38 = v46;
      v33 = v57;
      v34 = v58;
      goto LABEL_32;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_36:
  v22 = v53;
  (*v13)(v53, 1, 1, v7);
LABEL_37:

  result = outlined destroy of Any?(v22, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMd, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMR);
  v43 = *(v12 + 3);
  if (v43 < 2)
  {
    return v12;
  }

  v44 = v43 >> 1;
  v40 = __OFSUB__(v44, v58);
  v45 = v44 - v58;
  if (!v40)
  {
    *(v12 + 2) = v45;
    return v12;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in InformationViewFactory.makeCommandForPegasusNavigation(layouts:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**(v1 + 16) + 312))(*(v1 + 24), 0);
  *a1 = result;
  return result;
}

void *partial apply for closure #1 in InformationViewFactory.makeButtonView(button:)@<X0>(uint64_t *a1@<X8>)
{
  result = specialized static CommandFactory.makeCommands(forComponent:)(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #4 in InformationViewFactory.makeSnippet(layoutSnippet:renderOptions:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**(v1 + 16) + 208))(*(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #3 in InformationViewFactory.makeSnippet(layoutSnippet:renderOptions:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**(v1 + 16) + 240))(*(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #2 in InformationViewFactory.makeSnippet(layoutSnippet:renderOptions:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**(v1 + 16) + 200))(*(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #1 in InformationViewFactory.makeSnippet(layoutSnippet:renderOptions:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**(v1 + 16) + 312))(*(v1 + 24), *(v1 + 32));
  *a1 = result;
  return result;
}

void *partial apply for closure #2 in InformationViewFactory.makeMapSnippet(layoutSnippet:)@<X0>(uint64_t *a1@<X8>)
{
  result = specialized static CommandFactory.makeCommands(forComponent:)(*(v1 + 16));
  *a1 = result;
  return result;
}

id specialized SAGKSummaryPod.init(summaryPod:imageResource:)(uint64_t a1, uint64_t a2)
{
  v4 = Apple_Parsec_Siri_Legacy_SummaryPod.title.getter();
  v6 = v5;
  v7 = Apple_Parsec_Siri_Legacy_SummaryPod.text.getter();
  v9 = v8;
  v10 = Apple_Parsec_Siri_Legacy_SummaryPod.caption.getter();
  v12 = v11;
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v14 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = String._bridgeToObjectiveC()();

    [v13 setTitle:v15];
  }

  else
  {
  }

  v16 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v16 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = String._bridgeToObjectiveC()();

    [v13 setText:v17];
  }

  else
  {
  }

  v18 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v18 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v19 = String._bridgeToObjectiveC()();

    [v13 setCaption:v19];
  }

  else
  {
  }

  [v13 setImageResource:a2];
  v20 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod();
  (*(*(v20 - 8) + 8))(a1, v20);
  return v13;
}

uint64_t specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v38 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource();
  v3 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo17SAUIImageResourceCGMd, &_ss18_DictionaryStorageCySSSo17SAUIImageResourceCGMR);
  result = static _DictionaryStorage.copy(original:)();
  v6 = 0;
  v39 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v37 = v3;
  v33 = v3 + 8;
  v34 = v3 + 16;
  v31 = v8;
  v32 = result + 64;
  v35 = result;
  v14 = v36;
  if (v12)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v12));
      v41 = (v12 - 1) & v12;
LABEL_10:
      v18 = v15 | (v6 << 6);
      v42 = 16 * v18;
      v19 = v38;
      v20 = *(v39 + 56);
      v21 = (*(v39 + 48) + 16 * v18);
      v22 = v21[1];
      v43 = *v21;
      v23 = v37;
      (*(v37 + 16))(v14, v20 + *(v37 + 72) * v18, v38);
      v24 = *(*v40 + 264);

      v25 = v24(v14);
      (*(v23 + 8))(v14, v19);
      *(v32 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v35;
      v26 = (*(v35 + 48) + v42);
      *v26 = v43;
      v26[1] = v22;
      *(*(result + 56) + 8 * v18) = v25;
      v27 = *(result + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(result + 16) = v29;
      v12 = v41;
      if (!v41)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v17 = *(v31 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #2 in InformationViewFactory.makeCasinoSnippet(layoutSnippet:renderOptions:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.perResultLayoutDetails.getter();
  (*(*v2 + 280))();
}

unint64_t lazy protocol witness table accessor for type InformationViewFactory.AceViewCategory and conformance InformationViewFactory.AceViewCategory()
{
  result = lazy protocol witness table cache variable for type InformationViewFactory.AceViewCategory and conformance InformationViewFactory.AceViewCategory;
  if (!lazy protocol witness table cache variable for type InformationViewFactory.AceViewCategory and conformance InformationViewFactory.AceViewCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InformationViewFactory.AceViewCategory and conformance InformationViewFactory.AceViewCategory);
  }

  return result;
}

uint64_t outlined init with take of Searchfoundation_CardSection?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI28Searchfoundation_CardSectionVSgMd, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *partial apply for closure #1 in closure #1 in InformationViewFactory.makeDisambiguationListView(list:)@<X0>(uint64_t *a1@<X8>)
{
  result = specialized static CommandFactory.makeCommands(forListItem:)(*(v1 + 16));
  *a1 = result;
  return result;
}

void *__swift_deallocate_boxed_opaque_existential_1(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [SAAceView] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t SportsPersonalizationSelection<A>.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11);
  v12 = (*(v4 + 48))(v9, 2, v3);
  if (v12)
  {
    if (v12 == 1)
    {
      return 0x63696C7070616E69;
    }

    else
    {
      return 0x756769626D616E75;
    }
  }

  else
  {
    (*(v4 + 32))(v7, v9, v3);
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v21 = 0xD00000000000001ELL;
    v22 = 0x80000000000C08C0;
    v14 = (*(a2 + 8))(v3, a2);
    v15 = (v14 & 1) == 0;
    if (v14)
    {
      v16 = 1702195828;
    }

    else
    {
      v16 = 0x65736C6166;
    }

    if (v15)
    {
      v17 = 0xE500000000000000;
    }

    else
    {
      v17 = 0xE400000000000000;
    }

    v18 = v17;
    String.append(_:)(*&v16);

    v19._countAndFlagsBits = 41;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20 = v21;
    (*(v4 + 8))(v7, v3);
    return v20;
  }
}

uint64_t type metadata completion function for SportsPersonalizationSelection(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for SportsPersonalizationSelection(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *storeEnumTagSinglePayload for SportsPersonalizationSelection(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

uint64_t Features.isEnabled.getter(char a1)
{
  v4[3] = &type metadata for Features;
  v4[4] = lazy protocol witness table accessor for type Features and conformance Features();
  LOBYTE(v4[0]) = a1;
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return v2 & 1;
}

const char *Features.domain.getter(char a1)
{
  if (a1 == 5)
  {
    return "GenerativeAssistantTools";
  }

  else
  {
    return "SiriInformation";
  }
}

const char *Features.feature.getter(unsigned __int8 a1)
{
  v1 = "siri_suggestions";
  v2 = "alternative_suggestions";
  v3 = "alternative_suggestions_mac";
  if (a1 != 4)
  {
    v3 = "Expansion";
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = "sports_personalization";
  if (a1 != 1)
  {
    v4 = "carplay_suggestions";
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

BOOL Features.isDisabled.getter(char a1)
{
  v4[3] = &type metadata for Features;
  v4[4] = lazy protocol witness table accessor for type Features and conformance Features();
  LOBYTE(v4[0]) = a1;
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return (v2 & 1) == 0;
}

const char *protocol witness for FeatureFlagsKey.domain.getter in conformance Features()
{
  if (*v0 == 5)
  {
    return "GenerativeAssistantTools";
  }

  else
  {
    return "SiriInformation";
  }
}

const char *protocol witness for FeatureFlagsKey.feature.getter in conformance Features()
{
  v1 = *v0;
  v2 = "siri_suggestions";
  v3 = "alternative_suggestions";
  v4 = "alternative_suggestions_mac";
  if (v1 != 4)
  {
    v4 = "Expansion";
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = "sports_personalization";
  if (v1 != 1)
  {
    v5 = "carplay_suggestions";
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for FeatureToggle.isEnabled.getter in conformance Features(uint64_t a1)
{
  v2 = *v1;
  v5[3] = a1;
  v5[4] = lazy protocol witness table accessor for type Features and conformance Features();
  LOBYTE(v5[0]) = v2;
  v3 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  return v3 & 1;
}

uint64_t getEnumTagSinglePayload for Features(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Features(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t closure #1 in static PegasusACEConverters.makeAppPunchOut(params:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.bundleID.getter();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    return Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.bundleID.getter();
  }

  outlined init with copy of (String, Decodable & Encodable & Sendable)(a2, v5, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    outlined destroy of Any?(v5, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
    return 0;
  }

  v13 = URL.scheme.getter();
  v15 = v14;
  (*(v12 + 8))(v5, v11);
  if (!v15)
  {
    return 0;
  }

  if (v13 == 0xD000000000000013 && v15 == 0x80000000000C09E0)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  return 0x6C7070612E6D6F63;
}

id static PegasusACEConverters.makeShowPlaceDetails(params:)()
{
  v0 = [objc_allocWithZone(SALocalSearchShowPlaceDetails) init];
  [v0 setItemIndex:Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams.itemIndex.getter()];
  return v0;
}

id static PegasusACEConverters.makeEndNavigation(params:)()
{
  v0 = objc_allocWithZone(SALocalSearchNavigationEnd);

  return [v0 init];
}

id static PegasusACEConverters.makeOpenLink(params:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = [objc_allocWithZone(SAUIOpenLink) init];
  Apple_Parsec_Siri_V2alpha_OpenLinkBuilderParams.ref.getter();
  URL.init(string:)();

  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v7 = 0;
  if ((*(v5 + 48))(v2, 1, v4) != 1)
  {
    URL._bridgeToObjectiveC()(v6);
    v7 = v8;
    (*(v5 + 8))(v2, v4);
  }

  [v3 setRef:v7];

  return v3;
}

id static PegasusACEConverters.makeSwitchProfile(params:)(uint64_t a1, Class *a2, void (*a3)(void), SEL *a4)
{
  v6 = [objc_allocWithZone(*a2) init];
  a3();
  v7 = String._bridgeToObjectiveC()();

  [v6 *a4];

  return v6;
}

id static PegasusACEConverters.makeExtendCurrentTTS(params:)()
{
  v0 = objc_allocWithZone(SAUIExtendCurrentTTS);

  return [v0 init];
}

id static PegasusACEConverters.makeCancelCurrentTTS(params:)()
{
  v0 = objc_allocWithZone(SAUICancelCurrentTTS);

  return [v0 init];
}

uint64_t specialized static PegasusACEConverters.makeDirectionsType(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v38 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v38 - v11;
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  v15 = *(v3 + 16);
  v15(&v38 - v13, a1, v2);
  v16 = (*(v3 + 88))(v14, v2);
  if (v16 == enum case for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType.UNRECOGNIZED(_:) || v16 == enum case for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType.unknown(_:))
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.information);
    v15(v12, a1, v2);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v41 = v22;
      *v21 = 136315138;
      v15(v9, v12, v2);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      (*(v3 + 8))(v12, v2);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v41);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_0, v19, v20, "Unknown or unrecognized direction type: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
    }

    else
    {

      (*(v3 + 8))(v12, v2);
    }

    return 0;
  }

  if (v16 != enum case for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType.car(_:) && v16 != enum case for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType.transit(_:) && v16 != enum case for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType.walking(_:) && v16 != enum case for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType.cycling(_:))
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.information);
    v15(v6, a1, v2);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v39 = v31;
      v40 = swift_slowAlloc();
      v41 = v40;
      *v31 = 136315138;
      v15(v9, v6, v2);
      v32 = String.init<A>(describing:)();
      v34 = v33;
      v35 = *(v3 + 8);
      v35(v6, v2);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v41);

      v37 = v39;
      *(v39 + 1) = v36;
      _os_log_impl(&dword_0, v29, v30, "Unknown (future?) direction type: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
    }

    else
    {

      v35 = *(v3 + 8);
      v35(v6, v2);
    }

    v35(v14, v2);
    return 0;
  }

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t specialized static PegasusACEConverters.makeMapItemType(detailType:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  v7 = v6 == enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType.UNRECOGNIZED(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType.unknown(_:);
  if (v7 || v6 == enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType.currentLocation(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType.businessItem(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType.personItem(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType.addressItem(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType.homeItem(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType.parkingLocation(_:))
  {
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v3 + 8))(v5, v2);
  return v9;
}

id specialized static PegasusACEConverters.makeLocation(params:)()
{
  v0 = [objc_allocWithZone(SALocation) init];
  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.label.getter();
  v1 = String._bridgeToObjectiveC()();

  [v0 setLabel:v1];

  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.street.getter();
  v2 = String._bridgeToObjectiveC()();

  [v0 setStreet:v2];

  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.thoroughfare.getter();
  v3 = String._bridgeToObjectiveC()();

  [v0 setThoroughfare:v3];

  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.subThoroughfare.getter();
  v4 = String._bridgeToObjectiveC()();

  [v0 setSubThoroughfare:v4];

  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.city.getter();
  v5 = String._bridgeToObjectiveC()();

  [v0 setCity:v5];

  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.stateCode.getter();
  v6 = String._bridgeToObjectiveC()();

  [v0 setStateCode:v6];

  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.countryCode.getter();
  v7 = String._bridgeToObjectiveC()();

  [v0 setCountryCode:v7];

  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.postalCode.getter();
  v8 = String._bridgeToObjectiveC()();

  [v0 setPostalCode:v8];

  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.latitude.getter();
  v10 = v9;
  v11 = objc_allocWithZone(NSNumber);
  LODWORD(v12) = v10;
  v13 = [v11 initWithFloat:v12];
  [v0 setLatitude:v13];

  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.longitude.getter();
  v15 = v14;
  v16 = objc_allocWithZone(NSNumber);
  LODWORD(v17) = v15;
  v18 = [v16 initWithFloat:v17];
  [v0 setLongitude:v18];

  [v0 setRegionType:SARegionTypeAddressValue];
  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.timezoneID.getter();
  v19 = String._bridgeToObjectiveC()();

  [v0 setTimezoneId:v19];

  return v0;
}

uint64_t specialized static PegasusACEConverters.makeDirectionRole(role:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  v7 = v6 == enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role.UNRECOGNIZED(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role.unknown(_:);
  if (v7 || v6 == enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role.from(_:))
  {
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role.to(_:);
  v10 = v6;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v10 != v9)
  {
    v11 = result;
    (*(v3 + 8))(v5, v2);
    return v11;
  }

  return result;
}

id specialized static PegasusACEConverters.makeActionableMapItem(params:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v24 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(SALocalSearchActionableMapItem) init];
  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.detailType.getter();
  specialized static PegasusACEConverters.makeMapItemType(detailType:)(v9);
  (*(v7 + 8))(v9, v6);
  v11 = String._bridgeToObjectiveC()();

  [v10 setDetailType:v11];

  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.location.getter();
  v12 = specialized static PegasusACEConverters.makeLocation(params:)();
  v13 = *(v3 + 8);
  v13(v5, v2);
  [v10 setLocation:v12];

  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.location.getter();
  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.label.getter();
  v13(v5, v2);
  v14 = String._bridgeToObjectiveC()();

  [v10 setLabel:v14];

  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.location.getter();
  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.label.getter();
  v13(v5, v2);
  v15 = String._bridgeToObjectiveC()();

  [v10 setSpokenName:v15];

  v16 = Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.placeData.getter();
  v18 = v17;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v16, v18);
  [v10 setPlaceData2:isa];

  v20 = v24;
  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.directionRole.getter();
  specialized static PegasusACEConverters.makeDirectionRole(role:)(v20);
  (*(v25 + 8))(v20, v26);
  v21 = String._bridgeToObjectiveC()();

  [v10 setDirectionRole:v21];

  return v10;
}

id specialized static PegasusACEConverters.makeMapItemList(params:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(SALocalSearchMapItemList) init];
  v5 = [objc_allocWithZone(NSNumber) initWithLongLong:Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams.selectedItemIndex.getter()];
  [v4 setSelectedIndex:v5];

  v6 = Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams.domainObjects.getter();
  v7 = *(v6 + 16);
  if (v7)
  {
    v16 = v4;
    v18 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = v1 + 16;
    v17 = *(v1 + 16);
    v9 = *(v1 + 80);
    v15 = v6;
    v10 = v6 + ((v9 + 32) & ~v9);
    v11 = *(v8 + 56);
    v12 = (v8 - 8);
    do
    {
      v17(v3, v10, v0);
      specialized static PegasusACEConverters.makeActionableMapItem(params:)();
      (*v12)(v3, v0);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += v11;
      --v7;
    }

    while (v7);

    v4 = v16;
  }

  else
  {
  }

  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SADomainObject, SADomainObject_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setDomainObjects:isa];

  return v4;
}

id specialized static PegasusACEConverters.makeShowMapPoints(params:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(SALocalSearchShowMapPoints) init];
  Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.language.getter();
  v11 = String._bridgeToObjectiveC()();

  [v10 setLanguage:v11];

  if (Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.hasItemSource.getter() & 1) != 0 && (Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.hasItemDestination.getter())
  {
    [v10 setShowDirections:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.showDirections.getter() & 1];
    Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.directionType.getter();
    specialized static PegasusACEConverters.makeDirectionsType(_:)(v9);
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    if (v13)
    {
      v14 = String._bridgeToObjectiveC()();

      [v10 setDirectionsType:v14];
    }

    Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.itemSource.getter();
    v15 = specialized static PegasusACEConverters.makeActionableMapItem(params:)();
    v16 = *(v3 + 8);
    v16(v5, v2);
    [v10 setItemSource:v15];

    Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.itemDestination.getter();
    v17 = specialized static PegasusACEConverters.makeActionableMapItem(params:)();
    v16(v5, v2);
    [v10 setItemDestination:v17];

    v18 = [objc_allocWithZone(SALocalSearchCarRouteOptions) init];
    [v18 setAvoidTolls:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.avoidTolls.getter() & 1];
    [v18 setAvoidHighways:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.avoidHighways.getter() & 1];
    [v10 setCarRouteOptions:v18];
  }

  if (Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.hasItemSource.getter())
  {
    Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.itemSource.getter();
    v19 = specialized static PegasusACEConverters.makeActionableMapItem(params:)();
    (*(v3 + 8))(v5, v2);
    [v10 setItemSource:v19];

    [v10 setShowTraffic:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.showTraffic.getter() & 1];
    [v10 setSuppressNavigation:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.shouldSuppressNavigation.getter() & 1];
    [v10 setSearchAlongRoute:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.isSearchAlongRoute.getter() & 1];
    [v10 setChainResultSet:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.isChainResultSet.getter() & 1];
    Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.regionOfInterestRadiusInMiles.getter();
    v21 = [objc_allocWithZone(NSNumber) initWithDouble:v20];
    [v10 setRegionOfInterestRadiusInMiles:v21];
  }

  if (Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.hasSearchItems.getter())
  {
    v22 = v26;
    Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.searchItems.getter();
    v23 = specialized static PegasusACEConverters.makeMapItemList(params:)();
    (*(v27 + 8))(v22, v28);
    [v10 setSearchItems:v23];

    [v10 setSearchAlongRoute:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.isSearchAlongRoute.getter() & 1];
    [v10 setItemSource:0];
    [v10 setItemDestination:0];
    [v10 setSuppressNavigation:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.shouldSuppressNavigation.getter() & 1];
    [v10 setChainResultSet:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.isChainResultSet.getter() & 1];
    [v10 setShowDirections:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.showDirections.getter() & 1];
    [v10 setShowTraffic:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.showTraffic.getter() & 1];
  }

  return v10;
}

id specialized static PegasusACEConverters.makeAudioDescription(audioDescription:)()
{
  v0 = [objc_allocWithZone(SAUIAudioDescription) init];
  v1 = [objc_allocWithZone(NSNumber) initWithLongLong:Apple_Parsec_Siri_V2alpha_AudioDescription.bitsPerChannel.getter()];
  [v0 setBitsPerChannel:v1];

  v2 = [objc_allocWithZone(NSNumber) initWithLongLong:Apple_Parsec_Siri_V2alpha_AudioDescription.bytesPerFrame.getter()];
  [v0 setBytesPerFrame:v2];

  v3 = [objc_allocWithZone(NSNumber) initWithLongLong:Apple_Parsec_Siri_V2alpha_AudioDescription.bytesPerPacket.getter()];
  [v0 setBytesPerPacket:v3];

  v4 = [objc_allocWithZone(NSNumber) initWithLongLong:Apple_Parsec_Siri_V2alpha_AudioDescription.channelsPerFrame.getter()];
  [v0 setChannelsPerFrame:v4];

  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType and conformance Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioDescription and conformance Apple_Parsec_Siri_V2alpha_AudioDescription, &type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioDescription);
  Message.textFormatString()();
  v5 = String._bridgeToObjectiveC()();

  [v0 setFormat:v5];

  v6 = [objc_allocWithZone(NSNumber) initWithLongLong:Apple_Parsec_Siri_V2alpha_AudioDescription.formatFlags.getter()];
  [v0 setFormatFlags:v6];

  v7 = [objc_allocWithZone(NSNumber) initWithLongLong:Apple_Parsec_Siri_V2alpha_AudioDescription.formatID.getter()];
  [v0 setFormatID:v7];

  v8 = [objc_allocWithZone(NSNumber) initWithLongLong:Apple_Parsec_Siri_V2alpha_AudioDescription.framesPerPacket.getter()];
  [v0 setFramesPerPacket:v8];

  v9 = [objc_allocWithZone(NSNumber) initWithLongLong:Apple_Parsec_Siri_V2alpha_AudioDescription.reserved.getter()];
  [v0 setReserved:v9];

  Apple_Parsec_Siri_V2alpha_AudioDescription.sampleRate.getter();
  v11 = [objc_allocWithZone(NSNumber) initWithDouble:v10];
  [v0 setSampleRate:v11];

  return v0;
}

id specialized static PegasusACEConverters.makeAudioData(audioData:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(SAUIAudioData) init];
  v5 = Apple_Parsec_Siri_V2alpha_AudioData.audioBuffer.getter();
  v7 = v6;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v5, v7);
  [v4 setAudioBuffer:isa];

  if (Apple_Parsec_Siri_V2alpha_AudioData.hasDecoderStreamDescription.getter())
  {
    Apple_Parsec_Siri_V2alpha_AudioData.decoderStreamDescription.getter();
    v9 = specialized static PegasusACEConverters.makeAudioDescription(audioDescription:)();
    (*(v1 + 8))(v3, v0);
    [v4 setDecoderStreamDescription:v9];
  }

  if (Apple_Parsec_Siri_V2alpha_AudioData.hasPlayerStreamDescription.getter())
  {
    Apple_Parsec_Siri_V2alpha_AudioData.playerStreamDescription.getter();
    v10 = specialized static PegasusACEConverters.makeAudioDescription(audioDescription:)();
    (*(v1 + 8))(v3, v0);
    [v4 setPlayerStreamDescription:v10];
  }

  return v4;
}

id specialized static PegasusACEConverters.makeSayIt(params:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(SAUISayIt) init];
  Apple_Parsec_Siri_V2alpha_SayItBuilderParams.message.getter();
  v5 = String._bridgeToObjectiveC()();

  [v4 setMessage:v5];

  Apple_Parsec_Siri_V2alpha_SayItBuilderParams.dialogIdentifier.getter();
  v6 = String._bridgeToObjectiveC()();

  [v4 setDialogIdentifier:v6];

  v7 = [objc_allocWithZone(NSNumber) initWithBool:Apple_Parsec_Siri_V2alpha_SayItBuilderParams.hasListenAfterSpeaking_p.getter() & 1];
  [v4 setListenAfterSpeaking:v7];

  [v4 setRepeatable:Apple_Parsec_Siri_V2alpha_SayItBuilderParams.isRepeatable.getter() & 1];
  Apple_Parsec_Siri_V2alpha_SayItBuilderParams.audioDataURL.getter();
  v8 = String._bridgeToObjectiveC()();

  [v4 setAudioDataUrl:v8];

  [v4 setCanUseServerTTS:1];
  if (Apple_Parsec_Siri_V2alpha_SayItBuilderParams.hasAudioData.getter())
  {
    Apple_Parsec_Siri_V2alpha_SayItBuilderParams.audioData.getter();
    v9 = specialized static PegasusACEConverters.makeAudioData(audioData:)();
    (*(v1 + 8))(v3, v0);
    [v4 setAudioData:v9];
  }

  isa = Array._bridgeToObjectiveC()().super.isa;
  [v4 setCoordinationOptions:isa];

  return v4;
}

id specialized static PegasusACEConverters.makeLocalSearchMapItem(params:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role();
  v23 = *(v0 - 8);
  v24 = v0;
  __chkstk_darwin(v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(SALocalSearchMapItem) init];
  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.label.getter();
  v11 = String._bridgeToObjectiveC()();

  [v10 setLabel:v11];

  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.spokenName.getter();
  v12 = String._bridgeToObjectiveC()();

  [v10 setSpokenName:v12];

  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.location.getter();
  v13 = specialized static PegasusACEConverters.makeLocation(params:)();
  (*(v7 + 8))(v9, v6);
  [v10 setLocation:v13];

  v14 = Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.placeData.getter();
  v16 = v15;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v14, v16);
  [v10 setPlaceData2:isa];

  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.detailType.getter();
  specialized static PegasusACEConverters.makeMapItemType(detailType:)(v5);
  (*(v3 + 8))(v5, v22);
  v18 = String._bridgeToObjectiveC()();

  [v10 setDetailType:v18];

  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.directionRole.getter();
  specialized static PegasusACEConverters.makeDirectionRole(role:)(v2);
  (*(v23 + 8))(v2, v24);
  v19 = String._bridgeToObjectiveC()();

  [v10 setDirectionRole:v19];

  return v10;
}

id specialized static PegasusACEConverters.makeAppPunchOut(params:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v33 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.information);
  (*(v9 + 16))(v11, a1, v8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = v7;
    v16 = v15;
    v17 = swift_slowAlloc();
    v34 = a1;
    v18 = v17;
    v36 = v17;
    *v16 = 136315138;
    v19 = Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.punchOutUri.getter();
    v21 = v20;
    (*(v9 + 8))(v11, v8);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v36);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_0, v13, v14, "PegasusViewFactory: makeAppPunchOut %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    a1 = v34;

    v7 = v35;
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v23 = [objc_allocWithZone(SAUIAppPunchOut) init];
  Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.punchOutUri.getter();
  URL.init(string:)();

  outlined init with copy of (String, Decodable & Encodable & Sendable)(v7, v5, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  v27 = 0;
  if ((*(v25 + 48))(v5, 1, v24) != 1)
  {
    URL._bridgeToObjectiveC()(v26);
    v27 = v28;
    (*(v25 + 8))(v5, v24);
  }

  [v23 setPunchOutUri:v27];

  Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.appDisplayName.getter();
  v29 = String._bridgeToObjectiveC()();

  [v23 setAppDisplayName:v29];

  closure #1 in static PegasusACEConverters.makeAppPunchOut(params:)(a1, v7);
  if (v30)
  {
    v31 = String._bridgeToObjectiveC()();
  }

  else
  {
    v31 = 0;
  }

  [v23 setBundleId:v31];

  outlined destroy of Any?(v7, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  return v23;
}

id specialized static PegasusACEConverters.makeShowLocalSearchResult(params:)(uint64_t a1)
{
  v39[1] = a1;
  v1 = type metadata accessor for UUID();
  v40 = *(v1 - 8);
  v41 = v1;
  __chkstk_darwin(v1);
  v3 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = __chkstk_darwin(v4 - 8);
  v42 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = v39 - v8;
  __chkstk_darwin(v7);
  v43 = v39 - v10;
  v11 = type metadata accessor for Locale();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TimeZone();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_allocWithZone(NSDateFormatter) init];
  v20 = String._bridgeToObjectiveC()();
  [v19 setDateFormat:v20];

  static TimeZone.current.getter();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v16 + 8))(v18, v15);
  [v19 setTimeZone:isa];

  static Locale.current.getter();
  v22 = Locale._bridgeToObjectiveC()().super.isa;
  (*(v12 + 8))(v14, v11);
  [v19 setLocale:v22];

  Apple_Parsec_Siri_V2alpha_ShowLocalSearchResultBuilderParams.extSessionGuidCreatedTimestamp.getter();
  v23 = String._bridgeToObjectiveC()();

  v24 = [v19 dateFromString:v23];

  if (v24)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = type metadata accessor for Date();
  v27 = *(v26 - 8);
  (*(v27 + 56))(v9, v25, 1, v26);
  v28 = v43;
  outlined init with take of Date?(v9, v43);
  v29 = [objc_allocWithZone(SALocalSearchShowLocalSearchResult) init];
  UUID.init()();
  UUID.uuidString.getter();
  (*(v40 + 8))(v3, v41);
  v30 = String._bridgeToObjectiveC()();

  [v29 setAceId:v30];

  v31 = v42;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v28, v42, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v32 = 0;
  if ((*(v27 + 48))(v31, 1, v26) != 1)
  {
    v32 = Date._bridgeToObjectiveC()().super.isa;
    (*(v27 + 8))(v31, v26);
  }

  [v29 setExtSessionGuidCreatedTimestamp:v32];

  Apple_Parsec_Siri_V2alpha_ShowLocalSearchResultBuilderParams.extSessionGuid.getter();
  v33 = String._bridgeToObjectiveC()();

  [v29 setExtSessionGuid:v33];

  v34 = Apple_Parsec_Siri_V2alpha_ShowLocalSearchResultBuilderParams.placeData.getter();
  v36 = v35;
  v37 = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v34, v36);
  [v29 setRawData:v37];

  outlined destroy of Any?(v28, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v29;
}

void *specialized static PegasusACEConverters.makeAppPunchOut(cmdBuilder:)(uint64_t a1, uint64_t (*a2)(void), _DWORD *a3, uint64_t (*a4)(char *), const char *a5, ...)
{
  v44 = a5;
  v45 = a3;
  v42 = a4;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - v14;
  v16 = a2(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v41 - v18;
  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v15, 1, v20) == 1)
  {
    outlined destroy of Any?(v15, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
LABEL_10:
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.information);
    v32 = *(v8 + 16);
    v32(v12, a1, v7);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v46 = v36;
      *v35 = 136315138;
      v32(v43, v12, v7);
      v37 = String.init<A>(describing:)();
      v39 = v38;
      (*(v8 + 8))(v12, v7);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v46);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_0, v33, v34, v44, v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
    }

    else
    {

      (*(v8 + 8))(v12, v7);
    }

    return 0;
  }

  v22 = (*(v21 + 88))(v15, v20);
  if (v22 != *v45)
  {
    (*(v21 + 8))(v15, v20);
    goto LABEL_10;
  }

  (*(v21 + 96))(v15, v20);
  (*(v17 + 32))(v19, v15, v16);
  v23 = v42(v19);
  v24 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v28 = v23;
    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v29 = String._bridgeToObjectiveC()();

    [v28 setAceId:v29];
  }

  (*(v17 + 8))(v19, v16);
  return v23;
}

uint64_t specialized static PegasusACEConverters.makeInputOrigin(from:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_InputOrigin();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.homeButton(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.remoteButton(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.remoteAppButton(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.assistantSpeechButton(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.assistantTextInput(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.priorRequest(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.voiceTrigger(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.serverGenerated(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.motionGesture(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.raiseToSpeak(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.clientGenerated(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.tapToRefresh(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.backgroundRefresh(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.bluetoothVoiceTrigger(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.bluetoothDoubleTap(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.triggerlessFollowup(_:) || v6 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.dialogButtonTap(_:))
  {
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

id specialized static PegasusACEConverters.makeStartRequest(params:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_InputOrigin();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(SAStartRequest) init];
  [v4 setEyesFree:Apple_Parsec_Siri_V2alpha_StartRequestBuilderParams.eyesFree.getter() & 1];
  Apple_Parsec_Siri_V2alpha_StartRequestBuilderParams.utterance.getter();
  v5 = String._bridgeToObjectiveC()();

  [v4 setUtterance:v5];

  Apple_Parsec_Siri_V2alpha_StartRequestBuilderParams.inputOrigin.getter();
  specialized static PegasusACEConverters.makeInputOrigin(from:)(v3);
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();

    [v4 setInputOrigin:v8];
  }

  return v4;
}

id specialized static PegasusACEConverters.makeShowPlaceDetails(cmdBuilder:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    outlined destroy of Any?(v2, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
    return 0;
  }

  if ((*(v8 + 88))(v2, v7) != enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.showPlaceDetails(_:))
  {
    (*(v8 + 8))(v2, v7);
    return 0;
  }

  (*(v8 + 96))(v2, v7);
  (*(v4 + 32))(v6, v2, v3);
  v9 = [objc_allocWithZone(SALocalSearchShowPlaceDetails) init];
  [v9 setItemIndex:Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams.itemIndex.getter()];
  v10 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = v9;
    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v15 = String._bridgeToObjectiveC()();

    [v14 setAceId:v15];
  }

  (*(v4 + 8))(v6, v3);
  return v9;
}

void *specialized static PegasusACEConverters.makeStartRequest(cmdBuilder:)(uint64_t a1, uint64_t (*a2)(void), _DWORD *a3, uint64_t (*a4)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = a2(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of Any?(v9, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
    return 0;
  }

  if ((*(v15 + 88))(v9, v14) != *a3)
  {
    (*(v15 + 8))(v9, v14);
    return 0;
  }

  (*(v15 + 96))(v9, v14);
  (*(v11 + 32))(v13, v9, v10);
  v16 = a4(v13);
  v17 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = v16;
    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v22 = String._bridgeToObjectiveC()();

    [v21 setAceId:v22];
  }

  (*(v11 + 8))(v13, v10);
  return v16;
}

id specialized static PegasusACEConverters.makePushOff(params:)()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.information);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "PegasusACEConverters: In makePushOff static function helper", v3, 2u);
  }

  v70 = [objc_allocWithZone(SAInitiateHandoffOnCompanion) init];
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "PegasusACEConverters: Setting up success callback", v6, 2u);
  }

  v74 = [objc_allocWithZone(SAResultCallback) init];
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "PegasusACEConverters: successCallback initialized", v9, 2u);
  }

  [v74 setCode:SAResultCallbackAnySuccessCodeValue];
  v10 = [objc_allocWithZone(SAUIAddViews) init];
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "PegasusACEConverters: successView initialized", v13, 2u);
  }

  v14 = SAUIDialogPhaseSummaryValue;
  [v10 setDialogPhase:SAUIDialogPhaseSummaryValue];
  v15 = [objc_allocWithZone(SAUIAssistantUtteranceView) init];
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "PegasusACEConverters: successAssistantView initialized", v18, 2u);
  }

  Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.pushOffMessage.getter();
  v19 = String._bridgeToObjectiveC()();

  [v15 setText:v19];

  v20 = v15;
  Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.pushOffMessage.getter();
  v21 = String._bridgeToObjectiveC()();

  [v20 setSpeakableText:v21];

  Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.pushOffMessageCatID.getter();
  v22 = String._bridgeToObjectiveC()();

  [v20 setDialogIdentifier:v22];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_B9BD0;
  v72 = v20;
  *(v23 + 32) = v20;
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setViews:isa];

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_B9BD0;
  *(v25 + 32) = v10;
  v69 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v26 = Array._bridgeToObjectiveC()().super.isa;

  [v74 setCommands:v26];

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "PegasusACEConverters: Setting up failure callback", v29, 2u);
  }

  v30 = [objc_allocWithZone(SAResultCallback) init];
  [v30 setCode:SAResultCallbackAnyErrorCodeValue];
  v31 = [objc_allocWithZone(SAUIAddViews) init];
  [v31 setDialogPhase:v14];
  v32 = [objc_allocWithZone(SAUIAssistantUtteranceView) init];
  Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.companionUnavailableMessage.getter();
  v33 = String._bridgeToObjectiveC()();

  [v32 setText:v33];

  v34 = v32;
  Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.companionUnavailableMessage.getter();
  v35 = String._bridgeToObjectiveC()();

  [v34 setSpeakableText:v35];

  Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.companionUnavailableMessageCatID.getter();
  v36 = String._bridgeToObjectiveC()();

  [v34 setDialogIdentifier:v36];

  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_B9BD0;
  *(v37 + 32) = v34;
  v38 = Array._bridgeToObjectiveC()().super.isa;

  [v31 setViews:v38];

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_B9BD0;
  *(v39 + 32) = v31;
  v73 = v31;
  v40 = Array._bridgeToObjectiveC()().super.isa;

  [v30 setCommands:v40];

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_0, v41, v42, "PegasusACEConverters: Setting callbacks", v43, 2u);
  }

  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_BC310;
  *(v44 + 32) = v30;
  *(v44 + 40) = v74;
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAResultCallback, SAResultCallback_ptr);
  v45 = v70;
  v71 = v30;
  v75 = v74;
  v46 = Array._bridgeToObjectiveC()().super.isa;

  [v45 setCallbacks:v46];

  v47 = objc_allocWithZone(SKIDirectInvocationPayload);
  v48 = String._bridgeToObjectiveC()();
  v49 = [v47 initWithIdentifier:v48];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_B8690;
  AnyHashable.init<A>(_:)();
  v51 = Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.query.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v51;
  *(inited + 80) = v52;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Any?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  v53 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v49 setUserData:v53];

  v54 = objc_opt_self();
  v55 = [objc_allocWithZone(SKIDirectInvocationContext) init];
  v56 = [v54 runSiriKitExecutorCommandWithContext:v55 payload:v49];

  v57 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [v57 encodeObject:v56 forKey:NSKeyedArchiveRootObjectKey];
  v58 = [objc_allocWithZone(SASessionHandoffPayload) init];
  v59 = [v57 encodedData];
  v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  v63 = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v60, v62);
  [v58 setSessionHandoffData:v63];

  [v45 setHandoffPayload:v58];
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v64 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  [v45 setIsSiriXRequest:v64];

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_0, v65, v66, "PegasusACEConverters: returning from makePushOff helper", v67, 2u);
  }

  return v45;
}

void specialized static PegasusACEConverters.makePushOff(cmdBuilder:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v49 - v10;
  v49 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PushOffBuilderParams();
  v51 = *(v49 - 8);
  __chkstk_darwin(v49);
  v50 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.information);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "PegasusACEConverters: In makePushOff static function", v16, 2u);
  }

  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    outlined destroy of Any?(v11, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
    goto LABEL_17;
  }

  if ((*(v18 + 88))(v11, v17) == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.pushOff(_:))
  {
    (*(v18 + 96))(v11, v17);
    v19 = v49;
    (v51[4])(v50, v11, v49);
    v20 = specialized static PegasusACEConverters.makePushOff(params:)();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "PegasusACEConverters: Was able to get pushOff object from helper", v23, 2u);
    }

    v24 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v26 = v25;

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v28 = v20;
      Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
      v29 = String._bridgeToObjectiveC()();

      [v28 setAceId:v29];

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v30, v31))
      {

        goto LABEL_25;
      }

      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v52 = v33;
      *v32 = 136315138;
      v34 = [v28 aceId];

      if (!v34)
      {
        __break(1u);
        return;
      }

      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v52);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_0, v30, v31, "PegasusACEConverters: pushOff aceID %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
    }

    else
    {
      v30 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v30, v47))
      {
LABEL_23:

LABEL_25:
        (v51[1])(v50, v19);
        return;
      }

      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_0, v30, v47, "PegasusACEConverters: Was unable to get aceID from SiriCommandBuilder", v48, 2u);
    }

    goto LABEL_23;
  }

  (*(v18 + 8))(v11, v17);
LABEL_17:
  v39 = *(v3 + 16);
  v39(v8, a1, v2);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = v51;
    *v42 = 136315138;
    v39(v6, v8, v2);
    v43 = String.init<A>(describing:)();
    v45 = v44;
    (*(v3 + 8))(v8, v2);
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v52);

    *(v42 + 4) = v46;
    _os_log_impl(&dword_0, v40, v41, "PegasusACEConverters: Unexpected type for app punch out %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }
}

id specialized static PegasusACEConverters.makeRecordLocationActivity(params:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(SARecordLocationActivity) init];
  Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.location.getter();
  v12 = specialized static PegasusACEConverters.makeLocation(params:)();
  (*(v8 + 8))(v10, v7);
  [v11 setLocation:v12];

  Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.sourceType.getter();
  (*(v1 + 104))(v4, enum case for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType.default(_:), v0);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType and conformance Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType and conformance Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType, &type metadata accessor for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v13 = *(v1 + 8);
  v13(v4, v0);
  v13(v6, v0);
  v14 = String._bridgeToObjectiveC()();

  [v11 setSourceType:v14];

  return v11;
}

id specialized static PegasusACEConverters.makePhoneCall(params:)()
{
  v0 = [objc_allocWithZone(SAPhone) init];
  Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams.phoneNumber.getter();
  v1 = String._bridgeToObjectiveC()();

  [v0 setNumber:v1];

  Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams.name.getter();
  v2 = String._bridgeToObjectiveC()();

  [v0 setLabel:v2];

  v3 = [objc_allocWithZone(SAPersonAttribute) init];
  v4 = String._bridgeToObjectiveC()();
  [v3 setDataType:v4];

  [v3 setTypedData:v0];
  Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams.phoneNumber.getter();
  v5 = String._bridgeToObjectiveC()();

  [v3 setData:v5];

  Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams.name.getter();
  v6 = String._bridgeToObjectiveC()();

  [v3 setDisplayText:v6];

  v7 = [objc_allocWithZone(SAPhoneCall) init];
  [v7 setCallRecipient:v3];

  return v7;
}

void *specialized static PegasusACEConverters.makeSwitchProfile(cmdBuilder:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    outlined destroy of Any?(v2, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
    return 0;
  }

  if ((*(v8 + 88))(v2, v7) != enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.switchProfile(_:))
  {
    (*(v8 + 8))(v2, v7);
    return 0;
  }

  (*(v8 + 96))(v2, v7);
  (*(v4 + 32))(v6, v2, v3);
  v9 = [objc_allocWithZone(SAProfileSwitch) init];
  Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams.userID.getter();
  v10 = String._bridgeToObjectiveC()();

  v11 = v9;
  [v9 setSharedUserId:v10];

  v12 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = v11;
    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v17 = String._bridgeToObjectiveC()();

    [v16 setAceId:v17];
  }

  (*(v4 + 8))(v6, v3);
  return v11;
}

id specialized static PegasusACEConverters.makeUnlockDevice(params:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v46 - v7;
  v9 = [objc_allocWithZone(SAUIUnlockDevice) init];
  v10 = Apple_Parsec_Siri_V2alpha_UnlockDeviceBuilderParams.successCommands.getter();
  v57 = _swiftEmptyArrayStorage;
  v11 = *(v10 + 16);
  v47 = v9;
  v50 = v3;
  if (v11)
  {
    v46[1] = a1;
    v46[2] = v10;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v52 = v13;
    v14 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    *&v51 = *(v12 + 56);
    v15 = (v12 - 8);
    v48 = xmmword_B9BD0;
    v49 = v12;
    v13(v8, v14, v2);
    while (1)
    {
      v16 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter();
      if (!v16)
      {
        goto LABEL_4;
      }

      v17 = v16;
      v54 = &OBJC_PROTOCOL___SAClientBoundCommand;
      if (!swift_dynamicCastObjCProtocolConditional())
      {
        v53 = &OBJC_PROTOCOL___SAServerBoundCommand;
        v18 = swift_dynamicCastObjCProtocolConditional();
        if (!v18)
        {

LABEL_4:
          (*v15)(v8, v2);
          goto LABEL_5;
        }

        v19 = v18;
        v20 = objc_allocWithZone(SASendCommands);
        v21 = v17;
        v22 = [v20 init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v23 = swift_allocObject();
        *(v23 + 16) = v48;
        *(v23 + 32) = v19;
        v24 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, &_sSo20SAServerBoundCommand_pMR);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v22 setCommands:isa];
      }

      (*v15)(v8, v2);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v57 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_5:
      v14 += v51;
      if (!--v11)
      {

        v9 = v47;
        goto LABEL_16;
      }

      v52(v8, v14, v2);
    }
  }

LABEL_16:
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v27 = Array._bridgeToObjectiveC()().super.isa;

  [v9 setSuccessCommands:v27];

  v28 = Apple_Parsec_Siri_V2alpha_UnlockDeviceBuilderParams.failureCommands.getter();
  v57 = _swiftEmptyArrayStorage;
  v29 = *(v28 + 16);
  if (!v29)
  {

    goto LABEL_31;
  }

  *&v48 = v26;
  v52 = *(v50 + 16);
  v30 = *(v50 + 80);
  v49 = v28;
  v31 = v28 + ((v30 + 32) & ~v30);
  v32 = *(v50 + 72);
  v33 = (v50 + 8);
  v51 = xmmword_B9BD0;
  v50 += 16;
  v52(v6, v31, v2);
  while (1)
  {
    v34 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter();
    if (!v34)
    {
      goto LABEL_19;
    }

    v35 = v34;
    v56 = &OBJC_PROTOCOL___SAClientBoundCommand;
    if (!swift_dynamicCastObjCProtocolConditional())
    {
      v55 = &OBJC_PROTOCOL___SAServerBoundCommand;
      v36 = swift_dynamicCastObjCProtocolConditional();
      if (!v36)
      {

LABEL_19:
        (*v33)(v6, v2);
        goto LABEL_20;
      }

      v37 = v36;
      v38 = objc_allocWithZone(SASendCommands);
      v39 = v35;
      v40 = [v38 init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v41 = swift_allocObject();
      *(v41 + 16) = v51;
      *(v41 + 32) = v37;
      v42 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, &_sSo20SAServerBoundCommand_pMR);
      v43 = Array._bridgeToObjectiveC()().super.isa;

      [v40 setCommands:v43];
    }

    (*v33)(v6, v2);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v57 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_20:
    v31 += v32;
    if (!--v29)
    {
      break;
    }

    v52(v6, v31, v2);
  }

  v9 = v47;
LABEL_31:
  v44 = Array._bridgeToObjectiveC()().super.isa;

  [v9 setFailureCommands:v44];

  return v9;
}

id specialized static PegasusACEConverters.makeUnlockDeviceWithWatch(params:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v42 - v7;
  v9 = [objc_allocWithZone(SAUIUnlockDeviceWithWatch) init];
  v10 = Apple_Parsec_Siri_V2alpha_UnlockDeviceWithWatchBuilderParams.successCommands.getter();
  v53 = _swiftEmptyArrayStorage;
  v11 = *(v10 + 16);
  v43 = v9;
  v46 = v3;
  if (v11)
  {
    v42[1] = a1;
    v42[2] = v10;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v48 = v13;
    v14 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    *&v47 = *(v12 + 56);
    v15 = (v12 - 8);
    v44 = xmmword_B9BD0;
    v45 = v12;
    v13(v8, v14, v2);
    while (1)
    {
      v16 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter();
      if (!v16)
      {
        goto LABEL_4;
      }

      v17 = v16;
      v50 = &OBJC_PROTOCOL___SAClientBoundCommand;
      if (!swift_dynamicCastObjCProtocolConditional())
      {
        v49 = &OBJC_PROTOCOL___SAServerBoundCommand;
        v18 = swift_dynamicCastObjCProtocolConditional();
        if (!v18)
        {

LABEL_4:
          (*v15)(v8, v2);
          goto LABEL_5;
        }

        v19 = v18;
        v20 = [objc_allocWithZone(SASendCommands) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v21 = swift_allocObject();
        *(v21 + 16) = v44;
        *(v21 + 32) = v19;
        v22 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, &_sSo20SAServerBoundCommand_pMR);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v20 setCommands:isa];
      }

      (*v15)(v8, v2);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v53 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_5:
      v14 += v47;
      if (!--v11)
      {

        v9 = v43;
        goto LABEL_16;
      }

      v48(v8, v14, v2);
    }
  }

LABEL_16:
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v25 = Array._bridgeToObjectiveC()().super.isa;

  [v9 setSuccessCommands:v25];

  v26 = Apple_Parsec_Siri_V2alpha_UnlockDeviceWithWatchBuilderParams.failureCommands.getter();
  v53 = _swiftEmptyArrayStorage;
  v27 = *(v26 + 16);
  if (!v27)
  {

    goto LABEL_31;
  }

  *&v44 = v24;
  v48 = *(v46 + 16);
  v28 = *(v46 + 80);
  v45 = v26;
  v29 = v26 + ((v28 + 32) & ~v28);
  v30 = *(v46 + 72);
  v31 = (v46 + 8);
  v47 = xmmword_B9BD0;
  v46 += 16;
  v48(v6, v29, v2);
  while (1)
  {
    v32 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter();
    if (!v32)
    {
      goto LABEL_19;
    }

    v33 = v32;
    v52 = &OBJC_PROTOCOL___SAClientBoundCommand;
    if (!swift_dynamicCastObjCProtocolConditional())
    {
      v51 = &OBJC_PROTOCOL___SAServerBoundCommand;
      v34 = swift_dynamicCastObjCProtocolConditional();
      if (!v34)
      {

LABEL_19:
        (*v31)(v6, v2);
        goto LABEL_20;
      }

      v35 = v34;
      v36 = [objc_allocWithZone(SASendCommands) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v37 = swift_allocObject();
      *(v37 + 16) = v47;
      *(v37 + 32) = v35;
      v38 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, &_sSo20SAServerBoundCommand_pMR);
      v39 = Array._bridgeToObjectiveC()().super.isa;

      [v36 setCommands:v39];
    }

    (*v31)(v6, v2);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v53 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_20:
    v29 += v30;
    if (!--v27)
    {
      break;
    }

    v48(v6, v29, v2);
  }

  v9 = v43;
LABEL_31:
  v40 = Array._bridgeToObjectiveC()().super.isa;

  [v9 setFailureCommands:v40];

  return v9;
}

id specialized static PegasusACEConverters.makeOpenLink(cmdBuilder:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v25 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_OpenLinkBuilderParams();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    outlined destroy of Any?(v5, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
    return 0;
  }

  if ((*(v11 + 88))(v5, v10) != enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.openLink(_:))
  {
    (*(v11 + 8))(v5, v10);
    return 0;
  }

  (*(v11 + 96))(v5, v10);
  (*(v7 + 32))(v9, v5, v6);
  v12 = [objc_allocWithZone(SAUIOpenLink) init];
  Apple_Parsec_Siri_V2alpha_OpenLinkBuilderParams.ref.getter();
  URL.init(string:)();

  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v16 = 0;
  if ((*(v14 + 48))(v2, 1, v13) != 1)
  {
    URL._bridgeToObjectiveC()(v15);
    v16 = v17;
    (*(v14 + 8))(v2, v13);
  }

  [v12 setRef:v16];

  v18 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v22 = v12;
    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v23 = String._bridgeToObjectiveC()();

    [v22 setAceId:v23];
  }

  (*(v7 + 8))(v9, v6);
  return v12;
}

void *specialized static PegasusACEConverters.makeSetSiriAuthorizationForApp(cmdBuilder:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SetSiriAuthorizationForAppBuilderParams();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    outlined destroy of Any?(v2, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
    return 0;
  }

  if ((*(v8 + 88))(v2, v7) != enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.setSiriAuthorizationForApp(_:))
  {
    (*(v8 + 8))(v2, v7);
    return 0;
  }

  (*(v8 + 96))(v2, v7);
  (*(v4 + 32))(v6, v2, v3);
  v9 = [objc_allocWithZone(SASettingSetSiriAuthorizationForApp) init];
  Apple_Parsec_Siri_V2alpha_SetSiriAuthorizationForAppBuilderParams.appBundleID.getter();
  v10 = String._bridgeToObjectiveC()();

  v11 = v9;
  [v9 setBundleId:v10];

  v12 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = v11;
    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v17 = String._bridgeToObjectiveC()();

    [v16 setAceId:v17];
  }

  (*(v4 + 8))(v6, v3);
  return v11;
}

id specialized static PegasusACEConverters.makeEndNavigation(cmdBuilder:)(uint64_t a1, int *a2, Class *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Any?(v7, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
    return 0;
  }

  v10 = (*(v9 + 88))(v7, v8);
  v11 = *a2;
  (*(v9 + 8))(v7, v8);
  if (v10 != v11)
  {
    return 0;
  }

  v12 = [objc_allocWithZone(*a3) init];
  v13 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = v12;
    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v18 = String._bridgeToObjectiveC()();

    [v17 setAceId:v18];
  }

  return v12;
}

void *specialized static PegasusACEConverters.makeSearchMarketplace(cmdBuilder:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v20 - v1;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SearchMarketplaceParams();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    outlined destroy of Any?(v2, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
    return 0;
  }

  if ((*(v8 + 88))(v2, v7) != enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.searchMarketplace(_:))
  {
    (*(v8 + 8))(v2, v7);
    return 0;
  }

  (*(v8 + 96))(v2, v7);
  (*(v4 + 32))(v6, v2, v3);
  v9 = [objc_allocWithZone(SAAppsSearchMarketplace) init];
  Apple_Parsec_Siri_V2alpha_SearchMarketplaceParams.marketplace.getter();
  v10 = String._bridgeToObjectiveC()();

  [v9 setMarketplace:v10];

  Apple_Parsec_Siri_V2alpha_SearchMarketplaceParams.keyword.getter();
  v11 = String._bridgeToObjectiveC()();

  v12 = v9;
  [v9 setKeyword:v11];

  v13 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = v12;
    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v18 = String._bridgeToObjectiveC()();

    [v17 setAceId:v18];
  }

  (*(v4 + 8))(v6, v3);
  return v12;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType and conformance Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t RunPommesRequestFlow.__allocating_init(pommesResponse:identifiedUser:outputPublisher:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  outlined init with take of IdentifiedUser?(a2, v6 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_identifiedUser);
  outlined init with take of SiriSuggestionsBroker(a3, v6 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_outputPublisher);
  v7 = v6 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_state;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  *(v7 + 40) = 2;
  return v6;
}

uint64_t RunPommesRequestFlow.init(pommesResponse:identifiedUser:outputPublisher:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  outlined init with take of IdentifiedUser?(a2, v3 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_identifiedUser);
  outlined init with take of SiriSuggestionsBroker(a3, v3 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_outputPublisher);
  v5 = v3 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_state;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  *(v5 + 40) = 2;
  return v3;
}

uint64_t outlined init with take of IdentifiedUser?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of IdentifiedUser?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RunPommesRequestFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_state;
  swift_beginAccess();
  result = outlined init with copy of RunPommesRequestFlow.State(v1 + v3, v7);
  if (v8)
  {
    if (v8 == 1)
    {
      *a1 = *&v7[0];
    }

    else
    {
      lazy protocol witness table accessor for type RunPommesRequestFlow.InvalidStateError and conformance RunPommesRequestFlow.InvalidStateError();
      result = swift_allocError();
      *v6 = 0xD00000000000002DLL;
      v6[1] = 0x80000000000C0A00;
      *a1 = result;
    }

    v5 = 1;
  }

  else
  {
    result = outlined init with take of SiriSuggestionsBroker(v7, a1);
    v5 = 0;
  }

  *(a1 + 40) = v5;
  return result;
}