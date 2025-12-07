uint64_t type metadata accessor for AddCallParticipantFlow(uint64_t a1)
{
  result = type metadata singleton initialization cache for AddCallParticipantFlow;
  if (!type metadata singleton initialization cache for AddCallParticipantFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AddCallParticipantRCHFlow and conformance PhoneIntentRCHFlow<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AddCallParticipantHandleIntentFlowStrategy.__allocating_init(sharedGlobals:cats:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  outlined init with take of PhoneCallFeatureFlagProviding(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t AddCallParticipantHandleIntentFlowStrategy.init(sharedGlobals:cats:)(__int128 *a1, uint64_t a2)
{
  outlined init with take of PhoneCallFeatureFlagProviding(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t AddCallParticipantGuardFlowFactory.makeGuardFlow()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_68_0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_427BB0;
  *(v1 + 32) = (*(*v0 + 112))();
  *(v1 + 40) = (*(*v0 + 120))();
  type metadata accessor for GuardFlow();
  swift_allocObject();
  OUTLINED_FUNCTION_40_0();
  return GuardFlow.init(preconditionFlows:)();
}

__int128 *AddCallParticipantGuardFlowFactory.makeUnsupportedFeatureGuardFlow()()
{
  v1 = type metadata accessor for CATOption();
  __chkstk_darwin(v1 - 8);
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = (*(v3 + 56))(v2, v3);
  LOBYTE(v2) = (*(*v4 + 136))(v4);

  outlined init with copy of SignalProviding((v0 + 2), v7);
  type metadata accessor for UnsupportedFlowCATsSimple(0);
  static CATOption.defaultMode.getter();
  v5 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for UnsupportedFeatureGuardFlow();
  swift_allocObject();
  *&v7[0] = UnsupportedFeatureGuardFlow.init(check:sharedGlobals:unsupportedFlowCATsSimple:)(v2 & 1, v7, v5);
  lazy protocol witness table accessor for type UnsupportedFeatureGuardFlow and conformance UnsupportedFeatureGuardFlow(&lazy protocol witness table cache variable for type UnsupportedFeatureGuardFlow and conformance UnsupportedFeatureGuardFlow, type metadata accessor for UnsupportedFeatureGuardFlow, &protocol conformance descriptor for UnsupportedFeatureGuardFlow);
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_40_0();

  return v7;
}

uint64_t AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0E15StateGuardCheckVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0E15StateGuardCheckVGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_427BC0;
  OUTLINED_FUNCTION_5_13();
  v3 = swift_allocObject();
  *(v3 + 16) = closure #1 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  OUTLINED_FUNCTION_50();
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for implicit closure #2 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();
  *(v4 + 24) = v1;
  OUTLINED_FUNCTION_68_0();
  v5 = swift_allocObject();
  v5[2] = specialized implicit closure #3 in CallStateGuardCheck.init(_:description:onFail:);
  v5[3] = 0;
  v5[4] = partial apply for implicit closure #4 in CallStateGuardCheck.init(_:description:onFail:);
  v5[5] = v4;
  *(v2 + 32) = partial apply for implicit closure #2 in implicit closure #1 in CallStateGuardCheck.init(_:description:onFail:);
  *(v2 + 40) = v3;
  *(v2 + 48) = partial apply for closure #1 in CallStateGuardCheck.init(_:description:onFail:);
  *(v2 + 56) = v5;
  OUTLINED_FUNCTION_5_13();
  v6 = swift_allocObject();
  *(v6 + 16) = swift_getKeyPath();
  *(v6 + 24) = 0;
  *(v6 + 32) = 2;
  OUTLINED_FUNCTION_5_13();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  *(v7 + 32) = 3;
  OUTLINED_FUNCTION_5_13();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = 0;
  *(v8 + 32) = 3;
  OUTLINED_FUNCTION_50();
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for implicit closure #5 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();
  *(v9 + 24) = v1;
  OUTLINED_FUNCTION_68_0();
  v10 = swift_allocObject();
  v10[2] = partial apply for implicit closure #3 in CallStateGuardCheck.init(_:onFail:);
  v10[3] = v8;
  v10[4] = partial apply for implicit closure #4 in CallStateGuardCheck.init(_:description:onFail:);
  v10[5] = v9;
  *(v2 + 64) = partial apply for implicit closure #2 in implicit closure #1 in CallStateGuardCheck.init(_:description:onFail:);
  *(v2 + 72) = v7;
  *(v2 + 80) = closure #1 in CallStateGuardCheck.init(_:description:onFail:)partial apply;
  *(v2 + 88) = v10;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5_13();
  v12 = swift_allocObject();
  *(v12 + 16) = KeyPath;
  *(v12 + 24) = 0;
  *(v12 + 32) = 2;
  OUTLINED_FUNCTION_5_13();
  v13 = swift_allocObject();
  *(v13 + 16) = KeyPath;
  *(v13 + 24) = 0;
  *(v13 + 32) = 2;
  OUTLINED_FUNCTION_50();
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for implicit closure #8 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();
  *(v14 + 24) = v1;
  OUTLINED_FUNCTION_68_0();
  v15 = swift_allocObject();
  v15[2] = implicit closure #3 in CallStateGuardCheck.init(_:onFail:)partial apply;
  v15[3] = v13;
  v15[4] = implicit closure #4 in CallStateGuardCheck.init(_:onFail:)partial apply;
  v15[5] = v14;
  *(v2 + 96) = implicit closure #2 in implicit closure #1 in CallStateGuardCheck.init(_:onFail:)partial apply;
  *(v2 + 104) = v12;
  *(v2 + 112) = closure #1 in CallStateGuardCheck.init(_:description:onFail:)partial apply;
  *(v2 + 120) = v15;
  OUTLINED_FUNCTION_5_13();
  v16 = swift_allocObject();
  *(v16 + 16) = closure #2 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();
  *(v16 + 24) = 0;
  *(v16 + 32) = 1;
  OUTLINED_FUNCTION_50();
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for implicit closure #10 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();
  *(v17 + 24) = v1;
  OUTLINED_FUNCTION_68_0();
  v18 = swift_allocObject();
  v18[2] = specialized implicit closure #3 in CallStateGuardCheck.init(_:description:onFail:);
  v18[3] = 0;
  v18[4] = implicit closure #4 in CallStateGuardCheck.init(_:onFail:)partial apply;
  v18[5] = v17;
  *(v2 + 128) = implicit closure #2 in implicit closure #1 in CallStateGuardCheck.init(_:onFail:)partial apply;
  *(v2 + 136) = v16;
  *(v2 + 144) = closure #1 in CallStateGuardCheck.init(_:description:onFail:)partial apply;
  *(v2 + 152) = v18;
  OUTLINED_FUNCTION_5_13();
  v19 = swift_allocObject();
  *(v19 + 16) = closure #3 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();
  *(v19 + 24) = 0;
  *(v19 + 32) = 1;
  OUTLINED_FUNCTION_5_13();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = 0;
  *(v20 + 32) = 3;
  OUTLINED_FUNCTION_50();
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for implicit closure #14 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();
  *(v21 + 24) = v1;
  OUTLINED_FUNCTION_68_0();
  v22 = swift_allocObject();
  v22[2] = specialized implicit closure #3 in CallStateGuardCheck.init(_:description:onFail:);
  v22[3] = 0;
  v22[4] = implicit closure #4 in CallStateGuardCheck.init(_:onFail:)partial apply;
  v22[5] = v21;
  *(v2 + 160) = implicit closure #2 in implicit closure #1 in CallStateGuardCheck.init(_:onFail:)partial apply;
  *(v2 + 168) = v20;
  *(v2 + 176) = closure #1 in CallStateGuardCheck.init(_:description:onFail:)partial apply;
  *(v2 + 184) = v22;
  OUTLINED_FUNCTION_5_13();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_426250;
  *(v23 + 32) = 0;
  OUTLINED_FUNCTION_5_13();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_426250;
  *(v24 + 32) = 0;
  OUTLINED_FUNCTION_50();
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #15 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();
  *(v25 + 24) = v1;
  OUTLINED_FUNCTION_68_0();
  v26 = swift_allocObject();
  v26[2] = implicit closure #3 in CallStateGuardCheck.init(_:onFail:)partial apply;
  v26[3] = v24;
  v26[4] = implicit closure #4 in CallStateGuardCheck.init(_:onFail:)partial apply;
  v26[5] = v25;
  *(v2 + 192) = implicit closure #2 in implicit closure #1 in CallStateGuardCheck.init(_:onFail:)partial apply;
  *(v2 + 200) = v23;
  *(v2 + 208) = closure #1 in CallStateGuardCheck.init(_:description:onFail:)partial apply;
  *(v2 + 216) = v26;
  swift_retain_n();
  outlined init with copy of SignalProviding(v1 + 16, v29);
  type metadata accessor for CallStateGuardFlow();
  swift_allocObject();
  *&v29[0] = CallStateGuardFlow.init(checks:sharedGlobals:)(v2, v29);
  lazy protocol witness table accessor for type UnsupportedFeatureGuardFlow and conformance UnsupportedFeatureGuardFlow(&lazy protocol witness table cache variable for type CallStateGuardFlow and conformance CallStateGuardFlow, type metadata accessor for CallStateGuardFlow, &protocol conformance descriptor for CallStateGuardFlow);
  swift_retain_n();

  v27 = Flow.eraseToAnyValueFlow()();

  return v27;
}

uint64_t implicit closure #4 in implicit closure #3 in implicit closure #2 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = implicit closure #4 in implicit closure #3 in implicit closure #2 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();

  return AddCallParticipantGuardFlowFactory.makeNoTargetCallDialog()();
}

{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  OUTLINED_FUNCTION_17_5();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t key path getter for SPHCallCapabilities.isGreenTea : SPHCallCapabilities@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 32))(v3, v4);
  *a2 = result & 1;
  return result;
}

uint64_t implicit closure #7 in implicit closure #6 in implicit closure #5 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = implicit closure #7 in implicit closure #6 in implicit closure #5 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();

  return AddCallParticipantGuardFlowFactory.makeRestrictedByRegionDialog()();
}

uint64_t key path getter for SPHCallCapabilities.isAddPersonEnabled : SPHCallCapabilities@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result & 1;
  return result;
}

BOOL closure #2 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = (*(a2 + 56))(ObjectType, a2);
  v5 = specialized Set.count.getter(v4);

  return v5 < (*(a2 + 72))(ObjectType, a2);
}

void *implicit closure #2 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()(uint64_t a1)
{

  v1 = OUTLINED_FUNCTION_19_0();
  v3 = AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:)(v1, v2);

  return v3;
}

uint64_t implicit closure #12 in implicit closure #11 in implicit closure #10 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = implicit closure #7 in implicit closure #6 in implicit closure #5 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();

  return AddCallParticipantGuardFlowFactory.makeMaxParticipantsReachedDialog()();
}

uint64_t closure #3 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  SPHCall.isFTAudioCallOnHold.getter(ObjectType, a2);
  return v4 & 1;
}

void *implicit closure #8 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  OUTLINED_FUNCTION_50();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 20) = a4;
  *(v9 + 24) = a1;

  v10 = AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:)(a5, v9);

  return v10;
}

void *implicit closure #15 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v2);
  (*(v3 + 120))(v14, v2, v3);
  v4 = v15;
  v5 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v7 = (*(v5 + 24))(v4, v5);
  if (v7)
  {
    v8 = v6;
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 16))(ObjectType, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 20) = v7 == 0;
  *(v11 + 24) = a1;

  v12 = AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:)(&async function pointer to partial apply for closure #1 in AddCallParticipantGuardFlowFactory.makeAddRestricted(_:), v11);

  return v12;
}

void *AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2[5];
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v6);
  (*(v7 + 16))(v16, v6, v7);
  v8 = v17;
  v9 = v18;
  v10 = __swift_project_boxed_opaque_existential_1(v16, v17);
  v15[3] = v8;
  v15[4] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v3;
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();

  v13 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1(v16);
  v16[0] = v13;
  Flow.eraseToAnyFlow()();
  OUTLINED_FUNCTION_40_0();

  return v16;
}

uint64_t closure #1 in AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  type metadata accessor for DialogPhase();
  v4[11] = swift_task_alloc();
  v5 = type metadata accessor for OutputGenerationManifest();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(closure #1 in AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:), 0, 0);
}

uint64_t closure #1 in AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v2 = swift_allocObject();
  v0[15] = v2;
  *(v2 + 16) = xmmword_426260;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = closure #1 in AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:);

  return v5();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_13_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 136) = v0;

  if (!v0)
  {
    *(v4 + 144) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  v1 = v0[10];
  *(v0[15] + 32) = v0[18];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  (*(v3 + 136))(v2, v3);
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  static DialogPhase.error.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v6 = *(v5 + 8);
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = closure #1 in AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:);
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[7];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v13, v11, v12, v4, v6, v7, v8, v9);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v2 = v1[14];
  v3 = v1[13];
  v4 = v1[12];
  v5 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(closure #1 in AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:), 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_11();

  return v1();
}

{
  OUTLINED_FUNCTION_15();
  *(*(v0 + 120) + 16) = 0;

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t AddCallParticipantGuardFlowFactory.makeNoTargetCallDialog()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_0();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_1();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_12_4(v2);

  return v4();
}

{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  OUTLINED_FUNCTION_17_5();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t AddCallParticipantGuardFlowFactory.makeRestrictedByRegionDialog()()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v0;
  v2 = type metadata accessor for Locale.Region();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(AddCallParticipantGuardFlowFactory.makeRestrictedByRegionDialog(), 0, 0);
}

{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  type metadata accessor for DialogLocationAddress.Builder();
  swift_allocObject();
  DialogLocationAddress.Builder.init()();
  Locale.Region.init(stringLiteral:)();
  Locale.Region.identifier.getter();
  (*(v4 + 8))(v2, v3);
  String.toSpeakableString.getter();

  v6 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v6);
  dispatch thunk of DialogLocationAddress.Builder.withCountryCode(_:)();

  outlined destroy of SpeakableString?(v1);
  v0[7] = dispatch thunk of DialogLocationAddress.Builder.build()();

  v7 = *(**(v5 + 56) + class metadata base offset for AddCallParticipantCATsSimple + 80);

  v11 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_2_17(v8);

  return v11(v9);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_13_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {

    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_17_5();
  v2 = *(v0 + 80);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t AddCallParticipantGuardFlowFactory.makeMaxParticipantsReachedDialog()()
{
  *(v1 + 56) = v0;
  return OUTLINED_FUNCTION_0_0();
}

{
  v1 = v0[7];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v3 = OUTLINED_FUNCTION_40_0();
  v4(v3, v2);
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v6 = OUTLINED_FUNCTION_40_0();
  v8 = v7(v6, v5);
  if (v8)
  {
    v9 = v8;
    swift_getObjectType();
    v10 = v9;
    SPHCall.toPhoneCallRecord()();
    OUTLINED_FUNCTION_40_0();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  v0[8] = v10;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_18_1();
  v15 = (v11 + *v11);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v13 = OUTLINED_FUNCTION_2_17(v12);

  return v15(v13);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_13_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 80) = v0;

  if (!v0)
  {
    *(v4 + 88) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_17_5();
  v2 = *(v0 + 88);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t closure #1 in AddCallParticipantGuardFlowFactory.makeAddRestricted(_:)(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(closure #1 in AddCallParticipantGuardFlowFactory.makeAddRestricted(_:), 0, 0);
}

id closure #1 in AddCallParticipantGuardFlowFactory.makeAddRestricted(_:)()
{
  v1 = v0[7];
  if ((v1 & 0x100000000) != 0)
  {
    goto LABEL_9;
  }

  if ((v1 - 3) >= 2)
  {
    if (v1 == 2)
    {
      result = TUStringForCallStatus();
      if (result)
      {
        v3 = result;
        v5 = v0[10];
        v4 = v0[11];
        goto LABEL_8;
      }

LABEL_17:
      __break(1u);
      return result;
    }

LABEL_9:
    v7 = v0[11];
    v8 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    goto LABEL_10;
  }

  result = TUStringForCallStatus();
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = result;
  v4 = v0[11];
  v5 = v0[9];
LABEL_8:
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.toSpeakableString.getter();

  v6 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  outlined init with take of SpeakableString?(v5, v4);
LABEL_10:
  v9 = v0[8];
  v10 = v9[6];
  __swift_project_boxed_opaque_existential_1(v9 + 2, v9[5]);
  v11 = OUTLINED_FUNCTION_40_0();
  v12(v11, v10);
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v14 = OUTLINED_FUNCTION_40_0();
  v16 = v15(v14, v13);
  if (v16)
  {
    v17 = v16;
    swift_getObjectType();
    v18 = v17;
    SPHCall.toPhoneCallRecord()();
    OUTLINED_FUNCTION_40_0();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0;
  }

  v0[12] = v18;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_18_1();
  v22 = (v19 + *v19);
  v20 = swift_task_alloc();
  v0[13] = v20;
  *v20 = v0;
  v20[1] = closure #1 in AddCallParticipantGuardFlowFactory.makeAddRestricted(_:);
  v21 = v0[11];

  return v22(v18, v21);
}

uint64_t closure #1 in AddCallParticipantGuardFlowFactory.makeAddRestricted(_:)()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_13_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 112) = v0;

  if (!v0)
  {
    *(v4 + 120) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 88);

  outlined destroy of SpeakableString?(v1);

  OUTLINED_FUNCTION_17_5();
  v3 = *(v0 + 120);

  return v2(v3);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 88);

  outlined destroy of SpeakableString?(v1);

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t PhoneIntentRCHFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t AddCallParticipantHandleIntentFlowStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t outlined consume of CommonCallStatePredicate(uint64_t result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:

      break;
    default:
      return v3;
  }

  return v3;
}

uint64_t objectdestroyTm()
{
  outlined consume of CommonCallStatePredicate(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  OUTLINED_FUNCTION_5_13();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t lazy protocol witness table accessor for type UnsupportedFeatureGuardFlow and conformance UnsupportedFeatureGuardFlow(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:)()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15_2(v6);
  *v7 = v8;
  v7[1] = closure #2 in ActionableCallControlFlow.execute();

  return closure #1 in AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:)(v2, v3, v4, v5);
}

uint64_t partial apply for closure #1 in AddCallParticipantGuardFlowFactory.makeAddRestricted(_:)()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_4(v1);
  v3 = OUTLINED_FUNCTION_19_0();

  return closure #1 in AddCallParticipantGuardFlowFactory.makeAddRestricted(_:)(v3, v4);
}

uint64_t outlined init with take of SpeakableString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in AddCallParticipantGuardFlowFactory.makeAddRestricted(_:)partial apply()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_4(v1);
  v3 = OUTLINED_FUNCTION_19_0();

  return closure #1 in AddCallParticipantGuardFlowFactory.makeAddRestricted(_:)(v3, v4);
}

{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  OUTLINED_FUNCTION_28();
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  OUTLINED_FUNCTION_17_5();

  return v5(v2);
}

uint64_t partial apply for implicit closure #12 in implicit closure #11 in implicit closure #10 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_17(v1);

  return implicit closure #12 in implicit closure #11 in implicit closure #10 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()();
}

uint64_t partial apply for implicit closure #7 in implicit closure #6 in implicit closure #5 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_17(v1);

  return implicit closure #7 in implicit closure #6 in implicit closure #5 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()();
}

uint64_t partial apply for implicit closure #4 in implicit closure #3 in implicit closure #2 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_17(v1);

  return implicit closure #4 in implicit closure #3 in implicit closure #2 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()();
}

