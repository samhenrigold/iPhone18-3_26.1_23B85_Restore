unint64_t type metadata accessor for RBSProcessHandle()
{
  result = lazy cache variable for type metadata for RBSProcessHandle;
  if (!lazy cache variable for type metadata for RBSProcessHandle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RBSProcessHandle);
  }

  return result;
}

id specialized @nonobjc RBSProcessHandle.__allocating_init(for:)(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t objectdestroy_39Tm()
{

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t getEnumTagSinglePayload for ExtendedAttributeUtils(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExtendedAttributeUtils(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExtendedAttributeUtils and conformance ExtendedAttributeUtils()
{
  result = lazy protocol witness table cache variable for type ExtendedAttributeUtils and conformance ExtendedAttributeUtils;
  if (!lazy protocol witness table cache variable for type ExtendedAttributeUtils and conformance ExtendedAttributeUtils)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtendedAttributeUtils and conformance ExtendedAttributeUtils);
  }

  return result;
}

unint64_t specialized ExtendedAttributeUtils.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExtendedAttributeUtils.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ModelOrchestrator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelOrchestrator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26GenerativeAssistantActions17ModelOrchestratorV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
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

uint64_t getEnumTagSinglePayload for ModelOrchestrator.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for ModelOrchestrator.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ModelOrchestrator.Error(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 1656) = v8;
  *(v9 + 1648) = v24;
  *(v9 + 1640) = a8;
  *(v9 + 1545) = a7;
  *(v9 + 1632) = a5;
  *(v9 + 1624) = a4;
  *(v9 + 1616) = a3;
  *(v9 + 1608) = a2;
  *(v9 + 1600) = a1;
  v11 = type metadata accessor for GATError();
  *(v9 + 1664) = v11;
  *(v9 + 1672) = *(v11 - 8);
  *(v9 + 1680) = swift_task_alloc();
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v9 + 1688) = v12;
  *(v9 + 1696) = *(v12 - 8);
  *(v9 + 1704) = swift_task_alloc();
  *(v9 + 1712) = swift_task_alloc();
  v13 = type metadata accessor for ContinuousClock();
  *(v9 + 1720) = v13;
  *(v9 + 1728) = *(v13 - 8);
  *(v9 + 1736) = swift_task_alloc();
  *(v9 + 1744) = type metadata accessor for UploadableMedia.Source(0);
  *(v9 + 1752) = swift_task_alloc();
  *(v9 + 1760) = type metadata accessor for UploadableImageData(0);
  *(v9 + 1768) = swift_task_alloc();
  type metadata accessor for UploadableDocumentData(0);
  *(v9 + 1776) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
  *(v9 + 1784) = swift_task_alloc();
  *(v9 + 1792) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v9 + 1800) = swift_task_alloc();
  *(v9 + 1808) = type metadata accessor for ModelResponse(0);
  *(v9 + 1816) = swift_task_alloc();
  *(v9 + 1824) = swift_task_alloc();
  type metadata accessor for GenerativeAssistantFeatureFlagManager();
  *(v9 + 1832) = swift_task_alloc();
  v14 = type metadata accessor for GenerativeRequestMetadata(0);
  *(v9 + 1840) = v14;
  v15 = *(v14 - 8);
  *(v9 + 1848) = v15;
  *(v9 + 1856) = *(v15 + 64);
  *(v9 + 1864) = swift_task_alloc();
  *(v9 + 1872) = swift_task_alloc();
  v16 = *(a6 + 112);
  *(v9 + 112) = *(a6 + 96);
  *(v9 + 128) = v16;
  *(v9 + 144) = *(a6 + 128);
  v17 = *(a6 + 48);
  *(v9 + 48) = *(a6 + 32);
  *(v9 + 64) = v17;
  v18 = *(a6 + 80);
  *(v9 + 80) = *(a6 + 64);
  *(v9 + 96) = v18;
  v19 = *(a6 + 16);
  *(v9 + 16) = *a6;
  *(v9 + 32) = v19;
  *(v9 + 1880) = type metadata accessor for MainActor();
  *(v9 + 1888) = static MainActor.shared.getter();
  v20 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 1896) = v20;
  *(v9 + 1904) = v21;

  return MEMORY[0x2822009F8](ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v20, v21);
}

uint64_t ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)()
{
  v1 = *(v0 + 1840);
  v17 = *(v0 + 1648);
  v15 = *(v0 + 1656);
  v16 = *(v0 + 1640);
  v2 = *(v0 + 1624);
  v3 = type metadata accessor for CallEmergencyServicesTool(0);
  v4 = swift_allocObject();
  *(v0 + 1912) = v4;
  v4[2] = 0xD000000000000017;
  v4[3] = 0x800000024FE33A40;
  v4[4] = 0xD000000000000B1ELL;
  v4[5] = 0x800000024FE33A60;
  v4[7] = 0;
  v4[8] = 0;
  v4[6] = 0;
  *(v0 + 1920) = OBJC_IVAR____TtC26GenerativeAssistantActions25CallEmergencyServicesTool___observationRegistrar;
  ObservationRegistrar.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation7Tooling_pGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation7Tooling_pGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24FE1A560;
  *(v5 + 56) = v3;
  *(v5 + 64) = lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool, &protocol conformance descriptor for CallEmergencyServicesTool);
  *(v5 + 32) = v4;
  v6 = type metadata accessor for UseDeviceAssistantTool(0);
  v7 = swift_allocObject();
  *(v0 + 1928) = v7;
  *(v7 + 16) = 0xD000000000000014;
  *(v7 + 24) = 0x800000024FE34580;
  *(v7 + 32) = 0x100000000000019ALL;
  *(v7 + 40) = 0x800000024FE345A0;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v0 + 1936) = OBJC_IVAR____TtC26GenerativeAssistantActions22UseDeviceAssistantTool___observationRegistrar;

  ObservationRegistrar.init()();
  v8 = v1[11];
  *(v0 + 1548) = v8;
  v9 = (v2 + v1[13]);
  v10 = *v9;
  *(v0 + 1944) = *v9;
  v11 = v9[1];
  *(v0 + 1952) = v11;
  v12 = *(v2 + 40);
  *(v0 + 1546) = v12;
  v13 = *(v2 + v1[12]);
  *(v0 + 1547) = v13;
  if ((specialized static VisualIntelligenceUtils.isVisualIntelligenceCamera(appBundleID:)(v16, v17) & 1) == 0 && (specialized static VisualIntelligenceUtils.isVisualIntelligenceSession(sessionID:directInvocationClientID:)(v10, v11, v2 + v8) & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v15 + 80), *(*(v0 + 1656) + 104));
    if (!(v12 & 1 | ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isBoomerangEnabled.getter() & 1) == 0) | v13 & 1))
    {

      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 2, 1, v5);
      *(v0 + 1264) = v6;
      *(v0 + 1272) = lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool, &protocol conformance descriptor for UseDeviceAssistantTool);
      *(v0 + 1240) = v7;
      *(v5 + 16) = 2;
      outlined init with take of TypedValueAsyncResolvable((v0 + 1240), v5 + 72);
    }
  }

  *(v0 + 1960) = v5;
  *(v0 + 1968) = swift_allocObject();

  return MEMORY[0x2822009F8](ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), 0, 0);
}

{
  v38 = v0;
  v37 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1547);
  v34 = *(v0 + 1546);
  v2 = *(v0 + 1952);
  v3 = *(v0 + 1944);
  v4 = *(v0 + 1548);
  v5 = *(v0 + 1840);
  v6 = *(v0 + 1656);
  v7 = *(v0 + 1648);
  v8 = *(v0 + 1640);
  v9 = *(v0 + 1624);
  __swift_project_boxed_opaque_existential_1((v6 + 40), *(v6 + 64));
  v36 = *(v9 + 41);
  v10 = DefaultPromptFactory.createPrompt(appBundleID:interactionMode:directInvocationClientId:sessionID:partnerInfo:isExplicitRequest:isFirstRequest:)(v8, v7, &v36, v9 + v4, v3, v2, v9 + *(v5 + 40), v34, v1);
  v11 = *(v0 + 1960);
  v28 = *(v0 + 1546);
  v29 = *(v0 + 1547);
  v27 = *(v0 + 1952);
  v12 = *(v0 + 1944);
  v13 = *(v0 + 1548);
  v30 = *(v0 + 1872);
  v31 = *(v0 + 1832);
  v14 = *(v0 + 1648);
  v15 = *(v0 + 1640);
  v35 = *(v0 + 1545);
  v16 = *(v0 + 1624);
  v32 = v17;
  v33 = v10;
  __swift_project_boxed_opaque_existential_1((v6 + 40), *(v6 + 64));
  v36 = *(v9 + 41);
  v18 = DefaultPromptFactory.getTemplateID(appBundleID:interactionMode:directInvocationClientId:sessionID:isExplicitRequest:isFirstRequest:)(v15, v14, &v36, v16 + v13, v12, v27, v28, v29);
  v20 = v19;
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v16, v30, type metadata accessor for GenerativeRequestMetadata);

  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v21 = type metadata accessor for DefaultModelSession(0);
  swift_allocObject();
  v22 = DefaultModelSession.init(systemPrompt:tools:requestMetadata:enableBrowserTool:templateID:featureFlagManager:)(v33, v32, v11, v30, v35, v18, v20, v31);
  *(v0 + 1976) = 0;
  v23 = *(v0 + 1968);
  *(v0 + 1304) = v21;
  *(v0 + 1312) = &protocol witness table for DefaultModelSession;
  *(v0 + 1280) = v22;
  outlined init with take of TypedValueAsyncResolvable((v0 + 1280), v23 + 16);
  v24 = *(v0 + 1904);
  v25 = *(v0 + 1896);

  return MEMORY[0x2822009F8](ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v25, v24);
}

{
  v70 = v0;
  v69[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1968);
  v2 = *(v0 + 1800);
  v3 = swift_allocObject();
  *(v0 + 1984) = v3;
  *(v3 + 16) = 0;
  v4 = type metadata accessor for TaskPriority();
  *(v0 + 1992) = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  *(v0 + 2000) = v6;
  *(v0 + 2008) = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  (v6)(v2, 1, 1, v4);
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v0 + 2016) = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC26GenerativeAssistantActions13ModelResponseV_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v8);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v10 = *(GenerativeExperiencesSession.registeredDocuments()() + 16);

  if (v10)
  {
    v66 = v0 + 560;
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v67 = v6;
    v68 = v3;
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.modelInteraction);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v69[0] = v15;
      *v14 = 136315394;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v69);
      *(v14 + 12) = 2080;
      *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v69);
      _os_log_impl(&dword_24FD67000, v12, v13, "%s.%s Session has registered documents, skipping registration", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v15, -1, -1);
      MEMORY[0x253057F40](v14, -1, -1);
    }

    v65 = &async function pointer to partial apply for closure #7 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
LABEL_13:
    v23 = *(v0 + 1968);
    v24 = *(v0 + 1864);
    v25 = *(v0 + 1856);
    v26 = *(v0 + 1848);
    v64 = *(v0 + 1800);
    v27 = *(v0 + 1624);
    v28 = *(v0 + 1616);
    v29 = *(v0 + 1608);
    v67();
    _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v27, v24, type metadata accessor for GenerativeRequestMetadata);

    outlined init with copy of IntentCallbackManager(v0 + 16, v66);
    v30 = static MainActor.shared.getter();
    v31 = (*(v26 + 80) + 64) & ~*(v26 + 80);
    v32 = swift_allocObject();
    v32[2] = v30;
    v32[3] = MEMORY[0x277D85700];
    v32[4] = v68;
    v32[5] = v23;
    v32[6] = v29;
    v32[7] = v28;
    outlined init with take of GeneratedResponse(v24, v32 + v31, type metadata accessor for GenerativeRequestMetadata);
    v33 = v32 + ((v25 + v31 + 7) & 0xFFFFFFFFFFFFFFF8);
    v34 = *(v0 + 128);
    *(v33 + 6) = *(v0 + 112);
    *(v33 + 7) = v34;
    *(v33 + 16) = *(v0 + 144);
    v35 = *(v0 + 64);
    *(v33 + 2) = *(v0 + 48);
    *(v33 + 3) = v35;
    v36 = *(v0 + 96);
    *(v33 + 4) = *(v0 + 80);
    *(v33 + 5) = v36;
    v37 = *(v0 + 32);
    *v33 = *(v0 + 16);
    *(v33 + 1) = v37;
    v38 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC26GenerativeAssistantActions13ModelResponseV_Tt2g5(0, 0, v64, v65, v32);

    *(v0 + 1592) = v38;
    *(v0 + 2088) = v38;
    v39 = *(v0 + 1928);
    swift_getKeyPath();
    v40 = swift_task_alloc();
    *(v40 + 16) = v39;
    *(v40 + 24) = v38;
    *(v0 + 1584) = v39;
    *(v0 + 2096) = lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool, &protocol conformance descriptor for UseDeviceAssistantTool);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_beginAccess();
    static Clock<>.continuous.getter();
    *(v0 + 1552) = xmmword_24FE1C1D0;
    *(v0 + 1528) = 0u;
    *(v0 + 1544) = 1;

    return MEMORY[0x2822009F8](ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), 0, 0);
  }

  v16 = *(v0 + 1792);
  outlined init with copy of Date?(*(v0 + 1632), v16, &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
  v17 = type metadata accessor for UploadableMedia(0);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
  {
    v66 = v0 + 968;
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v67 = v6;
    v68 = v3;
    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.modelInteraction);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v69[0] = v22;
      *v21 = 136315394;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v69);
      *(v21 + 12) = 2080;
      *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v69);
      _os_log_impl(&dword_24FD67000, v19, v20, "%s.%s Generating for text creation.", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v22, -1, -1);
      MEMORY[0x253057F40](v21, -1, -1);
    }

    v65 = &async function pointer to partial apply for closure #6 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
    goto LABEL_13;
  }

  v41 = *(v0 + 1792);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = *(v0 + 1968);
    outlined init with take of GeneratedResponse(v41, *(v0 + 1776), type metadata accessor for UploadableDocumentData);
    v43 = *(v0 + 128);
    *(v0 + 384) = *(v0 + 112);
    *(v0 + 400) = v43;
    *(v0 + 416) = *(v0 + 144);
    v44 = *(v0 + 64);
    *(v0 + 320) = *(v0 + 48);
    *(v0 + 336) = v44;
    v45 = *(v0 + 96);
    *(v0 + 352) = *(v0 + 80);
    *(v0 + 368) = v45;
    v46 = *(v0 + 32);
    *(v0 + 288) = *(v0 + 16);
    *(v0 + 304) = v46;
    v47 = swift_task_alloc();
    *(v0 + 2032) = v47;
    *v47 = v0;
    v47[1] = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
    v48 = *(v0 + 1776);

    return ModelOrchestrator.registerDocument(_:_:_:)(v42 + 16, v48, v0 + 288);
  }

  else
  {
    v49 = *(v0 + 1768);
    v50 = *(v0 + 1760);
    v51 = *(v0 + 1752);
    outlined init with take of GeneratedResponse(v41, v49, type metadata accessor for UploadableImageData);
    _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v49 + *(v50 + 28), v51, type metadata accessor for UploadableMedia.Source);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of OnScreenContent.Document?(*(v0 + 1752), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
    }

    v52 = *(v0 + 1768);
    v53 = specialized static GATSchemaGATMediaType.from(fileExtension:)();

    if (ModelOrchestrator.shouldUploadImage(image:)(v52))
    {
      v54 = *(v0 + 1968);
      v55 = *(v0 + 128);
      *(v0 + 792) = *(v0 + 112);
      *(v0 + 808) = v55;
      *(v0 + 824) = *(v0 + 144);
      v56 = *(v0 + 64);
      *(v0 + 728) = *(v0 + 48);
      *(v0 + 744) = v56;
      v57 = *(v0 + 96);
      *(v0 + 760) = *(v0 + 80);
      *(v0 + 776) = v57;
      v58 = *(v0 + 32);
      *(v0 + 696) = *(v0 + 16);
      *(v0 + 712) = v58;
      v59 = swift_task_alloc();
      *(v0 + 2048) = v59;
      *v59 = v0;
      v59[1] = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
      v60 = *(v0 + 1768);

      return ModelOrchestrator.registerImage(_:_:_:_:)(v60, v53, v54 + 16, v0 + 696);
    }

    else
    {
      v61 = swift_task_alloc();
      *(v0 + 2064) = v61;
      *v61 = v0;
      v61[1] = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
      v62 = *(v0 + 1768);

      return ModelOrchestrator.prepareInlineImage(_:_:)(v62, v53);
    }
  }
}

{

  swift_deallocUninitializedObject();

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 2040) = v0;

  if (v0)
  {

    v3 = *(v2 + 1904);
    v4 = *(v2 + 1896);
    v5 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  else
  {
    v3 = *(v2 + 1904);
    v4 = *(v2 + 1896);
    v5 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = *(v0 + 1984);
  v2 = *(v0 + 1968);
  v3 = *(v0 + 1864);
  v4 = *(v0 + 1856);
  v5 = *(v0 + 1848);
  v22 = *(v0 + 1800);
  v23 = *(v0 + 1776);
  v6 = *(v0 + 1624);
  v7 = *(v0 + 1616);
  v8 = *(v0 + 1608);
  (*(v0 + 2000))();
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v6, v3, type metadata accessor for GenerativeRequestMetadata);

  outlined init with copy of IntentCallbackManager(v0 + 16, v0 + 152);
  v9 = static MainActor.shared.getter();
  v10 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v9;
  v11[3] = v12;
  v11[4] = v1;
  v11[5] = v2;
  v11[6] = v8;
  v11[7] = v7;
  outlined init with take of GeneratedResponse(v3, v11 + v10, type metadata accessor for GenerativeRequestMetadata);
  v13 = v11 + ((v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = *(v0 + 128);
  *(v13 + 6) = *(v0 + 112);
  *(v13 + 7) = v14;
  *(v13 + 16) = *(v0 + 144);
  v15 = *(v0 + 64);
  *(v13 + 2) = *(v0 + 48);
  *(v13 + 3) = v15;
  v16 = *(v0 + 96);
  *(v13 + 4) = *(v0 + 80);
  *(v13 + 5) = v16;
  v17 = *(v0 + 32);
  *v13 = *(v0 + 16);
  *(v13 + 1) = v17;
  v18 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC26GenerativeAssistantActions13ModelResponseV_Tt2g5(0, 0, v22, &async function pointer to partial apply for closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v11);
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v23, type metadata accessor for UploadableDocumentData);

  *(v0 + 1592) = v18;
  *(v0 + 2088) = v18;
  v19 = *(v0 + 1928);
  swift_getKeyPath();
  v20 = swift_task_alloc();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  *(v0 + 1584) = v19;
  *(v0 + 2096) = lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool, &protocol conformance descriptor for UseDeviceAssistantTool);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_beginAccess();
  static Clock<>.continuous.getter();
  *(v0 + 1552) = xmmword_24FE1C1D0;
  *(v0 + 1528) = 0u;
  *(v0 + 1544) = 1;

  return MEMORY[0x2822009F8](ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), 0, 0);
}

{
  v2 = *v1;
  *(*v1 + 2056) = v0;

  if (v0)
  {

    v3 = *(v2 + 1904);
    v4 = *(v2 + 1896);
    v5 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  else
  {
    v3 = *(v2 + 1904);
    v4 = *(v2 + 1896);
    v5 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = *(v0 + 1984);
  v2 = *(v0 + 1968);
  v3 = *(v0 + 1864);
  v4 = *(v0 + 1856);
  v5 = *(v0 + 1848);
  v22 = *(v0 + 1800);
  v23 = *(v0 + 1768);
  v6 = *(v0 + 1624);
  v7 = *(v0 + 1616);
  v8 = *(v0 + 1608);
  (*(v0 + 2000))();
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v6, v3, type metadata accessor for GenerativeRequestMetadata);

  outlined init with copy of IntentCallbackManager(v0 + 16, v0 + 424);
  v9 = static MainActor.shared.getter();
  v10 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v9;
  v11[3] = v12;
  v11[4] = v1;
  v11[5] = v2;
  v11[6] = v8;
  v11[7] = v7;
  outlined init with take of GeneratedResponse(v3, v11 + v10, type metadata accessor for GenerativeRequestMetadata);
  v13 = v11 + ((v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = *(v0 + 128);
  *(v13 + 6) = *(v0 + 112);
  *(v13 + 7) = v14;
  *(v13 + 16) = *(v0 + 144);
  v15 = *(v0 + 64);
  *(v13 + 2) = *(v0 + 48);
  *(v13 + 3) = v15;
  v16 = *(v0 + 96);
  *(v13 + 4) = *(v0 + 80);
  *(v13 + 5) = v16;
  v17 = *(v0 + 32);
  *v13 = *(v0 + 16);
  *(v13 + 1) = v17;
  v18 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC26GenerativeAssistantActions13ModelResponseV_Tt2g5(0, 0, v22, &async function pointer to partial apply for closure #4 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v11);
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v23, type metadata accessor for UploadableImageData);

  *(v0 + 1592) = v18;
  *(v0 + 2088) = v18;
  v19 = *(v0 + 1928);
  swift_getKeyPath();
  v20 = swift_task_alloc();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  *(v0 + 1584) = v19;
  *(v0 + 2096) = lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool, &protocol conformance descriptor for UseDeviceAssistantTool);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_beginAccess();
  static Clock<>.continuous.getter();
  *(v0 + 1552) = xmmword_24FE1C1D0;
  *(v0 + 1528) = 0u;
  *(v0 + 1544) = 1;

  return MEMORY[0x2822009F8](ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), 0, 0);
}

{
  v1 = *(v0 + 2080);
  v2 = *(v0 + 1984);
  v3 = *(v0 + 1968);
  v4 = *(v0 + 1864);
  v5 = *(v0 + 1856);
  v6 = *(v0 + 1848);
  v24 = *(v0 + 1800);
  v25 = *(v0 + 1768);
  v7 = *(v0 + 1624);
  v8 = *(v0 + 1616);
  v23 = *(v0 + 1608);
  (*(v0 + 2000))();
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v7, v4, type metadata accessor for GenerativeRequestMetadata);

  outlined init with copy of IntentCallbackManager(v0 + 16, v0 + 832);
  v9 = v1;
  v10 = static MainActor.shared.getter();
  v11 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v10;
  v12[3] = v13;
  v12[4] = v2;
  v12[5] = v3;
  v12[6] = v23;
  v12[7] = v8;
  v12[8] = v9;
  outlined init with take of GeneratedResponse(v4, v12 + v11, type metadata accessor for GenerativeRequestMetadata);
  v14 = v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v15 = *(v0 + 128);
  *(v14 + 6) = *(v0 + 112);
  *(v14 + 7) = v15;
  *(v14 + 16) = *(v0 + 144);
  v16 = *(v0 + 64);
  *(v14 + 2) = *(v0 + 48);
  *(v14 + 3) = v16;
  v17 = *(v0 + 96);
  *(v14 + 4) = *(v0 + 80);
  *(v14 + 5) = v17;
  v18 = *(v0 + 32);
  *v14 = *(v0 + 16);
  *(v14 + 1) = v18;
  v19 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC26GenerativeAssistantActions13ModelResponseV_Tt2g5(0, 0, v24, &async function pointer to partial apply for closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v12);

  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v25, type metadata accessor for UploadableImageData);

  *(v0 + 1592) = v19;
  *(v0 + 2088) = v19;
  v20 = *(v0 + 1928);
  swift_getKeyPath();
  v21 = swift_task_alloc();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  *(v0 + 1584) = v20;
  *(v0 + 2096) = lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool, &protocol conformance descriptor for UseDeviceAssistantTool);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_beginAccess();
  static Clock<>.continuous.getter();
  *(v0 + 1552) = xmmword_24FE1C1D0;
  *(v0 + 1528) = 0u;
  *(v0 + 1544) = 1;

  return MEMORY[0x2822009F8](ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), 0, 0);
}

{
  v1 = v0[213];
  v2 = v0[212];
  v3 = v0[211];
  v4 = lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v5 = *(v2 + 8);
  v0[263] = v5;
  v0[264] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[265] = v6;
  *v6 = v0;
  v6[1] = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v7 = v0[215];
  v8 = v0[214];

  return MEMORY[0x2822008C8](v8, v0 + 191, v7, v4);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[263];
    v4 = v2[214];
    v5 = v2[211];

    v3(v4, v5);
    v6 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = v2[217];
    v10 = v2[216];
    v11 = v2[215];
    (v2[263])(v2[214], v2[211]);
    (*(v10 + 8))(v9, v11);
    v8 = v2[238];
    v7 = v2[237];
    v6 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v80 = v0;
  v79[1] = *MEMORY[0x277D85DE8];
  if ((*(*(v0 + 1984) + 16) & 1) == 0 && (swift_task_isCancelled() & 1) == 0)
  {
    static Clock<>.continuous.getter();
    *(v0 + 1552) = xmmword_24FE1C1D0;
    *(v0 + 1528) = 0u;
    *(v0 + 1544) = 1;

    return MEMORY[0x2822009F8](ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), 0, 0);
  }

  if ((swift_task_isCancelled() & 1) == 0)
  {
    v23 = swift_task_alloc();
    *(v0 + 2128) = v23;
    *v23 = v0;
    v23[1] = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
    v24 = *(v0 + 1816);
    v25 = *(v0 + 1656);

    return specialized ModelOrchestrator.convertError<A>(_:)(v24, v25, v0 + 1592);
  }

  static ModelResponse.emptyModelResponse()(*(v0 + 1824));
  v1 = *(v0 + 1912);
  swift_getKeyPath();
  *(v0 + 1576) = v1;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool, &protocol conformance descriptor for CallEmergencyServicesTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = *(v1 + 56);
    v4 = *(*(v0 + 1912) + 48);

    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.modelInteraction);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v79[0] = v9;
      *v8 = 136315650;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v79);
      *(v8 + 12) = 2080;
      *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v79);
      *(v8 + 22) = 2080;
      *(v0 + 1456) = v4;
      *(v0 + 1464) = v3;
      *(v0 + 1472) = v2;

      v10 = String.init<A>(describing:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v79);

      *(v8 + 24) = v12;
      _os_log_impl(&dword_24FD67000, v6, v7, "%s.%s Invoking callEmergencyServies Tool: %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v9, -1, -1);
      MEMORY[0x253057F40](v8, -1, -1);
    }

    v13 = *(v0 + 1680);
    v14 = *(v0 + 1672);
    v15 = *(v0 + 1664);
    *v13 = EmergencyServicesInvocation.EmergencyService.rawValue.getter(v4);
    v13[1] = v16;
    (*(v14 + 104))(v13, *MEMORY[0x277D0D718], v15);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v17 = GATError.errorCode.getter();
    if (v17 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v17 <= 0x7FFFFFFF)
    {
      v77 = *(v0 + 1824);
      v18 = *(v0 + 1680);
      v19 = *(v0 + 1672);
      v20 = *(v0 + 1664);
      SELFUtils.recordRequestFailed(code:domain:)(v17, 4);
      lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728], MEMORY[0x277D0D730]);
      swift_allocError();
      (*(v19 + 32))(v21, v18, v20);

      swift_willThrow();

      _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v77, type metadata accessor for ModelResponse);

      v22 = *(v0 + 8);
