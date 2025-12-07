uint64_t SearchForAccountsUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)(uint64_t a1)
{
  v2[9] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = type metadata accessor for Logger();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v1;

  return MEMORY[0x2822009F8](SearchForAccountsUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:), 0);
}

uint64_t SearchForAccountsUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  v1 = v0[12];
  v15 = v0[11];
  v16 = v0[10];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v15 + 16))(v1, v2, v16);
  v18 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v19 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v18, v17))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(0, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v14 + 40) = buf;
    *(v14 + 48) = v11;
    *(v14 + 56) = v12;
    serialize(_:at:)(0, (v14 + 40));
    serialize(_:at:)(0, (v14 + 40));
    *(v14 + 64) = v19;
    v13 = swift_task_alloc();
    v13[2] = v14 + 40;
    v13[3] = v14 + 48;
    v13[4] = v14 + 56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v18, v17, "#SearchForAccountsUnsupportedValueStrategy makeUpdatedIntentForUnsupportedValue", buf, 2u);
    destroyStorage<A>(_:count:)(v11, 0, v9);
    destroyStorage<A>(_:count:)(v12, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v7 = *(v14 + 96);
  v6 = *(v14 + 80);
  v5 = *(v14 + 88);
  MEMORY[0x277D82BD8](v18);
  (*(v5 + 8))(v7, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMR);
  v8 = ParameterResolutionRecord.intent.getter();

  v3 = *(*(v14 + 16) + 8);

  return v3(v8);
}

uint64_t SearchForAccountsUnsupportedValueStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v20 = a5;
  v23 = a6;
  v18 = a7;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v38 = a6;
  v21 = *(a6 - 8);
  v22 = a6 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v13 - v14;
  v36 = MEMORY[0x28223BE20](a1, a2);
  v35 = v8;
  v34 = v9;
  v33 = v10;
  v32 = v11;
  v37 = v7;
  v19 = v31;
  outlined init with copy of GlobalsProviding(v36, v31);

  v15 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  v16 = v29;
  outlined init with copy of GlobalsProviding(v24, v29);
  (*(v21 + 16))(v17, v20, v23);
  v28 = BaseStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v19, v26, v15, v16, v17, v23, v18);

  v37 = v28;
  (*(v21 + 8))(v20, v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);

  __swift_destroy_boxed_opaque_existential_0(v27);

  return v28;
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUnsupportedValueOutput(resolveRecord:) in conformance SearchForAccountsUnsupportedValueStrategy(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SearchForAccountsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(a1, a2);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUpdatedIntentForUnsupportedValue(resolveRecord:) in conformance SearchForAccountsUnsupportedValueStrategy(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return SearchForAccountsUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)(a1);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance SearchForAccountsUnsupportedValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for SearchForAccountsUnsupportedValueStrategy(0);
  *v5 = *(v8 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9E00](a1, a2, v6, a4);
}

uint64_t type metadata accessor for SearchForAccountsUnsupportedValueStrategy(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for SearchForAccountsUnsupportedValueStrategy;
  if (!type metadata singleton initialization cache for SearchForAccountsUnsupportedValueStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t RequestPaymentNeedsValueStrategy.__allocating_init()()
{
  v32 = 0;
  v18 = 0;
  v8 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v0);
  v17 = &v7 - v8;
  v13 = type metadata accessor for Globals();
  v9 = v37;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v37);
  v10 = &v36;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v11 = &v35;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v12 = &v34;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v1 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v9, v10, v11, v12);
  v26 = v38;
  v38[3] = v13;
  v38[4] = &protocol witness table for Globals;
  v38[0] = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo22INRequestPaymentIntentCSo0ghI8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo22INRequestPaymentIntentCSo0ghI8ResponseCGMR);
  v16 = v33;
  outlined init with copy of GlobalsProviding(v26, v33);
  type metadata accessor for PaymentsBaseCATs(v18);
  default argument 0 of CATWrapper.init(options:globals:)();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  v14 = type metadata accessor for INRequestPaymentIntent();
  v2 = type metadata accessor for INRequestPaymentIntentResponse();
  v3 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v14, v2);
  v25 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v16, v15, v3);
  v32 = v25;
  v24 = v31;
  outlined init with copy of GlobalsProviding(v26, v31);
  type metadata accessor for RequestPaymentCATs(v18);
  default argument 0 of CATWrapper.init(options:globals:)();
  v19 = CATWrapper.__allocating_init(options:globals:)();
  NSJSONWritingOptions.init(rawValue:)(v19);
  v20 = v30;
  v30[3] = &type metadata for CommonLabelsProvider;
  v30[4] = &protocol witness table for CommonLabelsProvider;
  v4 = type metadata accessor for SiriKitContactResolver();
  v21 = v29;
  v29[3] = v4;
  v29[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(v29);
  SiriKitContactResolver.init()();

  v22 = &v28;
  v28 = v25;
  v5 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INRequestPaymentIntent, INRequestPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v27 = RequestPaymentNeedsValueStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v24, v19, v20, v21, v22, v23, v5);

  v38[5] = v27;

  __swift_destroy_boxed_opaque_existential_0(v26);

  return v27;
}

uint64_t RequestPaymentNeedsValueStrategy.actionForInput(_:resolveRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v29 = a1;
  v27 = a3;
  v40 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v28 = 0;
  v37 = type metadata accessor for Logger();
  v31 = v37;
  v32 = *(v37 - 8);
  v36 = v32;
  v33 = v32;
  v34 = *(v32 + 64);
  v3 = &v11 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v3;
  v50 = MEMORY[0x28223BE20](v29, v30);
  v49 = v4;
  v48 = v5;
  v6 = Logger.payments.unsafeMutableAddressor();
  (*(v36 + 16))(v3, v6, v37);
  v42 = Logger.logObject.getter();
  v38 = v42;
  v41 = static os_log_type_t.debug.getter();
  v39 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v43 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v42, v41))
  {
    v7 = v28;
    v18 = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = v18;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = 0;
    v19 = createStorage<A>(capacity:type:)(0, v15, v15);
    v17 = v19;
    v20 = createStorage<A>(capacity:type:)(v16, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v47 = v18;
    v46 = v19;
    v45 = v20;
    v21 = 0;
    v22 = &v47;
    serialize(_:at:)(0, &v47);
    serialize(_:at:)(v21, v22);
    v44 = v43;
    v23 = &v11;
    MEMORY[0x28223BE20](&v11, v8);
    v24 = &v11 - 6;
    *(&v11 - 4) = v9;
    *(&v11 - 3) = &v46;
    *(&v11 - 2) = &v45;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v26 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v38, v39, "#RequestPaymentNeedsValueStrategy actionForInput.", v14, 2u);
      v12 = 0;
      destroyStorage<A>(_:count:)(v17, 0, v15);
      destroyStorage<A>(_:count:)(v20, v12, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v14, MEMORY[0x277D84B78]);

      v13 = v26;
    }
  }

  else
  {

    v13 = v28;
  }

  (*(v33 + 8))(v35, v31);

  BaseStrategy.actionForInput(_:)(v29, v27);
}

uint64_t RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 208) = v2;
  *(v3 + 200) = a2;
  *(v3 + 192) = a1;
  *(v3 + 136) = v3;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 368) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR);
  *(v3 + 216) = v4;
  v9 = *(v4 - 8);
  *(v3 + 224) = v9;
  *(v3 + 232) = *(v9 + 64);
  *(v3 + 240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  *(v3 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *(v3 + 256) = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  *(v3 + 264) = v5;
  *(v3 + 272) = *(v5 - 8);
  *(v3 + 280) = swift_task_alloc();
  v6 = type metadata accessor for ParameterIdentifier();
  *(v3 + 288) = v6;
  *(v3 + 296) = *(v6 - 8);
  *(v3 + 304) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v3 + 312) = v7;
  *(v3 + 320) = *(v7 - 8);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 144) = a2;
  *(v3 + 152) = v2;

  return MEMORY[0x2822009F8](RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:), 0);
}

uint64_t RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)()
{
  v69 = v0;
  v1 = v0[42];
  v58 = v0[40];
  v59 = v0[39];
  v0[17] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  v60 = *(v58 + 16);
  v60(v1, v2, v59);
  v62 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v63 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v62, v61))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v54 = createStorage<A>(capacity:type:)(0, v52, v52);
    v55 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v57 + 160) = buf;
    *(v57 + 168) = v54;
    *(v57 + 176) = v55;
    serialize(_:at:)(0, (v57 + 160));
    serialize(_:at:)(0, (v57 + 160));
    *(v57 + 184) = v63;
    v56 = swift_task_alloc();
    v56[2] = v57 + 160;
    v56[3] = v57 + 168;
    v56[4] = v57 + 176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v62, v61, "#RequestPaymentNeedsValueStrategy makePromptForValue", buf, 2u);
    destroyStorage<A>(_:count:)(v54, 0, v52);
    destroyStorage<A>(_:count:)(v55, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v43 = *(v57 + 336);
  v44 = *(v57 + 312);
  v47 = *(v57 + 304);
  v48 = *(v57 + 288);
  v42 = *(v57 + 320);
  v46 = *(v57 + 296);
  MEMORY[0x277D82BD8](v62);
  v45 = *(v42 + 8);
  v45(v43, v44);
  ParameterResolutionRecord.parameter.getter();
  rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
  rawValue._object = v3;
  v49 = *(v46 + 8);
  v49(v47, v48);
  v4.value = RequestPaymentSlots.init(rawValue:)(rawValue).value;
  value = v4.value;
  *(v57 + 370) = v4;
  if (v4.value == SiriPaymentsIntents_RequestPaymentSlots_unknownDefault)
  {
    v10 = *(v57 + 328);
    v26 = *(v57 + 312);
    v30 = *(v57 + 240);
    v31 = *(v57 + 216);
    v28 = *(v57 + 200);
    v27 = *(v57 + 224);
    v11 = Logger.payments.unsafeMutableAddressor();
    v60(v10, v11, v26);
    (*(v27 + 16))(v30, v28, v31);
    v29 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v32 = swift_allocObject();
    (*(v27 + 32))(v32 + v29, v30, v31);
    oslog = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    v34 = swift_allocObject();
    *(v34 + 16) = 32;
    v35 = swift_allocObject();
    *(v35 + 16) = 8;
    v33 = swift_allocObject();
    *(v33 + 16) = partial apply for implicit closure #1 in RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
    *(v33 + 24) = v32;
    v36 = swift_allocObject();
    *(v36 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v36 + 24) = v33;
    _allocateUninitializedArray<A>(_:)();
    v37 = v12;

    *v37 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37[1] = v34;

    v37[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v37[3] = v35;

    v37[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v37[5] = v36;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v39))
    {
      v23 = static UnsafeMutablePointer.allocate(capacity:)();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v24 = createStorage<A>(capacity:type:)(0, v22, v22);
      v25 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v64 = v23;
      v65 = v24;
      v66 = v25;
      serialize(_:at:)(2, &v64);
      serialize(_:at:)(1, &v64);
      v67 = partial apply for closure #1 in OSLogArguments.append(_:);
      v68 = v34;
      closure #1 in osLogInternal(_:log:type:)(&v67, &v64, &v65, &v66);
      v67 = partial apply for closure #1 in OSLogArguments.append(_:);
      v68 = v35;
      closure #1 in osLogInternal(_:log:type:)(&v67, &v64, &v65, &v66);
      v67 = partial apply for closure #1 in OSLogArguments.append(_:);
      v68 = v36;
      closure #1 in osLogInternal(_:log:type:)(&v67, &v64, &v65, &v66);
      _os_log_impl(&dword_2686B1000, oslog, v39, "#RequestPaymentNeedsValueFlowStrategy unknown parameter: %s", v23, 0xCu);
      destroyStorage<A>(_:count:)(v24, 0, v22);
      destroyStorage<A>(_:count:)(v25, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v23, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v16 = *(v57 + 328);
    v17 = *(v57 + 312);
    v18 = *(v57 + 304);
    v19 = *(v57 + 288);
    MEMORY[0x277D82BD8](oslog);
    v45(v16, v17);
    ParameterResolutionRecord.parameter.getter();
    v21 = ParameterIdentifier.name.getter();
    v20 = v13;
    v49(v18, v19);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v14 = v21;
    *(v14 + 8) = v20;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 14;
    swift_willThrow();

    v15 = *(*(v57 + 136) + 8);

    return v15();
  }

  else
  {
    v41 = *(v57 + 256);
    v40 = *(v57 + 208);
    *(v57 + 368) = v4;

    *(v57 + 344) = *(v40 + 16);

    *(v57 + 369) = value;
    lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
    lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
    Slot<>.propertyName.getter(&type metadata for RequestPaymentSlots, &protocol witness table for RequestPaymentSlots);
    String.toSpeakableString.getter();

    v5 = type metadata accessor for SpeakableString();
    (*(*(v5 - 8) + 56))(v41, 0, 1);
    v6 = swift_task_alloc();
    *(v57 + 352) = v6;
    *v6 = *(v57 + 136);
    v6[1] = RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
    v7 = *(v57 + 280);
    v8 = *(v57 + 256);

    return RequestPaymentCATs.promptForSlotValue(slot:)(v7, v8);
  }
}

{
  v4 = *v1;
  v4[17] = *v1;
  v4[45] = v0;

  if (v0)
  {
    v2 = RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  else
  {
    outlined destroy of SpeakableString?(v4[32]);

    v2 = RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v7 = *(v0 + 370);
  v11 = *(v0 + 280);
  v9 = *(v0 + 272);
  v10 = *(v0 + 264);
  v12 = *(v0 + 248);
  v6 = *(v0 + 208);
  v8 = *(v0 + 192);
  *(v0 + 136) = v0;

  outlined init with copy of GlobalsProviding(v6 + 104, v0 + 16);

  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
  (*(v4 + 16))(v5);

  BaseStrategy.ttsEnabled.getter();

  static PaymentsContextProvider.needsValueContextUpdate(value:)(v7, v12);
  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v12, 0, 1);
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v8[3] = type metadata accessor for AceOutput();
  v8[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v8);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?((v0 + 96));
  outlined destroy of NLContextUpdate?(v12);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v9 + 8))(v11, v10);

  v2 = *(*(v0 + 136) + 8);

  return v2();
}

{
  v1 = *(v0 + 256);
  *(v0 + 136) = v0;
  outlined destroy of SpeakableString?(v1);

  v2 = *(*(v0 + 136) + 8);

  return v2();
}

uint64_t implicit closure #1 in RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)()
{
  v8 = type metadata accessor for ParameterIdentifier();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v0);
  v7 = &v3 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v9 = ParameterIdentifier.name.getter();
  v10 = v1;
  (*(v5 + 8))(v7, v8);
  return v9;
}

uint64_t RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 496) = v3;
  *(v4 + 488) = a3;
  *(v4 + 480) = a2;
  *(v4 + 472) = a1;
  *(v4 + 280) = v4;
  *(v4 + 288) = 0;
  *(v4 + 296) = 0;
  *(v4 + 304) = 0;
  *(v4 + 768) = 0;
  *(v4 + 344) = 0;
  *(v4 + 352) = 0;
  *(v4 + 392) = 0;
  v5 = type metadata accessor for Parse.DirectInvocation();
  *(v4 + 504) = v5;
  v12 = *(v5 - 8);
  *(v4 + 512) = v12;
  *(v4 + 520) = *(v12 + 64);
  *(v4 + 528) = swift_task_alloc();
  *(v4 + 536) = swift_task_alloc();
  v6 = type metadata accessor for Parse();
  *(v4 + 544) = v6;
  *(v4 + 552) = *(v6 - 8);
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR);
  *(v4 + 576) = v7;
  v13 = *(v7 - 8);
  *(v4 + 584) = v13;
  *(v4 + 592) = *(v13 + 64);
  *(v4 + 600) = swift_task_alloc();
  v8 = type metadata accessor for Input();
  *(v4 + 608) = v8;
  v14 = *(v8 - 8);
  *(v4 + 616) = v14;
  *(v4 + 624) = *(v14 + 64);
  *(v4 + 632) = swift_task_alloc();
  v9 = type metadata accessor for ParameterIdentifier();
  *(v4 + 640) = v9;
  *(v4 + 648) = *(v9 - 8);
  *(v4 + 656) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v4 + 664) = v10;
  *(v4 + 672) = *(v10 - 8);
  *(v4 + 680) = swift_task_alloc();
  *(v4 + 688) = swift_task_alloc();
  *(v4 + 696) = swift_task_alloc();
  *(v4 + 704) = swift_task_alloc();
  *(v4 + 712) = swift_task_alloc();
  *(v4 + 720) = swift_task_alloc();
  *(v4 + 728) = swift_task_alloc();
  *(v4 + 736) = swift_task_alloc();
  *(v4 + 744) = swift_task_alloc();
  *(v4 + 752) = swift_task_alloc();
  *(v4 + 760) = swift_task_alloc();
  *(v4 + 288) = a2;
  *(v4 + 296) = a3;
  *(v4 + 304) = v3;

  return MEMORY[0x2822009F8](RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:), 0);
}

