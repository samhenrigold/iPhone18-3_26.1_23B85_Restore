uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFLocationAuthorizationStyle, @unowned CLAccuracyAuthorization, @unowned NSError?) -> () with result type (AFLocationAuthorizationStyle, CLAccuracyAuthorization)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;

    return _swift_continuation_throwingResume(v7);
  }
}

uint64_t closure #1 in LocationFetchFlow.execute()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #1 in LocationFetchFlow.execute(), 0, 0);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t LocationFetchFlow.unknownLocationOutput()(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2[20] = swift_task_alloc();
  v3 = type metadata accessor for AceOutput();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v2[23] = *(v4 + 64);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v2[26] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();

  return _swift_task_switch(LocationFetchFlow.unknownLocationOutput(), 0, 0);
}

uint64_t LocationFetchFlow.unknownLocationOutput()()
{
  type metadata accessor for CATService();
  v1 = swift_allocObject();
  *(v0 + 240) = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for OS_os_log();
  *(v1 + 32) = OS_os_log.init(subsystem:category:)();
  *(v1 + 16) = 0;
  *(v0 + 40) = &type metadata for LocationServices;
  *(v0 + 48) = &protocol witness table for LocationServices;
  *(v0 + 16) = 2;
  v3 = static DialogHelper.globals.getter();
  *(v0 + 248) = v3;
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = LocationFetchFlow.unknownLocationOutput();
  v5 = *(v0 + 208);

  return CATService.execute(model:globals:)(v5, v0 + 16, v3);
}

{
  v2 = *v1;

  if (v0)
  {

    v3 = LocationFetchFlow.unknownLocationOutput();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v3 = LocationFetchFlow.unknownLocationOutput();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v17 = *(v0 + 192);
  v7 = *(v0 + 160);
  v16 = *(v0 + 168);
  v8 = *(v0 + 152);
  v18 = v4;
  (*(v1 + 56))(v3, 0, 1, v4);
  (*(v1 + 32))(v2, v3, v4);
  v10 = v8[6];
  v9 = v8[7];
  __swift_project_boxed_opaque_existential_1(v8 + 3, v10);
  (*(v9 + 32))(v10, v9);
  v11 = type metadata accessor for NLContextUpdate();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  *(v0 + 128) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 96) = 0u;
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Mirror.DisplayStyle?(v0 + 96, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Mirror.DisplayStyle?(v7, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  (*(v6 + 16))(v17, v5, v16);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v17, v16);
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  *(v0 + 136) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  static ExecuteResponse.complete<A>(next:)();

  (*(v6 + 8))(v5, v16);
  (*(v1 + 8))(v2, v18);

  v14 = *(v0 + 8);

  return v14();
}

{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[19];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  (*(v2 + 56))(v3, 1, 1, v1);
  outlined destroy of Mirror.DisplayStyle?(v3, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v5 = static os_log_type_t.error.getter();
  os_log(_:dso:log:_:_:)(v5, &dword_0, *(v4 + 72), "error generating error dialog for location services", 51, 2, &_swiftEmptyArrayStorage);
  static ExecuteResponse.complete()();

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in LocationFetchFlow.unknownLocationOutput()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #1 in LocationFetchFlow.unknownLocationOutput(), 0, 0);
}

uint64_t closure #1 in LocationFetchFlow.unknownLocationOutput()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for AceOutput();
  v1[3] = v3;
  v1[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v2, v3);
  v5 = v0[1];

  return v5();
}

uint64_t LocationFetchFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  outlined consume of LocationFetchFlow.ExitValue(*(v0 + 80), *(v0 + 88));
  return v0;
}

uint64_t LocationFetchFlow.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  outlined consume of LocationFetchFlow.ExitValue(*(v0 + 80), *(v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance LocationFetchFlow(uint64_t a1)
{
  v6 = (*(**v1 + 192) + **(**v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance LocationFetchFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 144))();
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void closure #1 in OSLogArguments.append(_:)(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t outlined init with copy of TemplatingResult?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t partial apply for closure #1 in LocationFetchFlow.execute()(uint64_t a1)
{
  v4 = *(type metadata accessor for AceOutput() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return closure #1 in LocationFetchFlow.execute()(a1, v1 + v5);
}

uint64_t _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_1(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t outlined init with take of TemplatingResult?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type LocationAccessLevelFor and conformance LocationAccessLevelFor()
{
  result = lazy protocol witness table cache variable for type LocationAccessLevelFor and conformance LocationAccessLevelFor;
  if (!lazy protocol witness table cache variable for type LocationAccessLevelFor and conformance LocationAccessLevelFor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationAccessLevelFor and conformance LocationAccessLevelFor);
  }

  return result;
}

uint64_t sub_8A464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_8A4B4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);
  v4 = *(a1 + 8);
  outlined copy of LocationFetchFlow.ExitValue(*a1, v4);
  return v3(v2, v4);
}

uint64_t get_enum_tag_for_layout_string_21GeoFlowDelegatePlugin013LocationFetchB0C9ExitValueO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for LocationFetchFlow.ExitValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationFetchFlow.ExitValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for LocationFetchFlow.ExitValue(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t objectdestroy_11Tm()
{
  v1 = type metadata accessor for AceOutput();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in LocationFetchFlow.unknownLocationOutput()(uint64_t a1)
{
  v4 = *(type metadata accessor for AceOutput() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return closure #1 in LocationFetchFlow.unknownLocationOutput()(a1, v1 + v5);
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.__allocating_init(isPommes:with:)(uint64_t a1, __int128 *a2)
{
  v3 = a1;
  v4 = swift_allocObject();
  TrafficIncidentNeedsDisambiguationStrategy.init(isPommes:with:)(v3, a2);
  return v4;
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.init(isPommes:with:)(char a1, __int128 *a2)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v2 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v5 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v5 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v5 + 32) = OS_os_log.init(subsystem:category:)();
  *(v5 + 16) = 1;
  *(v2 + 72) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_B7D60;
  if (one-time initialization token for incidentTypeNode != -1)
  {
    swift_once();
  }

  *(v7 + 32) = specialized OntologyNode.javaClassName.getter();
  *(v7 + 40) = v8;
  if (one-time initialization token for referenceNode != -1)
  {
    swift_once();
  }

  *(v7 + 48) = specialized OntologyNode.javaClassName.getter();
  *(v7 + 56) = v9;
  if (one-time initialization token for confirmationNode != -1)
  {
    swift_once();
  }

  *(v7 + 64) = specialized OntologyNode.javaClassName.getter();
  *(v7 + 72) = v10;
  *(v2 + 80) = v7;
  *(v2 + 64) = a1 & 1;
  outlined init with take of CATType(a2, v2 + 24);
  return v2;
}

void TrafficIncidentNeedsDisambiguationStrategy.actionForInput(_:resolveRecord:)(uint64_t a1@<X8>)
{
  v64 = a1;
  v1 = type metadata accessor for Parse.DirectInvocation();
  v59 = *(v1 - 8);
  v60 = v1;
  __chkstk_darwin();
  v58 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Parse();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v61 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = (&v57 - v6);
  __chkstk_darwin();
  v9 = &v57 - v8;
  v10 = type metadata accessor for NLIntent();
  v62 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v57 - v13;
  Input.parse.getter();
  v15 = *(v4 + 88);
  if (v15(v9, v3) == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v4 + 96))(v9, v3);
    v16 = v62;
    v17 = *(v62 + 32);
    v17(v14, v9, v10);
    v18 = static os_log_type_t.info.getter();
    isa = isa[2].isa;
    os_log(_:dso:log:_:_:)(v18, &dword_0, isa, "parseDisambiguationResult - NLv3 only parse", 43, 2, &_swiftEmptyArrayStorage);
    v19 = v14;
    (*(v16 + 16))(v12, v14, v10);
    type metadata accessor for LocationSearchIntent(0);
    v20 = swift_allocObject();
    v21 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
    v22 = v16;
    if (one-time initialization token for domainNode != -1)
    {
      swift_once();
    }

    *(v20 + v21) = static LocationSearchIntent.domainNode;
    v17((v20 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent), v12, v10);
    v65 = v20;
    v23 = one-time initialization token for confirmationNode;

    if (v23 != -1)
    {
      swift_once();
    }

    _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_2(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, 255, type metadata accessor for LocationSearchIntent, &protocol conformance descriptor for LocationSearchIntent);
    IntentNodeTraversable.value<A>(forNode:)();

    v24 = v19;
    if (v66 > 1u)
    {
      v25 = isa;
      if (v66 == 2)
      {

        goto LABEL_18;
      }
    }

    else
    {
      v25 = isa;
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v40)
      {
LABEL_18:
        v41 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v25, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_0, v25, v41, "Traffic incident cancelation from NLv3IntentOnly parse.", v42, 2u);
        }

        static ActionForInput.cancel()();
LABEL_24:
        (*(v22 + 8))(v24, v10);
        return;
      }
    }

    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_0, v25, v43, "Traffic incident handling NLv3IntentOnly parse.", v44, 2u);
    }

    static ActionForInput.handle()();
    goto LABEL_24;
  }

  v26 = isa;
  v27 = *(v4 + 8);
  v27(v9, v3);
  Input.parse.getter();
  if (v15(v7, v3) == enum case for Parse.pommesResponse(_:))
  {
    (*(v4 + 96))(v7, v3);
    v28 = *v7;
    v29 = static os_log_type_t.info.getter();
    v30 = *(v26 + 16);
    os_log(_:dso:log:_:_:)(v29, &dword_0, v30, "parseDisambiguationResult - pommes parse", 40, 2, &_swiftEmptyArrayStorage);
    type metadata accessor for LocationSearchIntent(0);
    swift_allocObject();
    v31 = v28;
    v32 = LocationSearchIntent.init(from:)(v31);
    v33 = (*(*v32 + 152))(v32);

    if (v33 > 1u)
    {
      if (v33 == 2)
      {

LABEL_36:
        v53 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v30, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_0, v30, v53, "Traffic incident cancelation from POMMES parse.", v54, 2u);
        }

        static ActionForInput.cancel()();
LABEL_42:

        return;
      }
    }

    else
    {
      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v52)
      {
        goto LABEL_36;
      }
    }

    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_0, v30, v55, "Traffic incident handling POMMES parse.", v56, 2u);
    }

    static ActionForInput.handle()();
    goto LABEL_42;
  }

  v27(v7, v3);
  v34 = v61;
  Input.parse.getter();
  if (v15(v34, v3) == enum case for Parse.directInvocation(_:))
  {
    (*(v4 + 96))(v34, v3);
    v35 = v34;
    v37 = v58;
    v36 = v59;
    v38 = v60;
    (*(v59 + 32))(v58, v35, v60);
    if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000033 && 0x80000000000BFC60 == v39)
    {

LABEL_32:
      v49 = *(v26 + 16);
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_0, v49, v50, "TrafficIncidentBaseFlow onInput returns true for directInvocation.", v51, 2u);
      }

      static ActionForInput.handle()();
      (*(v36 + 8))(v37, v38);
      return;
    }

    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v48)
    {
      goto LABEL_32;
    }

    (*(v36 + 8))(v37, v38);
  }

  else
  {
    v27(v34, v3);
  }

  v45 = *(v26 + 16);
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_0, v45, v46, "SiriGeo currently doesn't support parse type.", v47, 2u);
  }

  static ActionForInput.ignore()();
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(TrafficIncidentNeedsDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:), 0, 0);
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)()
{
  v21 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMR);
  v1 = ParameterResolutionRecord.result.getter();
  v2 = [v1 disambiguationItems];

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = specialized _arrayConditionalCast<A, B>(_:)(v3);

  v5 = v0[4];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow32BasicDisambiguationItemContainerCySo30INSupportedTrafficIncidentTypeCGMd, &_s11SiriKitFlow32BasicDisambiguationItemContainerCySo30INSupportedTrafficIncidentTypeCGMR);
    swift_allocObject();
    v6 = BasicDisambiguationItemContainer.init(_:_:)();
    v7 = *(v5 + 16);
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136315138;
      v0[2] = v6;

      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v20);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_0, v7, v8, "makeDisambiguationItemContainer with container: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
    }

    v14 = v0[1];

    return v14(v6);
  }

  else
  {
    v16 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v16, &dword_0, *(v5 + 16), "makeDisambiguationItemContainer received wrong type for incidentType", 68, 2, &_swiftEmptyArrayStorage);
    type metadata accessor for RuntimeError();
    v17 = swift_allocObject();
    *(v17 + 16) = 0xD000000000000044;
    *(v17 + 24) = 0x80000000000C3240;
    _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_2(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError, &protocol conformance descriptor for RuntimeError);
    swift_allocError();
    *v18 = v17;
    swift_willThrow();
    v19 = v0[1];

    return v19();
  }
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.makeFlowCancelledResponse(app:intent:parameterName:)(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for AceOutput();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2[24] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();

  return _swift_task_switch(TrafficIncidentNeedsDisambiguationStrategy.makeFlowCancelledResponse(app:intent:parameterName:), 0, 0);
}

{
  v2 = *(v1[18] + 16);
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "makeFlowCancelledResponse", v4, 2u);
  }

  v5 = v1[18];
  v6 = v5[9];
  v1[5] = &type metadata for Common;
  v1[6] = &protocol witness table for Common;
  v1[2] = 0;
  v7 = v5[6];
  v8 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v7);
  v9 = (*(v8 + 80))(v7, v8);
  v1[28] = v9;
  v13 = (*(*v6 + 112) + **(*v6 + 112));
  v10 = swift_task_alloc();
  v1[29] = v10;
  *v10 = v1;
  v10[1] = TrafficIncidentNeedsDisambiguationStrategy.makeFlowCancelledResponse(app:intent:parameterName:);
  v11 = v1[27];

  return v13(v11, v1 + 2, v9);
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.makeFlowCancelledResponse(app:intent:parameterName:)()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = TrafficIncidentNeedsDisambiguationStrategy.makeFlowCancelledResponse(app:intent:parameterName:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v3 = TrafficIncidentNeedsDisambiguationStrategy.makeFlowCancelledResponse(app:intent:parameterName:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v41 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = v2[6];
  v4 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v3);
  (*(v4 + 32))(v3, v4);
  v5 = type metadata accessor for NLContextUpdate();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  *(v0 + 96) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 112) = 0u;
  v6 = static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    v37 = v6;
    swift_once();
    v6 = v37;
  }

  v7 = logObject;
  os_log(_:dso:log:_:_:)(v6, &dword_0, logObject, "sendCompletionViewOutput", 24, 2, &_swiftEmptyArrayStorage);
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "sendCompletionViewOutputSuccess", v9, 2u);
  }

  v10 = *(v0 + 184);
  v11 = *(v0 + 176);
  v12 = *(v0 + 152);
  v13 = *(v0 + 160);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v14 = static os_log_type_t.info.getter();
  v15 = *(v13 + 16);
  v15(v11, v10, v12);
  v16 = os_log_type_enabled(v7, v14);
  v17 = *(v0 + 176);
  if (v16)
  {
    v39 = v14;
    v18 = *(v0 + 160);
    v19 = *(v0 + 168);
    v20 = *(v0 + 152);
    v21 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v21 = 136315138;
    v15(v19, v17, v20);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    (*(v18 + 8))(v17, v20);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v40);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_0, v7, v39, "sendCompletionViewOutput dialog final output is: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));
  }

  v27 = *(v0 + 208);
  v26 = *(v0 + 216);
  v29 = *(v0 + 192);
  v28 = *(v0 + 200);
  v30 = *(v0 + 184);
  v31 = *(v0 + 152);
  v32 = *(v0 + 160);
  v33 = *(v0 + 136);
  v33[3] = v31;
  v33[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
  (*(v32 + 32))(boxed_opaque_existential_0, v30, v31);
  outlined destroy of Mirror.DisplayStyle?(v0 + 96, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Mirror.DisplayStyle?(v29, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  (*(v27 + 8))(v26, v28);

  v35 = *(v0 + 8);

  return v35();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a1;
  v5[16] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo016INReportIncidentD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo016INReportIncidentD0CGMR);
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v7 = type metadata accessor for Parse.DirectInvocation();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v8 = type metadata accessor for NLIntent();
  v5[26] = v8;
  v5[27] = *(v8 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v9 = type metadata accessor for Parse();
  v5[30] = v9;
  v5[31] = *(v9 - 8);
  v5[32] = swift_task_alloc();

  return _swift_task_switch(TrafficIncidentNeedsDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:), 0, 0);
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1)
{
  v116 = v1;
  v3 = *(v1 + 248);
  v2 = *(v1 + 256);
  v4 = *(v1 + 240);
  Input.parse.getter();
  v5 = (*(v3 + 88))(v2, v4);
  if (v5 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v6 = *(v1 + 256);
    v7 = *(v1 + 232);
    v9 = *(v1 + 216);
    v8 = *(v1 + 224);
    v10 = *(v1 + 208);
    (*(*(v1 + 248) + 96))(v6, *(v1 + 240));
    log = *(v9 + 32);
    (log)(v7, v6, v10);
    (*(v9 + 16))(v8, v7, v10);
    type metadata accessor for LocationSearchIntent(0);
    v11 = swift_allocObject();
    v12 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
    if (one-time initialization token for domainNode != -1)
    {
      swift_once();
    }

    v14 = *(v1 + 224);
    v13 = *(v1 + 232);
    v15 = *(v1 + 208);
    v16 = static LocationSearchIntent.domainNode;
    v17 = *(*(v1 + 216) + 8);

    v17(v13, v15);
    *(v11 + v12) = v16;
    (log)(v11 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent, v14, v15);
    v18 = v11;
    goto LABEL_5;
  }

  if (v5 == enum case for Parse.directInvocation(_:))
  {
    v52 = *(v1 + 256);
    v54 = *(v1 + 192);
    v53 = *(v1 + 200);
    v56 = *(v1 + 176);
    v55 = *(v1 + 184);
    v57 = *(v1 + 144);
    (*(*(v1 + 248) + 96))(v52, *(v1 + 240));
    (*(v55 + 32))(v53, v52, v56);
    v58 = static os_log_type_t.default.getter();
    v59 = *(v57 + 16);
    (*(v55 + 16))(v54, v53, v56);
    if (os_log_type_enabled(v59, v58))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v114[0] = v61;
      *v60 = 136315138;
      result = Parse.DirectInvocation.userData.getter();
      if (!result)
      {
        goto LABEL_35;
      }

      v63 = result;
      if (*(result + 16) && (v64 = specialized __RawDictionaryStorage.find<A>(_:)(0x746E656469636E49, 0xEC00000065707954), (v65 & 1) != 0))
      {
        outlined init with copy of Any(*(v63 + 56) + 32 * v64, v1 + 80);
      }

      else
      {

        *(v1 + 80) = 0u;
        *(v1 + 96) = 0u;
      }

      v79 = *(v1 + 184);
      v78 = *(v1 + 192);
      v80 = *(v1 + 176);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
      v81 = String.init<A>(describing:)();
      v83 = v82;
      v84 = v80;
      v73 = *(v79 + 8);
      v73(v78, v84);
      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, v114);

      *(v60 + 4) = v85;
      _os_log_impl(&dword_0, v59, v58, "recieved directInvocation: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v61);
    }

    else
    {
      v73 = *(*(v1 + 184) + 8);
      v73(*(v1 + 192), *(v1 + 176));
    }

    result = Parse.DirectInvocation.userData.getter();
    if (result)
    {
      v86 = result;
      if (*(result + 16))
      {
        v87 = specialized __RawDictionaryStorage.find<A>(_:)(0x746E656469636E49, 0xEC00000065707954);
        if (v88)
        {
          outlined init with copy of Any(*(v86 + 56) + 32 * v87, v1 + 48);

          outlined init with take of Any((v1 + 48), (v1 + 16));
          swift_dynamicCast();
          v89 = *(v1 + 112);
          v90 = objc_allocWithZone(INSupportedTrafficIncidentType);
          v91 = *(v1 + 200);
          v92 = *(v1 + 176);
          if ((v89 - 1) >= 3)
          {
            v103 = [v90 initWithType:0 localizedDisplayString:0];
            v104 = static os_log_type_t.error.getter();
            os_log(_:dso:log:_:_:)(v104, &dword_0, v59, "recieved directInvocation with unknown type, this sis unexpected because there's no button for this and should never happen)", 124, 2, &_swiftEmptyArrayStorage);
            type metadata accessor for RuntimeError();
            v105 = swift_allocObject();
            *(v105 + 16) = 0xD00000000000002FLL;
            *(v105 + 24) = 0x80000000000C3340;
            _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_2(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError, &protocol conformance descriptor for RuntimeError);
            swift_allocError();
            *v106 = v105;
            swift_willThrow();

            v73(v91, v92);
          }

          else
          {
            v94 = *(v1 + 160);
            v93 = *(v1 + 168);
            v95 = *(v1 + 152);
            logb = *(v1 + 176);
            v96 = [v90 initWithType:v89 localizedDisplayString:0];
            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
            v110 = v73;
            v108 = v91;
            v97 = v96;
            isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMR);
            v99 = ParameterResolutionRecord.intent.getter();
            v100 = [v99 userLocation];

            v101 = [objc_allocWithZone(INReportIncidentIntent) initWithIncidentType:v97 startTime:0 isClear:isa userLocation:v100 additionalDetails:0];
            v115 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INSupportedTrafficIncidentType, INSupportedTrafficIncidentType_ptr);
            v114[0] = v97;
            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INReportIncidentIntent, INReportIncidentIntent_ptr);
            v102 = v101;
            IntentPromptAnswer.init(answeredValue:updatedIntent:)();
            static DisambiguationResult.chosenItem(_:)();

            (*(v94 + 8))(v93, v95);
            v110(v108, logb);
          }

          goto LABEL_30;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
    return result;
  }

  v67 = *(v1 + 248);
  v66 = *(v1 + 256);
  v68 = *(v1 + 240);
  if (v5 == enum case for Parse.pommesResponse(_:))
  {
    (*(v67 + 96))(*(v1 + 256), *(v1 + 240));
    v69 = *v66;
    type metadata accessor for LocationSearchIntent(0);
    swift_allocObject();
    v18 = LocationSearchIntent.init(from:)(v69);
LABEL_5:
    v19 = *(v1 + 144);

    v21 = specialized static TrafficIncidentUtils.convertIncidentTypeFromNLIntent(locationSearchIntent:)(v20);

    if (v21)
    {
      v22 = *(v19 + 16);
      v23 = static os_log_type_t.default.getter();
      loga = v22;
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v114[0] = v25;
        *v24 = 136315138;
        v26 = v21;
        v27 = [v26 description];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v114);

        *(v24 + 4) = v31;
        v22 = loga;
        _os_log_impl(&dword_0, loga, v23, "parseDisambiguationResult updated supportedIncidentType is %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMR);
      v32 = ParameterResolutionRecord.intent.getter();
      v33 = [v32 userLocation];

      v34 = [v33 location];
      v35 = specialized static TrafficIncidentUtils.makeSiriKitIntentWithUserLocation(locationSearchIntent:userLocation:)(v18, v34);

      v36 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v22, v36))
      {
        v37 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v114[0] = v109;
        *v37 = 136315138;
        v38 = v35;
        v39 = [v38 description];
        v40 = v21;
        v41 = v35;
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v45 = v42;
        v35 = v41;
        v21 = v40;
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, v114);

        *(v37 + 4) = v46;
        _os_log_impl(&dword_0, loga, v36, "parseDisambiguationResult - updated sirikit intent: %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v109);
      }

      v48 = *(v1 + 160);
      v47 = *(v1 + 168);
      v49 = *(v1 + 152);
      v115 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INSupportedTrafficIncidentType, INSupportedTrafficIncidentType_ptr);
      v114[0] = v21;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INReportIncidentIntent, INReportIncidentIntent_ptr);
      v50 = v21;
      v51 = v35;
      IntentPromptAnswer.init(answeredValue:updatedIntent:)();
      static DisambiguationResult.chosenItem(_:)();

      (*(v48 + 8))(v47, v49);
    }

    else
    {
      v70 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v70, &dword_0, *(v19 + 16), "parseDisambiguationResult - supportedIncidentType is nil", 56, 2, &_swiftEmptyArrayStorage);
      type metadata accessor for RuntimeError();
      v71 = swift_allocObject();
      *(v71 + 16) = 0xD000000000000038;
      *(v71 + 24) = 0x80000000000C3370;
      _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_2(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError, &protocol conformance descriptor for RuntimeError);
      swift_allocError();
      *v72 = v71;
      swift_willThrow();
    }

    goto LABEL_30;
  }

  v74 = *(v1 + 144);
  v75 = static os_log_type_t.error.getter();
  os_log(_:dso:log:_:_:)(v75, &dword_0, *(v74 + 16), "parseDisambiguationResult - parse type is wrong", 47, 2, &_swiftEmptyArrayStorage);
  type metadata accessor for RuntimeError();
  v76 = swift_allocObject();
  *(v76 + 16) = 0xD00000000000002FLL;
  *(v76 + 24) = 0x80000000000C3290;
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_2(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError, &protocol conformance descriptor for RuntimeError);
  swift_allocError();
  *v77 = v76;
  swift_willThrow();
  (*(v67 + 8))(v66, v68);