LABEL_43:

      return v22();
    }

    __break(1u);
    goto LABEL_48;
  }

  v27 = *(v0 + 1928);
  swift_getKeyPath();
  *(v0 + 1568) = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = *(v27 + 64);
  if (v28)
  {
    v29 = *(v0 + 1928);
    v30 = *(v0 + 1824);
    v31 = *(v0 + 1616);
    v32 = *(v0 + 1608);
    v33 = *(v29 + 72);
    v34 = *(v29 + 80);
    v35 = *(v29 + 56);
    *(v0 + 1320) = *(v29 + 48) & 1;
    *(v0 + 1328) = v35;
    *(v0 + 1336) = v28;
    *(v0 + 1344) = v33;
    *(v0 + 1352) = v34;

    ModelOrchestrator.populateDeviceAssistantInfo(_:_:_:)(v32, v31, (v0 + 1320), v30);
  }

  if (one-time initialization token for modelInteraction != -1)
  {
LABEL_48:
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  *(v0 + 2144) = __swift_project_value_buffer(v36, static Logger.modelInteraction);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v79[0] = v40;
    *v39 = 136315650;
    *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v79);
    *(v39 + 12) = 2080;
    *(v39 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v79);
    *(v39 + 22) = 2080;
    swift_beginAccess();
    v41 = type metadata accessor for GeneratedResponse.RichContentEntity(0);

    v43 = MEMORY[0x2530570A0](v42, v41);
    v45 = v44;

    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v79);

    *(v39 + 24) = v46;
    _os_log_impl(&dword_24FD67000, v37, v38, "%s.%s Received response %s", v39, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v40, -1, -1);
    MEMORY[0x253057F40](v39, -1, -1);
  }

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v79[0] = v50;
    *v49 = 136315650;
    *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v79);
    *(v49 + 12) = 2080;
    *(v49 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v79);
    *(v49 + 22) = 2080;
    swift_beginAccess();

    v52 = MEMORY[0x2530570A0](v51, &type metadata for Attribution);
    v54 = v53;

    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v79);

    *(v49 + 24) = v55;
    _os_log_impl(&dword_24FD67000, v47, v48, "%s.%s Received attribution %s", v49, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v50, -1, -1);
    MEMORY[0x253057F40](v49, -1, -1);
  }

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = *(v0 + 1824);
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v79[0] = v60;
    *v59 = 136315650;
    *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v79);
    *(v59 + 12) = 2080;
    *(v59 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v79);
    *(v59 + 22) = 1024;
    swift_beginAccess();
    v61 = *(v58 + 24);
    v62 = v61 != 2 && (v61 & 1) != 0;
    *(v59 + 24) = v62;
    _os_log_impl(&dword_24FD67000, v56, v57, "%s.%s Received isRequestingUserInput %{BOOL}d", v59, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v60, -1, -1);
    MEMORY[0x253057F40](v59, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v63 = *(v0 + 1824);
  v64 = *(v0 + 1808);
  v65 = static SELFUtils.shared;
  swift_beginAccess();
  v66 = (v63 + *(v64 + 56));
  v68 = *v66;
  v67 = v66[1];
  *(v0 + 2152) = v67;

  v69 = String.count.getter();

  if ((v69 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_50:
    __break(1u);
  }

  if (HIDWORD(v69))
  {
    goto LABEL_50;
  }

  v70 = *(v0 + 1824);
  v71 = &v65[OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_generativeResultCharactersCount];
  swift_beginAccess();
  *v71 = v69;
  v71[4] = 0;
  v72 = *(v70 + 24);

  if (v72 == 2 || (v72 & 1) == 0)
  {
    v75 = *(v0 + 1824);
    v76 = *(v0 + 1600);

    _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v75, v76, type metadata accessor for ModelResponse);

    _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(*(v0 + 1824), type metadata accessor for ModelResponse);

    v22 = *(v0 + 8);
    goto LABEL_43;
  }

  v73 = *(v0 + 40);

  v78 = (v73 + *v73);
  v74 = swift_task_alloc();
  *(v0 + 2160) = v74;
  *v74 = v0;
  v74[1] = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);

  return v78(v68, v67);
}

{
  (*(v0[216] + 8))(v0[217], v0[215]);
  v1 = v0[238];
  v2 = v0[237];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v2, v1);
}

{
  v2 = *v1;
  *(*v1 + 2136) = v0;

  if (v0)
  {

    v3 = *(v2 + 1904);
    v4 = *(v2 + 1896);
    v5 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  else
  {
    v3 = *(v2 + 1904);
    v4 = *(v2 + 1896);
    v5 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v77 = v0;
  v76[1] = *MEMORY[0x277D85DE8];
  outlined init with take of GeneratedResponse(*(v0 + 1816), *(v0 + 1824), type metadata accessor for ModelResponse);
  v1 = *(v0 + 1912);
  swift_getKeyPath();
  *(v0 + 1576) = v1;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool, &protocol conformance descriptor for CallEmergencyServicesTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = *(v1 + 56);
    v4 = *(*(v0 + 1912) + 48);

    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.modelInteraction);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v76[0] = v9;
      *v8 = 136315650;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v76);
      *(v8 + 12) = 2080;
      *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v76);
      *(v8 + 22) = 2080;
      *(v0 + 1456) = v4;
      *(v0 + 1464) = v3;
      *(v0 + 1472) = v2;

      v10 = String.init<A>(describing:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v76);

      *(v8 + 24) = v12;
      _os_log_impl(&dword_24FD67000, v6, v7, "%s.%s Invoking callEmergencyServies Tool: %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v9, -1, -1);
      MEMORY[0x253057F40](v8, -1, -1);
    }

    v13 = *(v0 + 1680);
    v14 = *(v0 + 1672);
    v15 = *(v0 + 1664);
    *v13 = EmergencyServicesInvocation.EmergencyService.rawValue.getter(v4);
    v13[1] = v16;
    (*(v14 + 104))(v13, *MEMORY[0x277D0D718], v15);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v17 = GATError.errorCode.getter();
    if (v17 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v17 <= 0x7FFFFFFF)
    {
      v74 = *(v0 + 1824);
      v18 = *(v0 + 1680);
      v19 = *(v0 + 1672);
      v20 = *(v0 + 1664);
      SELFUtils.recordRequestFailed(code:domain:)(v17, 4);
      lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728], MEMORY[0x277D0D730]);
      swift_allocError();
      (*(v19 + 32))(v21, v18, v20);

      swift_willThrow();

      _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v74, type metadata accessor for ModelResponse);

      v22 = *(v0 + 8);
LABEL_34:

      return v22();
    }

    __break(1u);
    goto LABEL_39;
  }

  v23 = *(v0 + 1928);
  swift_getKeyPath();
  *(v0 + 1568) = v23;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(v23 + 64);
  if (v24)
  {
    v25 = *(v0 + 1928);
    v26 = *(v0 + 1824);
    v27 = *(v0 + 1616);
    v28 = *(v0 + 1608);
    v29 = *(v25 + 72);
    v30 = *(v25 + 80);
    v31 = *(v25 + 56);
    *(v0 + 1320) = *(v25 + 48) & 1;
    *(v0 + 1328) = v31;
    *(v0 + 1336) = v24;
    *(v0 + 1344) = v29;
    *(v0 + 1352) = v30;

    ModelOrchestrator.populateDeviceAssistantInfo(_:_:_:)(v28, v27, (v0 + 1320), v26);
  }

  if (one-time initialization token for modelInteraction != -1)
  {
LABEL_39:
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  *(v0 + 2144) = __swift_project_value_buffer(v32, static Logger.modelInteraction);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v76[0] = v36;
    *v35 = 136315650;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v76);
    *(v35 + 12) = 2080;
    *(v35 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v76);
    *(v35 + 22) = 2080;
    swift_beginAccess();
    v37 = type metadata accessor for GeneratedResponse.RichContentEntity(0);

    v39 = MEMORY[0x2530570A0](v38, v37);
    v41 = v40;

    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v76);

    *(v35 + 24) = v42;
    _os_log_impl(&dword_24FD67000, v33, v34, "%s.%s Received response %s", v35, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v36, -1, -1);
    MEMORY[0x253057F40](v35, -1, -1);
  }

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v76[0] = v46;
    *v45 = 136315650;
    *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v76);
    *(v45 + 12) = 2080;
    *(v45 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v76);
    *(v45 + 22) = 2080;
    swift_beginAccess();

    v48 = MEMORY[0x2530570A0](v47, &type metadata for Attribution);
    v50 = v49;

    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v76);

    *(v45 + 24) = v51;
    _os_log_impl(&dword_24FD67000, v43, v44, "%s.%s Received attribution %s", v45, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v46, -1, -1);
    MEMORY[0x253057F40](v45, -1, -1);
  }

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = *(v0 + 1824);
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v76[0] = v56;
    *v55 = 136315650;
    *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v76);
    *(v55 + 12) = 2080;
    *(v55 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v76);
    *(v55 + 22) = 1024;
    swift_beginAccess();
    v57 = *(v54 + 24);
    v58 = v57 != 2 && (v57 & 1) != 0;
    *(v55 + 24) = v58;
    _os_log_impl(&dword_24FD67000, v52, v53, "%s.%s Received isRequestingUserInput %{BOOL}d", v55, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v56, -1, -1);
    MEMORY[0x253057F40](v55, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v59 = *(v0 + 1824);
  v60 = *(v0 + 1808);
  v61 = static SELFUtils.shared;
  swift_beginAccess();
  v62 = (v59 + *(v60 + 56));
  v64 = *v62;
  v63 = v62[1];
  *(v0 + 2152) = v63;

  v65 = String.count.getter();

  if ((v65 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_41:
    __break(1u);
  }

  if (HIDWORD(v65))
  {
    goto LABEL_41;
  }

  v66 = *(v0 + 1824);
  v67 = &v61[OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_generativeResultCharactersCount];
  swift_beginAccess();
  *v67 = v65;
  v67[4] = 0;
  v68 = *(v66 + 24);

  if (v68 == 2 || (v68 & 1) == 0)
  {
    v72 = *(v0 + 1824);
    v73 = *(v0 + 1600);

    _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v72, v73, type metadata accessor for ModelResponse);

    _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(*(v0 + 1824), type metadata accessor for ModelResponse);

    v22 = *(v0 + 8);
    goto LABEL_34;
  }

  v69 = *(v0 + 40);

  v75 = (v69 + *v69);
  v70 = swift_task_alloc();
  *(v0 + 2160) = v70;
  *v70 = v0;
  v70[1] = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);

  return v75(v64, v63);
}

{

  v1 = *(v0 + 1904);
  v2 = *(v0 + 1896);

  return MEMORY[0x2822009F8](ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v2, v1);
}

{
  v23 = v0;
  v22[1] = *MEMORY[0x277D85DE8];

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 2176);
    v4 = *(v0 + 2168);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22[0] = v6;
    *v5 = 136315650;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v22);
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v22);
    *(v5 + 22) = 2080;
    *(v5 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, v22);
    _os_log_impl(&dword_24FD67000, v1, v2, "%s.%s Received user input %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v6, -1, -1);
    MEMORY[0x253057F40](v5, -1, -1);
  }

  v7 = *(v0 + 1784);
  v8 = type metadata accessor for UploadableMedia(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = *(v0 + 80);
  *(v0 + 1184) = *(v0 + 96);
  v10 = *(v0 + 128);
  *(v0 + 1200) = *(v0 + 112);
  *(v0 + 1216) = v10;
  v11 = *(v0 + 16);
  *(v0 + 1120) = *(v0 + 32);
  v12 = *(v0 + 64);
  *(v0 + 1136) = *(v0 + 48);
  *(v0 + 1152) = v12;
  *(v0 + 1168) = v9;
  *(v0 + 1232) = *(v0 + 144);
  *(v0 + 1104) = v11;
  v13 = swift_task_alloc();
  *(v0 + 2192) = v13;
  *v13 = v0;
  v13[1] = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v14 = *(v0 + 2176);
  v15 = *(v0 + 2168);
  v16 = *(v0 + 1784);
  v17 = *(v0 + 1640);
  v18 = *(v0 + 1545);
  v19 = *(v0 + 1624);
  v20 = *(v0 + 1600);
  v25 = *(v0 + 1648);

  return ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(v20, v15, v14, v19, v16, v0 + 1104, v18, v17);
}

{
  v1 = *(v0 + 1824);

  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v1, type metadata accessor for ModelResponse);

  v2 = *(v0 + 8);

  return v2();
}

{
  v2 = *v1;
  (*v1)[275] = v0;

  outlined destroy of OnScreenContent.Document?(v2[223], &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);

  v3 = v2[238];
  v4 = v2[237];
  if (v0)
  {
    v5 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  else
  {
    v5 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{

  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(*(v0 + 1824), type metadata accessor for ModelResponse);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 1776);

  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v1, type metadata accessor for UploadableDocumentData);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 1768);

  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v1, type metadata accessor for UploadableImageData);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 1768);

  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v1, type metadata accessor for UploadableImageData);

  v2 = *(v0 + 8);

  return v2();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 1824);

  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v1, type metadata accessor for ModelResponse);

  v2 = *(v0 + 8);

  return v2();
}

{

  return ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)();
}

uint64_t ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2072) = v1;

  if (v1)
  {

    v5 = v4[238];
    v6 = v4[237];
    v7 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  else
  {
    v4[260] = a1;
    v5 = v4[238];
    v6 = v4[237];
    v7 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[271] = a1;
  v4[272] = a2;
  v4[273] = v2;

  if (v2)
  {

    v5 = v4[238];
    v6 = v4[237];
    v7 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  else
  {
    v7 = ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
    v6 = 0;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 2280) = v8;
  *(v9 + 2272) = v26;
  *(v9 + 2264) = v25;
  *(v9 + 2256) = a8;
  *(v9 + 3284) = a7;
  *(v9 + 2248) = a5;
  *(v9 + 2240) = a4;
  *(v9 + 2232) = a3;
  *(v9 + 2224) = a2;
  *(v9 + 2216) = a1;
  v11 = type metadata accessor for GATError();
  *(v9 + 2288) = v11;
  *(v9 + 2296) = *(v11 - 8);
  *(v9 + 2304) = swift_task_alloc();
  *(v9 + 2312) = type metadata accessor for UploadableMedia.Source(0);
  *(v9 + 2320) = swift_task_alloc();
  *(v9 + 2328) = type metadata accessor for UploadableImageData(0);
  *(v9 + 2336) = swift_task_alloc();
  v12 = type metadata accessor for GenerativeAssistantUseCase();
  *(v9 + 2344) = v12;
  v13 = *(v12 - 8);
  *(v9 + 2352) = v13;
  *(v9 + 2360) = *(v13 + 64);
  *(v9 + 2368) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v9 + 2376) = swift_task_alloc();
  v14 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  *(v9 + 2384) = v14;
  *(v9 + 2392) = *(v14 - 8);
  *(v9 + 2400) = swift_task_alloc();
  *(v9 + 2408) = swift_task_alloc();
  *(v9 + 2416) = swift_task_alloc();
  *(v9 + 2424) = swift_task_alloc();
  *(v9 + 2432) = swift_task_alloc();
  *(v9 + 2440) = swift_task_alloc();
  *(v9 + 2448) = swift_task_alloc();
  *(v9 + 2456) = swift_task_alloc();
  *(v9 + 2464) = swift_task_alloc();
  *(v9 + 2472) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  *(v9 + 2480) = v15;
  *(v9 + 2488) = *(v15 - 8);
  *(v9 + 2496) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  *(v9 + 2504) = swift_task_alloc();
  *(v9 + 2512) = swift_task_alloc();
  *(v9 + 2520) = swift_task_alloc();
  *(v9 + 2528) = swift_task_alloc();
  *(v9 + 2536) = swift_task_alloc();
  *(v9 + 2544) = swift_task_alloc();
  *(v9 + 2552) = swift_task_alloc();
  *(v9 + 2560) = swift_task_alloc();
  *(v9 + 2568) = swift_task_alloc();
  *(v9 + 2576) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v9 + 2584) = swift_task_alloc();
  *(v9 + 2592) = swift_task_alloc();
  *(v9 + 2600) = swift_task_alloc();
  *(v9 + 2608) = swift_task_alloc();
  *(v9 + 2616) = swift_task_alloc();
  *(v9 + 2624) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  *(v9 + 2632) = swift_task_alloc();
  *(v9 + 2640) = swift_task_alloc();
  *(v9 + 2648) = swift_task_alloc();
  *(v9 + 2656) = swift_task_alloc();
  *(v9 + 2664) = swift_task_alloc();
  *(v9 + 2672) = swift_task_alloc();
  *(v9 + 2680) = swift_task_alloc();
  *(v9 + 2688) = swift_task_alloc();
  *(v9 + 2696) = swift_task_alloc();
  *(v9 + 2704) = swift_task_alloc();
  v16 = type metadata accessor for GeneratedResponse(0);
  *(v9 + 2712) = v16;
  *(v9 + 2720) = *(v16 - 8);
  *(v9 + 2728) = swift_task_alloc();
  *(v9 + 2736) = swift_task_alloc();
  *(v9 + 2744) = swift_task_alloc();
  *(v9 + 2752) = swift_task_alloc();
  *(v9 + 2760) = swift_task_alloc();
  *(v9 + 2768) = swift_task_alloc();
  *(v9 + 2776) = swift_task_alloc();
  *(v9 + 2784) = swift_task_alloc();
  *(v9 + 2792) = swift_task_alloc();
  *(v9 + 2800) = swift_task_alloc();
  *(v9 + 2808) = swift_task_alloc();
  type metadata accessor for UploadableDocumentData(0);
  *(v9 + 2816) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
  *(v9 + 2824) = swift_task_alloc();
  *(v9 + 2832) = type metadata accessor for ModelResponse(0);
  *(v9 + 2840) = swift_task_alloc();
  *(v9 + 2848) = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  *(v9 + 2856) = swift_task_alloc();
  *(v9 + 2864) = type metadata accessor for GenerativeRequestMetadata(0);
  *(v9 + 2872) = swift_task_alloc();
  v17 = *(a6 + 112);
  *(v9 + 1064) = *(a6 + 96);
  *(v9 + 1080) = v17;
  *(v9 + 1096) = *(a6 + 128);
  v18 = *(a6 + 48);
  *(v9 + 1000) = *(a6 + 32);
  *(v9 + 1016) = v18;
  v19 = *(a6 + 80);
  *(v9 + 1032) = *(a6 + 64);
  *(v9 + 1048) = v19;
  v20 = *(a6 + 16);
  *(v9 + 968) = *a6;
  *(v9 + 984) = v20;
  *(v9 + 2880) = type metadata accessor for MainActor();
  *(v9 + 2888) = static MainActor.shared.getter();
  v21 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 2896) = v21;
  *(v9 + 2904) = v22;

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v21, v22);
}

uint64_t ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:)()
{
  v15 = v0;
  v14[1] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for CallEmergencyServicesTool(0);
  v2 = swift_allocObject();
  *(v0 + 2912) = v2;
  v2[2] = 0xD000000000000017;
  v2[3] = 0x800000024FE33A40;
  v2[4] = 0xD000000000000B1ELL;
  v2[5] = 0x800000024FE33A60;
  v2[7] = 0;
  v2[8] = 0;
  v2[6] = 0;
  *(v0 + 2920) = OBJC_IVAR____TtC26GenerativeAssistantActions25CallEmergencyServicesTool___observationRegistrar;
  ObservationRegistrar.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation7Tooling_pGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation7Tooling_pGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24FE1A560;
  *(v3 + 56) = v1;
  *(v3 + 64) = lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool, &protocol conformance descriptor for CallEmergencyServicesTool);
  *(v3 + 32) = v2;
  v4 = one-time initialization token for modelInteraction;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  *(v0 + 2928) = __swift_project_value_buffer(v5, static Logger.modelInteraction);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v14);
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v14);
    _os_log_impl(&dword_24FD67000, v6, v7, "%s.%s allowing model follow-up", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v9, -1, -1);
    MEMORY[0x253057F40](v8, -1, -1);
  }

  v10 = *(v0 + 2280);
  v11 = type metadata accessor for UseDeviceAssistantTool(0);
  v12 = swift_allocObject();
  *(v0 + 2936) = v12;
  *(v12 + 16) = 0xD000000000000014;
  *(v12 + 24) = 0x800000024FE34580;
  *(v12 + 32) = 0x100000000000019ALL;
  *(v12 + 40) = 0x800000024FE345A0;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v0 + 2944) = OBJC_IVAR____TtC26GenerativeAssistantActions22UseDeviceAssistantTool___observationRegistrar;
  ObservationRegistrar.init()();
  __swift_project_boxed_opaque_existential_1((v10 + 80), *(v10 + 104));
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isBoomerangEnabled.getter() & 1) != 0 && (*(*(v0 + 2240) + 40) & 1) == 0)
  {

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 2, 1, v3);
    *(v0 + 1848) = v11;
    *(v0 + 1856) = lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool, &protocol conformance descriptor for UseDeviceAssistantTool);
    *(v0 + 1824) = v12;
    *(v3 + 16) = 2;
    outlined init with take of TypedValueAsyncResolvable((v0 + 1824), v3 + 72);
  }

  *(v0 + 2952) = v3;

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), 0, 0);
}

{
  v38 = v0;
  v37 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2864);
  v2 = *(v0 + 2280);
  v3 = *(v0 + 2264);
  v4 = *(v0 + 2256);
  v5 = *(v0 + 2240);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  v36 = *(v5 + 41);
  v6 = (v5 + v1[13]);
  v7 = *v6;
  v8 = v6[1];
  v9 = v1[10];
  v10 = v1[11];
  v11 = *(v5 + 40);
  v12 = *(v5 + v1[12]);
  *(v0 + 3285) = v12;
  v13 = v4;
  v14 = v7;
  v15 = DefaultPromptFactory.createPrompt(appBundleID:interactionMode:directInvocationClientId:sessionID:partnerInfo:isExplicitRequest:isFirstRequest:)(v13, v3, &v36, v5 + v10, v7, v8, v5 + v9, v11, v12);
  v31 = *(v0 + 2872);
  v32 = *(v0 + 2856);
  v16 = *(v0 + 2256);
  v35 = *(v0 + 3284);
  v29 = *(v0 + 2264);
  v30 = *(v0 + 2240);
  v33 = v17;
  v34 = v15;
  v18 = (v2 + 40);
  v19 = *(v2 + 64);
  v20 = *(v0 + 2952);
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v36 = *(v5 + 41);
  v21 = DefaultPromptFactory.getTemplateID(appBundleID:interactionMode:directInvocationClientId:sessionID:isExplicitRequest:isFirstRequest:)(v16, v29, &v36, v5 + v10, v14, v8, v11, v12);
  v23 = v22;
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v30, v31, type metadata accessor for GenerativeRequestMetadata);
  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v24 = type metadata accessor for DefaultModelSession(0);
  swift_allocObject();
  v25 = DefaultModelSession.init(systemPrompt:tools:requestMetadata:enableBrowserTool:templateID:featureFlagManager:)(v34, v33, v20, v31, v35, v21, v23, v32);
  *(v0 + 1608) = v24;
  *(v0 + 1616) = &protocol witness table for DefaultModelSession;
  *(v0 + 1584) = v25;
  outlined init with take of TypedValueAsyncResolvable((v0 + 1584), v0 + 1344);
  v26 = *(v0 + 2904);
  v27 = *(v0 + 2896);

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v27, v26);
}

{
  v51 = v0;
  v50[1] = *MEMORY[0x277D85DE8];
  v1 = (v0 + 968);
  __swift_project_boxed_opaque_existential_1((v0 + 1344), *(v0 + 1368));
  v2 = *(GenerativeExperiencesSession.registeredDocuments()() + 16);

  if (v2)
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v50[0] = v6;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v50);
      *(v5 + 12) = 2080;
      *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v50);
      _os_log_impl(&dword_24FD67000, v3, v4, "%s.%s Session has registered documents, skipping registration", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v6, -1, -1);
      MEMORY[0x253057F40](v5, -1, -1);
    }

    *(v0 + 3290) = *(*(v0 + 2240) + 41);
    if (one-time initialization token for partnerName != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 2864);
    v8 = *(&static Disclaimer.partnerName + 1);
    *(v0 + 3216) = static Disclaimer.partnerName;
    *(v0 + 3224) = v8;
    *(v0 + 3280) = *(v7 + 32);
    v9 = swift_allocObject();
    *(v0 + 3232) = v9;
    v10 = *(v0 + 1080);
    *(v9 + 112) = *(v0 + 1064);
    *(v9 + 128) = v10;
    *(v9 + 144) = *(v0 + 1096);
    v11 = *(v0 + 1016);
    *(v9 + 48) = *(v0 + 1000);
    *(v9 + 64) = v11;
    v12 = *(v0 + 1048);
    *(v9 + 80) = *(v0 + 1032);
    *(v9 + 96) = v12;
    v13 = *(v0 + 984);
    *(v9 + 16) = *v1;
    *(v9 + 32) = v13;
    outlined init with copy of IntentCallbackManager(v0 + 968, v0 + 560);
    v14 = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
LABEL_13:
    v28 = v14;

    return MEMORY[0x2822009F8](v28, 0, 0);
  }

  v15 = *(v0 + 2824);
  outlined init with copy of Date?(*(v0 + 2248), v15, &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
  v16 = type metadata accessor for UploadableMedia(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v50[0] = v20;
      *v19 = 136315394;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v50);
      *(v19 + 12) = 2080;
      *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v50);
      _os_log_impl(&dword_24FD67000, v17, v18, "%s.%s Generating for streamed text creation.", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v20, -1, -1);
      MEMORY[0x253057F40](v19, -1, -1);
    }

    *(v0 + 3289) = *(*(v0 + 2240) + 41);
    if (one-time initialization token for partnerName != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 2864);
    v22 = *(&static Disclaimer.partnerName + 1);
    *(v0 + 3168) = static Disclaimer.partnerName;
    *(v0 + 3176) = v22;
    *(v0 + 3276) = *(v21 + 32);
    v23 = swift_allocObject();
    *(v0 + 3184) = v23;
    v24 = *(v0 + 1080);
    *(v23 + 112) = *(v0 + 1064);
    *(v23 + 128) = v24;
    *(v23 + 144) = *(v0 + 1096);
    v25 = *(v0 + 1016);
    *(v23 + 48) = *(v0 + 1000);
    *(v23 + 64) = v25;
    v26 = *(v0 + 1048);
    *(v23 + 80) = *(v0 + 1032);
    *(v23 + 96) = v26;
    v27 = *(v0 + 984);
    *(v23 + 16) = *v1;
    *(v23 + 32) = v27;
    outlined init with copy of IntentCallbackManager(v0 + 968, v0 + 16);
    v14 = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
    goto LABEL_13;
  }

  v29 = *(v0 + 2824);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of GeneratedResponse(v29, *(v0 + 2816), type metadata accessor for UploadableDocumentData);
    v30 = *(v0 + 1080);
    *(v0 + 384) = *(v0 + 1064);
    *(v0 + 400) = v30;
    *(v0 + 416) = *(v0 + 1096);
    v31 = *(v0 + 1016);
    *(v0 + 320) = *(v0 + 1000);
    *(v0 + 336) = v31;
    v32 = *(v0 + 1048);
    *(v0 + 352) = *(v0 + 1032);
    *(v0 + 368) = v32;
    v33 = *(v0 + 984);
    *(v0 + 288) = *v1;
    *(v0 + 304) = v33;
    v34 = swift_task_alloc();
    *(v0 + 2968) = v34;
    *v34 = v0;
    v34[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
    v35 = *(v0 + 2816);

    return ModelOrchestrator.registerDocument(_:_:_:)(v0 + 1344, v35, v0 + 288);
  }

  else
  {
    v36 = *(v0 + 2336);
    v37 = *(v0 + 2328);
    v38 = *(v0 + 2320);
    outlined init with take of GeneratedResponse(v29, v36, type metadata accessor for UploadableImageData);
    _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v36 + *(v37 + 28), v38, type metadata accessor for UploadableMedia.Source);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of OnScreenContent.Document?(*(v0 + 2320), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
    }

    v39 = *(v0 + 2336);
    v40 = specialized static GATSchemaGATMediaType.from(fileExtension:)();

    if (ModelOrchestrator.shouldUploadImage(image:)(v39))
    {
      v41 = *(v0 + 1080);
      *(v0 + 792) = *(v0 + 1064);
      *(v0 + 808) = v41;
      *(v0 + 824) = *(v0 + 1096);
      v42 = *(v0 + 1016);
      *(v0 + 728) = *(v0 + 1000);
      *(v0 + 744) = v42;
      v43 = *(v0 + 1048);
      *(v0 + 760) = *(v0 + 1032);
      *(v0 + 776) = v43;
      v44 = *(v0 + 984);
      *(v0 + 696) = *v1;
      *(v0 + 712) = v44;
      v45 = swift_task_alloc();
      *(v0 + 3032) = v45;
      *v45 = v0;
      v45[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
      v46 = *(v0 + 2336);

      return ModelOrchestrator.registerImage(_:_:_:_:)(v46, v40, v0 + 1344, v0 + 696);
    }

    else
    {
      v47 = swift_task_alloc();
      *(v0 + 3096) = v47;
      *v47 = v0;
      v47[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
      v48 = *(v0 + 2336);

      return ModelOrchestrator.prepareInlineImage(_:_:)(v48, v40);
    }
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 2976) = v0;

  v3 = *(v2 + 2904);
  v4 = *(v2 + 2896);
  if (v0)
  {
    v5 = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  }

  else
  {
    v5 = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  *(v0 + 3286) = *(*(v0 + 2240) + 41);
  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2864);
  v2 = *(&static Disclaimer.partnerName + 1);
  *(v0 + 2984) = static Disclaimer.partnerName;
  *(v0 + 2992) = v2;
  *(v0 + 3264) = *(v1 + 32);
  v3 = swift_allocObject();
  *(v0 + 3000) = v3;
  v4 = *(v0 + 1080);
  *(v3 + 112) = *(v0 + 1064);
  *(v3 + 128) = v4;
  *(v3 + 144) = *(v0 + 1096);
  v5 = *(v0 + 1016);
  *(v3 + 48) = *(v0 + 1000);
  *(v3 + 64) = v5;
  v6 = *(v0 + 1048);
  *(v3 + 80) = *(v0 + 1032);
  *(v3 + 96) = v6;
  v7 = *(v0 + 984);
  *(v3 + 16) = *(v0 + 968);
  *(v3 + 32) = v7;

  outlined init with copy of IntentCallbackManager(v0 + 968, v0 + 152);

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), 0, 0);
}