uint64_t RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1, uint64_t a2)
{
  v341 = v2;
  MEMORY[0x28223BE20](a1, a2);
  v3 = *(v2 + 760);
  v288 = *(v2 + 672);
  v289 = *(v2 + 664);
  *(v2 + 280) = v2;
  v4 = Logger.payments.unsafeMutableAddressor();
  v290 = *(v288 + 16);
  v290(v3, v4, v289);
  oslog = Logger.logObject.getter();
  v291 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v293 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v291))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v285 = createStorage<A>(capacity:type:)(0, v283, v283);
    v286 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v2 + 440) = buf;
    *(v2 + 448) = v285;
    *(v2 + 456) = v286;
    serialize(_:at:)(0, (v2 + 440));
    serialize(_:at:)(0, (v2 + 440));
    *(v2 + 464) = v293;
    v287 = swift_task_alloc();
    v287[2] = v2 + 440;
    v287[3] = v2 + 448;
    v287[4] = v2 + 456;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, oslog, v291, "#RequestPaymentNeedsValueStrategy parseValueResponse.", buf, 2u);
    destroyStorage<A>(_:count:)(v285, 0, v283);
    destroyStorage<A>(_:count:)(v286, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v274 = *(v2 + 760);
  v275 = *(v2 + 664);
  v278 = *(v2 + 656);
  v279 = *(v2 + 640);
  v273 = *(v2 + 672);
  v277 = *(v2 + 648);
  MEMORY[0x277D82BD8](oslog);
  v276 = *(v273 + 8);
  v276(v274, v275);
  ParameterResolutionRecord.parameter.getter();
  rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
  rawValue._object = v5;
  v280 = *(v277 + 8);
  v280(v278, v279);
  v6.value = RequestPaymentSlots.init(rawValue:)(rawValue).value;
  value = v6.value;
  if (v6.value == SiriPaymentsIntents_RequestPaymentSlots_unknownDefault)
  {
    v43 = *(v2 + 680);
    v61 = *(v2 + 664);
    v65 = *(v2 + 600);
    v66 = *(v2 + 576);
    v63 = *(v2 + 488);
    v62 = *(v2 + 584);
    v44 = Logger.payments.unsafeMutableAddressor();
    v290(v43, v44, v61);
    (*(v62 + 16))(v65, v63, v66);
    v64 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v67 = swift_allocObject();
    (*(v62 + 32))(v67 + v64, v65, v66);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    v69 = swift_allocObject();
    *(v69 + 16) = 32;
    v70 = swift_allocObject();
    *(v70 + 16) = 8;
    v68 = swift_allocObject();
    *(v68 + 16) = partial apply for implicit closure #1 in RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
    *(v68 + 24) = v67;
    v71 = swift_allocObject();
    *(v71 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v71 + 24) = v68;
    _allocateUninitializedArray<A>(_:)();
    v72 = v45;

    *v72 = partial apply for closure #1 in OSLogArguments.append(_:);
    v72[1] = v69;

    v72[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v72[3] = v70;

    v72[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v72[5] = v71;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v73, v74))
    {
      v58 = static UnsafeMutablePointer.allocate(capacity:)();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v59 = createStorage<A>(capacity:type:)(0, v57, v57);
      v60 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v294 = v58;
      v295 = v59;
      v296 = v60;
      serialize(_:at:)(2, &v294);
      serialize(_:at:)(1, &v294);
      v297 = partial apply for closure #1 in OSLogArguments.append(_:);
      v298 = v69;
      closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
      v297 = partial apply for closure #1 in OSLogArguments.append(_:);
      v298 = v70;
      closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
      v297 = partial apply for closure #1 in OSLogArguments.append(_:);
      v298 = v71;
      closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
      _os_log_impl(&dword_2686B1000, v73, v74, "#RequestPaymentNeedsValueStrategy unknown parameter: %s", v58, 0xCu);
      destroyStorage<A>(_:count:)(v59, 0, v57);
      destroyStorage<A>(_:count:)(v60, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v58, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v55 = *(v2 + 680);
    v51 = *(v2 + 664);
    v56 = *(v2 + 656);
    v52 = *(v2 + 640);
    MEMORY[0x277D82BD8](v73);
    v276(v55, v51);
    ParameterResolutionRecord.parameter.getter();
    v54 = ParameterIdentifier.name.getter();
    v53 = v46;
    v280(v56, v52);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v47 = v54;
    *(v47 + 8) = v53;
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0;
    *(v47 + 40) = 0;
    *(v47 + 48) = 14;
    swift_willThrow();

    v48 = *(*(v2 + 280) + 8);

    return v48();
  }

  else
  {
    v7 = *(v2 + 752);
    v259 = *(v2 + 664);
    v263 = *(v2 + 632);
    v264 = *(v2 + 608);
    v261 = *(v2 + 480);
    v260 = *(v2 + 616);
    *(v2 + 768) = v6;
    v8 = Logger.payments.unsafeMutableAddressor();
    v290(v7, v8, v259);
    (*(v260 + 16))(v263, v261, v264);
    v262 = (*(v260 + 80) + 16) & ~*(v260 + 80);
    v265 = swift_allocObject();
    (*(v260 + 32))(v265 + v262, v263, v264);
    log = Logger.logObject.getter();
    v272 = static os_log_type_t.debug.getter();
    v267 = swift_allocObject();
    *(v267 + 16) = 32;
    v268 = swift_allocObject();
    *(v268 + 16) = 8;
    v266 = swift_allocObject();
    *(v266 + 16) = partial apply for implicit closure #2 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
    *(v266 + 24) = v265;
    v269 = swift_allocObject();
    *(v269 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v269 + 24) = v266;
    _allocateUninitializedArray<A>(_:)();
    v270 = v9;

    *v270 = partial apply for closure #1 in OSLogArguments.append(_:);
    v270[1] = v267;

    v270[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v270[3] = v268;

    v270[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v270[5] = v269;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v272))
    {
      v256 = static UnsafeMutablePointer.allocate(capacity:)();
      v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v257 = createStorage<A>(capacity:type:)(0, v255, v255);
      v258 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v336 = v256;
      v337 = v257;
      v338 = v258;
      serialize(_:at:)(2, &v336);
      serialize(_:at:)(1, &v336);
      v339 = partial apply for closure #1 in OSLogArguments.append(_:);
      v340 = v267;
      closure #1 in osLogInternal(_:log:type:)(&v339, &v336, &v337, &v338);
      v339 = partial apply for closure #1 in OSLogArguments.append(_:);
      v340 = v268;
      closure #1 in osLogInternal(_:log:type:)(&v339, &v336, &v337, &v338);
      v339 = partial apply for closure #1 in OSLogArguments.append(_:);
      v340 = v269;
      closure #1 in osLogInternal(_:log:type:)(&v339, &v336, &v337, &v338);
      _os_log_impl(&dword_2686B1000, log, v272, "#RequestPaymentNeedsValueStrategy Parse: %s", v256, 0xCu);
      destroyStorage<A>(_:count:)(v257, 0, v255);
      destroyStorage<A>(_:count:)(v258, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v256, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v238 = *(v2 + 752);
    v10 = *(v2 + 744);
    v239 = *(v2 + 664);
    v244 = *(v2 + 600);
    v245 = *(v2 + 576);
    v241 = *(v2 + 488);
    v240 = *(v2 + 584);
    MEMORY[0x277D82BD8](log);
    v276(v238, v239);
    v11 = Logger.payments.unsafeMutableAddressor();
    v290(v10, v11, v239);
    v242 = *(v240 + 16);
    v242(v244, v241, v245);
    v243 = *(v240 + 80);
    v247 = swift_allocObject();
    v246 = *(v240 + 32);
    v246(v247 + ((v243 + 16) & ~v243), v244, v245);
    v253 = Logger.logObject.getter();
    v254 = static os_log_type_t.debug.getter();
    v249 = swift_allocObject();
    *(v249 + 16) = 32;
    v250 = swift_allocObject();
    *(v250 + 16) = 8;
    v248 = swift_allocObject();
    *(v248 + 16) = partial apply for implicit closure #1 in RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
    *(v248 + 24) = v247;
    v251 = swift_allocObject();
    *(v251 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v251 + 24) = v248;
    _allocateUninitializedArray<A>(_:)();
    v252 = v12;

    *v252 = partial apply for closure #1 in OSLogArguments.append(_:);
    v252[1] = v249;

    v252[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v252[3] = v250;

    v252[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v252[5] = v251;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v253, v254))
    {
      v235 = static UnsafeMutablePointer.allocate(capacity:)();
      v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v236 = createStorage<A>(capacity:type:)(0, v234, v234);
      v237 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v331 = v235;
      v332 = v236;
      v333 = v237;
      serialize(_:at:)(2, &v331);
      serialize(_:at:)(1, &v331);
      v334 = partial apply for closure #1 in OSLogArguments.append(_:);
      v335 = v249;
      closure #1 in osLogInternal(_:log:type:)(&v334, &v331, &v332, &v333);
      v334 = partial apply for closure #1 in OSLogArguments.append(_:);
      v335 = v250;
      closure #1 in osLogInternal(_:log:type:)(&v334, &v331, &v332, &v333);
      v334 = partial apply for closure #1 in OSLogArguments.append(_:);
      v335 = v251;
      closure #1 in osLogInternal(_:log:type:)(&v334, &v331, &v332, &v333);
      _os_log_impl(&dword_2686B1000, v253, v254, "#RequestPaymentNeedsValueStrategy parseResponseValue for slot: %s", v235, 0xCu);
      destroyStorage<A>(_:count:)(v236, 0, v234);
      destroyStorage<A>(_:count:)(v237, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v235, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v229 = *(v2 + 744);
    v230 = *(v2 + 664);
    v232 = *(v2 + 568);
    v233 = *(v2 + 544);
    v231 = *(v2 + 552);
    MEMORY[0x277D82BD8](v253);
    v276(v229, v230);
    Input.parse.getter();
    if ((*(v231 + 88))(v232, v233) == *MEMORY[0x277D5C150])
    {
      v13 = *(v2 + 736);
      v215 = *(v2 + 664);
      v214 = *(v2 + 568);
      v216 = *(v2 + 536);
      v218 = *(v2 + 528);
      v219 = *(v2 + 504);
      v213 = *(v2 + 512);
      (*(*(v2 + 552) + 96))();
      v220 = *(v213 + 32);
      v220(v216, v214, v219);
      *(v2 + 352) = v216;
      v14 = Logger.payments.unsafeMutableAddressor();
      v290(v13, v14, v215);
      (*(v213 + 16))(v218, v216, v219);
      v217 = (*(v213 + 80) + 16) & ~*(v213 + 80);
      v221 = swift_allocObject();
      v220(v221 + v217, v218, v219);
      v227 = Logger.logObject.getter();
      v228 = static os_log_type_t.debug.getter();
      v223 = swift_allocObject();
      *(v223 + 16) = 32;
      v224 = swift_allocObject();
      *(v224 + 16) = 8;
      v222 = swift_allocObject();
      *(v222 + 16) = partial apply for implicit closure #4 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
      *(v222 + 24) = v221;
      v225 = swift_allocObject();
      *(v225 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v225 + 24) = v222;
      _allocateUninitializedArray<A>(_:)();
      v226 = v15;

      *v226 = partial apply for closure #1 in OSLogArguments.append(_:);
      v226[1] = v223;

      v226[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v226[3] = v224;

      v226[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v226[5] = v225;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v227, v228))
      {
        v210 = static UnsafeMutablePointer.allocate(capacity:)();
        v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v211 = createStorage<A>(capacity:type:)(0, v209, v209);
        v212 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v326 = v210;
        v327 = v211;
        v328 = v212;
        serialize(_:at:)(2, &v326);
        serialize(_:at:)(1, &v326);
        v329 = partial apply for closure #1 in OSLogArguments.append(_:);
        v330 = v223;
        closure #1 in osLogInternal(_:log:type:)(&v329, &v326, &v327, &v328);
        v329 = partial apply for closure #1 in OSLogArguments.append(_:);
        v330 = v224;
        closure #1 in osLogInternal(_:log:type:)(&v329, &v326, &v327, &v328);
        v329 = partial apply for closure #1 in OSLogArguments.append(_:);
        v330 = v225;
        closure #1 in osLogInternal(_:log:type:)(&v329, &v326, &v327, &v328);
        _os_log_impl(&dword_2686B1000, v227, v228, "#RequestPaymentNeedsValueStrategy parseResponseValue, directInvocation: %s", v210, 0xCu);
        destroyStorage<A>(_:count:)(v211, 0, v209);
        destroyStorage<A>(_:count:)(v212, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v210, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v204 = *(v2 + 736);
      v205 = *(v2 + 664);
      MEMORY[0x277D82BD8](v227);
      v276(v204, v205);
      v206 = Parse.DirectInvocation.identifier.getter();
      v207 = v16;

      *(v2 + 248) = PaymentsDirectInvocations.Identifiers.rawValue.getter(3);
      *(v2 + 256) = v17;
      v314 = v206;
      v315 = v207;
      v208 = MEMORY[0x26D620740](*(v2 + 248), *(v2 + 256), v206, v207);
      outlined destroy of String.UTF8View(v2 + 248);
      if (v208)
      {

        if (Parse.DirectInvocation.userData.getter())
        {
          *(v2 + 264) = PaymentsDirectInvocations.Keys.rawValue.getter(1);
          *(v2 + 272) = v18;
          MEMORY[0x26D620650]();
          outlined destroy of String.UTF8View(v2 + 264);
        }

        else
        {
          *(v2 + 216) = 0;
          *(v2 + 224) = 0;
          *(v2 + 232) = 0;
          *(v2 + 240) = 0;
        }

        if (*(v2 + 240))
        {
          type metadata accessor for INPerson();
          if (swift_dynamicCast())
          {
            v203 = *(v2 + 432);
          }

          else
          {
            v203 = 0;
          }

          v202 = v203;
        }

        else
        {
          outlined destroy of FlowActivity?((v2 + 216));
          v202 = 0;
        }

        v22 = *(v2 + 720);
        v179 = *(v2 + 664);
        *(v2 + 392) = v202;
        v23 = Logger.payments.unsafeMutableAddressor();
        v290(v22, v23, v179);
        MEMORY[0x277D82BE0](v202);
        v180 = swift_allocObject();
        *(v180 + 16) = v202;
        default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

        v185 = Logger.logObject.getter();
        v186 = static os_log_type_t.debug.getter();
        v181 = swift_allocObject();
        *(v181 + 16) = 64;
        v182 = swift_allocObject();
        *(v182 + 16) = 8;
        v183 = swift_allocObject();
        *(v183 + 16) = partial apply for implicit closure #5 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
        *(v183 + 24) = v180;
        _allocateUninitializedArray<A>(_:)();
        v184 = v24;

        *v184 = partial apply for closure #1 in OSLogArguments.append(_:);
        v184[1] = v181;

        v184[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v184[3] = v182;

        v184[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v184[5] = v183;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v185, v186))
        {
          v176 = static UnsafeMutablePointer.allocate(capacity:)();
          v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v177 = createStorage<A>(capacity:type:)(1, v175, v175);
          v178 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v321 = v176;
          v322 = v177;
          v323 = v178;
          serialize(_:at:)(2, &v321);
          serialize(_:at:)(1, &v321);
          v324 = partial apply for closure #1 in OSLogArguments.append(_:);
          v325 = v181;
          closure #1 in osLogInternal(_:log:type:)(&v324, &v321, &v322, &v323);
          v324 = partial apply for closure #1 in OSLogArguments.append(_:);
          v325 = v182;
          closure #1 in osLogInternal(_:log:type:)(&v324, &v321, &v322, &v323);
          v324 = partial apply for closure #1 in OSLogArguments.append(_:);
          v325 = v183;
          closure #1 in osLogInternal(_:log:type:)(&v324, &v321, &v322, &v323);
          _os_log_impl(&dword_2686B1000, v185, v186, "#RequestPaymentNeedsValueStrategy Received payer value %@ from DirectInvocation", v176, 0xCu);
          destroyStorage<A>(_:count:)(v177, 1, v175);
          destroyStorage<A>(_:count:)(v178, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v176, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v167 = *(v2 + 720);
        v168 = *(v2 + 712);
        v171 = *(v2 + 664);
        MEMORY[0x277D82BD8](v185);
        v276(v167, v171);
        v170 = ParameterResolutionRecord.intent.getter();
        MEMORY[0x277D82BE0](v202);
        countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payer", 5uLL, 1)._countAndFlagsBits;
        v169 = MEMORY[0x26D620690](countAndFlagsBits);

        [v170 setValue:v202 forKeyPath:v169];
        MEMORY[0x277D82BD8](v169);
        swift_unknownObjectRelease();
        MEMORY[0x277D82BD8](v170);
        MEMORY[0x277D82BD8](v202);

        v26 = Logger.payments.unsafeMutableAddressor();
        v290(v168, v26, v171);
        v173 = Logger.logObject.getter();
        v172 = static os_log_type_t.debug.getter();
        v174 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v173, v172))
        {
          v163 = static UnsafeMutablePointer.allocate(capacity:)();
          v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v164 = createStorage<A>(capacity:type:)(0, v162, v162);
          v165 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          *(v2 + 400) = v163;
          *(v2 + 408) = v164;
          *(v2 + 416) = v165;
          serialize(_:at:)(0, (v2 + 400));
          serialize(_:at:)(0, (v2 + 400));
          *(v2 + 424) = v174;
          v166 = swift_task_alloc();
          v166[2] = v2 + 400;
          v166[3] = v2 + 408;
          v166[4] = v2 + 416;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();

          _os_log_impl(&dword_2686B1000, v173, v172, "#RequestPaymentNeedsValueStrategy Returning successful IntentPromptAnswer", v163, 2u);
          destroyStorage<A>(_:count:)(v164, 0, v162);
          destroyStorage<A>(_:count:)(v165, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v163, MEMORY[0x277D84B78]);
        }

        v154 = *(v2 + 712);
        v155 = *(v2 + 664);
        v160 = *(v2 + 536);
        v161 = *(v2 + 504);
        v158 = *(v2 + 472);
        v159 = *(v2 + 512);
        MEMORY[0x277D82BD8](v173);
        v276(v154, v155);
        v156 = ParameterResolutionRecord.intent.getter();
        *(v2 + 200) = &type metadata for RequestPaymentSlots;
        *(v2 + 208) = &protocol witness table for RequestPaymentSlots;
        *(v2 + 176) = value;
        v157 = type metadata accessor for INRequestPaymentIntent();
        SiriKitPaymentsIntent.value(forSlot:)((v2 + 176), v157, &v320);
        __swift_destroy_boxed_opaque_existential_0((v2 + 176));
        MEMORY[0x277D82BD8](v156);
        ParameterResolutionRecord.intent.getter();
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo016INRequestPaymentD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo016INRequestPaymentD0CGMR);
        (*(*(v27 - 8) + 56))(v158, 0, 1);
        (*(v159 + 8))(v160, v161);
      }

      else
      {
        v19 = *(v2 + 728);
        v198 = *(v2 + 664);

        v20 = Logger.payments.unsafeMutableAddressor();
        v290(v19, v20, v198);
        v200 = Logger.logObject.getter();
        v199 = static os_log_type_t.error.getter();
        v201 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v200, v199))
        {
          v194 = static UnsafeMutablePointer.allocate(capacity:)();
          v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v195 = createStorage<A>(capacity:type:)(0, v193, v193);
          v196 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          *(v2 + 360) = v194;
          *(v2 + 368) = v195;
          *(v2 + 376) = v196;
          serialize(_:at:)(0, (v2 + 360));
          serialize(_:at:)(0, (v2 + 360));
          *(v2 + 384) = v201;
          v197 = swift_task_alloc();
          v197[2] = v2 + 360;
          v197[3] = v2 + 368;
          v197[4] = v2 + 376;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();

          _os_log_impl(&dword_2686B1000, v200, v199, "#RequestPaymentNeedsValueStrategy parseResponseValue failed to interpret user response as expected Direct Invocation. Reprompt with previous state", v194, 2u);
          destroyStorage<A>(_:count:)(v195, 0, v193);
          destroyStorage<A>(_:count:)(v196, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v194, MEMORY[0x277D84B78]);
        }

        v187 = *(v2 + 728);
        v188 = *(v2 + 664);
        v191 = *(v2 + 536);
        v192 = *(v2 + 504);
        v189 = *(v2 + 472);
        v190 = *(v2 + 512);
        MEMORY[0x277D82BD8](v200);
        v276(v187, v188);
        v316 = 0;
        v317 = 0;
        v318 = 0;
        v319 = 0;
        ParameterResolutionRecord.intent.getter();
        type metadata accessor for INRequestPaymentIntent();
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo016INRequestPaymentD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo016INRequestPaymentD0CGMR);
        (*(*(v21 - 8) + 56))(v189, 0, 1);

        (*(v190 + 8))(v191, v192);
      }
    }

    else
    {
      v150 = *(v2 + 560);
      v151 = *(v2 + 544);
      v147 = *(v2 + 496);
      v149 = *(v2 + 552);
      Input.parse.getter();
      v148 = ParameterResolutionRecord.intent.getter();

      outlined init with copy of GlobalsProviding(v147 + 104, v2 + 16);

      v146 = *(v2 + 40);
      v145 = *(v2 + 48);
      __swift_project_boxed_opaque_existential_1((v2 + 16), v146);
      (*(v145 + 24))(v146);

      outlined init with copy of GlobalsProviding(v147 + 64, v2 + 96);

      v153 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(v148, &protocol witness table for INRequestPaymentIntent, v2 + 56, v2 + 96);
      __swift_destroy_boxed_opaque_existential_0((v2 + 96));
      __swift_destroy_boxed_opaque_existential_0((v2 + 56));
      __swift_destroy_boxed_opaque_existential_0((v2 + 16));
      MEMORY[0x277D82BD8](v148);
      v152 = *(v149 + 8);
      v152(v150, v151);
      if (v153)
      {
        objc_opt_self();
        v144 = swift_dynamicCastObjCClass();
        if (v144)
        {
          v143 = v144;
        }

        else
        {
          MEMORY[0x277D82BD8](v153);
          v143 = 0;
        }

        v142 = v143;
      }

      else
      {
        v142 = 0;
      }

      if (v142)
      {
        v28 = *(v2 + 704);
        v133 = *(v2 + 664);
        *(v2 + 344) = v142;
        v29 = Logger.payments.unsafeMutableAddressor();
        v290(v28, v29, v133);
        MEMORY[0x277D82BE0](v142);
        v134 = swift_allocObject();
        *(v134 + 16) = v142;
        v140 = Logger.logObject.getter();
        v141 = static os_log_type_t.debug.getter();
        v136 = swift_allocObject();
        *(v136 + 16) = 64;
        v137 = swift_allocObject();
        *(v137 + 16) = 8;
        v135 = swift_allocObject();
        *(v135 + 16) = partial apply for implicit closure #4 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
        *(v135 + 24) = v134;
        v138 = swift_allocObject();
        *(v138 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
        *(v138 + 24) = v135;
        _allocateUninitializedArray<A>(_:)();
        v139 = v30;

        *v139 = partial apply for closure #1 in OSLogArguments.append(_:);
        v139[1] = v136;

        v139[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v139[3] = v137;

        v139[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v139[5] = v138;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v140, v141))
        {
          v130 = static UnsafeMutablePointer.allocate(capacity:)();
          v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v131 = createStorage<A>(capacity:type:)(1, v129, v129);
          v132 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v309 = v130;
          v310 = v131;
          v311 = v132;
          serialize(_:at:)(2, &v309);
          serialize(_:at:)(1, &v309);
          v312 = partial apply for closure #1 in OSLogArguments.append(_:);
          v313 = v136;
          closure #1 in osLogInternal(_:log:type:)(&v312, &v309, &v310, &v311);
          v312 = partial apply for closure #1 in OSLogArguments.append(_:);
          v313 = v137;
          closure #1 in osLogInternal(_:log:type:)(&v312, &v309, &v310, &v311);
          v312 = partial apply for closure #1 in OSLogArguments.append(_:);
          v313 = v138;
          closure #1 in osLogInternal(_:log:type:)(&v312, &v309, &v310, &v311);
          _os_log_impl(&dword_2686B1000, v140, v141, "#RequestPaymentNeedsValueStrategy Converted PaymentsIntent to SiriKit intent: %@", v130, 0xCu);
          destroyStorage<A>(_:count:)(v131, 1, v129);
          destroyStorage<A>(_:count:)(v132, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v130, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v127 = *(v2 + 704);
        v128 = *(v2 + 664);
        MEMORY[0x277D82BD8](v140);
        v276(v127, v128);
        if (value)
        {
          if (value == SiriPaymentsIntents_RequestPaymentSlots_currencyAmount)
          {
            v123 = ParameterResolutionRecord.intent.getter();
            v122 = [v142 currencyAmount];
            v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("currencyAmount", 0xEuLL, 1)._countAndFlagsBits;
            v121 = MEMORY[0x26D620690](v32);

            [v123 setValue:v122 forKeyPath:v121];
            MEMORY[0x277D82BD8](v121);
            swift_unknownObjectRelease();
            MEMORY[0x277D82BD8](v123);
          }

          else
          {
            v119 = ParameterResolutionRecord.intent.getter();
            v33 = [v142 note];
            v120 = v33;
            if (v33)
            {
              v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v116 = v34;
              MEMORY[0x277D82BD8](v120);
              v117 = v115;
              v118 = v116;
            }

            else
            {
              v117 = 0;
              v118 = 0;
            }

            if (v118)
            {
              v113 = MEMORY[0x26D620690](v117);

              v114 = v113;
            }

            else
            {
              v114 = 0;
            }

            v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("note", 4uLL, 1)._countAndFlagsBits;
            v112 = MEMORY[0x26D620690](v35);

            [v119 setValue:v114 forKeyPath:v112];
            MEMORY[0x277D82BD8](v112);
            swift_unknownObjectRelease();
            MEMORY[0x277D82BD8](v119);
          }
        }

        else
        {
          v126 = ParameterResolutionRecord.intent.getter();
          v125 = [v142 payer];
          v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payer", 5uLL, 1)._countAndFlagsBits;
          v124 = MEMORY[0x26D620690](v31);

          [v126 setValue:v125 forKeyPath:v124];
          MEMORY[0x277D82BD8](v124);
          swift_unknownObjectRelease();
          MEMORY[0x277D82BD8](v126);
        }

        v36 = *(v2 + 696);
        v100 = *(v2 + 664);
        v102 = *(v2 + 600);
        v103 = *(v2 + 576);
        v101 = *(v2 + 488);
        v37 = Logger.payments.unsafeMutableAddressor();
        v290(v36, v37, v100);
        v242(v102, v101, v103);
        v104 = swift_allocObject();
        v246(v104 + ((v243 + 16) & ~v243), v102, v103);
        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.debug.getter();
        v106 = swift_allocObject();
        *(v106 + 16) = 32;
        v107 = swift_allocObject();
        *(v107 + 16) = 8;
        v105 = swift_allocObject();
        *(v105 + 16) = partial apply for implicit closure #7 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
        *(v105 + 24) = v104;
        v108 = swift_allocObject();
        *(v108 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v108 + 24) = v105;
        _allocateUninitializedArray<A>(_:)();
        v109 = v38;

        *v109 = partial apply for closure #1 in OSLogArguments.append(_:);
        v109[1] = v106;

        v109[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v109[3] = v107;

        v109[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v109[5] = v108;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v110, v111))
        {
          v97 = static UnsafeMutablePointer.allocate(capacity:)();
          v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v98 = createStorage<A>(capacity:type:)(0, v96, v96);
          v99 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v304 = v97;
          v305 = v98;
          v306 = v99;
          serialize(_:at:)(2, &v304);
          serialize(_:at:)(1, &v304);
          v307 = partial apply for closure #1 in OSLogArguments.append(_:);
          v308 = v106;
          closure #1 in osLogInternal(_:log:type:)(&v307, &v304, &v305, &v306);
          v307 = partial apply for closure #1 in OSLogArguments.append(_:);
          v308 = v107;
          closure #1 in osLogInternal(_:log:type:)(&v307, &v304, &v305, &v306);
          v307 = partial apply for closure #1 in OSLogArguments.append(_:);
          v308 = v108;
          closure #1 in osLogInternal(_:log:type:)(&v307, &v304, &v305, &v306);
          _os_log_impl(&dword_2686B1000, v110, v111, "#RequestPaymentNeedsValueStrategy Returning intent: %s", v97, 0xCu);
          destroyStorage<A>(_:count:)(v98, 0, v96);
          destroyStorage<A>(_:count:)(v99, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v97, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v89 = *(v2 + 696);
        v90 = *(v2 + 664);
        v94 = *(v2 + 568);
        v95 = *(v2 + 544);
        v93 = *(v2 + 472);
        MEMORY[0x277D82BD8](v110);
        v276(v89, v90);
        v91 = ParameterResolutionRecord.intent.getter();
        *(v2 + 160) = &type metadata for RequestPaymentSlots;
        *(v2 + 168) = &protocol witness table for RequestPaymentSlots;
        *(v2 + 136) = value;
        v92 = type metadata accessor for INRequestPaymentIntent();
        SiriKitPaymentsIntent.value(forSlot:)((v2 + 136), v92, &v303);
        __swift_destroy_boxed_opaque_existential_0((v2 + 136));
        MEMORY[0x277D82BD8](v91);
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo016INRequestPaymentD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo016INRequestPaymentD0CGMR);
        (*(*(v39 - 8) + 56))(v93, 0, 1);
        v152(v94, v95);
      }

      else
      {
        v40 = *(v2 + 688);
        v85 = *(v2 + 664);
        v41 = Logger.payments.unsafeMutableAddressor();
        v290(v40, v41, v85);
        v87 = Logger.logObject.getter();
        v86 = static os_log_type_t.error.getter();
        v88 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v87, v86))
        {
          v81 = static UnsafeMutablePointer.allocate(capacity:)();
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v82 = createStorage<A>(capacity:type:)(0, v80, v80);
          v83 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          *(v2 + 312) = v81;
          *(v2 + 320) = v82;
          *(v2 + 328) = v83;
          serialize(_:at:)(0, (v2 + 312));
          serialize(_:at:)(0, (v2 + 312));
          *(v2 + 336) = v88;
          v84 = swift_task_alloc();
          v84[2] = v2 + 312;
          v84[3] = v2 + 320;
          v84[4] = v2 + 328;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();

          _os_log_impl(&dword_2686B1000, v87, v86, "#RequestPaymentNeedsValueStrategy parseResponseValue failed to interpret user response as expected Send response. Reprompt with previous state", v81, 2u);
          destroyStorage<A>(_:count:)(v82, 0, v80);
          destroyStorage<A>(_:count:)(v83, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v81, MEMORY[0x277D84B78]);
        }

        v75 = *(v2 + 688);
        v76 = *(v2 + 664);
        v78 = *(v2 + 568);
        v79 = *(v2 + 544);
        v77 = *(v2 + 472);
        MEMORY[0x277D82BD8](v87);
        v276(v75, v76);
        v299 = 0;
        v300 = 0;
        v301 = 0;
        v302 = 0;
        ParameterResolutionRecord.intent.getter();
        type metadata accessor for INRequestPaymentIntent();
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo016INRequestPaymentD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo016INRequestPaymentD0CGMR);
        (*(*(v42 - 8) + 56))(v77, 0, 1);
        v152(v78, v79);
      }
    }

    v50 = *(*(v2 + 280) + 8);

    return v50();
  }
}

uint64_t implicit closure #2 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  v5 = type metadata accessor for Parse();
  v3 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v0);
  v4 = &v2 - v3;
  Input.parse.getter();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #4 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1)
{
  v3 = a1;
  v6 = type metadata accessor for Parse.DirectInvocation();
  v5 = *(v6 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v3);
  v7 = &v2 - v4;
  (*(v5 + 16))();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #7 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR);
  ParameterResolutionRecord.intent.getter();
  type metadata accessor for INRequestPaymentIntent();
  lazy protocol witness table accessor for type INRequestPaymentIntent and conformance NSObject();
  return String.init<A>(describing:)();
}

uint64_t RequestPaymentNeedsValueStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v20 = a5;
  v23 = a6;
  v18 = a7;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v38 = a6;
  v21 = *(a6 - 8);
  v22 = a6 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v13 - v14;
  v36 = MEMORY[0x28223BE20](a1, a2);
  v35 = v8;
  v34 = v9;
  v33 = v10;
  v32 = v11;
  v37 = v7;
  v19 = v31;
  outlined init with copy of GlobalsProviding(v36, v31);

  v15 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  v16 = v29;
  outlined init with copy of GlobalsProviding(v24, v29);
  (*(v21 + 16))(v17, v20, v23);
  v28 = BaseStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v19, v26, v15, v16, v17, v23, v18);

  v37 = v28;
  (*(v21 + 8))(v20, v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);

  __swift_destroy_boxed_opaque_existential_0(v27);

  return v28;
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance RequestPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(a1, a2, a3);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makePromptForValue(resolveRecord:) in conformance RequestPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)(a1, a2);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:) in conformance RequestPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for RequestPaymentNeedsValueStrategy(0);
  *v5 = *(v8 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9BF8](a1, a2, v6, a4);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:) in conformance RequestPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for RequestPaymentNeedsValueStrategy(0);
  *v5 = *(v8 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9C00](a1, a2, v6, a4);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance RequestPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  *(v6 + 16) = v6;
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for RequestPaymentNeedsValueStrategy(0);
  *v7 = *(v10 + 16);
  v7[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v8, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance RequestPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7;
  *(v7 + 16) = v7;
  v8 = swift_task_alloc();
  *(v11 + 24) = v8;
  v9 = type metadata accessor for RequestPaymentNeedsValueStrategy(0);
  *v8 = *(v11 + 16);
  v8[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v9, a7);
}

uint64_t sub_26885D8FC()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR);

  return implicit closure #1 in RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)();
}

uint64_t sub_26885DB1C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_26885DCCC()
{
  v2 = *(type metadata accessor for Input() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  type metadata accessor for Input();

  return implicit closure #2 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)();
}

uint64_t sub_26885DED4()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_26885E1A4()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #7 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR);

  return implicit closure #7 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)();
}

uint64_t sub_26885E3C4()
{
  v2 = *(type metadata accessor for Parse.DirectInvocation() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #4 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  v1 = *(type metadata accessor for Parse.DirectInvocation() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #4 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(v2);
}

uint64_t type metadata accessor for RequestPaymentNeedsValueStrategy(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for RequestPaymentNeedsValueStrategy;
  if (!type metadata singleton initialization cache for RequestPaymentNeedsValueStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t static PaymentIntentCATResponseCode.from(_:)(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("READY", 5uLL, 1)._countAndFlagsBits;
      break;
    case 2:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("IN_PROGRESS", 0xBuLL, 1)._countAndFlagsBits;
      break;
    case 3:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SUCCESS", 7uLL, 1)._countAndFlagsBits;
      break;
    case 4:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FAILURE", 7uLL, 1)._countAndFlagsBits;
      break;
    case 5:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("REQUIRING_APP_LAUNCH", 0x14uLL, 1)._countAndFlagsBits;
      break;
    case 6:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CREDENTIALS_UNVERIFIED", 0x16uLL, 1)._countAndFlagsBits;
      break;
    case 7:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PAYMENTS_AMOUNT_BELOW_MINIMUM", 0x1DuLL, 1)._countAndFlagsBits;
      break;
    case 8:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PAYMENTS_AMOUNT_ABOVE_MAXIMUM", 0x1DuLL, 1)._countAndFlagsBits;
      break;
    case 9:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PAYMENTS_CURRENCY_UNSUPPORTED", 0x1DuLL, 1)._countAndFlagsBits;
      break;
    case 10:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSUFFICIENT_FUNDS", 0x12uLL, 1)._countAndFlagsBits;
      break;
    case 11:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NO_BANK_ACCOUNT", 0xFuLL, 1)._countAndFlagsBits;
      break;
    case 12:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NOT_ELIGIBLE", 0xCuLL, 1)._countAndFlagsBits;
      break;
    case 13:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TERMS_AND_CONDITIONS_ACCEPTANCE_REQUIRED", 0x28uLL, 1)._countAndFlagsBits;
      break;
    default:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNSPECIFIED", 0xBuLL, 1)._countAndFlagsBits;
      break;
  }

  return countAndFlagsBits;
}

{
  switch(a1)
  {
    case 1:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("READY", 5uLL, 1)._countAndFlagsBits;
      break;
    case 2:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("IN_PROGRESS", 0xBuLL, 1)._countAndFlagsBits;
      break;
    case 3:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SUCCESS", 7uLL, 1)._countAndFlagsBits;
      break;
    case 4:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FAILURE", 7uLL, 1)._countAndFlagsBits;
      break;
    case 5:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("REQUIRING_APP_LAUNCH", 0x14uLL, 1)._countAndFlagsBits;
      break;
    case 6:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CREDENTIALS_UNVERIFIED", 0x16uLL, 1)._countAndFlagsBits;
      break;
    case 7:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PAYMENTS_AMOUNT_BELOW_MINIMUM", 0x1DuLL, 1)._countAndFlagsBits;
      break;
    case 8:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PAYMENTS_AMOUNT_ABOVE_MAXIMUM", 0x1DuLL, 1)._countAndFlagsBits;
      break;
    case 9:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PAYMENTS_CURRENCY_UNSUPPORTED", 0x1DuLL, 1)._countAndFlagsBits;
      break;
    case 10:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NO_BANK_ACCOUNT", 0xFuLL, 1)._countAndFlagsBits;
      break;
    case 11:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NOT_ELIGIBLE", 0xCuLL, 1)._countAndFlagsBits;
      break;
    case 12:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TERMS_AND_CONDITIONS_ACCEPTANCE_REQUIRED", 0x28uLL, 1)._countAndFlagsBits;
      break;
    default:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNSPECIFIED", 0xBuLL, 1)._countAndFlagsBits;
      break;
  }

  return countAndFlagsBits;
}

{
  switch(a1)
  {
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PAYMENTS_AMOUNT_BELOW_MINIMUM", 0x1DuLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PAYMENTS_AMOUNT_ABOVE_MAXIMUM", 0x1DuLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PAYMENTS_CURRENCY_UNSUPPORTED", 0x1DuLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNSPECIFIED", 0xBuLL, 1)._countAndFlagsBits;
  }
}

{
  switch(a1)
  {
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CREDENTIALS_UNVERIFIED", 0x16uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NO_BANK_ACCOUNT", 0xFuLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NO_ACCOUNT", 0xAuLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNSPECIFIED", 0xBuLL, 1)._countAndFlagsBits;
  }
}

{
  switch(a1)
  {
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CREDENTIALS_UNVERIFIED", 0x16uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSUFFICIENT_FUNDS", 0x12uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NO_BANK_ACCOUNT", 0xFuLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NO_ACCOUNT", 0xAuLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNSPECIFIED", 0xBuLL, 1)._countAndFlagsBits;
  }
}

{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNSPECIFIED", 0xBuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("READY", 5uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("IN_PROGRESS", 0xBuLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SUCCESS", 7uLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FAILURE", 7uLL, 1)._countAndFlagsBits;
    case 5:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("REQUIRING_APP_LAUNCH", 0x14uLL, 1)._countAndFlagsBits;
    case 6:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CREDENTIALS_UNVERIFIED", 0x16uLL, 1)._countAndFlagsBits;
    case 7:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ACCOUNT_NOT_FOUND", 0x11uLL, 1)._countAndFlagsBits;
    case 8:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TERMS_AND_CONDITIONS_ACCEPTANCE_REQUIRED", 0x28uLL, 1)._countAndFlagsBits;
    case 9:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NOT_ELIGIBLE", 0xCuLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNSPECIFIED", 0xBuLL, 1)._countAndFlagsBits;
  }
}

uint64_t CommonLabelsProvider.cancel()()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = CommonLabelsProvider.cancel();

  return MEMORY[0x2821BAF80]();
}

uint64_t CommonLabelsProvider.cancel()(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 16) = *v3;
  v9 = v4 + 16;

  if (v2)
  {
    v8 = *(*v9 + 8);

    return v8(v5);
  }

  else
  {
    v6 = *(*v9 + 8);

    return v6(a1, a2);
  }
}

uint64_t CommonLabelsProvider.no()()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = CommonLabelsProvider.cancel();

  return MEMORY[0x2821BAF70]();
}

uint64_t CommonLabelsProvider.yes()()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = CommonLabelsProvider.cancel();

  return MEMORY[0x2821BAF78]();
}