LABEL_30:

  v107 = *(v1 + 8);

  return v107();
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[50] = a3;
  v4[51] = v3;
  v4[48] = a1;
  v4[49] = a2;
  v4[52] = type metadata accessor for TrafficIncident(0);
  v4[53] = swift_task_alloc();
  v5 = type metadata accessor for PommesContext.Source();
  v4[54] = v5;
  v4[55] = *(v5 - 8);
  v4[56] = swift_task_alloc();
  v4[57] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v4[58] = swift_task_alloc();
  v6 = type metadata accessor for NLContextUpdate();
  v4[59] = v6;
  v4[60] = *(v6 - 8);
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v7 = type metadata accessor for ImageSize();
  v4[63] = v7;
  v4[64] = *(v7 - 8);
  v4[65] = swift_task_alloc();
  v8 = type metadata accessor for Locale();
  v4[66] = v8;
  v4[67] = *(v8 - 8);
  v4[68] = swift_task_alloc();
  v9 = type metadata accessor for ParameterIdentifier();
  v4[69] = v9;
  v4[70] = *(v9 - 8);
  v4[71] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMR);
  v4[72] = v10;
  v4[73] = *(v10 - 8);
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();

  return _swift_task_switch(TrafficIncidentNeedsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:), 0, 0);
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1)
{
  v128 = v1;
  v2 = v1[77];
  v3 = v1[76];
  v4 = v1[75];
  v123 = v1[74];
  v5 = v1[73];
  v6 = v1[72];
  v8 = v1[50];
  v7 = v1[51];
  v9 = static os_log_type_t.info.getter();
  v10 = *(v7 + 16);
  v1[78] = v10;
  v11 = *(v5 + 16);
  v11(v2, v8, v6);
  v11(v3, v8, v6);
  v11(v4, v8, v6);
  v11(v123, v8, v6);
  v120 = v9;
  if (os_log_type_enabled(v10, v9))
  {
    v12 = v1[77];
    v118 = v1[75];
    v119 = v1[74];
    v13 = v1[73];
    v14 = v1[72];
    loga = v10;
    v124 = v1;
    v15 = v1[71];
    v115 = v1[76];
    v116 = v1[70];
    v117 = v1[69];
    v16 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    *v16 = 136315906;
    v17 = v14;
    v18 = ParameterResolutionRecord.intent.getter();
    v19 = [v18 description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = *(v13 + 8);
    v23(v12, v17);
    v114 = v23;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v126);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    ParameterResolutionRecord.parameter.getter();
    v25 = ParameterIdentifier.name.getter();
    v27 = v26;
    v28 = *(v116 + 8);
    v28(v15, v117);
    v23(v115, v17);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v126);

    *(v16 + 14) = v29;
    *(v16 + 22) = 2080;
    v30 = v17;
    ParameterResolutionRecord.parameter.getter();
    v31 = ParameterIdentifier.multicardinalIndex.getter();
    LOBYTE(v27) = v32;
    v1 = v124;
    v28(v15, v117);
    v124[46] = v31;
    *(v124 + 376) = v27 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v33 = String.init<A>(describing:)();
    v35 = v34;
    v114(v118, v30);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v126);

    *(v16 + 24) = v36;
    *(v16 + 32) = 2080;
    v37 = ParameterResolutionRecord.result.getter();
    v38 = [v37 description];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v114(v119, v30);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v126);

    *(v16 + 34) = v42;
    v10 = loga;
    _os_log_impl(&dword_0, loga, v120, "inputs: %s, %s,\n%s, %s", v16, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v43 = v1[77];
    v44 = v1[76];
    v45 = v1[75];
    v46 = v1[72];
    v47 = *(v1[73] + 8);
    v47(v1[74], v46);
    v47(v45, v46);
    v47(v44, v46);
    v47(v43, v46);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo30INSupportedTrafficIncidentTypeCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo30INSupportedTrafficIncidentTypeCGMR);
  v48 = PaginatedItemContainer.items.getter();
  if (v48 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8)); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      v126 = 0;
      v127 = 0xE000000000000000;
      _StringGuts.grow(_:)(71);
      v69._countAndFlagsBits = 0xD000000000000045;
      v69._object = 0x80000000000C3450;
      String.append(_:)(v69);
      PaginatedItemContainer.items.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INSupportedTrafficIncidentType, INSupportedTrafficIncidentType_ptr);
      v70 = Array.description.getter();
      v72 = v71;

      v73._countAndFlagsBits = v70;
      v73._object = v72;
      String.append(_:)(v73);

      v75 = v126;
      v74 = v127;
      goto LABEL_28;
    }

    v50 = PaginatedItemContainer.items.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v126 = v53;
      *v52 = 136315138;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INSupportedTrafficIncidentType, INSupportedTrafficIncidentType_ptr);
      v54 = Array.description.getter();
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v126);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_0, v10, v51, "list of supportedIncidentTypes for disambiguation: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
    }

    v126 = &_swiftEmptyArrayStorage;
    if (v50 >> 62)
    {
      break;
    }

    v57 = *(&dword_10 + (v50 & 0xFFFFFFFFFFFFFF8));
    if (!v57)
    {
      goto LABEL_35;
    }

LABEL_11:
    log = v10;
    v125 = v1;
    v58 = 0;
    v10 = (v50 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v58 >= *(&dword_10 + (v50 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_32;
        }

        v59 = *(v50 + 8 * v58 + 32);
      }

      v60 = v59;
      v1 = (v58 + 1);
      if (__OFADD__(v58, 1))
      {
        break;
      }

      v61 = [v59 localizedDisplayString];
      if (v61)
      {
        v62 = v61;
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;

        v66 = v63 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v66 = 0;
        v65 = 0xE000000000000000;
      }

      v67 = HIBYTE(v65) & 0xF;
      if ((v65 & 0x2000000000000000) == 0)
      {
        v67 = v66;
      }

      if (v67)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v58;
      if (v1 == v57)
      {
        v1 = v125;
        v68 = v126;
        v10 = log;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v57 = _CocoaArrayWrapper.endIndex.getter();
  if (v57)
  {
    goto LABEL_11;
  }

LABEL_35:
  v68 = &_swiftEmptyArrayStorage;
LABEL_36:
  v1[79] = v68;
  v80 = v1[68];
  v81 = v1[67];
  v82 = v1[66];

  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  dispatch thunk of DeviceState.siriLocale.getter();
  specialized static DisambiguationListUtils.makeDisambiguationItems(incidentTypes:locale:)(v68);
  v83 = *(v81 + 8);
  v1[80] = v83;
  v1[81] = (v81 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v83(v80, v82);
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 2);
  v84 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v126 = v86;
    *v85 = 136315138;
    type metadata accessor for SiriKitDisambiguationItem();
    v87 = Array.description.getter();
    v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, &v126);

    *(v85 + 4) = v89;
    _os_log_impl(&dword_0, v10, v84, "makePromptForDisambiguation incidentType disambiguationItems are: %s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v86);
  }

  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  v90 = dispatch thunk of DeviceState.isCarPlay.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 7);
  if (v90)
  {
    v91 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForCarPlay(disambiguationItems:deviceIsLocked:)();

LABEL_45:
    v1[82] = v91;
    v98 = v91;
    v99 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v126 = v101;
      *v100 = 136315138;
      v102 = v98;
      v103 = [v102 description];
      v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v106 = v105;

      v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v106, &v126);

      *(v100 + 4) = v107;
      _os_log_impl(&dword_0, v10, v99, "disambiguation snippet is: %s", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v101);
    }

    else
    {
    }

    v108 = v1[51];
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v1 + 22, v1[25]);
    dispatch thunk of DeviceState.siriLocale.getter();
    v109 = *(v108 + 80);
    v110 = swift_task_alloc();
    v1[83] = v110;
    *v110 = v1;
    v110[1] = TrafficIncidentNeedsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
    v111 = v1[68];
    v112 = v1[62];

    return TypedDisambiguationItems.makeNLContextUpdate(locale:weightedPromptResponseTargets:)(v112, v111, v109, v68, 1);
  }

  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  v92 = dispatch thunk of DeviceState.isPad.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 12);
  if (v92)
  {
    v93 = v1[65];
    v94 = v1[63];
    v95 = v1[64];
    (*(v95 + 104))(v93, enum case for ImageSize.default(_:), v94);
    v96 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetPad(disambiguationItems:deviceIsLocked:imageSize:)();
LABEL_44:
    v91 = v96;

    (*(v95 + 8))(v93, v94);
    goto LABEL_45;
  }

  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]);
  v97 = dispatch thunk of DeviceState.isPhone.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 17);
  if (v97)
  {
    v93 = v1[65];
    v94 = v1[63];
    v95 = v1[64];
    (*(v95 + 104))(v93, enum case for ImageSize.default(_:), v94);
    v96 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetPhone(disambiguationItems:deviceIsLocked:imageSize:)();
    goto LABEL_44;
  }

  v113 = static os_log_type_t.error.getter();
  os_log(_:dso:log:_:_:)(v113, &dword_0, v10, "makePromptForDisambiguation not supported device - this should have been checked in unsupported case upstream", 109, 2, &_swiftEmptyArrayStorage);
  v74 = 0x80000000000C0F80;
  v75 = 0xD000000000000012;
LABEL_28:
  type metadata accessor for RuntimeError();
  v76 = swift_allocObject();
  *(v76 + 16) = v75;
  *(v76 + 24) = v74;
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_2(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError, &protocol conformance descriptor for RuntimeError);
  swift_allocError();
  *v77 = v76;
  swift_willThrow();

  v78 = v1[1];

  return v78();
}

{
  v36 = v1;
  if (*(v1[51] + 64) == 1)
  {
    v2 = v1[78];
    v3 = v1[58];
    (*(v1[55] + 104))(v1[56], enum case for PommesContext.Source.pluginDefined(_:), v1[54]);
    PommesContext.init(source:domain:listenAfterSpeaking:)();
    v4 = type metadata accessor for PommesContext();
    (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
    NLContextUpdate.pommesContext.setter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v5))
    {
      v6 = v1[78];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v35 = v8;
      *v7 = 136315138;
      swift_beginAccess();
      NLContextUpdate.pommesContext.getter();
      swift_endAccess();
      v9 = String.init<A>(describing:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v35);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_0, v6, v5, "updated nl context with pommesContext: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
    }
  }

  v12 = v1[78];
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = v1[78];
    v16 = v1[61];
    v15 = v1[62];
    v17 = v1[59];
    v18 = v1[60];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = v20;
    *v19 = 136315138;
    swift_beginAccess();
    (*(v18 + 16))(v16, v15, v17);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v35);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_0, v14, v13, "makePromptForDisambiguation nlContextUpdate is: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  v25 = v1[52];
  v24 = v1[53];
  v26 = v1[51];
  v27 = enum case for BehaviorAfterSpeaking.listen(_:);
  v28 = type metadata accessor for BehaviorAfterSpeaking();
  (*(*(v28 - 8) + 104))(v24, v27, v28);
  swift_storeEnumTagMultiPayload();
  v1[35] = v25;
  v1[36] = &protocol witness table for TrafficIncident;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 32);
  outlined init with copy of TrafficIncident(v24, boxed_opaque_existential_0);
  swift_beginAccess();
  v34 = (*(*v26 + 168) + **(*v26 + 168));
  v30 = swift_task_alloc();
  v1[84] = v30;
  *v30 = v1;
  v30[1] = TrafficIncidentNeedsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  v31 = v1[62];
  v32 = v1[49];

  return v34(v1 + 27, v1 + 32, v32, v31);
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)()
{
  v1 = *v0;
  v2 = *(*v0 + 640);
  v3 = *(*v0 + 544);
  v4 = *(*v0 + 528);

  v2(v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 176));

  return _swift_task_switch(TrafficIncidentNeedsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:), 0, 0);
}

{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 256));

  return _swift_task_switch(TrafficIncidentNeedsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:), 0, 0);
}

{
  v1 = *(v0 + 656);
  if (*(v0 + 240))
  {
    v2 = *(v0 + 496);
    v3 = *(v0 + 472);
    v4 = *(v0 + 480);
    v5 = *(v0 + 384);
    outlined destroy of TrafficIncident(*(v0 + 424));

    outlined init with take of CATType((v0 + 216), v5);
    (*(v4 + 8))(v2, v3);
  }

  else
  {
    v7 = *(v0 + 496);
    v9 = *(v0 + 472);
    v8 = *(v0 + 480);
    v10 = *(v0 + 424);
    outlined destroy of Mirror.DisplayStyle?(v0 + 216, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
    lazy protocol witness table accessor for type Errors and conformance Errors();
    swift_allocError();
    *v11 = 0xD00000000000002BLL;
    *(v11 + 8) = 0x80000000000C3420;
    *(v11 + 16) = 0;
    swift_willThrow();

    outlined destroy of TrafficIncident(v10);
    (*(v8 + 8))(v7, v9);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.disambiguateIncidentsRF(dialog:paginatedItems:nlContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = type metadata accessor for ResponseType();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v5[15] = swift_task_alloc();
  type metadata accessor for DialogPhase();
  v5[16] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();

  return _swift_task_switch(TrafficIncidentNeedsDisambiguationStrategy.disambiguateIncidentsRF(dialog:paginatedItems:nlContext:), 0, 0);
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.disambiguateIncidentsRF(dialog:paginatedItems:nlContext:)()
{
  v1 = v0[11];
  v2 = v1[9];
  v0[20] = v2;
  v3 = v1[6];
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  v5 = (*(v4 + 80))(v3, v4);
  v0[21] = v5;
  v9 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = TrafficIncidentNeedsDisambiguationStrategy.disambiguateIncidentsRF(dialog:paginatedItems:nlContext:);
  v7 = v0[8];

  return v9(v7, v5);
}

{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));

  return _swift_task_switch(TrafficIncidentNeedsDisambiguationStrategy.disambiguateIncidentsRF(dialog:paginatedItems:nlContext:), 0, 0);
}

{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.disambiguateIncidentsRF(dialog:paginatedItems:nlContext:)(uint64_t a1)
{
  *(*v2 + 184) = a1;

  if (v1)
  {

    v3 = TrafficIncidentNeedsDisambiguationStrategy.disambiguateIncidentsRF(dialog:paginatedItems:nlContext:);
  }

  else
  {

    v3 = TrafficIncidentNeedsDisambiguationStrategy.disambiguateIncidentsRF(dialog:paginatedItems:nlContext:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v2 = v1[11];
  v3 = v1[7];
  v4 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v4, &dword_0, *(v2 + 16), "RF: dialogResult failure", 24, 2, &_swiftEmptyArrayStorage);
  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;

  v5 = v1[1];

  return v5();
}

char *TrafficIncidentNeedsDisambiguationStrategy.disambiguateIncidentsRF(dialog:paginatedItems:nlContext:)()
{
  v67 = v0;
  v1 = (*(**(v0 + 160) + 136))(*(v0 + 64));
  if (v3)
  {
    outlined consume of Result<String, Error>(v1, v2, 1);
    v56 = 0xE000000000000000;
    v57 = 0;
  }

  else
  {
    v56 = v2;
    v57 = v1;
  }

  v4 = *(v0 + 88);
  v5 = static os_log_type_t.default.getter();
  log = *(v4 + 16);
  if (os_log_type_enabled(log, v5))
  {
    v6 = *(v0 + 184);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v66 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v66);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_0, log, v5, "RF: dialogResult success %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v15 = *(v0 + 120);
  v16 = *(v0 + 104);
  v17 = *(v0 + 112);
  v18 = *(v0 + 96);
  v19 = *(v0 + 80);
  v59 = v0;
  static DialogPhase.clarification.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.responseViewId.setter();
  v20 = type metadata accessor for NLContextUpdate();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v15, v19, v20);
  (*(v21 + 56))(v15, 0, 1, v20);
  OutputGenerationManifest.nlContextUpdate.setter();
  (*(v16 + 104))(v17, enum case for ResponseType.disambiguation(_:), v18);
  OutputGenerationManifest.responseType.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo30INSupportedTrafficIncidentTypeCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo30INSupportedTrafficIncidentTypeCGMR);
  v22 = PaginatedItemContainer.items.getter();
  v23 = v22 >> 62;
  if (v22 >> 62)
  {
    goto LABEL_30;
  }

  v24 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
  v25 = v59;
  if (v24)
  {
    while (1)
    {
      v26 = v22;
      v66 = &_swiftEmptyArrayStorage;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24 & ~(v24 >> 63), 0);
      if (v24 < 0)
      {
        break;
      }

      v28 = v66;
      if (v23)
      {
        v60 = v26 & 0xFFFFFFFFFFFFFF8;
        v22 = _CocoaArrayWrapper.endIndex.getter();
        v29 = v26;
      }

      else
      {
        v29 = v26;
        v60 = v26 & 0xFFFFFFFFFFFFFF8;
        v22 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
      }

      v30 = 0;
      v31 = &MockShareETABaseFlow;
      v63 = v29 & 0xC000000000000001;
      v64 = v22 & ~(v22 >> 63);
      v61 = v24;
      v62 = v29;
      while (v64 != v30)
      {
        if (v63)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v30 >= *(v60 + 16))
          {
            goto LABEL_29;
          }

          v32 = *(v29 + 8 * v30 + 32);
        }

        v33 = v32;
        v34 = [v32 v31[49].weak_ivar_lyt];
        if (v34)
        {
          v35 = v34;
          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v37;
        }

        else
        {
          v36 = 0;
          v38 = 0;
        }

        v39 = [v33 v31[49].weak_ivar_lyt];
        if (v39)
        {
          v40 = v39;
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;
        }

        else
        {
          v23 = 0;
          v42 = 0xE000000000000000;
        }

        v43 = [v33 type];

        v66 = v28;
        v45 = v28[2];
        v44 = v28[3];
        if (v45 >= v44 >> 1)
        {
          v22 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
          v28 = v66;
        }

        v28[2] = v45 + 1;
        v46 = &v28[6 * v45];
        v46[4] = v30;
        v46[5] = v36;
        v46[6] = v38;
        v46[7] = v23;
        v46[8] = v42;
        v46[9] = v43;
        ++v30;
        v29 = v62;
        v31 = &MockShareETABaseFlow;
        if (v61 == v30)
        {

          v25 = v59;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v47 = v22;
      v24 = _CocoaArrayWrapper.endIndex.getter();
      v22 = v47;
      v25 = v59;
      if (!v24)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_31:

    v28 = &_swiftEmptyArrayStorage;
LABEL_32:
    v48 = v25[23];
    v49 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v49, &dword_0, log, "RF: made snippet model successfully", 35, 2, &_swiftEmptyArrayStorage);
    type metadata accessor for ResponseFactory();
    swift_allocObject();
    v25[24] = ResponseFactory.init()();
    v25[5] = &type metadata for GeoDataModels;
    v25[6] = lazy protocol witness table accessor for type GeoDataModels and conformance GeoDataModels();
    v50 = swift_allocObject();
    v25[2] = v50;
    *(v50 + 16) = v57;
    *(v50 + 24) = v56;
    *(v50 + 32) = v28;
    *(v50 + 96) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v51 = swift_allocObject();
    v25[25] = v51;
    *(v51 + 16) = xmmword_B8FB0;
    *(v51 + 32) = v48;
    v65 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:);
    v52 = v48;
    v53 = swift_task_alloc();
    v25[26] = v53;
    *v53 = v25;
    v53[1] = TrafficIncidentNeedsDisambiguationStrategy.disambiguateIncidentsRF(dialog:paginatedItems:nlContext:);
    v54 = v25[19];
    v55 = v25[7];

    return (v65)(v55, v25 + 2, v51, v54);
  }

  return result;
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return v0;
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.paginationStyle(resolveRecord:) in conformance TrafficIncidentNeedsDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TrafficIncidentNeedsDisambiguationStrategy();

  return NeedsDisambiguationFlowStrategyAsync.paginationStyle(resolveRecord:)(a1, v5, a3);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance TrafficIncidentNeedsDisambiguationStrategy(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v7 = (*(**v2 + 136) + **(**v2 + 136));
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance ShareETAPromptForContactStrategy;

  return v7(a2);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.parseDisambiguationResult(input:paginatedItems:resolveRecord:) in conformance TrafficIncidentNeedsDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 152) + **(**v4 + 152));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:resolveRecord:) in conformance TrafficIncidentNeedsDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 160) + **(**v3 + 160));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance TrafficIncidentNeedsDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for TrafficIncidentNeedsDisambiguationStrategy();
  *v10 = v5;
  v10[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:) in conformance TrafficIncidentNeedsDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for TrafficIncidentNeedsDisambiguationStrategy();
  *v10 = v5;
  v10[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance TrafficIncidentNeedsDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TrafficIncidentNeedsDisambiguationStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance TrafficIncidentNeedsDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TrafficIncidentNeedsDisambiguationStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:) in conformance TrafficIncidentNeedsDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TrafficIncidentNeedsDisambiguationStrategy();

  return NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:)(a1, v5, a3);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance TrafficIncidentNeedsDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for TrafficIncidentNeedsDisambiguationStrategy();
  *v12 = v6;
  v12[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v13, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance TrafficIncidentNeedsDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for TrafficIncidentNeedsDisambiguationStrategy();
  *v14 = v7;
  v14[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v15, a7);
}

uint64_t outlined init with copy of TrafficIncident(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrafficIncident(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TrafficIncident(uint64_t a1)
{
  v2 = type metadata accessor for TrafficIncident(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_90150()
{
  outlined consume of GeoDataModels(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_2(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type BasicDisambiguationItemContainer<INSupportedTrafficIncidentType> and conformance BasicDisambiguationItemContainer<A>()
{
  result = lazy protocol witness table cache variable for type BasicDisambiguationItemContainer<INSupportedTrafficIncidentType> and conformance BasicDisambiguationItemContainer<A>;
  if (!lazy protocol witness table cache variable for type BasicDisambiguationItemContainer<INSupportedTrafficIncidentType> and conformance BasicDisambiguationItemContainer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow32BasicDisambiguationItemContainerCySo30INSupportedTrafficIncidentTypeCGMd, &_s11SiriKitFlow32BasicDisambiguationItemContainerCySo30INSupportedTrafficIncidentTypeCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BasicDisambiguationItemContainer<INSupportedTrafficIncidentType> and conformance BasicDisambiguationItemContainer<A>);
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.geoClientComponent.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent();
  v22 = *(v1 - 8);
  v23 = v1;
  __chkstk_darwin();
  v21 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.clientDrivenExperience.getter();
  (*(v8 + 8))(v10, v7);
  v15 = Apple_Parsec_Siri_V2alpha_ClientDrivenExperience.components.getter();
  (*(v4 + 8))(v6, v3);
  if (*(v15 + 16))
  {
    (*(v12 + 16))(v14, v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11);

    v16 = v21;
    Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
    (*(v12 + 8))(v14, v11);
    v17 = v24;
    Apple_Parsec_Siri_V2alpha_DomainClientComponent.geoClientComponent.getter();
    (*(v22 + 8))(v16, v23);
    v18 = 0;
  }

  else
  {

    v18 = 1;
    v17 = v24;
  }

  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  return (*(*(v19 - 8) + 56))(v17, v18, 1, v19);
}

uint64_t ShareETABaseFlow.__allocating_init(with:stopSharing:flowHelper:checkNavigation:)(uint64_t a1, char a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  v10 = OS_os_log.init(subsystem:category:)();
  *(v9 + 16) = v10;
  type metadata accessor for CATService();
  v11 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v11 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v11 + 32) = OS_os_log.init(subsystem:category:)();
  *(v11 + 16) = 0;
  *(v9 + 24) = v11;
  *(v9 + 88) = 0;
  *(v9 + 112) = 0;
  v13 = static os_log_type_t.info.getter();
  v14 = v10;
  os_log(_:dso:log:_:_:)(v13, &dword_0, v14, "ShareETABaseFlow initialized", 28, 2, &_swiftEmptyArrayStorage);

  *(v9 + 32) = a1;
  *(v9 + 40) = 0;
  *(v9 + 41) = a2;
  outlined init with take of CATType(a3, v9 + 48);
  *(v9 + 96) = a4;
  *(v9 + 104) = a5;
  return v9;
}

uint64_t one-time initialization function for kShareETAAuthenticationPolicy()
{
  v0 = type metadata accessor for UnlockDevicePolicy();
  __swift_allocate_value_buffer(v0, kShareETAAuthenticationPolicy);
  __swift_project_value_buffer(v0, kShareETAAuthenticationPolicy);
  return static UnlockDevicePolicy.default.getter();
}

uint64_t ShareETABaseFlow.flowState.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  outlined copy of ShareETABaseFlow.State(v1, *(v0 + 40));
  return v1;
}

uint64_t ShareETABaseFlow.flowState.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  v6 = *(v2 + 40);
  *(v2 + 40) = a2;
  return outlined consume of ShareETABaseFlow.State(v5, v6);
}

uint64_t ShareETABaseFlow.directInvocation.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t ShareETABaseFlow.checkNavigation.setter(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t ShareETABaseFlow.isPOMMES.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

uint64_t ShareETABaseFlow.isUSO.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 113) = a1;
  return result;
}

uint64_t ShareETABaseFlow.init(with:stopSharing:flowHelper:checkNavigation:)(uint64_t a1, char a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v5 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v12 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v12 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v12 + 32) = OS_os_log.init(subsystem:category:)();
  *(v12 + 16) = 0;
  *(v5 + 24) = v12;
  *(v5 + 88) = 0;
  *(v5 + 112) = 0;
  v14 = static os_log_type_t.info.getter();
  v15 = *(v6 + 16);
  os_log(_:dso:log:_:_:)(v14, &dword_0, v15, "ShareETABaseFlow initialized", 28, 2, &_swiftEmptyArrayStorage);

  *(v6 + 32) = a1;
  *(v6 + 40) = 0;
  *(v6 + 41) = a2;
  outlined init with take of CATType(a3, v6 + 48);
  *(v6 + 96) = a4;
  *(v6 + 104) = a5;
  return v6;
}

uint64_t outlined copy of ShareETABaseFlow.State(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  if (a2 == 2)
  {
  }

  if (a2 == 3)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t outlined consume of ShareETABaseFlow.State(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  if (a2 == 2)
  {
  }

  if (a2 == 3)
  {
  }

  return v2;
}

uint64_t ShareETABaseFlow.onInput(input:)(uint64_t a1)
{
  v2 = type metadata accessor for Input();
  v57 = *(v2 - 8);
  v58 = v2;
  __chkstk_darwin();
  v56 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Parse();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v59 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = &v56 - v7;
  __chkstk_darwin();
  v9 = &v56 - v8;
  __chkstk_darwin();
  v11 = &v56 - v10;
  v12 = type metadata accessor for Parse.DirectInvocation();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1;
  Input.parse.getter();
  v16 = *(v5 + 88);
  if (v16(v11, v4) == enum case for Parse.directInvocation(_:))
  {
    (*(v5 + 96))(v11, v4);
    (*(v13 + 32))(v15, v11, v12);
    if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000002CLL && 0x80000000000BFC00 == v17)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        (*(v13 + 8))(v15, v12);
        goto LABEL_9;
      }
    }

    v34 = v62;
    (*(*v62 + 208))(1);
    v35 = v34[2];
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "ShareETABaseFlow onInput returns true for directInvocation parse", v37, 2u);
    }

    (*(v13 + 8))(v15, v12);
    return 1;
  }

  (*(v5 + 8))(v11, v4);
LABEL_9:
  v20 = v61;
  Input.parse.getter();
  v21 = v16(v9, v4);
  v22 = enum case for Parse.NLv3IntentOnly(_:);
  v23 = *(v5 + 8);
  v23(v9, v4);
  if (v21 == v22)
  {
    v24 = v62[2];
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "ShareETABaseFlow onInput returns true for NLv3IntentOnly parse";
LABEL_15:
      _os_log_impl(&dword_0, v24, v25, v27, v26, 2u);

      return 1;
    }

    return 1;
  }

  v28 = v60;
  Input.parse.getter();
  v29 = v16(v28, v4);
  v30 = enum case for Parse.pommesResponse(_:);
  v23(v28, v4);
  if (v29 == v30)
  {
    v31 = v62;
    (*(*v62 + 256))(1);
    v24 = v31[2];
    v25 = static os_log_type_t.default.getter();
    v32 = os_log_type_enabled(v24, v25);
    result = 1;
    if (v32)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "ShareETABaseFlow onInput returns true for pommesResponse parse";
      goto LABEL_15;
    }
  }

  else
  {
    v38 = v59;
    Input.parse.getter();
    v39 = v16(v38, v4);
    v40 = enum case for Parse.uso(_:);
    v23(v38, v4);
    v41 = v62;
    v42 = v62[2];
    if (v39 == v40)
    {
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_0, v42, v43, "ShareETABaseFlow onInput returns true for USO parse", v44, 2u);
      }

      (*(*v41 + 280))(1);
      return 1;
    }

    else
    {
      v45 = v56;
      v46 = v57;
      v47 = v58;
      (*(v57 + 16))(v56, v20, v58);
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v63 = v50;
        *v49 = 136315138;
        v51 = v45;
        v52 = Input.description.getter();
        v54 = v53;
        (*(v46 + 8))(v51, v47);
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v63);

        *(v49 + 4) = v55;
        _os_log_impl(&dword_0, v42, v48, "SiriGeo currently doesn't support parse type: %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v50);
      }

      else
      {
        (*(v46 + 8))(v45, v47);
      }

      return 0;
    }
  }

  return result;
}