uint64_t AddCallParticipantHandleIntentFlowStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  OUTLINED_FUNCTION_66_0();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t AddCallParticipantHandleIntentFlowStrategy.makeIntentHandledResponse(rchRecord:)()
{
  OUTLINED_FUNCTION_15();
  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();
  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t AddCallParticipantHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[30] = v2;
  v1[31] = v0;
  v1[29] = v3;
  type metadata accessor for DialogPhase();
  v1[32] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for OutputGenerationManifest();
  v1[33] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[34] = v5;
  v1[35] = OUTLINED_FUNCTION_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1[36] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for Locale();
  v1[37] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[38] = v7;
  v1[39] = OUTLINED_FUNCTION_45();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMR);
  v1[40] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[41] = v9;
  v1[42] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v4 = v0[30];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[41];
  v9 = v0[42];
  v11 = v0[40];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = IntentResolutionRecord.intentResponse.getter();
    (*(v10 + 8))(v9, v11);
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_0, v6, v7, "#AddCallParticipantHandleIntentFlowStrategy Received failure = %@", v12, 0xCu);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v15 = v0[31];
  v16 = v15[5];
  v17 = v15[6];
  __swift_project_boxed_opaque_existential_1(v15 + 2, v16);
  (*(v17 + 120))(v16, v17);
  v18 = v0[5];
  v19 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v18);
  if ((*(v19 + 24))(v18, v19))
  {
    swift_getObjectType();
    v20 = SPHCall.toPhoneCallRecord()();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0;
  }

  v0[43] = v20;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v21 = IntentResolutionRecord.intent.getter();
  v22 = outlined bridged method (ob) of @objc INAddCallParticipantIntent.participants.getter(v21);
  if (!v22)
  {
    goto LABEL_16;
  }

  v23 = v22;
  result = specialized Array.count.getter(v22);
  if (!result)
  {

LABEL_16:
    v26 = 0;
    goto LABEL_17;
  }

  if ((v23 & 0xC000000000000001) != 0)
  {
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_14;
  }

  if (*(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
  {
    v25 = *(v23 + 32);
LABEL_14:
    v26 = v25;

LABEL_17:
    v27 = v0[39];
    v29 = v0[37];
    v28 = v0[38];
    type metadata accessor for PhonePerson(0);
    v31 = v15[5];
    v30 = v15[6];
    __swift_project_boxed_opaque_existential_1(v15 + 2, v31);
    (*(v30 + 8))(v31, v30);
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    dispatch thunk of DeviceState.siriLocale.getter();
    v0[44] = static PhonePerson.make(phonePerson:options:locale:)(v26, 0, v27);

    (*(v28 + 8))(v27, v29);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    v32 = IntentResolutionRecord.intentResponse.getter();
    v33 = [v32 code];

    switch(v33)
    {
      case 6uLL:
      case 0xDuLL:
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v35 = OUTLINED_FUNCTION_48_0(v34);
        v0[45] = v35;
        OUTLINED_FUNCTION_8_13(v35, xmmword_426260);
        OUTLINED_FUNCTION_18_1();
        v36 = swift_task_alloc();
        v0[46] = v36;
        *v36 = v0;
        OUTLINED_FUNCTION_21_2(v36);
        OUTLINED_FUNCTION_15_11();

        __asm { BRAA            X2, X16 }

        return result;
      case 8uLL:
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v45 = OUTLINED_FUNCTION_48_0(v44);
        v0[48] = v45;
        OUTLINED_FUNCTION_8_13(v45, xmmword_426260);
        OUTLINED_FUNCTION_18_1();
        v46 = swift_task_alloc();
        v0[49] = v46;
        *v46 = v0;
        v46[1] = AddCallParticipantHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:);
        OUTLINED_FUNCTION_15_11();

        __asm { BRAA            X1, X16 }

        return result;
      case 9uLL:
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v40 = OUTLINED_FUNCTION_48_0(v39);
        v0[51] = v40;
        OUTLINED_FUNCTION_8_13(v40, xmmword_426260);
        OUTLINED_FUNCTION_18_1();
        v41 = swift_task_alloc();
        v0[52] = v41;
        *v41 = v0;
        OUTLINED_FUNCTION_21_2(v41);
        OUTLINED_FUNCTION_15_11();

        __asm { BRAA            X3, X16 }

        return result;
      default:
        v49 = v0[36];
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v51 = OUTLINED_FUNCTION_48_0(v50);
        v0[54] = v51;
        *(v51 + 16) = xmmword_426260;
        v52 = type metadata accessor for SpeakableString();
        __swift_storeEnumTagSinglePayload(v49, 1, 1, v52);
        OUTLINED_FUNCTION_18_1();
        v53 = swift_task_alloc();
        v0[55] = v53;
        *v53 = v0;
        v53[1] = AddCallParticipantHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:);
        OUTLINED_FUNCTION_15_11();

        __asm { BRAA            X2, X16 }

        return result;
    }
  }

  __break(1u);
  return result;
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[17] = v1;
  v2[18] = v4;
  v2[19] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v7 + 376) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_5_14(*(v0 + 144));
  OUTLINED_FUNCTION_1_22();
  v1 = OUTLINED_FUNCTION_3_2();
  v2(v1);
  OUTLINED_FUNCTION_4_9();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_9(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_15(v4);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v6, v7, v8, v9, v10, v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[20] = v1;
  v2[21] = v4;
  v2[22] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v7 + 400) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_5_14(*(v0 + 168));
  OUTLINED_FUNCTION_1_22();
  v1 = OUTLINED_FUNCTION_3_2();
  v2(v1);
  OUTLINED_FUNCTION_4_9();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_9(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_15(v4);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v6, v7, v8, v9, v10, v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[23] = v1;
  v2[24] = v4;
  v2[25] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v7 + 424) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_5_14(*(v0 + 192));
  OUTLINED_FUNCTION_1_22();
  v1 = OUTLINED_FUNCTION_3_2();
  v2(v1);
  OUTLINED_FUNCTION_4_9();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_9(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_15(v4);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v6, v7, v8, v9, v10, v11, v12, v13);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v3[26] = v1;
  v3[27] = v5;
  v3[28] = v0;
  *v4 = *v1;
  v3[56] = v0;

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(*(v2 + 288), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_5_14(*(v0 + 216));
  OUTLINED_FUNCTION_1_22();
  v1 = OUTLINED_FUNCTION_3_2();
  v2(v1);
  OUTLINED_FUNCTION_4_9();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_9(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_15(v4);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v6, v7, v8, v9, v10, v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t AddCallParticipantHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_31();
  v11 = v10[35];
  v12 = v10[33];
  v13 = v10[34];

  (*(v13 + 8))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v10 + 12);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_7_5();

  OUTLINED_FUNCTION_24_11();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17_0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_7_5();

  OUTLINED_FUNCTION_24_11();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17_0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_7_5();

  OUTLINED_FUNCTION_24_11();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17_0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_24_11();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17_0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance AddCallParticipantHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AddCallParticipantHandleIntentFlowStrategy();
  *v8 = v4;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance AddCallParticipantHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AddCallParticipantHandleIntentFlowStrategy();
  *v8 = v4;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance AddCallParticipantHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AddCallParticipantHandleIntentFlowStrategy();
  *v8 = v4;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance AddCallParticipantHandleIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 104) + **(**v2 + 104));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance AddCallParticipantHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AddCallParticipantHandleIntentFlowStrategy();
  *v8 = v4;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance AddCallParticipantHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AddCallParticipantHandleIntentFlowStrategy();
  *v8 = v4;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance AddCallParticipantHandleIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 112) + **(**v2 + 112));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #2 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance AddCallParticipantHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AddCallParticipantHandleIntentFlowStrategy();
  *v8 = v4;
  v8[1] = protocol witness for Flow.onAsync(input:) in conformance ActionableCallControlFlow;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v9, a4);
}

uint64_t outlined bridged method (ob) of @objc INAddCallParticipantIntent.participants.getter(void *a1)
{
  v2 = [a1 participants];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for INPerson();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t lazy protocol witness table accessor for type AddCallParticipantHandleIntentFlowStrategy and conformance AddCallParticipantHandleIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table cache variable for type AddCallParticipantHandleIntentFlowStrategy and conformance AddCallParticipantHandleIntentFlowStrategy;
  if (!lazy protocol witness table cache variable for type AddCallParticipantHandleIntentFlowStrategy and conformance AddCallParticipantHandleIntentFlowStrategy)
  {
    type metadata accessor for AddCallParticipantHandleIntentFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantHandleIntentFlowStrategy and conformance AddCallParticipantHandleIntentFlowStrategy);
  }

  return result;
}

unint64_t type metadata accessor for INPerson()
{
  result = lazy cache variable for type metadata for INPerson;
  if (!lazy cache variable for type metadata for INPerson)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INPerson);
  }

  return result;
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.rchRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_rchRecord;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMR);
  OUTLINED_FUNCTION_40();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.__allocating_init(rchRecord:sharedGlobals:patterns:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(a3, *(a3 + 24));
  OUTLINED_FUNCTION_9_10();
  __chkstk_darwin(v5);
  v7 = OUTLINED_FUNCTION_3_5(v6, v11);
  v8(v7);
  OUTLINED_FUNCTION_8_14();
  v9 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v4;
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.init(rchRecord:sharedGlobals:patterns:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_mutable_project_boxed_opaque_existential_1(a3, *(a3 + 24));
  OUTLINED_FUNCTION_9_10();
  __chkstk_darwin(v4);
  v6 = OUTLINED_FUNCTION_3_5(v5, v10);
  v7(v6);
  OUTLINED_FUNCTION_8_14();
  v8 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v3;
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(AddCallParticipantHandleIntentFollowUpFlow.execute(), 0, 0);
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.execute()()
{
  v22 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMR);
  v1 = IntentResolutionRecord.intentResponse.getter();
  v2 = [v1 code];

  if (v2 == &dword_0 + 3)
  {
    v3 = IntentResolutionRecord.intentResponse.getter();
    v4 = outlined bridged method (ob) of @objc INAddCallParticipantIntentResponse.invites.getter(v3, &selRef_invites, &lazy cache variable for type metadata for INCallInvite, INCallInvite_ptr);
    if (v4)
    {
      v5 = v4;
      if (specialized Array.count.getter(v4))
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v5 & 0xC000000000000001) == 0, v5);
        if ((v5 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v6 = *(v5 + 32);
        }

        v7 = v6;

        if ([v7 inviteType] == &dword_0 + 3)
        {
          v7 = v7;
          AddCallParticipantHandleIntentFollowUpFlow.handleFaceTimeLinkInvite(linkInvite:)(v7);

LABEL_16:
          goto LABEL_17;
        }

LABEL_15:
        AddCallParticipantHandleIntentFollowUpFlow.handleInvite()();
        goto LABEL_16;
      }
    }

    v7 = 0;
    goto LABEL_15;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.siriPhone);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    v13 = IntentResolutionRecord.intentResponse.getter();
    [v13 code];

    v14 = INAddCallParticipantIntentResponseCodeGetName();
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v21);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_0, v9, v10, "#AddCallParticipantHandleIntentFollowUpFlow intentResponse code: %s, not doing anything - errors should be provided by HandleIntentFlow", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_26_0(v12);
    OUTLINED_FUNCTION_26_0(v11);
  }

  static ExecuteResponse.complete()();
LABEL_17:
  OUTLINED_FUNCTION_11();

  return v19();
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AddCallParticipantHandleIntentFollowUpFlow(0);
  lazy protocol witness table accessor for type AddCallParticipantHandleIntentFollowUpFlow and conformance AddCallParticipantHandleIntentFollowUpFlow(&lazy protocol witness table cache variable for type AddCallParticipantHandleIntentFollowUpFlow and conformance AddCallParticipantHandleIntentFollowUpFlow, type metadata accessor for AddCallParticipantHandleIntentFollowUpFlow, &protocol conformance descriptor for AddCallParticipantHandleIntentFollowUpFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.handleFaceTimeLinkInvite(linkInvite:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CATOption();
  __chkstk_darwin(v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = &v38[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v38[-1] - v10;
  v12 = [a1 callURL];
  if (v12)
  {
    v13 = v12;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = type metadata accessor for URL();
    v15 = 0;
  }

  else
  {
    v14 = type metadata accessor for URL();
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v15, 1, v14);
  outlined init with take of URL?(v7, v11);
  type metadata accessor for URL();
  if (__swift_getEnumTagSinglePayload(v11, 1, v14) == 1)
  {
    outlined destroy of SpeakableString?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_21:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.siriPhone);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "#AddCallParticipantHandleIntentFollowUpFlow: Invalid call invite", v33, 2u);
      OUTLINED_FUNCTION_26_0(v33);
    }

    return static ExecuteResponse.complete()();
  }

  v16 = URL.absoluteString.getter();
  v18 = v17;
  OUTLINED_FUNCTION_40();
  (*(v19 + 8))(v11, v14);
  v20 = outlined bridged method (pb) of @objc INCallInvite.participants.getter(a1);
  if (!v20)
  {
LABEL_20:

    goto LABEL_21;
  }

  v21 = v20;
  if (!specialized Array.count.getter(v20))
  {

    goto LABEL_20;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.siriPhone);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "#AddCallParticipantHandleIntentFollowUpFlow: Attempting to send a message with FaceTime Link", v25, 2u);
    OUTLINED_FUNCTION_26_0(v25);
  }

  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  memcpy(v44, &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  v41 = &type metadata for PhoneCallFeatureFlags;
  v42 = &protocol witness table for PhoneCallFeatureFlags;
  *&v40 = swift_allocObject();
  memcpy((v40 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation(&v40, v43);
  outlined init with copy of PhoneCallFeatureFlags(v44, v38);
  __swift_destroy_boxed_opaque_existential_1(v43);
  v26 = (v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v27 = OUTLINED_FUNCTION_2();
  v28(v27);
  __swift_project_boxed_opaque_existential_1(v38, v39);
  OUTLINED_FUNCTION_2();
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    if (one-time initialization token for siriFaceTimeMacExtension != -1)
    {
      swift_once();
    }

    v29 = &static DefaultPhoneApps.siriFaceTimeMacExtension;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v38, v39);
    OUTLINED_FUNCTION_2();
    if (dispatch thunk of DeviceState.isWatch.getter())
    {
      if (one-time initialization token for siriPhoneWatchExtension != -1)
      {
        swift_once();
      }

      v29 = &static DefaultPhoneApps.siriPhoneWatchExtension;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v38, v39);
      OUTLINED_FUNCTION_2();
      if (dispatch thunk of DeviceState.isXRDevice.getter())
      {
        if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
        {
          swift_once();
        }

        v29 = &static DefaultPhoneApps.siriPhoneFaceTimeExtension;
      }

      else
      {
        if (one-time initialization token for siriPhoneExtension != -1)
        {
          swift_once();
        }

        v29 = &static DefaultPhoneApps.siriPhoneExtension;
      }
    }
  }

  v35 = *v29;

  __swift_destroy_boxed_opaque_existential_1(v38);
  type metadata accessor for MessagesFaceTimeLinkCompletionFlow(0);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v26, v38);
  type metadata accessor for StartCallCATs(0);

  static CATOption.defaultMode.getter();
  v36 = CATWrapper.__allocating_init(options:globals:)();
  v38[0] = MessagesFaceTimeLinkCompletionFlow.__allocating_init(faceTimeLink:recipients:app:sharedGlobals:startCallCATs:)(v16, v18, v21, v35, v38, v36);
  lazy protocol witness table accessor for type AddCallParticipantHandleIntentFollowUpFlow and conformance AddCallParticipantHandleIntentFollowUpFlow(&lazy protocol witness table cache variable for type MessagesFaceTimeLinkCompletionFlow and conformance MessagesFaceTimeLinkCompletionFlow, type metadata accessor for MessagesFaceTimeLinkCompletionFlow, &protocol conformance descriptor for MessagesFaceTimeLinkCompletionFlow);
  static ExecuteResponse.complete<A>(next:)();
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.handleInvite()()
{
  v1 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals + 24);
  v2 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals), v1);
  (*(v2 + 16))(v9, v1, v2);
  v3 = v10;
  v4 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v8[3] = v3;
  v8[4] = v4;
  __swift_allocate_boxed_opaque_existential_1(v8);
  OUTLINED_FUNCTION_40();
  (*(v5 + 16))();
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();

  v6 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1(v9);
  v9[0] = v6;
  static ExecuteResponse.complete<A>(next:)();
}

uint64_t closure #1 in AddCallParticipantHandleIntentFollowUpFlow.handleInvite()(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = closure #2 in ActionableCallControlFlow.execute();

  return AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse()();
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse()()
{
  OUTLINED_FUNCTION_15();
  v1[17] = v2;
  v1[18] = v0;
  type metadata accessor for DialogPhase();
  v1[19] = swift_task_alloc();
  v3 = type metadata accessor for OutputGenerationManifest();
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  v4 = type metadata accessor for Locale();
  v1[23] = v4;
  v1[24] = *(v4 - 8);
  v1[25] = swift_task_alloc();

  return _swift_task_switch(AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse(), 0, 0);
}

{
  v47 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
LABEL_31:
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v46 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000000457410, &v46);
    _os_log_impl(&dword_0, v2, v3, "#AddCallParticipantHandleIntentFollowUpFlow %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_26_0(v5);
    OUTLINED_FUNCTION_26_0(v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMR);
  v6 = IntentResolutionRecord.intentResponse.getter();
  v7 = outlined bridged method (ob) of @objc INAddCallParticipantIntentResponse.invites.getter(v6, &selRef_invites, &lazy cache variable for type metadata for INCallInvite, INCallInvite_ptr);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  if (!specialized Array.count.getter(v7))
  {

LABEL_11:
    v10 = 0;
LABEL_12:

    v12 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v8 & 0xC000000000000001) == 0, v8);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = outlined bridged method (ob) of @objc INAddCallParticipantIntentResponse.invites.getter(v10, &selRef_participants, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
LABEL_13:
  v38 = v10;
  v0[26] = v10;
  v13 = v0[24];
  v14 = v0[18];
  v15 = _swiftEmptyArrayStorage;
  v46 = _swiftEmptyArrayStorage;
  v16 = specialized Array.count.getter(v12);
  v17 = 0;
  v18 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals;
  v0[27] = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals;
  v43 = (v14 + v18);
  v44 = v16;
  v41 = v12 & 0xFFFFFFFFFFFFFF8;
  v42 = v12 & 0xC000000000000001;
LABEL_14:
  v39 = v15;
  v0[28] = v15;
  while (v44 != v17)
  {
    if (v42)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *(v41 + 16))
      {
        goto LABEL_30;
      }

      v19 = *(v12 + 8 * v17 + 32);
    }

    v20 = v19;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v40 = v17 + 1;
    v21 = v0[25];
    v22 = v0[23];
    type metadata accessor for PhonePerson(0);
    v23 = v12;
    v24 = v43[3];
    v25 = v43[4];
    __swift_project_boxed_opaque_existential_1(v43, v24);
    (*(v25 + 8))(v24, v25);
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v12 = v23;
    dispatch thunk of DeviceState.siriLocale.getter();
    v26 = static PhonePerson.make(phonePerson:options:locale:)(v20, 0, v21);

    (*(v13 + 8))(v21, v22);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    ++v17;
    if (v26)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v46 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v15 = v46;
      v17 = v40;
      goto LABEL_14;
    }
  }

  v27 = v0[18];

  v28 = *(v27 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_patterns + 24);
  v29 = *(v27 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_patterns + 32);
  __swift_project_boxed_opaque_existential_1((v27 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_patterns), v28);
  v30 = v43[4];
  __swift_project_boxed_opaque_existential_1(v43, v43[3]);
  v31 = OUTLINED_FUNCTION_40_0();
  v32(v31, v30);
  v33 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v33);
  v34 = DeviceState.supportsOnlyFaceTimeCalls.getter(v33);
  v35 = swift_task_alloc();
  v0[29] = v35;
  v35[2] = v27;
  v35[3] = v38;
  v35[4] = v39;
  v45 = (*(v29 + 8) + **(v29 + 8));
  v36 = swift_task_alloc();
  v0[30] = v36;
  *v36 = v0;
  v36[1] = AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse();

  return v45(v34 & 1, partial apply for closure #2 in AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse(), v35, v28, v29);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  *(v1 + 248) = v3;
  *(v1 + 256) = v0;

  if (v0)
  {
    v4 = AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 56));
    v4 = AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse();
  }

  return _swift_task_switch(v4, 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  *(v4 + 272) = v0;

  if (v0)
  {
    v5 = AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse();
  }

  else
  {
    v5 = AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v1 = *(v0 + 208);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);

  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  OUTLINED_FUNCTION_11();

  return v5();
}

{
  v1 = *(v0 + 208);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  OUTLINED_FUNCTION_11();

  return v2();
}

{
  v1 = *(v0 + 208);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);

  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  OUTLINED_FUNCTION_11();

  return v5();
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse()(uint64_t a1)
{
  v2 = (v1[18] + v1[27]);
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v4 = OUTLINED_FUNCTION_40_0();
  v5(v4, v3);
  v6 = v1[15];
  v7 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v6);
  v8 = *(v7 + 8);
  v9 = swift_task_alloc();
  v1[33] = v9;
  *v9 = v1;
  v9[1] = AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse();
  v10 = v1[31];
  v11 = v1[22];
  v12 = v1[17];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v12, v10, v11, v6, v8);
}

