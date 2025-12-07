uint64_t sub_227F44A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CombineIdentifier();
    v9 = a1 + *(a3 + 72);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_227F44AD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CombineIdentifier();
    v8 = v5 + *(a4 + 72);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227F44B9C@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_1_2();
  result = (*(v2 + 144))();
  *a1 = result;
  return result;
}

uint64_t sub_227F44BE8@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_1_2();
  result = (*(v2 + 168))();
  *a1 = result;
  return result;
}

uint64_t sub_227F44CBC()
{

  return MEMORY[0x2821FE8E8](v0, 245, 7);
}

uint64_t sub_227F44CF4()
{

  return MEMORY[0x2821FE8E8](v0, 409, 7);
}

uint64_t sub_227F44D74()
{

  return MEMORY[0x2821FE8E8](v0, 376, 7);
}

uint64_t sub_227F44E04()
{

  return MEMORY[0x2821FE8E8](v0, 245, 7);
}

uint64_t sub_227F44EB8()
{

  return MEMORY[0x2821FE8E8](v0, 409, 7);
}

uint64_t sub_227F44FE4()
{

  return MEMORY[0x2821FE8E8](v0, 376, 7);
}

uint64_t sub_227F45144()
{
  OUTLINED_FUNCTION_6_6();
  result = (*(v1 + 152))();
  *v0 = result;
  return result;
}

uint64_t sub_227F45188()
{
  OUTLINED_FUNCTION_6_6();
  result = (*(v1 + 176))();
  *v0 = result;
  return result;
}

uint64_t sub_227F4520C()
{
  OUTLINED_FUNCTION_6_6();
  result = (*(v1 + 224))();
  *v0 = result;
  return result;
}

uint64_t sub_227F45250()
{
  OUTLINED_FUNCTION_6_6();
  result = (*(v1 + 248))();
  *v0 = result;
  return result;
}

uint64_t sub_227F45294()
{
  OUTLINED_FUNCTION_6_6();
  result = (*(v1 + 272))();
  *v0 = result;
  return result;
}

uint64_t sub_227F452E0()
{
  OUTLINED_FUNCTION_6_6();
  result = (*(v1 + 296))();
  *v0 = result;
  return result;
}

uint64_t sub_227F4532C()
{
  OUTLINED_FUNCTION_6_6();
  result = (*(v1 + 320))();
  *v0 = result;
  return result;
}

uint64_t sub_227F45378()
{
  OUTLINED_FUNCTION_6_6();
  result = (*(v1 + 344))();
  *v0 = result;
  return result;
}

uint64_t sub_227F4549C()
{
  OUTLINED_FUNCTION_6_6();
  result = (*(v1 + 104))();
  *v0 = result;
  return result;
}

uint64_t sub_227F454E4()
{
  OUTLINED_FUNCTION_6_6();
  result = (*(v1 + 128))();
  *v0 = result;
  return result;
}

uint64_t sub_227F4553C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_227F45614(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_227F45738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.Subsystem();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for AppleIntelligenceReportingGeneralError();
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_227F4580C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.Subsystem();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for AppleIntelligenceReportingGeneralError();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_227F45AB0()
{
  OUTLINED_FUNCTION_6_6();
  result = (*(v1 + 120))();
  *v0 = result;
  return result;
}

uint64_t sub_227F45AF4()
{
  OUTLINED_FUNCTION_6_6();
  result = (*(v1 + 144))();
  *v0 = result;
  return result;
}

uint64_t sub_227F45B38()
{
  OUTLINED_FUNCTION_6_6();
  result = (*(v1 + 112))();
  *v0 = result;
  return result;
}

uint64_t sub_227F45B7C()
{
  OUTLINED_FUNCTION_6_6();
  result = (*(v1 + 144))();
  *v0 = result;
  return result;
}

uint64_t sub_227F45C00()
{
  OUTLINED_FUNCTION_6_6();
  result = (*(v1 + 200))();
  *v0 = result;
  return result;
}

__n128 sub_227F45C50(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t _s36AppleIntelligenceReportingProcessing14InvocationStepO18CompleteCodingKeys33_C4F9934033535404946766D45806A52FLLOs0H3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = InvocationStep.CompleteCodingKeys.init(stringValue:)(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_227F45D30@<X0>(uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_1_2();
  result = (*(v3 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_227F45D7C@<X0>(uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_1_2();
  result = (*(v3 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_227F45DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_142();
  type metadata accessor for InvocationStepMetadata.Partial(v6);
  OUTLINED_FUNCTION_77();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  type metadata accessor for Date();
  OUTLINED_FUNCTION_77();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v10 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_106_1();
  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

void sub_227F45EB4()
{
  OUTLINED_FUNCTION_66_1();
  type metadata accessor for InvocationStepMetadata.Partial(0);
  OUTLINED_FUNCTION_77();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_131_1();
  }

  else
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_77();
    if (*(v8 + 84) != v3)
    {
      *(v1 + *(v2 + 24)) = v0;
      return;
    }

    v6 = v7;
    v5 = v1 + *(v2 + 20);
  }

  __swift_storeEnumTagSinglePayload(v5, v0, v0, v6);
}

uint64_t sub_227F45F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_77();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_77();
    if (*(v11 + 84) != a2)
    {
      OUTLINED_FUNCTION_106_1();
      return (v13 + 1);
    }

    v8 = v10;
    v9 = a1 + *(a3 + 36);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_227F4607C()
{
  OUTLINED_FUNCTION_66_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_77();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_131_1();
  }

  else
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_77();
    if (*(v8 + 84) != v3)
    {
      *(v1 + *(v2 + 40)) = (v0 - 1);
      return;
    }

    v6 = v7;
    v5 = v1 + *(v2 + 36);
  }

  __swift_storeEnumTagSinglePayload(v5, v0, v0, v6);
}

uint64_t sub_227F46160(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_133_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_77();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v2, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_106_1();
    return (v7 + 1);
  }
}

void sub_227F461FC()
{
  OUTLINED_FUNCTION_66_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_77();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_131_1();

    __swift_storeEnumTagSinglePayload(v5, v0, v0, v6);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_227F46360()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227F46454()
{
  OUTLINED_FUNCTION_3_11();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_227F4648C()
{

  OUTLINED_FUNCTION_109_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_227F464EC()
{

  OUTLINED_FUNCTION_109_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_227F46520()
{
  OUTLINED_FUNCTION_3_11();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_227F46554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_227F4659C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_227F468B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_227F46960(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Logger();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_227F46A0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_227F46A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t BiomeEventReader.events(startDate:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV15BufferingPolicyOy27IntelligencePlatformLibrary05AppleD23ReportingInvocationStepVs5Error_p__GMd, &_sScs12ContinuationV15BufferingPolicyOy27IntelligencePlatformLibrary05AppleD23ReportingInvocationStepVs5Error_p__GMR);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v11[2] = a1;
  type metadata accessor for AppleIntelligenceReportingInvocationStep();
  (*(v6 + 104))(v9, *MEMORY[0x277D858A0], v4);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy27IntelligencePlatformLibrary05AppleA23ReportingInvocationStepVs5Error_pGMd, &_sScsy27IntelligencePlatformLibrary05AppleA23ReportingInvocationStepVs5Error_pGMR);
  a2[4] = OUTLINED_FUNCTION_3(&lazy protocol witness table cache variable for type AsyncThrowingStream<AppleIntelligenceReportingInvocationStep, Error> and conformance AsyncThrowingStream<A, B>);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return OUTLINED_FUNCTION_8();
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

uint64_t closure #1 in BiomeEventReader.events(startDate:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy27IntelligencePlatformLibrary05AppleB23ReportingInvocationStepVs5Error_p_GMd, &_sScs12ContinuationVy27IntelligencePlatformLibrary05AppleB23ReportingInvocationStepVs5Error_p_GMR);
  v5 = *(v4 - 8);
  v30 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  outlined init with copy of Date?(a2, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    outlined destroy of AppleIntelligenceReportingAssetDeliveryEvent?(v10, &_s10Foundation4DateVSgMd);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v15 setStartDate_];

    (*(v12 + 8))(v14, v11);
  }

  type metadata accessor for Library.Streams.AppleIntelligence.Reporting.Invocation.Step();
  lazy protocol witness table accessor for type Library.Streams.AppleIntelligence.Reporting.Invocation.Step and conformance Library.Streams.AppleIntelligence.Reporting.Invocation.Step(&lazy protocol witness table cache variable for type Library.Streams.AppleIntelligence.Reporting.Invocation.Step and conformance Library.Streams.AppleIntelligence.Reporting.Invocation.Step, MEMORY[0x277D202A0], MEMORY[0x277D20298]);
  v17 = v15;
  static StreamResource.publisher(useCase:bmOptions:)();

  v28 = v32;
  v29 = v33;
  v18 = __swift_project_boxed_opaque_existential_1(v31, v32);
  v26 = *(v5 + 16);
  v27 = v18;
  v26(v7, a1, v4);
  v19 = *(v5 + 80);
  v25 = a1;
  v20 = (v19 + 16) & ~v19;
  v21 = swift_allocObject();
  v22 = *(v5 + 32);
  v22(v21 + v20, v7, v4);
  v26(v7, v25, v4);
  v23 = swift_allocObject();
  v22(v23 + v20, v7, v4);
  Publisher.sink(receiveCompletion:receiveValue:)();

  return __swift_destroy_boxed_opaque_existential_0Tm(v31);
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

void closure #2 in closure #1 in BiomeEventReader.events(startDate:)(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v43 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy27IntelligencePlatformLibrary05AppleD23ReportingInvocationStepVs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy27IntelligencePlatformLibrary05AppleD23ReportingInvocationStepVs5Error_p__GMR);
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v39 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v35 - v5;
  v6 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = __swift_project_value_buffer(v12, static Logging.general);
  v14 = *(v7 + 16);
  v14(v11, v43, v6);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v15, v16);
  v37 = v14;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v36 = v2;
    v20 = v19;
    v44 = v19;
    *v18 = 136315138;
    v35 = v13;
    v14(v41, v11, v6);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    v24 = v11;
    v25 = v6;
    (*(v7 + 8))(v24, v6);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v44);

    *(v18 + 4) = v26;
    _os_log_impl(&dword_227F43000, v15, v16, "Invocation.Step: received: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    v27 = v20;
    v2 = v36;
    MEMORY[0x22AAAF0A0](v27, -1, -1);
    MEMORY[0x22AAAF0A0](v18, -1, -1);
  }

  else
  {

    v28 = v11;
    v25 = v6;
    (*(v7 + 8))(v28, v6);
  }

  v29 = v42;
  AppleIntelligenceReportingInvocationStep.writeTimestamp.getter();
  v30 = type metadata accessor for Date();
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    outlined destroy of AppleIntelligenceReportingAssetDeliveryEvent?(v29, &_s10Foundation4DateVSgMd);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_227F43000, v31, v32, "BiomeEventReader: event missing writeTimestamp", v33, 2u);
      MEMORY[0x22AAAF0A0](v33, -1, -1);
    }
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    (*(*(v30 - 8) + 8))(v29, v30);
    v37(v41, v43, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy27IntelligencePlatformLibrary05AppleB23ReportingInvocationStepVs5Error_p_GMd, &_sScs12ContinuationVy27IntelligencePlatformLibrary05AppleB23ReportingInvocationStepVs5Error_p_GMR);
    v34 = v39;
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v38 + 8))(v34, v2);
  }
}

uint64_t BiomeEventReader.mergedEvents(startDate:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV15BufferingPolicyOy36AppleIntelligenceReportingProcessing0dE10BiomeEventOs5Error_p__GMd, &_sScs12ContinuationV15BufferingPolicyOy36AppleIntelligenceReportingProcessing0dE10BiomeEventOs5Error_p__GMR);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v13[2] = a1;
  v13[3] = a2;
  type metadata accessor for AppleIntelligenceBiomeEvent(0);
  (*(v8 + 104))(v11, *MEMORY[0x277D858A0], v6);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy36AppleIntelligenceReportingProcessing0aB10BiomeEventOs5Error_pGMd, &_sScsy36AppleIntelligenceReportingProcessing0aB10BiomeEventOs5Error_pGMR);
  a3[4] = OUTLINED_FUNCTION_3(&lazy protocol witness table cache variable for type AsyncThrowingStream<AppleIntelligenceBiomeEvent, Error> and conformance AsyncThrowingStream<A, B>);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return OUTLINED_FUNCTION_8();
}

void closure #1 in BiomeEventReader.mergedEvents(startDate:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v129 = a1;
  v130 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy36AppleIntelligenceReportingProcessing0bC10BiomeEventOs5Error_p_GMd, &_sScs12ContinuationVy36AppleIntelligenceReportingProcessing0bC10BiomeEventOs5Error_p_GMR);
  v119 = *(v4 - 8);
  v117 = *(v119 + 64);
  MEMORY[0x28223BE20](v4);
  v118 = &v105 - v5;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy27IntelligencePlatformLibrary05AppleF23ReportingInvocationStepVs5Error_pG0ifJ10Processing0iF10BiomeEventOGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy27IntelligencePlatformLibrary05AppleF23ReportingInvocationStepVs5Error_pG0ifJ10Processing0iF10BiomeEventOGMR);
  v111 = *(v112 - 8);
  v6 = MEMORY[0x28223BE20](v112);
  v110 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v109 = &v105 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy27IntelligencePlatformLibrary05AppleF33ReportingUnifiedAssetFrameworkLogVs5Error_pG0ifJ10Processing0iF10BiomeEventOGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy27IntelligencePlatformLibrary05AppleF33ReportingUnifiedAssetFrameworkLogVs5Error_pG0ifJ10Processing0iF10BiomeEventOGMR);
  v115 = *(v116 - 8);
  v9 = MEMORY[0x28223BE20](v116);
  v114 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v113 = &v105 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy27IntelligencePlatformLibrary05AppleF23ReportingMobileAssetLogVs5Error_pG0ifJ10Processing0iF10BiomeEventOGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy27IntelligencePlatformLibrary05AppleF23ReportingMobileAssetLogVs5Error_pG0ifJ10Processing0iF10BiomeEventOGMR);
  v122 = *(v12 - 8);
  v123 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v121 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v120 = &v105 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy27IntelligencePlatformLibrary05AppleF24ReportingModelCatalogLogVs5Error_pG0ifJ10Processing0iF10BiomeEventOGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy27IntelligencePlatformLibrary05AppleF24ReportingModelCatalogLogVs5Error_pG0ifJ10Processing0iF10BiomeEventOGMR);
  v127 = *(v16 - 8);
  v128 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v126 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v125 = &v105 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy27IntelligencePlatformLibrary05AppleF24ReportingAvailabilityLogVs5Error_pG0ifJ10Processing0iF10BiomeEventOGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy27IntelligencePlatformLibrary05AppleF24ReportingAvailabilityLogVs5Error_pG0ifJ10Processing0iF10BiomeEventOGMR);
  v124 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v105 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v105 - v27;
  v29 = type metadata accessor for Date();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  outlined init with copy of Date?(a2, v28);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    outlined destroy of AppleIntelligenceReportingAssetDeliveryEvent?(v28, &_s10Foundation4DateVSgMd);
  }

  else
  {
    (*(v30 + 32))(v32, v28, v29);
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v33 setStartDate_];

    (*(v30 + 8))(v32, v29);
  }

  v35 = v33;
  v36 = v130;
  v37 = specialized Sequence<>.contains(_:)(2, v130);
  v38 = MEMORY[0x277D84F90];
  if (v37)
  {
    type metadata accessor for Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.Availability();
    lazy protocol witness table accessor for type Library.Streams.AppleIntelligence.Reporting.Invocation.Step and conformance Library.Streams.AppleIntelligence.Reporting.Invocation.Step(&lazy protocol witness table cache variable for type Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.Availability and conformance Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.Availability, MEMORY[0x277D202D8], MEMORY[0x277D202D0]);
    v39 = v33;
    static StreamResource.publisher(useCase:bmOptions:)();

    v106 = 0;
    v107 = v33;
    v108 = v4;
    __swift_project_boxed_opaque_existential_1(&v131, v133);
    v135 = Publisher.eraseToAnyPublisher()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy27IntelligencePlatformLibrary05AppleD24ReportingAvailabilityLogVs5Error_pGMd, &_s7Combine12AnyPublisherVy27IntelligencePlatformLibrary05AppleD24ReportingAvailabilityLogVs5Error_pGMR);
    type metadata accessor for AppleIntelligenceBiomeEvent(0);
    lazy protocol witness table accessor for type AsyncThrowingStream<AppleIntelligenceReportingInvocationStep, Error> and conformance AsyncThrowingStream<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<AppleIntelligenceReportingAvailabilityLog, Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy27IntelligencePlatformLibrary05AppleD24ReportingAvailabilityLogVs5Error_pGMd, &_s7Combine12AnyPublisherVy27IntelligencePlatformLibrary05AppleD24ReportingAvailabilityLogVs5Error_pGMR, MEMORY[0x277CBCD90]);
    Publisher.map<A>(_:)();

    __swift_destroy_boxed_opaque_existential_0Tm(&v131);
    v43 = v124;
    v44 = *(v124 + 16);
    v44(v23, v25, v20);
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v46 = *(v45 + 16);
    v47 = v45;
    if (v46 >= *(v45 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v47 = v96;
    }

    v48 = *(v43 + 8);
    v48(v25, v20);
    v133 = v20;
    v134 = lazy protocol witness table accessor for type AsyncThrowingStream<AppleIntelligenceReportingInvocationStep, Error> and conformance AsyncThrowingStream<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<AppleIntelligenceReportingAvailabilityLog, Error>, AppleIntelligenceBiomeEvent> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy27IntelligencePlatformLibrary05AppleF24ReportingAvailabilityLogVs5Error_pG0ifJ10Processing0iF10BiomeEventOGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy27IntelligencePlatformLibrary05AppleF24ReportingAvailabilityLogVs5Error_pG0ifJ10Processing0iF10BiomeEventOGMR, MEMORY[0x277CBCC08]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v131);
    v44(boxed_opaque_existential_1, v23, v20);
    *(v47 + 16) = v46 + 1;
    outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(&v131, v47 + 40 * v46 + 32);
    v50 = v20;
    v41 = v47;
    v48(v23, v50);
    v42 = v108;
    v35 = v107;
    v36 = v130;
    v38 = MEMORY[0x277D84F90];
    v40 = v106;
  }

  else
  {
    v40 = 0;
    v41 = MEMORY[0x277D84F90];
    v42 = v4;
  }

  if (specialized Sequence<>.contains(_:)(4, v36))
  {
    type metadata accessor for Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.ModelCatalog();
    lazy protocol witness table accessor for type Library.Streams.AppleIntelligence.Reporting.Invocation.Step and conformance Library.Streams.AppleIntelligence.Reporting.Invocation.Step(&lazy protocol witness table cache variable for type Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.ModelCatalog and conformance Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.ModelCatalog, MEMORY[0x277D202E8], MEMORY[0x277D202E0]);
    v51 = v35;
    static StreamResource.publisher(useCase:bmOptions:)();
    if (v40)
    {

LABEL_35:

      *&v131 = v40;
      AsyncThrowingStream.Continuation.finish(throwing:)();
      return;
    }

    v108 = v42;

    __swift_project_boxed_opaque_existential_1(&v131, v133);
    v135 = Publisher.eraseToAnyPublisher()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy27IntelligencePlatformLibrary05AppleD24ReportingModelCatalogLogVs5Error_pGMd, &_s7Combine12AnyPublisherVy27IntelligencePlatformLibrary05AppleD24ReportingModelCatalogLogVs5Error_pGMR);
    type metadata accessor for AppleIntelligenceBiomeEvent(0);
    lazy protocol witness table accessor for type AsyncThrowingStream<AppleIntelligenceReportingInvocationStep, Error> and conformance AsyncThrowingStream<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<AppleIntelligenceReportingModelCatalogLog, Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy27IntelligencePlatformLibrary05AppleD24ReportingModelCatalogLogVs5Error_pGMd, &_s7Combine12AnyPublisherVy27IntelligencePlatformLibrary05AppleD24ReportingModelCatalogLogVs5Error_pGMR, MEMORY[0x277CBCD90]);
    v52 = v125;
    Publisher.map<A>(_:)();

    __swift_destroy_boxed_opaque_existential_0Tm(&v131);
    v53 = *(v127 + 16);
    v53(v126, v52, v128);
    v54 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v54 = v97;
    }

    v56 = *(v54 + 16);
    v55 = *(v54 + 24);
    v124 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v54 = v98;
    }

    v57 = v128;
    v58 = *(v127 + 8);
    v58(v125, v128);
    v133 = v57;
    v134 = lazy protocol witness table accessor for type AsyncThrowingStream<AppleIntelligenceReportingInvocationStep, Error> and conformance AsyncThrowingStream<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<AppleIntelligenceReportingModelCatalogLog, Error>, AppleIntelligenceBiomeEvent> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy27IntelligencePlatformLibrary05AppleF24ReportingModelCatalogLogVs5Error_pG0ifJ10Processing0iF10BiomeEventOGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy27IntelligencePlatformLibrary05AppleF24ReportingModelCatalogLogVs5Error_pG0ifJ10Processing0iF10BiomeEventOGMR, MEMORY[0x277CBCC08]);
    v59 = __swift_allocate_boxed_opaque_existential_1(&v131);
    v60 = v126;
    v53(v59, v126, v57);
    v41 = v54;
    *(v54 + 16) = v124;
    outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(&v131, v54 + 40 * v56 + 32);
    v58(v60, v57);
    v42 = v108;
    v36 = v130;
    v38 = MEMORY[0x277D84F90];
  }

  if (specialized Sequence<>.contains(_:)(8, v36))
  {
    type metadata accessor for Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.MobileAsset();
    lazy protocol witness table accessor for type Library.Streams.AppleIntelligence.Reporting.Invocation.Step and conformance Library.Streams.AppleIntelligence.Reporting.Invocation.Step(&lazy protocol witness table cache variable for type Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.MobileAsset and conformance Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.MobileAsset, MEMORY[0x277D202B8], MEMORY[0x277D202B0]);
    v61 = v35;
    static StreamResource.publisher(useCase:bmOptions:)();
    if (v40)
    {
      goto LABEL_34;
    }

    v108 = v42;

    __swift_project_boxed_opaque_existential_1(&v131, v133);
    v135 = Publisher.eraseToAnyPublisher()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy27IntelligencePlatformLibrary05AppleD23ReportingMobileAssetLogVs5Error_pGMd, &_s7Combine12AnyPublisherVy27IntelligencePlatformLibrary05AppleD23ReportingMobileAssetLogVs5Error_pGMR);
    type metadata accessor for AppleIntelligenceBiomeEvent(0);
    lazy protocol witness table accessor for type AsyncThrowingStream<AppleIntelligenceReportingInvocationStep, Error> and conformance AsyncThrowingStream<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<AppleIntelligenceReportingMobileAssetLog, Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy27IntelligencePlatformLibrary05AppleD23ReportingMobileAssetLogVs5Error_pGMd, &_s7Combine12AnyPublisherVy27IntelligencePlatformLibrary05AppleD23ReportingMobileAssetLogVs5Error_pGMR, MEMORY[0x277CBCD90]);
    v62 = v120;
    Publisher.map<A>(_:)();

    __swift_destroy_boxed_opaque_existential_0Tm(&v131);
    v63 = *(v122 + 16);
    v63(v121, v62, v123);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v41 = v99;
    }

    v65 = *(v41 + 16);
    v64 = *(v41 + 24);
    v128 = v63;
    if (v65 >= v64 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v41 = v100;
    }

    v66 = v123;
    v67 = *(v122 + 8);
    v67(v120, v123);
    v133 = v66;
    v134 = lazy protocol witness table accessor for type AsyncThrowingStream<AppleIntelligenceReportingInvocationStep, Error> and conformance AsyncThrowingStream<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<AppleIntelligenceReportingMobileAssetLog, Error>, AppleIntelligenceBiomeEvent> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy27IntelligencePlatformLibrary05AppleF23ReportingMobileAssetLogVs5Error_pG0ifJ10Processing0iF10BiomeEventOGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy27IntelligencePlatformLibrary05AppleF23ReportingMobileAssetLogVs5Error_pG0ifJ10Processing0iF10BiomeEventOGMR, MEMORY[0x277CBCC08]);
    v68 = __swift_allocate_boxed_opaque_existential_1(&v131);
    v69 = v121;
    (v128)(v68, v121, v66);
    *(v41 + 16) = v65 + 1;
    outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(&v131, v41 + 40 * v65 + 32);
    v67(v69, v66);
    v42 = v108;
    v36 = v130;
    v38 = MEMORY[0x277D84F90];
  }

  if (!specialized Sequence<>.contains(_:)(16, v36))
  {
    goto LABEL_32;
  }

  type metadata accessor for Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.UnifiedAssetFramework();
  lazy protocol witness table accessor for type Library.Streams.AppleIntelligence.Reporting.Invocation.Step and conformance Library.Streams.AppleIntelligence.Reporting.Invocation.Step(&lazy protocol witness table cache variable for type Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.UnifiedAssetFramework and conformance Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.UnifiedAssetFramework, MEMORY[0x277D202C8], MEMORY[0x277D202C0]);
  v61 = v35;
  static StreamResource.publisher(useCase:bmOptions:)();
  if (v40)
  {
LABEL_34:

    goto LABEL_35;
  }

  v106 = 0;
  v108 = v42;

  __swift_project_boxed_opaque_existential_1(&v131, v133);
  v135 = Publisher.eraseToAnyPublisher()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy27IntelligencePlatformLibrary05AppleD33ReportingUnifiedAssetFrameworkLogVs5Error_pGMd, &_s7Combine12AnyPublisherVy27IntelligencePlatformLibrary05AppleD33ReportingUnifiedAssetFrameworkLogVs5Error_pGMR);
  type metadata accessor for AppleIntelligenceBiomeEvent(0);
  lazy protocol witness table accessor for type AsyncThrowingStream<AppleIntelligenceReportingInvocationStep, Error> and conformance AsyncThrowingStream<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<AppleIntelligenceReportingUnifiedAssetFrameworkLog, Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy27IntelligencePlatformLibrary05AppleD33ReportingUnifiedAssetFrameworkLogVs5Error_pGMd, &_s7Combine12AnyPublisherVy27IntelligencePlatformLibrary05AppleD33ReportingUnifiedAssetFrameworkLogVs5Error_pGMR, MEMORY[0x277CBCD90]);
  v70 = v113;
  Publisher.map<A>(_:)();

  __swift_destroy_boxed_opaque_existential_0Tm(&v131);
  v71 = *(v115 + 16);
  v71(v114, v70, v116);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v41 = v101;
  }

  v72 = *(v41 + 16);
  if (v72 >= *(v41 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v73 = v102;
  }

  else
  {
    v73 = v41;
  }

  v74 = *(v115 + 8);
  v75 = v116;
  v74(v113, v116);
  v133 = v75;
  v134 = lazy protocol witness table accessor for type AsyncThrowingStream<AppleIntelligenceReportingInvocationStep, Error> and conformance AsyncThrowingStream<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<AppleIntelligenceReportingUnifiedAssetFrameworkLog, Error>, AppleIntelligenceBiomeEvent> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy27IntelligencePlatformLibrary05AppleF33ReportingUnifiedAssetFrameworkLogVs5Error_pG0ifJ10Processing0iF10BiomeEventOGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy27IntelligencePlatformLibrary05AppleF33ReportingUnifiedAssetFrameworkLogVs5Error_pG0ifJ10Processing0iF10BiomeEventOGMR, MEMORY[0x277CBCC08]);
  v76 = __swift_allocate_boxed_opaque_existential_1(&v131);
  v77 = v114;
  v71(v76, v114, v75);
  *(v73 + 16) = v72 + 1;
  outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(&v131, v73 + 40 * v72 + 32);
  v78 = v75;
  v41 = v73;
  v74(v77, v78);
  v42 = v108;
  v36 = v130;
  v38 = MEMORY[0x277D84F90];
  v40 = v106;