uint64_t ShareETABaseFlow.executeState()(uint64_t a1)
{
  v2[198] = v1;
  v2[197] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo16INShareETAIntentCSo0fG8ResponseCGSgMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo16INShareETAIntentCSo0fG8ResponseCGSgMR);
  v2[199] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo20INStopShareETAIntentCSo0fgH8ResponseCGSgMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo20INStopShareETAIntentCSo0fgH8ResponseCGSgMR);
  v2[200] = swift_task_alloc();
  v3 = type metadata accessor for TemplatingResult();
  v2[201] = v3;
  v4 = *(v3 - 8);
  v2[202] = v4;
  v2[203] = *(v4 + 64);
  v2[204] = swift_task_alloc();
  v2[205] = swift_task_alloc();
  v2[206] = swift_task_alloc();
  v2[207] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v2[208] = swift_task_alloc();
  v5 = type metadata accessor for ActivityType();
  v2[209] = v5;
  v2[210] = *(v5 - 8);
  v2[211] = swift_task_alloc();
  v2[212] = swift_task_alloc();
  v2[213] = swift_task_alloc();
  v2[214] = type metadata accessor for ShareETA(0);
  v2[215] = swift_task_alloc();
  v6 = type metadata accessor for RecommenderType();
  v2[216] = v6;
  v2[217] = *(v6 - 8);
  v2[218] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v2[219] = swift_task_alloc();
  v7 = type metadata accessor for SearchSuggestedContacts();
  v2[220] = v7;
  v2[221] = *(v7 - 8);
  v2[222] = swift_task_alloc();
  type metadata accessor for Locale();
  v2[223] = swift_task_alloc();
  type metadata accessor for ContactResolverDomain();
  v2[224] = swift_task_alloc();
  v8 = type metadata accessor for SiriKitContactResolver();
  v2[225] = v8;
  v2[226] = *(v8 - 8);
  v2[227] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology18OccupantIntentNodeVSgMd, &_s12SiriOntology18OccupantIntentNodeVSgMR);
  v2[228] = swift_task_alloc();
  v9 = type metadata accessor for OccupantIntentNode();
  v2[229] = v9;
  v2[230] = *(v9 - 8);
  v2[231] = swift_task_alloc();
  v2[232] = swift_task_alloc();

  return _swift_task_switch(ShareETABaseFlow.executeState(), 0, 0);
}

id ShareETABaseFlow.executeState()(uint64_t a1)
{
  v251 = boxed_opaque_existential_0;
  v2 = boxed_opaque_existential_0;
  v3 = boxed_opaque_existential_0[198];
  v4 = static os_log_type_t.info.getter();
  v5 = *(v3 + 16);
  v6 = os_log(_:dso:log:_:_:)(v4, &dword_0, v5, "ShareETABaseFlow execute", 24, 2, &_swiftEmptyArrayStorage);
  v7 = (*(*v3 + 152))(v6);
  v9 = v7;
  boxed_opaque_existential_0[233] = v7;
  if (v8 > 1u)
  {
    if (v8 == 2)
    {
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v250[0] = v17;
        *v16 = 136315138;
        boxed_opaque_existential_0[190] = v9;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
        v18 = String.init<A>(describing:)();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v250);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_0, v5, v15, "ShareETABaseFlow contactResolved %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
      }

      if (*(boxed_opaque_existential_0[198] + 41) == 1)
      {
        v21 = specialized ShareETABaseFlow.makeSkeletonINPerson(inpersons:)(v9);
        outlined consume of ShareETABaseFlow.State(v9, 2u);
        if (v21)
        {
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
          v22.super.isa = Array._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v22.super.isa = 0;
        }

        v112 = boxed_opaque_existential_0[200];
        v113 = boxed_opaque_existential_0[198];
        v114 = [objc_allocWithZone(INStopShareETAIntent) initWithRecipients:v22.super.isa];

        v115 = *(*v113 + 248);
        v116 = v114;
        v117 = v115();
        type metadata accessor for StopShareETAFlowDelegate(0);
        swift_allocObject();
        specialized StopShareETAFlowDelegate.init(stopShareETAIntent:isPOMMES:)(v116, v117 & 1);

        type metadata accessor for App();
        swift_allocObject();
        App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
        v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo20INStopShareETAIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo20INStopShareETAIntentCSo0fgH8ResponseCGMR);
        (*(*(v118 - 8) + 56))(v112, 1, 1, v118);
        lazy protocol witness table accessor for type ShareETAFlowDelegate and conformance BaseRCHFlowDelegate<A, B>(&lazy protocol witness table cache variable for type StopShareETAFlowDelegate and conformance BaseRCHFlowDelegate<A, B>, 255, type metadata accessor for StopShareETAFlowDelegate, &protocol conformance descriptor for BaseRCHFlowDelegate<A, B>);
        v119 = RCHFlowDelegate.makeRCHFlow(app:intent:producers:)();

        outlined destroy of Mirror.DisplayStyle?(v112, &_s11SiriKitFlow08RCHChildC9ProducersVySo20INStopShareETAIntentCSo0fgH8ResponseCGSgMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo20INStopShareETAIntentCSo0fgH8ResponseCGSgMR);
        *(v2 + 1536) = v119;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow7RCHFlowCyAA013RCHDelegateToD15StrategyAdapterCy03GeoC14DelegatePlugin016StopShareETAFlowJ0CGGMd, &_s11SiriKitFlow7RCHFlowCyAA013RCHDelegateToD15StrategyAdapterCy03GeoC14DelegatePlugin016StopShareETAFlowJ0CGGMR);
        lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type RCHFlow<RCHDelegateToRCHFlowStrategyAdapter<StopShareETAFlowDelegate>> and conformance RCHFlow<A>, &_s11SiriKitFlow7RCHFlowCyAA013RCHDelegateToD15StrategyAdapterCy03GeoC14DelegatePlugin016StopShareETAFlowJ0CGGMd, &_s11SiriKitFlow7RCHFlowCyAA013RCHDelegateToD15StrategyAdapterCy03GeoC14DelegatePlugin016StopShareETAFlowJ0CGGMR, &protocol conformance descriptor for RCHFlow<A>);
        static ExecuteResponse.complete<A>(next:childCompletion:)();

        goto LABEL_56;
      }

      if (!v9 || (outlined copy of ShareETABaseFlow.State(v9, 2u), specialized ShareETABaseFlow.missingContactInformation(persons:)(v9), v35 = v34, outlined consume of ShareETABaseFlow.State(v9, 2u), (v35 & 1) == 0))
      {
        v50 = specialized ShareETABaseFlow.makeSkeletonINPerson(inpersons:)(v9);
        outlined consume of ShareETABaseFlow.State(v9, 2u);
        if (v50)
        {
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
          v51.super.isa = Array._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v51.super.isa = 0;
        }

        v247 = [objc_allocWithZone(INShareETAIntent) initWithRecipients:v51.super.isa];

        v120 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v5, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v250[0] = v122;
          *v121 = 136315138;
          v123 = v247;
          v124 = [v123 description];
          v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v127 = v126;

          v128 = v125;
          v2 = boxed_opaque_existential_0;
          v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v127, v250);

          *(v121 + 4) = v129;
          _os_log_impl(&dword_0, v5, v120, "Converted Sirikit Intent %s", v121, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v122);
        }

        v130 = static os_log_type_t.info.getter();
        v131 = os_log_type_enabled(v5, v130);
        if (v131)
        {
          v132 = *(v2 + 1584);

          v133 = swift_slowAlloc();
          *v133 = 67109120;
          *(v133 + 4) = (*(*v132 + 248))() & 1;

          _os_log_impl(&dword_0, v5, v130, "is POMMES ShareETA .complete? %{BOOL}d", v133, 8u);
        }

        v134 = *(v2 + 1592);
        v135 = *(v2 + 1584);
        v136 = (*(*v135 + 248))(v131);
        v137 = (*(*v135 + 272))();
        static Device.current.getter();
        type metadata accessor for ShareETAFlowDelegate(0);
        v138 = v2;
        v139 = swift_allocObject();
        v140 = direct field offset for ShareETAFlowDelegate.logObject;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
        *(v139 + v140) = OS_os_log.init(subsystem:category:)();
        v141 = direct field offset for ShareETAFlowDelegate.isPOMMES;
        *(v139 + direct field offset for ShareETAFlowDelegate.isPOMMES) = 0;
        v142 = direct field offset for ShareETAFlowDelegate.isUSO;
        *(v139 + direct field offset for ShareETAFlowDelegate.isUSO) = 0;
        *(v139 + direct field offset for ShareETAFlowDelegate.disambiguationState) = 0;
        outlined init with copy of DeviceState(v138 + 192, v139 + direct field offset for ShareETAFlowDelegate.currentDeviceState);
        swift_beginAccess();
        *(v139 + v141) = v136 & 1;
        swift_beginAccess();
        *(v139 + v142) = v137 & 1;
        v2 = v138;
        BaseRCHFlowDelegate.init()();
        __swift_destroy_boxed_opaque_existential_0Tm((v138 + 192));
        type metadata accessor for App();
        swift_allocObject();
        App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
        v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo16INShareETAIntentCSo0fG8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo16INShareETAIntentCSo0fG8ResponseCGMR);
        (*(*(v143 - 8) + 56))(v134, 1, 1, v143);
        lazy protocol witness table accessor for type ShareETAFlowDelegate and conformance BaseRCHFlowDelegate<A, B>(&lazy protocol witness table cache variable for type ShareETAFlowDelegate and conformance BaseRCHFlowDelegate<A, B>, 255, type metadata accessor for ShareETAFlowDelegate, &protocol conformance descriptor for BaseRCHFlowDelegate<A, B>);
        v144 = RCHFlowDelegate.makeRCHFlow(app:intent:producers:)();

        outlined destroy of Mirror.DisplayStyle?(v134, &_s11SiriKitFlow08RCHChildC9ProducersVySo16INShareETAIntentCSo0fG8ResponseCGSgMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo16INShareETAIntentCSo0fG8ResponseCGSgMR);
        *(v138 + 1560) = v144;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow7RCHFlowCyAA013RCHDelegateToD15StrategyAdapterCy03GeoC14DelegatePlugin012ShareETAFlowJ0CGGMd, &_s11SiriKitFlow7RCHFlowCyAA013RCHDelegateToD15StrategyAdapterCy03GeoC14DelegatePlugin012ShareETAFlowJ0CGGMR);
        lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type RCHFlow<RCHDelegateToRCHFlowStrategyAdapter<ShareETAFlowDelegate>> and conformance RCHFlow<A>, &_s11SiriKitFlow7RCHFlowCyAA013RCHDelegateToD15StrategyAdapterCy03GeoC14DelegatePlugin012ShareETAFlowJ0CGGMd, &_s11SiriKitFlow7RCHFlowCyAA013RCHDelegateToD15StrategyAdapterCy03GeoC14DelegatePlugin012ShareETAFlowJ0CGGMR, &protocol conformance descriptor for RCHFlow<A>);
        static ExecuteResponse.complete<A>(next:childCompletion:)();

        goto LABEL_56;
      }

      v36 = boxed_opaque_existential_0[211];
      v37 = boxed_opaque_existential_0[210];
      v38 = *(v2 + 1672);
      static SiriKitEventSender.current.getter();
      v237 = __swift_project_boxed_opaque_existential_1((v2 + 312), *(v2 + 336));
      (*(v37 + 104))(v36, enum case for ActivityType.failed(_:), v38);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntent, INShareETAIntent_ptr);
      result = [swift_getObjCClassFromMetadata() typeName];
      if (result)
      {
        v39 = result;
        v40 = *(v2 + 1664);
        v230 = *(v2 + 1584);
        v233 = *(v2 + 1712);
        type metadata accessor for SiriKitEvent();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v41 = enum case for SiriKitReliabilityCodes.contactNotFoundFromConverter(_:);
        v42 = type metadata accessor for SiriKitReliabilityCodes();
        v43 = *(v42 - 8);
        (*(v43 + 104))(v40, v41, v42);
        (*(v43 + 56))(v40, 0, 1, v42);
        SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
        dispatch thunk of SiriKitEventSending.send(_:)();

        __swift_destroy_boxed_opaque_existential_0Tm((v2 + 312));
        v44 = *(v230 + 24);
        *(v2 + 376) = v233;
        *(v2 + 384) = &protocol witness table for ShareETA;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v2 + 352));
        v240 = v9 & 0xC000000000000001;
        v244 = v44;
        if ((v9 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_81;
          }

          v45 = *(v9 + 32);
        }

        type metadata accessor for DialogPerson();
        static Device.current.getter();
        __swift_project_boxed_opaque_existential_1((v2 + 392), *(v2 + 416));
        dispatch thunk of DeviceState.siriLocale.getter();
        __swift_destroy_boxed_opaque_existential_0Tm((v2 + 392));
        v46 = DialogPerson.__allocating_init(person:locale:useConversationalName:)();
        if (v46)
        {
          v47 = v46;
          outlined consume of ShareETABaseFlow.State(v9, 2u);
        }

        else
        {
          if (v240)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v203 = *(v9 + 32);
          }

          outlined consume of ShareETABaseFlow.State(v9, 2u);
          static Device.current.getter();
          __swift_project_boxed_opaque_existential_1((v2 + 432), *(v2 + 456));
          dispatch thunk of DeviceState.siriLocale.getter();
          v47 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
          __swift_destroy_boxed_opaque_existential_0Tm((v2 + 432));
        }

        v204 = *(v2 + 1584);
        *boxed_opaque_existential_0 = v47;
        v205 = swift_storeEnumTagMultiPayload();
        v206 = *(*v204 + 176);
        v207 = *v204 + 176;
        *(v2 + 1984) = v206;
        *(v2 + 1992) = v207 & 0xFFFFFFFFFFFFLL | 0x55F0000000000000;
        v206(v205);
        v208 = *(v2 + 496);
        v209 = *(v2 + 504);
        __swift_project_boxed_opaque_existential_1((v2 + 472), v208);
        v210 = (*(v209 + 80))(v208, v209);
        *(v2 + 2000) = v210;
        __swift_destroy_boxed_opaque_existential_0Tm((v2 + 472));
        v243 = (*(*v244 + 112) + **(*v244 + 112));
        v211 = swift_task_alloc();
        *(v2 + 2008) = v211;
        *v211 = v2;
        v211[1] = ShareETABaseFlow.executeState();
        v180 = *(v2 + 1632);
        v181 = v2 + 352;
        v182 = v210;
        v202 = v243;
        goto LABEL_76;
      }

      __break(1u);
      goto LABEL_83;
    }

    if (v8 == 3)
    {
      boxed_opaque_existential_0[189] = v7;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if ((swift_dynamicCast() & 1) == 0)
      {
        static OutputPublisherFactory.makeOutputPublisherAsync()();
        type metadata accessor for SimpleOutputFlowAsync();
        swift_allocObject();
        boxed_opaque_existential_0[187] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
        goto LABEL_33;
      }

      v10 = boxed_opaque_existential_0[180];
      boxed_opaque_existential_0[235] = v10;
      v11 = boxed_opaque_existential_0[181];
      boxed_opaque_existential_0[236] = v11;
      if (v11 <= 0xA)
      {
        if (((1 << v11) & 0x630) != 0)
        {
          goto LABEL_67;
        }

        if (((1 << v11) & 0x180) != 0)
        {
          static OutputPublisherFactory.makeOutputPublisherAsync()();
          type metadata accessor for SimpleOutputFlowAsync();
          swift_allocObject();
          boxed_opaque_existential_0[185] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
LABEL_33:
          static ExecuteResponse.complete<A>(next:)();
          outlined consume of ShareETABaseFlow.State(v9, 3u);
LABEL_56:

          goto LABEL_57;
        }

        if (v11 == 6)
        {
          v146 = boxed_opaque_existential_0[215];
          v147 = boxed_opaque_existential_0[198];
          LOBYTE(v240) = (*(*v147 + 248))();
          v237 = (*(*v147 + 200))();
          v244 = *(*v147 + 176);
          v244();
          v148 = enum case for BehaviorAfterSpeaking.listen(_:);
          v149 = type metadata accessor for BehaviorAfterSpeaking();
          (*(*(v149 - 8) + 104))(v146, v148, v149);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for ShareETAPromptForContactStrategy(0);
          v3 = swift_allocObject();
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
          *(v3 + 16) = OS_os_log.init(subsystem:category:)();
          type metadata accessor for CATService();
          v150 = swift_allocObject();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          *(v150 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
          *(v150 + 32) = OS_os_log.init(subsystem:category:)();
          *(v150 + 16) = 0;
          *(v3 + 24) = v150;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v2 = swift_allocObject();
          *(v2 + 16) = xmmword_B7D60;
          type metadata accessor for AddressOntologyNode.OccupantNode();
          swift_allocObject();
          AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
          v152 = specialized OntologyNode.javaClassName.getter();
          v154 = v153;

          *(v2 + 32) = v152;
          *(v2 + 40) = v154;
          static AddressOntologyNode.OccupantNode.occupantFullNameNode.getter();
          v155 = specialized OntologyNode.javaClassName.getter();
          v157 = v156;

          *(v2 + 48) = v155;
          *(v2 + 56) = v157;
          if (one-time initialization token for confirmationNode == -1)
          {
LABEL_62:
            v158 = boxed_opaque_existential_0[215];
            *(v2 + 64) = specialized OntologyNode.javaClassName.getter();
            *(v2 + 72) = v159;
            *(v3 + 32) = v2;
            *(v3 + 40) = 0;
            *(v3 + 48) = 0;
            *(v3 + 96) = 0;
            swift_beginAccess();
            *(v3 + 96) = v240 & 1;
            swift_beginAccess();
            *(v3 + 48) = v237 & 1;
            outlined init with take of CATType((boxed_opaque_existential_0 + 119), v3 + 56);
            outlined init with take of ShareETA(v158, v3 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin32ShareETAPromptForContactStrategy_catModel);

            (v244)(v160);
            v161 = boxed_opaque_existential_0[137];
            v162 = boxed_opaque_existential_0[138];
            __swift_project_boxed_opaque_existential_1(boxed_opaque_existential_0 + 134, v161);
            (*(v162 + 104))(v250, v161, v162);
            __swift_destroy_boxed_opaque_existential_0Tm(boxed_opaque_existential_0 + 134);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow014PromptForValueC5AsyncCy03GeoC14DelegatePlugin20LocationSearchIntentCGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCy03GeoC14DelegatePlugin20LocationSearchIntentCGMR);
            swift_allocObject();
            lazy protocol witness table accessor for type ShareETAFlowDelegate and conformance BaseRCHFlowDelegate<A, B>(&lazy protocol witness table cache variable for type ShareETAPromptForContactStrategy and conformance ShareETAPromptForContactStrategy, 255, type metadata accessor for ShareETAPromptForContactStrategy, &protocol conformance descriptor for ShareETAPromptForContactStrategy);
            boxed_opaque_existential_0[183] = PromptForValueFlowAsync.init<A>(strategy:outputPublisher:)();
            lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type PromptForValueFlowAsync<LocationSearchIntent> and conformance PromptForValueFlowAsync<A>, &_s11SiriKitFlow014PromptForValueC5AsyncCy03GeoC14DelegatePlugin20LocationSearchIntentCGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCy03GeoC14DelegatePlugin20LocationSearchIntentCGMR, &protocol conformance descriptor for PromptForValueFlowAsync<A>);

            static ExecuteResponse.ongoing<A>(next:childCompletion:)();

            outlined consume of ShareETABaseFlow.State(v9, 3u);
LABEL_41:

            v2 = boxed_opaque_existential_0;
            goto LABEL_57;
          }

LABEL_81:
          swift_once();
          goto LABEL_62;
        }
      }

      if (v11 >= 2)
      {
        if (v11 - 2 >= 2)
        {
          v184 = boxed_opaque_existential_0[213];
          v185 = boxed_opaque_existential_0[210];
          v186 = *(v2 + 1672);
          type metadata accessor for DialogPerson.Builder();
          swift_allocObject();

          DialogPerson.Builder.init()();
          dispatch thunk of DialogPerson.Builder.withRelated(_:)();

          dispatch thunk of DialogPerson.Builder.withUseConversationalName(_:)();

          dispatch thunk of DialogPerson.Builder.withGivenName(print:speak:)();

          v249 = dispatch thunk of DialogPerson.Builder.build()();
          *(v2 + 1896) = v249;

          static SiriKitEventSender.current.getter();
          __swift_project_boxed_opaque_existential_1((v2 + 1032), *(v2 + 1056));
          (*(v185 + 104))(v184, enum case for ActivityType.failed(_:), v186);
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntent, INShareETAIntent_ptr);
          result = [swift_getObjCClassFromMetadata() typeName];
          if (result)
          {
            v187 = result;
            v232 = *(v2 + 1712);
            v188 = *(v2 + 1664);
            v189 = *(v2 + 1584);
            type metadata accessor for SiriKitEvent();
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v190 = enum case for SiriKitReliabilityCodes.relationshipNotFoundFromSkeletonContact(_:);
            v191 = type metadata accessor for SiriKitReliabilityCodes();
            v192 = *(v191 - 8);
            (*(v192 + 104))(v188, v190, v191);
            (*(v192 + 56))(v188, 0, 1, v191);
            v193 = swift_allocObject();
            *(v193 + 16) = v10;
            *(v193 + 24) = v11;
            SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
            dispatch thunk of SiriKitEventSending.send(_:)();

            __swift_destroy_boxed_opaque_existential_0Tm((v2 + 1032));
            v194 = v189[3];
            *(v2 + 1016) = v232;
            *(v2 + 1024) = &protocol witness table for ShareETA;
            *__swift_allocate_boxed_opaque_existential_0((v2 + 992)) = v249;
            swift_storeEnumTagMultiPayload();
            v195 = *(*v189 + 176);
            v196 = *v189 + 176;
            *(v2 + 1904) = v195;
            *(v2 + 1912) = v196 & 0xFFFFFFFFFFFFLL | 0x55F0000000000000;

            v195(v197);
            v198 = *(v2 + 936);
            v199 = *(v2 + 944);
            __swift_project_boxed_opaque_existential_1((v2 + 912), v198);
            v200 = (*(v199 + 80))(v198, v199);
            *(v2 + 1920) = v200;
            __swift_destroy_boxed_opaque_existential_0Tm((v2 + 912));
            v248 = (*(*v194 + 112) + **(*v194 + 112));
            v201 = swift_task_alloc();
            *(v2 + 1928) = v201;
            *v201 = v2;
            v201[1] = ShareETABaseFlow.executeState();
            v180 = *(v2 + 1656);
            v181 = v2 + 992;
            v182 = v200;
            goto LABEL_72;
          }

LABEL_84:
          __break(1u);
          return result;
        }

        v163 = boxed_opaque_existential_0[212];
        v164 = boxed_opaque_existential_0[210];
        v165 = *(v2 + 1672);
        static SiriKitEventSender.current.getter();
        __swift_project_boxed_opaque_existential_1((v2 + 1152), *(v2 + 1176));
        (*(v164 + 104))(v163, enum case for ActivityType.failed(_:), v165);
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntent, INShareETAIntent_ptr);
        result = [swift_getObjCClassFromMetadata() typeName];
        if (result)
        {
          v166 = result;
          v236 = *(v2 + 1712);
          v167 = *(v2 + 1664);
          v168 = *(v2 + 1584);
          outlined consume of ContactResolutionFlowError(v10, v11);
          type metadata accessor for SiriKitEvent();
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v169 = enum case for SiriKitReliabilityCodes.contactNotFoundFromConverter(_:);
          v170 = type metadata accessor for SiriKitReliabilityCodes();
          v171 = *(v170 - 8);
          (*(v171 + 104))(v167, v169, v170);
          (*(v171 + 56))(v167, 0, 1, v170);
          SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
          dispatch thunk of SiriKitEventSending.send(_:)();

          __swift_destroy_boxed_opaque_existential_0Tm((v2 + 1152));
          v172 = v168[3];
          *(v2 + 1216) = v236;
          *(v2 + 1224) = &protocol witness table for ShareETA;
          __swift_allocate_boxed_opaque_existential_0((v2 + 1192));
          v173 = swift_storeEnumTagMultiPayload();
          v174 = *(*v168 + 176);
          v175 = *v168 + 176;
          *(v2 + 1944) = v174;
          *(v2 + 1952) = v175 & 0xFFFFFFFFFFFFLL | 0x55F0000000000000;
          v174(v173);
          v176 = *(v2 + 256);
          v177 = *(v2 + 264);
          __swift_project_boxed_opaque_existential_1((v2 + 232), v176);
          v178 = (*(v177 + 80))(v176, v177);
          *(v2 + 1960) = v178;
          __swift_destroy_boxed_opaque_existential_0Tm((v2 + 232));
          v248 = (*(*v172 + 112) + **(*v172 + 112));
          v179 = swift_task_alloc();
          *(v2 + 1968) = v179;
          *v179 = v2;
          v179[1] = ShareETABaseFlow.executeState();
          v180 = *(v2 + 1640);
          v181 = v2 + 1192;
          v182 = v178;
LABEL_72:
          v202 = v248;
LABEL_76:

          return (v202)(v180, v181, v182);
        }

LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

LABEL_67:
      type metadata accessor for UnsupportedRequestFlow();
      v183 = swift_allocObject();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
      *(v183 + 16) = OS_os_log.init(subsystem:category:)();
      boxed_opaque_existential_0[186] = v183;
      lazy protocol witness table accessor for type ShareETAFlowDelegate and conformance BaseRCHFlowDelegate<A, B>(&lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow, 255, type metadata accessor for UnsupportedRequestFlow, &protocol conformance descriptor for UnsupportedRequestFlow);
      static ExecuteResponse.complete<A>(next:)();
      outlined consume of ContactResolutionFlowError(v10, v11);
      outlined consume of ShareETABaseFlow.State(v9, 3u);
      goto LABEL_56;
    }

    static ExecuteResponse.complete()();