uint64_t closure #2 in AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse()(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v28[-1] - v9;
  type metadata accessor for SirikitDeviceState();
  v11 = *(a2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals + 24);
  v12 = *(a2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals), v11);
  (*(v12 + 8))(v28, v11, v12);
  v13 = SirikitDeviceState.__allocating_init(from:)();

  a1[1] = v13;
  type metadata accessor for PhoneCallInvite.Builder(0);
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_inviteType;
  v16 = type metadata accessor for SpeakableString();
  v17 = 1;
  __swift_storeEnumTagSinglePayload(v14 + v15, 1, 1, v16);
  *(v14 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_participants) = _swiftEmptyArrayStorage;
  if (a3)
  {
    if (![a3 inviteType])
    {
      goto LABEL_13;
    }

    BackingType = INCallInviteTypeGetBackingType();
    switch(BackingType)
    {
      case 3:
        v19 = @"LINK";
        break;
      case 2:
        v19 = @"RING";
        break;
      case 1:
        v19 = @"ADD";
        break;
      default:
        v19 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        goto LABEL_12;
    }

    v20 = v19;
LABEL_12:
    v21 = v19;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_13:
    String.toSpeakableString.getter();

    v17 = 0;
  }

  __swift_storeEnumTagSinglePayload(v10, v17, 1, v16);
  v22 = PhoneCallInvite.Builder.withInviteType(_:)(v10);

  outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v23 = (*(*v22 + 176))(a4);

  v25 = (*(*v23 + 184))(v24);

  *a1 = v25;
  return result;
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.deinit()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_rchRecord;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMR);
  OUTLINED_FUNCTION_40();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_patterns));
  return v0;
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.__deallocating_deinit()
{
  AddCallParticipantHandleIntentFollowUpFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance AddCallParticipantHandleIntentFollowUpFlow(uint64_t a1)
{
  v6 = (*(**v1 + 120) + **(**v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance AddCallParticipantHandleIntentFollowUpFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AddCallParticipantHandleIntentFollowUpFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t outlined bridged method (pb) of @objc INCallInvite.participants.getter(void *a1)
{
  v1 = [a1 participants];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc INAddCallParticipantIntentResponse.invites.getter(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v7 = [a1 *a2];

  if (!v7)
  {
    return 0;
  }

  type metadata accessor for CNContactStore(0, a3, a4);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t specialized AddCallParticipantHandleIntentFollowUpFlow.init(rchRecord:sharedGlobals:patterns:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_patterns);
  v11[3] = a5;
  v11[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  v13 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_rchRecord;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMR);
  (*(*(v14 - 8) + 32))(a4 + v13, a1, v14);
  outlined init with take of SPHConversation(a2, a4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals);
  return a4;
}

uint64_t type metadata accessor for AddCallParticipantHandleIntentFollowUpFlow(uint64_t a1)
{
  result = type metadata singleton initialization cache for AddCallParticipantHandleIntentFollowUpFlow;
  if (!type metadata singleton initialization cache for AddCallParticipantHandleIntentFollowUpFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AddCallParticipantHandleIntentFollowUpFlow(uint64_t a1)
{
  type metadata accessor for IntentResolutionRecord<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for IntentResolutionRecord<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IntentResolutionRecord<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>)
  {
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for INAddCallParticipantIntent, INAddCallParticipantIntent_ptr);
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for INAddCallParticipantIntentResponse, INAddCallParticipantIntentResponse_ptr);
    v1 = type metadata accessor for IntentResolutionRecord();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IntentResolutionRecord<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>);
    }
  }
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AddCallParticipantHandleIntentFollowUpFlow and conformance AddCallParticipantHandleIntentFollowUpFlow(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in AddCallParticipantHandleIntentFollowUpFlow.handleInvite()()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = closure #2 in ActionableCallControlFlow.execute();

  return closure #1 in AddCallParticipantHandleIntentFollowUpFlow.handleInvite()(v2);
}

uint64_t one-time initialization function for faceTimeUsoApp()
{
  result = closure #1 in variable initialization expression of static AddOrCallPromptForValueStrategy.faceTimeUsoApp();
  static AddOrCallPromptForValueStrategy.faceTimeUsoApp = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static AddOrCallPromptForValueStrategy.faceTimeUsoApp()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UsoEntityBuilder_common_App();
  swift_allocObject();
  v4 = UsoEntityBuilder_common_App.init()();
  dispatch thunk of UsoEntityBuilder_common_App.setName(value:)();
  UsoIdentifier.init(value:appBundleId:namespace:)();
  dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void AddOrCallPromptForValueStrategy.__allocating_init(sharedGlobals:ongoingCallCats:ongoingCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_29_1();
  swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v0, v0[3]);
  OUTLINED_FUNCTION_30_7();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_28_4(v2);
  v4(v3);
  OUTLINED_FUNCTION_25_4();
  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_65();
}

void AddOrCallPromptForValueStrategy.init(sharedGlobals:ongoingCallCats:ongoingCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_29_1();
  __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  OUTLINED_FUNCTION_30_7();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_28_4(v3);
  v5(v4);
  OUTLINED_FUNCTION_25_4();
  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_65();
}

void AddOrCallPromptForValueStrategy.actionForInput(_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v2 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);
  OUTLINED_FUNCTION_7();
  v11 = v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_12_5();
  v15 = (v13 - v14);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  Input.parse.getter();
  AddOrCallPromptForValueStrategy.parsePromptResponse(from:)();
  (*(v4 + 8))(v8, v2);
  (*(v11 + 16))(v15, v18, v9);
  v19 = (*(v11 + 88))(v15, v9);
  if (v19 == enum case for PromptResult.answered<A>(_:))
  {
    (*(v11 + 96))(v15, v9);
    v20 = *v15;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.siriPhone);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v41 = v24;
      v42 = swift_slowAlloc();
      v43 = v42;
      *v24 = 136315138;
      if (v20)
      {
        v25 = 0x6C61436F54646461;
      }

      else
      {
        v25 = 0x6C6C614377656ELL;
      }

      if (v20)
      {
        v26 = 0xE90000000000006CLL;
      }

      else
      {
        v26 = 0xE700000000000000;
      }

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v43);

      v28 = v41;
      *(v41 + 1) = v27;
      v29 = v28;
      _os_log_impl(&dword_0, v22, v23, "#AddOrCallPromptForValueStrategy received response: %s", v28, 0xCu);
      v30 = v42;
      __swift_destroy_boxed_opaque_existential_1(v42);
      OUTLINED_FUNCTION_26_0(v30);
      OUTLINED_FUNCTION_26_0(v29);
    }

    *(v1 + 16) = v20;
    static ActionForInput.handle()();
LABEL_19:
    (*(v11 + 8))(v18, v9);
    goto LABEL_25;
  }

  if (v19 == enum case for PromptResult.cancelled<A>(_:))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.siriPhone);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "#AddOrCallPromptForValueStrategy response is cancellation", v34, 2u);
      OUTLINED_FUNCTION_26_0(v34);
    }

    static ActionForInput.cancel()();
    goto LABEL_19;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Logger.siriPhone);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v37, "#AddOrCallPromptForValueStrategy response not recognized, ignoring", v38, 2u);
    OUTLINED_FUNCTION_26_0(v38);
  }

  static ActionForInput.ignore()();
  v39 = *(v11 + 8);
  v39(v18, v9);
  v39(v15, v9);
LABEL_25:
  OUTLINED_FUNCTION_65();
}

uint64_t AddOrCallPromptForValueStrategy.parseValueResponse(input:)()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.parseValueResponse(input:));
}

{
  return (*(v0 + 8))(*(*(v0 + 16) + 16));
}

uint64_t AddOrCallPromptForValueStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_15();
  v1[395] = v0;
  v1[389] = v2;
  type metadata accessor for DialogPhase();
  v1[401] = OUTLINED_FUNCTION_45();
  v3 = type metadata accessor for OutputGenerationManifest();
  v1[407] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[413] = v4;
  v1[419] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for UUID();
  v1[425] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[431] = v6;
  v1[437] = OUTLINED_FUNCTION_45();
  v1[443] = type metadata accessor for CommonDirectAction(0);
  v1[449] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for NLContextUpdate();
  v1[455] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[461] = v8;
  v1[467] = OUTLINED_FUNCTION_45();

  return _swift_task_switch(AddOrCallPromptForValueStrategy.makePromptForValue(), 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  AddOrCallPromptForValueStrategy.getNLContextUpdate()();

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogExecutionResult, DialogExecutionResult_ptr);
  swift_asyncLet_begin();

  OUTLINED_FUNCTION_33_7(v0 + 1936, v1, v2, &async function pointer to partial apply for implicit closure #2 in AddOrCallPromptForValueStrategy.makePromptForValue(), v3, v0 + 3032);

  OUTLINED_FUNCTION_33_7(v0 + 16, v4, v5, &async function pointer to partial apply for implicit closure #3 in AddOrCallPromptForValueStrategy.makePromptForValue(), v6, v0 + 3016);

  OUTLINED_FUNCTION_33_7(v0 + 1296, v7, v8, &async function pointer to partial apply for implicit closure #4 in AddOrCallPromptForValueStrategy.makePromptForValue(), v9, v0 + 3048);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMR);
  v10 = type metadata accessor for ButtonConfigurationModel(0);
  *(v0 + 3784) = v10;
  OUTLINED_FUNCTION_13_2(v10);
  *(v0 + 3832) = *(v11 + 72);
  *(v0 + 4032) = *(v12 + 80);
  v13 = swift_allocObject();
  *(v0 + 3880) = v13;
  *(v13 + 16) = xmmword_426980;

  return _swift_asyncLet_get_throwing(v0 + 1936, v0 + 3032, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 2896);
}

{
  *(v1 + 3928) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
  }
}

{
  v1 = *(v0 + 3784);
  v2 = *(v0 + 3592);
  v3 = *(v0 + 3448);
  v15 = *(v0 + 3496);
  v16 = *(v0 + 3400);
  v4 = *(v0 + 3160);
  v5 = (*(v0 + 3880) + ((*(v0 + 4032) + 32) & ~*(v0 + 4032)));
  v14 = *(v0 + 3032);
  v6 = *(v0 + 3040);
  v7 = type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v7);

  UsoTaskBuilder_call_common_PhoneCall.init()();
  UsoTaskBuilder.toUserStatedTaskDialogAct()();

  swift_storeEnumTagMultiPayload();
  v8 = v4[6];
  v9 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v8);
  (*(v9 + 8))(v8, v9);
  CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)((v0 + 2616));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2616));
  OUTLINED_FUNCTION_1_23();
  outlined destroy of CommonDirectAction(v2, v10);
  UUID.init()();
  *v5 = v14;
  v5[1] = v6;
  [objc_allocWithZone(SABaseCommand) init];
  *(v0 + 3936) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  CodableAceObject.init(wrappedValue:)();
  *(v5 + *(v1 + 32)) = 1;
  *(v0 + 3944) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
  CodableAceObject.init(wrappedValue:)();
  v11 = *(v1 + 28);
  v12 = *(v3 + 32);
  *(v0 + 3952) = v12;
  *(v0 + 3960) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v12(v5 + v11, v15, v16);

  return _swift_asyncLet_get_throwing(v0 + 16, v0 + 3016, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3216);
}

{
  *(v1 + 3968) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
  }
}

{
  v16 = *(v0 + 3952);
  v1 = *(v0 + 3784);
  v2 = *(v0 + 3592);
  v14 = *(v0 + 3496);
  v15 = *(v0 + 3400);
  v3 = *(v0 + 3160);
  v4 = (*(v0 + 3880) + *(v0 + 3832) + ((*(v0 + 4032) + 32) & ~*(v0 + 4032)));
  v5 = *(v0 + 3016);
  v6 = *(v0 + 3024);

  AddOrCallPromptForValueStrategy.addParticipantDialogAct()();
  swift_storeEnumTagMultiPayload();
  v7 = v3[6];
  v8 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v7);
  (*(v8 + 8))(v7, v8);
  CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)((v0 + 2696));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2696));
  OUTLINED_FUNCTION_1_23();
  outlined destroy of CommonDirectAction(v2, v9);
  UUID.init()();
  *v4 = v5;
  v4[1] = v6;
  [objc_allocWithZone(SABaseCommand) init];
  CodableAceObject.init(wrappedValue:)();
  *(v4 + *(v1 + 32)) = 1;
  CodableAceObject.init(wrappedValue:)();
  v16(v4 + *(v1 + 28), v14, v15);
  v10 = OUTLINED_FUNCTION_8_15();

  return _swift_asyncLet_get_throwing(v10, v11, v12, v0 + 3456);
}

{
  *(v1 + 3976) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
  }
}

{
  v19 = *(v0 + 3952);
  v18 = *(v0 + 3880);
  v1 = *(v0 + 3784);
  v20 = *(v0 + 3736);
  v2 = *(v0 + 3592);
  v16 = *(v0 + 3496);
  v17 = *(v0 + 3400);
  v3 = *(v0 + 3160);
  v4 = (v18 + ((*(v0 + 4032) + 32) & ~*(v0 + 4032)) + 2 * *(v0 + 3832));
  v15 = *(v0 + 3048);
  v5 = *(v0 + 3056);
  swift_storeEnumTagMultiPayload();
  v6 = v3[6];
  v7 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v6);
  v8 = *(v7 + 8);

  v8(v6, v7);
  CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)((v0 + 2776));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2776));
  OUTLINED_FUNCTION_1_23();
  outlined destroy of CommonDirectAction(v2, v9);
  UUID.init()();
  *v4 = v15;
  v4[1] = v5;
  [objc_allocWithZone(SABaseCommand) init];
  CodableAceObject.init(wrappedValue:)();
  *(v4 + *(v1 + 32)) = 1;
  CodableAceObject.init(wrappedValue:)();
  v19(v4 + *(v1 + 28), v16, v17);
  static DialogPhase.clarification.getter();
  v10 = swift_task_alloc();
  *(v10 + 16) = v20;
  *(v10 + 24) = v18;
  *(v10 + 32) = 0;
  OutputGenerationManifest.init(dialogPhase:_:)();

  outlined init with copy of SignalProviding((v3 + 11), v0 + 2856);
  v11 = *(v0 + 2880);
  *(v0 + 3984) = v11;
  *(v0 + 4000) = __swift_project_boxed_opaque_existential_1((v0 + 2856), v11);
  *(v0 + 2960) = type metadata accessor for PhoneSnippetDataModels(0);
  *(v0 + 2968) = lazy protocol witness table accessor for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 2936));
  *boxed_opaque_existential_1 = v18;
  *(boxed_opaque_existential_1 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_allocObject();
  *(v0 + 4008) = v13;
  *(v13 + 16) = xmmword_426260;

  return _swift_asyncLet_get_throwing(v0 + 656, v0 + 3064, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3696);
}

{
  *(v1 + 4016) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[383];
  *(v0[501] + 32) = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[503] = v3;
  *v3 = v0;
  v3[1] = AddOrCallPromptForValueStrategy.makePromptForValue();
  v4 = v0[501];
  v5 = v0[499];
  v6 = v0[498];
  v7 = v0[419];
  v8 = v0[389];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v8, v0 + 367, v4, v7, v6, v5);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 2936));

  return _swift_task_switch(AddOrCallPromptForValueStrategy.makePromptForValue(), 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  v1 = OUTLINED_FUNCTION_37_7();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2856));
  v3 = OUTLINED_FUNCTION_8_15();

  return _swift_asyncLet_finish(v3, v4, v5, v0 + 3888);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 3016, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 2816);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 1936, v0 + 3032, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 2736);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 656, v0 + 3064, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 2576);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  (*(v0[461] + 8))(v0[467], v0[455]);

  OUTLINED_FUNCTION_11();

  return v1();
}

{
  OUTLINED_FUNCTION_15();
  *(*(v0 + 3880) + 16) = 0;

  v1 = OUTLINED_FUNCTION_8_15();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 2976);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 3016, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3072);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 1936, v0 + 3032, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3120);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 656, v0 + 3064, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3168);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 3880);
  outlined destroy of CommonDirectAction(v1 + ((*(v0 + 4032) + 32) & ~*(v0 + 4032)), type metadata accessor for ButtonConfigurationModel);
  *(v1 + 16) = 0;

  v2 = OUTLINED_FUNCTION_8_15();

  return _swift_asyncLet_finish(v2, v3, v4, v0 + 3264);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 3016, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3312);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 1936, v0 + 3032, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3360);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 656, v0 + 3064, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3408);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 3880);
  v2 = v1 + ((*(v0 + 4032) + 32) & ~*(v0 + 4032));
  outlined destroy of CommonDirectAction(v2 + *(v0 + 3832), type metadata accessor for ButtonConfigurationModel);
  outlined destroy of CommonDirectAction(v2, type metadata accessor for ButtonConfigurationModel);
  *(v1 + 16) = 0;

  v3 = OUTLINED_FUNCTION_8_15();

  return _swift_asyncLet_finish(v3, v4, v5, v0 + 3504);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 3016, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3552);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 1936, v0 + 3032, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3600);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 656, v0 + 3064, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3648);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[501];
  v2 = OUTLINED_FUNCTION_37_7();
  v3(v2);
  *(v1 + 16) = 0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 367);
  __swift_destroy_boxed_opaque_existential_1(v0 + 357);
  v4 = OUTLINED_FUNCTION_8_15();

  return _swift_asyncLet_finish(v4, v5, v6, v0 + 468);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 3016, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3792);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 1936, v0 + 3032, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3840);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 656, v0 + 3064, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 2656);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

uint64_t AddOrCallPromptForValueStrategy.makePromptForValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v10 = OUTLINED_FUNCTION_3_6();
  v11(v10);
  OUTLINED_FUNCTION_44_5();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v10 = OUTLINED_FUNCTION_3_6();
  v11(v10);
  OUTLINED_FUNCTION_44_5();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v10 = OUTLINED_FUNCTION_3_6();
  v11(v10);
  OUTLINED_FUNCTION_44_5();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v10 = OUTLINED_FUNCTION_3_6();
  v11(v10);
  OUTLINED_FUNCTION_44_5();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t implicit closure #1 in AddOrCallPromptForValueStrategy.makePromptForValue()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #1 in AddOrCallPromptForValueStrategy.makePromptForValue(), 0, 0);
}

uint64_t implicit closure #1 in AddOrCallPromptForValueStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_27();
  v15 = **(*(v0 + 24) + 72) + class metadata base offset for OngoingCallCATsSimple;
  OUTLINED_FUNCTION_24_5();
  v16 = v1 + *v1;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_38_0(v2);
  *v3 = v4;
  v12 = OUTLINED_FUNCTION_19_14(v3, v5, v6, v7, v8, v9, v10, v11, v14, v15, v16);

  return v12();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v10, v11, v12);
  }
}

{
  **(v0 + 16) = *(v0 + 40);
  OUTLINED_FUNCTION_11();
  return v1();
}

uint64_t implicit closure #2 in AddOrCallPromptForValueStrategy.makePromptForValue()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #2 in AddOrCallPromptForValueStrategy.makePromptForValue(), 0, 0);
}

uint64_t implicit closure #2 in AddOrCallPromptForValueStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_22_3();
  v15 = v0 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 216;
  OUTLINED_FUNCTION_24_5();
  v16 = v1 + *v1;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_38_0(v2);
  *v3 = v4;
  v12 = OUTLINED_FUNCTION_19_14(v3, v5, v6, v7, v8, v9, v10, v11, v14, v15, v16);

  return v12();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v10, v11, v12);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 16);
  v2 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v4 = v3;

  *v1 = v2;
  v1[1] = v4;
  OUTLINED_FUNCTION_11();

  return v5();
}

uint64_t implicit closure #3 in AddOrCallPromptForValueStrategy.makePromptForValue()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #3 in AddOrCallPromptForValueStrategy.makePromptForValue(), 0, 0);
}

uint64_t implicit closure #3 in AddOrCallPromptForValueStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_22_3();
  v15 = v0 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 8;
  OUTLINED_FUNCTION_24_5();
  v16 = v1 + *v1;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_38_0(v2);
  *v3 = v4;
  v12 = OUTLINED_FUNCTION_19_14(v3, v5, v6, v7, v8, v9, v10, v11, v14, v15, v16);

  return v12();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v10, v11, v12);
  }
}

uint64_t implicit closure #4 in AddOrCallPromptForValueStrategy.makePromptForValue()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #4 in AddOrCallPromptForValueStrategy.makePromptForValue(), 0, 0);
}

uint64_t implicit closure #4 in AddOrCallPromptForValueStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_22_3();
  v15 = v0 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 56;
  OUTLINED_FUNCTION_24_5();
  v16 = v1 + *v1;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_38_0(v2);
  *v3 = v4;
  v12 = OUTLINED_FUNCTION_19_14(v3, v5, v6, v7, v8, v9, v10, v11, v14, v15, v16);

  return v12();
}

uint64_t closure #1 in AddOrCallPromptForValueStrategy.makePromptForValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v12 - v8;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v10 = type metadata accessor for NLContextUpdate();
  (*(*(v10 - 8) + 16))(v9, a2, v10);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  OutputGenerationManifest.nlContextUpdate.setter();
  StackedButtonsModel.responseViewId.getter(a3, v4);
  return OutputGenerationManifest.responseViewId.setter();
}

void AddOrCallPromptForValueStrategy.parsePromptResponse(from:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v101 = v3;
  v96 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7();
  v94 = v4;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v93 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = (&v93 - v9);
  v11 = type metadata accessor for CommonDirectAction(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_12_5();
  v95 = v13 - v14;
  __chkstk_darwin(v15);
  v17 = &v93 - v16;
  __chkstk_darwin(v18);
  v98 = &v93 - v19;
  type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_7();
  v99 = v20;
  v100 = v21;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_12_5();
  v97 = v22 - v23;
  __chkstk_darwin(v24);
  v26 = &v93 - v25;
  v27 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v29 = v28;
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_12_5();
  v33 = v31 - v32;
  v35 = __chkstk_darwin(v34);
  v37 = &v93 - v36;
  (*(v29 + 16))(&v93 - v36, v2, v27, v35);
  v38 = OUTLINED_FUNCTION_39_8();
  v40 = v39(v38);
  if (v40 == enum case for Parse.NLv3IntentOnly(_:))
  {
    goto LABEL_2;
  }

  if (v40 == enum case for Parse.directInvocation(_:))
  {
    v46 = OUTLINED_FUNCTION_39_8();
    v47(v46);
    v48 = v100;
    v49 = v37;
    v50 = v99;
    (*(v100 + 32))(v26, v49, v99);
    static CommonDirectAction.from(_:)(v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v10, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Logger.siriPhone);
      v52 = v97;
      (*(v48 + 16))(v97, v26, v50);
      v53 = v26;
      v54 = v48;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v104[0] = v58;
        *v57 = 136315138;
        v59 = Parse.DirectInvocation.identifier.getter();
        v60 = v52;
        v62 = v61;
        v63 = *(v54 + 8);
        v63(v60, v50);
        v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v62, v104);

        *(v57 + 4) = v64;
        __swift_destroy_boxed_opaque_existential_1(v58);
        OUTLINED_FUNCTION_26_0(v58);
        OUTLINED_FUNCTION_26_0(v57);

        v63(v53, v50);
      }

      else
      {

        v73 = *(v54 + 8);
        v73(v52, v50);
        v73(v53, v50);
      }

      goto LABEL_24;
    }

    v68 = v10;
    v69 = v98;
    outlined init with take of CommonDirectAction(v68, v98);
    outlined init with copy of CommonDirectAction(v69, v17);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      OUTLINED_FUNCTION_15_12();
      v71 = v70;
      outlined destroy of CommonDirectAction(v69, v70);
      (*(v0 + 8))(v26, v50);
      outlined destroy of CommonDirectAction(v17, v71);
      v72 = &enum case for PromptResult.cancelled<A>(_:);