LABEL_32:
  if (specialized Sequence<>.contains(_:)(1, v36))
  {
    type metadata accessor for Library.Streams.AppleIntelligence.Reporting.Invocation.Step();
    lazy protocol witness table accessor for type Library.Streams.AppleIntelligence.Reporting.Invocation.Step and conformance Library.Streams.AppleIntelligence.Reporting.Invocation.Step(&lazy protocol witness table cache variable for type Library.Streams.AppleIntelligence.Reporting.Invocation.Step and conformance Library.Streams.AppleIntelligence.Reporting.Invocation.Step, MEMORY[0x277D202A0], MEMORY[0x277D20298]);
    v61 = v35;
    static StreamResource.publisher(useCase:bmOptions:)();
    if (v40)
    {
      goto LABEL_34;
    }

    v108 = v42;

    __swift_project_boxed_opaque_existential_1(&v131, v133);
    v135 = Publisher.eraseToAnyPublisher()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy27IntelligencePlatformLibrary05AppleD23ReportingInvocationStepVs5Error_pGMd, &_s7Combine12AnyPublisherVy27IntelligencePlatformLibrary05AppleD23ReportingInvocationStepVs5Error_pGMR);
    type metadata accessor for AppleIntelligenceBiomeEvent(0);
    lazy protocol witness table accessor for type AsyncThrowingStream<AppleIntelligenceReportingInvocationStep, Error> and conformance AsyncThrowingStream<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<AppleIntelligenceReportingInvocationStep, Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy27IntelligencePlatformLibrary05AppleD23ReportingInvocationStepVs5Error_pGMd, &_s7Combine12AnyPublisherVy27IntelligencePlatformLibrary05AppleD23ReportingInvocationStepVs5Error_pGMR, MEMORY[0x277CBCD90]);
    v79 = v109;
    Publisher.map<A>(_:)();

    __swift_destroy_boxed_opaque_existential_0Tm(&v131);
    v80 = *(v111 + 16);
    v80(v110, v79, v112);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v41 = v103;
    }

    v81 = *(v41 + 16);
    if (v81 >= *(v41 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v41 = v104;
    }

    v82 = *(v111 + 8);
    v83 = v112;
    v82(v109, v112);
    v133 = v83;
    v134 = lazy protocol witness table accessor for type AsyncThrowingStream<AppleIntelligenceReportingInvocationStep, Error> and conformance AsyncThrowingStream<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<AppleIntelligenceReportingInvocationStep, Error>, AppleIntelligenceBiomeEvent> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy27IntelligencePlatformLibrary05AppleF23ReportingInvocationStepVs5Error_pG0ifJ10Processing0iF10BiomeEventOGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy27IntelligencePlatformLibrary05AppleF23ReportingInvocationStepVs5Error_pG0ifJ10Processing0iF10BiomeEventOGMR, MEMORY[0x277CBCC08]);
    v84 = __swift_allocate_boxed_opaque_existential_1(&v131);
    v85 = v110;
    v80(v84, v110, v83);
    *(v41 + 16) = v81 + 1;
    outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(&v131, v41 + 40 * v81 + 32);
    v82(v85, v83);
    v38 = MEMORY[0x277D84F90];
    v42 = v108;
  }

  v86 = *(v41 + 16);
  v107 = v35;
  if (v86)
  {
    v135 = v38;
    specialized ContiguousArray.reserveCapacity(_:)();
    v87 = v41 + 32;
    do
    {
      outlined init with copy of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(v87, &v131);
      __swift_project_boxed_opaque_existential_1(&v131, v133);
      Publisher.eraseToAnyPublisher()();
      __swift_destroy_boxed_opaque_existential_0Tm(&v131);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v87 += 40;
      --v86;
    }

    while (v86);

    v88 = v135;
  }

  else
  {

    v88 = MEMORY[0x277D84F90];
  }

  v130 = v88;
  *&v131 = v88;
  *(&v131 + 1) = closure #6 in closure #1 in BiomeEventReader.mergedEvents(startDate:options:);
  v132 = 0;
  v89 = v118;
  v90 = v119;
  v91 = *(v119 + 16);
  v92 = v129;
  v91(v118, v129, v42);
  v93 = (*(v90 + 80) + 16) & ~*(v90 + 80);
  v128 = swift_allocObject();
  v94 = *(v90 + 32);
  v94(&v128[v93], v89, v42);
  v91(v89, v92, v42);
  v95 = swift_allocObject();
  v94((v95 + v93), v89, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing19BiomePublisherUtilsO012OrderedMergeF0Vy_7Combine03AnyF0VyAA0abE5EventOs5Error_pGGMd, &_s36AppleIntelligenceReportingProcessing19BiomePublisherUtilsO012OrderedMergeF0Vy_7Combine03AnyF0VyAA0abE5EventOs5Error_pGGMR);
  lazy protocol witness table accessor for type AsyncThrowingStream<AppleIntelligenceReportingInvocationStep, Error> and conformance AsyncThrowingStream<A, B>(&lazy protocol witness table cache variable for type BiomePublisherUtils.OrderedMergePublisher<AnyPublisher<AppleIntelligenceBiomeEvent, Error>> and conformance BiomePublisherUtils.OrderedMergePublisher<A>, &_s36AppleIntelligenceReportingProcessing19BiomePublisherUtilsO012OrderedMergeF0Vy_7Combine03AnyF0VyAA0abE5EventOs5Error_pGGMd, &_s36AppleIntelligenceReportingProcessing19BiomePublisherUtilsO012OrderedMergeF0Vy_7Combine03AnyF0VyAA0abE5EventOs5Error_pGGMR, protocol conformance descriptor for BiomePublisherUtils.OrderedMergePublisher<A>);
  Publisher.sink(receiveCompletion:receiveValue:)();
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t closure #1 in closure #1 in BiomeEventReader.mergedEvents(startDate:options:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a4@<X8>)
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a4, a1);
  type metadata accessor for AppleIntelligenceBiomeEvent(0);

  return swift_storeEnumTagMultiPayload();
}

BOOL closure #6 in closure #1 in BiomeEventReader.mergedEvents(startDate:options:)()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  AppleIntelligenceBiomeEvent.writeTimestamp.getter(&v10 - v5);
  AppleIntelligenceBiomeEvent.writeTimestamp.getter(v4);
  v7 = Date.compare(_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 == -1;
}

uint64_t AppleIntelligenceBiomeEvent.writeTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v133 = a1;
  type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  OUTLINED_FUNCTION_0();
  v127 = v2;
  v128 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v126 = v3;
  OUTLINED_FUNCTION_12();
  type metadata accessor for AppleIntelligenceReportingInvocationStep();
  OUTLINED_FUNCTION_0();
  v124 = v5;
  v125 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v123 = v6;
  OUTLINED_FUNCTION_12();
  v121 = type metadata accessor for MobileAssetInstrumentationEvent();
  OUTLINED_FUNCTION_0();
  v119 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v117 = v9;
  OUTLINED_FUNCTION_12();
  v122 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  OUTLINED_FUNCTION_0();
  v120 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v118 = v12;
  OUTLINED_FUNCTION_12();
  v116 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  OUTLINED_FUNCTION_0();
  v115 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v114 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  v17 = OUTLINED_FUNCTION_13(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v113 = v18;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v19);
  v112 = &v110 - v20;
  OUTLINED_FUNCTION_10();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v110 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v110 - v25;
  v27 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  OUTLINED_FUNCTION_0();
  v111 = v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for AppleIntelligenceBiomeEvent(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7();
  v129 = v34;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v35);
  v132 = &v110 - v36;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v37);
  v39 = &v110 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v41 = OUTLINED_FUNCTION_13(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_7();
  v134 = v42;
  OUTLINED_FUNCTION_10();
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v110 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v110 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v110 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v55 = &v110 - v54;
  MEMORY[0x28223BE20](v53);
  v131 = &v110 - v56;
  outlined init with copy of AppleIntelligenceBiomeEvent(v135, v39);
  v130 = v32;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v77 = v111;
      (*(v111 + 32))(v31, v39, v27);
      AppleIntelligenceReportingAvailabilityLog.event.getter();
      v78 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
      if (__swift_getEnumTagSinglePayload(v26, 1, v78) == 1)
      {
        (*(v77 + 8))(v31, v27);
        outlined destroy of AppleIntelligenceReportingAssetDeliveryEvent?(v26, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd);
        v79 = type metadata accessor for Date();
        OUTLINED_FUNCTION_15(v55, v80, v81, v79);
      }

      else
      {
        AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
        (*(v77 + 8))(v31, v27);
        (*(*(v78 - 8) + 8))(v26, v78);
      }

      v75 = v132;
      v74 = v133;
      v76 = v134;
      v96 = v55;
      v60 = v131;
      goto LABEL_21;
    case 2u:
      (*(v120 + 32))(v118, v39, v122);
      v67 = v112;
      AppleIntelligenceReportingMobileAssetLog.event.getter();
      v68 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
      if (OUTLINED_FUNCTION_14(v67) == 1)
      {
        v69 = OUTLINED_FUNCTION_6();
        v70(v69);
        outlined destroy of AppleIntelligenceReportingAssetDeliveryEvent?(v67, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd);
        v71 = type metadata accessor for Date();
        OUTLINED_FUNCTION_15(v49, v72, v73, v71);
      }

      else
      {
        AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
        v93 = OUTLINED_FUNCTION_6();
        v94(v93);
        OUTLINED_FUNCTION_5();
        (*(v95 + 8))(v67, v68);
      }

      v74 = v133;
      v76 = v134;
      v60 = v131;
      outlined init with take of Date?(v49, v131);
      v75 = v132;
      goto LABEL_22;
    case 3u:
      v57 = v119;
      v58 = v117;
      v59 = v121;
      (*(v119 + 32))(v117, v39, v121);
      v60 = v131;
      MobileAssetInstrumentationEvent.writeTimestamp.getter();
      goto LABEL_8;
    case 4u:
      (*(v115 + 32))(v114, v39, v116);
      AppleIntelligenceReportingModelCatalogLog.event.getter();
      v61 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
      if (OUTLINED_FUNCTION_14(v24) == 1)
      {
        v62 = OUTLINED_FUNCTION_6();
        v63(v62);
        outlined destroy of AppleIntelligenceReportingAssetDeliveryEvent?(v24, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd);
        v64 = type metadata accessor for Date();
        OUTLINED_FUNCTION_15(v52, v65, v66, v64);
      }

      else
      {
        AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
        v90 = OUTLINED_FUNCTION_6();
        v91(v90);
        OUTLINED_FUNCTION_5();
        (*(v92 + 8))(v24, v61);
      }

      v60 = v131;
      v75 = v132;
      v76 = v134;
      outlined init with take of Date?(v52, v131);
      v74 = v133;
      goto LABEL_22;
    case 5u:
      v83 = v126;
      v82 = v127;
      v84 = v128;
      (*(v127 + 32))(v126, v39, v128);
      v85 = v113;
      AppleIntelligenceReportingUnifiedAssetFrameworkLog.event.getter();
      v86 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
      if (OUTLINED_FUNCTION_14(v85) == 1)
      {
        (*(v82 + 8))(v83, v84);
        outlined destroy of AppleIntelligenceReportingAssetDeliveryEvent?(v85, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd);
        v87 = type metadata accessor for Date();
        OUTLINED_FUNCTION_15(v46, v88, v89, v87);
      }

      else
      {
        AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
        (*(v82 + 8))(v83, v84);
        OUTLINED_FUNCTION_5();
        (*(v97 + 8))(v85, v86);
      }

      v75 = v132;
      v74 = v133;
      v60 = v131;
      v76 = v134;
      v96 = v46;
LABEL_21:
      outlined init with take of Date?(v96, v60);
      goto LABEL_22;
    default:
      v58 = v123;
      v57 = v124;
      v59 = v125;
      (*(v124 + 32))(v123, v39, v125);
      v60 = v131;
      AppleIntelligenceReportingInvocationStep.timestamp.getter();
LABEL_8:
      (*(v57 + 8))(v58, v59);
      v75 = v132;
      v74 = v133;
      v76 = v134;
LABEL_22:
      outlined init with copy of Date?(v60, v76);
      v98 = type metadata accessor for Date();
      if (OUTLINED_FUNCTION_14(v76) == 1)
      {
        outlined destroy of AppleIntelligenceReportingAssetDeliveryEvent?(v76, &_s10Foundation4DateVSgMd);
        if (one-time initialization token for general != -1)
        {
          OUTLINED_FUNCTION_1(&one-time initialization token for general);
        }

        v99 = type metadata accessor for Logger();
        __swift_project_value_buffer(v99, static Logging.general);
        outlined init with copy of AppleIntelligenceBiomeEvent(v135, v75);
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v136 = v103;
          *v102 = 136315138;
          outlined init with copy of AppleIntelligenceBiomeEvent(v75, v129);
          v104 = String.init<A>(describing:)();
          v106 = v105;
          outlined destroy of AppleIntelligenceBiomeEvent(v75);
          v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v106, &v136);

          *(v102 + 4) = v107;
          _os_log_impl(&dword_227F43000, v100, v101, "Encountered event %s with no write timestamp, defaulting to distant past", v102, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v103);
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_11();
        }

        else
        {

          outlined destroy of AppleIntelligenceBiomeEvent(v75);
        }

        static Date.distantPast.getter();
        return outlined destroy of AppleIntelligenceReportingAssetDeliveryEvent?(v60, &_s10Foundation4DateVSgMd);
      }

      else
      {
        outlined destroy of AppleIntelligenceReportingAssetDeliveryEvent?(v60, &_s10Foundation4DateVSgMd);
        OUTLINED_FUNCTION_5();
        return (*(v108 + 32))(v74, v76, v98);
      }
  }
}

uint64_t closure #1 in closure #1 in BiomeEventReader.events(startDate:)(void **a1, uint64_t a2, const char *a3, uint64_t *a4, uint64_t *a5, const char *a6)
{
  v8 = *a1;
  if (*a1)
  {
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_1(&one-time initialization token for general);
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logging.general);
    v11 = v8;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v8;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_227F43000, v12, v13, a6, v14, 0xCu);
      outlined destroy of AppleIntelligenceReportingAssetDeliveryEvent?(v15, &_sSo8NSObjectCSgMd);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    v18 = v8;
  }

  else
  {
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_1(&one-time initialization token for general);
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logging.general);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_227F43000, v21, v22, a3, v23, 2u);
      OUTLINED_FUNCTION_11();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  return AsyncThrowingStream.Continuation.finish(throwing:)();
}