LABEL_57:

    v145 = *(v2 + 8);

    return v145();
  }

  if (v8)
  {
    v23 = static os_log_type_t.info.getter();
    os_log(_:dso:log:_:_:)(v23, &dword_0, v5, "ShareETABaseFlow execute initialized", 36, 2, &_swiftEmptyArrayStorage);
    v24 = static os_log_type_t.info.getter();
    v25 = os_log_type_enabled(v5, v24);
    if (v25)
    {
      v26 = boxed_opaque_existential_0[198];

      v27 = swift_slowAlloc();
      *v27 = 67109120;
      *(v27 + 4) = (*(*v26 + 248))() & 1;

      _os_log_impl(&dword_0, v5, v24, "Is POMMES ShareETA request? : %{BOOL}d", v27, 8u);
    }

    v28 = boxed_opaque_existential_0[230];
    v29 = *(v2 + 1832);
    v30 = *(v2 + 1824);
    (*(*v9 + 208))(v25);
    if ((*(v28 + 48))(v30, 1, v29) != 1)
    {
      v238 = v2 + 632;
      v48 = *(v2 + 1584);
      v49 = (*(*(v2 + 1840) + 32))(*(v2 + 1856), *(v2 + 1824), *(v2 + 1832));
      if (*(v48 + 41) == 1)
      {
        v241 = 0;
        v245 = 0;
        v214 = INStopShareETAIntent_ptr;
      }

      else
      {
        v74 = *(v2 + 1584);
        v242 = *(*v74 + 248);
        v225 = (v242)(v49);
        v226 = *(*v74 + 272);
        v223 = v226();
        v221 = OccupantIntentNode.asINPerson.getter();
        static Device.current.getter();
        v75 = type metadata accessor for GeoRCHFlowFactoryImpl();
        v76 = swift_allocObject();
        *(v2 + 80) = v75;
        *(v2 + 88) = &protocol witness table for GeoRCHFlowFactoryImpl;
        *(v2 + 56) = v76;
        *(v2 + 96) = static DialogHelper.globals.getter();
        static AceService.currentAsync.getter();
        static OutputPublisherFactory.makeOutputPublisherAsync()();
        type metadata accessor for CATService();
        v77 = swift_allocObject();
        v78 = swift_getObjCClassFromMetadata();
        v79 = objc_opt_self();
        *(v77 + 24) = [v79 bundleForClass:v78];
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
        v234 = v2;
        *(v77 + 32) = OS_os_log.init(subsystem:category:)();
        *(v77 + 16) = 0;
        *(v2 + 184) = v77;
        v80 = swift_allocObject();
        *(v80 + 24) = [v79 bundleForClass:v78];
        *(v80 + 32) = OS_os_log.init(subsystem:category:)();
        *(v80 + 16) = 1;
        type metadata accessor for ShareETAContactDisambiguationStrategy();
        v81 = swift_allocObject();
        *(v2 + 696) = &type metadata for FlowHelperImpl;
        *(v2 + 704) = &protocol witness table for FlowHelperImpl;
        v82 = swift_allocObject();
        *(v2 + 672) = v82;
        outlined init with copy of FlowHelperImpl(v2 + 16, v82 + 16);
        *(v81 + 16) = OS_os_log.init(subsystem:category:)();
        *(v81 + 81) = 0;
        *(v81 + 88) = &_swiftEmptyArrayStorage;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v83 = swift_allocObject();
        *(v83 + 16) = xmmword_B7D70;
        if (one-time initialization token for referenceNode != -1)
        {
          swift_once();
        }

        v245 = v81;
        *(v83 + 32) = specialized OntologyNode.javaClassName.getter();
        *(v83 + 40) = v84;
        if (one-time initialization token for confirmationNode != -1)
        {
          swift_once();
        }

        *(v83 + 48) = specialized OntologyNode.javaClassName.getter();
        *(v83 + 56) = v85;
        type metadata accessor for AddressOntologyNode.PersonPlaceNode();
        swift_allocObject();
        AddressOntologyNode.PersonPlaceNode.init(name:multicardinal:)();
        v86 = specialized OntologyNode.javaClassName.getter();
        v88 = v87;

        *(v83 + 64) = v86;
        *(v83 + 72) = v88;
        type metadata accessor for AddressOntologyNode.OccupantNode();
        swift_allocObject();
        AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
        v89 = specialized OntologyNode.javaClassName.getter();
        v91 = v90;

        *(v83 + 80) = v89;
        *(v83 + 88) = v91;
        v2 = v234;
        static AddressOntologyNode.OccupantNode.occupantFullNameNode.getter();
        v92 = specialized OntologyNode.javaClassName.getter();
        v94 = v93;

        *(v83 + 96) = v92;
        *(v83 + 104) = v94;
        type metadata accessor for PersonOntologyNode();
        static PersonOntologyNode.personFullNameNode.getter();
        v95 = specialized OntologyNode.javaClassName.getter();
        v97 = v96;

        *(v83 + 112) = v95;
        *(v83 + 120) = v97;
        *(v245 + 96) = v83;
        *(v245 + 80) = v225 & 1;
        swift_beginAccess();
        *(v245 + 81) = v223 & 1;
        *(v245 + 72) = v221;
        outlined init with take of CATType((v234 + 672), v245 + 32);
        *(v245 + 24) = v80;
        v98 = outlined destroy of FlowHelperImpl(v234 + 16);
        v99 = (v242)(v98);
        v100 = v226();
        type metadata accessor for ShareETAContactConfirmationStrategy();
        swift_allocObject();
        v241 = ShareETAContactConfirmationStrategy.init(isPOMMES:isUSO:)(v99 & 1, v100 & 1);
        v214 = INShareETAIntent_ptr;
      }

      v235 = *(v2 + 1856);
      v227 = *(v2 + 1848);
      v101 = *(v2 + 1840);
      v213 = *(v2 + 1832);
      v228 = *(v2 + 1816);
      v231 = *(v2 + 1808);
      v215 = *(v2 + 1800);
      v216 = *(v2 + 1768);
      v217 = *(v2 + 1776);
      v218 = *(v2 + 1760);
      v219 = *(v2 + 1752);
      v220 = *(v2 + 1736);
      v222 = *(v2 + 1744);
      v224 = *(v2 + 1728);
      v229 = *(v2 + 1584);
      *(v238 + 32) = 0;
      *v238 = 0u;
      *(v238 + 16) = 0u;
      type metadata accessor for ContactService();
      swift_allocObject();
      v102 = ContactService.init()();
      v103 = type metadata accessor for ContactHandleResolver();
      v104 = swift_allocObject();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
      *(v104 + 16) = OS_os_log.init(subsystem:category:)();
      *(v104 + 24) = v102;
      outlined destroy of Mirror.DisplayStyle?(v238, &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMd, &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMR);
      *(v2 + 632) = v104;
      *(v2 + 656) = v103;
      *(v2 + 664) = &protocol witness table for ContactHandleResolver;
      v105 = [objc_allocWithZone(*v214) init];
      v106 = [v105 typeName];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v212 = *(v101 + 16);
      v212(v227, v235, v213);
      v107 = *(*v229 + 176);

      v107(v108);
      outlined init with copy of HandleFilterProtocolAsync?(v238, v2 + 272);
      SiriKitContactResolver.init()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin017ContactResolutionB0CyAA37ShareETAContactDisambiguationStrategyCAA0gh12ConfirmationJ0CGMd, &_s21GeoFlowDelegatePlugin017ContactResolutionB0CyAA37ShareETAContactDisambiguationStrategyCAA0gh12ConfirmationJ0CGMR);
      v109 = swift_allocObject();
      *(v109 + 16) = OS_os_log.init(subsystem:category:)();
      *(v109 + 24) = 0u;
      *(v109 + 40) = 1;
      (*(v231 + 16))(v109 + *(*v109 + 176), v228, v215);
      *(v109 + *(*v109 + 136)) = v245;
      *(v109 + *(*v109 + 144)) = v241;
      v212(v109 + *(*v109 + 128), v227, v213);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin017ContactResolutionB0C5StateOyAA37ShareETAContactDisambiguationStrategyCAA0hi12ConfirmationK0C_GMd, &_s21GeoFlowDelegatePlugin017ContactResolutionB0C5StateOyAA37ShareETAContactDisambiguationStrategyCAA0hi12ConfirmationK0C_GMR);
      swift_storeEnumTagMultiPayload();
      outlined init with copy of DeviceState(v2 + 512, v109 + *(*v109 + 152));
      outlined init with copy of HandleFilterProtocolAsync?(v2 + 272, v109 + *(*v109 + 160));
      static ContactResolverDomain.all.getter();
      static Locale.current.getter();
      (*(v216 + 104))(v217, enum case for SearchSuggestedContacts.ifOnlyMatchIsSuggested(_:), v218);
      static ContactHandleTypePreference.preferPhone.getter();
      v110 = type metadata accessor for ContactHandleTypePreference();
      (*(*(v110 - 8) + 56))(v219, 0, 1, v110);
      (*(v220 + 104))(v222, enum case for RecommenderType.mlRecommender(_:), v224);
      ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:includeResolutionSignals:commsHasForcePrompted:crrCommsAppSelectionJointId:)();
      (*(v231 + 8))(v228, v215);
      outlined destroy of Mirror.DisplayStyle?(v2 + 272, &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMd, &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm((v2 + 512));
      v111 = *(v101 + 8);
      v111(v227, v213);
      *(v2 + 1568) = v109;
      lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type ContactResolutionFlow<ShareETAContactDisambiguationStrategy, ShareETAContactConfirmationStrategy> and conformance ContactResolutionFlow<A, B>, &_s21GeoFlowDelegatePlugin017ContactResolutionB0CyAA37ShareETAContactDisambiguationStrategyCAA0gh12ConfirmationJ0CGMd, &_s21GeoFlowDelegatePlugin017ContactResolutionB0CyAA37ShareETAContactDisambiguationStrategyCAA0gh12ConfirmationJ0CGMR, &protocol conformance descriptor for ContactResolutionFlow<A, B>);

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      outlined consume of ShareETABaseFlow.State(v9, 1u);

      outlined destroy of Mirror.DisplayStyle?(v238, &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMd, &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMR);
      v111(v235, v213);
      goto LABEL_56;
    }

    v31 = *(v2 + 1584);
    v32 = outlined destroy of Mirror.DisplayStyle?(*(v2 + 1824), &_s12SiriOntology18OccupantIntentNodeVSgMd, &_s12SiriOntology18OccupantIntentNodeVSgMR);
    v33 = *v31;
    if (*(v31 + 41) != 1)
    {
      v52 = *(v2 + 1720);
      v53 = *(v2 + 1584);
      v239 = (*(v33 + 248))(v32);
      v54 = (*(*v53 + 200))();
      v246 = *(*v53 + 176);
      v246();
      outlined init with copy of DeviceState(v2 + 792, v2 + 752);
      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSb16directInvocation_11SiriKitFlow21BehaviorAfterSpeakingO09behaviourgH0tMd, &_sSb16directInvocation_11SiriKitFlow21BehaviorAfterSpeakingO09behaviourgH0tMR) + 48);
      v56 = v54 & 1;
      *v52 = v54 & 1;
      v57 = enum case for BehaviorAfterSpeaking.listen(_:);
      v58 = type metadata accessor for BehaviorAfterSpeaking();
      (*(*(v58 - 8) + 104))(&v52[v55], v57, v58);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ShareETAPromptForContactStrategy(0);
      v59 = swift_allocObject();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
      *(v59 + 16) = OS_os_log.init(subsystem:category:)();
      type metadata accessor for CATService();
      v60 = swift_allocObject();
      v61 = swift_getObjCClassFromMetadata();
      *(v60 + 24) = [objc_opt_self() bundleForClass:v61];
      *(v60 + 32) = OS_os_log.init(subsystem:category:)();
      *(v60 + 16) = 0;
      *(v59 + 24) = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_B7D60;
      type metadata accessor for AddressOntologyNode.OccupantNode();
      swift_allocObject();
      AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
      v63 = specialized OntologyNode.javaClassName.getter();
      boxed_opaque_existential_0 = v2;
      v65 = v64;

      *(v62 + 32) = v63;
      *(v62 + 40) = v65;
      static AddressOntologyNode.OccupantNode.occupantFullNameNode.getter();
      v66 = specialized OntologyNode.javaClassName.getter();
      v68 = v67;

      *(v62 + 48) = v66;
      *(v62 + 56) = v68;
      if (one-time initialization token for confirmationNode != -1)
      {
        swift_once();
      }

      v69 = boxed_opaque_existential_0[215];
      *(v62 + 64) = specialized OntologyNode.javaClassName.getter();
      *(v62 + 72) = v70;
      __swift_destroy_boxed_opaque_existential_0Tm(boxed_opaque_existential_0 + 99);
      *(v59 + 32) = v62;
      *(v59 + 40) = 0;
      *(v59 + 48) = 0;
      *(v59 + 96) = 0;
      swift_beginAccess();
      *(v59 + 96) = v239 & 1;
      swift_beginAccess();
      *(v59 + 48) = v56;
      outlined init with take of CATType(boxed_opaque_existential_0 + 47, v59 + 56);
      outlined init with take of ShareETA(v69, v59 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin32ShareETAPromptForContactStrategy_catModel);

      (v246)(v71);
      v72 = boxed_opaque_existential_0[92];
      v73 = boxed_opaque_existential_0[93];
      __swift_project_boxed_opaque_existential_1(boxed_opaque_existential_0 + 89, v72);
      (*(v73 + 104))(v250, v72, v73);
      __swift_destroy_boxed_opaque_existential_0Tm(boxed_opaque_existential_0 + 89);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow014PromptForValueC5AsyncCy03GeoC14DelegatePlugin20LocationSearchIntentCGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCy03GeoC14DelegatePlugin20LocationSearchIntentCGMR);
      swift_allocObject();
      lazy protocol witness table accessor for type ShareETAFlowDelegate and conformance BaseRCHFlowDelegate<A, B>(&lazy protocol witness table cache variable for type ShareETAPromptForContactStrategy and conformance ShareETAPromptForContactStrategy, 255, type metadata accessor for ShareETAPromptForContactStrategy, &protocol conformance descriptor for ShareETAPromptForContactStrategy);
      boxed_opaque_existential_0[191] = PromptForValueFlowAsync.init<A>(strategy:outputPublisher:)();
      lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type PromptForValueFlowAsync<LocationSearchIntent> and conformance PromptForValueFlowAsync<A>, &_s11SiriKitFlow014PromptForValueC5AsyncCy03GeoC14DelegatePlugin20LocationSearchIntentCGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCy03GeoC14DelegatePlugin20LocationSearchIntentCGMR, &protocol conformance descriptor for PromptForValueFlowAsync<A>);

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();
      outlined consume of ShareETABaseFlow.State(v9, 1u);

      goto LABEL_41;
    }

    (*(v33 + 160))(0, 2);
    static ExecuteResponse.ongoing(requireInput:)();
    outlined consume of ShareETABaseFlow.State(v9, 1u);
    goto LABEL_57;
  }

  v12 = swift_task_alloc();
  boxed_opaque_existential_0[234] = v12;
  *v12 = boxed_opaque_existential_0;
  v12[1] = ShareETABaseFlow.executeState();
  v13 = boxed_opaque_existential_0[197];

  return ShareETABaseFlow.preChecks(intent:)(v13, v9);
}

uint64_t ShareETABaseFlow.executeState()()
{

  return _swift_task_switch(ShareETABaseFlow.executeState(), 0, 0);
}

{
  outlined consume of ShareETABaseFlow.State(*(v0 + 1864), 0);

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 1936) = v0;

  if (v0)
  {
    v3 = ShareETABaseFlow.executeState();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 992));
    v3 = ShareETABaseFlow.executeState();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v17 = v0;
  v14 = *(v0 + 1888);
  v13 = *(v0 + 1880);
  v15 = *(v0 + 1864);
  v1 = *(v0 + 1656);
  v2 = *(v0 + 1648);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1616);
  v5 = *(v0 + 1608);
  (*(v0 + 1904))();
  v6 = *(v0 + 896);
  v7 = *(v0 + 904);
  __swift_project_boxed_opaque_existential_1((v0 + 872), v6);
  (*(v7 + 104))(v16, v6, v7);
  (*(v4 + 16))(v2, v1, v5);
  outlined init with copy of DeviceState(v0 + 872, v0 + 832);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v2, v5);
  outlined init with take of CATType((v0 + 832), v9 + ((v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v10 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 872));
  *(v0 + 1504) = v10;
  static ExecuteResponse.complete<A>(next:)();
  outlined consume of ContactResolutionFlowError(v13, v14);

  outlined consume of ShareETABaseFlow.State(v15, 3u);

  (*(v4 + 8))(v1, v5);

  v11 = *(v0 + 8);

  return v11();
}

{
  v2 = *v1;
  *(*v1 + 1976) = v0;

  if (v0)
  {
    v3 = ShareETABaseFlow.executeState();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 1192));
    v3 = ShareETABaseFlow.executeState();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v15 = v0;
  v13 = *(v0 + 1864);
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1640);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1616);
  v5 = *(v0 + 1608);
  (*(v0 + 1944))();
  v6 = *(v0 + 1256);
  v7 = *(v0 + 1264);
  __swift_project_boxed_opaque_existential_1((v0 + 1232), v6);
  (*(v7 + 104))(v14, v6, v7);
  (*(v4 + 16))(v1, v2, v5);
  outlined init with copy of DeviceState(v0 + 1232, v0 + 1112);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v1, v5);
  outlined init with take of CATType((v0 + 1112), v9 + ((v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v10 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 1232));
  *(v0 + 1472) = v10;
  static ExecuteResponse.complete<A>(next:)();
  outlined consume of ShareETABaseFlow.State(v13, 3u);

  (*(v4 + 8))(v2, v5);

  v11 = *(v0 + 8);

  return v11();
}

{
  v2 = *v1;
  *(*v1 + 2016) = v0;

  if (v0)
  {
    v3 = ShareETABaseFlow.executeState();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 352));
    v3 = ShareETABaseFlow.executeState();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v14 = v0;
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1616);
  v5 = *(v0 + 1608);
  (*(v0 + 1984))();
  v6 = *(v0 + 576);
  v7 = *(v0 + 584);
  __swift_project_boxed_opaque_existential_1((v0 + 552), v6);
  (*(v7 + 104))(v13, v6, v7);
  (*(v4 + 16))(v1, v2, v5);
  outlined init with copy of DeviceState(v0 + 552, v0 + 592);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v1, v5);
  outlined init with take of CATType((v0 + 592), v9 + ((v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v10 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 552));
  *(v0 + 1544) = v10;
  static ExecuteResponse.complete<A>(next:)();

  (*(v4 + 8))(v2, v5);

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = v0[236];
  v2 = v0[235];

  outlined consume of ContactResolutionFlowError(v2, v1);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 124);
  v3 = v0[233];
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v0[182] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  static ExecuteResponse.complete<A>(next:)();

  outlined consume of ShareETABaseFlow.State(v3, 3u);

  v4 = v0[1];

  return v4();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 149);
  v1 = v0[233];
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v0[182] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  static ExecuteResponse.complete<A>(next:)();

  outlined consume of ShareETABaseFlow.State(v1, 3u);

  v2 = v0[1];

  return v2();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 44);
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v0[194] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  static ExecuteResponse.complete<A>(next:)();

  v1 = v0[1];

  return v1();
}

uint64_t closure #2 in ShareETABaseFlow.executeState()(uint64_t a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*(a1 + 16))
  {
    outlined copy of ContactResolutionFlowError(*a1, v4);
    v5 = static os_log_type_t.error.getter();
    v6 = a2[2];
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      outlined copy of ContactResolutionFlowError(v3, v4);
      v9 = String.init<A>(describing:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v18);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_0, v6, v5, "Contact Resolution Failed: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
    }

    lazy protocol witness table accessor for type ContactResolutionFlowError and conformance ContactResolutionFlowError();
    v12 = swift_allocError();
    *v13 = v3;
    v13[1] = v4;
    return (*(*a2 + 160))(v12, 3);
  }

  else if (v4)
  {
    v15 = *(*a2 + 160);
    outlined copy of ContactResolutionOutput(*a1, 1);
    return v15(v3, 2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_B8FB0;
    *(v16 + 32) = v3;
    v17 = *(*a2 + 160);
    outlined copy of ContactResolutionOutput(v3, 0);
    return v17(v16, 2);
  }
}

uint64_t closure #1 in ShareETABaseFlow.executeState()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy03GeoC14DelegatePlugin20LocationSearchIntentCGMd, &_s11SiriKitFlow12PromptResultOy03GeoC14DelegatePlugin20LocationSearchIntentCGMR);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v19 - v6);
  (*(v5 + 16))(&v19 - v6, a1, v4);
  result = (*(v5 + 88))(v7, v4);
  if (result == enum case for PromptResult.answered<A>(_:))
  {
    (*(v5 + 96))(v7, v4);
    v9 = *(*a2 + 160);

    v9(v10, 1);
  }

  else if (result == enum case for PromptResult.error<A>(_:))
  {
    (*(v5 + 96))(v7, v4);
    v11 = *v7;
    v12 = static os_log_type_t.error.getter();
    v13 = a2[2];
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v11;
      v20 = v15;
      *v14 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v16 = String.init<A>(describing:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_0, v13, v12, "PromptForValueFlow error %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
    }

    (*(*a2 + 160))(0, 4);
  }

  else if (result == enum case for PromptResult.cancelled<A>(_:))
  {
    return (*(*a2 + 160))(0, 4);
  }

  else if (result != enum case for PromptResult.unanswered<A>(_:))
  {
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t closure #6 in ShareETABaseFlow.executeState()()
{
  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #9 in ShareETABaseFlow.executeState()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = static os_log_type_t.default.getter();
  result = os_log_type_enabled(v2, v3);
  if (result)
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v2, v3, "Completed ShareETA RCH", v5, 2u);
  }

  return result;
}

uint64_t ShareETABaseFlow.preChecks(intent:)(uint64_t a1, uint64_t a2)
{
  v3[109] = v2;
  v3[108] = a2;
  v3[107] = a1;
  v4 = type metadata accessor for UnlockDevicePolicy();
  v3[110] = v4;
  v3[111] = *(v4 - 8);
  v3[112] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v3[113] = v5;
  v6 = *(v5 - 8);
  v3[114] = v6;
  v3[115] = *(v6 + 64);
  v3[116] = swift_task_alloc();
  v3[117] = swift_task_alloc();
  v3[118] = swift_task_alloc();
  v3[119] = swift_task_alloc();
  v3[120] = swift_task_alloc();

  return _swift_task_switch(ShareETABaseFlow.preChecks(intent:), 0, 0);
}

uint64_t ShareETABaseFlow.preChecks(intent:)()
{
  v68 = v0;
  if ((*(**(v0 + 872) + 328))())
  {
    (*(**(v0 + 872) + 224))();
    if ((*(v1 + 8))())
    {
      v2 = *(v0 + 872);
      type metadata accessor for MapsService();
      v3 = *(v2 + 16);
      v4 = static MapsService.shareETAConfigurationCheck(_:)();
      if (v4 == 2)
      {
        (*(**(v0 + 872) + 176))();
        v5 = *(v0 + 440);
        v6 = *(v0 + 448);
        __swift_project_boxed_opaque_existential_1((v0 + 416), v5);
        (*(v6 + 32))(v5, v6);
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 416));
        __swift_project_boxed_opaque_existential_1((v0 + 456), *(v0 + 480));
        if (one-time initialization token for kShareETAAuthenticationPolicy != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(*(v0 + 880), kShareETAAuthenticationPolicy);
        v7 = dispatch thunk of DeviceState.isAuthenticated(for:)();
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 456));
        if (v7)
        {
          v8 = *(**(v0 + 872) + 160);

          v8(v9, 1);
          static ExecuteResponse.ongoing(requireInput:)();
        }

        else
        {
          v50 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v3, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&dword_0, v3, v50, "share eta requires device unlocked", v51, 2u);
          }

          v52 = *(v0 + 896);
          v53 = *(v0 + 888);
          v54 = *(v0 + 880);
          v55 = *(v0 + 872);
          v56 = *(v0 + 864);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
          type metadata accessor for CommonFlowGuard();
          *(swift_allocObject() + 16) = xmmword_B89E0;
          static UnlockDevicePolicy.requiringDeviceUnlock.getter();
          static CommonFlowGuard.ensuringDeviceIsAuthenticated(using:)();
          (*(v53 + 8))(v52, v54);
          v57 = static CommonGuardFlowUtils.makeGuardFlow(withGuards:)();

          *(v0 + 832) = v57;
          v58 = swift_allocObject();
          *(v58 + 16) = v55;
          *(v58 + 24) = v56;
          type metadata accessor for GuardFlow();

          static ExecuteResponse.ongoing<A>(next:childCompletion:)();
        }

        v59 = *(v0 + 8);

        return v59();
      }

      v35 = v4;
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v67 = v38;
        *v37 = 136315138;
        *(v0 + 1128) = v35 & 1;
        v39 = String.init<A>(describing:)();
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v67);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_0, v3, v36, "share eta configuration check error %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v38);
      }

      v42 = *(v0 + 872);
      v43 = v42[3];
      if (v35)
      {
        *(v0 + 520) = type metadata accessor for ShareETA(0);
        *(v0 + 528) = &protocol witness table for ShareETA;
        __swift_allocate_boxed_opaque_existential_0((v0 + 496));
        v44 = swift_storeEnumTagMultiPayload();
        v45 = *(*v42 + 176);
        v46 = *v42 + 176;
        *(v0 + 1088) = v45;
        *(v0 + 1096) = v46 & 0xFFFFFFFFFFFFLL | 0x55F0000000000000;
        v45(v44);
        v47 = *(v0 + 560);
        v48 = *(v0 + 568);
        __swift_project_boxed_opaque_existential_1((v0 + 536), v47);
        v22 = (*(v48 + 80))(v47, v48);
        *(v0 + 1104) = v22;
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 536));
        v66 = (*(*v43 + 112) + **(*v43 + 112));
        v49 = swift_task_alloc();
        *(v0 + 1112) = v49;
        *v49 = v0;
        v49[1] = ShareETABaseFlow.preChecks(intent:);
        v24 = *(v0 + 928);
        v25 = v0 + 496;
      }

      else
      {
        *(v0 + 680) = type metadata accessor for ShareETA(0);
        *(v0 + 688) = &protocol witness table for ShareETA;
        __swift_allocate_boxed_opaque_existential_0((v0 + 656));
        v60 = swift_storeEnumTagMultiPayload();
        v61 = *(*v42 + 176);
        v62 = *v42 + 176;
        *(v0 + 1048) = v61;
        *(v0 + 1056) = v62 & 0xFFFFFFFFFFFFLL | 0x55F0000000000000;
        v61(v60);
        v63 = *(v0 + 720);
        v64 = *(v0 + 728);
        __swift_project_boxed_opaque_existential_1((v0 + 696), v63);
        v22 = (*(v64 + 80))(v63, v64);
        *(v0 + 1064) = v22;
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 696));
        v66 = (*(*v43 + 112) + **(*v43 + 112));
        v65 = swift_task_alloc();
        *(v0 + 1072) = v65;
        *v65 = v0;
        v65[1] = ShareETABaseFlow.preChecks(intent:);
        v24 = *(v0 + 936);
        v25 = v0 + 656;
      }
    }

    else
    {
      v26 = *(v0 + 872);
      v27 = v26[3];
      *(v0 + 280) = type metadata accessor for ShareETA(0);
      *(v0 + 288) = &protocol witness table for ShareETA;
      __swift_allocate_boxed_opaque_existential_0((v0 + 256));
      v28 = swift_storeEnumTagMultiPayload();
      v29 = *(*v26 + 176);
      v30 = *v26 + 176;
      *(v0 + 1008) = v29;
      *(v0 + 1016) = v30 & 0xFFFFFFFFFFFFLL | 0x55F0000000000000;
      v29(v28);
      v31 = *(v0 + 320);
      v32 = *(v0 + 328);
      __swift_project_boxed_opaque_existential_1((v0 + 296), v31);
      v22 = (*(v32 + 80))(v31, v32);
      *(v0 + 1024) = v22;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 296));
      v66 = (*(*v27 + 112) + **(*v27 + 112));
      v33 = swift_task_alloc();
      *(v0 + 1032) = v33;
      *v33 = v0;
      v33[1] = ShareETABaseFlow.preChecks(intent:);
      v24 = *(v0 + 944);
      v25 = v0 + 256;
    }
  }

  else
  {
    v10 = *(v0 + 872);
    v11 = v10[3];
    *(v0 + 40) = type metadata accessor for ShareETA(0);
    *(v0 + 48) = &protocol witness table for ShareETA;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
    v13 = *(*v10 + 176);
    v14 = *v10 + 176;
    *(v0 + 968) = v13;
    *(v0 + 976) = v14 & 0xFFFFFFFFFFFFLL | 0x55F0000000000000;
    v13();
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v15);
    (*(v16 + 32))(v15, v16);
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v18);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    *boxed_opaque_existential_0 = DeviceState.deviceType.getter(v18, v17);
    v19 = swift_storeEnumTagMultiPayload();
    (v13)(v19);
    v20 = *(v0 + 160);
    v21 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v20);
    v22 = (*(v21 + 80))(v20, v21);
    *(v0 + 984) = v22;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
    v66 = (*(*v11 + 112) + **(*v11 + 112));
    v23 = swift_task_alloc();
    *(v0 + 992) = v23;
    *v23 = v0;
    v23[1] = ShareETABaseFlow.preChecks(intent:);
    v24 = *(v0 + 960);
    v25 = v0 + 16;
  }

  return v66(v24, v25, v22);
}

