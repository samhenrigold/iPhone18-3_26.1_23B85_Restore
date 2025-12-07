id OUTLINED_FUNCTION_35_2(uint64_t a1, uint64_t a2)
{

  return sub_19343D150(a1, a2, 3, 0, v2, 0, 1);
}

void OUTLINED_FUNCTION_11_26()
{
  v2 = *(v0 + 8);
  *(v1 - 96) = *v0;
  *(v1 - 88) = v2;
}

uint64_t *OUTLINED_FUNCTION_11_27(uint64_t a1, void *a2)
{
  *a2 = v4;
  a2[1] = v2;
  a2[5] = v3;

  return __swift_allocate_boxed_opaque_existential_1Tm(a2 + 2);
}

uint64_t OUTLINED_FUNCTION_11_34(uint64_t a1, uint64_t a2)
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_11_37()
{

  return sub_19393C640();
}

uint64_t OUTLINED_FUNCTION_11_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);

  return sub_1937809E0(a1, va, v33, v34);
}

void OUTLINED_FUNCTION_11_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v7 = a4 + 16 * v4;
  *(v7 + 32) = 9;
  *(v7 + 40) = v6;
}

uint64_t OUTLINED_FUNCTION_11_54()
{

  return type metadata accessor for MomentsNotifications(0);
}

uint64_t OUTLINED_FUNCTION_11_55()
{

  return type metadata accessor for ShortcutsSafety();
}

uint64_t OUTLINED_FUNCTION_11_57(uint64_t a1)
{
  *(v1 + 32) = a1;

  return sub_19343D230(v1);
}

uint64_t OUTLINED_FUNCTION_11_58()
{

  return type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
}

uint64_t OUTLINED_FUNCTION_11_59(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_193447324(a1, a2, v7, a4, v6, a6);
}

uint64_t sub_19344A3FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_19344A4A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_19344A500()
{
  OUTLINED_FUNCTION_26();
  v2 = OUTLINED_FUNCTION_176(v0, v1);
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_37();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent(v4);
  GenerativeFunctionsInstrumentationEvent.Identifiers.init()();
  v5 = sub_19344A84C(&qword_1ED5028E8, type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers, &protocol conformance descriptor for GenerativeFunctionsInstrumentationEvent.Identifiers);
  v6 = OUTLINED_FUNCTION_297_0(v5);
  v7 = OUTLINED_FUNCTION_286();
  sub_19344A5D8(v7, v8);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_273();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19344A5D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_19344A630(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_19344A688(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_19344A6E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_19344A738(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_180_1()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_19344A84C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19344A894(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19344A8DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19344A924(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_43_9()
{

  return sub_19344A688(v1, v0);
}

__n128 OUTLINED_FUNCTION_43_18()
{
  v2 = *(v0 + 32);
  result = *v0;
  v4 = *(v0 + 16);
  *(v1 - 64) = *v0;
  *(v1 - 48) = v4;
  *(v1 - 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_43_19(uint64_t a1)
{

  return sub_193448804(a1, v1 + 96, v2, v3);
}

uint64_t OUTLINED_FUNCTION_43_22()
{

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_43_23()
{

  return sub_19344E6DC(v0 + v1, v2, v3);
}

char *OUTLINED_FUNCTION_40_1@<X0>(unint64_t a1@<X8>)
{

  return sub_193490E70((a1 > 1), v2, 1, v1);
}

void OUTLINED_FUNCTION_40_7()
{

  sub_193447600();
}

uint64_t OUTLINED_FUNCTION_40_8()
{

  return sub_1934486F8(v5 + v3, v4 + v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_79_1(uint64_t a1, uint64_t a2)
{

  return sub_193448804(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_40_10(uint64_t a1, unint64_t *a2)
{

  return sub_19343CF00(0, a2, v2);
}

uint64_t OUTLINED_FUNCTION_40_12()
{
  sub_193438388(v0);

  return sub_193438388(v1);
}

uint64_t OUTLINED_FUNCTION_40_15(uint64_t result)
{
  *(result + 16) = v2;
  *v1 = result | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_11()
{

  return sub_19393C640();
}

uint64_t OUTLINED_FUNCTION_40_19()
{
  v4 = *(v1 - 104);
  v3 = *(v1 - 96);
  v5 = *(v1 - 72);

  return sub_193451F04(v0, v3, 26211, 0xE200000000000000, v4, v5);
}

uint64_t OUTLINED_FUNCTION_40_20()
{

  return sub_19393C640();
}

void *OUTLINED_FUNCTION_40_21(void *result)
{
  *result = v1;
  result[1] = 8;
  return result;
}

void OUTLINED_FUNCTION_40_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_1936A2EE0(v20, a1, a2, a3, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t AppleIntelligenceReportingInvocationStep.serialize()()
{
  v1 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE428C8, &qword_193994B90);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_19345227C(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE428C8, &qword_193994B90, v10);
  sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE428C8, &qword_193994B90);
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingInvocationStep.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v42 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v5 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = v2[9];
  sub_19344B818();
  v7 = v2[10];
  sub_19344B818();
  v8 = v2[11];
  sub_19344B818();
  v41 = v2[12];
  sub_19344B818();
  v43 = v2[13];
  sub_19344B814();
  v44 = a1 + v2[14];
  OUTLINED_FUNCTION_131(v44);
  v45 = (a1 + v2[17]);
  j__OUTLINED_FUNCTION_10_1();
  v9 = (a1 + v2[18]);
  sub_193778E70(v9);
  v50 = (a1 + v2[20]);
  j__OUTLINED_FUNCTION_10_1();
  v48 = (a1 + v2[21]);
  j__OUTLINED_FUNCTION_10_1();
  v47 = (a1 + v2[22]);
  j__OUTLINED_FUNCTION_10_1();
  v46 = v2[23];
  sub_19344B7DC();
  v49 = v2[24];
  sub_1937791B8();
  *a1 = *sub_19344B5E8();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v10 = sub_19393BE00();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;

  *v42 = 0;
  v42[1] = 0;
  *v5 = 0;
  v5[1] = 0;
  sub_19344E6DC(a1 + v6, &qword_1EAE3AA88, &qword_19394F9C0);
  v14 = sub_19393BE60();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  sub_19344E6DC(a1 + v7, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
  sub_19344E6DC(a1 + v8, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v14);
  sub_19344E6DC(a1 + v41, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v14);
  sub_19344E6DC(a1 + v43, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v10);
  *v44 = 0;
  *(v44 + 4) = 256;

  v30 = MEMORY[0x1E69E7CC0];
  *(a1 + v2[15]) = MEMORY[0x1E69E7CC0];
  *(a1 + v2[16]) = v30;
  *v45 = 0;
  v45[1] = 0;
  v31 = v9[1];
  v51[0] = *v9;
  v51[1] = v31;
  v32 = v9[3];
  v51[2] = v9[2];
  v51[3] = v32;
  sub_19344E6DC(v51, &qword_1EAE42550, &qword_193992990);

  v9[2] = 0u;
  v9[3] = 0u;
  *v9 = 0u;
  v9[1] = 0u;
  *(a1 + v2[19]) = v30;
  *v50 = 0;
  v50[1] = 0;
  *v48 = 0;
  v48[1] = 0;
  *v47 = 0;
  v47[1] = 0;
  sub_19344E6DC(a1 + v46, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v14);
  sub_19344E6DC(a1 + v49, &qword_1EAE428D0, &qword_193994B98);
  type metadata accessor for AppleIntelligenceReportingSpanContext(0);
  OUTLINED_FUNCTION_45();
  return __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
}

void sub_19344B510(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t type metadata accessor for AppleIntelligenceReportingInvocationStep(uint64_t a1)
{
  result = qword_1ED50CE50;
  if (!qword_1ED50CE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppleIntelligenceReportingAsset.version.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

double sub_19344B5D8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_19344B604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }
}

uint64_t AppleIntelligenceReportingInvocationStep.errors.setter()
{
  v2 = *(OUTLINED_FUNCTION_10_61() + 60);

  *(v1 + v2) = v0;
  return result;
}

uint64_t AppleIntelligenceReportingInvocationStep.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
  v6 = v1 + *(result + 56);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t AppleIntelligenceReportingInvocationStep.stepIdentifier.setter()
{
  OUTLINED_FUNCTION_5_67();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AppleIntelligenceReportingInvocationStep.subsystem.setter()
{
  OUTLINED_FUNCTION_5_67();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_19344B7DC()
{
  OUTLINED_FUNCTION_8_4();
  sub_19393BE60();
  v0 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t IntelligenceFlowIFRequestTelemetry.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_193453D04();
  v6 = v2[8];
  sub_19344BA58();
  v7 = v2[9];
  sub_193453D5C();
  v8 = v2[10];
  sub_193453DF0();
  v9 = v2[11];
  sub_193453E68();
  *a1 = *sub_193453F34();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  sub_19393BE00();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3F6B0, &qword_193975880);
  type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_19344E6DC(a1 + v6, &qword_1EAE3B498, &unk_193959120);
  type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  sub_19344E6DC(a1 + v7, &qword_1EAE3F6B8, &qword_193975888);
  type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_19344E6DC(a1 + v8, &qword_1EAE3F6C0, &unk_193975A20);
  type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  sub_19344E6DC(a1 + v9, &qword_1EAE3F6C8, &qword_193975890);
  type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
  OUTLINED_FUNCTION_45();

  return __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
}

uint64_t sub_19344BA58()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for MonotonicTimestamp(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_119_3()
{

  return sub_19344F184();
}

uint64_t OUTLINED_FUNCTION_89_3@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(a2 + 32) = v2;
  *(a2 + 40) = v3;
  return a1;
}

uint64_t OUTLINED_FUNCTION_119_7(uint64_t result)
{
  *(v1 + 88) = result;
  *(v1 + 92) = BYTE4(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_119_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_19393BF20();
}

void OUTLINED_FUNCTION_119_10(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  a1[1].n128_u16[2] = v3;
  a1[1].n128_u32[0] = v2;
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.inferenceProviderIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligencePlatformLibrary::GenerativeFunctionsInstrumentationEvent::CatalogResourceIdentifierAndVersion __swiftcall GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion.init()()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion.identifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion.version.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_19344BC84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 GenerativeFunctionsInstrumentationEvent.Identifiers.catalogResourceIdentifier.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = (v1 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v2) + 56));
  sub_193442C40(*v3, v3[1], v3[2], v3[3]);
  result = *v0;
  v5 = *(v0 + 16);
  *v3 = *v0;
  *(v3 + 1) = v5;
  return result;
}

void sub_19344BD04()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  OUTLINED_FUNCTION_103();
  v3 = v0[2];
  v4 = v0[3];
  if (*v0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[1] == 0xE000000000000000;
  }

  if (!v5)
  {
    v6 = OUTLINED_FUNCTION_286();
    if ((OUTLINED_FUNCTION_272(v6, v7) & 1) == 0)
    {
      v8 = OUTLINED_FUNCTION_286();
      OUTLINED_FUNCTION_2_7(v8, v9, 1);
      v2 = v1;
    }
  }

  if (!v2)
  {
    if (v3)
    {
      v10 = 0;
    }

    else
    {
      v10 = v4 == 0xE000000000000000;
    }

    if (!v10 && (OUTLINED_FUNCTION_272(v3, v4) & 1) == 0)
    {
      OUTLINED_FUNCTION_2_7(v3, v4, 2);
    }
  }

  OUTLINED_FUNCTION_27();
}

void GenerativeFunctionsInstrumentationMetadata.AssetTransition.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 32) = 0;
  *(a1 + 40) = 256;
  *(a1 + 48) = 0;
  *(a1 + 56) = 256;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 112) = 256;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  OUTLINED_FUNCTION_123_2();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetTransition.toState.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  *(v1 + 57) = v3;
  return result;
}

void OUTLINED_FUNCTION_198()
{

  sub_1934D1694(v1, v3, v0, v2);
}

void OUTLINED_FUNCTION_198_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1935276CC();
}

uint64_t GenerativeFunctionsInstrumentationEvent.metadata.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(v1 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v2) + 52));
  *v0 = v3;

  return sub_19344BF2C(v3);
}

uint64_t sub_19344BF2C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_19344BF44(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.inferenceProviderIdentifier.getter()
{
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

void OUTLINED_FUNCTION_134_2(uint64_t a1@<X8>)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;
  *(v3 + 73) = v2;
}

uint64_t OUTLINED_FUNCTION_134_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_132_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69AACA0];

  return sub_1934C2808(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_132_2(uint64_t result, char a2)
{
  *(v2 + 256) = result;
  *(v2 + 264) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_132_8(uint64_t a1, uint64_t a2)
{

  return sub_1936E1EFC();
}

uint64_t OUTLINED_FUNCTION_132_9(uint64_t result)
{
  *(result + 16) = 0;
  *(v2 + 16) = result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_177_0(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_177_2()
{

  return sub_19393BE60();
}

void OUTLINED_FUNCTION_177_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_19352F0F4(a1, a2, a3, type metadata accessor for ResponseGeneration.Event.EventType);
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerRequestIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0);
  OUTLINED_FUNCTION_101(*(v1 + 60));
  return sub_1934486A4();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerSessionIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0);
  OUTLINED_FUNCTION_101(*(v1 + 64));
  return sub_1934486A4();
}

void OUTLINED_FUNCTION_107_0()
{
}

__n128 OUTLINED_FUNCTION_148()
{
  result = *v0;
  v3 = *(v0 + 16);
  *v1 = *v0;
  v1[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_100_2@<X0>(unsigned int a1@<W8>)
{
  if ((a1 & 0x7FFFFFFF) != 0)
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_107_8()
{
}

uint64_t OUTLINED_FUNCTION_107_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_19393BF20();
}

uint64_t OUTLINED_FUNCTION_107_12()
{
}

char *OUTLINED_FUNCTION_107_15@<X0>(void *a1@<X8>)
{
  result = a1 + *(v1 + 56);
  *a1 = 32;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.sessionEventResult.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 96) = *result;
  *(v1 + 104) = v2;
  *(v1 + 105) = v3;
  return result;
}

void sub_19344C630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t OUTLINED_FUNCTION_90_9()
{

  return sub_19344C7D8(v2, v1, v0, v4, v3);
}

uint64_t OUTLINED_FUNCTION_90_10(uint64_t a1, uint64_t a2)
{

  return sub_193448804(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_90_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);

  return sub_19356C6FC(va, &a33);
}

uint64_t OUTLINED_FUNCTION_90_15@<X0>(uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(v4 - 48) = a3;
  *(v4 - 32) = a2;
  *(v4 - 24) = v3;

  return sub_19393CAB0();
}

uint64_t sub_19344C7C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 - 1 <= 1)
  {
    return sub_193456418(result, a2);
  }

  return result;
}

uint64_t sub_19344C7D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    return sub_19344C7C0(result, a2, a3, a4, a5, BYTE1(a5));
  }

  return result;
}

void OUTLINED_FUNCTION_197_0()
{

  sub_1934D1694(v3, v1, v2, v0);
}

__n128 OUTLINED_FUNCTION_197_3()
{
  *&STACK[0x2B0] = *v0;
  STACK[0x2C0] = *(v0 + 16);
  STACK[0x2C8] = v1;
  v3 = *(v0 + 48);
  *&STACK[0x2D0] = *(v0 + 32);
  *&STACK[0x2E0] = v3;
  result = *(v0 + 57);
  *(v2 + 217) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_68_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_68_5()
{

  return sub_193456418(0, 1);
}

uint64_t OUTLINED_FUNCTION_68_11()
{
  *(v1 - 88) = v0;

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_68_12(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(result + 16) = v17;
  *(result + 24) = v16;
  *(result + 25) = v14;
  *(result + 32) = a14;
  *(result + 40) = v18;
  *(result + 48) = v15;
  *(result + 56) = *(v19 - 68);
  *a10 = result | 0x8000000000000000;
  return result;
}

__n128 OUTLINED_FUNCTION_68_13()
{
  v2 = v0->n128_u8[8];
  v3 = v0->n128_u8[9];
  v4 = v0[2].n128_u64[0];
  v5 = v0[2].n128_u8[8];
  *(v1 - 64) = v0->n128_u64[0];
  *(v1 - 56) = v2;
  *(v1 - 55) = v3;
  result = v0[1];
  *(v1 - 48) = result;
  *(v1 - 32) = v4;
  *(v1 - 24) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_68_15()
{
}

uint64_t OUTLINED_FUNCTION_68_21(uint64_t a1, uint64_t a2)
{

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_179()
{

  sub_193447600();
}

uint64_t OUTLINED_FUNCTION_179_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_19344F184();
}

uint64_t OUTLINED_FUNCTION_179_4()
{
  *(v0 + 48) = 1;

  return swift_willThrow();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_176_5(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[10] = v6;
  v9[11] = a6;
  v9[5] = a5;
  v9[6] = a3;
  v9[7] = result;
  v9[8] = v8;
  v9[9] = v7;
  return result;
}

uint64_t sub_19344CC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 32))(a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t OUTLINED_FUNCTION_89_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 32) = a2;
  *(v2 + 40) = result;
  return result;
}

void OUTLINED_FUNCTION_104_3(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  sub_1934856EC(a1, 0xD00000000000001ELL, a3, a4);
}

uint64_t OUTLINED_FUNCTION_97_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_19393BF20();
}

uint64_t OUTLINED_FUNCTION_104_5@<X0>(uint64_t a1@<X8>)
{

  return sub_19350CB08(v1, a1);
}

__n128 OUTLINED_FUNCTION_104_7()
{
  v2 = *(v0 + 32);
  result = *v0;
  v4 = *(v0 + 16);
  *(v1 - 64) = *v0;
  *(v1 - 48) = v4;
  *(v1 - 32) = v2;
  return result;
}

void *OUTLINED_FUNCTION_104_9()
{

  return memcpy((v1 - 192), v0, 0x61uLL);
}

uint64_t OUTLINED_FUNCTION_30_6(uint64_t result, __n128 a2)
{
  *(result + 232) = a2;
  *(result + 216) = a2;
  *(result + 200) = a2;
  *(result + 184) = a2;
  *(result + 168) = a2;
  *(result + 152) = a2;
  *(result + 136) = a2;
  *(result + 120) = a2;
  *(result + 104) = a2;
  *(result + 88) = a2;
  *(result + 72) = a2;
  *(result + 56) = a2;
  *(result + 40) = a2;
  *(result + 24) = a2;
  *(result + 8) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_154_1()
{
}

uint64_t OUTLINED_FUNCTION_30_7()
{
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[2];
  v10 = v2[3];
  *(v6 - 176) = v10;
  *(v6 - 168) = v9;
  v11 = *(v2 + 32);
  *(v6 - 120) = v5;
  *(v6 - 112) = v4;
  *(v6 - 104) = v3;
  *(v6 - 96) = v1;
  *(v6 - 88) = v0;
  *(v6 - 160) = v7;
  *(v6 - 152) = v8;
  *(v6 - 144) = v9;
  *(v6 - 136) = v10;
  *(v6 - 128) = v11;
  return v6 - 120;
}

__n128 OUTLINED_FUNCTION_30_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, uint64_t a10, __n128 a12)
{
  result = a12;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_30_9(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_193456418(*v1, *(v1 + 8));
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v3;
  return result;
}

double OUTLINED_FUNCTION_30_12()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_133_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_19393C540();
}

uint64_t OUTLINED_FUNCTION_30_16()
{

  return type metadata accessor for AdAttributionKitPurchase(0);
}

uint64_t OUTLINED_FUNCTION_30_18()
{

  return sub_193630AEC(v0, v1, type metadata accessor for AIML.UUID);
}

void OUTLINED_FUNCTION_30_21(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1936A3B98();
}

uint64_t OUTLINED_FUNCTION_30_22(uint64_t a1, uint64_t a2)
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_30_28(uint64_t a1)
{

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_30_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v7 = a4 + 16 * v4;
  *(v7 + 32) = 25;
  *(v7 + 40) = v6;
}

uint64_t OUTLINED_FUNCTION_30_30(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t sub_19344D198@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeFunctionsInstrumentationEvent.Subtype.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.identifiers.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_101(v1);
  return sub_19344D364();
}

uint64_t OUTLINED_FUNCTION_100_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_100_9()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 25);
  v7 = *(v0 + 32);
  *(v1 - 56) = *v0;
  *(v1 - 48) = v2;
  *(v1 - 47) = v3;
  *(v1 - 40) = v4;
  *(v1 - 32) = v5;
  *(v1 - 31) = v6;
  *(v1 - 24) = v7;
}

uint64_t OUTLINED_FUNCTION_100_10()
{
}

uint64_t OUTLINED_FUNCTION_100_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_19393BF20();
}

uint64_t OUTLINED_FUNCTION_100_14()
{
}

uint64_t sub_19344D364()
{
  OUTLINED_FUNCTION_91_0();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_13_0();
  v3(v2);
  return v0;
}

void GenerativeFunctionsInstrumentationEvent.Identifiers.catalogResourceIdentifier.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = (v1 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v2) + 56));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;

  sub_19344C630(v4, v5, v6, v7);
}

