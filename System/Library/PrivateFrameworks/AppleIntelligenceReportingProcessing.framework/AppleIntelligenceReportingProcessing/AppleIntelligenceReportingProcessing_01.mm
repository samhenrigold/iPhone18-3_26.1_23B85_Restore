uint64_t getEnumTagSinglePayload for DataCollectorInternal.SampledSubsystemInfo(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 125))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for DataCollectorInternal.SampledSubsystemInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 125) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 125) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AvailabilityChangeEvent and conformance AvailabilityChangeEvent()
{
  result = lazy protocol witness table cache variable for type AvailabilityChangeEvent and conformance AvailabilityChangeEvent;
  if (!lazy protocol witness table cache variable for type AvailabilityChangeEvent and conformance AvailabilityChangeEvent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvailabilityChangeEvent, &type metadata for AvailabilityChangeEvent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityChangeEvent and conformance AvailabilityChangeEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AvailabilityChangeEvent and conformance AvailabilityChangeEvent;
  if (!lazy protocol witness table cache variable for type AvailabilityChangeEvent and conformance AvailabilityChangeEvent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvailabilityChangeEvent, &type metadata for AvailabilityChangeEvent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityChangeEvent and conformance AvailabilityChangeEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AvailabilityDetailedStatusEvent and conformance AvailabilityDetailedStatusEvent()
{
  result = lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent and conformance AvailabilityDetailedStatusEvent;
  if (!lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent and conformance AvailabilityDetailedStatusEvent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvailabilityDetailedStatusEvent, &type metadata for AvailabilityDetailedStatusEvent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent and conformance AvailabilityDetailedStatusEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent and conformance AvailabilityDetailedStatusEvent;
  if (!lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent and conformance AvailabilityDetailedStatusEvent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvailabilityDetailedStatusEvent, &type metadata for AvailabilityDetailedStatusEvent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent and conformance AvailabilityDetailedStatusEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InvocationEvent and conformance InvocationEvent()
{
  result = lazy protocol witness table cache variable for type InvocationEvent and conformance InvocationEvent;
  if (!lazy protocol witness table cache variable for type InvocationEvent and conformance InvocationEvent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationEvent, &type metadata for InvocationEvent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationEvent and conformance InvocationEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationEvent and conformance InvocationEvent;
  if (!lazy protocol witness table cache variable for type InvocationEvent and conformance InvocationEvent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationEvent, &type metadata for InvocationEvent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationEvent and conformance InvocationEvent);
  }

  return result;
}

uint64_t outlined init with copy of AppleIntelligenceError?()
{
  OUTLINED_FUNCTION_117();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_62();
  v4(v3);
  return v0;
}

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t OUTLINED_FUNCTION_6_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = a1;
  *v14 = a11;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &a14);
}

uint64_t OUTLINED_FUNCTION_17_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[805] = *v2;
  v3[806] = v2[1];
  v5 = (*(a1 + 56) + a2);
  v6 = *v5;
  v3[807] = *v5;
  v3[808] = v5[1];
  v3[809] = *(v6 + 16);
}

id OUTLINED_FUNCTION_22_0(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

uint64_t OUTLINED_FUNCTION_27(uint64_t result)
{
  *(v2 + 14) = result;
  *v1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_29(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_32()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_34()
{

  JUMPOUT(0x22AAAF0A0);
}

void OUTLINED_FUNCTION_36()
{

  JUMPOUT(0x22AAAF0A0);
}

uint64_t OUTLINED_FUNCTION_43()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_52()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_56()
{

  JUMPOUT(0x22AAAF0A0);
}

void *OUTLINED_FUNCTION_59()
{

  return memcpy((v1 + v0), (v1 + v2), 0xE5uLL);
}

void OUTLINED_FUNCTION_61()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x22AAAF0A0);
}

void OUTLINED_FUNCTION_64(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v2 + a2, v4, v3 + a2, a1);
}

void *OUTLINED_FUNCTION_70()
{

  return memcpy((v0 + 2016), (v0 + 1616), 0x189uLL);
}

void *OUTLINED_FUNCTION_71@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v1 + 1616), (a1 + 32), 0x189uLL);
}

void *OUTLINED_FUNCTION_72()
{

  return memcpy((v0 + 1216), (v0 + 416), 0x189uLL);
}

void *OUTLINED_FUNCTION_73()
{

  return memcpy((v0 + 3616), (v0 + 416), 0x189uLL);
}

uint64_t OUTLINED_FUNCTION_74(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_75(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_80()
{

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_81()
{

  return memcpy((v0 + 16), v1, 0x189uLL);
}

void *OUTLINED_FUNCTION_82()
{

  return memcpy((v0 + 4016), v1, 0xE5uLL);
}

uint64_t OUTLINED_FUNCTION_83()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_84()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_85(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_87()
{

  return outlined init with copy of AvailabilityChangeEvent(v0 + 4016, v0 + 4480);
}

void OUTLINED_FUNCTION_88(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

void *OUTLINED_FUNCTION_91()
{

  return memcpy((v0 + 4944), (v1 + 32), 0xE5uLL);
}

uint64_t OUTLINED_FUNCTION_97()
{

  return swift_task_alloc();
}

void *OUTLINED_FUNCTION_98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC36AppleIntelligenceReportingProcessing22InvocationStepMetadataV_Tt1g5Tm(v5, a2, a3, a4, v4);
}

void *OUTLINED_FUNCTION_100()
{

  return memcpy((v2 + v0), (v2 + v1), 0xE5uLL);
}

void *OUTLINED_FUNCTION_101()
{

  return memcpy((v0 + v2), v1, 0xE5uLL);
}

void OUTLINED_FUNCTION_102(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_103()
{
}

void *OUTLINED_FUNCTION_104()
{

  return memcpy((v0 + 416), v1, 0x189uLL);
}

uint64_t OUTLINED_FUNCTION_105(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_106(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_108()
{

  return outlined init with copy of AvailabilityDetailedStatusEvent(v0 + 16, v0 + 816);
}

uint64_t OUTLINED_FUNCTION_109()
{

  return outlined init with copy of AvailabilityDetailedStatusEvent(v0 + 1616, v0 + 2416);
}

BOOL OUTLINED_FUNCTION_110()
{

  return os_log_type_enabled(v0, v1);
}

id OUTLINED_FUNCTION_123(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

void *OUTLINED_FUNCTION_124(void *a1)
{

  return memcpy(a1, v1, 0x189uLL);
}

void *OUTLINED_FUNCTION_125(void *a1)
{

  return memcpy(a1, v1, 0xE5uLL);
}

uint64_t AvailabilityChangeEvent.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 28);
  v6 = *(v0 + 32);
  v7 = *(v0 + 36);
  v8 = *(v0 + 40);
  v26 = *(v0 + 48);
  v9 = *(v0 + 56);
  v28 = *(v0 + 64);
  v27 = *(v0 + 72);
  v30 = *(v0 + 80);
  v29 = *(v0 + 88);
  v32 = *(v0 + 96);
  v31 = *(v0 + 104);
  v34 = *(v0 + 112);
  v33 = *(v0 + 120);
  v36 = *(v0 + 128);
  v35 = *(v0 + 136);
  v38 = *(v0 + 140);
  v37 = *(v0 + 144);
  v40 = *(v0 + 156);
  v39 = *(v0 + 160);
  v43 = *(v0 + 176);
  v42 = *(v0 + 184);
  v45 = *(v0 + 216);
  v46 = *(v0 + 208);
  strcpy(v47, "Change Event:\n");
  v47[15] = -18;
  v44 = *(v0 + 224);
  v41 = *(v0 + 228);
  v10 = *(v0 + 57);
  v11 = *(v0 + 73);
  v12 = *(v0 + 89);
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFs6UInt64V_Tt2g5(v47, 0x757461745377656ELL, 0xE900000000000073, v1, v2);
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFs6UInt64V_Tt2g5(v47, 0x7461745376657270, 0xEA00000000007375, v3, v4);
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFs6UInt32V_Tt2g5(v47, 0x4D746E6572727563, 0xEB0000000065646FLL, v5 | (v6 << 32));
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFs6UInt32V_Tt2g5(v47, 0x65646F4D76657270, 0xE800000000000000, v7 | (v8 << 32));
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSd_Tt2g5(v47, 0xD000000000000019, 0x8000000227FB4F10, v26, v9);
  v13 = OUTLINED_FUNCTION_8_3();
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSb_Tt2g5(v13, 0xD00000000000001CLL, v14 | 0x8000000000000000, v10);
  v15 = OUTLINED_FUNCTION_8_3();
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSd_Tt2g5(v15, 0xD00000000000001BLL, v16 | 0x8000000000000000, v28, v27);
  v17 = OUTLINED_FUNCTION_8_3();
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSb_Tt2g5(v17, 0xD000000000000027, v18 | 0x8000000000000000, v11);
  v19 = OUTLINED_FUNCTION_8_3();
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSd_Tt2g5(v19, 0xD00000000000001BLL, v20 | 0x8000000000000000, v30, v29);
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSb_Tt2g5(v47, 0x656C67676F544941, 0xED00006574617453, v12);
  v21 = OUTLINED_FUNCTION_8_3();
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSd_Tt2g5(v21, 0xD000000000000015, v22 | 0x8000000000000000, v32, v31);
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSd_Tt2g5(v47, 0xD00000000000001FLL, 0x8000000227FB4FE0, v34, v33);
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSd_Tt2g5(v47, 0xD000000000000011, 0x8000000227FB5000, v36, v35);
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFs6UInt32V_Tt2g5(v47, 0xD000000000000015, 0x8000000227FB5020, v38 | (v37 << 32));
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFs6UInt32V_Tt2g5(v47, 0xD000000000000016, 0x8000000227FB5040, v40 | (v39 << 32));
  v23 = OUTLINED_FUNCTION_8_3();
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSd_Tt2g5(v23, 0xD000000000000025, v24 | 0x8000000000000000, v43, v42);
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSS_Tt2g5(v47, 0x4965736143657375, 0xE900000000000044, v46, v45);
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFs6UInt32V_Tt2g5(v47, 0x6D617473656D6974, 0xE900000000000070, v44 | (v41 << 32));
  return *v47;
}

uint64_t AvailabilityChangeEvent.upload(coreAnalyticsUploader:)(void *a1)
{
  memcpy(__dst, v1, 0xE5uLL);
  type metadata accessor for CAEncoder();
  v9[3] = &type metadata for AvailabilityChangeEvent;
  v9[4] = lazy protocol witness table accessor for type AvailabilityChangeEvent and conformance AvailabilityChangeEvent();
  v9[0] = swift_allocObject();
  memcpy((v9[0] + 16), v1, 0xE5uLL);
  outlined init with copy of AvailabilityChangeEvent(__dst, v8);
  v4 = static CAEncoder.toCADictionary(_:)(v9);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v9);
  if (!v2)
  {
    v6 = a1[3];
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v6);
    (*(v7 + 8))(0xD000000000000037, 0x8000000227FB4E60, v4, v6, v7);
  }

  return result;
}

uint64_t AvailabilityChangeEvent.uploadToSELF(using:)(uint64_t a1)
{
  *(v2 + 248) = a1;
  memcpy((v2 + 16), v1, 0xE5uLL);

  return MEMORY[0x2822009F8](AvailabilityChangeEvent.uploadToSELF(using:), 0, 0);
}

uint64_t AvailabilityChangeEvent.uploadToSELF(using:)()
{
  v1 = *(v0 + 248);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = AvailabilityChangeEvent.uploadToSELF(using:);

  return v6(v0 + 16, v2, v3);
}

{
  v2 = *v1;
  *(v2 + 264) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](AvailabilityChangeEvent.uploadToSELF(using:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  return (*(v0 + 8))();
}

uint64_t AvailabilityChangeEvent.useCaseID.getter()
{
  v1 = *(v0 + 208);

  return v1;
}

uint64_t _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFs6UInt64V_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    MEMORY[0x22AAAE070](a2, a3);
    MEMORY[0x22AAAE070](8250, 0xE200000000000000);
    v5 = String.init<A>(describing:)();
    MEMORY[0x22AAAE070](v5);

    MEMORY[0x22AAAE070](10, 0xE100000000000000);
    MEMORY[0x22AAAE070](2108704, 0xE300000000000000);
  }

  return result;
}

uint64_t _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFs6UInt32V_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x100000000) == 0)
  {
    MEMORY[0x22AAAE070](a2, a3);
    MEMORY[0x22AAAE070](8250, 0xE200000000000000);
    v4 = String.init<A>(describing:)();
    MEMORY[0x22AAAE070](v4);

    MEMORY[0x22AAAE070](10, 0xE100000000000000);
    MEMORY[0x22AAAE070](2108704, 0xE300000000000000);
  }

  return result;
}

uint64_t _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSd_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    MEMORY[0x22AAAE070](a2, a3);
    MEMORY[0x22AAAE070](8250, 0xE200000000000000);
    v5 = String.init<A>(describing:)();
    MEMORY[0x22AAAE070](v5);

    MEMORY[0x22AAAE070](10, 0xE100000000000000);
    MEMORY[0x22AAAE070](2108704, 0xE300000000000000);
  }

  return result;
}

uint64_t _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSb_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != 2)
  {
    MEMORY[0x22AAAE070](a2, a3);
    MEMORY[0x22AAAE070](8250, 0xE200000000000000);
    v4 = String.init<A>(describing:)();
    MEMORY[0x22AAAE070](v4);

    MEMORY[0x22AAAE070](10, 0xE100000000000000);
    MEMORY[0x22AAAE070](2108704, 0xE300000000000000);
  }

  return result;
}

uint64_t _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSS_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    MEMORY[0x22AAAE070](a2, a3);
    MEMORY[0x22AAAE070](8250, 0xE200000000000000);

    v5 = String.init<A>(describing:)();
    MEMORY[0x22AAAE070](v5);

    MEMORY[0x22AAAE070](10, 0xE100000000000000);
    MEMORY[0x22AAAE070](2108704, 0xE300000000000000);
  }

  return result;
}

uint64_t AvailabilityChangeEvent.debugDescriptionBuild<A>(description:fieldName:field:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[1] = a1;
  v9 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_26();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = v25 - v13;
  OUTLINED_FUNCTION_26();
  v16 = v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v25 - v21;
  (*(v11 + 16))(v14, a4, v9);
  if (__swift_getEnumTagSinglePayload(v14, 1, a5) == 1)
  {
    return (*(v11 + 8))(v14, v9);
  }

  (*(v16 + 32))(v22, v14, a5);
  v26 = 2108704;
  v27 = 0xE300000000000000;
  MEMORY[0x22AAAE070](a2, a3);
  MEMORY[0x22AAAE070](8250, 0xE200000000000000);
  (*(v16 + 16))(v20, v22, a5);
  v24 = String.init<A>(describing:)();
  MEMORY[0x22AAAE070](v24);

  MEMORY[0x22AAAE070](10, 0xE100000000000000);
  MEMORY[0x22AAAE070](v26, v27);

  return (*(v16 + 8))(v22, a5);
}

uint64_t AvailabilityChangeEvent.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x757461745377656ELL && a2 == 0xE900000000000073;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461745376657270 && a2 == 0xEA00000000007375;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4D746E6572727563 && a2 == 0xEB0000000065646FLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65646F4D76657270 && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000019 && 0x8000000227FB4F10 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001CLL && 0x8000000227FB4F30 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001BLL && 0x8000000227FB4F50 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000027 && 0x8000000227FB4F70 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001BLL && 0x8000000227FB4FA0 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x656C67676F544941 && a2 == 0xED00006574617453;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000015 && 0x8000000227FB4FC0 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001FLL && 0x8000000227FB4FE0 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000011 && 0x8000000227FB5000 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000015 && 0x8000000227FB5020 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000013 && 0x8000000227FB5090 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000016 && 0x8000000227FB5040 == a2;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000014 && 0x8000000227FB50B0 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000025 && 0x8000000227FB5060 == a2;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000023 && 0x8000000227FB50D0 == a2;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x4965736143657375 && a2 == 0xE900000000000044;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
                                        {

                                          return 20;
                                        }

                                        else
                                        {
                                          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                          if (v26)
                                          {
                                            return 20;
                                          }

                                          else
                                          {
                                            return 21;
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

Swift::Int AvailabilityChangeEvent.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x22AAAE9F0](a1);
  return Hasher._finalize()();
}

unint64_t AvailabilityChangeEvent.CodingKeys.stringValue.getter(char a1)
{
  result = 0x757461745377656ELL;
  switch(a1)
  {
    case 1:
      result = 0x7461745376657270;
      break;
    case 2:
      result = 0x4D746E6572727563;
      break;
    case 3:
      result = 0x65646F4D76657270;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD000000000000027;
      break;
    case 9:
      result = 0x656C67676F544941;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD00000000000001FLL;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0xD000000000000025;
      break;
    case 18:
      result = 0xD000000000000023;
      break;
    case 19:
      result = 0x4965736143657375;
      break;
    case 20:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AvailabilityChangeEvent.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x22AAAE9F0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AvailabilityChangeEvent.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AvailabilityChangeEvent.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AvailabilityChangeEvent.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AvailabilityChangeEvent.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AvailabilityChangeEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AvailabilityChangeEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AvailabilityChangeEvent.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV10CodingKeys33_273A2E0FDD97999694FF904920922F8ELLOGMd, &_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV10CodingKeys33_273A2E0FDD97999694FF904920922F8ELLOGMR);
  OUTLINED_FUNCTION_26();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v20 - v6;
  v8 = *(v1 + 16);
  v56 = *(v1 + 24);
  v53 = *(v1 + 28);
  v54 = v8;
  v52 = *(v1 + 32);
  v51 = *(v1 + 36);
  LODWORD(v8) = *(v1 + 40);
  v48 = *(v1 + 48);
  v49 = *(v1 + 56);
  v50 = v8;
  LODWORD(v8) = *(v1 + 57);
  v45 = *(v1 + 64);
  v46 = *(v1 + 72);
  v47 = v8;
  LODWORD(v8) = *(v1 + 73);
  v42 = *(v1 + 80);
  v43 = *(v1 + 88);
  v44 = v8;
  LODWORD(v8) = *(v1 + 89);
  v39 = *(v1 + 96);
  v40 = *(v1 + 104);
  v41 = v8;
  v37 = *(v1 + 112);
  v38 = *(v1 + 120);
  v9 = *(v1 + 128);
  v36 = *(v1 + 136);
  v34 = *(v1 + 140);
  v35 = v9;
  v33 = *(v1 + 144);
  v32 = *(v1 + 148);
  v31 = *(v1 + 152);
  v30 = *(v1 + 156);
  v29 = *(v1 + 160);
  v28 = *(v1 + 164);
  v27 = *(v1 + 168);
  v20[1] = *(v1 + 176);
  v21 = *(v1 + 184);
  v22 = *(v1 + 192);
  v23 = *(v1 + 200);
  v10 = *(v1 + 216);
  v24 = *(v1 + 208);
  v25 = v10;
  v26 = *(v1 + 224);
  v11 = *(v1 + 228);
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  lazy protocol witness table accessor for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v58 = 0;
  v16 = v55;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v16)
  {
    v17 = v52;
    v18 = v50;
    LODWORD(v55) = v11;
    OUTLINED_FUNCTION_6_2(1);
    OUTLINED_FUNCTION_12_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v58 = 2;
    v57 = v17;
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v58 = 3;
    v57 = v18;
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(4);
    OUTLINED_FUNCTION_12_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v58 = 5;
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(6);
    OUTLINED_FUNCTION_12_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v58 = 7;
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(8);
    OUTLINED_FUNCTION_12_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v58 = 9;
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(10);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(11);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(12);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v58 = 13;
    OUTLINED_FUNCTION_10_2(v33);
    OUTLINED_FUNCTION_4_3();
    v58 = 14;
    OUTLINED_FUNCTION_10_2(v31);
    OUTLINED_FUNCTION_4_3();
    v58 = 15;
    OUTLINED_FUNCTION_10_2(v29);
    OUTLINED_FUNCTION_4_3();
    v58 = 16;
    OUTLINED_FUNCTION_10_2(v27);
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_6_2(17);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(18);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(19);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v58 = 20;
    OUTLINED_FUNCTION_10_2(v55);
    OUTLINED_FUNCTION_4_3();
  }

  return (*(v4 + 8))(v7, v15);
}

unint64_t lazy protocol witness table accessor for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvailabilityChangeEvent.CodingKeys, &unk_283B54BB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvailabilityChangeEvent.CodingKeys, &unk_283B54BB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvailabilityChangeEvent.CodingKeys, &unk_283B54BB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvailabilityChangeEvent.CodingKeys, &unk_283B54BB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys);
  }

  return result;
}

uint64_t AvailabilityChangeEvent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV10CodingKeys33_273A2E0FDD97999694FF904920922F8ELLOGMd, &_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV10CodingKeys33_273A2E0FDD97999694FF904920922F8ELLOGMR);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v59 = a2;
  LOBYTE(v61) = 0;
  v6 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v167 = v7 & 1;
  OUTLINED_FUNCTION_2_4(1);
  v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v165 = v8 & 1;
  OUTLINED_FUNCTION_2_4(2);
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v57 = v6;
  v162 = BYTE4(v9) & 1;
  LOBYTE(v61) = 3;
  LODWORD(v6) = v9;
  OUTLINED_FUNCTION_3_4();
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v56 = v6;
  v159 = BYTE4(v10) & 1;
  LOBYTE(v61) = 4;
  LODWORD(v6) = v10;
  OUTLINED_FUNCTION_3_4();
  v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v157 = v11 & 1;
  OUTLINED_FUNCTION_2_4(5);
  v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_2_4(6);
  v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v154 = v12 & 1;
  OUTLINED_FUNCTION_2_4(7);
  v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_2_4(8);
  v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v151 = v13 & 1;
  OUTLINED_FUNCTION_2_4(9);
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_0_4(10);
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v148 = v16 & 1;
  OUTLINED_FUNCTION_0_4(11);
  v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v146 = v17 & 1;
  OUTLINED_FUNCTION_0_4(12);
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v144 = v18 & 1;
  OUTLINED_FUNCTION_0_4(13);
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v141 = BYTE4(v48) & 1;
  OUTLINED_FUNCTION_0_4(14);
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v138 = BYTE4(v47) & 1;
  OUTLINED_FUNCTION_0_4(15);
  v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v135 = BYTE4(v46) & 1;
  OUTLINED_FUNCTION_0_4(16);
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v132 = BYTE4(v45) & 1;
  OUTLINED_FUNCTION_0_4(17);
  v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v130 = v19 & 1;
  OUTLINED_FUNCTION_0_4(18);
  v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v128 = v20 & 1;
  OUTLINED_FUNCTION_0_4(19);
  v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v42 = v21;
  v125 = 20;
  v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v22 = OUTLINED_FUNCTION_9_2();
  v23(v22);
  v126 = BYTE4(v40) & 1;
  v60[0] = v57;
  v36 = v167;
  LOBYTE(v60[1]) = v167;
  *(&v60[1] + 1) = *v166;
  HIDWORD(v60[1]) = *&v166[3];
  v60[2] = v58;
  v30 = v165;
  LOBYTE(v60[3]) = v165;
  *(&v60[3] + 1) = v163;
  BYTE3(v60[3]) = v164;
  HIDWORD(v60[3]) = v56;
  v27 = v162;
  LOBYTE(v60[4]) = v162;
  BYTE3(v60[4]) = v161;
  *(&v60[4] + 1) = v160;
  v26 = v6;
  HIDWORD(v60[4]) = v6;
  v25 = v159;
  LOBYTE(v60[5]) = v159;
  *(&v60[5] + 1) = *v158;
  HIDWORD(v60[5]) = *&v158[3];
  v60[6] = v55;
  LOBYTE(v6) = v157;
  LOBYTE(v60[7]) = v157;
  BYTE1(v60[7]) = v54;
  *(&v60[7] + 2) = v155;
  HIWORD(v60[7]) = v156;
  v60[8] = v53;
  LODWORD(v168) = v154;
  LOBYTE(v60[9]) = v154;
  BYTE1(v60[9]) = v52;
  HIWORD(v60[9]) = v153;
  *(&v60[9] + 2) = v152;
  v60[10] = v51;
  v39 = v151;
  LOBYTE(v60[11]) = v151;
  BYTE1(v60[11]) = v14;
  HIWORD(v60[11]) = v150;
  *(&v60[11] + 2) = v149;
  v60[12] = v15;
  v38 = v148;
  LOBYTE(v60[13]) = v148;
  HIDWORD(v60[13]) = *&v147[3];
  *(&v60[13] + 1) = *v147;
  v60[14] = v50;
  v37 = v146;
  LOBYTE(v60[15]) = v146;
  HIDWORD(v60[15]) = *&v145[3];
  *(&v60[15] + 1) = *v145;
  v60[16] = v49;
  v35 = v144;
  LOBYTE(v60[17]) = v144;
  BYTE3(v60[17]) = v143;
  *(&v60[17] + 1) = v142;
  HIDWORD(v60[17]) = v48;
  v34 = v141;
  LOBYTE(v60[18]) = v141;
  BYTE3(v60[18]) = v140;
  *(&v60[18] + 1) = v139;
  HIDWORD(v60[18]) = v47;
  v33 = v138;
  LOBYTE(v60[19]) = v138;
  BYTE3(v60[19]) = v137;
  *(&v60[19] + 1) = v136;
  HIDWORD(v60[19]) = v46;
  v32 = v135;
  LOBYTE(v60[20]) = v135;
  BYTE3(v60[20]) = v134;
  *(&v60[20] + 1) = v133;
  HIDWORD(v60[20]) = v45;
  v31 = v132;
  LOBYTE(v60[21]) = v132;
  HIDWORD(v60[21]) = *&v131[3];
  *(&v60[21] + 1) = *v131;
  v60[22] = v44;
  v29 = v130;
  LOBYTE(v60[23]) = v130;
  HIDWORD(v60[23]) = *&v129[3];
  *(&v60[23] + 1) = *v129;
  v60[24] = v43;
  v28 = v128;
  LOBYTE(v60[25]) = v128;
  HIDWORD(v60[25]) = *&v127[3];
  *(&v60[25] + 1) = *v127;
  v60[26] = v41;
  v60[27] = v42;
  LODWORD(v60[28]) = v40;
  BYTE4(v60[28]) = BYTE4(v40) & 1;
  memcpy(v59, v60, 0xE5uLL);
  outlined init with copy of AvailabilityChangeEvent(v60, &v61);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v61 = v57;
  v62 = v36;
  v64 = v58;
  v65 = v30;
  v68 = v56;
  v69 = v27;
  v72 = v26;
  v73 = v25;
  v75 = v55;
  v76 = v6;
  v77 = v54;
  *v63 = *v166;
  *&v63[3] = *&v166[3];
  v66 = v163;
  v67 = v164;
  v70 = v160;
  v71 = v161;
  *v74 = *v158;
  *&v74[3] = *&v158[3];
  v78 = v155;
  v79 = v156;
  v80 = v53;
  v81 = v168;
  v82 = v52;
  v84 = v153;
  v83 = v152;
  v85 = v51;
  v86 = v39;
  v87 = v14;
  v89 = v150;
  v88 = v149;
  v90 = v15;
  v91 = v38;
  *&v92[3] = *&v147[3];
  *v92 = *v147;
  v93 = v50;
  v94 = v37;
  *&v95[3] = *&v145[3];
  *v95 = *v145;
  v96 = v49;
  v97 = v35;
  v99 = v143;
  v98 = v142;
  v100 = v48;
  v101 = v34;
  v103 = v140;
  v102 = v139;
  v104 = v47;
  v105 = v33;
  v107 = v137;
  v106 = v136;
  v108 = v46;
  v109 = v32;
  v111 = v134;
  v110 = v133;
  v112 = v45;
  v113 = v31;
  *&v114[3] = *&v131[3];
  *v114 = *v131;
  v115 = v44;
  v116 = v29;
  *&v117[3] = *&v129[3];
  *v117 = *v129;
  v118 = v43;
  v119 = v28;
  *&v120[3] = *&v127[3];
  *v120 = *v127;
  v121 = v41;
  v122 = v42;
  v123 = v40;
  v124 = BYTE4(v40) & 1;
  return outlined destroy of AvailabilityChangeEvent(&v61);
}