{
  v2 = *v1;
  *(*v1 + 1000) = v0;

  if (v0)
  {
    v3 = ShareETABaseFlow.preChecks(intent:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 96));
    v3 = ShareETABaseFlow.preChecks(intent:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v14 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = *(v0 + 904);
  (*(v0 + 968))();
  v6 = *(v0 + 200);
  v7 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v6);
  (*(v7 + 104))(v13, v6, v7);
  (*(v4 + 16))(v2, v1, v5);
  outlined init with copy of DeviceState(v0 + 176, v0 + 216);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v2, v5);
  outlined init with take of CATType((v0 + 216), v9 + ((v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v10 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
  *(v0 + 816) = v10;
  static ExecuteResponse.complete<A>(next:)();

  (*(v4 + 8))(v1, v5);

  v11 = *(v0 + 8);

  return v11();
}

{
  v2 = *v1;
  *(*v1 + 1040) = v0;

  if (v0)
  {
    v3 = ShareETABaseFlow.preChecks(intent:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 256));
    v3 = ShareETABaseFlow.preChecks(intent:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v14 = v0;
  v1 = *(v0 + 952);
  v2 = *(v0 + 944);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = *(v0 + 904);
  (*(v0 + 1008))();
  v6 = *(v0 + 360);
  v7 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1((v0 + 336), v6);
  (*(v7 + 104))(v13, v6, v7);
  (*(v4 + 16))(v1, v2, v5);
  outlined init with copy of DeviceState(v0 + 336, v0 + 376);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v1, v5);
  outlined init with take of CATType((v0 + 376), v9 + ((v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v10 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 336));
  *(v0 + 824) = v10;
  static ExecuteResponse.complete<A>(next:)();

  (*(v4 + 8))(v2, v5);

  v11 = *(v0 + 8);

  return v11();
}

{
  v2 = *v1;
  *(*v1 + 1080) = v0;

  if (v0)
  {
    v3 = ShareETABaseFlow.preChecks(intent:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 656));
    v3 = ShareETABaseFlow.preChecks(intent:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v14 = v0;
  v1 = *(v0 + 952);
  v2 = *(v0 + 936);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = *(v0 + 904);
  (*(v0 + 1048))();
  v6 = *(v0 + 760);
  v7 = *(v0 + 768);
  __swift_project_boxed_opaque_existential_1((v0 + 736), v6);
  (*(v7 + 104))(v13, v6, v7);
  (*(v4 + 16))(v1, v2, v5);
  outlined init with copy of DeviceState(v0 + 736, v0 + 776);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v1, v5);
  outlined init with take of CATType((v0 + 776), v9 + ((v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v10 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 736));
  *(v0 + 848) = v10;
  static ExecuteResponse.complete<A>(next:)();

  (*(v4 + 8))(v2, v5);

  v11 = *(v0 + 8);

  return v11();
}

{
  v2 = *v1;
  *(*v1 + 1120) = v0;

  if (v0)
  {
    v3 = ShareETABaseFlow.preChecks(intent:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 496));
    v3 = ShareETABaseFlow.preChecks(intent:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v14 = v0;
  v1 = *(v0 + 952);
  v2 = *(v0 + 928);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = *(v0 + 904);
  (*(v0 + 1088))();
  v6 = *(v0 + 600);
  v7 = *(v0 + 608);
  __swift_project_boxed_opaque_existential_1((v0 + 576), v6);
  (*(v7 + 104))(v13, v6, v7);
  (*(v4 + 16))(v1, v2, v5);
  outlined init with copy of DeviceState(v0 + 576, v0 + 616);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v1, v5);
  outlined init with take of CATType((v0 + 616), v9 + ((v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v10 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 576));
  *(v0 + 840) = v10;
  static ExecuteResponse.complete<A>(next:)();

  (*(v4 + 8))(v2, v5);

  v11 = *(v0 + 8);

  return v11();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v1 = v0[109];
  lazy protocol witness table accessor for type Errors and conformance Errors();
  v2 = swift_allocError();
  *v3 = 0xD000000000000013;
  *(v3 + 8) = 0x80000000000C35E0;
  *(v3 + 16) = 0;
  (*(*v1 + 160))(v2, 3);
  static ExecuteResponse.ongoing(requireInput:)();

  v4 = v0[1];

  return v4();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);
  v1 = v0[109];
  lazy protocol witness table accessor for type Errors and conformance Errors();
  v2 = swift_allocError();
  *v3 = 0xD000000000000013;
  *(v3 + 8) = 0x80000000000C35E0;
  *(v3 + 16) = 0;
  (*(*v1 + 160))(v2, 3);
  static ExecuteResponse.ongoing(requireInput:)();

  v4 = v0[1];

  return v4();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 82);
  v1 = v0[109];
  lazy protocol witness table accessor for type Errors and conformance Errors();
  v2 = swift_allocError();
  *v3 = 0xD000000000000013;
  *(v3 + 8) = 0x80000000000C35E0;
  *(v3 + 16) = 0;
  (*(*v1 + 160))(v2, 3);
  static ExecuteResponse.ongoing(requireInput:)();

  v4 = v0[1];

  return v4();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 62);
  v1 = v0[109];
  lazy protocol witness table accessor for type Errors and conformance Errors();
  v2 = swift_allocError();
  *v3 = 0xD000000000000013;
  *(v3 + 8) = 0x80000000000C35E0;
  *(v3 + 16) = 0;
  (*(*v1 + 160))(v2, 3);
  static ExecuteResponse.ongoing(requireInput:)();

  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in ShareETABaseFlow.preChecks(intent:)(unsigned __int8 *a1, void *a2)
{
  v3 = *a1;
  v4 = a2[2];
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  if (v3 == 1)
  {
    if (v6)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v4, v5, "unlock flow error", v7, 2u);
    }

    lazy protocol witness table accessor for type Errors and conformance Errors();
    v8 = swift_allocError();
    *v9 = 0xD000000000000011;
    *(v9 + 8) = 0x80000000000C3600;
    *(v9 + 16) = 0;
    return (*(*a2 + 160))(v8, 3);
  }

  else
  {
    if (v6)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v4, v5, "successfully unlocked the device", v11, 2u);
    }

    v12 = *(*a2 + 160);

    return v12(v13, 1);
  }
}

uint64_t ShareETABaseFlow.isDeviceSupported()()
{
  v1 = *(*v0 + 176);
  v1(v26);
  v2 = v27;
  v3 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  (*(v3 + 32))(v24, v2, v3);
  __swift_project_boxed_opaque_existential_1(v24, v25);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  v4 = dispatch thunk of DeviceState.isXRDevice.getter();
  v5 = __swift_destroy_boxed_opaque_existential_0Tm(v24);
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    (v1)(v26, v5);
    v7 = v27;
    v8 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v8 + 32))(v24, v7, v8);
    __swift_project_boxed_opaque_existential_1(v24, v25);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    if (dispatch thunk of DeviceState.isPhone.getter())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      v6 = 1;
    }

    else
    {
      v1(v21);
      v9 = v22;
      v10 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      (*(v10 + 32))(v20, v9, v10);
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      v11 = dispatch thunk of DeviceState.isPad.getter();
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      v12 = __swift_destroy_boxed_opaque_existential_0Tm(v24);
      if (v11 & 1) != 0 || ((v1)(v26, v12), v13 = v27, v14 = v28, __swift_project_boxed_opaque_existential_1(v26, v27), (*(v14 + 32))(v24, v13, v14), __swift_project_boxed_opaque_existential_1(v24, v25), __swift_destroy_boxed_opaque_existential_0Tm(v26), v15 = dispatch thunk of DeviceState.isCarPlay.getter(), v16 = __swift_destroy_boxed_opaque_existential_0Tm(v24), (v15))
      {
        v6 = 1;
      }

      else
      {
        (v1)(v26, v16);
        v17 = v27;
        v18 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        (*(v18 + 32))(v24, v17, v18);
        __swift_project_boxed_opaque_existential_1(v24, v25);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        v6 = dispatch thunk of DeviceState.isPod.getter();
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
      }
    }
  }

  return v6 & 1;
}

uint64_t protocol witness for FSMFlow.flowState.getter in conformance ShareETABaseFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 152))();
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

uint64_t protocol witness for FSMFlow.executeState() in conformance ShareETABaseFlow(uint64_t a1)
{
  v6 = (*(**v1 + 312) + **(**v1 + 312));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.on(input:) in conformance ShareETABaseFlow(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.on(input:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.execute(completion:) in conformance ShareETABaseFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.execute(completion:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for Flow.execute() in conformance ShareETABaseFlow(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return FSMFlow.execute()(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance ShareETABaseFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ShareETABaseFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ShareETABaseFlow(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.description.getter(a1, WitnessTable);
}

uint64_t MockShareETABaseFlow.__allocating_init(with:stopSharing:flowHelper:checkNavigation:)(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  outlined init with copy of DeviceState(a3, v17);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  v10 = OS_os_log.init(subsystem:category:)();
  *(v9 + 16) = v10;
  type metadata accessor for CATService();
  v11 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v11 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v11 + 32) = OS_os_log.init(subsystem:category:)();
  *(v11 + 16) = 0;
  *(v9 + 24) = v11;
  *(v9 + 88) = 0;
  *(v9 + 112) = 0;
  v13 = static os_log_type_t.info.getter();
  v14 = v10;
  os_log(_:dso:log:_:_:)(v13, &dword_0, v14, "ShareETABaseFlow initialized", 28, 2, &_swiftEmptyArrayStorage);

  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  *(v9 + 32) = a1;
  *(v9 + 40) = 0;
  *(v9 + 41) = a2;
  outlined init with take of CATType(v17, v9 + 48);
  *(v9 + 96) = a4;
  *(v9 + 104) = a5;
  return v9;
}

uint64_t MockShareETABaseFlow.init(with:stopSharing:flowHelper:checkNavigation:)(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  outlined init with copy of DeviceState(a3, v17);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v5 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v12 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v12 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v12 + 32) = OS_os_log.init(subsystem:category:)();
  *(v12 + 16) = 0;
  *(v5 + 24) = v12;
  *(v5 + 88) = 0;
  *(v5 + 112) = 0;
  v14 = static os_log_type_t.info.getter();
  v15 = *(v6 + 16);
  os_log(_:dso:log:_:_:)(v14, &dword_0, v15, "ShareETABaseFlow initialized", 28, 2, &_swiftEmptyArrayStorage);

  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  *(v6 + 32) = a1;
  *(v6 + 40) = 0;
  *(v6 + 41) = a2;
  outlined init with take of CATType(v17, v6 + 48);
  *(v6 + 96) = a4;
  *(v6 + 104) = a5;
  return v6;
}

uint64_t ShareETABaseFlow.deinit()
{

  outlined consume of ShareETABaseFlow.State(*(v0 + 32), *(v0 + 40));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));
  return v0;
}

uint64_t ShareETABaseFlow.__deallocating_deinit()
{

  outlined consume of ShareETABaseFlow.State(*(v0 + 32), *(v0 + 40));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));

  return swift_deallocClassInstance();
}

unint64_t specialized ShareETABaseFlow.makeSkeletonINPerson(inpersons:)(unint64_t a1)
{
  if (!a1)
  {
    return a1;
  }

  if (a1 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9 < 0)
    {
      __break(1u);
    }

    v2 = v9;
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_15:

    return a1;
  }

  v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  v3 = a1 & 0xC000000000000001;

  v4 = 0;
  do
  {
    if (v3)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(a1 + 8 * v4 + 32);
    }

    v8 = v7;
    [v7 setIsMe:0];

    if (v3)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    ++v4;
    [v5 setSourceAppBundleIdentifier:0];
  }

  while (v2 != v4);
  return a1;
}

void specialized ShareETABaseFlow.missingContactInformation(persons:)(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_30:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = a1 & 0xC000000000000001;
      v5 = &selRef_currentLocationWithAccuracy_timeout_completion_;
      v18 = v2;
      do
      {
        if (v4)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return;
          }

          v6 = *(a1 + 32 + 8 * v3);
        }

        v7 = v6;
        if (__OFADD__(v3++, 1))
        {
          goto LABEL_29;
        }

        v9 = [v6 v5[3]];
        if (v9)
        {
          v10 = v9;
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
          v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v11 >> 62)
          {
            v12 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
          }

          for (i = 0; ; ++i)
          {
            if (v12 == i)
            {

              v4 = a1 & 0xC000000000000001;
              v2 = v18;
              v5 = &selRef_currentLocationWithAccuracy_timeout_completion_;
              goto LABEL_22;
            }

            if ((v11 & 0xC000000000000001) != 0)
            {
              v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (i >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_28;
              }

              v14 = *(v11 + 8 * i + 32);
            }

            v15 = v14;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v16 = INPerson.hasUsefulHandleValue.getter();

            if (v16)
            {

              return;
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_22:
        v17 = INPerson.hasUsefulHandleValue.getter();
      }

      while ((v17 & 1) == 0 && v3 != v2);
    }
  }
}

uint64_t sub_994F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_99528()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t outlined init with copy of HandleFilterProtocolAsync?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMd, &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t instantiation function for generic protocol witness table for ShareETABaseFlow(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = lazy protocol witness table accessor for type ShareETAFlowDelegate and conformance BaseRCHFlowDelegate<A, B>(&lazy protocol witness table cache variable for type ShareETABaseFlow and conformance ShareETABaseFlow, a2, type metadata accessor for ShareETABaseFlow, &protocol conformance descriptor for ShareETABaseFlow);
  result = lazy protocol witness table accessor for type ShareETAFlowDelegate and conformance BaseRCHFlowDelegate<A, B>(&lazy protocol witness table cache variable for type ShareETABaseFlow and conformance ShareETABaseFlow, v3, type metadata accessor for ShareETABaseFlow, &protocol conformance descriptor for ShareETABaseFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type ShareETAFlowDelegate and conformance BaseRCHFlowDelegate<A, B>(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_996F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_99740(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 160);
  v4 = *(a1 + 8);
  outlined copy of ShareETABaseFlow.State(*a1, v4);
  return v3(v2, v4);
}

uint64_t sub_99850@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_998E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_99984@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_99A24@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result & 1;
  return result;
}

uint64_t get_enum_tag_for_layout_string_21GeoFlowDelegatePlugin012ShareETABaseB0C5StateO(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t getEnumTagSinglePayload for ShareETABaseFlow.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ShareETABaseFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ShareETABaseFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_99BC0()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t lazy protocol witness table accessor for type ContactResolutionFlowError and conformance ContactResolutionFlowError()
{
  result = lazy protocol witness table cache variable for type ContactResolutionFlowError and conformance ContactResolutionFlowError;
  if (!lazy protocol witness table cache variable for type ContactResolutionFlowError and conformance ContactResolutionFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactResolutionFlowError and conformance ContactResolutionFlowError);
  }

  return result;
}

uint64_t LocalSearchIntent.LocalSearchCategory.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x797265636F7267;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t *LocalSearchIntent.domainNode.unsafeMutableAddressor()
{
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  return &static LocalSearchIntent.domainNode;
}

uint64_t *LocalSearchIntent.categoryNode.unsafeMutableAddressor()
{
  if (one-time initialization token for categoryNode != -1)
  {
    swift_once();
  }

  return &static LocalSearchIntent.categoryNode;
}

GeoFlowDelegatePlugin::LocalSearchIntent::LocalSearchCategory_optional __swiftcall LocalSearchIntent.LocalSearchCategory.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LocalSearchIntent.LocalSearchCategory.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = GeoFlowDelegatePlugin_LocalSearchIntent_LocalSearchCategory_grocery;
  }

  else
  {
    v4.value = GeoFlowDelegatePlugin_LocalSearchIntent_LocalSearchCategory_unknownDefault;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LocalSearchIntent.LocalSearchCategory(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x797265636F7267;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    v4 = 0x80000000000BFD10;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x797265636F7267;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0x80000000000BFD10;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LocalSearchIntent.LocalSearchCategory()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LocalSearchIntent.LocalSearchCategory(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocalSearchIntent.LocalSearchCategory(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LocalSearchIntent.LocalSearchCategory@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LocalSearchIntent.LocalSearchCategory.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance LocalSearchIntent.LocalSearchCategory(unint64_t *a1@<X8>)
{
  v2 = 0x80000000000BFD10;
  v3 = 0xD000000000000011;
  if (*v1)
  {
    v3 = 0x797265636F7267;
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t LocalSearchIntent.intent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin17LocalSearchIntent_intent;
  v4 = type metadata accessor for NLIntent();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t one-time initialization function for categoryNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static LocalSearchIntent.categoryNode = result;
  return result;
}

uint64_t LocalSearchIntent.domainOntologyNode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin17LocalSearchIntent_domainOntologyNode;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t LocalSearchIntent.__allocating_init(from:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin17LocalSearchIntent_domainOntologyNode;
  if (one-time initialization token for domainNode != -1)
  {
    v8 = v2;
    swift_once();
    v2 = v8;
  }

  *(v2 + v3) = static LocalSearchIntent.domainNode;
  v4 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin17LocalSearchIntent_intent;
  v5 = v2;
  v6 = type metadata accessor for NLIntent();
  (*(*(v6 - 8) + 32))(v5 + v4, a1, v6);

  return v5;
}

uint64_t LocalSearchIntent.init(from:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin17LocalSearchIntent_domainOntologyNode;
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  *(v1 + v3) = static LocalSearchIntent.domainNode;
  v4 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin17LocalSearchIntent_intent;
  v5 = type metadata accessor for NLIntent();
  (*(*(v5 - 8) + 32))(v1 + v4, a1, v5);

  return v1;
}

uint64_t LocalSearchIntent.category.getter()
{
  if (one-time initialization token for categoryNode != -1)
  {
    swift_once();
  }

  type metadata accessor for LocalSearchIntent(0);
  lazy protocol witness table accessor for type LocalSearchIntent and conformance LocalSearchIntent(&lazy protocol witness table cache variable for type LocalSearchIntent and conformance LocalSearchIntent, &protocol conformance descriptor for LocalSearchIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  return v1;
}

uint64_t type metadata accessor for LocalSearchIntent(uint64_t a1)
{
  result = type metadata singleton initialization cache for LocalSearchIntent;
  if (!type metadata singleton initialization cache for LocalSearchIntent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LocalSearchIntent.occupant.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  __chkstk_darwin();
  v4 = &v14 - v3;
  v5 = type metadata accessor for NonTerminalIntentNode();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v14 - v9;
  v15 = v1;
  type metadata accessor for AddressOntologyNode.OccupantNode();
  swift_allocObject();
  AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
  type metadata accessor for LocalSearchIntent(0);
  lazy protocol witness table accessor for type LocalSearchIntent and conformance LocalSearchIntent(&lazy protocol witness table cache variable for type LocalSearchIntent and conformance LocalSearchIntent, &protocol conformance descriptor for LocalSearchIntent);
  IntentNodeTraversable.intentNode(forOntologyNode:)();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of NonTerminalIntentNode?(v4);
    v11 = 1;
  }

  else
  {
    (*(v6 + 32))(v10, v4, v5);
    (*(v6 + 16))(v8, v10, v5);
    swift_allocObject();
    AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
    OccupantIntentNode.init(intentNode:ontologyNode:)();
    (*(v6 + 8))(v10, v5);
    v11 = 0;
  }

  v12 = type metadata accessor for OccupantIntentNode();
  return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
}

uint64_t LocalSearchIntent.deinit()
{
  v1 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin17LocalSearchIntent_intent;
  v2 = type metadata accessor for NLIntent();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t LocalSearchIntent.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin17LocalSearchIntent_intent;
  v2 = type metadata accessor for NLIntent();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type LocalSearchIntent.LocalSearchCategory and conformance LocalSearchIntent.LocalSearchCategory()
{
  result = lazy protocol witness table cache variable for type LocalSearchIntent.LocalSearchCategory and conformance LocalSearchIntent.LocalSearchCategory;
  if (!lazy protocol witness table cache variable for type LocalSearchIntent.LocalSearchCategory and conformance LocalSearchIntent.LocalSearchCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalSearchIntent.LocalSearchCategory and conformance LocalSearchIntent.LocalSearchCategory);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LocalSearchIntent and conformance LocalSearchIntent(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocalSearchIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for NLIntentWrapper.intent.getter in conformance LocalSearchIntent@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin17LocalSearchIntent_intent;
  v5 = type metadata accessor for NLIntent();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t protocol witness for IntentNodeTraversable.traversableIntentNode.getter in conformance LocalSearchIntent(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.traversableIntentNode.getter(a1, WitnessTable);
}

uint64_t protocol witness for IntentNodeTraversable.traversableOntologyNode.getter in conformance LocalSearchIntent(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.traversableOntologyNode.getter(a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LocalSearchIntent(uint64_t a1)
{
  swift_getWitnessTable();

  return NLIntentWrapper.description.getter();
}

uint64_t sub_9AE20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_9AE6C(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 104);

  return v2(v3);
}

uint64_t DeleteParkingBaseRCHStrategy.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t DeleteParkingBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Parse();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(DeleteParkingBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:), 0, 0);
}

uint64_t DeleteParkingBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:)()
{
  v42 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    v3 = v1;
    v4 = static os_log_type_t.info.getter();
    v5 = *(v2 + 16);
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v41 = v7;
      *v6 = 136315138;
      v3 = v3;
      v8 = [v3 description];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v41);

      *(v6 + 4) = v12;
      _os_log_impl(&dword_0, v5, v4, "makeIntentFromParse with current intent: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
    }

    goto LABEL_10;
  }

  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[5];
  (*(v14 + 16))(v13, v0[2], v15);
  v16 = (*(v14 + 88))(v13, v15);
  if (v16 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v0[6] + 96))(v0[7], v0[5]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp");
    v17 = Parse.ServerConversion.siriKitIntent.getter();
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();

    v19 = v0[7];
    if (v18)
    {
      Parse.ServerConversion.siriKitIntent.getter();

      objc_opt_self();
      v3 = swift_dynamicCastObjCClassUnconditional();
      v20 = type metadata accessor for NLIntent();
      (*(*(v20 - 8) + 8))(v19, v20);
LABEL_10:

      v27 = v0[1];

      return v27(v3);
    }

    type metadata accessor for RuntimeError();
    v33 = swift_allocObject();
    *(v33 + 16) = 0xD000000000000039;
    *(v33 + 24) = 0x80000000000C2800;
    _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_2(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError, &protocol conformance descriptor for RuntimeError);
    swift_allocError();
    *v34 = v33;
    swift_willThrow();

    v35 = type metadata accessor for NLIntent();
    (*(*(v35 - 8) + 8))(v19, v35);
  }

  else
  {
    v22 = v0[6];
    v21 = v0[7];
    v23 = v0[5];
    if (v16 == enum case for Parse.pommesResponse(_:))
    {
      (*(v22 + 96))(v0[7], v0[5]);
      v24 = *v21;
      v25 = PommesResponse.firstGeoExperience.getter();
      if (v25)
      {
        v26 = v25;
        v3 = [objc_allocWithZone(INDeleteParkingLocationIntent) init];

        goto LABEL_10;
      }

      v36 = v0[4];
      v37 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v37, &dword_0, *(v36 + 16), "Received pommes response but no geo experience is present", 57, 2, &_swiftEmptyArrayStorage);
      type metadata accessor for RuntimeError();
      v38 = swift_allocObject();
      *(v38 + 16) = 0xD00000000000002BLL;
      *(v38 + 24) = 0x80000000000C2880;
      _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_2(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError, &protocol conformance descriptor for RuntimeError);
      swift_allocError();
      *v39 = v38;
      swift_willThrow();
    }

    else
    {
      v29 = v0[4];
      v30 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v30, &dword_0, *(v29 + 16), "makeIntentFromParse should have INDeleteParkingLocationIntent passed in", 71, 2, &_swiftEmptyArrayStorage);
      type metadata accessor for RuntimeError();
      v31 = swift_allocObject();
      *(v31 + 16) = 0xD000000000000047;
      *(v31 + 24) = 0x80000000000C3670;
      _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_2(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError, &protocol conformance descriptor for RuntimeError);
      swift_allocError();
      *v32 = v31;
      swift_willThrow();
      (*(v22 + 8))(v21, v23);
    }
  }

  v40 = v0[1];

  return v40();
}

uint64_t DeleteParkingBaseRCHStrategy.actionForInput(input:)()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v14 - v5;
  Input.parse.getter();
  (*(v2 + 16))(v4, v6, v1);
  v7 = (*(v2 + 88))(v4, v1);
  if (v7 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v2 + 96))(v4, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp");

    static ActionForInput.handle()();
    (*(v2 + 8))(v6, v1);
    v8 = type metadata accessor for NLIntent();
    return (*(*(v8 - 8) + 8))(v4, v8);
  }

  else if (v7 == enum case for Parse.pommesResponse(_:))
  {
    v10 = *(v2 + 8);
    v10(v4, v1);
    v11 = static os_log_type_t.info.getter();
    os_log(_:dso:log:_:_:)(v11, &dword_0, *(v0 + 16), "actionForInput - pommesResponse", 31, 2, &_swiftEmptyArrayStorage);
    static ActionForInput.handle()();
    return (v10)(v6, v1);
  }

  else
  {
    v12 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v12, &dword_0, *(v0 + 16), "actionForInput - shouldn't hit default case", 43, 2, &_swiftEmptyArrayStorage);
    static ActionForInput.cancel()();
    v13 = *(v2 + 8);
    v13(v6, v1);
    return (v13)(v4, v1);
  }
}

uint64_t DeleteParkingBaseRCHStrategy.init()()
{
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance DeleteParkingBaseRCHStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 88) + **(**v2 + 88));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for HandleFilterProtocolAsync.filterHandles(recipients:) in conformance ContactHandleResolver;

  return v8(a1, a2);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeParameterMetadata(intent:) in conformance DeleteParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DeleteParkingBaseRCHStrategy();

  return RCHFlowStrategyAsync.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance DeleteParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for DeleteParkingBaseRCHStrategy();
  *v10 = v5;
  v10[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:) in conformance DeleteParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for DeleteParkingBaseRCHStrategy();
  *v10 = v5;
  v10[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:) in conformance DeleteParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for DeleteParkingBaseRCHStrategy();
  *v10 = v5;
  v10[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance DeleteParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for DeleteParkingBaseRCHStrategy();
  *v12 = v6;
  v12[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v13, a6);
}

uint64_t protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance DeleteParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for DeleteParkingBaseRCHStrategy();
  *v12 = v6;
  v12[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v13, a6);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance DeleteParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeleteParkingBaseRCHStrategy();
  *v8 = v4;
  v8[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentHandleIntentStrategy;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v9, a4);
}

uint64_t _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_2(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t SaveParkingBaseRCHStrategy.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t SaveParkingBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = type metadata accessor for Parse();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(SaveParkingBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:), 0, 0);
}