BOOL OUTLINED_FUNCTION_148_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1936D4718(v8, v7, v9, v10, v6, a6);
}

uint64_t OUTLINED_FUNCTION_29_6(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_200()
{
}

uint64_t OUTLINED_FUNCTION_29_10()
{

  return sub_1934D8AD4(v1, v0);
}

uint64_t OUTLINED_FUNCTION_29_11()
{

  return sub_1934D8AD4(v0, v1);
}

void OUTLINED_FUNCTION_29_18(uint64_t a1@<X8>)
{
  v2 = *(a1 + 8);
  *(v1 + 272) = *a1;
  *(v1 + 280) = v2 & 1;
}

uint64_t OUTLINED_FUNCTION_29_20()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_29_23(void *a1)
{

  return memcpy(a1, (v2 + v1), 0xF8uLL);
}

void OUTLINED_FUNCTION_29_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  sub_1936A3CA8(a1, a2, a3, type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_29_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_19393C550();
}

uint64_t OUTLINED_FUNCTION_160_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_193456418(a1, a2);
}

uint64_t OUTLINED_FUNCTION_160_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 - 96);
  v7 = *(v4 - 72);

  return sub_193451F04(a1, a2, a3, a4, v6, v7);
}

uint64_t OUTLINED_FUNCTION_171()
{
}

double OUTLINED_FUNCTION_171_0()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_77_3(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  *(v1 + 17) = v3;
  return result;
}

void OUTLINED_FUNCTION_171_5(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = v1;
  *(v2 + 16) = 2;
}

uint64_t *OUTLINED_FUNCTION_45_8(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v2;
  a2[5] = v4;

  return __swift_allocate_boxed_opaque_existential_1Tm(a2 + 2);
}

uint64_t OUTLINED_FUNCTION_45_14()
{

  return sub_19393C830();
}

void *OUTLINED_FUNCTION_45_19(void *a1)
{

  return memcpy(a1, (v2 + v1), 0x108uLL);
}

void *OUTLINED_FUNCTION_45_21(void *a1)
{

  return memcpy(a1, (v1 + 1968), 0x108uLL);
}

uint64_t OUTLINED_FUNCTION_45_24()
{
}

uint64_t OUTLINED_FUNCTION_77_10()
{

  return type metadata accessor for IntelligenceFlowResponseGeneration(0);
}

uint64_t OUTLINED_FUNCTION_77_15@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 124) = v2;
  *(v3 - 120) = a1;
  *(v3 - 116) = BYTE4(a1) & 1;
  *(v3 - 115) = v1;
  return v3 - 112;
}

uint64_t OUTLINED_FUNCTION_77_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_19393BF20();
}

BOOL OUTLINED_FUNCTION_77_18@<W0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char a3@<W8>)
{

  return sub_1937BA4AC(a1, v3 & 1, a2, a3 & 1, v4);
}

uint64_t OUTLINED_FUNCTION_88_1()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_88_4(uint64_t a1@<X8>)
{
  v6 = *(v4 + 32);
  v7 = *(v4 + 40);
  *(v5 - 64) = a1;
  *(v5 - 56) = v1;
  *(v5 - 48) = v2;
  *(v5 - 40) = v3;
  *(v5 - 32) = v6;
  *(v5 - 24) = v7;
}

uint64_t OUTLINED_FUNCTION_88_10()
{

  return sub_193448804(v0, v1 + v4, v2, v3);
}

uint64_t OUTLINED_FUNCTION_79_3()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_79_4()
{

  return sub_19393BF30();
}

uint64_t OUTLINED_FUNCTION_79_10()
{

  return sub_193448850();
}

uint64_t OUTLINED_FUNCTION_79_14@<X0>(uint64_t a1@<X8>)
{

  return sub_1934486F8(v1 + a1, v4, v2, v3);
}

BOOL OUTLINED_FUNCTION_79_15@<W0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1937129E0(a3, v3, a1, a2, v4);
}

void sub_19344DFE8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_37();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v9);
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_104_1();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_78_0();
    v12(v11);
    OUTLINED_FUNCTION_116_0(v1, 6);
    v13 = OUTLINED_FUNCTION_86_0();
    v14(v13);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t OUTLINED_FUNCTION_274(uint64_t a1, uint64_t a2)
{

  return sub_19393C360();
}

uint64_t OUTLINED_FUNCTION_274_0()
{

  return sub_1935413F8(v1 + v2, v0);
}

uint64_t OUTLINED_FUNCTION_274_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_274_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69AACD8];

  return sub_19370ADAC(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_96_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_19393BF20();
}

uint64_t OUTLINED_FUNCTION_123()
{

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_76_4@<X0>(uint64_t a1@<X8>)
{
  if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 OUTLINED_FUNCTION_76_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_16(uint64_t a1, uint64_t a2)
{

  return sub_19393CA30();
}

__n128 OUTLINED_FUNCTION_76_11()
{
  v2 = v0->n128_u8[8];
  v3 = v0[2].n128_u64[0];
  v4 = v0[2].n128_u8[8];
  *(v1 - 64) = v0->n128_u64[0];
  *(v1 - 56) = v2;
  result = v0[1];
  *(v1 - 48) = result;
  *(v1 - 32) = v3;
  *(v1 - 24) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_76_13()
{
  sub_19350CB08(v0, v1);
}

double OUTLINED_FUNCTION_76_16()
{
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  return result;
}

BOOL OUTLINED_FUNCTION_76_17@<W0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1937BA4AC(a3, v3, a1, a2, v4);
}

uint64_t OUTLINED_FUNCTION_147_2()
{

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_147_4()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_147_7()
{
}

uint64_t OUTLINED_FUNCTION_147_10()
{

  return sub_193448850();
}

void sub_19344E5A8()
{
  OUTLINED_FUNCTION_26();
  v3 = OUTLINED_FUNCTION_176(v1, v2);
  type metadata accessor for MonotonicTimestamp(v3);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_37();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent(v5);
  MonotonicTimestamp.init()(v0);
  v6 = sub_19344A84C(&qword_1ED5028F0, type metadata accessor for MonotonicTimestamp, &protocol conformance descriptor for MonotonicTimestamp);
  v7 = OUTLINED_FUNCTION_297_0(v6);
  v8 = OUTLINED_FUNCTION_286();
  sub_19344A5D8(v8, v9);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_273();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19344E680(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_9_10();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_19344E6DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_1();
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_273()
{

  sub_193447600();
}

void sub_19344E7AC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_37();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v9);
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_104_1();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_78_0();
    v12(v11);
    OUTLINED_FUNCTION_116_0(v1, 12);
    v13 = OUTLINED_FUNCTION_86_0();
    v14(v13);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t OUTLINED_FUNCTION_89_5()
{
  *(v2 - 144) = v1;
  result = __swift_project_value_buffer(v1, v0);
  *(v2 - 88) = result;
  return result;
}

void OUTLINED_FUNCTION_89_7(uint64_t a1@<X8>)
{
  v6 = *(v4 + 28);
  v7 = *(v4 + 32);
  *(v5 - 56) = a1;
  *(v5 - 48) = v1;
  *(v5 - 40) = v2;
  *(v5 - 32) = v3;
  *(v5 - 28) = v6;
  *(v5 - 24) = v7;
}

uint64_t OUTLINED_FUNCTION_89_9()
{

  return sub_193448804(v1, v0, v2, v3);
}

BOOL OUTLINED_FUNCTION_89_10@<W0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{

  return sub_193559C78(a3, v3, a1, a2, v4);
}

uint64_t OUTLINED_FUNCTION_89_13@<X0>(uint64_t a1@<X8>)
{

  return sub_19344542C(v4, v2 + a1, v3, v1);
}

uint64_t OUTLINED_FUNCTION_89_15()
{
}

void sub_19344EA34()
{
  switch(*v0 >> 60)
  {
    case 1:
      v55 = OUTLINED_FUNCTION_30_1();
      v57 = memcpy(v55, v56, 0x59uLL);
      v65 = OUTLINED_FUNCTION_44_5(v57, v58, v59, v60, v61, v62, v63, v64, v121);
      v67 = memcpy(v65, v66, 0x59uLL);
      OUTLINED_FUNCTION_135_1(v67, v68, v69, &type metadata for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest, v70, &off_1F07BE920, v71, v72, v123);
      break;
    case 2:
      v13 = OUTLINED_FUNCTION_30_1();
      v15 = memcpy(v13, v14, 0x299uLL);
      v23 = OUTLINED_FUNCTION_44_5(v15, v16, v17, v18, v19, v20, v21, v22, v121);
      v25 = memcpy(v23, v24, 0x299uLL);
      OUTLINED_FUNCTION_174(v25, v26, v27, &type metadata for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest, v28, &off_1F07BE978, v29, v30, v122);
      break;
    case 3:
      v31 = OUTLINED_FUNCTION_30_1();
      v33 = memcpy(v31, v32, 0x4AuLL);
      v41 = OUTLINED_FUNCTION_44_5(v33, v34, v35, v36, v37, v38, v39, v40, v121);
      memcpy(v41, v42, 0x4AuLL);
      break;
    case 5:
      v73 = OUTLINED_FUNCTION_30_1();
      v75 = memcpy(v73, v74, 0x142uLL);
      v83 = OUTLINED_FUNCTION_44_5(v75, v76, v77, v78, v79, v80, v81, v82, v121);
      memcpy(v83, v84, 0x142uLL);
      break;
    case 7:
      v43 = OUTLINED_FUNCTION_30_1();
      v45 = memcpy(v43, v44, 0x6AuLL);
      v53 = OUTLINED_FUNCTION_44_5(v45, v46, v47, v48, v49, v50, v51, v52, v121);
      memcpy(v53, v54, 0x6AuLL);
      break;
    case 8:
      v109 = OUTLINED_FUNCTION_30_1();
      v111 = memcpy(v109, v110, 0x189uLL);
      v119 = OUTLINED_FUNCTION_44_5(v111, v112, v113, v114, v115, v116, v117, v118, v121);
      memcpy(v119, v120, 0x189uLL);
      break;
    case 9:
      v1 = OUTLINED_FUNCTION_30_1();
      v3 = memcpy(v1, v2, 0x119uLL);
      v11 = OUTLINED_FUNCTION_44_5(v3, v4, v5, v6, v7, v8, v9, v10, v121);
      memcpy(v11, v12, 0x119uLL);
      break;
    case 0xALL:
      v97 = OUTLINED_FUNCTION_30_1();
      v99 = memcpy(v97, v98, 0x72uLL);
      v107 = OUTLINED_FUNCTION_44_5(v99, v100, v101, v102, v103, v104, v105, v106, v121);
      memcpy(v107, v108, 0x72uLL);
      break;
    case 0xDLL:
      v85 = OUTLINED_FUNCTION_30_1();
      v87 = memcpy(v85, v86, 0x42uLL);
      v95 = OUTLINED_FUNCTION_44_5(v87, v88, v89, v90, v91, v92, v93, v94, v121);
      memcpy(v95, v96, 0x42uLL);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_179();
}

void OUTLINED_FUNCTION_149_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69AADB0];

  sub_1934C288C(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_149_6(uint64_t a1)
{

  return sub_19393C340();
}

BOOL OUTLINED_FUNCTION_149_8()
{

  return sub_1936D4500(v0, v1);
}

uint64_t OUTLINED_FUNCTION_149_9()
{

  return sub_19393CAB0();
}

uint64_t OUTLINED_FUNCTION_149_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_19393C3C0();
}

unint64_t sub_19344EEF4()
{
  result = qword_1ED5028E0;
  if (!qword_1ED5028E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5028E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_163(uint64_t a1)
{

  return sub_19393C550();
}

uint64_t OUTLINED_FUNCTION_163_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_19393C540();
}

uint64_t OUTLINED_FUNCTION_163_6()
{
  *(v0 + 48) = 1;

  return swift_willThrow();
}

__n128 OUTLINED_FUNCTION_163_8()
{
  v2 = v0[1].n128_u8[0];
  v3 = v0[1].n128_u8[1];
  v4 = v0[1].n128_u64[1];
  v5 = v0[2].n128_u8[0];
  result = *v0;
  *(v1 - 64) = *v0;
  *(v1 - 48) = v2;
  *(v1 - 47) = v3;
  *(v1 - 40) = v4;
  *(v1 - 32) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_162(uint64_t a1)
{

  return sub_19393C540();
}

uint64_t OUTLINED_FUNCTION_162_3()
{

  return swift_getEnumCaseMultiPayload();
}

void OUTLINED_FUNCTION_325()
{

  JUMPOUT(0x193B18030);
}

uint64_t sub_19344F184()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4_1();
  v3 = OUTLINED_FUNCTION_13_0();
  v4(v3);
  return v0;
}

void sub_19344F1DC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_37();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v9);
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_104_1();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_78_0();
    v12(v11);
    OUTLINED_FUNCTION_116_0(v1, 14);
    v13 = OUTLINED_FUNCTION_86_0();
    v14(v13);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19344F2FC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_37();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v9);
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_104_1();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_78_0();
    v12(v11);
    OUTLINED_FUNCTION_116_0(v1, 11);
    v13 = OUTLINED_FUNCTION_86_0();
    v14(v13);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19344F43C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_37();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v9);
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_104_1();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_78_0();
    v12(v11);
    OUTLINED_FUNCTION_116_0(v1, 15);
    v13 = OUTLINED_FUNCTION_86_0();
    v14(v13);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

BOOL static MonotonicTimestamp.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_19393BE40())
  {
    v4 = *(type metadata accessor for MonotonicTimestamp(0) + 20);
    v5 = *(a1 + v4);
    v8 = *(a2 + v4);
    v9 = v5;

    v6 = static MonotonicTimestampValue.== infix(_:_:)(&v9, &v8);
  }

  else
  {
    return 0;
  }

  return v6;
}