LABEL_25:
      v91 = *v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);
      OUTLINED_FUNCTION_23_1();
      (*(v92 + 104))(v101, v91);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_1_23();
    outlined destroy of CommonDirectAction(v17, v74);
    v75 = v95;
    outlined init with copy of CommonDirectAction(v69, v95);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v76 = v93;
      v77 = v94;
      (*(v94 + 32))(v93, v75, v96);
      v78 = *(v0 + 48);
      v79 = *(v0 + 56);
      __swift_project_boxed_opaque_existential_1((v0 + 24), v78);
      v80 = (*(v79 + 72))(v78, v79);
      Siri_Nlu_External_UserDialogAct.toParse.getter(v33);
      (*(*v80 + 192))(&v102, v33);

      (*(v29 + 8))(v33, v27);
      if (v103)
      {
        outlined init with take of SPHConversation(&v102, v104);
        AddOrCallPromptForValueStrategy.getAction(from:)(v104, v101);
        __swift_destroy_boxed_opaque_existential_1(v104);
        (*(v77 + 8))(v76, v96);
        OUTLINED_FUNCTION_1_23();
        outlined destroy of CommonDirectAction(v98, v81);
        v82 = OUTLINED_FUNCTION_20_11();
        v83(v82);
        goto LABEL_26;
      }

      (*(v77 + 8))(v76, v96);
      OUTLINED_FUNCTION_1_23();
      outlined destroy of CommonDirectAction(v98, v88);
      v89 = OUTLINED_FUNCTION_20_11();
      v90(v89);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_15_12();
    v85 = v84;
    outlined destroy of CommonDirectAction(v69, v84);
    v86 = OUTLINED_FUNCTION_20_11();
    v87(v86);
    outlined destroy of CommonDirectAction(v0, v85);
LABEL_24:
    v72 = &enum case for PromptResult.unanswered<A>(_:);
    goto LABEL_25;
  }

  if (v40 != enum case for Parse.NLv4IntentOnly(_:) && v40 != enum case for Parse.uso(_:))
  {
    v66 = OUTLINED_FUNCTION_39_8();
    v67(v66);
    goto LABEL_24;
  }

LABEL_2:
  v41 = OUTLINED_FUNCTION_39_8();
  v42(v41);
  v43 = *(v0 + 48);
  v44 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 24), v43);
  v45 = (*(v44 + 72))(v43, v44);
  (*(*v45 + 192))(&v102, v2);

  if (!v103)
  {
LABEL_23:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v102, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    goto LABEL_24;
  }

  outlined init with take of SPHConversation(&v102, v104);
  AddOrCallPromptForValueStrategy.getAction(from:)(v104, v101);
  __swift_destroy_boxed_opaque_existential_1(v104);
LABEL_26:
  OUTLINED_FUNCTION_65();
}

uint64_t AddOrCallPromptForValueStrategy.getAction(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_41_4();
  if (PhoneCallNLIntent.isOutgoingCall()())
  {
    *a2 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_32_4();
    OUTLINED_FUNCTION_41_4();
    if (!PhoneCallNLIntent.isAddParticipant()())
    {
      OUTLINED_FUNCTION_32_4();
      if (PhoneCallNLIntent.hasCallConfirmation(_:)(PhoneCallFlowDelegatePlugin_PhoneCallConfirmation_no) || (OUTLINED_FUNCTION_32_4(), PhoneCallNLIntent.hasCallConfirmation(_:)(PhoneCallFlowDelegatePlugin_PhoneCallConfirmation_cancel)))
      {
        v3 = &enum case for PromptResult.cancelled<A>(_:);
      }

      else
      {
        v3 = &enum case for PromptResult.unanswered<A>(_:);
      }

      goto LABEL_6;
    }

    *a2 = 1;
  }

  v3 = &enum case for PromptResult.answered<A>(_:);
LABEL_6:
  v4 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);
  OUTLINED_FUNCTION_23_1();
  v7 = *(v6 + 104);

  return v7(a2, v4, v5);
}

void AddOrCallPromptForValueStrategy.getNLContextUpdate()()
{
  OUTLINED_FUNCTION_66();
  v33 = v0;
  v34 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  OUTLINED_FUNCTION_7();
  v31 = v8;
  v32 = v7;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_12_5();
  v30 = v9 - v10;
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  Siri_Nlu_External_SystemGaveOptions.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR);
  type metadata accessor for Siri_Nlu_External_UserDialogAct();
  *(swift_allocObject() + 16) = xmmword_426980;
  v14 = type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v14);
  UsoTaskBuilder_call_common_PhoneCall.init()();
  UsoTaskBuilder.toUserStatedTaskDialogAct()();

  AddOrCallPromptForValueStrategy.faceTimeDialogAct()();
  AddOrCallPromptForValueStrategy.addParticipantDialogAct()();
  Siri_Nlu_External_SystemGaveOptions.choices.setter();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.siriPhone);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35 = v19;
    *v18 = 136315138;
    swift_beginAccess();
    Siri_Nlu_External_SystemGaveOptions.choices.getter();
    swift_endAccess();
    v20 = Array.description.getter();
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v35);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_0, v16, v17, "Returning NLUSystemGaveOptions: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_26_0(v19);
    OUTLINED_FUNCTION_26_0(v18);
  }

  Siri_Nlu_External_SystemDialogAct.init()();
  swift_beginAccess();
  v24 = v31;
  v25 = v32;
  (*(v31 + 16))(v30, v13, v32);
  Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();
  NLContextUpdate.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v26 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_424FD0;
  v28 = v34;
  (*(v2 + 16))(v27 + v26, v6, v34);
  NLContextUpdate.nluSystemDialogActs.setter();
  (*(v2 + 8))(v6, v28);
  (*(v24 + 8))(v13, v25);
  OUTLINED_FUNCTION_65();
}

uint64_t AddOrCallPromptForValueStrategy.faceTimeDialogAct()()
{
  v0 = type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v0);
  UsoTaskBuilder_call_common_PhoneCall.init()();
  v1 = type metadata accessor for UsoEntityBuilder_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v1);
  UsoEntityBuilder_common_PhoneCall.init()();
  if (one-time initialization token for faceTimeUsoApp != -1)
  {
    swift_once();
  }

  dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoAssociatedApp(value:)();
  dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
  UsoTaskBuilder.toUserStatedTaskDialogAct()();
}

uint64_t AddOrCallPromptForValueStrategy.addParticipantDialogAct()()
{
  v0 = type metadata accessor for ListOperators();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  v7 = type metadata accessor for UsoTaskBuilder_update_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v7);
  UsoTaskBuilder_update_common_PhoneCall.init()();
  v8 = type metadata accessor for UsoEntityBuilder_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v8);
  UsoEntityBuilder_common_PhoneCall.init()();
  v9 = type metadata accessor for UsoEntityBuilder_common_Person();
  OUTLINED_FUNCTION_41_1(v9);
  UsoEntityBuilder_common_Person.init()();
  (*(v2 + 104))(v6, enum case for ListOperators.addToSet(_:), v0);
  dispatch thunk of UsoEntityBuilder_common_PhoneCall.addRecipientsListExpression(operatorValue:operand:)();
  (*(v2 + 8))(v6, v0);
  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceTarget.setTarget(value:)();
  UsoTaskBuilder.toUserStatedTaskDialogAct()();
}

void *AddOrCallPromptForValueStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  return v0;
}

uint64_t AddOrCallPromptForValueStrategy.__deallocating_deinit()
{
  AddOrCallPromptForValueStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance AddOrCallPromptForValueStrategy(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v7 = (*(*v2 + 168) + **(*v2 + 168));
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance AddOrCallPromptForValueStrategy;

  return v7(a2);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance AddOrCallPromptForValueStrategy()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  OUTLINED_FUNCTION_13_6();

  return v9();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makePromptForValue() in conformance AddOrCallPromptForValueStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance AddOrCallPromptForValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = closure #1 in ActionableCallControlFlow.execute();

  return PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()(a1, a2, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence() in conformance AddOrCallPromptForValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = closure #1 in ActionableCallControlFlow.execute();

  return PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()(a1, a2, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance AddOrCallPromptForValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = closure #2 in ActionableCallControlFlow.execute();

  return PromptForValueFlowStrategyAsync.makeFlowCancelledResponse()(a1, a2, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeErrorResponse(_:) in conformance AddOrCallPromptForValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return PromptForValueFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, a3, a4);
}

uint64_t specialized AddOrCallPromptForValueStrategy.init(sharedGlobals:ongoingCallCats:ongoingCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a6 + 112) = a7;
  *(a6 + 120) = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a6 + 88));
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a5, a7);
  *(a6 + 16) = 2;
  outlined init with take of SPHConversation(a1, a6 + 24);
  *(a6 + 64) = a2;
  *(a6 + 72) = a3;
  *(a6 + 80) = a4;
  return a6;
}

uint64_t partial apply for implicit closure #1 in AddOrCallPromptForValueStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #1 in AddOrCallPromptForValueStrategy.makePromptForValue()(v3, v4);
}

uint64_t partial apply for implicit closure #2 in AddOrCallPromptForValueStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #2 in AddOrCallPromptForValueStrategy.makePromptForValue()(v3, v4);
}

uint64_t partial apply for implicit closure #3 in AddOrCallPromptForValueStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #3 in AddOrCallPromptForValueStrategy.makePromptForValue()(v3, v4);
}

uint64_t partial apply for implicit closure #4 in AddOrCallPromptForValueStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #4 in AddOrCallPromptForValueStrategy.makePromptForValue()(v3, v4);
}

uint64_t outlined destroy of CommonDirectAction(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels)
  {
    type metadata accessor for PhoneSnippetDataModels(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels);
  }

  return result;
}

uint64_t outlined init with take of CommonDirectAction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonDirectAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CommonDirectAction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonDirectAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double AnnotatedAppFinding.find(appQuery:device:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  (*(a6 + 8))(v10, a1, a2, a3, a4, 2, a5);
  v8 = v10[1];
  *a7 = v10[0];
  a7[1] = v8;
  result = *&v11;
  a7[2] = v11;
  return result;
}

uint64_t AnnotatedAppFinder.firstPartyAnnotatedAppStore.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AnnotatedAppFinder.init(firstPartyAnnotatedAppStore:thirdPartyAnnotatedAppStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  return outlined init with take of SPHConversation(a4, (a5 + 3));
}

void AnnotatedAppFinder.find(appQuery:device:avMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_10_2();
  a29 = v31;
  a30 = v32;
  v33 = v30;
  v73 = v34;
  v72 = v35;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static Logger.siriPhone);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    a13 = v48;
    *v47 = 136315394;
    *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000000457510, &a13);
    *(v47 + 12) = 2080;
    v49 = OUTLINED_FUNCTION_8_2();
    v51 = AppQuery.description.getter(v49, v50, v37);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &a13);

    *(v47 + 14) = v53;
    _os_log_impl(&dword_0, v45, v46, "#AnnotatedAppFinder %s appQuery=%s", v47, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v48);
    OUTLINED_FUNCTION_26_0(v47);
  }

  if (v39)
  {
    type metadata accessor for App();

    OUTLINED_FUNCTION_8_2();
    App.__allocating_init(appIdentifier:)();
    v54 = App.isFirstParty()();

    if (!v54)
    {

      OUTLINED_FUNCTION_8_2();
      App.__allocating_init(appIdentifier:)();
      v66 = App.isFirstParty()();

      if (v66)
      {
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&dword_0, v67, v68, "#AnnotatedAppFinder Malformed query! Returning nil", v69, 2u);
          OUTLINED_FUNCTION_26_0(v69);
        }

        v60 = 0;
      }

      else
      {
        __swift_project_boxed_opaque_existential_1((v33 + 24), *(v33 + 48));
        v70 = OUTLINED_FUNCTION_8_2();
        v71(v70);
        v60 = a13;
        if (a13)
        {
          v64 = a18;
          v63 = a15;
          v62 = a16;
          v65 = 2;
          v61 = a14;
          goto LABEL_22;
        }
      }

LABEL_19:
      v61 = 0;
      v63 = 0;
      v62 = 0;
      v65 = 0;
      v64 = 0;
      goto LABEL_22;
    }

    v55 = v39;
  }

  else
  {
    v56 = AppQuery.defaultAppId.getter(v41, 0, v37);
    if (!v57)
    {
      FirstPartyAnnotatedAppStore.getDefaultApp(for:avMode:)(v72, v73, &a13);
      v60 = a13;
      v61 = a14;
      v63 = a15;
      v62 = a16;
      v64 = a18;

      outlined destroy of AnnotatedApp(&a13);
      goto LABEL_21;
    }

    v41 = v56;
    v55 = v57;
  }

  v58 = *v33;
  v59 = *(v33 + 16);

  FirstPartyAnnotatedAppStore.getApp(for:device:avMode:)(v41, v55, v72, v58, &a13, v73, v59);
  v60 = a13;
  v61 = a14;
  v63 = a15;
  v62 = a16;
  v64 = a18;

  if (!v60)
  {
    goto LABEL_19;
  }

  if (!v39)
  {
LABEL_21:
    v65 = 1;
    goto LABEL_22;
  }

  v65 = 2;
LABEL_22:
  *v43 = v60;
  v43[1] = v61;
  v43[2] = v63;
  v43[3] = v62;
  v43[4] = v65;
  v43[5] = v64;
  OUTLINED_FUNCTION_11_10();
}

uint64_t AnnotatedApp.withSource(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[5];
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = a1;
  *(a2 + 40) = v7;
}

__n128 AnnotatedAppFinder.findForAppSelection(app:device:appResolutionSource:)@<Q0>(uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v7 = App.appIdentifier.getter();
  v9 = v8;
  type metadata accessor for AppQuery.Builder();
  swift_allocObject();
  v10 = AppQuery.Builder.init(requestedAppId:overrides:)(v7, v9, _swiftEmptyArrayStorage);
  v11 = (*(*v10 + 160))(v10);
  v13 = v12;
  v15 = v14;

  AnnotatedAppFinder.find(appQuery:device:avMode:)(v11, v13, v15, a2, 2, v16, v17, v18, v33, v35, v36, v38, v39, v40, v41, *(&v41 + 1), v42, *(&v42 + 1), v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  v34 = v42;
  v37 = v41;
  v19 = v43;
  v20 = v44;

  v21 = v41;
  if (v41)
  {
    v19 = a3;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40 = v26;
      *v25 = 136315394;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x8000000000457530, &v40);
      *(v25 + 12) = 2080;
      type metadata accessor for App();
      OUTLINED_FUNCTION_2_18();
      lazy protocol witness table accessor for type App and conformance App(v27, v28, &protocol conformance descriptor for App);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v40);

      *(v25 + 14) = v31;
      _os_log_impl(&dword_0, v23, v24, "#AnnotatedAppFinder %s Could not find AnnotatedApp for %s", v25, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0(v26);
      OUTLINED_FUNCTION_26_0(v25);
    }

    v21 = v37;
  }

  *a4 = v21;
  result = v34;
  *(a4 + 16) = v34;
  *(a4 + 32) = v19;
  *(a4 + 40) = v20;
  return result;
}

Swift::Bool __swiftcall AnnotatedAppFinder.isInstalledOnDevice(appBundleId:)(Swift::String appBundleId)
{
  object = appBundleId._object;
  countAndFlagsBits = appBundleId._countAndFlagsBits;
  objc_allocWithZone(LSApplicationRecord);

  v3 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(countAndFlagsBits, object, 0);
  if (v3)
  {

    LOBYTE(v3) = 1;
  }

  return v3;
}

double protocol witness for AnnotatedAppFinding.findForAppSelection(app:device:appResolutionSource:) in conformance AnnotatedAppFinder@<D0>(uint64_t a2@<X1>, unsigned __int8 a3@<W2>, _OWORD *a4@<X8>)
{
  AnnotatedAppFinder.findForAppSelection(app:device:appResolutionSource:)(a2, a3, v7);
  v5 = v7[1];
  *a4 = v7[0];
  a4[1] = v5;
  result = *&v8;
  a4[2] = v8;
  return result;
}

uint64_t ContactResolverConfigHashable.intentTypeName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AnnotatedApp.init(app:supportedIntents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = App.appIdentifier.getter();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = result;
  *(a3 + 24) = v7;
  *(a3 + 32) = 0;
  *(a3 + 40) = _swiftEmptySetSingleton;
  return result;
}