uint64_t SaveParkingBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:)()
{
  v50 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    v3 = v1;
    v4 = static os_log_type_t.info.getter();
    v5 = *(v2 + 16);
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v49 = v7;
      *v6 = 136315138;
      v3 = v3;
      v8 = [v3 description];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v49);

      *(v6 + 4) = v12;
      _os_log_impl(&dword_0, v5, v4, "makeIntentFromParse with current intent: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
    }

    goto LABEL_10;
  }

  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[11];
  (*(v14 + 16))(v13, v0[2], v15);
  v16 = (*(v14 + 88))(v13, v15);
  if (v16 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v0[12] + 96))(v0[13], v0[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp");
    v17 = Parse.ServerConversion.siriKitIntent.getter();
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();

    v19 = v0[13];
    if (v18)
    {
      Parse.ServerConversion.siriKitIntent.getter();

      objc_opt_self();
      v3 = swift_dynamicCastObjCClassUnconditional();
      v20 = type metadata accessor for NLIntent();
      (*(*(v20 - 8) + 8))(v19, v20);
LABEL_10:

      v34 = v0[1];

      return v34(v3);
    }

    type metadata accessor for RuntimeError();
    v40 = swift_allocObject();
    *(v40 + 16) = 0xD000000000000039;
    *(v40 + 24) = 0x80000000000C2800;
    _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_3(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError, &protocol conformance descriptor for RuntimeError);
    swift_allocError();
    *v41 = v40;
    swift_willThrow();

    v42 = type metadata accessor for NLIntent();
    (*(*(v42 - 8) + 8))(v19, v42);
  }

  else
  {
    v22 = v0[12];
    v21 = v0[13];
    v23 = v0[11];
    if (v16 == enum case for Parse.pommesResponse(_:))
    {
      (*(v22 + 96))(v0[13], v0[11]);
      v24 = *v21;
      v25 = PommesResponse.firstGeoExperience.getter();
      if (v25)
      {
        v27 = v0[9];
        v26 = v0[10];
        v28 = v0[7];
        v48 = v0[8];
        v30 = v0[5];
        v29 = v0[6];
        v31 = v25;
        GeoExperience.geoClientComponent.getter();
        Apple_Parsec_Siri_V2alpha_GeoClientComponent.parkingLocationAction.getter();
        Apple_Parsec_Siri_V2alpha_ParkingLocationAction.note.getter();
        (*(v29 + 8))(v28, v30);
        v32 = objc_allocWithZone(INSaveParkingLocationIntent);
        v33 = String._bridgeToObjectiveC()();

        v3 = [v32 initWithParkingLocation:0 parkingNote:v33];

        (*(v27 + 8))(v26, v48);
        goto LABEL_10;
      }

      v43 = v0[4];
      v44 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v44, &dword_0, *(v43 + 16), "Received pommes response but no geo experience is present", 57, 2, &_swiftEmptyArrayStorage);
      type metadata accessor for RuntimeError();
      v45 = swift_allocObject();
      *(v45 + 16) = 0xD00000000000002BLL;
      *(v45 + 24) = 0x80000000000C2880;
      _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_3(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError, &protocol conformance descriptor for RuntimeError);
      swift_allocError();
      *v46 = v45;
      swift_willThrow();
    }

    else
    {
      v36 = v0[4];
      v37 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v37, &dword_0, *(v36 + 16), "makeIntentFromParse should have INSaveParkingLocationIntent passed in", 69, 2, &_swiftEmptyArrayStorage);
      type metadata accessor for RuntimeError();
      v38 = swift_allocObject();
      *(v38 + 16) = 0xD000000000000045;
      *(v38 + 24) = 0x80000000000C3700;
      _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_3(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError, &protocol conformance descriptor for RuntimeError);
      swift_allocError();
      *v39 = v38;
      swift_willThrow();
      (*(v22 + 8))(v21, v23);
    }
  }

  v47 = v0[1];

  return v47();
}

uint64_t SaveParkingBaseRCHStrategy.actionForInput(input:)()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v14 - v5;
  Input.parse.getter();
  (*(v2 + 16))(v4, v6, v1);
  v7 = (*(v2 + 88))(v4, v1);
  if (v7 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v2 + 96))(v4, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp");

    static ActionForInput.handle()();
    (*(v2 + 8))(v6, v1);
    v8 = type metadata accessor for NLIntent();
    return (*(*(v8 - 8) + 8))(v4, v8);
  }

  else if (v7 == enum case for Parse.pommesResponse(_:))
  {
    v10 = *(v2 + 8);
    v10(v4, v1);
    v11 = static os_log_type_t.info.getter();
    os_log(_:dso:log:_:_:)(v11, &dword_0, *(v0 + 16), "actionForInput - pommesResponse", 31, 2, &_swiftEmptyArrayStorage);
    static ActionForInput.handle()();
    return (v10)(v6, v1);
  }

  else
  {
    v12 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v12, &dword_0, *(v0 + 16), "actionForInput - shouldn't hit default case", 43, 2, &_swiftEmptyArrayStorage);
    static ActionForInput.cancel()();
    v13 = *(v2 + 8);
    v13(v6, v1);
    return (v13)(v4, v1);
  }
}

uint64_t SaveParkingBaseRCHStrategy.init()()
{
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance SaveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 88) + **(**v2 + 88));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for HandleFilterProtocolAsync.filterHandles(recipients:) in conformance ContactHandleResolver;

  return v8(a1, a2);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeParameterMetadata(intent:) in conformance SaveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SaveParkingBaseRCHStrategy();

  return RCHFlowStrategyAsync.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance SaveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SaveParkingBaseRCHStrategy();
  *v10 = v5;
  v10[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:) in conformance SaveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SaveParkingBaseRCHStrategy();
  *v10 = v5;
  v10[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:) in conformance SaveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SaveParkingBaseRCHStrategy();
  *v10 = v5;
  v10[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance SaveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for SaveParkingBaseRCHStrategy();
  *v12 = v6;
  v12[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v13, a6);
}

uint64_t protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance SaveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for SaveParkingBaseRCHStrategy();
  *v12 = v6;
  v12[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v13, a6);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance SaveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SaveParkingBaseRCHStrategy();
  *v8 = v4;
  v8[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentHandleIntentStrategy;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v9, a4);
}

uint64_t _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_3(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t TrafficIncidentBaseFlow.__allocating_init(with:flowHelper:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  TrafficIncidentBaseFlow.init(with:flowHelper:)(a1, a2);
  return v4;
}

uint64_t key path setter for TrafficIncidentBaseFlow.flowState : TrafficIncidentBaseFlow(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TrafficIncidentBaseFlow.State(0);
  __chkstk_darwin();
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TrafficIncidentBaseFlow.State(a1, v5);
  return (*(**a2 + 120))(v5);
}

uint64_t TrafficIncidentBaseFlow.flowState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_flowState;
  swift_beginAccess();
  return outlined init with copy of TrafficIncidentBaseFlow.State(v1 + v3, a1);
}

uint64_t TrafficIncidentBaseFlow.flowState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_flowState;
  swift_beginAccess();
  outlined assign with take of TrafficIncidentBaseFlow.State(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t TrafficIncidentBaseFlow.flowHelper.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_flowHelper;
  swift_beginAccess();
  return outlined init with copy of DeviceState(v1 + v3, a1);
}

uint64_t TrafficIncidentBaseFlow.flowHelper.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_flowHelper;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + v3));
  outlined init with take of CATType(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t TrafficIncidentBaseFlow.isPOMMES.getter()
{
  v1 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_isPOMMES;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TrafficIncidentBaseFlow.isPOMMES.setter(char a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_isPOMMES;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t TrafficIncidentBaseFlow.init(with:flowHelper:)(uint64_t a1, void *a2)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v2 + 16) = OS_os_log.init(subsystem:category:)();
  *(v2 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_isPOMMES) = 0;
  *(v2 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_flowState) = a1;
  type metadata accessor for TrafficIncidentBaseFlow.State(0);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of DeviceState(a2, v2 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_flowHelper);

  v5 = static os_log_type_t.info.getter();
  v6 = *(v2 + 16);
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    type metadata accessor for LocationSearchIntent(0);
    lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, type metadata accessor for LocationSearchIntent, &protocol conformance descriptor for LocationSearchIntent);
    v9 = NLIntentWrapper.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v6, v5, "TrafficIncidentBaseFlow initialized with intent\n%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v2;
}

uint64_t outlined init with copy of TrafficIncidentBaseFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrafficIncidentBaseFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of TrafficIncidentBaseFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrafficIncidentBaseFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TrafficIncidentBaseFlow.__allocating_init(with:)(uint64_t a1)
{
  type metadata accessor for TrafficIncidentBaseFlow.State(0);
  __chkstk_darwin();
  v4 = (&v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17[3] = &type metadata for FlowHelperImpl;
  v17[4] = &protocol witness table for FlowHelperImpl;
  v5 = swift_allocObject();
  v17[0] = v5;

  FlowHelperImpl.init()((v5 + 16));
  v6 = (*(v1 + 184))(a1, v17);
  *v4 = a1;
  swift_storeEnumTagMultiPayload();
  v7 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_flowState;
  swift_beginAccess();

  outlined assign with take of TrafficIncidentBaseFlow.State(v4, v6 + v7);
  swift_endAccess();
  v8 = static os_log_type_t.info.getter();
  v9 = *(v6 + 16);

  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = a1;
    v17[0] = v11;
    *v10 = 136315138;
    type metadata accessor for LocationSearchIntent(0);
    lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, type metadata accessor for LocationSearchIntent, &protocol conformance descriptor for LocationSearchIntent);
    v12 = NLIntentWrapper.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v9, v8, "TrafficIncidentBaseFlow initialized with intent\n%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  else
  {
  }

  return v6;
}

uint64_t TrafficIncidentBaseFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TrafficIncidentBaseFlow.State(0);
  v3 = __chkstk_darwin();
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(*v1 + 112))(v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    *a1 = *v5;
    *(a1 + 8) = 0;
    v9 = enum case for RCHFlowResult.error<A, B>(_:);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo22INReportIncidentIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo22INReportIncidentIntentCSo0fgH8ResponseCGMR);
    return (*(*(v10 - 8) + 104))(a1, v9, v10);
  }

  else if (EnumCaseMultiPayload == 5)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo22INReportIncidentIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo22INReportIncidentIntentCSo0fgH8ResponseCGMR);
    return (*(*(v7 - 8) + 32))(a1, v5, v7);
  }

  else
  {
    lazy protocol witness table accessor for type Errors and conformance Errors();
    v11 = swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 3;
    *a1 = v11;
    *(a1 + 8) = 0;
    v13 = enum case for RCHFlowResult.error<A, B>(_:);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo22INReportIncidentIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo22INReportIncidentIntentCSo0fgH8ResponseCGMR);
    (*(*(v14 - 8) + 104))(a1, v13, v14);
    return outlined destroy of TrafficIncidentBaseFlow.State(v5);
  }
}

uint64_t TrafficIncidentBaseFlow.onInput(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Input();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin();
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Parse.DirectInvocation();
  v47 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Parse();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v44 - v14;
  Input.parse.getter();
  v16 = *(v11 + 88);
  v48 = v10;
  v17 = v16(v15, v10);
  if (v17 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v18 = v1[2];
    v19 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      v21 = 1;
      goto LABEL_24;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "TrafficIncidentBaseFlow onInput returns true for Nlv3Only.", v20, 2u);
    goto LABEL_4;
  }

  if (v17 != enum case for Parse.directInvocation(_:))
  {
    if (v17 == enum case for Parse.pommesResponse(_:))
    {
      v21 = 1;
      (*(*v1 + 168))(1);
      v26 = v1[2];
      v27 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_24;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "TrafficIncidentBaseFlow onInput returns true for Pommes response.", v28, 2u);
LABEL_4:

      v21 = 1;
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  v22 = v48;
  (*(v11 + 16))(v13, v15, v48);
  (*(v11 + 96))(v13, v22);
  (v47[4].isa)(v9, v13, v7);
  if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000033 && 0x80000000000BFC60 == v23)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      (v47[1].isa)(v9, v7);
LABEL_16:
      v29 = v2[2];
      v30 = v45;
      v31 = v46;
      (*(v45 + 16))(v6, a1, v46);
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v49 = v34;
        *v33 = 136315138;
        v47 = v29;
        v35 = v30;
        v36 = Input.description.getter();
        v38 = v37;
        (*(v35 + 8))(v6, v31);
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v49);

        *(v33 + 4) = v39;
        _os_log_impl(&dword_0, v47, v32, "SiriGeo currently doesn't support parse type: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
      }

      else
      {
        (*(v30 + 8))(v6, v31);
      }

      v21 = 0;
      goto LABEL_24;
    }
  }

  v40 = v2[2];
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_0, v40, v41, "TrafficIncidentBaseFlow onInput returns true for directInvocation.", v42, 2u);
  }

  (v47[1].isa)(v9, v7);
  v21 = 1;
LABEL_24:
  (*(v11 + 8))(v15, v48);
  return v21;
}

uint64_t TrafficIncidentBaseFlow.executeState()(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo22INReportIncidentIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo22INReportIncidentIntentCSo0fgH8ResponseCGMR);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for TrafficIncidentBaseFlow.State(0);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(TrafficIncidentBaseFlow.executeState(), 0, 0);
}

uint64_t TrafficIncidentBaseFlow.executeState()()
{
  v59 = v0;
  (*(**(v0 + 56) + 112))();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v33 = *(v0 + 56);
        v34 = **(v0 + 120);
        (*(*v33 + 136))(v58);
        type metadata accessor for LocationFetchFlow();
        swift_allocObject();
        *(v0 + 24) = LocationFetchFlow.init(flowHelper:requiredAccess:)(v58, 1);
        v35 = swift_allocObject();
        *(v35 + 16) = v33;
        *(v35 + 24) = v34;
        lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type LocationFetchFlow and conformance LocationFetchFlow, type metadata accessor for LocationFetchFlow, &protocol conformance descriptor for LocationFetchFlow);

        static ExecuteResponse.ongoing<A>(next:childCompletion:)();

LABEL_22:

        goto LABEL_25;
      }

      v9 = **(v0 + 120);
    }

    else
    {
      v9 = **(v0 + 120);
      if ([objc_opt_self() isSiriLocationServicesPromptingEnabled])
      {
        v30 = *(v0 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
        type metadata accessor for CommonFlowGuard();
        *(swift_allocObject() + 16) = xmmword_B89E0;
        static CommonFlowGuard.ensuringSiriLocationAccess(needsPreciseLocation:)();
        v31 = static CommonGuardFlowUtils.makeGuardFlow(withGuards:)();

        *(v0 + 40) = v31;
        v32 = swift_allocObject();
        *(v32 + 16) = v30;
        *(v32 + 24) = v9;
        type metadata accessor for GuardFlow();

        static ExecuteResponse.ongoing<A>(next:childCompletion:)();

        goto LABEL_25;
      }

      v45 = *(v0 + 112);
      v46 = *(v0 + 56);
      *v45 = v9;
      swift_storeEnumTagMultiPayload();
      v47 = *(*v46 + 120);

      v47(v45);
    }

    v48 = *(v0 + 56);
    v49 = *(*v48 + 136);

    v49(v58, v50);
    type metadata accessor for TrafficIncidentRequestSupportedCheckFlow();
    swift_allocObject();
    *(v0 + 32) = TrafficIncidentRequestSupportedCheckFlow.init(intent:flowHelper:)(v9, v58);
    v51 = swift_allocObject();
    *(v51 + 16) = v48;
    *(v51 + 24) = v9;
    lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type TrafficIncidentRequestSupportedCheckFlow and conformance TrafficIncidentRequestSupportedCheckFlow, type metadata accessor for TrafficIncidentRequestSupportedCheckFlow, &protocol conformance descriptor for TrafficIncidentRequestSupportedCheckFlow);

    static ExecuteResponse.ongoing<A>(next:childCompletion:)();
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v11 = *(v0 + 88);
      v10 = *(v0 + 96);
      v12 = *(v0 + 64);
      v13 = *(v0 + 72);
      v14 = *(v0 + 56);
      (*(v13 + 32))(v10, *(v0 + 120), v12);
      v15 = static os_log_type_t.info.getter();
      v16 = *(v14 + 16);
      v17 = *(v13 + 16);
      v17(v11, v10, v12);
      v18 = os_log_type_enabled(v16, v15);
      v19 = *(v0 + 88);
      if (v18)
      {
        v57 = v15;
        v20 = *(v0 + 72);
        v21 = *(v0 + 80);
        v22 = *(v0 + 64);
        v23 = swift_slowAlloc();
        log = v16;
        v24 = swift_slowAlloc();
        *&v58[0] = v24;
        *v23 = 136315138;
        v17(v21, v19, v22);
        v25 = String.init<A>(describing:)();
        v27 = v26;
        v28 = *(v20 + 8);
        v28(v19, v22);
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v58);

        *(v23 + 4) = v29;
        _os_log_impl(&dword_0, log, v57, "TrafficIncidentBaseFlow execute rchComplete with result %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
      }

      else
      {
        v28 = *(*(v0 + 72) + 8);
        v28(*(v0 + 88), *(v0 + 64));
      }

      v52 = *(v0 + 96);
      v53 = *(v0 + 64);
      static ExecuteResponse.complete()();
      v28(v52, v53);
    }

    else
    {
      static ExecuteResponse.complete()();
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v2 = *(v0 + 120);
      v3 = *(v0 + 56);
      v4 = *v2;
      *(v0 + 128) = *v2;
      v5 = v2[1];
      *(v0 + 136) = v5;
      v56 = (*(*v3 + 216) + **(*v3 + 216));
      v6 = swift_task_alloc();
      *(v0 + 144) = v6;
      *v6 = v0;
      v6[1] = TrafficIncidentBaseFlow.executeState();
      v7 = *(v0 + 48);

      return v56(v7, v4, v5);
    }

    v36 = *(v0 + 56);
    v37 = **(v0 + 120);
    v38 = static os_log_type_t.error.getter();
    v39 = *(v36 + 16);
    if (os_log_type_enabled(v39, v38))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v58[0] = v41;
      *v40 = 136315138;
      *(v0 + 16) = v37;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v42 = String.init<A>(describing:)();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v58);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_0, v39, v38, "TrafficIncidentBaseFlow execute requestUnsupported with error %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
    }

    static ExecuteResponse.complete()();
  }

LABEL_25:

  v54 = *(v0 + 8);

  return v54();
}

{

  return _swift_task_switch(TrafficIncidentBaseFlow.executeState(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in TrafficIncidentBaseFlow.executeState()(unsigned __int8 *a1, void *a2, uint64_t a3)
{
  type metadata accessor for TrafficIncidentBaseFlow.State(0);
  __chkstk_darwin();
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v9 = static os_log_type_t.info.getter();
  v10 = a2[2];
  os_log(_:dso:log:_:_:)(v9, &dword_0, v10, "location prompting result", 25, 2, &_swiftEmptyArrayStorage);
  if (v8 == 1)
  {
    v11 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v11, &dword_0, v10, "location prompting fail, let the guard flow handle this", 55, 2, &_swiftEmptyArrayStorage);
    swift_storeEnumTagMultiPayload();
    return (*(*a2 + 120))(v7);
  }

  else
  {
    v13 = static os_log_type_t.info.getter();
    os_log(_:dso:log:_:_:)(v13, &dword_0, v10, "location prompting pass", 23, 2, &_swiftEmptyArrayStorage);
    *v7 = a3;
    swift_storeEnumTagMultiPayload();
    v14 = *(*a2 + 120);

    return v14(v7);
  }
}

uint64_t closure #3 in TrafficIncidentBaseFlow.executeState()(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for TrafficIncidentBaseFlow.State(0);
  __chkstk_darwin();
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 8))
  {
    type metadata accessor for UnsupportedError();
    v8 = swift_allocObject();
    *(v8 + 16) = 0xD000000000000014;
    *(v8 + 24) = 0x80000000000C3840;
    lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type UnsupportedError and conformance UnsupportedError, type metadata accessor for UnsupportedError, &protocol conformance descriptor for UnsupportedError);
    v9 = swift_allocError();
    *v10 = v8;
LABEL_7:
    *v7 = v9;
    swift_storeEnumTagMultiPayload();
    return (*(*a2 + 120))(v7);
  }

  v11 = *a1;
  v12 = static os_log_type_t.default.getter();
  v13 = a2[2];
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v14 = 136315138;
    v15 = [v11 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v13;
    v17 = v16;
    v18 = a3;
    v20 = v19;

    outlined consume of LocationFetchFlow.ExitValue(v11, 0);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v20, &v39);
    a3 = v18;

    *(v14 + 4) = v21;
    v13 = v38;
    _os_log_impl(&dword_0, v38, v12, "location: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }

  [v11 horizontalAccuracy];
  if (v22 < 0.0)
  {
    lazy protocol witness table accessor for type Errors and conformance Errors();
    v9 = swift_allocError();
    *v23 = 0xD00000000000001ELL;
    *(v23 + 8) = 0x80000000000C3860;
    *(v23 + 16) = 2;
    goto LABEL_7;
  }

  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v25))
  {
    v26 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v26 = 136315138;
    v27 = [v11 description];
    v38 = v13;
    v28 = v27;
    v29 = a3;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    outlined consume of LocationFetchFlow.ExitValue(v11, 0);
    v33 = v30;
    a3 = v29;
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, &v39);

    *(v26 + 4) = v34;
    _os_log_impl(&dword_0, v38, v25, "returning success: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }

  *v7 = a3;
  v7[1] = v11;
  swift_storeEnumTagMultiPayload();
  v35 = *(*a2 + 120);
  outlined copy of LocationFetchFlow.ExitValue(v11, 0);

  return v35(v7);
}

uint64_t closure #2 in TrafficIncidentBaseFlow.executeState()(uint64_t *a1, void *a2, uint64_t a3)
{
  type metadata accessor for TrafficIncidentBaseFlow.State(0);
  __chkstk_darwin();
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      v9 = static os_log_type_t.error.getter();
      v10 = a2[2];
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        swift_errorRetain();
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 4) = v13;
        *v12 = v13;
        _os_log_impl(&dword_0, v10, v9, "exitValue error: %@", v11, 0xCu);
        outlined destroy of NSObject?(v12);
      }

      *v7 = v8;
      swift_storeEnumTagMultiPayload();
      v14 = *(*a2 + 120);
      swift_errorRetain();
      return v14(v7);
    }

    else
    {
      *v7 = a3;
      swift_storeEnumTagMultiPayload();
      v17 = *(*a2 + 120);

      return v17(v7);
    }
  }

  else
  {
    *v7 = a3;
    v7[1] = v8;
    swift_storeEnumTagMultiPayload();
    v16 = *(*a2 + 120);

    outlined copy of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(v8, 0);
    return v16(v7);
  }
}

uint64_t TrafficIncidentBaseFlow.makeRCHFlow(locationSearchIntent:userLocation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  v5 = type metadata accessor for Parse();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v6 = type metadata accessor for Input();
  v4[31] = v6;
  v4[32] = *(v6 - 8);
  v4[33] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INReportIncidentIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INReportIncidentIntentCSo0ghI8ResponseCGMR);
  v4[34] = v7;
  v4[35] = *(v7 - 8);
  v4[36] = swift_task_alloc();

  return _swift_task_switch(TrafficIncidentBaseFlow.makeRCHFlow(locationSearchIntent:userLocation:), 0, 0);
}

uint64_t TrafficIncidentBaseFlow.makeRCHFlow(locationSearchIntent:userLocation:)(uint64_t a1)
{
  v31 = v1;
  v28 = *(v1 + 232);
  v29 = *(v1 + 224);
  v2 = *(v1 + 208);
  v26 = *(v1 + 216);
  v27 = *(v1 + 200);
  v24 = *(v1 + 192);
  v25 = *(v1 + 240);
  v3 = static os_log_type_t.info.getter();
  v4 = v2[2];
  *(v1 + 296) = v4;
  os_log(_:dso:log:_:_:)(v3, &dword_0, v4, "TrafficIncidentBaseFlow makeRCHFlow", 35, 2, &_swiftEmptyArrayStorage);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INReportIncidentIntent, INReportIncidentIntent_ptr);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INReportIncidentIntentResponse, INReportIncidentIntentResponse_ptr);
  RCHChildFlowProducersAsync.init()();
  type metadata accessor for App();
  swift_allocObject();
  *(v1 + 304) = App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
  static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(app:)();
  v5 = RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  v6 = *(*v2 + 136);
  v7 = (*v2 + 136) & 0xFFFFFFFFFFFFLL | 0x94CB000000000000;
  *(v1 + 312) = v6;
  *(v1 + 320) = v7;
  v6(v5);
  type metadata accessor for TrafficIncidentHandleIntentStrategy();
  v8 = swift_allocObject();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v8 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType((v1 + 16), v8 + 24);
  *(v1 + 136) = v8;
  lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type TrafficIncidentHandleIntentStrategy and conformance TrafficIncidentHandleIntentStrategy, type metadata accessor for TrafficIncidentHandleIntentStrategy, &protocol conformance descriptor for TrafficIncidentHandleIntentStrategy);
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();

  v9 = RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  (v6)(v30, v9);
  type metadata accessor for TrafficIncidentContinueInAppPunchoutStrategy();
  swift_allocObject();
  *(v1 + 144) = TrafficIncidentContinueInAppPunchoutStrategy.init(with:)(v30);
  lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type TrafficIncidentContinueInAppPunchoutStrategy and conformance TrafficIncidentContinueInAppPunchoutStrategy, type metadata accessor for TrafficIncidentContinueInAppPunchoutStrategy, &protocol conformance descriptor for TrafficIncidentContinueInAppPunchoutStrategy);
  static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithAutomaticPunchOutProducer<A>(strategy:)();

  v10 = RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
  v11 = (*(*v2 + 160))(v10);
  v6(v30);
  type metadata accessor for TrafficIncidentNeedsDisambiguationStrategy();
  swift_allocObject();
  *(v1 + 152) = TrafficIncidentNeedsDisambiguationStrategy.init(isPommes:with:)(v11 & 1, v30);
  lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type TrafficIncidentNeedsDisambiguationStrategy and conformance TrafficIncidentNeedsDisambiguationStrategy, type metadata accessor for TrafficIncidentNeedsDisambiguationStrategy, &protocol conformance descriptor for TrafficIncidentNeedsDisambiguationStrategy);
  static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();

  v12 = RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter();
  (v6)(v30, v12);
  type metadata accessor for TrafficIncidentUnsupportedValueStrategy();
  swift_allocObject();
  *(v1 + 160) = TrafficIncidentUnsupportedValueStrategy.init(with:)(v30);
  lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type TrafficIncidentUnsupportedValueStrategy and conformance TrafficIncidentUnsupportedValueStrategy, type metadata accessor for TrafficIncidentUnsupportedValueStrategy, &protocol conformance descriptor for TrafficIncidentUnsupportedValueStrategy);
  static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
  v13 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent;
  v23 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent;
  v14 = type metadata accessor for NLIntent();
  v15 = *(*(v14 - 8) + 16);
  v15(v25, v24 + v13, v14);
  v16 = enum case for Parse.NLv3IntentOnly(_:);
  v17 = *(v29 + 104);
  v17(v25, enum case for Parse.NLv3IntentOnly(_:), v26);
  Input.init(parse:)();
  *(v1 + 328) = type metadata accessor for TrafficIncidentBaseRCHStrategy();
  v18 = swift_allocObject();
  *(v1 + 336) = v18;
  *(v18 + 16) = OS_os_log.init(subsystem:category:)();
  v19 = specialized static TrafficIncidentUtils.makeSiriKitIntentWithUserLocation(locationSearchIntent:userLocation:)(v24, v27);
  *(v1 + 344) = v19;
  v15(v28, v24 + v23, v14);
  v17(v28, v16, v26);
  v20 = swift_task_alloc();
  *(v1 + 352) = v20;
  *v20 = v1;
  v20[1] = TrafficIncidentBaseFlow.makeRCHFlow(locationSearchIntent:userLocation:);
  v21 = *(v1 + 232);

  return TrafficIncidentBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:)(v21, v19);
}