{

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), 0, 0);
}

{
  v69 = v0;
  v68 = *MEMORY[0x277D85DE8];
  v1 = v0[284];
  if (*(v1 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamEnded) == 1)
  {
    v2 = v0[340];
    v3 = v0[339];
    v4 = v0[338];

    (*(v2 + 56))(v4, 1, 1, v3);
  }

  else
  {
    v5 = v0[340];
    v6 = v0[339];
    v7 = v0[337];
    v8 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
    swift_beginAccess();
    outlined init with copy of Date?(v1 + v8, v7, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    v9 = *(v5 + 48);
    if (v9(v7, 1, v6) == 1)
    {
      v60 = v9;
      v10 = v0[356];
      v11 = v0[350];
      v12 = v0[339];
      v13 = v0[328];
      v63 = v13;
      v14 = v0[299];
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
      v16 = *(v14 + 72);
      v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v66 = v16;
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_24FE1A560;
      v59 = v17;
      v19 = (v18 + v17);
      *v19 = 0;
      v19[1] = 0xE000000000000000;
      v65 = v18 + v17;
      swift_storeEnumTagMultiPayload();
      v0[151] = v10;
      v0[152] = MEMORY[0x277D0D628];
      __swift_allocate_boxed_opaque_existential_1(v0 + 148);
      static GenerativeAssistantFeatureFlagManager.instance.getter();
      v20 = (v11 + v12[14]);
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      v67 = 49;
      v21 = MEMORY[0x277D84F90];
      v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      v23 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v67, 0, v22);

      *v20 = v23;
      *v11 = 0;
      *(v11 + 8) = 0xE000000000000000;
      *(v11 + 16) = v18;
      *(v11 + 24) = v21;
      *(v11 + 32) = 64;
      *(v11 + 40) = v21;
      *(v11 + 48) = v21;
      *(v11 + v12[15]) = v21;
      *(v11 + v12[12]) = 1;
      v24 = (v11 + v12[13]);
      *v24 = 0;
      v24[1] = 0xE000000000000000;
      outlined init with copy of Date?(v63, v11 + v12[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v25 = (v11 + v12[11]);
      *v25 = 0;
      v25[1] = 0xE000000000000000;
      *(v11 + v12[16]) = 0;
      *(v11 + v12[17]) = 0;
      v26 = (v11 + v12[18]);
      *v26 = 0;
      v26[1] = 0xE000000000000000;
      v27 = (v11 + v12[19]);
      *v27 = 0;
      v27[1] = 0xE000000000000000;
      outlined init with copy of GenerativeAssistantFeatureFlagManaging((v0 + 148), v11 + v12[21]);
      *(v11 + v12[20]) = xmmword_24FE1AE00;
      if (dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter())
      {
        v28 = v0[350];
        v29 = v0[311];
        v30 = v0[310];
        v61 = v0[308];
        v31._countAndFlagsBits = 0;
        v31._object = 0xE000000000000000;
        v32 = GeneratedResponse.updateText(_:)(v31);
        *v28 = v32._countAndFlagsBits;
        *(v11 + 8) = v32._object;
        v33 = *(v18 + 16);
        v34 = (v29 + 56);
        v35 = (v29 + 48);

        v36 = 0;
        v62 = v18;
        v64 = v18;
        while (1)
        {
          if (v36 == v33)
          {
            v37 = 1;
            v36 = v33;
          }

          else
          {
            if (v36 >= *(v64 + 16))
            {
              __break(1u);
LABEL_29:
              __break(1u);
            }

            v38 = v0[321];
            v39 = v0[312];
            v40 = *(v30 + 48);
            *v39 = v36;
            _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v65 + v36 * v66, v39 + v40, type metadata accessor for GeneratedResponse.RichContentEntity);
            outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v39, v38, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
            v37 = 0;
            ++v36;
          }

          v41 = v0[322];
          v42 = v0[321];
          v43 = v0[310];
          (*v34)(v42, v37, 1, v43);
          outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v42, v41, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
          if ((*v35)(v41, 1, v43) == 1)
          {
            break;
          }

          v44 = v0[322];
          v45 = *v44;
          outlined init with take of GeneratedResponse(v44 + *(v30 + 48), v0[309], type metadata accessor for GeneratedResponse.RichContentEntity);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v47 = v0[309];
          if (EnumCaseMultiPayload)
          {
            _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v47, type metadata accessor for GeneratedResponse.RichContentEntity);
          }

          else
          {
            v48 = v0[308];
            _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v47, type metadata accessor for GeneratedResponse.RichContentEntity);
            *v48 = v32._countAndFlagsBits;
            *(v61 + 8) = v32._object;
            swift_storeEnumTagMultiPayload();

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v49 = v62;
              if ((v45 & 0x8000000000000000) != 0)
              {
                goto LABEL_18;
              }
            }

            else
            {
              v62 = specialized _ArrayBuffer._consumeAndCreateNew()(v62);
              v49 = v62;
              if ((v45 & 0x8000000000000000) != 0)
              {
LABEL_18:
                __break(1u);
                goto LABEL_19;
              }
            }

            if (v45 >= v49[2])
            {
              goto LABEL_29;
            }

            outlined assign with take of GeneratedResponse.RichContentEntity(v0[308], v49 + v59 + v45 * v66);
            *(v11 + 16) = v49;
          }
        }
      }

      v52 = v0[350];
      v53 = v0[339];
      v54 = v0[338];
      v55 = v0[337];
      outlined destroy of OnScreenContent.Document?(v0[328], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v52, v54, type metadata accessor for GeneratedResponse);
      __swift_destroy_boxed_opaque_existential_0(v0 + 148);
      _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v52, type metadata accessor for GeneratedResponse);
      if (v60(v55, 1, v53) != 1)
      {
        outlined destroy of OnScreenContent.Document?(v0[337], &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
      }
    }

    else
    {
LABEL_19:
      v50 = v0[338];
      v51 = v0[337];

      outlined init with take of GeneratedResponse(v51, v50, type metadata accessor for GeneratedResponse);
    }

    (*(v0[340] + 56))(v0[338], 0, 1, v0[339]);
  }

  v56 = v0[363];
  v57 = v0[362];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v57, v56);
}

{
  v79 = v0;
  v78[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2720);
  v2 = *(v0 + 2712);
  v3 = *(v0 + 2704);

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 2816);
    v5 = *(v0 + 2296);
    v6 = *(v0 + 2288);
    outlined destroy of OnScreenContent.Document?(*(v0 + 2704), &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728], MEMORY[0x277D0D730]);
    swift_allocError();
    (*(v5 + 104))(v7, *MEMORY[0x277D0D720], v6);
    swift_willThrow();

    v8 = type metadata accessor for UploadableDocumentData;
    v9 = v4;
LABEL_9:
    _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v9, v8);
    __swift_destroy_boxed_opaque_existential_0((v0 + 1344));

    v38 = *(v0 + 8);
    goto LABEL_10;
  }

  v10 = *(v0 + 2840);
  v11 = *(v0 + 2832);
  v12 = *(v0 + 2808);
  v76 = v12;
  v77 = *(v0 + 2816);
  v13 = *(v0 + 2792);
  v14 = *(v0 + 2712);
  v15 = *(v0 + 2616);
  outlined init with take of GeneratedResponse(*(v0 + 2704), v12, type metadata accessor for GeneratedResponse);
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v12, v13, type metadata accessor for GeneratedResponse);
  v74 = v13[1];
  v75 = *v13;
  v16 = (v13 + *(v14 + 44));
  v17 = v16[1];
  v73 = *v16;
  v18 = type metadata accessor for URL();
  v19 = *(*(v18 - 8) + 56);
  v19(v15, 1, 1, v18);
  v20 = v11[8];
  v19(v10 + v20, 1, 1, v18);
  v21 = v11[9];
  v22 = MEMORY[0x277D84F90];
  *v10 = MEMORY[0x277D84F90];
  *(v10 + 8) = v73;
  *(v10 + 16) = v17;

  outlined assign with copy of URL?(v15, v10 + v20);
  *(v10 + v21) = v22;
  *(v10 + 32) = v22;
  v23 = (v10 + v11[14]);
  *v23 = v75;
  v23[1] = v74;
  *(v10 + v11[10]) = 0;
  *(v10 + v11[11]) = 0;
  v24 = (v10 + v11[12]);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v13, type metadata accessor for GeneratedResponse);
  outlined destroy of OnScreenContent.Document?(v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v25 = (v10 + v11[13]);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  *(v10 + 24) = 0;
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v76, type metadata accessor for GeneratedResponse);
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v77, type metadata accessor for UploadableDocumentData);
  v26 = *(v0 + 2912);
  swift_getKeyPath();
  *(v0 + 2208) = v26;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool, &protocol conformance descriptor for CallEmergencyServicesTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v26 + 64))
  {
    v27 = *(v0 + 2304);
    v28 = *(v0 + 2296);
    v29 = *(v0 + 2288);
    *v27 = EmergencyServicesInvocation.EmergencyService.rawValue.getter(*(*(v0 + 2912) + 48));
    v27[1] = v30;
    (*(v28 + 104))(v27, *MEMORY[0x277D0D718], v29);
    v31 = one-time initialization token for shared;

    if (v31 != -1)
    {
      swift_once();
    }

    v32 = GATError.errorCode.getter();
    if (v32 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v32 <= 0x7FFFFFFF)
    {
      v33 = *(v0 + 2840);
      v34 = *(v0 + 2304);
      v35 = *(v0 + 2296);
      v36 = *(v0 + 2288);
      SELFUtils.recordRequestFailed(code:domain:)(v32, 4);
      lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728], MEMORY[0x277D0D730]);
      swift_allocError();
      (*(v35 + 32))(v37, v34, v36);

      swift_willThrow();

      v8 = type metadata accessor for ModelResponse;
      v9 = v33;
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_25;
  }

  v40 = *(v0 + 2936);
  swift_getKeyPath();
  *(v0 + 2200) = v40;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool, &protocol conformance descriptor for UseDeviceAssistantTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v41 = *(v40 + 64);
  if (v41)
  {
    v42 = *(v0 + 2936);
    v43 = *(v0 + 2840);
    v44 = *(v0 + 2232);
    v45 = *(v0 + 2224);
    v46 = *(v42 + 72);
    v47 = *(v42 + 80);
    v48 = *(v42 + 56);
    *(v0 + 1304) = *(v42 + 48) & 1;
    *(v0 + 1312) = v48;
    *(v0 + 1320) = v41;
    *(v0 + 1328) = v46;
    *(v0 + 1336) = v47;

    ModelOrchestrator.populateDeviceAssistantInfo(_:_:_:)(v45, v44, (v0 + 1304), v43);
  }

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = *(v0 + 2384);
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v78[0] = v53;
    *v52 = 136315650;
    *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v78);
    *(v52 + 12) = 2080;
    *(v52 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v78);
    *(v52 + 22) = 2080;
    swift_beginAccess();

    v55 = MEMORY[0x2530570A0](v54, v51);
    v57 = v56;

    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, v78);

    *(v52 + 24) = v58;
    _os_log_impl(&dword_24FD67000, v49, v50, "%s.%s Received response %s", v52, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v53, -1, -1);
    MEMORY[0x253057F40](v52, -1, -1);
  }

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v78[0] = v62;
    *v61 = 136315650;
    *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v78);
    *(v61 + 12) = 2080;
    *(v61 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v78);
    *(v61 + 22) = 2080;
    swift_beginAccess();

    v64 = MEMORY[0x2530570A0](v63, &type metadata for Attribution);
    v66 = v65;

    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v78);

    *(v61 + 24) = v67;
    _os_log_impl(&dword_24FD67000, v59, v60, "%s.%s Received attribution %s", v61, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v62, -1, -1);
    MEMORY[0x253057F40](v61, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
LABEL_25:
    swift_once();
  }

  v68 = static SELFUtils.shared;
  swift_beginAccess();

  v69 = String.count.getter();

  if ((v69 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (HIDWORD(v69))
  {
    goto LABEL_27;
  }

  v70 = *(v0 + 2840);
  v71 = &v68[OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_generativeResultCharactersCount];
  v72 = *(v0 + 2216);
  swift_beginAccess();
  *v71 = v69;
  v71[4] = 0;
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v70, v72, type metadata accessor for ModelResponse);
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v70, type metadata accessor for ModelResponse);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1344));

  v38 = *(v0 + 8);
LABEL_10:

  return v38();
}

{
  v1 = *(v0 + 3008);
  v24 = *(v0 + 3000);
  v25 = *(v0 + 3264);
  v31 = *(v0 + 2984);
  v32 = *(v0 + 2992);
  v29 = *(v0 + 3285);
  v30 = *(v0 + 3286);
  v2 = *(v0 + 2376);
  v3 = *(v0 + 2368);
  v4 = *(v0 + 2352);
  v5 = *(v0 + 2344);
  v23 = v3;
  v6 = *(v0 + 2272);
  v7 = *(v0 + 2240);
  v8 = *(v0 + 2232);
  v27 = *(v0 + 2360);
  v28 = *(v0 + 2224);

  *(v6 + v1) = 1;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1344, v0 + 1264);
  v9 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_modelSession;
  swift_beginAccess();
  outlined assign with take of ModelSession?(v0 + 1264, v6 + v9);
  swift_endAccess();
  v26 = v2;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v2, 0, 1, v10);
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1344, v0 + 1224);
  (*(v4 + 16))(v3, v7 + v25, v5);
  v11 = v8;

  v12 = static MainActor.shared.getter();
  v13 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v14 = (v27 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 2) = v12;
  *(v16 + 3) = v17;
  outlined init with take of TypedValueAsyncResolvable((v0 + 1224), (v16 + 32));
  *(v16 + 9) = v28;
  *(v16 + 10) = v11;
  *(v16 + 11) = 0;
  (*(v4 + 32))(&v16[v13], v23, v5);
  v18 = &v16[v14];
  *v18 = partial apply for implicit closure #17 in implicit closure #16 in ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  v18[1] = v24;
  v19 = &v16[v15];
  *v19 = v6;
  v19[8] = v30;
  v19[9] = v29;
  v20 = &v16[(v15 + 17) & 0xFFFFFFFFFFFFFFF8];
  *v20 = v31;
  *(v20 + 1) = v32;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v26, &closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:)partial apply, v16);

  v21 = swift_task_alloc();
  *(v0 + 3016) = v21;
  *v21 = v0;
  v21[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);

  return PartnerStreamWrapper.waitForResponse()();
}

{
  v2 = *v1;
  *(*v1 + 3040) = v0;

  v3 = *(v2 + 2904);
  v4 = *(v2 + 2896);
  if (v0)
  {
    v5 = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  }

  else
  {
    v5 = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  *(v0 + 3287) = *(*(v0 + 2240) + 41);
  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2864);
  v2 = *(&static Disclaimer.partnerName + 1);
  *(v0 + 3048) = static Disclaimer.partnerName;
  *(v0 + 3056) = v2;
  *(v0 + 3268) = *(v1 + 32);
  v3 = swift_allocObject();
  *(v0 + 3064) = v3;
  v4 = *(v0 + 1080);
  *(v3 + 112) = *(v0 + 1064);
  *(v3 + 128) = v4;
  *(v3 + 144) = *(v0 + 1096);
  v5 = *(v0 + 1016);
  *(v3 + 48) = *(v0 + 1000);
  *(v3 + 64) = v5;
  v6 = *(v0 + 1048);
  *(v3 + 80) = *(v0 + 1032);
  *(v3 + 96) = v6;
  v7 = *(v0 + 984);
  *(v3 + 16) = *(v0 + 968);
  *(v3 + 32) = v7;
  outlined init with copy of IntentCallbackManager(v0 + 968, v0 + 424);

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), 0, 0);
}

{

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), 0, 0);
}

{
  v69 = v0;
  v68 = *MEMORY[0x277D85DE8];
  v1 = v0[284];
  if (*(v1 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamEnded) == 1)
  {
    v2 = v0[340];
    v3 = v0[339];
    v4 = v0[336];

    (*(v2 + 56))(v4, 1, 1, v3);
  }

  else
  {
    v5 = v0[340];
    v6 = v0[339];
    v7 = v0[335];
    v8 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
    swift_beginAccess();
    outlined init with copy of Date?(v1 + v8, v7, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    v9 = *(v5 + 48);
    if (v9(v7, 1, v6) == 1)
    {
      v60 = v9;
      v10 = v0[356];
      v11 = v0[347];
      v12 = v0[339];
      v13 = v0[326];
      v63 = v13;
      v14 = v0[299];
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
      v16 = *(v14 + 72);
      v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v66 = v16;
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_24FE1A560;
      v59 = v17;
      v19 = (v18 + v17);
      *v19 = 0;
      v19[1] = 0xE000000000000000;
      v65 = v18 + v17;
      swift_storeEnumTagMultiPayload();
      v0[176] = v10;
      v0[177] = MEMORY[0x277D0D628];
      __swift_allocate_boxed_opaque_existential_1(v0 + 173);
      static GenerativeAssistantFeatureFlagManager.instance.getter();
      v20 = (v11 + v12[14]);
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      v67 = 49;
      v21 = MEMORY[0x277D84F90];
      v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      v23 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v67, 0, v22);

      *v20 = v23;
      *v11 = 0;
      *(v11 + 8) = 0xE000000000000000;
      *(v11 + 16) = v18;
      *(v11 + 24) = v21;
      *(v11 + 32) = 64;
      *(v11 + 40) = v21;
      *(v11 + 48) = v21;
      *(v11 + v12[15]) = v21;
      *(v11 + v12[12]) = 1;
      v24 = (v11 + v12[13]);
      *v24 = 0;
      v24[1] = 0xE000000000000000;
      outlined init with copy of Date?(v63, v11 + v12[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v25 = (v11 + v12[11]);
      *v25 = 0;
      v25[1] = 0xE000000000000000;
      *(v11 + v12[16]) = 0;
      *(v11 + v12[17]) = 0;
      v26 = (v11 + v12[18]);
      *v26 = 0;
      v26[1] = 0xE000000000000000;
      v27 = (v11 + v12[19]);
      *v27 = 0;
      v27[1] = 0xE000000000000000;
      outlined init with copy of GenerativeAssistantFeatureFlagManaging((v0 + 173), v11 + v12[21]);
      *(v11 + v12[20]) = xmmword_24FE1AE00;
      if (dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter())
      {
        v28 = v0[347];
        v29 = v0[311];
        v30 = v0[310];
        v61 = v0[306];
        v31._countAndFlagsBits = 0;
        v31._object = 0xE000000000000000;
        v32 = GeneratedResponse.updateText(_:)(v31);
        *v28 = v32._countAndFlagsBits;
        *(v11 + 8) = v32._object;
        v33 = *(v18 + 16);
        v34 = (v29 + 56);
        v35 = (v29 + 48);

        v36 = 0;
        v62 = v18;
        v64 = v18;
        while (1)
        {
          if (v36 == v33)
          {
            v37 = 1;
            v36 = v33;
          }

          else
          {
            if (v36 >= *(v64 + 16))
            {
              __break(1u);
LABEL_29:
              __break(1u);
            }

            v38 = v0[319];
            v39 = v0[312];
            v40 = *(v30 + 48);
            *v39 = v36;
            _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v65 + v36 * v66, v39 + v40, type metadata accessor for GeneratedResponse.RichContentEntity);
            outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v39, v38, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
            v37 = 0;
            ++v36;
          }

          v41 = v0[320];
          v42 = v0[319];
          v43 = v0[310];
          (*v34)(v42, v37, 1, v43);
          outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v42, v41, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
          if ((*v35)(v41, 1, v43) == 1)
          {
            break;
          }

          v44 = v0[320];
          v45 = *v44;
          outlined init with take of GeneratedResponse(v44 + *(v30 + 48), v0[307], type metadata accessor for GeneratedResponse.RichContentEntity);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v47 = v0[307];
          if (EnumCaseMultiPayload)
          {
            _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v47, type metadata accessor for GeneratedResponse.RichContentEntity);
          }

          else
          {
            v48 = v0[306];
            _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v47, type metadata accessor for GeneratedResponse.RichContentEntity);
            *v48 = v32._countAndFlagsBits;
            *(v61 + 8) = v32._object;
            swift_storeEnumTagMultiPayload();

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v49 = v62;
              if ((v45 & 0x8000000000000000) != 0)
              {
                goto LABEL_18;
              }
            }

            else
            {
              v62 = specialized _ArrayBuffer._consumeAndCreateNew()(v62);
              v49 = v62;
              if ((v45 & 0x8000000000000000) != 0)
              {
LABEL_18:
                __break(1u);
                goto LABEL_19;
              }
            }

            if (v45 >= v49[2])
            {
              goto LABEL_29;
            }

            outlined assign with take of GeneratedResponse.RichContentEntity(v0[306], v49 + v59 + v45 * v66);
            *(v11 + 16) = v49;
          }
        }
      }

      v52 = v0[347];
      v53 = v0[339];
      v54 = v0[336];
      v55 = v0[335];
      outlined destroy of OnScreenContent.Document?(v0[326], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v52, v54, type metadata accessor for GeneratedResponse);
      __swift_destroy_boxed_opaque_existential_0(v0 + 173);
      _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v52, type metadata accessor for GeneratedResponse);
      if (v60(v55, 1, v53) != 1)
      {
        outlined destroy of OnScreenContent.Document?(v0[335], &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
      }
    }

    else
    {
LABEL_19:
      v50 = v0[336];
      v51 = v0[335];

      outlined init with take of GeneratedResponse(v51, v50, type metadata accessor for GeneratedResponse);
    }

    (*(v0[340] + 56))(v0[336], 0, 1, v0[339]);
  }

  v56 = v0[363];
  v57 = v0[362];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v57, v56);
}

{
  v79 = v0;
  v78[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2720);
  v2 = *(v0 + 2712);
  v3 = *(v0 + 2688);

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 2336);
    v5 = *(v0 + 2296);
    v6 = *(v0 + 2288);
    outlined destroy of OnScreenContent.Document?(*(v0 + 2688), &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728], MEMORY[0x277D0D730]);
    swift_allocError();
    (*(v5 + 104))(v7, *MEMORY[0x277D0D720], v6);
    swift_willThrow();

    v8 = type metadata accessor for UploadableImageData;
    v9 = v4;
LABEL_9:
    _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v9, v8);
    __swift_destroy_boxed_opaque_existential_0((v0 + 1344));

    v38 = *(v0 + 8);
    goto LABEL_10;
  }

  v10 = *(v0 + 2840);
  v11 = *(v0 + 2832);
  v12 = *(v0 + 2792);
  v13 = *(v0 + 2784);
  v14 = *(v0 + 2712);
  v15 = *(v0 + 2616);
  v76 = v13;
  v77 = *(v0 + 2336);
  outlined init with take of GeneratedResponse(*(v0 + 2688), v13, type metadata accessor for GeneratedResponse);
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v13, v12, type metadata accessor for GeneratedResponse);
  v74 = v12[1];
  v75 = *v12;
  v16 = (v12 + *(v14 + 44));
  v17 = v16[1];
  v73 = *v16;
  v18 = type metadata accessor for URL();
  v19 = *(*(v18 - 8) + 56);
  v19(v15, 1, 1, v18);
  v20 = v11[8];
  v19(v10 + v20, 1, 1, v18);
  v21 = v11[9];
  v22 = MEMORY[0x277D84F90];
  *v10 = MEMORY[0x277D84F90];
  *(v10 + 8) = v73;
  *(v10 + 16) = v17;

  outlined assign with copy of URL?(v15, v10 + v20);
  *(v10 + v21) = v22;
  *(v10 + 32) = v22;
  v23 = (v10 + v11[14]);
  *v23 = v75;
  v23[1] = v74;
  *(v10 + v11[10]) = 0;
  *(v10 + v11[11]) = 0;
  v24 = (v10 + v11[12]);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v12, type metadata accessor for GeneratedResponse);
  outlined destroy of OnScreenContent.Document?(v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v25 = (v10 + v11[13]);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  *(v10 + 24) = 0;
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v76, type metadata accessor for GeneratedResponse);
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v77, type metadata accessor for UploadableImageData);
  v26 = *(v0 + 2912);
  swift_getKeyPath();
  *(v0 + 2208) = v26;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool, &protocol conformance descriptor for CallEmergencyServicesTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v26 + 64))
  {
    v27 = *(v0 + 2304);
    v28 = *(v0 + 2296);
    v29 = *(v0 + 2288);
    *v27 = EmergencyServicesInvocation.EmergencyService.rawValue.getter(*(*(v0 + 2912) + 48));
    v27[1] = v30;
    (*(v28 + 104))(v27, *MEMORY[0x277D0D718], v29);
    v31 = one-time initialization token for shared;

    if (v31 != -1)
    {
      swift_once();
    }

    v32 = GATError.errorCode.getter();
    if (v32 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v32 <= 0x7FFFFFFF)
    {
      v33 = *(v0 + 2840);
      v34 = *(v0 + 2304);
      v35 = *(v0 + 2296);
      v36 = *(v0 + 2288);
      SELFUtils.recordRequestFailed(code:domain:)(v32, 4);
      lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728], MEMORY[0x277D0D730]);
      swift_allocError();
      (*(v35 + 32))(v37, v34, v36);

      swift_willThrow();

      v8 = type metadata accessor for ModelResponse;
      v9 = v33;
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_25;
  }

  v40 = *(v0 + 2936);
  swift_getKeyPath();
  *(v0 + 2200) = v40;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool, &protocol conformance descriptor for UseDeviceAssistantTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v41 = *(v40 + 64);
  if (v41)
  {
    v42 = *(v0 + 2936);
    v43 = *(v0 + 2840);
    v44 = *(v0 + 2232);
    v45 = *(v0 + 2224);
    v46 = *(v42 + 72);
    v47 = *(v42 + 80);
    v48 = *(v42 + 56);
    *(v0 + 1304) = *(v42 + 48) & 1;
    *(v0 + 1312) = v48;
    *(v0 + 1320) = v41;
    *(v0 + 1328) = v46;
    *(v0 + 1336) = v47;

    ModelOrchestrator.populateDeviceAssistantInfo(_:_:_:)(v45, v44, (v0 + 1304), v43);
  }

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = *(v0 + 2384);
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v78[0] = v53;
    *v52 = 136315650;
    *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v78);
    *(v52 + 12) = 2080;
    *(v52 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v78);
    *(v52 + 22) = 2080;
    swift_beginAccess();

    v55 = MEMORY[0x2530570A0](v54, v51);
    v57 = v56;

    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, v78);

    *(v52 + 24) = v58;
    _os_log_impl(&dword_24FD67000, v49, v50, "%s.%s Received response %s", v52, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v53, -1, -1);
    MEMORY[0x253057F40](v52, -1, -1);
  }

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v78[0] = v62;
    *v61 = 136315650;
    *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v78);
    *(v61 + 12) = 2080;
    *(v61 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v78);
    *(v61 + 22) = 2080;
    swift_beginAccess();

    v64 = MEMORY[0x2530570A0](v63, &type metadata for Attribution);
    v66 = v65;

    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v78);

    *(v61 + 24) = v67;
    _os_log_impl(&dword_24FD67000, v59, v60, "%s.%s Received attribution %s", v61, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v62, -1, -1);
    MEMORY[0x253057F40](v61, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
LABEL_25:
    swift_once();
  }

  v68 = static SELFUtils.shared;
  swift_beginAccess();

  v69 = String.count.getter();

  if ((v69 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (HIDWORD(v69))
  {
    goto LABEL_27;
  }

  v70 = *(v0 + 2840);
  v71 = &v68[OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_generativeResultCharactersCount];
  v72 = *(v0 + 2216);
  swift_beginAccess();
  *v71 = v69;
  v71[4] = 0;
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v70, v72, type metadata accessor for ModelResponse);
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v70, type metadata accessor for ModelResponse);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1344));

  v38 = *(v0 + 8);