void sub_19344F5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v16 - v6;
  v8 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v8);
  OUTLINED_FUNCTION_7_11();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_19344F8E0();
    v14 = sub_19393C550();
    v15 = *(v10 + 8);
    v15(v13, v8);
    v15(v7, v8);
    if ((v14 & 1) == 0)
    {
      sub_19344652C();
    }
  }
}

void sub_19344F7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19344F5F0(v3, a1, a2, a3);
  if (!v4)
  {
    type metadata accessor for MonotonicTimestamp(0);
    *(swift_allocObject() + 16) = 0;
    sub_19344F93C();

    v5 = sub_19393C550();

    if ((v5 & 1) == 0)
    {

      sub_193447600();
    }
  }
}

unint64_t sub_19344F8E0()
{
  result = qword_1ED5029B8;
  if (!qword_1ED5029B8)
  {
    sub_19393BE60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5029B8);
  }

  return result;
}

unint64_t sub_19344F93C()
{
  result = qword_1ED502900;
  if (!qword_1ED502900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502900);
  }

  return result;
}

BOOL static MonotonicTimestampValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    v2 &= ~0x8000000000000000;
    v3 &= ~0x8000000000000000;
  }

  else if (v3 < 0)
  {
    return 0;
  }

  return *(v2 + 16) == *(v3 + 16);
}

void static GenerativeFunctionsInstrumentationEvent.IdentifierSet.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v26 = a1[5];
  v24 = a1[7];
  v25 = a1[6];
  v22 = a1[8];
  v18 = a1[10];
  v16 = a1[11];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v23 = a2[7];
  v20 = a1[9];
  v21 = a2[8];
  v19 = a2[9];
  v17 = a2[10];
  v15 = a2[11];
  if (sub_19344FC94(*a1, *a2) & 1) != 0 && (sub_19344FC94(v2, v6) & 1) != 0 && (sub_19344FC94(v4, v8) & 1) != 0 && (sub_19344FC94(v3, v7) & 1) != 0 && (sub_19344FC94(v5, v10) & 1) != 0 && (sub_19344FD20(v26, v9) & 1) != 0 && (sub_19345007C(v25, v11) & 1) != 0 && (sub_19344FC94(v24, v23) & 1) != 0 && (sub_19344FC94(v22, v21) & 1) != 0 && (sub_19344FFB0(v20, v19) & 1) != 0 && (sub_19344FC94(v18, v17) & 1) != 0 && (sub_19344FC94(v16, v15))
  {
    OUTLINED_FUNCTION_191();

    sub_19344FC94(v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_191();
  }
}

uint64_t sub_19344FC94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_19393CA30() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_19344FD20(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE60();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_1934C4560(&qword_1ED5029B8, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v21 = sub_19393C550();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_188_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_188_6(uint64_t a1)
{

  return sub_19393C540();
}

uint64_t sub_19344FFB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_19393CA30() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_19393CA30() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_19345007C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19345012C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_193446A6C(result, a2);
  }

  return result;
}

id sub_193450158(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  OUTLINED_FUNCTION_32_3();

  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_0();
    v5 = sub_19393BD20();
    v6 = OUTLINED_FUNCTION_13_0();
    sub_19345012C(v6, v7);
  }

  return v5;
}

uint64_t sub_19345020C()
{
  v1 = v0 + qword_1EAE3AB50;
  swift_beginAccess();
  v2 = *v1;
  sub_193450268(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_193450268(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_193450688(a1, a2);
  }

  return a1;
}

uint64_t sub_1934502A0()
{
  v1 = qword_1EAE3AB48;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t OUTLINED_FUNCTION_38_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_14_11(uint64_t a1, unint64_t *a2)
{

  return sub_19343CF00(0, a2, v2);
}

uint64_t OUTLINED_FUNCTION_38_9(uint64_t a1)
{

  return sub_19393C550();
}

void OUTLINED_FUNCTION_38_14(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 6;
  *(v1 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_38_17()
{

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_38_19(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_19393C3C0();
}

void *OUTLINED_FUNCTION_38_22(void *a1)
{

  return memcpy(a1, (v2 + v1), 0x108uLL);
}

uint64_t OUTLINED_FUNCTION_47_7(uint64_t a1)
{

  return sub_19344E6DC(a1, v1, v2);
}

void *OUTLINED_FUNCTION_38_24(void *a1)
{

  return memcpy(a1, (v1 + 32), 0x90uLL);
}

void OUTLINED_FUNCTION_38_28(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1936A3B98();
}

uint64_t OUTLINED_FUNCTION_302()
{

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_38_31@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{

  return MEMORY[0x1EEDF0750](a1, a3 | 0x8000000000000000, a2, 0xE700000000000000, 0xD000000000000010, v3 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_38_32(uint64_t a1)
{

  return sub_1934976E4(a1, 2020175477, 0xE400000000000000, v2, v1);
}

uint64_t OUTLINED_FUNCTION_38_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return sub_19393C8A0();
}

uint64_t OUTLINED_FUNCTION_38_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_19393C350();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_193450688(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void sub_193450708(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_172();
  if (*(v8 + 84) == a3)
  {
    v9 = a4[5];
  }

  else
  {
    type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
    OUTLINED_FUNCTION_172();
    if (*(v10 + 84) == a3)
    {
      v9 = a4[7];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
        return;
      }

      type metadata accessor for MonotonicTimestamp(0);
      v9 = a4[10];
    }
  }

  v11 = OUTLINED_FUNCTION_101(v9);

  __swift_storeEnumTagSinglePayload(v11, v12, a2, v13);
}

uint64_t sub_193450830(uint64_t a1, int a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_172();
  if (*(v6 + 84) == a2)
  {
    v7 = a3[5];
LABEL_10:
    v11 = OUTLINED_FUNCTION_101(v7);

    return __swift_getEnumTagSinglePayload(v11, v12, v13);
  }

  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  OUTLINED_FUNCTION_172();
  if (*(v8 + 84) == a2)
  {
    v7 = a3[7];
    goto LABEL_10;
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for MonotonicTimestamp(0);
    v7 = a3[10];
    goto LABEL_10;
  }

  v9 = *(a1 + a3[8] + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

void OUTLINED_FUNCTION_169_0()
{

  JUMPOUT(0x193B18060);
}

uint64_t OUTLINED_FUNCTION_169_4()
{

  return sub_19393CAE0();
}

uint64_t OUTLINED_FUNCTION_169_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 128);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v5);
}

void sub_193450A3C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_5();
  sub_19393BE60();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_5_66();
  OUTLINED_FUNCTION_12_49(*(v9 + 40));
  OUTLINED_FUNCTION_104_1();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_78_0();
    v12(v11);
    OUTLINED_FUNCTION_116_0(v1, 4);
    v13 = OUTLINED_FUNCTION_86_0();
    v14(v13);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193450B60()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_5();
  sub_19393BE60();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_5_66();
  OUTLINED_FUNCTION_12_49(*(v9 + 44));
  OUTLINED_FUNCTION_104_1();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_78_0();
    v12(v11);
    OUTLINED_FUNCTION_116_0(v1, 5);
    v13 = OUTLINED_FUNCTION_86_0();
    v14(v13);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193450C84(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      OUTLINED_FUNCTION_26_20();
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

void sub_193450D18()
{
  v2 = v1;
  v3 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
  OUTLINED_FUNCTION_16_4();
  if (v4)
  {
    OUTLINED_FUNCTION_2_7(*v5, v4, 1);
    v2 = v1;
  }

  if (!v2)
  {
    OUTLINED_FUNCTION_16_4();
    if (!v6 || (OUTLINED_FUNCTION_2_7(*v7, v6, 2), !v1))
    {
      OUTLINED_FUNCTION_79();
      sub_193450FF4();
      if (!v1)
      {
        OUTLINED_FUNCTION_79();
        sub_193450A3C();
        OUTLINED_FUNCTION_79();
        sub_193450B60();
        OUTLINED_FUNCTION_79();
        sub_193451F90();
        v8 = OUTLINED_FUNCTION_79();
        sub_193451D70(v8, v9, v10, v11, v12, v13, v14, v15, v58, v60);
        v16 = v0 + v3[14];
        if ((*(v16 + 9) & 1) == 0)
        {
          *&v59 = *v16;
          BYTE8(v59) = *(v16 + 8) & 1;
          OUTLINED_FUNCTION_78_1();
          sub_193447324(v17, v18, v19, v20, v21, v22);
        }

        if (*(*(v0 + v3[15]) + 16))
        {
          type metadata accessor for AppleIntelligenceReportingGeneralError(0);
          OUTLINED_FUNCTION_78_1();
          sub_193451CFC(v23, v24, v25, v26, v27, v28);
        }

        if (*(*(v0 + v3[16]) + 16))
        {
          OUTLINED_FUNCTION_78_1();
          sub_193451CFC(v29, v30, v31, v32, v33, v34);
        }

        OUTLINED_FUNCTION_16_4();
        if (v35)
        {
          OUTLINED_FUNCTION_2_7(*v36, v35, 11);
        }

        v37 = (v0 + v3[18]);
        if (*(v37 + 2))
        {
          v59 = *v37;
          v61 = *(v37 + 2);
          v62 = *(v37 + 24);
          v63 = *(v37 + 40);
          v64 = *(v37 + 7);
          OUTLINED_FUNCTION_78_1();
          sub_193447600();
        }

        if (*(*(v0 + v3[19]) + 16))
        {
          OUTLINED_FUNCTION_78_1();
          sub_193451CFC(v38, v39, v40, v41, v42, v43);
        }

        OUTLINED_FUNCTION_16_4();
        if (v44)
        {
          OUTLINED_FUNCTION_2_7(*v45, v44, 14);
        }

        OUTLINED_FUNCTION_16_4();
        if (v46)
        {
          OUTLINED_FUNCTION_2_7(*v47, v46, 15);
        }

        OUTLINED_FUNCTION_16_4();
        if (v48)
        {
          OUTLINED_FUNCTION_2_7(*v49, v48, 16);
        }

        OUTLINED_FUNCTION_79();
        sub_193451354();
        v50 = OUTLINED_FUNCTION_79();
        sub_1937785E0(v50, v51, v52, v53, v54, v55, v56, v57, v59, *(&v59 + 1), v61, v62, *(&v62 + 1), v63, *(&v63 + 1), v64, v65, v66, v67, v68);
      }
    }
  }
}

void sub_193450FF4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_5();
  sub_19393BE60();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_5_66();
  OUTLINED_FUNCTION_12_49(*(v9 + 36));
  OUTLINED_FUNCTION_104_1();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_78_0();
    v12(v11);
    OUTLINED_FUNCTION_116_0(v1, 3);
    v13 = OUTLINED_FUNCTION_86_0();
    v14(v13);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

unint64_t sub_193451118()
{
  result = qword_1ED508048;
  if (!qword_1ED508048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED508048);
  }

  return result;
}

id static Library.Streams.GenerativeModels.GenerativeFunctions.SystemInstrumentation.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:604800.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:1 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_12 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED510358);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD98, &qword_193960E40);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_193451354()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_5();
  sub_19393BE60();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_5_66();
  OUTLINED_FUNCTION_12_49(*(v9 + 92));
  OUTLINED_FUNCTION_104_1();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_78_0();
    v12(v11);
    OUTLINED_FUNCTION_116_0(v1, 18);
    v13 = OUTLINED_FUNCTION_86_0();
    v14(v13);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193451490(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x193451694);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}

uint64_t sub_1934516C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

uint64_t sub_19345180C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_19393C7D0();
  if (!v19)
  {
    return sub_19393C6F0();
  }

  v41 = v19;
  v45 = sub_19393C950();
  v32 = sub_19393C960();
  sub_19393C930();
  result = sub_19393C7C0();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_19393C7F0();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_19393C940();
      result = sub_19393C7E0();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_193451C28()
{
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5_1();
  v2 = OUTLINED_FUNCTION_23_14(v1);
  v3(v2);
  OUTLINED_FUNCTION_25_11();
  return sub_1934470C8(v4, v5, v6);
}

void sub_193451D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v14, v15, v16, v17);
  v18 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v18);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - v20;
  sub_19393BE00();
  OUTLINED_FUNCTION_76();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_14_5();
  v26 = type metadata accessor for AppleIntelligenceReportingInvocationStep(v25);
  sub_1934486F8(v13 + *(v26 + 52), v21, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v21, 1, v11) == 1)
  {
    sub_19344E6DC(v21, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    (*(v23 + 32))(v12, v21, v11);
    sub_193451F04(v12, 7, 2020175477, 0xE400000000000000, v10, a10);
    (*(v23 + 8))(v12, v11);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193451F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a3 == 26211 && a4 == 0xE200000000000000;
  if (v6 || (OUTLINED_FUNCTION_13_4(a3, a4) & 1) != 0)
  {
    sub_19393BD80();
  }

  else
  {
    sub_19393BDD0();
  }

  return sub_19393C3B0();
}

void sub_193451F90()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_5();
  sub_19393BE60();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_5_66();
  OUTLINED_FUNCTION_12_49(*(v9 + 48));
  OUTLINED_FUNCTION_104_1();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_78_0();
    v12(v11);
    OUTLINED_FUNCTION_116_0(v1, 6);
    v13 = OUTLINED_FUNCTION_86_0();
    v14(v13);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1934520D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t), void (*a8)(char *, char *), uint64_t a9, void (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v29 = a1;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v16 = sub_19393C740();
  v17 = a7(0, a4, a6);
  OUTLINED_FUNCTION_9_21();
  WitnessTable = swift_getWitnessTable();
  v20 = sub_19345180C(a8, v24, v16, v17, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v19);
  v21 = swift_getWitnessTable();
  a10(v20, a2, v17, v21, a3, a5);
}