uint64_t AvailabilityChangeEvent.init(newStatus:prevStatus:currentMode:prevMode:timeSinceLastStatusChange:eligibleForAppleIntelligence:timeSinceLastEligibleChange:allowedThroughAppleIntelligenceWaitlist:timeSinceLastWaitlistChange:AIToggleState:timeSinceLastAIToggle:timeSinceLastAvailabilityChange:timeSinceLastBoot:newMCSubscriptionHash:newSubscriptionHash:prevMCSubscriptionHash:prevSubscriptionHash:timeSinceLastMCSubscriptionHashChange:timeSinceLastSubscriptionHashChange:useCaseID:timestamp:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, char a13, uint64_t a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, int a23, int a24, char a25, int a26, char a27, int a28, char a29, int a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, int a38, char a39)
{
  *a9 = result;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 28) = a5;
  *(a9 + 32) = BYTE4(a5) & 1;
  *(a9 + 36) = a6;
  *(a9 + 40) = BYTE4(a6) & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 57) = a10;
  *(a9 + 64) = a11;
  *(a9 + 72) = a12 & 1;
  *(a9 + 73) = a13;
  *(a9 + 80) = a14;
  *(a9 + 88) = a15 & 1;
  *(a9 + 89) = a16;
  *(a9 + 96) = a17;
  *(a9 + 104) = a18 & 1;
  *(a9 + 112) = a19;
  *(a9 + 120) = a20 & 1;
  *(a9 + 128) = a21;
  *(a9 + 136) = a22 & 1;
  *(a9 + 140) = a24;
  *(a9 + 144) = a25 & 1;
  *(a9 + 148) = a26;
  *(a9 + 152) = a27 & 1;
  *(a9 + 156) = a28;
  *(a9 + 160) = a29 & 1;
  *(a9 + 164) = a30;
  *(a9 + 168) = a31 & 1;
  *(a9 + 176) = a32;
  *(a9 + 184) = a33 & 1;
  *(a9 + 192) = a34;
  *(a9 + 200) = a35 & 1;
  *(a9 + 208) = a36;
  *(a9 + 216) = a37;
  *(a9 + 224) = a38;
  *(a9 + 228) = a39 & 1;
  return result;
}

unint64_t instantiation function for generic protocol witness table for AvailabilityChangeEvent(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AvailabilityChangeEvent and conformance AvailabilityChangeEvent();
  result = lazy protocol witness table accessor for type AvailabilityChangeEvent and conformance AvailabilityChangeEvent();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AvailabilityChangeEvent(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 229))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 216);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AvailabilityChangeEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
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
    *(result + 228) = 0;
    *(result + 224) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 229) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 229) = 0;
    }

    if (a2)
    {
      *(result + 216) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AvailabilityChangeEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AvailabilityChangeEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

unint64_t AvailabilityDetailedStatusEvent.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v28 = *(v0 + 56);
  v29 = v0[9];
  v30 = *(v0 + 84);
  v21 = v0[8];
  v22 = v0[11];
  v31 = v0[12];
  v32 = *(v0 + 108);
  v33 = v0[15];
  v34 = *(v0 + 132);
  v23 = v0[14];
  v24 = v0[17];
  v35 = v0[18];
  OUTLINED_FUNCTION_13_2();
  v7 = v0[23];
  v36 = v8;
  v37 = *(v0 + 196);
  v9 = v0[27];
  v25 = v0[22];
  v26 = v0[26];
  v38 = *(v0 + 204);
  v39 = *(v0 + 232);
  v40 = *(v0 + 248);
  v41 = *(v0 + 264);
  v42 = *(v0 + 304);
  v27 = v0[43];
  v43 = v0[44];
  v46 = *(v0 + 364);
  v47 = *(v0 + 372);
  v44 = *(v0 + 380);
  v45 = *(v0 + 392);
  if (v2)
  {
    OUTLINED_FUNCTION_16_1();
    _StringGuts.grow(_:)(31);

    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAAE070](v1, v2);
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_21_0();
  }

  if (v3)
  {
    MEMORY[0x22AAAE070](v4, v3);
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_21_0();
  }

  if ((v5 & 1) == 0)
  {
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AAAE070](v10);

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_21_0();
  }

  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_2();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AAAE070](v11);

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_21_0();
  }

  if ((v28 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_2();
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AAAE070](v12);

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_21_0();
  }

  if (v29)
  {
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_27_0(v13);
    MEMORY[0x22AAAE070](v21, v29);
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_23_1();
  }

  if ((v30 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_2();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AAAE070](v14);

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_23_1();
  }

  if (v31)
  {
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_27_0(v15);
    MEMORY[0x22AAAE070](v22, v31);
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_23_1();
  }

  if ((v32 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_2();
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AAAE070](v16);

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_23_1();
  }

  if (v33)
  {
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_27_0(v17);
    MEMORY[0x22AAAE070](v23, v33);
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v34 & 1) == 0)
  {
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_25_1();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if (v35)
  {
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAAE070](v24);
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v36 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_2();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_25_1();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if (v7)
  {
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_27_0(v18);
    MEMORY[0x22AAAE070](v25, v7);
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v37 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_2();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_25_1();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v38 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_2();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_25_1();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if (v9)
  {
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_27_0(v19);
    MEMORY[0x22AAAE070](v26, v9);
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v39 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_1();
    _StringGuts.grow(_:)(29);
    OUTLINED_FUNCTION_28_0();
    MEMORY[0x22AAAE070](0xD00000000000001ALL, 0x8000000227FB5240);
    Double.write<A>(to:)();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v40 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_1();
    _StringGuts.grow(_:)(38);
    OUTLINED_FUNCTION_28_0();
    MEMORY[0x22AAAE070](0xD000000000000023, 0x8000000227FB5210);
    Double.write<A>(to:)();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v41 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_1();
    _StringGuts.grow(_:)(39);
    OUTLINED_FUNCTION_28_0();
    MEMORY[0x22AAAE070](0xD000000000000024, 0x8000000227FB51E0);
    Double.write<A>(to:)();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v42 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_2();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_25_1();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if (v43)
  {
    MEMORY[0x22AAAE070](v27, v43);
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v44 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_2();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_25_1();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v45 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_1();
    _StringGuts.grow(_:)(51);
    OUTLINED_FUNCTION_28_0();
    MEMORY[0x22AAAE070](0xD000000000000030, 0x8000000227FB5160);
    Double.write<A>(to:)();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v46 & 1) == 0)
  {
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_25_1();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v47 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_2();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_25_1();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  return 0xD000000000000021;
}

uint64_t AvailabilityDetailedStatusEvent.upload(coreAnalyticsUploader:)(void *a1)
{
  memcpy(__dst, v1, 0x189uLL);
  type metadata accessor for CAEncoder();
  v9[3] = &type metadata for AvailabilityDetailedStatusEvent;
  v9[4] = lazy protocol witness table accessor for type AvailabilityDetailedStatusEvent and conformance AvailabilityDetailedStatusEvent();
  v9[0] = swift_allocObject();
  memcpy((v9[0] + 16), v1, 0x189uLL);
  outlined init with copy of AvailabilityDetailedStatusEvent(__dst, v8);
  v4 = static CAEncoder.toCADictionary(_:)(v9);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v9);
  if (!v2)
  {
    v6 = a1[3];
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v6);
    (*(v7 + 8))(0xD000000000000036, 0x8000000227FB4EA0, v4, v6, v7);
  }

  return result;
}

uint64_t AvailabilityDetailedStatusEvent.uploadToSELF(using:)(uint64_t a1)
{
  *(v2 + 416) = a1;
  memcpy((v2 + 16), v1, 0x189uLL);

  return MEMORY[0x2822009F8](AvailabilityDetailedStatusEvent.uploadToSELF(using:), 0, 0);
}

uint64_t AvailabilityDetailedStatusEvent.uploadToSELF(using:)()
{
  v1 = *(v0 + 416);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 424) = v4;
  *v4 = v0;
  v4[1] = AvailabilityDetailedStatusEvent.uploadToSELF(using:);

  return v6(v0 + 16, v2, v3);
}

{
  v2 = *v1;
  *(v2 + 432) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](AvailabilityDetailedStatusEvent.uploadToSELF(using:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  return (*(v0 + 8))();
}

uint64_t AvailabilityDetailedStatusEvent.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x8000000227FB5480 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000019 && 0x8000000227FB54A0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x8000000227FB54C0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001FLL && 0x8000000227FB54E0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001ELL && 0x8000000227FB5500 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000020 && 0x8000000227FB5520 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000028 && 0x8000000227FB5550 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000002ALL && 0x8000000227FB5580 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x756F43726F727265 && a2 == 0xEA0000000000746ELL;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001ALL && 0x8000000227FB55B0 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000019 && 0x8000000227FB55D0 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000010 && 0x8000000227FB55F0 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000012 && 0x8000000227FB5610 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000010 && 0x8000000227FB5630 == a2;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD00000000000001ALL && 0x8000000227FB5650 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD00000000000001CLL && 0x8000000227FB5670 == a2;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000015 && 0x8000000227FB4FC0 == a2;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD00000000000001ELL && 0x8000000227FB5690 == a2;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD00000000000001FLL && 0x8000000227FB56B0 == a2;
                                          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD00000000000001CLL && 0x8000000227FB56D0 == a2;
                                            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x555350746E756F63 && a2 == 0xEF73746573734153;
                                              if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000013 && 0x8000000227FB56F0 == a2;
                                                if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0x64616F6C6E776F64 && a2 == 0xED00006574617453;
                                                  if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x7461745353555350 && a2 == 0xE900000000000065;
                                                    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000011 && 0x8000000227FB5000 == a2;
                                                      if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
                                                        if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x4965736143657375 && a2 == 0xE900000000000044;
                                                          if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 1701080941 && a2 == 0xE400000000000000;
                                                            if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD00000000000001CLL && 0x8000000227FB5710 == a2;
                                                              if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD00000000000001ALL && 0x8000000227FB5730 == a2;
                                                                if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else if (a1 == 0xD00000000000002BLL && 0x8000000227FB5750 == a2)
                                                                {

                                                                  return 32;
                                                                }

                                                                else
                                                                {
                                                                  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                  if (v38)
                                                                  {
                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    return 33;
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t AvailabilityDetailedStatusEvent.CodingKeys.stringValue.getter(char a1)
{
  result = 0x656C61636F6CLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x737574617473;
      break;
    case 3:
    case 12:
      result = 0xD000000000000019;
      break;
    case 5:
    case 20:
      result = 0xD00000000000001FLL;
      break;
    case 6:
    case 19:
      result = 0xD00000000000001ELL;
      break;
    case 7:
      result = 0xD000000000000020;
      break;
    case 8:
      result = 0xD000000000000028;
      break;
    case 9:
      result = 0xD00000000000002ALL;
      break;
    case 10:
      result = 0x756F43726F727265;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 13:
    case 15:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0xD00000000000001ALL;
      break;
    case 17:
    case 21:
    case 30:
      result = 0xD00000000000001CLL;
      break;
    case 18:
      result = 0xD000000000000015;
      break;
    case 22:
      result = 0x555350746E756F63;
      break;
    case 23:
      result = 0xD000000000000013;
      break;
    case 24:
      result = 0x64616F6C6E776F64;
      break;
    case 25:
      result = 0x7461745353555350;
      break;
    case 26:
      result = 0xD000000000000011;
      break;
    case 27:
      result = 0x6D617473656D6974;
      break;
    case 28:
      result = 0x4965736143657375;
      break;
    case 29:
      result = 1701080941;
      break;
    case 31:
      result = 0xD00000000000001ALL;
      break;
    case 32:
      result = 0xD00000000000002BLL;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AvailabilityDetailedStatusEvent.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AvailabilityDetailedStatusEvent.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AvailabilityDetailedStatusEvent.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AvailabilityDetailedStatusEvent.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AvailabilityDetailedStatusEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AvailabilityDetailedStatusEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AvailabilityDetailedStatusEvent.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing31AvailabilityDetailedStatusEventV10CodingKeys33_F72A3482A09DA23F578681F03E6B3DBBLLOGMd, &_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing31AvailabilityDetailedStatusEventV10CodingKeys33_F72A3482A09DA23F578681F03E6B3DBBLLOGMR);
  OUTLINED_FUNCTION_26_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v7 = *v1;
  v79[2] = v1[1];
  v80 = v7;
  v8 = v1[2];
  v79[0] = v1[3];
  v79[1] = v8;
  v9 = v1[4];
  v83 = *(v1 + 40);
  v78[0] = *(v1 + 11);
  v78[1] = v9;
  v77 = *(v1 + 48);
  v76 = *(v1 + 13);
  v75 = *(v1 + 56);
  v10 = v1[9];
  v73 = v1[8];
  v74 = v10;
  v72 = *(v1 + 20);
  v71 = *(v1 + 84);
  v11 = v1[12];
  v70[0] = v1[11];
  v70[1] = v11;
  v69 = *(v1 + 26);
  v68 = *(v1 + 108);
  v12 = v1[15];
  v67[0] = v1[14];
  v67[1] = v12;
  v66 = *(v1 + 32);
  v65 = *(v1 + 132);
  v13 = v1[18];
  v63 = v1[17];
  v64 = v13;
  v14 = v1[20];
  v61 = v1[19];
  v62 = v14;
  v60 = *(v1 + 42);
  v59 = *(v1 + 172);
  v15 = v1[23];
  v57 = v1[22];
  v58 = v15;
  v56 = *(v1 + 48);
  v55 = *(v1 + 196);
  v54 = *(v1 + 50);
  v53 = *(v1 + 204);
  v16 = v1[27];
  v26[0] = v1[26];
  v26[1] = v16;
  v26[2] = v1[28];
  v27 = *(v1 + 232);
  v28 = v1[30];
  v29 = *(v1 + 248);
  v30 = v1[32];
  v31 = *(v1 + 264);
  v32 = v1[34];
  v33 = *(v1 + 280);
  v35 = *(v1 + 71);
  v34 = *(v1 + 288);
  v37 = *(v1 + 73);
  v36 = *(v1 + 296);
  v39 = *(v1 + 75);
  v38 = *(v1 + 304);
  v41 = *(v1 + 77);
  v40 = *(v1 + 312);
  v42 = v1[40];
  v43 = *(v1 + 328);
  v45 = *(v1 + 83);
  v44 = *(v1 + 336);
  v17 = v1[44];
  v46 = v1[43];
  v47 = v17;
  v49 = *(v1 + 90);
  v48 = *(v1 + 364);
  v51 = *(v1 + 92);
  v50 = *(v1 + 372);
  v52 = *(v1 + 94);
  v18 = *(v1 + 380);
  v19 = *(v1 + 392);
  v20 = a1[3];
  v21 = a1;
  v23 = v26 - v22;
  __swift_project_boxed_opaque_existential_1(v21, v20);
  lazy protocol witness table accessor for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v85 = 0;
  v24 = v81;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v24)
  {
    LODWORD(v81) = v19;
    OUTLINED_FUNCTION_6_2(1);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(2);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v85 = 3;
    OUTLINED_FUNCTION_10_2(v77);
    OUTLINED_FUNCTION_14_2();
    v85 = 4;
    OUTLINED_FUNCTION_10_2(v75);
    OUTLINED_FUNCTION_14_2();
    OUTLINED_FUNCTION_6_2(5);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v85 = 6;
    OUTLINED_FUNCTION_10_2(v71);
    OUTLINED_FUNCTION_14_2();
    OUTLINED_FUNCTION_6_2(7);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v85 = 8;
    OUTLINED_FUNCTION_10_2(v68);
    OUTLINED_FUNCTION_14_2();
    OUTLINED_FUNCTION_6_2(9);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v85 = 10;
    OUTLINED_FUNCTION_10_3(&v87 + 4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(11);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(12);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v85 = 13;
    OUTLINED_FUNCTION_10_3(&v86 + 4);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_6_2(14);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v85 = 15;
    OUTLINED_FUNCTION_10_3(v82);
    OUTLINED_FUNCTION_4_4();
    v85 = 16;
    OUTLINED_FUNCTION_10_3(&v80 + 4);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_6_2(17);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(18);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(19);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(20);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(21);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v85 = 22;
    OUTLINED_FUNCTION_10_3(v67 + 4);
    OUTLINED_FUNCTION_4_4();
    v85 = 23;
    OUTLINED_FUNCTION_10_3(&v68);
    OUTLINED_FUNCTION_4_4();
    v85 = 24;
    OUTLINED_FUNCTION_10_3(v70 + 4);
    OUTLINED_FUNCTION_4_4();
    v85 = 25;
    OUTLINED_FUNCTION_10_3(&v71);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_6_2(26);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v85 = 27;
    OUTLINED_FUNCTION_10_3(&v74 + 4);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_6_2(28);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v85 = 29;
    OUTLINED_FUNCTION_10_3(v78 + 4);
    OUTLINED_FUNCTION_4_4();
    v85 = 30;
    OUTLINED_FUNCTION_10_3(v79 + 4);
    OUTLINED_FUNCTION_4_4();
    v85 = 31;
    v84 = v18;
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_6_2(32);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v23, v2);
}

unint64_t lazy protocol witness table accessor for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvailabilityDetailedStatusEvent.CodingKeys, &unk_283B54D90, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvailabilityDetailedStatusEvent.CodingKeys, &unk_283B54D90, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys)
  {
    result = swift_getWitnessTable("Ո(Zd}", &unk_283B54D90, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvailabilityDetailedStatusEvent.CodingKeys, &unk_283B54D90, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys);
  }

  return result;
}

__n128 AvailabilityDetailedStatusEvent.init(AppleIntelligenceLocale:locale:status:currentMCSubscriptionHash:currentSubscriptionHash:lastMADownloadAttemptErrorAsset:lastMADownloadAttemptErrorCode:lastMADownloadAttemptErrorDomain:lastMADownloadAttemptErrorUnderlyingCode:lastMADownloadAttemptErrorUnderlyingDomain:errorCount:failingSubsystemOperations:sampledSubsystemOperation:sampledErrorCode:sampledErrorDomain:sampledErrorHash:sampledErrorUnderlyingCode:sampledErrorUnderlyingDomain:timeSinceLastAIToggle:timeSinceLastMADownloadAttempt:timeSinceLastSubscriptionChange:timeSinceLastMADownloadError:countPSUSAssets:countRequiredAssets:downloadState:PSUSState:timeSinceLastBoot:timestamp:useCaseID:mode:invocationsWhileNotAvailable:subscriptionDownloadStatus:timeSinceSubscriptionDownloadStatusComplete:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, int a16, char a17, uint64_t a18, uint64_t a19, int a20, char a21, __int128 a22, uint64_t a23, uint64_t a24, int a25, char a26, uint64_t a27, uint64_t a28, int a29, char a30, int a31, char a32, __n128 a33, uint64_t a34, char a35, uint64_t a36, char a37, uint64_t a38, char a39, uint64_t a40, char a41, int a42, int a43, char a44, int a45, char a46, int a47, char a48, int a49, char a50, uint64_t a51, char a52, int a53, int a54, char a55, uint64_t a56, uint64_t a57, int a58, char a59, int a60, char a61, int a62, char a63)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 44) = a7;
  *(a9 + 48) = BYTE4(a7) & 1;
  *(a9 + 52) = a8;
  *(a9 + 56) = BYTE4(a8) & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 84) = a13 & 1;
  *(a9 + 88) = a14;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16;
  *(a9 + 108) = a17 & 1;
  *(a9 + 112) = a18;
  *(a9 + 120) = a19;
  *(a9 + 128) = a20;
  *(a9 + 132) = a21 & 1;
  *(a9 + 152) = a23;
  *(a9 + 160) = a24;
  *(a9 + 168) = a25;
  *(a9 + 172) = a26 & 1;
  *(a9 + 176) = a27;
  *(a9 + 184) = a28;
  *(a9 + 192) = a29;
  *(a9 + 196) = a30 & 1;
  *(a9 + 200) = a31;
  *(a9 + 204) = a32 & 1;
  *(a9 + 224) = a34;
  *(a9 + 232) = a35 & 1;
  *(a9 + 240) = a36;
  *(a9 + 248) = a37 & 1;
  *(a9 + 256) = a38;
  *(a9 + 264) = a39 & 1;
  *(a9 + 272) = a40;
  *(a9 + 280) = a41 & 1;
  *(a9 + 284) = a43;
  *(a9 + 288) = a44 & 1;
  *(a9 + 292) = a45;
  *(a9 + 296) = a46 & 1;
  *(a9 + 300) = a47;
  *(a9 + 304) = a48 & 1;
  *(a9 + 308) = a49;
  *(a9 + 312) = a50 & 1;
  *(a9 + 320) = a51;
  *(a9 + 328) = a52 & 1;
  *(a9 + 332) = a54;
  *(a9 + 336) = a55 & 1;
  *(a9 + 344) = a56;
  *(a9 + 352) = a57;
  *(a9 + 360) = a58;
  *(a9 + 364) = a59 & 1;
  *(a9 + 368) = a60;
  *(a9 + 372) = a61 & 1;
  *(a9 + 376) = a62;
  *(a9 + 380) = a63 & 1;
  *(a9 + 384) = a64;
  *(a9 + 392) = a65 & 1;
  result = a33;
  *(a9 + 136) = a22;
  *(a9 + 208) = a33;
  return result;
}