uint64_t CommonLabelsProvider.openApp(_:locale:)(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  v2[7] = a1;
  v2[4] = v2;
  v2[5] = 0;
  v2[6] = 0;
  v2[2] = 0;
  v2[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[5] = a1;
  v2[6] = a2;

  return MEMORY[0x2822009F8](CommonLabelsProvider.openApp(_:locale:), 0);
}

{
  v6 = *v3;
  v6[4] = *v3;
  v6[13] = v2;
  v6[14] = a1;
  v6[15] = a2;

  if (v2)
  {
    v4 = CommonLabelsProvider.openApp(_:locale:);
  }

  else
  {
    outlined destroy of AppDisplayInfo?(v6[9]);
    v4 = CommonLabelsProvider.openApp(_:locale:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t CommonLabelsProvider.openApp(_:locale:)()
{
  v9 = *(v0 + 88);
  *(v0 + 32) = v0;
  v10 = type metadata accessor for AppDisplayInfo();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1);
  type metadata accessor for AppInformationResolver();

  AppInformationResolver.__allocating_init(app:)();
  v12 = dispatch thunk of AppInformationResolver.getLocalizedAppDisplayName(inLocale:)();
  v13 = v1;

  if (v13)
  {
    v7 = *(v8 + 88);
    v6 = *(v8 + 80);
    *(v8 + 16) = v12;
    *(v8 + 24) = v13;
    App.isFirstParty.getter(v2);
    AppDisplayInfo.init(displayName:isFirstParty:)();
    (v11)(v6, 0, 1, v10);
    outlined assign with take of AppDisplayInfo?(v6, v7);
  }

  outlined init with copy of AppDisplayInfo?(*(v8 + 88), *(v8 + 72));
  v3 = swift_task_alloc();
  *(v8 + 96) = v3;
  *v3 = *(v8 + 32);
  v3[1] = CommonLabelsProvider.openApp(_:locale:);
  v4 = *(v8 + 72);

  return MEMORY[0x2821BAF90](v4);
}

{
  v1 = v0[11];
  v0[4] = v0;
  outlined destroy of AppDisplayInfo?(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[15];
  v4 = v0[14];

  return v2(v4, v3);
}

{
  v4 = v0[11];
  v1 = v0[9];
  v0[4] = v0;
  outlined destroy of AppDisplayInfo?(v1);
  outlined destroy of AppDisplayInfo?(v4);

  v2 = *(v0[4] + 8);

  return v2();
}

void *outlined assign with take of AppDisplayInfo?(const void *a1, void *a2)
{
  v7 = type metadata accessor for AppDisplayInfo();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t protocol witness for CommonLabelsProviding.cancel() in conformance CommonLabelsProvider()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = CommonLabelsProvider.cancel();

  return CommonLabelsProvider.cancel()();
}

uint64_t protocol witness for CommonLabelsProviding.no() in conformance CommonLabelsProvider()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = CommonLabelsProvider.cancel();

  return CommonLabelsProvider.no()();
}

uint64_t protocol witness for CommonLabelsProviding.yes() in conformance CommonLabelsProvider()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = CommonLabelsProvider.cancel();

  return CommonLabelsProvider.yes()();
}

uint64_t protocol witness for CommonLabelsProviding.openApp(_:locale:) in conformance CommonLabelsProvider(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = CommonLabelsProvider.cancel();

  return CommonLabelsProvider.openApp(_:locale:)(a1, a2);
}

uint64_t PaymentsFlow.flowState.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
  swift_beginAccess();
  outlined init with copy of PaymentsFlowState(v3, a1);
  return swift_endAccess();
}

void *outlined init with copy of PaymentsFlowState(const void *a1, void *a2)
{
  v6 = type metadata accessor for PaymentsFlowState(0);
  if (swift_getEnumCaseMultiPayload() <= 2)
  {
    v2 = type metadata accessor for Input();
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

uint64_t type metadata accessor for PaymentsFlowState(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for PaymentsFlowState;
  if (!type metadata singleton initialization cache for PaymentsFlowState)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t PaymentsFlow.flowState.setter(uint64_t a1)
{
  v9 = a1;
  v5 = (*(*(type metadata accessor for PaymentsFlowState(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v9, v2);
  v6 = &v5 - v5;
  outlined init with copy of PaymentsFlowState(v3, &v5 - v5);
  v7 = (v1 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
  v8 = &v10;
  swift_beginAccess();
  outlined assign with take of PaymentsFlowState(v6, v7);
  swift_endAccess();
  return outlined destroy of PaymentsFlowState(v9);
}

void *outlined assign with take of PaymentsFlowState(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    outlined destroy of PaymentsFlowState(a2);
    v4 = type metadata accessor for PaymentsFlowState(0);
    if (swift_getEnumCaseMultiPayload() <= 2)
    {
      v2 = type metadata accessor for Input();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t outlined destroy of PaymentsFlowState(uint64_t a1)
{
  type metadata accessor for PaymentsFlowState(0);
  if (swift_getEnumCaseMultiPayload() <= 2)
  {
    v1 = type metadata accessor for Input();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t PaymentsFlow.restrictionGuards.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_restrictionGuards);

  return v2;
}

uint64_t PaymentsFlow.init(flowFactory:)(void *a1)
{
  v25 = a1;
  v29 = 0;
  v28 = 0;
  v12 = 0;
  v23 = type metadata accessor for PaymentsFlowState(0);
  v11 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v24 = &v10 - v11;
  v17 = type metadata accessor for UnlockDevicePolicy();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v13 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v3);
  v16 = &v10 - v13;
  v29 = v4;
  v28 = v1;
  v21 = OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_restrictionGuards;
  v20 = type metadata accessor for CommonFlowGuard();
  v19 = _allocateUninitializedArray<A>(_:)();
  v18 = v5;
  static UnlockDevicePolicy.requiringDeviceUnlock.getter();
  static CommonFlowGuard.ensuringDeviceIsAuthenticated(using:)();
  (*(v14 + 8))(v16, v17);
  static CommonFlowGuard.disallowInSharingMode.getter();
  _finalizeUninitializedArray<A>(_:)();
  v7 = v6;
  v8 = v25;
  *(v1 + v21) = v7;
  v22 = v27;
  outlined init with copy of GlobalsProviding(v8, v27);
  outlined init with take of CommonLabelsProviding(v22, (v1 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowFactory));
  swift_storeEnumTagMultiPayload();
  outlined init with take of PaymentsFlowState(v24, (v1 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState));
  __swift_destroy_boxed_opaque_existential_0(v25);
  return v26;
}

void *outlined init with take of PaymentsFlowState(const void *a1, void *a2)
{
  v6 = type metadata accessor for PaymentsFlowState(0);
  if (swift_getEnumCaseMultiPayload() <= 2)
  {
    v2 = type metadata accessor for Input();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

uint64_t PaymentsFlow.on(input:)(uint64_t a1)
{
  v126 = a1;
  v110 = 0;
  v169 = 0;
  v168 = 0;
  v103 = 0;
  v104 = type metadata accessor for PaymentsFlowState(0);
  v106 = *(*(v104 - 8) + 64);
  v1 = MEMORY[0x28223BE20](0, v104);
  v108 = (v106 + 15) & 0xFFFFFFFFFFFFFFF0;
  v105 = &v36 - v108;
  v2 = MEMORY[0x28223BE20](v1, &v36 - v108);
  v107 = &v36 - v108;
  MEMORY[0x28223BE20](v2, &v36 - v108);
  v109 = &v36 - v108;
  v133 = type metadata accessor for Input();
  v111 = v133;
  v112 = *(v133 - 8);
  v131 = v112;
  v129 = *(v112 + 64);
  MEMORY[0x28223BE20](v110, v133);
  v132 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for Logger();
  v114 = v123;
  v115 = *(v123 - 8);
  v122 = v115;
  v116 = v115;
  v118 = *(v115 + 64);
  v4 = MEMORY[0x28223BE20](v126, v123);
  v120 = (v118 + 15) & 0xFFFFFFFFFFFFFFF0;
  v117 = &v36 - v120;
  v5 = MEMORY[0x28223BE20](v4, &v36 - v120);
  v119 = &v36 - v120;
  v6 = MEMORY[0x28223BE20](v5, &v36 - v120);
  v7 = &v36 - v120;
  v121 = &v36 - v120;
  v169 = v6;
  v168 = v8;
  v9 = Logger.payments.unsafeMutableAddressor();
  v124 = *(v122 + 16);
  v125 = (v122 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v124(v7, v9, v123);
  v127 = *(v131 + 16);
  v128 = (v131 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v127(v132, v126, v133);
  v130 = (*(v131 + 80) + 16) & ~*(v131 + 80);
  v142 = swift_allocObject();
  (*(v131 + 32))(v142 + v130, v132, v133);
  v153 = Logger.logObject.getter();
  v134 = v153;
  v152 = static os_log_type_t.debug.getter();
  v135 = v152;
  v136 = 17;
  v141 = 7;
  v146 = swift_allocObject();
  v137 = v146;
  v138 = 32;
  *(v146 + 16) = 32;
  v10 = swift_allocObject();
  v11 = v138;
  v147 = v10;
  v139 = v10;
  *(v10 + 16) = 8;
  v140 = v11;
  v12 = swift_allocObject();
  v13 = v142;
  v143 = v12;
  *(v12 + 16) = partial apply for implicit closure #1 in PaymentsFlow.on(input:);
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v143;
  v150 = v14;
  v144 = v14;
  *(v14 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v14 + 24) = v15;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v145 = v151;
  v148 = _allocateUninitializedArray<A>(_:)();
  v149 = v16;

  v17 = v146;
  v18 = v149;
  *v149 = partial apply for closure #1 in OSLogArguments.append(_:);
  v18[1] = v17;

  v19 = v147;
  v20 = v149;
  v149[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v20[3] = v19;

  v21 = v149;
  v22 = v150;
  v149[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v21[5] = v22;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v153, v152))
  {
    v23 = v103;
    v96 = static UnsafeMutablePointer.allocate(capacity:)();
    v93 = v96;
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v97 = createStorage<A>(capacity:type:)(0, v94, v94);
    v95 = v97;
    v99 = 1;
    v98 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v158[0] = v96;
    v157 = v97;
    v156 = v98;
    v100 = v158;
    serialize(_:at:)(2, v158);
    serialize(_:at:)(v99, v100);
    v154 = partial apply for closure #1 in OSLogArguments.append(_:);
    v155 = v137;
    closure #1 in osLogInternal(_:log:type:)(&v154, v100, &v157, &v156);
    v101 = v23;
    v102 = v23;
    if (v23)
    {
      v91 = 0;

      __break(1u);
    }

    else
    {
      v154 = partial apply for closure #1 in OSLogArguments.append(_:);
      v155 = v139;
      closure #1 in osLogInternal(_:log:type:)(&v154, v158, &v157, &v156);
      v89 = 0;
      v90 = 0;
      v154 = partial apply for closure #1 in OSLogArguments.append(_:);
      v155 = v144;
      closure #1 in osLogInternal(_:log:type:)(&v154, v158, &v157, &v156);
      v87 = 0;
      v88 = 0;
      _os_log_impl(&dword_2686B1000, v134, v135, "#PaymentsFlow on(input:): %s", v93, 0xCu);
      destroyStorage<A>(_:count:)(v95, 0, v94);
      destroyStorage<A>(_:count:)(v98, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v93, MEMORY[0x277D84B78]);

      v92 = v87;
    }
  }

  else
  {
    v24 = v103;

    v92 = v24;
  }

  v82 = v92;

  v83 = *(v116 + 8);
  v84 = (v116 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v83(v121, v114);
  v85 = (v113 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
  v86 = &v167;
  swift_beginAccess();
  outlined init with copy of PaymentsFlowState(v85, v109);
  swift_endAccess();
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v25 = v119;
    outlined destroy of PaymentsFlowState(v109);
    v26 = Logger.payments.unsafeMutableAddressor();
    v124(v25, v26, v114);
    v80 = Logger.logObject.getter();
    v77 = v80;
    v79 = static os_log_type_t.debug.getter();
    v78 = v79;
    v81 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v80, v79))
    {
      v27 = v82;
      v68 = static UnsafeMutablePointer.allocate(capacity:)();
      v64 = v68;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v66 = 0;
      v69 = createStorage<A>(capacity:type:)(0, v65, v65);
      v67 = v69;
      v70 = createStorage<A>(capacity:type:)(v66, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v161 = v68;
      v160 = v69;
      v159 = v70;
      v71 = 0;
      v72 = &v161;
      serialize(_:at:)(0, &v161);
      serialize(_:at:)(v71, v72);
      v158[1] = v81;
      v73 = &v36;
      MEMORY[0x28223BE20](&v36, v28);
      v74 = &v36 - 6;
      *(&v36 - 4) = v29;
      *(&v36 - 3) = &v160;
      *(&v36 - 2) = &v159;
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v76 = v27;
      if (v27)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v77, v78, "#PaymentsFlow moving flow states from .initialized to .runningGuardFlow", v64, 2u);
        v62 = 0;
        destroyStorage<A>(_:count:)(v67, 0, v65);
        destroyStorage<A>(_:count:)(v70, v62, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v64, MEMORY[0x277D84B78]);

        v63 = v76;
      }
    }

    else
    {

      v63 = v82;
    }

    v59 = v63;

    v83(v119, v114);
    v127(v107, v126, v111);
    swift_storeEnumTagMultiPayload();
    outlined init with copy of PaymentsFlowState(v107, v105);
    v57 = (v113 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
    v58 = &v162;
    swift_beginAccess();
    outlined assign with take of PaymentsFlowState(v105, v57);
    swift_endAccess();
    outlined destroy of PaymentsFlowState(v107);
    v60 = 1;
    v61 = v59;
  }

  else
  {
    v30 = v117;
    outlined destroy of PaymentsFlowState(v109);
    v31 = Logger.payments.unsafeMutableAddressor();
    v124(v30, v31, v114);
    v55 = Logger.logObject.getter();
    v52 = v55;
    v54 = static os_log_type_t.error.getter();
    v53 = v54;
    v56 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v55, v54))
    {
      v32 = v82;
      v43 = static UnsafeMutablePointer.allocate(capacity:)();
      v39 = v43;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v41 = 0;
      v44 = createStorage<A>(capacity:type:)(0, v40, v40);
      v42 = v44;
      v45 = createStorage<A>(capacity:type:)(v41, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v166 = v43;
      v165 = v44;
      v164 = v45;
      v46 = 0;
      v47 = &v166;
      serialize(_:at:)(0, &v166);
      serialize(_:at:)(v46, v47);
      v163 = v56;
      v48 = &v36;
      MEMORY[0x28223BE20](&v36, v33);
      v49 = &v36 - 6;
      *(&v36 - 4) = v34;
      *(&v36 - 3) = &v165;
      *(&v36 - 2) = &v164;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v51 = v32;
      if (v32)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v52, v53, "#PaymentsFlow on(input:) was invoked while in an unexpected flow state, returning false", v39, 2u);
        v37 = 0;
        destroyStorage<A>(_:count:)(v42, 0, v40);
        destroyStorage<A>(_:count:)(v45, v37, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v39, MEMORY[0x277D84B78]);

        v38 = v51;
      }
    }

    else
    {

      v38 = v82;
    }

    v36 = v38;

    v83(v117, v114);
    v60 = 0;
    v61 = v36;
  }

  return v60 & 1;
}

uint64_t implicit closure #1 in PaymentsFlow.on(input:)(uint64_t a1)
{
  v3 = a1;
  v6 = type metadata accessor for Input();
  v5 = *(v6 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v3);
  v7 = &v2 - v4;
  (*(v5 + 16))();
  lazy protocol witness table accessor for type Input and conformance Input();
  return String.init<A>(describing:)();
}

uint64_t sub_268861FF4()
{
  v2 = *(type metadata accessor for Input() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in PaymentsFlow.on(input:)()
{
  v1 = *(type metadata accessor for Input() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in PaymentsFlow.on(input:)(v2);
}

uint64_t PaymentsFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PaymentsFlow(0);
  lazy protocol witness table accessor for type PaymentsFlow and conformance PaymentsFlow();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t PaymentsFlow.execute()(uint64_t a1)
{
  v2[77] = v1;
  v2[76] = a1;
  v2[33] = v2;
  v2[34] = 0;
  v2[39] = 0;
  v2[40] = 0;
  v2[41] = 0;
  v2[46] = 0;
  v2[47] = 0;
  v2[61] = 0;
  v2[62] = 0;
  v3 = type metadata accessor for Parse();
  v2[78] = v3;
  v2[79] = *(v3 - 8);
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v4 = type metadata accessor for Input();
  v2[82] = v4;
  v7 = *(v4 - 8);
  v2[83] = v7;
  v2[84] = *(v7 + 64);
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v2[89] = type metadata accessor for PaymentsFlowState(0);
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[93] = v5;
  v2[94] = *(v5 - 8);
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v2[106] = swift_task_alloc();
  v2[34] = v1;

  return MEMORY[0x2822009F8](PaymentsFlow.execute(), 0);
}

{
  v6 = *v2;
  v5 = (*v2 + 16);
  v6[33] = *v2;
  v6[113] = a1;
  v6[114] = v1;

  if (v1)
  {
    v3 = PaymentsFlow.execute();
  }

  else
  {
    (*(v5[77] + 8))(v5[79], v5[76]);
    v3 = PaymentsFlow.execute();
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v6 = *v2;
  v5 = (*v2 + 16);
  v6[33] = *v2;
  v6[118] = a1;
  v6[119] = v1;

  if (v1)
  {
    v3 = PaymentsFlow.execute();
  }

  else
  {
    (*(v5[77] + 8))(v5[78], v5[76]);
    v3 = PaymentsFlow.execute();
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v5 = *v2;
  v5[33] = *v2;
  v5[121] = a1;
  v5[122] = v1;

  if (v1)
  {
    v3 = PaymentsFlow.execute();
  }

  else
  {
    v3 = PaymentsFlow.execute();
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t PaymentsFlow.execute()()
{
  v1 = v0[106];
  v110 = v0[94];
  v111 = v0[93];
  v0[33] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  v3 = *(v110 + 16);
  v112 = v3;
  v0[107] = v3;
  v0[108] = (v110 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v111);
  v114 = Logger.logObject.getter();
  v113 = static os_log_type_t.debug.getter();
  v0[109] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v115 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v114, v113))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v106 = createStorage<A>(capacity:type:)(0, v104, v104);
    v107 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v109 + 576) = buf;
    *(v109 + 584) = v106;
    *(v109 + 592) = v107;
    serialize(_:at:)(0, (v109 + 576));
    serialize(_:at:)(0, (v109 + 576));
    *(v109 + 600) = v115;
    v108 = swift_task_alloc();
    v108[2] = v109 + 576;
    v108[3] = v109 + 584;
    v108[4] = v109 + 592;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v114, v113, "#PaymentsFlow running execute()", buf, 2u);
    destroyStorage<A>(_:count:)(v106, 0, v104);
    destroyStorage<A>(_:count:)(v107, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v97 = *(v109 + 848);
  v98 = *(v109 + 744);
  v102 = *(v109 + 736);
  v100 = *(v109 + 616);
  v96 = *(v109 + 752);
  MEMORY[0x277D82BD8](v114);
  v99 = *(v96 + 8);
  *(v109 + 880) = v99;
  *(v109 + 888) = (v96 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v99(v97, v98);
  v101 = (v100 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
  swift_beginAccess();
  outlined init with copy of PaymentsFlowState(v101, v102);
  swift_endAccess();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      v78 = *(v109 + 832);
      v81 = *(v109 + 744);
      v74 = *(v109 + 704);
      v75 = *(v109 + 616);
      v6 = (*(v109 + 664) + 32);
      v73 = *v6;
      (*v6)();
      *(v109 + 488) = v74;
      outlined init with copy of GlobalsProviding(v75 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowFactory, v109 + 176);
      v76 = *(v109 + 200);
      v77 = *(v109 + 208);
      __swift_project_boxed_opaque_existential_1((v109 + 176), v76);
      v79 = *(v75 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_restrictionGuards);

      v80 = (*(v77 + 24))(v79, v76);

      *(v109 + 496) = v80;
      __swift_destroy_boxed_opaque_existential_0((v109 + 176));
      v7 = Logger.payments.unsafeMutableAddressor();
      v112(v78, v7, v81);
      log = Logger.logObject.getter();
      v82 = static os_log_type_t.debug.getter();
      v84 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(log, v82))
      {
        v69 = static UnsafeMutablePointer.allocate(capacity:)();
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v70 = createStorage<A>(capacity:type:)(0, v68, v68);
        v71 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v109 + 512) = v69;
        *(v109 + 520) = v70;
        *(v109 + 528) = v71;
        serialize(_:at:)(0, (v109 + 512));
        serialize(_:at:)(0, (v109 + 512));
        *(v109 + 536) = v84;
        v72 = swift_task_alloc();
        v72[2] = v109 + 512;
        v72[3] = v109 + 520;
        v72[4] = v109 + 528;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, log, v82, "#PaymentsFlow moving flow states from .runningGuardFlows to .ongoing next guard flow", v69, 2u);
        destroyStorage<A>(_:count:)(v70, 0, v68);
        destroyStorage<A>(_:count:)(v71, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v69, MEMORY[0x277D84B78]);
      }

      v59 = *(v109 + 832);
      v60 = *(v109 + 744);
      v66 = *(v109 + 704);
      v63 = *(v109 + 696);
      v67 = *(v109 + 656);
      v61 = *(v109 + 664);
      MEMORY[0x277D82BD8](log);
      v99(v59, v60);
      *(v109 + 504) = v80;
      v64 = swift_allocObject();

      swift_weakInit();

      (*(v61 + 16))(v63, v66, v67);
      v62 = (*(v61 + 80) + 24) & ~*(v61 + 80);
      v65 = swift_allocObject();
      *(v65 + 16) = v64;
      (v73)(v65 + v62, v63, v67);

      type metadata accessor for GuardFlow();
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      (*(v61 + 8))(v66, v67);
      break;
    case 1:
      v10 = *(v109 + 688);
      v41 = *(v109 + 616);
      (*(*(v109 + 664) + 32))(v10, *(v109 + 736), *(v109 + 656));
      *(v109 + 368) = v10;
      outlined init with copy of GlobalsProviding(v41 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowFactory, v109 + 96);
      v42 = *(v109 + 120);
      v43 = *(v109 + 128);
      __swift_project_boxed_opaque_existential_1((v109 + 96), v42);
      Input.parse.getter();
      v44 = (*(v43 + 16) + **(v43 + 16));
      v11 = swift_task_alloc();
      v12 = v42;
      v13 = v43;
      v14 = v44;
      *(v109 + 896) = v11;
      *v11 = *(v109 + 264);
      v11[1] = PaymentsFlow.execute();
      v15 = *(v109 + 648);

      return v14(v15, v12, v13);
    case 2:
      v17 = *(v109 + 736);
      v18 = *(v109 + 680);
      v19 = *(v109 + 656);
      v37 = *(v109 + 616);
      v20 = *(v109 + 664) + 32;
      v21 = *v20;
      *(v109 + 920) = *v20;
      *(v109 + 928) = v20 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v21(v18, v17, v19);
      *(v109 + 312) = v18;
      outlined init with copy of GlobalsProviding(v37 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowFactory, v109 + 16);
      v38 = *(v109 + 40);
      v39 = *(v109 + 48);
      __swift_project_boxed_opaque_existential_1((v109 + 16), v38);
      Input.parse.getter();
      v40 = (*(v39 + 16) + **(v39 + 16));
      v22 = swift_task_alloc();
      v12 = v38;
      v13 = v39;
      v14 = v40;
      *(v109 + 936) = v22;
      *v22 = *(v109 + 264);
      v22[1] = PaymentsFlow.execute();
      v15 = *(v109 + 640);

      return v14(v15, v12, v13);
    case 3:
      v4 = *(v109 + 840);
      v92 = *(v109 + 744);
      v5 = Logger.payments.unsafeMutableAddressor();
      v112(v4, v5, v92);
      oslog = Logger.logObject.getter();
      v93 = static os_log_type_t.debug.getter();
      v95 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v93))
      {
        v88 = static UnsafeMutablePointer.allocate(capacity:)();
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v89 = createStorage<A>(capacity:type:)(0, v87, v87);
        v90 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v109 + 544) = v88;
        *(v109 + 552) = v89;
        *(v109 + 560) = v90;
        serialize(_:at:)(0, (v109 + 544));
        serialize(_:at:)(0, (v109 + 544));
        *(v109 + 568) = v95;
        v91 = swift_task_alloc();
        v91[2] = v109 + 544;
        v91[3] = v109 + 552;
        v91[4] = v109 + 560;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, oslog, v93, "#PaymentsFlow unexpectedly encountered initialized flow state, ending with complete", v88, 2u);
        destroyStorage<A>(_:count:)(v89, 0, v87);
        destroyStorage<A>(_:count:)(v90, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v88, MEMORY[0x277D84B78]);
      }

      v85 = *(v109 + 840);
      v86 = *(v109 + 744);
      MEMORY[0x277D82BD8](oslog);
      v99(v85, v86);
      static ExecuteResponse.complete()();
      break;
    case 4:
      v8 = *(v109 + 824);
      v55 = *(v109 + 744);
      v9 = Logger.payments.unsafeMutableAddressor();
      v112(v8, v9, v55);
      v57 = Logger.logObject.getter();
      v56 = static os_log_type_t.debug.getter();
      v58 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v57, v56))
      {
        v51 = static UnsafeMutablePointer.allocate(capacity:)();
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v52 = createStorage<A>(capacity:type:)(0, v50, v50);
        v53 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v109 + 456) = v51;
        *(v109 + 464) = v52;
        *(v109 + 472) = v53;
        serialize(_:at:)(0, (v109 + 456));
        serialize(_:at:)(0, (v109 + 456));
        *(v109 + 480) = v58;
        v54 = swift_task_alloc();
        v54[2] = v109 + 456;
        v54[3] = v109 + 464;
        v54[4] = v109 + 472;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, v57, v56, "#PaymentsFlow Apple Card balance request - vending simple output flow", v51, 2u);
        destroyStorage<A>(_:count:)(v52, 0, v50);
        destroyStorage<A>(_:count:)(v53, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v51, MEMORY[0x277D84B78]);
      }

      v45 = *(v109 + 824);
      v46 = *(v109 + 744);
      v47 = *(v109 + 616);
      MEMORY[0x277D82BD8](v57);
      v99(v45, v46);
      outlined init with copy of GlobalsProviding(v47 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowFactory, v109 + 136);
      v49 = *(v109 + 160);
      v48 = *(v109 + 168);
      __swift_project_boxed_opaque_existential_1((v109 + 136), v49);
      (*(v48 + 72))(v49);
      static ExecuteResponse.complete(next:)();

      __swift_destroy_boxed_opaque_existential_0((v109 + 136));
      break;
    default:
      v23 = *(v109 + 784);
      v33 = *(v109 + 744);
      v24 = Logger.payments.unsafeMutableAddressor();
      v112(v23, v24, v33);
      v35 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      v36 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v35, v34))
      {
        v29 = static UnsafeMutablePointer.allocate(capacity:)();
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v30 = createStorage<A>(capacity:type:)(0, v28, v28);
        v31 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v109 + 280) = v29;
        *(v109 + 288) = v30;
        *(v109 + 296) = v31;
        serialize(_:at:)(0, (v109 + 280));
        serialize(_:at:)(0, (v109 + 280));
        *(v109 + 304) = v36;
        v32 = swift_task_alloc();
        v32[2] = v109 + 280;
        v32[3] = v109 + 288;
        v32[4] = v109 + 296;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, v35, v34, "#PaymentsFlow current state is now .finished, ending flow", v29, 2u);
        destroyStorage<A>(_:count:)(v30, 0, v28);
        destroyStorage<A>(_:count:)(v31, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v29, MEMORY[0x277D84B78]);
      }

      v26 = *(v109 + 784);
      v27 = *(v109 + 744);
      MEMORY[0x277D82BD8](v35);
      v99(v26, v27);
      static ExecuteResponse.complete()();
      break;
  }

  v25 = *(*(v109 + 264) + 8);

  return v25();
}