uint64_t closure #9 in closure #1 in BiomeEventReader.mergedEvents(startDate:options:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy36AppleIntelligenceReportingProcessing0dE10BiomeEventOs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy36AppleIntelligenceReportingProcessing0dE10BiomeEventOs5Error_p__GMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  v8 = type metadata accessor for AppleIntelligenceBiomeEvent(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logging.general);
  outlined init with copy of AppleIntelligenceBiomeEvent(a1, v13);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v7;
    v18 = v17;
    v19 = swift_slowAlloc();
    v31 = a2;
    v32 = v19;
    v20 = v19;
    *v18 = 136315138;
    outlined init with copy of AppleIntelligenceBiomeEvent(v13, v11);
    v21 = String.init<A>(describing:)();
    v30 = a1;
    v22 = v5;
    v23 = v4;
    v25 = v24;
    outlined destroy of AppleIntelligenceBiomeEvent(v13);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v25, &v32);
    v4 = v23;
    v5 = v22;
    a1 = v30;

    *(v18 + 4) = v26;
    _os_log_impl(&dword_227F43000, v15, v16, "BiomeEventReader: received merged event: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x22AAAF0A0](v20, -1, -1);
    v27 = v18;
    v7 = v29;
    MEMORY[0x22AAAF0A0](v27, -1, -1);
  }

  else
  {

    outlined destroy of AppleIntelligenceBiomeEvent(v13);
  }

  outlined init with copy of AppleIntelligenceBiomeEvent(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy36AppleIntelligenceReportingProcessing0bC10BiomeEventOs5Error_p_GMd, &_sScs12ContinuationVy36AppleIntelligenceReportingProcessing0bC10BiomeEventOs5Error_p_GMR);
  AsyncThrowingStream.Continuation.yield(_:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t default argument 3 of AssetDeliveryProcessor.computeTelemetryEvents(dateSinceLastProcessed:now:useCases:invocations:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay36AppleIntelligenceReportingProcessing22InvocationStepMetadataVGMd, &_sSay36AppleIntelligenceReportingProcessing22InvocationStepMetadataVGMR);

  return Dictionary.init(dictionaryLiteral:)();
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
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

uint64_t outlined init with copy of AppleIntelligenceBiomeEvent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceBiomeEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t outlined destroy of AppleIntelligenceBiomeEvent(uint64_t a1)
{
  v2 = type metadata accessor for AppleIntelligenceBiomeEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

void type metadata accessor for SADSchemaSADMobileAssetDownloadState()
{
  if (!lazy cache variable for type metadata for SADSchemaSADMobileAssetDownloadState)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for SADSchemaSADMobileAssetDownloadState);
    }
  }
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t outlined init with copy of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