uint64_t sub_193452200(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double AppleIntelligenceReportingUseCase.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

uint64_t sub_19345227C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppleIntelligenceReportingInvocationStep.inferenceProviderIdentifier.setter()
{
  OUTLINED_FUNCTION_5_67();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AppleIntelligenceReportingInvocationStep.requestorBundleID.setter()
{
  OUTLINED_FUNCTION_5_67();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

__n128 AppleIntelligenceReportingInvocationStep.primaryUseCase.setter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_10_61() + 72));
  v3 = v2[1];
  v8[0] = *v2;
  v8[1] = v3;
  v4 = v2[3];
  v8[2] = v2[2];
  v8[3] = v4;
  sub_193778EE8(v8);
  v5 = *(v0 + 16);
  *v2 = *v0;
  v2[1] = v5;
  result = *(v0 + 32);
  v7 = *(v0 + 48);
  v2[2] = result;
  v2[3] = v7;
  return result;
}

uint64_t AppleIntelligenceReportingInvocationStep.assetBundleID.setter()
{
  OUTLINED_FUNCTION_5_67();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AppleIntelligenceReportingAsset.assetIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_193452420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 24);
  if (*(v3 + 8))
  {
    result = sub_19393C3C0();
  }

  if (!v4)
  {
    if (v5)
    {
      return sub_19393C3C0();
    }
  }

  return result;
}

void sub_1934524A0()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = *(v0 + 28);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v11 = *(v0 + 56);
  v12 = *(v0 + 48);
  if (v6)
  {
    OUTLINED_FUNCTION_181(*v0, v6, 1);
  }

  if (!v1)
  {
    if (*(v7 + 16))
    {
      sub_193451CFC(v7, 2, v5, &type metadata for AppleIntelligenceReportingUseCase.Parameter, v3, &off_1F07EDD68);
    }

    if ((v8 & 1) == 0)
    {
      sub_19393C3D0();
    }

    if (v10)
    {
      OUTLINED_FUNCTION_181(v9, v10, 4);
    }

    if (v11)
    {
      OUTLINED_FUNCTION_181(v12, v11, 5);
    }
  }

  OUTLINED_FUNCTION_27();
}

uint64_t OUTLINED_FUNCTION_18_13(uint64_t a1, uint64_t a2)
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_19_12@<X0>(uint64_t a1@<X8>)
{

  return sub_193448758(v3 + a1, v2, v4, v1);
}

uint64_t OUTLINED_FUNCTION_18_25()
{

  return type metadata accessor for WalletPaymentsCommerceClassicOrder(0);
}

uint64_t OUTLINED_FUNCTION_18_28(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_18_29()
{

  return type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
}

void OUTLINED_FUNCTION_18_34(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E6968FB0];

  sub_19366E4BC(319, a2, v3);
}

uint64_t OUTLINED_FUNCTION_18_37(uint64_t a1, uint64_t a2)
{

  return OasisAnalyticsProcessId.rawValue.getter();
}

uint64_t OUTLINED_FUNCTION_18_38(uint64_t a1, uint64_t a2)
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_18_41()
{
  sub_193450268(v1, v0);
  sub_193450268(v3, v2);
  return v1;
}

__n128 *OUTLINED_FUNCTION_18_43(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(result->n128_u64 + v2) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_46()
{

  return type metadata accessor for MomentsNotifications(0);
}

uint64_t OUTLINED_FUNCTION_14_14(uint64_t result)
{
  *(v1 + 16) = result;
  *(result + 16) = v2;
  *(result + 24) = v3;
  *(result + 32) = v4;
  *(result + 40) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_15(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_19393C830();
}

uint64_t OUTLINED_FUNCTION_14_25(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_28(uint64_t a1)
{

  return sub_1934486F8(a1, v1 + 288, v2, v3);
}

uint64_t OUTLINED_FUNCTION_14_30(uint64_t a1, uint64_t a2)
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_14_31()
{

  return sub_1934486F8(v4 + v2, v3, v0, v1);
}

id OUTLINED_FUNCTION_14_32(uint64_t a1, uint64_t a2)
{

  return sub_19343D150(a1, a2, 0, 0, v2, 4, 0);
}

uint64_t OUTLINED_FUNCTION_14_34(uint64_t a1)
{

  return sub_1934486F8(a1, v1 + 352, v2, v3);
}

uint64_t OUTLINED_FUNCTION_14_36(uint64_t a1, uint64_t a2)
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_14_44(unint64_t *a1)
{

  return sub_1936A2980(a1, v2, v1);
}

__n128 OUTLINED_FUNCTION_14_45()
{
  v2 = v0[1].n128_u8[0];
  result = *v0;
  *(v1 - 112) = *v0;
  *(v1 - 96) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_48(uint64_t a1, uint64_t a2)
{

  return sub_19393CA30();
}

__n128 OUTLINED_FUNCTION_14_51@<Q0>(uint64_t a1@<X8>)
{
  *(v2 + 176) = *a1;
  *(v2 + 192) = v1;
  *(v3 + 24) = *(a1 + 24);
  result = *(a1 + 40);
  *(v3 + 40) = result;
  return result;
}

void OUTLINED_FUNCTION_14_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v4;
  v7 = a4 + 16 * v5;
  *(v7 + 32) = 8;
  *(v7 + 40) = v6;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t AppleIntelligenceReportingInvocationStep.onBehalfOfBundleID.setter()
{
  OUTLINED_FUNCTION_5_67();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AppleIntelligenceReportingInvocationStep.assets.setter()
{
  v2 = *(OUTLINED_FUNCTION_10_61() + 64);

  *(v1 + v2) = v0;
  return result;
}

uint64_t AppleIntelligenceReportingUseCase.useCaseIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AppleIntelligenceReportingInvocationStep.additionalUseCases.setter()
{
  v2 = *(OUTLINED_FUNCTION_10_61() + 76);

  *(v1 + v2) = v0;
  return result;
}

uint64_t sub_193452F40(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_193452F90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      OUTLINED_FUNCTION_26_20();
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_193452FD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED50FFF8);
  v4 = __swift_project_value_buffer(v3, qword_1ED50FFF8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
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

uint64_t GenerativeFunctionsInstrumentationMetadata.AssetTransition.result.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  *(v1 + 25) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_184_2()
{

  return swift_getEnumCaseMultiPayload();
}

__n128 OUTLINED_FUNCTION_184_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  *v10 = a10;
  v10[1].n128_u64[0] = 0;
  v10[1].n128_u64[1] = 0;
  v10[2].n128_u16[0] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_9(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_184_7(uint64_t a1)
{

  return sub_19393CA30();
}

uint64_t GenerativeFunctionsInstrumentationError.GenerativeFunctionError.SanitizerError.ErrorCase.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

void sub_193453288()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v10 = sub_19343CF40(v8, v9);
  [v10 *v5];

  OUTLINED_FUNCTION_22_10();
  v11 = v3();
  OUTLINED_FUNCTION_22_10();
  v7[3] = v1();
  v7[4] = swift_getWitnessTable();
  *v7 = v11;
  OUTLINED_FUNCTION_27();
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.postingId.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowIFRequestTelemetry.sessionCoordinatorLoop.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v1, v2, v3, v4);
}

void OUTLINED_FUNCTION_15_20(uint64_t a1, unint64_t *a2)
{

  sub_1934DD14C(319, a2, v2);
}

uint64_t OUTLINED_FUNCTION_15_23()
{
}

uint64_t OUTLINED_FUNCTION_15_31@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, __int128 a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11)
{
  a8 = a3;
  a9 = v11;
  a10 = *(a1 + 16);
  a11 = v12;

  return static WalletPaymentsCommerceClassicOrder.LocalizedString.== infix(_:_:)(&a8);
}

uint64_t OUTLINED_FUNCTION_15_33@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  *(v1 - 96) = *a1;
  *(v1 - 88) = v3 & 1;

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_15_37()
{

  return type metadata accessor for GeneratedImageUserInteraction(0);
}

uint64_t OUTLINED_FUNCTION_15_38(uint64_t a1)
{

  return sub_1934976E4(a1, 26211, 0xE200000000000000, v2, v1);
}

uint64_t OUTLINED_FUNCTION_15_45()
{

  return swift_projectBox();
}

unint64_t OUTLINED_FUNCTION_15_46@<X0>(char a1@<W8>)
{
  *(v3 - 136) = v2;
  *(v3 - 128) = v1;
  *(v3 - 127) = BYTE1(v1) & 1;
  *(v3 - 124) = HIDWORD(v1);
  *(v3 - 120) = a1 & 1;

  return sub_1936A6078();
}

void OUTLINED_FUNCTION_15_49()
{

  sub_19344652C();
}

void OUTLINED_FUNCTION_15_50()
{

  JUMPOUT(0x193B18060);
}

uint64_t OUTLINED_FUNCTION_15_52(uint64_t a1, uint64_t a2)
{

  return sub_19393CA30();
}

void *OUTLINED_FUNCTION_15_53(void *a1)
{

  return memcpy(a1, (v2 + v1), 0xC8uLL);
}

void OUTLINED_FUNCTION_15_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v4;
  v7 = a4 + 16 * v5;
  *(v7 + 32) = 12;
  *(v7 + 40) = v6;
}

uint64_t OUTLINED_FUNCTION_15_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_193447324(a1, a2, v7, a4, v6, a6);
}

uint64_t IntelligenceFlowIFRequestTelemetry.sessionCoordinatorLoop.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3F6C8, &qword_193975890, *(v1 + 44));
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.initiatedParticipant.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(v2);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 9) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for SageTranscript.SerializationFormat(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_9_2();
  }
}

uint64_t sub_193453898(_DWORD *a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_9_2();
  }
}

uint64_t OUTLINED_FUNCTION_19_18()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_19_20(uint64_t a1, uint64_t a2)
{

  return sub_19393CA30();
}

id OUTLINED_FUNCTION_19_24(void *a1)
{

  return sub_1934E6000(a1, v2, v3, v1);
}

uint64_t OUTLINED_FUNCTION_52_4(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_28(uint64_t a1, uint64_t a2)
{

  return sub_1934486F8(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_19_30()
{

  return type metadata accessor for AdAttributionKitConversion(0);
}

uint64_t OUTLINED_FUNCTION_19_33()
{

  return sub_19363A4C4(v1, v0);
}

uint64_t OUTLINED_FUNCTION_19_34()
{

  return sub_19363CB14(v0, v1);
}

id OUTLINED_FUNCTION_19_35(uint64_t a1)
{
  *(v1 + 32) = a1;
  v4 = *(v2 + 744);

  return objc_allocWithZone(v4);
}

uint64_t OUTLINED_FUNCTION_19_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_19393C550();
}

uint64_t OUTLINED_FUNCTION_19_37(uint64_t a1, uint64_t a2)
{

  return sub_1934486F8(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_19_40()
{

  return sub_19393C640();
}

void OUTLINED_FUNCTION_19_41(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E6969530];

  sub_19366E4BC(319, a2, v3);
}

uint64_t OUTLINED_FUNCTION_19_44()
{

  return sub_1936943C8(v0, type metadata accessor for AIML.UUID);
}

uint64_t OUTLINED_FUNCTION_19_48()
{

  return sub_19344E6DC(v0 + 2096, v1, v2);
}

void OUTLINED_FUNCTION_19_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v4;
  v7 = a4 + 16 * v5;
  *(v7 + 32) = 16;
  *(v7 + 40) = v6;
}

uint64_t OUTLINED_FUNCTION_19_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_19393C550();
}

uint64_t OUTLINED_FUNCTION_19_57()
{

  return type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
}

uint64_t sub_193453D04()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_193453D5C()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_193453DA8()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v0 = OUTLINED_FUNCTION_36();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_193453DF0()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_193453E68()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_193453ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v8 = a1 + *(a4 + 24);

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
}

char *OUTLINED_FUNCTION_35_4()
{
  v4 = (v2 + 2 * v1);
  result = v4 + *(v0 + 56);
  *v4 = v3;
  return result;
}

void OUTLINED_FUNCTION_44_8(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 7;
  *(v1 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_44_14()
{

  return sub_1934486F8(v3 + v2, v4, v0, v1);
}

uint64_t OUTLINED_FUNCTION_44_16()
{

  return type metadata accessor for IntelligenceFlowExecutorTelemetry(0);
}

void *OUTLINED_FUNCTION_44_17(void *a1)
{

  return memcpy(a1, (v1 + 3368), 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_44_22()
{
  sub_193437C90(v0);
  sub_193437C90(v1);

  return sub_193437C90(v0);
}

uint64_t OUTLINED_FUNCTION_44_23(uint64_t a1)
{

  return sub_193448804(a1, v1 + 96, v2, v3);
}

uint64_t OUTLINED_FUNCTION_44_24()
{

  return sub_193640C90(0, 1);
}

uint64_t OUTLINED_FUNCTION_44_25(uint64_t a1, uint64_t a2)
{

  return sub_19393CA30();
}

uint64_t sub_1934541C0()
{
  v0 = OUTLINED_FUNCTION_266();
  v1(v0);
  OUTLINED_FUNCTION_248();
  return sub_1934453DC(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowIFRequestTelemetry.monotonicTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v1, v2, v3, v4);
}

uint64_t sub_193454258(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_4();
  result = sub_19393BE60();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    v9 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
    *(v4 + *(a4 + 20)) = (v9 | (v9 << 57)) & 0xF000000000000007;
  }

  return result;
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.init()()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 256;
  v2 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
  v3 = v2[6];
  v4 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  v8 = v1 + v2[7];
  v9 = v1 + v2[8];
  *v9 = 0;
  *(v9 + 8) = 256;
  v10 = v2[9];
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v4);
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 256;
  sub_19344E6DC(v1 + v3, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v4);
  *v8 = 0;
  *(v8 + 8) = 1;
  *v9 = 0;
  *(v9 + 8) = 256;
  sub_19344E6DC(v1 + v10, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_116();

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t type metadata accessor for AIML.UUID(uint64_t a1)
{
  result = qword_1ED50EE30;
  if (!qword_1ED50EE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_193454480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t AIML.UUID.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_19393BE60();
  v3 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  sub_193442B60(a1, &qword_1EAE3AA88, &qword_19394F9C0);
  v6 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
}

uint64_t type metadata accessor for IntelligenceFlowIdentifiers(uint64_t a1)
{
  result = qword_1ED50F3A0;
  if (!qword_1ED50F3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IntelligenceFlowIdentifiers.sessionId.getter()
{
  sub_19393BE60();
  OUTLINED_FUNCTION_4_1();
  v0 = OUTLINED_FUNCTION_13_0();

  return v1(v0);
}

uint64_t sub_19345461C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1934546B4()
{
  v0 = OUTLINED_FUNCTION_266();
  v1(v0);
  OUTLINED_FUNCTION_248();
  return sub_1934453DC(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.initiatedParticipant.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
  v6 = v1 + *(result + 32);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.initiatedSpanId.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1934547C0()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v0 = OUTLINED_FUNCTION_36();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_19345481C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v7 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v7, a2, v6);
}

void GenerativeFunctionsInstrumentationMetadata.AssetTransition.FileResidentInfo.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 0;
  *(a1 + 32) = 1;
}

unint64_t sub_1934548A4(uint64_t a1)
{
  result = sub_1934548CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1934548CC()
{
  result = qword_1ED508288;
  if (!qword_1ED508288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED508288);
  }

  return result;
}

uint64_t sub_193454924(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.generativeFunctionInvocationIdentifier.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0);
  OUTLINED_FUNCTION_100_0();
  return sub_193445388();
}

void GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 10) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 26) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 42) = 1;
  *(a1 + 48) = MEMORY[0x1E69E7CC0];
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_1934549E8()
{
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_276();
  v3 = *(v0 + 32);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_95_3();
    sub_19393C3E0();
  }

  if (!v1)
  {
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3E0();
    }

    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_126_1();
      sub_19393C340();
    }
  }
}