{
  v4 = *v2;
  v4[45] = v1;

  v5 = v4[29];
  v6 = v4[28];
  v7 = v4[27];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = TrafficIncidentBaseFlow.makeRCHFlow(locationSearchIntent:userLocation:);
  }

  else
  {
    v4[46] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = TrafficIncidentBaseFlow.makeRCHFlow(locationSearchIntent:userLocation:);
  }

  return _swift_task_switch(v8, 0, 0);
}

{
  v21 = v1;
  v2 = v1[37];
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[45];
    v5 = v1[37];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    v1[21] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v20);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v5, v3, "TrafficIncidentBaseFlow makeRCHFlow failure: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  v11 = v1[43];
  v12 = v1[35];
  v19 = v1[36];
  v14 = v1[33];
  v13 = v1[34];
  v16 = v1[31];
  v15 = v1[32];
  static ExecuteResponse.complete()();

  (*(v15 + 8))(v14, v16);
  (*(v12 + 8))(v19, v13);

  v17 = v1[1];

  return v17();
}

uint64_t TrafficIncidentBaseFlow.makeRCHFlow(locationSearchIntent:userLocation:)()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 336);
  v13 = *(v0 + 328);
  v3 = *(v0 + 304);
  v12 = *(v0 + 288);
  v15 = *(v0 + 280);
  v18 = *(v0 + 344);
  v19 = *(v0 + 272);
  v14 = *(v0 + 256);
  v16 = *(v0 + 248);
  v17 = *(v0 + 264);
  (*(v0 + 312))();
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v5);
  (*(v4 + 56))(v5, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v6);
  *(v0 + 176) = v2;
  v8 = *(v7 + 8);
  v9 = lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type TrafficIncidentBaseRCHStrategy and conformance TrafficIncidentBaseRCHStrategy, type metadata accessor for TrafficIncidentBaseRCHStrategy, &protocol conformance descriptor for TrafficIncidentBaseRCHStrategy);
  v8(v0 + 176, v12, v3, v1, v13, v9, v6, v7);

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  (*(v14 + 8))(v17, v16);
  (*(v15 + 8))(v12, v19);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t closure #1 in TrafficIncidentBaseFlow.makeRCHFlow(locationSearchIntent:userLocation:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TrafficIncidentBaseFlow.State(0);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo22INReportIncidentIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo22INReportIncidentIntentCSo0fgH8ResponseCGMR);
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  swift_storeEnumTagMultiPayload();
  return (*(*a2 + 120))(v5);
}

uint64_t TrafficIncidentBaseFlow.deinit()
{
  outlined destroy of TrafficIncidentBaseFlow.State(v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_flowState);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_flowHelper));
  return v0;
}

uint64_t TrafficIncidentBaseFlow.__deallocating_deinit()
{
  outlined destroy of TrafficIncidentBaseFlow.State(v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_flowState);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_flowHelper));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FSMFlow.executeState() in conformance TrafficIncidentBaseFlow(uint64_t a1)
{
  v6 = (*(**v1 + 208) + **(**v1 + 208));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.on(input:) in conformance TrafficIncidentBaseFlow(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.on(input:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.execute(completion:) in conformance TrafficIncidentBaseFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.execute(completion:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for Flow.execute() in conformance TrafficIncidentBaseFlow(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return FSMFlow.execute()(a1, a2, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TrafficIncidentBaseFlow(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.description.getter(a1, WitnessTable);
}

uint64_t sub_A0CA8()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t outlined destroy of TrafficIncidentBaseFlow.State(uint64_t a1)
{
  v2 = type metadata accessor for TrafficIncidentBaseFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_3Tm()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t instantiation function for generic protocol witness table for TrafficIncidentBaseFlow(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type TrafficIncidentBaseFlow and conformance TrafficIncidentBaseFlow, type metadata accessor for TrafficIncidentBaseFlow, &protocol conformance descriptor for TrafficIncidentBaseFlow);
  result = lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type TrafficIncidentBaseFlow and conformance TrafficIncidentBaseFlow, type metadata accessor for TrafficIncidentBaseFlow, &protocol conformance descriptor for TrafficIncidentBaseFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_A0F9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result & 1;
  return result;
}

uint64_t type metadata completion function for TrafficIncidentBaseFlow(uint64_t a1)
{
  result = type metadata accessor for TrafficIncidentBaseFlow.State(319);
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

void type metadata completion function for TrafficIncidentBaseFlow.State(uint64_t a1)
{
  type metadata accessor for LocationSearchIntent(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (LocationSearchIntent, CLLocation)(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Error();
      if (v3 <= 0x3F)
      {
        type metadata accessor for RCHFlowResult<INReportIncidentIntent, INReportIncidentIntentResponse>(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (LocationSearchIntent, CLLocation)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (LocationSearchIntent, CLLocation))
  {
    type metadata accessor for LocationSearchIntent(255);
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for CLLocation, CLLocation_ptr);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (LocationSearchIntent, CLLocation));
    }
  }
}

void type metadata accessor for RCHFlowResult<INReportIncidentIntent, INReportIncidentIntentResponse>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for RCHFlowResult<INReportIncidentIntent, INReportIncidentIntentResponse>)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INReportIncidentIntent, INReportIncidentIntent_ptr);
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INReportIncidentIntentResponse, INReportIncidentIntentResponse_ptr);
    v1 = type metadata accessor for RCHFlowResult();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for RCHFlowResult<INReportIncidentIntent, INReportIncidentIntentResponse>);
    }
  }
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, ",p");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id outlined copy of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(id result, char a2)
{
  if (a2 == 1)
  {
    return swift_errorRetain();
  }

  if (!a2)
  {
    return result;
  }

  return result;
}

uint64_t UnsupportedDeviceFlow.__allocating_init(with:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  v8 = specialized UnsupportedDeviceFlow.init(with:)(v6, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t UnsupportedDeviceFlow.flowHelper.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 24));
  outlined init with take of CATType(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t UnsupportedDeviceFlow.init(with:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  v8 = specialized UnsupportedDeviceFlow.init(with:)(v6, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t UnsupportedDeviceFlow.execute()(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = type metadata accessor for TemplatingResult();
  v2[30] = v3;
  v4 = *(v3 - 8);
  v2[31] = v4;
  v2[32] = *(v4 + 64);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return _swift_task_switch(UnsupportedDeviceFlow.execute(), 0, 0);
}

uint64_t UnsupportedDeviceFlow.execute()()
{
  v1 = v0[29];
  v2 = *(*v1 + 96);
  v3 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xF0F0000000000000;
  v0[35] = v2;
  v0[36] = v3;
  v2();
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v6 = (*(v5 + 128))(v4, v5);
  v0[37] = v6;
  v7 = __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v0[10] = &type metadata for Common;
  v0[11] = &protocol witness table for Common;
  v0[7] = 2;
  (v2)(v7);
  v8 = v0[15];
  v9 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v8);
  v10 = (*(v9 + 80))(v8, v9);
  v0[38] = v10;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v14 = (*(*v6 + 112) + **(*v6 + 112));
  v11 = swift_task_alloc();
  v0[39] = v11;
  *v11 = v0;
  v11[1] = UnsupportedDeviceFlow.execute();
  v12 = v0[34];

  return v14(v12, v0 + 7, v10);
}

{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {

    v3 = UnsupportedDeviceFlow.execute();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
    v3 = UnsupportedDeviceFlow.execute();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v14 = v0;
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 240);
  (*(v0 + 280))();
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v6);
  (*(v7 + 104))(v13, v6, v7);
  (*(v3 + 16))(v2, v1, v5);
  outlined init with copy of DeviceState(v0 + 136, v0 + 176);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v2, v5);
  outlined init with take of CATType((v0 + 176), v9 + ((v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v10 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  *(v0 + 216) = v10;
  static ExecuteResponse.complete<A>(next:)();

  (*(v3 + 8))(v1, v5);

  v11 = *(v0 + 8);

  return v11();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  static ExecuteResponse.complete()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t UnsupportedDeviceFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnsupportedDeviceFlow();
  lazy protocol witness table accessor for type UnsupportedDeviceFlow and conformance UnsupportedDeviceFlow();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t protocol witness for Flow.execute() in conformance UnsupportedDeviceFlow(uint64_t a1)
{
  v6 = (*(**v1 + 136) + **(**v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance UnsupportedDeviceFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UnsupportedDeviceFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t specialized UnsupportedDeviceFlow.init(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  type metadata accessor for OS_os_log();
  *(a2 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(&v9, a2 + 24);
  return a2;
}

uint64_t sub_A1F74()
{
  v1 = type metadata accessor for TemplatingResult();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5));

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

unint64_t lazy protocol witness table accessor for type UnsupportedDeviceFlow and conformance UnsupportedDeviceFlow()
{
  result = lazy protocol witness table cache variable for type UnsupportedDeviceFlow and conformance UnsupportedDeviceFlow;
  if (!lazy protocol witness table cache variable for type UnsupportedDeviceFlow and conformance UnsupportedDeviceFlow)
  {
    type metadata accessor for UnsupportedDeviceFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedDeviceFlow and conformance UnsupportedDeviceFlow);
  }

  return result;
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.__allocating_init(intent:flowHelper:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  TrafficIncidentRequestSupportedCheckFlow.init(intent:flowHelper:)(a1, a2);
  return v4;
}

void *TrafficIncidentRequestSupportedCheckFlow.exitValue.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  outlined copy of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(v1, *(v0 + 88));
  return v1;
}

void TrafficIncidentRequestSupportedCheckFlow.exitValue.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  *(v2 + 80) = a1;
  v6 = *(v2 + 88);
  *(v2 + 88) = a2;
  outlined consume of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(v5, v6);
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.init(intent:flowHelper:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  type metadata accessor for CATService();
  v6 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v6 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v6 + 32) = OS_os_log.init(subsystem:category:)();
  *(v6 + 16) = 0;
  *(v3 + 24) = v6;
  *(v3 + 72) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for RuntimeError();
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD00000000000002CLL;
  *(v8 + 24) = 0x80000000000C02B0;
  _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_4(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError, &protocol conformance descriptor for RuntimeError);
  v9 = swift_allocError();
  *v10 = v8;
  *(v3 + 80) = v9;
  *(v3 + 88) = 1;
  *(v3 + 16) = a1;
  outlined init with take of CATType(a2, v3 + 32);
  return v3;
}

void outlined consume of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(id a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.__allocating_init(intent:)(uint64_t a1)
{
  v4[3] = &type metadata for FlowHelperImpl;
  v4[4] = &protocol witness table for FlowHelperImpl;
  v4[0] = swift_allocObject();
  FlowHelperImpl.init()((v4[0] + 16));
  return (*(v1 + 144))(a1, v4);
}

uint64_t sub_A247C()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TrafficIncidentRequestSupportedCheckFlow();
  _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_4(&lazy protocol witness table cache variable for type TrafficIncidentRequestSupportedCheckFlow and conformance TrafficIncidentRequestSupportedCheckFlow, v2, type metadata accessor for TrafficIncidentRequestSupportedCheckFlow, &protocol conformance descriptor for TrafficIncidentRequestSupportedCheckFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.execute()(uint64_t a1)
{
  v2[69] = v1;
  v2[68] = a1;
  v3 = type metadata accessor for TemplatingResult();
  v2[70] = v3;
  v4 = *(v3 - 8);
  v2[71] = v4;
  v2[72] = *(v4 + 64);
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v2[78] = swift_task_alloc();
  v5 = type metadata accessor for ActivityType();
  v2[79] = v5;
  v2[80] = *(v5 - 8);
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();

  return _swift_task_switch(TrafficIncidentRequestSupportedCheckFlow.execute(), 0, 0);
}

id TrafficIncidentRequestSupportedCheckFlow.execute()()
{
  v1 = (*(**(v0[69] + 16) + 168))();
  if (LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(v1) == 0x796669646F6DLL && v2 == 0xE600000000000000)
  {

    goto LABEL_10;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v4)
  {
LABEL_10:
    v25 = v0[84];
    v26 = v0[80];
    v27 = v0[79];
    static SiriKitEventSender.current.getter();
    __swift_project_boxed_opaque_existential_1(v0 + 52, v0[55]);
    (*(v26 + 104))(v25, enum case for ActivityType.failed(_:), v27);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INReportIncidentIntent, INReportIncidentIntent_ptr);
    result = [swift_getObjCClassFromMetadata() typeName];
    if (result)
    {
      v28 = result;
      v29 = v0[78];
      v30 = v0[69];
      type metadata accessor for SiriKitEvent();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = enum case for SiriKitReliabilityCodes.unsupportedParameter(_:);
      v32 = type metadata accessor for SiriKitReliabilityCodes();
      v33 = *(v32 - 8);
      (*(v33 + 104))(v29, v31, v32);
      (*(v33 + 56))(v29, 0, 1, v32);
      SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
      dispatch thunk of SiriKitEventSending.send(_:)();

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 52);
      type metadata accessor for UnsupportedError();
      v34 = swift_allocObject();
      *(v34 + 16) = 0xD000000000000027;
      *(v34 + 24) = 0x80000000000C3930;
      _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_4(&lazy protocol witness table cache variable for type UnsupportedError and conformance UnsupportedError, 255, type metadata accessor for UnsupportedError, &protocol conformance descriptor for UnsupportedError);
      v35 = swift_allocError();
      *v36 = v34;
      (*(*v30 + 128))(v35, 1);
      v37 = v30[3];
      v0[60] = type metadata accessor for TrafficIncident(0);
      v0[61] = &protocol witness table for TrafficIncident;
      __swift_allocate_boxed_opaque_existential_0(v0 + 57);
      swift_storeEnumTagMultiPayload();
      v38 = v30[7];
      v39 = v30[8];
      __swift_project_boxed_opaque_existential_1(v30 + 4, v38);
      v21 = (*(v39 + 80))(v38, v39);
      v0[85] = v21;
      v82 = (*(*v37 + 112) + **(*v37 + 112));
      v40 = swift_task_alloc();
      v0[86] = v40;
      *v40 = v0;
      v40[1] = TrafficIncidentRequestSupportedCheckFlow.execute();
      v23 = v0[77];
      v24 = v0 + 57;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (TrafficIncidentRequestSupportedCheckFlow.isReportMapsProblems()())
  {
    v5 = v0[83];
    v6 = v0[80];
    v7 = v0[79];
    static SiriKitEventSender.current.getter();
    __swift_project_boxed_opaque_existential_1(v0 + 37, v0[40]);
    (*(v6 + 104))(v5, enum case for ActivityType.failed(_:), v7);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INReportIncidentIntent, INReportIncidentIntent_ptr);
    result = [swift_getObjCClassFromMetadata() typeName];
    if (result)
    {
      v9 = result;
      v10 = v0[78];
      v11 = v0[69];
      type metadata accessor for SiriKitEvent();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = enum case for SiriKitReliabilityCodes.unsupportedParameter(_:);
      v13 = type metadata accessor for SiriKitReliabilityCodes();
      v14 = *(v13 - 8);
      (*(v14 + 104))(v10, v12, v13);
      (*(v14 + 56))(v10, 0, 1, v13);
      SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
      dispatch thunk of SiriKitEventSending.send(_:)();

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 37);
      type metadata accessor for UnsupportedError();
      v15 = swift_allocObject();
      *(v15 + 16) = 0xD000000000000025;
      *(v15 + 24) = 0x80000000000C3900;
      _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_4(&lazy protocol witness table cache variable for type UnsupportedError and conformance UnsupportedError, 255, type metadata accessor for UnsupportedError, &protocol conformance descriptor for UnsupportedError);
      v16 = swift_allocError();
      *v17 = v15;
      (*(*v11 + 128))(v16, 1);
      v18 = v11[3];
      v0[45] = type metadata accessor for TrafficIncident(0);
      v0[46] = &protocol witness table for TrafficIncident;
      __swift_allocate_boxed_opaque_existential_0(v0 + 42);
      swift_storeEnumTagMultiPayload();
      v19 = v11[7];
      v20 = v11[8];
      __swift_project_boxed_opaque_existential_1(v11 + 4, v19);
      v21 = (*(v20 + 80))(v19, v20);
      v0[90] = v21;
      v82 = (*(*v18 + 112) + **(*v18 + 112));
      v22 = swift_task_alloc();
      v0[91] = v22;
      *v22 = v0;
      v22[1] = TrafficIncidentRequestSupportedCheckFlow.execute();
      v23 = v0[75];
      v24 = v0 + 42;
LABEL_12:
      v41 = v21;
LABEL_13:

      return v82(v23, v24, v41);
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((TrafficIncidentRequestSupportedCheckFlow.isAppSupported()() & 1) == 0)
  {
    v44 = v0[82];
    v45 = v0[80];
    v46 = v0[79];
    static SiriKitEventSender.current.getter();
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    (*(v45 + 104))(v44, enum case for ActivityType.failed(_:), v46);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INReportIncidentIntent, INReportIncidentIntent_ptr);
    result = [swift_getObjCClassFromMetadata() typeName];
    if (result)
    {
      v47 = result;
      v48 = v0[78];
      v49 = v0[69];
      type metadata accessor for SiriKitEvent();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v50 = enum case for SiriKitReliabilityCodes.intentNotSupportedByApp(_:);
      v51 = type metadata accessor for SiriKitReliabilityCodes();
      v52 = *(v51 - 8);
      (*(v52 + 104))(v48, v50, v51);
      (*(v52 + 56))(v48, 0, 1, v51);

      SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
      dispatch thunk of SiriKitEventSending.send(_:)();

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
      type metadata accessor for UnsupportedError();
      v53 = swift_allocObject();
      *(v53 + 16) = 0xD000000000000011;
      *(v53 + 24) = 0x80000000000C38C0;
      _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_4(&lazy protocol witness table cache variable for type UnsupportedError and conformance UnsupportedError, 255, type metadata accessor for UnsupportedError, &protocol conformance descriptor for UnsupportedError);
      v54 = swift_allocError();
      *v55 = v53;
      (*(*v49 + 128))(v54, 1);
      v56 = v49[3];
      v0[10] = type metadata accessor for TrafficIncident(0);
      v0[11] = &protocol witness table for TrafficIncident;
      __swift_allocate_boxed_opaque_existential_0(v0 + 7);
      swift_storeEnumTagMultiPayload();
      v57 = v49[7];
      v58 = v49[8];
      __swift_project_boxed_opaque_existential_1(v49 + 4, v57);
      v21 = (*(v58 + 80))(v57, v58);
      v0[95] = v21;
      v82 = (*(*v56 + 112) + **(*v56 + 112));
      v59 = swift_task_alloc();
      v0[96] = v59;
      *v59 = v0;
      v59[1] = TrafficIncidentRequestSupportedCheckFlow.execute();
      v23 = v0[74];
      v24 = v0 + 7;
      goto LABEL_12;
    }

    goto LABEL_27;
  }

  if (((*(*v0[69] + 176))() & 1) == 0)
  {
    v60 = v0[81];
    v61 = v0[80];
    v62 = v0[79];
    static SiriKitEventSender.current.getter();
    __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
    (*(v61 + 104))(v60, enum case for ActivityType.failed(_:), v62);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INReportIncidentIntent, INReportIncidentIntent_ptr);
    result = [swift_getObjCClassFromMetadata() typeName];
    if (result)
    {
      v63 = result;
      v64 = v0[78];
      v65 = v0[69];
      type metadata accessor for SiriKitEvent();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v66 = enum case for SiriKitReliabilityCodes.targetDeviceIncompatible(_:);
      v67 = type metadata accessor for SiriKitReliabilityCodes();
      v68 = *(v67 - 8);
      (*(v68 + 104))(v64, v66, v67);
      (*(v68 + 56))(v64, 0, 1, v67);

      SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
      dispatch thunk of SiriKitEventSending.send(_:)();

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
      type metadata accessor for UnsupportedError();
      v69 = swift_allocObject();
      *(v69 + 16) = 0xD000000000000014;
      *(v69 + 24) = 0x80000000000C38E0;
      _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_4(&lazy protocol witness table cache variable for type UnsupportedError and conformance UnsupportedError, 255, type metadata accessor for UnsupportedError, &protocol conformance descriptor for UnsupportedError);
      v70 = swift_allocError();
      *v71 = v69;
      (*(*v65 + 128))(v70, 1);
      v72 = v65[3];
      v0[25] = type metadata accessor for TrafficIncident(0);
      v0[26] = &protocol witness table for TrafficIncident;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 22);
      v74 = v65[7];
      v75 = v65[8];
      __swift_project_boxed_opaque_existential_1(v65 + 4, v74);
      (*(v75 + 32))(v74, v75);
      v76 = v0[30];
      v77 = v0[31];
      __swift_project_boxed_opaque_existential_1(v0 + 27, v76);
      *boxed_opaque_existential_0 = DeviceState.deviceType.getter(v76, v77);
      swift_storeEnumTagMultiPayload();
      v78 = v65[7];
      v79 = v65[8];
      __swift_project_boxed_opaque_existential_1(v65 + 4, v78);
      v80 = (*(v79 + 80))(v78, v79);
      v0[100] = v80;
      v82 = (*(*v72 + 112) + **(*v72 + 112));
      v81 = swift_task_alloc();
      v0[101] = v81;
      *v81 = v0;
      v81[1] = TrafficIncidentRequestSupportedCheckFlow.execute();
      v23 = v0[73];
      v24 = v0 + 22;
      v41 = v80;
      goto LABEL_13;
    }

LABEL_28:
    __break(1u);
    return result;
  }

  v42 = swift_task_alloc();
  v0[105] = v42;
  *v42 = v0;
  v42[1] = TrafficIncidentRequestSupportedCheckFlow.execute();
  v43 = v0[68];

  return TrafficIncidentRequestSupportedCheckFlow.getPreciseLocation()(v43);
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.execute()()
{
  v2 = *v1;
  *(*v1 + 696) = v0;

  if (v0)
  {
    v3 = TrafficIncidentRequestSupportedCheckFlow.execute();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 456));
    v3 = TrafficIncidentRequestSupportedCheckFlow.execute();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v15 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 552);
  v7 = v6[7];
  v8 = v6[8];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v7);
  (*(v8 + 104))(v14, v7, v8);
  (*(v4 + 16))(v2, v1, v5);
  outlined init with copy of DeviceState((v6 + 4), v0 + 496);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v2, v5);
  outlined init with take of CATType((v0 + 496), v10 + ((v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  *(v0 + 704) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  v11 = swift_task_alloc();
  *(v0 + 712) = v11;
  *v11 = v0;
  v11[1] = TrafficIncidentRequestSupportedCheckFlow.execute();
  v12 = *(v0 + 544);

  return SimpleOutputFlowAsync.execute()(v12);
}

{

  return _swift_task_switch(TrafficIncidentRequestSupportedCheckFlow.execute(), 0, 0);
}

{
  (*(v0[71] + 8))(v0[77], v0[70]);

  v1 = v0[1];

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 736) = v0;

  if (v0)
  {
    v3 = TrafficIncidentRequestSupportedCheckFlow.execute();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 336));
    v3 = TrafficIncidentRequestSupportedCheckFlow.execute();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v15 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 552);
  v7 = v6[7];
  v8 = v6[8];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v7);
  (*(v8 + 104))(v14, v7, v8);
  (*(v4 + 16))(v1, v2, v5);
  outlined init with copy of DeviceState((v6 + 4), v0 + 376);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v1, v5);
  outlined init with take of CATType((v0 + 376), v10 + ((v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  *(v0 + 744) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  v11 = swift_task_alloc();
  *(v0 + 752) = v11;
  *v11 = v0;
  v11[1] = TrafficIncidentRequestSupportedCheckFlow.execute();
  v12 = *(v0 + 544);

  return SimpleOutputFlowAsync.execute()(v12);
}

{

  return _swift_task_switch(TrafficIncidentRequestSupportedCheckFlow.execute(), 0, 0);
}

{
  (*(v0[71] + 8))(v0[75], v0[70]);

  v1 = v0[1];

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 776) = v0;

  if (v0)
  {
    v3 = TrafficIncidentRequestSupportedCheckFlow.execute();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
    v3 = TrafficIncidentRequestSupportedCheckFlow.execute();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v15 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 592);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 552);
  v7 = v6[7];
  v8 = v6[8];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v7);
  (*(v8 + 104))(v14, v7, v8);
  (*(v4 + 16))(v1, v2, v5);
  outlined init with copy of DeviceState((v6 + 4), v0 + 96);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v1, v5);
  outlined init with take of CATType((v0 + 96), v10 + ((v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  *(v0 + 784) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  v11 = swift_task_alloc();
  *(v0 + 792) = v11;
  *v11 = v0;
  v11[1] = TrafficIncidentRequestSupportedCheckFlow.execute();
  v12 = *(v0 + 544);

  return SimpleOutputFlowAsync.execute()(v12);
}

{

  return _swift_task_switch(TrafficIncidentRequestSupportedCheckFlow.execute(), 0, 0);
}

{
  (*(v0[71] + 8))(v0[74], v0[70]);

  v1 = v0[1];

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 816) = v0;

  if (v0)
  {
    v3 = TrafficIncidentRequestSupportedCheckFlow.execute();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 176));
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 216));
    v3 = TrafficIncidentRequestSupportedCheckFlow.execute();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v15 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 552);
  v7 = v6[7];
  v8 = v6[8];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v7);
  (*(v8 + 104))(v14, v7, v8);
  (*(v4 + 16))(v1, v2, v5);
  outlined init with copy of DeviceState((v6 + 4), v0 + 256);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v1, v5);
  outlined init with take of CATType((v0 + 256), v10 + ((v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  *(v0 + 824) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  v11 = swift_task_alloc();
  *(v0 + 832) = v11;
  *v11 = v0;
  v11[1] = TrafficIncidentRequestSupportedCheckFlow.execute();
  v12 = *(v0 + 544);

  return SimpleOutputFlowAsync.execute()(v12);
}

{

  return _swift_task_switch(TrafficIncidentRequestSupportedCheckFlow.execute(), 0, 0);
}

{
  (*(v0[71] + 8))(v0[73], v0[70]);

  v1 = v0[1];

  return v1();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 57);
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v0[67] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  static ExecuteResponse.complete<A>(next:)();

  v1 = v0[1];

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 42);
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v0[67] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  static ExecuteResponse.complete<A>(next:)();

  v1 = v0[1];

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v0[67] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  static ExecuteResponse.complete<A>(next:)();

  v1 = v0[1];

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v0[67] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  static ExecuteResponse.complete<A>(next:)();

  v1 = v0[1];

  return v1();
}

uint64_t closure #3 in TrafficIncidentRequestSupportedCheckFlow.execute()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for App();
  (*(**(a2 + 16) + 192))();
  App.__allocating_init(appIdentifier:)();
  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.app.setter();
  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.statusReasonDescription.setter();
}