uint64_t AvailabilityDetailedStatusEvent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing31AvailabilityDetailedStatusEventV10CodingKeys33_F72A3482A09DA23F578681F03E6B3DBBLLOGMd, &_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing31AvailabilityDetailedStatusEventV10CodingKeys33_F72A3482A09DA23F578681F03E6B3DBBLLOGMR);
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v6);
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  lazy protocol witness table accessor for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v8 = a2;
    OUTLINED_FUNCTION_3_5();
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v97 = v11;
    OUTLINED_FUNCTION_2_5(1);
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v96 = v13;
    OUTLINED_FUNCTION_2_5(2);
    v101 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v264 = v14 & 1;
    OUTLINED_FUNCTION_2_5(3);
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v261 = BYTE4(v15) & 1;
    v99 = v15;
    OUTLINED_FUNCTION_3_5();
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v258 = BYTE4(v16) & 1;
    LOBYTE(v103[0]) = 5;
    v88 = v16;
    OUTLINED_FUNCTION_3_5();
    v87 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v95 = v17;
    OUTLINED_FUNCTION_2_5(6);
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v86 = v18;
    v256 = BYTE4(v18) & 1;
    OUTLINED_FUNCTION_2_5(7);
    v85 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v94 = v19;
    OUTLINED_FUNCTION_2_5(8);
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v84 = v20;
    v253 = BYTE4(v20) & 1;
    OUTLINED_FUNCTION_0_5(9);
    v83 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v93 = v21;
    OUTLINED_FUNCTION_0_5(10);
    v82 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v250 = BYTE4(v82) & 1;
    OUTLINED_FUNCTION_0_5(11);
    v81 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v92 = v22;
    OUTLINED_FUNCTION_0_5(12);
    v80 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v91 = v23;
    OUTLINED_FUNCTION_0_5(13);
    v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v247 = BYTE4(v79) & 1;
    OUTLINED_FUNCTION_0_5(14);
    v78 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v90 = v24;
    OUTLINED_FUNCTION_0_5(15);
    v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v244 = BYTE4(v77) & 1;
    OUTLINED_FUNCTION_0_5(16);
    v76 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v241 = BYTE4(v76) & 1;
    OUTLINED_FUNCTION_0_5(17);
    v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v89 = v25;
    OUTLINED_FUNCTION_0_5(18);
    v74 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v238 = v26 & 1;
    OUTLINED_FUNCTION_0_5(19);
    v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v236 = v27 & 1;
    OUTLINED_FUNCTION_0_5(20);
    v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v234 = v28 & 1;
    OUTLINED_FUNCTION_0_5(21);
    v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v232 = v29 & 1;
    OUTLINED_FUNCTION_0_5(22);
    v70 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v229 = BYTE4(v70) & 1;
    OUTLINED_FUNCTION_0_5(23);
    v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v226 = BYTE4(v69) & 1;
    OUTLINED_FUNCTION_0_5(24);
    v68 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v223 = BYTE4(v68) & 1;
    OUTLINED_FUNCTION_0_5(25);
    v67 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v220 = BYTE4(v67) & 1;
    OUTLINED_FUNCTION_0_5(26);
    v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v218 = v30 & 1;
    OUTLINED_FUNCTION_0_5(27);
    v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v215 = BYTE4(v65) & 1;
    OUTLINED_FUNCTION_0_5(28);
    v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32 = v31;
    OUTLINED_FUNCTION_0_5(29);
    v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v213 = BYTE4(v63) & 1;
    OUTLINED_FUNCTION_0_5(30);
    v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v210 = BYTE4(v62) & 1;
    OUTLINED_FUNCTION_0_5(31);
    v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v207 = BYTE4(v61) & 1;
    v203 = 32;
    v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v58 = v33;
    v265 = 0;
    v34 = OUTLINED_FUNCTION_11_3();
    v35(v34);
    v204 = v58 & 1;
    v102[0] = v10;
    v102[1] = v97;
    v102[2] = v12;
    v102[3] = v96;
    v102[4] = v101;
    v45 = v264;
    LOBYTE(v102[5]) = v264;
    *(&v102[5] + 1) = v262;
    BYTE3(v102[5]) = v263;
    HIDWORD(v102[5]) = v99;
    v44 = v261;
    LOBYTE(v102[6]) = v261;
    *(&v102[6] + 1) = v259;
    BYTE3(v102[6]) = v260;
    HIDWORD(v102[6]) = v88;
    v43 = v258;
    LOBYTE(v102[7]) = v258;
    *(&v102[7] + 1) = *v257;
    HIDWORD(v102[7]) = *&v257[3];
    v102[8] = v87;
    v102[9] = v95;
    LODWORD(v102[10]) = v86;
    v42 = v256;
    BYTE4(v102[10]) = v256;
    *(&v102[10] + 5) = v254;
    HIBYTE(v102[10]) = v255;
    v102[11] = v85;
    v102[12] = v94;
    LODWORD(v102[13]) = v84;
    v41 = v253;
    BYTE4(v102[13]) = v253;
    HIBYTE(v102[13]) = v252;
    *(&v102[13] + 5) = v251;
    v102[14] = v83;
    v102[15] = v93;
    LODWORD(v102[16]) = v82;
    v40 = v250;
    BYTE4(v102[16]) = v250;
    HIBYTE(v102[16]) = v249;
    *(&v102[16] + 5) = v248;
    v102[17] = v81;
    v102[18] = v92;
    v102[19] = v80;
    v102[20] = v91;
    LODWORD(v102[21]) = v79;
    v39 = v247;
    BYTE4(v102[21]) = v247;
    HIBYTE(v102[21]) = v246;
    *(&v102[21] + 5) = v245;
    v102[22] = v78;
    v102[23] = v90;
    LODWORD(v102[24]) = v77;
    v38 = v244;
    BYTE4(v102[24]) = v244;
    HIBYTE(v102[24]) = v243;
    *(&v102[24] + 5) = v242;
    LODWORD(v102[25]) = v76;
    v37 = v241;
    BYTE4(v102[25]) = v241;
    HIBYTE(v102[25]) = v240;
    *(&v102[25] + 5) = v239;
    v102[26] = v75;
    v102[27] = v89;
    v102[28] = v74;
    v36 = v238;
    LOBYTE(v102[29]) = v238;
    HIDWORD(v102[29]) = *&v237[3];
    *(&v102[29] + 1) = *v237;
    v102[30] = v73;
    v59 = v236;
    LOBYTE(v102[31]) = v236;
    HIDWORD(v102[31]) = *&v235[3];
    *(&v102[31] + 1) = *v235;
    v102[32] = v72;
    v57 = v234;
    LOBYTE(v102[33]) = v234;
    *(&v102[33] + 1) = *v233;
    HIDWORD(v102[33]) = *&v233[3];
    v102[34] = v71;
    v56 = v232;
    LOBYTE(v102[35]) = v232;
    *(&v102[35] + 1) = v230;
    BYTE3(v102[35]) = v231;
    HIDWORD(v102[35]) = v70;
    v55 = v229;
    LOBYTE(v102[36]) = v229;
    *(&v102[36] + 1) = v227;
    BYTE3(v102[36]) = v228;
    HIDWORD(v102[36]) = v69;
    v54 = v226;
    LOBYTE(v102[37]) = v226;
    *(&v102[37] + 1) = v224;
    BYTE3(v102[37]) = v225;
    HIDWORD(v102[37]) = v68;
    v53 = v223;
    LOBYTE(v102[38]) = v223;
    *(&v102[38] + 1) = v221;
    BYTE3(v102[38]) = v222;
    HIDWORD(v102[38]) = v67;
    v52 = v220;
    LOBYTE(v102[39]) = v220;
    *(&v102[39] + 1) = *v219;
    HIDWORD(v102[39]) = *&v219[3];
    v102[40] = v66;
    v51 = v218;
    LOBYTE(v102[41]) = v218;
    *(&v102[41] + 1) = v216;
    BYTE3(v102[41]) = v217;
    HIDWORD(v102[41]) = v65;
    v50 = v215;
    LOBYTE(v102[42]) = v215;
    *(&v102[42] + 1) = *v214;
    HIDWORD(v102[42]) = *&v214[3];
    v102[43] = v64;
    v102[44] = v32;
    LODWORD(v102[45]) = v63;
    v49 = v213;
    BYTE4(v102[45]) = v213;
    *(&v102[45] + 5) = v211;
    HIBYTE(v102[45]) = v212;
    LODWORD(v102[46]) = v62;
    *(&v102[46] + 5) = v208;
    v48 = v210;
    BYTE4(v102[46]) = v210;
    HIBYTE(v102[46]) = v209;
    LODWORD(v102[47]) = v61;
    *(&v102[47] + 5) = v205;
    v46 = v207;
    BYTE4(v102[47]) = v207;
    HIBYTE(v102[47]) = v206;
    v102[48] = v60;
    v47 = v204;
    LOBYTE(v102[49]) = v204;
    memcpy(v8, v102, 0x189uLL);
    outlined init with copy of AvailabilityDetailedStatusEvent(v102, v103);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v103[0] = v10;
    v103[1] = v97;
    v103[2] = v12;
    v103[3] = v96;
    v103[4] = v101;
    v104 = v45;
    v107 = v99;
    v108 = v44;
    v111 = v88;
    v112 = v43;
    v114 = v87;
    v115 = v95;
    v116 = v86;
    v117 = v42;
    v120 = v85;
    v121 = v94;
    v122 = v84;
    v123 = v41;
    v126 = v83;
    v127 = v93;
    v128 = v82;
    v129 = v40;
    v132 = v81;
    v133 = v92;
    v134 = v80;
    v135 = v91;
    v136 = v79;
    v137 = v39;
    v140 = v78;
    v141 = v90;
    v142 = v77;
    v143 = v38;
    v146 = v76;
    v147 = v37;
    v150 = v75;
    v151 = v89;
    v152 = v74;
    v153 = v36;
    v105 = v262;
    v106 = v263;
    v109 = v259;
    v110 = v260;
    *&v113[3] = *&v257[3];
    *v113 = *v257;
    v118 = v254;
    v119 = v255;
    v124 = v251;
    v125 = v252;
    v131 = v249;
    v130 = v248;
    v139 = v246;
    v138 = v245;
    v145 = v243;
    v144 = v242;
    v149 = v240;
    v148 = v239;
    *&v154[3] = *&v237[3];
    *v154 = *v237;
    v155 = v73;
    v156 = v59;
    *&v157[3] = *&v235[3];
    *v157 = *v235;
    v158 = v72;
    v159 = v57;
    *v160 = *v233;
    *&v160[3] = *&v233[3];
    v161 = v71;
    v162 = v56;
    v163 = v230;
    v164 = v231;
    v165 = v70;
    v166 = v55;
    v167 = v227;
    v168 = v228;
    v169 = v69;
    v170 = v54;
    v171 = v224;
    v172 = v225;
    v173 = v68;
    v174 = v53;
    v175 = v221;
    v176 = v222;
    v177 = v67;
    v178 = v52;
    *v179 = *v219;
    *&v179[3] = *&v219[3];
    v180 = v66;
    v181 = v51;
    v182 = v216;
    v183 = v217;
    v184 = v65;
    v185 = v50;
    *v186 = *v214;
    *&v186[3] = *&v214[3];
    v187 = v64;
    v188 = v32;
    v189 = v63;
    v190 = v49;
    v191 = v211;
    v192 = v212;
    v193 = v62;
    v194 = v48;
    v195 = v208;
    v196 = v209;
    v197 = v61;
    v198 = v46;
    v199 = v205;
    v200 = v206;
    v201 = v60;
    v202 = v47;
    return outlined destroy of AvailabilityDetailedStatusEvent(v103);
  }

  v265 = v2;
  OUTLINED_FUNCTION_8_4();
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  if (!v7)
  {
    if (!a2)
    {
      goto LABEL_11;
    }

LABEL_5:

    if (v3)
    {
      goto LABEL_12;
    }

LABEL_6:
    if (!v98)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (a2)
  {
    goto LABEL_5;
  }

LABEL_11:
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_12:

  if ((v98 & 1) == 0)
  {
LABEL_13:
    if (v100)
    {
    }

    return result;
  }

LABEL_7:

  if (v100)
  {
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AvailabilityDetailedStatusEvent(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AvailabilityDetailedStatusEvent and conformance AvailabilityDetailedStatusEvent();
  result = lazy protocol witness table accessor for type AvailabilityDetailedStatusEvent and conformance AvailabilityDetailedStatusEvent();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AvailabilityDetailedStatusEvent(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 393))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AvailabilityDetailedStatusEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 392) = 0;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 393) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 393) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AvailabilityDetailedStatusEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE0)
  {
    if (a2 + 32 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 32) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 33;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v5 = v6 - 33;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AvailabilityDetailedStatusEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDF)
  {
    v6 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
          *result = a2 + 32;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

void OUTLINED_FUNCTION_12_3()
{

  JUMPOUT(0x22AAAE070);
}

uint64_t OUTLINED_FUNCTION_14_2()
{

  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

void OUTLINED_FUNCTION_21_0()
{

  JUMPOUT(0x22AAAE070);
}

void OUTLINED_FUNCTION_22_1()
{

  JUMPOUT(0x22AAAE070);
}

void OUTLINED_FUNCTION_23_1()
{

  JUMPOUT(0x22AAAE070);
}

void OUTLINED_FUNCTION_25_1()
{

  JUMPOUT(0x22AAAE070);
}

void OUTLINED_FUNCTION_28_0()
{
  v1 = *(v0 - 144);
  *(v0 - 152) = *(v0 - 152);
  *(v0 - 144) = v1;
}

__n128 InvocationEvent.init(primaryUseCaseID:allUseCaseIDs:assets:fullErrorHash:sampledSubsystem:sampledSubsystemSubrequest:sampledSubsystemOverhead:sampledSubsystemSubrequestTime:sampledSubsystemTotalTime:totalGMTime:totalTime:totalUnderlyingTime:topResultErrorDomain:topResultErrorCode:bottomResultErrorDomain:bottomResultErrorCode:interResultErrorDomain:interResultErrorCode:invocationCompleted:sampledSubsystemCallCount:sampledSubsystemErrorDomain:sampledSubsystemErrorCode:sampledSubsystemErrorHash:sampledSubsystemSampleUnderlyingDomain:sampledSubsystemSampleUnderlyingCode:startTimestamp:subrequestsForSampledSubsystem:subsystemsInvolved:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, int a26, char a27, uint64_t a28, uint64_t a29, int a30, char a31, uint64_t a32, uint64_t a33, int a34, char a35, __int16 a36, char a37, int a38, int a39, char a40, uint64_t a41, uint64_t a42, int a43, char a44, int a45, char a46, uint64_t a47, uint64_t a48, int a49, char a50, int a51, char a52, __n128 a53, uint64_t a54, uint64_t a55)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 52) = BYTE4(a7) & 1;
  *(a9 + 56) = a8;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  *(a9 + 96) = a13 & 1;
  *(a9 + 104) = a14;
  *(a9 + 112) = a15 & 1;
  *(a9 + 120) = a16;
  *(a9 + 128) = a17 & 1;
  *(a9 + 136) = a18;
  *(a9 + 144) = a19 & 1;
  *(a9 + 152) = a20;
  *(a9 + 160) = a21 & 1;
  *(a9 + 168) = a22;
  *(a9 + 176) = a23 & 1;
  *(a9 + 184) = a24;
  *(a9 + 192) = a25;
  *(a9 + 200) = a26;
  *(a9 + 204) = a27 & 1;
  *(a9 + 208) = a28;
  *(a9 + 216) = a29;
  *(a9 + 224) = a30;
  *(a9 + 228) = a31 & 1;
  *(a9 + 232) = a32;
  *(a9 + 240) = a33;
  *(a9 + 248) = a34;
  *(a9 + 252) = a35 & 1;
  *(a9 + 253) = a37;
  *(a9 + 256) = a39;
  *(a9 + 260) = a40 & 1;
  *(a9 + 264) = a41;
  *(a9 + 272) = a42;
  *(a9 + 280) = a43;
  *(a9 + 284) = a44 & 1;
  *(a9 + 288) = a45;
  *(a9 + 292) = a46 & 1;
  *(a9 + 296) = a47;
  *(a9 + 304) = a48;
  *(a9 + 312) = a49;
  *(a9 + 316) = a50 & 1;
  *(a9 + 320) = a51;
  *(a9 + 324) = a52 & 1;
  *(a9 + 344) = a54;
  *(a9 + 352) = a55;
  result = a53;
  *(a9 + 64) = a10;
  *(a9 + 328) = a53;
  return result;
}

uint64_t InvocationEvent.upload(coreAnalyticsUploader:)(void *a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  type metadata accessor for CAEncoder();
  v9[3] = &type metadata for InvocationEvent;
  v9[4] = lazy protocol witness table accessor for type InvocationEvent and conformance InvocationEvent();
  v9[0] = swift_allocObject();
  memcpy((v9[0] + 16), v1, 0x168uLL);
  outlined init with copy of InvocationEvent(__dst, v8);
  v4 = static CAEncoder.toCADictionary(_:)(v9);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v9);
  if (!v2)
  {
    v6 = a1[3];
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v6);
    (*(v7 + 8))(0xD00000000000002FLL, 0x8000000227FB4EE0, v4, v6, v7);
  }

  return result;
}

AppleIntelligenceReportingProcessing::InvocationEvent::CodingKeys_optional __swiftcall InvocationEvent.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v1 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v1;
  }
}

uint64_t InvocationEvent.CodingKeys.rawValue.getter(char a1)
{
  result = 0x61436573556C6C41;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x737465737341;
      break;
    case 3:
      result = 0x6F7272456C6C7546;
      break;
    case 5:
      OUTLINED_FUNCTION_17_2();
      result = v11 + 1;
      break;
    case 6:
      OUTLINED_FUNCTION_17_2();
      result = v13 - 1;
      break;
    case 7:
    case 26:
      OUTLINED_FUNCTION_17_2();
      result = v16 + 5;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0x544D476C61746F54;
      break;
    case 10:
      v6 = 0x546C61746F54;
      goto LABEL_19;
    case 11:
    case 18:
      OUTLINED_FUNCTION_17_2();
      result = v14 - 6;
      break;
    case 12:
    case 17:
      OUTLINED_FUNCTION_17_2();
      result = v9 - 5;
      break;
    case 13:
    case 27:
      OUTLINED_FUNCTION_17_2();
      result = v12 - 7;
      break;
    case 14:
      OUTLINED_FUNCTION_17_2();
      result = v4 - 2;
      break;
    case 15:
      OUTLINED_FUNCTION_17_2();
      result = v8 - 4;
      break;
    case 16:
      OUTLINED_FUNCTION_17_2();
      result = v3 - 3;
      break;
    case 19:
      result = 0xD000000000000019;
      break;
    case 20:
      OUTLINED_FUNCTION_17_2();
      result = v10 | 2;
      break;
    case 21:
      result = 0xD000000000000019;
      break;
    case 22:
      result = 0xD000000000000019;
      break;
    case 23:
      OUTLINED_FUNCTION_17_2();
      result = v15 + 13;
      break;
    case 24:
      OUTLINED_FUNCTION_17_2();
      result = v7 + 11;
      break;
    case 25:
      v6 = 0x547472617473;
LABEL_19:
      result = v6 & 0xFFFFFFFFFFFFLL | 0x6D69000000000000;
      break;
    default:
      OUTLINED_FUNCTION_17_2();
      result = v5 - 9;
      break;
  }

  return result;
}

AppleIntelligenceReportingProcessing::InvocationEvent::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance InvocationEvent.CodingKeys@<W0>(Swift::String *a1@<X0>, AppleIntelligenceReportingProcessing::InvocationEvent::CodingKeys_optional *a2@<X8>)
{
  result.value = InvocationEvent.CodingKeys.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance InvocationEvent.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = InvocationEvent.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

AppleIntelligenceReportingProcessing::InvocationEvent::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance InvocationEvent.CodingKeys@<W0>(uint64_t a1@<X0>, AppleIntelligenceReportingProcessing::InvocationEvent::CodingKeys_optional *a2@<X8>)
{
  result.value = InvocationEvent.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InvocationEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InvocationEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InvocationEvent.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing15InvocationEventV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing15InvocationEventV10CodingKeysOGMR);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v29 - v6;
  v8 = *v1;
  v71[2] = v1[1];
  v72 = v8;
  v9 = v1[2];
  v71[0] = v1[3];
  v71[1] = v9;
  v10 = v1[4];
  v70[0] = v1[5];
  v70[1] = v10;
  v69[2] = *(v1 + 12);
  v74 = *(v1 + 52);
  v11 = v1[8];
  v69[0] = v1[7];
  v69[1] = v11;
  v12 = v1[10];
  v68[0] = v1[9];
  v68[1] = v12;
  v66 = v1[11];
  v67 = *(v1 + 96);
  v64 = v1[13];
  v65 = *(v1 + 112);
  v62 = v1[15];
  v63 = *(v1 + 128);
  v60 = v1[17];
  v61 = *(v1 + 144);
  v58 = v1[19];
  v59 = *(v1 + 160);
  v56 = v1[21];
  v57 = *(v1 + 176);
  v13 = v1[24];
  v54 = v1[23];
  v55 = v13;
  v53 = *(v1 + 50);
  v52 = *(v1 + 204);
  v14 = v1[27];
  v50 = v1[26];
  v51 = v14;
  v49 = *(v1 + 56);
  v48 = *(v1 + 228);
  v15 = v1[30];
  v46 = v1[29];
  v47 = v15;
  v30 = *(v1 + 62);
  v29[1] = *(v1 + 252);
  v31 = *(v1 + 253);
  v33 = *(v1 + 64);
  v32 = *(v1 + 260);
  v16 = v1[34];
  v34 = v1[33];
  v35 = v16;
  v37 = *(v1 + 70);
  v36 = *(v1 + 284);
  v39 = *(v1 + 72);
  v38 = *(v1 + 292);
  v17 = v1[38];
  v40 = v1[37];
  v41 = v17;
  v43 = *(v1 + 78);
  v42 = *(v1 + 316);
  v45 = *(v1 + 80);
  v44 = *(v1 + 324);
  v18 = v1[42];
  v69[3] = v1[41];
  v19 = v1[44];
  v20 = a1[3];
  v21 = a1;
  v23 = v22;
  __swift_project_boxed_opaque_existential_1(v21, v20);
  lazy protocol witness table accessor for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v76 = 0;
  v24 = v73;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v24)
  {
    v28 = *(v4 + 8);
    v26 = v7;
    v27 = v23;
  }

  else
  {
    v72 = v19;
    v73 = v18;
    OUTLINED_FUNCTION_6_2(1);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(2);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v76 = 3;
    v75 = v74;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(4);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(5);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(6);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(7);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(8);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(9);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(10);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(11);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(12);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v76 = 13;
    OUTLINED_FUNCTION_10_3(&v77 + 4);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_6_2(14);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v76 = 15;
    OUTLINED_FUNCTION_10_3(&v73 + 4);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_6_2(16);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v76 = 17;
    OUTLINED_FUNCTION_10_3(&v62 + 4);
    OUTLINED_FUNCTION_4_4();
    v76 = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v76 = 19;
    OUTLINED_FUNCTION_10_3(&v64 + 4);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_6_2(20);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v76 = 21;
    OUTLINED_FUNCTION_10_3(v68 + 4);
    OUTLINED_FUNCTION_4_4();
    v76 = 22;
    OUTLINED_FUNCTION_10_3(v69 + 4);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_6_2(23);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v76 = 24;
    OUTLINED_FUNCTION_10_3(v70 + 4);
    OUTLINED_FUNCTION_4_4();
    v76 = 25;
    OUTLINED_FUNCTION_10_3(v71 + 4);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_6_2(26);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(27);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v26 = OUTLINED_FUNCTION_16_2();
  }

  return v28(v26, v27);
}

unint64_t lazy protocol witness table accessor for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationEvent.CodingKeys, &type metadata for InvocationEvent.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationEvent.CodingKeys, &type metadata for InvocationEvent.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationEvent.CodingKeys, &type metadata for InvocationEvent.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvocationEvent.CodingKeys, &type metadata for InvocationEvent.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys);
  }

  return result;
}