uint64_t OUTLINED_FUNCTION_111_6()
{

  return sub_19350CB08(v1, v0);
}

uint64_t OUTLINED_FUNCTION_111_11()
{
}

uint64_t OUTLINED_FUNCTION_111_13(uint64_t result, __n128 a2)
{
  *(result + 88) = a2;
  *(result + 72) = a2;
  *(result + 56) = a2;
  *(result + 40) = a2;
  *(result + 24) = a2;
  *(result + 8) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_276_0(uint64_t a1)
{
  v3 = *(v1 - 128);

  return sub_1935413F8(a1, v3);
}

void *OUTLINED_FUNCTION_276_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  return memcpy(va, v20, 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_276_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69AAC70];

  return sub_19370ADAC(a1, a2, a3, v4);
}

void *OUTLINED_FUNCTION_276_3(void *a1)
{

  return memcpy(a1, v1, 0x50uLL);
}

void OUTLINED_FUNCTION_290(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 12;
  *(v1 + 16) = 2;
}

void *OUTLINED_FUNCTION_290_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char __dst, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va1, a38);
  va_start(__srca, a38);
  __src = va_arg(va1, void);
  v42 = va_arg(va1, void);
  v43 = va_arg(va1, void);
  v44 = va_arg(va1, void);
  v45 = va_arg(va1, void);
  v46 = va_arg(va1, void);
  v47 = va_arg(va1, void);
  v48 = va_arg(va1, void);
  v49 = va_arg(va1, void);
  v50 = va_arg(va1, void);

  return memcpy(&__dst, __srca, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_124_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_124_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_19393C3D0();
}

void OUTLINED_FUNCTION_124_8(uint64_t a1@<X8>)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;
  *(v3 + 57) = v2;
}

uint64_t storeEnumTagSinglePayload for GenerativeFunctionsInstrumentationError.SummarizationError.MissingRequiredData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

void sub_193454E40()
{
  OUTLINED_FUNCTION_75_3();
  v8 = *(v0 + 26);
  v9 = *(v0 + 42);
  v10 = *(v0 + 48);
  if ((*(v0 + 10) & 1) == 0)
  {
    OUTLINED_FUNCTION_85_3(v2, v3, v4, &type metadata for GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Validator, v5, &off_1F07BEC90, v6, v7, *v0);
    sub_193447600();
  }

  if (!v1)
  {
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_182_0(v2, v3, v4, &type metadata for GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.Outcome, v5, &off_1F07BECE8, v6, v7, *(v0 + 16));
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if ((v9 & 1) == 0)
    {
      OUTLINED_FUNCTION_105_4(v2, v3, v4, &type metadata for GenerativeFunctionsInstrumentationMetadata.ValidatorApplication.RejectionReason, v5, &off_1F07BED40, v6, v7, *(v0 + 32));
      sub_193447600();
    }

    if (*(v10 + 16))
    {
      OUTLINED_FUNCTION_106();
      sub_193451CFC(v11, v12, v13, v14, v15, v16);
    }
  }
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

void sub_193454F80()
{
  if ((*(v0 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_279();
    v10 = OUTLINED_FUNCTION_134(v1, v2, v3, v4, v5, v6, v7, v8, v9);
    sub_193447324(v10, v11, v12, v13, v14, v15);
  }
}

uint64_t sub_193454FD0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_23_26()
{

  return __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_23_31()
{

  return sub_19393C200();
}

uint64_t OUTLINED_FUNCTION_23_33(uint64_t a1)
{

  return sub_1934486F8(a1, v1 + 1104, v2, v3);
}

uint64_t OUTLINED_FUNCTION_23_35()
{

  return sub_19368E328();
}

uint64_t OUTLINED_FUNCTION_23_37(uint64_t a1, uint64_t a2)
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_23_38(uint64_t result, __n128 a2)
{
  *(result + 216) = a2;
  *(result + 200) = a2;
  *(result + 184) = a2;
  *(result + 168) = a2;
  *(result + 152) = a2;
  *(result + 136) = a2;
  *(result + 120) = a2;
  *(result + 104) = a2;
  *(result + 88) = a2;
  *(result + 72) = a2;
  *(result + 56) = a2;
  *(result + 40) = a2;
  *(result + 24) = a2;
  *(result + 8) = a2;
  return result;
}

void *OUTLINED_FUNCTION_23_40(void *a1)
{

  return memcpy(a1, (v1 + 1392), 0xB0uLL);
}

uint64_t OUTLINED_FUNCTION_23_43(uint64_t a1, uint64_t a2)
{

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_23_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v4;
  v7 = a4 + 16 * v5;
  *(v7 + 32) = 22;
  *(v7 + 40) = v6;
}

uint64_t OUTLINED_FUNCTION_135_2(uint64_t result, char a2)
{
  *(v2 + 224) = result;
  *(v2 + 232) = a2 & 1;
  return result;
}

__n128 *OUTLINED_FUNCTION_135_10(__n128 *result, __n128 a2)
{
  *(v2 - 224) = result;
  result[1] = a2;
  return result;
}

BOOL OUTLINED_FUNCTION_135_12@<W0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{

  return sub_1937BA4AC(a4, v4, a1, a2, a3);
}

uint64_t type metadata accessor for GenerativeExperiencesGuardrailResult(uint64_t a1)
{
  result = qword_1EAE45AC0;
  if (!qword_1EAE45AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerRequestIdentifier.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0);
  OUTLINED_FUNCTION_100_0();
  return sub_193445388();
}

uint64_t GenerativeFunctionsInstrumentationEvent.error.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(v1 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v2) + 56));
  *v0 = v3;

  return sub_193437C90(v3);
}

uint64_t _s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF13EventMetadataVAEycfC_0()
{
  v1 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID(v1);
  v2 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v6 = OUTLINED_FUNCTION_10_25();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_193455694()
{
  OUTLINED_FUNCTION_19_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    v7 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_19345576C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.init()@<X0>(_DWORD *a1@<X8>)
{
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
  v3 = DecorationTelemetry[5];
  sub_19343DAD8();
  v4 = a1 + DecorationTelemetry[6];
  sub_1935A74B0(v4);
  v5 = DecorationTelemetry[7];
  sub_19359C1D8();
  v6 = DecorationTelemetry[8];
  sub_19344BA58();
  v31 = DecorationTelemetry[9];
  sub_19359C2F4();
  v32 = DecorationTelemetry[10];
  sub_19359C3A8();
  v33 = DecorationTelemetry[11];
  sub_19343E51C((a1 + v33));
  v7 = a1 + DecorationTelemetry[12];
  sub_19343E508(v7);
  v8 = a1 + DecorationTelemetry[13];
  sub_19359C62C(v8);
  v9 = (a1 + DecorationTelemetry[14]);
  sub_19344B510(v9);
  v34 = DecorationTelemetry[15];
  sub_19359C7F4();
  v10 = (a1 + DecorationTelemetry[16]);
  sub_1935A74B4(v10);
  v35 = DecorationTelemetry[17];
  sub_19359C964((a1 + v35));
  v11 = a1 + DecorationTelemetry[18];
  sub_1934564FC(v11);
  *a1 = *sub_193456624();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v12 = sub_19393BE00();
  OUTLINED_FUNCTION_16_1(a1 + v3, v13, v14, v12);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3DAA0, &qword_193966A88);
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata(0);
  OUTLINED_FUNCTION_16_1(a1 + v5, v16, v17, Decoration);
  sub_19344E6DC(a1 + v6, &qword_1EAE3B498, &unk_193959120);
  v18 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_16_1(a1 + v6, v19, v20, v18);
  sub_19344E6DC(a1 + v31, &qword_1EAE3DAA8, &qword_193966A90);
  v21 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation(0);
  OUTLINED_FUNCTION_16_1(a1 + v31, v22, v23, v21);
  sub_19344E6DC(a1 + v32, &qword_1EAE3DAB0, &unk_193967240);
  v24 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall(0);
  OUTLINED_FUNCTION_16_1(a1 + v32, v25, v26, v24);
  sub_1934354B4(*(a1 + v33));
  *(a1 + v33) = 0xF000000000000007;
  sub_19345576C(*v7, *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 4));
  *(v7 + 4) = 0;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *v8 = 0;
  *(v8 + 6) = 768;
  *(v8 + 2) = 0;
  sub_193456D68(*v9, v9[1], v9[2]);
  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;
  sub_19344E6DC(a1 + v34, &qword_1EAE3DAB8, &qword_193966A98);
  v27 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext(0);
  OUTLINED_FUNCTION_16_1(a1 + v34, v28, v29, v27);
  result = sub_19345741C(*v10, v10[1]);
  *v10 = 0;
  v10[1] = 0;
  *(a1 + v35) = 3;
  *v11 = 0;
  *(v11 + 2) = 256;
  return result;
}

uint64_t IntelligenceFlowIdentifiers.init()@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - v3;
  v5 = type metadata accessor for IntelligenceFlowIdentifiers(0);
  v6 = v5[10];
  v7 = sub_19393BE60();
  OUTLINED_FUNCTION_12_9();
  sub_19393BE10();
  result = OUTLINED_FUNCTION_31(v4);
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v10 = a1 + v5[5];
    v11 = (a1 + v5[9]);
    (*(*(v7 - 8) + 32))(a1, v4, v7);
    *v10 = 0;
    *(v10 + 8) = 1;
    v12 = (a1 + v5[6]);
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v13 = (a1 + v5[7]);
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v14 = (a1 + v5[8]);
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    *v11 = 0;
    v11[1] = 0;
    sub_19344E6DC(a1 + v6, &qword_1EAE3AA88, &qword_19394F9C0);
    return OUTLINED_FUNCTION_12_9();
  }

  return result;
}

uint64_t IntelligenceFlowIdentifiers.spanId.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for IntelligenceFlowIdentifiers(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

unint64_t sub_193455CFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v7 = a1 == 0xD000000000000033 && 0x800000019396E060 == a2;
  if (v7 || (OUTLINED_FUNCTION_59_0(0xD000000000000033, 0x800000019396E060) & 1) != 0)
  {
    v8 = OUTLINED_FUNCTION_26_3();
    result = sub_1934563E0(v8);
  }

  else
  {
    v10 = a1 == 0xD00000000000001CLL && 0x800000019396E0A0 == a2;
    if (v10 || (OUTLINED_FUNCTION_59_0(0xD00000000000001CLL, 0x800000019396E0A0) & 1) != 0)
    {
      v11 = OUTLINED_FUNCTION_26_3();
      result = sub_193459958(v11);
    }

    else
    {
      v12 = a1 == 0xD00000000000001ELL && 0x800000019396E0C0 == a2;
      if (!v12 && (OUTLINED_FUNCTION_59_0(0xD00000000000001ELL, 0x800000019396E0C0) & 1) == 0)
      {
        return a3();
      }

      v13 = OUTLINED_FUNCTION_26_3();
      result = sub_193459EB0(v13);
    }
  }

  if (!v3)
  {
  }

  return result;
}

uint64_t sub_193455E04()
{
  v0 = OUTLINED_FUNCTION_266();
  v1(v0);
  OUTLINED_FUNCTION_248();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowIdentifiers.sessionId.setter()
{
  OUTLINED_FUNCTION_3_4();
  sub_19393BE60();
  OUTLINED_FUNCTION_4_1();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.monotonicTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_47_0(*(DecorationTelemetry + 32), &qword_1EAE3B498, &unk_193959120);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 50397184;
  *(a1 + 16) = xmmword_1939526A0;
  *(a1 + 32) = 0;
  v2 = (a1 + 32);
  *(a1 + 36) = 0;
  v3 = *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext(0) + 28);
  v4 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  *a1 = 0;
  *(a1 + 8) = 50397184;
  sub_193456418(*(a1 + 16), *(a1 + 24));
  *(a1 + 16) = xmmword_1939526A0;
  *(a1 + 36) = 0;
  *v2 = 0;
  sub_19344E6DC(a1 + v3, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_45();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
}

BOOL OUTLINED_FUNCTION_47_9@<W0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1934C35FC(a3, v3, a1, a2, v4);
}

uint64_t OUTLINED_FUNCTION_47_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(a1 + 16) = a9;

  return sub_19393C850();
}

BOOL OUTLINED_FUNCTION_47_17@<W0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1935C68EC(a3, v3, a1, a2, v4);
}

double OUTLINED_FUNCTION_47_19(uint64_t a1, int a2)
{
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = a2 & 0x7FFFFFFF;
  return result;
}

uint64_t OUTLINED_FUNCTION_47_20(uint64_t a1)
{

  return sub_193448804(a1, v1 + 592, v2, v3);
}

__n128 OUTLINED_FUNCTION_47_26()
{
  v2 = v0[1].n128_u64[0];
  v3 = v0[1].n128_u32[2];
  v4 = v0[1].n128_u8[12];
  v5 = v0[2].n128_u64[0];
  result = *v0;
  *(v1 - 64) = *v0;
  *(v1 - 48) = v2;
  *(v1 - 40) = v3;
  *(v1 - 36) = v4;
  *(v1 - 32) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_47_27(uint64_t a1, void *a2)
{
  v3 = *(v2 - 120);
  *a2 = *(v2 - 128);
  a2[1] = v3;
  return 0;
}

uint64_t IntelligenceFlowIdentifiers.clientRequestId.setter()
{
  OUTLINED_FUNCTION_8_20();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_1934562BC()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v0 = OUTLINED_FUNCTION_36();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t IntelligenceFlowIdentifiers.clientSessionId.setter()
{
  OUTLINED_FUNCTION_8_20();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowIdentifiers.clientApplicationId.setter()
{
  OUTLINED_FUNCTION_8_20();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.invocation.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_47_0(*(DecorationTelemetry + 36), &qword_1EAE3DAA8, &qword_193966A90);
}

uint64_t IntelligenceFlowIdentifiers.clientGroupIdentifier.setter()
{
  OUTLINED_FUNCTION_8_20();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_193456418(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t IntelligenceFlowIdentifiers.requestEventId.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = v1 + *(type metadata accessor for IntelligenceFlowIdentifiers(v2) + 40);

  return sub_19345461C(v0, v3);
}

uint64_t sub_193456488()
{
  OUTLINED_FUNCTION_16_20();
  if (!v1)
  {
    swift_once();
  }

  return *v0;
}

uint64_t sub_1934564C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 16))
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

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_193456520(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_19393BE60();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    v10 = a1 + *(a4 + 40);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_193456644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19393BE60();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    v8 = a1 + *(a3 + 40);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 24) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1934567B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_4();
  v6 = sub_19393BE60();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    v9 = (v8 >> 57) & 0x38 | v8 & 7;
    v10 = 128 - (((v8 >> 57) >> 6) | (2 * v9));
    if (v9)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t IntelligenceFlowTelemetry.Metadata.init()()
{
  OUTLINED_FUNCTION_8_4();
  v1 = sub_19393BE60();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  v5 = *(type metadata accessor for IntelligenceFlowTelemetry.Metadata(0) + 20);
  v6 = type metadata accessor for IntelligenceFlowIdentifiers(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v1);
  sub_19344E6DC(v0 + v5, &qword_1EAE3B948, &qword_193957C10);
  OUTLINED_FUNCTION_45();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v6);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID(v1);
  v2 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata(0) + 20);
  v7 = sub_19393BE60();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v11 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  sub_19344E6DC(v0 + v6, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_45();

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v7);
}