LABEL_10:

  return v38();
}

{
  v1 = *(v0 + 3072);
  v31 = *(v0 + 3048);
  v32 = *(v0 + 3056);
  v29 = *(v0 + 3285);
  v30 = *(v0 + 3287);
  v25 = *(v0 + 3268);
  v2 = *(v0 + 2376);
  v3 = *(v0 + 2368);
  v24 = v3;
  v4 = *(v0 + 2352);
  v5 = *(v0 + 2344);
  v23 = *(v0 + 3064);
  v6 = *(v0 + 2272);
  v7 = *(v0 + 2240);
  v8 = *(v0 + 2232);
  v27 = *(v0 + 2360);
  v28 = *(v0 + 2224);

  *(v6 + v1) = 1;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1344, v0 + 1504);
  v9 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_modelSession;
  swift_beginAccess();
  outlined assign with take of ModelSession?(v0 + 1504, v6 + v9);
  swift_endAccess();
  v26 = v2;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v2, 0, 1, v10);
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1344, v0 + 1424);
  (*(v4 + 16))(v3, v7 + v25, v5);
  v11 = v8;

  v12 = static MainActor.shared.getter();
  v13 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v14 = (v27 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 2) = v12;
  *(v16 + 3) = v17;
  outlined init with take of TypedValueAsyncResolvable((v0 + 1424), (v16 + 32));
  *(v16 + 9) = v28;
  *(v16 + 10) = v11;
  *(v16 + 11) = 0;
  (*(v4 + 32))(&v16[v13], v24, v5);
  v18 = &v16[v14];
  *v18 = partial apply for implicit closure #17 in implicit closure #16 in ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  v18[1] = v23;
  v19 = &v16[v15];
  *v19 = v6;
  v19[8] = v30;
  v19[9] = v29;
  v20 = &v16[(v15 + 17) & 0xFFFFFFFFFFFFFFF8];
  *v20 = v31;
  *(v20 + 1) = v32;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v26, &closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:)partial apply, v16);

  v21 = swift_task_alloc();
  *(v0 + 3080) = v21;
  *v21 = v0;
  v21[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);

  return PartnerStreamWrapper.waitForResponse()();
}

{
  *(v0 + 3288) = *(*(v0 + 2240) + 41);
  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2864);
  v2 = *(&static Disclaimer.partnerName + 1);
  *(v0 + 3120) = static Disclaimer.partnerName;
  *(v0 + 3128) = v2;
  *(v0 + 3272) = *(v1 + 32);
  v3 = swift_allocObject();
  *(v0 + 3136) = v3;
  v4 = *(v0 + 1080);
  *(v3 + 112) = *(v0 + 1064);
  *(v3 + 128) = v4;
  *(v3 + 144) = *(v0 + 1096);
  v5 = *(v0 + 1016);
  *(v3 + 48) = *(v0 + 1000);
  *(v3 + 64) = v5;
  v6 = *(v0 + 1048);
  *(v3 + 80) = *(v0 + 1032);
  *(v3 + 96) = v6;
  v7 = *(v0 + 984);
  *(v3 + 16) = *(v0 + 968);
  *(v3 + 32) = v7;
  outlined init with copy of IntentCallbackManager(v0 + 968, v0 + 832);

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), 0, 0);
}

{

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), 0, 0);
}

{
  v69 = v0;
  v68 = *MEMORY[0x277D85DE8];
  v1 = v0[284];
  if (*(v1 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamEnded) == 1)
  {
    v2 = v0[340];
    v3 = v0[339];
    v4 = v0[334];

    (*(v2 + 56))(v4, 1, 1, v3);
  }

  else
  {
    v5 = v0[340];
    v6 = v0[339];
    v7 = v0[333];
    v8 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
    swift_beginAccess();
    outlined init with copy of Date?(v1 + v8, v7, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    v9 = *(v5 + 48);
    if (v9(v7, 1, v6) == 1)
    {
      v60 = v9;
      v10 = v0[356];
      v11 = v0[345];
      v12 = v0[339];
      v13 = v0[325];
      v63 = v13;
      v14 = v0[299];
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
      v16 = *(v14 + 72);
      v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v66 = v16;
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_24FE1A560;
      v59 = v17;
      v19 = (v18 + v17);
      *v19 = 0;
      v19[1] = 0xE000000000000000;
      v65 = v18 + v17;
      swift_storeEnumTagMultiPayload();
      v0[221] = v10;
      v0[222] = MEMORY[0x277D0D628];
      __swift_allocate_boxed_opaque_existential_1(v0 + 218);
      static GenerativeAssistantFeatureFlagManager.instance.getter();
      v20 = (v11 + v12[14]);
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      v67 = 49;
      v21 = MEMORY[0x277D84F90];
      v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      v23 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v67, 0, v22);

      *v20 = v23;
      *v11 = 0;
      *(v11 + 8) = 0xE000000000000000;
      *(v11 + 16) = v18;
      *(v11 + 24) = v21;
      *(v11 + 32) = 64;
      *(v11 + 40) = v21;
      *(v11 + 48) = v21;
      *(v11 + v12[15]) = v21;
      *(v11 + v12[12]) = 1;
      v24 = (v11 + v12[13]);
      *v24 = 0;
      v24[1] = 0xE000000000000000;
      outlined init with copy of Date?(v63, v11 + v12[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v25 = (v11 + v12[11]);
      *v25 = 0;
      v25[1] = 0xE000000000000000;
      *(v11 + v12[16]) = 0;
      *(v11 + v12[17]) = 0;
      v26 = (v11 + v12[18]);
      *v26 = 0;
      v26[1] = 0xE000000000000000;
      v27 = (v11 + v12[19]);
      *v27 = 0;
      v27[1] = 0xE000000000000000;
      outlined init with copy of GenerativeAssistantFeatureFlagManaging((v0 + 218), v11 + v12[21]);
      *(v11 + v12[20]) = xmmword_24FE1AE00;
      if (dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter())
      {
        v28 = v0[345];
        v29 = v0[311];
        v30 = v0[310];
        v61 = v0[304];
        v31._countAndFlagsBits = 0;
        v31._object = 0xE000000000000000;
        v32 = GeneratedResponse.updateText(_:)(v31);
        *v28 = v32._countAndFlagsBits;
        *(v11 + 8) = v32._object;
        v33 = *(v18 + 16);
        v34 = (v29 + 56);
        v35 = (v29 + 48);

        v36 = 0;
        v62 = v18;
        v64 = v18;
        while (1)
        {
          if (v36 == v33)
          {
            v37 = 1;
            v36 = v33;
          }

          else
          {
            if (v36 >= *(v64 + 16))
            {
              __break(1u);
LABEL_29:
              __break(1u);
            }

            v38 = v0[317];
            v39 = v0[312];
            v40 = *(v30 + 48);
            *v39 = v36;
            _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v65 + v36 * v66, v39 + v40, type metadata accessor for GeneratedResponse.RichContentEntity);
            outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v39, v38, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
            v37 = 0;
            ++v36;
          }

          v41 = v0[318];
          v42 = v0[317];
          v43 = v0[310];
          (*v34)(v42, v37, 1, v43);
          outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v42, v41, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
          if ((*v35)(v41, 1, v43) == 1)
          {
            break;
          }

          v44 = v0[318];
          v45 = *v44;
          outlined init with take of GeneratedResponse(v44 + *(v30 + 48), v0[305], type metadata accessor for GeneratedResponse.RichContentEntity);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v47 = v0[305];
          if (EnumCaseMultiPayload)
          {
            _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v47, type metadata accessor for GeneratedResponse.RichContentEntity);
          }

          else
          {
            v48 = v0[304];
            _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v47, type metadata accessor for GeneratedResponse.RichContentEntity);
            *v48 = v32._countAndFlagsBits;
            *(v61 + 8) = v32._object;
            swift_storeEnumTagMultiPayload();

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v49 = v62;
              if ((v45 & 0x8000000000000000) != 0)
              {
                goto LABEL_18;
              }
            }

            else
            {
              v62 = specialized _ArrayBuffer._consumeAndCreateNew()(v62);
              v49 = v62;
              if ((v45 & 0x8000000000000000) != 0)
              {
LABEL_18:
                __break(1u);
                goto LABEL_19;
              }
            }

            if (v45 >= v49[2])
            {
              goto LABEL_29;
            }

            outlined assign with take of GeneratedResponse.RichContentEntity(v0[304], v49 + v59 + v45 * v66);
            *(v11 + 16) = v49;
          }
        }
      }

      v52 = v0[345];
      v53 = v0[339];
      v54 = v0[334];
      v55 = v0[333];
      outlined destroy of OnScreenContent.Document?(v0[325], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v52, v54, type metadata accessor for GeneratedResponse);
      __swift_destroy_boxed_opaque_existential_0(v0 + 218);
      _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v52, type metadata accessor for GeneratedResponse);
      if (v60(v55, 1, v53) != 1)
      {
        outlined destroy of OnScreenContent.Document?(v0[333], &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
      }
    }

    else
    {
LABEL_19:
      v50 = v0[334];
      v51 = v0[333];

      outlined init with take of GeneratedResponse(v51, v50, type metadata accessor for GeneratedResponse);
    }

    (*(v0[340] + 56))(v0[334], 0, 1, v0[339]);
  }

  v56 = v0[363];
  v57 = v0[362];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v57, v56);
}

{
  v82 = v0;
  v81[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2720);
  v2 = *(v0 + 2712);
  v3 = *(v0 + 2672);

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 3104);
    v5 = *(v0 + 2336);
    v6 = *(v0 + 2296);
    v7 = *(v0 + 2288);
    outlined destroy of OnScreenContent.Document?(*(v0 + 2672), &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728], MEMORY[0x277D0D730]);
    swift_allocError();
    (*(v6 + 104))(v8, *MEMORY[0x277D0D720], v7);
    swift_willThrow();

    v9 = type metadata accessor for UploadableImageData;
    v10 = v5;
LABEL_9:
    _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v10, v9);
    __swift_destroy_boxed_opaque_existential_0((v0 + 1344));

    v40 = *(v0 + 8);
    goto LABEL_10;
  }

  v11 = *(v0 + 2840);
  v12 = *(v0 + 2832);
  v13 = *(v0 + 2792);
  v14 = *(v0 + 2768);
  v78 = v14;
  v79 = *(v0 + 3104);
  v15 = *(v0 + 2712);
  v16 = *(v0 + 2616);
  v75 = v16;
  v80 = *(v0 + 2336);
  outlined init with take of GeneratedResponse(*(v0 + 2672), v14, type metadata accessor for GeneratedResponse);
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v14, v13, type metadata accessor for GeneratedResponse);
  v17 = v13[1];
  v18 = (v13 + *(v15 + 44));
  v19 = v18[1];
  v76 = *v18;
  v77 = *v13;
  v20 = type metadata accessor for URL();
  v21 = *(*(v20 - 8) + 56);
  v21(v16, 1, 1, v20);
  v22 = v12[8];
  v21(v11 + v22, 1, 1, v20);
  v23 = v12[9];
  v24 = MEMORY[0x277D84F90];
  *v11 = MEMORY[0x277D84F90];
  *(v11 + 8) = v76;
  *(v11 + 16) = v19;

  outlined assign with copy of URL?(v75, v11 + v22);
  *(v11 + v23) = v24;
  *(v11 + 32) = v24;
  v25 = (v11 + v12[14]);
  *v25 = v77;
  v25[1] = v17;
  *(v11 + v12[10]) = 0;
  *(v11 + v12[11]) = 0;
  v26 = (v11 + v12[12]);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v13, type metadata accessor for GeneratedResponse);
  outlined destroy of OnScreenContent.Document?(v75, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  v27 = (v11 + v12[13]);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  *(v11 + 24) = 0;
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v78, type metadata accessor for GeneratedResponse);
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v80, type metadata accessor for UploadableImageData);
  v28 = *(v0 + 2912);
  swift_getKeyPath();
  *(v0 + 2208) = v28;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool, &protocol conformance descriptor for CallEmergencyServicesTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v28 + 64))
  {
    v29 = *(v0 + 2304);
    v30 = *(v0 + 2296);
    v31 = *(v0 + 2288);
    *v29 = EmergencyServicesInvocation.EmergencyService.rawValue.getter(*(*(v0 + 2912) + 48));
    v29[1] = v32;
    (*(v30 + 104))(v29, *MEMORY[0x277D0D718], v31);
    v33 = one-time initialization token for shared;

    if (v33 != -1)
    {
      swift_once();
    }

    v34 = GATError.errorCode.getter();
    if (v34 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v34 <= 0x7FFFFFFF)
    {
      v35 = *(v0 + 2840);
      v36 = *(v0 + 2304);
      v37 = *(v0 + 2296);
      v38 = *(v0 + 2288);
      SELFUtils.recordRequestFailed(code:domain:)(v34, 4);
      lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728], MEMORY[0x277D0D730]);
      swift_allocError();
      (*(v37 + 32))(v39, v36, v38);

      swift_willThrow();

      v9 = type metadata accessor for ModelResponse;
      v10 = v35;
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_25;
  }

  v42 = *(v0 + 2936);
  swift_getKeyPath();
  *(v0 + 2200) = v42;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool, &protocol conformance descriptor for UseDeviceAssistantTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = *(v42 + 64);
  if (v43)
  {
    v44 = *(v0 + 2936);
    v45 = *(v0 + 2840);
    v46 = *(v0 + 2232);
    v47 = *(v0 + 2224);
    v48 = *(v44 + 72);
    v49 = *(v44 + 80);
    v50 = *(v44 + 56);
    *(v0 + 1304) = *(v44 + 48) & 1;
    *(v0 + 1312) = v50;
    *(v0 + 1320) = v43;
    *(v0 + 1328) = v48;
    *(v0 + 1336) = v49;

    ModelOrchestrator.populateDeviceAssistantInfo(_:_:_:)(v47, v46, (v0 + 1304), v45);
  }

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = *(v0 + 2384);
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v81[0] = v55;
    *v54 = 136315650;
    *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v81);
    *(v54 + 12) = 2080;
    *(v54 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v81);
    *(v54 + 22) = 2080;
    swift_beginAccess();

    v57 = MEMORY[0x2530570A0](v56, v53);
    v59 = v58;

    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v81);

    *(v54 + 24) = v60;
    _os_log_impl(&dword_24FD67000, v51, v52, "%s.%s Received response %s", v54, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v55, -1, -1);
    MEMORY[0x253057F40](v54, -1, -1);
  }

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v81[0] = v64;
    *v63 = 136315650;
    *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v81);
    *(v63 + 12) = 2080;
    *(v63 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v81);
    *(v63 + 22) = 2080;
    swift_beginAccess();

    v66 = MEMORY[0x2530570A0](v65, &type metadata for Attribution);
    v68 = v67;

    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, v81);

    *(v63 + 24) = v69;
    _os_log_impl(&dword_24FD67000, v61, v62, "%s.%s Received attribution %s", v63, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v64, -1, -1);
    MEMORY[0x253057F40](v63, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
LABEL_25:
    swift_once();
  }

  v70 = static SELFUtils.shared;
  swift_beginAccess();

  v71 = String.count.getter();

  if ((v71 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (HIDWORD(v71))
  {
    goto LABEL_27;
  }

  v72 = *(v0 + 2840);
  v73 = &v70[OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_generativeResultCharactersCount];
  v74 = *(v0 + 2216);
  swift_beginAccess();
  *v73 = v71;
  v73[4] = 0;
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v72, v74, type metadata accessor for ModelResponse);
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v72, type metadata accessor for ModelResponse);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1344));

  v40 = *(v0 + 8);
LABEL_10:

  return v40();
}

{
  v1 = *(v0 + 3144);
  v31 = *(v0 + 3120);
  v32 = *(v0 + 3128);
  v29 = *(v0 + 3285);
  v30 = *(v0 + 3288);
  v25 = *(v0 + 3272);
  v2 = *(v0 + 2376);
  v3 = *(v0 + 2368);
  v24 = v3;
  v4 = *(v0 + 2352);
  v5 = *(v0 + 2344);
  v23 = *(v0 + 3136);
  v6 = *(v0 + 2272);
  v7 = *(v0 + 2240);
  v8 = *(v0 + 2232);
  v27 = *(v0 + 2360);
  v28 = *(v0 + 2224);

  *(v6 + v1) = 1;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1344, v0 + 1704);
  v9 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_modelSession;
  swift_beginAccess();
  outlined assign with take of ModelSession?(v0 + 1704, v6 + v9);
  swift_endAccess();
  v26 = v2;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v2, 0, 1, v10);
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1344, v0 + 1784);
  (*(v4 + 16))(v3, v7 + v25, v5);
  v11 = v8;

  v12 = static MainActor.shared.getter();
  v13 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v14 = (v27 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 2) = v12;
  *(v16 + 3) = v17;
  outlined init with take of TypedValueAsyncResolvable((v0 + 1784), (v16 + 32));
  *(v16 + 9) = v28;
  *(v16 + 10) = v11;
  *(v16 + 11) = 0;
  (*(v4 + 32))(&v16[v13], v24, v5);
  v18 = &v16[v14];
  *v18 = partial apply for implicit closure #17 in implicit closure #16 in ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  v18[1] = v23;
  v19 = &v16[v15];
  *v19 = v6;
  v19[8] = v30;
  v19[9] = v29;
  v20 = &v16[(v15 + 17) & 0xFFFFFFFFFFFFFFF8];
  *v20 = v31;
  *(v20 + 1) = v32;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v26, &closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:)partial apply, v16);

  v21 = swift_task_alloc();
  *(v0 + 3152) = v21;
  *v21 = v0;
  v21[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);

  return PartnerStreamWrapper.waitForResponse()();
}

{

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), 0, 0);
}

{
  v69 = v0;
  v68 = *MEMORY[0x277D85DE8];
  v1 = v0[284];
  if (*(v1 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamEnded) == 1)
  {
    v2 = v0[340];
    v3 = v0[339];
    v4 = v0[332];

    (*(v2 + 56))(v4, 1, 1, v3);
  }

  else
  {
    v5 = v0[340];
    v6 = v0[339];
    v7 = v0[331];
    v8 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
    swift_beginAccess();
    outlined init with copy of Date?(v1 + v8, v7, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    v9 = *(v5 + 48);
    if (v9(v7, 1, v6) == 1)
    {
      v60 = v9;
      v10 = v0[356];
      v11 = v0[343];
      v12 = v0[339];
      v13 = v0[324];
      v63 = v13;
      v14 = v0[299];
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
      v16 = *(v14 + 72);
      v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v66 = v16;
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_24FE1A560;
      v59 = v17;
      v19 = (v18 + v17);
      *v19 = 0;
      v19[1] = 0xE000000000000000;
      v65 = v18 + v17;
      swift_storeEnumTagMultiPayload();
      v0[141] = v10;
      v0[142] = MEMORY[0x277D0D628];
      __swift_allocate_boxed_opaque_existential_1(v0 + 138);
      static GenerativeAssistantFeatureFlagManager.instance.getter();
      v20 = (v11 + v12[14]);
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      v67 = 49;
      v21 = MEMORY[0x277D84F90];
      v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      v23 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v67, 0, v22);

      *v20 = v23;
      *v11 = 0;
      *(v11 + 8) = 0xE000000000000000;
      *(v11 + 16) = v18;
      *(v11 + 24) = v21;
      *(v11 + 32) = 64;
      *(v11 + 40) = v21;
      *(v11 + 48) = v21;
      *(v11 + v12[15]) = v21;
      *(v11 + v12[12]) = 1;
      v24 = (v11 + v12[13]);
      *v24 = 0;
      v24[1] = 0xE000000000000000;
      outlined init with copy of Date?(v63, v11 + v12[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v25 = (v11 + v12[11]);
      *v25 = 0;
      v25[1] = 0xE000000000000000;
      *(v11 + v12[16]) = 0;
      *(v11 + v12[17]) = 0;
      v26 = (v11 + v12[18]);
      *v26 = 0;
      v26[1] = 0xE000000000000000;
      v27 = (v11 + v12[19]);
      *v27 = 0;
      v27[1] = 0xE000000000000000;
      outlined init with copy of GenerativeAssistantFeatureFlagManaging((v0 + 138), v11 + v12[21]);
      *(v11 + v12[20]) = xmmword_24FE1AE00;
      if (dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter())
      {
        v28 = v0[343];
        v29 = v0[311];
        v30 = v0[310];
        v61 = v0[302];
        v31._countAndFlagsBits = 0;
        v31._object = 0xE000000000000000;
        v32 = GeneratedResponse.updateText(_:)(v31);
        *v28 = v32._countAndFlagsBits;
        *(v11 + 8) = v32._object;
        v33 = *(v18 + 16);
        v34 = (v29 + 56);
        v35 = (v29 + 48);

        v36 = 0;
        v62 = v18;
        v64 = v18;
        while (1)
        {
          if (v36 == v33)
          {
            v37 = 1;
            v36 = v33;
          }

          else
          {
            if (v36 >= *(v64 + 16))
            {
              __break(1u);
LABEL_29:
              __break(1u);
            }

            v38 = v0[315];
            v39 = v0[312];
            v40 = *(v30 + 48);
            *v39 = v36;
            _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v65 + v36 * v66, v39 + v40, type metadata accessor for GeneratedResponse.RichContentEntity);
            outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v39, v38, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
            v37 = 0;
            ++v36;
          }

          v41 = v0[316];
          v42 = v0[315];
          v43 = v0[310];
          (*v34)(v42, v37, 1, v43);
          outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v42, v41, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
          if ((*v35)(v41, 1, v43) == 1)
          {
            break;
          }

          v44 = v0[316];
          v45 = *v44;
          outlined init with take of GeneratedResponse(v44 + *(v30 + 48), v0[303], type metadata accessor for GeneratedResponse.RichContentEntity);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v47 = v0[303];
          if (EnumCaseMultiPayload)
          {
            _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v47, type metadata accessor for GeneratedResponse.RichContentEntity);
          }

          else
          {
            v48 = v0[302];
            _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v47, type metadata accessor for GeneratedResponse.RichContentEntity);
            *v48 = v32._countAndFlagsBits;
            *(v61 + 8) = v32._object;
            swift_storeEnumTagMultiPayload();

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v49 = v62;
              if ((v45 & 0x8000000000000000) != 0)
              {
                goto LABEL_18;
              }
            }

            else
            {
              v62 = specialized _ArrayBuffer._consumeAndCreateNew()(v62);
              v49 = v62;
              if ((v45 & 0x8000000000000000) != 0)
              {
LABEL_18:
                __break(1u);
                goto LABEL_19;
              }
            }

            if (v45 >= v49[2])
            {
              goto LABEL_29;
            }

            outlined assign with take of GeneratedResponse.RichContentEntity(v0[302], v49 + v59 + v45 * v66);
            *(v11 + 16) = v49;
          }
        }
      }

      v52 = v0[343];
      v53 = v0[339];
      v54 = v0[332];
      v55 = v0[331];
      outlined destroy of OnScreenContent.Document?(v0[324], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v52, v54, type metadata accessor for GeneratedResponse);
      __swift_destroy_boxed_opaque_existential_0(v0 + 138);
      _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v52, type metadata accessor for GeneratedResponse);
      if (v60(v55, 1, v53) != 1)
      {
        outlined destroy of OnScreenContent.Document?(v0[331], &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
      }
    }

    else
    {
LABEL_19:
      v50 = v0[332];
      v51 = v0[331];

      outlined init with take of GeneratedResponse(v51, v50, type metadata accessor for GeneratedResponse);
    }

    (*(v0[340] + 56))(v0[332], 0, 1, v0[339]);
  }

  v56 = v0[363];
  v57 = v0[362];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v57, v56);
}

{
  v76 = v0;
  v75[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2720);
  v2 = *(v0 + 2712);
  v3 = *(v0 + 2656);

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 2296);
    v5 = *(v0 + 2288);
    outlined destroy of OnScreenContent.Document?(*(v0 + 2656), &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728], MEMORY[0x277D0D730]);
    swift_allocError();
    (*(v4 + 104))(v6, *MEMORY[0x277D0D720], v5);
    swift_willThrow();

LABEL_9:
    __swift_destroy_boxed_opaque_existential_0((v0 + 1344));

    v36 = *(v0 + 8);
    goto LABEL_10;
  }

  v7 = *(v0 + 2840);
  v8 = *(v0 + 2832);
  v9 = *(v0 + 2792);
  v10 = *(v0 + 2752);
  v74 = v10;
  v11 = *(v0 + 2712);
  v12 = *(v0 + 2616);
  v71 = v12;
  outlined init with take of GeneratedResponse(*(v0 + 2656), v10, type metadata accessor for GeneratedResponse);
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v10, v9, type metadata accessor for GeneratedResponse);
  v13 = v9[1];
  v14 = (v9 + *(v11 + 44));
  v15 = v14[1];
  v72 = *v14;
  v73 = *v9;
  v16 = type metadata accessor for URL();
  v17 = *(*(v16 - 8) + 56);
  v17(v12, 1, 1, v16);
  v18 = v8[8];
  v17(v7 + v18, 1, 1, v16);
  v19 = v8[9];
  v20 = MEMORY[0x277D84F90];
  *v7 = MEMORY[0x277D84F90];
  *(v7 + 8) = v72;
  *(v7 + 16) = v15;

  outlined assign with copy of URL?(v71, v7 + v18);
  *(v7 + v19) = v20;
  *(v7 + 32) = v20;
  v21 = (v7 + v8[14]);
  *v21 = v73;
  v21[1] = v13;
  *(v7 + v8[10]) = 0;
  *(v7 + v8[11]) = 0;
  v22 = (v7 + v8[12]);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v9, type metadata accessor for GeneratedResponse);
  outlined destroy of OnScreenContent.Document?(v71, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v23 = (v7 + v8[13]);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  *(v7 + 24) = 0;
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v74, type metadata accessor for GeneratedResponse);
  v24 = *(v0 + 2912);
  swift_getKeyPath();
  *(v0 + 2208) = v24;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool, &protocol conformance descriptor for CallEmergencyServicesTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v24 + 64))
  {
    v25 = *(v0 + 2304);
    v26 = *(v0 + 2296);
    v27 = *(v0 + 2288);
    *v25 = EmergencyServicesInvocation.EmergencyService.rawValue.getter(*(*(v0 + 2912) + 48));
    v25[1] = v28;
    (*(v26 + 104))(v25, *MEMORY[0x277D0D718], v27);
    v29 = one-time initialization token for shared;

    if (v29 != -1)
    {
      swift_once();
    }

    v30 = GATError.errorCode.getter();
    if (v30 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v30 <= 0x7FFFFFFF)
    {
      v31 = *(v0 + 2840);
      v32 = *(v0 + 2304);
      v33 = *(v0 + 2296);
      v34 = *(v0 + 2288);
      SELFUtils.recordRequestFailed(code:domain:)(v30, 4);
      lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728], MEMORY[0x277D0D730]);
      swift_allocError();
      (*(v33 + 32))(v35, v32, v34);

      swift_willThrow();

      _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v31, type metadata accessor for ModelResponse);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_25;
  }

  v38 = *(v0 + 2936);
  swift_getKeyPath();
  *(v0 + 2200) = v38;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool, &protocol conformance descriptor for UseDeviceAssistantTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = *(v38 + 64);
  if (v39)
  {
    v40 = *(v0 + 2936);
    v41 = *(v0 + 2840);
    v42 = *(v0 + 2232);
    v43 = *(v0 + 2224);
    v44 = *(v40 + 72);
    v45 = *(v40 + 80);
    v46 = *(v40 + 56);
    *(v0 + 1304) = *(v40 + 48) & 1;
    *(v0 + 1312) = v46;
    *(v0 + 1320) = v39;
    *(v0 + 1328) = v44;
    *(v0 + 1336) = v45;

    ModelOrchestrator.populateDeviceAssistantInfo(_:_:_:)(v43, v42, (v0 + 1304), v41);
  }

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = *(v0 + 2384);
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v75[0] = v51;
    *v50 = 136315650;
    *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v75);
    *(v50 + 12) = 2080;
    *(v50 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v75);
    *(v50 + 22) = 2080;
    swift_beginAccess();

    v53 = MEMORY[0x2530570A0](v52, v49);
    v55 = v54;

    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, v75);

    *(v50 + 24) = v56;
    _os_log_impl(&dword_24FD67000, v47, v48, "%s.%s Received response %s", v50, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v51, -1, -1);
    MEMORY[0x253057F40](v50, -1, -1);
  }

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v75[0] = v60;
    *v59 = 136315650;
    *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v75);
    *(v59 + 12) = 2080;
    *(v59 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v75);
    *(v59 + 22) = 2080;
    swift_beginAccess();

    v62 = MEMORY[0x2530570A0](v61, &type metadata for Attribution);
    v64 = v63;

    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v75);

    *(v59 + 24) = v65;
    _os_log_impl(&dword_24FD67000, v57, v58, "%s.%s Received attribution %s", v59, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v60, -1, -1);
    MEMORY[0x253057F40](v59, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
LABEL_25:
    swift_once();
  }

  v66 = static SELFUtils.shared;
  swift_beginAccess();

  v67 = String.count.getter();

  if ((v67 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (HIDWORD(v67))
  {
    goto LABEL_27;
  }

  v68 = *(v0 + 2840);
  v69 = &v66[OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_generativeResultCharactersCount];
  v70 = *(v0 + 2216);
  swift_beginAccess();
  *v69 = v67;
  v69[4] = 0;
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v68, v70, type metadata accessor for ModelResponse);
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v68, type metadata accessor for ModelResponse);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1344));

  v36 = *(v0 + 8);