{
  v76 = v0;
  v0[33] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v69 = v0[114];
  v70 = v0[113];
  if (v70)
  {
    *(v68 + 376) = v70;
    if (dispatch thunk of AnyFlow.on(input:)())
    {
      v64 = *(v68 + 856);
      v1 = *(v68 + 816);
      v63 = *(v68 + 744);
      v2 = Logger.payments.unsafeMutableAddressor();
      v64(v1, v2, v63);
      oslog = Logger.logObject.getter();
      v65 = static os_log_type_t.debug.getter();
      v67 = _allocateUninitializedArray<A>(_:)();
      if (!os_log_type_enabled(oslog, v65))
      {

        goto LABEL_8;
      }

      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v60 = createStorage<A>(capacity:type:)(0, v58, v58);
      v61 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v68 + 424) = buf;
      *(v68 + 432) = v60;
      *(v68 + 440) = v61;
      serialize(_:at:)(0, (v68 + 424));
      serialize(_:at:)(0, (v68 + 424));
      *(v68 + 448) = v67;
      v62 = swift_task_alloc();
      v62[2] = v68 + 424;
      v62[3] = v68 + 432;
      v62[4] = v68 + 440;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (!v69)
      {

        _os_log_impl(&dword_2686B1000, oslog, v65, "#PaymentsFlow obtained anyFlow from FlowFactory, pushing it to the next state", buf, 2u);
        destroyStorage<A>(_:count:)(v60, 0, v58);
        destroyStorage<A>(_:count:)(v61, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);

LABEL_8:
        v50 = *(v68 + 880);
        v48 = *(v68 + 816);
        v49 = *(v68 + 744);
        v54 = *(v68 + 728);
        v52 = *(v68 + 720);
        v56 = *(v68 + 688);
        v57 = *(v68 + 656);
        v55 = *(v68 + 616);
        v51 = *(v68 + 664);
        MEMORY[0x277D82BD8](oslog);
        v50(v48, v49);
        (*(v51 + 16))(v54, v56, v57);
        swift_storeEnumTagMultiPayload();
        outlined init with copy of PaymentsFlowState(v54, v52);
        v53 = (v55 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
        swift_beginAccess();
        outlined assign with take of PaymentsFlowState(v52, v53);
        swift_endAccess();
        outlined destroy of PaymentsFlowState(v54);
        *(v68 + 416) = v70;
        swift_allocObject();

        swift_weakInit();

        type metadata accessor for AnyFlow();
        static ExecuteResponse.ongoing<A>(next:childCompletion:)();

        (*(v51 + 8))(v56, v57);
LABEL_23:

        v10 = *(*(v68 + 264) + 8);

        return v10();
      }
    }

    v44 = *(v68 + 856);
    v4 = *(v68 + 808);
    v43 = *(v68 + 744);
    v5 = Logger.payments.unsafeMutableAddressor();
    v44(v4, v5, v43);
    log = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    v47 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v45))
    {
      v39 = static UnsafeMutablePointer.allocate(capacity:)();
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v40 = createStorage<A>(capacity:type:)(0, v38, v38);
      v41 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v68 + 384) = v39;
      *(v68 + 392) = v40;
      *(v68 + 400) = v41;
      serialize(_:at:)(0, (v68 + 384));
      serialize(_:at:)(0, (v68 + 384));
      *(v68 + 408) = v47;
      v42 = swift_task_alloc();
      v42[2] = v68 + 384;
      v42[3] = v68 + 392;
      v42[4] = v68 + 400;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v69)
      {
      }

      _os_log_impl(&dword_2686B1000, log, v45, "#PaymentsFlow RCHFlow.on() returned false", v39, 2u);
      destroyStorage<A>(_:count:)(v40, 0, v38);
      destroyStorage<A>(_:count:)(v41, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v39, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v34 = *(v68 + 880);
    v32 = *(v68 + 808);
    v33 = *(v68 + 744);
    v36 = *(v68 + 688);
    v37 = *(v68 + 656);
    v35 = *(v68 + 664);
    MEMORY[0x277D82BD8](log);
    v34(v32, v33);
    static ExecuteResponse.complete()();

    (*(v35 + 8))(v36, v37);
    goto LABEL_23;
  }

  (*(*(v68 + 664) + 8))(*(v68 + 688), *(v68 + 656));
  v23 = *(v68 + 856);
  v6 = *(v68 + 776);
  v22 = *(v68 + 744);
  v24 = *(v68 + 616);
  v7 = Logger.payments.unsafeMutableAddressor();
  v23(v6, v7, v22);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #2 in PaymentsFlow.execute();
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v28 + 24) = v25;
  _allocateUninitializedArray<A>(_:)();
  v29 = v8;

  *v29 = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[1] = v26;

  v29[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[3] = v27;

  v29[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[5] = v28;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v30, v31))
  {
    v19 = static UnsafeMutablePointer.allocate(capacity:)();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v20 = createStorage<A>(capacity:type:)(0, v18, v18);
    v21 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v71 = v19;
    v72 = v20;
    v73 = v21;
    serialize(_:at:)(2, &v71);
    serialize(_:at:)(1, &v71);
    v74 = partial apply for closure #1 in OSLogArguments.append(_:);
    v75 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v74, &v71, &v72, &v73);
    if (v69)
    {
    }

    v74 = partial apply for closure #1 in OSLogArguments.append(_:);
    v75 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v74, &v71, &v72, &v73);
    v74 = partial apply for closure #1 in OSLogArguments.append(_:);
    v75 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v74, &v71, &v72, &v73);
    _os_log_impl(&dword_2686B1000, v30, v31, "#PaymentsFlow flowState machine unexpectedly failed to determine next state for current: %s", v19, 0xCu);
    destroyStorage<A>(_:count:)(v20, 0, v18);
    destroyStorage<A>(_:count:)(v21, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v19, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v13 = *(v68 + 880);
  v11 = *(v68 + 776);
  v12 = *(v68 + 744);
  v14 = *(v68 + 616);
  MEMORY[0x277D82BD8](v30);
  v13(v11, v12);
  outlined init with copy of GlobalsProviding(v14 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowFactory, v68 + 56);
  v17 = *(v68 + 80);
  v15 = *(v68 + 88);
  __swift_project_boxed_opaque_existential_1((v68 + 56), v17);
  v16 = (*(v15 + 56) + **(v15 + 56));
  v9 = swift_task_alloc();
  *(v68 + 960) = v9;
  *v9 = *(v68 + 264);
  v9[1] = PaymentsFlow.execute();

  return v16(v17, v15);
}

{
  v89 = v0;
  v0[33] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v77 = v0[119];
  v78 = v0[118];
  if (v78)
  {
    v72 = *(v76 + 856);
    v1 = *(v76 + 800);
    v71 = *(v76 + 744);
    *(v76 + 328) = v78;
    v2 = Logger.payments.unsafeMutableAddressor();
    v72(v1, v2, v71);
    oslog = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    v75 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v73))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v68 = createStorage<A>(capacity:type:)(0, v66, v66);
      v69 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v76 + 336) = buf;
      *(v76 + 344) = v68;
      *(v76 + 352) = v69;
      serialize(_:at:)(0, (v76 + 336));
      serialize(_:at:)(0, (v76 + 336));
      *(v76 + 360) = v75;
      v70 = swift_task_alloc();
      v70[2] = v76 + 336;
      v70[3] = v76 + 344;
      v70[4] = v76 + 352;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v77)
      {
      }

      _os_log_impl(&dword_2686B1000, oslog, v73, "#PaymentsFlow obtained anyFlow from FlowFactory, pushing it to the next state", buf, 2u);
      destroyStorage<A>(_:count:)(v68, 0, v66);
      destroyStorage<A>(_:count:)(v69, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v62 = *(v76 + 880);
    v60 = *(v76 + 800);
    v61 = *(v76 + 744);
    v64 = *(v76 + 680);
    v65 = *(v76 + 656);
    v63 = *(v76 + 664);
    MEMORY[0x277D82BD8](oslog);
    v62(v60, v61);
    static ExecuteResponse.complete(next:)();

    (*(v63 + 8))(v64, v65);

    v4 = *(*(v76 + 264) + 8);

    return v4();
  }

  else
  {
    v51 = *(v76 + 920);
    v45 = *(v76 + 856);
    v5 = *(v76 + 792);
    v44 = *(v76 + 744);
    v49 = *(v76 + 696);
    v47 = *(v76 + 680);
    v50 = *(v76 + 656);
    v46 = *(v76 + 664);
    v6 = Logger.payments.unsafeMutableAddressor();
    v45(v5, v6, v44);
    (*(v46 + 16))(v49, v47, v50);
    v48 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v52 = swift_allocObject();
    v51(v52 + v48, v49, v50);
    log = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();
    v54 = swift_allocObject();
    *(v54 + 16) = 32;
    v55 = swift_allocObject();
    *(v55 + 16) = 8;
    v53 = swift_allocObject();
    *(v53 + 16) = partial apply for implicit closure #1 in PaymentsFlow.execute();
    *(v53 + 24) = v52;
    v56 = swift_allocObject();
    *(v56 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v56 + 24) = v53;
    _allocateUninitializedArray<A>(_:)();
    v57 = v7;

    *v57 = partial apply for closure #1 in OSLogArguments.append(_:);
    v57[1] = v54;

    v57[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v57[3] = v55;

    v57[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v57[5] = v56;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v59))
    {
      v41 = static UnsafeMutablePointer.allocate(capacity:)();
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v42 = createStorage<A>(capacity:type:)(0, v40, v40);
      v43 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v84 = v41;
      v85 = v42;
      v86 = v43;
      serialize(_:at:)(2, &v84);
      serialize(_:at:)(1, &v84);
      v87 = partial apply for closure #1 in OSLogArguments.append(_:);
      v88 = v54;
      closure #1 in osLogInternal(_:log:type:)(&v87, &v84, &v85, &v86);
      if (v77)
      {
      }

      v87 = partial apply for closure #1 in OSLogArguments.append(_:);
      v88 = v55;
      closure #1 in osLogInternal(_:log:type:)(&v87, &v84, &v85, &v86);
      v87 = partial apply for closure #1 in OSLogArguments.append(_:);
      v88 = v56;
      closure #1 in osLogInternal(_:log:type:)(&v87, &v84, &v85, &v86);
      _os_log_impl(&dword_2686B1000, log, v59, "#PaymentsFlow could not determine the proper flow for parse: %s", v41, 0xCu);
      destroyStorage<A>(_:count:)(v42, 0, v40);
      destroyStorage<A>(_:count:)(v43, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v41, MEMORY[0x277D84B78]);

      v39 = 0;
    }

    else
    {

      v39 = v77;
    }

    v25 = *(v76 + 880);
    v23 = *(v76 + 792);
    v24 = *(v76 + 744);
    v27 = *(v76 + 680);
    v28 = *(v76 + 656);
    v26 = *(v76 + 664);
    MEMORY[0x277D82BD8](log);
    v25(v23, v24);
    (*(v26 + 8))(v27, v28);
    v30 = *(v76 + 856);
    v8 = *(v76 + 776);
    v29 = *(v76 + 744);
    v31 = *(v76 + 616);
    v9 = Logger.payments.unsafeMutableAddressor();
    v30(v8, v9, v29);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v33 = swift_allocObject();
    *(v33 + 16) = 32;
    v34 = swift_allocObject();
    *(v34 + 16) = 8;
    v32 = swift_allocObject();
    *(v32 + 16) = partial apply for implicit closure #2 in PaymentsFlow.execute();
    *(v32 + 24) = v31;
    v35 = swift_allocObject();
    *(v35 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v35 + 24) = v32;
    _allocateUninitializedArray<A>(_:)();
    v36 = v10;

    *v36 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36[1] = v33;

    v36[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v36[3] = v34;

    v36[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v36[5] = v35;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v37, v38))
    {
      v20 = static UnsafeMutablePointer.allocate(capacity:)();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v21 = createStorage<A>(capacity:type:)(0, v19, v19);
      v22 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v79 = v20;
      v80 = v21;
      v81 = v22;
      serialize(_:at:)(2, &v79);
      serialize(_:at:)(1, &v79);
      v82 = partial apply for closure #1 in OSLogArguments.append(_:);
      v83 = v33;
      closure #1 in osLogInternal(_:log:type:)(&v82, &v79, &v80, &v81);
      if (v39)
      {
      }

      v82 = partial apply for closure #1 in OSLogArguments.append(_:);
      v83 = v34;
      closure #1 in osLogInternal(_:log:type:)(&v82, &v79, &v80, &v81);
      v82 = partial apply for closure #1 in OSLogArguments.append(_:);
      v83 = v35;
      closure #1 in osLogInternal(_:log:type:)(&v82, &v79, &v80, &v81);
      _os_log_impl(&dword_2686B1000, v37, v38, "#PaymentsFlow flowState machine unexpectedly failed to determine next state for current: %s", v20, 0xCu);
      destroyStorage<A>(_:count:)(v21, 0, v19);
      destroyStorage<A>(_:count:)(v22, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v20, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v14 = *(v76 + 880);
    v12 = *(v76 + 776);
    v13 = *(v76 + 744);
    v15 = *(v76 + 616);
    MEMORY[0x277D82BD8](v37);
    v14(v12, v13);
    outlined init with copy of GlobalsProviding(v15 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowFactory, v76 + 56);
    v18 = *(v76 + 80);
    v16 = *(v76 + 88);
    __swift_project_boxed_opaque_existential_1((v76 + 56), v18);
    v17 = (*(v16 + 56) + **(v16 + 56));
    v11 = swift_task_alloc();
    *(v76 + 960) = v11;
    *v11 = *(v76 + 264);
    v11[1] = PaymentsFlow.execute();

    return v17(v18, v16);
  }
}

{
  v56 = v0;
  v44 = v0[121];
  v0[33] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v45 = v0[122];
  if (v44)
  {
    v34 = v43[107];
    v1 = v43[96];
    v33 = v43[93];
    v35 = v43[77];
    v43[40] = v44;
    v2 = Logger.payments.unsafeMutableAddressor();
    v34(v1, v2, v33);

    oslog = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    v37 = swift_allocObject();
    *(v37 + 16) = 32;
    v38 = swift_allocObject();
    *(v38 + 16) = 8;
    v36 = swift_allocObject();
    *(v36 + 16) = partial apply for implicit closure #2 in PaymentsFlow.execute();
    *(v36 + 24) = v35;
    v39 = swift_allocObject();
    *(v39 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v39 + 24) = v36;
    _allocateUninitializedArray<A>(_:)();
    v40 = v3;

    *v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v40[1] = v37;

    v40[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v40[3] = v38;

    v40[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v40[5] = v39;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v42))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v31 = createStorage<A>(capacity:type:)(0, v29, v29);
      v32 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v51 = buf;
      v52 = v31;
      v53 = v32;
      serialize(_:at:)(2, &v51);
      serialize(_:at:)(1, &v51);
      v54 = partial apply for closure #1 in OSLogArguments.append(_:);
      v55 = v37;
      closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
      if (v45)
      {
      }

      v54 = partial apply for closure #1 in OSLogArguments.append(_:);
      v55 = v38;
      closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
      v54 = partial apply for closure #1 in OSLogArguments.append(_:);
      v55 = v39;
      closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
      _os_log_impl(&dword_2686B1000, oslog, v42, "#PaymentsFlow Returning unsupported flow after encountering unexpected state %s", buf, 0xCu);
      destroyStorage<A>(_:count:)(v31, 0, v29);
      destroyStorage<A>(_:count:)(v32, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v28 = v43[110];
    v26 = v43[96];
    v27 = v43[93];
    MEMORY[0x277D82BD8](oslog);
    v28(v26, v27);
    static ExecuteResponse.complete(next:)();
  }

  else
  {
    v17 = v43[107];
    v5 = v43[95];
    v16 = v43[93];
    v18 = v43[77];
    v6 = Logger.payments.unsafeMutableAddressor();
    v17(v5, v6, v16);

    log = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = 32;
    v21 = swift_allocObject();
    *(v21 + 16) = 8;
    v19 = swift_allocObject();
    *(v19 + 16) = partial apply for implicit closure #2 in PaymentsFlow.execute();
    *(v19 + 24) = v18;
    v22 = swift_allocObject();
    *(v22 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v22 + 24) = v19;
    _allocateUninitializedArray<A>(_:)();
    v23 = v7;

    *v23 = partial apply for closure #1 in OSLogArguments.append(_:);
    v23[1] = v20;

    v23[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v23[3] = v21;

    v23[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v23[5] = v22;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v25))
    {
      v13 = static UnsafeMutablePointer.allocate(capacity:)();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v14 = createStorage<A>(capacity:type:)(0, v12, v12);
      v15 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v46 = v13;
      v47 = v14;
      v48 = v15;
      serialize(_:at:)(2, &v46);
      serialize(_:at:)(1, &v46);
      v49 = partial apply for closure #1 in OSLogArguments.append(_:);
      v50 = v20;
      closure #1 in osLogInternal(_:log:type:)(&v49, &v46, &v47, &v48);
      if (v45)
      {
      }

      v49 = partial apply for closure #1 in OSLogArguments.append(_:);
      v50 = v21;
      closure #1 in osLogInternal(_:log:type:)(&v49, &v46, &v47, &v48);
      v49 = partial apply for closure #1 in OSLogArguments.append(_:);
      v50 = v22;
      closure #1 in osLogInternal(_:log:type:)(&v49, &v46, &v47, &v48);
      _os_log_impl(&dword_2686B1000, log, v25, "#PaymentsFlow Failed to make unsupported flow after encountering unexpected state %s, completing current flow", v13, 0xCu);
      destroyStorage<A>(_:count:)(v14, 0, v12);
      destroyStorage<A>(_:count:)(v15, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v13, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v11 = v43[110];
    v9 = v43[95];
    v10 = v43[93];
    MEMORY[0x277D82BD8](log);
    v11(v9, v10);
    static ExecuteResponse.complete()();
  }

  v8 = *(v43[33] + 8);

  return v8();
}

{
  v37 = v0;
  v31 = v0[114];
  v1 = v0[81];
  v2 = v0[79];
  v3 = v0[78];
  v0[33] = v0;
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  (*(v30[83] + 8))(v30[86], v30[82]);
  v21 = v30[107];
  v4 = v30[97];
  v20 = v30[93];
  v22 = v30[77];
  v5 = Logger.payments.unsafeMutableAddressor();
  v21(v4, v5, v20);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for implicit closure #2 in PaymentsFlow.execute();
  *(v23 + 24) = v22;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v26 + 24) = v23;
  _allocateUninitializedArray<A>(_:)();
  v27 = v6;

  *v27 = partial apply for closure #1 in OSLogArguments.append(_:);
  v27[1] = v24;

  v27[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v27[3] = v25;

  v27[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v27[5] = v26;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v28, v29))
  {
    v17 = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v18 = createStorage<A>(capacity:type:)(0, v16, v16);
    v19 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v32 = v17;
    v33 = v18;
    v34 = v19;
    serialize(_:at:)(2, &v32);
    serialize(_:at:)(1, &v32);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    _os_log_impl(&dword_2686B1000, v28, v29, "#PaymentsFlow flowState machine unexpectedly failed to determine next state for current: %s", v17, 0xCu);
    destroyStorage<A>(_:count:)(v18, 0, v16);
    destroyStorage<A>(_:count:)(v19, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v17, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v11 = v30[110];
  v9 = v30[97];
  v10 = v30[93];
  v12 = v30[77];
  MEMORY[0x277D82BD8](v28);
  v11(v9, v10);
  outlined init with copy of GlobalsProviding(v12 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowFactory, (v30 + 7));
  v15 = v30[10];
  v13 = v30[11];
  __swift_project_boxed_opaque_existential_1(v30 + 7, v15);
  v14 = (*(v13 + 56) + **(v13 + 56));
  v7 = swift_task_alloc();
  v30[120] = v7;
  *v7 = v30[33];
  v7[1] = PaymentsFlow.execute();

  return v14(v15, v13);
}

{
  v71 = v0;
  v60 = v0[119];
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[78];
  v0[33] = v0;
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v50 = v59[115];
  v44 = v59[107];
  v4 = v59[99];
  v43 = v59[93];
  v48 = v59[87];
  v46 = v59[85];
  v49 = v59[82];
  v45 = v59[83];
  v5 = Logger.payments.unsafeMutableAddressor();
  v44(v4, v5, v43);
  (*(v45 + 16))(v48, v46, v49);
  v47 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v51 = swift_allocObject();
  v50(v51 + v47, v48, v49);
  log = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();
  v53 = swift_allocObject();
  *(v53 + 16) = 32;
  v54 = swift_allocObject();
  *(v54 + 16) = 8;
  v52 = swift_allocObject();
  *(v52 + 16) = partial apply for implicit closure #1 in PaymentsFlow.execute();
  *(v52 + 24) = v51;
  v55 = swift_allocObject();
  *(v55 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v55 + 24) = v52;
  _allocateUninitializedArray<A>(_:)();
  v56 = v6;

  *v56 = partial apply for closure #1 in OSLogArguments.append(_:);
  v56[1] = v53;

  v56[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v56[3] = v54;

  v56[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v56[5] = v55;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(log, v58))
  {
    v40 = static UnsafeMutablePointer.allocate(capacity:)();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v41 = createStorage<A>(capacity:type:)(0, v39, v39);
    v42 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v66 = v40;
    v67 = v41;
    v68 = v42;
    serialize(_:at:)(2, &v66);
    serialize(_:at:)(1, &v66);
    v69 = partial apply for closure #1 in OSLogArguments.append(_:);
    v70 = v53;
    closure #1 in osLogInternal(_:log:type:)(&v69, &v66, &v67, &v68);
    v69 = partial apply for closure #1 in OSLogArguments.append(_:);
    v70 = v54;
    closure #1 in osLogInternal(_:log:type:)(&v69, &v66, &v67, &v68);
    v69 = partial apply for closure #1 in OSLogArguments.append(_:);
    v70 = v55;
    closure #1 in osLogInternal(_:log:type:)(&v69, &v66, &v67, &v68);
    _os_log_impl(&dword_2686B1000, log, v58, "#PaymentsFlow could not determine the proper flow for parse: %s", v40, 0xCu);
    destroyStorage<A>(_:count:)(v41, 0, v39);
    destroyStorage<A>(_:count:)(v42, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v40, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v25 = v59[110];
  v23 = v59[99];
  v24 = v59[93];
  v27 = v59[85];
  v28 = v59[82];
  v26 = v59[83];
  MEMORY[0x277D82BD8](log);
  v25(v23, v24);
  (*(v26 + 8))(v27, v28);
  v30 = v59[107];
  v7 = v59[97];
  v29 = v59[93];
  v31 = v59[77];
  v8 = Logger.payments.unsafeMutableAddressor();
  v30(v7, v8, v29);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = 32;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #2 in PaymentsFlow.execute();
  *(v32 + 24) = v31;
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v35 + 24) = v32;
  _allocateUninitializedArray<A>(_:)();
  v36 = v9;

  *v36 = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[1] = v33;

  v36[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[3] = v34;

  v36[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[5] = v35;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v37, v38))
  {
    v20 = static UnsafeMutablePointer.allocate(capacity:)();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v21 = createStorage<A>(capacity:type:)(0, v19, v19);
    v22 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v61 = v20;
    v62 = v21;
    v63 = v22;
    serialize(_:at:)(2, &v61);
    serialize(_:at:)(1, &v61);
    v64 = partial apply for closure #1 in OSLogArguments.append(_:);
    v65 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v64, &v61, &v62, &v63);
    v64 = partial apply for closure #1 in OSLogArguments.append(_:);
    v65 = v34;
    closure #1 in osLogInternal(_:log:type:)(&v64, &v61, &v62, &v63);
    v64 = partial apply for closure #1 in OSLogArguments.append(_:);
    v65 = v35;
    closure #1 in osLogInternal(_:log:type:)(&v64, &v61, &v62, &v63);
    _os_log_impl(&dword_2686B1000, v37, v38, "#PaymentsFlow flowState machine unexpectedly failed to determine next state for current: %s", v20, 0xCu);
    destroyStorage<A>(_:count:)(v21, 0, v19);
    destroyStorage<A>(_:count:)(v22, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v20, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v14 = v59[110];
  v12 = v59[97];
  v13 = v59[93];
  v15 = v59[77];
  MEMORY[0x277D82BD8](v37);
  v14(v12, v13);
  outlined init with copy of GlobalsProviding(v15 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowFactory, (v59 + 7));
  v18 = v59[10];
  v16 = v59[11];
  __swift_project_boxed_opaque_existential_1(v59 + 7, v18);
  v17 = (*(v16 + 56) + **(v16 + 56));
  v10 = swift_task_alloc();
  v59[120] = v10;
  *v10 = v59[33];
  v10[1] = PaymentsFlow.execute();

  return v17(v18, v16);
}

{
  v30 = v0;
  v24 = v0[122];
  v0[33] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v14 = v23[107];
  v1 = v23[95];
  v13 = v23[93];
  v15 = v23[77];
  v2 = Logger.payments.unsafeMutableAddressor();
  v14(v1, v2, v13);

  log = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = 32;
  v18 = swift_allocObject();
  *(v18 + 16) = 8;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for implicit closure #2 in PaymentsFlow.execute();
  *(v16 + 24) = v15;
  v19 = swift_allocObject();
  *(v19 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v19 + 24) = v16;
  _allocateUninitializedArray<A>(_:)();
  v20 = v3;

  *v20 = partial apply for closure #1 in OSLogArguments.append(_:);
  v20[1] = v17;

  v20[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v20[3] = v18;

  v20[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v20[5] = v19;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(log, v22))
  {
    v10 = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(0, v9, v9);
    v12 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v25 = v10;
    v26 = v11;
    v27 = v12;
    serialize(_:at:)(2, &v25);
    serialize(_:at:)(1, &v25);
    v28 = partial apply for closure #1 in OSLogArguments.append(_:);
    v29 = v17;
    closure #1 in osLogInternal(_:log:type:)(&v28, &v25, &v26, &v27);
    v28 = partial apply for closure #1 in OSLogArguments.append(_:);
    v29 = v18;
    closure #1 in osLogInternal(_:log:type:)(&v28, &v25, &v26, &v27);
    v28 = partial apply for closure #1 in OSLogArguments.append(_:);
    v29 = v19;
    closure #1 in osLogInternal(_:log:type:)(&v28, &v25, &v26, &v27);
    _os_log_impl(&dword_2686B1000, log, v22, "#PaymentsFlow Failed to make unsupported flow after encountering unexpected state %s, completing current flow", v10, 0xCu);
    destroyStorage<A>(_:count:)(v11, 0, v9);
    destroyStorage<A>(_:count:)(v12, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v10, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v8 = v23[110];
  v6 = v23[95];
  v7 = v23[93];
  MEMORY[0x277D82BD8](log);
  v8(v6, v7);
  static ExecuteResponse.complete()();

  v4 = *(v23[33] + 8);

  return v4();
}

uint64_t closure #1 in PaymentsFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v177 = a3;
  v180 = a2;
  v179 = a1;
  v178 = 0;
  v219 = 0;
  v218 = 0;
  v217 = 0;
  v216 = 0;
  v163 = 0;
  v210 = 0;
  v164 = type metadata accessor for PaymentsFlowState(0);
  v165 = *(*(v164 - 8) + 64);
  v3 = MEMORY[0x28223BE20](0, v164);
  v167 = (v165 + 15) & 0xFFFFFFFFFFFFFFF0;
  v166 = &v51 - v167;
  MEMORY[0x28223BE20](v3, &v51 - v167);
  v168 = &v51 - v167;
  v169 = type metadata accessor for Parse();
  v170 = *(v169 - 8);
  v171 = v170;
  MEMORY[0x28223BE20](v178, v169);
  v172 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for USOParse();
  v174 = *(v173 - 8);
  v175 = v174;
  MEMORY[0x28223BE20](v178, v173);
  v176 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = v176;
  v181 = type metadata accessor for Logger();
  v182 = *(v181 - 8);
  v183 = v182;
  v186 = *(v182 + 64);
  v6 = MEMORY[0x28223BE20](v179, v180);
  v188 = (v186 + 15) & 0xFFFFFFFFFFFFFFF0;
  v184 = &v51 - v188;
  v8 = MEMORY[0x28223BE20](v6, v7);
  v185 = &v51 - v188;
  v10 = MEMORY[0x28223BE20](v8, v9);
  v187 = &v51 - v188;
  v12 = MEMORY[0x28223BE20](v10, v11);
  v189 = &v51 - v188;
  v190 = *v12;
  v218 = v190;
  v191 = v13 + 16;
  v217 = v13 + 16;
  v216 = v14;
  v192 = &v215;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v193 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v162 = v193;
    v156 = v193;
    v210 = v193;
    v17 = static GuardFlowResult.== infix(_:_:)();
    if (v17)
    {
      Input.parse.getter();
      if ((*(v171 + 88))(v172, v169) == *MEMORY[0x277D5C160])
      {
        v18 = v176;
        (*(v171 + 96))(v172, v169);
        (*(v175 + 32))(v18, v172, v173);
        if (USOParse.isRequestForAppleCardBalance.getter())
        {
          v155 = 1;
        }

        else
        {
          v155 = USOParse.isRequestForAppleSavings.getter();
        }

        if (v155)
        {
          v19 = v187;
          v20 = Logger.payments.unsafeMutableAddressor();
          (*(v183 + 16))(v19, v20, v181);
          v153 = Logger.logObject.getter();
          v150 = v153;
          v152 = static os_log_type_t.debug.getter();
          v151 = v152;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
          v154 = _allocateUninitializedArray<A>(_:)();
          if (os_log_type_enabled(v153, v152))
          {
            v21 = v163;
            v141 = static UnsafeMutablePointer.allocate(capacity:)();
            v137 = v141;
            v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v139 = 0;
            v142 = createStorage<A>(capacity:type:)(0, v138, v138);
            v140 = v142;
            v143 = createStorage<A>(capacity:type:)(v139, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
            v198 = v141;
            v197 = v142;
            v196 = v143;
            v144 = 0;
            v145 = &v198;
            serialize(_:at:)(0, &v198);
            serialize(_:at:)(v144, v145);
            v195 = v154;
            v146 = &v51;
            MEMORY[0x28223BE20](&v51, v22);
            v147 = &v51 - 6;
            *(&v51 - 4) = v23;
            *(&v51 - 3) = &v197;
            *(&v51 - 2) = &v196;
            v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
            lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
            Sequence.forEach(_:)();
            v149 = v21;
            if (v21)
            {
              __break(1u);
            }

            else
            {
              _os_log_impl(&dword_2686B1000, v150, v151, "#PaymentsFlow guards complete, moving flow states from guard flows to .appleCardBalanceOutput", v137, 2u);
              v135 = 0;
              destroyStorage<A>(_:count:)(v140, 0, v138);
              destroyStorage<A>(_:count:)(v143, v135, MEMORY[0x277D84F70] + 8);
              MEMORY[0x26D620BD0](v137, MEMORY[0x277D84B78]);

              v136 = v149;
            }
          }

          else
          {

            v136 = v163;
          }

          v133 = v136;

          (*(v183 + 8))(v187, v181);
          swift_storeEnumTagMultiPayload();
          outlined init with copy of PaymentsFlowState(v168, v166);
          v131 = (v156 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
          v132 = v199;
          swift_beginAccess();
          outlined assign with take of PaymentsFlowState(v166, v131);
          swift_endAccess();
          outlined destroy of PaymentsFlowState(v168);
          (*(v175 + 8))(v176, v173);
          v134 = v133;
          goto LABEL_25;
        }

        (*(v175 + 8))(v176, v173);
      }

      else
      {
        (*(v171 + 8))(v172, v169);
      }

      v24 = v185;
      v25 = Logger.payments.unsafeMutableAddressor();
      (*(v183 + 16))(v24, v25, v181);
      v129 = Logger.logObject.getter();
      v126 = v129;
      v128 = static os_log_type_t.debug.getter();
      v127 = v128;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v130 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v129, v128))
      {
        v26 = v163;
        v117 = static UnsafeMutablePointer.allocate(capacity:)();
        v113 = v117;
        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v115 = 0;
        v118 = createStorage<A>(capacity:type:)(0, v114, v114);
        v116 = v118;
        v119 = createStorage<A>(capacity:type:)(v115, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v202 = v117;
        v201 = v118;
        v200 = v119;
        v120 = 0;
        v121 = &v202;
        serialize(_:at:)(0, &v202);
        serialize(_:at:)(v120, v121);
        v199[3] = v130;
        v122 = &v51;
        MEMORY[0x28223BE20](&v51, v27);
        v123 = &v51 - 6;
        *(&v51 - 4) = v28;
        *(&v51 - 3) = &v201;
        *(&v51 - 2) = &v200;
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v125 = v26;
        if (v26)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v126, v127, "#PaymentsFlow guards complete, moving flow states from guard flows to .readyToRunFlow", v113, 2u);
          v111 = 0;
          destroyStorage<A>(_:count:)(v116, 0, v114);
          destroyStorage<A>(_:count:)(v119, v111, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v113, MEMORY[0x277D84B78]);

          v112 = v125;
        }
      }

      else
      {

        v112 = v163;
      }

      v110 = v112;

      (*(v183 + 8))(v185, v181);
      v107 = 0;
      v29 = type metadata accessor for Input();
      (*(*(v29 - 8) + 16))(v168, v177);
      swift_storeEnumTagMultiPayload();
      outlined init with copy of PaymentsFlowState(v168, v166);
      v108 = (v156 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
      v109 = &v203;
      swift_beginAccess();
      outlined assign with take of PaymentsFlowState(v166, v108);
      swift_endAccess();
      outlined destroy of PaymentsFlowState(v168);
      v134 = v110;
LABEL_25:
      v105 = v134;

      return v105;
    }

    v30 = v184;
    v31 = Logger.payments.unsafeMutableAddressor();
    (*(v183 + 16))(v30, v31, v181);
    v88 = 17;
    v93 = 7;
    v94 = swift_allocObject();
    *(v94 + 16) = v190 & 1;
    v104 = Logger.logObject.getter();
    v86 = v104;
    v103 = static os_log_type_t.error.getter();
    v87 = v103;
    v97 = swift_allocObject();
    v89 = v97;
    v90 = 32;
    *(v97 + 16) = 32;
    v32 = swift_allocObject();
    v33 = v90;
    v98 = v32;
    v91 = v32;
    *(v32 + 16) = 8;
    v92 = v33;
    v34 = swift_allocObject();
    v35 = v94;
    v95 = v34;
    *(v34 + 16) = partial apply for implicit closure #1 in closure #1 in PaymentsFlow.execute();
    *(v34 + 24) = v35;
    v36 = swift_allocObject();
    v37 = v95;
    v101 = v36;
    v96 = v36;
    *(v36 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v36 + 24) = v37;
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v99 = _allocateUninitializedArray<A>(_:)();
    v100 = v38;

    v39 = v97;
    v40 = v100;
    *v100 = partial apply for closure #1 in OSLogArguments.append(_:);
    v40[1] = v39;

    v41 = v98;
    v42 = v100;
    v100[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v42[3] = v41;

    v43 = v100;
    v44 = v101;
    v100[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v43[5] = v44;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v104, v103))
    {
      v45 = v163;
      v79 = static UnsafeMutablePointer.allocate(capacity:)();
      v76 = v79;
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v80 = createStorage<A>(capacity:type:)(0, v77, v77);
      v78 = v80;
      v82 = 1;
      v81 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v208 = v79;
      v207 = v80;
      v206 = v81;
      v83 = &v208;
      serialize(_:at:)(2, &v208);
      serialize(_:at:)(v82, v83);
      v204 = partial apply for closure #1 in OSLogArguments.append(_:);
      v205 = v89;
      closure #1 in osLogInternal(_:log:type:)(&v204, v83, &v207, &v206);
      v84 = v45;
      v85 = v45;
      if (v45)
      {
        v74 = 0;

        __break(1u);
      }

      else
      {
        v204 = partial apply for closure #1 in OSLogArguments.append(_:);
        v205 = v91;
        closure #1 in osLogInternal(_:log:type:)(&v204, &v208, &v207, &v206);
        v72 = 0;
        v73 = 0;
        v204 = partial apply for closure #1 in OSLogArguments.append(_:);
        v205 = v96;
        closure #1 in osLogInternal(_:log:type:)(&v204, &v208, &v207, &v206);
        v70 = 0;
        v71 = 0;
        _os_log_impl(&dword_2686B1000, v86, v87, "#PaymentsFlow GuardFlow yielded an invalid/failing exit value: %s, setting flow state to .finished", v76, 0xCu);
        destroyStorage<A>(_:count:)(v78, 0, v77);
        destroyStorage<A>(_:count:)(v81, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v76, MEMORY[0x277D84B78]);

        v75 = v70;
      }
    }

    else
    {
      v46 = v163;

      v75 = v46;
    }

    v69 = v75;

    (*(v183 + 8))(v184, v181);
    swift_storeEnumTagMultiPayload();
    outlined init with copy of PaymentsFlowState(v168, v166);
    v67 = (v156 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
    v68 = &v209;
    swift_beginAccess();
    outlined assign with take of PaymentsFlowState(v166, v67);
    swift_endAccess();
    outlined destroy of PaymentsFlowState(v168);

    return v69;
  }

  else
  {
    v15 = v189;
    v16 = Logger.payments.unsafeMutableAddressor();
    (*(v183 + 16))(v15, v16, v181);
    v160 = Logger.logObject.getter();
    v157 = v160;
    v159 = static os_log_type_t.error.getter();
    v158 = v159;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v161 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v160, v159))
    {
      v47 = v163;
      v58 = static UnsafeMutablePointer.allocate(capacity:)();
      v54 = v58;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v56 = 0;
      v59 = createStorage<A>(capacity:type:)(0, v55, v55);
      v57 = v59;
      v60 = createStorage<A>(capacity:type:)(v56, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v214 = v58;
      v213 = v59;
      v212 = v60;
      v61 = 0;
      v62 = &v214;
      serialize(_:at:)(0, &v214);
      serialize(_:at:)(v61, v62);
      v211 = v161;
      v63 = &v51;
      MEMORY[0x28223BE20](&v51, v48);
      v64 = &v51 - 6;
      *(&v51 - 4) = v49;
      *(&v51 - 3) = &v213;
      *(&v51 - 2) = &v212;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v66 = v47;
      if (v47)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v157, v158, "#PaymentsFlow got deallocated before child completion of guard flow could run", v54, 2u);
        v52 = 0;
        destroyStorage<A>(_:count:)(v57, 0, v55);
        destroyStorage<A>(_:count:)(v60, v52, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v54, MEMORY[0x277D84B78]);

        v53 = v66;
      }
    }

    else
    {

      v53 = v163;
    }

    v51 = v53;

    (*(v183 + 8))(v189, v181);
    return v51;
  }
}

uint64_t closure #2 in PaymentsFlow.execute()(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v45 = a1;
  v44 = 0;
  v63 = 0;
  v62 = 0;
  v38 = 0;
  v56 = 0;
  v39 = type metadata accessor for PaymentsFlowState(0);
  v40 = *(*(v39 - 8) + 64);
  v2 = MEMORY[0x28223BE20](0, v39);
  v42 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v41 = &v12 - v42;
  MEMORY[0x28223BE20](v2, &v12 - v42);
  v43 = &v12 - v42;
  v47 = type metadata accessor for Logger();
  v48 = *(v47 - 8);
  v49 = v48;
  v3 = MEMORY[0x28223BE20](v45, v46);
  v50 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v3;
  v51 = v5 + 16;
  v62 = v5 + 16;
  v52 = &v61;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v53 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v37 = v53;
    v30 = v53;
    v56 = v53;
    swift_storeEnumTagMultiPayload();
    outlined init with copy of PaymentsFlowState(v43, v41);
    v28 = (v30 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
    v29 = &v55;
    swift_beginAccess();
    outlined assign with take of PaymentsFlowState(v41, v28);
    swift_endAccess();
    outlined destroy of PaymentsFlowState(v43);

    return v38;
  }

  else
  {
    v6 = v50;
    v7 = Logger.payments.unsafeMutableAddressor();
    (*(v49 + 16))(v6, v7, v47);
    v35 = Logger.logObject.getter();
    v32 = v35;
    v34 = static os_log_type_t.error.getter();
    v33 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v36 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v35, v34))
    {
      v8 = v38;
      v19 = static UnsafeMutablePointer.allocate(capacity:)();
      v15 = v19;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v17 = 0;
      v20 = createStorage<A>(capacity:type:)(0, v16, v16);
      v18 = v20;
      v21 = createStorage<A>(capacity:type:)(v17, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v60 = v19;
      v59 = v20;
      v58 = v21;
      v22 = 0;
      v23 = &v60;
      serialize(_:at:)(0, &v60);
      serialize(_:at:)(v22, v23);
      v57 = v36;
      v24 = &v12;
      MEMORY[0x28223BE20](&v12, v9);
      v25 = &v12 - 6;
      *(&v12 - 4) = v10;
      *(&v12 - 3) = &v59;
      *(&v12 - 2) = &v58;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v27 = v8;
      if (v8)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v32, v33, "#PaymentsFlow got deallocated before child completion of guard flow could run", v15, 2u);
        v13 = 0;
        destroyStorage<A>(_:count:)(v18, 0, v16);
        destroyStorage<A>(_:count:)(v21, v13, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v15, MEMORY[0x277D84B78]);

        v14 = v27;
      }
    }

    else
    {

      v14 = v38;
    }

    v12 = v14;

    (*(v49 + 8))(v50, v47);
    return v12;
  }
}

uint64_t implicit closure #1 in PaymentsFlow.execute()()
{
  v5 = type metadata accessor for Parse();
  v3 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v0);
  v4 = &v2 - v3;
  Input.parse.getter();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #2 in PaymentsFlow.execute()(uint64_t a1)
{
  v4 = a1;
  v9 = type metadata accessor for PaymentsFlowState(0);
  v5 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v3 - v5;
  v6 = (MEMORY[0x28223BE20](v4, v1) + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
  v7 = &v10;
  swift_beginAccess();
  outlined init with copy of PaymentsFlowState(v6, v8);
  swift_endAccess();
  return String.init<A>(describing:)();
}

uint64_t PaymentsFlow.deinit()
{
  outlined destroy of PaymentsFlowState(v0 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowFactory));
  outlined destroy of [SFCardSection]((v0 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_restrictionGuards));
  return v2;
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance PaymentsFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:) in conformance SearchForAccountsNeedsConfirmationStrategy;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t protocol witness for Flow.execute() in conformance PaymentsFlow(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (*(**v1 + 152) + **(**v1 + 152));
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #1 in FlowFactory.unsupportedActionFlow();

  return v6(a1);
}

uint64_t type metadata accessor for PaymentsFlow(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for PaymentsFlow;
  if (!type metadata singleton initialization cache for PaymentsFlow)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type PaymentsFlow and conformance PaymentsFlow()
{
  v2 = lazy protocol witness table cache variable for type PaymentsFlow and conformance PaymentsFlow;
  if (!lazy protocol witness table cache variable for type PaymentsFlow and conformance PaymentsFlow)
  {
    type metadata accessor for PaymentsFlow(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsFlow and conformance PaymentsFlow);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26886BE1C()
{
  v2 = *(type metadata accessor for Input() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in PaymentsFlow.execute()()
{
  type metadata accessor for Input();

  return implicit closure #1 in PaymentsFlow.execute()();
}

uint64_t sub_26886C2FC()
{
  v4 = type metadata accessor for Input();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in PaymentsFlow.execute()(uint64_t a1)
{
  v2 = type metadata accessor for Input();
  v3 = *(v1 + 16);
  v4 = v1 + ((*(*(v2 - 8) + 80) + 24) & ~*(*(v2 - 8) + 80));

  return closure #1 in PaymentsFlow.execute()(a1, v3, v4);
}

uint64_t type metadata completion function for PaymentsFlowState(uint64_t a1)
{
  v3 = type metadata accessor for Input();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return v3;
}

uint64_t type metadata completion function for PaymentsFlow(uint64_t a1)
{
  updated = type metadata accessor for PaymentsFlowState(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t lazy protocol witness table accessor for type GuardFlowResult and conformance GuardFlowResult()
{
  v2 = lazy protocol witness table cache variable for type GuardFlowResult and conformance GuardFlowResult;
  if (!lazy protocol witness table cache variable for type GuardFlowResult and conformance GuardFlowResult)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GuardFlowResult and conformance GuardFlowResult);
    return WitnessTable;
  }

  return v2;
}

uint64_t UsoEntity_common_App.appIdentifier.getter()
{
  v29 = closure #1 in UsoEntity_common_App.appIdentifier.getter;
  v30 = closure #2 in UsoEntity_common_App.appIdentifier.getter;
  v31 = closure #3 in UsoEntity_common_App.appIdentifier.getter;
  v32 = closure #2 in UsoEntity_common_App.appIdentifier.getter;
  v52 = 0;
  v51 = 0;
  v33 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v35 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34, v1);
  v36 = &v7 - v35;
  v37 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v7 - v35, v3);
  v38 = &v7 - v37;
  v52 = v0;
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("name", 4uLL, 1)._object;
  v40 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

  if (!v40)
  {
    v16 = 0;
    v17 = 0;
    return v16;
  }

  v28 = v40;
  v4 = v33;
  v24 = v40;
  v51 = v40;
  v48 = v40;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
  v26 = lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
  result = Sequence.first(where:)();
  v27 = v4;
  if (v4)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(v30, 0, v34, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v22, &v49);
    v23 = 0;
    outlined destroy of UsoIdentifier?(v38);
    v20 = v49;
    v21 = v50;
    if (v50)
    {
      v18 = v20;
      v19 = v21;
      v15 = v21;
      v14 = v20;
      v41 = v20;
      v42 = v21;

      v16 = v14;
      v17 = v15;
      return v16;
    }

    v6 = v23;
    v45 = v24;
    result = Sequence.first(where:)();
    v13 = v6;
    if (!v6)
    {
      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(v32, 0, v34, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v22, &v46);
      outlined destroy of UsoIdentifier?(v36);
      v11 = v46;
      v12 = v47;
      if (v47)
      {
        v9 = v11;
        v10 = v12;
        v8 = v12;
        v7 = v11;
        v43 = v11;
        v44 = v12;

        v16 = v7;
        v17 = v8;
      }

      else
      {

        v16 = 0;
        v17 = 0;
      }

      return v16;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t UsoEntity_common_PaymentAccount.balanceTypeAsINType.getter()
{
  v171 = 0;
  v198 = 0;
  v197 = 0;
  v161 = 0;
  v192 = 0;
  v184 = 0;
  v162 = type metadata accessor for Logger();
  v163 = *(v162 - 8);
  v164 = v163;
  v167 = *(v163 + 64);
  MEMORY[0x28223BE20](v162 - 8, v162);
  v169 = (v167 + 15) & 0xFFFFFFFFFFFFFFF0;
  v165 = &v42 - v169;
  MEMORY[0x28223BE20](&v42 - v169, v1);
  v166 = &v42 - v169;
  MEMORY[0x28223BE20](&v42 - v169, v2);
  v168 = &v42 - v169;
  MEMORY[0x28223BE20](&v42 - v169, v3);
  v170 = &v42 - v169;
  v172 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v171, v4);
  v173 = &v42 - v172;
  v174 = type metadata accessor for UsoIdentifier();
  v175 = *(v174 - 8);
  v176 = v175;
  MEMORY[0x28223BE20](v174 - 8, v174);
  v177 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = v177;
  v197 = v0;
  v178 = dispatch thunk of UsoEntity_common_PaymentAccount.balance.getter();
  if (v178 && (v160 = v178, v157 = v178, v159 = dispatch thunk of UsoEntity_common_CurrencyAmount.currency.getter(), v158 = v159, , v159))
  {
    v156 = v158;
    v153 = v158;
    object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("name", 4uLL, 1)._object;
    v154 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

    v155 = v154;
  }

  else
  {
    v155 = 0;
  }

  v151 = v155;
  if (!v155)
  {
    v36 = v165;
    v37 = Logger.payments.unsafeMutableAddressor();
    (*(v164 + 16))(v36, v37, v162);
    v61 = Logger.logObject.getter();
    v58 = v61;
    v60 = static os_log_type_t.debug.getter();
    v59 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v62 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v61, v60))
    {
      v38 = v161;
      v49 = static UnsafeMutablePointer.allocate(capacity:)();
      v45 = v49;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v47 = 0;
      v50 = createStorage<A>(capacity:type:)(0, v46, v46);
      v48 = v50;
      v51 = createStorage<A>(capacity:type:)(v47, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v196 = v49;
      v195 = v50;
      v194 = v51;
      v52 = 0;
      v53 = &v196;
      serialize(_:at:)(0, &v196);
      serialize(_:at:)(v52, v53);
      v193 = v62;
      v54 = &v42;
      MEMORY[0x28223BE20](&v42, v39);
      v55 = &v42 - 6;
      *(&v42 - 4) = v40;
      *(&v42 - 3) = &v195;
      *(&v42 - 2) = &v194;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v57 = v38;
      if (v38)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v58, v59, "#UsoEntity_common_PaymentAccount no USO identifiers found trying to determine balance type, returning unknown", v45, 2u);
        v43 = 0;
        destroyStorage<A>(_:count:)(v48, 0, v46);
        destroyStorage<A>(_:count:)(v51, v43, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v45, MEMORY[0x277D84B78]);

        v44 = v57;
      }
    }

    else
    {

      v44 = v161;
    }

    v42 = v44;

    (*(v164 + 8))(v165, v162);
    v107 = 0;
    v108 = v42;
    return v107;
  }

  v150 = v151;
  v6 = v161;
  v147 = v151;
  v192 = v151;
  v191[1] = v151;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
  lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
  Sequence.first(where:)();
  v149 = v6;
  if (!v6)
  {
    if ((*(v176 + 48))(v173, 1, v174) == 1)
    {
      v31 = v166;
      outlined destroy of UsoIdentifier?(v173);
      v32 = Logger.payments.unsafeMutableAddressor();
      (*(v164 + 16))(v31, v32, v162);
      v82 = Logger.logObject.getter();
      v79 = v82;
      v81 = static os_log_type_t.debug.getter();
      v80 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v83 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v82, v81))
      {
        v33 = v149;
        v70 = static UnsafeMutablePointer.allocate(capacity:)();
        v66 = v70;
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v68 = 0;
        v71 = createStorage<A>(capacity:type:)(0, v67, v67);
        v69 = v71;
        v72 = createStorage<A>(capacity:type:)(v68, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v191[0] = v70;
        v190 = v71;
        v189 = v72;
        v73 = 0;
        v74 = v191;
        serialize(_:at:)(0, v191);
        serialize(_:at:)(v73, v74);
        v188[1] = v83;
        v75 = &v42;
        MEMORY[0x28223BE20](&v42, v34);
        v76 = &v42 - 6;
        *(&v42 - 4) = v35;
        *(&v42 - 3) = &v190;
        *(&v42 - 2) = &v189;
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v78 = v33;
        if (v33)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v79, v80, "#UsoEntity_common_PaymentAccount no identifiers for balance type had the expected namespace, returning unknown", v66, 2u);
          v64 = 0;
          destroyStorage<A>(_:count:)(v69, 0, v67);
          destroyStorage<A>(_:count:)(v72, v64, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v66, MEMORY[0x277D84B78]);

          v65 = v78;
        }
      }

      else
      {

        v65 = v149;
      }

      v63 = v65;

      (*(v164 + 8))(v166, v162);

      v107 = 0;
      v108 = v63;
    }

    else
    {
      (*(v176 + 32))(v177, v173, v174);
      v7._countAndFlagsBits = UsoIdentifier.value.getter();
      LOBYTE(v8) = Constants.PaymentAccountBalanceType.init(rawValue:)(v7);
      v146 = v8;
      if (v8 == 4)
      {
        v26 = v168;
        v27 = Logger.payments.unsafeMutableAddressor();
        (*(v164 + 16))(v26, v27, v162);
        v103 = Logger.logObject.getter();
        v100 = v103;
        v102 = static os_log_type_t.debug.getter();
        v101 = v102;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v104 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v103, v102))
        {
          v28 = v149;
          v91 = static UnsafeMutablePointer.allocate(capacity:)();
          v87 = v91;
          v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v89 = 0;
          v92 = createStorage<A>(capacity:type:)(0, v88, v88);
          v90 = v92;
          v93 = createStorage<A>(capacity:type:)(v89, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v188[0] = v91;
          v187 = v92;
          v186 = v93;
          v94 = 0;
          v95 = v188;
          serialize(_:at:)(0, v188);
          serialize(_:at:)(v94, v95);
          v185 = v104;
          v96 = &v42;
          MEMORY[0x28223BE20](&v42, v29);
          v97 = &v42 - 6;
          *(&v42 - 4) = v30;
          *(&v42 - 3) = &v187;
          *(&v42 - 2) = &v186;
          v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();
          v99 = v28;
          if (v28)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_2686B1000, v100, v101, "#UsoEntity_common_PaymentAccount balanceType couldn't parse, returning unknown", v87, 2u);
            v85 = 0;
            destroyStorage<A>(_:count:)(v90, 0, v88);
            destroyStorage<A>(_:count:)(v93, v85, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v87, MEMORY[0x277D84B78]);

            v86 = v99;
          }
        }

        else
        {

          v86 = v149;
        }

        v84 = v86;

        (*(v164 + 8))(v168, v162);
        (*(v176 + 8))(v177, v174);

        v107 = 0;
        v108 = v84;
      }

      else
      {
        v145 = v146;
        v9 = v170;
        v125 = v146;
        v184 = v146;
        v10 = Logger.payments.unsafeMutableAddressor();
        (*(v164 + 16))(v9, v10, v162);
        v128 = 17;
        v133 = 7;
        v134 = swift_allocObject();
        *(v134 + 16) = v125;
        v144 = Logger.logObject.getter();
        v126 = v144;
        v143 = static os_log_type_t.debug.getter();
        v127 = v143;
        v137 = swift_allocObject();
        v129 = v137;
        v130 = 32;
        *(v137 + 16) = 32;
        v11 = swift_allocObject();
        v12 = v130;
        v138 = v11;
        v131 = v11;
        *(v11 + 16) = 8;
        v132 = v12;
        v13 = swift_allocObject();
        v14 = v134;
        v135 = v13;
        *(v13 + 16) = partial apply for implicit closure #1 in UsoEntity_common_PaymentAccount.balanceTypeAsINType.getter;
        *(v13 + 24) = v14;
        v15 = swift_allocObject();
        v16 = v135;
        v141 = v15;
        v136 = v15;
        *(v15 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v15 + 24) = v16;
        v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v139 = _allocateUninitializedArray<A>(_:)();
        v140 = v17;

        v18 = v137;
        v19 = v140;
        *v140 = partial apply for closure #1 in OSLogArguments.append(_:);
        v19[1] = v18;

        v20 = v138;
        v21 = v140;
        v140[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v21[3] = v20;

        v22 = v140;
        v23 = v141;
        v140[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v22[5] = v23;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v144, v143))
        {
          v24 = v149;
          v118 = static UnsafeMutablePointer.allocate(capacity:)();
          v115 = v118;
          v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v119 = createStorage<A>(capacity:type:)(0, v116, v116);
          v117 = v119;
          v121 = 1;
          v120 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v183 = v118;
          v182 = v119;
          v181 = v120;
          v122 = &v183;
          serialize(_:at:)(2, &v183);
          serialize(_:at:)(v121, v122);
          v179 = partial apply for closure #1 in OSLogArguments.append(_:);
          v180 = v129;
          closure #1 in osLogInternal(_:log:type:)(&v179, v122, &v182, &v181);
          v123 = v24;
          v124 = v24;
          if (v24)
          {
            v113 = 0;

            __break(1u);
          }

          else
          {
            v179 = partial apply for closure #1 in OSLogArguments.append(_:);
            v180 = v131;
            closure #1 in osLogInternal(_:log:type:)(&v179, &v183, &v182, &v181);
            v111 = 0;
            v112 = 0;
            v179 = partial apply for closure #1 in OSLogArguments.append(_:);
            v180 = v136;
            closure #1 in osLogInternal(_:log:type:)(&v179, &v183, &v182, &v181);
            v109 = 0;
            v110 = 0;
            _os_log_impl(&dword_2686B1000, v126, v127, "#UsoEntity_common_PaymentAccount found balance type %s", v115, 0xCu);
            destroyStorage<A>(_:count:)(v117, 0, v116);
            destroyStorage<A>(_:count:)(v120, 1, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v115, MEMORY[0x277D84B78]);

            v114 = v109;
          }
        }

        else
        {
          v25 = v149;

          v114 = v25;
        }

        v106 = v114;

        (*(v164 + 8))(v170, v162);
        v105 = Constants.PaymentAccountBalanceType.asINBalanceType.getter(v125);
        (*(v176 + 8))(v177, v174);

        v107 = v105;
        v108 = v106;
      }
    }

    return v107;
  }

  result = 0;
  __break(1u);
  return result;
}