uint64_t sub_193456B30()
{
  v0 = OUTLINED_FUNCTION_266();
  v1(v0);
  OUTLINED_FUNCTION_248();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowTelemetry.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceFlowTelemetry(0);
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_193456D30();
  v6 = v2[8];
  sub_19344BA58();
  v7 = v2[9];
  sub_19344B818();
  v8 = v2[10];
  sub_193456FE0();
  v9 = a1 + v2[11];
  OUTLINED_FUNCTION_131(v9);
  *a1 = *sub_193457224();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v10 = sub_19393BE00();
  OUTLINED_FUNCTION_16_1(a1 + v3, v11, v12, v10);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3BBB0, &qword_193959030);
  v13 = type metadata accessor for IntelligenceFlowTelemetry.Metadata(0);
  OUTLINED_FUNCTION_16_1(a1 + v5, v14, v15, v13);
  sub_19344E6DC(a1 + v6, &qword_1EAE3B498, &unk_193959120);
  v16 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_16_1(a1 + v6, v17, v18, v16);
  sub_19344E6DC(a1 + v7, &qword_1EAE3AA88, &qword_19394F9C0);
  v19 = sub_19393BE60();
  OUTLINED_FUNCTION_16_1(a1 + v7, v20, v21, v19);
  sub_19344E6DC(a1 + v8, &qword_1EAE3BBB8, &unk_193959130);
  v22 = type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
  result = OUTLINED_FUNCTION_16_1(a1 + v8, v23, v24, v22);
  *v9 = 0;
  *(v9 + 4) = 256;
  return result;
}

uint64_t sub_193456D30()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowTelemetry.Metadata(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_193456D68(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_193456E08()
{
  OUTLINED_FUNCTION_19_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_172();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
    v7 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_193456EC8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    OUTLINED_FUNCTION_71();
    if (v5 ^ v6 | v4)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
    v9 = OUTLINED_FUNCTION_101(*(a3 + 28));

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

uint64_t sub_193456F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_193456FE0()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowTelemetry.Objective(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_71_8()
{

  return sub_19352F4AC();
}

uint64_t OUTLINED_FUNCTION_71_9(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69AAC58];

  return sub_193558334(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_71_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_19393C550();
}

uint64_t OUTLINED_FUNCTION_71_11()
{

  return sub_19393C3C0();
}

uint64_t OUTLINED_FUNCTION_71_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, __int128 a21, uint64_t a22, __int128 a23, __int128 a24, uint64_t a25)
{
  a23 = a20;
  a24 = a21;
  a25 = a22;

  return sub_193564E20(&a23);
}

uint64_t OUTLINED_FUNCTION_59_6(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_16()
{

  return type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
}

void OUTLINED_FUNCTION_71_18()
{

  sub_193447600();
}

uint64_t OUTLINED_FUNCTION_71_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_19393BF20();
}

uint64_t sub_193457284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_172();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_193457334(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if ((a2 & 0x80000000) == 0 || !*(a1 + 48))
  {
    v2 = *(a1 + 33);
    if (v2 > 0x80000000)
    {
      return OUTLINED_FUNCTION_46_4(~v2);
    }

    return OUTLINED_FUNCTION_46_4(-1);
  }

  return OUTLINED_FUNCTION_46_4(*a1 + 0x7FFFFFFF);
}

void sub_193457388()
{
  OUTLINED_FUNCTION_91_0();
  if (v3 == 2147483645)
  {
    *(v1 + 24) = (v0 + 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
    v5 = OUTLINED_FUNCTION_101(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_19345741C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t IntelligenceFlowTelemetry.monotonicTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v1, v2, v3, v4);
}

uint64_t sub_1934574A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1934574F8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_193457550(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1934575A8()
{
  OUTLINED_FUNCTION_26();
  type metadata accessor for IntelligenceFlowFeedbackLearning(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_1_10();
  type metadata accessor for ResponseGeneration(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  type metadata accessor for PlanGeneration(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  type metadata accessor for IntelligenceFlowPlatformPnR(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  sub_1934595A0(v0, v17 - v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_193447600();
      goto LABEL_7;
    case 2u:
      OUTLINED_FUNCTION_6_21();
      sub_1934586F4(v18, v10, v25);
      sub_193447600();
      v20 = type metadata accessor for PlanGeneration;
      v21 = v10;
      goto LABEL_6;
    case 3u:
      OUTLINED_FUNCTION_7_21();
      sub_1934586F4(v18, v6, v26);
      sub_193447600();
      v20 = type metadata accessor for ResponseGeneration;
      v21 = v6;
      goto LABEL_6;
    case 4u:
      OUTLINED_FUNCTION_4_19();
      v22 = OUTLINED_FUNCTION_25_2();
      sub_1934586F4(v22, v23, v24);
      sub_193447600();
      v21 = OUTLINED_FUNCTION_38_8();
      goto LABEL_6;
    default:
      OUTLINED_FUNCTION_5_26();
      sub_1934586F4(v18, v14, v19);
      sub_193447600();
      v20 = type metadata accessor for IntelligenceFlowPlatformPnR;
      v21 = v14;
LABEL_6:
      sub_193457550(v21, v20);
LABEL_7:
      OUTLINED_FUNCTION_169();
      OUTLINED_FUNCTION_27();
      return;
  }
}

uint64_t IntelligenceFlowTelemetry.metadata.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlatformPnR.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = xmmword_19395C290;
  v2 = *(type metadata accessor for IntelligenceFlowPlatformPnR(0) + 20);
  sub_19393BE60();
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  sub_193457BF4(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  OUTLINED_FUNCTION_218_0();
  *(a1 + 32) = xmmword_19395C290;
  sub_19344E6DC(a1 + v2, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_26_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1934579C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 21))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

void OUTLINED_FUNCTION_206_2(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  a1[1] = a2;
  a1[2] = a2;
  *a1 = a2;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.subComponentContext.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(v0);
  return OUTLINED_FUNCTION_47_0(*(DecorationTelemetry + 60), &qword_1EAE3DAB8, &qword_193966A98);
}

void sub_193457A88()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowTelemetry.Objective(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_1_10();
  v9 = type metadata accessor for IntelligenceFlowTelemetry(v8);
  OUTLINED_FUNCTION_19_12(*(v9 + 40));
  OUTLINED_FUNCTION_20_10();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3BBB8, &unk_193959130);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_24_12();
    sub_1934586F4(v11, v1, v12);
    OUTLINED_FUNCTION_17(v1, 4);
    OUTLINED_FUNCTION_0_28();
    sub_193457550(v1, v13);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193457BA4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 125);
    }

    v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
    if (v3 >= 0x7D)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_193457BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a5 >> 8 != 0xFFFFFFFF)
  {
    return sub_19350CD1C(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_193457C08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 40))
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

  return OUTLINED_FUNCTION_46_4(v2);
}

void sub_193457C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11_1();
  sub_193458178();
  if (!v4)
  {
    OUTLINED_FUNCTION_11_1();
    sub_193459054();
    OUTLINED_FUNCTION_11_1();
    sub_193459170();
    OUTLINED_FUNCTION_11_1();
    sub_193457A88();
    v7 = (v3 + *(type metadata accessor for IntelligenceFlowTelemetry(0) + 44));
    if ((*(v7 + 9) & 1) == 0)
    {
      v8 = *(v7 + 8);
      v9 = *v7;
      v10 = v8 & 1;
      sub_193447324(&v9, 5, a2, &type metadata for IntelligenceFlowTarget, a3, &off_1F07C3900);
    }
  }
}

uint64_t OUTLINED_FUNCTION_55_4(uint64_t a1, uint64_t a2)
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_35_8(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_35_11(uint64_t a1, unint64_t *a2)
{

  sub_19350BD10(319, a2, v2);
}

uint64_t OUTLINED_FUNCTION_35_15()
{
  sub_193438388(v1);

  return sub_193438388(v0);
}

uint64_t OUTLINED_FUNCTION_35_18(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 44) = BYTE4(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_19()
{

  return sub_19393CAD0();
}

void OUTLINED_FUNCTION_35_20(uint64_t a1, unint64_t *a2)
{

  sub_1935F3820(319, a2, v2);
}

uint64_t OUTLINED_FUNCTION_35_23()
{

  return __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v1);
}

id OUTLINED_FUNCTION_35_25(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{

  return sub_19343D150(a1, a2, a3, a4, a5, 12, 0);
}

uint64_t OUTLINED_FUNCTION_35_26(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 - 72);

  return sub_19349881C(a1, a2, v2, v5);
}

void OUTLINED_FUNCTION_35_27(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1936A3B98();
}

uint64_t OUTLINED_FUNCTION_35_28()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_35_29@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 40) = a2;
  *(a1 + 16) = v5;
  *(a1 + 24) = v2;
  *(a1 + 48) = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_35_32(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 8;
  *(v1 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_35_33(uint64_t a1)
{

  return sub_19393CA30();
}

char *OUTLINED_FUNCTION_35_34()
{
  v3 = (v2 + 8 * v1);
  result = v3 + *(v0 + 56);
  *v3 = 8;
  return result;
}

uint64_t sub_19345807C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

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

  return OUTLINED_FUNCTION_46_4(v2);
}

void IntelligenceFlowPlatformPnR.stateInfo.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_193457BF4(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  OUTLINED_FUNCTION_148();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

uint64_t IntelligenceFlowTarget.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_193958D40[result];
  }

  return result;
}

double sub_193458124(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = OUTLINED_FUNCTION_278_0(a1);
    *v3 = v5;
    if (v6 < 0)
    {
      OUTLINED_FUNCTION_230_0(v3);
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = -a2 << 8;
      *(a1 + 40) = 0;
      return result;
    }

    *(a1 + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_193458178()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowTelemetry.Metadata(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_1_10();
  v9 = type metadata accessor for IntelligenceFlowTelemetry(v8);
  OUTLINED_FUNCTION_19_12(*(v9 + 28));
  OUTLINED_FUNCTION_20_10();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3BBB0, &qword_193959030);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_24_12();
    sub_1934586F4(v11, v1, v12);
    OUTLINED_FUNCTION_17(v1, 1);
    v13 = OUTLINED_FUNCTION_38_8();
    sub_193457550(v13, v14);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1934582DC()
{
  v0 = OUTLINED_FUNCTION_266();
  v1(v0);
  OUTLINED_FUNCTION_248();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_136_0(uint64_t result, char a2)
{
  *(v2 + 208) = result;
  *(v2 + 216) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_136_1(uint64_t a1, uint64_t a2)
{

  return sub_1935159EC();
}

void OUTLINED_FUNCTION_136_3()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 32);
  *(v1 - 120) = v2;
  *(v1 - 112) = v3;
  *(v1 - 104) = v4;
  *(v1 - 96) = v5;
  *(v1 - 88) = v6;
}

uint64_t OUTLINED_FUNCTION_136_4(uint64_t a1, uint64_t a2)
{

  return sub_19393C390();
}

void OUTLINED_FUNCTION_136_9()
{
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  v5 = *(v0 + 16);
  v6 = *(v0 + 20);
  v7 = *(v0 + 21);
  *(v1 - 40) = *v0;
  *(v1 - 36) = v2;
  *(v1 - 32) = v3;
  *(v1 - 28) = v4;
  *(v1 - 24) = v5;
  *(v1 - 20) = v6;
  *(v1 - 19) = v7;
}

uint64_t IntelligenceFlowTelemetry.target.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for IntelligenceFlowTelemetry(0);
  v6 = v1 + *(result + 44);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t IntelligenceFlowTelemetry.objective.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowTelemetry.serialize()()
{
  v1 = type metadata accessor for IntelligenceFlowTelemetry(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBA8, &qword_193959028);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  OUTLINED_FUNCTION_4_18();
  sub_1934588A4(v0, v5, v9);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v10, &qword_1EAE3BBA8, &qword_193959028, v11);
  sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3BBA8, &qword_193959028);
  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_1934586F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

void sub_193458768()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  sub_193448758(v2, v1, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_6_3(v1, 1, v0);
  if (v13)
  {
    sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_78_0();
    v15(v14);
    OUTLINED_FUNCTION_116_0(v12, 1);
    v16 = OUTLINED_FUNCTION_86_0();
    v17(v16);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1934588A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

void sub_193458900()
{
  OUTLINED_FUNCTION_46_5();
  sub_193458768();
  if (!v0)
  {
    OUTLINED_FUNCTION_46_5();
    sub_193458960();
  }
}

void sub_193458960()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowIdentifiers(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_1_10();
  v9 = type metadata accessor for IntelligenceFlowTelemetry.Metadata(v8);
  OUTLINED_FUNCTION_19_12(*(v9 + 20));
  OUTLINED_FUNCTION_20_10();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3B948, &qword_193957C10);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_24_12();
    sub_1934586F4(v11, v1, v12);
    OUTLINED_FUNCTION_17(v1, 2);
    v13 = OUTLINED_FUNCTION_38_8();
    sub_193457550(v13, v14);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t static Library.Databases.IntelligenceFlow.Transcript.Datastream.Indexes.views.getter()
{
  if (qword_1ED510750 != -1)
  {
    OUTLINED_FUNCTION_4_38(&qword_1ED510750);
  }
}

void sub_193458AC8()
{
  OUTLINED_FUNCTION_26();
  v15[1] = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v15 - v4;
  v6 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = (v11 - v10);
  (*(v8 + 16))(v11 - v10, v2, v6);
  OUTLINED_FUNCTION_7_11();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_19344F8E0();
    v13 = sub_19393C550();
    v14 = *(v8 + 8);
    v14(v12, v6);
    v14(v5, v6);
    if ((v13 & 1) == 0)
    {
      sub_19344652C();
    }

    OUTLINED_FUNCTION_27();
  }
}

void sub_193458DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &a9 - v25;
  v27 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_1();
  v33 = v32 - v31;
  v34 = type metadata accessor for IntelligenceFlowIdentifiers(0);
  sub_193458F7C(v23 + *(v34 + 40), v26);
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_193458FEC(v26);
  }

  else
  {
    (*(v29 + 32))(v33, v26, v27);
    sub_19344652C();
    (*(v29 + 8))(v33, v27);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_193458F7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_193458FEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_193459054()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for MonotonicTimestamp(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_1_10();
  v9 = type metadata accessor for IntelligenceFlowTelemetry(v8);
  OUTLINED_FUNCTION_19_12(*(v9 + 32));
  OUTLINED_FUNCTION_20_10();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3B498, &unk_193959120);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_24_12();
    sub_1934586F4(v11, v1, v12);
    OUTLINED_FUNCTION_17(v1, 2);
    v13 = OUTLINED_FUNCTION_38_8();
    sub_193457550(v13, v14);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193459170()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  v13 = type metadata accessor for IntelligenceFlowTelemetry(0);
  sub_193448758(v2 + *(v13 + 36), v1, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_6_3(v1, 1, v0);
  if (v14)
  {
    sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_78_0();
    v16(v15);
    OUTLINED_FUNCTION_116_0(v12, 3);
    v17 = OUTLINED_FUNCTION_86_0();
    v18(v17);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t static Library.Databases.IntelligenceFlow.Telemetry.Indexes.views.getter()
{
  if (qword_1ED510650 != -1)
  {
    OUTLINED_FUNCTION_1_44(&qword_1ED510650);
  }
}

void sub_19345931C()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_5();
  sub_19393BE60();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_23();
  v3(0);
  sub_19344F184();
  OUTLINED_FUNCTION_6_3(v1, 1, v0);
  if (v7)
  {
    sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_178_2();
    v9(v8);
    sub_19344652C();
    v10 = OUTLINED_FUNCTION_121_0();
    v11(v10);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void IntelligenceFlowPlatformPnR.Ended.init()()
{
  OUTLINED_FUNCTION_68_5();
  *v0 = xmmword_1939526A0;
  OUTLINED_FUNCTION_193_0();
  *(v0 + 40) = MEMORY[0x1E69E7CC0];
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary0A9FlowErrorVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1934595A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_193459604()
{
  OUTLINED_FUNCTION_75_3();
  if (*(v0 + 32) >> 8 != 0xFFFFFFFFLL)
  {
    OUTLINED_FUNCTION_108_1();
    sub_193447600();
  }

  if (!v1)
  {
    OUTLINED_FUNCTION_95_3();
    sub_19345931C();
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

void sub_193459704()
{
  OUTLINED_FUNCTION_89_0();
  if (!(v0[4] >> 62))
  {
    LOBYTE(v7) = *v0 & 1;
    OUTLINED_FUNCTION_134(v1, v2, v3, &type metadata for IntelligenceFlowPlatformPnR.Started, v4, &off_1F07C5DA8, v5, v6, v7);
  }

  sub_193447600();
}

uint64_t static Library.Databases.IntelligenceFlow.Telemetry.Indexes.ITDatestampClientSessionIDClientRequestIDIndexView.database.getter()
{
  if (qword_1ED510640 != -1)
  {
    OUTLINED_FUNCTION_3_40(&qword_1ED510640);
  }

  return qword_1ED510660;
}

unint64_t sub_193459854(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v6 = a1 == 0xD000000000000032 && 0x800000019396DED0 == a2;
  if (!v6 && (sub_19393CA30() & 1) == 0)
  {
    return (a3)();
  }

  result = sub_193459920(a3);
  if (!v4)
  {
  }

  return result;
}

uint64_t sub_193459990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 == 1)
  {
    return sub_19393C2E0();
  }

  return result;
}

uint64_t sub_1934599E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_193459AA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t OUTLINED_FUNCTION_232_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return sub_193448804(a1, va, v17, v18);
}

void OUTLINED_FUNCTION_232_2()
{

  sub_193447600();
}

void sub_193459BA4()
{
  OUTLINED_FUNCTION_110();
  v2 = *(v0 + 40);
  if (*(v0 + 8) != 1)
  {
    OUTLINED_FUNCTION_108_1();
    sub_193447600();
  }

  if (!v1)
  {
    if (*(v2 + 16))
    {
      OUTLINED_FUNCTION_95_3();
      sub_193498848();
    }
  }
}

__n128 OUTLINED_FUNCTION_64_6()
{
  result = *&STACK[0x2D8];
  v1 = *&STACK[0x2E8];
  *&STACK[0x280] = *&STACK[0x2D8];
  *&STACK[0x290] = v1;
  STACK[0x2A0] = STACK[0x2F8];
  return result;
}

uint64_t OUTLINED_FUNCTION_64_9()
{

  return sub_19359BF94(v0, v1);
}

uint64_t OUTLINED_FUNCTION_108_4()
{
}

uint64_t OUTLINED_FUNCTION_64_18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  return sub_19350CB08(a1, a2);
}

uint64_t OUTLINED_FUNCTION_64_19()
{
  *(v0 + 48) = 1;
  *(v2 - 72) = v1;

  return swift_willThrow();
}

uint64_t sub_193459FAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_19345A09C()
{

  OUTLINED_FUNCTION_28_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_19345A1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_19345A2B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = a2;
  }

  return result;
}

uint64_t sub_19345A384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_4();
  v6 = sub_19393BE60();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_19345A430(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_19393BE60();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19345A558()
{

  OUTLINED_FUNCTION_98_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_19345A59C()
{

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_19345A634()
{

  return MEMORY[0x1EEE6BDD0](v0, 105, 7);
}

uint64_t sub_19345A67C()
{

  if ((v0[43] - 1) >= 2)
  {
    if (v0[27] != 1)
    {
    }

    if (v0[31] != 1)
    {
    }

    if (v0[35] != 1)
    {
    }

    if (v0[39] != 1)
    {
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, 681, 7);
}

uint64_t sub_19345A740()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_19345A7C0()
{

  OUTLINED_FUNCTION_98_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_19345A7F4()
{
  if (v0[31] != 1)
  {
    if (v0[15] != 1)
    {
    }

    if (v0[19] != 1)
    {
    }

    if (v0[23] != 1)
    {
    }

    if (v0[27] != 1)
    {
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, 338, 7);
}

uint64_t sub_19345A898()
{
  if (v0[3] != 1)
  {
  }

  if (v0[7] != 1)
  {
  }

  if (v0[11] != 1)
  {
  }

  if (v0[15] != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_19345A93C()
{

  return MEMORY[0x1EEE6BDD0](v0, 122, 7);
}

uint64_t sub_19345A984()
{

  return MEMORY[0x1EEE6BDD0](v0, 409, 7);
}

uint64_t sub_19345A9C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 297, 7);
}

uint64_t sub_19345A9FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 82, 7);
}

uint64_t sub_19345AA34()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_19345B0E8()
{

  OUTLINED_FUNCTION_184();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_19345B158()
{

  return MEMORY[0x1EEE6BDD0](v0, 82, 7);
}

uint64_t sub_19345B1B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 297, 7);
}

uint64_t sub_19345B1EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 409, 7);
}

uint64_t sub_19345B22C()
{

  return MEMORY[0x1EEE6BDD0](v0, 122, 7);
}

uint64_t sub_19345B274()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_19345B2AC()
{
  if (v0[31] != 1)
  {
    if (v0[15] != 1)
    {
    }

    if (v0[19] != 1)
    {
    }

    if (v0[23] != 1)
    {
    }

    if (v0[27] != 1)
    {
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, 338, 7);
}

uint64_t sub_19345B35C()
{

  if ((v0[43] - 1) >= 2)
  {
    if (v0[27] != 1)
    {
    }

    if (v0[31] != 1)
    {
    }

    if (v0[35] != 1)
    {
    }

    if (v0[39] != 1)
    {
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, 681, 7);
}

uint64_t sub_19345B414()
{

  return MEMORY[0x1EEE6BDD0](v0, 105, 7);
}

uint64_t sub_19345B6DC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return OUTLINED_FUNCTION_161_0(a1, a2);
  }

  return a1;
}

uint64_t sub_19345B71C()
{

  OUTLINED_FUNCTION_123_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_19345B7CC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_71();
    return (v3 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    v6 = OUTLINED_FUNCTION_101(*(a3 + 36));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_19345B854(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    v6 = OUTLINED_FUNCTION_101(*(a4 + 36));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_19345B9B8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_172();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
    goto LABEL_3;
  }

  if (a2 != 2147483646)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_172();
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = a3[9];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B940, &unk_193957C00);
      OUTLINED_FUNCTION_172();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v9 = a3[16];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
        OUTLINED_FUNCTION_172();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v9 = a3[17];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
          v9 = a3[18];
        }
      }
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v11 = *(a1 + a3[6] + 24);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  v12 = v11 - 1;
  if (v12 < 0)
  {
    v12 = -1;
  }

  return (v12 + 1);
}

void sub_19345BB90(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_172();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + a4[6] + 24) = a2;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_172();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[9];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B940, &unk_193957C00);
      OUTLINED_FUNCTION_172();
      if (*(v15 + 84) == a3)
      {
        v10 = v14;
        v11 = a4[16];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
        OUTLINED_FUNCTION_172();
        if (*(v17 + 84) == a3)
        {
          v10 = v16;
          v11 = a4[17];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
          v11 = a4[18];
        }
      }
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_19345BDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19345BEA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19345BFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_19345C0C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = a2;
  }

  return result;
}

uint64_t sub_19345C1FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 121, 7);
}

uint64_t sub_19345C254()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19345C318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 48));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19345C3D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 48)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19345C638(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_172();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
    goto LABEL_3;
  }

  if (a2 != 2147483646)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBB0, &qword_193959030);
    OUTLINED_FUNCTION_172();
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = a3[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
      OUTLINED_FUNCTION_172();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v9 = a3[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
        OUTLINED_FUNCTION_172();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v9 = a3[9];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBB8, &unk_193959130);
          v9 = a3[10];
        }
      }
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v11 = *(a1 + a3[6] + 24);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  v12 = v11 - 1;
  if (v12 < 0)
  {
    v12 = -1;
  }

  return (v12 + 1);
}