uint64_t AnnotatedApp.init(app:supportedIntents:launchId:source:actionsRestrictedWhileLocked:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t AnnotatedApp.init(app:supportedIntents:actionsRestrictedWhileLocked:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = App.appIdentifier.getter();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = result;
  *(a4 + 24) = v9;
  *(a4 + 32) = 0;
  *(a4 + 40) = a3;
  return result;
}

uint64_t AnnotatedApp.init(app:supportedIntents:launchId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 0;
  *(a5 + 40) = &_swiftEmptySetSingleton;
  return result;
}

void specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_10_2();
  if (*(v33 + 16))
  {
    OUTLINED_FUNCTION_12_12(v32, v33);
    PhoneCallVerb.rawValue.getter(v31);
    String.hash(into:)();

    Hasher._finalize()();
    OUTLINED_FUNCTION_0_16();
    v36 = v35 & ~v34;
    if ((*(v30 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
    {
      v37 = ~v34;
      while (1)
      {
        v38 = 0xE400000000000000;
        v39 = 1819042147;
        switch(*(*(v30 + 48) + v36))
        {
          case 1:
            v39 = 0x636162206C6C6163;
            v38 = 0xE90000000000006BLL;
            break;
          case 2:
            v38 = 0xE800000000000000;
            v39 = 0x656D697465636166;
            break;
          case 3:
            v39 = 0x656D697465636166;
            v41 = 0x6F6964756120;
            goto LABEL_15;
          case 4:
            v39 = 0x7072656B61657073;
            v40 = 1701736296;
            goto LABEL_19;
          case 5:
            v39 = 1684957542;
            break;
          case 6:
            v38 = 0xE600000000000000;
            v39 = 0x6C6169646572;
            break;
          case 7:
            v38 = 0xE700000000000000;
            v39 = 0x79666972616C63;
            break;
          case 8:
            v39 = 1684104562;
            break;
          case 9:
            v38 = 0xE700000000000000;
            v39 = 0x6D7269666E6F63;
            break;
          case 0xA:
            v38 = 0xE600000000000000;
            v39 = 0x726577736E61;
            break;
          case 0xB:
            v38 = 0xE700000000000000;
            v39 = 0x70755F676E6168;
            break;
          case 0xC:
            v38 = 0xE600000000000000;
            v39 = 0x6574656C6564;
            break;
          case 0xD:
            v39 = 0x65526F54746E6177;
            v40 = 1952540016;
LABEL_19:
            v38 = v40 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 0xE:
            v39 = 1852403562;
            break;
          case 0xF:
            v39 = 0x6974726150646461;
            v41 = 0x746E61706963;
LABEL_15:
            v38 = v41 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          case 0x10:
            v39 = 0xD000000000000011;
            v38 = 0x8000000000453820;
            break;
          default:
            break;
        }

        v42 = 0xE400000000000000;
        v43 = 1819042147;
        switch(v31)
        {
          case 1:
            v43 = 0x636162206C6C6163;
            v42 = 0xE90000000000006BLL;
            break;
          case 2:
            v42 = 0xE800000000000000;
            v43 = 0x656D697465636166;
            break;
          case 3:
            v43 = 0x656D697465636166;
            v45 = 0x6F6964756120;
            goto LABEL_34;
          case 4:
            v43 = 0x7072656B61657073;
            v44 = 1701736296;
            goto LABEL_38;
          case 5:
            v43 = 1684957542;
            break;
          case 6:
            v42 = 0xE600000000000000;
            v43 = 0x6C6169646572;
            break;
          case 7:
            v42 = 0xE700000000000000;
            v43 = 0x79666972616C63;
            break;
          case 8:
            v43 = 1684104562;
            break;
          case 9:
            v42 = 0xE700000000000000;
            v43 = 0x6D7269666E6F63;
            break;
          case 10:
            v42 = 0xE600000000000000;
            v43 = 0x726577736E61;
            break;
          case 11:
            v42 = 0xE700000000000000;
            v43 = 0x70755F676E6168;
            break;
          case 12:
            v42 = 0xE600000000000000;
            v43 = 0x6574656C6564;
            break;
          case 13:
            v43 = 0x65526F54746E6177;
            v44 = 1952540016;
LABEL_38:
            v42 = v44 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 14:
            v43 = 1852403562;
            break;
          case 15:
            v43 = 0x6974726150646461;
            v45 = 0x746E61706963;
LABEL_34:
            v42 = v45 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          case 16:
            v43 = 0xD000000000000011;
            v42 = 0x8000000000453820;
            break;
          default:
            break;
        }

        if (v39 == v43 && v38 == v42)
        {
          break;
        }

        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v47 & 1) == 0)
        {
          v36 = (v36 + 1) & v37;
          if ((*(v30 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
          {
            continue;
          }
        }

        goto LABEL_48;
      }
    }
  }

LABEL_48:
  OUTLINED_FUNCTION_11_10();
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriKitReliabilityCodes();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_24();
  lazy protocol witness table accessor for type App and conformance App(v10, v11, &protocol conformance descriptor for SiriKitReliabilityCodes);
  v22 = a1;
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = a2 + 56;
  v23 = a2;
  OUTLINED_FUNCTION_0_16();
  v15 = ~v14;
  do
  {
    v16 = v13 & v15;
    v17 = (1 << (v13 & v15)) & *(v12 + (((v13 & v15) >> 3) & 0xFFFFFFFFFFFFFF8));
    v18 = v17 != 0;
    if (!v17)
    {
      break;
    }

    (*(v6 + 16))(v9, *(v23 + 48) + *(v6 + 72) * v16, v4);
    OUTLINED_FUNCTION_1_24();
    lazy protocol witness table accessor for type App and conformance App(&lazy protocol witness table cache variable for type SiriKitReliabilityCodes and conformance SiriKitReliabilityCodes, v19, &protocol conformance descriptor for SiriKitReliabilityCodes);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v6 + 8))(v9, v4);
    v13 = v16 + 1;
  }

  while ((v20 & 1) == 0);
  return v18;
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_12(a1, a2);
  Hasher._combine(_:)(v3 & 1);
  v4 = Hasher._finalize()();
  v5 = v2 + 56;
  do
  {
    v6 = v4 & ~(-1 << *(v2 + 32));
    result = ((1 << v6) & *(v5 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8))) != 0;
    if (((1 << v6) & *(v5 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v8 = *(*(v2 + 48) + v6);
    v4 = v6 + 1;
  }

  while (v8 != (v3 & 1));
  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, void *a2)
{
  v40 = a1;
  v3 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  __chkstk_darwin(v14);
  v17 = &v29 - v16;
  if (!a2[2])
  {
    return 0;
  }

  v37 = v15;
  Hasher.init(_seed:)();
  specialized Optional<A>.hash(into:)(v41);
  Hasher._finalize()();
  v18 = a2 + 7;
  OUTLINED_FUNCTION_0_16();
  v21 = v20 & ~v19;
  if (((*(a2 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v21) & 1) == 0)
  {
    return 0;
  }

  v38 = ~v19;
  v31 = (v5 + 32);
  v32 = v8;
  v39 = *(v13 + 72);
  v35 = (v5 + 8);
  v36 = a2 + 7;
  v30 = a2;
  while (1)
  {
    OUTLINED_FUNCTION_15_13(a2[6] + v39 * v21, v17);
    v22 = *(v8 + 48);
    OUTLINED_FUNCTION_15_13(v17, v11);
    OUTLINED_FUNCTION_15_13(v40, &v11[v22]);
    OUTLINED_FUNCTION_14_3(v11);
    if (v24)
    {
      break;
    }

    v23 = v37;
    OUTLINED_FUNCTION_15_13(v11, v37);
    OUTLINED_FUNCTION_14_3(&v11[v22]);
    if (v24)
    {
      OUTLINED_FUNCTION_6_10();
      (*v35)(v23, v3);
      v18 = v36;
LABEL_12:
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
      goto LABEL_14;
    }

    v25 = v33;
    (*v31)(v33, &v11[v22], v3);
    lazy protocol witness table accessor for type App and conformance App(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &protocol conformance descriptor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
    v34 = dispatch thunk of static Equatable.== infix(_:_:)();
    v26 = *v35;
    v27 = v25;
    v8 = v32;
    (*v35)(v27, v3);
    OUTLINED_FUNCTION_6_10();
    v26(v23, v3);
    a2 = v30;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
    v18 = v36;
    if (v34)
    {
      return 1;
    }

LABEL_14:
    v21 = (v21 + 1) & v38;
    if (((*(v18 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_14_3(&v11[v22]);
  if (!v24)
  {
    goto LABEL_12;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  return 1;
}

uint64_t specialized Set.contains(_:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  Hasher._finalize()();
  OUTLINED_FUNCTION_0_16();
  return (*(a1 + (((v2 & ~v3) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v2 & ~v3)) & 1;
}

uint64_t AnnotatedApp.withAppIdentifier(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = v3;
  v10 = *v3;
  if (a2)
  {
    v4 = a2;
    v5 = a1;
    App.systemExtensionBundleId.getter();
    v7 = v11;
    App.systemUIExtensionBundleId.getter();
    v6 = App.pluginIdentifier.getter();
    type metadata accessor for App();
    swift_allocObject();

    v10 = App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
    OUTLINED_FUNCTION_13_9();
  }

  else
  {
    OUTLINED_FUNCTION_13_9();
  }

  v13 = *(v8 + 32);
  *a3 = v10;
  *(a3 + 8) = v4;
  *(a3 + 16) = v7;
  *(a3 + 24) = v5;
  *(a3 + 32) = v13;
  *(a3 + 40) = v6;
  return result;
}

void _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_10_2();
  if (v30 == v31 || (v32 = v31, *(v30 + 16) != *(v31 + 16)))
  {
LABEL_24:
    OUTLINED_FUNCTION_11_10();
  }

  else
  {
    v33 = 0;
    v34 = v30 + 56;
    v35 = 1 << *(v30 + 32);
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v37 = v36 & *(v30 + 56);
    v38 = (v35 + 63) >> 6;
    v39 = v31 + 56;
    v53 = v30;
    if (v37)
    {
      while (2)
      {
        v40 = __clz(__rbit64(v37));
        v37 &= v37 - 1;
LABEL_13:
        v43 = (*(v30 + 48) + 16 * (v40 | (v33 << 6)));
        v45 = *v43;
        v44 = v43[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        Hasher._finalize()();
        OUTLINED_FUNCTION_0_16();
        v48 = ~v47;
        do
        {
          v49 = v46 & v48;
          if (((*(v39 + (((v46 & v48) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v46 & v48)) & 1) == 0)
          {

            goto LABEL_24;
          }

          v50 = (*(v32 + 48) + 16 * v49);
          if (*v50 == v45 && v50[1] == v44)
          {
            break;
          }

          v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v46 = v49 + 1;
        }

        while ((v52 & 1) == 0);

        v30 = v53;
        if (v37)
        {
          continue;
        }

        break;
      }
    }

    v41 = v33;
    while (1)
    {
      v33 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v33 >= v38)
      {
        goto LABEL_24;
      }

      v42 = *(v34 + 8 * v33);
      ++v41;
      if (v42)
      {
        v40 = __clz(__rbit64(v42));
        v37 = (v42 - 1) & v42;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

Swift::Int AppResolutionSource.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppResolutionSource(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  AppResolutionSource.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type AppResolutionSource and conformance AppResolutionSource()
{
  result = lazy protocol witness table cache variable for type AppResolutionSource and conformance AppResolutionSource;
  if (!lazy protocol witness table cache variable for type AppResolutionSource and conformance AppResolutionSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppResolutionSource and conformance AppResolutionSource);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AnnotatedAppFinder(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for AnnotatedAppFinder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppResolutionSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppResolutionSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

PhoneCallFlowDelegatePlugin::AnnounceCallBellCATPatternsIdentifiers_optional __swiftcall AnnounceCallBellCATPatternsIdentifiers.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceCallBellCATPatternsIdentifiers.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t AnnounceCallBellCATs.Properties.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000026;
  }

  if (a1 == 1)
  {
    return 0xD000000000000028;
  }

  return 0xD000000000000025;
}

PhoneCallFlowDelegatePlugin::AnnounceCallBellCATPatternsIdentifiers_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceCallBellCATPatternsIdentifiers@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceCallBellCATPatternsIdentifiers_optional *a2@<X8>)
{
  result.value = AnnounceCallBellCATPatternsIdentifiers.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceCallBellCATPatternsIdentifiers@<X0>(unint64_t *a1@<X8>)
{
  result = AnnounceCallBellCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

__n128 *AnnounceCallBellAnnounceCallBellStartedParameters.asKeyValuePairs()(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_0_2(v2, xmmword_424FD0);
  if (a1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
    v4 = a1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v4;
  v2[4].n128_u64[1] = v3;

  return v2;
}

uint64_t AnnounceCallBellCATPatternsExecutor.announceCallBellEnded()()
{
  v1 = OUTLINED_FUNCTION_1();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = AnnounceCallBellCATPatternsExecutor.announceCallBellEnded();

  return v3(0xD000000000000026, 0x8000000000451C70, _swiftEmptyArrayStorage);
}

uint64_t AnnounceCallBellCATPatternsExecutor.announceCallBellEnded()(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t AnnounceCallBellCATPatternsExecutor.announceCallBellStarted(_:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(AnnounceCallBellCATPatternsExecutor.announceCallBellStarted(_:), 0, 0);
}

uint64_t AnnounceCallBellCATPatternsExecutor.announceCallBellStarted(_:)()
{
  *(v0 + 16) = 0;
  (*(v0 + 24))(v0 + 16);
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  OUTLINED_FUNCTION_0_2(v2, xmmword_424FD0);
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  *(v0 + 56) = v1;
  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  v6 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = AnnounceCallBellCATPatternsExecutor.announceCallBellStarted(_:);

  return v6(0xD000000000000028, 0x8000000000451CA0, v2);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AnnounceCallBellCATPatternsExecutor.announceCallBellStarted(_:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = AnnounceCallBellCATPatternsExecutor.announceCallBellStarted(_:);
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = AnnounceCallBellCATPatternsExecutor.announceCallBellStarted(_:);
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd()()
{
  v1 = OUTLINED_FUNCTION_1();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v3(0xD000000000000025, 0x8000000000451CD0, _swiftEmptyArrayStorage);
}

uint64_t AnnounceCallBellCATPatternsExecutor.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v9 - 8);
  outlined init with copy of URL?(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of URL?(a1);
  return v11;
}

unint64_t lazy protocol witness table accessor for type AnnounceCallBellCATPatternsIdentifiers and conformance AnnounceCallBellCATPatternsIdentifiers()
{
  result = lazy protocol witness table cache variable for type AnnounceCallBellCATPatternsIdentifiers and conformance AnnounceCallBellCATPatternsIdentifiers;
  if (!lazy protocol witness table cache variable for type AnnounceCallBellCATPatternsIdentifiers and conformance AnnounceCallBellCATPatternsIdentifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceCallBellCATPatternsIdentifiers and conformance AnnounceCallBellCATPatternsIdentifiers);
  }

  return result;
}

uint64_t protocol witness for AnnounceCallBellCATPatternsExecuting.announceCallBellEnded() in conformance AnnounceCallBellCATPatternsExecutor()
{
  v4 = (*(**v0 + class metadata base offset for AnnounceCallBellCATPatternsExecutor) + **(**v0 + class metadata base offset for AnnounceCallBellCATPatternsExecutor));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v4();
}

uint64_t protocol witness for AnnounceCallBellCATPatternsExecuting.announceCallBellStarted(_:) in conformance AnnounceCallBellCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + class metadata base offset for AnnounceCallBellCATPatternsExecutor + 8) + **(**v2 + class metadata base offset for AnnounceCallBellCATPatternsExecutor + 8));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v8(a1, a2);
}

uint64_t protocol witness for AnnounceCallBellCATPatternsExecuting.informDoubleTapToEnd() in conformance AnnounceCallBellCATPatternsExecutor()
{
  v4 = (*(**v0 + class metadata base offset for AnnounceCallBellCATPatternsExecutor + 16) + **(**v0 + class metadata base offset for AnnounceCallBellCATPatternsExecutor + 16));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v4();
}

_BYTE *storeEnumTagSinglePayload for AnnounceCallBellCATPatternsIdentifiers(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AnnounceCallBellAnnounceCallBellStartedParameters(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnnounceCallBellAnnounceCallBellStartedParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for AnnounceCallBellCATPatternsExecutor(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnnounceCallBellCATPatternsExecutor;
  if (!type metadata singleton initialization cache for AnnounceCallBellCATPatternsExecutor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

PhoneCallFlowDelegatePlugin::AnnounceCallBellCATs::Properties_optional __swiftcall AnnounceCallBellCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceCallBellCATs.Properties.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

PhoneCallFlowDelegatePlugin::AnnounceCallBellCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceCallBellCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceCallBellCATs::Properties_optional *a2@<X8>)
{
  result.value = AnnounceCallBellCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t AnnounceCallBellCATs.announceCallBellEnded()()
{
  OUTLINED_FUNCTION_27();
  v1 = v0;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v7 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v7(v1, 0xD000000000000026, 0x8000000000451C70, _swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = AddCallParticipantCATs.errorNoTargetCall();

  return v5(0xD000000000000026, 0x8000000000451C70, _swiftEmptyArrayStorage);
}

{
  return OUTLINED_FUNCTION_33_1(38);
}

uint64_t AnnounceCallBellCATs.announceCallBellStarted(device:completion:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  OUTLINED_FUNCTION_0_2(v5, xmmword_424FD0);
  if (a1)
  {
    v6 = type metadata accessor for SirikitDeviceState();
    v7 = a1;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5[3].n128_u64[1] = 0;
    v5[4].n128_u64[0] = 0;
  }

  v5[3].n128_u64[0] = v7;
  v5[4].n128_u64[1] = v6;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t AnnounceCallBellCATs.announceCallBellStarted(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceCallBellCATs.announceCallBellStarted(device:)()
{
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_0_2(v3, xmmword_424FD0);
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v1;
  v3[4].n128_u64[1] = v4;
  OUTLINED_FUNCTION_8_3();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = AnnounceCallBellCATs.announceCallBellStarted(device:);
  v6 = v0[2];

  return v8(v6, 0xD000000000000028, 0x8000000000451CA0, v3);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v3 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(AddCallParticipantCATs.errorParticipantAlreadyActive(participant:shouldIncludeHandleLabel:currentCall:), 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v6();
  }
}

{
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[4] = v3;
  OUTLINED_FUNCTION_0_2(v3, xmmword_424FD0);
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v1;
  v3[4].n128_u64[1] = v4;
  OUTLINED_FUNCTION_8_3();
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = AnnounceCallBellCATs.announceCallBellStarted(device:);

  return v7(0xD000000000000028, 0x8000000000451CA0, v3);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v5 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(AddCallParticipantCATs.errorRestrictedForParticipant(participant:shouldIncludeHandleLabel:), 0, 0);
  }

  else
  {

    v8 = *(v6 + 8);

    return v8(v3);
  }
}

uint64_t AnnounceCallBellCATs.announceCallBellStarted(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceCallBellCATs.announceCallBellStarted(device:)(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  OUTLINED_FUNCTION_0_2(v3, xmmword_424FD0);
  if (a1)
  {
    v4 = type metadata accessor for SirikitDeviceState();
    v5 = a1;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v5;
  v3[4].n128_u64[1] = v4;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t AnnounceCallBellCATs.informDoubleTapToEnd()()
{
  OUTLINED_FUNCTION_27();
  v1 = v0;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v7 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v7(v1, 0xD000000000000025, 0x8000000000451CD0, _swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v5(0xD000000000000025, 0x8000000000451CD0, _swiftEmptyArrayStorage);
}

{
  return OUTLINED_FUNCTION_33_1(37);
}

uint64_t AnnounceCallBellCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v9 - 8);
  outlined init with copy of URL?(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of URL?(a1);
  return v11;
}

unint64_t lazy protocol witness table accessor for type AnnounceCallBellCATs.Properties and conformance AnnounceCallBellCATs.Properties()
{
  result = lazy protocol witness table cache variable for type AnnounceCallBellCATs.Properties and conformance AnnounceCallBellCATs.Properties;
  if (!lazy protocol witness table cache variable for type AnnounceCallBellCATs.Properties and conformance AnnounceCallBellCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceCallBellCATs.Properties and conformance AnnounceCallBellCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AnnounceCallBellCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnnounceCallBellCATs;
  if (!type metadata singleton initialization cache for AnnounceCallBellCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceCallBellCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

PhoneCallFlowDelegatePlugin::AnnounceCallBellCATsSimple::Properties_optional __swiftcall AnnounceCallBellCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceCallBellCATsSimple.Properties.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

PhoneCallFlowDelegatePlugin::AnnounceCallBellCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceCallBellCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceCallBellCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = AnnounceCallBellCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t AnnounceCallBellCATsSimple.announceCallBellEnded()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AnnounceCallBellCATsSimple.announceCallBellEnded();

  return v4(0xD000000000000026, 0x8000000000451C70, _swiftEmptyArrayStorage);
}

BOOL AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t AnnounceCallBellCATsSimple.announceCallBellEndedAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v3;
  v2[1] = AnnounceCallBellCATsSimple.announceCallBellEndedAsLabels();

  return v5(0xD000000000000026, 0x8000000000451C70, _swiftEmptyArrayStorage, &type metadata for AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds);
}

uint64_t AnnounceCallBellCATsSimple.announceCallBellEndedAsLabels()(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

unint64_t lazy protocol witness table accessor for type AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds()
{
  result = lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds);
  }

  return result;
}

uint64_t AnnounceCallBellCATsSimple.announceCallBellStarted(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceCallBellCATsSimple.announceCallBellStarted(device:)()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[4] = v2;
  v3 = OUTLINED_FUNCTION_3_0(v2, xmmword_424FD0);
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  OUTLINED_FUNCTION_8_3();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = AnnounceCallBellCATsSimple.announceCallBellStarted(device:);

  return v6(0xD000000000000028, 0x8000000000451CA0, v2);
}

{
  OUTLINED_FUNCTION_27();
  v7 = *v1;
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  *(v7 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(AnnounceCallBellCATsSimple.announceCallBellStarted(device:), 0, 0);
  }

  else
  {

    v4 = OUTLINED_FUNCTION_5_2();

    return v5(v4);
  }
}

PhoneCallFlowDelegatePlugin::AnnounceCallBellCATsSimple::AnnounceCallBellStartedDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceCallBellCATsSimple::AnnounceCallBellStartedDialogIds_optional *a2@<X8>)
{
  result.value = AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds@<X0>(void *a1@<X8>)
{
  result = AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds.rawValue.getter();
  *a1 = 0x6423317473726966;
  a1[1] = v3;
  return result;
}

uint64_t AnnounceCallBellCATsSimple.announceCallBellStartedAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceCallBellCATsSimple.announceCallBellStartedAsLabels(device:)()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[4] = v2;
  v3 = OUTLINED_FUNCTION_3_0(v2, xmmword_424FD0);
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  OUTLINED_FUNCTION_8_3();
  v4 = swift_task_alloc();
  v0[5] = v4;
  lazy protocol witness table accessor for type AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds();
  OUTLINED_FUNCTION_9();
  *v4 = v5;
  v4[1] = AnnounceCallBellCATsSimple.announceCallBellStartedAsLabels(device:);

  return v7(0xD000000000000028, 0x8000000000451CA0, v2, &type metadata for AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds);
}

{
  OUTLINED_FUNCTION_27();
  v7 = *v1;
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  *(v7 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(AnnounceCallBellCATsSimple.announceCallBellStartedAsLabels(device:), 0, 0);
  }

  else
  {

    v4 = OUTLINED_FUNCTION_5_2();

    return v5(v4);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds()
{
  result = lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds);
  }

  return result;
}

uint64_t AnnounceCallBellCATsSimple.informDoubleTapToEnd()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AnnounceCallBellCATsSimple.announceCallBellEnded();

  return v4(0xD000000000000025, 0x8000000000451CD0, _swiftEmptyArrayStorage);
}

uint64_t AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds.init(rawValue:)(Swift::String string, Swift::OpaquePointer cases)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(cases, v3);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x32676F6C616964;
  }

  else
  {
    return 0x6573557473726946;
  }
}

PhoneCallFlowDelegatePlugin::AnnounceCallBellCATsSimple::InformDoubleTapToEndDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceCallBellCATsSimple::InformDoubleTapToEndDialogIds_optional *a2@<X8>)
{
  result.value = AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds@<X0>(uint64_t *a1@<X8>)
{
  result = AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AnnounceCallBellCATsSimple.informDoubleTapToEndAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds and conformance AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v3;
  v2[1] = AnnounceCallBellCATsSimple.announceCallBellEnded();

  return v5(0xD000000000000025, 0x8000000000451CD0, _swiftEmptyArrayStorage, &type metadata for AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds);
}

unint64_t lazy protocol witness table accessor for type AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds and conformance AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds()
{
  result = lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds and conformance AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds and conformance AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds and conformance AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds and conformance AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds and conformance AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds and conformance AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds);
  }

  return result;
}

uint64_t AnnounceCallBellCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v12 - 8);
  outlined init with copy of URL?(a1, &v16 - v13);
  (*(v7 + 16))(v11, a2, v3);
  v14 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  outlined destroy of URL?(a1);
  return v14;
}

uint64_t AnnounceCallBellCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v2;
}

uint64_t AnnounceCallBellCATsSimple.init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v1;
}

unint64_t lazy protocol witness table accessor for type AnnounceCallBellCATsSimple.Properties and conformance AnnounceCallBellCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.Properties and conformance AnnounceCallBellCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.Properties and conformance AnnounceCallBellCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.Properties and conformance AnnounceCallBellCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AnnounceCallBellCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnnounceCallBellCATsSimple;
  if (!type metadata singleton initialization cache for AnnounceCallBellCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceCallBellCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t AnnounceCallConfirmationStrategy.__allocating_init(wrapped:sharedGlobals:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  AnnounceCallConfirmationStrategy.init(wrapped:sharedGlobals:)(a1, a2);
  return v4;
}

uint64_t AnnounceCallConfirmationStrategy.init(wrapped:sharedGlobals:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 64) = &outlined read-only object #0 of AnnounceCallConfirmationStrategy.init(wrapped:sharedGlobals:);
  *(v2 + 16) = a1;
  outlined init with take of PhoneCallFeatureFlagProviding(a2, v2 + 24);
  return v2;
}

uint64_t AnnounceCallConfirmationStrategy.actionForInput(_:section:isBargeIn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a5@<W5>, uint64_t a6@<X8>)
{
  v130 = a5;
  v128 = a2;
  v125 = type metadata accessor for ConfirmationResponse();
  OUTLINED_FUNCTION_7();
  v127 = v9;
  __chkstk_darwin(v10);
  v118 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSg_ADtMd, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_16_2();
  v122 = v13;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_13_5();
  v121 = v15;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v16);
  v133 = &v114 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  __chkstk_darwin(v18 - 8);
  OUTLINED_FUNCTION_16_2();
  v115 = v19;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_13_5();
  v117 = v21;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_13_5();
  v116 = v23;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_13_5();
  v120 = v25;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v26);
  v28 = &v114 - v27;
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_13_5();
  v134 = v30;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v31);
  v135 = &v114 - v32;
  v33 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  v35 = v34;
  __chkstk_darwin(v36);
  v38 = &v114 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  v40 = __swift_project_value_buffer(v39, static Logger.siriPhone);
  v41 = *(v35 + 16);
  v131 = a1;
  v41(v38, a1, v33);

  v124 = v40;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  v44 = os_log_type_enabled(v42, v43);
  v129 = a6;
  v119 = v28;
  v123 = a3;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v136[0] = v46;
    *v45 = 136315906;
    *(v45 + 4) = OUTLINED_FUNCTION_19_15("n26AnnounceCallBellCATsSimple");
    *(v45 + 12) = 2080;
    *(v45 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, a3, v136);
    *(v45 + 22) = 1024;
    v47 = v130;
    *(v45 + 24) = v130 & 1;
    *(v45 + 28) = 2080;
    lazy protocol witness table accessor for type ConfirmationResponse and conformance ConfirmationResponse(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    (*(v35 + 8))(v38, v33);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v136);

    *(v45 + 30) = v51;
    _os_log_impl(&dword_0, v42, v43, "#AnnounceCallConfirmationStrategy %s section %s, isBargeIn: %{BOOL}d, input: %s", v45, 0x26u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v46);
    OUTLINED_FUNCTION_26_0(v45);

    v52 = v134;
  }

  else
  {

    (*(v35 + 8))(v38, v33);
    v52 = v134;
    v47 = v130;
  }

  v53 = v135;
  v54 = v133;
  if ((v47 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_11();
    return (*(v70 + 168))();
  }

  v55 = v132;
  outlined init with copy of SignalProviding(v132 + 24, v136);
  type metadata accessor for YesNoConfirmationParser();
  v56 = swift_allocObject();
  *(v56 + 16) = 5;
  outlined init with take of PhoneCallFeatureFlagProviding(v136, v56 + 24);
  YesNoConfirmationParser.parseConfirmationResponse(input:)(v53);

  v58 = *(v55 + 64);
  v59 = *(v58 + 16);
  if (!v59)
  {
    __break(1u);
    return result;
  }

  v60 = *(v58 + v59 + 31);
  if (v60)
  {
    v61 = 0xD000000000000028;
  }

  else
  {
    v61 = 0xD00000000000002ALL;
  }

  if (v60)
  {
    v62 = "Call#IntentHandledResponse";
  }

  else
  {
    v62 = "amedGroupWithThree";
  }

  v63 = v61 == v128 && (v62 | 0x8000000000000000) == v123;
  if (v63)
  {
  }

  else
  {
    v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v64 & 1) == 0)
    {
      v65 = v117;
      v66 = v125;
      (*(v127 + 104))(v117, enum case for ConfirmationResponse.rejected(_:), v125);
      __swift_storeEnumTagSinglePayload(v65, 0, 1, v66);
      v67 = *(v126 + 48);
      v68 = v122;
      outlined init with copy of ConfirmationResponse?(v53, v122);
      outlined init with copy of ConfirmationResponse?(v65, v68 + v67);
      OUTLINED_FUNCTION_21_3(v68);
      if (!v63)
      {
        v90 = v122;
        v91 = v115;
        outlined init with copy of ConfirmationResponse?(v122, v115);
        OUTLINED_FUNCTION_21_3(v90 + v67);
        if (!v92)
        {
          v101 = v127;
          v102 = v122;
          v103 = OUTLINED_FUNCTION_8_16();
          v104(v103);
          OUTLINED_FUNCTION_0_17();
          lazy protocol witness table accessor for type ConfirmationResponse and conformance ConfirmationResponse(v105, v106, &protocol conformance descriptor for ConfirmationResponse);
          v98 = dispatch thunk of static Equatable.== infix(_:_:)();
          v107 = *(v101 + 8);
          v107(v52, v66);
          OUTLINED_FUNCTION_20_6(v65);
          v107(v91, v66);
          v100 = v102;
          goto LABEL_52;
        }

        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v65, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
        (*(v127 + 8))(v91, v66);
        goto LABEL_50;
      }

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v65, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      OUTLINED_FUNCTION_21_3(v122 + v67);
      if (!v63)
      {
LABEL_50:
        v82 = v122;
        goto LABEL_51;
      }

      v69 = v122;
      goto LABEL_40;
    }
  }

  v71 = *(v127 + 104);
  v72 = v125;
  v71(v52, enum case for ConfirmationResponse.confirmed(_:), v125);
  OUTLINED_FUNCTION_18_5();
  v73 = v126;
  v74 = *(v126 + 48);
  outlined init with copy of ConfirmationResponse?(v53, v54);
  outlined init with copy of ConfirmationResponse?(v52, v54 + v74);
  OUTLINED_FUNCTION_1_11(v54);
  if (v63)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v52, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    OUTLINED_FUNCTION_1_11(v54 + v74);
    if (v63)
    {
      v69 = v54;
      goto LABEL_40;
    }
  }

  else
  {
    v75 = v119;
    outlined init with copy of ConfirmationResponse?(v54, v119);
    OUTLINED_FUNCTION_1_11(v54 + v74);
    if (!v76)
    {
      v83 = v127;
      v84 = OUTLINED_FUNCTION_8_16();
      v85(v84);
      OUTLINED_FUNCTION_0_17();
      lazy protocol witness table accessor for type ConfirmationResponse and conformance ConfirmationResponse(v86, v87, &protocol conformance descriptor for ConfirmationResponse);
      v88 = dispatch thunk of static Equatable.== infix(_:_:)();
      v89 = *(v83 + 8);
      v89(v52, v72);
      OUTLINED_FUNCTION_20_6(v134);
      v89(v75, v72);
      v73 = v126;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v54, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      v53 = v135;
      if (v88)
      {
        goto LABEL_46;
      }

      goto LABEL_35;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v52, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    (*(v127 + 8))(v75, v72);
    v53 = v135;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v54, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMd, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMR);
LABEL_35:
  v77 = v120;
  v71(v120, enum case for ConfirmationResponse.rejected(_:), v72);
  OUTLINED_FUNCTION_18_5();
  v78 = *(v73 + 48);
  v79 = v121;
  outlined init with copy of ConfirmationResponse?(v53, v121);
  outlined init with copy of ConfirmationResponse?(v77, v79 + v78);
  OUTLINED_FUNCTION_1_11(v79);
  if (!v63)
  {
    v80 = v116;
    outlined init with copy of ConfirmationResponse?(v79, v116);
    OUTLINED_FUNCTION_1_11(v79 + v78);
    if (!v81)
    {
      v93 = v127;
      v94 = OUTLINED_FUNCTION_8_16();
      v95(v94);
      OUTLINED_FUNCTION_0_17();
      lazy protocol witness table accessor for type ConfirmationResponse and conformance ConfirmationResponse(v96, v97, &protocol conformance descriptor for ConfirmationResponse);
      v98 = dispatch thunk of static Equatable.== infix(_:_:)();
      v99 = *(v93 + 8);
      v99(v77, v72);
      OUTLINED_FUNCTION_20_6(v77);
      v99(v80, v72);
      v100 = v79;
LABEL_52:
      OUTLINED_FUNCTION_20_6(v100);
      goto LABEL_53;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v77, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    (*(v127 + 8))(v80, v72);
    goto LABEL_44;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v77, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_1_11(v79 + v78);
  if (!v63)
  {
LABEL_44:
    v82 = v79;
LABEL_51:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v82, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMd, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMR);
    v98 = 0;
    goto LABEL_53;
  }

  v69 = v79;
LABEL_40:
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v69, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
LABEL_46:
  v98 = 1;
LABEL_53:
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *&v136[0] = v111;
    *v110 = 136315394;
    *(v110 + 4) = OUTLINED_FUNCTION_19_15("n26AnnounceCallBellCATsSimple");
    *(v110 + 12) = 2080;
    if (v98)
    {
      v112 = 0x676E696C646E6148;
    }

    else
    {
      v112 = 0x676E69726F6E6749;
    }

    v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, 0xE800000000000000, v136);

    *(v110 + 14) = v113;
    _os_log_impl(&dword_0, v108, v109, "#AnnounceCallConfirmationStrategy %s %s barge-in Input", v110, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v111);
    OUTLINED_FUNCTION_26_0(v110);
  }

  if (v98)
  {
    static ActionForInput.handle()();
  }

  else
  {
    static ActionForInput.ignore()();
  }

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v53, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
}

uint64_t AnnounceCallConfirmationStrategy.parseConfirmationResponse(input:section:isBargeIn:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(AnnounceCallConfirmationStrategy.parseConfirmationResponse(input:section:isBargeIn:), 0, 0);
}

uint64_t AnnounceCallConfirmationStrategy.parseConfirmationResponse(input:section:isBargeIn:)()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_11();
  v7 = (*(v1 + 176) + **(v1 + 176));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[5] = v2;
  *v2 = v3;
  v2[1] = AnnounceCallConfirmationStrategy.parseConfirmationResponse(input:section:isBargeIn:);
  v4 = v0[2];
  v5 = v0[3];

  return v7(v4, v5);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return v4();
  }

  else
  {

    return _swift_task_switch(AnnounceCallConfirmationStrategy.parseConfirmationResponse(input:section:isBargeIn:), 0, 0);
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  v2 = enum case for PromptResult.answered<A>(_:);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin08IncomingG18ActionConfirmationOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin08IncomingG18ActionConfirmationOGMR);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 104))(v1, v2);
  OUTLINED_FUNCTION_11();

  return v4();
}

void *AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin21BargeInCapableSectionVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin21BargeInCapableSectionVGMR);
  result = swift_allocObject();
  *(result + 1) = xmmword_424FF0;
  v4 = *(v1 + 64);
  v5 = *(v4 + 16);
  if (!v5)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v6 = result;
  if (*(v4 + 32))
  {
    v7 = 0xD000000000000028;
  }

  else
  {
    v7 = 0xD00000000000002ALL;
  }

  if (*(v4 + 32))
  {
    v8 = "Call#IntentHandledResponse";
  }

  else
  {
    v8 = "amedGroupWithThree";
  }

  v9 = v8 | 0x8000000000000000;
  OUTLINED_FUNCTION_50();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = v1;
  v6[4] = v7;
  v6[5] = v9;
  v6[6] = &async function pointer to partial apply for closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:);
  v6[7] = result;
  if (v5 == 1)
  {
    goto LABEL_17;
  }

  v10 = *(v4 + 33);
  if (*(v4 + 33))
  {
    v11 = 0xD000000000000028;
  }

  else
  {
    v11 = 0xD00000000000002ALL;
  }

  if (v10)
  {
    v12 = "Call#IntentHandledResponse";
  }

  else
  {
    v12 = "amedGroupWithThree";
  }

  v13 = v12 | 0x8000000000000000;
  OUTLINED_FUNCTION_50();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  v6[8] = v11;
  v6[9] = v13;
  v6[10] = &async function pointer to partial apply for closure #2 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:);
  v6[11] = v14;
  v15 = a1;
  swift_retain_n();
  v16 = v15;
  return v6;
}

uint64_t closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v3[15] = *a3;
  type metadata accessor for DialogPhase();
  v3[16] = swift_task_alloc();
  v4 = type metadata accessor for OutputGenerationManifest();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  type metadata accessor for Locale();
  v3[20] = swift_task_alloc();
  type metadata accessor for CATOption();
  v3[21] = swift_task_alloc();

  return _swift_task_switch(closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:), 0, 0);
}

uint64_t closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)()
{
  v1 = v0[20];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  type metadata accessor for AnnounceIncomingCallCATsSimple(0);
  static CATOption.defaultMode.getter();
  v5 = CATWrapperSimple.__allocating_init(options:globals:)();
  v0[22] = v5;
  v6 = v3[6];
  v7 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v6);
  (*(v7 + 8))(v6, v7);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  dispatch thunk of DeviceState.siriLocale.getter();
  type metadata accessor for AppInfoBuilder();
  v8 = swift_allocObject();
  v9 = _s27PhoneCallFlowDelegatePlugin0a8IncomingB0C14intentResponse10siriLocale7options14appInfoBuilderAcA0fb6IntentH0_p_10Foundation0J0VAA0aB6RecordC7OptionsVAA03AppM8Building_ptcfCTf4nnnen_nAA0smN0C_Tt3g5Tf4ennn_n(v4, v1, 2, v8, *(v2 + 80));
  v0[23] = v9;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v12 = (*(*v5 + class metadata base offset for AnnounceIncomingCallCATsSimple) + **(*v5 + class metadata base offset for AnnounceIncomingCallCATsSimple));
  v10 = swift_task_alloc();
  v0[24] = v10;
  *v10 = v0;
  v10[1] = closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:);

  return v12(v9);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  *(v2 + 200) = v1;
  *(v2 + 208) = v0;

  if (v0)
  {
    v3 = closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:);
  }

  else
  {

    v3 = closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v63 = v0;
  if (one-time initialization token for announceTelephony != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v1 = *(v0 + 200);
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.announceTelephony);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v4, v5))
    {
      break;
    }

    v6 = *(v0 + 200);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v59 = v8;
    *v7 = 136315394;
    v9 = [v6 catId];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v59);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2080;
    v14 = [v6 dialog];
    type metadata accessor for DialogElement();
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = specialized Array.count.getter(v15);
    if (!v16)
    {

LABEL_16:
      v36 = Array.description.getter();
      v38 = v37;

      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v59);

      *(v7 + 14) = v39;
      _os_log_impl(&dword_0, v4, v5, "#AnnounceCallConfirmationStrategy Call Announcement: { \n    catId=%s,\n    dialog={\n        %s\n    }\n}", v7, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0(v8);
      OUTLINED_FUNCTION_26_0(v7);
      break;
    }

    v17 = v16;
    v60 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v17 < 0)
    {
      __break(1u);
      return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v18, v19, v20, v21, v22, v23, v24, v25);
    }

    v52 = v8;
    v53 = v5;
    v54 = v7;
    v55 = v4;
    v26 = 0;
    v27 = v60;
    v57 = v15 & 0xFFFFFFFFFFFFFF8;
    v58 = v15 & 0xC000000000000001;
    v56 = v0;
    v28 = v15;
    v29 = v17;
    while (1)
    {
      v30 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v58)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v26 >= *(v57 + 16))
        {
          goto LABEL_21;
        }

        v31 = *(v15 + 8 * v26 + 32);
      }

      v32 = v31;
      v62[0] = v31;
      closure #1 in implicit closure #2 in closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)(v62, v61);

      v33 = v61[0];
      v34 = v61[1];
      v60 = v27;
      v0 = v27[2];
      if (v0 >= v27[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v27 = v60;
      }

      v27[2] = v0 + 1;
      v35 = &v27[2 * v0];
      v35[4] = v33;
      v35[5] = v34;
      ++v26;
      v15 = v28;
      if (v30 == v29)
      {

        v4 = v55;
        v0 = v56;
        v7 = v54;
        v5 = v53;
        v8 = v52;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  v40 = *(v0 + 200);
  v41 = *(v0 + 112);
  v42 = v41[6];
  v43 = v41[7];
  __swift_project_boxed_opaque_existential_1(v41 + 3, v42);
  (*(v43 + 136))(v42, v43);
  v44 = *(v0 + 80);
  v45 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v46 = swift_allocObject();
  *(v0 + 216) = v46;
  *(v46 + 16) = xmmword_426260;
  *(v46 + 32) = v40;
  v47 = v40;
  static DialogPhase.confirmed.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v48 = *(v45 + 8);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 224) = v49;
  *v49 = v50;
  v49[1] = closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:);
  v20 = *(v0 + 152);
  v18 = *(v0 + 96);
  v19 = v46;
  v21 = v44;
  v22 = v48;

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v18, v19, v20, v21, v22, v23, v24, v25);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v2 = v1[19];
  v3 = v1[18];
  v4 = v1[17];
  v5 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:), 0, 0);
}