uint64_t UsoEntity_common_PaymentAccount.accountAsINType.getter()
{
  v172 = 0;
  v200 = 0;
  v199 = 0;
  v162 = 0;
  v194 = 0;
  v186 = 0;
  v185 = 0;
  v163 = type metadata accessor for Logger();
  v164 = *(v163 - 8);
  v165 = v164;
  v168 = *(v164 + 64);
  MEMORY[0x28223BE20](v163 - 8, v163);
  v170 = (v168 + 15) & 0xFFFFFFFFFFFFFFF0;
  v166 = &v44 - v170;
  MEMORY[0x28223BE20](&v44 - v170, v1);
  v167 = &v44 - v170;
  MEMORY[0x28223BE20](&v44 - v170, v2);
  v169 = &v44 - v170;
  MEMORY[0x28223BE20](&v44 - v170, v3);
  v171 = &v44 - v170;
  v173 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v172, v4);
  v174 = &v44 - v173;
  v175 = type metadata accessor for UsoIdentifier();
  v176 = *(v175 - 8);
  v177 = v176;
  MEMORY[0x28223BE20](v175 - 8, v175);
  v178 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = v178;
  v199 = v0;
  v179 = dispatch thunk of UsoEntity_common_PaymentAccount.accountType.getter();
  if (v179)
  {
    v161 = v179;
    v158 = v179;
    object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("name", 4uLL, 1)._object;
    v159 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

    v160 = v159;
  }

  else
  {
    v160 = 0;
  }

  v156 = v160;
  if (!v160)
  {
    v38 = v166;
    v39 = Logger.payments.unsafeMutableAddressor();
    (*(v165 + 16))(v38, v39, v163);
    v64 = Logger.logObject.getter();
    v61 = v64;
    v63 = static os_log_type_t.debug.getter();
    v62 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v65 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v64, v63))
    {
      v40 = v162;
      v52 = static UnsafeMutablePointer.allocate(capacity:)();
      v48 = v52;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v50 = 0;
      v53 = createStorage<A>(capacity:type:)(0, v49, v49);
      v51 = v53;
      v54 = createStorage<A>(capacity:type:)(v50, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v198 = v52;
      v197 = v53;
      v196 = v54;
      v55 = 0;
      v56 = &v198;
      serialize(_:at:)(0, &v198);
      serialize(_:at:)(v55, v56);
      v195 = v65;
      v57 = &v44;
      MEMORY[0x28223BE20](&v44, v41);
      v58 = &v44 - 6;
      *(&v44 - 4) = v42;
      *(&v44 - 3) = &v197;
      *(&v44 - 2) = &v196;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v60 = v40;
      if (v40)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v61, v62, "#UsoEntity_common_PaymentAccount no USO identifiers found trying to determine account type,returning unknown", v48, 2u);
        v46 = 0;
        destroyStorage<A>(_:count:)(v51, 0, v49);
        destroyStorage<A>(_:count:)(v54, v46, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v48, MEMORY[0x277D84B78]);

        v47 = v60;
      }
    }

    else
    {

      v47 = v162;
    }

    v45 = v47;

    (*(v165 + 8))(v166, v163);
    v109 = 0;
    v110 = v45;
    return v109;
  }

  v155 = v156;
  v6 = v162;
  v152 = v156;
  v194 = v156;
  v193[1] = v156;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
  lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
  Sequence.first(where:)();
  v154 = v6;
  if (!v6)
  {
    if ((*(v177 + 48))(v174, 1, v175) == 1)
    {
      v33 = v167;
      outlined destroy of UsoIdentifier?(v174);
      v34 = Logger.payments.unsafeMutableAddressor();
      (*(v165 + 16))(v33, v34, v163);
      v85 = Logger.logObject.getter();
      v82 = v85;
      v84 = static os_log_type_t.debug.getter();
      v83 = v84;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v86 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v85, v84))
      {
        v35 = v154;
        v73 = static UnsafeMutablePointer.allocate(capacity:)();
        v69 = v73;
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v71 = 0;
        v74 = createStorage<A>(capacity:type:)(0, v70, v70);
        v72 = v74;
        v75 = createStorage<A>(capacity:type:)(v71, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v193[0] = v73;
        v192 = v74;
        v191 = v75;
        v76 = 0;
        v77 = v193;
        serialize(_:at:)(0, v193);
        serialize(_:at:)(v76, v77);
        v190[1] = v86;
        v78 = &v44;
        MEMORY[0x28223BE20](&v44, v36);
        v79 = &v44 - 6;
        *(&v44 - 4) = v37;
        *(&v44 - 3) = &v192;
        *(&v44 - 2) = &v191;
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v81 = v35;
        if (v35)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v82, v83, "#UsoEntity_common_PaymentAccount no identifiers had the expected namespace, returning unknown", v69, 2u);
          v67 = 0;
          destroyStorage<A>(_:count:)(v72, 0, v70);
          destroyStorage<A>(_:count:)(v75, v67, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v69, MEMORY[0x277D84B78]);

          v68 = v81;
        }
      }

      else
      {

        v68 = v154;
      }

      v66 = v68;

      (*(v165 + 8))(v167, v163);

      v109 = 0;
      v110 = v66;
    }

    else
    {
      (*(v177 + 32))(v178, v174, v175);
      v7.value._countAndFlagsBits = UsoIdentifier.value.getter();
      LOBYTE(v8) = Constants.PaymentAccountType.init(from:)(v7);
      v151 = v8;
      if (v8 == 9 || (v150 = v151, v148 = v151, v186 = v151, v149 = Constants.PaymentAccountType.asINAccountType.getter(v151), (v9 & 1) != 0))
      {
        v28 = v169;
        v29 = Logger.payments.unsafeMutableAddressor();
        (*(v165 + 16))(v28, v29, v163);
        v106 = Logger.logObject.getter();
        v103 = v106;
        v105 = static os_log_type_t.debug.getter();
        v104 = v105;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v107 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v106, v105))
        {
          v30 = v154;
          v94 = static UnsafeMutablePointer.allocate(capacity:)();
          v90 = v94;
          v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v92 = 0;
          v95 = createStorage<A>(capacity:type:)(0, v91, v91);
          v93 = v95;
          v96 = createStorage<A>(capacity:type:)(v92, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v190[0] = v94;
          v189 = v95;
          v188 = v96;
          v97 = 0;
          v98 = v190;
          serialize(_:at:)(0, v190);
          serialize(_:at:)(v97, v98);
          v187 = v107;
          v99 = &v44;
          MEMORY[0x28223BE20](&v44, v31);
          v100 = &v44 - 6;
          *(&v44 - 4) = v32;
          *(&v44 - 3) = &v189;
          *(&v44 - 2) = &v188;
          v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();
          v102 = v30;
          if (v30)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_2686B1000, v103, v104, "#UsoEntity_common_PaymentAccount accountType couldn't parse, returning unknown", v90, 2u);
            v88 = 0;
            destroyStorage<A>(_:count:)(v93, 0, v91);
            destroyStorage<A>(_:count:)(v96, v88, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v90, MEMORY[0x277D84B78]);

            v89 = v102;
          }
        }

        else
        {

          v89 = v154;
        }

        v87 = v89;

        (*(v165 + 8))(v169, v163);
        (*(v177 + 8))(v178, v175);

        v109 = 0;
        v110 = v87;
      }

      else
      {
        v147 = v149;
        v10 = v171;
        v127 = v149;
        v185 = v149;
        v11 = Logger.payments.unsafeMutableAddressor();
        (*(v165 + 16))(v10, v11, v163);
        v130 = 17;
        v135 = 7;
        v136 = swift_allocObject();
        *(v136 + 16) = v148;
        v146 = Logger.logObject.getter();
        v128 = v146;
        v145 = static os_log_type_t.debug.getter();
        v129 = v145;
        v139 = swift_allocObject();
        v131 = v139;
        v132 = 32;
        *(v139 + 16) = 32;
        v12 = swift_allocObject();
        v13 = v132;
        v140 = v12;
        v133 = v12;
        *(v12 + 16) = 8;
        v134 = v13;
        v14 = swift_allocObject();
        v15 = v136;
        v137 = v14;
        *(v14 + 16) = partial apply for implicit closure #1 in UsoEntity_common_PaymentAccount.accountAsINType.getter;
        *(v14 + 24) = v15;
        v16 = swift_allocObject();
        v17 = v137;
        v143 = v16;
        v138 = v16;
        *(v16 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v16 + 24) = v17;
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v141 = _allocateUninitializedArray<A>(_:)();
        v142 = v18;

        v19 = v139;
        v20 = v142;
        *v142 = partial apply for closure #1 in OSLogArguments.append(_:);
        v20[1] = v19;

        v21 = v140;
        v22 = v142;
        v142[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v22[3] = v21;

        v23 = v142;
        v24 = v143;
        v142[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v23[5] = v24;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v146, v145))
        {
          v26 = v154;
          v120 = static UnsafeMutablePointer.allocate(capacity:)();
          v117 = v120;
          v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v121 = createStorage<A>(capacity:type:)(0, v118, v118);
          v119 = v121;
          v123 = 1;
          v122 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v184 = v120;
          v183 = v121;
          v182 = v122;
          v124 = &v184;
          serialize(_:at:)(2, &v184);
          serialize(_:at:)(v123, v124);
          v180 = partial apply for closure #1 in OSLogArguments.append(_:);
          v181 = v131;
          closure #1 in osLogInternal(_:log:type:)(&v180, v124, &v183, &v182);
          v125 = v26;
          v126 = v26;
          if (v26)
          {
            v115 = 0;

            __break(1u);
          }

          else
          {
            v180 = partial apply for closure #1 in OSLogArguments.append(_:);
            v181 = v133;
            closure #1 in osLogInternal(_:log:type:)(&v180, &v184, &v183, &v182);
            v113 = 0;
            v114 = 0;
            v180 = partial apply for closure #1 in OSLogArguments.append(_:);
            v181 = v138;
            closure #1 in osLogInternal(_:log:type:)(&v180, &v184, &v183, &v182);
            v111 = 0;
            v112 = 0;
            _os_log_impl(&dword_2686B1000, v128, v129, "#UsoEntity_common_PaymentAccount found accountType %s", v117, 0xCu);
            destroyStorage<A>(_:count:)(v119, 0, v118);
            destroyStorage<A>(_:count:)(v122, 1, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v117, MEMORY[0x277D84B78]);

            v116 = v111;
          }
        }

        else
        {
          v27 = v154;

          v116 = v27;
        }

        v108 = v116;

        (*(v165 + 8))(v171, v163);
        (*(v177 + 8))(v178, v175);

        v109 = v127;
        v110 = v108;
      }
    }

    return v109;
  }

  result = 0;
  __break(1u);
  return result;
}