LABEL_10:

  return v36();
}

{
  v1 = *(v0 + 3192);
  v31 = *(v0 + 3168);
  v32 = *(v0 + 3176);
  v29 = *(v0 + 3285);
  v30 = *(v0 + 3289);
  v25 = *(v0 + 3276);
  v2 = *(v0 + 2376);
  v3 = *(v0 + 2368);
  v24 = v3;
  v4 = *(v0 + 2352);
  v5 = *(v0 + 2344);
  v23 = *(v0 + 3184);
  v6 = *(v0 + 2272);
  v7 = *(v0 + 2240);
  v8 = *(v0 + 2232);
  v27 = *(v0 + 2360);
  v28 = *(v0 + 2224);

  *(v6 + v1) = 1;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1344, v0 + 1464);
  v9 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_modelSession;
  swift_beginAccess();
  outlined assign with take of ModelSession?(v0 + 1464, v6 + v9);
  swift_endAccess();
  v26 = v2;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v2, 0, 1, v10);
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1344, v0 + 1544);
  (*(v4 + 16))(v3, v7 + v25, v5);
  v11 = v8;

  v12 = static MainActor.shared.getter();
  v13 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v14 = (v27 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 2) = v12;
  *(v16 + 3) = v17;
  outlined init with take of TypedValueAsyncResolvable((v0 + 1544), (v16 + 32));
  *(v16 + 9) = v28;
  *(v16 + 10) = v11;
  *(v16 + 11) = 0;
  (*(v4 + 32))(&v16[v13], v24, v5);
  v18 = &v16[v14];
  *v18 = partial apply for implicit closure #17 in implicit closure #16 in ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  v18[1] = v23;
  v19 = &v16[v15];
  *v19 = v6;
  v19[8] = v30;
  v19[9] = v29;
  v20 = &v16[(v15 + 17) & 0xFFFFFFFFFFFFFFF8];
  *v20 = v31;
  *(v20 + 1) = v32;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v26, &closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:)partial apply, v16);

  v21 = swift_task_alloc();
  *(v0 + 3200) = v21;
  *v21 = v0;
  v21[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);

  return PartnerStreamWrapper.waitForResponse()();
}

{

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), 0, 0);
}

{
  v69 = v0;
  v68 = *MEMORY[0x277D85DE8];
  v1 = v0[284];
  if (*(v1 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamEnded) == 1)
  {
    v2 = v0[340];
    v3 = v0[339];
    v4 = v0[330];

    (*(v2 + 56))(v4, 1, 1, v3);
  }

  else
  {
    v5 = v0[340];
    v6 = v0[339];
    v7 = v0[329];
    v8 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
    swift_beginAccess();
    outlined init with copy of Date?(v1 + v8, v7, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    v9 = *(v5 + 48);
    if (v9(v7, 1, v6) == 1)
    {
      v60 = v9;
      v10 = v0[356];
      v11 = v0[341];
      v12 = v0[339];
      v13 = v0[323];
      v63 = v13;
      v14 = v0[299];
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
      v16 = *(v14 + 72);
      v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v66 = v16;
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_24FE1A560;
      v59 = v17;
      v19 = (v18 + v17);
      *v19 = 0;
      v19[1] = 0xE000000000000000;
      v65 = v18 + v17;
      swift_storeEnumTagMultiPayload();
      v0[146] = v10;
      v0[147] = MEMORY[0x277D0D628];
      __swift_allocate_boxed_opaque_existential_1(v0 + 143);
      static GenerativeAssistantFeatureFlagManager.instance.getter();
      v20 = (v11 + v12[14]);
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      v67 = 49;
      v21 = MEMORY[0x277D84F90];
      v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      v23 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v67, 0, v22);

      *v20 = v23;
      *v11 = 0;
      *(v11 + 8) = 0xE000000000000000;
      *(v11 + 16) = v18;
      *(v11 + 24) = v21;
      *(v11 + 32) = 64;
      *(v11 + 40) = v21;
      *(v11 + 48) = v21;
      *(v11 + v12[15]) = v21;
      *(v11 + v12[12]) = 1;
      v24 = (v11 + v12[13]);
      *v24 = 0;
      v24[1] = 0xE000000000000000;
      outlined init with copy of Date?(v63, v11 + v12[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v25 = (v11 + v12[11]);
      *v25 = 0;
      v25[1] = 0xE000000000000000;
      *(v11 + v12[16]) = 0;
      *(v11 + v12[17]) = 0;
      v26 = (v11 + v12[18]);
      *v26 = 0;
      v26[1] = 0xE000000000000000;
      v27 = (v11 + v12[19]);
      *v27 = 0;
      v27[1] = 0xE000000000000000;
      outlined init with copy of GenerativeAssistantFeatureFlagManaging((v0 + 143), v11 + v12[21]);
      *(v11 + v12[20]) = xmmword_24FE1AE00;
      if (dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter())
      {
        v28 = v0[341];
        v29 = v0[311];
        v30 = v0[310];
        v61 = v0[300];
        v31._countAndFlagsBits = 0;
        v31._object = 0xE000000000000000;
        v32 = GeneratedResponse.updateText(_:)(v31);
        *v28 = v32._countAndFlagsBits;
        *(v11 + 8) = v32._object;
        v33 = *(v18 + 16);
        v34 = (v29 + 56);
        v35 = (v29 + 48);

        v36 = 0;
        v62 = v18;
        v64 = v18;
        while (1)
        {
          if (v36 == v33)
          {
            v37 = 1;
            v36 = v33;
          }

          else
          {
            if (v36 >= *(v64 + 16))
            {
              __break(1u);
LABEL_29:
              __break(1u);
            }

            v38 = v0[313];
            v39 = v0[312];
            v40 = *(v30 + 48);
            *v39 = v36;
            _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v65 + v36 * v66, v39 + v40, type metadata accessor for GeneratedResponse.RichContentEntity);
            outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v39, v38, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
            v37 = 0;
            ++v36;
          }

          v41 = v0[314];
          v42 = v0[313];
          v43 = v0[310];
          (*v34)(v42, v37, 1, v43);
          outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v42, v41, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
          if ((*v35)(v41, 1, v43) == 1)
          {
            break;
          }

          v44 = v0[314];
          v45 = *v44;
          outlined init with take of GeneratedResponse(v44 + *(v30 + 48), v0[301], type metadata accessor for GeneratedResponse.RichContentEntity);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v47 = v0[301];
          if (EnumCaseMultiPayload)
          {
            _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v47, type metadata accessor for GeneratedResponse.RichContentEntity);
          }

          else
          {
            v48 = v0[300];
            _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v47, type metadata accessor for GeneratedResponse.RichContentEntity);
            *v48 = v32._countAndFlagsBits;
            *(v61 + 8) = v32._object;
            swift_storeEnumTagMultiPayload();

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v49 = v62;
              if ((v45 & 0x8000000000000000) != 0)
              {
                goto LABEL_18;
              }
            }

            else
            {
              v62 = specialized _ArrayBuffer._consumeAndCreateNew()(v62);
              v49 = v62;
              if ((v45 & 0x8000000000000000) != 0)
              {
LABEL_18:
                __break(1u);
                goto LABEL_19;
              }
            }

            if (v45 >= v49[2])
            {
              goto LABEL_29;
            }

            outlined assign with take of GeneratedResponse.RichContentEntity(v0[300], v49 + v59 + v45 * v66);
            *(v11 + 16) = v49;
          }
        }
      }

      v52 = v0[341];
      v53 = v0[339];
      v54 = v0[330];
      v55 = v0[329];
      outlined destroy of OnScreenContent.Document?(v0[323], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v52, v54, type metadata accessor for GeneratedResponse);
      __swift_destroy_boxed_opaque_existential_0(v0 + 143);
      _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v52, type metadata accessor for GeneratedResponse);
      if (v60(v55, 1, v53) != 1)
      {
        outlined destroy of OnScreenContent.Document?(v0[329], &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
      }
    }

    else
    {
LABEL_19:
      v50 = v0[330];
      v51 = v0[329];

      outlined init with take of GeneratedResponse(v51, v50, type metadata accessor for GeneratedResponse);
    }

    (*(v0[340] + 56))(v0[330], 0, 1, v0[339]);
  }

  v56 = v0[363];
  v57 = v0[362];

  return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v57, v56);
}

{
  v76 = v0;
  v75[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2720);
  v2 = *(v0 + 2712);
  v3 = *(v0 + 2640);

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 2296);
    v5 = *(v0 + 2288);
    outlined destroy of OnScreenContent.Document?(*(v0 + 2640), &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728], MEMORY[0x277D0D730]);
    swift_allocError();
    (*(v4 + 104))(v6, *MEMORY[0x277D0D720], v5);
    swift_willThrow();

LABEL_9:
    __swift_destroy_boxed_opaque_existential_0((v0 + 1344));

    v36 = *(v0 + 8);
    goto LABEL_10;
  }

  v7 = *(v0 + 2840);
  v8 = *(v0 + 2832);
  v9 = *(v0 + 2792);
  v10 = *(v0 + 2736);
  v74 = v10;
  v11 = *(v0 + 2712);
  v12 = *(v0 + 2616);
  v71 = v12;
  outlined init with take of GeneratedResponse(*(v0 + 2640), v10, type metadata accessor for GeneratedResponse);
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v10, v9, type metadata accessor for GeneratedResponse);
  v13 = v9[1];
  v14 = (v9 + *(v11 + 44));
  v15 = v14[1];
  v72 = *v14;
  v73 = *v9;
  v16 = type metadata accessor for URL();
  v17 = *(*(v16 - 8) + 56);
  v17(v12, 1, 1, v16);
  v18 = v8[8];
  v17(v7 + v18, 1, 1, v16);
  v19 = v8[9];
  v20 = MEMORY[0x277D84F90];
  *v7 = MEMORY[0x277D84F90];
  *(v7 + 8) = v72;
  *(v7 + 16) = v15;

  outlined assign with copy of URL?(v71, v7 + v18);
  *(v7 + v19) = v20;
  *(v7 + 32) = v20;
  v21 = (v7 + v8[14]);
  *v21 = v73;
  v21[1] = v13;
  *(v7 + v8[10]) = 0;
  *(v7 + v8[11]) = 0;
  v22 = (v7 + v8[12]);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v9, type metadata accessor for GeneratedResponse);
  outlined destroy of OnScreenContent.Document?(v71, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v23 = (v7 + v8[13]);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  *(v7 + 24) = 0;
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v74, type metadata accessor for GeneratedResponse);
  v24 = *(v0 + 2912);
  swift_getKeyPath();
  *(v0 + 2208) = v24;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool, &protocol conformance descriptor for CallEmergencyServicesTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v24 + 64))
  {
    v25 = *(v0 + 2304);
    v26 = *(v0 + 2296);
    v27 = *(v0 + 2288);
    *v25 = EmergencyServicesInvocation.EmergencyService.rawValue.getter(*(*(v0 + 2912) + 48));
    v25[1] = v28;
    (*(v26 + 104))(v25, *MEMORY[0x277D0D718], v27);
    v29 = one-time initialization token for shared;

    if (v29 != -1)
    {
      swift_once();
    }

    v30 = GATError.errorCode.getter();
    if (v30 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v30 <= 0x7FFFFFFF)
    {
      v31 = *(v0 + 2840);
      v32 = *(v0 + 2304);
      v33 = *(v0 + 2296);
      v34 = *(v0 + 2288);
      SELFUtils.recordRequestFailed(code:domain:)(v30, 4);
      lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728], MEMORY[0x277D0D730]);
      swift_allocError();
      (*(v33 + 32))(v35, v32, v34);

      swift_willThrow();

      _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v31, type metadata accessor for ModelResponse);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_25;
  }

  v38 = *(v0 + 2936);
  swift_getKeyPath();
  *(v0 + 2200) = v38;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool, &protocol conformance descriptor for UseDeviceAssistantTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = *(v38 + 64);
  if (v39)
  {
    v40 = *(v0 + 2936);
    v41 = *(v0 + 2840);
    v42 = *(v0 + 2232);
    v43 = *(v0 + 2224);
    v44 = *(v40 + 72);
    v45 = *(v40 + 80);
    v46 = *(v40 + 56);
    *(v0 + 1304) = *(v40 + 48) & 1;
    *(v0 + 1312) = v46;
    *(v0 + 1320) = v39;
    *(v0 + 1328) = v44;
    *(v0 + 1336) = v45;

    ModelOrchestrator.populateDeviceAssistantInfo(_:_:_:)(v43, v42, (v0 + 1304), v41);
  }

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = *(v0 + 2384);
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v75[0] = v51;
    *v50 = 136315650;
    *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v75);
    *(v50 + 12) = 2080;
    *(v50 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v75);
    *(v50 + 22) = 2080;
    swift_beginAccess();

    v53 = MEMORY[0x2530570A0](v52, v49);
    v55 = v54;

    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, v75);

    *(v50 + 24) = v56;
    _os_log_impl(&dword_24FD67000, v47, v48, "%s.%s Received response %s", v50, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v51, -1, -1);
    MEMORY[0x253057F40](v50, -1, -1);
  }

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v75[0] = v60;
    *v59 = 136315650;
    *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v75);
    *(v59 + 12) = 2080;
    *(v59 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008CLL, 0x800000024FE34740, v75);
    *(v59 + 22) = 2080;
    swift_beginAccess();

    v62 = MEMORY[0x2530570A0](v61, &type metadata for Attribution);
    v64 = v63;

    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v75);

    *(v59 + 24) = v65;
    _os_log_impl(&dword_24FD67000, v57, v58, "%s.%s Received attribution %s", v59, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v60, -1, -1);
    MEMORY[0x253057F40](v59, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
LABEL_25:
    swift_once();
  }

  v66 = static SELFUtils.shared;
  swift_beginAccess();

  v67 = String.count.getter();

  if ((v67 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (HIDWORD(v67))
  {
    goto LABEL_27;
  }

  v68 = *(v0 + 2840);
  v69 = &v66[OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_generativeResultCharactersCount];
  v70 = *(v0 + 2216);
  swift_beginAccess();
  *v69 = v67;
  v69[4] = 0;
  _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(v68, v70, type metadata accessor for ModelResponse);
  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v68, type metadata accessor for ModelResponse);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1344));

  v36 = *(v0 + 8);
LABEL_10:

  return v36();
}

{
  v1 = *(v0 + 3240);
  v31 = *(v0 + 3216);
  v32 = *(v0 + 3224);
  v29 = *(v0 + 3285);
  v30 = *(v0 + 3290);
  v25 = *(v0 + 3280);
  v2 = *(v0 + 2376);
  v3 = *(v0 + 2368);
  v24 = v3;
  v4 = *(v0 + 2352);
  v5 = *(v0 + 2344);
  v23 = *(v0 + 3232);
  v6 = *(v0 + 2272);
  v7 = *(v0 + 2240);
  v8 = *(v0 + 2232);
  v27 = *(v0 + 2360);
  v28 = *(v0 + 2224);

  *(v6 + v1) = 1;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1344, v0 + 1664);
  v9 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_modelSession;
  swift_beginAccess();
  outlined assign with take of ModelSession?(v0 + 1664, v6 + v9);
  swift_endAccess();
  v26 = v2;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v2, 0, 1, v10);
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 1344, v0 + 1624);
  (*(v4 + 16))(v3, v7 + v25, v5);
  v11 = v8;

  v12 = static MainActor.shared.getter();
  v13 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v14 = (v27 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 2) = v12;
  *(v16 + 3) = v17;
  outlined init with take of TypedValueAsyncResolvable((v0 + 1624), (v16 + 32));
  *(v16 + 9) = v28;
  *(v16 + 10) = v11;
  *(v16 + 11) = 0;
  (*(v4 + 32))(&v16[v13], v24, v5);
  v18 = &v16[v14];
  *v18 = partial apply for implicit closure #17 in implicit closure #16 in ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  v18[1] = v23;
  v19 = &v16[v15];
  *v19 = v6;
  v19[8] = v30;
  v19[9] = v29;
  v20 = &v16[(v15 + 17) & 0xFFFFFFFFFFFFFFF8];
  *v20 = v31;
  *(v20 + 1) = v32;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v26, &async function pointer to partial apply for closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:), v16);

  v21 = swift_task_alloc();
  *(v0 + 3248) = v21;
  *v21 = v0;
  v21[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);

  return PartnerStreamWrapper.waitForResponse()();
}

{
  v1 = v0[352];

  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v1, type metadata accessor for UploadableDocumentData);
  __swift_destroy_boxed_opaque_existential_0(v0 + 168);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[292];

  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v1, type metadata accessor for UploadableImageData);
  __swift_destroy_boxed_opaque_existential_0(v0 + 168);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[292];

  _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v1, type metadata accessor for UploadableImageData);
  __swift_destroy_boxed_opaque_existential_0(v0 + 168);

  v2 = v0[1];

  return v2();
}

uint64_t ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:)(uint64_t a1)
{
  v2 = v1[284];
  v3 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted;
  v1[376] = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted;
  if (*(v2 + v3) == 1)
  {

    v4 = swift_task_alloc();
    v1[377] = v4;
    *v4 = v1;
    v4[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);

    return PartnerStreamWrapper.waitForResponse()();
  }

  else
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24FD67000, v6, v7, "Call to return streamed response before stream started. Starting to stream.", v8, 2u);
      MEMORY[0x253057F40](v8, -1, -1);
    }

    v1[378] = static MainActor.shared.getter();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v10, v9);
  }
}

{
  v2 = v1[284];
  v3 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted;
  v1[384] = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted;
  if (*(v2 + v3) == 1)
  {

    v4 = swift_task_alloc();
    v1[385] = v4;
    *v4 = v1;
    v4[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);

    return PartnerStreamWrapper.waitForResponse()();
  }

  else
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24FD67000, v6, v7, "Call to return streamed response before stream started. Starting to stream.", v8, 2u);
      MEMORY[0x253057F40](v8, -1, -1);
    }

    v1[386] = static MainActor.shared.getter();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v10, v9);
  }
}

{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 3104) = a1;
  *(v4 + 3112) = v1;

  v5 = *(v3 + 2904);
  v6 = *(v3 + 2896);
  if (v1)
  {
    v7 = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  }

  else
  {
    v7 = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v2 = v1[284];
  v3 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted;
  v1[393] = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted;
  if (*(v2 + v3) == 1)
  {

    v4 = swift_task_alloc();
    v1[394] = v4;
    *v4 = v1;
    v4[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);

    return PartnerStreamWrapper.waitForResponse()();
  }

  else
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24FD67000, v6, v7, "Call to return streamed response before stream started. Starting to stream.", v8, 2u);
      MEMORY[0x253057F40](v8, -1, -1);
    }

    v1[395] = static MainActor.shared.getter();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v10, v9);
  }
}

{
  v2 = v1[284];
  v3 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted;
  v1[399] = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted;
  if (*(v2 + v3) == 1)
  {

    v4 = swift_task_alloc();
    v1[400] = v4;
    *v4 = v1;
    v4[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);

    return PartnerStreamWrapper.waitForResponse()();
  }

  else
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24FD67000, v6, v7, "Call to return streamed response before stream started. Starting to stream.", v8, 2u);
      MEMORY[0x253057F40](v8, -1, -1);
    }

    v1[401] = static MainActor.shared.getter();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v10, v9);
  }
}

{
  v2 = v1[284];
  v3 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted;
  v1[405] = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted;
  if (*(v2 + v3) == 1)
  {

    v4 = swift_task_alloc();
    v1[406] = v4;
    *v4 = v1;
    v4[1] = ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:);

    return PartnerStreamWrapper.waitForResponse()();
  }

  else
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24FD67000, v6, v7, "Call to return streamed response before stream started. Starting to stream.", v8, 2u);
      MEMORY[0x253057F40](v8, -1, -1);
    }

    v1[407] = static MainActor.shared.getter();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:), v10, v9);
  }
}

unint64_t ModelOrchestrator.Error.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (*(v0 + 32) <= 1u)
  {
    if (*(v0 + 32))
    {
      _StringGuts.grow(_:)(39);

      v14 = 0xD000000000000020;
      MEMORY[0x253056FE0](v1, v2);
      v5 = 2112039;
      v6 = 0xE300000000000000;
    }

    else
    {
      _StringGuts.grow(_:)(20);

      v14 = 0x27206C6F6F54;
      MEMORY[0x253056FE0](v1, v2);
      v5 = 0x64656C6961662027;
      v6 = 0xEA0000000000203ALL;
    }

    MEMORY[0x253056FE0](v5, v6);
    v9 = v3;
    v10 = v4;
    goto LABEL_8;
  }

  if (*(v0 + 32) == 2)
  {
    _StringGuts.grow(_:)(31);

    v14 = 0xD000000000000018;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x253056FE0](v8);

    MEMORY[0x253056FE0](2112032, 0xE300000000000000);
    v9 = v2;
    v10 = v3;
LABEL_8:
    MEMORY[0x253056FE0](v9, v10);
    return v14;
  }

  result = 0xD00000000000001DLL;
  if (!(v3 | v2 | v1 | v4))
  {
    return 0xD00000000000002BLL;
  }

  v12 = v3 | v2 | v4;
  if (v1 == 1 && v12 == 0)
  {
    return 0xD000000000000018;
  }

  if ((v1 != 2 || v12) && (v1 != 3 || v12))
  {
    if (v1 != 4 || v12)
    {
      if (v1 != 5 || v12)
      {
        if (v1 != 6 || v12)
        {
          if (v1 != 7 || v12)
          {
            if (v1 != 8 || v12)
            {
              if (v1 != 9 || v12)
              {
                if (v1 != 10 || v12)
                {
                  if (v1 != 11 || v12)
                  {
                    if (v1 != 12 || v12)
                    {
                      if (v1 != 13 || v12)
                      {
                        return 0xD00000000000001BLL;
                      }

                      else
                      {
                        return 0xD000000000000023;
                      }
                    }

                    else
                    {
                      return 0xD000000000000027;
                    }
                  }

                  else
                  {
                    return 0xD00000000000002ALL;
                  }
                }
              }

              else
              {
                return 0xD000000000000015;
              }
            }

            else
            {
              return 0xD00000000000001ALL;
            }
          }

          else
          {
            return 0xD000000000000014;
          }
        }

        else
        {
          return 0xD000000000000037;
        }
      }

      else
      {
        return 0xD00000000000002FLL;
      }
    }

    else
    {
      return 0xD000000000000025;
    }
  }

  return result;
}

unint64_t ModelOrchestrator.Error.errorUserInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FE1A560;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000024FE1FD40;
  v2 = ModelOrchestrator.Error.errorDescription.getter();
  v3 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v2;
  *(inited + 56) = v4;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of OnScreenContent.Document?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  v25 = v5;
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = *(v0 + 32);
  if (v9 == 2)
  {
    if (v6)
    {
      swift_getErrorValue();
      v24 = v20;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
      (*(*(v20 - 8) + 16))(boxed_opaque_existential_1);
      outlined init with take of Any(&v23, v22);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 0x69796C7265646E75, 0xEF726F727245676ELL, isUniquelyReferenced_nonNull_native);
      v18 = v5;
    }

    else
    {

      specialized Dictionary._Variant.removeValue(forKey:)(0x69796C7265646E75, 0xEF726F727245676ELL, &v23);
      outlined destroy of OnScreenContent.Document?(&v23, &_sypSgMd, &_sypSgMR);
      v18 = v25;
    }

    v24 = v3;
    *&v23 = v7;
    *(&v23 + 1) = v8;
    outlined init with take of Any(&v23, v22);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v21 = v18;
    v13 = 0xD000000000000010;
    v14 = 0x800000024FE1FD40;
    goto LABEL_10;
  }

  v10 = v0[3];
  if (v9 == 1)
  {
    v24 = v3;
    *&v23 = v6;
    *(&v23 + 1) = v7;
    outlined init with take of Any(&v23, v22);

    v15 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 0x746E656D75636F64, 0xEB000000004C5255, v15);
    v24 = v3;
    *&v23 = v8;
    *(&v23 + 1) = v10;
    outlined init with take of Any(&v23, v22);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v21 = v5;
    v13 = 0xD000000000000013;
    v14 = 0x800000024FE33790;
    goto LABEL_10;
  }

  if (!*(v0 + 32))
  {
    v24 = v3;
    *&v23 = v6;
    *(&v23 + 1) = v7;
    outlined init with take of Any(&v23, v22);

    v11 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 0x656D614E6C6F6F74, 0xE800000000000000, v11);
    v24 = v3;
    *&v23 = v8;
    *(&v23 + 1) = v10;
    outlined init with take of Any(&v23, v22);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v21 = v5;
    v13 = 0x637365446C6F6F74;
    v14 = 0xEF6E6F6974706972;
LABEL_10:
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v13, v14, v12);
    return v21;
  }

  return v5;
}