{
  OUTLINED_FUNCTION_27();

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  OUTLINED_FUNCTION_11();

  return v1();
}

{

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t closure #1 in implicit closure #2 in closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  _StringGuts.grow(_:)(30);
  v4 = [v3 id];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v21 = v5;
  v22 = v7;
  v8._countAndFlagsBits = 0x72506C6C7566203ALL;
  v8._object = 0xEC0000003D746E69;
  String.append(_:)(v8);
  v9 = [v3 fullPrint];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = String.debugDescription.getter();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x70536C6C7566202CLL;
  v14._object = 0xEC0000003D6B6165;
  String.append(_:)(v14);
  v15 = [v3 fullSpeak];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = String.debugDescription.getter();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  *a2 = v21;
  a2[1] = v22;
  return result;
}

uint64_t closure #2 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(closure #2 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:), 0, 0);
}

uint64_t closure #2 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_11();
  v7 = (*(v1 + 224) + **(v1 + 224));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[5] = v2;
  *v2 = v3;
  v2[1] = closure #2 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:);
  v4 = v0[4];
  v5 = v0[2];

  return v7(v5, v4);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  OUTLINED_FUNCTION_11();

  return v3();
}

void *AnnounceCallConfirmationStrategy.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return v0;
}

uint64_t AnnounceCallConfirmationStrategy.__deallocating_deinit()
{
  AnnounceCallConfirmationStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for BargeInCapablePromptForConfirmationStrategyAsync.parseConfirmationResponse(input:section:isBargeIn:) in conformance AnnounceCallConfirmationStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (*(**v7 + 136) + **(**v7 + 136));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = closure #2 in ActionableCallControlFlow.execute();

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t outlined init with copy of ConfirmationResponse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ConfirmationResponse and conformance ConfirmationResponse(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)()
{
  OUTLINED_FUNCTION_27();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_12(v1);

  return closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)(v3, v4, v5);
}

uint64_t partial apply for closure #2 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)()
{
  OUTLINED_FUNCTION_27();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_12(v1);

  return closure #2 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)(v3, v4, v5);
}

unint64_t type metadata accessor for DialogElement()
{
  result = lazy cache variable for type metadata for DialogElement;
  if (!lazy cache variable for type metadata for DialogElement)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DialogElement);
  }

  return result;
}

uint64_t AnnounceCallFlow.State.description.getter(void *a1)
{
  if (!a1)
  {
    return 0x6E41726566666F2ELL;
  }

  _StringGuts.grow(_:)(26);

  v2 = [a1 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0xD000000000000017;
}

void key path setter for AnnounceCallFlow.state : AnnounceCallFlow(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AnnounceCallFlow.state.setter(v1);
}

void AnnounceCallFlow.state.didset()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v6 = *(v1 + 16);
    v7 = v6;
    v8 = AnnounceCallFlow.State.description.getter(v6);
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v13);

    *(v4 + 4) = v11;
    _os_log_impl(&dword_0, oslog, v3, "#AnnounceCallFlow state = %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
  }
}

void *PhoneCallProvider.mockGlobals.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void AnnounceCallFlow.state.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  v4 = a1;

  AnnounceCallFlow.state.didset();
}