uint64_t lazy protocol witness table accessor for type Library.Streams.AppleIntelligence.Reporting.Invocation.Step and conformance Library.Streams.AppleIntelligence.Reporting.Invocation.Step(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AsyncThrowingStream<AppleIntelligenceReportingInvocationStep, Error> and conformance AsyncThrowingStream<A, B>(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_9(0, a2);
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    result = swift_getWitnessTable(a4, v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of AppleIntelligenceReportingAssetDeliveryEvent?(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_4();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t partial apply for closure #8 in closure #1 in BiomeEventReader.mergedEvents(startDate:options:)(void **a1, uint64_t *a2, uint64_t *a3, const char *a4, const char *a5, ...)
{
  v11 = OUTLINED_FUNCTION_9(a1, a2);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_13(v13);
  return closure #1 in closure #1 in BiomeEventReader.events(startDate:)(a1, v5 + ((*(v14 + 80) + 16) & ~*(v14 + 80)), a4, a2, a3, a5);
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_4();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v2 + v5);

  return MEMORY[0x2821FE8E8](v2, v5 + v6, v4 | 7);
}

uint64_t partial apply for closure #9 in closure #1 in BiomeEventReader.mergedEvents(startDate:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = OUTLINED_FUNCTION_9(a1, a2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_13(v8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return a4(a1, v10);
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3(unint64_t *a1)
{
  v4 = MEMORY[0x277D858E0];

  return lazy protocol witness table accessor for type AsyncThrowingStream<AppleIntelligenceReportingInvocationStep, Error> and conformance AsyncThrowingStream<A, B>(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_8()
{

  return MEMORY[0x2822005D0](v2, v1, v0, v3 - 80, v2);
}

void OUTLINED_FUNCTION_11()
{

  JUMPOUT(0x22AAAF0A0);
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t one-time initialization function for general()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.general);
  __swift_project_value_buffer(v0, static Logging.general);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for testing()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.testing);
  __swift_project_value_buffer(v0, static Logging.testing);
  return Logger.init(subsystem:category:)();
}

uint64_t Logging.general.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static Logging.general.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t toJSONString(_:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = a1[5];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return specialized toJSONString(_:)(v4, v1, v2, v3);
}

uint64_t closure #1 in toJSONString(_:)(uint64_t a1, void *a2)
{
  type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  OUTLINED_FUNCTION_0();
  v38 = v4;
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v37 = v6 - v5;
  type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  OUTLINED_FUNCTION_0();
  v35 = v8;
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v33 = v10 - v9;
  v32 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v31 = v15 - v14;
  v30 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v21 = v20 - v19;
  v22 = type metadata accessor for TimeZone();
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_1_0();
  v23 = type metadata accessor for Date.ISO8601FormatStyle();
  OUTLINED_FUNCTION_0();
  v34 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  v28 = v27 - v26;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  static TimeZone.current.getter();
  (*(v17 + 104))(v21, *MEMORY[0x277CC9460], v30);
  (*(v12 + 104))(v31, *MEMORY[0x277CC9458], v32);
  (*(v35 + 104))(v33, *MEMORY[0x277CC9468], v36);
  (*(v38 + 104))(v37, *MEMORY[0x277CC9480], v39);
  Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
  lazy protocol witness table accessor for type Date.ISO8601FormatStyle and conformance Date.ISO8601FormatStyle(&lazy protocol witness table cache variable for type Date.ISO8601FormatStyle and conformance Date.ISO8601FormatStyle, MEMORY[0x277CC94A0], MEMORY[0x277CC9490]);
  Date.formatted<A>(_:)();
  __swift_mutable_project_boxed_opaque_existential_1(v40, v40[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  (*(v34 + 8))(v28, v23);

  return __swift_destroy_boxed_opaque_existential_0Tm(v40);
}

uint64_t specialized toJSONString(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v8 - 8);
  v23 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v24 = *(v10 - 8);
  v25 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x28223BE20](v13);
  v28 = a2;
  v29 = a3;
  v30 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMd, &_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_227FB1BA0;
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  static JSONEncoder.OutputFormatting.withoutEscapingSlashes.getter();
  v26 = v15;
  lazy protocol witness table accessor for type Date.ISO8601FormatStyle and conformance Date.ISO8601FormatStyle(&lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR);
  lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  *v12 = closure #1 in toJSONString(_:);
  v12[1] = 0;
  (*(v24 + 104))(v12, *MEMORY[0x277CC8770], v25);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v18 = v17;
  static String.Encoding.utf8.getter();
  v19 = String.init(data:encoding:)();
  v21 = v20;
  outlined consume of Data._Representation(v16, v18);

  if (!v21)
  {
    v19 = 0xD000000000000013;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  return v19;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t lazy protocol witness table accessor for type Date.ISO8601FormatStyle and conformance Date.ISO8601FormatStyle(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A];
  if (!lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A])
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A]);
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
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

uint64_t UInt32.init<A>(safelyWrapping:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v76 = *(AssociatedConformanceWitness + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v74 = &v71 - v6;
  v7 = swift_checkMetadataState();
  v8 = *(v7 - 8);
  v77 = v7;
  v78 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v72 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v71 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v71 - v14;
  v80 = v5;
  v16 = *(v5 + 16);
  v17 = swift_getAssociatedTypeWitness();
  v18 = MEMORY[0x28223BE20](v17);
  v81 = *(a2 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_3_1();
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    OUTLINED_FUNCTION_3_1();
    v16 = a1;
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      v21 = v81;
      v22 = OUTLINED_FUNCTION_0_0();
      v23(v22);
      OUTLINED_FUNCTION_3_1();
      v24 = dispatch thunk of BinaryInteger._lowWord.getter();
      v25 = OUTLINED_FUNCTION_1_1();
      a1(v25);
      if (v24 < 0)
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }

    v82 = 0;
    v31 = lazy protocol witness table accessor for type Int and conformance Int();
    OUTLINED_FUNCTION_7_0(v31, MEMORY[0x277D83B88], v31);
    v29 = dispatch thunk of static Comparable.< infix(_:_:)();
    v21 = v81;
    v32 = OUTLINED_FUNCTION_1_1();
    a1(v32);
LABEL_9:
    v33 = v15;
    if (v29)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

  v71 = v13;
  OUTLINED_FUNCTION_3_1();
  v26 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v79 = a1;
  OUTLINED_FUNCTION_3_1();
  v27 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v26 & 1) == 0)
  {
    v16 = v79;
    v21 = v81;
    v13 = v71;
    if (v27 >= 64)
    {
      goto LABEL_33;
    }

    v33 = v15;
    v34 = OUTLINED_FUNCTION_0_0();
    v35(v34);
    OUTLINED_FUNCTION_3_1();
    v36 = dispatch thunk of BinaryInteger._lowWord.getter();
    v37 = OUTLINED_FUNCTION_1_1();
    a1(v37);
    if ((v36 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

  if (v27 > 64)
  {
    v82 = 0;
    v28 = lazy protocol witness table accessor for type Int and conformance Int();
    OUTLINED_FUNCTION_7_0(v28, MEMORY[0x277D83B88], v28);
    v29 = OUTLINED_FUNCTION_5_0();
    v21 = v81;
    v30 = OUTLINED_FUNCTION_1_1();
    a1(v30);
    v13 = v71;
    goto LABEL_9;
  }

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v38 = OUTLINED_FUNCTION_5_0();
  v21 = v81;
  a1 = *(v81 + 1);
  (a1)(v20, a2);
  if (v38)
  {
    v13 = v71;
LABEL_16:
    v33 = v15;
    goto LABEL_17;
  }

  v66 = OUTLINED_FUNCTION_0_0();
  v67(v66);
  OUTLINED_FUNCTION_3_1();
  v68 = dispatch thunk of BinaryInteger._lowWord.getter();
  (a1)(v20, a2);
  v13 = v71;
  v33 = v15;
  if (v68 < 0)
  {
LABEL_17:
    dispatch thunk of Numeric.magnitude.getter();
    v39 = v77;
    v40 = swift_getAssociatedConformanceWitness();
    v41 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v81 = a1;
    if (v41)
    {
      v42 = v13;
      v43 = dispatch thunk of static BinaryInteger.isSigned.getter();
      OUTLINED_FUNCTION_2_1();
      v44 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v45 = v78;
      if (v43)
      {
        if (v44 <= 32)
        {
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v46 = dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v49 = OUTLINED_FUNCTION_6_0(v46, v47, v48, MEMORY[0x277D83C40], MEMORY[0x277D83C28]);
          OUTLINED_FUNCTION_8_0(v49);
          OUTLINED_FUNCTION_4_0();
          v50(v42, v39);
          if (v39)
          {
            goto LABEL_24;
          }

LABEL_23:
          OUTLINED_FUNCTION_2_1();
          if (dispatch thunk of BinaryInteger._lowWord.getter() != -1)
          {
LABEL_24:
            swift_getAssociatedConformanceWitness();
            v80 = v40;
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v79 = v16;
            v52 = v45;
            v53 = v72;
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
            v54 = *(v52 + 8);
            v54(v53, v39);
            lazy protocol witness table accessor for type UInt32 and conformance UInt32();
            FixedWidthInteger.init<A>(clamping:)();
            (v81)(v79, a2);
            v54(v33, v39);
            return ~v82;
          }

          goto LABEL_31;
        }
      }

      else if (v44 < 32)
      {
        OUTLINED_FUNCTION_2_1();
        if (dispatch thunk of BinaryInteger._lowWord.getter() != -1)
        {
          goto LABEL_24;
        }

        goto LABEL_31;
      }

      LODWORD(v82) = -1;
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      v56 = v39;
      v62 = dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v65 = OUTLINED_FUNCTION_6_0(v62, v63, v64, MEMORY[0x277D83C40], MEMORY[0x277D83C28]);
      OUTLINED_FUNCTION_8_0(v65);
      OUTLINED_FUNCTION_4_0();
      v61 = v42;
    }

    else
    {
      OUTLINED_FUNCTION_2_1();
      v51 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v45 = v78;
      if (v51 < 32)
      {
        goto LABEL_23;
      }

      LODWORD(v82) = -1;
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      v56 = v39;
      v57 = dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      OUTLINED_FUNCTION_6_0(v57, v58, v59, MEMORY[0x277D83C40], MEMORY[0x277D83C28]);
      dispatch thunk of static Comparable.< infix(_:_:)();
      OUTLINED_FUNCTION_4_0();
      v61 = v13;
    }

    v60(v61, v39);
    if (v56)
    {
      goto LABEL_24;
    }

LABEL_31:
    (v81)(v16, a2);
    (*(v45 + 8))(v33, v39);
    return 1;
  }

LABEL_33:
  v69 = OUTLINED_FUNCTION_0_0();
  v70(v69);
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  FixedWidthInteger.init<A>(clamping:)();
  (*(v21 + 1))(v16, a2);
  return v82;
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable(MEMORY[0x277D84D10], MEMORY[0x277D84CC0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable(MEMORY[0x277D84D08], MEMORY[0x277D84CC0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83BD0], MEMORY[0x277D83B88], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

Swift::UInt32_optional __swiftcall UInt32.init(safelyWrapping:)(Swift::Double_optional safelyWrapping)
{
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v3 = round(*&safelyWrapping.is_nil);
    if (v3 > -1.0 && v3 < 4294967300.0)
    {
      v2 = v3;
    }

    else if (*&safelyWrapping.is_nil < 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = -1;
    }
  }

  return (v2 | ((v1 & 1) << 32));
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return dispatch thunk of static Comparable.< infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1)
{

  return dispatch thunk of static Comparable.< infix(_:_:)();
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

unint64_t lazy protocol witness table accessor for type BiomeEventReadingOptions and conformance BiomeEventReadingOptions()
{
  result = lazy protocol witness table cache variable for type BiomeEventReadingOptions and conformance BiomeEventReadingOptions;
  if (!lazy protocol witness table cache variable for type BiomeEventReadingOptions and conformance BiomeEventReadingOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BiomeEventReadingOptions, &type metadata for BiomeEventReadingOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BiomeEventReadingOptions and conformance BiomeEventReadingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BiomeEventReadingOptions and conformance BiomeEventReadingOptions;
  if (!lazy protocol witness table cache variable for type BiomeEventReadingOptions and conformance BiomeEventReadingOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BiomeEventReadingOptions, &type metadata for BiomeEventReadingOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BiomeEventReadingOptions and conformance BiomeEventReadingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BiomeEventReadingOptions and conformance BiomeEventReadingOptions;
  if (!lazy protocol witness table cache variable for type BiomeEventReadingOptions and conformance BiomeEventReadingOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BiomeEventReadingOptions, &type metadata for BiomeEventReadingOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BiomeEventReadingOptions and conformance BiomeEventReadingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BiomeEventReadingOptions and conformance BiomeEventReadingOptions;
  if (!lazy protocol witness table cache variable for type BiomeEventReadingOptions and conformance BiomeEventReadingOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BiomeEventReadingOptions, &type metadata for BiomeEventReadingOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BiomeEventReadingOptions and conformance BiomeEventReadingOptions);
  }

  return result;
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

AppleIntelligenceReportingProcessing::BiomeEventReadingOptions protocol witness for RawRepresentable.init(rawValue:) in conformance BiomeEventReadingOptions@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = BiomeEventReadingOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance BiomeEventReadingOptions@<X0>(uint64_t *a1@<X8>)
{
  result = BiomeEventReadingOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BiomeEventReadingOptions(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BiomeEventReadingOptions(uint64_t result, int a2, int a3)
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

void BiomePublisherUtils.OrderedMergePublisher.receive<A>(subscriber:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v61 = v8;
  v63 = v9;
  v64 = v10;
  v54 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedTypeWitness();
  v69 = v7;
  v70 = AssociatedTypeWitness;
  v71 = v13;
  v72 = v5;
  WitnessTable = v3;
  v74 = v1;
  v60 = type metadata accessor for BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.Side(0, &v69);
  OUTLINED_FUNCTION_0();
  v56 = v14;
  OUTLINED_FUNCTION_16();
  v16 = MEMORY[0x28223BE20](v15);
  v59 = (&v54 - v17);
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v16);
  v58 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v66 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_0();
  v57 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_13_0();
  v65 = v22 - v23;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = (&v54 - v26);
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v25);
  v30 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v7;
  v70 = AssociatedTypeWitness;
  v71 = v13;
  v72 = v5;
  v62 = v3;
  WitnessTable = v3;
  v74 = v1;
  v31 = type metadata accessor for BiomePublisherUtils.OrderedMergePublisher.OrderedMerged(0, &v69);
  (*(v28 + 16))(v30, v54, v5);

  v33 = MEMORY[0x22AAAE190](v32, v7);
  v34 = v61;

  v35 = BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.__allocating_init(downstream:count:comparison:)(v30, v33, v64, v34);
  v72 = v31;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for BiomePublisherUtils.OrderedMergePublisher<A>.OrderedMerged<A1, B1, C1>, v31);
  v69 = v35;
  v64 = v35;

  dispatch thunk of Subscriber.receive(subscription:)();
  __swift_destroy_boxed_opaque_existential_0Tm(&v69);
  v69 = v63;
  v61 = v7;
  v36 = type metadata accessor for Array();
  v37 = OUTLINED_FUNCTION_3_2();
  v38 = swift_getWitnessTable(v37, v36);
  MEMORY[0x22AAAE0B0](&v68, v36, v38);

  v67 = v68;
  type metadata accessor for EnumeratedSequence();
  EnumeratedSequence.makeIterator()();
  v63 = type metadata accessor for EnumeratedSequence.Iterator();
  v39 = (v57 + 4);
  v57 = (v55 + 32);
  v40 = (v56 + 8);
  for (i = (v55 + 8); ; (*i)(v44, v53))
  {
    v42 = v65;
    EnumeratedSequence.Iterator.next()();
    (*v39)(v27, v42, v66);
    if (__swift_getEnumTagSinglePayload(v27, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v43 = *v27;
    v44 = v58;
    v45 = v27 + *(TupleTypeMetadata2 + 48);
    v46 = TupleTypeMetadata2;
    v47 = v61;
    (*v57)(v58, v45, v61);
    v48 = v27;
    v49 = v64;

    v50 = v59;
    v51 = v49;
    v27 = v48;
    BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.Side.init(index:orderedMerger:)(v43, v51, v59);
    v52 = v60;
    swift_getWitnessTable(protocol conformance descriptor for BiomePublisherUtils.OrderedMergePublisher<A>.OrderedMerged<A1, B1, C1>.Side, v60);
    Publisher.subscribe<A>(_:)();
    (*v40)(v50, v52);
    v53 = v47;
    TupleTypeMetadata2 = v46;
  }

  OUTLINED_FUNCTION_19();
}

uint64_t BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.__allocating_init(downstream:count:comparison:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.init(downstream:count:comparison:)(a1, a2, a3, a4);
  return v8;
}

uint64_t BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.Side.init(index:orderedMerger:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = a1;
  a3[1] = a2;
  v4 = v3[6];
  v6[0] = v3[5];
  v6[1] = v4;
  v6[2] = v3[7];
  type metadata accessor for BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.Side(0, v6);
  return CombineIdentifier.init()();
}

void BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.init(downstream:count:comparison:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_18();
  v41 = v5;
  v42 = v6;
  v8 = v7;
  v10 = v9;
  v11 = *v4;
  v12 = *(*v4 + 88);
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  *(v4 + *(v11 + 144)) = 0;
  OUTLINED_FUNCTION_1_2();
  *(v4 + *(v14 + 152)) = 0;
  OUTLINED_FUNCTION_1_2();
  *(v4 + *(v15 + 176)) = 0;
  OUTLINED_FUNCTION_1_2();
  v17 = *(v16 + 200);
  *(v4 + v17) = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  OUTLINED_FUNCTION_1_2();
  v19 = *(v18 + 208);
  *(v4 + v19) = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  OUTLINED_FUNCTION_1_2();
  *(v4 + *(v20 + 216)) = 0;
  OUTLINED_FUNCTION_1_2();
  v22 = *(v21 + 224);
  *(v4 + v22) = static Subscribers.Demand.none.getter();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_23();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v12);
  OUTLINED_FUNCTION_1_2();
  v27 = *(v11 + 104);
  v28 = *(v27 - 8);
  (*(v28 + 16))(v4 + *(v26 + 128), v10, v27);
  OUTLINED_FUNCTION_1_2();
  *(v4 + *(v29 + 160)) = v8;
  OUTLINED_FUNCTION_23();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v12);
  Array.init(repeating:count:)();
  OUTLINED_FUNCTION_1_2();
  *(v4 + *(v33 + 192)) = v34;
  OUTLINED_FUNCTION_11_0();
  _sSa9repeating5countSayxGx_SitcfC7Combine12Subscription_pSg_Tt1g5(&v43, v8);
  OUTLINED_FUNCTION_1_2();
  *(v4 + *(v35 + 184)) = v36;
  v37 = _sSa9repeating5countSayxGx_SitcfCSb_Tt1g5(0, v8);
  (*(v28 + 8))(v10, v27);
  OUTLINED_FUNCTION_1_2();
  *(v4 + *(v38 + 168)) = v37;
  OUTLINED_FUNCTION_1_2();
  v40 = (v4 + *(v39 + 136));
  *v40 = v41;
  v40[1] = v42;
  OUTLINED_FUNCTION_19();
}

uint64_t _sSa9repeating5countSayxGx_SitcfC7Combine12Subscription_pSg_Tt1g5(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        outlined init with copy of Subscription?(v3, v5);
        v5 += 40;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    outlined destroy of Subscription?(v3);
    return v4;
  }

  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfCSb_Tt1g5(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3 & 1, a2);
    return v4;
  }

  return result;
}

Swift::Void __swiftcall BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.cancel()()
{
  OUTLINED_FUNCTION_1_2();
  [*(v0 + *(v1 + 200)) lock];
  OUTLINED_FUNCTION_1_2();
  v3 = *(v2 + 152);
  if ((*(v0 + v3) & 1) == 0)
  {
    *(v0 + v3) = 1;
  }

  $defer #1 <A><A1, B1, C1>() in BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.cancel()(v0);
}

uint64_t BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.Side.combineIdentifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  type metadata accessor for CombineIdentifier();
  OUTLINED_FUNCTION_4();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

void BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.receive(_:index:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 88);
  v8 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  v13 = &v20[-v12 - 8];
  [*(v3 + *(v6 + 200)) lock];
  OUTLINED_FUNCTION_4_1();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v15 = *(v3 + *(v14 + 168));
  if (*(v15 + 16) <= a2)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if ((*(v15 + a2 + 32) & 1) == 0)
  {
    (*(*(v7 - 8) + 16))(v13, a1, v7);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v7);
    OUTLINED_FUNCTION_4_1();
    v17 = *(v16 + 192);
    OUTLINED_FUNCTION_10_0(v3 + v17, v20);
    type metadata accessor for Array();
    Array._makeMutableAndUnique()();
    v18 = *(v3 + v17);
    Array._checkSubscript_mutating(_:)(a2);
    (*(v10 + 40))(v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a2, v13, v8);
    swift_endAccess();
      ;
    }
  }

  static Subscribers.Demand.none.getter();
  $defer #1 <A><A1, B1, C1>() in BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.cancel()(v3);
}

void BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.receive(completion:index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18();
  v7 = v6;
  v9 = v8;
  v37 = *v5;
  v10 = *(v37 + 96);
  v11 = *(v37 + 104);
  v36 = *(v37 + 120);
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Subscribers.Completion();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  [*(v5 + *(v37 + 200)) lock];
  OUTLINED_FUNCTION_1_2();
  v19 = *(v18 + 168);
  v20 = *(v5 + v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v19) = v20;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  specialized _ArrayBuffer._consumeAndCreateNew()(v20);
  v20 = v33;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (*(v20 + 16) > v7)
  {
    *(v20 + v7 + 32) = 1;
    *(v5 + v19) = v20;
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_1_2();
    v19 = *(v22 + 184);
    OUTLINED_FUNCTION_10_0(v5 + v19, &v38);
    v20 = *(v5 + v19);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + v19) = v20;
    if (v23)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  specialized _ArrayBuffer._consumeAndCreateNew()(v20);
  v20 = v34;
  *(v5 + v19) = v34;
LABEL_5:
  if (*(v20 + 16) <= v7)
  {
    __break(1u);
  }

  else
  {
    outlined assign with take of Subscription?(&v39, v20 + 40 * v7 + 32);
    *(v5 + v19) = v20;
    swift_endAccess();
    (*(v14 + 16))(v17, v9, v12);
    if (__swift_getEnumTagSinglePayload(v17, 1, v10) == 1)
    {
        ;
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_2();
      v26 = *(v25 + 152);
      if ((*(v5 + v26) & 1) == 0)
      {
        *(v5 + v26) = 1;
        MEMORY[0x28223BE20](v24);
        v27 = v37;
        *(&v35 - 4) = *(v37 + 80);
        *(&v35 - 6) = v10;
        *(&v35 - 5) = v11;
        v28 = *(v27 + 112);
        v29 = v36;
        *(&v35 - 4) = v28;
        *(&v35 - 3) = v29;
        *(&v35 - 2) = v9;
        BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.guardedApplyDownstream<A>(_:)(partial apply for closure #1 in BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.receive(completion:index:), (&v35 - 10), v30, v31, v32);
      }

      (*(v14 + 8))(v17, v12);
    }

    $defer #1 <A><A1, B1, C1>() in BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.cancel()(v5);
    OUTLINED_FUNCTION_19();
  }
}

void BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.receive(subscription:index:)(void *a1, unint64_t a2)
{
  v4 = v2;
  OUTLINED_FUNCTION_4_1();
  [*(v4 + *(v7 + 200)) lock];
  if (*(v4 + *(*v4 + 152)))
  {
    goto LABEL_5;
  }

  v8 = *(*v4 + 184);
  OUTLINED_FUNCTION_20(v4 + v8, v16);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = *(v4 + v8);
  if (*(v9 + 16) <= a2)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = v12;
    *(v4 + v8) = v12;
    goto LABEL_8;
  }

  outlined init with copy of Subscription?(v9 + 40 * a2 + 32, v14);
  v10 = v15;
  outlined destroy of Subscription?(v14);
  if (v10)
  {
LABEL_5:
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Cancellable.cancel()();
LABEL_6:
    $defer #1 <A><A1, B1, C1>() in BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.cancel()(v4);
    return;
  }

  outlined init with copy of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(a1, v14);
  OUTLINED_FUNCTION_10_0(v4 + v8, v13);
  v3 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v8) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (*(v3 + 16) > a2)
  {
    outlined assign with take of Subscription?(v14, v3 + 40 * a2 + 32);
    *(v4 + v8) = v3;
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Subscription.request(_:)();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t protocol witness for CustomCombineIdentifierConvertible.combineIdentifier.getter in conformance BiomePublisherUtils.OrderedMergePublisher<A>.OrderedMerged<A1, B1, C1>.Side@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = type metadata accessor for CombineIdentifier();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.guardedApplyDownstream<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18();
  v7 = v6;
  OUTLINED_FUNCTION_4_1();
  v9 = *(v5 + *(v8 + 200));
  [v9 lock];
  OUTLINED_FUNCTION_4_1();
  v11 = *(v10 + 216);
  *(v5 + v11) = 1;
  [v9 unlock];
  OUTLINED_FUNCTION_4_1();
  v13 = *(v5 + *(v12 + 208));
  [v13 lock];
  OUTLINED_FUNCTION_4_1();
  v7(v5 + *(v14 + 128));
  [v13 unlock];
  [v9 lock];
  *(v5 + v11) = 0;
  OUTLINED_FUNCTION_19();

  return [v15 v16];
}

Swift::Bool __swiftcall BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.trySendingItem()()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v4 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_0();
  v147 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_0();
  v9 = v7 - v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v139 - v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9_0();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v139 - v17;
  v150 = v3;
  isa = v3[-1].isa;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_13_0();
  v21 = (v19 - v20);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v139 - v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v26);
  v158 = &v139 - v27;
  [*(v0 + *(v1 + 200)) lock];
  OUTLINED_FUNCTION_1_2();
  v29 = *(v28 + 144);
  OUTLINED_FUNCTION_20(v0 + v29, &v165);
  v160 = v0;
  v30 = *(v0 + v29);
  v31 = static Subscribers.Demand.unlimited.getter();
  if ((OUTLINED_FUNCTION_21(v31) & 1) == 0)
  {
    if (v30 < 0)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    if (!v30)
    {
      goto LABEL_75;
    }
  }

  OUTLINED_FUNCTION_15_0();
  v35 = *(v34 + *(v33 + 160));
  if (v35 < 0)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (!v35)
  {
    p_isa = &v150->isa;
    goto LABEL_68;
  }

  v141 = v9;
  v140 = v21;
  v143 = v13;
  v142 = v29;
  v144 = v25;
  v145 = v2;
  v157 = 0;
  v36 = 0;
  v159 = v32[24];
  v149 = (v160 + v32[17]);
  v154 = v32[21];
  v37 = (isa + 32);
  v155 = (isa + 8);
  v156 = (v147 + 8);
  v38 = 1;
  p_isa = &v150->isa;
  v2 = v153;
  v9 = v4;
  do
  {
    v40 = v35;
    OUTLINED_FUNCTION_7_1();
    v4 = v159;
    OUTLINED_FUNCTION_17(v159 + v1);
    Array.subscript.getter();
    OUTLINED_FUNCTION_25(v18);
    if (v75)
    {
      OUTLINED_FUNCTION_12_0();
      v41(v18, v9);
      swift_endAccess();
      OUTLINED_FUNCTION_14_0();
      v43 = *(v42 + v154);
      if (v36 < *(v43 + 16))
      {
        if (*(v43 + v36 + 32) != 1)
        {
          goto LABEL_25;
        }

        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_77;
    }

    v44 = v37;
    v45 = v9;
    v46 = p_isa;
    v47 = *v44;
    v48 = v158;
    v1 = v44;
    (*v44)(v158, v18, v46);
    swift_endAccess();
    if (v38)
    {
      OUTLINED_FUNCTION_2_2();
      v50 = v48;
LABEL_16:
      v49(v50, v46);
      v38 = 0;
      v157 = v36;
      p_isa = v46;
      v9 = v45;
      v37 = v1;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_17(v159 + v160);
    v51 = v157;
    Array.subscript.getter();
    if (__swift_getEnumTagSinglePayload(v2, 1, v46) == 1)
    {
      OUTLINED_FUNCTION_12_0();
      v52(v2, v45);
      swift_endAccess();
      OUTLINED_FUNCTION_2_2();
      v50 = v158;
      goto LABEL_16;
    }

    v53 = v151;
    v54 = v2;
    v55 = v1;
    v47(v151, v54, v46);
    swift_endAccess();
    v152 = (*v149)(v158, v53);
    v56 = v51;
    v1 = v155;
    v57 = *v155;
    (*v155)(v53, v46);
    v57(v158, v46);
    v38 = 0;
    if (v152)
    {
      v56 = v36;
    }

    v157 = v56;
    p_isa = v46;
    v9 = v45;
    v37 = v55;
    v2 = v153;
LABEL_20:
    ++v36;
    v35 = v40;
  }

  while (v40 != v36);
  if ((v38 & 1) == 0)
  {
    v58 = v37;
    OUTLINED_FUNCTION_7_1();
    v59 = v159;
    OUTLINED_FUNCTION_17(v159 + v1);
    v60 = v146;
    v61 = v157;
    Array.subscript.getter();
    OUTLINED_FUNCTION_25(v60);
    if (!v75)
    {
      v63 = v144;
      v158 = *v58;
      (v158)(v144, v60, p_isa);
      swift_endAccess();
      v64 = v143;
      OUTLINED_FUNCTION_23();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, p_isa);
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_8_1(v59 + v1);
      type metadata accessor for Array();
      Array._makeMutableAndUnique()();
      v68 = *(v59 + v1);
      Array._checkSubscript_mutating(_:)(v61);
      v69 = v61;
      v70 = v147;
      v71 = v68 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
      v72 = v150;
      v2 = (v147 + 40);
      v73 = *(v147 + 40);
      v73(v71 + *(v147 + 72) * v69, v64, v9);
      swift_endAccess();
      v4 = v9;
      v9 = *(*v1 + 232);
      OUTLINED_FUNCTION_20(v1 + v9, &v164);
      v74 = v141;
      (*(v70 + 16))(v141, v1 + v9, v4);
      OUTLINED_FUNCTION_25(v74);
      if (v75)
      {
        v76 = (*v156)(v74, v4);
        v18 = v73;
        v77 = v63;
        goto LABEL_38;
      }

      v78 = v140;
      (v158)(v140, v74, v72);
      v1 = v63;
      v79 = (*v149)(v63, v78);
      if ((v79 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_2();
        v76 = v85(v78, v72);
        v18 = v73;
        goto LABEL_37;
      }

      v18 = v73;
      if (one-time initialization token for general != -1)
      {
        goto LABEL_81;
      }

      while (1)
      {
        v80 = type metadata accessor for Logger();
        __swift_project_value_buffer(v80, static Logging.general);
        v72 = Logger.logObject.getter();
        v81 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v72, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&dword_227F43000, v72, v81, "OrderedMergePublisher detected out of order events in upstream publishers. Results may be unreliable.", v82, 2u);
          v77 = v144;
          MEMORY[0x22AAAF0A0](v82, -1, -1);

          OUTLINED_FUNCTION_2_2();
          v83 = OUTLINED_FUNCTION_5_1();
          v76 = v84(v83);
        }

        else
        {

          OUTLINED_FUNCTION_2_2();
          v86 = OUTLINED_FUNCTION_5_1();
          v76 = v87(v86);
LABEL_37:
          v77 = v1;
        }

LABEL_38:
        MEMORY[0x28223BE20](v76);
        v88 = v145;
        *(&v139 - 8) = v145[10];
        *(&v139 - 7) = v72;
        v89 = *(v88 + 7);
        *(&v139 - 3) = *(v88 + 6);
        *(&v139 - 2) = v89;
        *(&v139 - 2) = v77;
        v90 = v72;
        v91 = v160;
        BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.guardedApplyDownstream<A>(_:)(partial apply for closure #1 in BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.trySendingItem(), (&v139 - 10), v92, v93, v94);
        v1 = v163[0];
        v95 = v143;
        (*(isa + 2))(v143, v77, v90);
        __swift_storeEnumTagSinglePayload(v95, 0, 1, v90);
        OUTLINED_FUNCTION_8_1(v91 + v9);
        (v18)(v91 + v9, v95, v4);
        swift_endAccess();
        OUTLINED_FUNCTION_1_2();
        v97 = *(v96 + 224);
        swift_beginAccess();
        v98 = *(v91 + v97);
        static Subscribers.Demand.unlimited.getter();
        v18 = static Subscribers.Demand.== infix(_:_:)();
        v99 = static Subscribers.Demand.unlimited.getter();
        v9 = v4;
        if (v18)
        {
          OUTLINED_FUNCTION_24();
        }

        else
        {
          static Subscribers.Demand.== infix(_:_:)();
          OUTLINED_FUNCTION_24();
          if (result)
          {
            goto LABEL_44;
          }

          if ((v98 | v1) < 0)
          {
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
            return result;
          }

          v99 = v1 + v98;
          if (__OFADD__(v1, v98))
          {
LABEL_44:
            v99 = static Subscribers.Demand.unlimited.getter();
          }

          else if (v99 < 0)
          {
            goto LABEL_86;
          }
        }

        v101 = v142;
        OUTLINED_FUNCTION_7_1();
        OUTLINED_FUNCTION_8_1(v1 + v101);
        v102 = *(v1 + v101);
        v103 = static Subscribers.Demand.unlimited.getter();
        if ((OUTLINED_FUNCTION_21(v103) & 1) == 0)
        {
          v104 = static Subscribers.Demand.unlimited.getter();
          v105 = OUTLINED_FUNCTION_21(v104);
          static Subscribers.Demand.unlimited.getter();
          if (v105)
          {
            v101 = v142;
          }

          else
          {
            result = static Subscribers.Demand.== infix(_:_:)();
            v101 = v142;
            if (result)
            {
              goto LABEL_53;
            }

            if ((v102 | v99) < 0)
            {
              goto LABEL_85;
            }

            if (__OFADD__(v102, v99))
            {
LABEL_53:
              static Subscribers.Demand.unlimited.getter();
            }

            else if (v102 + v99 < 0)
            {
              goto LABEL_87;
            }
          }

          OUTLINED_FUNCTION_14_0();
          *(v107 + v101) = v106;
        }

        swift_endAccess();
        static Subscribers.Demand.none.getter();
        OUTLINED_FUNCTION_7_1();
        *(v1 + v97) = v108;
        OUTLINED_FUNCTION_8_1(v1 + v101);
        v109 = *(v1 + v101);
        v110 = static Subscribers.Demand.unlimited.getter();
        if ((OUTLINED_FUNCTION_21(v110) & 1) == 0)
        {
          v111 = static Subscribers.Demand.unlimited.getter();
          result = OUTLINED_FUNCTION_21(v111);
          if (result)
          {
            static Subscribers.Demand.unlimited.getter();
          }

          else
          {
            if (v109 < 0)
            {
              goto LABEL_83;
            }

            if (!v109)
            {
              goto LABEL_84;
            }
          }

          OUTLINED_FUNCTION_14_0();
          *(v113 + v101) = v112;
        }

        swift_endAccess();
        OUTLINED_FUNCTION_14_0();
        p_isa = *(*v114 + 184);
        swift_beginAccess();
        if ((v18 & 0x8000000000000000) != 0)
        {
LABEL_79:
          __break(1u);
        }

        else
        {
          OUTLINED_FUNCTION_14_0();
          v116 = *(p_isa + v115);
          if (v18 < *(v116 + 16))
          {
            outlined init with copy of Subscription?(v116 + 40 * v18 + 32, &v161);
            if (v162)
            {
              outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(&v161, v163);
              swift_endAccess();
              p_isa = __swift_project_boxed_opaque_existential_1(v163, v163[3]);
              dispatch thunk of Subscription.request(_:)();
              __swift_destroy_boxed_opaque_existential_0Tm(v163);
            }

            else
            {
              outlined destroy of Subscription?(&v161);
              swift_endAccess();
            }

            OUTLINED_FUNCTION_2_2();
            v117 = OUTLINED_FUNCTION_5_1();
            v118(v117);
            goto LABEL_68;
          }
        }

        __break(1u);
LABEL_81:
        swift_once();
      }
    }

    OUTLINED_FUNCTION_12_0();
    v62(v60, v9);
    swift_endAccess();
  }

LABEL_25:
  v2 = v145;
LABEL_68:
  OUTLINED_FUNCTION_15_0();
  v121 = *(v120 + 176);
  if ((*(v122 + v121) & 1) == 0)
  {
    v123 = *(v160 + *(v119 + 168));
    v124 = *(v123 + 16);
    v125 = (v123 + 32);
    while (v124)
    {
      v126 = *v125++;
      --v124;
      if ((v126 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    v127 = p_isa;
    v128 = *(v119 + 192);
    OUTLINED_FUNCTION_7_1();
    v129 = OUTLINED_FUNCTION_20(v1 + v128, v163);
    v159 = &v139;
    *&v161 = *(v1 + v128);
    MEMORY[0x28223BE20](v129);
    v158 = v2[10];
    *(&v139 - 6) = v158;
    *(&v139 - 5) = v127;
    v130 = v2[13];
    v157 = v2[12];
    *(&v139 - 4) = v157;
    *(&v139 - 3) = v130;
    v131 = v2[14];
    v132 = v2[15];
    *(&v139 - 2) = v131;
    *(&v139 - 1) = v132;
    v133 = type metadata accessor for Array();

    v134 = OUTLINED_FUNCTION_3_2();
    swift_getWitnessTable(v134, v133);
    LOBYTE(v128) = Sequence.allSatisfy(_:)();

    if (v128)
    {
      *(v160 + v121) = 1;
      BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.becomeTerminal()();
      MEMORY[0x28223BE20](v135);
      *(&v139 - 6) = v158;
      *(&v139 - 5) = v127;
      *(&v139 - 4) = v157;
      *(&v139 - 3) = v130;
      *(&v139 - 2) = v131;
      *(&v139 - 1) = v132;
      BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.guardedApplyDownstream<A>(_:)(partial apply for closure #4 in BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.trySendingItem(), (&v139 - 8), v136, v137, v138);
    }
  }

LABEL_75:
  $defer #1 <A><A1, B1, C1>() in BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.cancel()(v160);
  OUTLINED_FUNCTION_19();
  return result;
}

Swift::Void __swiftcall BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.becomeTerminal()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v4 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  [*(v1 + *(v2 + 200)) lock];
  OUTLINED_FUNCTION_4_1();
  *(v1 + *(v6 + 152)) = 1;
  OUTLINED_FUNCTION_4_1();
  v8 = *(v7 + 184);
  swift_beginAccess();
  v9 = *(v1 + v8);
  OUTLINED_FUNCTION_11_0();
  v10 = *(v9 + 16);

  *(v1 + v8) = _sSa9repeating5countSayxGx_SitcfC7Combine12Subscription_pSg_Tt1g5(v21, v10);

  OUTLINED_FUNCTION_23();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v3);
  OUTLINED_FUNCTION_4_1();
  v15 = *(v14 + 192);
  swift_beginAccess();

  MEMORY[0x22AAAE190](v16, v4);

  *(v1 + v15) = Array.init(repeating:count:)();

  v17 = *(v9 + 16);
  if (v17)
  {
    v18 = v9 + 32;
    do
    {
      outlined init with copy of Subscription?(v18, v21);
      outlined init with copy of Subscription?(v21, v19);
      if (v20)
      {
        __swift_project_boxed_opaque_existential_1(v19, v20);
        dispatch thunk of Cancellable.cancel()();
        outlined destroy of Subscription?(v21);
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
      }

      else
      {
        outlined destroy of Subscription?(v21);
        outlined destroy of Subscription?(v19);
      }

      v18 += 40;
      --v17;
    }

    while (v17);
  }

  $defer #1 <A><A1, B1, C1>() in BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.cancel()(v1);
}

uint64_t closure #4 in BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.trySendingItem()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for Subscribers.Completion();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_storeEnumTagSinglePayload(&v13 - v10, 1, 1, a4);
  dispatch thunk of Subscriber.receive(completion:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.request(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_2();
  [*(v1 + *(v3 + 200)) lock];
  if (*(v1 + *(*v1 + 152)) & 1) != 0 || (*(v1 + *(*v1 + 176)))
  {
    return $defer #1 <A><A1, B1, C1>() in BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.cancel()(v1);
  }

  static Subscribers.Demand.unlimited.getter();
  result = static Subscribers.Demand.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (!a1)
    {
      return $defer #1 <A><A1, B1, C1>() in BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.cancel()(v1);
    }
  }

  OUTLINED_FUNCTION_1_2();
  v6 = *(v5 + 144);
  OUTLINED_FUNCTION_20(v1 + v6, v20);
  v7 = static Subscribers.Demand.unlimited.getter();
  if (OUTLINED_FUNCTION_22(v7))
  {
    return $defer #1 <A><A1, B1, C1>() in BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.cancel()(v1);
  }

  if (*(v1 + *(*v1 + 216)))
  {
    v8 = *(*v1 + 224);
    OUTLINED_FUNCTION_10_0(v1 + v8, v19);
    v9 = *(v1 + v8);
    v10 = static Subscribers.Demand.unlimited.getter();
    if (OUTLINED_FUNCTION_22(v10))
    {
LABEL_24:
      swift_endAccess();
      return $defer #1 <A><A1, B1, C1>() in BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.cancel()(v1);
    }

    v11 = static Subscribers.Demand.unlimited.getter();
    v12 = OUTLINED_FUNCTION_22(v11);
    v13 = static Subscribers.Demand.unlimited.getter();
    if (v12)
    {
LABEL_23:
      *(v1 + v8) = v13;
      goto LABEL_24;
    }

    result = static Subscribers.Demand.== infix(_:_:)();
    if (result)
    {
LABEL_14:
      v13 = static Subscribers.Demand.unlimited.getter();
      goto LABEL_23;
    }

    if (((v9 | a1) & 0x8000000000000000) == 0)
    {
      v13 = v9 + a1;
      if (!__OFADD__(v9, a1))
      {
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_33;
      }

      goto LABEL_14;
    }

    goto LABEL_31;
  }

  OUTLINED_FUNCTION_10_0(v1 + v6, v19);
  v14 = *(v1 + v6);
  v15 = static Subscribers.Demand.unlimited.getter();
  if (OUTLINED_FUNCTION_22(v15))
  {
LABEL_27:
    swift_endAccess();
      ;
    }

    return $defer #1 <A><A1, B1, C1>() in BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.cancel()(v1);
  }

  v16 = static Subscribers.Demand.unlimited.getter();
  v17 = OUTLINED_FUNCTION_22(v16);
  v18 = static Subscribers.Demand.unlimited.getter();
  if (v17)
  {
LABEL_26:
    *(v1 + v6) = v18;
    goto LABEL_27;
  }

  result = static Subscribers.Demand.== infix(_:_:)();
  if (result)
  {
    goto LABEL_21;
  }

  if ((v14 | a1) < 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v18 = v14 + a1;
  if (__OFADD__(v14, a1))
  {
LABEL_21:
    v18 = static Subscribers.Demand.unlimited.getter();
    goto LABEL_26;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    goto LABEL_26;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t *BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.deinit()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 128));
  OUTLINED_FUNCTION_1_2();

  OUTLINED_FUNCTION_1_2();

  OUTLINED_FUNCTION_1_2();

  OUTLINED_FUNCTION_1_2();

  OUTLINED_FUNCTION_1_2();

  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_2();
  v4 = *(v3 + 232);
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_4();
  (*(v5 + 8))(v0 + v4);
  return v0;
}

uint64_t BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.__deallocating_deinit()
{
  BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

Swift::Void __swiftcall Array._checkSubscript_mutating(_:)(Swift::Int a1)
{
  v2 = v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (a1 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v5 = v2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }
}

void specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t outlined assign with take of Subscription?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Subscription?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Subscription?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.trySendingItem()@<X0>(uint64_t *a1@<X8>)
{
  result = dispatch thunk of Subscriber.receive(_:)();
  *a1 = result;
  return result;
}

uint64_t type metadata instantiation function for BiomePublisherUtils.OrderedMergePublisher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BiomePublisherUtils.OrderedMergePublisher(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for BiomePublisherUtils.OrderedMergePublisher(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t type metadata completion function for BiomePublisherUtils.OrderedMergePublisher.OrderedMerged(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t type metadata completion function for BiomePublisherUtils.OrderedMergePublisher.OrderedMerged.Side(_OWORD *a1)
{
  v6 = 0;
  v9 = MEMORY[0x277D83B88];
  v1 = a1[2];
  v5[0] = a1[1];
  v5[1] = v1;
  v5[2] = a1[3];
  result = type metadata accessor for BiomePublisherUtils.OrderedMergePublisher.OrderedMerged(319, v5);
  if (v3 <= 0x3F)
  {
    v7 = 0;
    v10 = result;
    result = type metadata accessor for CombineIdentifier();
    if (v4 <= 0x3F)
    {
      v8 = 0;
      v11 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_11_0()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21(uint64_t a1)
{

  return static Subscribers.Demand.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_22(uint64_t a1)
{

  return static Subscribers.Demand.== infix(_:_:)();
}

uint64_t DataCollector.dataCollection(unifiedAssetFrameworkReporter:)()
{
  OUTLINED_FUNCTION_0_2();
  v0[22] = v1;
  v0[23] = type metadata accessor for SELFUploader(0);
  v0[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](DataCollector.dataCollection(unifiedAssetFrameworkReporter:), 0, 0);
}

{
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logging.general);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_227F43000, v2, v3, "Starting data collection and upload.", v4, 2u);
    MEMORY[0x22AAAF0A0](v4, -1, -1);
  }

  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v7 = *(v0 + 176);

  v8 = type metadata accessor for BiomeEventReader();
  v9 = swift_allocObject();
  *(v0 + 200) = v9;
  Logger.init(subsystem:category:)();
  v10 = v5 + v6[5];
  *(v10 + 24) = &type metadata for SiriAnalyticsStream;
  *(v10 + 32) = &protocol witness table for SiriAnalyticsStream;
  v11 = (v5 + v6[6]);
  v11[3] = type metadata accessor for SELFEventProcessor(0);
  v11[4] = &protocol witness table for SELFEventProcessor;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  v13 = *(*(v1 - 8) + 16);
  v13(boxed_opaque_existential_1, v5, v1);
  v14 = (v5 + v6[7]);
  v14[3] = type metadata accessor for SELFWrapperFactory(0);
  v14[4] = &protocol witness table for SELFWrapperFactory;
  v15 = __swift_allocate_boxed_opaque_existential_1(v14);
  v13(v15, v5, v1);
  v16 = type metadata accessor for UserDefaultsProvider();
  swift_allocObject();
  v17 = UserDefaultsProvider.init()();
  type metadata accessor for InvocationProcessor();
  v18 = swift_allocObject();
  v18[5] = v8;
  v18[6] = &protocol witness table for BiomeEventReader;
  v18[2] = v9;
  v19 = MEMORY[0x277D84F90];
  v18[7] = MEMORY[0x277D84F98];
  v18[8] = v19;
  outlined init with copy of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(v7, v0 + 16);
  type metadata accessor for AssetDeliveryProcessor();
  v20 = swift_allocObject();
  v20[5] = v8;
  v20[6] = &protocol witness table for BiomeEventReader;
  v20[2] = v9;
  outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>((v0 + 16), (v20 + 7));
  type metadata accessor for DataCollectorInternal();
  v21 = swift_allocObject();
  *(v0 + 208) = v21;
  *(v0 + 80) = v16;
  *(v0 + 88) = &protocol witness table for UserDefaultsProvider;
  *(v0 + 56) = v17;
  *(v0 + 120) = &type metadata for CoreAnalyticsUploader;
  *(v0 + 128) = &protocol witness table for CoreAnalyticsUploader;
  *(v0 + 160) = v6;
  *(v0 + 168) = &protocol witness table for SELFUploader;
  v22 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
  outlined init with copy of SELFUploader(v5, v22);
  outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>((v0 + 56), v21 + 16);
  *(v21 + 56) = v18;
  *(v21 + 64) = v20;
  outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>((v0 + 96), v21 + 72);
  outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>((v0 + 136), v21 + 112);
  swift_retain_n();
  v23 = swift_task_alloc();
  *(v0 + 216) = v23;
  *v23 = v0;
  v23[1] = DataCollector.dataCollection(unifiedAssetFrameworkReporter:);

  return DataCollectorInternal.runDataCollectionAndUpload()();
}

{
  OUTLINED_FUNCTION_0_2();
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = DataCollector.dataCollection(unifiedAssetFrameworkReporter:);
  }

  else
  {
    v2 = DataCollector.dataCollection(unifiedAssetFrameworkReporter:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  OUTLINED_FUNCTION_0_2();
  v1 = *(v0 + 192);

  outlined destroy of SELFUploader(v1);

  v2 = *(v0 + 8);

  return v2();
}

{
  OUTLINED_FUNCTION_0_2();
  v1 = *(v0 + 192);

  outlined destroy of SELFUploader(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t outlined init with copy of SELFUploader(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SELFUploader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SELFUploader(uint64_t a1)
{
  v2 = type metadata accessor for SELFUploader(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _ss6UInt32V36AppleIntelligenceReportingProcessingE14safelyWrappingABx_tcSzRzlufCSi_Tt0g5(uint64_t a1)
{
  OUTLINED_FUNCTION_107();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v1;
  }

  if (v1 < 0)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = 0;
  v8 = *(a1 + 16);
  do
  {
    if (v8 == v7)
    {
      break;
    }

    v9 = *(type metadata accessor for InvocationInformation(0) - 8);
    closure #1 in DataCollectorInternal.runInvocationDataCollectionAndUpload(dateSinceLastProcessed:)(a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++, a2, a3);
  }

  while (!v3);
}

uint64_t DataCollectorInternal.stateStorage.setter(__int128 *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_105(v2 + 16, a2);
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
  outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(a1, v2 + 16);
  return swift_endAccess();
}

uint64_t key path setter for DataCollectorInternal.invocationProcessor : DataCollectorInternal(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 152);

  return v2(v3);
}

uint64_t DataCollectorInternal.invocationProcessor.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t key path setter for DataCollectorInternal.assetDeliveryProcessor : DataCollectorInternal(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 176);

  return v2(v3);
}

uint64_t DataCollectorInternal.assetDeliveryProcessor.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t DataCollectorInternal.coreAnalyticsUploader.setter(__int128 *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_105(v2 + 72, a2);
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 72));
  outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(a1, v2 + 72);
  return swift_endAccess();
}

uint64_t DataCollectorInternal.selfUploader.setter(__int128 *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_105(v2 + 112, a2);
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 112));
  outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(a1, v2 + 112);
  return swift_endAccess();
}

uint64_t DataCollectorInternal.__allocating_init(stateStorage:invocationProcessor:assetDeliveryProcessor:coreAnalyticsUploader:selfUploader:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a1[3];
  v31 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  (*(v14 + 16))(v12 - v11);
  v15 = a4[3];
  v30 = a4[4];
  __swift_mutable_project_boxed_opaque_existential_1(a4, v15);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v19 = v18 - v17;
  (*(v20 + 16))(v18 - v17);
  v21 = a5[3];
  v22 = a5[4];
  __swift_mutable_project_boxed_opaque_existential_1(a5, v21);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_0();
  v26 = v25 - v24;
  (*(v27 + 16))(v25 - v24);
  v28 = a6(v13, a2, a3, v19, v26, v34, v9, v21, v15, v31, v22, v30);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v28;
}

uint64_t DataCollectorInternal.runDataCollectionAndUpload()()
{
  OUTLINED_FUNCTION_0_2();
  v1[28] = v0;
  v2 = type metadata accessor for Date();
  v1[29] = v2;
  OUTLINED_FUNCTION_44(v2);
  v1[30] = v3;
  v1[31] = OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_89();
  v3 = *(v2 + 120);
  v3();
  __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
  v4 = OUTLINED_FUNCTION_48();
  v6 = v5(v4);
  v7 = __swift_destroy_boxed_opaque_existential_0Tm(v1 + 9);
  (v3)(v7);
  __swift_project_boxed_opaque_existential_1(v1 + 14, v1[17]);
  v8 = OUTLINED_FUNCTION_48();
  v9(v8);
  v10 = (*(*v0 + 136))(v1 + 24);
  v12 = *(v11 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v11, *(v11 + 24));
  v13 = OUTLINED_FUNCTION_57();
  v14(v13, v12);
  v10(v1 + 24, 0);
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 14);
  if (one-time initialization token for general != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v1[32] = OUTLINED_FUNCTION_65(v15, static Logging.general);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_80();
    *v18 = 134218240;
    *(v18 + 4) = v6;
    *(v18 + 12) = 2048;
    v3();
    v19 = v1[22];
    v20 = v1[23];
    __swift_project_boxed_opaque_existential_1(v1 + 19, v19);
    v21 = (*(v20 + 8))(v19, v20);
    __swift_destroy_boxed_opaque_existential_0Tm(v1 + 19);
    *(v18 + 14) = v21;
    _os_log_impl(&dword_227F43000, v16, v17, "Starting bookmark timestamp is %f, ending bookmark timestamp is %f", v18, 0x16u);
    OUTLINED_FUNCTION_56();
  }

  v22 = v1[28];

  Date.init(timeIntervalSince1970:)();
  v26 = (*(*v22 + 272) + **(*v22 + 272));
  v23 = swift_task_alloc();
  v1[33] = v23;
  *v23 = v1;
  v23[1] = DataCollectorInternal.runDataCollectionAndUpload();
  v24 = v1[31];

  return v26(v24);
}

{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18_0();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_89();
  (*(v3 + 144))();
  v4 = OUTLINED_FUNCTION_54();
  v6 = v5(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_Say36AppleIntelligenceReportingProcessing22InvocationStepMetadataVGtGMd, &_ss23_ContiguousArrayStorageCySS_Say36AppleIntelligenceReportingProcessing22InvocationStepMetadataVGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227FB2070;
  *(inited + 32) = v0;
  *(inited + 40) = v2;
  *(inited + 48) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay36AppleIntelligenceReportingProcessing22InvocationStepMetadataVGMd, &_sSay36AppleIntelligenceReportingProcessing22InvocationStepMetadataVGMR);
  *(v1 + 280) = Dictionary.init(dictionaryLiteral:)();
  v8 = swift_task_alloc();
  *(v1 + 288) = v8;
  *v8 = v1;
  v9 = OUTLINED_FUNCTION_38(v8);

  return v10(v9);
}

{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18_0();
  *v5 = v4;
  *(v6 + 296) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_0_2();
  v0 = OUTLINED_FUNCTION_119();
  v1(v0);

  OUTLINED_FUNCTION_16_0();

  return v2();
}

{
  v2 = v0[34];
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[34];
  if (v6)
  {
    swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_43();
    *v1 = 138412290;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_102(&dword_227F43000, v11, v5, "Could not run invocations data collection with error: %@");
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_34();
  }

  else
  {
  }

  OUTLINED_FUNCTION_89();
  (*(v12 + 144))();
  v13 = OUTLINED_FUNCTION_54();
  v15 = v14(v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_Say36AppleIntelligenceReportingProcessing22InvocationStepMetadataVGtGMd, &_ss23_ContiguousArrayStorageCySS_Say36AppleIntelligenceReportingProcessing22InvocationStepMetadataVGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227FB2070;
  *(inited + 32) = v5;
  *(inited + 40) = v1;
  *(inited + 48) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay36AppleIntelligenceReportingProcessing22InvocationStepMetadataVGMd, &_sSay36AppleIntelligenceReportingProcessing22InvocationStepMetadataVGMR);
  v0[35] = Dictionary.init(dictionaryLiteral:)();
  v17 = swift_task_alloc();
  v0[36] = v17;
  *v17 = v0;
  v18 = OUTLINED_FUNCTION_38(v17);

  return v19(v18);
}

{
  OUTLINED_FUNCTION_68();
  v2 = *(v0 + 296);
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 296);
  if (v6)
  {
    swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_43();
    *v1 = 138412290;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_102(&dword_227F43000, v11, v5, "Could not run asset delivery data collection with error: %@");
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_34();
  }

  else
  {
  }

  v12 = OUTLINED_FUNCTION_119();
  v13(v12);

  OUTLINED_FUNCTION_16_0();

  return v14();
}

uint64_t DataCollectorInternal.SampledSubsystemInfo.subsystemsInvolved.setter()
{
  OUTLINED_FUNCTION_67();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DataCollectorInternal.SampledSubsystemInfo.sampledSubsystem.setter()
{
  OUTLINED_FUNCTION_67();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t DataCollectorInternal.SampledSubsystemInfo.callCount.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t DataCollectorInternal.SampledSubsystemInfo.subrequestsForSampledSubsystem.setter()
{
  OUTLINED_FUNCTION_67();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t DataCollectorInternal.SampledSubsystemInfo.sampledSubrequest.setter()
{
  OUTLINED_FUNCTION_67();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t DataCollectorInternal.SampledSubsystemInfo.errorDomain.setter()
{
  OUTLINED_FUNCTION_67();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t DataCollectorInternal.SampledSubsystemInfo.errorCode.setter(uint64_t result)
{
  *(v1 + 88) = result;
  *(v1 + 92) = BYTE4(result) & 1;
  return result;
}

uint64_t DataCollectorInternal.SampledSubsystemInfo.errorHash.setter(uint64_t result)
{
  *(v1 + 96) = result;
  *(v1 + 100) = BYTE4(result) & 1;
  return result;
}

uint64_t DataCollectorInternal.SampledSubsystemInfo.underlyingDomain.setter()
{
  OUTLINED_FUNCTION_67();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t DataCollectorInternal.SampledSubsystemInfo.underlyingCode.setter(uint64_t result)
{
  *(v1 + 120) = result;
  *(v1 + 124) = BYTE4(result) & 1;
  return result;
}

void DataCollectorInternal.SampledSubsystemInfo.init()(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 1;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 1;
  *(a1 + 96) = 0;
  *(a1 + 100) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  OUTLINED_FUNCTION_99(a1);
}

void DataCollectorInternal.SampledSubsystemInfo.init(subsystemsInvolved:sampledSubsystem:callCount:subrequestsForSampledSubsystem:sampledSubrequest:errorDomain:errorCode:errorHash:underlyingDomain:underlyingCode:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, int a12, char a13, int a14, char a15, uint64_t a16, uint64_t a17, int a18)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 36) = BYTE4(a5) & 1;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  *(a9 + 92) = a13 & 1;
  *(a9 + 96) = a14;
  *(a9 + 100) = a15 & 1;
  *(a9 + 104) = a16;
  *(a9 + 112) = a17;
  *(a9 + 120) = a18;
  OUTLINED_FUNCTION_99(a9);
}

uint64_t DataCollectorInternal.unwrap(_:)(uint64_t a1)
{
  outlined init with copy of AppleIntelligenceError?();
  if (v4)
  {
    outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v1 = dispatch thunk of AppleIntelligenceError.domain.getter();
    __swift_project_boxed_opaque_existential_1(v5, v6);
    dispatch thunk of CustomNSError.errorCode.getter();
    OUTLINED_FUNCTION_107();
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  else
  {
    outlined destroy of NSObject?(&v3, &_s26AppleIntelligenceReporting0aB5Error_pSgMd, &_s26AppleIntelligenceReporting0aB5Error_pSgMR);
    return 0;
  }

  return v1;
}

void *DataCollectorInternal.sampleSubsystem(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v138 = a2;
  v3 = type metadata accessor for InvocationStepMetadata(0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_1_0();
  v149 = v5 - v4;
  v153 = type metadata accessor for InvocationStepMetadata.Partial(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v142 = v7;
  OUTLINED_FUNCTION_10();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v131 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v131 - v12;
  v152 = type metadata accessor for InvocationStep(0);
  OUTLINED_FUNCTION_26();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v147 = v17;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_96();
  v141 = v19;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_96();
  v146 = v21;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_96();
  v137 = v23;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_96();
  v145 = v25;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_96();
  v150 = v27;
  OUTLINED_FUNCTION_10();
  v29 = MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v29);
  v148 = &v131 - v30;
  LOBYTE(v31) = 1;
  LOBYTE(v156) = 1;
  LOBYTE(v155[0]) = 1;
  v154[0] = 1;
  LOBYTE(v184) = 1;
  LOBYTE(v32) = 1;
  v186 = 1;
  v183 = 1;
  v180 = 1;
  v177 = 1;
  v33 = *(a1 + *(type metadata accessor for InvocationInformation(0) + 40));
  v34 = *(v33 + 16);
  if (v34)
  {
    v143 = v11;
    v144 = v33;
    OUTLINED_FUNCTION_69();
    v139 = v35;
    v37 = v36 + v35;
    v151 = *(v15 + 72);
    v38 = MEMORY[0x277D84F90];
    do
    {
      OUTLINED_FUNCTION_14_1();
      outlined init with copy of InvocationStep();
      OUTLINED_FUNCTION_4_2();
      outlined init with take of InvocationStep();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_13_1();
        v39 = v149;
        outlined init with take of InvocationStep();
        OUTLINED_FUNCTION_12_1();
        outlined init with copy of InvocationStep();
        OUTLINED_FUNCTION_11_1();
        outlined destroy of InvocationStepMetadata(v39, v40);
      }

      else
      {
        OUTLINED_FUNCTION_10_1();
        outlined init with take of InvocationStep();
      }

      v41 = &v13[*(v153 + 28)];
      v43 = *v41;
      v42 = *(v41 + 1);

      OUTLINED_FUNCTION_9_1();
      outlined destroy of InvocationStepMetadata(v13, v44);
      if (v42)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_90();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v38 = v48;
        }

        v45 = *(v38 + 16);
        v32 = (v45 + 1);
        if (v45 >= *(v38 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v38 = v49;
        }

        *(v38 + 16) = v32;
        v46 = v38 + 16 * v45;
        *(v46 + 32) = v43;
        *(v46 + 40) = v42;
      }

      v47 = v151;
      v37 += v151;
      --v34;
    }

    while (v34);
    v50 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v38);
    v51 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v50);
    *&v156 = v51;

    specialized MutableCollection<>.sort(by:)(&v156);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v53 = lazy protocol witness table accessor for type [String] and conformance [A]();
    v54 = BidirectionalCollection<>.joined(separator:)();
    v133 = v55;
    v134 = v54;

    v56 = v51[2];
    v31 = v142;
    v135 = v53;
    v136 = v52;
    if (v56)
    {
      v57 = specialized RandomNumberGenerator.next<A>(upperBound:)(v56);
      if ((v57 & 0x8000000000000000) != 0)
      {
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      if (v57 >= v51[2])
      {
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v58 = &v51[2 * v57];
      v59 = v58[5];
      v148 = v58[4];
      swift_bridgeObjectRetain_n();

      v60 = 0;
      v61 = v144;
      v32 = *(v144 + 16);
      v62 = v144 + v139;
      v140 = MEMORY[0x277D84F90];
      v132 = v144 + v139;
LABEL_17:
      v63 = v62 + v47 * v60;
      while (1)
      {
        if (v32 == v60)
        {

          v31 = v142;
          v77 = v140;
          goto LABEL_42;
        }

        if (v60 >= *(v61 + 16))
        {
          break;
        }

        outlined init with copy of InvocationStep();
        outlined init with copy of InvocationStep();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          OUTLINED_FUNCTION_13_1();
          v64 = v149;
          outlined init with take of InvocationStep();
          OUTLINED_FUNCTION_12_1();
          v31 = v143;
          outlined init with copy of InvocationStep();
          OUTLINED_FUNCTION_11_1();
          outlined destroy of InvocationStepMetadata(v64, v65);
        }

        else
        {
          OUTLINED_FUNCTION_10_1();
          v31 = v143;
          outlined init with take of InvocationStep();
        }

        v66 = (v31 + *(v153 + 28));
        v68 = *v66;
        v67 = v66[1];

        OUTLINED_FUNCTION_9_1();
        outlined destroy of InvocationStepMetadata(v31, v69);
        if (v67)
        {
          if (v68 == v148 && v67 == v59)
          {

LABEL_31:
            OUTLINED_FUNCTION_4_2();
            outlined init with take of InvocationStep();
            v73 = v140;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v156 = v73;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 16) + 1, 1);
              v73 = v156;
            }

            v76 = *(v73 + 16);
            v75 = *(v73 + 24);
            if (v76 >= v75 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v75 > 1, v76 + 1, 1);
              v73 = v156;
            }

            ++v60;
            *(v73 + 16) = v76 + 1;
            v140 = v73;
            OUTLINED_FUNCTION_4_2();
            outlined init with take of InvocationStep();
            v61 = v144;
            v62 = v132;
            goto LABEL_17;
          }

          v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v71)
          {
            goto LABEL_31;
          }
        }

        OUTLINED_FUNCTION_51();
        outlined destroy of InvocationStepMetadata(v150, v72);
        v63 += v47;
        ++v60;
        v61 = v144;
      }

      __break(1u);
    }

    else
    {

      v148 = 0;
      v59 = 0;
LABEL_42:
      v32 = *(v77 + 16);
      v99 = 0xFFFFFFFFLL;
      if (v32 < 0xFFFFFFFF)
      {
        v99 = *(v77 + 16);
      }

      v150 = v99;
      v186 = 0;
      v140 = v77;
      if (v32)
      {
        v100 = v77 + v139;

        v101 = MEMORY[0x277D84F90];
        v102 = v32;
        do
        {
          OUTLINED_FUNCTION_14_1();
          outlined init with copy of InvocationStep();
          OUTLINED_FUNCTION_4_2();
          outlined init with take of InvocationStep();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            OUTLINED_FUNCTION_13_1();
            v103 = v149;
            outlined init with take of InvocationStep();
            OUTLINED_FUNCTION_12_1();
            outlined init with copy of InvocationStep();
            OUTLINED_FUNCTION_11_1();
            outlined destroy of InvocationStepMetadata(v103, v104);
          }

          else
          {
            OUTLINED_FUNCTION_10_1();
            outlined init with take of InvocationStep();
          }

          v105 = (v31 + *(v153 + 32));
          v107 = *v105;
          v106 = v105[1];

          OUTLINED_FUNCTION_9_1();
          outlined destroy of InvocationStepMetadata(v31, v108);
          if (v106)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_90();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v101 = v111;
            }

            v109 = *(v101 + 16);
            if (v109 >= *(v101 + 24) >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v101 = v112;
            }

            *(v101 + 16) = v109 + 1;
            v110 = v101 + 16 * v109;
            *(v110 + 32) = v107;
            *(v110 + 40) = v106;
            v31 = v142;
          }

          v100 += v151;
          v102 = (v102 - 1);
        }

        while (v102);
      }

      else
      {
        v101 = MEMORY[0x277D84F90];
      }

      v113 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v101);
      v114 = specialized Sequence<>.sorted()(v113);

      *&v156 = v114;
      v115 = BidirectionalCollection<>.joined(separator:)();
      v152 = v116;
      v153 = v115;

      if (v32)
      {
        v117 = specialized RandomNumberGenerator.next<A>(upperBound:)(v32);
        if ((v117 & 0x8000000000000000) == 0)
        {
          if (v117 < *(v140 + 16))
          {
            OUTLINED_FUNCTION_14_1();
            outlined init with copy of InvocationStep();

            v151 = InvocationStep.stepID.getter();
            v149 = v118;

            v119 = InvocationStep.error.getter();
            v120 = v119;
            if (v119)
            {
              v121 = type metadata accessor for GeneralAppleIntelligenceError();
              v119 = lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError();
            }

            else
            {
              v121 = 0;
              *(&v156 + 1) = 0;
              *&v157 = 0;
            }

            *&v156 = v120;
            *(&v157 + 1) = v121;
            v158 = v119;
            OUTLINED_FUNCTION_1_2();
            v122 += 32;
            v32 = *v122;
            v147 = (*v122)(&v156);
            v91 = v123;
            v92 = v124;
            outlined destroy of NSObject?(&v156, &_s26AppleIntelligenceReporting0aB5Error_pSgMd, &_s26AppleIntelligenceReporting0aB5Error_pSgMR);

            v183 = BYTE4(v92) & 1;
            v125 = InvocationStep.error.getter();
            if (v125)
            {
              v93 = GeneralAppleIntelligenceError.telemetryHash.getter();
            }

            else
            {
              v93 = 0;
            }

            v180 = v125 == 0;
            v126 = InvocationStep.error.getter();
            if (v126)
            {
              v155[0] = v126;
              type metadata accessor for GeneralAppleIntelligenceError();
              lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError();
              AppleIntelligenceError.deepestUnderlyingError.getter();
            }

            else
            {
              v158 = 0;
              v156 = 0u;
              v157 = 0u;
            }

            v94 = v32(&v156);
            v95 = v127;
            v96 = v128;
            outlined destroy of NSObject?(&v156, &_s26AppleIntelligenceReporting0aB5Error_pSgMd, &_s26AppleIntelligenceReporting0aB5Error_pSgMR);
            OUTLINED_FUNCTION_51();
            outlined destroy of InvocationStepMetadata(v141, v129);

            v177 = BYTE4(v96) & 1;
            LOBYTE(v31) = v186;
            LOBYTE(v32) = v183;
            v98 = v180;
            v97 = BYTE4(v96) & 1;
            v83 = v133;
            v82 = v134;
            v84 = v148;
            v89 = v149;
            v85 = v150;
            v88 = v151;
            v87 = v152;
            v86 = v153;
            v90 = v147;
            goto LABEL_71;
          }

          goto LABEL_75;
        }

LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }
    }

    __break(1u);
    goto LABEL_74;
  }

  LODWORD(v152) = 1;
  LODWORD(v153) = 1;
  if (one-time initialization token for general != -1)
  {
LABEL_78:
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v78 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_65(v78, static Logging.general);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    _os_log_impl(&dword_227F43000, v79, v80, "It shouldn't be possible to have an invocation with no events", v81, 2u);
    OUTLINED_FUNCTION_11();
  }

  v82 = 0;
  v83 = 0;
  v84 = 0;
  v59 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  LODWORD(v92) = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  LODWORD(v96) = 0;
  v97 = v153;
  v98 = v152;
LABEL_71:
  v155[0] = v82;
  v155[1] = v83;
  v155[2] = v84;
  v155[3] = v59;
  LODWORD(v155[4]) = v85;
  BYTE4(v155[4]) = v31;
  *(&v155[4] + 5) = v184;
  HIBYTE(v155[4]) = v185;
  v155[5] = v86;
  v155[6] = v87;
  v155[7] = v88;
  v155[8] = v89;
  v155[9] = v90;
  v155[10] = v91;
  LODWORD(v155[11]) = v92;
  BYTE4(v155[11]) = v32;
  *(&v155[11] + 5) = v181;
  HIBYTE(v155[11]) = v182;
  LODWORD(v155[12]) = v93;
  BYTE4(v155[12]) = v98;
  *(&v155[12] + 5) = v178;
  HIBYTE(v155[12]) = v179;
  v155[13] = v94;
  v155[14] = v95;
  LODWORD(v155[15]) = v96;
  BYTE4(v155[15]) = v97;
  *&v156 = v82;
  *(&v156 + 1) = v83;
  *&v157 = v84;
  *(&v157 + 1) = v59;
  LODWORD(v158) = v85;
  BYTE4(v158) = v31;
  HIBYTE(v158) = v185;
  *(&v158 + 5) = v184;
  v159 = v86;
  v160 = v87;
  v161 = v88;
  v162 = v89;
  v163 = v90;
  v164 = v91;
  v165 = v92;
  v166 = v32;
  v168 = v182;
  v167 = v181;
  v169 = v93;
  v170 = v98;
  v172 = v179;
  v171 = v178;
  v173 = v94;
  v174 = v95;
  v175 = v96;
  v176 = v97;
  outlined init with copy of DataCollectorInternal.SampledSubsystemInfo(v155, v154);
  outlined destroy of DataCollectorInternal.SampledSubsystemInfo(&v156);
  return memcpy(v138, v155, 0x7DuLL);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(uint64_t a1)
{
  result = MEMORY[0x22AAAE2A0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    specialized Set._Variant.insert(_:)(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v2, a1);
  outlined consume of Set<String>.Iterator._Variant(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *specialized Sequence<>.sorted()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v7, v3 + 4, v1, a1);
  v5 = v7;

  outlined consume of Set<String>.Iterator._Variant(v5);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v7 = v3;
  specialized MutableCollection<>.sort(by:)(&v7);
  return v7;
}

uint64_t DataCollectorInternal.runInvocationDataCollectionAndUpload(dateSinceLastProcessed:)()
{
  OUTLINED_FUNCTION_0_2();
  v1[190] = v0;
  v1[189] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v1[191] = OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_68();
  v1 = v0[191];
  v2 = v0[189];
  OUTLINED_FUNCTION_1_2();
  v0[192] = (*(v3 + 144))();
  v4 = type metadata accessor for Date();
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(v1, v2, v4);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v4);
  OUTLINED_FUNCTION_1_2();
  v10 = (*(v6 + 128) + **(v6 + 128));
  v7 = swift_task_alloc();
  v0[193] = v7;
  *v7 = v0;
  v7[1] = DataCollectorInternal.runInvocationDataCollectionAndUpload(dateSinceLastProcessed:);
  v8 = v0[191];

  return v10(v8);
}

{
  OUTLINED_FUNCTION_68();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_18_0();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 1552) = v0;

  v7 = *(v4 + 1528);
  if (!v0)
  {
    *(v5 + 1560) = v3;
  }

  outlined destroy of NSObject?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  v23 = v0;
  v1 = (v0 + 188);
  v2 = v0[195];
  v3 = v0[194];
  v4 = v0[190];
  v0[188] = MEMORY[0x277D84F90];

  specialized Sequence.forEach(_:)(v2, v4, v0 + 188);

  if (one-time initialization token for general != -1)
  {
LABEL_15:
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_65(v5, static Logging.general);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_84();
    v22[0] = v9;
    *v8 = 136315138;
    swift_beginAccess();

    v11 = MEMORY[0x22AAAE0F0](v10, &type metadata for InvocationEvent);
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v22);

    *(v8 + 4) = v14;
    OUTLINED_FUNCTION_102(&dword_227F43000, v15, v7, "The invocation events are %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_34();
  }

  swift_beginAccess();
  v16 = *v1;
  v17 = *(*v1 + 16);

  v18 = 0;
  for (i = 32; ; i += 360)
  {
    if (v17 == v18)
    {
      swift_bridgeObjectRelease_n();

      OUTLINED_FUNCTION_16_0();
      goto LABEL_11;
    }

    if (v18 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v1 = v0[190];
    memcpy(v0 + 2, (v16 + i), 0x168uLL);
    memcpy(v22, (v16 + i), 0x168uLL);
    outlined init with copy of InvocationEvent((v0 + 2), (v0 + 47));
    closure #2 in DataCollectorInternal.runInvocationDataCollectionAndUpload(dateSinceLastProcessed:)(v22, v1);
    if (v3)
    {
      break;
    }

    ++v18;
    memcpy(v0 + 137, v22, 0x168uLL);
    outlined destroy of InvocationEvent((v0 + 137));
  }

  memcpy(v0 + 92, v22, 0x168uLL);
  outlined destroy of InvocationEvent((v0 + 92));
  swift_bridgeObjectRelease_n();

  OUTLINED_FUNCTION_35();
LABEL_11:

  return v20();
}

{
  OUTLINED_FUNCTION_0_2();

  OUTLINED_FUNCTION_35();

  return v0();
}

double closure #1 in DataCollectorInternal.runInvocationDataCollectionAndUpload(dateSinceLastProcessed:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v78 = a3;
  v66 = type metadata accessor for InvocationStep(0);
  MEMORY[0x28223BE20](v66);
  v58 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing14InvocationStepOSgMd, &_s36AppleIntelligenceReportingProcessing14InvocationStepOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v50[-v7];
  (*(*a2 + 264))(v105, a1);
  v79 = closure #1 in closure #1 in DataCollectorInternal.runInvocationDataCollectionAndUpload(dateSinceLastProcessed:)(a1);
  v8 = type metadata accessor for InvocationInformation(0);
  v9 = *(a1 + v8[6]);
  if (v9)
  {
    v10 = type metadata accessor for GeneralAppleIntelligenceError();
    v11 = lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError();
    v12 = v9;
  }

  else
  {
    v12 = 0;
    v10 = 0;
    v11 = 0;
    *(&v102 + 1) = 0;
    *&v103 = 0;
  }

  *&v102 = v12;
  *(&v103 + 1) = v10;
  v104 = v11;
  v13 = *(*a2 + 256);

  v14 = v13(&v102);
  v76 = v15;
  v77 = v14;
  v75 = v16;
  outlined destroy of NSObject?(&v102, &_s26AppleIntelligenceReporting0aB5Error_pSgMd, &_s26AppleIntelligenceReporting0aB5Error_pSgMR);
  if (v9)
  {
    v17 = GeneralAppleIntelligenceError.underlyingErrors.getter();
    specialized Collection.first.getter(v17, &v102);
  }

  else
  {
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
  }

  v18 = v13(&v102);
  v73 = v19;
  v74 = v18;
  v72 = v20;
  outlined destroy of NSObject?(&v102, &_s26AppleIntelligenceReporting0aB5Error_pSgMd, &_s26AppleIntelligenceReporting0aB5Error_pSgMR);
  v67 = v9;
  if (v9)
  {
    *&v124 = v12;
    type metadata accessor for GeneralAppleIntelligenceError();
    lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError();
    AppleIntelligenceError.deepestUnderlyingError.getter();
  }

  else
  {
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
  }

  v21 = v13(&v102);
  v70 = v22;
  v71 = v21;
  v69 = v23;
  outlined destroy of NSObject?(&v102, &_s26AppleIntelligenceReporting0aB5Error_pSgMd, &_s26AppleIntelligenceReporting0aB5Error_pSgMR);
  v24 = *(a1 + v8[8]);
  if (v24[2])
  {
    v25 = v24[4];
    v64 = v24[5];
    v65 = v25;
  }

  else
  {
    v64 = 0;
    v65 = 0;
  }

  *&v102 = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v26 = BidirectionalCollection<>.joined(separator:)();
  v62 = v27;
  v63 = v26;

  *&v102 = *(a1 + v8[7]);

  v28 = BidirectionalCollection<>.joined(separator:)();
  v60 = v29;
  v61 = v28;

  v30 = v67;
  if (v67)
  {
    v59 = GeneralAppleIntelligenceError.telemetryHash.getter();
  }

  else
  {
    v59 = 0;
  }

  v31 = v68;
  v102 = v105[1];
  v124 = v109;
  specialized Collection.first.getter();
  if (__swift_getEnumTagSinglePayload(v31, 1, v66) == 1)
  {
    outlined init with copy of AppleIntelligenceError?();
    outlined init with copy of AppleIntelligenceError?();
    outlined destroy of NSObject?(v31, &_s36AppleIntelligenceReportingProcessing14InvocationStepOSgMd, &_s36AppleIntelligenceReportingProcessing14InvocationStepOSgMR);
    LODWORD(v68) = 2;
  }

  else
  {
    v32 = v58;
    outlined init with copy of InvocationStep();
    LODWORD(v68) = swift_getEnumCaseMultiPayload() == 1;
    outlined init with copy of AppleIntelligenceError?();
    outlined init with copy of AppleIntelligenceError?();
    outlined destroy of InvocationStepMetadata(v32, type metadata accessor for InvocationStep);
    outlined destroy of InvocationStepMetadata(v31, type metadata accessor for InvocationStep);
  }

  v122 = v106;
  v123 = v107;
  v83 = v111;
  v84 = v112;
  v33 = v114;
  v34 = v113;
  v120 = v115;
  v121 = v110;
  v82 = v117;
  v81 = v116;
  v118 = v105[0];
  v119 = v108;
  outlined init with copy of AppleIntelligenceError?();
  outlined init with copy of AppleIntelligenceError?();
  outlined init with copy of AppleIntelligenceError?();
  outlined init with copy of AppleIntelligenceError?();
  outlined destroy of DataCollectorInternal.SampledSubsystemInfo(v105);
  v101 = v30 == 0;
  *&v100[3] = v102;
  v85 = v124;
  v99 = 1;
  v98 = 1;
  v97 = 1;
  v96 = 1;
  v95 = 1;
  v94 = 1;
  v35 = v75;
  v93 = BYTE4(v75) & 1;
  v36 = v72;
  v92 = BYTE4(v72) & 1;
  v37 = v69;
  v91 = BYTE4(v69) & 1;
  *(v90 + 2) = v122;
  BYTE2(v90[1]) = v123;
  *&v89[3] = v121;
  v66 = (v34 << 24) | (v33 << 56);
  *&v88[3] = v120;
  LODWORD(v34) = v79;
  v87 = BYTE4(v79) & 1;
  *&v86[3] = v119;
  v80 = v118;
  LOBYTE(v33) = v101;
  v54 = 1;
  v55 = 1;
  v52 = 1;
  v53 = 1;
  v51 = 1;
  v56 = BYTE4(v75) & 1;
  v57 = BYTE4(v72) & 1;
  LODWORD(v58) = BYTE4(v69) & 1;
  LODWORD(v67) = BYTE4(v79) & 1;
  v38 = v78;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v39 = *(*v38 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v39);
  v40 = *v38;
  *(v40 + 16) = v39 + 1;
  v41 = v40 + 360 * v39;
  v42 = v64;
  *(v41 + 32) = v65;
  *(v41 + 40) = v42;
  v41 += 32;
  v43 = v62;
  *(v41 + 16) = v63;
  *(v41 + 24) = v43;
  v44 = v60;
  *(v41 + 32) = v61;
  *(v41 + 40) = v44;
  *(v41 + 48) = v59;
  *(v41 + 52) = v33;
  *(v41 + 53) = *v100;
  v45 = v85;
  *(v41 + 254) = v90[0];
  *(v41 + 257) = *(v90 + 3);
  *(v41 + 285) = v66;
  *(v41 + 68) = *&v100[15];
  LOBYTE(v44) = v54;
  *(v41 + 96) = v55;
  *(v41 + 112) = v44;
  LOBYTE(v44) = v52;
  *(v41 + 128) = v53;
  *(v41 + 144) = v44;
  *(v41 + 160) = v51;
  *(v41 + 176) = 1;
  v46 = v76;
  *(v41 + 184) = v77;
  *(v41 + 192) = v46;
  *(v41 + 200) = v35;
  *(v41 + 204) = v56;
  v47 = v73;
  *(v41 + 208) = v74;
  *(v41 + 216) = v47;
  *(v41 + 224) = v36;
  *(v41 + 228) = v57;
  v48 = v70;
  *(v41 + 232) = v71;
  *(v41 + 240) = v48;
  *(v41 + 248) = v37;
  *(v41 + 252) = v58;
  *(v41 + 253) = v68;
  *(v41 + 276) = *&v89[15];
  *(v41 + 280) = v83;
  *(v41 + 284) = v84;
  *(v41 + 293) = *v88;
  *(v41 + 308) = *&v88[15];
  *(v41 + 316) = v82;
  *(v41 + 312) = v81;
  *(v41 + 320) = v34;
  *(v41 + 324) = v67;
  *(v41 + 340) = *&v86[15];
  *(v41 + 261) = *v89;
  *(v41 + 325) = *v86;
  *(v41 + 72) = v45;
  *(v41 + 88) = 0;
  *(v41 + 104) = 0;
  *(v41 + 120) = 0;
  *(v41 + 136) = 0;
  *(v41 + 152) = 0;
  *(v41 + 168) = 0;
  result = *&v80;
  *(v41 + 344) = v80;
  return result;
}

unint64_t closure #1 in closure #1 in DataCollectorInternal.runInvocationDataCollectionAndUpload(dateSinceLastProcessed:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing14InvocationStepOSgMd, &_s36AppleIntelligenceReportingProcessing14InvocationStepOSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20[-v2];
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-v9];
  type metadata accessor for InvocationInformation(0);
  specialized Collection.first.getter();
  v11 = type metadata accessor for InvocationStep(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v11);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of NSObject?(v3, &_s36AppleIntelligenceReportingProcessing14InvocationStepOSgMd, &_s36AppleIntelligenceReportingProcessing14InvocationStepOSgMR);
    v13 = 0;
  }

  else
  {
    InvocationStep.startTime.getter(v8);
    outlined destroy of InvocationStepMetadata(v3, type metadata accessor for InvocationStep);
    (*(v5 + 32))(v10, v8, v4);
    Date.timeIntervalSince1970.getter();
    v15 = round(v14);
    if (v14 < 0.0)
    {
      v16 = 0;
    }

    else
    {
      v16 = -1;
    }

    v17 = v15 >= 4294967300.0 || v15 <= -1.0;
    v18 = vcvtad_u64_f64(v14);
    if (v17)
    {
      v13 = v16;
    }

    else
    {
      v13 = v18;
    }

    (*(v5 + 8))(v10, v4);
  }

  return v13 | ((EnumTagSinglePayload == 1) << 32);
}