uint64_t protocol witness for static CustomNSError.errorDomain.getter in conformance ModelOrchestrator.Error()
{
  v0 = static ModelOrchestrator.Error.errorDomain;

  return v0;
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance ModelOrchestrator.Error()
{
  if (*(v0 + 32) > 1u)
  {
    if (*(v0 + 32) == 2)
    {
      return 12;
    }

    else
    {
      v2 = *v0;
      v3 = v0[1];
      v4 = v0[2] | v0[3];
      if (v4 | *v0 | v3)
      {
        v5 = v4 | v3;
        if (v2 == 1 && v5 == 0)
        {
          return 1;
        }

        else if (v2 != 2 || v5)
        {
          if (v2 != 3 || v5)
          {
            if (v2 != 4 || v5)
            {
              if (v2 != 5 || v5)
              {
                if (v2 != 6 || v5)
                {
                  if (v2 != 7 || v5)
                  {
                    if (v2 != 8 || v5)
                    {
                      if (v2 != 9 || v5)
                      {
                        if (v2 != 10 || v5)
                        {
                          if (v2 != 11 || v5)
                          {
                            if (v2 != 12 || v5)
                            {
                              if (v5)
                              {
                                v7 = 0;
                              }

                              else
                              {
                                v7 = v2 == 13;
                              }

                              if (v7)
                              {
                                return 16;
                              }

                              else
                              {
                                return 17;
                              }
                            }

                            else
                            {
                              return 15;
                            }
                          }

                          else
                          {
                            return 14;
                          }
                        }

                        else
                        {
                          return 13;
                        }
                      }

                      else
                      {
                        return 11;
                      }
                    }

                    else
                    {
                      return 10;
                    }
                  }

                  else
                  {
                    return 7;
                  }
                }

                else
                {
                  return 6;
                }
              }

              else
              {
                return 5;
              }
            }

            else
            {
              return 4;
            }
          }

          else
          {
            return 3;
          }
        }

        else
        {
          return 2;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  else if (*(v0 + 32))
  {
    return 9;
  }

  else
  {
    return 8;
  }
}

uint64_t protocol witness for Error._domain.getter in conformance ModelOrchestrator.Error(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance ModelOrchestrator.Error(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t ModelOrchestrator.prepareInlineImage(_:_:)(uint64_t a1, int a2)
{
  *(v2 + 48) = a2;
  *(v2 + 40) = a1;
  return MEMORY[0x2822009F8](ModelOrchestrator.prepareInlineImage(_:_:), 0, 0);
}

uint64_t ModelOrchestrator.prepareInlineImage(_:_:)()
{
  v23 = v0;
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.modelInteraction);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v22);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x800000024FE34810, v22);
    _os_log_impl(&dword_24FD67000, v2, v3, "%s.%s Image will be sent inline.", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v5, -1, -1);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  MetricsUtils.emitSignpostEvent(_:)("Usecase.InlineImageQnA", 22, 2);
  v6 = IntelligenceFile.getImage()();
  if (v7)
  {
    goto LABEL_8;
  }

  if (!v6)
  {
    lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
    swift_allocError();
    *v21 = 1;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 3;
    swift_willThrow();
LABEL_8:
    v8 = *(v0 + 8);

    return v8();
  }

  v10 = v6;
  v11 = *(v0 + 40);
  v12 = *(v11 + 32);
  v13 = *(v11 + 28) * 1024.0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 48);
  v15 = static SELFUtils.shared;
  if (v12)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v13;
  }

  LOBYTE(v22[0]) = 0;
  swift_beginAccess();
  v15[4] = v14;
  *(v15 + 20) = 0;
  *(v15 + 3) = v16;
  *(v15 + 32) = 0;
  v15[9] = 1;
  *(v15 + 40) = 0;
  v15[11] = 1;
  *(v15 + 48) = 0;
  v15[13] = 1;
  *(v15 + 56) = 0;
  *(v15 + 8) = v16;
  *(v15 + 72) = 0;
  *(v15 + 73) = v22[0];
  if (one-time initialization token for selfSchemaLogger != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v1, static Logger.selfSchemaLogger);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_24FD67000, v17, v18, "Successfully updated GAT MediaQA usecase: GATMEDIAQNAUSECASE_INLINE_IMAGE", v19, 2u);
    MEMORY[0x253057F40](v19, -1, -1);
  }

  v20 = *(v0 + 8);

  return v20(v10);
}

uint64_t ModelOrchestrator.registerImage(_:_:_:_:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 376) = a2;
  *(v4 + 312) = a1;
  *(v4 + 320) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  *(v4 + 328) = swift_task_alloc();
  v6 = *(a4 + 112);
  *(v4 + 112) = *(a4 + 96);
  *(v4 + 128) = v6;
  *(v4 + 144) = *(a4 + 128);
  v7 = *(a4 + 48);
  *(v4 + 48) = *(a4 + 32);
  *(v4 + 64) = v7;
  v8 = *(a4 + 80);
  *(v4 + 80) = *(a4 + 64);
  *(v4 + 96) = v8;
  v9 = *(a4 + 16);
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;

  return MEMORY[0x2822009F8](ModelOrchestrator.registerImage(_:_:_:_:), 0, 0);
}

uint64_t ModelOrchestrator.registerImage(_:_:_:_:)()
{
  v29 = v0;
  v1 = *(v0 + 312);
  v2 = *(v1 + 32);
  v3 = *(v1 + 28) * 1024.0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 376);
  v5 = static SELFUtils.shared;
  *(v0 + 336) = static SELFUtils.shared;
  if (v2)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  *(v0 + 380) = 0;
  swift_beginAccess();
  v5[4] = v4;
  *(v5 + 20) = 0;
  *(v5 + 3) = v6;
  *(v5 + 32) = 0;
  v5[9] = 2;
  *(v5 + 40) = 0;
  v5[11] = 1;
  *(v5 + 48) = 0;
  v5[13] = v4;
  *(v5 + 56) = 0;
  *(v5 + 8) = v6;
  *(v5 + 72) = 0;
  *(v5 + 73) = *(v0 + 380);
  if (one-time initialization token for selfSchemaLogger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.selfSchemaLogger);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24FD67000, v8, v9, "Successfully updated GAT MediaQA usecase: GATMEDIAQNAUSECASE_REGISTER_IMAGE", v10, 2u);
    MEMORY[0x253057F40](v10, -1, -1);
  }

  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v7, static Logger.modelInteraction);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v28);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000024FE347F0, &v28);
    _os_log_impl(&dword_24FD67000, v11, v12, "%s.%s Image will be uploaded.", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v14, -1, -1);
    MEMORY[0x253057F40](v13, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 320);
  *(v0 + 344) = static MetricsUtils.shared;
  MetricsUtils.emitSignpostEvent(_:)("Usecase.SessionImageQnA", 23, 2);
  MetricsUtils.recordSignpostBegin(for:)("RegisterImageProcess.Time", 25, 2);
  SELFUtils.recordRegisterMediaStarted()();
  v16 = swift_allocObject();
  *(v0 + 352) = v16;
  v17 = *(v0 + 128);
  *(v16 + 112) = *(v0 + 112);
  *(v16 + 128) = v17;
  *(v16 + 144) = *(v0 + 144);
  v18 = *(v0 + 64);
  *(v16 + 48) = *(v0 + 48);
  *(v16 + 64) = v18;
  v19 = *(v0 + 96);
  *(v16 + 80) = *(v0 + 80);
  *(v16 + 96) = v19;
  v20 = *(v0 + 32);
  *(v16 + 16) = *(v0 + 16);
  *(v16 + 32) = v20;
  v21 = *(v15 + 24);
  v22 = *(v15 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v15, v21);
  v23 = *(v22 + 24);
  outlined init with copy of IntentCallbackManager(v0 + 16, v0 + 152);
  v27 = (v23 + *v23);
  v24 = swift_task_alloc();
  *(v0 + 360) = v24;
  *v24 = v0;
  v24[1] = ModelOrchestrator.registerImage(_:_:_:_:);
  v25 = *(v0 + 312);

  return v27(v25, partial apply for implicit closure #5 in implicit closure #4 in ModelOrchestrator.registerImage(_:_:_:_:), v16, v21, v22);
}

{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = ModelOrchestrator.registerImage(_:_:_:_:);
  }

  else
  {

    v2 = ModelOrchestrator.registerImage(_:_:_:_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 328);
  v2 = type metadata accessor for OSSignpostID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("RegisterImageProcess.Time", 25, 2u, v1);
  outlined destroy of OnScreenContent.Document?(v1, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  SELFUtils.recordRegisterMediaEnded()();

  v3 = *(v0 + 8);

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v3, v2);
}

uint64_t closure #1 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)()
{
  v1 = *(v0 + 16);

  static ModelResponse.emptyModelResponse()(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t ModelOrchestrator.registerDocument(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 288) = a1;
  *(v3 + 296) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  *(v3 + 304) = swift_task_alloc();
  v5 = *(a3 + 112);
  *(v3 + 112) = *(a3 + 96);
  *(v3 + 128) = v5;
  *(v3 + 144) = *(a3 + 128);
  v6 = *(a3 + 48);
  *(v3 + 48) = *(a3 + 32);
  *(v3 + 64) = v6;
  v7 = *(a3 + 80);
  *(v3 + 80) = *(a3 + 64);
  *(v3 + 96) = v7;
  v8 = *(a3 + 16);
  *(v3 + 16) = *a3;
  *(v3 + 32) = v8;

  return MEMORY[0x2822009F8](ModelOrchestrator.registerDocument(_:_:_:), 0, 0);
}

uint64_t ModelOrchestrator.registerDocument(_:_:_:)()
{
  v20 = v0;
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.modelInteraction);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v19);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x800000024FE347D0, &v19);
    _os_log_impl(&dword_24FD67000, v2, v3, "%s.%s Uploading file.", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v5, -1, -1);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v0 + 312) = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("RegisterDocument.Time", 21, 2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 288);
  *(v0 + 320) = static SELFUtils.shared;
  SELFUtils.recordRegisterMediaStarted()();
  v7 = swift_allocObject();
  *(v0 + 328) = v7;
  v8 = *(v0 + 128);
  *(v7 + 112) = *(v0 + 112);
  *(v7 + 128) = v8;
  *(v7 + 144) = *(v0 + 144);
  v9 = *(v0 + 64);
  *(v7 + 48) = *(v0 + 48);
  *(v7 + 64) = v9;
  v10 = *(v0 + 96);
  *(v7 + 80) = *(v0 + 80);
  *(v7 + 96) = v10;
  v11 = *(v0 + 32);
  *(v7 + 16) = *(v0 + 16);
  *(v7 + 32) = v11;
  v12 = *(v6 + 24);
  v13 = *(v6 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v12);
  v14 = *(v13 + 16);
  outlined init with copy of IntentCallbackManager(v0 + 16, v0 + 152);
  v18 = (v14 + *v14);
  v15 = swift_task_alloc();
  *(v0 + 336) = v15;
  *v15 = v0;
  v15[1] = ModelOrchestrator.registerDocument(_:_:_:);
  v16 = *(v0 + 296);

  return v18(v16, partial apply for implicit closure #4 in implicit closure #3 in ModelOrchestrator.registerDocument(_:_:_:), v7, v12, v13);
}

{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = ModelOrchestrator.registerDocument(_:_:_:);
  }

  else
  {

    v2 = ModelOrchestrator.registerDocument(_:_:_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 304);
  v2 = type metadata accessor for OSSignpostID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("RegisterDocument.Time", 21, 2u, v1);
  outlined destroy of OnScreenContent.Document?(v1, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  SELFUtils.recordRegisterMediaEnded()();

  v3 = *(v0 + 8);

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v13;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v8[22] = a1;
  type metadata accessor for ModelResponse(0);
  v8[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[30] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[31] = v10;
  v8[32] = v9;

  return MEMORY[0x2822009F8](closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v10, v9);
}

uint64_t closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)()
{
  v19 = v0;
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.modelInteraction);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v18);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, &v18);
    _os_log_impl(&dword_24FD67000, v2, v3, "%s.%s Generative task starting.", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v5, -1, -1);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[24];
  swift_beginAccess();
  v9 = __swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
  v10 = *(type metadata accessor for GenerativeRequestMetadata(0) + 32);
  v11 = *v9;
  outlined init with copy of IntentCallbackManager(v6, (v0 + 2));
  v12 = swift_task_alloc();
  v0[33] = v12;
  *v12 = v0;
  v12[1] = closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v14 = v0[28];
  v13 = v0[29];
  v15 = v0[25];
  v16 = v0[26];

  return specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:)(v13, v15, v16, v7 + v10, v11, v14);
}

{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  else
  {
    v5 = closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[29];
  v2 = v0[22];
  v3 = v0[23];

  outlined init with take of GeneratedResponse(v1, v2, type metadata accessor for ModelResponse);
  $defer #1 () in closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)((v3 + 16));

  v4 = v0[1];

  return v4();
}

{
  v1 = *(v0 + 184);

  $defer #1 () in closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)((v1 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t ModelOrchestrator.shouldUploadImage(image:)(uint64_t a1)
{
  if (*(a1 + 32) & 1) != 0 || (*(a1 + 24))
  {
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.modelInteraction);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_8;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v29);
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000024FE34830, &v29);
    v7 = "%s.%s Missing file size or image size, defaulting to upload image.";
    goto LABEL_7;
  }

  v10 = *(a1 + 28);
  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (one-time initialization token for _enableImageInline != -1)
  {
    swift_once();
  }

  if (byte_27F39FAF0)
  {
    v1 = unk_27F39FAE0;
    v13 = static Overrides._enableImageInline;

    (v1)(&v29, v13);

    LOBYTE(v1) = v29;
    if (v29 != 2)
    {
      if (one-time initialization token for modelInteraction == -1)
      {
LABEL_40:
        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Logger.modelInteraction);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v29 = v25;
          *v24 = 136315650;
          *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v29);
          *(v24 + 12) = 2080;
          *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000024FE34830, &v29);
          *(v24 + 22) = 1024;
          *(v24 + 24) = v1 & 1;
          _os_log_impl(&dword_24FD67000, v22, v23, "%s.%s Override enableImageInline set to %{BOOL}d.", v24, 0x1Cu);
          swift_arrayDestroy();
          MEMORY[0x253057F40](v25, -1, -1);
          MEMORY[0x253057F40](v24, -1, -1);
        }

        v8 = v1 ^ 1;
        return v8 & 1;
      }

LABEL_57:
      swift_once();
      goto LABEL_40;
    }
  }

  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v14 = v12;
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.modelInteraction);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    v29 = v1;
    *v18 = 136316162;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v29);
    *(v18 + 12) = 2080;
    *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000024FE34830, &v29);
    *(v18 + 22) = 2048;
    v19 = *&v12 & 0x7FF0000000000000;
    if (v19 == 0x7FF0000000000000)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v14 <= -9.22337204e18)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v14 >= 9.22337204e18)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    *(v18 + 24) = v14;
    *(v18 + 32) = 2048;
    if ((~*&v11 & 0x7FF0000000000000) == 0)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v11 <= -9.22337204e18)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v11 >= 9.22337204e18)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    *(v18 + 34) = v11;
    *(v18 + 42) = 2048;
    *(v18 + 44) = 2048;
    _os_log_impl(&dword_24FD67000, v16, v17, "%s.%s Confirming image size (width=%ld height=%ld) is smaller than maxPixelsLong=%ld...", v18, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v1, -1, -1);
    MEMORY[0x253057F40](v18, -1, -1);
  }

  else
  {

    v19 = *&v12 & 0x7FF0000000000000;
  }

  if (v14 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v19 == 0x7FF0000000000000 || (*&v11 & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    goto LABEL_48;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v20 = v14;
  if (v11 > v14)
  {
    v20 = v11;
  }

  if (v20 > 2048)
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_8;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v29);
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000024FE34830, &v29);
    v7 = "%s.%s Image size is bigger than ImageUtilsDefault.maxPixelsLong after loaded. This is unexpected, defaulting to upload image.";
LABEL_7:
    _os_log_impl(&dword_24FD67000, v3, v4, v7, v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v6, -1, -1);
    MEMORY[0x253057F40](v5, -1, -1);
LABEL_8:

    v8 = 1;
    return v8 & 1;
  }

  v3 = Logger.logObject.getter();
  if (v10 > 1.0)
  {
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_8;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v29);
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000024FE34830, &v29);
    v7 = "%s.%s Image is still too large even as JPEG. Uploading image.";
    goto LABEL_7;
  }

  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v27 = 136315394;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v29);
    *(v27 + 12) = 2080;
    *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000024FE34830, &v29);
    _os_log_impl(&dword_24FD67000, v3, v26, "%s.%s Image is within inline size, using sending image inline rather than upload.", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v28, -1, -1);
    MEMORY[0x253057F40](v27, -1, -1);
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t closure #4 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v13;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v8[22] = a1;
  type metadata accessor for ModelResponse(0);
  v8[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[30] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[31] = v10;
  v8[32] = v9;

  return MEMORY[0x2822009F8](closure #4 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v10, v9);
}

uint64_t closure #4 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)()
{
  v19 = v0;
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.modelInteraction);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v18);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, &v18);
    _os_log_impl(&dword_24FD67000, v2, v3, "%s.%s Generative task starting.", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v5, -1, -1);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[24];
  swift_beginAccess();
  v9 = __swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
  v10 = *(type metadata accessor for GenerativeRequestMetadata(0) + 32);
  v11 = *v9;
  outlined init with copy of IntentCallbackManager(v6, (v0 + 2));
  v12 = swift_task_alloc();
  v0[33] = v12;
  *v12 = v0;
  v12[1] = closure #4 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v14 = v0[28];
  v13 = v0[29];
  v15 = v0[25];
  v16 = v0[26];

  return specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:)(v13, v15, v16, v7 + v10, v11, v14);
}

{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = closure #4 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  else
  {
    v5 = closure #4 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[36] = v17;
  v8[37] = v18;
  v8[34] = a7;
  v8[35] = a8;
  v8[32] = a5;
  v8[33] = a6;
  v8[30] = a1;
  v8[31] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  v8[38] = swift_task_alloc();
  v8[39] = type metadata accessor for ModelResponse(0);
  v8[40] = swift_task_alloc();
  v9 = type metadata accessor for PromptCompletion();
  v8[41] = v9;
  v8[42] = *(v9 - 8);
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8[46] = swift_task_alloc();
  v10 = type metadata accessor for StringResponseSanitizer();
  v8[47] = v10;
  v8[48] = *(v10 - 8);
  v8[49] = swift_task_alloc();
  v11 = type metadata accessor for StringRenderedPromptSanitizer();
  v8[50] = v11;
  v8[51] = *(v11 - 8);
  v8[52] = swift_task_alloc();
  v12 = type metadata accessor for SamplingParameters();
  v8[53] = v12;
  v8[54] = *(v12 - 8);
  v8[55] = swift_task_alloc();
  v8[56] = type metadata accessor for MainActor();
  v8[57] = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[58] = v14;
  v8[59] = v13;

  return MEMORY[0x2822009F8](closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v14, v13);
}

uint64_t closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)()
{
  v20 = v0;
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.modelInteraction);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v19);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, &v19);
    _os_log_impl(&dword_24FD67000, v2, v3, "%s.%s Generative task starting.", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v5, -1, -1);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  v6 = *(v0 + 296);
  v7 = *(v0 + 256);
  swift_beginAccess();
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v7 + 16, v0 + 152);
  v8 = __swift_project_boxed_opaque_existential_1((v0 + 152), *(v0 + 176));
  *(v0 + 584) = *(type metadata accessor for GenerativeRequestMetadata(0) + 32);
  v9 = swift_allocObject();
  *(v0 + 480) = v9;
  *(v9 + 16) = *v6;
  v10 = *(v6 + 64);
  v12 = *(v6 + 16);
  v11 = *(v6 + 32);
  *(v9 + 64) = *(v6 + 48);
  *(v9 + 80) = v10;
  *(v9 + 32) = v12;
  *(v9 + 48) = v11;
  v14 = *(v6 + 96);
  v13 = *(v6 + 112);
  v15 = *(v6 + 80);
  *(v9 + 144) = *(v6 + 128);
  *(v9 + 112) = v14;
  *(v9 + 128) = v13;
  *(v9 + 96) = v15;
  *(v0 + 488) = *v8;
  outlined init with copy of IntentCallbackManager(v6, v0 + 16);
  *(v0 + 496) = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 504) = v17;
  *(v0 + 512) = v16;

  return MEMORY[0x2822009F8](closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v17, v16);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0[65] = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("ResponseGeneration.Time", 23, 2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[61];
  v2 = v0[54];
  v3 = v0[55];
  v4 = v0[53];
  v34 = v0[46];
  v5 = static SELFUtils.shared;
  v0[66] = static SELFUtils.shared;
  specialized SELFUtils.recordGenerativeRequestStarted(usecase:mediaQAUseCase:llmAgentName:)(0x100000000, 0x100000000);
  (*(v2 + 16))(v3, v1 + OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_samplingParameters, v4);
  GenerativeAssistantUseCase.promptSanitizer.getter();
  GenerativeAssistantUseCase.responseSanitizer.getter();
  v6 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatClientTraceID;
  swift_beginAccess();
  outlined init with copy of Date?(v5 + v6, v34, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v34, 1, v7);
  v10 = v0[46];
  if (v9 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v0[46], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    UUID.uuidString.getter();
    (*(v8 + 8))(v10, v7);
  }

  v35 = v0[61];
  v11 = v0[55];
  v33 = v0[60];
  v12 = v0[54];
  v13 = v0[51];
  v30 = v0[50];
  v27 = v0[49];
  v28 = v0[52];
  v14 = v0[48];
  v29 = v0[47];
  v31 = v0[53];
  v32 = v0[45];
  v16 = v0[34];
  v15 = v0[35];
  v17 = v0[33];
  v18 = swift_task_alloc();
  v18[2] = v15;
  v18[3] = v17;
  v18[4] = v16;
  v18[5] = v35;
  lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type ModelResponse and conformance ModelResponse, type metadata accessor for ModelResponse, &protocol conformance descriptor for ModelResponse);
  v0[67] = GenerativeExperiencesSession.complete<A>(generating:parameters:promptSanitizer:responseSanitizer:clientRequestID:prompt:)();

  (*(v14 + 8))(v27, v29);
  (*(v13 + 8))(v28, v30);
  (*(v12 + 8))(v11, v31);
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v32, 1, 1, v19);

  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v35;
  v21[5] = partial apply for implicit closure #4 in implicit closure #3 in closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v21[6] = v33;
  v0[68] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v32, &async function pointer to partial apply for closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:), v21);
  v23 = swift_task_alloc();
  v0[69] = v23;
  *v23 = v0;
  v23[1] = closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v24 = v0[43];
  v25 = v0[40];

  return MEMORY[0x2821AB608](v25, v24);
}

{
  v2 = *v1;
  (*v1)[70] = v0;

  if (v0)
  {
    v3 = v2[63];
    v4 = v2[64];
    v5 = closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  else
  {
    _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(v2[40], type metadata accessor for ModelResponse);
    v3 = v2[63];
    v4 = v2[64];
    v5 = closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  (*(v0[42] + 32))(v0[44], v0[43], v0[41]);
  v1 = swift_task_alloc();
  v0[71] = v1;
  *v1 = v0;
  v1[1] = closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v2 = v0[44];
  v3 = v0[30];

  return DefaultModelSession.getModelResponse(from:)(v3, v2);
}

{
  v1 = *v0;

  v2 = *(v1 + 512);
  v3 = *(v1 + 504);

  return MEMORY[0x2822009F8](closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v3, v2);
}

{
  v1 = v0[68];
  v2 = v0[44];
  v3 = v0[41];
  v4 = v0[42];
  v5 = v0[38];

  v6 = type metadata accessor for OSSignpostID();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("ResponseGeneration.Time", 23, 2u, v5);
  outlined destroy of OnScreenContent.Document?(v5, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  SELFUtils.recordGenerativeRequestEnded()();
  (*(v4 + 8))(v2, v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x2530571A0](v1, MEMORY[0x277D84F78] + 8, v7, MEMORY[0x277D84950]);

  v8 = v0[58];
  v9 = v0[59];

  return MEMORY[0x2822009F8](closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v8, v9);
}

{
  v1 = v0[31];

  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  $defer #1 () in closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)((v1 + 16));

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[70];
  v2 = v0[68];
  v3 = v0[38];

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x2530571A0](v2, MEMORY[0x277D84F78] + 8, v4, MEMORY[0x277D84950]);

  v5 = type metadata accessor for OSSignpostID();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("ResponseGeneration.Time", 23, 2u, v3);
  outlined destroy of OnScreenContent.Document?(v3, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  MetricsUtils.emitSignpostEvent(_:)("Error.GMS.GenerativeResultFailed", 32, 2);
  SELFUtils.recordGenerativeRequestFailed(code:domain:)(100, 9);
  v0[72] = DefaultModelSession.customizeError(_:)(v1);
  swift_willThrow();

  v6 = v0[58];
  v7 = v0[59];

  return MEMORY[0x2822009F8](closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v6, v7);
}

{
  v1 = v0[31];

  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  $defer #1 () in closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)((v1 + 16));

  v2 = v0[1];

  return v2();
}

uint64_t closure #6 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v13;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v8[22] = a1;
  type metadata accessor for ModelResponse(0);
  v8[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[30] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[31] = v10;
  v8[32] = v9;

  return MEMORY[0x2822009F8](closure #6 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v10, v9);
}

uint64_t closure #6 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)()
{
  v19 = v0;
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.modelInteraction);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v18);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, &v18);
    _os_log_impl(&dword_24FD67000, v2, v3, "%s.%s Generative task starting.", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v5, -1, -1);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[24];
  swift_beginAccess();
  v9 = __swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
  v10 = *(type metadata accessor for GenerativeRequestMetadata(0) + 32);
  v11 = *v9;
  outlined init with copy of IntentCallbackManager(v6, (v0 + 2));
  v12 = swift_task_alloc();
  v0[33] = v12;
  *v12 = v0;
  v12[1] = closure #4 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v14 = v0[28];
  v13 = v0[29];
  v15 = v0[25];
  v16 = v0[26];

  return specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:)(v13, v15, v16, v7 + v10, v11, v14);
}

uint64_t closure #7 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v13;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v8[22] = a1;
  type metadata accessor for ModelResponse(0);
  v8[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[30] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[31] = v10;
  v8[32] = v9;

  return MEMORY[0x2822009F8](closure #7 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:), v10, v9);
}

uint64_t closure #7 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)()
{
  v19 = v0;
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.modelInteraction);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v18);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, &v18);
    _os_log_impl(&dword_24FD67000, v2, v3, "%s.%s Generative task starting.", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v5, -1, -1);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[24];
  swift_beginAccess();
  v9 = __swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
  v10 = *(type metadata accessor for GenerativeRequestMetadata(0) + 32);
  v11 = *v9;
  outlined init with copy of IntentCallbackManager(v6, (v0 + 2));
  v12 = swift_task_alloc();
  v0[33] = v12;
  *v12 = v0;
  v12[1] = closure #4 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v14 = v0[28];
  v13 = v0[29];
  v15 = v0[25];
  v16 = v0[26];

  return specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:)(v13, v15, v16, v7 + v10, v11, v14);
}

uint64_t $defer #1 () in closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(_BYTE *a1)
{
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.modelInteraction);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v8);
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE34880, v8);
    _os_log_impl(&dword_24FD67000, v3, v4, "%s.%s Generative task complete.", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v6, -1, -1);
    MEMORY[0x253057F40](v5, -1, -1);
  }

  result = swift_beginAccess();
  *a1 = 1;
  return result;
}