_BYTE *UsoEntity_common_CurrencyAmount.currencyIdentifier.getter()
{
  v113 = closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v114 = closure #2 in UsoEntity_common_CurrencyAmount.currencyIdentifier.getter;
  v115 = implicit closure #2 in UsoEntity_common_CurrencyAmount.currencyIdentifier.getter;
  v116 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v117 = partial apply for closure #1 in OSLogArguments.append(_:);
  v118 = partial apply for closure #1 in OSLogArguments.append(_:);
  v119 = partial apply for closure #1 in OSLogArguments.append(_:);
  v120 = implicit closure #2 in UsoEntity_common_CurrencyAmount.currencyIdentifier.getter;
  v121 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v122 = partial apply for closure #1 in OSLogArguments.append(_:);
  v123 = partial apply for closure #1 in OSLogArguments.append(_:);
  v124 = partial apply for closure #1 in OSLogArguments.append(_:);
  v168 = 0;
  v167 = 0;
  v125 = 0;
  v163 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v126 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2);
  v127 = &v46 - v126;
  v140 = 0;
  v128 = type metadata accessor for UsoIdentifier();
  v129 = *(v128 - 8);
  v130 = v128 - 8;
  v131 = (*(v129 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v140, v3);
  v132 = &v46 - v131;
  v168 = &v46 - v131;
  v133 = type metadata accessor for Locale();
  v134 = *(v133 - 8);
  v135 = v133 - 8;
  v136 = (*(v134 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v133, v4);
  v137 = &v46 - v136;
  v138 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v46 - v136, v6);
  v139 = &v46 - v138;
  v141 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8CurrencyVSgMd, _s10Foundation6LocaleV8CurrencyVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v140, v7);
  v142 = &v46 - v141;
  v143 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, &v46 - v141);
  v144 = &v46 - v143;
  v145 = type metadata accessor for Logger();
  v146 = *(v145 - 8);
  v147 = v145 - 8;
  v148 = (*(v146 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v145, v10);
  v149 = &v46 - v148;
  v150 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v46 - v148, v12);
  v151 = &v46 - v150;
  v167 = v0;
  v152 = dispatch thunk of UsoEntity_common_CurrencyAmount.currency.getter();
  if (v152)
  {
    v112 = v152;
    v109 = v152;
    object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("name", 4uLL, 1)._object;
    v110 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

    v111 = v110;
  }

  else
  {
    v111 = 0;
  }

  v165 = v111;
  if (v111)
  {
    v166 = v165;
  }

  else
  {
    v166 = _allocateUninitializedArray<A>(_:)();
    if (v165)
    {
      outlined destroy of [SFCardSection](&v165);
    }
  }

  v13 = v125;
  v164 = v166;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
  lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
  result = _ArrayProtocol.filter(_:)();
  v106 = v13;
  v107 = result;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v104 = v107;
    v163 = v107;
    v162[2] = v107;
    lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
    v15 = Collection.isEmpty.getter();
    if (v15)
    {
      v16 = v151;
      v17 = Logger.payments.unsafeMutableAddressor();
      (*(v146 + 16))(v16, v17, v145);
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.debug.getter();
      v92 = 17;
      v94 = 7;
      v96 = swift_allocObject();
      *(v96 + 16) = 32;
      v97 = swift_allocObject();
      *(v97 + 16) = 8;
      v93 = 32;
      v18 = swift_allocObject();
      v95 = v18;
      *(v18 + 16) = v120;
      *(v18 + 24) = 0;
      v19 = swift_allocObject();
      v20 = v95;
      v99 = v19;
      *(v19 + 16) = v121;
      *(v19 + 24) = v20;
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v98 = _allocateUninitializedArray<A>(_:)();
      v100 = v21;

      v22 = v96;
      v23 = v100;
      *v100 = v122;
      v23[1] = v22;

      v24 = v97;
      v25 = v100;
      v100[2] = v123;
      v25[3] = v24;

      v26 = v99;
      v27 = v100;
      v100[4] = v124;
      v27[5] = v26;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v102, v103))
      {
        v28 = v106;
        v85 = static UnsafeMutablePointer.allocate(capacity:)();
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v86 = createStorage<A>(capacity:type:)(0, v84, v84);
        v87 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v88 = &v157;
        v157 = v85;
        v89 = &v156;
        v156 = v86;
        v90 = &v155;
        v155 = v87;
        serialize(_:at:)(2, &v157);
        serialize(_:at:)(1, v88);
        v153 = v122;
        v154 = v96;
        closure #1 in osLogInternal(_:log:type:)(&v153, v88, v89, v90);
        v91 = v28;
        if (v28)
        {

          __break(1u);
        }

        else
        {
          v153 = v123;
          v154 = v97;
          closure #1 in osLogInternal(_:log:type:)(&v153, &v157, &v156, &v155);
          v83 = 0;
          v153 = v124;
          v154 = v99;
          closure #1 in osLogInternal(_:log:type:)(&v153, &v157, &v156, &v155);
          _os_log_impl(&dword_2686B1000, v102, v103, "#UsoEntity_common_CurrencyAmount currencyIdentifier could not find any USO identifiers for currencyUnit, will use Locale.current's unit %s", v85, 0xCu);
          destroyStorage<A>(_:count:)(v86, 0, v84);
          destroyStorage<A>(_:count:)(v87, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v85, MEMORY[0x277D84B78]);
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v102);
      (*(v146 + 8))(v151, v145);
      static Locale.current.getter();
      Locale.currency.getter();
      (*(v134 + 8))(v139, v133);
      v80 = type metadata accessor for Locale.Currency();
      v81 = *(v80 - 8);
      v82 = v80 - 8;
      if ((*(v81 + 48))(v144, 1) == 1)
      {
        outlined destroy of Locale.Currency?(v144);
        v79 = 0uLL;
      }

      else
      {
        *&v78 = MEMORY[0x26D61E230]();
        *(&v78 + 1) = v29;
        (*(v81 + 8))(v144, v80);
        v79 = v78;
      }

      v76 = v79;

      return v76;
    }

    v30 = v106;
    v162[1] = v104;
    lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
    result = Sequence.first(where:)();
    v75 = v30;
    if (!v30)
    {
      if ((*(v129 + 48))(v127, 1, v128) == 1)
      {
        v32 = v149;
        outlined destroy of UsoIdentifier?(v127);
        v33 = Logger.payments.unsafeMutableAddressor();
        (*(v146 + 16))(v32, v33, v145);
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.debug.getter();
        v61 = 17;
        v63 = 7;
        v65 = swift_allocObject();
        *(v65 + 16) = 32;
        v66 = swift_allocObject();
        *(v66 + 16) = 8;
        v62 = 32;
        v34 = swift_allocObject();
        v64 = v34;
        *(v34 + 16) = v115;
        *(v34 + 24) = 0;
        v35 = swift_allocObject();
        v36 = v64;
        v68 = v35;
        *(v35 + 16) = v116;
        *(v35 + 24) = v36;
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v67 = _allocateUninitializedArray<A>(_:)();
        v69 = v37;

        v38 = v65;
        v39 = v69;
        *v69 = v117;
        v39[1] = v38;

        v40 = v66;
        v41 = v69;
        v69[2] = v118;
        v41[3] = v40;

        v42 = v68;
        v43 = v69;
        v69[4] = v119;
        v43[5] = v42;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v71, v72))
        {
          v44 = v75;
          v54 = static UnsafeMutablePointer.allocate(capacity:)();
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v55 = createStorage<A>(capacity:type:)(0, v53, v53);
          v56 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v57 = v162;
          v162[0] = v54;
          v58 = &v161;
          v161 = v55;
          v59 = &v160;
          v160 = v56;
          serialize(_:at:)(2, v162);
          serialize(_:at:)(1, v57);
          v158 = v117;
          v159 = v65;
          closure #1 in osLogInternal(_:log:type:)(&v158, v57, v58, v59);
          v60 = v44;
          if (v44)
          {

            __break(1u);
          }

          else
          {
            v158 = v118;
            v159 = v66;
            closure #1 in osLogInternal(_:log:type:)(&v158, v162, &v161, &v160);
            v52 = 0;
            v158 = v119;
            v159 = v68;
            closure #1 in osLogInternal(_:log:type:)(&v158, v162, &v161, &v160);
            _os_log_impl(&dword_2686B1000, v71, v72, "#UsoEntity_common_CurrencyAmount currencyIdentifier isAmbiguousCurrency is true, will use Locale.current's unit %s", v54, 0xCu);
            destroyStorage<A>(_:count:)(v55, 0, v53);
            destroyStorage<A>(_:count:)(v56, 1, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v54, MEMORY[0x277D84B78]);
          }
        }

        else
        {
        }

        MEMORY[0x277D82BD8](v71);
        (*(v146 + 8))(v149, v145);
        static Locale.current.getter();
        Locale.currency.getter();
        (*(v134 + 8))(v137, v133);
        v49 = type metadata accessor for Locale.Currency();
        v50 = *(v49 - 8);
        v51 = v49 - 8;
        if ((*(v50 + 48))(v142, 1) == 1)
        {
          outlined destroy of Locale.Currency?(v142);
          v48 = 0uLL;
        }

        else
        {
          *&v47 = MEMORY[0x26D61E230]();
          *(&v47 + 1) = v45;
          (*(v50 + 8))(v142, v49);
          v48 = v47;
        }

        v46 = v48;

        return v46;
      }

      else
      {
        (*(v129 + 32))(v132, v127, v128);
        UsoIdentifier.value.getter();
        v73 = v31;
        v74 = String.uppercased()();

        (*(v129 + 8))(v132, v128);

        return v74._countAndFlagsBits;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t UsoEntity_common_Person.contactId.getter()
{
  v15 = 0;
  v17 = closure #1 in UsoEntity_common_Person.contactId.getter;
  v19 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v12 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2);
  v14 = &v5 - v12;
  v19 = v0;

  v13 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();

  v18 = v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
  lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
  Sequence.first(where:)();
  outlined destroy of [SFCardSection](&v18);
  v9 = type metadata accessor for UsoIdentifier();
  v10 = *(v9 - 8);
  v11 = v9 - 8;
  if ((*(v10 + 48))(v14, 1) == 1)
  {
    outlined destroy of UsoIdentifier?(v14);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v5 = UsoIdentifier.value.getter();
    v6 = v3;
    (*(v10 + 8))(v14, v9);
    v7 = v5;
    v8 = v6;
  }

  return v7;
}

uint64_t static UsoEntity.from(_:)(void *a1)
{
  v148 = a1;
  v177 = 0;
  v176 = 0;
  v175 = 0;
  v174 = 0;
  v166 = 0;
  v164 = 0;
  v165 = 0;
  v162 = 0;
  v163 = 0;
  v161 = 0;
  v160 = 0;
  v158 = 0;
  v159 = 0;
  v157 = 0;
  v156 = 0;
  v155 = 0;
  v150 = 0;
  v151 = 0;
  v139 = 0;
  v132 = type metadata accessor for SpeakableString();
  v133 = *(v132 - 8);
  v134 = v132 - 8;
  v135 = (*(v133 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v136 = v38 - v135;
  v177 = v3;
  v176 = v1;
  type metadata accessor for UsoEntityBuilder_common_PaymentAccount();
  v145 = UsoEntityBuilder_common_PaymentAccount.__allocating_init()();
  v175 = v145;
  type metadata accessor for UsoEntityBuilder_common_PaymentAccountType();
  v147 = UsoEntityBuilder_common_PaymentAccountType.__allocating_init()();
  v174 = v147;
  v4 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v142 = &v172;
  v172 = v4;
  v173 = v5;
  v138 = "";
  v140 = 1;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v139, 1);
  object = v6._object;
  MEMORY[0x26D620F90](v6._countAndFlagsBits);

  [v148 accountType];
  INBalanceType.rawValue.getter();
  v171 = v7;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v138, v139, v140 & 1);
  v141 = v8._object;
  MEMORY[0x26D620F90](v8._countAndFlagsBits);

  v144 = v172;
  v143 = v173;

  outlined destroy of String.UTF8View(v142);
  MEMORY[0x26D620710](v144, v143);
  v146 = v9;
  dispatch thunk of UsoEntityBuilder_common_PaymentAccountType.setName(value:)();

  dispatch thunk of UsoEntityBuilder_common_PaymentAccount.setAccountType(value:)();

  v149 = [v148 accountNumber];
  if (v149)
  {
    v131 = v149;
    v126 = v149;
    v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v128 = v10;
    MEMORY[0x277D82BD8](v126);
    v129 = v127;
    v130 = v128;
  }

  else
  {
    v129 = 0;
    v130 = 0;
  }

  v124 = v130;
  v125 = v129;
  if (v130)
  {
    v122 = v125;
    v123 = v124;
    v121 = v124;
    v150 = v125;
    v151 = v124;
    dispatch thunk of UsoEntityBuilder_common_PaymentAccount.setAccountNumber(value:)();
  }

  v120 = [v148 balance];
  if (v120)
  {
    v119 = v120;
    v116 = v120;
    v161 = v120;
    type metadata accessor for UsoEntityBuilder_common_CurrencyAmount();
    v117 = UsoEntityBuilder_common_CurrencyAmount.__allocating_init()();
    v160 = v117;
    v11 = [v116 amount];
    v118 = v11;
    if (v11)
    {
      v115 = v118;
      v114 = v118;
      v156 = v118;
      v106 = 0;
      type metadata accessor for UsoEntityBuilder_common_Number();
      v113 = UsoEntityBuilder_common_Number.__allocating_init()();
      v155 = v113;
      v12 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v109 = &v153;
      v153 = v12;
      v154 = v13;
      v105 = "";
      v107 = 1;
      v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v106, 1);
      v102 = v14._object;
      MEMORY[0x26D620F90](v14._countAndFlagsBits);

      v104 = &v152;
      v152 = v114;
      v103 = type metadata accessor for NSDecimalNumber();
      lazy protocol witness table accessor for type NSDecimalNumber and conformance NSObject();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v105, v106, v107 & 1);
      v108 = v15._object;
      MEMORY[0x26D620F90](v15._countAndFlagsBits);

      v111 = v153;
      v110 = v154;

      outlined destroy of String.UTF8View(v109);
      MEMORY[0x26D620710](v111, v110);
      v112 = v16;
      dispatch thunk of UsoEntityBuilder_common_Number.setName(value:)();

      dispatch thunk of UsoEntityBuilder_common_CurrencyAmount.setAmount(value:)();

      MEMORY[0x277D82BD8](v114);
    }

    v101 = [v116 currencyCode];
    if (v101)
    {
      v100 = v101;
      v95 = v101;
      v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v97 = v17;
      MEMORY[0x277D82BD8](v95);
      v98 = v96;
      v99 = v97;
    }

    else
    {
      v98 = 0;
      v99 = 0;
    }

    v93 = v99;
    v94 = v98;
    if (v99)
    {
      v91 = v94;
      v92 = v93;
      v90 = v93;
      v88 = v94;
      v158 = v94;
      v159 = v93;
      type metadata accessor for UsoEntityBuilder_common_Currency();
      v89 = UsoEntityBuilder_common_Currency.__allocating_init()();
      v157 = v89;
      dispatch thunk of UsoEntityBuilder_common_Currency.setName(value:)();

      dispatch thunk of UsoEntityBuilder_common_CurrencyAmount.setCurrency(value:)();
    }

    dispatch thunk of UsoEntityBuilder_common_PaymentAccount.setBalance(value:)();

    MEMORY[0x277D82BD8](v116);
  }

  v87 = [v148 nickname];
  if (v87)
  {
    v86 = v87;
    v81 = v87;
    INSpeakableString.toSpeakableString.getter();
    MEMORY[0x277D82BD8](v81);
    v82 = SpeakableString.print.getter();
    v83 = v18;
    (*(v133 + 8))(v136, v132);
    v84 = v82;
    v85 = v83;
  }

  else
  {
    v84 = 0;
    v85 = 0;
  }

  v79 = v85;
  v80 = v84;
  if (v85)
  {
    v77 = v80;
    v78 = v79;
    v76 = v79;
    v162 = v80;
    v163 = v79;
    dispatch thunk of UsoEntityBuilder_common_PaymentAccount.setNickname(value:)();
  }

  v75 = [v148 organizationName];
  if (v75)
  {
    v74 = v75;
    v69 = v75;
    INSpeakableString.toSpeakableString.getter();
    MEMORY[0x277D82BD8](v69);
    v70 = SpeakableString.print.getter();
    v71 = v19;
    (*(v133 + 8))(v136, v132);
    v72 = v70;
    v73 = v71;
  }

  else
  {
    v72 = 0;
    v73 = 0;
  }

  v67 = v73;
  v68 = v72;
  if (v73)
  {
    v65 = v68;
    v66 = v67;
    v64 = v67;
    v164 = v68;
    v165 = v67;
    dispatch thunk of UsoEntityBuilder_common_PaymentAccount.setOrganization(value:)();
  }

  v63 = MEMORY[0x26D61F7C0](v145);
  if (v63)
  {
    v62 = v63;
    v61 = v63;
    v166 = v63;

    return v61;
  }

  else
  {
    v52 = 0;
    v58 = type metadata accessor for TransformationError();
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    v45 = 1;
    v60 = swift_allocError();
    v57 = v21;
    v42 = 1;
    v22 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v39 = &v169;
    v169 = v22;
    v170 = v23;
    v44 = "";
    v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v52, v45 & 1);
    v38[1] = v24._object;
    MEMORY[0x26D620F90](v24._countAndFlagsBits);

    v25 = type metadata accessor for INPaymentAccount();
    DefaultStringInterpolation.appendInterpolation(_:)(v25);
    v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v44, v52, v45 & 1);
    v38[2] = v26._object;
    MEMORY[0x26D620F90](v26._countAndFlagsBits);

    v41 = v169;
    v40 = v170;

    outlined destroy of String.UTF8View(v39);
    v53 = MEMORY[0x26D620710](v41, v40);
    v54 = v27;
    v28 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v47 = &v167;
    v167 = v28;
    v168 = v29;
    v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v44, v52, v45 & 1);
    v43 = v30._object;
    MEMORY[0x26D620F90](v30._countAndFlagsBits);

    v31 = type metadata accessor for UsoEntity();
    DefaultStringInterpolation.appendInterpolation(_:)(v31);
    v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v44, v52, v45 & 1);
    v46 = v32._object;
    MEMORY[0x26D620F90](v32._countAndFlagsBits);

    v49 = v167;
    v48 = v168;

    outlined destroy of String.UTF8View(v47);
    v50 = MEMORY[0x26D620710](v49, v48);
    v51 = v33;
    v178 = v53;
    v179 = v54;
    v180 = v50;
    v181 = v33;
    v182 = 0;
    v183 = 0;
    v184 = 5;
    v55 = PaymentsError.errorDescription.getter();
    v56 = v34;
    outlined consume of PaymentsError(v53, v54, v50, v51, v52, v52, 5);
    v35 = v56;
    v36 = v57;
    v37 = v58;
    *v57 = v55;
    v36[1] = v35;
    (*(*(v37 - 8) + 104))();
    swift_willThrow();

    return v59;
  }
}

{
  v85 = 0;
  v77 = 0;
  v75 = 0;
  v76 = 0;
  v74 = 0;
  v73 = 0;
  v71 = 0;
  v72 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v86 = a1;
  type metadata accessor for UsoEntityBuilder_common_Payment();
  v58 = UsoEntityBuilder_common_Payment.__allocating_init()();
  v84 = v58;
  v82 = [a1 payee];
  MEMORY[0x277D82BE0](a1);
  if (v82)
  {
    v83 = v82;
  }

  else
  {
    v83 = [a1 payer];
  }

  MEMORY[0x277D82BD8](a1);
  v57 = v83;
  if (v83)
  {
    v64 = v83;
    type metadata accessor for UsoEntityBuilder_common_PaymentAccount();
    v63 = UsoEntityBuilder_common_PaymentAccount.__allocating_init()();
    type metadata accessor for UsoEntityBuilder_common_Person();
    v62 = UsoEntityBuilder_common_Person.__allocating_init()();
    v1 = [v57 personHandle];
    v61 = v1;
    if (v1)
    {
      v55 = v61;
      MEMORY[0x277D82BE0](v61);
      outlined destroy of SFRichText?(&v61);
      v56 = [v55 value];
      if (v56)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v2;
        MEMORY[0x277D82BD8](v56);
        v54 = v53;
      }

      else
      {
        v54 = 0;
      }

      MEMORY[0x277D82BD8](v55);
      v52 = v54;
    }

    else
    {
      outlined destroy of SFRichText?(&v61);
      v52 = 0;
    }

    if (v52)
    {
      type metadata accessor for UsoEntityBuilder_common_ContactAddress();
      UsoEntityBuilder_common_ContactAddress.__allocating_init()();
      dispatch thunk of UsoEntityBuilder_common_ContactAddress.setValue(value:)();

      dispatch thunk of UsoEntityBuilder_common_Person.setSpecifyingContactAddress(value:)();

      v51 = [v57 displayName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      dispatch thunk of UsoEntityBuilder_common_Person.setName(value:)();

      MEMORY[0x277D82BD8](v51);

      dispatch thunk of UsoEntityBuilder_common_PaymentAccount.setHolder(value:)();
    }

    v60 = [a1 payee];
    v50 = v60 != 0;
    outlined destroy of SFRichText?(&v60);

    if (v50)
    {
      dispatch thunk of UsoEntityBuilder_common_Payment.setPayee(value:)();
    }

    else
    {
      dispatch thunk of UsoEntityBuilder_common_Payment.setPayer(value:)();
    }

    MEMORY[0x277D82BD8](v57);
  }

  v49 = [a1 currencyAmount];
  if (v49)
  {
    v74 = v49;
    type metadata accessor for UsoEntityBuilder_common_CurrencyAmount();
    v73 = UsoEntityBuilder_common_CurrencyAmount.__allocating_init()();
    v3 = [v49 amount];
    v48 = v3;
    if (v3)
    {
      v69 = v3;
      type metadata accessor for UsoEntityBuilder_common_Number();
      v68 = UsoEntityBuilder_common_Number.__allocating_init()();
      v66 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v67 = v4;
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](countAndFlagsBits);

      v65 = v48;
      type metadata accessor for NSDecimalNumber();
      lazy protocol witness table accessor for type NSDecimalNumber and conformance NSObject();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v6);

      v47 = v66;
      v46 = v67;

      outlined destroy of String.UTF8View(&v66);
      MEMORY[0x26D620710](v47, v46);
      dispatch thunk of UsoEntityBuilder_common_Number.setName(value:)();

      dispatch thunk of UsoEntityBuilder_common_CurrencyAmount.setAmount(value:)();

      MEMORY[0x277D82BD8](v48);
    }

    v45 = [v49 currencyCode];
    if (v45)
    {
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v7;
      MEMORY[0x277D82BD8](v45);
      v43 = v41;
      v44 = v42;
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    if (v44)
    {
      v71 = v43;
      v72 = v44;
      type metadata accessor for UsoEntityBuilder_common_Currency();
      v70 = UsoEntityBuilder_common_Currency.__allocating_init()();
      dispatch thunk of UsoEntityBuilder_common_Currency.setName(value:)();

      dispatch thunk of UsoEntityBuilder_common_CurrencyAmount.setCurrency(value:)();
    }

    dispatch thunk of UsoEntityBuilder_common_Payment.setAmount(value:)();

    MEMORY[0x277D82BD8](v49);
  }

  v40 = [a1 note];
  if (v40)
  {
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v8;
    MEMORY[0x277D82BD8](v40);
    v38 = v36;
    v39 = v37;
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  if (v39)
  {
    v75 = v38;
    v76 = v39;
    dispatch thunk of UsoEntityBuilder_common_Payment.setMemo(value:)();
  }

  v35 = MEMORY[0x26D61F7C0](v58);
  if (v35)
  {
    v77 = v35;

    return v35;
  }

  else
  {
    v33 = type metadata accessor for TransformationError();
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    swift_allocError();
    v32 = v10;
    v80 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v81 = v11;
    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v12);

    v13 = type metadata accessor for INPaymentRecord();
    DefaultStringInterpolation.appendInterpolation(_:)(v13);
    v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v14);

    v23 = v80;
    v22 = v81;

    outlined destroy of String.UTF8View(&v80);
    v28 = MEMORY[0x26D620710](v23, v22);
    v29 = v15;
    v78 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v79 = v16;
    v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v17);

    v18 = type metadata accessor for UsoEntity();
    DefaultStringInterpolation.appendInterpolation(_:)(v18);
    v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v19);

    v25 = v78;
    v24 = v79;

    outlined destroy of String.UTF8View(&v78);
    v26 = MEMORY[0x26D620710](v25, v24);
    v27 = v20;
    v87 = v28;
    v88 = v29;
    v89 = v26;
    v90 = v20;
    v91 = 0;
    v92 = 0;
    v93 = 5;
    v30 = PaymentsError.errorDescription.getter();
    v31 = v21;
    outlined consume of PaymentsError(v28, v29, v26, v27, 0, 0, 5);
    *v32 = v30;
    v32[1] = v31;
    (*(*(v33 - 8) + 104))();
    swift_willThrow();

    return v34;
  }
}