void sub_19345C810()
{
  OUTLINED_FUNCTION_19_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_172();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v2[5];
  }

  else
  {
    if (v3 == 2147483646)
    {
      *(v1 + v2[6] + 24) = v0;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBB0, &qword_193959030);
    OUTLINED_FUNCTION_172();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v7 = v2[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
      OUTLINED_FUNCTION_172();
      if (*(v11 + 84) == v3)
      {
        v6 = v10;
        v7 = v2[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
        OUTLINED_FUNCTION_172();
        if (*(v13 + 84) == v3)
        {
          v6 = v12;
          v7 = v2[9];
        }

        else
        {
          v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBB8, &unk_193959130);
          v7 = v2[10];
        }
      }
    }
  }

  __swift_storeEnumTagSinglePayload(v1 + v7, v0, v0, v6);
}

uint64_t sub_19345CA60(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_172();
  if (*(v6 + 84) == v3)
  {
    v7 = a3[5];
  }

  else
  {
    if (v3 == 2147483646)
    {
      return OUTLINED_FUNCTION_12_0(*(v4 + a3[6] + 24));
    }

    type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0);
    OUTLINED_FUNCTION_172();
    if (*(v12 + 84) == v3)
    {
      v7 = a3[7];
    }

    else
    {
      type metadata accessor for MonotonicTimestamp(0);
      v7 = a3[8];
    }
  }

  v8 = OUTLINED_FUNCTION_101(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_19345CB68(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_172();
  if (*(v8 + 84) == a3)
  {
    v9 = a4[5];
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v5 + a4[6] + 24) = v4;
      return;
    }

    type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0);
    OUTLINED_FUNCTION_172();
    if (*(v13 + 84) == a3)
    {
      v9 = a4[7];
    }

    else
    {
      type metadata accessor for MonotonicTimestamp(0);
      v9 = a4[8];
    }
  }

  v10 = OUTLINED_FUNCTION_101(v9);

  __swift_storeEnumTagSinglePayload(v10, v11, v4, v12);
}

uint64_t sub_19345CC78(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
    v6 = OUTLINED_FUNCTION_101(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_19345CD08()
{
  OUTLINED_FUNCTION_91_0();
  if (v3 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
    v5 = OUTLINED_FUNCTION_101(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_19345CD8C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_12_0(*(a1 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v5 = OUTLINED_FUNCTION_101(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_19345CE10()
{
  OUTLINED_FUNCTION_91_0();
  if (v3 == 2147483646)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
    v5 = OUTLINED_FUNCTION_101(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_19345CE94()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19345CECC()
{

  OUTLINED_FUNCTION_184();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_19345CF00()
{

  OUTLINED_FUNCTION_184();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_19345D014(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_172();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = a3[5];
    goto LABEL_3;
  }

  if (v3 != 2147483646)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE30, &qword_19395A0A8);
    OUTLINED_FUNCTION_172();
    if (*(v14 + 84) == v3)
    {
      v8 = v13;
      v9 = a3[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
      OUTLINED_FUNCTION_172();
      if (*(v16 + 84) == v3)
      {
        v8 = v15;
        v9 = a3[8];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE38, &qword_19395A0B0);
        v9 = a3[9];
      }
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(v4 + v9, v3, v8);
  }

  v11 = *(v4 + a3[6] + 24);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  v12 = v11 - 1;
  if (v12 < 0)
  {
    v12 = -1;
  }

  return (v12 + 1);
}

void sub_19345D19C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_172();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v5 + a4[6] + 24) = v4;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE30, &qword_19395A0A8);
    OUTLINED_FUNCTION_172();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
      OUTLINED_FUNCTION_172();
      if (*(v15 + 84) == a3)
      {
        v10 = v14;
        v11 = a4[8];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE38, &qword_19395A0B0);
        v11 = a4[9];
      }
    }
  }

  __swift_storeEnumTagSinglePayload(v5 + v11, v4, v4, v10);
}

uint64_t sub_19345D314()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v0 = OUTLINED_FUNCTION_13_5();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_19345D360()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = OUTLINED_FUNCTION_13_5();

  return __swift_storeEnumTagSinglePayload(v1, v2, v0, v3);
}

uint64_t sub_19345D3B0()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v0 = OUTLINED_FUNCTION_13_5();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_19345D3FC()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = OUTLINED_FUNCTION_13_5();

  return __swift_storeEnumTagSinglePayload(v1, v2, v0, v3);
}

uint64_t sub_19345D474()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_19345D4AC()
{
  if (*(v0 + 24) != 1)
  {
  }

  OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_19345D4F0()
{
  v1 = OUTLINED_FUNCTION_107_4();
  sub_19350CD1C(v1, v2, v3, v4, *(v0 + 48), *(v0 + 56));
  OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t sub_19345D530()
{
  if (v0[6] >> 8 != 0xFFFFFFFFLL || v0[8] >= 0x200uLL)
  {
    v1 = OUTLINED_FUNCTION_107_4();
    sub_19350E2C4(v1, v2, v3, v4, v5, v0[7], v6, v0[9], v0[10]);
  }

  OUTLINED_FUNCTION_127_3();

  return MEMORY[0x1EEE6BDD0](v7, v8, v9);
}

uint64_t sub_19345D5A4()
{
  if (*(v0 + 24) != 1)
  {
  }

  OUTLINED_FUNCTION_127_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_19345D5E8()
{
  v1 = OUTLINED_FUNCTION_107_4();
  sub_19350E2C4(v1, v2, v3, v4, *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  OUTLINED_FUNCTION_127_3();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t sub_19345D634(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    return sub_19350F26C(result, a2, a3, a4, a5, SBYTE1(a5));
  }

  return result;
}

uint64_t sub_19345D65C()
{
  if (HIBYTE(*(v0 + 48)) <= 0xFEu)
  {
    v1 = OUTLINED_FUNCTION_107_4();
    sub_19350ECD0(v1, v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_79_6();

  return MEMORY[0x1EEE6BDD0](v7, v8, v9);
}

uint64_t sub_19345D6A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19345D710(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 - 1 <= 1)
  {
    return sub_19350CB08(result, a2);
  }

  return result;
}

uint64_t sub_19345D748(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    return sub_19350F244(result, a2, a3, a4, a5, SBYTE1(a5));
  }

  return result;
}

uint64_t sub_19345D770()
{
  if (*(v0 + 64) >> 9 <= 0x7Eu)
  {
    v1 = OUTLINED_FUNCTION_107_4();
    sub_193511EB4(v1, v2, v3, v4, *(v0 + 48), *(v0 + 56), v5);
  }

  OUTLINED_FUNCTION_150_3();

  return MEMORY[0x1EEE6BDD0](v6, v7, v8);
}

uint64_t sub_19345D7B8()
{

  OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_19345D7F4()
{
  v1 = OUTLINED_FUNCTION_107_4();
  sub_193511EB4(v1, v2, v3, v4, *(v0 + 48), *(v0 + 56), *(v0 + 64));
  OUTLINED_FUNCTION_150_3();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t sub_19345D830()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_19345D868()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19345DAE8(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_193456418(a1, a2);
  }

  return a1;
}

uint64_t sub_19345DB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a5 & 0xFF00) != 0xFE00)
  {
    return sub_19345DB58(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_19345DB58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    return sub_193523A80(result, a2, a3, a4, a5, SBYTE1(a5));
  }

  return result;
}

uint64_t sub_19345DBB0()
{
  v1 = *(v0 + 64);
  if (v1 >> 9 <= 0x7E)
  {
    sub_193511EB4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 66, 7);
}

uint64_t sub_19345DC44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    return sub_19345D710(result, a2, a3, a4, a5, BYTE1(a5));
  }

  return result;
}

uint64_t sub_19345DC58()
{
  OUTLINED_FUNCTION_207();
  if (v1)
  {
    OUTLINED_FUNCTION_275_0();
    if (!v1 & v3)
    {
      return (v2 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_184_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    v5 = OUTLINED_FUNCTION_101(*(v0 + 20));

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

void sub_19345DCD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    OUTLINED_FUNCTION_218_0();
    *(a1 + 32) = v6;
    *(a1 + 40) = 0;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    v9 = a1 + *(a4 + 20);

    __swift_storeEnumTagSinglePayload(v9, a2, a2, v8);
  }
}

uint64_t sub_19345DDB0()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C070, &qword_19395AF28);
  v0 = OUTLINED_FUNCTION_80();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_19345DDF8()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C070, &qword_19395AF28);
  v0 = OUTLINED_FUNCTION_36();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_19345DE40()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C078, &qword_19395C2B0);
  v0 = OUTLINED_FUNCTION_80();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_19345DE88()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C078, &qword_19395C2B0);
  v0 = OUTLINED_FUNCTION_36();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_19345DED0()
{
  OUTLINED_FUNCTION_207();
  if (v1)
  {
    OUTLINED_FUNCTION_71();
    return (v2 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_184_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    v4 = OUTLINED_FUNCTION_101(*(v0 + 52));

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }
}

void sub_19345DF4C()
{
  OUTLINED_FUNCTION_91_0();
  if (v2 == 2147483646)
  {
    *(v1 + 96) = v0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_112_0();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary18ResponseGenerationV5EventV17RequestValidationV9StateInfoOSg_0(uint64_t a1)
{
  v1 = *(a1 + 33);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19345E020()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C080, &unk_19395C2E0);
  OUTLINED_FUNCTION_172();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_151();
  }

  else
  {
    if (v0 == 125)
    {
      OUTLINED_FUNCTION_277_0();
      if (v5)
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    v2 = OUTLINED_FUNCTION_221_0();
  }

  return __swift_getEnumTagSinglePayload(v2, v0, v3);
}

void sub_19345E0F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C080, &unk_19395C2E0);
  OUTLINED_FUNCTION_172();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 125)
    {
      v12 = (~a2 >> 1) & 0x3F | ((~a2 & 0x7F) << 6);
      *(a1 + *(a4 + 20)) = (v12 | (v12 << 57)) & 0xF000000000000007;
      return;
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    v11 = a1 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_19345E1E4()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C088, &qword_19395AF30);
  v0 = OUTLINED_FUNCTION_80();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_19345E22C()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C088, &qword_19395AF30);
  v0 = OUTLINED_FUNCTION_36();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_19345E2E4()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0A0, &unk_19395C310);
  v0 = OUTLINED_FUNCTION_80();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_19345E32C()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0A0, &unk_19395C310);
  v0 = OUTLINED_FUNCTION_36();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_19345E3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172();
  if (*(v6 + 84) != a2)
  {
    return OUTLINED_FUNCTION_244(*(a1 + *(a3 + 28)));
  }

  v7 = OUTLINED_FUNCTION_21_1();

  return __swift_getEnumTagSinglePayload(v7, a2, v8);
}