uint64_t specialized ModelOrchestrator.convertError<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  v4 = type metadata accessor for GenerativeError.UnderlyingError();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for GenerativeError.DocumentError.ErrorContext();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3[17] = swift_task_alloc();
  v6 = type metadata accessor for GenerativeError.ToolError.ErrorContext();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v7 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  v8 = type metadata accessor for GenerativeError.UnknownUnderlyingError();
  v3[25] = v8;
  v3[26] = *(v8 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v9 = type metadata accessor for GenerativeError.AuthenticationError();
  v3[32] = v9;
  v3[33] = *(v9 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v10 = type metadata accessor for GenerativeError.InvalidatedError();
  v3[36] = v10;
  v3[37] = *(v10 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v11 = type metadata accessor for GenerativeError.DocumentError();
  v3[40] = v11;
  v3[41] = *(v11 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v12 = type metadata accessor for GenerativeError.ToolError();
  v3[44] = v12;
  v3[45] = *(v12 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v13 = type metadata accessor for GenerativeError.CanceledError();
  v3[48] = v13;
  v3[49] = *(v13 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v14 = type metadata accessor for GenerativeError.PromptError.ErrorType();
  v3[52] = v14;
  v3[53] = *(v14 - 8);
  v3[54] = swift_task_alloc();
  v15 = type metadata accessor for GenerativeError.PromptError();
  v3[55] = v15;
  v3[56] = *(v15 - 8);
  v3[57] = swift_task_alloc();
  v16 = type metadata accessor for GenerativeError.NetworkingError();
  v3[58] = v16;
  v3[59] = *(v16 - 8);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v17 = type metadata accessor for GenerativeError.RuntimeError();
  v3[62] = v17;
  v3[63] = *(v17 - 8);
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v18 = type metadata accessor for GenerativeError.AvailabilityError.ErrorType();
  v3[66] = v18;
  v3[67] = *(v18 - 8);
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v19 = type metadata accessor for GenerativeError.AvailabilityError();
  v3[70] = v19;
  v3[71] = *(v19 - 8);
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v20 = type metadata accessor for GenerativeError.ErrorType();
  v3[75] = v20;
  v3[76] = *(v20 - 8);
  v3[77] = swift_task_alloc();
  v21 = type metadata accessor for GenerativeError();
  v3[78] = v21;
  v3[79] = *(v21 - 8);
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[89] = static MainActor.shared.getter();
  v23 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[90] = v23;
  v3[91] = v22;

  return MEMORY[0x2822009F8](specialized ModelOrchestrator.convertError<A>(_:), v23, v22);
}

uint64_t specialized ModelOrchestrator.convertError<A>(_:)()
{
  v1 = **(v0 + 48);
  *(v0 + 736) = v1;

  v2 = swift_task_alloc();
  *(v0 + 744) = v2;
  v3 = type metadata accessor for ModelResponse(0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *(v0 + 752) = v4;
  *v2 = v0;
  v2[1] = specialized ModelOrchestrator.convertError<A>(_:);
  v5 = *(v0 + 40);
  v6 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v5, v1, v3, v4, v6);
}

{
  v2 = *v1;
  *(*v1 + 760) = v0;

  v3 = *(v2 + 728);
  v4 = *(v2 + 720);
  if (v0)
  {
    v5 = specialized ModelOrchestrator.convertError<A>(_:);
  }

  else
  {
    v5 = specialized ModelOrchestrator.convertError<A>(_:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  return MEMORY[0x2822009F8](specialized ModelOrchestrator.convertError<A>(_:), 0, 0);
}

{
  v549 = v0;
  v3 = v0;
  v4 = *(v0 + 760);
  *(v0 + 16) = v4;
  v5 = *(v0 + 624);
  v6 = v4;
  if (!swift_dynamicCast())
  {

    if (one-time initialization token for modelInteraction == -1)
    {
LABEL_13:
      v37 = *(v0 + 760);
      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.modelInteraction);
      v39 = v37;
      v40 = v37;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      v43 = os_log_type_enabled(v41, v42);
      v44 = *(v0 + 760);
      if (v43)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v548[0] = v47;
        *v45 = 136315650;
        *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v548);
        *(v45 + 12) = 2080;
        *(v45 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v548);
        *(v45 + 22) = 2112;
        v48 = v44;
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 24) = v49;
        *v46 = v49;

        _os_log_impl(&dword_24FD67000, v41, v42, "%s.%s Received an unknown error %@", v45, 0x20u);
        outlined destroy of OnScreenContent.Document?(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x253057F40](v46, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v47, -1, -1);
        MEMORY[0x253057F40](v45, -1, -1);
      }

      else
      {
      }

      swift_willThrow();
      goto LABEL_76;
    }

LABEL_139:
    swift_once();
    goto LABEL_13;
  }

  (*(*(v0 + 632) + 32))(*(v0 + 696), *(v0 + 704), *(v0 + 624));
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 696);
  v8 = MEMORY[0x253056790]();
  if (v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_139;
  }

  if (v8 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_141;
  }

  v9 = *(v0 + 616);
  v10 = *(v0 + 608);
  v11 = *(v0 + 600);
  SELFUtils.recordRequestFailed(code:domain:)(v8, 2);
  GenerativeError.type.getter();
  v12 = (*(v10 + 88))(v9, v11);
  if (v12 != *MEMORY[0x277D0DB78])
  {
    if (v12 == *MEMORY[0x277D0DB40])
    {
      v50 = *(v0 + 616);
      v51 = *(v0 + 488);
      v52 = v3[58];
      v53 = v3[59];
      (*(v3[76] + 96))(v3[77], v3[75]);
      (*(v53 + 32))(v51, v50, v52);
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v55 = v3[60];
      v54 = v3[61];
      v56 = v3[58];
      v57 = v3[59];
      v58 = type metadata accessor for Logger();
      __swift_project_value_buffer(v58, static Logger.modelInteraction);
      (*(v57 + 16))(v55, v54, v56);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      v61 = os_log_type_enabled(v59, v60);
      v62 = v3[95];
      v64 = v3[59];
      v63 = v3[60];
      v65 = v3[58];
      if (v61)
      {
        v66 = swift_slowAlloc();
        v531 = swift_slowAlloc();
        v548[0] = v531;
        *v66 = 136315650;
        *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v548);
        *(v66 + 12) = 2080;
        *(v66 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v548);
        *(v66 + 22) = 2080;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.NetworkingError and conformance GenerativeError.NetworkingError, MEMORY[0x277D0D9B0], MEMORY[0x277D0D9B8]);
        v67 = Encodable.asJSONString.getter();
        v69 = v3;
        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, v548);

        *(v66 + 24) = v70;
        v3 = v69;

        v71 = *(v64 + 8);
        v71(v63, v65);
        _os_log_impl(&dword_24FD67000, v59, v60, "%s.%s Received a networking error %s", v66, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v531, -1, -1);
        MEMORY[0x253057F40](v66, -1, -1);
      }

      else
      {

        v71 = *(v64 + 8);
        v71(v63, v65);
      }

      v146 = v3[87];
      v147 = v3[79];
      v148 = v3[78];
      v149 = v3[61];
      v150 = v3[58];
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      v152 = 4;
LABEL_44:
      *v151 = v152;
      *(v151 + 8) = 0;
      *(v151 + 16) = 0;
      *(v151 + 24) = 0;
      *(v151 + 32) = 3;
      swift_willThrow();
      v71(v149, v150);
LABEL_45:
      (*(v147 + 8))(v146, v148);
      goto LABEL_74;
    }

    if (v12 == *MEMORY[0x277D0DB50])
    {
      v88 = *(v0 + 616);
      v89 = *(v0 + 592);
      v90 = v3[71];
      v91 = v3[70];
      v92 = v3[69];
      v93 = v3[67];
      v94 = v3[66];
      (*(v3[76] + 96))(v3[77], v3[75]);
      (*(v90 + 32))(v89, v88, v91);
      GenerativeError.AvailabilityError.type.getter();
      LODWORD(v88) = (*(v93 + 88))(v92, v94);
      LODWORD(v89) = *MEMORY[0x277D0D9D8];
      v95 = *(v93 + 8);
      v95(v92, v94);
      if (v88 == v89)
      {
        if (one-time initialization token for modelInteraction != -1)
        {
          swift_once();
        }

        v96 = v3[74];
        v97 = v3[73];
        v98 = v3[71];
        v99 = v3[70];
        v100 = type metadata accessor for Logger();
        __swift_project_value_buffer(v100, static Logger.modelInteraction);
        (*(v98 + 16))(v97, v96, v99);
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.error.getter();
        v103 = os_log_type_enabled(v101, v102);
        v104 = v3[95];
        v105 = v3[73];
        v106 = v3[71];
        v107 = v3[70];
        if (v103)
        {
          v108 = v3;
          v109 = v3[68];
          v516 = v102;
          v110 = v108[66];
          v523 = v104;
          v111 = swift_slowAlloc();
          v533 = swift_slowAlloc();
          v548[0] = v533;
          *v111 = 136315650;
          *(v111 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v548);
          v509 = v107;
          *(v111 + 12) = 2080;
          *(v111 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v548);
          *(v111 + 22) = 2080;
          GenerativeError.AvailabilityError.type.getter();
          lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.AvailabilityError.ErrorType and conformance GenerativeError.AvailabilityError.ErrorType, MEMORY[0x277D0D9E8], MEMORY[0x277D0D9F0]);
          v112 = Encodable.asJSONString.getter();
          v113 = v95;
          v115 = v114;
          v116 = v109;
          v3 = v108;
          v113(v116, v110);
          v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v115, v548);

          *(v111 + 24) = v117;

          v118 = *(v106 + 8);
          v118(v105, v509);
          _os_log_impl(&dword_24FD67000, v101, v516, "%s.%s Received an availability error: rate limited %s", v111, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x253057F40](v533, -1, -1);
          MEMORY[0x253057F40](v111, -1, -1);
        }

        else
        {

          v118 = *(v106 + 8);
          v118(v105, v107);
        }

        v242 = v3[87];
        v243 = v3[79];
        v244 = v3[78];
        v245 = v3[74];
        v246 = v3[70];
        v247 = type metadata accessor for GATError();
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728], MEMORY[0x277D0D730]);
        swift_allocError();
        (*(*(v247 - 8) + 104))(v248, *MEMORY[0x277D0D708], v247);
      }

      else
      {
        if (one-time initialization token for modelInteraction != -1)
        {
          swift_once();
        }

        v180 = v3[74];
        v181 = v3[72];
        v182 = v3[71];
        v183 = v3[70];
        v184 = type metadata accessor for Logger();
        __swift_project_value_buffer(v184, static Logger.modelInteraction);
        (*(v182 + 16))(v181, v180, v183);
        v185 = Logger.logObject.getter();
        v186 = static os_log_type_t.error.getter();
        v187 = os_log_type_enabled(v185, v186);
        v188 = v3[95];
        v189 = v3[72];
        v190 = v3[71];
        v191 = v3[70];
        if (v187)
        {
          v192 = v3;
          v193 = v3[68];
          v518 = v186;
          v194 = v192[66];
          v524 = v188;
          v195 = swift_slowAlloc();
          v536 = swift_slowAlloc();
          v548[0] = v536;
          *v195 = 136315650;
          *(v195 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v548);
          v510 = v191;
          *(v195 + 12) = 2080;
          *(v195 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v548);
          *(v195 + 22) = 2080;
          GenerativeError.AvailabilityError.type.getter();
          lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.AvailabilityError.ErrorType and conformance GenerativeError.AvailabilityError.ErrorType, MEMORY[0x277D0D9E8], MEMORY[0x277D0D9F0]);
          v196 = Encodable.asJSONString.getter();
          v197 = v95;
          v199 = v198;
          v200 = v193;
          v3 = v192;
          v197(v200, v194);
          v201 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v196, v199, v548);

          *(v195 + 24) = v201;

          v118 = *(v190 + 8);
          v118(v189, v510);
          _os_log_impl(&dword_24FD67000, v185, v518, "%s.%s Received an availability error %s", v195, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x253057F40](v536, -1, -1);
          MEMORY[0x253057F40](v195, -1, -1);
        }

        else
        {

          v118 = *(v190 + 8);
          v118(v189, v191);
        }

        v242 = v3[87];
        v243 = v3[79];
        v244 = v3[78];
        v245 = v3[74];
        v246 = v3[70];
        lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
        swift_allocError();
        *v249 = 2;
        *(v249 + 8) = 0;
        *(v249 + 16) = 0;
        *(v249 + 24) = 0;
        *(v249 + 32) = 3;
      }

      swift_willThrow();
      v118(v245, v246);
      (*(v243 + 8))(v242, v244);
      goto LABEL_74;
    }

    if (v12 == *MEMORY[0x277D0DBA0])
    {
      v153 = *(v0 + 616);
      v154 = *(v0 + 408);
      v155 = v3[48];
      v156 = v3[49];
      (*(v3[76] + 96))(v3[77], v3[75]);
      (*(v156 + 32))(v154, v153, v155);
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v158 = v3[50];
      v157 = v3[51];
      v159 = v3[48];
      v160 = v3[49];
      v161 = type metadata accessor for Logger();
      __swift_project_value_buffer(v161, static Logger.modelInteraction);
      (*(v160 + 16))(v158, v157, v159);
      v162 = Logger.logObject.getter();
      v163 = static os_log_type_t.error.getter();
      v164 = os_log_type_enabled(v162, v163);
      v165 = v3[95];
      v167 = v3[49];
      v166 = v3[50];
      v168 = v3[48];
      if (v164)
      {
        v169 = swift_slowAlloc();
        v535 = swift_slowAlloc();
        v548[0] = v535;
        *v169 = 136315650;
        *(v169 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v548);
        *(v169 + 12) = 2080;
        *(v169 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v548);
        *(v169 + 22) = 2080;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.CanceledError and conformance GenerativeError.CanceledError, MEMORY[0x277D0DB20], MEMORY[0x277D0DB28]);
        v170 = Encodable.asJSONString.getter();
        v172 = v3;
        v173 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v170, v171, v548);

        *(v169 + 24) = v173;
        v3 = v172;

        v71 = *(v167 + 8);
        v71(v166, v168);
        _os_log_impl(&dword_24FD67000, v162, v163, "%s.%s Received a cancel error %s", v169, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v535, -1, -1);
        MEMORY[0x253057F40](v169, -1, -1);
      }

      else
      {

        v71 = *(v167 + 8);
        v71(v166, v168);
      }

      v146 = v3[87];
      v147 = v3[79];
      v148 = v3[78];
      v149 = v3[51];
      v150 = v3[48];
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      v152 = 7;
      goto LABEL_44;
    }

    if (v12 == *MEMORY[0x277D0DB90])
    {
      v202 = *(v0 + 616);
      v203 = *(v0 + 520);
      v204 = v3[62];
      v205 = v3[63];
      (*(v3[76] + 96))(v3[77], v3[75]);
      (*(v205 + 32))(v203, v202, v204);
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v206 = v3[65];
      v208 = v3[63];
      v207 = v3[64];
      v209 = v3[62];
      v210 = type metadata accessor for Logger();
      __swift_project_value_buffer(v210, static Logger.modelInteraction);
      (*(v208 + 16))(v207, v206, v209);
      v211 = Logger.logObject.getter();
      v212 = static os_log_type_t.error.getter();
      v213 = os_log_type_enabled(v211, v212);
      v215 = v3[63];
      v214 = v3[64];
      v216 = v3[62];
      if (v213)
      {
        v218 = v3[23];
        v217 = v3[24];
        v519 = v212;
        v219 = v3[22];
        v525 = v3[95];
        v220 = swift_slowAlloc();
        v537 = swift_slowAlloc();
        v548[0] = v537;
        *v220 = 136315650;
        *(v220 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v548);
        v511 = v216;
        *(v220 + 12) = 2080;
        *(v220 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v548);
        *(v220 + 22) = 2080;
        GenerativeError.RuntimeError.type.getter();
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.RuntimeError.ErrorType and conformance GenerativeError.RuntimeError.ErrorType, MEMORY[0x277D0DB00], MEMORY[0x277D0DB08]);
        v221 = Encodable.asJSONString.getter();
        v223 = v222;
        (*(v218 + 8))(v217, v219);
        v224 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v221, v223, v548);

        *(v220 + 24) = v224;

        v225 = *(v215 + 8);
        v225(v214, v511);
        _os_log_impl(&dword_24FD67000, v211, v519, "%s.%s Received a runtime error %s", v220, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v537, -1, -1);
        MEMORY[0x253057F40](v220, -1, -1);
      }

      else
      {

        v225 = *(v215 + 8);
        v225(v214, v216);
      }

      v290 = v3[87];
      v291 = v3[79];
      v292 = v3[78];
      v293 = v3[65];
      v294 = v3[62];
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      *v295 = 3;
      *(v295 + 8) = 0;
      *(v295 + 16) = 0;
      *(v295 + 24) = 0;
      *(v295 + 32) = 3;
      swift_willThrow();
      v225(v293, v294);
      (*(v291 + 8))(v290, v292);
      goto LABEL_74;
    }

    if (v12 == *MEMORY[0x277D0DB70])
    {
      v253 = *(v0 + 616);
      v254 = *(v0 + 376);
      v255 = v3[44];
      v256 = v3[45];
      (*(v3[76] + 96))(v3[77], v3[75]);
      (*(v256 + 32))(v254, v253, v255);
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v258 = v3[46];
      v257 = v3[47];
      v259 = v3[44];
      v260 = v3[45];
      v261 = type metadata accessor for Logger();
      __swift_project_value_buffer(v261, static Logger.modelInteraction);
      (*(v260 + 16))(v258, v257, v259);
      v262 = Logger.logObject.getter();
      v263 = static os_log_type_t.error.getter();
      v264 = os_log_type_enabled(v262, v263);
      v265 = v3[95];
      v267 = v3[45];
      v266 = v3[46];
      v268 = v3[44];
      if (v264)
      {
        v269 = swift_slowAlloc();
        v539 = swift_slowAlloc();
        v548[0] = v539;
        *v269 = 136315650;
        *(v269 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v548);
        *(v269 + 12) = 2080;
        *(v269 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v548);
        *(v269 + 22) = 2080;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.ToolError and conformance GenerativeError.ToolError, MEMORY[0x277D0DA50], MEMORY[0x277D0DA58]);
        v270 = Encodable.asJSONString.getter();
        v272 = v3;
        v273 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v270, v271, v548);

        *(v269 + 24) = v273;
        v3 = v272;

        v526 = *(v267 + 8);
        v526(v266, v268);
        _os_log_impl(&dword_24FD67000, v262, v263, "%s.%s Received a tool error %s", v269, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v539, -1, -1);
        MEMORY[0x253057F40](v269, -1, -1);
      }

      else
      {

        v526 = *(v267 + 8);
        v526(v266, v268);
      }

      v501 = v3;
      v333 = v3[79];
      v505 = v3[78];
      v512 = v3[87];
      v334 = v3[47];
      v502 = v3[44];
      v336 = v3[20];
      v335 = v3[21];
      v338 = v3[18];
      v337 = v3[19];
      GenerativeError.ToolError.context.getter();
      v339 = GenerativeError.ToolError.ErrorContext.name.getter();
      v341 = v340;
      v342 = *(v337 + 8);
      v342(v335, v338);
      GenerativeError.ToolError.context.getter();
      v343 = GenerativeError.ToolError.ErrorContext.description.getter();
      v345 = v344;
      v342(v336, v338);
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      *v346 = v339;
      *(v346 + 8) = v341;
      v3 = v501;
      *(v346 + 16) = v343;
      *(v346 + 24) = v345;
      *(v346 + 32) = 0;
      swift_willThrow();
      v526(v334, v502);
      (*(v333 + 8))(v512, v505);
      goto LABEL_74;
    }

    if (v12 == *MEMORY[0x277D0DBA8])
    {
      v296 = *(v0 + 616);
      v297 = *(v0 + 344);
      v298 = v3[40];
      v299 = v3[41];
      (*(v3[76] + 96))(v3[77], v3[75]);
      (*(v299 + 32))(v297, v296, v298);
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v301 = v3[42];
      v300 = v3[43];
      v302 = v3[40];
      v303 = v3[41];
      v304 = type metadata accessor for Logger();
      __swift_project_value_buffer(v304, static Logger.modelInteraction);
      (*(v303 + 16))(v301, v300, v302);
      v305 = Logger.logObject.getter();
      v306 = static os_log_type_t.error.getter();
      v307 = os_log_type_enabled(v305, v306);
      v308 = v3[95];
      v310 = v3[41];
      v309 = v3[42];
      v311 = v3[40];
      if (v307)
      {
        v312 = swift_slowAlloc();
        v541 = swift_slowAlloc();
        v548[0] = v541;
        *v312 = 136315650;
        *(v312 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v548);
        *(v312 + 12) = 2080;
        *(v312 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v548);
        *(v312 + 22) = 2080;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.DocumentError and conformance GenerativeError.DocumentError, MEMORY[0x277D0DB30], MEMORY[0x277D0DB38]);
        v313 = Encodable.asJSONString.getter();
        v315 = v3;
        v316 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v313, v314, v548);

        *(v312 + 24) = v316;
        v3 = v315;

        v527 = *(v310 + 8);
        v527(v309, v311);
        _os_log_impl(&dword_24FD67000, v305, v306, "%s.%s Received a document error %s", v312, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v541, -1, -1);
        MEMORY[0x253057F40](v312, -1, -1);
      }

      else
      {

        v527 = *(v310 + 8);
        v527(v309, v311);
      }

      v368 = v3[16];
      v369 = v3[17];
      v370 = v3[13];
      v371 = v3[14];
      GenerativeError.DocumentError.context.getter();
      GenerativeError.DocumentError.ErrorContext.url.getter();
      v372 = *(v371 + 8);
      v372(v368, v370);
      v373 = type metadata accessor for URL();
      v374 = *(v373 - 8);
      v375 = (*(v374 + 48))(v369, 1, v373);
      v376 = v3[17];
      v544 = v372;
      if (v375 == 1)
      {
        outlined destroy of OnScreenContent.Document?(v376, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v513 = 0xE000000000000000;
        v520 = 0;
      }

      else
      {
        v398 = URL.absoluteString.getter();
        v513 = v399;
        v520 = v398;
        (*(v374 + 8))(v376, v373);
      }

      v400 = v3[79];
      v503 = v3[78];
      v506 = v3[87];
      v401 = v3[43];
      v402 = v3[40];
      v403 = v3[15];
      v404 = v3[13];
      GenerativeError.DocumentError.context.getter();
      v405 = GenerativeError.DocumentError.ErrorContext.description.getter();
      v407 = v406;
      v544(v403, v404);
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      *v408 = v520;
      *(v408 + 8) = v513;
      *(v408 + 16) = v405;
      *(v408 + 24) = v407;
      *(v408 + 32) = 1;
      swift_willThrow();
      v527(v401, v402);
      (*(v400 + 8))(v506, v503);
      goto LABEL_74;
    }

    if (v12 == *MEMORY[0x277D0DB48])
    {
      v347 = *(v0 + 616);
      v348 = *(v0 + 312);
      v349 = v3[36];
      v350 = v3[37];
      (*(v3[76] + 96))(v3[77], v3[75]);
      (*(v350 + 32))(v348, v347, v349);
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v352 = v3[38];
      v351 = v3[39];
      v353 = v3[36];
      v354 = v3[37];
      v355 = type metadata accessor for Logger();
      __swift_project_value_buffer(v355, static Logger.modelInteraction);
      (*(v354 + 16))(v352, v351, v353);
      v356 = Logger.logObject.getter();
      v357 = static os_log_type_t.error.getter();
      v358 = os_log_type_enabled(v356, v357);
      v359 = v3[95];
      v361 = v3[37];
      v360 = v3[38];
      v362 = v3[36];
      if (v358)
      {
        v363 = swift_slowAlloc();
        v543 = swift_slowAlloc();
        v548[0] = v543;
        *v363 = 136315650;
        *(v363 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v548);
        *(v363 + 12) = 2080;
        *(v363 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v548);
        *(v363 + 22) = 2080;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.InvalidatedError and conformance GenerativeError.InvalidatedError, MEMORY[0x277D0D9C0], MEMORY[0x277D0D9C8]);
        v364 = Encodable.asJSONString.getter();
        v366 = v3;
        v367 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v364, v365, v548);

        *(v363 + 24) = v367;
        v3 = v366;

        v71 = *(v361 + 8);
        v71(v360, v362);
        _os_log_impl(&dword_24FD67000, v356, v357, "%s.%s Received an invalidated error %s", v363, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v543, -1, -1);
        MEMORY[0x253057F40](v363, -1, -1);
      }

      else
      {

        v71 = *(v361 + 8);
        v71(v360, v362);
      }

      v146 = v3[87];
      v147 = v3[79];
      v148 = v3[78];
      v149 = v3[39];
      v150 = v3[36];
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      v152 = 8;
      goto LABEL_44;
    }

    if (v12 == *MEMORY[0x277D0DB58])
    {
      v377 = *(v0 + 616);
      v378 = *(v0 + 280);
      v379 = v3[32];
      v380 = v3[33];
      (*(v3[76] + 96))(v3[77], v3[75]);
      (*(v380 + 32))(v378, v377, v379);
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v382 = v3[34];
      v381 = v3[35];
      v383 = v3[32];
      v384 = v3[33];
      v385 = type metadata accessor for Logger();
      __swift_project_value_buffer(v385, static Logger.modelInteraction);
      (*(v384 + 16))(v382, v381, v383);
      v386 = Logger.logObject.getter();
      v387 = static os_log_type_t.error.getter();
      v388 = os_log_type_enabled(v386, v387);
      v389 = v3[95];
      v391 = v3[33];
      v390 = v3[34];
      v392 = v3[32];
      if (v388)
      {
        v393 = swift_slowAlloc();
        v545 = swift_slowAlloc();
        v548[0] = v545;
        *v393 = 136315650;
        *(v393 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v548);
        *(v393 + 12) = 2080;
        *(v393 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v548);
        *(v393 + 22) = 2080;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.AuthenticationError and conformance GenerativeError.AuthenticationError, MEMORY[0x277D0D9F8], MEMORY[0x277D0DA00]);
        v394 = Encodable.asJSONString.getter();
        v396 = v3;
        v397 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v394, v395, v548);

        *(v393 + 24) = v397;
        v3 = v396;

        v71 = *(v391 + 8);
        v71(v390, v392);
        _os_log_impl(&dword_24FD67000, v386, v387, "%s.%s Received an authentication error %s", v393, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v545, -1, -1);
        MEMORY[0x253057F40](v393, -1, -1);
      }

      else
      {

        v71 = *(v391 + 8);
        v71(v390, v392);
      }

      v146 = v3[87];
      v147 = v3[79];
      v148 = v3[78];
      v149 = v3[35];
      v150 = v3[32];
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      v152 = 9;
      goto LABEL_44;
    }

    if (v12 != *MEMORY[0x277D0DB98])
    {
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v425 = *(v0 + 696);
      v426 = *(v0 + 688);
      v427 = v3[79];
      v428 = v3[78];
      v429 = type metadata accessor for Logger();
      __swift_project_value_buffer(v429, static Logger.modelInteraction);
      v546 = *(v427 + 16);
      v546(v426, v425, v428);
      v430 = Logger.logObject.getter();
      v431 = static os_log_type_t.error.getter();
      v432 = os_log_type_enabled(v430, v431);
      v433 = v3[95];
      v434 = v3[86];
      v435 = v3[79];
      v436 = v3[78];
      if (v432)
      {
        v437 = swift_slowAlloc();
        v438 = swift_slowAlloc();
        v529 = swift_slowAlloc();
        v548[0] = v529;
        *v437 = 136315650;
        *(v437 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v548);
        *(v437 + 12) = 2080;
        *(v437 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v548);
        *(v437 + 22) = 2112;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
        swift_allocError();
        v546(v439, v434, v436);
        v440 = _swift_stdlib_bridgeErrorToNSError();
        *(v437 + 24) = v440;
        *v438 = v440;

        v441 = *(v435 + 8);
        v441(v434, v436);
        _os_log_impl(&dword_24FD67000, v430, v431, "%s.%s Received an unknown error not fall into any defined GenerativeError enum: %@", v437, 0x20u);
        outlined destroy of OnScreenContent.Document?(v438, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x253057F40](v438, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v529, -1, -1);
        MEMORY[0x253057F40](v437, -1, -1);
      }

      else
      {

        v441 = *(v435 + 8);
        v441(v434, v436);
      }

      v470 = v3[87];
      v471 = v3[78];
      v472 = v3[77];
      v473 = v3[76];
      v474 = v3[75];
      lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      swift_allocError();
      v546(v475, v470, v471);
      swift_willThrow();
      v441(v470, v471);
      (*(v473 + 8))(v472, v474);
      v250 = v3[2];
      goto LABEL_75;
    }

    v409 = *(v0 + 616);
    v410 = *(v0 + 248);
    v411 = v3[25];
    v412 = v3[26];
    (*(v3[76] + 96))(v3[77], v3[75]);
    (*(v412 + 32))(v410, v409, v411);
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v414 = v3[30];
    v413 = v3[31];
    v415 = v3[25];
    v416 = v3[26];
    v417 = type metadata accessor for Logger();
    __swift_project_value_buffer(v417, static Logger.modelInteraction);
    v508 = *(v416 + 16);
    v508(v414, v413, v415);
    v1 = Logger.logObject.getter();
    v418 = static os_log_type_t.error.getter();
    v419 = os_log_type_enabled(v1, v418);
    v7 = v3[30];
    v2 = v3[25];
    v5 = v3[26];
    if (v419)
    {
      v420 = swift_slowAlloc();
      v548[0] = swift_slowAlloc();
      v421 = v548[0];
      *v420 = 136315650;
      *(v420 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v548);
      *(v420 + 12) = 2080;
      *(v420 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v548);
      *(v420 + 22) = 2080;
      lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.UnknownUnderlyingError and conformance GenerativeError.UnknownUnderlyingError, MEMORY[0x277D0DA40], MEMORY[0x277D0DA48]);
      v422 = Encodable.asJSONString.getter();
      v424 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v422, v423, v548);

      *(v420 + 24) = v424;
      v528 = *(v5 + 8);
      v528(v7, v2);
      _os_log_impl(&dword_24FD67000, v1, v418, "%s.%s Received an unknown error %s", v420, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v421, -1, -1);
      MEMORY[0x253057F40](v420, -1, -1);

LABEL_142:
      v442 = v3[12];
      v443 = v3[7];
      v444 = v3[8];
      GenerativeError.UnknownUnderlyingError.error.getter();
      v445 = GenerativeError.UnderlyingError.error.getter();
      v446 = *(v444 + 8);
      v446(v442, v443);
      if (v445 && (v3[3] = v445, type metadata accessor for NSError(), swift_dynamicCast()))
      {
        v508(v3[29], v3[31], v3[25]);
        v447 = Logger.logObject.getter();
        v448 = static os_log_type_t.error.getter();
        v449 = os_log_type_enabled(v447, v448);
        v450 = v3[95];
        v451 = v3[29];
        v452 = v3[25];
        if (v449)
        {
          v453 = swift_slowAlloc();
          v521 = swift_slowAlloc();
          v548[0] = v521;
          *v453 = 136315650;
          *(v453 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v548);
          *(v453 + 12) = 2080;
          *(v453 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v548);
          *(v453 + 22) = 2080;
          lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.UnknownUnderlyingError and conformance GenerativeError.UnknownUnderlyingError, MEMORY[0x277D0DA40], MEMORY[0x277D0DA48]);
          v454 = Encodable.asJSONString.getter();
          v456 = v3;
          v457 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v454, v455, v548);

          *(v453 + 24) = v457;
          v3 = v456;

          v458 = v528;
          v528(v451, v452);
          v459 = "%s.%s Received an unknown error and rethrow as NSError: %s";