uint64_t UsoEntity.eraseToAny.getter()
{

  static UsoEntity_CodeGenConverter.convert(entity:)();
}

uint64_t closure #1 in UsoEntity_common_Person.contactId.getter(uint64_t a1)
{
  v18 = a1;
  v34 = 0;
  v23 = type metadata accessor for IdentifierAppBundle();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v19 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, v2);
  v22 = &v8 - v19;
  v34 = a1;
  UsoIdentifier.appBundleSemantic.getter();
  v24 = IdentifierAppBundle.rawValue.getter();
  v27 = v3;
  (*(v20 + 8))(v22, v23);
  v4 = AppUtil.usoContactsBundleId.unsafeMutableAddressor();
  v25 = *v4;
  v26 = *(v4 + 1);

  v28 = MEMORY[0x26D620740](v24, v27, v25, v26);

  if ((v28 & 1) == 0)
  {
    v9 = 0;
    return v9 & 1;
  }

  v15 = UsoIdentifier.namespace.getter();
  v16 = v5;

  v14 = UsoIdentifierNamespace.rawValue.getter(0);
  v17 = v6;

  v32[0] = v15;
  v32[1] = v16;
  *&v33 = v14;
  *(&v33 + 1) = v17;
  if (!v16)
  {
    if (!*(&v33 + 1))
    {
      outlined destroy of String.UTF8View(v32);
      v13 = 1;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  outlined init with copy of String(v32, &v31);
  if (!*(&v33 + 1))
  {
    outlined destroy of String.UTF8View(&v31);
LABEL_9:
    outlined destroy of DIIdentifier(v32);
    v13 = 0;
    goto LABEL_8;
  }

  v11 = &v30;
  v30 = v31;
  v10 = &v29;
  v29 = v33;
  v12 = MEMORY[0x26D620740](v31, *(&v31 + 1), v33, *(&v33 + 1));
  outlined destroy of String.UTF8View(v10);
  outlined destroy of String.UTF8View(v11);
  outlined destroy of String.UTF8View(v32);
  v13 = v12;
LABEL_8:
  v8 = v13;

  v9 = v8;
  return v9 & 1;
}

uint64_t closure #1 in UsoEntity_common_App.appIdentifier.getter(uint64_t a1)
{
  v21 = a1;
  v13 = UsoIdentifier.namespace.getter();
  v14 = v1;

  v15 = *AppUtil.usoNamespace.unsafeMutableAddressor();

  v19[0] = v13;
  v19[1] = v14;
  v20 = v15;
  if (v14)
  {
    outlined init with copy of String(v19, &v18);
    if (*(&v20 + 1))
    {
      v17 = v18;
      v16 = v20;
      v11 = MEMORY[0x26D620740](v18, *(&v18 + 1), v20, *(&v20 + 1));
      outlined destroy of String.UTF8View(&v16);
      outlined destroy of String.UTF8View(&v17);
      outlined destroy of String.UTF8View(v19);
      v12 = v11;
      goto LABEL_7;
    }

    outlined destroy of String.UTF8View(&v18);
    goto LABEL_9;
  }

  if (*(&v20 + 1))
  {
LABEL_9:
    outlined destroy of DIIdentifier(v19);
    v12 = 0;
    goto LABEL_7;
  }

  outlined destroy of String.UTF8View(v19);
  v12 = 1;
LABEL_7:

  if (v12)
  {
    v5 = UsoIdentifier.appBundleId.getter();
    v8 = v2;
    v3 = AppUtil.usoAppBundleId.unsafeMutableAddressor();
    v6 = *v3;
    v7 = *(v3 + 1);

    v9 = MEMORY[0x26D620740](v5, v8, v6, v7);

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t closure #2 in UsoEntity_common_App.appIdentifier.getter@<X0>(uint64_t *a2@<X8>)
{
  result = UsoIdentifier.value.getter();
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v18 = a7;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v25 = a6;
  v39 = a4;
  v38 = a5;
  v26 = *(a4 - 8);
  v27 = a4 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v7, a2);
  v29 = v17 - v28;
  v35 = *(v9 + 16);
  v37 = v35;
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v30 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v8, v17 - v28);
  v31 = v17 - v30;
  v32 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v10, v17 - v30);
  v36 = v17 - v32;
  _sxSgs5ErrorRd__Ri_d_0_r_0_lWOc(v12, v17 - v32, v13, v14);
  if ((*(v33 + 48))(v36, 1, v35) == 1)
  {
    result = (*(*(v23 - 8) + 56))(v18, 1);
    v17[1] = v24;
  }

  else
  {
    (*(v33 + 32))(v31, v36, v35);
    v16 = v24;
    v19(v31, v29);
    v17[0] = v16;
    (*(v33 + 8))(v31, v35);
    if (v16)
    {
      return (*(v26 + 32))(v25, v29, v22);
    }

    else
    {
      (*(*(v23 - 8) + 56))(v18, 0, 1);
      return v17[0];
    }
  }

  return result;
}

uint64_t closure #3 in UsoEntity_common_App.appIdentifier.getter(uint64_t a1)
{
  v24 = a1;
  v15 = UsoIdentifier.namespace.getter();
  v16 = v1;

  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appName", 7uLL, 1);

  v22[0] = v15;
  v22[1] = v16;
  v23 = v2;
  if (v16)
  {
    outlined init with copy of String(v22, &v19);
    if (v23._object)
    {
      v18 = v19;
      v17 = v23;
      v13 = MEMORY[0x26D620740](v19, *(&v19 + 1), v23._countAndFlagsBits, v23._object);
      outlined destroy of String.UTF8View(&v17);
      outlined destroy of String.UTF8View(&v18);
      outlined destroy of String.UTF8View(v22);
      v14 = v13;
      goto LABEL_7;
    }

    outlined destroy of String.UTF8View(&v19);
    goto LABEL_9;
  }

  if (v23._object)
  {
LABEL_9:
    outlined destroy of DIIdentifier(v22);
    v14 = 0;
    goto LABEL_7;
  }

  outlined destroy of String.UTF8View(v22);
  v14 = 1;
LABEL_7:

  if (v14)
  {
    v9 = UsoIdentifier.appBundleId.getter();
    v10 = v3;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.sirinl", 0x15uLL, 1)._countAndFlagsBits;
    v11 = MEMORY[0x26D620740](v9, v10, countAndFlagsBits);

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v21[0] = UsoIdentifier.value.getter();
    v21[1] = v5;
    v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
    lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.contains<A>(_:)();
    outlined destroy of String.UTF8View(&v20);
    outlined destroy of String.UTF8View(v21);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t closure #1 in UsoEntity_common_PaymentAccount.accountAsINType.getter(uint64_t a1)
{
  v13 = a1;
  v6 = UsoIdentifier.namespace.getter();
  v7 = v1;

  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsAccountType", 0x13uLL, 1);

  v11[0] = v6;
  v11[1] = v7;
  v12 = v2;
  if (!v7)
  {
    if (!v12._object)
    {
      outlined destroy of String.UTF8View(v11);
      v5 = 1;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  outlined init with copy of String(v11, &v10);
  if (!v12._object)
  {
    outlined destroy of String.UTF8View(&v10);
LABEL_8:
    outlined destroy of DIIdentifier(v11);
    v5 = 0;
    goto LABEL_7;
  }

  v9 = v10;
  v8 = v12;
  v4 = MEMORY[0x26D620740](v10, *(&v10 + 1), v12._countAndFlagsBits, v12._object);
  outlined destroy of String.UTF8View(&v8);
  outlined destroy of String.UTF8View(&v9);
  outlined destroy of String.UTF8View(v11);
  v5 = v4;
LABEL_7:

  return v5 & 1;
}

uint64_t implicit closure #2 in UsoEntity_common_CurrencyAmount.currencyIdentifier.getter()
{
  v16 = 0;
  v15 = type metadata accessor for Locale();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v10 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15, v0);
  v14 = &v5 - v10;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8CurrencyVSgMd, _s10Foundation6LocaleV8CurrencyVSgMR);
  v11 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2);
  v17 = &v5 - v11;
  static Locale.current.getter();
  Locale.currency.getter();
  (*(v12 + 8))(v14, v15);
  v18 = type metadata accessor for Locale.Currency();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  if ((*(v19 + 48))(v17, 1) == 1)
  {
    outlined destroy of Locale.Currency?(v17);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v6 = MEMORY[0x26D61E230]();
    v7 = v3;
    (*(v19 + 8))(v17, v18);
    v8 = v6;
    v9 = v7;
  }

  v5 = v21;
  v21[0] = v8;
  v21[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  return String.init<A>(describing:)();
}

BOOL closure #2 in UsoEntity_common_CurrencyAmount.currencyIdentifier.getter(uint64_t a1)
{
  UsoIdentifier.value.getter();
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ambiguous", 9uLL, 1);
  v3 = String.hasPrefix(_:)(v1);

  return !v3;
}

uint64_t outlined destroy of Locale.Currency?(uint64_t a1)
{
  v3 = type metadata accessor for Locale.Currency();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type NSDecimalNumber and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type NSDecimalNumber and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSDecimalNumber and conformance NSObject)
  {
    type metadata accessor for NSDecimalNumber();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSDecimalNumber and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

void *_sxSgs5ErrorRd__Ri_d_0_r_0_lWOc(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(void *a1, void *a2, void *a3, void *a4)
{
  v15 = 0;
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  outlined init with copy of GlobalsProviding(a1, v14);
  outlined init with take of CommonLabelsProviding(v14, (v4 + 16));
  outlined init with copy of GlobalsProviding(a2, v13);
  outlined init with take of CommonLabelsProviding(v13, (v4 + 56));
  outlined init with copy of GlobalsProviding(a3, v12);
  outlined init with take of CommonLabelsProviding(v12, (v4 + 96));
  outlined init with copy of GlobalsProviding(a4, v11);
  outlined init with take of CommonLabelsProviding(v11, (v4 + 136));
  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t Globals.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  return v2;
}

uint64_t SiriKitContactResolver.defaultConfig.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultConfig != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ContactResolverConfig();
  return __swift_project_value_buffer(v0, static SiriKitContactResolver.defaultConfig);
}

uint64_t one-time initialization function for defaultConfig()
{
  v19 = 0;
  v9 = (*(*(type metadata accessor for ContactResolverDomain() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v0);
  v23 = &v9 - v9;
  v10 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v1);
  v32 = &v9 - v10;
  v22 = type metadata accessor for RecommenderType();
  v20 = *(v22 - 8);
  v21 = v22 - 8;
  v11 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v2);
  v26 = &v9 - v11;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v3);
  v25 = &v9 - v12;
  v18 = type metadata accessor for SearchSuggestedContacts();
  v16 = *(v18 - 8);
  v17 = v18 - 8;
  v13 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v4);
  v24 = &v9 - v13;
  v15 = type metadata accessor for ContactResolverConfig();
  v14 = static SiriKitContactResolver.defaultConfig;
  __swift_allocate_value_buffer(v15, static SiriKitContactResolver.defaultConfig);
  v27 = __swift_project_value_buffer(v15, v14);
  (*(v16 + 104))(v24, *MEMORY[0x277D56148], v18);
  static ContactHandleTypePreference.preferPhone.getter();
  v5 = type metadata accessor for ContactHandleTypePreference();
  (*(*(v5 - 8) + 56))(v25, 0, 1);
  (*(v20 + 104))(v26, *MEMORY[0x277D560D0], v22);
  v28 = default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();
  v29 = v6;
  v30 = default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();
  v31 = v7;
  default argument 2 of ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)(v30);
  has_malloc_size = _swift_stdlib_has_malloc_size();
  v34 = _swift_stdlib_has_malloc_size();
  v35 = default argument 5 of ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
  default argument 6 of ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
  return ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
}

{
  v3 = type metadata accessor for ContactResolverConfig();
  __swift_allocate_value_buffer(v3, static ContactResolverConfig.defaultConfig);
  v1 = __swift_project_value_buffer(v3, static ContactResolverConfig.defaultConfig);
  v2 = SiriKitContactResolver.defaultConfig.unsafeMutableAddressor();
  swift_beginAccess();
  (*(*(v3 - 8) + 16))(v1, v2);
  return swift_endAccess();
}

uint64_t static SiriKitContactResolver.defaultConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = SiriKitContactResolver.defaultConfig.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = type metadata accessor for ContactResolverConfig();
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t static SiriKitContactResolver.defaultConfig.setter(uint64_t a1)
{
  v10 = a1;
  v11 = type metadata accessor for ContactResolverConfig();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v1);
  v6 = &v3 - v4;
  v5 = SiriKitContactResolver.defaultConfig.unsafeMutableAddressor();
  (*(v8 + 16))(v6, v10, v11);
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t protocol witness for ContactResolving.resolve(queries:config:) in conformance SiriKitContactResolver()
{
  v3 = SiriKitContactResolver.resolve(queries:config:)();
  if (v0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for ContactResolving.findMatches(queries:config:) in conformance SiriKitContactResolver()
{
  v3 = SiriKitContactResolver.findMatches(queries:config:)();
  if (v0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t ContactResolverConfig.defaultConfig.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultConfig != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ContactResolverConfig();
  return __swift_project_value_buffer(v0, static ContactResolverConfig.defaultConfig);
}

uint64_t static ContactResolverConfig.defaultConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = ContactResolverConfig.defaultConfig.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = type metadata accessor for ContactResolverConfig();
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t static ContactResolverConfig.defaultConfig.setter(uint64_t a1)
{
  v10 = a1;
  v11 = type metadata accessor for ContactResolverConfig();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v1);
  v6 = &v3 - v4;
  v5 = ContactResolverConfig.defaultConfig.unsafeMutableAddressor();
  (*(v8 + 16))(v6, v10, v11);
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSS_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

void *static AceViewProviding.makeSash(app:isDisambiguation:)(uint64_t a1, char a2)
{
  type metadata accessor for SAUISash();
  v2 = SAUIAppPunchOut.__allocating_init()();
  v17 = v2;
  if (a2)
  {
    if (App.isFirstParty.getter(v2))
    {
      v15 = static AppUtil.CONTACTS_IOS_APP_BUNDLE_ID.getter();
    }

    else
    {
      v15 = App.appIdentifier.getter();
    }

    if (v3)
    {
      v13 = MEMORY[0x26D620690](v15);

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    [v17 setApplicationBundleIdentifier_];
    MEMORY[0x277D82BD8](v14);
  }

  else
  {
    if (App.isFirstParty.getter(v2))
    {
      v4 = AppUtil.MESSAGES_APP_BUNDLE_ID.unsafeMutableAddressor();
      v9 = *v4;
      v10 = *(v4 + 1);

      v11 = v9;
      v12 = v10;
    }

    else
    {
      v11 = App.appIdentifier.getter();
      v12 = v5;
    }

    if (v12)
    {
      v8 = MEMORY[0x26D620690](v11);

      [v17 setApplicationBundleIdentifier_];
    }

    else
    {
      [v17 setApplicationBundleIdentifier_];
    }

    MEMORY[0x277D82BD8](v7);
  }

  return v17;
}

unint64_t type metadata accessor for SAUISash()
{
  v2 = lazy cache variable for type metadata for SAUISash;
  if (!lazy cache variable for type metadata for SAUISash)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAUISash);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t static AceViewProviding.makeAceViewsForDisambiguation(app:disambiguationList:deviceState:disambiguationSnippetProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v76 = a5;
  v75 = a4;
  v74 = a3;
  v78 = a2;
  v77 = a1;
  v87 = 0;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v65 = 0;
  v66 = type metadata accessor for ImageSize();
  v67 = *(v66 - 8);
  v68 = v67;
  MEMORY[0x28223BE20](0, v66);
  v69 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for UnlockDevicePolicy();
  v71 = *(v70 - 8);
  v72 = v71;
  MEMORY[0x28223BE20](v87, v70);
  v73 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Logger();
  v79 = v84;
  v80 = *(v84 - 8);
  v83 = v80;
  v81 = v80;
  v7 = MEMORY[0x28223BE20](v77, v78);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v9;
  v102 = v7;
  v101 = v10;
  v100 = v11;
  v98 = v12;
  v99 = v13;
  v14 = Logger.payments.unsafeMutableAddressor();
  (*(v83 + 16))(v9, v14, v84);
  v89 = Logger.logObject.getter();
  v85 = v89;
  v88 = static os_log_type_t.debug.getter();
  v86 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v90 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v89, v88))
  {
    v15 = v65;
    v56 = static UnsafeMutablePointer.allocate(capacity:)();
    v52 = v56;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v54 = 0;
    v57 = createStorage<A>(capacity:type:)(0, v53, v53);
    v55 = v57;
    v58 = createStorage<A>(capacity:type:)(v54, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v94 = v56;
    v93 = v57;
    v92 = v58;
    v59 = 0;
    v60 = &v94;
    serialize(_:at:)(0, &v94);
    serialize(_:at:)(v59, v60);
    v91 = v90;
    v61 = &v25;
    MEMORY[0x28223BE20](&v25, v16);
    v62 = &v25 - 6;
    *(&v25 - 4) = v17;
    *(&v25 - 3) = &v93;
    *(&v25 - 2) = &v92;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v64 = v15;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v85, v86, "#AceViewProviding building disambiguation snippet", v52, 2u);
      v50 = 0;
      destroyStorage<A>(_:count:)(v55, 0, v53);
      destroyStorage<A>(_:count:)(v58, v50, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v52, MEMORY[0x277D84B78]);

      v51 = v64;
    }
  }

  else
  {

    v51 = v65;
  }

  (*(v81 + 8))(v82, v79);
  v44 = v74[3];
  v45 = v74[4];
  __swift_project_boxed_opaque_existential_1(v74, v44);
  static UnlockDevicePolicy.default.getter();
  v46 = dispatch thunk of DeviceState.isAuthenticated(for:)();
  (*(v72 + 8))(v73, v70);
  v47 = v46 ^ 1;
  v97 = (v46 ^ 1) & 1;
  v49 = v74[3];
  v48 = v74[4];
  __swift_project_boxed_opaque_existential_1(v74, v49);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v42 = type metadata accessor for SAAceView();
    v41 = _allocateUninitializedArray<A>(_:)();
    v39 = v18;
    v38 = SiriKitDisambiguationList.disambiguationItems.getter();
    v37 = v74[3];
    v36 = v74[4];
    __swift_project_boxed_opaque_existential_1(v74, v37);
    v19 = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    v40 = (*(v76 + 16))(v38, v19 & 1);

    *v39 = v40;
    _finalizeUninitializedArray<A>(_:)();
    return v20;
  }

  else
  {
    v34 = SiriKitDisambiguationList.disambiguationItems.getter();
    (*(v68 + 104))(v69, *MEMORY[0x277D5C1E0], v66);
    v35 = (*(v76 + 8))(v34, v47 & 1, v69);
    v33 = v35;
    (*(v68 + 8))(v69, v66);

    v96 = v35;

    if (v77)
    {
      v32 = v77;
      v31 = v77;
      v95 = v77;
      v30 = static AceViewProviding.makeSash(app:isDisambiguation:)(v77, 1);
      [v33 setSash_];
    }

    v27 = type metadata accessor for SAAceView();
    v28 = _allocateUninitializedArray<A>(_:)();
    v26 = v21;
    v22 = v33;
    *v26 = v33;
    _finalizeUninitializedArray<A>(_:)();
    v29 = v23;

    return v29;
  }
}

id static AceViewProviding.makePersonPicker(parameterName:)()
{
  type metadata accessor for SAABPersonPicker();
  v6 = SAUIAppPunchOut.__allocating_init()();
  MEMORY[0x277D82BE0](v6);
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsContactId", 0x11uLL, 1)._countAndFlagsBits;
  v3 = MEMORY[0x26D620690](countAndFlagsBits);

  [v6 setIdNodeName_];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v6);
  [v6 setShowImmediately_];
  MEMORY[0x277D82BE0](v6);
  [v6 setCanBeRefreshed_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v6);
  [v6 setCanUseServerTTS_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v6);
  v4 = *MEMORY[0x277D47C68];
  MEMORY[0x277D82BE0](*MEMORY[0x277D47C68]);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = MEMORY[0x26D620690](v1);

  MEMORY[0x277D82BD8](v4);
  [v6 setItemType_];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id static AceViewProviding.makePlaceHolderCardSection(commands:)(uint64_t a1)
{
  v15 = a1;
  v19 = 0;
  v18 = 0;
  v14 = 0;
  v10 = type metadata accessor for UUID();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1);
  v11 = &v6 - v7;
  v19 = v2;
  type metadata accessor for SFCardSection();
  v17 = SAUIAppPunchOut.__allocating_init()();
  v18 = v17;
  UUID.init()();
  v3 = UUID.uuidString.getter();
  v12 = v4;
  v13 = MEMORY[0x26D620690](v3);
  (*(v8 + 8))(v11, v10);

  [v17 setCardSectionId_];
  MEMORY[0x277D82BD8](v13);

  type metadata accessor for SFAbstractCommand();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 setCommands_];
  MEMORY[0x277D82BD8](isa);
  return v17;
}

id static AceViewProviding.makeTitleCardSection(title:keyPaths:commands:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v15 = a2;
  v25 = a3;
  v28 = a4;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v27 = 0;
  v21 = type metadata accessor for UUID();
  v19 = *(v21 - 8);
  v20 = v21 - 8;
  v13 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v15);
  v22 = &v12 - v13;
  v34 = v4;
  v35 = v5;
  v33 = v6;
  v32 = v7;
  type metadata accessor for SFTitleCardSection();
  v30 = SAUIAppPunchOut.__allocating_init()();
  v31 = v30;

  v16 = MEMORY[0x26D620690](v14, v15);

  [v30 setTitle_];
  MEMORY[0x277D82BD8](v16);
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CardSectionTypeTitle", 0x14uLL, 1);
  object = v8._object;
  v18 = MEMORY[0x26D620690](v8._countAndFlagsBits);

  [v30 setType_];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BE0](v30);
  [v30 setSeparatorStyle_];
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BE0](v30);
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v23 = v10;
  v24 = MEMORY[0x26D620690](v9);
  (*(v19 + 8))(v22, v21);

  [v30 setCardSectionId_];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BE0](v30);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v30 setParameterKeyPaths_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BE0](v30);

  type metadata accessor for SFAbstractCommand();
  v29 = Array._bridgeToObjectiveC()().super.isa;

  [v30 setCommands_];
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  return v30;
}

uint64_t static AceViewProviding.makePersonLabel(person:recipientIndex:deviceState:)(void *a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v61 = a2;
  v58 = a1;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v59 = 0;
  v67 = 0;
  v66 = 0;
  v62 = type metadata accessor for Logger();
  v63 = *(v62 - 8);
  v64 = v63;
  MEMORY[0x28223BE20](v62 - 8, v61);
  v65 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1;
  v74 = v5;
  v73 = v6;
  if (INPerson.hasHandleValue.getter())
  {
    v72 = [v58 personHandle];
    if (v72)
    {
      v56 = v72;
      v55 = v72;
      v7 = v72;
      outlined destroy of SFRichText?(&v72);
      v57 = [v56 value];
      if (v57)
      {
        v54 = v57;
        v49 = v57;
        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v8;

        v52 = v50;
        v53 = v51;
      }

      else
      {
        v52 = 0;
        v53 = 0;
      }

      v46 = v53;
      v45 = v52;

      v47 = v45;
      v48 = v46;
    }

    else
    {
      outlined destroy of SFRichText?(&v72);
      v47 = 0;
      v48 = 0;
    }

    v43 = v48;
    v44 = v47;
    if (v48)
    {
      v41 = v44;
      v42 = v43;
      v66 = v44;
      v67 = v43;
      v39._countAndFlagsBits = v44;
      v39._object = v43;
      v40 = v59;
    }

    else
    {
      v9 = v65;
      v10 = Logger.payments.unsafeMutableAddressor();
      (*(v64 + 16))(v9, v10, v62);
      v37 = Logger.logObject.getter();
      v34 = v37;
      v36 = static os_log_type_t.error.getter();
      v35 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v38 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v37, v36))
      {
        v11 = v59;
        v25 = static UnsafeMutablePointer.allocate(capacity:)();
        v21 = v25;
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v23 = 0;
        v26 = createStorage<A>(capacity:type:)(0, v22, v22);
        v24 = v26;
        v27 = createStorage<A>(capacity:type:)(v23, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v71 = v25;
        v70 = v26;
        v69 = v27;
        v28 = 0;
        v29 = &v71;
        serialize(_:at:)(0, &v71);
        serialize(_:at:)(v28, v29);
        v68 = v38;
        v30 = &v16;
        MEMORY[0x28223BE20](&v16, v12);
        v31 = &v16 - 6;
        *(&v16 - 4) = v13;
        *(&v16 - 3) = &v70;
        *(&v16 - 2) = &v69;
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v33 = v11;
        if (v11)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v34, v35, "#AceViewProviding handle value is nil when recipient is specified by handle value", v21, 2u);
          v19 = 0;
          destroyStorage<A>(_:count:)(v24, 0, v22);
          destroyStorage<A>(_:count:)(v27, v19, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v21, MEMORY[0x277D84B78]);

          v20 = v33;
        }
      }

      else
      {

        v20 = v59;
      }

      v18 = v20;

      (*(v64 + 8))(v65, v62);
      v39 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      v40 = v18;
    }
  }

  else
  {
    v16 = [v58 displayName];
    v17._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17._object = v14;

    v39 = v17;
    v40 = v59;
  }

  return v39._countAndFlagsBits;
}

unint64_t type metadata accessor for SAABPersonPicker()
{
  v2 = lazy cache variable for type metadata for SAABPersonPicker;
  if (!lazy cache variable for type metadata for SAABPersonPicker)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAABPersonPicker);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SFTitleCardSection()
{
  v2 = lazy cache variable for type metadata for SFTitleCardSection;
  if (!lazy cache variable for type metadata for SFTitleCardSection)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SFTitleCardSection);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t protocol witness for PaymentConfirmationLabelProviding.confirmButtonLabel() in conformance SendPaymentCATs(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentCATs.confirmButtonLabel()(a1);
}

uint64_t protocol witness for PaymentSlotDisplayValueProviding.slotDisplayValue(slot:) in conformance SendPaymentCATs(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentCATs.slotDisplayValue(slot:)(a1, a2);
}

uint64_t protocol witness for PaymentSlotDisplayValueProviding.labelForResponseSlot(slot:) in conformance SendPaymentCATs(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentCATs.labelForResponseSlot(slot:)(a1, a2);
}

uint64_t SendPaymentCATs.confirmButtonLabel(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#ConfirmButtonLabel", 0x1EuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.confirmButtonLabel()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](SendPaymentCATs.confirmButtonLabel(), 0);
}