uint64_t InvocationEvent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing15InvocationEventV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing15InvocationEventV10CodingKeysOGMR);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v8 = a1[3];
  v9 = a1[4];
  v96 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v10 = a2;
    LOBYTE(v100[0]) = 0;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v95 = v13;
    OUTLINED_FUNCTION_1_4(1);
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v94 = v15;
    OUTLINED_FUNCTION_1_4(2);
    v98 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v93 = v16;
    OUTLINED_FUNCTION_1_4(3);
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v97 = v14;
    v209 = BYTE4(v17) & 1;
    LOBYTE(v100[0]) = 4;
    v18 = v17;
    v83 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v84 = v18;
    v92 = v19;
    OUTLINED_FUNCTION_1_4(5);
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v91 = v21;
    OUTLINED_FUNCTION_1_4(6);
    v82 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v206 = v22 & 1;
    OUTLINED_FUNCTION_1_4(7);
    v81 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v204 = v23 & 1;
    OUTLINED_FUNCTION_1_4(8);
    v80 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v210 = 0;
    v202 = v24 & 1;
    OUTLINED_FUNCTION_0_6(9);
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v210 = 0;
    v26 = v25;
    v200 = v27 & 1;
    OUTLINED_FUNCTION_0_6(10);
    v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v210 = 0;
    v198 = v28 & 1;
    OUTLINED_FUNCTION_0_6(11);
    v78 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v210 = 0;
    v196 = v29 & 1;
    OUTLINED_FUNCTION_0_6(12);
    v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v90 = v30;
    v210 = 0;
    OUTLINED_FUNCTION_0_6(13);
    v76 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v210 = 0;
    v194 = BYTE4(v76) & 1;
    OUTLINED_FUNCTION_0_6(14);
    v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v89 = v31;
    v210 = 0;
    OUTLINED_FUNCTION_0_6(15);
    v74 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v210 = 0;
    v191 = BYTE4(v74) & 1;
    OUTLINED_FUNCTION_0_6(16);
    v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v88 = v32;
    v210 = 0;
    OUTLINED_FUNCTION_0_6(17);
    v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v210 = 0;
    v188 = BYTE4(v72) & 1;
    OUTLINED_FUNCTION_0_6(18);
    v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v210 = 0;
    OUTLINED_FUNCTION_0_6(19);
    v70 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v210 = 0;
    v187 = BYTE4(v70) & 1;
    OUTLINED_FUNCTION_0_6(20);
    v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v87 = v33;
    v210 = 0;
    OUTLINED_FUNCTION_0_6(21);
    v68 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v210 = 0;
    v184 = BYTE4(v68) & 1;
    OUTLINED_FUNCTION_0_6(22);
    v67 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v210 = 0;
    v181 = BYTE4(v67) & 1;
    OUTLINED_FUNCTION_0_6(23);
    v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v86 = v34;
    v210 = 0;
    OUTLINED_FUNCTION_0_6(24);
    v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v210 = 0;
    v178 = BYTE4(v65) & 1;
    OUTLINED_FUNCTION_0_6(25);
    v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v210 = 0;
    v175 = BYTE4(v64) & 1;
    OUTLINED_FUNCTION_0_6(26);
    v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v85 = v35;
    v210 = 0;
    v172 = 27;
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v61 = v37;
    v62 = v36;
    v210 = 0;
    v38 = OUTLINED_FUNCTION_8_5();
    v39(v38);
    v99[0] = v12;
    v99[1] = v95;
    v99[2] = v97;
    v99[3] = v94;
    v99[4] = v98;
    v99[5] = v93;
    LODWORD(v99[6]) = v84;
    v55 = v209;
    BYTE4(v99[6]) = v209;
    *(&v99[6] + 5) = v207;
    HIBYTE(v99[6]) = v208;
    v99[7] = v83;
    v99[8] = v92;
    v54 = v20;
    v99[9] = v20;
    v99[10] = v91;
    v99[11] = v82;
    v53 = v206;
    LOBYTE(v99[12]) = v206;
    *(&v99[12] + 1) = *v205;
    HIDWORD(v99[12]) = *&v205[3];
    v99[13] = v81;
    v51 = v204;
    LOBYTE(v99[14]) = v204;
    *(&v99[14] + 1) = *v203;
    HIDWORD(v99[14]) = *&v203[3];
    v99[15] = v80;
    v48 = v202;
    LOBYTE(v99[16]) = v202;
    *(&v99[16] + 1) = *v201;
    HIDWORD(v99[16]) = *&v201[3];
    v47 = v26;
    v99[17] = v26;
    v46 = v200;
    LOBYTE(v99[18]) = v200;
    HIDWORD(v99[18]) = *&v199[3];
    *(&v99[18] + 1) = *v199;
    v40 = v78;
    v99[19] = v79;
    v45 = v198;
    LOBYTE(v99[20]) = v198;
    HIDWORD(v99[20]) = *&v197[3];
    *(&v99[20] + 1) = *v197;
    v99[21] = v78;
    v41 = v196;
    LOBYTE(v99[22]) = v196;
    HIDWORD(v99[22]) = *&v195[3];
    *(&v99[22] + 1) = *v195;
    LODWORD(v20) = v76;
    v42 = v77;
    v99[23] = v77;
    v43 = v90;
    v99[24] = v90;
    LODWORD(v99[25]) = v76;
    v60 = v194;
    BYTE4(v99[25]) = v194;
    HIBYTE(v99[25]) = v193;
    *(&v99[25] + 5) = v192;
    v99[26] = v75;
    v99[27] = v89;
    LODWORD(v99[28]) = v74;
    v59 = v191;
    BYTE4(v99[28]) = v191;
    HIBYTE(v99[28]) = v190;
    *(&v99[28] + 5) = v189;
    v99[29] = v73;
    v99[30] = v88;
    LODWORD(v99[31]) = v72;
    v58 = v188;
    BYTE4(v99[31]) = v188;
    BYTE5(v99[31]) = v71;
    LODWORD(v99[32]) = v70;
    v57 = v187;
    BYTE4(v99[32]) = v187;
    *(&v99[32] + 5) = v185;
    HIBYTE(v99[32]) = v186;
    v99[33] = v69;
    v99[34] = v87;
    LODWORD(v99[35]) = v68;
    v56 = v184;
    BYTE4(v99[35]) = v184;
    *(&v99[35] + 5) = v182;
    HIBYTE(v99[35]) = v183;
    LODWORD(v99[36]) = v67;
    *(&v99[36] + 5) = v179;
    *(&v99[39] + 5) = v176;
    v52 = v181;
    BYTE4(v99[36]) = v181;
    HIBYTE(v99[36]) = v180;
    v99[37] = v66;
    v99[38] = v86;
    LODWORD(v99[39]) = v65;
    *(&v99[40] + 5) = v173;
    v50 = v178;
    BYTE4(v99[39]) = v178;
    HIBYTE(v99[39]) = v177;
    LODWORD(v99[40]) = v64;
    HIBYTE(v99[40]) = v174;
    v49 = v175;
    BYTE4(v99[40]) = v175;
    v99[41] = v63;
    v99[42] = v85;
    v99[43] = v62;
    v99[44] = v61;
    memcpy(v10, v99, 0x168uLL);
    outlined init with copy of InvocationEvent(v99, v100);
    __swift_destroy_boxed_opaque_existential_0Tm(v96);
    v100[0] = v12;
    v100[1] = v95;
    v100[2] = v97;
    v100[3] = v94;
    v100[4] = v98;
    v100[5] = v93;
    v101 = v84;
    v102 = v55;
    v105 = v83;
    v106 = v92;
    v107 = v54;
    v108 = v91;
    v109 = v82;
    v110 = v53;
    v112 = v81;
    v113 = v51;
    v115 = v80;
    v116 = v48;
    v118 = v47;
    v119 = v46;
    v121 = v79;
    v122 = v45;
    v124 = v40;
    v125 = v41;
    v127 = v42;
    v128 = v43;
    v129 = v20;
    v103 = v207;
    v104 = v208;
    *&v111[3] = *&v205[3];
    *v111 = *v205;
    *v114 = *v203;
    *&v114[3] = *&v203[3];
    *v117 = *v201;
    *&v117[3] = *&v201[3];
    *&v120[3] = *&v199[3];
    *v120 = *v199;
    *&v123[3] = *&v197[3];
    *v123 = *v197;
    *&v126[3] = *&v195[3];
    *v126 = *v195;
    v130 = v60;
    v132 = v193;
    v131 = v192;
    v133 = v75;
    v134 = v89;
    v135 = v74;
    v136 = v59;
    v138 = v190;
    v137 = v189;
    v139 = v73;
    v140 = v88;
    v141 = v72;
    v142 = v58;
    v143 = v71;
    v144 = v70;
    v145 = v57;
    v146 = v185;
    v147 = v186;
    v148 = v69;
    v149 = v87;
    v150 = v68;
    v151 = v56;
    v152 = v182;
    v153 = v183;
    v154 = v67;
    v155 = v52;
    v156 = v179;
    v157 = v180;
    v158 = v66;
    v159 = v86;
    v160 = v65;
    v161 = v50;
    v162 = v176;
    v163 = v177;
    v164 = v64;
    v165 = v49;
    v166 = v173;
    v167 = v174;
    v168 = v63;
    v169 = v85;
    v170 = v62;
    v171 = v61;
    return outlined destroy of InvocationEvent(v100);
  }

  v210 = v2;
  OUTLINED_FUNCTION_7_4();
  result = __swift_destroy_boxed_opaque_existential_0Tm(v96);
  if (!v9)
  {
    if (!a2)
    {
      goto LABEL_11;
    }

LABEL_5:

    if (v7)
    {
      goto LABEL_12;
    }

LABEL_6:
    if (!v97)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (a2)
  {
    goto LABEL_5;
  }

LABEL_11:
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_12:

  if ((v97 & 1) == 0)
  {
LABEL_13:
    if (v98)
    {
    }

    return result;
  }

LABEL_7:

  if (v98)
  {
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for InvocationEvent(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type InvocationEvent and conformance InvocationEvent();
  result = lazy protocol witness table accessor for type InvocationEvent and conformance InvocationEvent();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InvocationEvent(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 360))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for InvocationEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 360) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 360) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InvocationEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE5)
  {
    if (a2 + 27 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 27) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 28;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v5 = v6 - 28;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InvocationEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE4)
  {
    v6 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
          *result = a2 + 27;
        }

        break;
    }
  }

  return result;
}

void (*specialized Sequence.forEach(_:)(void (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  if (v5)
  {
    while (1)
    {
      v7 = *v6;
      v8[0] = *(v6 - 1);
      v8[1] = v7;

      v4(v8);
      if (v3)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

void AssetDeliveryProcessor.__allocating_init(biomeReader:unifiedAssetFrameworkReporter:)(void *a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  a3(v11, a2, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  OUTLINED_FUNCTION_33_0();
}

uint64_t AssetDeliveryProcessor.computeAssetDeliveryStates(dateSinceLastProcessed:useCases:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = type metadata accessor for Date();
  v3[19] = v4;
  OUTLINED_FUNCTION_44(v4);
  v3[20] = v5;
  v3[21] = OUTLINED_FUNCTION_97();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v6);
  v3[22] = OUTLINED_FUNCTION_97();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
  OUTLINED_FUNCTION_13(v7);
  v3[23] = OUTLINED_FUNCTION_97();
  v8 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  v3[24] = v8;
  OUTLINED_FUNCTION_44(v8);
  v3[25] = v9;
  v3[26] = OUTLINED_FUNCTION_97();
  v10 = type metadata accessor for AppleIntelligenceBiomeEvent(0);
  v3[27] = v10;
  OUTLINED_FUNCTION_13(v10);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing0aB10BiomeEventOSgMd, &_s36AppleIntelligenceReportingProcessing0aB10BiomeEventOSgMR);
  OUTLINED_FUNCTION_13(v11);
  v3[30] = OUTLINED_FUNCTION_97();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_13(v12);
  v3[31] = OUTLINED_FUNCTION_97();

  return MEMORY[0x2822009F8](AssetDeliveryProcessor.computeAssetDeliveryStates(dateSinceLastProcessed:useCases:), 0, 0);
}

uint64_t AssetDeliveryProcessor.computeAssetDeliveryStates(dateSinceLastProcessed:useCases:)()
{
  v1 = v0[31];
  v3 = v0[18];
  v2 = v0[19];
  type metadata accessor for AssetDeliveryState(0);
  swift_allocObject();
  v0[32] = AssetDeliveryState.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay36AppleIntelligenceReportingProcessing18AssetDeliveryStateCGMd, &_sSay36AppleIntelligenceReportingProcessing18AssetDeliveryStateCGMR);
  v4 = Dictionary.init(dictionaryLiteral:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64VSgMd, &_ss6UInt64VSgMR);
  v5 = Dictionary.init(dictionaryLiteral:)();
  v6 = v3[5];
  v7 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v6);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  (*(v7 + 16))(v1, &outlined read-only object #0 of AssetDeliveryProcessor.computeAssetDeliveryStates(dateSinceLastProcessed:useCases:), v6, v7);
  outlined destroy of NSObject?(v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = v0[10];
  v9 = __swift_project_boxed_opaque_existential_1(v0 + 7, v8);
  OUTLINED_FUNCTION_27_1();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_97();
  (*(v11 + 16))(v12, v9, v8);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v0[36] = v5;
  v0[37] = v4;
  v0[34] = v4;
  v0[35] = 0;
  v0[33] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v13 = swift_task_alloc();
  v0[38] = v13;
  *v13 = v0;
  v14 = OUTLINED_FUNCTION_6_5(v13);

  return MEMORY[0x282200310](v14);
}

{
  OUTLINED_FUNCTION_63();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18_0();
  *v5 = v4;
  *(v3 + 312) = v0;

  if (v0)
  {

    v6 = AssetDeliveryProcessor.computeAssetDeliveryStates(dateSinceLastProcessed:useCases:);
  }

  else
  {
    v6 = AssetDeliveryProcessor.computeAssetDeliveryStates(dateSinceLastProcessed:useCases:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v90 = v0;
  v1 = *(v0 + 240);
  if (__swift_getEnumTagSinglePayload(v1, 1, *(v0 + 216)) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logging.general);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 280);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v89 = v8;
      *v7 = 136315138;
      AssetDeliveryState.debugDescription.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v89);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_227F43000, v3, v4, "computeAssetDeliveryStates calculated state: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x22AAAF0A0](v8, -1, -1);
      MEMORY[0x22AAAF0A0](v7, -1, -1);
    }

    _sxRi_zRi0_zlySay36AppleIntelligenceReportingProcessing18AssetDeliveryStateCGIsegr_SgWOe(v6, 0);

    OUTLINED_FUNCTION_32_0();

    __asm { BRAA            X3, X16 }
  }

  v14 = *(v0 + 256);
  v16 = *(v0 + 224);
  v15 = *(v0 + 232);
  outlined init with take of AppleIntelligenceBiomeEvent(v1, v15, type metadata accessor for AppleIntelligenceBiomeEvent);
  (*(*v14 + 376))(v15);
  outlined init with copy of AppleIntelligenceBiomeEvent(v15, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v24 = *(v0 + 224);
    outlined destroy of AppleIntelligenceBiomeEvent(*(v0 + 232), type metadata accessor for AppleIntelligenceBiomeEvent);
    v25 = v24;
LABEL_13:
    outlined destroy of AppleIntelligenceBiomeEvent(v25, type metadata accessor for AppleIntelligenceBiomeEvent);
LABEL_17:
    v31 = *(v0 + 288);
    v32 = *(v0 + 272);
    v33 = *(v0 + 280);
    v34 = *(v0 + 264);
    goto LABEL_18;
  }

  v17 = *(v0 + 176);
  (*(*(v0 + 200) + 32))(*(v0 + 208), *(v0 + 224), *(v0 + 192));
  AppleIntelligenceReportingAvailabilityLog.event.getter();
  v18 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    v19 = *(v0 + 232);
    v20 = *(v0 + 176);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    OUTLINED_FUNCTION_1_5();
    outlined destroy of AppleIntelligenceBiomeEvent(v19, v21);
    v22 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v23 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
LABEL_16:
    outlined destroy of NSObject?(v20, v22, v23);
    goto LABEL_17;
  }

  v26 = *(v0 + 176);
  v27 = *(v0 + 184);
  AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
  (*(*(v18 - 8) + 8))(v26, v18);
  v28 = type metadata accessor for AppleIntelligenceReportingUseCase();
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
  {
    v29 = *(v0 + 232);
    v20 = *(v0 + 184);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    OUTLINED_FUNCTION_1_5();
    outlined destroy of AppleIntelligenceBiomeEvent(v29, v30);
    v22 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd;
    v23 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR;
    goto LABEL_16;
  }

  v38 = *(v0 + 184);
  v39 = AppleIntelligenceReportingUseCase.useCaseIdentifier.getter();
  v41 = v40;
  (*(*(v28 - 8) + 8))(v38, v28);
  if (!v41)
  {
    v45 = *(v0 + 232);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
LABEL_31:
    v25 = v45;
    goto LABEL_13;
  }

  v42 = *(v0 + 136);
  *(v0 + 96) = v39;
  *(v0 + 104) = v41;
  v43 = swift_task_alloc();
  *(v43 + 16) = v0 + 96;
  v44 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v43, v42);

  v45 = *(v0 + 232);
  v46 = *(v0 + 208);
  if (!v44)
  {
    v59 = *(v0 + 192);
    v60 = *(v0 + 200);

    (*(v60 + 8))(v46, v59);
    goto LABEL_31;
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 168);
  v49 = *(v0 + 152);
  statusInteger(from:)();
  v51 = v50;
  v53 = v52;
  AppleIntelligenceBiomeEvent.writeTimestamp.getter(v48);
  v54 = static Date.> infix(_:_:)();
  (*(v47 + 8))(v48, v49);
  v88 = v51;
  v87 = v53;
  if ((v54 & 1) == 0)
  {
    goto LABEL_34;
  }

  if (!*(*(v0 + 288) + 16))
  {
    goto LABEL_34;
  }

  v55 = OUTLINED_FUNCTION_31_0();
  v56 = specialized __RawDictionaryStorage.find<A>(_:)(v55);
  if ((v57 & 1) == 0)
  {
    goto LABEL_34;
  }

  v58 = *(*(v0 + 288) + 56) + 16 * v56;
  if (*(v58 + 8))
  {
    if ((v53 & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_34:
    v86 = *(v0 + 296);
    v32 = *(v0 + 272);
    v33 = *(v0 + 280);
LABEL_35:
    v61 = *(v0 + 264);
    v62 = *(v0 + 232);
    v63 = *(v0 + 200);
    v64 = *(v0 + 208);
    v65 = *(v0 + 192);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = v61;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v88, v87 & 1, v39, v41, isUniquelyReferenced_nonNull_native);

    (*(v63 + 8))(v64, v65);
    OUTLINED_FUNCTION_1_5();
    outlined destroy of AppleIntelligenceBiomeEvent(v62, v67);
    v34 = v61;
    *&v31 = v61;
    *(&v31 + 1) = v86;
LABEL_18:
    *(v0 + 288) = v31;
    *(v0 + 272) = v32;
    *(v0 + 280) = v33;
    *(v0 + 264) = v34;
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
    v35 = swift_task_alloc();
    *(v0 + 304) = v35;
    *v35 = v0;
    OUTLINED_FUNCTION_6_5(v35);
    OUTLINED_FUNCTION_32_0();

    return MEMORY[0x282200310](v36);
  }

  if ((v53 & 1) == 0 && *v58 == v51)
  {
    goto LABEL_34;
  }

LABEL_36:
  v69 = *(v0 + 272);
  v68 = *(v0 + 280);
  OUTLINED_FUNCTION_1_2();
  (*(v70 + 368))();
  _sxRi_zRi0_zlySay36AppleIntelligenceReportingProcessing18AssetDeliveryStateCGIsegr_SgWOe(v68, 0);
  v71 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 120) = v69;
  v72 = OUTLINED_FUNCTION_31_0();
  v36 = specialized __RawDictionaryStorage.find<A>(_:)(v72);
  v74 = *(v69 + 16);
  v75 = (v73 & 1) == 0;
  v76 = v74 + v75;
  if (__OFADD__(v74, v75))
  {
    __break(1u);
    return MEMORY[0x282200310](v36);
  }

  v77 = v36;
  v78 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSay36AppleIntelligenceReportingProcessing18AssetDeliveryStateCGGMd, &_ss17_NativeDictionaryVySSSay36AppleIntelligenceReportingProcessing18AssetDeliveryStateCGGMR);
  v79 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v71, v76);
  v32 = *(v0 + 120);
  if (!v79)
  {
    goto LABEL_43;
  }

  v80 = OUTLINED_FUNCTION_31_0();
  v81 = specialized __RawDictionaryStorage.find<A>(_:)(v80);
  if ((v78 & 1) == (v82 & 1))
  {
    v77 = v81;
LABEL_43:
    if ((v78 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(v77, v39, v41, MEMORY[0x277D84F90], v32);
    }

    v85 = (v32[7] + 8 * v77);
    MEMORY[0x22AAAE0D0]();
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10));
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v33 = specialized thunk for @callee_guaranteed () -> (@owned [AssetDeliveryState]);
    v86 = v32;
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_32_0();

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

{
  v1 = v0[35];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  _sxRi_zRi0_zlySay36AppleIntelligenceReportingProcessing18AssetDeliveryStateCGIsegr_SgWOe(v1, 0);

  v2 = v0[1];

  return v2();
}

uint64_t AssetDeliveryProcessor.computeTelemetryEvents(dateSinceLastProcessed:now:useCases:invocations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  OUTLINED_FUNCTION_1_2();
  v6 = swift_task_alloc();
  v5[7] = v6;
  *v6 = v5;
  v7 = OUTLINED_FUNCTION_18_1(v6);

  return v8(v7);
}

uint64_t AssetDeliveryProcessor.computeTelemetryEvents(dateSinceLastProcessed:now:useCases:invocations:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_63();
  v7 = v6;
  v8 = *v3;
  OUTLINED_FUNCTION_18_0();
  *v9 = v8;
  v7[8] = v2;

  if (v2)
  {
    v10 = *(v8 + 8);

    return v10();
  }

  else
  {
    v7[9] = a2;
    v7[10] = a1;

    return MEMORY[0x2822009F8](AssetDeliveryProcessor.computeTelemetryEvents(dateSinceLastProcessed:now:useCases:invocations:), 0, 0);
  }
}

uint64_t AssetDeliveryProcessor.computeTelemetryEvents(dateSinceLastProcessed:now:useCases:invocations:)()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay36AppleIntelligenceReportingProcessing31AvailabilityDetailedStatusEventVG_SayAA0e6ChangeH0VGtMd, &_sSay36AppleIntelligenceReportingProcessing31AvailabilityDetailedStatusEventVG_SayAA0e6ChangeH0VGtMR);
  v9 = *(v0 + 40);
  *(v0 + 16) = Dictionary.init(dictionaryLiteral:)();
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = vextq_s8(v9, v9, 8uLL);
  *(v5 + 40) = v1;
  *(v5 + 48) = v0 + 16;
  *(v5 + 56) = v4;
  specialized Sequence.forEach(_:)(partial apply for closure #1 in AssetDeliveryProcessor.computeTelemetryEvents(dateSinceLastProcessed:now:useCases:invocations:), v5, v3);

  v6 = *(v0 + 16);
  v7 = *(v0 + 8);

  return v7(v6);
}