LABEL_149:
          _os_log_impl(&dword_24FD67000, v447, v448, v459, v453, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x253057F40](v521, -1, -1);
          MEMORY[0x253057F40](v453, -1, -1);

LABEL_153:
          v146 = v3[87];
          v147 = v3[79];
          v148 = v3[78];
          v476 = v3[31];
          v477 = v3[25];
          swift_willThrow();
          v458(v476, v477);
          goto LABEL_45;
        }
      }

      else
      {
        v460 = v3[11];
        v461 = v3[7];
        GenerativeError.UnknownUnderlyingError.error.getter();
        v462 = GenerativeError.UnderlyingError.error.getter();
        v446(v460, v461);
        v463 = v3[31];
        v464 = v3[25];
        if (!v462)
        {
          v508(v3[27], v463, v464);
          v478 = Logger.logObject.getter();
          v479 = static os_log_type_t.error.getter();
          v480 = os_log_type_enabled(v478, v479);
          v481 = v3[27];
          v482 = v3[25];
          if (v480)
          {
            v514 = v3[95];
            v483 = swift_slowAlloc();
            v547 = swift_slowAlloc();
            v548[0] = v547;
            *v483 = 136315650;
            *(v483 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v548);
            *(v483 + 12) = 2080;
            *(v483 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v548);
            *(v483 + 22) = 2080;
            lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.UnknownUnderlyingError and conformance GenerativeError.UnknownUnderlyingError, MEMORY[0x277D0DA40], MEMORY[0x277D0DA48]);
            v484 = Encodable.asJSONString.getter();
            v486 = v3;
            v487 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v484, v485, v548);

            *(v483 + 24) = v487;
            v3 = v486;

            v528(v481, v482);
            _os_log_impl(&dword_24FD67000, v478, v479, "%s.%s Received an unknown error and rethrow as Error.unknownUnderlyingGMSError because underlying error is nil : %s", v483, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x253057F40](v547, -1, -1);
            MEMORY[0x253057F40](v483, -1, -1);
          }

          else
          {

            v528(v481, v482);
          }

          v488 = v3[79];
          v507 = v3[78];
          v515 = v3[87];
          v489 = v3[31];
          v504 = v3[25];
          v491 = v3[9];
          v490 = v3[10];
          v492 = v3[7];
          GenerativeError.UnknownUnderlyingError.error.getter();
          v493 = v3;
          v494 = GenerativeError.UnderlyingError.error.getter();
          v446(v490, v492);
          GenerativeError.UnknownUnderlyingError.error.getter();
          v495 = GenerativeError.UnderlyingError.localizedDescription.getter();
          v497 = v496;
          v446(v491, v492);
          lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
          swift_allocError();
          *v498 = v494;
          *(v498 + 8) = v495;
          v3 = v493;
          *(v498 + 16) = v497;
          *(v498 + 24) = 0;
          *(v498 + 32) = 2;
          swift_willThrow();
          v528(v489, v504);
          (*(v488 + 8))(v515, v507);
          v250 = v493[2];
          goto LABEL_75;
        }

        v508(v3[28], v463, v464);
        v447 = Logger.logObject.getter();
        v448 = static os_log_type_t.error.getter();
        v465 = os_log_type_enabled(v447, v448);
        v450 = v3[95];
        v451 = v3[28];
        v452 = v3[25];
        if (v465)
        {
          v453 = swift_slowAlloc();
          v521 = swift_slowAlloc();
          v548[0] = v521;
          *v453 = 136315650;
          *(v453 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v548);
          *(v453 + 12) = 2080;
          *(v453 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v548);
          *(v453 + 22) = 2080;
          lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError.UnknownUnderlyingError and conformance GenerativeError.UnknownUnderlyingError, MEMORY[0x277D0DA40], MEMORY[0x277D0DA48]);
          v466 = Encodable.asJSONString.getter();
          v468 = v3;
          v469 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v466, v467, v548);

          *(v453 + 24) = v469;
          v3 = v468;

          v458 = v528;
          v528(v451, v452);
          v459 = "%s.%s Received an unknown error and rethrow as is: %s";
          goto LABEL_149;
        }
      }

      v458 = v528;
      v528(v451, v452);
      goto LABEL_153;
    }

LABEL_141:

    v528 = *(v5 + 8);
    v528(v7, v2);
    goto LABEL_142;
  }

  v13 = *(v0 + 616);
  v15 = *(v0 + 448);
  v14 = *(v0 + 456);
  v17 = v3[54];
  v16 = v3[55];
  v18 = v3[52];
  v19 = v3[53];
  (*(v3[76] + 96))(v3[77], v3[75]);
  (*(v15 + 32))(v14, v13, v16);
  GenerativeError.PromptError.type.getter();
  v20 = (*(v19 + 88))(v17, v18);
  if (v20 == *MEMORY[0x277D0DA90])
  {
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v21 = v3[87];
    v22 = v3[85];
    v23 = v3[79];
    v24 = v3[78];
    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.modelInteraction);
    (*(v23 + 16))(v22, v21, v24);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v3[95];
    v30 = v3[85];
    v31 = v3[79];
    v499 = v3;
    v32 = v3[78];
    if (v28)
    {
      v33 = swift_slowAlloc();
      v530 = swift_slowAlloc();
      v548[0] = v530;
      *v33 = 136315650;
      *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v548);
      *(v33 + 12) = 2080;
      *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v548);
      *(v33 + 22) = 2080;
      lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBB8]);
      v34 = Encodable.asJSONString.getter();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v548);

      *(v33 + 24) = v36;

      v522 = *(v31 + 8);
      v522(v30, v32);
      _os_log_impl(&dword_24FD67000, v26, v27, "%s.%s Received a prompt error: too many tokens %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v530, -1, -1);
      MEMORY[0x253057F40](v33, -1, -1);
    }

    else
    {

      v522 = *(v31 + 8);
      v522(v30, v32);
    }

    v3 = v499;
    v137 = v499[87];
    v138 = v499[78];
    v140 = v499[56];
    v139 = v499[57];
    v141 = v499[55];
    v517 = v499[54];
    v142 = v499[52];
    v143 = v499[53];
    lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
    swift_allocError();
    v145 = 10;
  }

  else
  {
    if (v20 == *MEMORY[0x277D0DA98] || v20 == *MEMORY[0x277D0DAA0])
    {
      (*(v3[53] + 8))(v3[54], v3[52]);
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v119 = v3[87];
      v120 = v3[80];
      v121 = v3[79];
      v122 = v3[78];
      v123 = type metadata accessor for Logger();
      __swift_project_value_buffer(v123, static Logger.modelInteraction);
      (*(v121 + 16))(v120, v119, v122);
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.error.getter();
      v126 = os_log_type_enabled(v124, v125);
      v127 = v3[95];
      v128 = v3[80];
      v129 = v3[79];
      v130 = v3[78];
      if (v126)
      {
        v131 = swift_slowAlloc();
        v534 = swift_slowAlloc();
        v548[0] = v534;
        *v131 = 136315650;
        *(v131 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v548);
        *(v131 + 12) = 2080;
        *(v131 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v548);
        *(v131 + 22) = 2080;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBB8]);
        v132 = Encodable.asJSONString.getter();
        v134 = v3;
        v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v133, v548);

        *(v131 + 24) = v135;
        v3 = v134;

        v136 = *(v129 + 8);
        v136(v128, v130);
        _os_log_impl(&dword_24FD67000, v124, v125, "%s.%s Received a prompt error: safetyRejected or denyListRejected %s", v131, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v534, -1, -1);
        MEMORY[0x253057F40](v131, -1, -1);
      }

      else
      {

        v136 = *(v129 + 8);
        v136(v128, v130);
      }

      v174 = v3[87];
      v175 = v3[78];
      v177 = v3[56];
      v176 = v3[57];
      v178 = v3[55];
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      *v179 = 5;
      *(v179 + 8) = 0;
      *(v179 + 16) = 0;
      *(v179 + 24) = 0;
      *(v179 + 32) = 3;
      swift_willThrow();
      (*(v177 + 8))(v176, v178);
      v136(v174, v175);
      goto LABEL_74;
    }

    v500 = v3;
    if (v20 == *MEMORY[0x277D0DAB0])
    {
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v72 = v3[87];
      v73 = v3[84];
      v74 = v3[79];
      v75 = v3[78];
      v76 = type metadata accessor for Logger();
      __swift_project_value_buffer(v76, static Logger.modelInteraction);
      (*(v74 + 16))(v73, v72, v75);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();
      v79 = os_log_type_enabled(v77, v78);
      v80 = v3[95];
      v81 = v3[84];
      v82 = v3[79];
      v83 = v3[78];
      if (v79)
      {
        v84 = swift_slowAlloc();
        v532 = swift_slowAlloc();
        v548[0] = v532;
        *v84 = 136315650;
        *(v84 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v548);
        *(v84 + 12) = 2080;
        *(v84 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v548);
        *(v84 + 22) = 2080;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBB8]);
        v85 = Encodable.asJSONString.getter();
        v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, v548);

        *(v84 + 24) = v87;

        v522 = *(v82 + 8);
        v522(v81, v83);
        _os_log_impl(&dword_24FD67000, v77, v78, "%s.%s Received a prompt error: language recognizer rejected %s", v84, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v532, -1, -1);
        MEMORY[0x253057F40](v84, -1, -1);
      }

      else
      {

        v522 = *(v82 + 8);
        v522(v81, v83);
      }

      v3 = v500;
      v137 = v500[87];
      v138 = v500[78];
      v140 = v500[56];
      v139 = v500[57];
      v141 = v500[55];
      v517 = v500[54];
      v142 = v500[52];
      v143 = v500[53];
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      v145 = 11;
    }

    else if (v20 == *MEMORY[0x277D0DAA8])
    {
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v226 = v3[87];
      v227 = v3[83];
      v228 = v3[79];
      v229 = v3[78];
      v230 = type metadata accessor for Logger();
      __swift_project_value_buffer(v230, static Logger.modelInteraction);
      (*(v228 + 16))(v227, v226, v229);
      v231 = Logger.logObject.getter();
      v232 = static os_log_type_t.error.getter();
      v233 = os_log_type_enabled(v231, v232);
      v234 = v3[95];
      v235 = v3[83];
      v236 = v3[79];
      v237 = v3[78];
      if (v233)
      {
        v238 = swift_slowAlloc();
        v538 = swift_slowAlloc();
        v548[0] = v538;
        *v238 = 136315650;
        *(v238 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v548);
        *(v238 + 12) = 2080;
        *(v238 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v548);
        *(v238 + 22) = 2080;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBB8]);
        v239 = Encodable.asJSONString.getter();
        v241 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v239, v240, v548);

        *(v238 + 24) = v241;

        v522 = *(v236 + 8);
        v522(v235, v237);
        _os_log_impl(&dword_24FD67000, v231, v232, "%s.%s Received a prompt error: script validator rejected %s", v238, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v538, -1, -1);
        MEMORY[0x253057F40](v238, -1, -1);
      }

      else
      {

        v522 = *(v236 + 8);
        v522(v235, v237);
      }

      v3 = v500;
      v137 = v500[87];
      v138 = v500[78];
      v140 = v500[56];
      v139 = v500[57];
      v141 = v500[55];
      v517 = v500[54];
      v142 = v500[52];
      v143 = v500[53];
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      v145 = 12;
    }

    else if (v20 == *MEMORY[0x277D0DA88])
    {
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v274 = v3[87];
      v275 = v3[82];
      v276 = v3[79];
      v277 = v3[78];
      v278 = type metadata accessor for Logger();
      __swift_project_value_buffer(v278, static Logger.modelInteraction);
      (*(v276 + 16))(v275, v274, v277);
      v279 = Logger.logObject.getter();
      v280 = static os_log_type_t.error.getter();
      v281 = os_log_type_enabled(v279, v280);
      v282 = v3[95];
      v283 = v3[82];
      v284 = v3[79];
      v285 = v3[78];
      if (v281)
      {
        v286 = swift_slowAlloc();
        v540 = swift_slowAlloc();
        v548[0] = v540;
        *v286 = 136315650;
        *(v286 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v548);
        *(v286 + 12) = 2080;
        *(v286 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v548);
        *(v286 + 22) = 2080;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBB8]);
        v287 = Encodable.asJSONString.getter();
        v289 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v287, v288, v548);

        *(v286 + 24) = v289;

        v522 = *(v284 + 8);
        v522(v283, v285);
        _os_log_impl(&dword_24FD67000, v279, v280, "%s.%s Received a prompt error: invalid prompt format %s", v286, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v540, -1, -1);
        MEMORY[0x253057F40](v286, -1, -1);
      }

      else
      {

        v522 = *(v284 + 8);
        v522(v283, v285);
      }

      v3 = v500;
      v137 = v500[87];
      v138 = v500[78];
      v140 = v500[56];
      v139 = v500[57];
      v141 = v500[55];
      v517 = v500[54];
      v142 = v500[52];
      v143 = v500[53];
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      v145 = 13;
    }

    else
    {
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v317 = v3[87];
      v318 = v3[81];
      v319 = v3[79];
      v320 = v3[78];
      v321 = type metadata accessor for Logger();
      __swift_project_value_buffer(v321, static Logger.modelInteraction);
      (*(v319 + 16))(v318, v317, v320);
      v322 = Logger.logObject.getter();
      v323 = static os_log_type_t.error.getter();
      v324 = os_log_type_enabled(v322, v323);
      v325 = v3[95];
      v326 = v3[81];
      v327 = v3[79];
      v328 = v3[78];
      if (v324)
      {
        v329 = swift_slowAlloc();
        v542 = swift_slowAlloc();
        v548[0] = v542;
        *v329 = 136315650;
        *(v329 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v548);
        *(v329 + 12) = 2080;
        *(v329 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE348F0, v548);
        *(v329 + 22) = 2080;
        lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBB8]);
        v330 = Encodable.asJSONString.getter();
        v332 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v330, v331, v548);

        *(v329 + 24) = v332;

        v522 = *(v327 + 8);
        v522(v326, v328);
        _os_log_impl(&dword_24FD67000, v322, v323, "%s.%s Received a prompt error: invalid prompt format %s", v329, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v542, -1, -1);
        MEMORY[0x253057F40](v329, -1, -1);
      }

      else
      {

        v522 = *(v327 + 8);
        v522(v326, v328);
      }

      v3 = v500;
      v137 = v500[87];
      v138 = v500[78];
      v140 = v500[56];
      v139 = v500[57];
      v141 = v500[55];
      v517 = v500[54];
      v142 = v500[52];
      v143 = v500[53];
      lazy protocol witness table accessor for type ModelOrchestrator.Error and conformance ModelOrchestrator.Error();
      swift_allocError();
      v145 = 14;
    }
  }

  *v144 = v145;
  *(v144 + 8) = 0;
  *(v144 + 16) = 0;
  *(v144 + 24) = 0;
  *(v144 + 32) = 3;
  swift_willThrow();
  (*(v140 + 8))(v139, v141);
  v522(v137, v138);
  (*(v143 + 8))(v517, v142);
LABEL_74:
  v250 = v3[2];
LABEL_75:

LABEL_76:

  v251 = v3[1];

  return v251();
}

void ModelOrchestrator.populateDeviceAssistantInfo(_:_:_:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.modelInteraction);
  v7 = *(a3 + 8);
  v37 = *(a3 + 24);
  v38[0] = v7;
  outlined init with copy of String(v38, v33);
  outlined init with copy of String(&v37, v33);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  outlined destroy of String(v38);
  outlined destroy of String(&v37);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v35 = v11;
    *v10 = 136315650;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, &v35);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x800000024FE34850, &v35);
    *(v10 + 22) = 2080;
    v12 = *(a3 + 1);
    v33[0] = *a3;
    v33[1] = v12;
    v34 = *(a3 + 4);
    outlined init with copy of String(v38, v36);
    outlined init with copy of String(&v37, v36);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v35);

    *(v10 + 24) = v15;
    _os_log_impl(&dword_24FD67000, v8, v9, "%s.%s Invoking useDeviceAssistant Tool: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v11, -1, -1);
    MEMORY[0x253057F40](v10, -1, -1);
  }

  v16 = *a3;
  v17 = type metadata accessor for ModelResponse(0);
  *(a4 + v17[11]) = v16;
  v18 = (a4 + v17[13]);
  swift_bridgeObjectRetain_n();

  v19 = v37;
  v20 = v38[0];
  *v18 = v37;
  v33[0] = v20;
  v36[0] = 0x6E6572656665725BLL;
  v36[1] = 0xEB000000005D6563;
  v35 = v19;
  lazy protocol witness table accessor for type String and conformance String();

  v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v23 = v22;
  outlined destroy of String(&v37);
  outlined destroy of String(v38);
  v24 = (a4 + v17[12]);

  *v24 = v21;
  v24[1] = v23;
  if (v16)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (v21 == a1 && v23 == a2)
    {
      v25 = 0;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }

    SELFUtils.recordAndEmitBoomerangEvent(utteranceRewrite:)(v25 & 1);
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v33[0] = v29;
    *v28 = 136315650;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000024FE1C210, v33);
    *(v28 + 12) = 2080;
    *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x800000024FE34850, v33);
    *(v28 + 22) = 2080;
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v33);

    *(v28 + 24) = v30;
    _os_log_impl(&dword_24FD67000, v26, v27, "%s.%s rewritten utterance: %s", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v29, -1, -1);
    MEMORY[0x253057F40](v28, -1, -1);
  }

  else
  {
  }
}

uint64_t implicit closure #5 in implicit closure #4 in ModelOrchestrator.registerImage(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22[-v10 - 8];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  type metadata accessor for MainActor();

  outlined init with copy of IntentCallbackManager(a2, v22);
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = a1;
  *(v14 + 40) = a5;
  v16 = *(a2 + 112);
  *(v14 + 144) = *(a2 + 96);
  *(v14 + 160) = v16;
  *(v14 + 176) = *(a2 + 128);
  v17 = *(a2 + 48);
  *(v14 + 80) = *(a2 + 32);
  *(v14 + 96) = v17;
  v18 = *(a2 + 80);
  *(v14 + 112) = *(a2 + 64);
  *(v14 + 128) = v18;
  v19 = *(a2 + 16);
  *(v14 + 48) = *a2;
  *(v14 + 64) = v19;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, a4, v14);
}

void implicit closure #4 in implicit closure #3 in closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(__int128 *a1)
{
  v1 = a1[7];
  v21 = a1[6];
  v22 = v1;
  v23 = *(a1 + 16);
  v2 = a1[3];
  v17 = a1[2];
  v18 = v2;
  v3 = a1[5];
  v19 = a1[4];
  v20 = v3;
  v4 = a1[1];
  v15 = *a1;
  v16 = v4;
  v6 = *(a1 + 13);
  v5 = *(a1 + 14);
  v11 = v6;
  v12 = v5;
  v13 = 0;
  v14 = 3;

  IntentCallbackManager.updateIntentProgress(to:)(&v11);
  v7 = v11;
  v8 = v12;
  v9 = v13;
  v10 = v14;

  outlined consume of GenerativeAssistantProgressLevel(v7, v8, v9, v10);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of Date?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of OnScreenContent.Document?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of OnScreenContent.Document?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of Any((*(v10 + 56) + 32 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t outlined assign with take of ModelSession?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions12ModelSession_pSgMd, _s26GenerativeAssistantActions12ModelSession_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:)(uint64_t a1)
{
  v3 = *(type metadata accessor for GenerativeAssistantUseCase() - 8);
  v4 = (*(v3 + 80) + 96) & ~*(v3 + 80);
  v11 = v1[2];
  v10 = v1[3];
  v9 = v1[9];
  v8 = v1[10];
  v7 = v1[11];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of ContentLoaderProviding.load();

  return closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:)(a1, v11, v10, (v1 + 4), v9, v8, v7, v1 + v4);
}

uint64_t _s26GenerativeAssistantActions0A15RequestMetadataVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_8Tm()
{
  v1 = type metadata accessor for GenerativeAssistantUseCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
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

uint64_t partial apply for closure #1 in IntentCallbackManager.updateMediaUploadProgress(_:debouncer:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of ContentLoaderProviding.load();

  return closure #1 in IntentCallbackManager.updateMediaUploadProgress(_:debouncer:)(v7, a1, v4, v5, v6, v1 + 48);
}

uint64_t sub_24FDF38E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of ContentLoaderProviding.load();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t objectdestroy_62Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t closure #1 in IntentCallbackManager.updateMediaUploadProgress(_:debouncer:)partial apply(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of PartnerStreamWrapper.getStreamedResponse();

  return closure #1 in IntentCallbackManager.updateMediaUploadProgress(_:debouncer:)(v7, a1, v4, v5, v6, v1 + 48);
}

uint64_t sub_24FDF3C08()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24FDF3C50()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for closure #1 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of ContentLoaderProviding.load();

  return closure #1 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(a1);
}

uint64_t partial apply for closure #7 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1)
{
  v3 = *(type metadata accessor for GenerativeRequestMetadata(0) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = dispatch thunk of ContentLoaderProviding.load();

  return closure #7 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(a1, v5, v6, v7, v8, v9, v10, v1 + v4);
}

uint64_t outlined init with take of GeneratedResponse(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #6 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1)
{
  v3 = *(type metadata accessor for GenerativeRequestMetadata(0) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = dispatch thunk of ContentLoaderProviding.load();

  return closure #6 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(a1, v5, v6, v7, v8, v9, v10, v1 + v4);
}

uint64_t sub_24FDF4064()
{
  v1 = type metadata accessor for GenerativeRequestMetadata(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  __swift_destroy_boxed_opaque_existential_0((v0 + v3));
  v6 = v1[8];
  v7 = type metadata accessor for GenerativeAssistantUseCase();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[9];
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = (v5 + v1[10]);
  if (v11[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  v12 = v1[11];
  v13 = type metadata accessor for DirectInvocationClientID();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 136, v2 | 7);
}

uint64_t partial apply for closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1)
{
  type metadata accessor for GenerativeRequestMetadata(0);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = dispatch thunk of ContentLoaderProviding.load();

  return closure #5 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t partial apply for closure #4 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1)
{
  v3 = *(type metadata accessor for GenerativeRequestMetadata(0) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = dispatch thunk of ContentLoaderProviding.load();

  return closure #4 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(a1, v5, v6, v7, v8, v9, v10, v1 + v4);
}

uint64_t objectdestroy_97Tm()
{
  v1 = type metadata accessor for GenerativeRequestMetadata(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  __swift_destroy_boxed_opaque_existential_0((v0 + v3));
  v6 = v1[8];
  v7 = type metadata accessor for GenerativeAssistantUseCase();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[9];
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = (v5 + v1[10]);
  if (v11[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  v12 = v1[11];
  v13 = type metadata accessor for DirectInvocationClientID();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 136, v2 | 7);
}

uint64_t partial apply for closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(uint64_t a1)
{
  v3 = *(type metadata accessor for GenerativeRequestMetadata(0) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = dispatch thunk of PartnerStreamWrapper.getStreamedResponse();

  return closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(a1, v5, v6, v7, v8, v9, v10, v1 + v4);
}

uint64_t sub_24FDF49BC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t type metadata accessor for NSError()
{
  result = lazy cache variable for type metadata for NSError;
  if (!lazy cache variable for type metadata for NSError)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

GenerativeAssistantActions::GATInteractionMode_optional __swiftcall GATInteractionMode.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GATInteractionMode.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t GATInteractionMode.rawValue.getter()
{
  v1 = 0x6C6E4F6563696F76;
  v2 = 0x4679616C70736964;
  if (*v0 != 2)
  {
    v2 = 0x4F79616C70736964;
  }

  if (*v0)
  {
    v1 = 0x726F466563696F76;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t GenerativeRequestMetadata.partnerName.getter()
{
  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v0 = static Disclaimer.partnerName;

  return v0;
}

uint64_t GenerativeRequestMetadata.modelBundle.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for GenerativeAssistantSettingsProvider();
  static GenerativeAssistantSettingsProvider.shared.getter();
  dispatch thunk of GenerativeAssistantSettingsProvider.modelBundle()();

  v2 = type metadata accessor for ModelBundle();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t type metadata accessor for GenerativeRequestMetadata(uint64_t a1)
{
  result = type metadata singleton initialization cache for GenerativeRequestMetadata;
  if (!type metadata singleton initialization cache for GenerativeRequestMetadata)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenerativeRequestMetadata.sessionID.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenerativeRequestMetadata(0) + 52));

  return v1;
}

uint64_t GenerativeRequestMetadata.init(featureFlagManager:isExplicitRequest:interactionMode:interfaceIdiom:useCase:sessionID:siriLocale:partnerInfo:directInvocationClientId:)@<X0>(void *a1@<X0>, char a2@<W1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *a3;
  v17 = *a4;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(a1, a9);
  a9[40] = a2;
  a9[41] = v16;
  a9[42] = v17;
  v18 = type metadata accessor for GenerativeRequestMetadata(0);
  v19 = v18[8];
  v20 = type metadata accessor for GenerativeAssistantUseCase();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&a9[v19], a5, v20);
  v22 = &a9[v18[13]];
  *v22 = a6;
  v22[1] = a7;
  outlined init with copy of Date?(a8, &a9[v18[9]], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of Date?(a10, &a9[v18[10]], &_s25GenerativeAssistantCommon31UserRequestPartnerInfoProviding_pSgMd, &_s25GenerativeAssistantCommon31UserRequestPartnerInfoProviding_pSgMR);

  LOBYTE(v19) = static SessionPersistenceUtils.isBackToBackRequest(sessionId:)();
  a9[v18[12]] = (v19 & 1) == 0;
  outlined init with copy of Date?(a11, &a9[v18[11]], &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMd, &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMR);
  if ((v19 & 1) == 0)
  {
    if (!a7)
    {
      goto LABEL_5;
    }

    static SessionPersistenceUtils.setSession(forCurrentSession:)();
  }

LABEL_5:
  outlined destroy of OnScreenContent.Document?(a11, &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMd, &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMR);
  outlined destroy of OnScreenContent.Document?(a10, &_s25GenerativeAssistantCommon31UserRequestPartnerInfoProviding_pSgMd, &_s25GenerativeAssistantCommon31UserRequestPartnerInfoProviding_pSgMR);
  outlined destroy of OnScreenContent.Document?(a8, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v21 + 8))(a5, v20);

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t GenerativeRequestMetadata.partnerIconName.getter()
{
  type metadata accessor for GenerativeAssistantSettingsProvider();
  static GenerativeAssistantSettingsProvider.shared.getter();
  v0 = dispatch thunk of GenerativeAssistantSettingsProvider.icon()();

  return v0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GATInteractionMode()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GATInteractionMode(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GATInteractionMode(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GATInteractionMode(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000079;
  v3 = 0x6C6E4F6563696F76;
  v4 = 0xEE0064726177726FLL;
  v5 = 0x4679616C70736964;
  if (*v1 != 2)
  {
    v5 = 0x4F79616C70736964;
    v4 = 0xEB00000000796C6ELL;
  }

  if (*v1)
  {
    v3 = 0x726F466563696F76;
    v2 = 0xEC00000064726177;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

GenerativeAssistantActions::GATInterfaceIdiom_optional __swiftcall GATInterfaceIdiom.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GATInterfaceIdiom.init(rawValue:), v3);

  v7 = 11;
  if (v5 < 0xB)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t GATInterfaceIdiom.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x79616C50726163;
    v8 = 0x646F50656D6F68;
    v9 = 6513005;
    if (v1 != 3)
    {
      v9 = 0x73646F50726961;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x6565724673657965;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 22100;
    v3 = 0x6E6F69736976;
    if (v1 != 9)
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x656E6F685069;
    v5 = 1684099177;
    if (v1 != 6)
    {
      v5 = 0x6863746177;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GATInterfaceIdiom()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}