uint64_t closure #2 in DataCollectorInternal.runInvocationDataCollectionAndUpload(dateSinceLastProcessed:)(void *__src, uint64_t a2)
{
  v3 = v2;
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logging.general);
  outlined init with copy of InvocationEvent(__dst, v21);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  outlined destroy of InvocationEvent(__dst);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21[0] = v9;
    *v8 = 136315138;
    if (__dst[1])
    {
      v10 = __dst[0];
    }

    else
    {
      v10 = 0x6E776F6E6B6E75;
    }

    if (__dst[1])
    {
      v11 = __dst[1];
    }

    else
    {
      v11 = 0xE700000000000000;
    }

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v21);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_227F43000, v6, v7, "Uploading %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AAAF0A0](v9, -1, -1);
    MEMORY[0x22AAAF0A0](v8, -1, -1);
  }

  (*(*a2 + 192))(v18);
  type metadata accessor for CAEncoder();
  v17[3] = &type metadata for InvocationEvent;
  v17[4] = lazy protocol witness table accessor for type InvocationEvent and conformance InvocationEvent();
  v17[0] = swift_allocObject();
  memcpy((v17[0] + 16), __dst, 0x168uLL);
  outlined init with copy of InvocationEvent(__dst, v21);
  v13 = static CAEncoder.toCADictionary(_:)(v17);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  if (!v3)
  {
    v14 = v19;
    v15 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v15 + 8))(0xD00000000000002FLL, 0x8000000227FB4EE0, v13, v14, v15);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v18);
}