uint64_t SendPaymentCATs.confirmButtonLabel()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#ConfirmButtonLabel", 0x1EuLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#ConfirmButtonLabel", 0x1EuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.confirmSlotValue(slot:paymentsConcept:completion:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v43 = 0;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = v22 - v28;
  v43 = MEMORY[0x28223BE20](v33, v25);
  v42 = v5;
  v40 = v6;
  v41 = v7;
  v39 = v4;
  v34 = 1;
  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#ConfirmSlotValue", 0x1CuLL, 1);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v31 = _allocateUninitializedArray<A>(_:)();
  v32 = v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v34 & 1);
  v10 = v33;
  v11 = v35;
  *v32 = v9;
  outlined init with copy of SpeakableString?(v10, v11);
  v36 = type metadata accessor for SpeakableString();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  if ((*(v37 + 48))(v35, v34) == 1)
  {
    outlined destroy of SpeakableString?(v35);
    v21 = v32;
    v32[1]._countAndFlagsBits = 0;
    v21[1]._object = 0;
    v21[2]._countAndFlagsBits = 0;
    v21[2]._object = 0;
  }

  else
  {
    v12 = v32;
    v32[2]._object = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12[1]._countAndFlagsBits);
    (*(v37 + 32))(boxed_opaque_existential_1, v35, v36);
  }

  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);
  v32[3] = v14;

  if (v25)
  {
    v24 = v25;
    v23 = v25;
    v15 = type metadata accessor for PaymentsDialogConcept(0);
    v16 = v32;
    v17 = v23;
    v32[5]._object = v15;
    v16[4]._countAndFlagsBits = v17;
  }

  else
  {
    v20 = v32;
    v32[4]._countAndFlagsBits = 0;
    v20[4]._object = 0;
    v20[5]._countAndFlagsBits = 0;
    v20[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  v22[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v22[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.confirmSlotValue(slot:paymentsConcept:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4[10] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;

  return MEMORY[0x2822009F8](SendPaymentCATs.confirmSlotValue(slot:paymentsConcept:), 0);
}

uint64_t SendPaymentCATs.confirmSlotValue(slot:paymentsConcept:)()
{
  v15 = v0[10];
  v14 = v0[7];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#ConfirmSlotValue", 0x1CuLL, 1);
  v0[11] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v13 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v14, v15);
  v16 = type metadata accessor for SpeakableString();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1) == 1)
  {
    outlined destroy of SpeakableString?(v12[10]);
    v13[1]._countAndFlagsBits = 0;
    v13[1]._object = 0;
    v13[2]._countAndFlagsBits = 0;
    v13[2]._object = 0;
  }

  else
  {
    v11 = v12[10];
    v13[2]._object = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13[1]._countAndFlagsBits);
    (*(v17 + 32))(boxed_opaque_existential_1, v11, v16);
  }

  v10 = v12[8];
  v13[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);

  if (v10)
  {
    v9 = v12[8];
    v13[5]._object = type metadata accessor for PaymentsDialogConcept(0);
    v13[4]._countAndFlagsBits = v9;
  }

  else
  {
    v13[4]._countAndFlagsBits = 0;
    v13[4]._object = 0;
    v13[5]._countAndFlagsBits = 0;
    v13[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v12[12] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v12[13] = v4;
  *v4 = v12[2];
  v4[1] = RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:);
  v5 = v12[6];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

uint64_t SendPaymentCATs.confirmSlotValue(slot:paymentsConcept:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v29 = a1;
  v23 = a2;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v24 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = v19 - v24;
  v37 = MEMORY[0x28223BE20](v29, v23);
  v36 = v4;
  v35 = v3;
  v30 = 1;
  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#ConfirmSlotValue", 0x1CuLL, 1);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v27 = _allocateUninitializedArray<A>(_:)();
  v28 = v5;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v30 & 1);
  v7 = v29;
  v8 = v31;
  *v28 = v6;
  outlined init with copy of SpeakableString?(v7, v8);
  v32 = type metadata accessor for SpeakableString();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  if ((*(v33 + 48))(v31, v30) == 1)
  {
    outlined destroy of SpeakableString?(v31);
    v18 = v28;
    v28[1]._countAndFlagsBits = 0;
    v18[1]._object = 0;
    v18[2]._countAndFlagsBits = 0;
    v18[2]._object = 0;
  }

  else
  {
    v9 = v28;
    v28[2]._object = v32;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9[1]._countAndFlagsBits);
    (*(v33 + 32))(boxed_opaque_existential_1, v31, v32);
  }

  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);
  v28[3] = v11;

  if (v23)
  {
    v21 = v23;
    v20 = v23;
    v12 = type metadata accessor for PaymentsDialogConcept(0);
    v13 = v28;
    v14 = v20;
    v28[5]._object = v12;
    v13[4]._countAndFlagsBits = v14;
  }

  else
  {
    v17 = v28;
    v28[4]._countAndFlagsBits = 0;
    v17[4]._object = 0;
    v17[5]._countAndFlagsBits = 0;
    v17[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  v19[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v19[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.confirmSnippetHeader(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#ConfirmSnippetHeader", 0x20uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.confirmSnippetHeader()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](SendPaymentCATs.confirmSnippetHeader(), 0);
}

uint64_t SendPaymentCATs.confirmSnippetHeader()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#ConfirmSnippetHeader", 0x20uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#ConfirmSnippetHeader", 0x20uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.disambiguateSlotValue(slot:payee:completion:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v43 = 0;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = v22 - v28;
  v43 = MEMORY[0x28223BE20](v33, v25);
  v42 = v5;
  v40 = v6;
  v41 = v7;
  v39 = v4;
  v34 = 1;
  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#DisambiguateSlotValue", 0x21uLL, 1);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v31 = _allocateUninitializedArray<A>(_:)();
  v32 = v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v34 & 1);
  v10 = v33;
  v11 = v35;
  *v32 = v9;
  outlined init with copy of SpeakableString?(v10, v11);
  v36 = type metadata accessor for SpeakableString();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  if ((*(v37 + 48))(v35, v34) == 1)
  {
    outlined destroy of SpeakableString?(v35);
    v21 = v32;
    v32[1]._countAndFlagsBits = 0;
    v21[1]._object = 0;
    v21[2]._countAndFlagsBits = 0;
    v21[2]._object = 0;
  }

  else
  {
    v12 = v32;
    v32[2]._object = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12[1]._countAndFlagsBits);
    (*(v37 + 32))(boxed_opaque_existential_1, v35, v36);
  }

  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payee", 5uLL, 1);
  v32[3] = v14;

  if (v25)
  {
    v24 = v25;
    v23 = v25;
    v15 = type metadata accessor for DialogPerson();
    v16 = v32;
    v17 = v23;
    v32[5]._object = v15;
    v16[4]._countAndFlagsBits = v17;
  }

  else
  {
    v20 = v32;
    v32[4]._countAndFlagsBits = 0;
    v20[4]._object = 0;
    v20[5]._countAndFlagsBits = 0;
    v20[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  v22[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v22[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.disambiguateSlotValue(slot:payee:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4[10] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;

  return MEMORY[0x2822009F8](SendPaymentCATs.disambiguateSlotValue(slot:payee:), 0);
}

uint64_t SendPaymentCATs.disambiguateSlotValue(slot:payee:)()
{
  v15 = v0[10];
  v14 = v0[7];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#DisambiguateSlotValue", 0x21uLL, 1);
  v0[11] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v13 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v14, v15);
  v16 = type metadata accessor for SpeakableString();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1) == 1)
  {
    outlined destroy of SpeakableString?(v12[10]);
    v13[1]._countAndFlagsBits = 0;
    v13[1]._object = 0;
    v13[2]._countAndFlagsBits = 0;
    v13[2]._object = 0;
  }

  else
  {
    v11 = v12[10];
    v13[2]._object = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13[1]._countAndFlagsBits);
    (*(v17 + 32))(boxed_opaque_existential_1, v11, v16);
  }

  v10 = v12[8];
  v13[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payee", 5uLL, 1);

  if (v10)
  {
    v9 = v12[8];
    v13[5]._object = type metadata accessor for DialogPerson();
    v13[4]._countAndFlagsBits = v9;
  }

  else
  {
    v13[4]._countAndFlagsBits = 0;
    v13[4]._object = 0;
    v13[5]._countAndFlagsBits = 0;
    v13[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v12[12] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v12[13] = v4;
  *v4 = v12[2];
  v4[1] = RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:);
  v5 = v12[6];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

uint64_t SendPaymentCATs.disambiguateSlotValue(slot:payee:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v29 = a1;
  v23 = a2;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v24 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = v19 - v24;
  v37 = MEMORY[0x28223BE20](v29, v23);
  v36 = v4;
  v35 = v3;
  v30 = 1;
  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#DisambiguateSlotValue", 0x21uLL, 1);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v27 = _allocateUninitializedArray<A>(_:)();
  v28 = v5;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v30 & 1);
  v7 = v29;
  v8 = v31;
  *v28 = v6;
  outlined init with copy of SpeakableString?(v7, v8);
  v32 = type metadata accessor for SpeakableString();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  if ((*(v33 + 48))(v31, v30) == 1)
  {
    outlined destroy of SpeakableString?(v31);
    v18 = v28;
    v28[1]._countAndFlagsBits = 0;
    v18[1]._object = 0;
    v18[2]._countAndFlagsBits = 0;
    v18[2]._object = 0;
  }

  else
  {
    v9 = v28;
    v28[2]._object = v32;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9[1]._countAndFlagsBits);
    (*(v33 + 32))(boxed_opaque_existential_1, v31, v32);
  }

  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payee", 5uLL, 1);
  v28[3] = v11;

  if (v23)
  {
    v21 = v23;
    v20 = v23;
    v12 = type metadata accessor for DialogPerson();
    v13 = v28;
    v14 = v20;
    v28[5]._object = v12;
    v13[4]._countAndFlagsBits = v14;
  }

  else
  {
    v17 = v28;
    v28[4]._countAndFlagsBits = 0;
    v17[4]._object = 0;
    v17[5]._countAndFlagsBits = 0;
    v17[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  v19[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v19[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.handledSnippetHeader(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#HandledSnippetHeader", 0x20uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.handledSnippetHeader()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](SendPaymentCATs.handledSnippetHeader(), 0);
}

uint64_t SendPaymentCATs.handledSnippetHeader()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#HandledSnippetHeader", 0x20uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#HandledSnippetHeader", 0x20uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.intentConfirmationPrompt(paymentsConcept:completion:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#IntentConfirmationPrompt", 0x24uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for PaymentsDialogConcept(0);
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.intentConfirmationPrompt(paymentsConcept:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  return MEMORY[0x2822009F8](SendPaymentCATs.intentConfirmationPrompt(paymentsConcept:), 0);
}

uint64_t SendPaymentCATs.intentConfirmationPrompt(paymentsConcept:)()
{
  v11 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#IntentConfirmationPrompt", 0x24uLL, 1);
  v0[8] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v10 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);

  if (v11)
  {
    v8 = v9[6];
    v10[2]._object = type metadata accessor for PaymentsDialogConcept(0);
    v10[1]._countAndFlagsBits = v8;
  }

  else
  {
    v10[1]._countAndFlagsBits = 0;
    v10[1]._object = 0;
    v10[2]._countAndFlagsBits = 0;
    v10[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v6 = KeyValuePairs.init(dictionaryLiteral:)();
  v9[9] = v6;
  v7 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v3 = swift_task_alloc();
  v9[10] = v3;
  *v3 = v9[2];
  v3[1] = RequestPaymentCATs.intentConfirmationPrompt(paymentsConcept:);
  v4 = v9[5];

  return v7(v4, v1._countAndFlagsBits, v1._object, v6);
}

uint64_t SendPaymentCATs.intentConfirmationPrompt(paymentsConcept:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#IntentConfirmationPrompt", 0x24uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for PaymentsDialogConcept(0);
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.intentHandledResponse(app:completion:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#IntentHandledResponse", 0x21uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for SirikitApp();
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.intentHandledResponse(app:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  return MEMORY[0x2822009F8](SendPaymentCATs.intentHandledResponse(app:), 0);
}

uint64_t SendPaymentCATs.intentHandledResponse(app:)()
{
  v11 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#IntentHandledResponse", 0x21uLL, 1);
  v0[8] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v10 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (v11)
  {
    v8 = v9[6];
    v10[2]._object = type metadata accessor for SirikitApp();
    v10[1]._countAndFlagsBits = v8;
  }

  else
  {
    v10[1]._countAndFlagsBits = 0;
    v10[1]._object = 0;
    v10[2]._countAndFlagsBits = 0;
    v10[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v6 = KeyValuePairs.init(dictionaryLiteral:)();
  v9[9] = v6;
  v7 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v3 = swift_task_alloc();
  v9[10] = v3;
  *v3 = v9[2];
  v3[1] = RequestPaymentCATs.intentConfirmationPrompt(paymentsConcept:);
  v4 = v9[5];

  return v7(v4, v1._countAndFlagsBits, v1._object, v6);
}

uint64_t SendPaymentCATs.intentHandledResponse(app:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#IntentHandledResponse", 0x21uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for SirikitApp();
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.labelForResponseSlot(slot:completion:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v16 = a2;
  v17 = a3;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v15 - v18;
  v32 = MEMORY[0x28223BE20](v23, v16);
  v30 = v4;
  v31 = v5;
  v29 = v3;
  v24 = 1;
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#LabelForResponseSlot", 0x20uLL, 1);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v21 = _allocateUninitializedArray<A>(_:)();
  v22 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v24 & 1);
  v8 = v23;
  v9 = v25;
  *v22 = v7;
  outlined init with copy of SpeakableString?(v8, v9);
  v26 = type metadata accessor for SpeakableString();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  if ((*(v27 + 48))(v25, v24) == 1)
  {
    outlined destroy of SpeakableString?(v25);
    v14 = v22;
    v22[1]._countAndFlagsBits = 0;
    v14[1]._object = 0;
    v14[2]._countAndFlagsBits = 0;
    v14[2]._object = 0;
  }

  else
  {
    v10 = v22;
    v22[2]._object = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[1]._countAndFlagsBits);
    (*(v27 + 32))(boxed_opaque_existential_1, v25, v26);
  }

  _finalizeUninitializedArray<A>(_:)();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v15[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.labelForResponseSlot(slot:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[8] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;

  return MEMORY[0x2822009F8](SendPaymentCATs.labelForResponseSlot(slot:), 0);
}

uint64_t SendPaymentCATs.labelForResponseSlot(slot:)()
{
  v13 = v0[8];
  v12 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#LabelForResponseSlot", 0x20uLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v12, v13);
  v14 = type metadata accessor for SpeakableString();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    outlined destroy of SpeakableString?(v10[8]);
    p_countAndFlagsBits[2] = 0;
    p_countAndFlagsBits[3] = 0;
    p_countAndFlagsBits[4] = 0;
    p_countAndFlagsBits[5] = 0;
  }

  else
  {
    v9 = v10[8];
    p_countAndFlagsBits[5] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits + 2);
    (*(v15 + 32))(boxed_opaque_existential_1, v9, v14);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v10[10] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v10[11] = v4;
  *v4 = v10[2];
  v4[1] = RequestPaymentCATs.disambiguateSlotValue(slot:);
  v5 = v10[5];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

uint64_t SendPaymentCATs.labelForResponseSlot(slot:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[2] = a2;
  v19 = a1;
  v26 = 0;
  v25 = 0;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v13 - v14;
  v26 = MEMORY[0x28223BE20](v19, v3);
  v25 = v2;
  v20 = 1;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#LabelForResponseSlot", 0x20uLL, 1);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v17 = _allocateUninitializedArray<A>(_:)();
  v18 = v4;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v20 & 1);
  v6 = v19;
  v7 = v21;
  *v18 = v5;
  outlined init with copy of SpeakableString?(v6, v7);
  v22 = type metadata accessor for SpeakableString();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  if ((*(v23 + 48))(v21, v20) == 1)
  {
    outlined destroy of SpeakableString?(v21);
    v12 = v18;
    v18[1]._countAndFlagsBits = 0;
    v12[1]._object = 0;
    v12[2]._countAndFlagsBits = 0;
    v12[2]._object = 0;
  }

  else
  {
    v8 = v18;
    v18[2]._object = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v8[1]._countAndFlagsBits);
    (*(v23 + 32))(boxed_opaque_existential_1, v21, v22);
  }

  _finalizeUninitializedArray<A>(_:)();
  v13[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v13[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.noResultsResponse(app:completion:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#NoResultsResponse", 0x1DuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for SirikitApp();
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.noResultsResponse(app:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  return MEMORY[0x2822009F8](SendPaymentCATs.noResultsResponse(app:), 0);
}

uint64_t SendPaymentCATs.noResultsResponse(app:)()
{
  v11 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#NoResultsResponse", 0x1DuLL, 1);
  v0[8] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v10 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (v11)
  {
    v8 = v9[6];
    v10[2]._object = type metadata accessor for SirikitApp();
    v10[1]._countAndFlagsBits = v8;
  }

  else
  {
    v10[1]._countAndFlagsBits = 0;
    v10[1]._object = 0;
    v10[2]._countAndFlagsBits = 0;
    v10[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v6 = KeyValuePairs.init(dictionaryLiteral:)();
  v9[9] = v6;
  v7 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v3 = swift_task_alloc();
  v9[10] = v3;
  *v3 = v9[2];
  v3[1] = RequestPaymentCATs.intentConfirmationPrompt(paymentsConcept:);
  v4 = v9[5];

  return v7(v4, v1._countAndFlagsBits, v1._object, v6);
}

uint64_t SendPaymentCATs.noResultsResponse(app:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#NoResultsResponse", 0x1DuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for SirikitApp();
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.preHandleIntentResponse(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#PreHandleIntentResponse", 0x23uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.preHandleIntentResponse()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](SendPaymentCATs.preHandleIntentResponse(), 0);
}

uint64_t SendPaymentCATs.preHandleIntentResponse()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#PreHandleIntentResponse", 0x23uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#PreHandleIntentResponse", 0x23uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.promptCancelled(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#PromptCancelled", 0x1BuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.promptCancelled()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](SendPaymentCATs.promptCancelled(), 0);
}

uint64_t SendPaymentCATs.promptCancelled()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#PromptCancelled", 0x1BuLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#PromptCancelled", 0x1BuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.promptForSlotValue(slot:completion:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v16 = a2;
  v17 = a3;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v15 - v18;
  v32 = MEMORY[0x28223BE20](v23, v16);
  v30 = v4;
  v31 = v5;
  v29 = v3;
  v24 = 1;
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#PromptForSlotValue", 0x1EuLL, 1);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v21 = _allocateUninitializedArray<A>(_:)();
  v22 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v24 & 1);
  v8 = v23;
  v9 = v25;
  *v22 = v7;
  outlined init with copy of SpeakableString?(v8, v9);
  v26 = type metadata accessor for SpeakableString();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  if ((*(v27 + 48))(v25, v24) == 1)
  {
    outlined destroy of SpeakableString?(v25);
    v14 = v22;
    v22[1]._countAndFlagsBits = 0;
    v14[1]._object = 0;
    v14[2]._countAndFlagsBits = 0;
    v14[2]._object = 0;
  }

  else
  {
    v10 = v22;
    v22[2]._object = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[1]._countAndFlagsBits);
    (*(v27 + 32))(boxed_opaque_existential_1, v25, v26);
  }

  _finalizeUninitializedArray<A>(_:)();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v15[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.promptForSlotValue(slot:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[8] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;

  return MEMORY[0x2822009F8](SendPaymentCATs.promptForSlotValue(slot:), 0);
}

uint64_t SendPaymentCATs.promptForSlotValue(slot:)()
{
  v13 = v0[8];
  v12 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#PromptForSlotValue", 0x1EuLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v12, v13);
  v14 = type metadata accessor for SpeakableString();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    outlined destroy of SpeakableString?(v10[8]);
    p_countAndFlagsBits[2] = 0;
    p_countAndFlagsBits[3] = 0;
    p_countAndFlagsBits[4] = 0;
    p_countAndFlagsBits[5] = 0;
  }

  else
  {
    v9 = v10[8];
    p_countAndFlagsBits[5] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits + 2);
    (*(v15 + 32))(boxed_opaque_existential_1, v9, v14);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v10[10] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v10[11] = v4;
  *v4 = v10[2];
  v4[1] = RequestPaymentCATs.disambiguateSlotValue(slot:);
  v5 = v10[5];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

uint64_t SendPaymentCATs.promptForSlotValue(slot:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[2] = a2;
  v19 = a1;
  v26 = 0;
  v25 = 0;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v13 - v14;
  v26 = MEMORY[0x28223BE20](v19, v3);
  v25 = v2;
  v20 = 1;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#PromptForSlotValue", 0x1EuLL, 1);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v17 = _allocateUninitializedArray<A>(_:)();
  v18 = v4;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v20 & 1);
  v6 = v19;
  v7 = v21;
  *v18 = v5;
  outlined init with copy of SpeakableString?(v6, v7);
  v22 = type metadata accessor for SpeakableString();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  if ((*(v23 + 48))(v21, v20) == 1)
  {
    outlined destroy of SpeakableString?(v21);
    v12 = v18;
    v18[1]._countAndFlagsBits = 0;
    v12[1]._object = 0;
    v12[2]._countAndFlagsBits = 0;
    v12[2]._object = 0;
  }

  else
  {
    v8 = v18;
    v18[2]._object = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v8[1]._countAndFlagsBits);
    (*(v23 + 32))(boxed_opaque_existential_1, v21, v22);
  }

  _finalizeUninitializedArray<A>(_:)();
  v13[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v13[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.slotDisplayValue(slot:completion:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v16 = a2;
  v17 = a3;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v15 - v18;
  v32 = MEMORY[0x28223BE20](v23, v16);
  v30 = v4;
  v31 = v5;
  v29 = v3;
  v24 = 1;
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#SlotDisplayValue", 0x1CuLL, 1);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v21 = _allocateUninitializedArray<A>(_:)();
  v22 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v24 & 1);
  v8 = v23;
  v9 = v25;
  *v22 = v7;
  outlined init with copy of SpeakableString?(v8, v9);
  v26 = type metadata accessor for SpeakableString();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  if ((*(v27 + 48))(v25, v24) == 1)
  {
    outlined destroy of SpeakableString?(v25);
    v14 = v22;
    v22[1]._countAndFlagsBits = 0;
    v14[1]._object = 0;
    v14[2]._countAndFlagsBits = 0;
    v14[2]._object = 0;
  }

  else
  {
    v10 = v22;
    v22[2]._object = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[1]._countAndFlagsBits);
    (*(v27 + 32))(boxed_opaque_existential_1, v25, v26);
  }

  _finalizeUninitializedArray<A>(_:)();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v15[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.slotDisplayValue(slot:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[8] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;

  return MEMORY[0x2822009F8](SendPaymentCATs.slotDisplayValue(slot:), 0);
}

uint64_t SendPaymentCATs.slotDisplayValue(slot:)()
{
  v13 = v0[8];
  v12 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#SlotDisplayValue", 0x1CuLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v12, v13);
  v14 = type metadata accessor for SpeakableString();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    outlined destroy of SpeakableString?(v10[8]);
    p_countAndFlagsBits[2] = 0;
    p_countAndFlagsBits[3] = 0;
    p_countAndFlagsBits[4] = 0;
    p_countAndFlagsBits[5] = 0;
  }

  else
  {
    v9 = v10[8];
    p_countAndFlagsBits[5] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits + 2);
    (*(v15 + 32))(boxed_opaque_existential_1, v9, v14);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v10[10] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v10[11] = v4;
  *v4 = v10[2];
  v4[1] = RequestPaymentCATs.disambiguateSlotValue(slot:);
  v5 = v10[5];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

uint64_t SendPaymentCATs.slotDisplayValue(slot:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[2] = a2;
  v19 = a1;
  v26 = 0;
  v25 = 0;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v13 - v14;
  v26 = MEMORY[0x28223BE20](v19, v3);
  v25 = v2;
  v20 = 1;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#SlotDisplayValue", 0x1CuLL, 1);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v17 = _allocateUninitializedArray<A>(_:)();
  v18 = v4;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v20 & 1);
  v6 = v19;
  v7 = v21;
  *v18 = v5;
  outlined init with copy of SpeakableString?(v6, v7);
  v22 = type metadata accessor for SpeakableString();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  if ((*(v23 + 48))(v21, v20) == 1)
  {
    outlined destroy of SpeakableString?(v21);
    v12 = v18;
    v18[1]._countAndFlagsBits = 0;
    v12[1]._object = 0;
    v12[2]._countAndFlagsBits = 0;
    v12[2]._object = 0;
  }

  else
  {
    v8 = v18;
    v18[2]._object = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v8[1]._countAndFlagsBits);
    (*(v23 + 32))(boxed_opaque_existential_1, v21, v22);
  }

  _finalizeUninitializedArray<A>(_:)();
  v13[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v13[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.unsupportedSlotValue(slot:paymentsConcept:completion:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v43 = 0;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = v22 - v28;
  v43 = MEMORY[0x28223BE20](v33, v25);
  v42 = v5;
  v40 = v6;
  v41 = v7;
  v39 = v4;
  v34 = 1;
  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#UnsupportedSlotValue", 0x20uLL, 1);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v31 = _allocateUninitializedArray<A>(_:)();
  v32 = v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v34 & 1);
  v10 = v33;
  v11 = v35;
  *v32 = v9;
  outlined init with copy of SpeakableString?(v10, v11);
  v36 = type metadata accessor for SpeakableString();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  if ((*(v37 + 48))(v35, v34) == 1)
  {
    outlined destroy of SpeakableString?(v35);
    v21 = v32;
    v32[1]._countAndFlagsBits = 0;
    v21[1]._object = 0;
    v21[2]._countAndFlagsBits = 0;
    v21[2]._object = 0;
  }

  else
  {
    v12 = v32;
    v32[2]._object = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12[1]._countAndFlagsBits);
    (*(v37 + 32))(boxed_opaque_existential_1, v35, v36);
  }

  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);
  v32[3] = v14;

  if (v25)
  {
    v24 = v25;
    v23 = v25;
    v15 = type metadata accessor for PaymentsDialogConcept(0);
    v16 = v32;
    v17 = v23;
    v32[5]._object = v15;
    v16[4]._countAndFlagsBits = v17;
  }

  else
  {
    v20 = v32;
    v32[4]._countAndFlagsBits = 0;
    v20[4]._object = 0;
    v20[5]._countAndFlagsBits = 0;
    v20[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  v22[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v22[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.unsupportedSlotValue(slot:paymentsConcept:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4[10] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;

  return MEMORY[0x2822009F8](SendPaymentCATs.unsupportedSlotValue(slot:paymentsConcept:), 0);
}

uint64_t SendPaymentCATs.unsupportedSlotValue(slot:paymentsConcept:)()
{
  v15 = v0[10];
  v14 = v0[7];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#UnsupportedSlotValue", 0x20uLL, 1);
  v0[11] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v13 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v14, v15);
  v16 = type metadata accessor for SpeakableString();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1) == 1)
  {
    outlined destroy of SpeakableString?(v12[10]);
    v13[1]._countAndFlagsBits = 0;
    v13[1]._object = 0;
    v13[2]._countAndFlagsBits = 0;
    v13[2]._object = 0;
  }

  else
  {
    v11 = v12[10];
    v13[2]._object = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13[1]._countAndFlagsBits);
    (*(v17 + 32))(boxed_opaque_existential_1, v11, v16);
  }

  v10 = v12[8];
  v13[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);

  if (v10)
  {
    v9 = v12[8];
    v13[5]._object = type metadata accessor for PaymentsDialogConcept(0);
    v13[4]._countAndFlagsBits = v9;
  }

  else
  {
    v13[4]._countAndFlagsBits = 0;
    v13[4]._object = 0;
    v13[5]._countAndFlagsBits = 0;
    v13[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v12[12] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v12[13] = v4;
  *v4 = v12[2];
  v4[1] = RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:);
  v5 = v12[6];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

uint64_t SendPaymentCATs.unsupportedSlotValue(slot:paymentsConcept:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v29 = a1;
  v23 = a2;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v24 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = v19 - v24;
  v37 = MEMORY[0x28223BE20](v29, v23);
  v36 = v4;
  v35 = v3;
  v30 = 1;
  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#UnsupportedSlotValue", 0x20uLL, 1);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v27 = _allocateUninitializedArray<A>(_:)();
  v28 = v5;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v30 & 1);
  v7 = v29;
  v8 = v31;
  *v28 = v6;
  outlined init with copy of SpeakableString?(v7, v8);
  v32 = type metadata accessor for SpeakableString();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  if ((*(v33 + 48))(v31, v30) == 1)
  {
    outlined destroy of SpeakableString?(v31);
    v18 = v28;
    v28[1]._countAndFlagsBits = 0;
    v18[1]._object = 0;
    v18[2]._countAndFlagsBits = 0;
    v18[2]._object = 0;
  }

  else
  {
    v9 = v28;
    v28[2]._object = v32;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9[1]._countAndFlagsBits);
    (*(v33 + 32))(boxed_opaque_existential_1, v31, v32);
  }

  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);
  v28[3] = v11;

  if (v23)
  {
    v21 = v23;
    v20 = v23;
    v12 = type metadata accessor for PaymentsDialogConcept(0);
    v13 = v28;
    v14 = v20;
    v28[5]._object = v12;
    v13[4]._countAndFlagsBits = v14;
  }

  else
  {
    v17 = v28;
    v28[4]._countAndFlagsBits = 0;
    v17[4]._object = 0;
    v17[5]._countAndFlagsBits = 0;
    v17[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  v19[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v19[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t type metadata accessor for SendPaymentCATs(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for SendPaymentCATs;
  if (!type metadata singleton initialization cache for SendPaymentCATs)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t type metadata completion function for SendPaymentCATs(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t SendPaymentCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v18 = a2;
  v15 = a3;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v19 = type metadata accessor for CATOption();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v11 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v4);
  v13 = &v10 - v11;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v20, v5);
  v14 = &v10 - v12;
  v24 = v6;
  v23 = v7;
  v22 = v8;
  v25 = v3;
  outlined init with copy of URL?(v6, &v10 - v12);
  (*(v16 + 16))(v13, v18, v19);
  MEMORY[0x277D82BE0](v15);
  v21 = CATWrapper.init(templateDir:options:globals:)();

  v25 = v21;
  MEMORY[0x277D82BD8](v15);
  (*(v16 + 8))(v18, v19);
  outlined destroy of URL?(v20);

  return v21;
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = MEMORY[0x28211C760]();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall PersonNameComponents.formatted()()
{
  v0 = MEMORY[0x28211C7A0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x28211D318](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)()
{
  return MEMORY[0x2821BA438]();
}

{
  return MEMORY[0x2821BA440]();
}

uint64_t String.init<A>(describing:)()
{
  return MEMORY[0x2821FBCB0]();
}

{
  return MEMORY[0x2821FBCB8]();
}

{
  return MEMORY[0x2821FBCC0]();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = MEMORY[0x2821FBCE0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(Builtin::RawPointer _builtinStringLiteral, Builtin::Word utf8CodeUnitCount, Builtin::Int1 isASCII)
{
  v3 = MEMORY[0x2821FBD90](_builtinStringLiteral, utf8CodeUnitCount, isASCII);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall AceObject.serializeToBase64()()
{
  v0 = MEMORY[0x2821BBDE8]();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Substring.uppercased()()
{
  v0 = MEMORY[0x2821FCAF0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return MEMORY[0x2821FDE68]();
}

{
  return MEMORY[0x2821FDE70]();
}