void sub_19345E460(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_36();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 28)) = (v4 - 1);
  }
}

uint64_t sub_19345E548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_172();
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_151();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_172();
    if (*(v9 + 84) != v3)
    {
      return OUTLINED_FUNCTION_244(*(v4 + *(a3 + 44)));
    }

    v7 = OUTLINED_FUNCTION_221_0();
  }

  return __swift_getEnumTagSinglePayload(v7, v3, v8);
}

void sub_19345E634(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_172();
  if (*(v8 + 84) != a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_172();
    if (*(v9 + 84) != a3)
    {
      *(v5 + *(a4 + 44)) = (v4 - 1);
      return;
    }

    OUTLINED_FUNCTION_221_0();
  }

  OUTLINED_FUNCTION_112_0();

  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_19345E728()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v0 = OUTLINED_FUNCTION_80();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_19345E770()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v0 = OUTLINED_FUNCTION_36();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_19345E800()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0D8, &qword_19395AF70);
  v0 = OUTLINED_FUNCTION_80();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_19345E848()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0D8, &qword_19395AF70);
  v0 = OUTLINED_FUNCTION_36();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_19345E928()
{
  if (v0[2])
  {
  }

  if (v0[17])
  {

    if (v0[10] != 1)
    {
    }
  }

  if (v0[22] != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 320, 7);
}

uint64_t sub_19345EA5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19345EABC()
{

  if (*(v0 + 32) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_19345EE44()
{
  if (v0[2])
  {
  }

  if (v0[17])
  {

    if (v0[10] != 1)
    {
    }
  }

  if (v0[22] != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 320, 7);
}

uint64_t sub_19345F040(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_172();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = a3[5];
  }

  else
  {
    if (v3 == 2147483646)
    {
      OUTLINED_FUNCTION_71();
      return (v11 + 1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEB0, &qword_193960F60);
    OUTLINED_FUNCTION_172();
    if (*(v13 + 84) == v3)
    {
      v8 = v12;
      v9 = a3[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEB8, &qword_193961930);
      OUTLINED_FUNCTION_172();
      if (*(v15 + 84) == v3)
      {
        v8 = v14;
        v9 = a3[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEC0, &qword_193960F68);
        OUTLINED_FUNCTION_172();
        if (*(v17 + 84) == v3)
        {
          v8 = v16;
          v9 = a3[10];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
          v9 = a3[11];
        }
      }
    }
  }

  return __swift_getEnumTagSinglePayload(v4 + v9, v3, v8);
}

void sub_19345F200(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_172();
  if (*(v8 + 84) != a3)
  {
    if (a3 == 2147483646)
    {
      *(v5 + *(a4 + 24) + 24) = v4;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEB0, &qword_193960F60);
    OUTLINED_FUNCTION_172();
    if (*(v13 + 84) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEB8, &qword_193961930);
      OUTLINED_FUNCTION_172();
      if (*(v14 + 84) != a3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEC0, &qword_193960F68);
        OUTLINED_FUNCTION_172();
        if (*(v15 + 84) != a3)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
        }
      }
    }
  }

  OUTLINED_FUNCTION_112_0();

  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_19345F3C0()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172();
  if (*(v3 + 84) == v0)
  {
    v4 = v2;
    v5 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    v5 = OUTLINED_FUNCTION_104_8();
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v4);
}

uint64_t sub_19345F468(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172();
  if (*(v4 + 84) != a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_104_8();
  }

  OUTLINED_FUNCTION_112_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_19345F514()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v0 = OUTLINED_FUNCTION_80();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_19345F55C()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v0 = OUTLINED_FUNCTION_36();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_19345F5A4(unint64_t *a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_244(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v4 = OUTLINED_FUNCTION_104_8();

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

void sub_19345F628()
{
  OUTLINED_FUNCTION_91_0();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_104_8();
    OUTLINED_FUNCTION_112_0();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_19345F6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_71();
    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void sub_19345F734()
{
  OUTLINED_FUNCTION_91_0();
  if (v2 == 2147483646)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_112_0();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_19345F7E0()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v0 = OUTLINED_FUNCTION_80();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_19345F828()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v0 = OUTLINED_FUNCTION_36();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_19345F870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172();
  if (*(v6 + 84) != a2)
  {
    return OUTLINED_FUNCTION_244(*(a1 + *(a3 + 20)));
  }

  v7 = OUTLINED_FUNCTION_21_1();

  return __swift_getEnumTagSinglePayload(v7, a2, v8);
}

void sub_19345F914(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_36();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }
}

uint64_t sub_19345F9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v7 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v7, a2, v6);
}

uint64_t sub_19345FA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v8 = a1 + *(a4 + 20);

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
}

uint64_t sub_19345FA80()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v0 = OUTLINED_FUNCTION_80();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_19345FAC8()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v0 = OUTLINED_FUNCTION_36();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_19345FB3C()
{

  OUTLINED_FUNCTION_95();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_19345FB70()
{
  if (*(v0 + 48) != 1)
  {
  }

  if (*(v0 + 88) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_19345FBC0()
{
  sub_19356C654(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return MEMORY[0x1EEE6BDD0](v0, 113, 7);
}

uint64_t sub_19345FC38()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_19345FC88()
{

  OUTLINED_FUNCTION_95();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_19345FCC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19345FEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 2)
  {
    return sub_193456418(a3, a4);
  }

  return result;
}

uint64_t sub_19345FF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t sub_19345FF14()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19345FF4C()
{

  OUTLINED_FUNCTION_97_6();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_19345FFA8()
{
  if (*(v0 + 48) != 1)
  {
  }

  if (*(v0 + 88) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_193460058(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_172();
  if (*(v5 + 84) == v3)
  {
    v6 = a3[5];
  }

  else
  {
    if (v3 == 2147483646)
    {
      OUTLINED_FUNCTION_71();
      return (v11 + 1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3C0, &qword_193963840);
    OUTLINED_FUNCTION_172();
    if (*(v12 + 84) == v3)
    {
      v6 = a3[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
      OUTLINED_FUNCTION_172();
      if (*(v13 + 84) == v3)
      {
        v6 = a3[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3C8, &qword_193963848);
        OUTLINED_FUNCTION_172();
        if (*(v14 + 84) == v3)
        {
          v6 = a3[10];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3D0, &unk_193964150);
          OUTLINED_FUNCTION_172();
          if (*(v15 + 84) == v3)
          {
            v6 = a3[16];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3D8, &qword_193963850);
            OUTLINED_FUNCTION_172();
            if (*(v16 + 84) == v3)
            {
              v6 = a3[17];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
              v6 = a3[18];
            }
          }
        }
      }
    }
  }

  v7 = OUTLINED_FUNCTION_101(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1934602AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_172();
  if (*(v8 + 84) == a3)
  {
    v9 = a4[5];
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v5 + a4[6] + 24) = v4;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3C0, &qword_193963840);
    OUTLINED_FUNCTION_172();
    if (*(v13 + 84) == a3)
    {
      v9 = a4[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
      OUTLINED_FUNCTION_172();
      if (*(v14 + 84) == a3)
      {
        v9 = a4[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3C8, &qword_193963848);
        OUTLINED_FUNCTION_172();
        if (*(v15 + 84) == a3)
        {
          v9 = a4[10];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3D0, &unk_193964150);
          OUTLINED_FUNCTION_172();
          if (*(v16 + 84) == a3)
          {
            v9 = a4[16];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3D8, &qword_193963850);
            OUTLINED_FUNCTION_172();
            if (*(v17 + 84) == a3)
            {
              v9 = a4[17];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
              v9 = a4[18];
            }
          }
        }
      }
    }
  }

  v10 = OUTLINED_FUNCTION_101(v9);

  __swift_storeEnumTagSinglePayload(v10, v11, v4, v12);
}

uint64_t sub_19346050C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_71();
    return (v7 + 1);
  }
}

void sub_1934605BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_36();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = v4;
  }
}

uint64_t sub_193460730(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_172();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_7:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_172();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[8];
    goto LABEL_7;
  }

  type metadata accessor for IntelligenceFlowIdentifiers(0);
  OUTLINED_FUNCTION_172();
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = a3[9];
    goto LABEL_7;
  }

  v15 = *(a1 + a3[10] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

void sub_193460878(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_172();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
    OUTLINED_FUNCTION_172();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[8];
    }

    else
    {
      type metadata accessor for IntelligenceFlowIdentifiers(0);
      OUTLINED_FUNCTION_172();
      if (*(v15 + 84) != a3)
      {
        *(a1 + a4[10] + 8) = (a2 - 1);
        return;
      }

      v10 = v14;
      v11 = a4[9];
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1934609E4()
{

  if ((*(v0 + 32) - 1) >= 2)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_193460A40()
{

  if (*(v0 + 56) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_193460AA0()
{
  if (*(v0 + 24) != 1)
  {
  }

  OUTLINED_FUNCTION_95();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_193460AE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_193460B24()
{

  OUTLINED_FUNCTION_95();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_193460B60()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_193460E40()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_193460E78()
{

  return MEMORY[0x1EEE6BDD0](v0, 37, 7);
}

uint64_t sub_193460EE4(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_172();
  if (*(v5 + 84) == v3)
  {
    v6 = a3[5];
  }

  else
  {
    if (v3 == 2147483646)
    {
      OUTLINED_FUNCTION_71();
      return (v11 + 1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAA0, &qword_193966A88);
    OUTLINED_FUNCTION_172();
    if (*(v12 + 84) == v3)
    {
      v6 = a3[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
      OUTLINED_FUNCTION_172();
      if (*(v13 + 84) == v3)
      {
        v6 = a3[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAA8, &qword_193966A90);
        OUTLINED_FUNCTION_172();
        if (*(v14 + 84) == v3)
        {
          v6 = a3[9];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAB0, &unk_193967240);
          OUTLINED_FUNCTION_172();
          if (*(v15 + 84) == v3)
          {
            v6 = a3[10];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAB8, &qword_193966A98);
            v6 = a3[15];
          }
        }
      }
    }
  }

  v7 = OUTLINED_FUNCTION_101(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1934610EC()
{
  OUTLINED_FUNCTION_19_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_172();
  if (*(v4 + 84) == v3)
  {
    v5 = v2[5];
  }

  else
  {
    if (v3 == 2147483646)
    {
      *(v1 + v2[6] + 24) = v0;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAA0, &qword_193966A88);
    OUTLINED_FUNCTION_172();
    if (*(v9 + 84) == v3)
    {
      v5 = v2[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
      OUTLINED_FUNCTION_172();
      if (*(v10 + 84) == v3)
      {
        v5 = v2[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAA8, &qword_193966A90);
        OUTLINED_FUNCTION_172();
        if (*(v11 + 84) == v3)
        {
          v5 = v2[9];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAB0, &unk_193967240);
          OUTLINED_FUNCTION_172();
          if (*(v12 + 84) == v3)
          {
            v5 = v2[10];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAB8, &qword_193966A98);
            v5 = v2[15];
          }
        }
      }
    }
  }

  v6 = OUTLINED_FUNCTION_101(v5);

  __swift_storeEnumTagSinglePayload(v6, v7, v0, v8);
}

uint64_t sub_1934612F0()
{
  OUTLINED_FUNCTION_101_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_21_1();

    return __swift_getEnumTagSinglePayload(v2, v0, v3);
  }

  else
  {
    OUTLINED_FUNCTION_71();
    return (v5 + 1);
  }
}

void sub_193461394()
{
  OUTLINED_FUNCTION_19_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_36();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }
}

uint64_t sub_193461430()
{
  OUTLINED_FUNCTION_101_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_21_1();

    return __swift_getEnumTagSinglePayload(v2, v0, v3);
  }

  else
  {
    OUTLINED_FUNCTION_71();
    if (v7 ^ v8 | v6)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }
}

void sub_1934614D4()
{
  OUTLINED_FUNCTION_19_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_36();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24) + 8) = (v0 + 1);
  }
}

uint64_t sub_193461570()
{
  OUTLINED_FUNCTION_101_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172();
  if (*(v3 + 84) == v1)
  {
    v4 = OUTLINED_FUNCTION_21_1();

    return __swift_getEnumTagSinglePayload(v4, v1, v5);
  }

  else
  {
    v7 = *(v0 + *(v2 + 24));
    if (v7 >= 0xFFFFFFFF)
    {
      LODWORD(v7) = -1;
    }

    return (v7 + 1);
  }
}

void sub_193461618()
{
  OUTLINED_FUNCTION_19_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_36();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }
}

uint64_t sub_193461700()
{
  OUTLINED_FUNCTION_91_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1934617A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_19346181C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1934618D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1934619BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_193461A00()
{

  if (*(v0 + 136) != 1)
  {
  }

  if (*(v0 + 240) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 248, 7);
}

uint64_t sub_193461A60()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_193461A98()
{

  return MEMORY[0x1EEE6BDD0](v0, 209, 7);
}

uint64_t sub_193461AE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_193461DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 2)
  {
    return sub_193456418(a3, a4);
  }

  return result;
}

uint64_t sub_193461DE4()
{

  OUTLINED_FUNCTION_173_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_193461F78(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_172();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = a3[5];
  }

  else
  {
    if (v3 == 2147483646)
    {
      return OUTLINED_FUNCTION_12_0(*(v4 + a3[6] + 24));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFA8, &qword_193969360);
    OUTLINED_FUNCTION_172();
    if (*(v12 + 84) == v3)
    {
      v8 = v11;
      v9 = a3[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
      OUTLINED_FUNCTION_172();
      if (*(v14 + 84) == v3)
      {
        v8 = v13;
        v9 = a3[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFB0, &qword_193969368);
        OUTLINED_FUNCTION_172();
        if (*(v16 + 84) == v3)
        {
          v8 = v15;
          v9 = a3[9];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFB8, &unk_19396A2A0);
          OUTLINED_FUNCTION_172();
          if (*(v18 + 84) == v3)
          {
            v8 = v17;
            v9 = a3[15];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFC0, &qword_193969370);
            OUTLINED_FUNCTION_172();
            if (*(v20 + 84) == v3)
            {
              v8 = v19;
              v9 = a3[17];
            }

            else
            {
              v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFC8, &unk_19396A2B0);
              v9 = a3[18];
            }
          }
        }
      }
    }
  }

  return __swift_getEnumTagSinglePayload(v4 + v9, v3, v8);
}