void closure #1 in AssetDeliveryProcessor.computeTelemetryEvents(dateSinceLastProcessed:now:useCases:invocations:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7)
{
  v126 = a7;
  v127 = a6;
  v120 = a5;
  v139 = a4;
  v130 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v123 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v113 = (&v108 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v119 = &v108 - v17;
  v18 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  v19 = *(v18 - 8);
  v128 = v18;
  v129 = v19;
  v20 = MEMORY[0x28223BE20](v18);
  v131 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v124 = &v108 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v121 = &v108 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v108 - v26;
  v133 = type metadata accessor for AssetDeliveryStateReader(0);
  v28 = MEMORY[0x28223BE20](v133);
  v132 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v108 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = (&v108 - v34);
  MEMORY[0x28223BE20](v33);
  v37 = &v108 - v36;
  v39 = *a1;
  v38 = a1[1];
  v125 = a3;
  outlined init with copy of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(a3 + 56, v138);
  v40 = specialized Dictionary.subscript.getter();
  if (v40)
  {
    v41 = v40;
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  *v35 = v39;
  v35[1] = v38;
  v42 = v130;
  v35[2] = v130;

  v117 = v27;
  v134 = v39;
  v139 = v38;
  v43 = v42;
  v44 = v122;
  static AssetDeliveryStateReader.fetchAvailabilityEvent(desiredUseCaseIdentifier:state:)(v39, v38, v43);
  v45 = v44;
  if (!v44)
  {
    v112 = v41;
    v118 = v32;
    v110 = v37;
    v51 = *(v133 + 24);
    v53 = v128;
    v52 = v129;
    v54 = v117;
    v116 = *(v129 + 32);
    v117 = (v129 + 32);
    v116(v35 + v51, v54, v128);
    v114 = *(v52 + 16);
    v115 = v52 + 16;
    v114(v121, v35 + v51, v53);
    v55 = v113;
    AppleIntelligenceReportingAvailabilityLog.event.getter();
    v56 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v55, 1, v56);
    v122 = v56;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of NSObject?(v55, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
      v58 = type metadata accessor for Date();
      v59 = v119;
      __swift_storeEnumTagSinglePayload(v119, 1, 1, v58);
    }

    else
    {
      v59 = v119;
      AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
      (*(*(v56 - 8) + 8))(v55, v56);
    }

    v63 = v121;
    static AssetDeliveryStateReader.fetchSubscriptionEventsForCurrentSubscription(desiredUseCaseIdentifier:availabilityEvent:state:eventTimestamp:)(v134, v139, v121, v130, v59, v60, v61, v62, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
    v65 = v64;
    outlined destroy of NSObject?(v59, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v66 = *(v129 + 8);
    v129 += 8;
    v113 = v66;
    (v66)(v63, v53);
    v67 = v133;
    specialized Collection.first.getter(v65);
    specialized BidirectionalCollection.last.getter(v65, v35 + v67[8]);

    outlined init with take of UnifiedAssetFrameworkReporting(v138, v35 + v67[9]);
    *(v35 + v67[10]) = v112;
    outlined init with take of AppleIntelligenceBiomeEvent(v35, v110, type metadata accessor for AssetDeliveryStateReader);
    v68 = specialized Dictionary.subscript.getter();
    v69 = MEMORY[0x277D84F90];
    if (v68)
    {
      v70 = v68;
    }

    else
    {
      v70 = MEMORY[0x277D84F90];
    }

    v71 = specialized Array._getCount()(v70);
    v72 = 0;
    v120 = v70 & 0xC000000000000001;
    v121 = v71;
    v111 = v122 - 8;
    v109 = v69;
    v73 = v127;
    v119 = v70;
    while (1)
    {
      v74 = v126;
      if (v121 == v72)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy36AppleIntelligenceReportingProcessing31AvailabilityDetailedStatusEventVGMd, &_ss23_ContiguousArrayStorageCy36AppleIntelligenceReportingProcessing31AvailabilityDetailedStatusEventVGMR);
        v105 = swift_allocObject();
        *(v105 + 16) = xmmword_227FB2070;
        v106 = v110;
        AssetDeliveryStateReader.computeDetailedStatusCAEvent(now:)(v74, v105 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v138[0] = *v73;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v105, v109, v134, v139, isUniquelyReferenced_nonNull_native);
        *v73 = *&v138[0];
        outlined destroy of AppleIntelligenceBiomeEvent(v106, type metadata accessor for AssetDeliveryStateReader);
        return;
      }

      v75 = v120;
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v72, v120 == 0, v70);
      if (v75)
      {
        v76 = MEMORY[0x22AAAE480](v72, v70);
      }

      else
      {
        v76 = *(v70 + 8 * v72 + 32);
      }

      v77 = v124;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      v112 = v72 + 1;
      outlined init with copy of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(v125 + 56, v137);
      v78 = v134;
      v79 = v132;
      v80 = v139;
      *v132 = v134;
      *(v79 + 1) = v80;
      *(v79 + 2) = v76;
      swift_retain_n();

      static AssetDeliveryStateReader.fetchAvailabilityEvent(desiredUseCaseIdentifier:state:)(v78, v80, v76);
      v130 = 0;
      v81 = v16;
      v82 = v77;
      v83 = *(v133 + 24);
      v116(&v79[v83], v82, v53);
      v114(v131, &v79[v83], v53);
      v84 = v123;
      AppleIntelligenceReportingAvailabilityLog.event.getter();
      v85 = v84;
      v86 = v122;
      if (__swift_getEnumTagSinglePayload(v84, 1, v122) == 1)
      {
        outlined destroy of NSObject?(v84, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
        v87 = type metadata accessor for Date();
        v16 = v81;
        __swift_storeEnumTagSinglePayload(v81, 1, 1, v87);
      }

      else
      {
        v16 = v81;
        AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
        (*(*(v86 - 8) + 8))(v85, v86);
      }

      v91 = v131;
      static AssetDeliveryStateReader.fetchSubscriptionEventsForCurrentSubscription(desiredUseCaseIdentifier:availabilityEvent:state:eventTimestamp:)(v134, v139, v131, v76, v16, v88, v89, v90, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
      v93 = v92;

      outlined destroy of NSObject?(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v94 = v91;
      v53 = v128;
      (v113)(v94, v128);
      v96 = v132;
      v95 = v133;
      specialized Collection.first.getter(v93);
      specialized BidirectionalCollection.last.getter(v93, v96 + v95[8]);

      outlined init with take of UnifiedAssetFrameworkReporting(v137, v96 + v95[9]);
      *(v96 + v95[10]) = MEMORY[0x277D84F90];
      v97 = v118;
      outlined init with take of AppleIntelligenceBiomeEvent(v96, v118, type metadata accessor for AssetDeliveryStateReader);
      v98 = v130;
      AssetDeliveryStateReader.computeStatusChangeCAEvent()(v138);
      v45 = v98;
      if (v98)
      {

        outlined destroy of AppleIntelligenceBiomeEvent(v97, type metadata accessor for AssetDeliveryStateReader);
        outlined destroy of AppleIntelligenceBiomeEvent(v110, type metadata accessor for AssetDeliveryStateReader);
        goto LABEL_6;
      }

      outlined destroy of AppleIntelligenceBiomeEvent(v97, type metadata accessor for AssetDeliveryStateReader);

      memcpy(v137, v138, 0xE5uLL);
      v99 = _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventVSgWOg(v137) == 1;
      v70 = v119;
      if (v99)
      {
        memcpy(v136, v138, 0xE5uLL);
        outlined destroy of NSObject?(v136, &_s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventVSgMd, &_s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventVSgMR);
        ++v72;
        v73 = v127;
      }

      else
      {
        memcpy(v136, v138, 0xE5uLL);
        v100 = swift_isUniquelyReferenced_nonNull_native();
        v73 = v127;
        if ((v100 & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v109 = v103;
        }

        v101 = *(v109 + 16);
        if (v101 >= *(v109 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v109 = v104;
        }

        memcpy(v135, v136, sizeof(v135));
        v102 = v109;
        *(v109 + 16) = v101 + 1;
        memcpy((v102 + 232 * v101 + 32), v135, 0xE5uLL);
        v72 = v112;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v138);

LABEL_6:

  if (one-time initialization token for general != -1)
  {
LABEL_37:
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Logging.general);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v138[0] = v50;
    *v49 = 136315138;
    *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v139, v138);
    _os_log_impl(&dword_227F43000, v47, v48, "Failed to process events for %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    MEMORY[0x22AAAF0A0](v50, -1, -1);
    MEMORY[0x22AAAF0A0](v49, -1, -1);
  }
}

uint64_t AssetDeliveryProcessor.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  return v0;
}

uint64_t AssetDeliveryProcessor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
    OUTLINED_FUNCTION_44(v9);
    v12 = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v12 & 1) == 0);
  return v7 != v8;
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t a1)
{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x2821FC280](v2 > 1);
  }

  return result;
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x22AAAE610);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void specialized __RawDictionaryStorage.find<A>(_:)()
{
  OUTLINED_FUNCTION_8_6();
  type metadata accessor for UUID();
  v0 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  OUTLINED_FUNCTION_21_1(v0);
  OUTLINED_FUNCTION_20_0();
}

{
  OUTLINED_FUNCTION_8_6();
  type metadata accessor for AppleIntelligenceReportingUseCase();
  v0 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AppleIntelligenceReportingUseCase and conformance AppleIntelligenceReportingUseCase, MEMORY[0x277D1F520], MEMORY[0x277D1F528]);
  OUTLINED_FUNCTION_21_1(v0);
  OUTLINED_FUNCTION_20_0();
}

{
  OUTLINED_FUNCTION_8_6();
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
  v0 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet and conformance AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet, MEMORY[0x277D1F578], MEMORY[0x277D1F580]);
  OUTLINED_FUNCTION_21_1(v0);
  OUTLINED_FUNCTION_20_0();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_22_2(a1);
  OUTLINED_FUNCTION_24_2();
  String.hash(into:)();
  v3 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v1, v3);
}

{
  Hasher.init(_seed:)();
  v2 = *(a1 + 32);
  v3 = *(a1 + 36);
  String.hash(into:)();
  String.hash(into:)();
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
  }

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  OUTLINED_FUNCTION_22_2(a1);
  if (v1)
  {
    Hasher._combine(_:)(1u);
    OUTLINED_FUNCTION_24_2();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v3 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

void specialized __RawDictionaryStorage.find<A>(_:hashValue:)()
{
  OUTLINED_FUNCTION_18();
  v20 = v1;
  v21 = v2;
  v19 = v3;
  v5 = v4;
  v17 = v6;
  v8 = v7(0);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  v22 = v0 + 64;
  v18 = v0;
  v14 = ~(-1 << *(v0 + 32));
  for (i = v5 & v14; ((1 << i) & *(v22 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v14)
  {
    (*(v10 + 16))(v13, *(v18 + 48) + *(v10 + 72) * i, v8);
    lazy protocol witness table accessor for type UUID and conformance UUID(v19, v20, v21);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v10 + 8))(v13, v8);
    if (v16)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_19();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v22 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v19 = *(a1 + 8);
    v20 = *(a1 + 36);
    v6 = *a1;
    v5 = a1[1];
    v7 = a1[2];
    v8 = a1[3];
    v9 = *(v2 + 48);
    do
    {
      v10 = v9 + 40 * v4;
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      v13 = *(v10 + 32);
      v14 = *(v10 + 36);
      v15 = *v10 == v6 && *(v10 + 8) == v5;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v16 = v11 == v7 && v12 == v8;
        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (v14)
          {
            if (v20)
            {
              return v4;
            }
          }

          else
          {
            v17 = v20;
            if (v13 != v19)
            {
              v17 = 1;
            }

            if ((v17 & 1) == 0)
            {
              return v4;
            }
          }
        }
      }

      v4 = (v4 + 1) & v21;
    }

    while (((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for InvocationStepMetadata.Partial(0);
  result = outlined init with take of AppleIntelligenceBiomeEvent(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for InvocationStepMetadata.Partial);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for AppleIntelligenceReportingUseCase();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 29) = *(a2 + 29);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5 & 1;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_5();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_6();
  specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_0_7();
  if (v14)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_28_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDV36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDV36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVGMR);
  if (OUTLINED_FUNCTION_4_5())
  {
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_11_4();
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  if (v12)
  {
    v16 = type metadata accessor for InvocationStepMetadata.Partial(0);
    OUTLINED_FUNCTION_13(v16);
    OUTLINED_FUNCTION_19();

    outlined assign with take of InvocationStepMetadata.Partial(v17, v18);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_12_5();
    v21(v20);
    v22 = OUTLINED_FUNCTION_5_6();
    specialized _NativeDictionary._insert(at:key:value:)(v22, v23, v24, v25);
    OUTLINED_FUNCTION_19();
  }
}

{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_5();
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_6();
  specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_0_7();
  if (v14)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_28_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy27IntelligencePlatformLibrary05AppleC23ReportingMobileAssetLogV0hiI3SetVAEGMd, &_ss17_NativeDictionaryVy27IntelligencePlatformLibrary05AppleC23ReportingMobileAssetLogV0hiI3SetVAEGMR);
  if (OUTLINED_FUNCTION_4_5())
  {
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_11_4();
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  if (v12)
  {
    type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_19();

    v19(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_12_5();
    v25(v24);
    v26 = OUTLINED_FUNCTION_5_6();
    specialized _NativeDictionary._insert(at:key:value:)(v26, v27, v28, v29);
    OUTLINED_FUNCTION_19();
  }
}

{
  OUTLINED_FUNCTION_18();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_6();
  specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_0_7();
  if (v14)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_28_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDVAEGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDVAEGMR);
  if (OUTLINED_FUNCTION_4_5())
  {
    OUTLINED_FUNCTION_29_0();
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_11_4();
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  if (v12)
  {
    OUTLINED_FUNCTION_19();

    v19(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  else
  {
    OUTLINED_FUNCTION_24_2();
    v24();
    v25 = OUTLINED_FUNCTION_5_6();
    specialized _NativeDictionary._insert(at:key:value:)(v25, v26, v27, v28);
    OUTLINED_FUNCTION_19();
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1, a2);
  OUTLINED_FUNCTION_0_7();
  if (v6)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSay27IntelligencePlatformLibrary05AppleC24ReportingAvailabilityLogVGGMd, &_ss17_NativeDictionaryVySSSay27IntelligencePlatformLibrary05AppleC24ReportingAvailabilityLogVGGMR);
  if (OUTLINED_FUNCTION_4_5())
  {
    v9 = OUTLINED_FUNCTION_29_0();
    specialized __RawDictionaryStorage.find<A>(_:)(v9);
    OUTLINED_FUNCTION_10_4();
    if (!v11)
    {
      goto LABEL_14;
    }

    v7 = v10;
  }

  if (v8)
  {
    *(*(*v3 + 56) + 8 * v7) = v2;
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_25_2();
    specialized _NativeDictionary._insert(at:key:value:)(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_33_0();
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_5();
  type metadata accessor for AppleIntelligenceReportingUseCase();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_6();
  specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_0_7();
  if (v5)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_28_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy27IntelligencePlatformLibrary05AppleC16ReportingUseCaseV0fcG10Processing18AssetDeliveryStateC11AccumulatorCy_AC0fcG15ModelCatalogLogVGGMd, &_ss17_NativeDictionaryVy27IntelligencePlatformLibrary05AppleC16ReportingUseCaseV0fcG10Processing18AssetDeliveryStateC11AccumulatorCy_AC0fcG15ModelCatalogLogVGGMR);
  if (OUTLINED_FUNCTION_4_5())
  {
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_11_4();
    if (!v7)
    {
      goto LABEL_12;
    }

    v2 = v6;
  }

  if (v3)
  {
    *(*(*v1 + 56) + 8 * v2) = v0;
    OUTLINED_FUNCTION_19();
  }

  else
  {
    v9 = OUTLINED_FUNCTION_12_5();
    v10(v9);
    v11 = OUTLINED_FUNCTION_5_6();
    specialized _NativeDictionary._insert(at:key:value:)(v11, v12, v13, v14);
    OUTLINED_FUNCTION_19();
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_0_7();
  if (v11)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy36AppleIntelligenceReportingProcessing15SubscriptionKeyVAC18AssetDeliveryStateC11AccumulatorCy_0D15PlatformLibrary0cde7UnifiedI12FrameworkLogVGGMd, &_ss17_NativeDictionaryVy36AppleIntelligenceReportingProcessing15SubscriptionKeyVAC18AssetDeliveryStateC11AccumulatorCy_0D15PlatformLibrary0cde7UnifiedI12FrameworkLogVGGMR);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v8))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2);
    OUTLINED_FUNCTION_10_4();
    if (!v15)
    {
      goto LABEL_12;
    }

    v12 = v14;
  }

  if (v13)
  {
    *(*(*v4 + 56) + 8 * v12) = a1;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_31_0();
    specialized _NativeDictionary._insert(at:key:value:)(v17, v18, a1, v19);
    return outlined init with copy of SubscriptionKey(a2, v20);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v13;
  v19 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSs6UInt64VSgGMd, &_ss17_NativeDictionaryVySSs6UInt64VSgGMR);
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v17);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = result;
LABEL_5:
  v22 = *v6;
  if (v19)
  {
    v23 = v22[7] + 16 * v18;
    *v23 = a1;
    *(v23 + 8) = a2 & 1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v18, a3, a4, a1, a2 & 1, v22);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v13;
  v19 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSay36AppleIntelligenceReportingProcessing31AvailabilityDetailedStatusEventVG_SayAC0g6ChangeJ0VGtGMd, &_ss17_NativeDictionaryVySSSay36AppleIntelligenceReportingProcessing31AvailabilityDetailedStatusEventVG_SayAC0g6ChangeJ0VGtGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v20;
LABEL_5:
  v22 = *v6;
  if (v19)
  {
    v23 = (v22[7] + 16 * v18);
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v18, a3, a4, a1, a2, v22);
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1, a2);
  OUTLINED_FUNCTION_0_7();
  if (v6)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo8NSObjectCGMd, &_ss17_NativeDictionaryVySSSo8NSObjectCGMR);
  if (OUTLINED_FUNCTION_4_5())
  {
    v9 = OUTLINED_FUNCTION_29_0();
    specialized __RawDictionaryStorage.find<A>(_:)(v9);
    OUTLINED_FUNCTION_10_4();
    if (!v11)
    {
      goto LABEL_14;
    }

    v7 = v10;
  }

  if (v8)
  {
    *(*(*v3 + 56) + 8 * v7) = v2;
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_25_2();
    specialized _NativeDictionary._insert(at:key:value:)(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_33_0();
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_0_7();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
  if (OUTLINED_FUNCTION_4_5())
  {
    v10 = OUTLINED_FUNCTION_29_0();
    specialized __RawDictionaryStorage.find<A>(_:)(v10);
    OUTLINED_FUNCTION_10_4();
    if (!v12)
    {
      goto LABEL_14;
    }

    v8 = v11;
  }

  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((*(*v3 + 56) + 32 * v8));
    OUTLINED_FUNCTION_33_0();

    return outlined init with take of Any(v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_24_2();
    specialized _NativeDictionary._insert(at:key:value:)(v17, v18, v19, a1, v20);
    OUTLINED_FUNCTION_33_0();
  }
}

void *specialized AssetDeliveryProcessor.__allocating_init(biomeReader:unifiedAssetFrameworkReporter:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AssetDeliveryProcessor();
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a1, a4);
  v13 = specialized AssetDeliveryProcessor.init(biomeReader:unifiedAssetFrameworkReporter:)(v11, a2, v12, a4, a5);
  (*(v9 + 8))(a1, a4);
  return v13;
}

void *specialized AssetDeliveryProcessor.init(biomeReader:unifiedAssetFrameworkReporter:)(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  a3[5] = a4;
  a3[6] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 2);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  outlined init with take of UnifiedAssetFrameworkReporting(a2, (a3 + 7));
  return a3;
}