uint64_t AnnounceCallFlow.intentRecord.getter()
{
  v1 = objc_allocWithZone(INIdentifyIncomingCallerIntent);

  [v1 init];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIdentifyIncomingCallerIntentResponse, INIdentifyIncomingCallerIntentResponse_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_426260;
  v3 = *(v0 + 24);
  *(v2 + 32) = v3;
  v4 = v3;
  INIdentifyIncomingCallerIntentResponse.init(statusCode:callRecords:)(2, v2);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntent_ptr);

  return IntentResolutionRecord.init(app:intent:intentResponse:)();
}

uint64_t AnnounceCallFlow.__allocating_init(directAction:sharedGlobals:)(uint64_t a1, void *a2)
{
  v3 = v2;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  memcpy(__dst, &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  v18 = &type metadata for PhoneCallFeatureFlags;
  v19 = &protocol witness table for PhoneCallFeatureFlags;
  *&v17 = swift_allocObject();
  memcpy((v17 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation(&v17, v20);
  outlined init with copy of PhoneCallFeatureFlags(__dst, v15);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = OUTLINED_FUNCTION_1_16();
  v7(v6);
  __swift_project_boxed_opaque_existential_1(v15, v16);
  OUTLINED_FUNCTION_1_16();
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    if (one-time initialization token for siriFaceTimeMacExtension != -1)
    {
      swift_once();
    }

    v8 = &static DefaultPhoneApps.siriFaceTimeMacExtension;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v15, v16);
    OUTLINED_FUNCTION_1_16();
    if (dispatch thunk of DeviceState.isWatch.getter())
    {
      if (one-time initialization token for siriPhoneWatchExtension != -1)
      {
        swift_once();
      }

      v8 = &static DefaultPhoneApps.siriPhoneWatchExtension;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v15, v16);
      OUTLINED_FUNCTION_1_16();
      if (dispatch thunk of DeviceState.isXRDevice.getter())
      {
        if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
        {
          swift_once();
        }

        v8 = &static DefaultPhoneApps.siriPhoneFaceTimeExtension;
      }

      else
      {
        if (one-time initialization token for siriPhoneExtension != -1)
        {
          swift_once();
        }

        v8 = &static DefaultPhoneApps.siriPhoneExtension;
      }
    }
  }

  v9 = *v8;

  v10 = __swift_destroy_boxed_opaque_existential_1(v15);
  v11 = (*(*a1 + 352))(v10);
  outlined init with copy of SignalProviding(a2, v15);
  v12 = *(v3 + 152);

  v13 = v12(0, v11, v9, 0, v15);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v13;
}

uint64_t AnnounceCallFlow.__allocating_init(directAction:sharedGlobals:appFinder:)(uint64_t a1, void *a2, void *a3)
{
  v29 = *(*a1 + 256);
  v6 = (v29)(a1);
  v7 = outlined bridged method (ob) of @objc INCallRecord.providerBundleId.getter(v6);
  if (v8 && (v9 = v7, v10 = v8, v11 = a3[3], v12 = a3[4], v30 = a3, __swift_project_boxed_opaque_existential_1(a3, v11), v14 = a2[3], v13 = a2[4], __swift_project_boxed_opaque_existential_1(a2, v14), (*(v13 + 8))(v32, v14, v13), AnnotatedAppFinding.find(appQuery:device:)(v9, v10, _swiftEmptyArrayStorage, v32, v11, v12, v33), , v15 = __swift_destroy_boxed_opaque_existential_1(v32), (v16 = *&v33[0]) != 0))
  {
    v17 = *(&v33[0] + 1);
    v18 = v34;
    v19 = (*(*a1 + 200))(v15);
    v20 = v29();
    outlined init with copy of SignalProviding(a2, v32);
    v21 = *(v31 + 152);

    v22 = v21(v19, v20, v16, 1, v32);

    v35 = v17;
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v35, &_sShySSGMd, &_sShySSGMR);
    v36 = v33[1];
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v36, &_sSSSgMd, &_sSSSgMR);
    v37 = v18;
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v37, &_sShySSGMd, &_sShySSGMR);
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(a2);
    return v22;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.siriPhone);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000051, 0x8000000000457750, v32);
      _os_log_impl(&dword_0, v25, v26, "%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_26_0(v28);
      OUTLINED_FUNCTION_26_0(v27);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t AnnounceCallFlow.__allocating_init(state:callRecord:app:invocationType:sharedGlobals:)(void *a1, void *a2, uint64_t a3, char a4, __int128 *a5)
{
  v10 = swift_allocObject();
  AnnounceCallFlow.init(state:callRecord:app:invocationType:sharedGlobals:)(a1, a2, a3, a4 & 1, a5);
  return v10;
}

uint64_t AnnounceCallFlow.init(state:callRecord:app:invocationType:sharedGlobals:)(void *a1, void *a2, uint64_t a3, char a4, __int128 *a5)
{
  v6 = v5;
  v12 = type metadata accessor for CATOption();
  __chkstk_darwin(v12 - 8);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v13 = type metadata accessor for AnnounceIncomingCallCATsSimple(0);
  v14 = a1;
  v15 = a2;
  static CATOption.defaultMode.getter();
  v16 = CATWrapperSimple.__allocating_init(options:globals:)();

  *(v6 + 32) = v16;
  *(v6 + 40) = v18;
  *(v6 + 56) = v13;
  *(v6 + 64) = &protocol witness table for AnnounceIncomingCallCATsSimple;
  *(v6 + 72) = v15;
  *(v6 + 80) = a4 & 1;
  *(v6 + 128) = a3;
  outlined init with take of SPHConversation(a5, v6 + 88);
  return v6;
}

uint64_t AnnounceCallFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[20] = v2;
  v1[21] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo024INIdentifyIncomingCallerD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo024INIdentifyIncomingCallerD0CSo0ghiD8ResponseCGMR);
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return _swift_task_switch(AnnounceCallFlow.execute(), 0, 0);
}

{
  v1 = (*(**(v0 + 168) + 120))();
  *(v0 + 208) = v1;
  if (v1)
  {
    v2 = v1;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    *(v0 + 216) = __swift_project_value_buffer(v3, static Logger.siriPhone);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "#AnnounceCallFlow: playNotificationSound without ringtone, use regular chime", v6, 2u);
      OUTLINED_FUNCTION_26_0(v6);
    }

    v7 = *(v0 + 168);

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIPlayNotificationSound, SAUIPlayNotificationSound_ptr);
    v8 = [v2 request];
    v9 = [v8 identifier];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = SAUIPlayNotificationSound.init(notificationId:soundType:)(v10, v12, v13, v14);
    *(v0 + 224) = v15;
    v16 = v7[14];
    v17 = v7[15];
    __swift_project_boxed_opaque_existential_1(v7 + 11, v16);
    (*(v17 + 32))(v16, v17);
    v18 = *(v0 + 136);
    v19 = *(v0 + 144);
    __swift_project_boxed_opaque_existential_1((v0 + 112), v18);
    v20 = swift_task_alloc();
    *(v0 + 232) = v20;
    v21 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
    *v20 = v0;
    v20[1] = AnnounceCallFlow.execute();

    return AceServiceInvokerAsync.submit<A>(_:)(v15, v18, v21, v19);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "#AnnounceCallFlow: Pushing IncomingCallFollowUpFlow for follow-up offer", v25, 2u);
      OUTLINED_FUNCTION_26_0(v25);
    }

    v27 = *(v0 + 192);
    v26 = *(v0 + 200);
    v28 = *(v0 + 176);
    v29 = *(v0 + 184);
    v30 = *(v0 + 168);

    v31 = *(v30 + 128);

    AnnounceCallFlow.intentRecord.getter();
    v32 = IntentResolutionRecord.intent.getter();
    v33 = *(v29 + 8);
    v33(v26, v28);
    AnnounceCallFlow.intentRecord.getter();
    v34 = IntentResolutionRecord.intentResponse.getter();
    v33(v27, v28);
    outlined init with copy of AnnounceIncomingCallerOutputStrategy(v30 + 32, v0 + 16);
    outlined init with copy of SignalProviding(v30 + 88, v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08Incomingb8FollowUpC0CySo010INIdentifyF12CallerIntentCSo0ifjK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08Incomingb8FollowUpC0CySo010INIdentifyF12CallerIntentCSo0ifjK8ResponseCGMR);
    v35 = swift_allocObject();
    v35[5] = &type metadata for AnnounceIncomingCallerOutputStrategy;
    v35[6] = &protocol witness table for AnnounceIncomingCallerOutputStrategy;
    v36 = swift_allocObject();
    v35[2] = v36;
    v37 = *(v0 + 32);
    *(v36 + 16) = *(v0 + 16);
    *(v36 + 32) = v37;
    *(v36 + 48) = *(v0 + 48);
    *(v36 + 64) = *(v0 + 64);
    v35[12] = v31;
    v35[13] = v32;
    v35[14] = v34;
    outlined init with take of SPHConversation((v0 + 72), (v35 + 7));
    *(v0 + 152) = v35;
    lazy protocol witness table accessor for type IncomingCallFollowUpFlow<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance IncomingCallFollowUpFlow<A, B>();
    static ExecuteResponse.complete<A>(next:)();

    OUTLINED_FUNCTION_11();

    return v38();
  }
}

{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 240) = v0;

  if (v0)
  {
    v7 = AnnounceCallFlow.execute();
  }

  else
  {

    v7 = AnnounceCallFlow.execute();
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1((v1 + 112));
  OUTLINED_FUNCTION_6_11();
  static ExecuteResponse.replan(requireInput:)();

  OUTLINED_FUNCTION_11();

  return v3();
}

{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v1 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v1 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v2, v3, "#AnnounceCallFlow: Error playing sound %@, proceeding to dialog", v1, 0xCu);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v4, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0(v4);
    OUTLINED_FUNCTION_26_0(v1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_11();
  static ExecuteResponse.replan(requireInput:)();

  OUTLINED_FUNCTION_11();

  return v6();
}