uint64_t closure #4 in TrafficIncidentRequestSupportedCheckFlow.execute()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for App();
  (*(**(a2 + 16) + 192))();
  App.__allocating_init(appIdentifier:)();
  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.app.setter();
  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.statusReasonDescription.setter();
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.isDeviceSupported()()
{
  v1 = v0;
  v2 = v0[7];
  v3 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v2);
  (*(v3 + 32))(v18, v2, v3);
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v4 = dispatch thunk of DeviceState.isXRDevice.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = v1[7];
    v7 = v1[8];
    __swift_project_boxed_opaque_existential_1(v1 + 4, v6);
    (*(v7 + 32))(v18, v6, v7);
    __swift_project_boxed_opaque_existential_1(v18, v19);
    if (dispatch thunk of DeviceState.isPhone.getter())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      v5 = 1;
    }

    else
    {
      v8 = v1[7];
      v9 = v1[8];
      __swift_project_boxed_opaque_existential_1(v1 + 4, v8);
      (*(v9 + 32))(v17, v8, v9);
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      v10 = dispatch thunk of DeviceState.isPad.getter();
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      if (v10 & 1) != 0 || (v11 = v1[7], v12 = v1[8], __swift_project_boxed_opaque_existential_1(v1 + 4, v11), (*(v12 + 32))(v18, v11, v12), __swift_project_boxed_opaque_existential_1(v18, v19), v13 = dispatch thunk of DeviceState.isCarPlay.getter(), __swift_destroy_boxed_opaque_existential_0Tm(v18), (v13))
      {
        v5 = 1;
      }

      else
      {
        v14 = v1[7];
        v15 = v1[8];
        __swift_project_boxed_opaque_existential_1(v1 + 4, v14);
        (*(v15 + 32))(v18, v14, v15);
        __swift_project_boxed_opaque_existential_1(v18, v19);
        v5 = dispatch thunk of DeviceState.isPod.getter();
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
      }
    }
  }

  return v5 & 1;
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.getPreciseLocation()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(TrafficIncidentRequestSupportedCheckFlow.getPreciseLocation(), 0, 0);
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.getPreciseLocation()()
{
  v1 = *(*(v0 + 4) + 16);
  v2 = (*(*v1 + 240))();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xE000000000000000;
  }

  v0[2] = 0.0;
  v5 = v0 + 2;
  v6 = specialized String.withCString<A>(_:)(v2, v4, (v0 + 2));

  v8 = v0[2];
  v9 = (*(*v1 + 248))(v7);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  *v5 = 0.0;
  v12 = specialized String.withCString<A>(_:)(v9, v11, (v0 + 2));

  v13 = *(v0 + 4);
  if (v6 && v12)
  {
    v14 = [objc_allocWithZone(CLLocation) initWithLatitude:*v5 longitude:v8];
    v15 = static os_log_type_t.info.getter();
    v16 = v13[9];
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&dword_0, v16, v15, "location from NL intent is: %@", v17, 0xCu);
      outlined destroy of NSObject?(v18);
    }

    v20 = *(**(v0 + 4) + 128);
    v21 = v14;
    v20(v14, 0);
    static ExecuteResponse.complete()();
  }

  else
  {
    (*(*v13 + 128))(0, 2);
    static ExecuteResponse.complete()();
  }

  v22 = *(v0 + 1);

  return v22();
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.isAppSupported()()
{
  v1 = (*(**(v0 + 16) + 192))();
  v3 = v2;
  v4 = static os_log_type_t.info.getter();
  v5 = *(v0 + 72);
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v15[0] = v1;
    v15[1] = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v5, v4, "appName is %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  if (v3)
  {
    v15[0] = 1936744813;
    v15[1] = 0xE400000000000000;
    v13 = v1;
    v14 = v3;
    lazy protocol witness table accessor for type String and conformance String();
    if (StringProtocol.caseInsensitiveCompare<A>(_:)())
    {
      strcpy(v15, "com.apple.Maps");
      HIBYTE(v15[1]) = -18;
      v13 = v1;
      v14 = v3;
      v11 = StringProtocol.caseInsensitiveCompare<A>(_:)();

      if (v11)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  return 1;
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.isReportMapsProblems()()
{
  v1 = (*(**(v0 + 16) + 184))();
  if (v1 < 8)
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_6;
  }

  if (v1 == 8)
  {
    v2 = 1;
LABEL_6:

    return v2 & 1;
  }

  v2 = 0;
  return v2 & 1;
}

uint64_t _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t protocol witness for Flow.execute() in conformance TrafficIncidentRequestSupportedCheckFlow(uint64_t a1)
{
  v6 = (*(**v1 + 168) + **(**v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance TrafficIncidentRequestSupportedCheckFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 120))();
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

uint64_t MockTrafficIncidentRequestSupportedCheckFlow.__allocating_init(intent:flowHelper:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  outlined init with copy of DeviceState(a2, v6);
  TrafficIncidentRequestSupportedCheckFlow.init(intent:flowHelper:)(a1, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v4;
}

uint64_t MockTrafficIncidentRequestSupportedCheckFlow.init(intent:flowHelper:)(uint64_t a1, void *a2)
{
  outlined init with copy of DeviceState(a2, v6);
  TrafficIncidentRequestSupportedCheckFlow.init(intent:flowHelper:)(a1, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v2;
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  outlined consume of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(*(v0 + 80), *(v0 + 88));
  return v0;
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  outlined consume of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(*(v0 + 80), *(v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_A61C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_A6210(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);
  v4 = *(a1 + 8);
  outlined copy of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(*a1, v4);
  return v3(v2, v4);
}

uint64_t get_enum_tag_for_layout_string_21GeoFlowDelegatePlugin036TrafficIncidentRequestSupportedCheckB0C0gH9ExitValueO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

BOOL specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *(&stru_20.cmd + (a2 & 0xFFFFFFFFFFFFFFFLL));
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

_BYTE *partial apply for closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t DeviceState.deviceType.getter(uint64_t a1, uint64_t a2)
{
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    return 1;
  }

  if (dispatch thunk of DeviceState.isMac.getter())
  {
    return 2;
  }

  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    return 3;
  }

  return 0;
}

uint64_t TemplatingResult.getDialogAsSummaryOutput(nlContext:deviceState:)@<X0>(uint64_t *a3@<X8>)
{
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(0);
  memset(v5, 0, sizeof(v5));
  v6 = 0;
  a3[3] = type metadata accessor for AceOutput();
  a3[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_0(a3);
  static AceOutputHelper.makeSummaryViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  return outlined destroy of Mirror.DisplayStyle?(v5, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
}

uint64_t TemplatingResult.getDialogAsSimpleOutputFlow(_:)(void *a1)
{
  v3 = type metadata accessor for TemplatingResult();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 104))(v12, v6, v7);
  (*(v4 + 16))(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3);
  outlined init with copy of DeviceState(a1, v11);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  outlined init with take of CATType(v11, v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  return SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
}

uint64_t closure #1 in TemplatingResult.getDialogAsSimpleOutputFlow(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(closure #1 in TemplatingResult.getDialogAsSimpleOutputFlow(_:), 0, 0);
}

uint64_t closure #1 in TemplatingResult.getDialogAsSimpleOutputFlow(_:)()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = type metadata accessor for NLContextUpdate();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  (*(v6 + 32))(v5, v6);
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(0);
  v7 = type metadata accessor for AceOutput();
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v3[3] = v7;
  v3[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_0(v3);
  static AceOutputHelper.makeSummaryViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Mirror.DisplayStyle?(v0 + 56, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  outlined destroy of Mirror.DisplayStyle?(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_A69EC()
{
  v1 = type metadata accessor for TemplatingResult();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5));

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t static UsoRequest.makeSDAForPromptForContactValue()()
{
  v0 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v8 - v4;
  type metadata accessor for UsoTaskBuilder_noVerb_common_Person();
  swift_allocObject();
  v6 = UsoTaskBuilder_noVerb_common_Person.init()();
  type metadata accessor for UsoEntityBuilder_common_Person();
  swift_allocObject();
  UsoEntityBuilder_common_Person.init()();
  dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();
  static Siri_Nlu_External_SystemPrompted.from(_:)(v6, v5);
  Siri_Nlu_External_SystemDialogAct.init()();
  (*(v1 + 16))(v3, v5, v0);
  Siri_Nlu_External_SystemDialogAct.prompted.setter();

  return (*(v1 + 8))(v5, v0);
}

uint64_t outlined init with copy of Siri_Nlu_External_UsoGraph?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static UsoRequest.makeSDAForYesNoCancel()@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v20 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v1 = *(v20 - 8);
  __chkstk_darwin();
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v18 - v4;
  __chkstk_darwin();
  v7 = &v18 - v6;
  type metadata accessor for Siri_Nlu_External_UserCancelled();
  __chkstk_darwin();
  type metadata accessor for Siri_Nlu_External_UserAccepted();
  __chkstk_darwin();
  v8 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v19 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v18 - v12;
  Siri_Nlu_External_UserDialogAct.init()();
  Siri_Nlu_External_UserAccepted.init()();
  Siri_Nlu_External_UserDialogAct.accepted.setter();
  Siri_Nlu_External_UserCancelled.init()();
  Siri_Nlu_External_UserDialogAct.cancelled.setter();
  Siri_Nlu_External_SystemOffered.init()();
  (*(v9 + 16))(v11, v13, v8);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  v14 = *(v1 + 16);
  v15 = v20;
  v14(v5, v7, v20);
  Siri_Nlu_External_SystemDialogAct.init()();
  v14(v3, v5, v15);
  Siri_Nlu_External_SystemDialogAct.offered.setter();
  v16 = *(v1 + 8);
  v16(v5, v15);
  v16(v7, v15);
  return (*(v9 + 8))(v13, v19);
}

uint64_t Siri_Nlu_External_UserDialogAct.init(_:)(uint64_t a1)
{
  return Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(a1, &type metadata accessor for Siri_Nlu_External_UserStatedTask, &Siri_Nlu_External_UserDialogAct.init(), &Siri_Nlu_External_UserDialogAct.userStatedTask.setter);
}

{
  return Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(a1, &type metadata accessor for Siri_Nlu_External_UserWantedToProceed, &Siri_Nlu_External_UserDialogAct.init(), &Siri_Nlu_External_UserDialogAct.wantedToProceed.setter);
}

uint64_t Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t), void (*a4)(char *))
{
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - v10;
  a3(v9);
  (*(v8 + 16))(v11, a1, v7);
  a4(v11);
  return (*(v8 + 8))(a1, v7);
}

uint64_t static Siri_Nlu_External_UserDialogAct.from(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v9 - v6;
  static Siri_Nlu_External_UserStatedTask.from(_:)(a1, &v9 - v6);
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v3 + 16))(v5, v7, v2);
  Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
  return (*(v3 + 8))(v7, v2);
}

uint64_t static Siri_Nlu_External_UserStatedTask.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v19 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v19 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  __chkstk_darwin();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v19 - v9;
  __chkstk_darwin();
  v12 = &v19 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  __chkstk_darwin();
  v14 = &v19 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_B8FB0;
  *(v15 + 32) = a1;
  v16 = type metadata accessor for UsoBuilderOptions();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);

  static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of Mirror.DisplayStyle?(v14, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  (*(v4 + 56))(v12, 0, 1, v3);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v12, v10);
  Siri_Nlu_External_UserStatedTask.init()();
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v10, v8);
  if ((*(v4 + 48))(v8, 1, v3) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v10, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    outlined destroy of Mirror.DisplayStyle?(v8, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  }

  else
  {
    v17 = v20;
    (*(v4 + 32))(v20, v8, v3);
    (*(v4 + 16))(v19, v17, v3);
    Siri_Nlu_External_UserStatedTask.task.setter();
    outlined destroy of Mirror.DisplayStyle?(v10, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    (*(v4 + 8))(v17, v3);
  }

  return outlined destroy of Mirror.DisplayStyle?(v12, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
}

uint64_t static Siri_Nlu_External_UserDialogAct.from(_:)@<X0>(uint64_t a2@<X8>)
{
  v27 = a2;
  v2 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v23 - v5;
  v6 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v26 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v23 - v9;
  __chkstk_darwin();
  v12 = &v23 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  __chkstk_darwin();
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v23 - v15;
  __chkstk_darwin();
  v18 = &v23 - v17;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  (*(v3 + 56))(v18, 0, 1, v2);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v18, v16);
  Siri_Nlu_External_UserStatedTask.init()();
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v16, v14);
  if ((*(v3 + 48))(v14, 1, v2) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v16, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    outlined destroy of Mirror.DisplayStyle?(v14, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  }

  else
  {
    v19 = v25;
    (*(v3 + 32))(v25, v14, v2);
    (*(v3 + 16))(v24, v19, v2);
    Siri_Nlu_External_UserStatedTask.task.setter();
    outlined destroy of Mirror.DisplayStyle?(v16, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    (*(v3 + 8))(v19, v2);
  }

  v20 = *(v7 + 16);
  v20(v10, v12, v6);
  Siri_Nlu_External_UserDialogAct.init()();
  v20(v26, v10, v6);
  Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
  v21 = *(v7 + 8);
  v21(v10, v6);
  v21(v12, v6);
  return outlined destroy of Mirror.DisplayStyle?(v18, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
}

uint64_t Siri_Nlu_External_UserStatedTask.init(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  __chkstk_darwin();
  v3 = &v11 - v2;
  v4 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v11 - v8;
  Siri_Nlu_External_UserStatedTask.init()();
  outlined init with copy of Siri_Nlu_External_UsoGraph?(a1, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(a1, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    return outlined destroy of Mirror.DisplayStyle?(v3, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  }

  else
  {
    (*(v5 + 32))(v9, v3, v4);
    (*(v5 + 16))(v7, v9, v4);
    Siri_Nlu_External_UserStatedTask.task.setter();
    outlined destroy of Mirror.DisplayStyle?(a1, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    return (*(v5 + 8))(v9, v4);
  }
}

unint64_t Siri_Nlu_External_UserDialogAct.usoTask.getter()
{
  result = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (result >> 62)
  {
    v2 = result;
    v3 = _CocoaArrayWrapper.endIndex.getter();
    result = v2;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    v1 = *(result + 32);

LABEL_6:

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.contactId.getter()
{
  v30 = type metadata accessor for Google_Protobuf_StringValue();
  v28 = *(v30 - 8);
  __chkstk_darwin();
  v1 = &v28 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v2 = *(v33 - 8);
  __chkstk_darwin();
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
  __chkstk_darwin();
  v29 = &v28 - v13;
  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v10 + 8))(v12, v9);
  v14 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  result = (*(v6 + 8))(v8, v5);
  v31 = *(v14 + 16);
  if (v31)
  {
    v16 = 0;
    v32 = v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v17 = (v28 + 8);
    v18 = v33;
    while (1)
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v2 + 16))(v4, v32 + *(v2 + 72) * v16, v18);
      if (Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter() == 0x73746361746E6F43 && v20 == 0xE800000000000000)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
      v22 = Google_Protobuf_StringValue.value.getter();
      v24 = v23;
      (*v17)(v1, v30);
      if (v22 == 0x64695F6D657469 && v24 == 0xE700000000000000)
      {

LABEL_16:

        v26 = v29;
        v18 = v33;
        (*(v2 + 32))(v29, v4, v33);
        v25 = 0;
        goto LABEL_17;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_16;
      }

LABEL_4:
      ++v16;
      v18 = v33;
      result = (*(v2 + 8))(v4, v33);
      if (v31 == v16)
      {

        v25 = 1;
        goto LABEL_15;
      }
    }
  }

  v25 = 1;
  v18 = v33;
LABEL_15:
  v26 = v29;
LABEL_17:
  (*(v2 + 56))(v26, v25, 1, v18);
  if ((*(v2 + 48))(v26, 1, v18) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v26, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
    return 0;
  }

  else
  {
    v27 = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
    (*(v2 + 8))(v26, v18);
    return v27;
  }
}

uint64_t UsoIdentifierAppBundle.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x73746361746E6F43;
  }
}

uint64_t UsoIdentifierNamespace.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x64695F6D657469;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x6369746E616D6573;
}

uint64_t static Siri_Nlu_External_SystemPrompted.from(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v26 = a2;
  v27 = a4;
  v5 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v24 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v23 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  __chkstk_darwin();
  v11 = &v23 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  __chkstk_darwin();
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v23 - v14;
  __chkstk_darwin();
  v17 = &v23 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_B8FB0;
  *(v18 + 32) = a1;
  v19 = type metadata accessor for UsoBuilderOptions();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);

  static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of Mirror.DisplayStyle?(v11, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();

  (*(v6 + 56))(v17, 0, 1, v5);
  v20 = outlined init with copy of Siri_Nlu_External_UsoGraph?(v17, v15);
  v26(v20);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v15, v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v15, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    outlined destroy of Mirror.DisplayStyle?(v13, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    v21 = v24;
    (*(v6 + 16))(v24, v9, v5);
    v25(v21);
    outlined destroy of Mirror.DisplayStyle?(v15, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    (*(v6 + 8))(v9, v5);
  }

  return outlined destroy of Mirror.DisplayStyle?(v17, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
}

uint64_t static Siri_Nlu_External_SystemOffered.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[0] = a1;
  v16[1] = a2;
  v2 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v16 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v16 - v12;
  v14 = *(v3 + 16);
  v14(v7, v16[0], v2);
  Siri_Nlu_External_UserDialogAct.init()();
  v14(v5, v7, v2);
  Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
  (*(v3 + 8))(v7, v2);
  Siri_Nlu_External_SystemOffered.init()();
  (*(v9 + 16))(v11, v13, v8);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  return (*(v9 + 8))(v13, v8);
}

GeoFlowDelegatePlugin::UsoIdentifierAppBundle_optional __swiftcall UsoIdentifierAppBundle.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierAppBundle.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = GeoFlowDelegatePlugin_UsoIdentifierAppBundle_siriNL;
  }

  else
  {
    v4.value = GeoFlowDelegatePlugin_UsoIdentifierAppBundle_unknownDefault;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UsoIdentifierAppBundle(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0x73746361746E6F43;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x80000000000BFD40;
  }

  if (*a2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x73746361746E6F43;
  }

  if (*a2)
  {
    v6 = 0x80000000000BFD40;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UsoIdentifierAppBundle()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UsoIdentifierAppBundle(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UsoIdentifierAppBundle(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UsoIdentifierAppBundle@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierAppBundle.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance UsoIdentifierAppBundle(unint64_t *a1@<X8>)
{
  v2 = 0x80000000000BFD40;
  v3 = 0x73746361746E6F43;
  if (*v1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UsoIdentifierNamespace(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x80000000000BFD60;
  if (v2 == 1)
  {
    v5 = 0x80000000000BFD60;
  }

  else
  {
    v3 = 0x6369746E616D6573;
    v5 = 0xEE0065756C61765FLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x64695F6D657469;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 0x6369746E616D6573;
    v4 = 0xEE0065756C61765FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64695F6D657469;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UsoIdentifierNamespace()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UsoIdentifierNamespace(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UsoIdentifierNamespace(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UsoIdentifierNamespace@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized UsoIdentifierNamespace.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance UsoIdentifierNamespace(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x80000000000BFD60;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0x6369746E616D6573;
    v4 = 0xEE0065756C61765FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64695F6D657469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t specialized UsoIdentifierNamespace.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierNamespace.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type UsoIdentifierAppBundle and conformance UsoIdentifierAppBundle()
{
  result = lazy protocol witness table cache variable for type UsoIdentifierAppBundle and conformance UsoIdentifierAppBundle;
  if (!lazy protocol witness table cache variable for type UsoIdentifierAppBundle and conformance UsoIdentifierAppBundle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoIdentifierAppBundle and conformance UsoIdentifierAppBundle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace()
{
  result = lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace;
  if (!lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace);
  }

  return result;
}

uint64_t SaveParkingHandleIntentStrategy.__allocating_init(with:isPommes:)(__int128 *a1, char a2)
{
  v4 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v4 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v4 + 24);
  *(v4 + 64) = a2;
  return v4;
}

uint64_t SaveParkingHandleIntentStrategy.init(with:isPommes:)(__int128 *a1, char a2)
{
  type metadata accessor for OS_os_log();
  *(v2 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v2 + 24);
  *(v2 + 64) = a2;
  return v2;
}

uint64_t SaveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  return _swift_task_switch(SaveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:), 0, 0);
}

uint64_t SaveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo021INSaveParkingLocationD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo021INSaveParkingLocationD0CSo0ghiD8ResponseCGMR);
  v1 = IntentResolutionRecord.intentResponse.getter();
  v2 = [v1 parkingLocation];
  *(v0 + 240) = v2;

  if (v2)
  {
    v3 = [v2 location];
    *(v0 + 248) = v3;
    if (v3)
    {
      v4 = CLLocation.makeDialogLocation()();
      *(v0 + 256) = v4;
      v5 = IntentResolutionRecord.intentResponse.getter();
      v6 = [v5 parkingNote];

      if (v6)
      {
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;
      }

      else
      {
        v7 = 0;
        v9 = 0xE000000000000000;
      }

      *(v0 + 264) = v9;
      v15 = (*(**(v0 + 232) + 112))();
      *(v0 + 272) = v15;
      *(v0 + 120) = &type metadata for SaveParkingLocation;
      *(v0 + 128) = &protocol witness table for SaveParkingLocation;
      *(v0 + 96) = v4;
      *(v0 + 104) = v7;
      *(v0 + 112) = v9;

      v16 = IntentResolutionRecord.intentResponse.getter();
      v17 = [v16 parkingNote];

      if (v17)
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      *(v0 + 280) = v20;
      v23 = (*(*v15 + 112) + **(*v15 + 112));
      v21 = swift_task_alloc();
      *(v0 + 288) = v21;
      *v21 = v0;
      v21[1] = SaveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);

      return v23(v0 + 56, v0 + 96, v2, v18, v20);
    }

    v22 = (*(**(v0 + 232) + 128) + **(**(v0 + 232) + 128));
    v10 = swift_task_alloc();
    *(v0 + 312) = v10;
    *v10 = v0;
    v11 = RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {
    v22 = (*(**(v0 + 232) + 128) + **(**(v0 + 232) + 128));
    v10 = swift_task_alloc();
    *(v0 + 328) = v10;
    *v10 = v0;
    v11 = RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  v10[1] = v11;
  v12 = *(v0 + 224);
  v13 = *(v0 + 216);

  return v22(v13, v12);
}

{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 96));

  return _swift_task_switch(SaveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:), 0, 0);
}

{
  v22 = v0;
  v1 = *(v0 + 232);
  v2 = (v0 + 56);
  if (*(v0 + 80))
  {
    outlined init with take of CATType(v2, v0 + 16);
    v3 = static os_log_type_t.default.getter();
    v4 = v1[2];
    outlined init with copy of DeviceState(v0 + 16, v0 + 136);
    v5 = os_log_type_enabled(v4, v3);
    v6 = *(v0 + 240);
    v7 = *(v0 + 248);
    if (v5)
    {
      v19 = *(v0 + 240);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136315138;
      outlined init with copy of DeviceState(v0 + 136, v0 + 176);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
      v10 = String.init<A>(describing:)();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v21);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_0, v4, v3, "buildRFoutput: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
    }

    outlined init with take of CATType((v0 + 16), *(v0 + 216));
    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    outlined destroy of Output?(v2);
    v20 = (*(*v1 + 128) + **(*v1 + 128));
    v14 = swift_task_alloc();
    *(v0 + 296) = v14;
    *v14 = v0;
    v14[1] = RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
    v15 = *(v0 + 224);
    v16 = *(v0 + 216);

    return v20(v16, v15);
  }
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance SaveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SaveParkingHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance SaveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SaveParkingHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance SaveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SaveParkingHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance SaveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 120) + **(**v2 + 120));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance SaveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SaveParkingHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance SaveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SaveParkingHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance SaveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 128) + **(**v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance SaveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SaveParkingHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentHandleIntentStrategy;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v9, a4);
}

unint64_t lazy protocol witness table accessor for type SaveParkingHandleIntentStrategy and conformance SaveParkingHandleIntentStrategy()
{
  result = lazy protocol witness table cache variable for type SaveParkingHandleIntentStrategy and conformance SaveParkingHandleIntentStrategy;
  if (!lazy protocol witness table cache variable for type SaveParkingHandleIntentStrategy and conformance SaveParkingHandleIntentStrategy)
  {
    type metadata accessor for SaveParkingHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SaveParkingHandleIntentStrategy and conformance SaveParkingHandleIntentStrategy);
  }

  return result;
}

uint64_t ShareETAContactConfirmationStrategy.__allocating_init(isPOMMES:isUSO:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = swift_allocObject();
  ShareETAContactConfirmationStrategy.init(isPOMMES:isUSO:)(v3, v2);
  return v4;
}

uint64_t ShareETAContactConfirmationStrategy.isPOMMES.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t ShareETAContactConfirmationStrategy.isUSO.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 25) = a1;
  return result;
}

uint64_t ShareETAContactConfirmationStrategy.init(isPOMMES:isUSO:)(char a1, char a2)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  v5 = OS_os_log.init(subsystem:category:)();
  *(v2 + 24) = 0;
  *(v2 + 16) = v5;
  type metadata accessor for CATService();
  v6 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v6 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v6 + 32) = OS_os_log.init(subsystem:category:)();
  *(v6 + 16) = 0;
  *(v2 + 32) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_B7D60;
  if (one-time initialization token for confirmationNode != -1)
  {
    swift_once();
  }

  *(v8 + 32) = specialized OntologyNode.javaClassName.getter();
  *(v8 + 40) = v9;
  type metadata accessor for AddressOntologyNode.OccupantNode();
  swift_allocObject();
  AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
  v10 = specialized OntologyNode.javaClassName.getter();
  v12 = v11;

  *(v8 + 48) = v10;
  *(v8 + 56) = v12;
  static AddressOntologyNode.OccupantNode.occupantFullNameNode.getter();
  v13 = specialized OntologyNode.javaClassName.getter();
  v15 = v14;

  *(v8 + 64) = v13;
  *(v8 + 72) = v15;
  *(v2 + 40) = v8;
  swift_beginAccess();
  *(v2 + 24) = a1 & 1;
  swift_beginAccess();
  *(v2 + 25) = a2 & 1;
  return v2;
}

uint64_t ShareETAContactConfirmationStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Parse();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v11 = static os_log_type_t.info.getter();
    os_log(_:dso:log:_:_:)(v11, &dword_0, v2[2], "SiriGeo received supported parse type: NLv3IntentOnly.", 54, 2, &_swiftEmptyArrayStorage);
  }

  else
  {
    if (v10 == enum case for Parse.pommesResponse(_:))
    {
      (*(v7 + 8))(v9, v6);
      v12 = static os_log_type_t.info.getter();
      os_log(_:dso:log:_:_:)(v12, &dword_0, v2[2], "SiriGeo received supported parse type: pommesResponse.", 54, 2, &_swiftEmptyArrayStorage);
      (*(*v2 + 128))(1);
      return ShareETAContactConfirmationStrategy.confirmationHandle(input:)(a1, a2);
    }

    v14 = enum case for Parse.uso(_:);
    v15 = v10;
    v16 = static os_log_type_t.info.getter();
    v17 = v3[2];
    if (v15 != v14)
    {
      os_log(_:dso:log:_:_:)(v16, &dword_0, v17, "SiriGeo received unsupported parse type.", 40, 2, &_swiftEmptyArrayStorage);
      static ActionForInput.ignore()();
      return (*(v7 + 8))(v9, v6);
    }

    os_log(_:dso:log:_:_:)(v16, &dword_0, v17, "SiriGeo received supported parse type: USO.", 43, 2, &_swiftEmptyArrayStorage);
    (*(*v3 + 152))(1);
  }

  (*(v7 + 8))(v9, v6);
  return ShareETAContactConfirmationStrategy.confirmationHandle(input:)(a1, a2);
}