uint64_t _sxRi_zRi0_zlySay36AppleIntelligenceReportingProcessing18AssetDeliveryStateCGIsegr_SgWOe(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t dispatch thunk of AssetDeliveryProcessor.computeAssetDeliveryStates(dateSinceLastProcessed:useCases:)()
{
  OUTLINED_FUNCTION_1_2();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_18_1(v1);

  return v3(v2);
}

uint64_t dispatch thunk of AssetDeliveryProcessor.computeAssetDeliveryStates(dateSinceLastProcessed:useCases:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_63();
  v5 = *v2;
  OUTLINED_FUNCTION_18_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(a1, a2);
}

uint64_t dispatch thunk of AssetDeliveryProcessor.computeTelemetryEvents(dateSinceLastProcessed:now:useCases:invocations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_2();
  v12 = (*(v9 + 112) + **(v9 + 112));
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of AssetDeliveryProcessor.computeTelemetryEvents(dateSinceLastProcessed:now:useCases:invocations:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AssetDeliveryProcessor.computeTelemetryEvents(dateSinceLastProcessed:now:useCases:invocations:)(uint64_t a1)
{
  OUTLINED_FUNCTION_63();
  v3 = *v1;
  OUTLINED_FUNCTION_18_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined assign with take of InvocationStepMetadata.Partial(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvocationStepMetadata.Partial(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t outlined init with take of AppleIntelligenceBiomeEvent(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t outlined destroy of AppleIntelligenceBiomeEvent(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 216);
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

BOOL OUTLINED_FUNCTION_4_5()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

unint64_t OUTLINED_FUNCTION_14_3(uint64_t a1, uint64_t a2)
{

  return specialized __RawDictionaryStorage.find<A>(_:)(a2);
}

void OUTLINED_FUNCTION_20_0()
{

  specialized __RawDictionaryStorage.find<A>(_:hashValue:)();
}

uint64_t OUTLINED_FUNCTION_21_1(uint64_t a1)
{

  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

void *OUTLINED_FUNCTION_22_2(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
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
      v22 = dispatch thunk of Collection.subscript.read();
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
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
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

uint64_t AssetDeliveryState.__allocating_init()()
{
  v0 = swift_allocObject();
  AssetDeliveryState.init()();
  return v0;
}

uint64_t specialized Dictionary.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_4();
    (*(v9 + 16))(a2, v7 + *(v9 + 72) * v6, v8);
    OUTLINED_FUNCTION_39_0();
    v13 = v8;
  }

  else
  {
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_23();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)();
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

void AssetDeliveryState.debugDescription.getter()
{
  OUTLINED_FUNCTION_18();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMR);
  OUTLINED_FUNCTION_13(v1);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_17_3(v3);
  v307 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance();
  OUTLINED_FUNCTION_0();
  v306 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v346 = v6;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_33_1(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetSgMR);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v341 = v11;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v13);
  v358 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector();
  OUTLINED_FUNCTION_0();
  v350 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_38_0();
  v348 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetSgMR);
  v21 = OUTLINED_FUNCTION_13(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v27);
  v354 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
  OUTLINED_FUNCTION_0();
  v311 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_33_1(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetSgMR);
  v33 = OUTLINED_FUNCTION_13(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7();
  v336 = v34;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_38_0();
  v334 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  OUTLINED_FUNCTION_13(v37);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_17_3(v39);
  v347 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  OUTLINED_FUNCTION_0();
  v310 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_96();
  v342 = v43;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v45);
  v355 = type metadata accessor for AppleIntelligenceReportingUseCase();
  OUTLINED_FUNCTION_0();
  v317 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2();
  v352 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgMR);
  v50 = OUTLINED_FUNCTION_13(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_7();
  v339 = v51;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_38_0();
  v332 = v53;
  OUTLINED_FUNCTION_12();
  v351 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  OUTLINED_FUNCTION_0();
  v55 = v54;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_1_0();
  object = (v58 - v57);
  OUTLINED_FUNCTION_13_2();
  v361[0] = 0xD000000000000015;
  v361[1] = v60;
  OUTLINED_FUNCTION_1_2();
  v62 = (*(v61 + 152))();
  v63 = 0;
  v64 = v62 + 64;
  v327 = v62;
  OUTLINED_FUNCTION_2_7();
  v67 = v66 & v65;
  v69 = (v68 + 63) >> 6;
  v304 = v55;
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_13_2();
  v315 = v70;
  for (i = object; v67; object = i)
  {
    v71 = v351;
LABEL_8:
    v73 = *(*(v327 + 56) + 8 * (__clz(__rbit64(v67)) | (v63 << 6)));
    v74 = *(v73 + 16);
    if (v74)
    {
      (*(v304 + 16))(object, v73 + ((*(v304 + 80) + 32) & ~*(v304 + 80)) + *(v304 + 72) * (v74 - 1), v71);

      v76 = AppleIntelligenceReportingAvailabilityLog.json()();
      if (v75)
      {

        v77 = OUTLINED_FUNCTION_101_0();
        v78(v77);
        OUTLINED_FUNCTION_122_0();
      }

      else
      {
        countAndFlagsBits = v76._countAndFlagsBits;
        object = v76._object;
        v79 = OUTLINED_FUNCTION_101_0();
        v80(v79);
      }
    }

    else
    {

      OUTLINED_FUNCTION_122_0();
    }

    v67 &= v67 - 1;
    OUTLINED_FUNCTION_28_2();
    _StringGuts.grow(_:)(39);

    OUTLINED_FUNCTION_118();
    v359 = v81 + 1;
    v360 = v315;
    v82 = OUTLINED_FUNCTION_104_0();
    MEMORY[0x22AAAE070](v82);

    v83 = OUTLINED_FUNCTION_23_2();
    MEMORY[0x22AAAE070](v83 & 0xFFFFFFFFFFFFLL | 0x203A000000000000, 0xE800000000000000);
    MEMORY[0x22AAAE070](countAndFlagsBits, object);

    MEMORY[0x22AAAE070](10, 0xE100000000000000);
    MEMORY[0x22AAAE070](v359, v315);
  }

  v71 = v351;
  while (1)
  {
    v72 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      goto LABEL_131;
    }

    if (v72 >= v69)
    {
      break;
    }

    v67 = *(v64 + 8 * v72);
    ++v63;
    if (v67)
    {
      v63 = v72;
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_13_3();
  v85 = 0;
  v316 = (*(v84 + 176))();
  OUTLINED_FUNCTION_2_7();
  v88 = v87 & v86;
  v90 = (v89 + 63) >> 6;
  OUTLINED_FUNCTION_13_2();
  v328 = v92;
  v323 = (v93 + 8);
  v325 = v91;
  if (!v88)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v94 = v85;
LABEL_21:
    v95 = __clz(__rbit64(v88));
    v88 &= v88 - 1;
    v96 = v95 | (v94 << 6);
    (*(v317 + 16))(v352, *(v316 + 48) + *(v317 + 72) * v96, v355);
    v97 = *(*(v316 + 56) + 8 * v96);
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMR);
    v99 = *(v98 + 48);
    (*(v317 + 32))(v339, v352, v355);
    *(v339 + v99) = v97;
    OUTLINED_FUNCTION_39_0();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v98);

LABEL_22:
    outlined init with take of (key: AppleIntelligenceReportingUseCase, value: AssetDeliveryState.Accumulator<AppleIntelligenceReportingModelCatalogLog>)?();
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMR);
    v104 = OUTLINED_FUNCTION_70_0();
    OUTLINED_FUNCTION_34_0(v104, v105, v103);
    if (v106)
    {
      break;
    }

    v107 = *(v332 + *(v103 + 48));
    v108 = OUTLINED_FUNCTION_85_0();
    v109(v108);
    AppleIntelligenceReportingUseCase.loggingDescription.getter();
    v111 = v110;
    v113 = v112;
    OUTLINED_FUNCTION_28_2();
    _StringGuts.grow(_:)(42);

    OUTLINED_FUNCTION_118();
    v359 = v114 + 2;
    v360 = v328;
    MEMORY[0x22AAAE070](v111, v113);

    OUTLINED_FUNCTION_69_0();
    v115 = (*(*v107 + 160))();
    OUTLINED_FUNCTION_133(v115);
    v116 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AAAE070](v116);

    OUTLINED_FUNCTION_23_2();
    OUTLINED_FUNCTION_116_0();
    MEMORY[0x22AAAE070](v359, v328);

    (*v323)(v352, v355);
    v91 = v325;
    if (!v88)
    {
LABEL_17:
      while (1)
      {
        v94 = v85 + 1;
        if (__OFADD__(v85, 1))
        {
          break;
        }

        if (v94 >= v90)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMR);
          OUTLINED_FUNCTION_23();
          __swift_storeEnumTagSinglePayload(v117, v118, v119, v120);
          v88 = 0;
          goto LABEL_22;
        }

        v88 = *(v91 + 8 * v94);
        ++v85;
        if (v88)
        {
          v85 = v94;
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_126;
    }
  }

  OUTLINED_FUNCTION_13_3();
  (*(v121 + 200))();
  v122 = OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_34_0(v122, v123, v347);
  if (v106)
  {
    outlined destroy of NSObject?(v303, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
    v124 = v310;
  }

  else
  {
    v124 = v310;
    OUTLINED_FUNCTION_81_0();
    v125 = OUTLINED_FUNCTION_31_0();
    v126(v125);
    OUTLINED_FUNCTION_28_2();
    _StringGuts.grow(_:)(28);

    OUTLINED_FUNCTION_13_2();
    v359 = 0xD000000000000019;
    v360 = v127;
    (*(v310 + 16))(v342, v302, v347);
    v128 = String.init<A>(describing:)();
    MEMORY[0x22AAAE070](v128);

    MEMORY[0x22AAAE070](10, 0xE100000000000000);
    v103 = v361;
    MEMORY[0x22AAAE070](0xD000000000000019, v360);

    v129 = OUTLINED_FUNCTION_140();
    v130(v129);
  }

  OUTLINED_FUNCTION_13_3();
  v132 = (*(v131 + 224))();
  v133 = 0;
  v134 = v132 + 64;
  v324 = v132;
  OUTLINED_FUNCTION_2_7();
  v137 = v136 & v135;
  v356 = (v124 + 16);
  OUTLINED_FUNCTION_13_2();
  v329 = v139;
  v326 = (v124 + 8);
  v340 = (v140 + 8);
  v318 = v134;
  v333 = v138;
  if (!v137)
  {
LABEL_31:
    v141 = v334;
    while (1)
    {
      v142 = v133 + 1;
      if (__OFADD__(v133, 1))
      {
        break;
      }

      if (v142 >= v138)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetMR);
        OUTLINED_FUNCTION_23();
        __swift_storeEnumTagSinglePayload(v166, v167, v168, v169);
        v137 = 0;
        goto LABEL_37;
      }

      v137 = *(v134 + 8 * v142);
      ++v133;
      if (v137)
      {
        v133 = v142;
        goto LABEL_36;
      }
    }

LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

LABEL_36:
  while (1)
  {
    OUTLINED_FUNCTION_106_0();
    (*(v311 + 16))(v308, *(v324 + 48) + *(v311 + 72) * v103, v354);
    (*(v310 + 16))(v342, *(v324 + 56) + *(v310 + 72) * v103, v347);
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetMR);
    v144 = *(v143 + 48);
    (*(v311 + 32))();
    (*(v310 + 32))(v336 + v144, v342, v347);
    OUTLINED_FUNCTION_39_0();
    __swift_storeEnumTagSinglePayload(v145, v146, v147, v143);
    v141 = v334;
    v134 = v318;
LABEL_37:
    OUTLINED_FUNCTION_140();
    outlined init with take of (key: AppleIntelligenceReportingUseCase, value: AssetDeliveryState.Accumulator<AppleIntelligenceReportingModelCatalogLog>)?();
    v148 = OUTLINED_FUNCTION_67_0();
    v150 = __swift_instantiateConcreteTypeFromMangledNameV2(v148, v149);
    v151 = OUTLINED_FUNCTION_102_0();
    OUTLINED_FUNCTION_34_0(v151, v152, v150);
    if (v106)
    {
      break;
    }

    v153 = *(v150 + 48);
    v154 = OUTLINED_FUNCTION_140();
    v155(v154);
    OUTLINED_FUNCTION_137();
    v156(v319, v141 + v153, v347);
    v157 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet.assetSetIdentifier.getter();
    if (v158)
    {
      v159 = v157;
    }

    else
    {
      v159 = 0;
    }

    if (v158)
    {
      v160 = v158;
    }

    else
    {
      v160 = 0xE000000000000000;
    }

    _StringGuts.grow(_:)(38);

    OUTLINED_FUNCTION_118();
    v359 = v161;
    v360 = v329;
    MEMORY[0x22AAAE070](v159, v160);

    v162 = OUTLINED_FUNCTION_23_2();
    MEMORY[0x22AAAE070](v162 & 0xFFFFFFFFFFFFLL | 0x203A000000000000, 0xE800000000000000);
    (*v356)(v342, v319, v347);
    v163 = String.init<A>(describing:)();
    MEMORY[0x22AAAE070](v163);

    MEMORY[0x22AAAE070](10, 0xE100000000000000);
    v103 = v361;
    MEMORY[0x22AAAE070](v359, v329);

    (*v326)(v319, v347);
    v164 = OUTLINED_FUNCTION_140();
    v165(v164);
    v138 = v333;
    if (!v137)
    {
      goto LABEL_31;
    }
  }

  OUTLINED_FUNCTION_13_3();
  v171 = 0;
  v337 = (*(v170 + 248))();
  OUTLINED_FUNCTION_2_7();
  v175 = v174 & v173;
  v177 = (v176 + 63) >> 6;
  v343 = v172;
  if ((v174 & v173) == 0)
  {
LABEL_49:
    v179 = v330;
    while (1)
    {
      v178 = v171 + 1;
      if (__OFADD__(v171, 1))
      {
        break;
      }

      if (v178 >= v177)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
        OUTLINED_FUNCTION_23();
        __swift_storeEnumTagSinglePayload(v200, v201, v202, v203);
        v175 = 0;
        goto LABEL_55;
      }

      v175 = *(v172 + 8 * v178);
      ++v171;
      if (v175)
      {
        v171 = v178;
        goto LABEL_54;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  while (1)
  {
    v178 = v171;
LABEL_54:
    v180 = __clz(__rbit64(v175));
    v175 &= v175 - 1;
    v181 = v180 | (v178 << 6);
    (*(v350 + 16))(v348, *(v337 + 48) + *(v350 + 72) * v181, v358);
    v137 = *(*(v337 + 56) + 8 * v181);
    v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
    v183 = *(v182 + 48);
    v184 = OUTLINED_FUNCTION_120_0();
    v185(v184);
    *(v331 + v183) = v137;
    OUTLINED_FUNCTION_39_0();
    __swift_storeEnumTagSinglePayload(v186, v187, v188, v182);

    v179 = v330;
LABEL_55:
    OUTLINED_FUNCTION_99_0();
    outlined init with take of (key: AppleIntelligenceReportingUseCase, value: AssetDeliveryState.Accumulator<AppleIntelligenceReportingModelCatalogLog>)?();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
    v189 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_19_2(v189);
    if (v106)
    {
      break;
    }

    v137 = *(v179 + *(v137 + 48));
    v190 = OUTLINED_FUNCTION_99_0();
    v191(v190);
    v192 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.getter();
    if (v193)
    {
      v194 = v192;
    }

    else
    {
      v194 = 0xD000000000000019;
    }

    if (v193)
    {
      v195 = v193;
    }

    else
    {
      v195 = 0x8000000227FB5870;
    }

    OUTLINED_FUNCTION_28_2();
    _StringGuts.grow(_:)(27);

    OUTLINED_FUNCTION_113_0();
    v360 = 0xEC00000020626F4ALL;
    MEMORY[0x22AAAE070](v194, v195);

    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_4_1();
    v197 = (*(v196 + 160))();
    OUTLINED_FUNCTION_133(v197);
    v198 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AAAE070](v198);

    OUTLINED_FUNCTION_23_2();
    OUTLINED_FUNCTION_116_0();
    OUTLINED_FUNCTION_115_0();

    OUTLINED_FUNCTION_137();
    v199(v312, v358);
    v172 = v343;
    if (!v175)
    {
      goto LABEL_49;
    }
  }

  OUTLINED_FUNCTION_13_3();
  (*(v204 + 272))();
  OUTLINED_FUNCTION_98_0();
  v338 = v205;
  OUTLINED_FUNCTION_2_7();
  v209 = v208 & v207;
  v211 = (v210 + 63) >> 6;
  v344 = v206;
  if ((v208 & v207) == 0)
  {
LABEL_67:
    v179 = v320;
    while (1)
    {
      v212 = v177 + 1;
      if (__OFADD__(v177, 1))
      {
        goto LABEL_128;
      }

      if (v212 >= v211)
      {
        OUTLINED_FUNCTION_23();
        __swift_storeEnumTagSinglePayload(v230, v231, v232, v137);
        v209 = 0;
        goto LABEL_73;
      }

      v209 = *(v206 + 8 * v212);
      ++v177;
      if (v209)
      {
        v177 = v212;
        break;
      }
    }
  }

  while (1)
  {
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_97_0();
    v213(v348);
    v214 = *(*(v338 + 56) + 8 * v179);
    v215 = *(v137 + 48);
    (*(v350 + 32))(v321, v348, v358);
    *(v321 + v215) = v214;
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_143(v216, v217, v218);

    v179 = v320;
LABEL_73:
    OUTLINED_FUNCTION_123_0();
    outlined init with take of (key: AppleIntelligenceReportingUseCase, value: AssetDeliveryState.Accumulator<AppleIntelligenceReportingModelCatalogLog>)?();
    OUTLINED_FUNCTION_19_2(v179);
    if (v106)
    {
      break;
    }

    OUTLINED_FUNCTION_119_0();
    v219 = OUTLINED_FUNCTION_123_0();
    v220(v219);
    v221 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.getter();
    if (v222)
    {
      v223 = v221;
    }

    else
    {
      v223 = 0xD000000000000019;
    }

    if (v222)
    {
      v224 = v222;
    }

    else
    {
      v224 = 0x8000000227FB5870;
    }

    OUTLINED_FUNCTION_28_2();
    _StringGuts.grow(_:)(30);

    OUTLINED_FUNCTION_113_0();
    v360 = 0xEF20657461647055;
    MEMORY[0x22AAAE070](v223, v224);

    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_138();
    v226 = (*(v225 + 160))();
    OUTLINED_FUNCTION_133(v226);
    v227 = dispatch thunk of CustomStringConvertible.description.getter();
    v179 = &v359;
    MEMORY[0x22AAAE070](v227);

    OUTLINED_FUNCTION_23_2();
    OUTLINED_FUNCTION_116_0();
    OUTLINED_FUNCTION_115_0();

    OUTLINED_FUNCTION_137();
    v228 = OUTLINED_FUNCTION_103_0();
    v229(v228);
    v206 = v344;
    if (!v209)
    {
      goto LABEL_67;
    }
  }

  OUTLINED_FUNCTION_13_3();
  (*(v233 + 296))();
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_2_7();
  v237 = v236 & v235;
  v239 = (v238 + 63) >> 6;
  v335 = v240;
  v345 = v234;
  if ((v236 & v235) == 0)
  {
LABEL_85:
    v241 = v341;
    v179 = v313;
    while (1)
    {
      v242 = v177 + 1;
      if (__OFADD__(v177, 1))
      {
        goto LABEL_129;
      }

      if (v242 >= v239)
      {
        OUTLINED_FUNCTION_23();
        __swift_storeEnumTagSinglePayload(v260, v261, v262, v137);
        v237 = 0;
        goto LABEL_91;
      }

      v237 = *(v234 + 8 * v242);
      ++v177;
      if (v237)
      {
        v177 = v242;
        goto LABEL_90;
      }
    }
  }

  while (1)
  {
    v241 = v341;
LABEL_90:
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_97_0();
    v243(v348);
    v244 = *(*(v335 + 56) + 8 * v179);
    v245 = *(v137 + 48);
    (*(v350 + 32))(v314, v348, v358);
    *(v314 + v245) = v244;
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_143(v246, v247, v248);

    v179 = v313;
LABEL_91:
    outlined init with take of (key: AppleIntelligenceReportingUseCase, value: AssetDeliveryState.Accumulator<AppleIntelligenceReportingModelCatalogLog>)?();
    OUTLINED_FUNCTION_19_2(v179);
    if (v106)
    {
      break;
    }

    OUTLINED_FUNCTION_119_0();
    v249 = OUTLINED_FUNCTION_123_0();
    v250(v249);
    v251 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.getter();
    if (v252)
    {
      v253 = v251;
    }

    else
    {
      v253 = 0xD000000000000019;
    }

    if (v252)
    {
      v254 = v252;
    }

    else
    {
      v254 = 0x8000000227FB5870;
    }

    OUTLINED_FUNCTION_28_2();
    _StringGuts.grow(_:)(36);

    v359 = 0xD000000000000015;
    v360 = 0x8000000227FB5890;
    MEMORY[0x22AAAE070](v253, v254);

    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_138();
    v256 = (*(v255 + 160))();
    OUTLINED_FUNCTION_133(v256);
    v257 = dispatch thunk of CustomStringConvertible.description.getter();
    v179 = &v359;
    MEMORY[0x22AAAE070](v257);

    OUTLINED_FUNCTION_23_2();
    OUTLINED_FUNCTION_116_0();
    OUTLINED_FUNCTION_115_0();

    OUTLINED_FUNCTION_137();
    v258 = OUTLINED_FUNCTION_103_0();
    v259(v258);
    v234 = v345;
    if (!v237)
    {
      goto LABEL_85;
    }
  }

  OUTLINED_FUNCTION_13_3();
  (*(v263 + 320))();
  OUTLINED_FUNCTION_98_0();
  v349 = v264;
  OUTLINED_FUNCTION_2_7();
  v268 = v267 & v266;
  v270 = (v269 + 63) >> 6;
  v271 = v307;
  v357 = v265;
  v353 = v270;
  v272 = v241;
  if (v268)
  {
    while (1)
    {
      v273 = v272;
LABEL_108:
      OUTLINED_FUNCTION_106_0();
      OUTLINED_FUNCTION_97_0();
      v276();
      v277 = *(*(v349 + 56) + 8 * v179);
      v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
      v279 = *(v278 + 48);
      (*(v306 + 32))(v273, v305, v271);
      *(v273 + v279) = v277;
      OUTLINED_FUNCTION_39_0();
      __swift_storeEnumTagSinglePayload(v280, v281, v282, v278);

      v274 = v309;
LABEL_109:
      outlined init with take of (key: AppleIntelligenceReportingUseCase, value: AssetDeliveryState.Accumulator<AppleIntelligenceReportingModelCatalogLog>)?();
      v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
      v284 = OUTLINED_FUNCTION_79_0();
      OUTLINED_FUNCTION_34_0(v284, v285, v283);
      if (v106)
      {

        OUTLINED_FUNCTION_19();
        return;
      }

      v286 = OUTLINED_FUNCTION_67_0();
      v287(v286);
      AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.assetSet.getter();
      OUTLINED_FUNCTION_34_0(v274, 1, v354);
      if (v106)
      {
        break;
      }

      AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet.assetSetIdentifier.getter();
      v289 = v288;
      (*v340)(v274, v354);
      if (!v289)
      {
        goto LABEL_114;
      }

LABEL_115:
      v290 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.atomicInstanceId.getter();
      if (v291)
      {
        v292 = v290;
      }

      else
      {
        v292 = 0;
      }

      if (v291)
      {
        v293 = v291;
      }

      else
      {
        v293 = 0xE000000000000000;
      }

      OUTLINED_FUNCTION_43_0();
      (*(v294 + 160))();
      v359 = 0;
      v360 = 0xE000000000000000;
      _StringGuts.grow(_:)(41);

      OUTLINED_FUNCTION_118();
      v359 = v295 - 2;
      v360 = 0x8000000227FB5850;
      v296 = OUTLINED_FUNCTION_86_0();
      MEMORY[0x22AAAE070](v296);

      MEMORY[0x22AAAE070](58, 0xE100000000000000);
      MEMORY[0x22AAAE070](v292, v293);

      OUTLINED_FUNCTION_69_0();
      v297 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AAAE070](v297);

      OUTLINED_FUNCTION_23_2();
      OUTLINED_FUNCTION_116_0();
      v179 = v361;
      MEMORY[0x22AAAE070](v359, v360);

      v271 = v307;
      (*(v306 + 8))(v346, v307);
      v272 = v341;
      v265 = v357;
      v270 = v353;
      if (!v268)
      {
        goto LABEL_103;
      }
    }

    outlined destroy of NSObject?(v274, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMR);
LABEL_114:

    goto LABEL_115;
  }

LABEL_103:
  v274 = v309;
  while (1)
  {
    v275 = v177 + 1;
    if (__OFADD__(v177, 1))
    {
      break;
    }

    if (v275 >= v270)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
      OUTLINED_FUNCTION_23();
      __swift_storeEnumTagSinglePayload(v298, v299, v300, v301);
      v268 = 0;
      goto LABEL_109;
    }

    v268 = *(v265 + 8 * v275);
    ++v177;
    if (v268)
    {
      v273 = v272;
      v177 = v275;
      goto LABEL_108;
    }
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
}

uint64_t specialized Dictionary.subscript.setter()
{
  OUTLINED_FUNCTION_117();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVSgMd, &_s36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVSgMR);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_136();
  type metadata accessor for InvocationStepMetadata.Partial(v5);
  OUTLINED_FUNCTION_8_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_34_0(v1, 1, v10);
  if (v11)
  {
    outlined destroy of NSObject?(v1, &_s36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVSgMd, &_s36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)();
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_4();
    (*(v12 + 8))(v0);
    return outlined destroy of NSObject?(v2, &_s36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVSgMd, &_s36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVSgMR);
  }

  else
  {
    outlined init with take of InvocationStepMetadata.Partial(v1, v9);
    swift_isUniquelyReferenced_nonNull_native();
    v24 = *v1;
    v13 = OUTLINED_FUNCTION_31_0();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24, v26, v27);
    *v1 = v25;
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_4();
    return (*(v21 + 8))(v0);
  }
}

{
  OUTLINED_FUNCTION_117();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_59_0();
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_34_0(v1, 1, v5);
  if (v12)
  {
    outlined destroy of NSObject?(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)();
    (*(v7 + 8))(v0, v5);
    return outlined destroy of NSObject?(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v7 + 32))(v11, v1, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v0, isUniquelyReferenced_nonNull_native, v14, v15, v16, v17, v18, v20, *v1, v22, v23);
    *v1 = v21;
    return (*(v7 + 8))(v0, v5);
  }
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v22 - v7;
  v9 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v9) == 1)
  {
    outlined destroy of NSObject?(a1, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)();
    v13 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
    (*(*(v13 - 8) + 8))(a2, v13);
    return outlined destroy of NSObject?(v8, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, isUniquelyReferenced_nonNull_native, v16, v17, v18, v19, v20, v22[0], *v3, v22[2], v22[3]);
    *v3 = v22[1];
    v21 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
    return (*(*(v21 - 8) + 8))(a2, v21);
  }
}

uint64_t static SubscriptionKey.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 8);
  v5 = *(a1 + 36);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 36);
  v10 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 != v6 || v3 != v7)
  {
    OUTLINED_FUNCTION_62();
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  if (v5)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v8)
    {
      v13 = v9;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  return 1;
}

void SubscriptionKey.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 36);
  String.hash(into:)();
  OUTLINED_FUNCTION_104_0();
  String.hash(into:)();
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
  }
}

Swift::Int SubscriptionKey.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 36);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

uint64_t SubscriptionKey.init(subscriptionName:subscriberName:userIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 36) = BYTE4(a5) & 1;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SubscriptionKey(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 36);
  *&v7[72] = *v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  Hasher.init(_seed:)();
  SubscriptionKey.hash(into:)(v7);
  return Hasher._finalize()();
}

uint64_t key path setter for AssetDeliveryState.availability : AssetDeliveryState(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 160);

  return v2(v3);
}

uint64_t AssetDeliveryState.availability.setter()
{
  v2 = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_88_0(v2, v3);
  *(v1 + 16) = v0;
}

uint64_t (*AssetDeliveryState.availability.modify())(uint64_t a1)
{
  v0 = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_74(v0);
  return DataCollectorInternal.invocationProcessor.modify;
}

uint64_t key path setter for AssetDeliveryState.subscriptions : AssetDeliveryState(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 184);

  return v2(v3);
}

uint64_t key path setter for AssetDeliveryState.assetScheduler : AssetDeliveryState(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  outlined init with copy of AppleIntelligenceReportingMobileAssetLog?();
  return (*(**a2 + 208))(v5);
}

uint64_t AssetDeliveryState.assetScheduler.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_assetScheduler;
  OUTLINED_FUNCTION_10_0(v1 + OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_assetScheduler, v5);
  outlined assign with take of AppleIntelligenceReportingMobileAssetLog?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t key path setter for AssetDeliveryState.assetSetConfiguration : AssetDeliveryState(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 232);

  return v2(v3);
}

uint64_t key path setter for AssetDeliveryState.assetJob : AssetDeliveryState(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 256);

  return v2(v3);
}

uint64_t key path setter for AssetDeliveryState.assetUpdate : AssetDeliveryState(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 280);

  return v2(v3);
}

uint64_t key path setter for AssetDeliveryState.assetSecureUpdate : AssetDeliveryState(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 304);

  return v2(v3);
}

uint64_t key path setter for AssetDeliveryState.atomicInstanceState : AssetDeliveryState(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 328);

  return v2(v3);
}

uint64_t key path setter for AssetDeliveryState.uafSubscriptionState : AssetDeliveryState(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 352);

  return v2(v3);
}

uint64_t AssetDeliveryState.assetSetConfiguration.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_88_0(v2 + *a2, a2);
  *(v2 + v4) = a1;
}

uint64_t AssetDeliveryState.copy()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  OUTLINED_FUNCTION_13(v1);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_136();
  v4 = type metadata accessor for AssetDeliveryState(v3);
  v5 = OUTLINED_FUNCTION_117_0(v4);
  AssetDeliveryState.init()();
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 152))();
  OUTLINED_FUNCTION_43_0();
  (*(v7 + 160))();
  OUTLINED_FUNCTION_4_1();
  (*(v8 + 176))();
  OUTLINED_FUNCTION_43_0();
  (*(v9 + 184))();
  OUTLINED_FUNCTION_4_1();
  (*(v10 + 200))();
  OUTLINED_FUNCTION_43_0();
  (*(v11 + 208))(v0);
  OUTLINED_FUNCTION_4_1();
  (*(v12 + 224))();
  OUTLINED_FUNCTION_43_0();
  (*(v13 + 232))();
  OUTLINED_FUNCTION_4_1();
  (*(v14 + 248))();
  OUTLINED_FUNCTION_107_0();
  (*(v15 + 256))();
  OUTLINED_FUNCTION_141();
  (*(v16 + 272))();
  OUTLINED_FUNCTION_107_0();
  (*(v17 + 280))();
  OUTLINED_FUNCTION_141();
  (*(v18 + 296))();
  OUTLINED_FUNCTION_107_0();
  (*(v19 + 304))();
  OUTLINED_FUNCTION_141();
  (*(v20 + 320))();
  OUTLINED_FUNCTION_107_0();
  (*(v21 + 328))();
  OUTLINED_FUNCTION_141();
  (*(v22 + 344))();
  OUTLINED_FUNCTION_107_0();
  (*(v23 + 352))();
  return v5;
}