uint64_t DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:)()
{
  OUTLINED_FUNCTION_0_2();
  v1[794] = v0;
  v1[793] = v2;
  v1[792] = v3;
  v4 = type metadata accessor for Date();
  v1[795] = v4;
  OUTLINED_FUNCTION_44(v4);
  v1[796] = v5;
  v1[797] = OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v1 = swift_allocObject();
  v0[798] = v1;
  *(v1 + 16) = xmmword_227FB1BA0;
  if (one-time initialization token for appleIntelligenceUseCaseID != -1)
  {
    swift_once();
  }

  object = appleIntelligenceUseCaseID._object;
  *(v1 + 32) = appleIntelligenceUseCaseID._countAndFlagsBits;
  *(v1 + 40) = object;
  v3 = one-time initialization token for diffusionUseCaseID;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = diffusionUseCaseID._object;
  *(v1 + 48) = diffusionUseCaseID._countAndFlagsBits;
  *(v1 + 56) = v4;
  strcpy((v1 + 64), "com.apple.siri");
  *(v1 + 79) = -18;
  OUTLINED_FUNCTION_1_2();
  v6 = *(v5 + 168);

  v0[799] = v6(v7);
  Date.init()();
  OUTLINED_FUNCTION_1_2();
  v14 = (*(v8 + 112) + **(v8 + 112));
  v9 = swift_task_alloc();
  v0[800] = v9;
  *v9 = v0;
  v9[1] = DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:);
  v10 = v0[797];
  v11 = v0[793];
  v12 = v0[792];

  return v14(v12, v10, v1, v11);
}