uint64_t AnnounceCallFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnnounceCallFlow();
  lazy protocol witness table accessor for type AnnounceCallFlow and conformance AnnounceCallFlow();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t AnnounceCallFlow.deinit()
{
  outlined destroy of AnnounceIncomingCallerOutputStrategy(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  return v0;
}

uint64_t AnnounceCallFlow.__deallocating_deinit()
{
  AnnounceCallFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance AnnounceCallFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for Flow.onAsync(input:) in conformance AnnounceCallFlow;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance AnnounceCallFlow()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t protocol witness for Flow.execute() in conformance AnnounceCallFlow(uint64_t a1)
{
  v6 = (*(**v1 + 168) + **(**v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance AnnounceCallFlow;

  return v6(a1);
}

uint64_t protocol witness for Flow.execute() in conformance AnnounceCallFlow()
{
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t protocol witness for Flow.exitValue.getter in conformance AnnounceCallFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AnnounceCallFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t outlined bridged method (ob) of @objc INCallRecord.providerBundleId.getter(void *a1)
{
  v2 = [a1 providerBundleId];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t lazy protocol witness table accessor for type IncomingCallFollowUpFlow<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance IncomingCallFollowUpFlow<A, B>()
{
  result = lazy protocol witness table cache variable for type IncomingCallFollowUpFlow<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance IncomingCallFollowUpFlow<A, B>;
  if (!lazy protocol witness table cache variable for type IncomingCallFollowUpFlow<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance IncomingCallFollowUpFlow<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s27PhoneCallFlowDelegatePlugin08Incomingb8FollowUpC0CySo010INIdentifyF12CallerIntentCSo0ifjK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08Incomingb8FollowUpC0CySo010INIdentifyF12CallerIntentCSo0ifjK8ResponseCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingCallFollowUpFlow<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance IncomingCallFollowUpFlow<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnnounceCallFlow and conformance AnnounceCallFlow()
{
  result = lazy protocol witness table cache variable for type AnnounceCallFlow and conformance AnnounceCallFlow;
  if (!lazy protocol witness table cache variable for type AnnounceCallFlow and conformance AnnounceCallFlow)
  {
    type metadata accessor for AnnounceCallFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceCallFlow and conformance AnnounceCallFlow);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnnounceCallFlow.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for AnnounceCallFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for AnnounceCallFlow.State(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for AnnounceCallFlow.State(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t one-time initialization function for identifier()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AnnounceDropInCallDirectAction.identifier = result;
  unk_5996C0 = v1;
  return result;
}

{
  v0._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = DIIdentifier.init(_:)(v0);
  *&static AnnounceVoicemailDirectAction.identifier = v2.namespace._countAndFlagsBits;
  *(&static AnnounceVoicemailDirectAction.identifier + 1) = v2.namespace._object;
  qword_599748 = v2.id._countAndFlagsBits;
  unk_599750 = v2.id._object;
  return v2.namespace._countAndFlagsBits;
}

{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static IdentifyIncomingCallerDirectAction.identifier = result;
  *algn_599AD8 = v1;
  return result;
}

uint64_t *AnnounceDropInCallDirectAction.identifier.unsafeMutableAddressor()
{
  if (one-time initialization token for identifier != -1)
  {
    OUTLINED_FUNCTION_10_12(&one-time initialization token for identifier);
  }

  return &static AnnounceDropInCallDirectAction.identifier;
}

uint64_t static AnnounceDropInCallDirectAction.identifier.getter()
{
  if (one-time initialization token for identifier != -1)
  {
    OUTLINED_FUNCTION_10_12(&one-time initialization token for identifier);
  }

  v0 = static AnnounceDropInCallDirectAction.identifier;

  return v0;
}

uint64_t one-time initialization function for announcementTypeKey()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AnnounceDropInCallDirectAction.announcementTypeKey = result;
  unk_54D9A0 = v1;
  return result;
}

uint64_t AnnounceDropInCallDirectAction.init(from:)(uint64_t a1)
{
  if (one-time initialization token for announcementTypeKey != -1)
  {
    swift_once();
  }

  if (*(a1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(static AnnounceDropInCallDirectAction.announcementTypeKey, unk_54D9A0), (v3 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v2, v6);

    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_26_8(v2);
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_26_8(v2);
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v3)
  {
    return OUTLINED_FUNCTION_26_8(v2);
  }

  else
  {
    return 0;
  }
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    outlined init with copy of Any(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v4)
  {
    return OUTLINED_FUNCTION_26_8(v3);
  }

  else
  {
    return 0;
  }
}

{
  if (!*(a3 + 16))
  {
    return 5;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 5;
  }
}

void *specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t specialized Dictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for SignalValue();
    OUTLINED_FUNCTION_23_1();
    (*(v11 + 16))(a4, v9 + *(v11 + 72) * v8, v10);
    v12 = a4;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v14 = type metadata accessor for SignalValue();
    v12 = a4;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_26_8(v1);
}

uint64_t AnnounceDropInCallFlow.__allocating_init(announcementType:sharedGlobals:announceCallBellCatPatterns:responseGenerator:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = swift_allocObject();
  v11 = a3[3];
  v10 = a3[4];
  __swift_mutable_project_boxed_opaque_existential_1(a3, v11);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v14 = OUTLINED_FUNCTION_29_5(v13);
  v15(v14);
  v17 = a4[3];
  v16 = a4[4];
  __swift_mutable_project_boxed_opaque_existential_1(a4, v17);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_4();
  v20 = OUTLINED_FUNCTION_24_0(v19);
  v21(v20);
  v22 = specialized AnnounceDropInCallFlow.init(announcementType:sharedGlobals:announceCallBellCatPatterns:responseGenerator:)(a1, a2, v4, v5, v9, v11, v17, v10, v16);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v22;
}

uint64_t AnnounceDropInCallFlow.init(announcementType:sharedGlobals:announceCallBellCatPatterns:responseGenerator:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a3[3];
  v10 = a3[4];
  __swift_mutable_project_boxed_opaque_existential_1(a3, v11);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v14 = OUTLINED_FUNCTION_29_5(v13);
  v15(v14);
  v17 = a4[3];
  v16 = a4[4];
  __swift_mutable_project_boxed_opaque_existential_1(a4, v17);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_4();
  v20 = OUTLINED_FUNCTION_24_0(v19);
  v21(v20);
  v22 = specialized AnnounceDropInCallFlow.init(announcementType:sharedGlobals:announceCallBellCatPatterns:responseGenerator:)(a1, a2, v4, v5, v24, v11, v17, v10, v16);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v22;
}

uint64_t AnnounceDropInCallFlow.on(input:)()
{
  v1 = v0[16];
  v2 = v0[17];
  __swift_project_boxed_opaque_existential_1(v0 + 13, v1);
  (*(v2 + 8))(v12, v1, v2);
  OUTLINED_FUNCTION_7_0(v12);
  v3 = dispatch thunk of DeviceState.isHomePod.getter();
  __swift_destroy_boxed_opaque_existential_1(v12);
  if ((v3 & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.siriPhone);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_42();
      v12[0] = OUTLINED_FUNCTION_36();
      *v7 = 136315138;
      type metadata accessor for AnnounceDropInCallFlow(0);

      v8 = String.init<A>(describing:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v12);

      *(v7 + 4) = v10;
      _os_log_impl(&dword_0, v5, v6, "#%s Drop in call is only supported on HomePod.", v7, 0xCu);
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_26_0(v7);
    }
  }

  return v3 & 1;
}

uint64_t AnnounceDropInCallFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnnounceDropInCallFlow(0);
  lazy protocol witness table accessor for type AnnounceDropInCallFlow and conformance AnnounceDropInCallFlow(&lazy protocol witness table cache variable for type AnnounceDropInCallFlow and conformance AnnounceDropInCallFlow, type metadata accessor for AnnounceDropInCallFlow, &protocol conformance descriptor for AnnounceDropInCallFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t AnnounceDropInCallFlow.execute()(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return _swift_task_switch(AnnounceDropInCallFlow.execute(), 0, 0);
}

uint64_t AnnounceDropInCallFlow.execute()()
{
  v30 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v6 = OUTLINED_FUNCTION_42();
    v7 = OUTLINED_FUNCTION_36();
    v29 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    type metadata accessor for AnnounceDropInCallFlow(0);
    OUTLINED_FUNCTION_31_3();

    v8 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v29);
    OUTLINED_FUNCTION_31_3();

    *(v6 + 4) = v1;
    _os_log_impl(&dword_0, v3, v4, "#%s Announcing drop in call.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_26_0(v7);
    OUTLINED_FUNCTION_26_0(v6);
  }

  v10 = v0[14];
  v11 = v10[16];
  v12 = v10[17];
  __swift_project_boxed_opaque_existential_1(v10 + 13, v11);
  v13 = *(v12 + 16);

  v13(v11, v12);
  v14 = v0[5];
  v15 = v0[7];
  v16 = __swift_project_boxed_opaque_existential_1(v0 + 2, v14);
  v0[11] = v14;
  v0[12] = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v16, v14);
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();

  v18 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = v0[14];
    v22 = OUTLINED_FUNCTION_42();
    v23 = OUTLINED_FUNCTION_36();
    v29 = v23;
    *v22 = 136315138;
    v0[2] = v21;
    type metadata accessor for AnnounceDropInCallFlow(0);

    v24 = String.init<A>(describing:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v29);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_0, v19, v20, "#%s Announcement completed.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_26_0(v23);
    OUTLINED_FUNCTION_26_0(v22);
  }

  v0[2] = v18;
  static ExecuteResponse.complete<A>(next:)();

  OUTLINED_FUNCTION_11();

  return v27();
}

uint64_t closure #1 in AnnounceDropInCallFlow.execute()(uint64_t a1, uint64_t a2)
{
  v6 = (*(*a2 + 160) + **(*a2 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t AnnounceDropInCallFlow.makeAnnouncement()()
{
  OUTLINED_FUNCTION_15();
  v1[16] = v2;
  v1[17] = v0;
  v1[18] = type metadata accessor for PhoneError(0);
  v1[19] = swift_task_alloc();

  return _swift_task_switch(AnnounceDropInCallFlow.makeAnnouncement(), 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v7 + 168) = v0;

  if (v0)
  {
    v8 = AnnounceDropInCallFlow.makeAnnouncement();
  }

  else
  {
    v8 = AnnounceDropInCallFlow.makeAnnouncement();
  }

  return _swift_task_switch(v8, 0, 0);
}

{
  v1 = v0[3];
  v2 = v0[17];
  v0[24] = v1;
  OUTLINED_FUNCTION_7_0((v2 + 64));
  v3 = v1;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_18_6(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_18(v5);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v7, v8, v9, v10, v11);
}

{
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v3[5] = v1;
  v3[6] = v5;
  v3[7] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v0)
  {

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v10, v11, v12);
  }
}

{
  v1 = v0[6];
  v2 = v0[17];
  v0[24] = v1;
  OUTLINED_FUNCTION_7_0((v2 + 64));
  v3 = v1;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_18_6(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_18(v5);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v7, v8, v9, v10, v11);
}

{
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v3[8] = v1;
  v3[9] = v5;
  v3[10] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v0)
  {

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v10, v11, v12);
  }
}

{
  v1 = v0[9];
  v2 = v0[17];
  v0[24] = v1;
  OUTLINED_FUNCTION_7_0((v2 + 64));
  v3 = v1;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_18_6(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_18(v5);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v7, v8, v9, v10, v11);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 208) = v0;

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v1();
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v1();
}

void AnnounceDropInCallFlow.makeAnnouncement()()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v7 = OUTLINED_FUNCTION_42();
    v1 = OUTLINED_FUNCTION_36();
    v60 = v1;
    *v7 = 136315138;
    v0[15] = v6;
    type metadata accessor for AnnounceDropInCallFlow(0);
    OUTLINED_FUNCTION_31_3();

    v8 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v60);
    OUTLINED_FUNCTION_31_3();

    *(v7 + 4) = v2;
    _os_log_impl(&dword_0, v4, v5, "#%s Making announcement using RF.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v1);
    OUTLINED_FUNCTION_26_0(v1);
    OUTLINED_FUNCTION_26_0(v7);
  }

  v10 = v0[17];
  v11 = *(v10 + 144);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  v14 = os_log_type_enabled(v12, v13);
  if (v11 != 3)
  {
    if (v11 != 2)
    {
      if (v11 == 1)
      {
        if (v14)
        {
          OUTLINED_FUNCTION_16_17();
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_30_8();
          *v10 = 136315138;
          v0[14] = 1;
          type metadata accessor for AnnounceDropInCallFlow(0);
          OUTLINED_FUNCTION_12_13();

          v15 = String.init<A>(describing:)();
          OUTLINED_FUNCTION_32_5(v15, v16, v17, v18, v19, v20);
          OUTLINED_FUNCTION_12_13();

          *(v10 + 4) = v1;
          OUTLINED_FUNCTION_6_7(&dword_0, v21, v22, "#%s Announcing CallBellStarted.");
          OUTLINED_FUNCTION_3_7();
          OUTLINED_FUNCTION_26_0(v10);
        }

        OUTLINED_FUNCTION_7_0((v0[17] + 24));
        OUTLINED_FUNCTION_20_9();
        v23 = swift_task_alloc();
        v0[20] = v23;
        *v23 = v0;
        v23[1] = AnnounceDropInCallFlow.makeAnnouncement();
        OUTLINED_FUNCTION_23_7();

        __asm { BRAA            X4, X16 }
      }

      if (v14)
      {
        OUTLINED_FUNCTION_16_17();
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_30_8();
        *v10 = 136315138;
        v0[11] = v11;
        type metadata accessor for AnnounceDropInCallFlow(0);
        OUTLINED_FUNCTION_12_13();

        v48 = String.init<A>(describing:)();
        OUTLINED_FUNCTION_32_5(v48, v49, v50, v51, v52, v53);
        OUTLINED_FUNCTION_12_13();

        *(v10 + 4) = v1;
        OUTLINED_FUNCTION_6_7(&dword_0, v54, v55, "#%s Received unsupported announcement type");
        OUTLINED_FUNCTION_3_7();
        OUTLINED_FUNCTION_26_0(v10);
      }

      v56 = v0[19];
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type AnnounceDropInCallFlow and conformance AnnounceDropInCallFlow(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
      swift_allocError();
      PhoneError.logged()(v57);
      outlined destroy of PhoneError(v56, type metadata accessor for PhoneError);
      swift_willThrow();

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_23_7();

      __asm { BRAA            X1, X16 }
    }

    if (v14)
    {
      OUTLINED_FUNCTION_16_17();
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_30_8();
      *v10 = 136315138;
      v0[13] = 2;
      type metadata accessor for AnnounceDropInCallFlow(0);
      OUTLINED_FUNCTION_12_13();

      v26 = String.init<A>(describing:)();
      OUTLINED_FUNCTION_32_5(v26, v27, v28, v29, v30, v31);
      OUTLINED_FUNCTION_12_13();

      *(v10 + 4) = v1;
      OUTLINED_FUNCTION_6_7(&dword_0, v32, v33, "#%s Announcing CallBellEnded.");
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_26_0(v10);
    }

    OUTLINED_FUNCTION_7_0((v0[17] + 24));
    OUTLINED_FUNCTION_20_9();
    v34 = swift_task_alloc();
    v0[22] = v34;
    *v34 = v0;
    OUTLINED_FUNCTION_25_5(v34);
    OUTLINED_FUNCTION_23_7();

    __asm { BRAA            X2, X16 }
  }

  if (v14)
  {
    OUTLINED_FUNCTION_16_17();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_30_8();
    *v10 = 136315138;
    v0[12] = 3;
    type metadata accessor for AnnounceDropInCallFlow(0);
    OUTLINED_FUNCTION_12_13();

    v37 = String.init<A>(describing:)();
    OUTLINED_FUNCTION_32_5(v37, v38, v39, v40, v41, v42);
    OUTLINED_FUNCTION_12_13();

    *(v10 + 4) = v1;
    OUTLINED_FUNCTION_6_7(&dword_0, v43, v44, "#%s Received Single Tap, Informing user double tap to hang up.");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_26_0(v10);
  }

  OUTLINED_FUNCTION_7_0((v0[17] + 24));
  OUTLINED_FUNCTION_20_9();
  v45 = swift_task_alloc();
  v0[23] = v45;
  *v45 = v0;
  OUTLINED_FUNCTION_25_5(v45);
  OUTLINED_FUNCTION_23_7();

  __asm { BRAA            X2, X16 }
}

uint64_t closure #1 in AnnounceDropInCallFlow.makeAnnouncement()(uint64_t *a1, void *a2)
{
  type metadata accessor for SirikitDeviceState();
  v4 = a2[16];
  v5 = a2[17];
  __swift_project_boxed_opaque_existential_1(a2 + 13, v4);
  (*(v5 + 8))(v8, v4, v5);
  v6 = SirikitDeviceState.__allocating_init(from:)();

  *a1 = v6;
  return result;
}

char *AnnounceDropInCallFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22AnnounceDropInCallFlow_completionOutputManifest;
  type metadata accessor for OutputGenerationManifest();
  OUTLINED_FUNCTION_23_1();
  (*(v2 + 8))(&v0[v1]);
  return v0;
}

uint64_t AnnounceDropInCallFlow.__deallocating_deinit()
{
  AnnounceDropInCallFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance AnnounceDropInCallFlow(uint64_t a1)
{
  v6 = (*(**v1 + 152) + **(**v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance AnnounceDropInCallFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AnnounceDropInCallFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_28_8();
  specialized Array<A>.hash(into:)(v4, a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  FollowUpOfferType.rawValue.getter(v1);
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  v2 = static Hasher._hash(seed:_:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type AnnounceDropInCallFlow and conformance AnnounceDropInCallFlow(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(void *a1)
{
  OUTLINED_FUNCTION_28_8();
  ContactResolverConfigHashable.hash(into:)(v4);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  v0 = OUTLINED_FUNCTION_28_8();
  OUTLINED_FUNCTION_27_6(v0);
  v1 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1);
}

{
  v0 = OUTLINED_FUNCTION_28_8();
  OUTLINED_FUNCTION_27_6(v0);
  v1 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ContactQuery();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = v2 + 64;
  v13 = -1 << *(v2 + 32);
  result = a2 & ~v13;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v15 = ~v13;
    v34 = *(a1 + 16);
    v31 = v6 + 16;
    v16 = (v6 + 8);
    v28 = a1;
    v29 = v2;
    v26 = ~v13;
    v27 = v2 + 64;
    while (1)
    {
      v17 = *(*(v2 + 48) + 8 * result);
      if (*(v17 + 16) == v34)
      {
        break;
      }

LABEL_13:
      result = (result + 1) & v15;
      if (((*(v12 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v34 && v17 != a1)
    {
      v30 = result;
      v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v32 = a1 + v18;
      v33 = v17 + v18;

      v19 = 0;
      while (v19 < *(v17 + 16))
      {
        v20 = *(v6 + 72) * v19;
        v21 = v6;
        v22 = *(v6 + 16);
        result = v22(v11, v33 + v20, v5);
        if (v34 == v19)
        {
          goto LABEL_17;
        }

        v22(v8, v32 + v20, v5);
        lazy protocol witness table accessor for type AnnounceDropInCallFlow and conformance AnnounceDropInCallFlow(&lazy protocol witness table cache variable for type ContactQuery and conformance ContactQuery, &type metadata accessor for ContactQuery, &protocol conformance descriptor for ContactQuery);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        v24 = *v16;
        (*v16)(v8, v5);
        result = (v24)(v11, v5);
        if ((v23 & 1) == 0)
        {

          a1 = v28;
          v2 = v29;
          result = v30;
          v6 = v21;
          v15 = v26;
          v12 = v27;
          goto LABEL_13;
        }

        ++v19;
        v6 = v21;
        if (v34 == v19)
        {

          return v30;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }
  }

  return result;
}

{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

{
  v14 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4, v6);
    lazy protocol witness table accessor for type AnnounceDropInCallFlow and conformance AnnounceDropInCallFlow(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(void *a1, uint64_t a2)
{
  v45 = type metadata accessor for ContactActionType();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContactResolverConfigHashable(0);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v2 + 64;
  v41 = v2;
  v12 = -1 << *(v2 + 32);
  v13 = a2 & ~v12;
  if ((*(v2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v30 = ~v12;
    v14 = v8[7];
    v39 = v8[6];
    v15 = v8[8];
    v37 = *a1;
    v38 = v15;
    v16 = a1[1];
    v35 = a1[2];
    v36 = v16;
    v34 = a1[3];
    v17 = *(a1 + v14);
    v33 = *(v17 + 16);
    v32 = *(v9 + 72);
    v44 = (v5 + 8);
    v31 = v17 + 40;
    v43 = v8;
    do
    {
      outlined init with copy of ContactResolverConfigHashable(*(v41 + 48) + v32 * v13, v11);
      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      type metadata accessor for Locale();
      lazy protocol witness table accessor for type AnnounceDropInCallFlow and conformance AnnounceDropInCallFlow(&lazy protocol witness table cache variable for type Locale and conformance Locale, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
      dispatch thunk of Hashable.hash(into:)();
      v18 = *&v11[v8[7]];
      Hasher._combine(_:)(*(v18 + 16));
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v18 + 40;
        do
        {

          String.hash(into:)();

          v20 += 16;
          --v19;
        }

        while (v19);
      }

      ContactResolverConfig.actionType.getter();
      lazy protocol witness table accessor for type AnnounceDropInCallFlow and conformance AnnounceDropInCallFlow(&lazy protocol witness table cache variable for type ContactActionType and conformance ContactActionType, &type metadata accessor for ContactActionType, &protocol conformance descriptor for ContactActionType);
      v21 = v45;
      dispatch thunk of Hashable.hash(into:)();
      v22 = *v44;
      (*v44)(v7, v21);
      v42 = Hasher._finalize()();
      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      v23 = a1;
      dispatch thunk of Hashable.hash(into:)();
      v24 = v33;
      Hasher._combine(_:)(v33);
      v25 = v31;
      for (i = v24; i; --i)
      {

        String.hash(into:)();

        v25 += 16;
      }

      a1 = v23;
      ContactResolverConfig.actionType.getter();
      v27 = v45;
      dispatch thunk of Hashable.hash(into:)();
      v22(v7, v27);
      v28 = Hasher._finalize()();
      outlined destroy of PhoneError(v11, type metadata accessor for ContactResolverConfigHashable);
      if (v42 == v28)
      {
        break;
      }

      v13 = (v13 + 1) & v30;
      v8 = v43;
    }

    while (((*(v40 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE400000000000000;
      v8 = 1162760014;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000012;
          v7 = 0x8000000000452800;
          break;
        case 2:
          v8 = 0xD000000000000013;
          v7 = 0x8000000000452820;
          break;
        case 3:
          v8 = 0xD000000000000011;
          v7 = 0x8000000000452840;
          break;
        case 4:
          v8 = 0x4C41435F44414552;
          v7 = 0xE90000000000004CLL;
          break;
        default:
          break;
      }

      v9 = 0xE400000000000000;
      v10 = 1162760014;
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000012;
          v9 = 0x8000000000452800;
          break;
        case 2:
          v10 = 0xD000000000000013;
          v9 = 0x8000000000452820;
          break;
        case 3:
          v10 = 0xD000000000000011;
          v9 = 0x8000000000452840;
          break;
        case 4:
          v10 = 0x4C41435F44414552;
          v9 = 0xE90000000000004CLL;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t specialized AnnounceDropInCallFlow.init(announcementType:sharedGlobals:announceCallBellCatPatterns:responseGenerator:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = type metadata accessor for CATOption();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for DialogPhase();
  __chkstk_darwin(v17 - 8);
  v27 = a6;
  v28 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v26);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  v24 = a7;
  v25 = a9;
  v19 = __swift_allocate_boxed_opaque_existential_1(&v23);
  (*(*(a7 - 8) + 32))(v19, a4, a7);
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  *(a5 + 144) = a1;
  outlined init with copy of SignalProviding(a2, a5 + 104);
  type metadata accessor for AnnounceCallBellCATs(0);
  static CATOption.defaultMode.getter();
  v20 = CATWrapper.__allocating_init(options:globals:)();
  __swift_destroy_boxed_opaque_existential_1(a2);
  *(a5 + 16) = v20;
  outlined init with take of SPHConversation(&v26, a5 + 24);
  outlined init with take of SPHConversation(&v23, a5 + 64);
  return a5;
}

uint64_t type metadata accessor for AnnounceDropInCallFlow(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnnounceDropInCallFlow;
  if (!type metadata singleton initialization cache for AnnounceDropInCallFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in AnnounceDropInCallFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return closure #1 in AnnounceDropInCallFlow.execute()(v3, v0);
}

uint64_t type metadata completion function for AnnounceDropInCallFlow(uint64_t a1)
{
  result = type metadata accessor for OutputGenerationManifest();
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

uint64_t outlined init with copy of ContactResolverConfigHashable(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResolverConfigHashable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AnnounceDropInCallFlow and conformance AnnounceDropInCallFlow(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of PhoneError(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATPatternsIdentifiers_optional __swiftcall AnnounceGroupFaceTimeInviteCATPatternsIdentifiers.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceGroupFaceTimeInviteCATPatternsIdentifiers.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceGroupFaceTimeInviteCATPatternsIdentifiers_readGroupFaceTimeInviteAnnouncement;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceGroupFaceTimeInviteCATPatternsIdentifiers_unknownDefault;
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

unint64_t AnnounceGroupFaceTimeInviteCATPatternsIdentifiers.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000003FLL;
  }

  else
  {
    return 0xD00000000000002FLL;
  }
}

PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATPatternsIdentifiers_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceGroupFaceTimeInviteCATPatternsIdentifiers@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATPatternsIdentifiers_optional *a2@<X8>)
{
  result.value = AnnounceGroupFaceTimeInviteCATPatternsIdentifiers.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceGroupFaceTimeInviteCATPatternsIdentifiers@<X0>(unint64_t *a1@<X8>)
{
  result = AnnounceGroupFaceTimeInviteCATPatternsIdentifiers.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t outlined assign with take of SpeakableString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters.rejectAction.setter()
{
  v2 = OUTLINED_FUNCTION_2_4();
  v3 = v1 + *(type metadata accessor for AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters(v2) + 20);

  return outlined assign with take of SpeakableString?(v0, v3);
}

uint64_t AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters.rejectAction.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters.asKeyValuePairs()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_21(v1);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_424FF0;
  strcpy((v8 + 32), "confirmAction");
  *(v8 + 46) = -4864;
  outlined init with copy of SpeakableString?(v0, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    outlined destroy of SpeakableString?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    __swift_allocate_boxed_opaque_existential_1((v8 + 48));
    OUTLINED_FUNCTION_40();
    (*(v10 + 32))();
  }

  strcpy((v8 + 80), "rejectAction");
  *(v8 + 93) = 0;
  *(v8 + 94) = -5120;
  OUTLINED_FUNCTION_4_10();
  outlined init with copy of SpeakableString?(v0 + v11, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (__swift_getEnumTagSinglePayload(v4, 1, v9) == 1)
  {
    outlined destroy of SpeakableString?(v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v8 + 96) = 0u;
    *(v8 + 112) = 0u;
  }

  else
  {
    *(v8 + 120) = v9;
    __swift_allocate_boxed_opaque_existential_1((v8 + 96));
    OUTLINED_FUNCTION_40();
    (*(v12 + 32))();
  }

  return v8;
}

uint64_t AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters.init()()
{
  v0 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v0);
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_7_6();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v0);
}

uint64_t AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters.init(confirmAction:rejectAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with take of SpeakableString?(a1, a3);
  OUTLINED_FUNCTION_4_10();

  return outlined init with take of SpeakableString?(a2, a3 + v5);
}

uint64_t AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters.burstIndex.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t StartCallSimpleDisambiguateContactsHandlesParameters.requestedContact.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters.messagesGroupName.setter()
{
  v2 = OUTLINED_FUNCTION_2_4();
  v3 = v1 + *(type metadata accessor for AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters(v2) + 24);

  return outlined assign with take of SpeakableString?(v0, v3);
}

uint64_t AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters.messagesGroupName.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters.numberOfParticipants.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters.numberOfParticipantsNotAnnounced.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters.participants.getter()
{
  type metadata accessor for AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters(0);
}

uint64_t AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters.asKeyValuePairs()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_21(v1);
  __chkstk_darwin(v2);
  v4 = &v23 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = swift_allocObject();
  v6 = v5;
  *(v5 + 16) = xmmword_427BC0;
  *(v5 + 32) = 0x646E497473727562;
  *(v5 + 40) = 0xEA00000000007865;
  if (v0[1])
  {
    v7 = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
    v8 = 0;
  }

  else
  {
    v8 = *v0;
    v7 = &type metadata for Double;
  }

  *(v5 + 48) = v8;
  *(v5 + 72) = v7;
  *(v5 + 80) = 0x72656C6C6163;
  *(v5 + 88) = 0xE600000000000000;
  v9 = v0[2];
  if (v9)
  {
    v10 = type metadata accessor for PhonePerson(0);
    v11 = v9;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
  }

  *(v6 + 96) = v11;
  *(v6 + 120) = v10;
  *(v6 + 128) = 0xD000000000000011;
  *(v6 + 136) = 0x8000000000457900;
  GroupFaceTimeInviteAnnouncementParameters = type metadata accessor for AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters(0);
  outlined init with copy of SpeakableString?(v0 + GroupFaceTimeInviteAnnouncementParameters[6], v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v13 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v4, 1, v13) == 1)
  {

    outlined destroy of SpeakableString?(v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v6 + 144) = 0u;
    *(v6 + 160) = 0u;
  }

  else
  {
    *(v6 + 168) = v13;
    __swift_allocate_boxed_opaque_existential_1((v6 + 144));
    OUTLINED_FUNCTION_40();
    (*(v14 + 32))();
  }

  *(v6 + 176) = 0xD000000000000014;
  *(v6 + 184) = 0x8000000000457920;
  v15 = (v0 + GroupFaceTimeInviteAnnouncementParameters[7]);
  if (v15[1])
  {
    v16 = 0;
    *(v6 + 200) = 0;
    *(v6 + 208) = 0;
    v17 = 0;
  }

  else
  {
    v17 = *v15;
    v16 = &type metadata for Double;
  }

  *(v6 + 192) = v17;
  *(v6 + 216) = v16;
  *(v6 + 224) = 0xD000000000000020;
  *(v6 + 232) = 0x8000000000457940;
  v18 = (v0 + GroupFaceTimeInviteAnnouncementParameters[8]);
  if (v18[1])
  {
    v19 = 0;
    *(v6 + 248) = 0;
    *(v6 + 256) = 0;
    v20 = 0;
  }

  else
  {
    v20 = *v18;
    v19 = &type metadata for Double;
  }

  *(v6 + 240) = v20;
  *(v6 + 264) = v19;
  strcpy((v6 + 272), "participants");
  *(v6 + 285) = 0;
  *(v6 + 286) = -5120;
  v21 = *(v0 + GroupFaceTimeInviteAnnouncementParameters[9]);
  *(v6 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  *(v6 + 288) = v21;

  return v6;
}

uint64_t AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters.init(burstIndex:caller:messagesGroupName:numberOfParticipants:numberOfParticipantsNotAnnounced:participants:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  GroupFaceTimeInviteAnnouncementParameters = type metadata accessor for AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters(0);
  result = outlined init with take of SpeakableString?(a4, a9 + GroupFaceTimeInviteAnnouncementParameters[6]);
  v18 = a9 + GroupFaceTimeInviteAnnouncementParameters[7];
  *v18 = a5;
  *(v18 + 8) = a6 & 1;
  v19 = a9 + GroupFaceTimeInviteAnnouncementParameters[8];
  *v19 = a7;
  *(v19 + 8) = a8 & 1;
  *(a9 + GroupFaceTimeInviteAnnouncementParameters[9]) = a10;
  return result;
}

uint64_t AnnounceGroupFaceTimeInviteCATPatternsExecutor.offerFollowUpIntent(_:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_21(v4);
  v1[6] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v5, v6, v7);
}

{
  v1 = v0[6];
  v2 = v0[2];
  v3 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
  v2(v1);
  v10 = AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters.asKeyValuePairs()();
  v0[7] = v10;
  v11 = OUTLINED_FUNCTION_12_0();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = AnnounceGroupFaceTimeInviteCATPatternsExecutor.offerFollowUpIntent(_:);

  return v13(0xD00000000000002FLL, 0x8000000000451D20, v10);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0_19();

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0_19();

  v1 = *(v0 + 8);

  return v1();
}