void AssetDeliveryState.handleEvent(event:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_142();
  type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v5 = v4 - v3;
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  OUTLINED_FUNCTION_0();
  v35 = v7;
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  OUTLINED_FUNCTION_0();
  v34 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  type metadata accessor for AppleIntelligenceBiomeEvent(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_134();
  outlined init with copy of AppleIntelligenceBiomeEvent(v1, v0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_81_0();
      v22 = OUTLINED_FUNCTION_85_0();
      v23(v22);
      OUTLINED_FUNCTION_58_0();
      (*(v24 + 384))(v20);
      v25 = OUTLINED_FUNCTION_86_0();
      goto LABEL_7;
    case 2u:
      OUTLINED_FUNCTION_125_0();
      v29(v10, v0, v36);
      OUTLINED_FUNCTION_58_0();
      (*(v30 + 400))(v10);
      (*(v35 + 8))(v10, v36);
      break;
    case 4u:
      OUTLINED_FUNCTION_125_0();
      v27(v16, v0, v11);
      OUTLINED_FUNCTION_58_0();
      (*(v28 + 392))(v16);
      (*(v34 + 8))(v16, v11);
      break;
    case 5u:
      OUTLINED_FUNCTION_81_0();
      v31 = OUTLINED_FUNCTION_51_0();
      v32(v31);
      OUTLINED_FUNCTION_58_0();
      (*(v33 + 416))(v5);
      v25 = OUTLINED_FUNCTION_51_0();
LABEL_7:
      v26(v25);
      break;
    default:
      outlined destroy of AppleIntelligenceBiomeEvent(v0);
      break;
  }

  OUTLINED_FUNCTION_19();
}

void AssetDeliveryState.handleAvailabilityEvent(event:)()
{
  OUTLINED_FUNCTION_18();
  v83 = v0;
  v3 = v2;
  v85 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_38_0();
  v82 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_93_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
  OUTLINED_FUNCTION_13(v14);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  v17 = v80 - v16;
  v18 = type metadata accessor for AppleIntelligenceReportingUseCase();
  OUTLINED_FUNCTION_0();
  v84 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_13_0();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v80 - v25;
  AppleIntelligenceReportingAvailabilityLog.event.getter();
  v27 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  v28 = OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_34_0(v28, v29, v27);
  if (v35)
  {
    outlined destroy of NSObject?(v1, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v18);
LABEL_6:
    outlined destroy of NSObject?(v17, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
    goto LABEL_7;
  }

  AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
  OUTLINED_FUNCTION_31_1();
  v33 = OUTLINED_FUNCTION_105_0();
  v34(v33);
  OUTLINED_FUNCTION_34_0(v17, 1, v18);
  if (v35)
  {
    goto LABEL_6;
  }

  v45 = v84;
  OUTLINED_FUNCTION_125_0();
  v46 = OUTLINED_FUNCTION_124_0();
  v47(v46);
  v48 = AppleIntelligenceReportingUseCase.useCaseIdentifier.getter();
  v80[2] = v49;
  v81 = v48;
  if (v49)
  {
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_1(&one-time initialization token for general);
    }

    v50 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_65(v50, static Logging.general);
    (*(v45 + 16))(v23, v26, v18);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = OUTLINED_FUNCTION_76_0();
      v87[0] = OUTLINED_FUNCTION_84();
      *v53 = 136315138;
      AppleIntelligenceReportingUseCase.loggingDescription.getter();
      v80[0] = v54;
      v56 = v55;
      v57 = OUTLINED_FUNCTION_129(v84);
      v58(v57);
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80[0], v56, v87);

      *(v53 + 4) = v59;
      _os_log_impl(&dword_227F43000, v51, v52, "AssetDeliveryState processing AvailabilityEvent for %s", v53, 0xCu);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_11();
    }

    else
    {

      v66 = OUTLINED_FUNCTION_129(v45);
      v60 = v67(v66);
    }

    v69 = v82;
    v68 = v83;
    v70 = (*(*v83 + 152))(v60);
    if (*(v70 + 16) && (v71 = specialized __RawDictionaryStorage.find<A>(_:)(v81), (v72 & 1) != 0))
    {
      v73 = *(*(v70 + 56) + 8 * v71);
    }

    else
    {
      v73 = MEMORY[0x277D84F90];
    }

    (*(v5 + 16))(v69, v3, v85);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v73 = v78;
    }

    v74 = *(v73 + 16);
    if (v74 >= *(v73 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v73 = v79;
    }

    *(v73 + 16) = v74 + 1;
    (*(v5 + 32))(v73 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v74, v69, v85);
    v75 = (*(*v68 + 168))(v87);
    v77 = v76;
    swift_isUniquelyReferenced_nonNull_native();
    v86 = *v77;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v73, v81);
    *v77 = v86;

    v75(v87, 0);
    (v80[1])(v26, v18);
    goto LABEL_30;
  }

  (*(v45 + 8))(v26, v18);
LABEL_7:
  v36 = v85;
  if (one-time initialization token for general != -1)
  {
    OUTLINED_FUNCTION_1(&one-time initialization token for general);
  }

  v37 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_65(v37, static Logging.general);
  (*(v5 + 16))(v9, v3, v36);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_76_0();
    v41 = OUTLINED_FUNCTION_84();
    v87[0] = v41;
    *v40 = 136315138;
    AppleIntelligenceReportingAvailabilityLog.json()();
    if (v42)
    {

      OUTLINED_FUNCTION_128();
    }

    v61 = OUTLINED_FUNCTION_86_0();
    v62(v61);
    v63 = OUTLINED_FUNCTION_99_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v65);
    OUTLINED_FUNCTION_127();

    *(v40 + 4) = v5 + 8;
    _os_log_impl(&dword_227F43000, v38, v39, "Received availability asset log event missing asset delivery metadata: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  else
  {

    v43 = OUTLINED_FUNCTION_86_0();
    v44(v43);
  }

LABEL_30:
  OUTLINED_FUNCTION_19();
}

void AppleIntelligenceReportingUseCase.loggingDescription.getter()
{
  OUTLINED_FUNCTION_18();
  v36 = type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v5 = v4 - v3;
  AppleIntelligenceReportingUseCase.useCaseIdentifier.getter();
  v6 = AppleIntelligenceReportingUseCase.parameters.getter();
  v7 = *(v6 + 16);
  if (v7)
  {
    v38 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = 0;
    v34 = v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v35 = v6;
    while (v8 < *(v6 + 16))
    {
      (*(v1 + 16))(v5, v34 + *(v1 + 72) * v8, v36);
      v9 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v9 = 0x656D616E206F6E3CLL;
        v11 = 0xE90000000000003ELL;
      }

      MEMORY[0x22AAAE070](v9, v11);

      v12 = OUTLINED_FUNCTION_78();
      MEMORY[0x22AAAE070](v12);
      v13 = AppleIntelligenceReportingAsset.version.getter();
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v13 = 0x756C6176206F6E3CLL;
        v15 = 0xEA00000000003E65;
      }

      MEMORY[0x22AAAE070](v13, v15);

      v16 = OUTLINED_FUNCTION_124_0();
      v17(v16);
      v19 = *(v38 + 16);
      v18 = *(v38 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1);
      }

      ++v8;
      *(v38 + 16) = v19 + 1;
      v20 = v38 + 16 * v19;
      *(v20 + 32) = 0;
      *(v20 + 40) = 0xE000000000000000;
      v6 = v35;
      if (v7 == v8)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_78();
    BidirectionalCollection<>.joined(separator:)();

    if ((AppleIntelligenceReportingUseCase.mode.getter() & 0x100000000) != 0)
    {
      v22 = 0xEE003E65646F6D20;
      v37 = 0x676E697373696D3CLL;
    }

    else
    {
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
    }

    OUTLINED_FUNCTION_13_2();
    AppleIntelligenceReportingUseCase.locale.getter();
    OUTLINED_FUNCTION_13_2();
    if (v24)
    {
      v26 = v23;
    }

    else
    {
      v26 = 0xD000000000000010;
    }

    if (v24)
    {
      v27 = v24;
    }

    else
    {
      v27 = v25;
    }

    AppleIntelligenceReportingUseCase.countryCode.getter();
    OUTLINED_FUNCTION_13_2();
    v28 = OUTLINED_FUNCTION_78();
    MEMORY[0x22AAAE070](v28);
    v29 = OUTLINED_FUNCTION_77_0();
    MEMORY[0x22AAAE070](v29);

    v30 = OUTLINED_FUNCTION_78();
    MEMORY[0x22AAAE070](v30);
    MEMORY[0x22AAAE070](v37, v22);

    v31 = OUTLINED_FUNCTION_78();
    MEMORY[0x22AAAE070](v31);
    MEMORY[0x22AAAE070](v26, v27);

    v32 = OUTLINED_FUNCTION_78();
    MEMORY[0x22AAAE070](v32);
    v33 = OUTLINED_FUNCTION_51_0();
    MEMORY[0x22AAAE070](v33);

    OUTLINED_FUNCTION_19();
  }
}

void AssetDeliveryState.handleModelCatalogEvent(event:)()
{
  OUTLINED_FUNCTION_18();
  v145 = v1;
  OUTLINED_FUNCTION_142();
  type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  OUTLINED_FUNCTION_0();
  v152 = v6;
  v153 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_38_0();
  v147 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_55_0();
  v143 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateV0I6ActionOSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateV0I6ActionOSgMR);
  v16 = OUTLINED_FUNCTION_13(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v144 = v17;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_38_0();
  v146 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateVSgMd, "ZG");
  OUTLINED_FUNCTION_13(v20);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_59_0();
  type metadata accessor for AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState();
  OUTLINED_FUNCTION_0();
  v148 = v23;
  v149 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2();
  v150 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v25);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_93_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
  OUTLINED_FUNCTION_13(v27);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_134();
  v29 = type metadata accessor for AppleIntelligenceReportingUseCase();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_13_0();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_96_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_38_0();
  v151 = v38;
  v154 = v1;
  AppleIntelligenceReportingModelCatalogLog.event.getter();
  v39 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  v40 = OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_34_0(v40, v41, v39);
  if (v49)
  {
    v42 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v43 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v44 = v2;
  }

  else
  {
    AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
    OUTLINED_FUNCTION_31_1();
    v45 = OUTLINED_FUNCTION_105_0();
    v46(v45);
    v47 = OUTLINED_FUNCTION_70_0();
    v50 = OUTLINED_FUNCTION_34_0(v47, v48, v29);
    if (!v49)
    {
      MEMORY[0x28223BE20](v50);
      v141[-2] = v0;
      v58 = v29;
      static Buildable.with(_:)();
      v141[0] = *(v31 + 8);
      v141[1] = v31 + 8;
      (v141[0])(v0, v29);
      OUTLINED_FUNCTION_81_0();
      v59 = v151;
      v142 = v58;
      v60(v151, v4, v58);
      v61 = v154;
      AppleIntelligenceReportingModelCatalogLog.modelCatalogSubscriptionEventState.getter();
      v62 = OUTLINED_FUNCTION_66();
      v63 = v149;
      OUTLINED_FUNCTION_34_0(v62, v64, v149);
      if (v65)
      {
        outlined destroy of NSObject?(v3, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateVSgMd, "ZG");
        if (one-time initialization token for general != -1)
        {
          OUTLINED_FUNCTION_1(&one-time initialization token for general);
        }

        v66 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_65(v66, static Logging.general);
        v68 = v152;
        v67 = v153;
        v69 = v147;
        (*(v152 + 16))(v147, v61, v153);
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.fault.getter();
        if (OUTLINED_FUNCTION_36_0(v71))
        {
          v72 = OUTLINED_FUNCTION_76_0();
          v73 = OUTLINED_FUNCTION_84();
          v156[0] = v73;
          *v72 = 136315138;
          v74 = AppleIntelligenceReportingModelCatalogLog.json()();
          if (v75)
          {
            OUTLINED_FUNCTION_45_0();
            object = 0x8000000227FB5910;
          }

          else
          {
            object = v74._object;
          }

          (*(v68 + 8))(v147, v67);
          v132 = OUTLINED_FUNCTION_82_0();
          v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, object, v133);

          *(v72 + 4) = v134;
          _os_log_impl(&dword_227F43000, v70, v3, "Received model catalog asset log event missing subscription state: %s", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v73);
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_11();
        }

        else
        {

          (*(v68 + 8))(v69, v67);
        }

        v135 = v59;
      }

      else
      {
        (*(v148 + 32))(v150, v3, v63);
        if (one-time initialization token for general != -1)
        {
          OUTLINED_FUNCTION_1(&one-time initialization token for general);
        }

        v83 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_65(v83, static Logging.general);
        v84 = OUTLINED_FUNCTION_86_0();
        v85 = v142;
        v86(v84);
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.info.getter();
        if (OUTLINED_FUNCTION_36_0(v88))
        {
          v89 = v85;
          v90 = OUTLINED_FUNCTION_76_0();
          v91 = OUTLINED_FUNCTION_84();
          OUTLINED_FUNCTION_130(v91);
          *v90 = 136315138;
          AppleIntelligenceReportingUseCase.loggingDescription.getter();
          OUTLINED_FUNCTION_61_0();
          (v141[0])(v35, v89);
          v92 = OUTLINED_FUNCTION_82_0();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v63, v93);
          OUTLINED_FUNCTION_62_0();
          v63 = v149;

          *(v90 + 4) = v35;
          _os_log_impl(&dword_227F43000, v87, v3, "AssetDeliveryState processing ModelCatalog event for %s", v90, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v61);
          v61 = v154;
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_11();
        }

        else
        {

          v94 = (v141[0])(v35, v85);
        }

        v96 = v145;
        v95 = v146;
        v97 = (*(*v145 + 176))(v94);
        v98 = specialized Dictionary.subscript.getter(v59, v97);

        v100 = v152;
        v99 = v153;
        if (!v98)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abC15ModelCatalogLogVGMd, &_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abC15ModelCatalogLogVGMR);
          OUTLINED_FUNCTION_109_0();
          v101 = swift_allocObject();
          v102 = MEMORY[0x277D84F90];
          *(v101 + 16) = 0;
          *(v101 + 24) = v102;
        }

        AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.action.getter();
        v103 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction();
        OUTLINED_FUNCTION_19_2(v95);
        if (!v49)
        {
          outlined init with copy of AppleIntelligenceReportingMobileAssetLog?();
          v104 = *(v103 - 8);
          v105 = OUTLINED_FUNCTION_31_0();
          v107 = v106(v105);
          if (v107 == *MEMORY[0x277D1F5E8])
          {
            OUTLINED_FUNCTION_43_0();
            if ((*(v108 + 104))())
            {
              OUTLINED_FUNCTION_43_0();
              v110 = *(v109 + 144);

              v111 = v110(v156);
              MEMORY[0x22AAAE0D0]();
              OUTLINED_FUNCTION_132();
              specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              v61 = v154;
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v111(v156, 0);
              v63 = v149;
              OUTLINED_FUNCTION_43_0();
              (*(v112 + 112))(0);
            }

            v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC7SessionCy_0B15PlatformLibrary0abC15ModelCatalogLogVGMd, &_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC7SessionCy_0B15PlatformLibrary0abC15ModelCatalogLogVGMR);
            OUTLINED_FUNCTION_117_0(v113);
            specialized AssetDeliveryState.Session.init()();
            v114 = v143;
            (*(v100 + 16))(v143, v61, v99);
            OUTLINED_FUNCTION_39_0();
            __swift_storeEnumTagSinglePayload(v115, v116, v117, v99);
            OUTLINED_FUNCTION_4_1();
            (*(v118 + 120))(v114);
            OUTLINED_FUNCTION_23();
            __swift_storeEnumTagSinglePayload(v119, v120, v121, v99);
            OUTLINED_FUNCTION_4_1();
            (*(v122 + 144))(v114);
            OUTLINED_FUNCTION_43_0();
            v124 = *(v123 + 112);

            v124(v125);

            v95 = v146;
          }

          else if (v107 == *MEMORY[0x277D1F5E0])
          {
            OUTLINED_FUNCTION_43_0();
            if ((*(v126 + 104))())
            {
              v127 = v143;
              (*(v100 + 16))(v143, v61, v99);
              OUTLINED_FUNCTION_39_0();
              __swift_storeEnumTagSinglePayload(v128, v129, v130, v99);
              OUTLINED_FUNCTION_1_2();
              (*(v131 + 144))(v127);
            }
          }

          else
          {
            (*(v104 + 8))(v144, v103);
          }
        }

        outlined destroy of NSObject?(v95, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateV0I6ActionOSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateV0I6ActionOSgMR);
        v136 = *(*v96 + 192);

        v137 = v136(v156);
        v139 = v138;
        swift_isUniquelyReferenced_nonNull_native();
        v155 = *v139;
        v140 = v151;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
        *v139 = v155;
        v137(v156, 0);

        (*(v148 + 8))(v150, v63);
        v135 = v140;
      }

      (v141[0])(v135, v142);
      goto LABEL_44;
    }

    v42 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd;
    v43 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR;
    v44 = v0;
  }

  outlined destroy of NSObject?(v44, v42, v43);
  if (one-time initialization token for general != -1)
  {
    OUTLINED_FUNCTION_1(&one-time initialization token for general);
  }

  v51 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_65(v51, static Logging.general);
  (*(v152 + 16))(v9, v154, v153);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.fault.getter();
  if (OUTLINED_FUNCTION_36_0(v53))
  {
    OUTLINED_FUNCTION_76_0();
    v54 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_130(v54);
    *v31 = 136315138;
    AppleIntelligenceReportingModelCatalogLog.json()();
    if (v55)
    {
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_64_0();
    }

    else
    {
      OUTLINED_FUNCTION_61_0();
    }

    v77 = OUTLINED_FUNCTION_120_0();
    v78(v77);
    v79 = OUTLINED_FUNCTION_82_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v4, v80);
    OUTLINED_FUNCTION_62_0();

    *(v31 + 4) = v9;
    OUTLINED_FUNCTION_18_2(&dword_227F43000, v81, v82, "Received model catalog asset log event missing use-case: %s");
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_40();
  }

  else
  {

    v56 = OUTLINED_FUNCTION_120_0();
    v57(v56);
  }

LABEL_44:
  OUTLINED_FUNCTION_19();
}

uint64_t AssetDeliveryState.Accumulator.__allocating_init()()
{
  OUTLINED_FUNCTION_109_0();
  v0 = swift_allocObject();
  AssetDeliveryState.Accumulator.init()(v0, v1, v2, v3);
  return v0;
}

uint64_t AssetDeliveryState.Session.__allocating_init()()
{
  v0 = swift_allocObject();
  AssetDeliveryState.Session.init()();
  return v0;
}

void AssetDeliveryState.handleMobileAssetEvent(event:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance();
  OUTLINED_FUNCTION_0();
  v133 = v3;
  v134 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v129 = v4;
  OUTLINED_FUNCTION_12();
  v141 = type metadata accessor for AppleIntelligenceReportingEventType();
  OUTLINED_FUNCTION_0();
  v137 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v136 = v7;
  OUTLINED_FUNCTION_12();
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector();
  OUTLINED_FUNCTION_0();
  v138 = v9;
  v139 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v135 = v10;
  OUTLINED_FUNCTION_12();
  v11 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_13_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v126 - v19;
  v132 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
  OUTLINED_FUNCTION_0();
  v128 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v127 = v23;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_38_0();
  v131 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  OUTLINED_FUNCTION_13(v26);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_55_0();
  v130 = v28;
  v29 = OUTLINED_FUNCTION_12();
  v30 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.ReportingEventType(v29);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2();
  v140 = v32;
  if (one-time initialization token for general != -1)
  {
    OUTLINED_FUNCTION_1(&one-time initialization token for general);
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logging.general);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v126 = v17;
    *v36 = 0;
    _os_log_impl(&dword_227F43000, v34, v35, "AssetDeliveryState processing MobileAsset event", v36, 2u);
    v17 = v126;
    OUTLINED_FUNCTION_11();
  }

  v37 = v140;
  AppleIntelligenceReportingMobileAssetLog.reportingEventType.getter(v38, v39, v40, v41, v42, v43, v44, v45, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v139 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV05assetI0_AC5eventAA0daE9EventTypeO0kM0tMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV05assetI0_AC5eventAA0daE9EventTypeO0kM0tMR) + 64);
      v75 = v128;
      OUTLINED_FUNCTION_125_0();
      v76 = v131;
      v77 = v132;
      v78 = OUTLINED_FUNCTION_67_0();
      v79(v78);
      v80 = OUTLINED_FUNCTION_14_4();
      v81(v80);
      (*(v75 + 16))(v127, v76, v77);
      (*(v13 + 16))(v130, v20, v11);
      OUTLINED_FUNCTION_39_0();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v11);
      OUTLINED_FUNCTION_138();
      v85 = OUTLINED_FUNCTION_108_0();
      v87 = v86(v85);
      v88 = OUTLINED_FUNCTION_77_0();
      specialized Dictionary.subscript.setter(v88, v89);
      v90 = OUTLINED_FUNCTION_92_0();
      v87(v90);
      v91 = OUTLINED_FUNCTION_90_0();
      v92(v91);
      (*(v75 + 8))(v131, v132);
      (*(v137 + 8))(v37 + v139, v141);
      break;
    case 2u:
    case 3u:
    case 4u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV5asset_AC5eventAA0daE9EventTypeO0kM0tMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV5asset_AC5eventAA0daE9EventTypeO0kM0tMR);
      v54 = OUTLINED_FUNCTION_21_2();
      v55(v54);
      v56 = OUTLINED_FUNCTION_14_4();
      v57(v56);
      v58 = OUTLINED_FUNCTION_15_3();
      v59(v58);
      OUTLINED_FUNCTION_83_0();
      v60 = OUTLINED_FUNCTION_108_0();
      v140 = v61(v60);
      v134 = v62;
      OUTLINED_FUNCTION_83_0();
      v63 = v30;
      v65 = *(v64 + 408);
      OUTLINED_FUNCTION_53_0();
      lazy protocol witness table accessor for type AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance and conformance AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance(v66, v67, MEMORY[0x277D1F598]);
      v68 = OUTLINED_FUNCTION_85_0();
      v69 = v17;
      v70 = v139;
      v65(v68);
      v71 = OUTLINED_FUNCTION_92_0();
      v140(v71);
      (*(v63 + 8))(v1, v141);
      v72 = OUTLINED_FUNCTION_90_0();
      v73(v72);
      v74 = v138;
      goto LABEL_10;
    case 5u:
      v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV06atomicJ0_AC5eventAA0daE9EventTypeO0lN0tMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV06atomicJ0_AC5eventAA0daE9EventTypeO0lN0tMR) + 48);
      v94 = v129;
      (*(v133 + 32))();
      v95 = OUTLINED_FUNCTION_14_4();
      v96(v95);
      v97 = OUTLINED_FUNCTION_15_3();
      v98(v97);
      OUTLINED_FUNCTION_83_0();
      v99 = OUTLINED_FUNCTION_108_0();
      v101 = v100(v99);
      v139 = v102;
      v140 = v101;
      OUTLINED_FUNCTION_83_0();
      v103 = v30;
      v105 = *(v104 + 408);
      OUTLINED_FUNCTION_52_0();
      lazy protocol witness table accessor for type AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance and conformance AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance(v106, v107, MEMORY[0x277D1F570]);
      v108 = OUTLINED_FUNCTION_85_0();
      v69 = v94;
      v70 = v134;
      v105(v108);
      v109 = OUTLINED_FUNCTION_92_0();
      v140(v109);
      (*(v103 + 8))(v93, v141);
      v110 = OUTLINED_FUNCTION_90_0();
      v111(v110);
      v74 = v133;