{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18_0();
  *v5 = v4;
  *(v7 + 6408) = v6;
  *(v7 + 6416) = v0;

  v8 = OUTLINED_FUNCTION_48();
  v9(v8);

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_63();
  v3 = v2;
  OUTLINED_FUNCTION_37();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18_0();
  *v6 = v5;
  *(v3 + 6504) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_63();
  v3 = v2;
  OUTLINED_FUNCTION_37();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18_0();
  *v6 = v5;
  *(v3 + 6528) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_0_2();

  OUTLINED_FUNCTION_35();

  return v0();
}

void DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:)()
{
  v84 = v0;
  memcpy(v0 + 352, v0 + 252, 0x189uLL);
  outlined destroy of AvailabilityDetailedStatusEvent((v0 + 352));
  if (one-time initialization token for general != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v2 = v0[813];
    v82 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_65(v82, static Logging.general);

    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[813];
    if (v6)
    {
      v8 = v0[806];
      v9 = v0[805];
      OUTLINED_FUNCTION_80();
      v10 = OUTLINED_FUNCTION_43();
      v11 = OUTLINED_FUNCTION_84();
      v83 = v11;
      *v1 = 136315394;
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v83);
      OUTLINED_FUNCTION_22_0(v12);
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v1 + 14) = v13;
      *v10 = v13;
      OUTLINED_FUNCTION_88(&dword_227F43000, v4, v5, "Failed to upload AvailabilityChangeEvent to SELF for %s with error %@.");
      outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_11();
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_34();
    }

    else
    {
    }

LABEL_5:
    OUTLINED_FUNCTION_116();
    v14 = v0[808];
    if (v15)
    {
      break;
    }

    OUTLINED_FUNCTION_30();
    if (!v17)
    {
LABEL_13:
      OUTLINED_FUNCTION_3_3(v16);
      v1 = *v22;
      v0[805] = *v22;
      v0[806] = v22[1];
      OUTLINED_FUNCTION_120(v23, v24);
      v26 = *(v25 + 8);
      v0[808] = v26;
      v27 = *(v14 + 16);
      v0[809] = v27;
      v28 = v14 + 32;

      v29 = 0;
      while (v27 != v29)
      {
        if (v29 >= *(v14 + 16))
        {
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_124(v0 + 2);
        OUTLINED_FUNCTION_124(v0 + 52);
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_115();
        closure #1 in DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:)(v30, v31, v32, v33);
        if (v7)
        {
          OUTLINED_FUNCTION_72();
          outlined destroy of AvailabilityDetailedStatusEvent((v0 + 152));
          if (one-time initialization token for general != -1)
          {
            OUTLINED_FUNCTION_0_3();
            swift_once();
          }

          __swift_project_value_buffer(v82, static Logging.general);
          OUTLINED_FUNCTION_57();

          v34 = v7;
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = OUTLINED_FUNCTION_80();
            v38 = OUTLINED_FUNCTION_83();
            v83 = OUTLINED_FUNCTION_84();
            *v37 = 136315394;
            v39 = OUTLINED_FUNCTION_48();
            v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v41);
            OUTLINED_FUNCTION_123(v42);
            v43 = _swift_stdlib_bridgeErrorToNSError();
            *(v37 + 14) = v43;
            *v38 = v43;
            _os_log_impl(&dword_227F43000, v35, v36, "Failed to upload AvailabilityDetailedStatusEvent for %s with error %@.", v37, 0x16u);
            outlined destroy of NSObject?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_61();
            OUTLINED_FUNCTION_11();
          }

          else
          {
          }

          break;
        }

        ++v29;
        OUTLINED_FUNCTION_73();
        outlined destroy of AvailabilityDetailedStatusEvent((v0 + 452));
        v28 += 400;
      }

      v44 = 0;
      v45 = *(v26 + 16);
      v0[810] = v45;
      v46 = v26 + 32;
      while (v45 != v44)
      {
        if (v44 >= *(v26 + 16))
        {
          goto LABEL_47;
        }

        OUTLINED_FUNCTION_125(v0 + 502);
        OUTLINED_FUNCTION_125(v0 + 531);
        OUTLINED_FUNCTION_87();
        OUTLINED_FUNCTION_115();
        closure #2 in DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:)(v47, v48, v49, v50);
        if (v7)
        {
          memcpy(v0 + 589, v0 + 531, 0xE5uLL);
          outlined destroy of AvailabilityChangeEvent((v0 + 589));
          if (one-time initialization token for general != -1)
          {
            OUTLINED_FUNCTION_0_3();
            swift_once();
          }

          __swift_project_value_buffer(v82, static Logging.general);
          OUTLINED_FUNCTION_57();

          v51 = v7;
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = OUTLINED_FUNCTION_80();
            v55 = OUTLINED_FUNCTION_83();
            v56 = OUTLINED_FUNCTION_84();
            v83 = v56;
            *v54 = 136315394;
            v57 = OUTLINED_FUNCTION_48();
            *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v59);
            *(v54 + 12) = 2112;
            v60 = v7;
            v61 = _swift_stdlib_bridgeErrorToNSError();
            *(v54 + 14) = v61;
            *v55 = v61;
            _os_log_impl(&dword_227F43000, v52, v53, "Failed to upload AvailabiltyChangeEvent for %s with error %@.", v54, 0x16u);
            outlined destroy of NSObject?(v55, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            OUTLINED_FUNCTION_11();
            __swift_destroy_boxed_opaque_existential_0Tm(v56);
            OUTLINED_FUNCTION_36();
            OUTLINED_FUNCTION_11();
          }

          else
          {
          }

          break;
        }

        ++v44;
        memcpy(v0 + 763, v0 + 531, 0xE5uLL);
        outlined destroy of AvailabilityChangeEvent((v0 + 763));
        v46 += 232;
      }

      OUTLINED_FUNCTION_58();
      if (!v63)
      {

        goto LABEL_5;
      }

      if (*(v62 + 16))
      {
        OUTLINED_FUNCTION_71(v62);
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_109();
        v74 = swift_task_alloc();
        v75 = OUTLINED_FUNCTION_46(v74);
        *v75 = v76;
        OUTLINED_FUNCTION_1_3(v75);
        OUTLINED_FUNCTION_122();

        closure #3 in DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:)(v77, v78, v79, v80);
        return;
      }

      goto LABEL_51;
    }

    while (!__OFADD__(v16, 1))
    {
      OUTLINED_FUNCTION_31();
      if (v18 == v19)
      {

        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_122();

        __asm { BRAA            X1, X16 }
      }

      OUTLINED_FUNCTION_45();
      if (v21)
      {
        v16 = v20;
        goto LABEL_13;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  if (!*(v14 + 16))
  {
    __break(1u);
LABEL_51:
    __break(1u);
    return;
  }

  memcpy(v0 + 618, (v14 + 32), 0xE5uLL);
  memcpy(v0 + 647, v0 + 618, 0xE5uLL);
  outlined init with copy of AvailabilityChangeEvent((v0 + 618), (v0 + 676));
  v66 = swift_task_alloc();
  v67 = OUTLINED_FUNCTION_47(v66);
  *v67 = v68;
  OUTLINED_FUNCTION_2_3(v67);
  OUTLINED_FUNCTION_122();

  closure #4 in DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:)(v69, v70, v71, v72);
}

void DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_92();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_121();
  a24 = v26;
  memcpy(v26 + 705, v26 + 647, 0xE5uLL);
  outlined destroy of AvailabilityChangeEvent((v26 + 705));
  if (one-time initialization token for general != -1)
  {
LABEL_50:
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v29 = v26[816];
  v114 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_65(v114, static Logging.general);

  v30 = v29;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  v33 = os_log_type_enabled(v31, v32);
  v34 = v26[816];
  v35 = v26[806];
  v36 = &dword_227FB2000;
  if (v33)
  {
    v37 = v26[805];
    OUTLINED_FUNCTION_80();
    v38 = OUTLINED_FUNCTION_43();
    v39 = OUTLINED_FUNCTION_84();
    a14 = v39;
    dword_227FB2000 = 136315394;
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v35, &a14);

    unk_227FB2004 = v40;
    *"" = 2112;
    v41 = v34;
    *&algn_227FB200D[1] = _swift_stdlib_bridgeErrorToNSError();
    *v38 = 0xDC80FFF9DC7C0000;
    OUTLINED_FUNCTION_88(&dword_227F43000, v31, v32, "Failed to upload AvailabilityChangeEvent to SELF for %s with error %@.");
    outlined destroy of NSObject?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11();
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    OUTLINED_FUNCTION_11();
    v36 = &dword_227FB2000;
    OUTLINED_FUNCTION_11();
  }

  else
  {
  }

  *&v42 = *(v36 + 12);
  v113 = v42;
  while (2)
  {
    OUTLINED_FUNCTION_30();
    if (v44)
    {
      while (1)
      {
        if (__OFADD__(v43, 1))
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        OUTLINED_FUNCTION_31();
        if (v45 == v46)
        {
          break;
        }

        OUTLINED_FUNCTION_45();
        if (v48)
        {
          v43 = v47;
          goto LABEL_13;
        }
      }

      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_42();

      v90(v89, v90, v91, v92, v93, v94, v95, v96, a9, a10, v113, *(&v113 + 1), v114, a14, a15, a16, a17, a18);
    }

    else
    {
LABEL_13:
      OUTLINED_FUNCTION_3_3(v43);
      v50 = *v49;
      v26[805] = *v49;
      v51 = v49[1];
      v26[806] = v51;
      OUTLINED_FUNCTION_120(v52, v53);
      v55 = *(v54 + 8);
      v26[808] = v55;
      isa = v31[2].isa;
      v26[809] = isa;
      v57 = v31 + 4;

      v58 = 0;
      while (1)
      {
        if (isa == v58)
        {
          goto LABEL_23;
        }

        if (v58 >= v31[2].isa)
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v59 = v26[794];
        OUTLINED_FUNCTION_124(v26 + 2);
        OUTLINED_FUNCTION_124(v26 + 52);
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_113();
        closure #1 in DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:)(v60, v61, v62, v63);
        if (v59)
        {
          break;
        }

        v58 = (v58 + 1);
        OUTLINED_FUNCTION_73();
        outlined destroy of AvailabilityDetailedStatusEvent((v26 + 452));
        v57 += 50;
      }

      OUTLINED_FUNCTION_72();
      outlined destroy of AvailabilityDetailedStatusEvent((v26 + 152));
      if (one-time initialization token for general != -1)
      {
        OUTLINED_FUNCTION_0_3();
        swift_once();
      }

      OUTLINED_FUNCTION_65(v114, static Logging.general);

      v64 = v59;
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = OUTLINED_FUNCTION_80();
        v68 = OUTLINED_FUNCTION_83();
        a10 = OUTLINED_FUNCTION_84();
        a14 = a10;
        *v67 = v113;
        v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &a14);
        OUTLINED_FUNCTION_123(v69);
        v70 = _swift_stdlib_bridgeErrorToNSError();
        *(v67 + 14) = v70;
        *v68 = v70;
        _os_log_impl(&dword_227F43000, v65, v66, "Failed to upload AvailabilityDetailedStatusEvent for %s with error %@.", v67, 0x16u);
        outlined destroy of NSObject?(v68, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_34();
        __swift_destroy_boxed_opaque_existential_0Tm(a10);
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_11();
      }

      else
      {
      }

LABEL_23:
      v71 = 0;
      v72 = *(v55 + 16);
      v26[810] = v72;
      v73 = v55 + 32;
      while (v72 != v71)
      {
        if (v71 >= *(v55 + 16))
        {
          goto LABEL_48;
        }

        v74 = v26[794];
        OUTLINED_FUNCTION_125(v26 + 502);
        OUTLINED_FUNCTION_125(v26 + 531);
        outlined init with copy of AvailabilityChangeEvent((v26 + 502), (v26 + 560));
        OUTLINED_FUNCTION_113();
        closure #2 in DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:)(v75, v76, v77, v78);
        if (v74)
        {
          memcpy(v26 + 589, v26 + 531, 0xE5uLL);
          outlined destroy of AvailabilityChangeEvent((v26 + 589));
          if (one-time initialization token for general != -1)
          {
            OUTLINED_FUNCTION_0_3();
            swift_once();
          }

          OUTLINED_FUNCTION_65(v114, static Logging.general);

          v79 = v74;
          v80 = Logger.logObject.getter();
          v81 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v80, v81))
          {
            v82 = OUTLINED_FUNCTION_80();
            OUTLINED_FUNCTION_83();
            v83 = OUTLINED_FUNCTION_52();
            a14 = v83;
            *v82 = v113;
            *(v82 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &a14);
            *(v82 + 12) = 2112;
            v84 = v74;
            v85 = _swift_stdlib_bridgeErrorToNSError();
            *(v82 + 14) = v85;
            MEMORY[0x1268] = v85;
            _os_log_impl(&dword_227F43000, v80, v81, "Failed to upload AvailabiltyChangeEvent for %s with error %@.", v82, 0x16u);
            outlined destroy of NSObject?(4712, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            OUTLINED_FUNCTION_36();
            __swift_destroy_boxed_opaque_existential_0Tm(v83);
            OUTLINED_FUNCTION_34();
            OUTLINED_FUNCTION_56();
          }

          else
          {
          }

          break;
        }

        ++v71;
        memcpy(v26 + 763, v26 + 531, 0xE5uLL);
        outlined destroy of AvailabilityChangeEvent((v26 + 763));
        v73 += 232;
      }

      OUTLINED_FUNCTION_58();
      if (!v87)
      {

        OUTLINED_FUNCTION_116();
        v31 = v26[808];
        if (!v88)
        {

          continue;
        }

        if (v31[2].isa)
        {
          memcpy(v26 + 618, &v31[4], 0xE5uLL);
          memcpy(v26 + 647, v26 + 618, 0xE5uLL);
          outlined init with copy of AvailabilityChangeEvent((v26 + 618), (v26 + 676));
          v105 = swift_task_alloc();
          v106 = OUTLINED_FUNCTION_47(v105);
          *v106 = v107;
          OUTLINED_FUNCTION_2_3(v106);
          OUTLINED_FUNCTION_42();

          closure #4 in DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:)(v108, v109, v110, v111);
          return;
        }

LABEL_52:
        __break(1u);
        return;
      }

      if (!*(v86 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_71(v86);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_109();
      v97 = swift_task_alloc();
      v98 = OUTLINED_FUNCTION_46(v97);
      *v98 = v99;
      OUTLINED_FUNCTION_1_3(v98);
      OUTLINED_FUNCTION_42();

      closure #3 in DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:)(v100, v101, v102, v103);
    }

    break;
  }
}

uint64_t closure #1 in DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:)(void *__src, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  memcpy(__dst, __src, 0x189uLL);
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logging.general);
  outlined init with copy of AvailabilityDetailedStatusEvent(__dst, v25);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  outlined destroy of AvailabilityDetailedStatusEvent(__dst);

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v22[0] = v27;
    *v12 = 136315394;
    memcpy(v25, __dst, 0x189uLL);
    v13 = AvailabilityDetailedStatusEvent.debugDescription.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v22);

    *(v12 + 4) = v15;
    v5 = v4;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v22);
    _os_log_impl(&dword_227F43000, v10, v11, "runAssetDeliveryDataCollectionAndUpload AvailabilityDetailedStatusEvent %s for %s.", v12, 0x16u);
    v16 = v27;
    swift_arrayDestroy();
    MEMORY[0x22AAAF0A0](v16, -1, -1);
    MEMORY[0x22AAAF0A0](v12, -1, -1);
  }

  (*(*a4 + 192))(v22);
  type metadata accessor for CAEncoder();
  v21[3] = &type metadata for AvailabilityDetailedStatusEvent;
  v21[4] = lazy protocol witness table accessor for type AvailabilityDetailedStatusEvent and conformance AvailabilityDetailedStatusEvent();
  v21[0] = swift_allocObject();
  memcpy((v21[0] + 16), __dst, 0x189uLL);
  outlined init with copy of AvailabilityDetailedStatusEvent(__dst, v25);
  v17 = static CAEncoder.toCADictionary(_:)(v21);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  if (!v5)
  {
    v18 = v23;
    v19 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v19 + 8))(0xD000000000000036, 0x8000000227FB4EA0, v17, v18, v19);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v22);
}