LABEL_10:
      (*(v74 + 8))(v69, v70);
      break;
    case 6u:
      v112 = OUTLINED_FUNCTION_51_0();
      v113(v112);
      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.fault.getter();
      if (OUTLINED_FUNCTION_36_0(v115))
      {
        OUTLINED_FUNCTION_76_0();
        v116 = OUTLINED_FUNCTION_44_0();
        OUTLINED_FUNCTION_130(v116);
        *v37 = 136315138;
        AppleIntelligenceReportingMobileAssetLog.json()();
        if (v117)
        {

          OUTLINED_FUNCTION_128();
        }

        v118 = OUTLINED_FUNCTION_86_0();
        v119(v118);
        v120 = OUTLINED_FUNCTION_99_0();
        v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v121, v122);

        *(v37 + 4) = v123;
        OUTLINED_FUNCTION_18_2(&dword_227F43000, v124, v125, "Received mobile asset log event with unknown reporting event type: %s");
        OUTLINED_FUNCTION_16_3();
        OUTLINED_FUNCTION_40();
      }

      else
      {

        (*(v13 + 8))(v17, v11);
      }

      break;
    default:
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV5event_AA0daE9EventTypeO0iK0tMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV5event_AA0daE9EventTypeO0iK0tMR);
      v47 = v1;
      v48 = *(v46 + 48);
      v49 = v130;
      (*(v13 + 16))(v130, v47, v11);
      OUTLINED_FUNCTION_39_0();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v11);
      OUTLINED_FUNCTION_138();
      (*(v53 + 208))(v49);
      (*(v137 + 8))(v37 + v48, v141);
      (*(v13 + 8))(v37, v11);
      break;
  }

  OUTLINED_FUNCTION_19();
}

void AppleIntelligenceReportingMobileAssetLog.reportingEventType.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v24;
  a20 = v25;
  v369 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceVSgMR);
  OUTLINED_FUNCTION_13(v27);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_17_3(v29);
  v333 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance();
  OUTLINED_FUNCTION_0();
  v329 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_33_1(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG19AtomicInstanceStateVSgMd, ">H");
  OUTLINED_FUNCTION_13(v33);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_17_3(v35);
  v340 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState();
  OUTLINED_FUNCTION_0();
  v336 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_33_1(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11SecureStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11SecureStateVSgMR);
  OUTLINED_FUNCTION_13(v39);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_17_3(v41);
  v346 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState();
  OUTLINED_FUNCTION_0();
  v343 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_33_1(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11UpdateStateVSgMd, ">H");
  OUTLINED_FUNCTION_13(v45);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_17_3(v47);
  updated = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetUpdateState();
  OUTLINED_FUNCTION_0();
  v347 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_33_1(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorVSgMR);
  v52 = OUTLINED_FUNCTION_13(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v55);
  v357 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector();
  OUTLINED_FUNCTION_0();
  v349 = v56;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_33_1(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMR);
  OUTLINED_FUNCTION_13(v61);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_55_0();
  v360 = v63;
  OUTLINED_FUNCTION_12();
  v361 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState();
  OUTLINED_FUNCTION_0();
  v356 = v64;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_2();
  v355 = v66;
  OUTLINED_FUNCTION_12();
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  OUTLINED_FUNCTION_0();
  v370 = v68;
  v371 = v67;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_7();
  v368 = v69;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_96();
  v366 = v71;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_38_0();
  v354 = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMR);
  OUTLINED_FUNCTION_13(v78);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_55_0();
  v358 = v80;
  OUTLINED_FUNCTION_12();
  v359 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
  OUTLINED_FUNCTION_0();
  v351 = v81;
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_33_1(v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG21SetConfigurationStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG21SetConfigurationStateVSgMR);
  OUTLINED_FUNCTION_13(v84);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_59_0();
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState();
  OUTLINED_FUNCTION_0();
  v363 = v87;
  v364 = v86;
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_2();
  v362 = v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14SchedulerStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14SchedulerStateVSgMR);
  OUTLINED_FUNCTION_13(v89);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v90);
  v92 = &v327 - v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA18ReportingEventTypeOSgMd, &_s27IntelligencePlatformLibrary05AppleA18ReportingEventTypeOSgMR);
  OUTLINED_FUNCTION_13(v93);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_134();
  v95 = type metadata accessor for AppleIntelligenceReportingEventType();
  OUTLINED_FUNCTION_0();
  v365 = v96;
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_2();
  v367 = v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v99);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_93_0();
  v101 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  OUTLINED_FUNCTION_0();
  v103 = v102;
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_1_0();
  v107 = v106 - v105;
  v108 = countAndFlagsBits;
  AppleIntelligenceReportingMobileAssetLog.event.getter();
  v109 = OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_34_0(v109, v110, v101);
  if (v125)
  {
    outlined destroy of NSObject?(v22, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_1(&one-time initialization token for general);
    }

    v111 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_65(v111, static Logging.general);
    v112 = v370;
    v113 = v371;
    OUTLINED_FUNCTION_63_0();
    v114 = OUTLINED_FUNCTION_105_0();
    v115(v114);
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.fault.getter();
    if (OUTLINED_FUNCTION_36_0(v117))
    {
      OUTLINED_FUNCTION_76_0();
      v118 = OUTLINED_FUNCTION_44_0();
      v372 = v118;
      OUTLINED_FUNCTION_22_3(4.8149e-34);
      v119 = AppleIntelligenceReportingMobileAssetLog.json()();
      if (v120)
      {
        OUTLINED_FUNCTION_45_0();
        object = 0x8000000227FB5910;
      }

      else
      {
        countAndFlagsBits = v119._countAndFlagsBits;
        object = v119._object;
      }

      (*(v112 + 8))(v368, v113);
      v169 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v372);

      *(v103 + 4) = v169;
      OUTLINED_FUNCTION_18_2(&dword_227F43000, v170, v171, "Received mobile asset log event missing asset delivery metadata: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v118);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_40();
    }

    else
    {

      v135 = OUTLINED_FUNCTION_42_0();
      v136(v135);
    }
  }

  else
  {
    OUTLINED_FUNCTION_81_0();
    v368 = v101;
    v122(v107, v22, v101);
    AppleIntelligenceReportingAssetDeliveryEvent.type.getter();
    v123 = OUTLINED_FUNCTION_70_0();
    OUTLINED_FUNCTION_34_0(v123, v124, v95);
    if (!v125)
    {
      v137 = v95;
      v366 = v107;
      v328 = v103;
      v138 = *(v365 + 32);
      v139 = v367;
      v138(v367, v20, v137);
      v140 = countAndFlagsBits;
      AppleIntelligenceReportingMobileAssetLog.mobileAssetSchedulerEventState.getter();
      v141 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState();
      OUTLINED_FUNCTION_34_0(v92, 1, v141);
      if (!v142)
      {
        v165 = OUTLINED_FUNCTION_5_7();
        v166(v165);
        outlined destroy of NSObject?(v92, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14SchedulerStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14SchedulerStateVSgMR);
        v167 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV5event_AA0daE9EventTypeO0iK0tMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV5event_AA0daE9EventTypeO0iK0tMR) + 48);
        v168 = v369;
        (*(v370 + 16))(v369, countAndFlagsBits, v371);
        v138(v168 + v167, v139, v137);
        goto LABEL_41;
      }

      outlined destroy of NSObject?(v92, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14SchedulerStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14SchedulerStateVSgMR);
      AppleIntelligenceReportingMobileAssetLog.mobileAssetSetConfigurationEventState.getter();
      v143 = OUTLINED_FUNCTION_66();
      v144 = v364;
      OUTLINED_FUNCTION_34_0(v143, v145, v364);
      v146 = v369;
      if (v125)
      {
        v359 = v137;
        outlined destroy of NSObject?(v23, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG21SetConfigurationStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG21SetConfigurationStateVSgMR);
        v147 = v360;
        AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetJobEventState.getter();
        v148 = OUTLINED_FUNCTION_84_0();
        v144 = v361;
        OUTLINED_FUNCTION_34_0(v148, v149, v361);
        v150 = v370;
        if (v125)
        {
          outlined destroy of NSObject?(v147, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMR);
          OUTLINED_FUNCTION_100_0();
          AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetUpdateEventState.getter();
          v151 = OUTLINED_FUNCTION_66();
          v152 = updated;
          OUTLINED_FUNCTION_34_0(v151, v153, updated);
          v154 = v371;
          if (v125)
          {
            outlined destroy of NSObject?(v23, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11UpdateStateVSgMd, ">H");
            OUTLINED_FUNCTION_100_0();
            AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetSecureEventState.getter();
            v155 = OUTLINED_FUNCTION_66();
            v144 = v346;
            OUTLINED_FUNCTION_34_0(v155, v156, v346);
            if (v125)
            {
              outlined destroy of NSObject?(v23, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11SecureStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11SecureStateVSgMR);
              v157 = v339;
              AppleIntelligenceReportingMobileAssetLog.mobileAssetAtomicInstanceEventState.getter();
              v158 = OUTLINED_FUNCTION_79_0();
              v159 = v340;
              OUTLINED_FUNCTION_34_0(v158, v160, v340);
              if (v125)
              {
                (*(v365 + 8))(v367, v359);
                v161 = OUTLINED_FUNCTION_5_7();
                v162(v161);
                outlined destroy of NSObject?(v157, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG19AtomicInstanceStateVSgMd, ">H");
                goto LABEL_41;
              }

              OUTLINED_FUNCTION_100_0();
              v275 = v335;
              v276 = OUTLINED_FUNCTION_67_0();
              v277(v276);
              v278 = v332;
              AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState.atomicInstance.getter();
              v279 = OUTLINED_FUNCTION_79_0();
              OUTLINED_FUNCTION_34_0(v279, v280, v333);
              if (!v281)
              {
                (*(v23 + 8))(v275, v159);
                v305 = OUTLINED_FUNCTION_5_7();
                v306(v305);
                v307 = v140;
                v308 = *(v329 + 32);
                v309 = OUTLINED_FUNCTION_67_0();
                v308(v309);
                v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV06atomicJ0_AC5eventAA0daE9EventTypeO0lN0tMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV06atomicJ0_AC5eventAA0daE9EventTypeO0lN0tMR);
                v311 = *(v310 + 48);
                v368 = *(v310 + 64);
                v312 = OUTLINED_FUNCTION_99_0();
                v308(v312);
                (*(v150 + 16))(v146 + v311, v307, v371);
                v138(v146 + v368, v367, v359);
                goto LABEL_41;
              }

              v282 = v159;
              outlined destroy of NSObject?(v278, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceVSgMR);
              if (one-time initialization token for general != -1)
              {
                OUTLINED_FUNCTION_1(&one-time initialization token for general);
              }

              v283 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_65(v283, static Logging.general);
              OUTLINED_FUNCTION_63_0();
              v284 = OUTLINED_FUNCTION_51_0();
              v285 = v371;
              v286(v284);
              v287 = Logger.logObject.getter();
              v288 = static os_log_type_t.fault.getter();
              v289 = OUTLINED_FUNCTION_36_0(v288);
              v186 = v367;
              if (!v289)
              {

                v318 = OUTLINED_FUNCTION_42_0();
                v319(v318);
                OUTLINED_FUNCTION_47_0();
                v240 = v335;
                v267 = v282;
                goto LABEL_67;
              }

              OUTLINED_FUNCTION_76_0();
              v290 = OUTLINED_FUNCTION_44_0();
              OUTLINED_FUNCTION_80_0(v290);
              OUTLINED_FUNCTION_22_3(4.8149e-34);
              AppleIntelligenceReportingMobileAssetLog.json()();
              if (v291)
              {
                OUTLINED_FUNCTION_45_0();
                OUTLINED_FUNCTION_64_0();
              }

              else
              {
                OUTLINED_FUNCTION_61_0();
              }

              (*(v150 + 8))(v330, v285);
              OUTLINED_FUNCTION_60();
              OUTLINED_FUNCTION_62_0();

              *(v278 + 4) = v275;
              OUTLINED_FUNCTION_18_2(&dword_227F43000, v323, v324, "Received mobile asset log atomic instance event missing atomic instance: %s");
              OUTLINED_FUNCTION_16_3();
              OUTLINED_FUNCTION_40();

              OUTLINED_FUNCTION_47_0();
              v316 = v335;
              v322 = &v369;
            }

            else
            {
              OUTLINED_FUNCTION_100_0();
              v249 = v342;
              v250 = (*(v248 + 32))(v342);
              v251 = v338;
              MEMORY[0x22AAADA10](v250);
              v252 = OUTLINED_FUNCTION_84_0();
              v253 = v357;
              OUTLINED_FUNCTION_34_0(v252, v254, v357);
              if (!v255)
              {
                v294 = OUTLINED_FUNCTION_67_0();
                v295(v294);
                v296 = OUTLINED_FUNCTION_5_7();
                v297(v296);
                v368 = v140;
                OUTLINED_FUNCTION_89_0();
                (v140)(v331, v251, v253);
                v298 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV5asset_AC5eventAA0daE9EventTypeO0kM0tMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV5asset_AC5eventAA0daE9EventTypeO0kM0tMR) + 48);
                v299 = OUTLINED_FUNCTION_77_0();
                v140(v299);
                (*(v370 + 16))(v146 + v298, v368, v371);
                v300 = OUTLINED_FUNCTION_94_0();
                (v138)(v300);
                goto LABEL_41;
              }

              outlined destroy of NSObject?(v251, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorVSgMR);
              if (one-time initialization token for general != -1)
              {
                OUTLINED_FUNCTION_1(&one-time initialization token for general);
              }

              v256 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_65(v256, static Logging.general);
              v257 = v370;
              OUTLINED_FUNCTION_63_0();
              v258 = OUTLINED_FUNCTION_51_0();
              v259(v258);
              v260 = Logger.logObject.getter();
              v261 = static os_log_type_t.fault.getter();
              v262 = OUTLINED_FUNCTION_36_0(v261);
              v263 = v154;
              v186 = v367;
              if (!v262)
              {

                v303 = OUTLINED_FUNCTION_42_0();
                v304(v303);
                OUTLINED_FUNCTION_47_0();
                v240 = v342;
                goto LABEL_66;
              }

              OUTLINED_FUNCTION_76_0();
              v264 = OUTLINED_FUNCTION_44_0();
              OUTLINED_FUNCTION_80_0(v264);
              OUTLINED_FUNCTION_22_3(4.8149e-34);
              AppleIntelligenceReportingMobileAssetLog.json()();
              if (v265)
              {
                OUTLINED_FUNCTION_45_0();
                OUTLINED_FUNCTION_64_0();
              }

              else
              {
                OUTLINED_FUNCTION_61_0();
              }

              (*(v257 + 8))(v334, v263);
              OUTLINED_FUNCTION_60();
              OUTLINED_FUNCTION_62_0();

              *(v144 + 4) = v249;
              OUTLINED_FUNCTION_18_2(&dword_227F43000, v320, v321, "Received mobile asset log asset secure event missing asset specifier: %s");
              OUTLINED_FUNCTION_16_3();
              OUTLINED_FUNCTION_40();

              OUTLINED_FUNCTION_47_0();
              v316 = v342;
              v322 = &a11;
            }

            v317 = *(v322 - 32);
          }

          else
          {
            v221 = v347;
            OUTLINED_FUNCTION_81_0();
            v222 = v348;
            v223(v348, v23, v152);
            OUTLINED_FUNCTION_100_0();
            MEMORY[0x22AAADA30]();
            v224 = OUTLINED_FUNCTION_66();
            v225 = v357;
            OUTLINED_FUNCTION_34_0(v224, v226, v357);
            if (!v227)
            {
              (*(v221 + 8))(v222, v152);
              v268 = OUTLINED_FUNCTION_5_7();
              v269(v268);
              OUTLINED_FUNCTION_89_0();
              v270 = v337;
              v140(v337);
              v271 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV5asset_AC5eventAA0daE9EventTypeO0kM0tMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV5asset_AC5eventAA0daE9EventTypeO0kM0tMR) + 48);
              (v140)(v146, v270, v225);
              (*(v370 + 16))(v146 + v271, v140, v371);
              v272 = OUTLINED_FUNCTION_94_0();
              (v138)(v272);
              goto LABEL_41;
            }

            outlined destroy of NSObject?(v23, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorVSgMR);
            if (one-time initialization token for general != -1)
            {
              OUTLINED_FUNCTION_1(&one-time initialization token for general);
            }

            v228 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_65(v228, static Logging.general);
            v229 = v370;
            OUTLINED_FUNCTION_63_0();
            v230 = OUTLINED_FUNCTION_51_0();
            v231(v230);
            v232 = Logger.logObject.getter();
            v233 = static os_log_type_t.fault.getter();
            v234 = OUTLINED_FUNCTION_36_0(v233);
            v235 = v154;
            v186 = v367;
            if (!v234)
            {

              v292 = OUTLINED_FUNCTION_123_0();
              v293(v292);
              (*(v221 + 8))(v348, v152);
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_76_0();
            v236 = OUTLINED_FUNCTION_44_0();
            OUTLINED_FUNCTION_80_0(v236);
            OUTLINED_FUNCTION_22_3(4.8149e-34);
            AppleIntelligenceReportingMobileAssetLog.json()();
            if (v237)
            {
              OUTLINED_FUNCTION_45_0();
              OUTLINED_FUNCTION_64_0();
            }

            else
            {
              OUTLINED_FUNCTION_61_0();
            }

            (*(v229 + 8))(v341, v371);
            OUTLINED_FUNCTION_60();
            OUTLINED_FUNCTION_62_0();

            *(v221 + 4) = v235;
            OUTLINED_FUNCTION_18_2(&dword_227F43000, v313, v314, "Received mobile asset log asset update event missing asset specifier: %s");
            OUTLINED_FUNCTION_16_3();
            OUTLINED_FUNCTION_40();

            OUTLINED_FUNCTION_47_0();
            v316 = v348;
            v317 = v152;
          }

          v315(v316, v317);
LABEL_91:
          (*(v365 + 8))(v367, v359);
          goto LABEL_92;
        }

        v193 = v355;
        v192 = v356;
        v194 = (*(v356 + 32))(v355, v147, v144);
        v195 = v352;
        MEMORY[0x22AAADA70](v194);
        v196 = OUTLINED_FUNCTION_84_0();
        v197 = v357;
        OUTLINED_FUNCTION_34_0(v196, v198, v357);
        if (!v199)
        {
          (*(v192 + 8))(v193, v144);
          v242 = OUTLINED_FUNCTION_5_7();
          v243(v242);
          v368 = v140;
          OUTLINED_FUNCTION_89_0();
          (v140)(v345, v195, v197);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV5asset_AC5eventAA0daE9EventTypeO0kM0tMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV5asset_AC5eventAA0daE9EventTypeO0kM0tMR);
          v244 = OUTLINED_FUNCTION_77_0();
          v140(v244);
          v245 = OUTLINED_FUNCTION_131();
          v246(v245);
          v247 = OUTLINED_FUNCTION_94_0();
          (v138)(v247);
          goto LABEL_41;
        }

        outlined destroy of NSObject?(v195, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorVSgMR);
        if (one-time initialization token for general != -1)
        {
          OUTLINED_FUNCTION_1(&one-time initialization token for general);
        }

        v200 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_65(v200, static Logging.general);
        OUTLINED_FUNCTION_63_0();
        v201 = v344;
        v202 = OUTLINED_FUNCTION_85_0();
        v203 = v371;
        v204(v202);
        v205 = Logger.logObject.getter();
        v206 = static os_log_type_t.fault.getter();
        v207 = OUTLINED_FUNCTION_36_0(v206);
        v186 = v367;
        if (v207)
        {
          OUTLINED_FUNCTION_76_0();
          v208 = OUTLINED_FUNCTION_44_0();
          OUTLINED_FUNCTION_80_0(v208);
          *v144 = 136315138;
          AppleIntelligenceReportingMobileAssetLog.json()();
          if (v209)
          {
            OUTLINED_FUNCTION_45_0();
            OUTLINED_FUNCTION_64_0();
          }

          else
          {
            OUTLINED_FUNCTION_61_0();
          }

          (*(v150 + 8))(v201, v371);
          OUTLINED_FUNCTION_60();
          OUTLINED_FUNCTION_62_0();

          *(v144 + 4) = v201;
          OUTLINED_FUNCTION_18_2(&dword_227F43000, v301, v302, "Received mobile asset log asset job event missing asset specifier: %s");
          OUTLINED_FUNCTION_16_3();
          OUTLINED_FUNCTION_40();

          (*(v356 + 8))(v355, v361);
          goto LABEL_91;
        }

        (*(v150 + 8))(v201, v203);
        v240 = v355;
        v241 = v356;
      }

      else
      {
        v361 = v138;
        OUTLINED_FUNCTION_139();
        v173 = v172;
        v174();
        v175 = v358;
        AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.assetSet.getter();
        v176 = v359;
        OUTLINED_FUNCTION_34_0(v175, 1, v359);
        v178 = v370;
        if (!v177)
        {
          v210 = OUTLINED_FUNCTION_67_0();
          v211(v210);
          v212 = OUTLINED_FUNCTION_5_7();
          v213(v212);
          v368 = v108;
          v214 = *(v351 + 32);
          v215 = v350;
          v214(v350, v175, v176);
          v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV05assetI0_AC5eventAA0daE9EventTypeO0kM0tMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV05assetI0_AC5eventAA0daE9EventTypeO0kM0tMR);
          v217 = v176;
          v218 = *(v216 + 64);
          v214(v146, v215, v217);
          v219 = OUTLINED_FUNCTION_131();
          v220(v219);
          (v361)(v146 + v218, v367, v137);
          goto LABEL_41;
        }

        v359 = v137;
        outlined destroy of NSObject?(v175, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMR);
        if (one-time initialization token for general != -1)
        {
          OUTLINED_FUNCTION_1(&one-time initialization token for general);
        }

        v179 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_65(v179, static Logging.general);
        OUTLINED_FUNCTION_63_0();
        v180 = OUTLINED_FUNCTION_51_0();
        v181 = v371;
        v182(v180);
        v183 = Logger.logObject.getter();
        v184 = static os_log_type_t.fault.getter();
        v185 = OUTLINED_FUNCTION_36_0(v184);
        v186 = v367;
        if (v185)
        {
          OUTLINED_FUNCTION_76_0();
          v187 = OUTLINED_FUNCTION_44_0();
          OUTLINED_FUNCTION_80_0(v187);
          OUTLINED_FUNCTION_22_3(4.8149e-34);
          AppleIntelligenceReportingMobileAssetLog.json()();
          if (v188)
          {
            OUTLINED_FUNCTION_45_0();
            OUTLINED_FUNCTION_64_0();
          }

          else
          {
            OUTLINED_FUNCTION_61_0();
          }

          (*(v178 + 8))(v354, v181);
          OUTLINED_FUNCTION_60();
          OUTLINED_FUNCTION_62_0();

          *(v144 + 4) = v173;
          OUTLINED_FUNCTION_18_2(&dword_227F43000, v273, v274, "Received mobile asset log set configuration event missing asset set: %s");
          OUTLINED_FUNCTION_16_3();
          OUTLINED_FUNCTION_40();

          (*(v363 + 8))(v362, v364);
          goto LABEL_91;
        }

        v238 = OUTLINED_FUNCTION_42_0();
        v239(v238);
        v240 = v362;
        v241 = v363;
      }

      v266 = *(v241 + 8);
LABEL_66:
      v267 = v144;
LABEL_67:
      v266(v240, v267);
LABEL_68:
      (*(v365 + 8))(v186, v359);
LABEL_92:
      v325 = OUTLINED_FUNCTION_5_7();
      v326(v325);
      goto LABEL_41;
    }

    outlined destroy of NSObject?(v20, &_s27IntelligencePlatformLibrary05AppleA18ReportingEventTypeOSgMd, &_s27IntelligencePlatformLibrary05AppleA18ReportingEventTypeOSgMR);
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_1(&one-time initialization token for general);
    }

    v126 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_65(v126, static Logging.general);
    v127 = v370;
    v128 = v371;
    OUTLINED_FUNCTION_63_0();
    v129 = OUTLINED_FUNCTION_105_0();
    v130(v129);
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.fault.getter();
    if (OUTLINED_FUNCTION_36_0(v132))
    {
      v328 = v103;
      OUTLINED_FUNCTION_76_0();
      v133 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_80_0(v133);
      OUTLINED_FUNCTION_22_3(4.8149e-34);
      AppleIntelligenceReportingMobileAssetLog.json()();
      if (v134)
      {
        OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_64_0();
      }

      else
      {
        OUTLINED_FUNCTION_61_0();
      }

      (*(v127 + 8))(v366, v128);
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_62_0();

      *(v103 + 4) = v107;
      OUTLINED_FUNCTION_18_2(&dword_227F43000, v189, v190, "Received mobile asset log event missing event metadata type: %s");
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_40();

      OUTLINED_FUNCTION_47_0();
      v191(v107, v368);
    }

    else
    {

      v163 = OUTLINED_FUNCTION_42_0();
      v164(v163);
      (*(v103 + 8))(v107, v368);
    }
  }

LABEL_41:
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.ReportingEventType(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_19();
}