uint64_t closure #2 in DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:)(void *__src, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  memcpy(__dst, __src, 0xE5uLL);
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logging.general);
  outlined init with copy of AvailabilityChangeEvent(__dst, v25);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  outlined destroy of AvailabilityChangeEvent(__dst);

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v22[0] = v27;
    *v12 = 136315394;
    memcpy(v25, __dst, 0xE5uLL);
    v13 = AvailabilityChangeEvent.debugDescription.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v22);

    *(v12 + 4) = v15;
    v5 = v4;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v22);
    _os_log_impl(&dword_227F43000, v10, v11, "runAssetDeliveryDataCollectionAndUpload AvailabiltyChangeEvent %s for %s.", v12, 0x16u);
    v16 = v27;
    swift_arrayDestroy();
    MEMORY[0x22AAAF0A0](v16, -1, -1);
    MEMORY[0x22AAAF0A0](v12, -1, -1);
  }

  (*(*a4 + 192))(v22);
  type metadata accessor for CAEncoder();
  v21[3] = &type metadata for AvailabilityChangeEvent;
  v21[4] = lazy protocol witness table accessor for type AvailabilityChangeEvent and conformance AvailabilityChangeEvent();
  v21[0] = swift_allocObject();
  memcpy((v21[0] + 16), __dst, 0xE5uLL);
  outlined init with copy of AvailabilityChangeEvent(__dst, v25);
  v17 = static CAEncoder.toCADictionary(_:)(v21);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  if (!v5)
  {
    v18 = v23;
    v19 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v19 + 8))(0xD000000000000037, 0x8000000227FB4E60, v17, v18, v19);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v22);
}

uint64_t closure #3 in DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:)(void *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[159] = a4;
  v4[158] = a3;
  v4[157] = a2;
  memcpy(v4 + 2, __src, 0x189uLL);

  return MEMORY[0x2822009F8](closure #3 in DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:), 0, 0);
}

uint64_t closure #3 in DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:)()
{
  v18 = v0;
  if (one-time initialization token for general != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_65(v1, static Logging.general);
  outlined init with copy of AvailabilityDetailedStatusEvent((v0 + 2), (v0 + 52));

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of AvailabilityDetailedStatusEvent((v0 + 2));

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[158];
    v5 = v0[157];
    v6 = OUTLINED_FUNCTION_80();
    v16 = swift_slowAlloc();
    *v6 = 136315394;
    memcpy(__dst, v0 + 2, sizeof(__dst));
    v7 = AvailabilityDetailedStatusEvent.debugDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v16);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);
    OUTLINED_FUNCTION_88(&dword_227F43000, v2, v3, "SELF Uploading AvailabilityDetailedStatusEvent %s for %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_34();
  }

  OUTLINED_FUNCTION_1_2();
  (*(v10 + 216))();
  v11 = v0[155];
  v12 = v0[156];
  __swift_project_boxed_opaque_existential_1(v0 + 152, v11);
  memcpy(v0 + 102, v0 + 2, 0x189uLL);
  v15 = (*(v12 + 24) + **(v12 + 24));
  v13 = swift_task_alloc();
  v0[160] = v13;
  *v13 = v0;
  v13[1] = closure #3 in DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:);

  return v15(v0 + 102, v11, v12);
}

{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_63();
  v3 = v2;
  OUTLINED_FUNCTION_37();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18_0();
  *v6 = v5;
  *(v3 + 1288) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_49();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v3 + 1216));
    OUTLINED_FUNCTION_35();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_0_2();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 1216));
  OUTLINED_FUNCTION_35();

  return v1();
}

uint64_t Collection.asyncForEach(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = *(a4 + 8);
  v5[7] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_26();
  v5[8] = v6;
  v5[9] = OUTLINED_FUNCTION_97();
  type metadata accessor for Optional();
  v5[10] = OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_26();
  v5[11] = v7;
  v5[12] = OUTLINED_FUNCTION_97();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[13] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_44(AssociatedTypeWitness);
  v5[14] = v9;
  v5[15] = OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t Collection.asyncForEach(_:)()
{
  OUTLINED_FUNCTION_68();
  v1 = v0[6];
  v2 = v0[4];
  (*(v0[11] + 16))(v0[12], v0[5], v2);
  dispatch thunk of Sequence.makeIterator()();
  OUTLINED_FUNCTION_95();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = OUTLINED_FUNCTION_94();
    v4(v3);

    OUTLINED_FUNCTION_16_0();

    return v5();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_114();
    v8(v7);
    OUTLINED_FUNCTION_33();
    v9 = swift_task_alloc();
    v0[16] = v9;
    *v9 = v0;
    v10 = OUTLINED_FUNCTION_39(v9);

    return v11(v10);
  }
}

{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_68();
  (*(v1[8] + 8))(v1[9], v1[7]);
  OUTLINED_FUNCTION_95();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if (__swift_getEnumTagSinglePayload(v0, 1, v2) == 1)
  {
    v3 = OUTLINED_FUNCTION_94();
    v4(v3);

    OUTLINED_FUNCTION_16_0();

    return v5();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_114();
    v8(v7);
    OUTLINED_FUNCTION_33();
    v9 = swift_task_alloc();
    v1[16] = v9;
    *v9 = v1;
    v10 = OUTLINED_FUNCTION_39(v9);

    return v11(v10);
  }
}

{
  OUTLINED_FUNCTION_68();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_35();

  return v4();
}

uint64_t closure #4 in DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:)(void *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[96] = a4;
  v4[95] = a3;
  v4[94] = a2;
  memcpy(v4 + 2, __src, 0xE5uLL);

  return MEMORY[0x2822009F8](closure #4 in DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:), 0, 0);
}

uint64_t closure #4 in DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:)()
{
  v18 = v0;
  if (one-time initialization token for general != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_65(v1, static Logging.general);
  outlined init with copy of AvailabilityChangeEvent((v0 + 2), (v0 + 31));

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of AvailabilityChangeEvent((v0 + 2));

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[95];
    v5 = v0[94];
    v6 = OUTLINED_FUNCTION_80();
    v16 = swift_slowAlloc();
    *v6 = 136315394;
    memcpy(__dst, v0 + 2, sizeof(__dst));
    v7 = AvailabilityChangeEvent.debugDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v16);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);
    OUTLINED_FUNCTION_88(&dword_227F43000, v2, v3, "SELF Uploading AvailabilityChangeEvent %s for %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_34();
  }

  OUTLINED_FUNCTION_1_2();
  (*(v10 + 216))();
  v11 = v0[92];
  v12 = v0[93];
  __swift_project_boxed_opaque_existential_1(v0 + 89, v11);
  memcpy(v0 + 60, v0 + 2, 0xE5uLL);
  v15 = (*(v12 + 16) + **(v12 + 16));
  v13 = swift_task_alloc();
  v0[97] = v13;
  *v13 = v0;
  v13[1] = closure #4 in DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:);

  return v15(v0 + 60, v11, v12);
}

{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_63();
  v3 = v2;
  OUTLINED_FUNCTION_37();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18_0();
  *v6 = v5;
  *(v3 + 784) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_49();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v3 + 712));
    OUTLINED_FUNCTION_35();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_0_2();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 712));
  OUTLINED_FUNCTION_35();

  return v1();
}

void *DataCollectorInternal.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  return v0;
}

uint64_t DataCollectorInternal.__deallocating_deinit()
{
  DataCollectorInternal.deinit();

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

{
  return a1();
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_53();
  if (v6)
  {
    OUTLINED_FUNCTION_8_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_50();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_2();
    }
  }

  OUTLINED_FUNCTION_19_0();
  if (v3)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7Combine9Publisher_ps5Error_p7FailureAcDPRts_36AppleIntelligenceReportingProcessing0hI10BiomeEventO6OutputAGRtsXPGMd, &_ss23_ContiguousArrayStorageCy7Combine9Publisher_ps5Error_p7FailureAcDPRts_36AppleIntelligenceReportingProcessing0hI10BiomeEventO6OutputAGRtsXPGMR);
    v4 = 40;
    v10 = OUTLINED_FUNCTION_85(v9);
    v11 = _swift_stdlib_malloc_size(v10);
    OUTLINED_FUNCTION_29(v11);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_112();
  if (v1)
  {
    if (v10 != v0 || v5 + 40 * v2 <= v4)
    {
      v13 = OUTLINED_FUNCTION_48();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9Publisher_ps5Error_p7FailureAaBPRts_36AppleIntelligenceReportingProcessing0eF10BiomeEventO6OutputAERtsXPMd, &_s7Combine9Publisher_ps5Error_p7FailureAaBPRts_36AppleIntelligenceReportingProcessing0eF10BiomeEventO6OutputAERtsXPMR);
    OUTLINED_FUNCTION_48();
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_53();
  if (v6)
  {
    OUTLINED_FUNCTION_8_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_50();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_2();
    }
  }

  OUTLINED_FUNCTION_19_0();
  if (v3)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7Combine12Subscription_pSgGMd, &_ss23_ContiguousArrayStorageCy7Combine12Subscription_pSgGMR);
    v4 = 40;
    v10 = OUTLINED_FUNCTION_85(v9);
    v11 = _swift_stdlib_malloc_size(v10);
    OUTLINED_FUNCTION_29(v11);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_112();
  if (v1)
  {
    if (v10 != v0 || v5 + 40 * v2 <= v4)
    {
      v13 = OUTLINED_FUNCTION_48();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
    OUTLINED_FUNCTION_48();
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_53();
  if (v4)
  {
    OUTLINED_FUNCTION_8_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_50();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_2();
    }
  }

  OUTLINED_FUNCTION_19_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_93();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

{
  OUTLINED_FUNCTION_25_0();
  if (v4)
  {
    OUTLINED_FUNCTION_24_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_86();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_23_0();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_98(v2, v5, &_ss23_ContiguousArrayStorageCy36AppleIntelligenceReportingProcessing22InvocationStepMetadataVGMd, &_ss23_ContiguousArrayStorageCy36AppleIntelligenceReportingProcessing22InvocationStepMetadataVGMR);
  v8 = OUTLINED_FUNCTION_76();
  type metadata accessor for InvocationStepMetadata(v8);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_69();
  if (v1)
  {
    OUTLINED_FUNCTION_64(type metadata accessor for InvocationStepMetadata, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_32();
  }
}

{
  OUTLINED_FUNCTION_25_0();
  if (v4)
  {
    OUTLINED_FUNCTION_24_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_86();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_23_0();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_98(v2, v5, &_ss23_ContiguousArrayStorageCy36AppleIntelligenceReportingProcessing21InvocationInformationVGMd, &_ss23_ContiguousArrayStorageCy36AppleIntelligenceReportingProcessing21InvocationInformationVGMR);
  v8 = OUTLINED_FUNCTION_76();
  type metadata accessor for InvocationInformation(v8);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_69();
  if (v1)
  {
    OUTLINED_FUNCTION_64(type metadata accessor for InvocationInformation, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_32();
  }
}

{
  OUTLINED_FUNCTION_53();
  if (v4)
  {
    OUTLINED_FUNCTION_8_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_50();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_2();
    }
  }

  OUTLINED_FUNCTION_19_0();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v8 = OUTLINED_FUNCTION_106(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_28();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_93();
  if (v1)
  {
    if (v8 != v0 || &v11[16 * v2] <= v10)
    {
      memmove(v10, v11, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_53();
  if (v6)
  {
    OUTLINED_FUNCTION_8_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_50();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_2();
    }
  }

  OUTLINED_FUNCTION_19_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * ((v10 - 32) / 8);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_112();
  if (v1)
  {
    if (v9 != v0 || v5 + 8 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_48();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_48();
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_53();
  if (v3)
  {
    OUTLINED_FUNCTION_8_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_50();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_2();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_28();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

{
  OUTLINED_FUNCTION_25_0();
  if (v4)
  {
    OUTLINED_FUNCTION_24_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_86();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_23_0();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_98(v2, v5, &_ss23_ContiguousArrayStorageCy36AppleIntelligenceReportingProcessing14InvocationStepOGMd, &_ss23_ContiguousArrayStorageCy36AppleIntelligenceReportingProcessing14InvocationStepOGMR);
  v8 = OUTLINED_FUNCTION_76();
  type metadata accessor for InvocationStep(v8);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_69();
  if (v1)
  {
    OUTLINED_FUNCTION_64(type metadata accessor for InvocationStep, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_32();
  }
}

{
  OUTLINED_FUNCTION_25_0();
  if (v4)
  {
    OUTLINED_FUNCTION_24_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_86();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_23_0();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_98(v2, v5, &_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary05AppleD24ReportingAvailabilityLogVGMd, &_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary05AppleD24ReportingAvailabilityLogVGMR);
  OUTLINED_FUNCTION_76();
  type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_69();
  if (v1)
  {
    OUTLINED_FUNCTION_64(MEMORY[0x277D1F5D8], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_32();
  }
}

{
  OUTLINED_FUNCTION_53();
  if (v4)
  {
    OUTLINED_FUNCTION_8_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_50();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_2();
    }
  }

  OUTLINED_FUNCTION_19_0();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy36AppleIntelligenceReportingProcessing15InvocationEventVGMd, &_ss23_ContiguousArrayStorageCy36AppleIntelligenceReportingProcessing15InvocationEventVGMR);
    v8 = OUTLINED_FUNCTION_85(v7);
    v9 = _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_29(v9);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_93();
  if (v1)
  {
    if (v8 != v0 || &v11[360 * v2] <= v10)
    {
      memmove(v10, v11, 360 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_25_0();
  if (v4)
  {
    OUTLINED_FUNCTION_24_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_86();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_23_0();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_98(v2, v5, &_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary05AppleD24ReportingModelCatalogLogVGMd, &_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary05AppleD24ReportingModelCatalogLogVGMR);
  OUTLINED_FUNCTION_76();
  type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_69();
  if (v1)
  {
    OUTLINED_FUNCTION_64(MEMORY[0x277D1F5F0], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_32();
  }
}

{
  OUTLINED_FUNCTION_25_0();
  if (v4)
  {
    OUTLINED_FUNCTION_24_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_86();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_23_0();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_98(v2, v5, &_ss23_ContiguousArrayStorageCy36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVGMd, &_ss23_ContiguousArrayStorageCy36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVGMR);
  v8 = OUTLINED_FUNCTION_76();
  type metadata accessor for AssetDeliverySubsystemError(v8);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_69();
  if (v1)
  {
    OUTLINED_FUNCTION_64(type metadata accessor for AssetDeliverySubsystemError, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_32();
  }
}

{
  OUTLINED_FUNCTION_53();
  if (v4)
  {
    OUTLINED_FUNCTION_8_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_50();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_2();
    }
  }

  OUTLINED_FUNCTION_19_0();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy36AppleIntelligenceReportingProcessing23AvailabilityChangeEventVGMd, &_ss23_ContiguousArrayStorageCy36AppleIntelligenceReportingProcessing23AvailabilityChangeEventVGMR);
    v8 = OUTLINED_FUNCTION_85(v7);
    v9 = _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_29(v9);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_93();
  if (v1)
  {
    if (v8 != v0 || &v11[232 * v2] <= v10)
    {
      memmove(v10, v11, 232 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_53();
  if (v6)
  {
    OUTLINED_FUNCTION_8_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_50();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_2();
    }
  }

  OUTLINED_FUNCTION_19_0();
  if (v3)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
    v10 = OUTLINED_FUNCTION_106(v9);
    _swift_stdlib_malloc_size(v10);
    OUTLINED_FUNCTION_28();
    v10[2] = v2;
    v10[3] = v11;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_112();
  if (v1)
  {
    if (v10 != v0 || v5 + 16 * v2 <= v4)
    {
      v13 = OUTLINED_FUNCTION_48();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    OUTLINED_FUNCTION_48();
    swift_arrayInitWithCopy();
  }
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC36AppleIntelligenceReportingProcessing22InvocationStepMetadataV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_76();
  v9 = a5(v8);
  OUTLINED_FUNCTION_44(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v11)
  {
    if ((result - v13) != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for InvocationStep);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D1F500]);
}

void specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_117();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_4(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_111();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_111();

    swift_arrayInitWithTakeBackToFront();
  }
}

void closure #1 in OSLogArguments.append(_:)()
{
  OUTLINED_FUNCTION_67();
  v3 = v2();
  v4 = *v1;
  *v4 = v3;
  *v1 = v4 + 1;
  v5 = *v0;
  if (*v0)
  {
    *v5 = v3;
    *v0 = v5 + 1;
  }

  else
  {
  }
}

void specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  OUTLINED_FUNCTION_79();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4, v5, v6, v7, v8, v9, v10, type metadata accessor for InvocationStep);
  *v3 = v11;
}

void specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, char a3)
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy36AppleIntelligenceReportingProcessing22InvocationStepMetadataVGMd, &_ss23_ContiguousArrayStorageCy36AppleIntelligenceReportingProcessing22InvocationStepMetadataVGMR, type metadata accessor for InvocationStepMetadata, type metadata accessor for InvocationStepMetadata);
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary05AppleD24ReportingModelCatalogLogVGMd, &_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary05AppleD24ReportingModelCatalogLogVGMR, MEMORY[0x277D1F5F0], MEMORY[0x277D1F5F0]);
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVGMd, &_ss23_ContiguousArrayStorageCy36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVGMR, type metadata accessor for AssetDeliverySubsystemError, type metadata accessor for AssetDeliverySubsystemError);
  *v3 = v4;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_53();
  if (v4)
  {
    OUTLINED_FUNCTION_8_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_50();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_2();
    }
  }

  OUTLINED_FUNCTION_19_0();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v8 = OUTLINED_FUNCTION_106(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_28();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_93();
  if (v1)
  {
    if (v8 != v0 || &v11[16 * v2] <= v10)
    {
      memmove(v10, v11, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v11 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_8_2();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_50();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_2();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = a7(0);
  OUTLINED_FUNCTION_44(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  a7(0);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_69();
  if (v11)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v25, v15, v22 + v25, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x22AAAF0C0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x22AAAF0C0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  return specialized MutableCollection<>.sort(by:)(a1);
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v2;
  return result;
}

{
  v2 = *(type metadata accessor for AppleIntelligenceReportingUseCase.Parameter() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7);
  *a1 = v3;
  return result;
}

{
  v2 = *(type metadata accessor for InvocationStep(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7);
  *a1 = v3;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for AppleIntelligenceReportingUseCase.Parameter() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for InvocationStep(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for InvocationStep(0) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_90();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v91, *result, a3);
LABEL_102:
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized DataCollectorInternal.__allocating_init(stateStorage:invocationProcessor:assetDeliveryProcessor:coreAnalyticsUploader:selfUploader:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11)
{
  v36 = a8;
  v37 = a5;
  v40 = a2;
  v41 = a3;
  v42 = a1;
  v39 = a10;
  v38 = a11;
  v13 = *(a8 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a9 - 8);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v21;
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v18);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DataCollectorInternal();
  v35 = swift_allocObject();
  (*(v22 + 16))(v24, v42, a7);
  (*(v17 + 16))(v20, a4, a9);
  v25 = v16;
  v26 = v16;
  v28 = v36;
  v27 = v37;
  (*(v13 + 16))(v26, v37, v36);
  v29 = v25;
  v30 = v34;
  v31 = specialized DataCollectorInternal.init(stateStorage:invocationProcessor:assetDeliveryProcessor:coreAnalyticsUploader:selfUploader:)(v24, v40, v41, v20, v29, v35, v34, v28, a9, v39, *(&v39 + 1), v38);
  (*(v13 + 8))(v27, v28);
  (*(v17 + 8))(a4, a9);
  (*(v22 + 8))(v42, v30);
  return v31;
}

uint64_t specialized DataCollectorInternal.init(stateStorage:invocationProcessor:assetDeliveryProcessor:coreAnalyticsUploader:selfUploader:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v31 = a7;
  v32 = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a1, a7);
  v28 = a9;
  v29 = a12;
  v20 = __swift_allocate_boxed_opaque_existential_1(&v27);
  (*(*(a9 - 8) + 32))(v20, a4, a9);
  v25 = a8;
  v26 = a11;
  v21 = __swift_allocate_boxed_opaque_existential_1(&v24);
  (*(*(a8 - 8) + 32))(v21, a5, a8);
  outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(&v30, a6 + 16);
  *(a6 + 56) = a2;
  *(a6 + 64) = a3;
  outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(&v27, a6 + 72);
  outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(&v24, a6 + 112);
  return a6;
}

uint64_t outlined init with copy of InvocationStep()
{
  OUTLINED_FUNCTION_117();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_62();
  v3(v2);
  return v0;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable(MEMORY[0x277D83958], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t outlined destroy of InvocationStepMetadata(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of InvocationStep()
{
  OUTLINED_FUNCTION_117();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_62();
  v3(v2);
  return v0;
}

unint64_t lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError()
{
  result = lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError;
  if (!lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError)
  {
    v3 = type metadata accessor for GeneralAppleIntelligenceError();
    result = swift_getWitnessTable(MEMORY[0x277CEDE90], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError);
  }

  return result;
}

uint64_t dispatch thunk of DataCollectorInternal.runDataCollectionAndUpload()()
{
  OUTLINED_FUNCTION_1_2();
  v4 = (*(v1 + 248) + **(v1 + 248));
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = dispatch thunk of DataCollectorInternal.runDataCollectionAndUpload();

  return v4();
}

uint64_t dispatch thunk of DataCollectorInternal.runInvocationDataCollectionAndUpload(dateSinceLastProcessed:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_2();
  v6 = (*(v3 + 272) + **(v3 + 272));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of DataCollectorInternal.runInvocationDataCollectionAndUpload(dateSinceLastProcessed:);

  return v6(a1);
}

uint64_t dispatch thunk of DataCollectorInternal.runInvocationDataCollectionAndUpload(dateSinceLastProcessed:)()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_63();
  v1 = *v0;
  OUTLINED_FUNCTION_18_0();
  *v2 = v1;

  OUTLINED_FUNCTION_35();

  return v3();
}

uint64_t dispatch thunk of DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:)()
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_1_2();
  v6 = (*(v3 + 280) + **(v3 + 280));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of DataCollectorInternal.runDataCollectionAndUpload();

  return v6(v1, v0);
}