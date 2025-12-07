uint64_t outlined init with take of TypedValueAsyncResolvable(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t getEnumTagSinglePayload for IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IntentDialogUtils.GenerativeAssistantToolResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *IntelligenceFile.snippetPreviewFile()()
{
  v2 = v0;
  v25 = *v0;
  v3 = type metadata accessor for IntelligenceFile.SandboxExtensionType();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IntelligenceFile.Attributes();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  IntelligenceFile.fileURL.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of URL?(v8);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    v21 = URL.startAccessingSecurityScopedResource()();
    (*(v10 + 16))(v13, v15, v9);
    IntelligenceFile.name.getter();
    v20 = v1;
    IntelligenceFile.attributes.getter();
    v2 = v24;
    (*(v22 + 104))(v24, *MEMORY[0x277D74490], v23);
    swift_allocObject();
    v16 = v20;
    v17 = IntelligenceFile.init(fileURL:name:attributes:automaticallyDelete:sandboxExtensionType:)();
    if (v16)
    {
      if (v21)
      {
        URL.stopAccessingSecurityScopedResource()();
      }
    }

    else
    {
      v2 = v17;
      if (v21)
      {
        URL.stopAccessingSecurityScopedResource()();
      }
    }

    (*(v10 + 8))(v15, v9);
  }

  return v2;
}

UIImage_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IntelligenceFile.getImage()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v44[-v2];
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v44[-v9];
  IntelligenceFile.fileURL.getter();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of URL?(v3);
    if (one-time initialization token for contextRetrieval != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.contextRetrieval);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v3 = swift_slowAlloc();
      v48 = v3;
      *v14 = 136315394;
      v15 = _typeName(_:qualified:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v48);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6567616D49746567, 0xEA00000000002928, &v48);
      _os_log_impl(&dword_24FD67000, v12, v13, "%s.%s Creating the PlatformImage with the file's data", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v3, -1, -1);
      MEMORY[0x253057F40](v14, -1, -1);
    }

    v18 = IntelligenceFile.data.getter();
    if (!v0)
    {
      v39 = v18;
      v40 = v19;
      v41 = objc_allocWithZone(MEMORY[0x277D755B8]);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v3 = [v41 initWithData_];

      outlined consume of Data._Representation(v39, v40);
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    if (one-time initialization token for contextRetrieval != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.contextRetrieval);
    (*(v5 + 16))(v8, v10, v4);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v47 = v0;
      v24 = v23;
      v46 = swift_slowAlloc();
      v48 = v46;
      *v24 = 136315650;
      v25 = _typeName(_:qualified:)();
      v45 = v22;
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v48);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6567616D49746567, 0xEA00000000002928, &v48);
      *(v24 + 22) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL();
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      v31 = v8;
      v32 = *(v5 + 8);
      v32(v31, v4);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v48);

      *(v24 + 24) = v33;
      _os_log_impl(&dword_24FD67000, v21, v45, "%s.%s Creating the PlatformImage with the file's url: %s", v24, 0x20u);
      v34 = v46;
      swift_arrayDestroy();
      MEMORY[0x253057F40](v34, -1, -1);
      MEMORY[0x253057F40](v24, -1, -1);
    }

    else
    {

      v35 = v8;
      v32 = *(v5 + 8);
      v32(v35, v4);
    }

    URL.startAccessingSecurityScopedResource()();
    v36 = URL.path(percentEncoded:)(0);
    v37 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v38 = MEMORY[0x253056EA0](v36._countAndFlagsBits, v36._object);

    v3 = [v37 initWithContentsOfFile_];

    URL.stopAccessingSecurityScopedResource()();
    v32(v10, v4);
  }

  v43 = v3;
  result.is_nil = v19;
  result.value.super.isa = v43;
  return result;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ForegroundAppDetector.getForegroundAppBundleID()()
{
  v27 = type metadata accessor for DispatchTime();
  v0 = *(v27 - 8);
  v1 = MEMORY[0x28223BE20](v27);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v25 - v4;
  v6 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x277D84F90];
  v8 = v7 + 16;
  v9 = dispatch_semaphore_create(0);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  aBlock[4] = partial apply for closure #1 in ForegroundAppDetector.getForegroundAppBundleID();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed FBSDisplayLayoutMonitor, @guaranteed FBSDisplayLayout?, @guaranteed FBSDisplayLayoutTransitionContext?) -> ();
  aBlock[3] = &block_descriptor;
  v11 = _Block_copy(aBlock);

  v12 = v9;

  [v6 setTransitionHandler_];
  _Block_release(v11);
  v13 = objc_opt_self();
  v26 = v6;
  v14 = [v13 monitorWithConfiguration_];
  static DispatchTime.now()();
  + infix(_:_:)();
  v15 = *(v0 + 8);
  v16 = v3;
  v17 = v27;
  v15(v16, v27);
  MEMORY[0x2530572A0](v5);
  v15(v5, v17);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    lazy protocol witness table accessor for type ForegroundAppDetector.DetectorError and conformance ForegroundAppDetector.DetectorError();
    swift_allocError();
    swift_willThrow();
    [v14 invalidate];
  }

  else
  {
    v18 = v14;
    v19 = v26;
    swift_beginAccess();
    v20 = *(*v8 + 16);
    if (v20)
    {
      v21 = *v8 + 16 + 16 * v20;
      v14 = *v21;
      v5 = *(v21 + 8);
    }

    else
    {
      v14 = 0;
      v5 = 0;
    }

    [v18 invalidate];
  }

  v22 = v14;
  v23 = v5;
  result.value._object = v23;
  result.value._countAndFlagsBits = v22;
  return result;
}

uint64_t sub_24FDB9A80()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void closure #1 in ForegroundAppDetector.getForegroundAppBundleID()(int a1, id a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a2)
  {
    v8 = a2;
    v9 = &unk_279699000;
    v10 = [a2 elements];
    type metadata accessor for FBSDisplayLayoutElement();
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v11 >> 62)
    {
LABEL_28:
      if (v11 < 0)
      {
        v27 = v11;
      }

      else
      {
        v27 = v11 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = MEMORY[0x253057520](v27);
      if (v12)
      {
LABEL_4:
        v13 = v12 - 1;
        if (__OFSUB__(v12, 1))
        {
          __break(1u);
        }

        else if ((v11 & 0xC000000000000001) == 0)
        {
          if ((v13 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_38;
          }

          v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (v13 >= v14)
          {
            __break(1u);
            return;
          }

LABEL_8:
          v15 = [v8 v9[135]];
          v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v5 = v8 & 0xFFFFFFFFFFFFFF8;
          if (!(v8 >> 62))
          {
            v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v31 = a4;
            if (v16)
            {
              goto LABEL_10;
            }

            goto LABEL_42;
          }

LABEL_38:
          if (v8 < 0)
          {
            v28 = v8;
          }

          else
          {
            v28 = v5;
          }

          v16 = MEMORY[0x253057520](v28);
          v31 = a4;
          if (v16)
          {
LABEL_10:
            v9 = 0;
            v17 = MEMORY[0x277D84F90];
            a4 = &unk_279699000;
            do
            {
              v11 = v9;
              while (1)
              {
                if ((v8 & 0xC000000000000001) != 0)
                {
                  v18 = MEMORY[0x2530574C0](v11, v8);
                }

                else
                {
                  if (v11 >= *(v5 + 16))
                  {
                    goto LABEL_27;
                  }

                  v18 = *(v8 + 8 * v11 + 32);
                }

                v19 = v18;
                v9 = (v11 + 1);
                if (__OFADD__(v11, 1))
                {
                  __break(1u);
LABEL_27:
                  __break(1u);
                  goto LABEL_28;
                }

                v20 = [v18 bundleIdentifier];
                if (v20)
                {
                  break;
                }

                ++v11;
                if (v9 == v16)
                {
                  goto LABEL_43;
                }
              }

              v30 = a5;
              v21 = v20;
              v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v29 = v23;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
              }

              v25 = *(v17 + 2);
              v24 = *(v17 + 3);
              if (v25 >= v24 >> 1)
              {
                v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v17);
              }

              *(v17 + 2) = v25 + 1;
              v26 = &v17[16 * v25];
              a5 = v30;
              *(v26 + 4) = v22;
              *(v26 + 5) = v29;
            }

            while (v9 != v16);
            goto LABEL_43;
          }

LABEL_42:
          v17 = MEMORY[0x277D84F90];
LABEL_43:

          swift_beginAccess();
          v31[2] = v17;

          OS_dispatch_semaphore.signal()();
          return;
        }

        MEMORY[0x2530574C0](v12 - 1, v11);
        swift_unknownObjectRelease();

        goto LABEL_8;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_4;
      }
    }
  }
}

uint64_t sub_24FDB9DA8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void thunk for @escaping @callee_guaranteed (@guaranteed FBSDisplayLayoutMonitor, @guaranteed FBSDisplayLayout?, @guaranteed FBSDisplayLayoutTransitionContext?) -> ()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type ForegroundAppDetector.DetectorError and conformance ForegroundAppDetector.DetectorError()
{
  result = lazy protocol witness table cache variable for type ForegroundAppDetector.DetectorError and conformance ForegroundAppDetector.DetectorError;
  if (!lazy protocol witness table cache variable for type ForegroundAppDetector.DetectorError and conformance ForegroundAppDetector.DetectorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForegroundAppDetector.DetectorError and conformance ForegroundAppDetector.DetectorError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForegroundAppDetector.DetectorError and conformance ForegroundAppDetector.DetectorError;
  if (!lazy protocol witness table cache variable for type ForegroundAppDetector.DetectorError and conformance ForegroundAppDetector.DetectorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForegroundAppDetector.DetectorError and conformance ForegroundAppDetector.DetectorError);
  }

  return result;
}

unint64_t type metadata accessor for FBSDisplayLayoutElement()
{
  result = lazy cache variable for type metadata for FBSDisplayLayoutElement;
  if (!lazy cache variable for type metadata for FBSDisplayLayoutElement)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FBSDisplayLayoutElement);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ForegroundAppDetector.DetectorError()
{
  Hasher.init(_seed:)();
  MEMORY[0x253057730](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ForegroundAppDetector.DetectorError(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x253057730](0);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for instance()
{
  v2 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  v3 = MEMORY[0x277D0D628];
  __swift_allocate_boxed_opaque_existential_1(&v1);
  static GenerativeAssistantFeatureFlagManager.instance.getter();
  return outlined init with take of TypedValueAsyncResolvable(&v1, &static DefaultPromptFactory.instance);
}

uint64_t static DefaultPromptFactory.instance.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of DefaultPromptFactory(&static DefaultPromptFactory.instance, v2);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DefaultPromptFactory.createPrompt(appBundleID:interactionMode:)(Swift::String_optional appBundleID, GenerativeAssistantActions::GATInteractionMode_optional interactionMode)
{
  v2 = *&interactionMode;
  object = appBundleID.value._object;
  countAndFlagsBits = appBundleID.value._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMd, &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  LOBYTE(v2) = *v2;
  v8 = type metadata accessor for DirectInvocationClientID();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v18 = v2;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v10 = DefaultPromptFactory.createPrompt(appBundleID:interactionMode:directInvocationClientId:sessionID:partnerInfo:isExplicitRequest:isFirstRequest:)(countAndFlagsBits, object, &v18, v7, 0, 0, v9, 0, 1);
  v12 = v11;
  outlined destroy of OnScreenContent.Document?(v16, &_s25GenerativeAssistantCommon31UserRequestPartnerInfoProviding_pSgMd, &_s25GenerativeAssistantCommon31UserRequestPartnerInfoProviding_pSgMR);
  outlined destroy of OnScreenContent.Document?(v7, &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMd, &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMR);
  v13 = v10;
  v14 = v12;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

unint64_t DefaultPromptFactory.createPrompt(appBundleID:interactionMode:directInvocationClientId:sessionID:partnerInfo:isExplicitRequest:isFirstRequest:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8, char a9)
{
  v11 = v10;
  v12 = v9;
  v79 = a8;
  v19 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v19 - 8);
  v83 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for URL();
  v84 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v85 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v82) = *a3;
  v80 = a1;
  v81 = a2;
  v23 = specialized static VisualIntelligenceUtils.isVisualIntelligenceCamera(appBundleID:)(a1, a2);
  v76 = a5;
  v77 = a4;
  if (v23)
  {
    v24 = 1;
  }

  else
  {
    v24 = specialized static VisualIntelligenceUtils.isVisualIntelligenceSession(sessionID:directInvocationClientID:)(a5, a6, a4);
  }

  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static Logger.modelInteraction);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  v29 = os_log_type_enabled(v27, v28);
  v78 = a6;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v75 = v12;
    v31 = v30;
    v32 = swift_slowAlloc();
    v74 = v26;
    v33 = v32;
    v86 = v32;
    *v31 = 136315650;
    a6 = v21;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1BB80, &v86);
    *(v31 + 12) = 2080;
    *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007ALL, 0x800000024FE21CC0, &v86);
    *(v31 + 22) = 2080;
    if (v24)
    {
      v34 = 0xD000000000000012;
    }

    else
    {
      v34 = 0x6D6574737973;
    }

    if (v24)
    {
      v35 = 0x800000024FE32F90;
    }

    else
    {
      v35 = 0xE600000000000000;
    }

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v86);
    v21 = a6;

    *(v31 + 24) = v36;
    v11 = v10;
    _os_log_impl(&dword_24FD67000, v27, v28, "%s.%s Prompt type used %s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v33, -1, -1);
    v37 = v31;
    v12 = v75;
    MEMORY[0x253057F40](v37, -1, -1);
  }

  DefaultPromptFactory.getOverridePath(from:)(v24 & 1);
  if (v38)
  {
    v39 = v85;
    URL.init(fileURLWithPath:)();

    static String.Encoding.utf8.getter();
    v40 = String.init(contentsOf:encoding:)();
    if (v11)
    {
      (*(v84 + 8))(v39, v21);
    }

    else
    {
      a6 = v40;
      v46 = v41;

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v86 = v81;
        *v49 = 136315650;
        *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1BB80, &v86);
        v82 = v21;
        *(v49 + 12) = 2080;
        *(v49 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007ALL, 0x800000024FE21CC0, &v86);
        *(v49 + 22) = 2080;

        v50 = specialized Collection.prefix(_:)(100, a6, v46);
        v83 = 0;
        v52 = v51;
        v54 = v53;
        v56 = v55;

        v57 = MEMORY[0x253056F50](v50, v52, v54, v56);
        v59 = v58;

        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v86);

        *(v49 + 24) = v60;
        _os_log_impl(&dword_24FD67000, v47, v48, "%s.%s Prompt loaded:  %s...", v49, 0x20u);
        v61 = v81;
        swift_arrayDestroy();
        MEMORY[0x253057F40](v61, -1, -1);
        MEMORY[0x253057F40](v49, -1, -1);

        (*(v84 + 8))(v85, v82);
      }

      else
      {

        (*(v84 + 8))(v39, v21);
      }
    }
  }

  else if (v24)
  {
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v86 = v45;
      *v44 = 136315394;
      *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1BB80, &v86);
      *(v44 + 12) = 2080;
      *(v44 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007ALL, 0x800000024FE21CC0, &v86);
      _os_log_impl(&dword_24FD67000, v42, v43, "%s.%s Using tamale prompt", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v45, -1, -1);
      MEMORY[0x253057F40](v44, -1, -1);
    }

    return 0x100000000000156BLL;
  }

  else
  {
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.info.getter();
    v64 = os_log_type_enabled(v62, v63);
    if (v82 > 1)
    {
      if (v64)
      {
        v69 = swift_slowAlloc();
        v70 = v12;
        v71 = swift_slowAlloc();
        v86 = v71;
        *v69 = 136315394;
        *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1BB80, &v86);
        *(v69 + 12) = 2080;
        *(v69 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007ALL, 0x800000024FE21CC0, &v86);
        _os_log_impl(&dword_24FD67000, v62, v63, "%s.%s Using default system prompt", v69, 0x16u);
        swift_arrayDestroy();
        v72 = v71;
        v12 = v70;
        MEMORY[0x253057F40](v72, -1, -1);
        MEMORY[0x253057F40](v69, -1, -1);
      }

      a6 = 0x10000000000015BDLL;
      if ((specialized static VisualIntelligenceUtils.isVisualIntelligenceCamera(appBundleID:)(v80, v81) & 1) == 0 && (specialized static VisualIntelligenceUtils.isVisualIntelligenceSession(sessionID:directInvocationClientID:)(v76, v78, v77) & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1(v12, v12[3]);
        if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isBoomerangEnabled.getter() & 1) != 0 && (v79 & 1) == 0 && (a9 & 1) == 0)
        {
          return 0x1000000000007858;
        }
      }
    }

    else
    {
      if (v64)
      {
        v65 = swift_slowAlloc();
        v66 = v12;
        v67 = swift_slowAlloc();
        v86 = v67;
        *v65 = 136315394;
        *(v65 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1BB80, &v86);
        *(v65 + 12) = 2080;
        *(v65 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007ALL, 0x800000024FE21CC0, &v86);
        _os_log_impl(&dword_24FD67000, v62, v63, "%s.%s Using voice-forward/voice-only prompt", v65, 0x16u);
        swift_arrayDestroy();
        v68 = v67;
        v12 = v66;
        MEMORY[0x253057F40](v68, -1, -1);
        MEMORY[0x253057F40](v65, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      if (dispatch thunk of GenerativeAssistantFeatureFlagManaging.isBoomerangEnabled.getter() & 1) == 0 || (v79)
      {
        return 0xD000000000001074;
      }

      else
      {
        return 0x10000000000073ACLL;
      }
    }
  }

  return a6;
}

uint64_t DefaultPromptFactory.getOverridePath(from:)(char a1)
{
  if (a1)
  {
    if (one-time initialization token for _tamaleAppDebugPromptOverridePath != -1)
    {
      swift_once();
    }

    if (byte_27F39FBB0)
    {
      v1 = *(&xmmword_27F39FB98 + 1);
      v2 = static Overrides._tamaleAppDebugPromptOverridePath;

      v1(&v31, v2);

      v3 = v32;
      if (v32)
      {
        v4 = v31;
        v5 = [objc_opt_self() defaultManager];
        v6 = v4;
        v7 = MEMORY[0x253056EA0](v4, v3);
        v8 = [v5 fileExistsAtPath_];

        if (v8)
        {
          if (one-time initialization token for modelInteraction != -1)
          {
            swift_once();
          }

          v9 = type metadata accessor for Logger();
          __swift_project_value_buffer(v9, static Logger.modelInteraction);
          v10 = Logger.logObject.getter();
          v11 = static os_log_type_t.info.getter();
          if (!os_log_type_enabled(v10, v11))
          {
            goto LABEL_27;
          }

          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v31 = v13;
          *v12 = 136315394;
          *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1BB80, &v31);
          *(v12 + 12) = 2080;
          *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE33080, &v31);
          v14 = "%s.%s Using AppDebugPath";
LABEL_26:
          _os_log_impl(&dword_24FD67000, v10, v11, v14, v12, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x253057F40](v13, -1, -1);
          MEMORY[0x253057F40](v12, -1, -1);
LABEL_27:

          return v6;
        }
      }
    }

    if (one-time initialization token for _tamalePromptOverridePath != -1)
    {
      swift_once();
    }

    if (byte_27F39FB80)
    {
      v18 = unk_27F39FB70;
      v19 = static Overrides._tamalePromptOverridePath;

      v18(&v31, v19);

      v20 = v32;
      if (v32)
      {
        v21 = v31;
        v22 = [objc_opt_self() defaultManager];
        v6 = v21;
        v23 = MEMORY[0x253056EA0](v21, v20);
        v24 = [v22 fileExistsAtPath_];

        if (v24)
        {
          if (one-time initialization token for modelInteraction != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for Logger();
          __swift_project_value_buffer(v25, static Logger.modelInteraction);
          v10 = Logger.logObject.getter();
          v11 = static os_log_type_t.info.getter();
          if (!os_log_type_enabled(v10, v11))
          {
            goto LABEL_27;
          }

          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v31 = v13;
          *v12 = 136315394;
          *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1BB80, &v31);
          *(v12 + 12) = 2080;
          *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE33080, &v31);
          v14 = "%s.%s Using PromptOverridePath";
          goto LABEL_26;
        }
      }
    }

    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.modelInteraction);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v29 = 136315394;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1BB80, &v31);
      *(v29 + 12) = 2080;
      *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE33080, &v31);
      _os_log_impl(&dword_24FD67000, v27, v28, "%s.%s Override path not available", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v30, -1, -1);
      MEMORY[0x253057F40](v29, -1, -1);
    }

    return 0;
  }

  else
  {
    if (one-time initialization token for _systemPromptOverridePath != -1)
    {
      swift_once();
    }

    if (byte_27F39FBE0 == 1)
    {
      v15 = unk_27F39FBD0;
      v16 = static Overrides._systemPromptOverridePath;

      v15(&v31, v16);

      return v31;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t DefaultPromptFactory.getTemplateID(appBundleID:interactionMode:directInvocationClientId:sessionID:isExplicitRequest:isFirstRequest:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7, char a8)
{
  v9 = v8;
  v15 = *a3;
  if (specialized static VisualIntelligenceUtils.isVisualIntelligenceCamera(appBundleID:)(a1, a2) & 1) != 0 || (specialized static VisualIntelligenceUtils.isVisualIntelligenceSession(sessionID:directInvocationClientID:)(a5, a6, a4))
  {
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.modelInteraction);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37[0] = v20;
      *v19 = 136315394;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1BB80, v37);
      *(v19 + 12) = 2080;
      *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE32FD0, v37);
      _os_log_impl(&dword_24FD67000, v17, v18, "%s.%s Using visual intelligence template", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v20, -1, -1);
      MEMORY[0x253057F40](v19, -1, -1);
    }

    else
    {
    }

    v21 = "siri.voiceForward.noRTI";
    v22 = 0xD00000000000001DLL;
  }

  else if (v15 > 1)
  {
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.modelInteraction);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v37[0] = v34;
      *v33 = 136315394;
      *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1BB80, v37);
      *(v33 + 12) = 2080;
      *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE32FD0, v37);
      _os_log_impl(&dword_24FD67000, v31, v32, "%s.%s Using default system template", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v34, -1, -1);
      MEMORY[0x253057F40](v33, -1, -1);
    }

    else
    {
    }

    v21 = "visualIntelligence";
    v22 = 0xD000000000000015;
  }

  else
  {
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.modelInteraction);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37[0] = v29;
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024FE1BB80, v37);
      *(v28 + 12) = 2080;
      *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006FLL, 0x800000024FE32FD0, v37);
      _os_log_impl(&dword_24FD67000, v26, v27, "%s.%s Using voice-forward/voice-only template", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v29, -1, -1);
      MEMORY[0x253057F40](v28, -1, -1);
    }

    else
    {
    }

    v21 = "xplicitRequest:isFirstRequest:)";
    v22 = 0xD000000000000017;
  }

  v23 = v21 | 0x8000000000000000;
  if ((specialized static VisualIntelligenceUtils.isVisualIntelligenceCamera(appBundleID:)(a1, a2) & 1) == 0 && (specialized static VisualIntelligenceUtils.isVisualIntelligenceSession(sessionID:directInvocationClientID:)(a5, a6, a4) & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isBoomerangEnabled.getter() & 1) != 0 && (a7 & 1) == 0 && (a8 & 1) == 0)
    {
      v37[0] = v22;
      v37[1] = v23;

      MEMORY[0x253056FE0](0x6172656D6F6F622ELL, 0xEA0000000000676ELL);

      return v37[0];
    }
  }

  return v22;
}

uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DefaultPromptFactory(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for DefaultPromptFactory(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t one-time initialization function for contextRetrieval()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.contextRetrieval);
  __swift_project_value_buffer(v0, static Logger.contextRetrieval);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for foregroundAppDetector()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.foregroundAppDetector);
  __swift_project_value_buffer(v0, static Logger.foregroundAppDetector);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for generativeResponse()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.generativeResponse);
  __swift_project_value_buffer(v0, static Logger.generativeResponse);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for genFromMediaController()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.genFromMediaController);
  __swift_project_value_buffer(v0, static Logger.genFromMediaController);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for genFromTextController()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.genFromTextController);
  __swift_project_value_buffer(v0, static Logger.genFromTextController);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for kgFallback()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.kgFallback);
  __swift_project_value_buffer(v0, static Logger.kgFallback);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for invocationContextUtils()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.invocationContextUtils);
  __swift_project_value_buffer(v0, static Logger.invocationContextUtils);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for richContentLoader()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.richContentLoader);
  __swift_project_value_buffer(v0, static Logger.richContentLoader);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for managedConfiguration()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.managedConfiguration);
  __swift_project_value_buffer(v0, static Logger.managedConfiguration);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for modelInteraction()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.modelInteraction);
  __swift_project_value_buffer(v0, static Logger.modelInteraction);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for visualIntelligenceUtils()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.visualIntelligenceUtils);
  __swift_project_value_buffer(v0, static Logger.visualIntelligenceUtils);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for textAssistantHandoff()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.textAssistantHandoff);
  __swift_project_value_buffer(v0, static Logger.textAssistantHandoff);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for confirmationUtils()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.confirmationUtils);
  __swift_project_value_buffer(v0, static Logger.confirmationUtils);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for signposter()
{
  v0 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v0, static Logger.signposter);
  __swift_project_value_buffer(v0, static Logger.signposter);
  return OSSignposter.init(subsystem:category:)();
}

uint64_t one-time initialization function for contentLoader(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.contentLoader.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t DummyEnum.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DummyEnum.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type DummyEnum and conformance DummyEnum()
{
  result = lazy protocol witness table cache variable for type DummyEnum and conformance DummyEnum;
  if (!lazy protocol witness table cache variable for type DummyEnum and conformance DummyEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DummyEnum and conformance DummyEnum);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DummyEnum()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DummyEnum(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DummyEnum@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance DummyEnum, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t GenerateTextController.init(featureFlagManager:attemptTextAssistantHandoff:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(a1, v10);
  v9[3] = &type metadata for DefaultModelSessionFactory;
  v9[4] = &protocol witness table for DefaultModelSessionFactory;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  *(a3 + 184) = &type metadata for TextAssistantHandoff;
  *(a3 + 192) = &protocol witness table for TextAssistantHandoff;
  v6 = swift_allocObject();
  *(a3 + 160) = v6;
  outlined init with copy of TextAssistantHandoff(&static TextAssistantHandoff.instance, v6 + 16);
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v10, a3);
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v9, a3 + 40);
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v10, a3 + 120);
  *(a3 + 104) = &type metadata for DefaultPromptFactory;
  *(a3 + 112) = &protocol witness table for DefaultPromptFactory;
  v7 = swift_allocObject();
  *(a3 + 80) = v7;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(a3 + 120, v7 + 16);
  __swift_destroy_boxed_opaque_existential_0(a1);
  __swift_destroy_boxed_opaque_existential_0(v10);
  result = __swift_destroy_boxed_opaque_existential_0(v9);
  *(a3 + 200) = a2 & 1;
  return result;
}

uint64_t sub_24FDBCFF4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_24FDBD090()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 344) = v23;
  *(v9 + 352) = v8;
  *(v9 + 328) = a7;
  *(v9 + 336) = a8;
  *(v9 + 600) = a6;
  *(v9 + 312) = a3;
  *(v9 + 320) = a4;
  *(v9 + 296) = a1;
  *(v9 + 304) = a2;
  v11 = type metadata accessor for GATError();
  *(v9 + 360) = v11;
  *(v9 + 368) = *(v11 - 8);
  *(v9 + 376) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  *(v9 + 384) = swift_task_alloc();
  v12 = type metadata accessor for ConfirmationActionName();
  *(v9 + 392) = v12;
  *(v9 + 400) = *(v12 - 8);
  *(v9 + 408) = swift_task_alloc();
  v13 = type metadata accessor for IntentDialog();
  *(v9 + 416) = v13;
  *(v9 + 424) = *(v13 - 8);
  *(v9 + 432) = swift_task_alloc();
  v14 = type metadata accessor for GenerativeAssistantSettingsIntentHelper.ResponseType();
  *(v9 + 440) = v14;
  *(v9 + 448) = *(v14 - 8);
  *(v9 + 456) = swift_task_alloc();
  v15 = *(a5 + 16);
  *(v9 + 152) = *a5;
  *(v9 + 168) = v15;
  *(v9 + 184) = *(a5 + 32);
  v16 = *(a5 + 40);
  *(v9 + 232) = *(a5 + 56);
  *(v9 + 248) = *(a5 + 72);
  v17 = *(a5 + 88);
  *(v9 + 464) = v16;
  *(v9 + 480) = v17;
  v18 = *(a5 + 120);
  *(v9 + 264) = *(a5 + 104);
  *(v9 + 280) = v18;
  type metadata accessor for MainActor();
  *(v9 + 496) = static MainActor.shared.getter();
  v20 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 504) = v20;
  *(v9 + 512) = v19;

  return MEMORY[0x2822009F8](GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:), v20, v19);
}

uint64_t GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:)()
{
  v79 = v0;
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 440);
  (*(v2 + 16))(v1, *(v0 + 344), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D0D788])
  {

    if (one-time initialization token for genFromTextController != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.genFromTextController);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v78[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v78);
      *(v8 + 12) = 2080;
      *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, v78);
      _os_log_impl(&dword_24FD67000, v6, v7, "%s.%s Fallback to SiriX.", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v9, -1, -1);
      MEMORY[0x253057F40](v8, -1, -1);
    }

    v11 = *(v0 + 368);
    v10 = *(v0 + 376);
    *v10 = 0xD000000000000043;
    v10[1] = 0x800000024FE1FF90;
    (*(v11 + 104))();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v12 = GATError.errorCode.getter();
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v12 <= 0x7FFFFFFF)
    {
      v14 = *(v0 + 368);
      v13 = *(v0 + 376);
      v15 = *(v0 + 360);
      SELFUtils.recordRequestFailed(code:domain:)(v12, 4);
      lazy protocol witness table accessor for type GenerativeAssistantUseCase and conformance GenerativeAssistantUseCase(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728], MEMORY[0x277D0D730]);
      swift_allocError();
      (*(v14 + 32))(v16, v13, v15);
      swift_willThrow();

      v17 = *(v0 + 8);
LABEL_59:

      return v17();
    }

    __break(1u);
    goto LABEL_69;
  }

  if (v4 == *MEMORY[0x277D0D798])
  {
    if (*(v0 + 600) != 1)
    {
      if (one-time initialization token for genFromTextController != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      *(v0 + 520) = __swift_project_value_buffer(v35, static Logger.genFromTextController);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v78[0] = v39;
        *v38 = 136315394;
        *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v78);
        *(v38 + 12) = 2080;
        *(v38 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, v78);
        _os_log_impl(&dword_24FD67000, v36, v37, "%s.%s Requesting confirmation", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v39, -1, -1);
        MEMORY[0x253057F40](v38, -1, -1);
      }

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v40 = *(v0 + 464);
      v41 = *(v0 + 424);
      v42 = *(v0 + 432);
      v43 = *(v0 + 416);
      v45 = *(v0 + 328);
      v44 = *(v0 + 336);
      *(v0 + 528) = static MetricsUtils.shared;
      MetricsUtils.recordSignpostBegin(for:)("WaitUserConfirmToContinue.Time", 30, 2);
      specialized static TipsDonationUtils.donateTipsSignal(tipSignal:)(0xD000000000000058, 0x800000024FE1F600);
      v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78[0] = v46;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v44, 0xD000000000000013, 0x800000024FE20070, isUniquelyReferenced_nonNull_native);
      v48 = v78[0];
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      LOBYTE(v78[0]) = 38;
      v49 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v48);

      v50.value._countAndFlagsBits = v45;
      v50.value._object = v44;
      DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v78, v50, v49);

      IntentDialog.init(stringLiteral:)();
      *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOA2eA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOA2eA0C6DialogVGMR);
      *(v0 + 224) = lazy protocol witness table accessor for type IntentResultContainer<Never, Never, Never, IntentDialog> and conformance IntentResultContainer<A, B, C, D>();
      __swift_allocate_boxed_opaque_existential_1((v0 + 192));
      static IntentResult.result<>(dialog:)();
      (*(v41 + 8))(v42, v43);
      static ConfirmationButtonActionUtils.getTextConfirmationButtonActions(partnerName:)(v45, v44);
      v76 = (v40 + *v40);
      v51 = swift_task_alloc();
      *(v0 + 536) = v51;
      *v51 = v0;
      v51[1] = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
      v52 = *(v0 + 408);

      return v76(v0 + 192, v52, 1);
    }

    if (one-time initialization token for genFromTextController == -1)
    {
LABEL_14:
      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.genFromTextController);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v78[0] = v22;
        *v21 = 136315394;
        *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v78);
        *(v21 + 12) = 2080;
        *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, v78);
        v23 = "%s.%s Skipping confirmation: All knowledge confirmation prompts are presented in SiriX.";
LABEL_40:
        _os_log_impl(&dword_24FD67000, v19, v20, v23, v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v22, -1, -1);
        MEMORY[0x253057F40](v21, -1, -1);
        goto LABEL_41;
      }

      goto LABEL_41;
    }

LABEL_69:
    swift_once();
    goto LABEL_14;
  }

  if (v4 == *MEMORY[0x277D0D790])
  {
    if (one-time initialization token for genFromTextController != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.genFromTextController);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_24FD67000, v25, v26, "Enablement prompt is needed. Checking if this is a remote request...", v27, 2u);
      MEMORY[0x253057F40](v27, -1, -1);
    }

    v28 = *(v0 + 600);

    if (v28 == 1 && *(*(v0 + 320) + 40) != 1)
    {
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v78[0] = v74;
        *v73 = 136315394;
        *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v78);
        *(v73 + 12) = 2080;
        *(v73 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, v78);
        _os_log_impl(&dword_24FD67000, v71, v72, "%s.%s User Confirmed Showing JIT Enablement.", v73, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v74, -1, -1);
        MEMORY[0x253057F40](v73, -1, -1);
      }

      v77 = (*(v0 + 480) + **(v0 + 480));
      v75 = swift_task_alloc();
      *(v0 + 568) = v75;
      *v75 = v0;
      v75[1] = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);

      return v77();
    }

    else
    {
      v29 = *(v0 + 168);
      *(v0 + 16) = *(v0 + 152);
      *(v0 + 32) = v29;
      v30 = *(v0 + 480);
      *(v0 + 56) = *(v0 + 464);
      *(v0 + 72) = *(v0 + 232);
      *(v0 + 88) = *(v0 + 248);
      *(v0 + 104) = v30;
      v31 = *(v0 + 264);
      *(v0 + 136) = *(v0 + 280);
      *(v0 + 48) = *(v0 + 184);
      *(v0 + 120) = v31;
      v32 = swift_task_alloc();
      *(v0 + 552) = v32;
      *v32 = v0;
      v32[1] = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
      v33 = *(v0 + 320);

      return GenerateTextController.surfaceJITEnablementSheet(requestMetadata:intentCallbackManager:)(v33, v0 + 16);
    }
  }

  if (v4 != *MEMORY[0x277D0D780])
  {
    if (one-time initialization token for genFromTextController != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Logger.genFromTextController);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v78[0] = v58;
      *v57 = 136315394;
      *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v78);
      *(v57 + 12) = 2080;
      *(v57 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, v78);
      _os_log_impl(&dword_24FD67000, v55, v56, "%s.%s Unkown Default when checking for confirmation vs enablement vs SiriX", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v58, -1, -1);
      MEMORY[0x253057F40](v57, -1, -1);
    }

    (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));
    goto LABEL_47;
  }

  if (one-time initialization token for genFromTextController != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, static Logger.genFromTextController);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v78[0] = v22;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v78);
    *(v21 + 12) = 2080;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, v78);
    v23 = "%s.%s Skipping confirmation: explicit invocation or user set skip confirmation or previously communicated with GMS in this session";
    goto LABEL_40;
  }

LABEL_41:

LABEL_47:
  v59 = *(v0 + 352);
  if (*(v59 + 200) != 1)
  {

    v63 = *(v0 + 320);
    if (*(v63 + *(type metadata accessor for GenerativeRequestMetadata(0) + 52) + 8))
    {
      static SessionPersistenceUtils.setConfirmation(forTextSession:)();
    }

    else
    {
      if (one-time initialization token for genFromTextController != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      __swift_project_value_buffer(v64, static Logger.genFromTextController);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v78[0] = v68;
        *v67 = 136315394;
        *(v67 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v78);
        *(v67 + 12) = 2080;
        *(v67 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, v78);
        _os_log_impl(&dword_24FD67000, v65, v66, "%s.%s Attempting to save the current sessionID but found nil", v67, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v68, -1, -1);
        MEMORY[0x253057F40](v67, -1, -1);
      }
    }

    v69 = *(v0 + 296);
    v70 = type metadata accessor for GeneratedResponse(0);
    (*(*(v70 - 8) + 56))(v69, 1, 1, v70);

    v17 = *(v0 + 8);
    goto LABEL_59;
  }

  __swift_project_boxed_opaque_existential_1((v59 + 160), *(v59 + 184));
  v60 = swift_task_alloc();
  *(v0 + 584) = v60;
  *v60 = v0;
  v60[1] = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
  v62 = *(v0 + 304);
  v61 = *(v0 + 312);

  return TextAssistantHandoff.attemptHandoff(userQuery:)(v62, v61);
}

{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
  }

  else
  {
    v2 = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  (*(v0[50] + 8))(v0[51], v0[49]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  v1 = v0[63];
  v2 = v0[64];

  return MEMORY[0x2822009F8](GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:), v1, v2);
}

{
  (*(v0[50] + 8))(v0[51], v0[49]);
  v1 = v0[63];
  v2 = v0[64];

  return MEMORY[0x2822009F8](GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:), v1, v2);
}

{
  v15 = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  MetricsUtils.emitSignpostEvent(_:)("Event.UserCancelled", 19, 2);
  specialized static TipsDonationUtils.donateTipsSignal(tipSignal:)(0xD000000000000058, 0x800000024FE1F660);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  SELFUtils.recordRequestCanceled()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v14 = v4;
    *v3 = 136315394;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, &v14);
    *(v3 + 12) = 2080;
    *(v3 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, &v14);
    _os_log_impl(&dword_24FD67000, v1, v2, "%s.%s User cancelled", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v4, -1, -1);
    MEMORY[0x253057F40](v3, -1, -1);
  }

  v5 = v0[68];
  v6 = v0[41];
  v7 = v0[42];
  v8 = v0[37];
  v13 = 21;
  static GeneratedResponse.failureResponse(_:partnerName:)(&v13, v6, v7, v8);

  v9 = v0[37];
  v10 = type metadata accessor for GeneratedResponse(0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);

  v11 = v0[1];

  return v11();
}

{
  v2 = *v1;
  *(*v1 + 560) = v0;

  v3 = *(v2 + 504);
  v4 = *(v2 + 512);
  if (v0)
  {
    v5 = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
  }

  else
  {
    v5 = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  v16 = v0;
  v1 = v0[44];
  if (*(v1 + 200) == 1)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 160), *(v1 + 184));
    v2 = swift_task_alloc();
    v0[73] = v2;
    *v2 = v0;
    v2[1] = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
    v4 = v0[38];
    v3 = v0[39];

    return TextAssistantHandoff.attemptHandoff(userQuery:)(v4, v3);
  }

  else
  {

    v6 = v0[40];
    if (*(v6 + *(type metadata accessor for GenerativeRequestMetadata(0) + 52) + 8))
    {
      static SessionPersistenceUtils.setConfirmation(forTextSession:)();
    }

    else
    {
      if (one-time initialization token for genFromTextController != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.genFromTextController);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v15 = v11;
        *v10 = 136315394;
        *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, &v15);
        *(v10 + 12) = 2080;
        *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, &v15);
        _os_log_impl(&dword_24FD67000, v8, v9, "%s.%s Attempting to save the current sessionID but found nil", v10, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v11, -1, -1);
        MEMORY[0x253057F40](v10, -1, -1);
      }
    }

    v12 = v0[37];
    v13 = type metadata accessor for GeneratedResponse(0);
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

    v14 = v0[1];

    return v14();
  }
}

{
  v2 = *v1;
  *(*v1 + 576) = v0;

  v3 = *(v2 + 512);
  v4 = *(v2 + 504);
  if (v0)
  {
    v5 = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
  }

  else
  {
    v5 = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v17 = v0;
  v1 = *(v0 + 601);

  if (v1 == 1)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 328);
    v2 = *(v0 + 336);
    v4 = *(v0 + 296);
    SELFUtils.recordRequestHandoff()();
    static GeneratedResponse.dismissSiriUIResponse(partnerName:)(v3, v2, v4);
    v5 = 0;
  }

  else
  {
    v6 = *(v0 + 320);
    if (*(v6 + *(type metadata accessor for GenerativeRequestMetadata(0) + 52) + 8))
    {
      static SessionPersistenceUtils.setConfirmation(forTextSession:)();
    }

    else
    {
      if (one-time initialization token for genFromTextController != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.genFromTextController);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v16 = v11;
        *v10 = 136315394;
        *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, &v16);
        *(v10 + 12) = 2080;
        *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, &v16);
        _os_log_impl(&dword_24FD67000, v8, v9, "%s.%s Attempting to save the current sessionID but found nil", v10, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v11, -1, -1);
        MEMORY[0x253057F40](v10, -1, -1);
      }
    }

    v5 = 1;
  }

  v12 = *(v0 + 296);
  v13 = type metadata accessor for GeneratedResponse(0);
  (*(*(v13 - 8) + 56))(v12, v5, 1, v13);

  v14 = *(v0 + 8);

  return v14();
}

{
  v22 = v0;

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  MetricsUtils.emitSignpostEvent(_:)("Error.TextAssistantHandoffError", 31, 2);
  if (one-time initialization token for genFromTextController != -1)
  {
    swift_once();
  }

  v1 = v0[74];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.genFromTextController);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[74];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24FD67000, v4, v5, "Error handing off to Text Assistant: %@", v8, 0xCu);
    outlined destroy of OnScreenContent.Document?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x253057F40](v9, -1, -1);
    MEMORY[0x253057F40](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[40];
  if (*(v12 + *(type metadata accessor for GenerativeRequestMetadata(0) + 52) + 8))
  {
    static SessionPersistenceUtils.setConfirmation(forTextSession:)();
  }

  else
  {
    if (one-time initialization token for genFromTextController != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, static Logger.genFromTextController);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315394;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, &v21);
      *(v15 + 12) = 2080;
      *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, &v21);
      _os_log_impl(&dword_24FD67000, v13, v14, "%s.%s Attempting to save the current sessionID but found nil", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v16, -1, -1);
      MEMORY[0x253057F40](v15, -1, -1);
    }
  }

  v17 = v0[37];
  v18 = type metadata accessor for GeneratedResponse(0);
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);

  v19 = v0[1];

  return v19();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:)(uint64_t a1)
{
  v23 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22 = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, &v22);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, &v22);
    _os_log_impl(&dword_24FD67000, v2, v3, "%s.%s User confirmed", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v5, -1, -1);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  v6 = v1[48];
  v7 = type metadata accessor for OSSignpostID();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("WaitUserConfirmToContinue.Time", 30, 2u, v6);
  outlined destroy of OnScreenContent.Document?(v6, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  if ((MEMORY[0x253056490]() & 1) == 0)
  {
    static GenerativeAssistantSettingsUserDefaults.logConfirmationCount()();
  }

  v8 = v1[44];
  if (*(v8 + 200) == 1)
  {
    __swift_project_boxed_opaque_existential_1((v8 + 160), *(v8 + 184));
    v9 = swift_task_alloc();
    v1[73] = v9;
    *v9 = v1;
    v9[1] = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
    v11 = v1[38];
    v10 = v1[39];

    return TextAssistantHandoff.attemptHandoff(userQuery:)(v11, v10);
  }

  else
  {

    v13 = v1[40];
    if (*(v13 + *(type metadata accessor for GenerativeRequestMetadata(0) + 52) + 8))
    {
      static SessionPersistenceUtils.setConfirmation(forTextSession:)();
    }

    else
    {
      if (one-time initialization token for genFromTextController != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.genFromTextController);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v22 = v18;
        *v17 = 136315394;
        *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, &v22);
        *(v17 + 12) = 2080;
        *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x800000024FE332B0, &v22);
        _os_log_impl(&dword_24FD67000, v15, v16, "%s.%s Attempting to save the current sessionID but found nil", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v18, -1, -1);
        MEMORY[0x253057F40](v17, -1, -1);
      }
    }

    v19 = v1[37];
    v20 = type metadata accessor for GeneratedResponse(0);
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);

    v21 = v1[1];

    return v21();
  }
}

uint64_t GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:)(char a1)
{
  v4 = *v2;
  *(*v2 + 592) = v1;

  if (v1)
  {
    v5 = *(v4 + 504);
    v6 = *(v4 + 512);
    v7 = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
  }

  else
  {
    *(v4 + 601) = a1 & 1;
    v5 = *(v4 + 504);
    v6 = *(v4 + 512);
    v7 = GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:);
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t GenerateTextController.surfaceJITEnablementSheet(requestMetadata:intentCallbackManager:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  v4 = type metadata accessor for ConfirmationActionName();
  *(v2 + 64) = v4;
  *(v2 + 72) = *(v4 - 8);
  *(v2 + 80) = swift_task_alloc();
  v5 = type metadata accessor for IntentDialog();
  *(v2 + 88) = v5;
  *(v2 + 96) = *(v5 - 8);
  *(v2 + 104) = swift_task_alloc();
  v6 = type metadata accessor for RequestType();
  *(v2 + 112) = v6;
  *(v2 + 120) = *(v6 - 8);
  *(v2 + 128) = swift_task_alloc();
  v7 = type metadata accessor for Date();
  *(v2 + 136) = v7;
  *(v2 + 144) = *(v7 - 8);
  *(v2 + 152) = swift_task_alloc();
  v8 = *(a2 + 88);
  *(v2 + 160) = *(a2 + 40);
  *(v2 + 176) = v8;
  type metadata accessor for MainActor();
  *(v2 + 192) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 200) = v10;
  *(v2 + 208) = v9;

  return MEMORY[0x2822009F8](GenerateTextController.surfaceJITEnablementSheet(requestMetadata:intentCallbackManager:), v10, v9);
}

uint64_t GenerateTextController.surfaceJITEnablementSheet(requestMetadata:intentCallbackManager:)()
{
  v26 = v0;
  if (one-time initialization token for genFromTextController != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 216) = __swift_project_value_buffer(v1, static Logger.genFromTextController);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v25 = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, &v25);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000041, 0x800000024FE33320, &v25);
    _os_log_impl(&dword_24FD67000, v2, v3, "%s.%s Confirming JIT enablement", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v5, -1, -1);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  v6 = *(v0 + 56);
  *(v0 + 224) = type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  static GenerativeAssistantSettingsUserDefaults.declineComposeViaSiriExpiration()();
  v7 = *(v6 + 40);
  *(v0 + 264) = v7;
  if (v7)
  {
    v8 = 32;
  }

  else
  {
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v11 = *(v0 + 112);
    (*(v10 + 104))(v9, *MEMORY[0x277D0D7B8], v11);
    MEMORY[0x253056460](v9);
    (*(v10 + 8))(v9, v11);
    v8 = 33;
  }

  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 160);
  v13 = *(v0 + 96);
  v14 = *(v0 + 104);
  v15 = *(v0 + 88);
  v16 = static Disclaimer.partnerName;

  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v17;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16.value._countAndFlagsBits, v16.value._object, 0xD000000000000013, 0x800000024FE20070, isUniquelyReferenced_nonNull_native);
  v19 = v25;
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v25) = v8;
  v20 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v19);

  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v25, v16, v20);

  IntentDialog.init(stringLiteral:)();

  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOA2eA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOA2eA0C6DialogVGMR);
  *(v0 + 48) = lazy protocol witness table accessor for type IntentResultContainer<Never, Never, Never, IntentDialog> and conformance IntentResultContainer<A, B, C, D>();
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  static IntentResult.result<>(dialog:)();
  (*(v13 + 8))(v14, v15);
  static ConfirmationButtonActionUtils.getJITEnablementButtonActions()();
  v24 = (v12 + *v12);
  v21 = swift_task_alloc();
  *(v0 + 232) = v21;
  *v21 = v0;
  v21[1] = GenerateTextController.surfaceJITEnablementSheet(requestMetadata:intentCallbackManager:);
  v22 = *(v0 + 80);

  return v24(v0 + 16, v22, 1);
}

{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:);
  }

  else
  {
    v2 = GenerateTextController.surfaceJITEnablementSheet(requestMetadata:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  (*(v0[9] + 8))(v0[10], v0[8]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[25];
  v2 = v0[26];

  return MEMORY[0x2822009F8](GenerateTextController.surfaceJITEnablementSheet(requestMetadata:intentCallbackManager:), v1, v2);
}

uint64_t GenerateTextController.surfaceJITEnablementSheet(requestMetadata:intentCallbackManager:)(uint64_t a1)
{
  v13 = v1;
  if ((*(v1 + 264) & 1) == 0)
  {
    v3 = *(v1 + 120);
    v2 = *(v1 + 128);
    v4 = *(v1 + 112);
    (*(v3 + 104))(v2, *MEMORY[0x277D0D7B8], v4);
    static GenerativeAssistantSettingsUserDefaults.decrementDecline(for:expirationDate:)();
    (*(v3 + 8))(v2, v4);
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, &v12);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000041, 0x800000024FE33320, &v12);
    _os_log_impl(&dword_24FD67000, v5, v6, "%s.%s User Confirmed Showing JIT Enablement.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v8, -1, -1);
    MEMORY[0x253057F40](v7, -1, -1);
  }

  v11 = (*(v1 + 176) + **(v1 + 176));
  v9 = swift_task_alloc();
  *(v1 + 248) = v9;
  *v9 = v1;
  v9[1] = GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:);

  return v11();
}

uint64_t GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 856) = v5;
  *(v6 + 848) = a4;
  *(v6 + 840) = a3;
  *(v6 + 832) = a2;
  *(v6 + 824) = a1;
  v8 = type metadata accessor for GATError();
  *(v6 + 864) = v8;
  *(v6 + 872) = *(v8 - 8);
  *(v6 + 880) = swift_task_alloc();
  *(v6 + 888) = swift_task_alloc();
  v9 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  *(v6 + 896) = v9;
  *(v6 + 904) = *(v9 - 8);
  *(v6 + 912) = swift_task_alloc();
  *(v6 + 920) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  *(v6 + 928) = v10;
  *(v6 + 936) = *(v10 - 8);
  *(v6 + 944) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  *(v6 + 952) = swift_task_alloc();
  *(v6 + 960) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v6 + 968) = swift_task_alloc();
  v11 = type metadata accessor for SessionPersistenceUtils.SessionStoredValues();
  *(v6 + 976) = v11;
  *(v6 + 984) = *(v11 - 8);
  *(v6 + 992) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
  *(v6 + 1000) = swift_task_alloc();
  *(v6 + 1008) = type metadata accessor for ModelResponse(0);
  *(v6 + 1016) = swift_task_alloc();
  *(v6 + 1024) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  *(v6 + 1032) = swift_task_alloc();
  v12 = type metadata accessor for GeneratedResponse(0);
  *(v6 + 1040) = v12;
  *(v6 + 1048) = *(v12 - 8);
  *(v6 + 1056) = swift_task_alloc();
  *(v6 + 1064) = swift_task_alloc();
  v13 = type metadata accessor for GenerativeAssistantSettingsIntentHelper.ResponseType();
  *(v6 + 1072) = v13;
  *(v6 + 1080) = *(v13 - 8);
  *(v6 + 1088) = swift_task_alloc();
  *(v6 + 1096) = type metadata accessor for GenerativeRequestMetadata(0);
  *(v6 + 1104) = swift_task_alloc();
  *(v6 + 1112) = swift_task_alloc();
  v14 = type metadata accessor for GenerativeAssistantSettingsIntentHelper.RequestType();
  *(v6 + 1120) = v14;
  *(v6 + 1128) = *(v14 - 8);
  *(v6 + 1136) = swift_task_alloc();
  v15 = type metadata accessor for GenerativeAssistantUseCase();
  *(v6 + 1144) = v15;
  *(v6 + 1152) = *(v15 - 8);
  *(v6 + 1160) = swift_task_alloc();
  *(v6 + 1168) = swift_task_alloc();
  *(v6 + 1176) = swift_task_alloc();
  *(v6 + 1184) = swift_task_alloc();
  v16 = *(a5 + 104);
  *(v6 + 384) = *(a5 + 96);
  v17 = *(a5 + 80);
  *(v6 + 352) = *(a5 + 64);
  *(v6 + 368) = v17;
  v18 = *(a5 + 16);
  *(v6 + 288) = *a5;
  *(v6 + 304) = v18;
  v19 = *(a5 + 48);
  *(v6 + 320) = *(a5 + 32);
  *(v6 + 336) = v19;
  *(v6 + 1192) = v16;
  *(v6 + 1200) = *(a5 + 112);
  *(v6 + 672) = *(a5 + 120);
  type metadata accessor for MainActor();
  *(v6 + 1208) = static MainActor.shared.getter();
  v21 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 1216) = v21;
  *(v6 + 1224) = v20;

  return MEMORY[0x2822009F8](GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:), v21, v20);
}

uint64_t GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:)()
{
  v1 = *(v0 + 1184);
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1144);
  *(v0 + 580) = *(*(v0 + 1096) + 32);
  v4 = *(v2 + 104);
  v4(v1, *MEMORY[0x277D0D658], v3);
  lazy protocol witness table accessor for type GenerativeAssistantUseCase and conformance GenerativeAssistantUseCase(&lazy protocol witness table cache variable for type GenerativeAssistantUseCase and conformance GenerativeAssistantUseCase, MEMORY[0x277D0D660], MEMORY[0x277D0D668]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (*(v0 + 688) == *(v0 + 704) && *(v0 + 696) == *(v0 + 712))
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v6 = *(v0 + 1184);
  v7 = *(v0 + 1152);
  v8 = *(v0 + 1144);
  v9 = *(v7 + 8);
  *(v0 + 1232) = v9;
  *(v0 + 1240) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v8);

  v41 = v4;
  if (v5)
  {
    v10 = 1;
  }

  else
  {
    v4(*(v0 + 1176), *MEMORY[0x277D0D640], *(v0 + 1144));
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (*(v0 + 720) == *(v0 + 736) && *(v0 + 728) == *(v0 + 744))
    {
      v10 = 1;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v9(*(v0 + 1176), *(v0 + 1144));
  }

  v43 = v10;
  *(v0 + 577) = v10 & 1;
  v41(*(v0 + 1168), *MEMORY[0x277D0D648], *(v0 + 1144));
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v11 = *(v0 + 1168);
  v12 = *(v0 + 1144);
  if (*(v0 + 752) == *(v0 + 768) && *(v0 + 760) == *(v0 + 776))
  {
    v9(*(v0 + 1168), *(v0 + 1144));

LABEL_16:
    (*(*(v0 + 1128) + 104))(*(v0 + 1136), *MEMORY[0x277D0D770], *(v0 + 1120));
    goto LABEL_21;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v9(v11, v12);

  if (v13)
  {
    goto LABEL_16;
  }

  if (v43)
  {
    v14 = MEMORY[0x277D0D768];
  }

  else
  {
    v14 = MEMORY[0x277D0D760];
  }

  (*(*(v0 + 1128) + 104))(*(v0 + 1136), *v14, *(v0 + 1120));
LABEL_21:
  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v15 = static Disclaimer.partnerName;
  *(v0 + 1248) = static Disclaimer.partnerName;
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();

  v16 = static GenerativeAssistantSettingsUserDefaults.isEnabled()();
  if (one-time initialization token for genFromTextController != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 1112);
  v18 = *(v0 + 848);
  v19 = type metadata accessor for Logger();
  *(v0 + 1264) = __swift_project_value_buffer(v19, static Logger.genFromTextController);
  outlined init with copy of GenerativeRequestMetadata(v18, v17, type metadata accessor for GenerativeRequestMetadata);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 1112);
  if (v22)
  {
    v40 = *(v0 + 840);
    v42 = v16;
    v24 = *(v0 + 832);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v45 = v26;
    *v25 = 136316418;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, &v45);
    *(v25 + 12) = 2080;
    *(v25 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, &v45);
    *(v25 + 22) = 2080;
    *(v25 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v40, &v45);
    *(v25 + 32) = 1024;
    LODWORD(v24) = *(v23 + 40);
    outlined destroy of GenerativeRequestMetadata(v23, type metadata accessor for GenerativeRequestMetadata);
    *(v25 + 34) = v24;
    *(v25 + 38) = 2080;
    *(v25 + 40) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, *(&v15 + 1), &v45);
    *(v25 + 48) = 1024;
    *(v25 + 50) = v42 & 1;
    _os_log_impl(&dword_24FD67000, v20, v21, "%s.%s [userQuery = %s] [isExplicitRequest: %{BOOL}d] [partner: %s] [isPartnerEnabled: %{BOOL}d", v25, 0x36u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v26, -1, -1);
    MEMORY[0x253057F40](v25, -1, -1);
  }

  else
  {
    outlined destroy of GenerativeRequestMetadata(*(v0 + 1112), type metadata accessor for GenerativeRequestMetadata);
  }

  v27 = *(v0 + 1200);
  v28 = *(v0 + 1192);
  v29 = (*(v0 + 848) + *(*(v0 + 1096) + 52));
  *(v0 + 1272) = *v29;
  *(v0 + 1280) = v29[1];
  static GenerativeAssistantSettingsIntentHelper.responseType(for:isExplicitRequest:sessionId:)();
  v30 = *(v0 + 368);
  *(v0 + 80) = *(v0 + 352);
  *(v0 + 96) = v30;
  v31 = *(v0 + 384);
  v32 = *(v0 + 304);
  *(v0 + 16) = *(v0 + 288);
  *(v0 + 32) = v32;
  v33 = *(v0 + 336);
  *(v0 + 48) = *(v0 + 320);
  *(v0 + 64) = v33;
  *(v0 + 112) = v31;
  *(v0 + 120) = v28;
  *(v0 + 128) = v27;
  *(v0 + 136) = *(v0 + 672);
  v34 = swift_task_alloc();
  *(v0 + 1288) = v34;
  *v34 = v0;
  v34[1] = GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  v35 = *(v0 + 1032);
  v36 = *(v0 + 848);
  v37 = *(v0 + 840);
  v38 = *(v0 + 832);

  return GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:)(v35, v38, v37, v36, v0 + 16, v43 & 1, v15, *(&v15 + 1));
}

{
  v2 = *v1;
  *(*v1 + 1296) = v0;

  if (v0)
  {

    v3 = *(v2 + 1224);
    v4 = *(v2 + 1216);
    v5 = GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  else
  {
    v3 = *(v2 + 1224);
    v4 = *(v2 + 1216);
    v5 = GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v56 = v0;
  v1 = *(v0 + 1032);
  if ((*(*(v0 + 1048) + 48))(v1, 1, *(v0 + 1040)) == 1)
  {
    v2 = *(v0 + 1200);
    v3 = *(v0 + 1192);
    v4 = *(v0 + 1104);
    v5 = *(v0 + 848);
    outlined destroy of OnScreenContent.Document?(v1, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    v6 = *(v0 + 368);
    v47[4] = *(v0 + 352);
    v47[5] = v6;
    v7 = *(v0 + 384);
    v8 = *(v0 + 304);
    v47[0] = *(v0 + 288);
    v47[1] = v8;
    v9 = *(v0 + 336);
    v47[2] = *(v0 + 320);
    v47[3] = v9;
    v48 = v7;
    v49 = v3;
    v50 = v2;
    v51 = *(v0 + 672);
    v52 = v3;
    v53 = v2;
    v54 = 0;
    v55 = 3;
    swift_bridgeObjectRetain_n();
    IntentCallbackManager.updateIntentProgress(to:)(&v52);
    outlined consume of GenerativeAssistantProgressLevel(v52, v53, v54, v55);
    outlined init with copy of GenerativeRequestMetadata(v5, v4, type metadata accessor for GenerativeRequestMetadata);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 1104);
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v47[0] = v15;
      *v14 = 136315650;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v47);
      *(v14 + 12) = 2080;
      *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v47);
      *(v14 + 22) = 2080;
      v16 = GenerativeAssistantUseCase.rawValue.getter();
      v18 = v17;
      outlined destroy of GenerativeRequestMetadata(v13, type metadata accessor for GenerativeRequestMetadata);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v47);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_24FD67000, v10, v11, "%s.%s Calling model orchestrator with use case %s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v15, -1, -1);
      MEMORY[0x253057F40](v14, -1, -1);
    }

    else
    {

      outlined destroy of GenerativeRequestMetadata(v13, type metadata accessor for GenerativeRequestMetadata);
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v29 = static SELFUtils.shared + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
    swift_beginAccess();
    v30 = *v29;
    v31 = v29[4];
    *v29 = 4;
    v29[4] = 0;
    if ((v31 & 1) == 0 && v30 == 6)
    {
      *v29 = 6;
    }

    v32 = *(v0 + 1200);
    v33 = *(v0 + 1192);
    v34 = *(v0 + 1000);
    v35 = type metadata accessor for UploadableMedia(0);
    (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
    v36 = *(v0 + 320);
    *(v0 + 200) = *(v0 + 336);
    v37 = *(v0 + 368);
    *(v0 + 216) = *(v0 + 352);
    *(v0 + 232) = v37;
    v38 = *(v0 + 304);
    *(v0 + 152) = *(v0 + 288);
    *(v0 + 168) = v38;
    v39 = *(v0 + 384);
    *(v0 + 184) = v36;
    *(v0 + 248) = v39;
    *(v0 + 256) = v33;
    *(v0 + 264) = v32;
    *(v0 + 272) = *(v0 + 672);
    v40 = swift_task_alloc();
    *(v0 + 1304) = v40;
    *v40 = v0;
    v40[1] = GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
    v41 = *(v0 + 577);
    v42 = *(v0 + 1024);
    v43 = *(v0 + 1000);
    v44 = *(v0 + 848);
    v45 = *(v0 + 840);
    v46 = *(v0 + 832);
    v58 = 0;

    return ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(v42, v46, v45, v44, v43, v0 + 152, v41, 0);
  }

  else
  {
    v20 = *(v0 + 1136);
    v21 = *(v0 + 1128);
    v22 = *(v0 + 1120);
    v23 = *(v0 + 1088);
    v24 = *(v0 + 1080);
    v25 = *(v0 + 1072);
    v26 = *(v0 + 1064);
    v59 = *(v0 + 824);

    (*(v24 + 8))(v23, v25);
    (*(v21 + 8))(v20, v22);
    _s26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOWObTm_0(v1, v26, type metadata accessor for GeneratedResponse);
    _s26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOWObTm_0(v26, v59, type metadata accessor for GeneratedResponse);
    v59 = *(v0 + 880);

    v27 = *(v0 + 8);

    return v27();
  }
}

{
  v2 = *v1;
  (*v1)[164] = v0;

  if (v0)
  {
    v3 = v2[125];

    outlined destroy of OnScreenContent.Document?(v3, &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    v4 = v2[153];
    v5 = v2[152];
    v6 = GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  else
  {
    outlined destroy of OnScreenContent.Document?(v2[125], &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    v4 = v2[153];
    v5 = v2[152];
    v6 = GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v124 = v0;
  v1 = *(v0 + 1280);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);

  v4 = *(v0 + 368);
  v115[4] = *(v0 + 352);
  v115[5] = v4;
  v5 = *(v0 + 384);
  v6 = *(v0 + 304);
  v115[0] = *(v0 + 288);
  v115[1] = v6;
  v7 = *(v0 + 336);
  v115[2] = *(v0 + 320);
  v115[3] = v7;
  v116 = v5;
  v117 = v3;
  v118 = v2;
  v119 = *(v0 + 672);
  v120 = v3;
  v121 = v2;
  v122 = 0;
  v123 = 4;
  IntentCallbackManager.updateIntentProgress(to:)(&v120);
  outlined consume of GenerativeAssistantProgressLevel(v120, v121, v122, v123);
  if (v1)
  {
    v8 = *(v0 + 992);
    v9 = *(v0 + 984);
    v10 = *(v0 + 976);
    static SessionPersistenceUtils.storedValuesForSession(sessionId:)();
    v11 = SessionPersistenceUtils.SessionStoredValues.visualIntelligenceImageData.getter();
    v97 = v12;
    v99 = v11;
    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v97 = 0xF000000000000000;
    v99 = 0;
  }

  v103 = *(v0 + 1256);
  partnerName = *(v0 + 1248);
  v13 = *(v0 + 580);
  v14 = *(v0 + 1160);
  v15 = *(v0 + 1152);
  v16 = *(v0 + 1144);
  v95 = *(v0 + 1096);
  v17 = *(v0 + 1056);
  v18 = *(v0 + 1040);
  v19 = *(v0 + 1016);
  v20 = *(v0 + 1008);
  partnerName_8 = *(v0 + 968);
  v21 = *(v0 + 848);
  outlined init with copy of GenerativeRequestMetadata(*(v0 + 1024), v19, type metadata accessor for ModelResponse);
  v101 = *(v21 + 41);
  (*(v15 + 16))(v14, v21 + v13, v16);
  v93 = *(v21 + *(v95 + 48));
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v115[0]) = 44;

  v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v23.value._countAndFlagsBits = partnerName;
  v23.value._object = v103;
  v24 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v115, v23, v22);

  *(v0 + 392) = 100;
  *(v0 + 400) = xmmword_24FE1BD10;
  *(v0 + 416) = v24;
  *(v0 + 432) = partnerName;
  *(v0 + 440) = v103;
  outlined init with copy of DialogConfig(v0 + 392, v0 + 448);

  LOBYTE(v115[0]) = v101;
  v94 = ModelResponse.dialog(mode:useCaseID:config:isFirstRequest:)(v115, v14, v0 + 392, v93);
  outlined destroy of DialogConfig(v0 + 392);
  v25 = (v19 + v20[14]);
  v87 = *v25;
  v81 = v25[1];
  v82 = v19[4];
  v102 = *v19;
  v26 = MEMORY[0x277D84F90];
  if (*(v19 + v20[9]))
  {
    v26 = *(v19 + v20[9]);
  }

  v86 = v26;
  outlined init with copy of URL?(v19 + v20[8], partnerName_8);
  v92 = v19[1];
  v90 = *(v19 + v20[10]);
  v91 = *(v19 + v20[11]);
  v27 = (v19 + v20[12]);
  v28 = *v27;
  v83 = v19[2];
  v84 = v27[1];
  v29 = (v19 + v20[13]);
  v88 = v28;
  v89 = *v29;
  v85 = v29[1];
  *(v0 + 528) = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  *(v0 + 536) = MEMORY[0x277D0D628];
  __swift_allocate_boxed_opaque_existential_1((v0 + 504));

  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v30 = (v17 + v18[14]);
  swift_initStaticObject();
  LOBYTE(v115[0]) = 49;
  v31 = MEMORY[0x277D84F90];
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v33 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v115, 0, v32);

  *v30 = v33;
  *v17 = v87;
  *(v17 + 8) = v81;
  *(v17 + 16) = v102;
  *(v17 + 24) = v94;
  *(v17 + 32) = 64;
  *(v17 + 40) = v82;
  *(v17 + 48) = v31;
  *(v17 + v18[15]) = v86;
  *(v17 + v18[12]) = 0;
  v34 = (v17 + v18[13]);
  *v34 = partnerName;
  v34[1] = v103;
  outlined init with copy of URL?(partnerName_8, v17 + v18[10]);
  v35 = (v17 + v18[11]);
  *v35 = v92;
  v35[1] = v83;
  *(v17 + v18[16]) = v90;
  *(v17 + v18[17]) = v91;
  v36 = (v17 + v18[18]);
  *v36 = v88;
  v36[1] = v84;
  v37 = (v17 + v18[19]);
  *v37 = v89;
  v37[1] = v85;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 504, v17 + v18[21]);
  v38 = (v17 + v18[20]);
  *v38 = v99;
  v38[1] = v97;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
LABEL_21:
    v64 = *(v0 + 1232);
    v65 = *(v0 + 1160);
    v66 = *(v0 + 1144);
    v67 = *(v0 + 1128);
    partnerNameb = *(v0 + 1120);
    partnerName_8b = *(v0 + 1136);
    v105 = *(v0 + 1088);
    v68 = *(v0 + 1080);
    v69 = *(v0 + 1072);
    v70 = *(v0 + 1024);
    v71 = *(v0 + 1016);
    outlined destroy of OnScreenContent.Document?(*(v0 + 968), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v64(v65, v66);
    outlined destroy of GenerativeRequestMetadata(v71, type metadata accessor for ModelResponse);
    outlined destroy of GenerativeRequestMetadata(v70, type metadata accessor for ModelResponse);
    (*(v68 + 8))(v105, v69);
    (*(v67 + 8))(partnerName_8b, partnerNameb);
LABEL_23:
    v79 = *(v0 + 1056);
    outlined init with copy of GenerativeRequestMetadata(v79, *(v0 + 824), type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0((v0 + 504));
    outlined destroy of GenerativeRequestMetadata(v79, type metadata accessor for GeneratedResponse);

    v80 = *(v0 + 8);

    return v80();
  }

  v39 = *(v0 + 1056);
  v40 = *(v0 + 936);
  v41 = *(v0 + 928);
  v104 = *(v0 + 912);
  partnerName_8a = *(v0 + 904);
  v42._countAndFlagsBits = v87;
  v42._object = v81;
  v43 = GeneratedResponse.updateText(_:)(v42);

  *v39 = v43._countAndFlagsBits;
  v96 = v17;
  *(v17 + 8) = v43._object;
  v44 = v102[2];
  v45 = (v40 + 56);
  v46 = (v40 + 48);

  v48 = 0;
  partnerNamea = v102;
  while (v48 == v44)
  {
    v49 = 1;
    v48 = v44;
LABEL_12:
    v54 = *(v0 + 960);
    v55 = *(v0 + 952);
    v56 = *(v0 + 928);
    (*v45)(v55, v49, 1, v56);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v55, v54, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v46)(v54, 1, v56) == 1)
    {
      v72 = *(v0 + 1232);
      v73 = *(v0 + 1160);
      v74 = *(v0 + 1144);
      v75 = *(v0 + 1128);
      partnerNamec = *(v0 + 1120);
      partnerName_8c = *(v0 + 1136);
      v106 = *(v0 + 1088);
      v76 = *(v0 + 1080);
      v98 = *(v0 + 1024);
      v100 = *(v0 + 1072);
      v77 = *(v0 + 1016);
      v78 = *(v0 + 968);

      outlined destroy of OnScreenContent.Document?(v78, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v72(v73, v74);
      outlined destroy of GenerativeRequestMetadata(v77, type metadata accessor for ModelResponse);
      outlined destroy of GenerativeRequestMetadata(v98, type metadata accessor for ModelResponse);
      (*(v76 + 8))(v106, v100);
      (*(v75 + 8))(partnerName_8c, partnerNamec);
      goto LABEL_23;
    }

    v57 = *(v0 + 960);
    v58 = *v57;
    _s26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOWObTm_0(v57 + *(v41 + 48), *(v0 + 920), type metadata accessor for GeneratedResponse.RichContentEntity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v60 = *(v0 + 920);
    if (EnumCaseMultiPayload)
    {
      result = outlined destroy of GenerativeRequestMetadata(v60, type metadata accessor for GeneratedResponse.RichContentEntity);
    }

    else
    {
      v61 = *(v0 + 912);
      outlined destroy of GenerativeRequestMetadata(v60, type metadata accessor for GeneratedResponse.RichContentEntity);
      *v61 = v43._countAndFlagsBits;
      *(v104 + 8) = v43._object;
      swift_storeEnumTagMultiPayload();

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v62 = partnerNamea;
        if ((v58 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(partnerNamea);
        v62 = result;
        if ((v58 & 0x8000000000000000) != 0)
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      if (v58 >= *(v62 + 16))
      {
        goto LABEL_27;
      }

      v63 = v62;
      result = outlined assign with take of GeneratedResponse.RichContentEntity(*(v0 + 912), v62 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v58);
      partnerNamea = v63;
      *(v96 + 16) = v63;
    }
  }

  if (v48 < v102[2])
  {
    v50 = *(v0 + 952);
    v51 = *(v0 + 944);
    v52 = v102 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v48;
    v53 = *(v41 + 48);
    *v51 = v48;
    outlined init with copy of GenerativeRequestMetadata(v52, v51 + v53, type metadata accessor for GeneratedResponse.RichContentEntity);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v51, v50, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v49 = 0;
    ++v48;
    goto LABEL_12;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

{
  v1 = v0[142];
  v2 = v0[141];
  v3 = v0[140];
  v4 = v0[136];
  v5 = v0[135];
  v6 = v0[134];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

{
  v89 = v0;
  v1 = *(v0 + 1312);

  *(v0 + 784) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 1312);
  if (v3)
  {
    v5 = *(v0 + 1256);
    v6 = *(v0 + 1248);
    v7 = *(v0 + 888);
    v8 = *(v0 + 880);
    v9 = *(v0 + 872);
    v10 = *(v0 + 864);
    v11 = *(v0 + 824);

    (*(v9 + 32))(v8, v7, v10);
    specialized GenerateController.handleGATError(_:_:)(v8, v6, v5, v11);
    v86 = *(v0 + 1136);
    v12 = *(v0 + 1128);
    v13 = *(v0 + 1120);
    v14 = *(v0 + 1088);
    v15 = *(v0 + 1080);
    v16 = *(v0 + 1072);
    v17 = *(v0 + 880);
    v18 = *(v0 + 872);
    v19 = *(v0 + 864);

    (*(v18 + 8))(v17, v19);
    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v86, v13);
    v54 = (v0 + 784);
LABEL_8:

    v55 = *(v0 + 8);
    goto LABEL_15;
  }

  v54 = (v0 + 792);

  *(v0 + 792) = v4;
  v20 = v4;
  v21 = swift_dynamicCast();
  v22 = *(v0 + 1312);
  if (v21)
  {
    v23 = *(v0 + 1256);
    v24 = *(v0 + 1248);
    v25 = *(v0 + 824);

    v26 = *(v0 + 600);
    *(v0 + 544) = *(v0 + 584);
    *(v0 + 560) = v26;
    *(v0 + 576) = *(v0 + 616);
    specialized GenerateController.handleModelOrchestratorError(error:partnerName:)((v0 + 544), v24, v23, v25);
    v27 = *(v0 + 1136);
    v28 = *(v0 + 1128);
    v29 = *(v0 + 1120);
    v30 = *(v0 + 1088);
    v31 = *(v0 + 1080);
    v32 = *(v0 + 1072);
    outlined destroy of ModelOrchestrator.Error(v0 + 544);

    (*(v31 + 8))(v30, v32);
    (*(v28 + 8))(v27, v29);
    goto LABEL_8;
  }

  v33 = (v0 + 800);

  *(v0 + 800) = v22;
  v34 = v22;
  v35 = type metadata accessor for CustomErrorWithLocalizedDescription();
  v36 = swift_dynamicCast();
  v37 = *(v0 + 1312);
  if (v36)
  {

    v38 = *(v0 + 808);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    v84 = v40;
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 1136);
    v43 = *(v0 + 1128);
    v44 = *(v0 + 1120);
    v45 = *(v0 + 1088);
    v46 = *(v0 + 1080);
    v47 = *(v0 + 1072);
    if (v41)
    {
      v82 = *(v0 + 1072);
      v48 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v88[0] = v77;
      *v48 = 136315650;
      v80 = v42;
      *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v88);
      v78 = v44;
      *(v48 + 12) = 2080;
      *(v48 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v88);
      *(v48 + 22) = 2080;
      v49 = [v38 localizedDescription];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v45;
      v52 = v51;

      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v88);

      *(v48 + 24) = v53;
      _os_log_impl(&dword_24FD67000, v39, v84, "%s.%s [CustomErrorWithLocalizedDescription = %s]", v48, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v77, -1, -1);
      MEMORY[0x253057F40](v48, -1, -1);

      swift_willThrow();
      (*(v46 + 8))(v76, v82);
      (*(v43 + 8))(v80, v78);
    }

    else
    {

      swift_willThrow();
      (*(v46 + 8))(v45, v47);
      (*(v43 + 8))(v42, v44);
    }
  }

  else
  {
    v87 = v35;

    v56 = v37;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v88[0] = v60;
      *v59 = 136315650;
      *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v88);
      *(v59 + 12) = 2080;
      *(v59 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v88);
      *(v59 + 22) = 2080;
      swift_getErrorValue();
      v61 = Error.localizedDescription.getter();
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v88);

      *(v59 + 24) = v63;
      _os_log_impl(&dword_24FD67000, v57, v58, "%s.%s [error = %s]", v59, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v60, -1, -1);
      MEMORY[0x253057F40](v59, -1, -1);
    }

    v64 = *(v0 + 1312);
    v65 = *(v0 + 1256);
    v66 = *(v0 + 1248);
    v67 = *(v0 + 1128);
    v83 = *(v0 + 1120);
    v85 = *(v0 + 1136);
    v68 = *(v0 + 1080);
    v79 = *(v0 + 1072);
    v81 = *(v0 + 1088);
    v69 = _convertErrorToNSError(_:)();
    v70 = [v69 domain];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = _convertErrorToNSError(_:)();
    [v71 code];

    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v88[0]) = 5;
    v72 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v73.value._countAndFlagsBits = v66;
    v73.value._object = v65;
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v88, v73, v72);

    v74 = objc_allocWithZone(v87);
    CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
    swift_willThrow();

    (*(v68 + 8))(v81, v79);
    (*(v67 + 8))(v85, v83);
  }

  v55 = *(v0 + 8);
LABEL_15:

  return v55();
}

uint64_t GenerateTextController.generateRichContentWithStreamWrapper(userQuery:requestMetadata:intentCallbackManager:partnerStreamWrapper:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 864) = v6;
  *(v7 + 856) = a6;
  *(v7 + 848) = a4;
  *(v7 + 840) = a3;
  *(v7 + 832) = a2;
  *(v7 + 824) = a1;
  v9 = type metadata accessor for GATError();
  *(v7 + 872) = v9;
  *(v7 + 880) = *(v9 - 8);
  *(v7 + 888) = swift_task_alloc();
  *(v7 + 896) = swift_task_alloc();
  v10 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  *(v7 + 904) = v10;
  *(v7 + 912) = *(v10 - 8);
  *(v7 + 920) = swift_task_alloc();
  *(v7 + 928) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  *(v7 + 936) = v11;
  *(v7 + 944) = *(v11 - 8);
  *(v7 + 952) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  *(v7 + 960) = swift_task_alloc();
  *(v7 + 968) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v7 + 976) = swift_task_alloc();
  v12 = type metadata accessor for SessionPersistenceUtils.SessionStoredValues();
  *(v7 + 984) = v12;
  *(v7 + 992) = *(v12 - 8);
  *(v7 + 1000) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
  *(v7 + 1008) = swift_task_alloc();
  *(v7 + 1016) = type metadata accessor for ModelResponse(0);
  *(v7 + 1024) = swift_task_alloc();
  *(v7 + 1032) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  *(v7 + 1040) = swift_task_alloc();
  v13 = type metadata accessor for GeneratedResponse(0);
  *(v7 + 1048) = v13;
  *(v7 + 1056) = *(v13 - 8);
  *(v7 + 1064) = swift_task_alloc();
  *(v7 + 1072) = swift_task_alloc();
  v14 = type metadata accessor for GenerativeAssistantSettingsIntentHelper.ResponseType();
  *(v7 + 1080) = v14;
  *(v7 + 1088) = *(v14 - 8);
  *(v7 + 1096) = swift_task_alloc();
  *(v7 + 1104) = type metadata accessor for GenerativeRequestMetadata(0);
  *(v7 + 1112) = swift_task_alloc();
  *(v7 + 1120) = swift_task_alloc();
  v15 = type metadata accessor for GenerativeAssistantSettingsIntentHelper.RequestType();
  *(v7 + 1128) = v15;
  *(v7 + 1136) = *(v15 - 8);
  *(v7 + 1144) = swift_task_alloc();
  v16 = type metadata accessor for GenerativeAssistantUseCase();
  *(v7 + 1152) = v16;
  *(v7 + 1160) = *(v16 - 8);
  *(v7 + 1168) = swift_task_alloc();
  *(v7 + 1176) = swift_task_alloc();
  *(v7 + 1184) = swift_task_alloc();
  *(v7 + 1192) = swift_task_alloc();
  v17 = *(a5 + 104);
  *(v7 + 384) = *(a5 + 96);
  v18 = *(a5 + 80);
  *(v7 + 352) = *(a5 + 64);
  *(v7 + 368) = v18;
  v19 = *(a5 + 16);
  *(v7 + 288) = *a5;
  *(v7 + 304) = v19;
  v20 = *(a5 + 48);
  *(v7 + 320) = *(a5 + 32);
  *(v7 + 336) = v20;
  *(v7 + 1200) = v17;
  *(v7 + 1208) = *(a5 + 112);
  *(v7 + 672) = *(a5 + 120);
  type metadata accessor for MainActor();
  *(v7 + 1216) = static MainActor.shared.getter();
  v22 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 1224) = v22;
  *(v7 + 1232) = v21;

  return MEMORY[0x2822009F8](GenerateTextController.generateRichContentWithStreamWrapper(userQuery:requestMetadata:intentCallbackManager:partnerStreamWrapper:), v22, v21);
}

uint64_t GenerateTextController.generateRichContentWithStreamWrapper(userQuery:requestMetadata:intentCallbackManager:partnerStreamWrapper:)()
{
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 1152);
  *(v0 + 580) = *(*(v0 + 1104) + 32);
  v4 = *(v2 + 104);
  v4(v1, *MEMORY[0x277D0D658], v3);
  lazy protocol witness table accessor for type GenerativeAssistantUseCase and conformance GenerativeAssistantUseCase(&lazy protocol witness table cache variable for type GenerativeAssistantUseCase and conformance GenerativeAssistantUseCase, MEMORY[0x277D0D660], MEMORY[0x277D0D668]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (*(v0 + 688) == *(v0 + 704) && *(v0 + 696) == *(v0 + 712))
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v6 = *(v0 + 1192);
  v7 = *(v0 + 1160);
  v8 = *(v0 + 1152);
  v9 = *(v7 + 8);
  *(v0 + 1240) = v9;
  *(v0 + 1248) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v8);

  v41 = v4;
  if (v5)
  {
    v10 = 1;
  }

  else
  {
    v4(*(v0 + 1184), *MEMORY[0x277D0D640], *(v0 + 1152));
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (*(v0 + 720) == *(v0 + 736) && *(v0 + 728) == *(v0 + 744))
    {
      v10 = 1;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v9(*(v0 + 1184), *(v0 + 1152));
  }

  v43 = v10;
  *(v0 + 577) = v10 & 1;
  v41(*(v0 + 1176), *MEMORY[0x277D0D648], *(v0 + 1152));
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v11 = *(v0 + 1176);
  v12 = *(v0 + 1152);
  if (*(v0 + 752) == *(v0 + 768) && *(v0 + 760) == *(v0 + 776))
  {
    v9(*(v0 + 1176), *(v0 + 1152));

LABEL_16:
    (*(*(v0 + 1136) + 104))(*(v0 + 1144), *MEMORY[0x277D0D770], *(v0 + 1128));
    goto LABEL_21;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v9(v11, v12);

  if (v13)
  {
    goto LABEL_16;
  }

  if (v43)
  {
    v14 = MEMORY[0x277D0D768];
  }

  else
  {
    v14 = MEMORY[0x277D0D760];
  }

  (*(*(v0 + 1136) + 104))(*(v0 + 1144), *v14, *(v0 + 1128));
LABEL_21:
  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v15 = static Disclaimer.partnerName;
  *(v0 + 1256) = static Disclaimer.partnerName;
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();

  v16 = static GenerativeAssistantSettingsUserDefaults.isEnabled()();
  if (one-time initialization token for genFromTextController != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 1120);
  v18 = *(v0 + 848);
  v19 = type metadata accessor for Logger();
  *(v0 + 1272) = __swift_project_value_buffer(v19, static Logger.genFromTextController);
  outlined init with copy of GenerativeRequestMetadata(v18, v17, type metadata accessor for GenerativeRequestMetadata);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 1120);
  if (v22)
  {
    v40 = *(v0 + 840);
    v42 = v16;
    v24 = *(v0 + 832);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v45 = v26;
    *v25 = 136316418;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, &v45);
    *(v25 + 12) = 2080;
    *(v25 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006BLL, 0x800000024FE33240, &v45);
    *(v25 + 22) = 2080;
    *(v25 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v40, &v45);
    *(v25 + 32) = 1024;
    LODWORD(v24) = *(v23 + 40);
    outlined destroy of GenerativeRequestMetadata(v23, type metadata accessor for GenerativeRequestMetadata);
    *(v25 + 34) = v24;
    *(v25 + 38) = 2080;
    *(v25 + 40) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, *(&v15 + 1), &v45);
    *(v25 + 48) = 1024;
    *(v25 + 50) = v42 & 1;
    _os_log_impl(&dword_24FD67000, v20, v21, "%s.%s [userQuery = %s] [isExplicitRequest: %{BOOL}d] [partner: %s] [isPartnerEnabled: %{BOOL}d", v25, 0x36u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v26, -1, -1);
    MEMORY[0x253057F40](v25, -1, -1);
  }

  else
  {
    outlined destroy of GenerativeRequestMetadata(*(v0 + 1120), type metadata accessor for GenerativeRequestMetadata);
  }

  v27 = *(v0 + 1208);
  v28 = *(v0 + 1200);
  v29 = (*(v0 + 848) + *(*(v0 + 1104) + 52));
  *(v0 + 1280) = *v29;
  *(v0 + 1288) = v29[1];
  static GenerativeAssistantSettingsIntentHelper.responseType(for:isExplicitRequest:sessionId:)();
  v30 = *(v0 + 368);
  *(v0 + 80) = *(v0 + 352);
  *(v0 + 96) = v30;
  v31 = *(v0 + 384);
  v32 = *(v0 + 304);
  *(v0 + 16) = *(v0 + 288);
  *(v0 + 32) = v32;
  v33 = *(v0 + 336);
  *(v0 + 48) = *(v0 + 320);
  *(v0 + 64) = v33;
  *(v0 + 112) = v31;
  *(v0 + 120) = v28;
  *(v0 + 128) = v27;
  *(v0 + 136) = *(v0 + 672);
  v34 = swift_task_alloc();
  *(v0 + 1296) = v34;
  *v34 = v0;
  v34[1] = GenerateTextController.generateRichContentWithStreamWrapper(userQuery:requestMetadata:intentCallbackManager:partnerStreamWrapper:);
  v35 = *(v0 + 1040);
  v36 = *(v0 + 848);
  v37 = *(v0 + 840);
  v38 = *(v0 + 832);

  return GenerateTextController.performPreGenerateTasks(userQuery:requestMetadata:intentCallbackManager:isKnowledge:partnerName:responseType:)(v35, v38, v37, v36, v0 + 16, v43 & 1, v15, *(&v15 + 1));
}

{
  v2 = *v1;
  *(*v1 + 1304) = v0;

  if (v0)
  {

    v3 = *(v2 + 1232);
    v4 = *(v2 + 1224);
    v5 = GenerateTextController.generateRichContentWithStreamWrapper(userQuery:requestMetadata:intentCallbackManager:partnerStreamWrapper:);
  }

  else
  {
    v3 = *(v2 + 1232);
    v4 = *(v2 + 1224);
    v5 = GenerateTextController.generateRichContentWithStreamWrapper(userQuery:requestMetadata:intentCallbackManager:partnerStreamWrapper:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v58 = v0;
  v1 = *(v0 + 1040);
  if ((*(*(v0 + 1056) + 48))(v1, 1, *(v0 + 1048)) == 1)
  {
    v2 = *(v0 + 1208);
    v3 = *(v0 + 1200);
    v4 = *(v0 + 1112);
    v5 = *(v0 + 848);
    outlined destroy of OnScreenContent.Document?(v1, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    v6 = *(v0 + 368);
    v49[4] = *(v0 + 352);
    v49[5] = v6;
    v7 = *(v0 + 384);
    v8 = *(v0 + 304);
    v49[0] = *(v0 + 288);
    v49[1] = v8;
    v9 = *(v0 + 336);
    v49[2] = *(v0 + 320);
    v49[3] = v9;
    v50 = v7;
    v51 = v3;
    v52 = v2;
    v53 = *(v0 + 672);
    v54 = v3;
    v55 = v2;
    v56 = 0;
    v57 = 3;

    IntentCallbackManager.updateIntentProgress(to:)(&v54);
    outlined consume of GenerativeAssistantProgressLevel(v54, v55, v56, v57);
    outlined init with copy of GenerativeRequestMetadata(v5, v4, type metadata accessor for GenerativeRequestMetadata);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 1112);
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v49[0] = v15;
      *v14 = 136315650;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v49);
      *(v14 + 12) = 2080;
      *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006BLL, 0x800000024FE33240, v49);
      *(v14 + 22) = 2080;
      v16 = GenerativeAssistantUseCase.rawValue.getter();
      v18 = v17;
      outlined destroy of GenerativeRequestMetadata(v13, type metadata accessor for GenerativeRequestMetadata);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v49);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_24FD67000, v10, v11, "%s.%s Calling model orchestrator with use case %s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v15, -1, -1);
      MEMORY[0x253057F40](v14, -1, -1);
    }

    else
    {

      outlined destroy of GenerativeRequestMetadata(v13, type metadata accessor for GenerativeRequestMetadata);
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v29 = static SELFUtils.shared + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
    swift_beginAccess();
    v30 = *v29;
    v31 = v29[4];
    *v29 = 4;
    v29[4] = 0;
    if ((v31 & 1) == 0 && v30 == 6)
    {
      *v29 = 6;
    }

    v32 = *(v0 + 1208);
    v33 = *(v0 + 1200);
    v34 = *(v0 + 1008);
    v35 = type metadata accessor for UploadableMedia(0);
    (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
    v36 = *(v0 + 320);
    *(v0 + 200) = *(v0 + 336);
    v37 = *(v0 + 368);
    *(v0 + 216) = *(v0 + 352);
    *(v0 + 232) = v37;
    v38 = *(v0 + 304);
    *(v0 + 152) = *(v0 + 288);
    *(v0 + 168) = v38;
    v39 = *(v0 + 384);
    *(v0 + 184) = v36;
    *(v0 + 248) = v39;
    *(v0 + 256) = v33;
    *(v0 + 264) = v32;
    *(v0 + 272) = *(v0 + 672);
    v40 = swift_task_alloc();
    *(v0 + 1312) = v40;
    *v40 = v0;
    v40[1] = GenerateTextController.generateRichContentWithStreamWrapper(userQuery:requestMetadata:intentCallbackManager:partnerStreamWrapper:);
    v41 = *(v0 + 577);
    v42 = *(v0 + 1032);
    v43 = *(v0 + 1008);
    v44 = *(v0 + 856);
    v45 = *(v0 + 848);
    v46 = *(v0 + 840);
    v47 = *(v0 + 832);
    v60 = 0;
    v61 = v44;

    return ModelOrchestrator.generateWithStreamWrapper(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:partnerStreamWrapper:)(v42, v47, v46, v45, v43, v0 + 152, v41, 0);
  }

  else
  {
    v20 = *(v0 + 1144);
    v21 = *(v0 + 1136);
    v22 = *(v0 + 1128);
    v23 = *(v0 + 1096);
    v24 = *(v0 + 1088);
    v25 = *(v0 + 1080);
    v26 = *(v0 + 1072);
    v48 = *(v0 + 824);

    (*(v24 + 8))(v23, v25);
    (*(v21 + 8))(v20, v22);
    _s26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOWObTm_0(v1, v26, type metadata accessor for GeneratedResponse);
    _s26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOWObTm_0(v26, v48, type metadata accessor for GeneratedResponse);

    v27 = *(v0 + 8);

    return v27();
  }
}

{
  v2 = *v1;
  (*v1)[165] = v0;

  outlined destroy of OnScreenContent.Document?(v2[126], &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
  v3 = v2[154];
  v4 = v2[153];
  if (v0)
  {
    v5 = GenerateTextController.generateRichContentWithStreamWrapper(userQuery:requestMetadata:intentCallbackManager:partnerStreamWrapper:);
  }

  else
  {
    v5 = GenerateTextController.generateRichContentWithStreamWrapper(userQuery:requestMetadata:intentCallbackManager:partnerStreamWrapper:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v126 = v0;
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1264);
  v3 = *(v0 + 1256);
  v4 = *(v0 + 1208);
  v5 = *(v0 + 1200);

  v6 = *(v0 + 368);
  v117[4] = *(v0 + 352);
  v117[5] = v6;
  v7 = *(v0 + 384);
  v8 = *(v0 + 304);
  v117[0] = *(v0 + 288);
  v117[1] = v8;
  v9 = *(v0 + 336);
  v117[2] = *(v0 + 320);
  v117[3] = v9;
  v118 = v7;
  v119 = v5;
  v120 = v4;
  v121 = *(v0 + 672);
  v122 = v3;
  v123 = v2;
  v124 = 0;
  v125 = 4;
  partnerName = v2;

  IntentCallbackManager.updateIntentProgress(to:)(&v122);
  outlined consume of GenerativeAssistantProgressLevel(v122, v123, v124, v125);
  if (v1)
  {
    v10 = *(v0 + 1000);
    v11 = *(v0 + 992);
    v12 = *(v0 + 984);
    static SessionPersistenceUtils.storedValuesForSession(sessionId:)();
    v13 = SessionPersistenceUtils.SessionStoredValues.visualIntelligenceImageData.getter();
    v100 = v14;
    v101 = v13;
    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v100 = 0xF000000000000000;
    v101 = 0;
  }

  v105 = *(v0 + 1264);
  v109 = *(v0 + 1256);
  v15 = *(v0 + 580);
  v16 = *(v0 + 1168);
  v17 = *(v0 + 1160);
  v18 = *(v0 + 1152);
  v19 = *(v0 + 1104);
  v103 = *(v0 + 1064);
  v20 = *(v0 + 1048);
  v21 = *(v0 + 1024);
  v22 = *(v0 + 1016);
  v113 = *(v0 + 976);
  v23 = *(v0 + 848);
  outlined init with copy of GenerativeRequestMetadata(*(v0 + 1032), v21, type metadata accessor for ModelResponse);
  v97 = *(v23 + 41);
  (*(v17 + 16))(v16, v23 + v15, v18);
  v94 = *(v23 + *(v19 + 48));
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v117[0]) = 44;

  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v25.value._countAndFlagsBits = v109;
  v25.value._object = partnerName;
  v26 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v117, v25, v24);

  *(v0 + 392) = 100;
  *(v0 + 400) = xmmword_24FE1BD10;
  *(v0 + 416) = v26;
  *(v0 + 432) = v109;
  *(v0 + 440) = partnerName;
  outlined init with copy of DialogConfig(v0 + 392, v0 + 448);

  LOBYTE(v117[0]) = v97;
  v98 = ModelResponse.dialog(mode:useCaseID:config:isFirstRequest:)(v117, v16, v0 + 392, v94);
  outlined destroy of DialogConfig(v0 + 392);
  v86 = v21[4];
  v27 = (v21 + v22[14]);
  v28 = v27[1];
  v89 = *v27;
  v29 = *v21;
  v30 = MEMORY[0x277D84F90];
  if (*(v21 + v22[9]))
  {
    v30 = *(v21 + v22[9]);
  }

  v90 = v30;
  outlined init with copy of URL?(v21 + v22[8], v113);
  v96 = v21[1];
  v93 = *(v21 + v22[10]);
  v95 = *(v21 + v22[11]);
  v31 = (v21 + v22[12]);
  v32 = *v31;
  v33 = v31[1];
  v34 = (v21 + v22[13]);
  v91 = v32;
  v92 = *v34;
  v87 = v21[2];
  v88 = v34[1];
  *(v0 + 528) = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  *(v0 + 536) = MEMORY[0x277D0D628];
  __swift_allocate_boxed_opaque_existential_1((v0 + 504));

  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v35 = (v103 + v20[14]);
  swift_initStaticObject();
  LOBYTE(v117[0]) = 49;
  v36 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v37 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v117, 0, v36);

  *v35 = v37;
  v38 = v29;
  *v103 = v89;
  *(v103 + 8) = v28;
  *(v103 + 16) = v29;
  *(v103 + 24) = v98;
  *(v103 + 32) = 64;
  *(v103 + 40) = v86;
  *(v103 + 48) = MEMORY[0x277D84F90];
  *(v103 + v20[15]) = v90;
  *(v103 + v20[12]) = 0;
  v39 = (v103 + v20[13]);
  *v39 = v109;
  v39[1] = v105;
  outlined init with copy of URL?(v113, v103 + v20[10]);
  v40 = (v103 + v20[11]);
  *v40 = v96;
  v40[1] = v87;
  *(v103 + v20[16]) = v93;
  *(v103 + v20[17]) = v95;
  v41 = (v103 + v20[18]);
  *v41 = v91;
  v41[1] = v33;
  v42 = (v103 + v20[19]);
  *v42 = v92;
  v42[1] = v88;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 504, v103 + v20[21]);
  v43 = (v103 + v20[20]);
  *v43 = v101;
  v43[1] = v100;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
LABEL_21:
    v69 = *(v0 + 1240);
    v70 = *(v0 + 1168);
    v71 = *(v0 + 1152);
    v72 = *(v0 + 1136);
    v111 = *(v0 + 1128);
    v115 = *(v0 + 1144);
    v107 = *(v0 + 1096);
    v73 = *(v0 + 1088);
    v74 = *(v0 + 1080);
    v75 = *(v0 + 1032);
    v76 = *(v0 + 1024);
    outlined destroy of OnScreenContent.Document?(*(v0 + 976), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v69(v70, v71);
    outlined destroy of GenerativeRequestMetadata(v76, type metadata accessor for ModelResponse);
    outlined destroy of GenerativeRequestMetadata(v75, type metadata accessor for ModelResponse);
    (*(v73 + 8))(v107, v74);
    (*(v72 + 8))(v115, v111);
LABEL_23:
    v84 = *(v0 + 1064);
    outlined init with copy of GenerativeRequestMetadata(v84, *(v0 + 824), type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0((v0 + 504));
    outlined destroy of GenerativeRequestMetadata(v84, type metadata accessor for GeneratedResponse);

    v85 = *(v0 + 8);

    return v85();
  }

  v44 = *(v0 + 1064);
  v45 = *(v0 + 944);
  v46 = *(v0 + 936);
  v106 = *(v0 + 920);
  v114 = *(v0 + 912);
  v47._countAndFlagsBits = v89;
  v47._object = v28;
  v48 = GeneratedResponse.updateText(_:)(v47);

  *v44 = v48._countAndFlagsBits;
  *(v103 + 8) = v48._object;
  v49 = v29[2];
  v50 = (v45 + 56);
  v51 = (v45 + 48);

  v53 = 0;
  v110 = v38;
  while (v53 == v49)
  {
    v54 = 1;
    v53 = v49;
LABEL_12:
    v59 = *(v0 + 968);
    v60 = *(v0 + 960);
    v61 = *(v0 + 936);
    (*v50)(v60, v54, 1, v61);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v60, v59, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v51)(v59, 1, v61) == 1)
    {
      v77 = *(v0 + 1240);
      v78 = *(v0 + 1168);
      v79 = *(v0 + 1152);
      v80 = *(v0 + 1136);
      v112 = *(v0 + 1128);
      v116 = *(v0 + 1144);
      v81 = *(v0 + 1088);
      v104 = *(v0 + 1080);
      v108 = *(v0 + 1096);
      v102 = *(v0 + 1032);
      v82 = *(v0 + 1024);
      v83 = *(v0 + 976);

      outlined destroy of OnScreenContent.Document?(v83, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v77(v78, v79);
      outlined destroy of GenerativeRequestMetadata(v82, type metadata accessor for ModelResponse);
      outlined destroy of GenerativeRequestMetadata(v102, type metadata accessor for ModelResponse);
      (*(v81 + 8))(v108, v104);
      (*(v80 + 8))(v116, v112);
      goto LABEL_23;
    }

    v62 = *(v0 + 968);
    v63 = *v62;
    _s26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOWObTm_0(v62 + *(v46 + 48), *(v0 + 928), type metadata accessor for GeneratedResponse.RichContentEntity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v65 = *(v0 + 928);
    if (EnumCaseMultiPayload)
    {
      result = outlined destroy of GenerativeRequestMetadata(v65, type metadata accessor for GeneratedResponse.RichContentEntity);
    }

    else
    {
      v66 = *(v0 + 920);
      outlined destroy of GenerativeRequestMetadata(v65, type metadata accessor for GeneratedResponse.RichContentEntity);
      *v66 = v48._countAndFlagsBits;
      *(v106 + 8) = v48._object;
      swift_storeEnumTagMultiPayload();

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v67 = v110;
        if ((v63 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v110);
        v67 = result;
        if ((v63 & 0x8000000000000000) != 0)
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      if (v63 >= *(v67 + 16))
      {
        goto LABEL_27;
      }

      v68 = v67;
      result = outlined assign with take of GeneratedResponse.RichContentEntity(*(v0 + 920), v67 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v63);
      v110 = v68;
      *(v103 + 16) = v68;
    }
  }

  if (v53 < v38[2])
  {
    v55 = *(v0 + 960);
    v56 = *(v0 + 952);
    v57 = v38 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v53;
    v58 = *(v46 + 48);
    *v56 = v53;
    outlined init with copy of GenerativeRequestMetadata(v57, v56 + v58, type metadata accessor for GeneratedResponse.RichContentEntity);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v56, v55, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v54 = 0;
    ++v53;
    goto LABEL_12;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

{
  v1 = v0[143];
  v2 = v0[142];
  v3 = v0[141];
  v4 = v0[137];
  v5 = v0[136];
  v6 = v0[135];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

{
  v89 = v0;
  v1 = *(v0 + 1320);

  *(v0 + 784) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 1320);
  if (v3)
  {
    v5 = *(v0 + 1264);
    v6 = *(v0 + 1256);
    v7 = *(v0 + 896);
    v8 = *(v0 + 888);
    v9 = *(v0 + 880);
    v10 = *(v0 + 872);
    v11 = *(v0 + 824);

    (*(v9 + 32))(v8, v7, v10);
    specialized GenerateController.handleGATError(_:_:)(v8, v6, v5, v11);
    v86 = *(v0 + 1144);
    v12 = *(v0 + 1136);
    v13 = *(v0 + 1128);
    v14 = *(v0 + 1096);
    v15 = *(v0 + 1088);
    v16 = *(v0 + 1080);
    v17 = *(v0 + 888);
    v18 = *(v0 + 880);
    v19 = *(v0 + 872);

    (*(v18 + 8))(v17, v19);
    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v86, v13);
    v54 = (v0 + 784);
LABEL_8:

    v55 = *(v0 + 8);
    goto LABEL_15;
  }

  v54 = (v0 + 792);

  *(v0 + 792) = v4;
  v20 = v4;
  v21 = swift_dynamicCast();
  v22 = *(v0 + 1320);
  if (v21)
  {
    v23 = *(v0 + 1264);
    v24 = *(v0 + 1256);
    v25 = *(v0 + 824);

    v26 = *(v0 + 600);
    *(v0 + 544) = *(v0 + 584);
    *(v0 + 560) = v26;
    *(v0 + 576) = *(v0 + 616);
    specialized GenerateController.handleModelOrchestratorError(error:partnerName:)((v0 + 544), v24, v23, v25);
    v27 = *(v0 + 1144);
    v28 = *(v0 + 1136);
    v29 = *(v0 + 1128);
    v30 = *(v0 + 1096);
    v31 = *(v0 + 1088);
    v32 = *(v0 + 1080);
    outlined destroy of ModelOrchestrator.Error(v0 + 544);

    (*(v31 + 8))(v30, v32);
    (*(v28 + 8))(v27, v29);
    goto LABEL_8;
  }

  v33 = (v0 + 800);

  *(v0 + 800) = v22;
  v34 = v22;
  v35 = type metadata accessor for CustomErrorWithLocalizedDescription();
  v36 = swift_dynamicCast();
  v37 = *(v0 + 1320);
  if (v36)
  {

    v38 = *(v0 + 808);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    v84 = v40;
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 1144);
    v43 = *(v0 + 1136);
    v44 = *(v0 + 1128);
    v45 = *(v0 + 1096);
    v46 = *(v0 + 1088);
    v47 = *(v0 + 1080);
    if (v41)
    {
      v82 = *(v0 + 1080);
      v48 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v88[0] = v77;
      *v48 = 136315650;
      v80 = v42;
      *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v88);
      v78 = v44;
      *(v48 + 12) = 2080;
      *(v48 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006BLL, 0x800000024FE33240, v88);
      *(v48 + 22) = 2080;
      v49 = [v38 localizedDescription];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v45;
      v52 = v51;

      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v88);

      *(v48 + 24) = v53;
      _os_log_impl(&dword_24FD67000, v39, v84, "%s.%s [CustomErrorWithLocalizedDescription = %s]", v48, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v77, -1, -1);
      MEMORY[0x253057F40](v48, -1, -1);

      swift_willThrow();
      (*(v46 + 8))(v76, v82);
      (*(v43 + 8))(v80, v78);
    }

    else
    {

      swift_willThrow();
      (*(v46 + 8))(v45, v47);
      (*(v43 + 8))(v42, v44);
    }
  }

  else
  {
    v87 = v35;

    v56 = v37;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v88[0] = v60;
      *v59 = 136315650;
      *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024FE1BD20, v88);
      *(v59 + 12) = 2080;
      *(v59 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006BLL, 0x800000024FE33240, v88);
      *(v59 + 22) = 2080;
      swift_getErrorValue();
      v61 = Error.localizedDescription.getter();
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v88);

      *(v59 + 24) = v63;
      _os_log_impl(&dword_24FD67000, v57, v58, "%s.%s [error = %s]", v59, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v60, -1, -1);
      MEMORY[0x253057F40](v59, -1, -1);
    }

    v64 = *(v0 + 1320);
    v65 = *(v0 + 1264);
    v66 = *(v0 + 1256);
    v67 = *(v0 + 1136);
    v83 = *(v0 + 1128);
    v85 = *(v0 + 1144);
    v68 = *(v0 + 1088);
    v79 = *(v0 + 1080);
    v81 = *(v0 + 1096);
    v69 = _convertErrorToNSError(_:)();
    v70 = [v69 domain];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = _convertErrorToNSError(_:)();
    [v71 code];

    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v88[0]) = 5;
    v72 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v73.value._countAndFlagsBits = v66;
    v73.value._object = v65;
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v88, v73, v72);

    v74 = objc_allocWithZone(v87);
    CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
    swift_willThrow();

    (*(v68 + 8))(v81, v79);
    (*(v67 + 8))(v85, v83);
  }

  v55 = *(v0 + 8);
LABEL_15:

  return v55();
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of GenerativeRequestMetadata(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of GenerativeRequestMetadata(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy201_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GenerateTextController(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
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

uint64_t storeEnumTagSinglePayload for GenerateTextController(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type GenerativeAssistantUseCase and conformance GenerativeAssistantUseCase(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type IntentResultContainer<Never, Never, Never, IntentDialog> and conformance IntentResultContainer<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type IntentResultContainer<Never, Never, Never, IntentDialog> and conformance IntentResultContainer<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type IntentResultContainer<Never, Never, Never, IntentDialog> and conformance IntentResultContainer<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents21IntentResultContainerVys5NeverOA2eA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOA2eA0C6DialogVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentResultContainer<Never, Never, Never, IntentDialog> and conformance IntentResultContainer<A, B, C, D>);
  }

  return result;
}

uint64_t dispatch thunk of ModelSession.registerDocument(_:uploadProgressCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of ContentLoaderProviding.load();

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ModelSession.registerImage(_:uploadProgressCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of PartnerStreamWrapper.getStreamedResponse();

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ModelSession.generate(userQuery:useCaseID:keepAliveCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 32) + **(a8 + 32));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = dispatch thunk of ContentLoaderProviding.load();

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of ModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(a10 + 40) + **(a10 + 40));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = dispatch thunk of ContentLoaderProviding.load();

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of ModelSession.registerImageInLineAndGenerateResponse(userQuery:image:useCaseID:keepAliveCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 48) + **(a9 + 48));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = dispatch thunk of ContentLoaderProviding.load();

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

char *DefaultModelSession.init(systemPrompt:tools:requestMetadata:enableBrowserTool:templateID:featureFlagManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v172 = a8;
  v169 = a7;
  v165 = a6;
  v173 = a5;
  v188 = a4;
  v180 = a3;
  v168 = a2;
  v164 = a1;
  v179 = *v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v167 = &v144 - v11;
  v12 = type metadata accessor for ToolChoice();
  MEMORY[0x28223BE20](v12 - 8);
  v148 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for GenerativeRequestMetadata(0);
  MEMORY[0x28223BE20](v190);
  v166 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for ChatMessageRole();
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v161 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ChatMessagePrompt();
  MEMORY[0x28223BE20](v16 - 8);
  v163 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CachePolicy();
  MEMORY[0x28223BE20](v18 - 8);
  v153 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for UUID();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v149 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for SessionConfiguration();
  v177 = *(v162 - 8);
  v21 = MEMORY[0x28223BE20](v162);
  v155 = &v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v174 = &v144 - v23;
  v24 = type metadata accessor for GenerativeAssistantUseCase();
  v175 = *(v24 - 8);
  v176 = v24;
  MEMORY[0x28223BE20](v24);
  v185 = &v144 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for SessionConfiguration();
  v156 = *(v158 - 8);
  v26 = MEMORY[0x28223BE20](v158);
  v154 = &v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v157 = &v144 - v28;
  v29 = type metadata accessor for ModelBundle();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v184 = &v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v144 - v34;
  MEMORY[0x28223BE20](v33);
  v195 = &v144 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v40 = &v144 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = &v144 - v41;
  v43 = type metadata accessor for SamplingParameters();
  v181 = *(v43 - 8);
  v182 = v43;
  v44 = MEMORY[0x28223BE20](v43);
  v152 = (&v144 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v44);
  v47 = &v144 - v46;
  v189 = v8;
  *&v8[OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_timeoutDurationInSeconds] = 60;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v170 = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("SessionCreation.Time", 20, 2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v171 = static SELFUtils.shared;
  SELFUtils.recordCreateSessionStarted()();
  v48 = type metadata accessor for SamplingStrategy();
  (*(*(v48 - 8) + 56))(v42, 1, 1, v48);
  if (one-time initialization token for _temperature != -1)
  {
    swift_once();
  }

  v186 = v9;
  v178 = v35;
  if (byte_27F39FA30 == 1)
  {
    v49 = unk_27F39FA20;
    v50 = static Overrides._temperature;

    v49(&v193, v50);

    v187 = v193;
    v51 = v194;
  }

  else
  {
    v187 = 0;
    v51 = 1;
  }

  LODWORD(v183) = v51;
  if (one-time initialization token for _modelMaximumTokens != -1)
  {
    swift_once();
  }

  v191 = v30;
  v192 = v29;
  if (byte_27F39F9D0 == 1)
  {
    v52 = unk_27F39F9C0;
    v53 = static Overrides._modelMaximumTokens;

    v52(&v193, v53);
  }

  if (one-time initialization token for _modelRandomSeed != -1)
  {
    swift_once();
  }

  if (byte_27F39FA00 == 1)
  {
    v54 = unk_27F39F9F0;
    v55 = static Overrides._modelRandomSeed;

    v54(&v193, v55);
  }

  outlined init with copy of Date?(v42, v40, &_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  SamplingParameters.init(strategy:temperature:frequencyPenalty:lengthPenalty:maximumTokens:stopSequences:randomSeed:timeout:)();
  SamplingParameters.promptLookupDraftSteps.setter();
  SamplingParameters.speculativeSampling.setter();
  SamplingParameters.tokenHealing.setter();
  outlined destroy of OnScreenContent.Document?(v42, &_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  v56 = OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_samplingParameters;
  v57 = v189;
  (*(v181 + 32))(&v189[OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_samplingParameters], v47, v182);
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  v59 = __swift_project_value_buffer(v58, static Logger.modelInteraction);

  v183 = v59;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();

  v62 = os_log_type_enabled(v60, v61);
  v63 = v191;
  v147 = v56;
  if (v62)
  {
    v64 = v191;
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v193 = v66;
    *v65 = 136315650;
    v67 = _typeName(_:qualified:)();
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v193);

    *(v65 + 4) = v69;
    *(v65 + 12) = 2080;
    *(v65 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000059, 0x800000024FE336D0, &v193);
    *(v65 + 22) = 2080;
    (*(v181 + 16))(v152, &v57[v56], v182);
    v70 = String.init<A>(describing:)();
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, &v193);

    *(v65 + 24) = v72;
    _os_log_impl(&dword_24FD67000, v60, v61, "%s.%s Using sampling parameters: %s", v65, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v66, -1, -1);
    v73 = v65;
    v63 = v64;
    MEMORY[0x253057F40](v73, -1, -1);
  }

  v74 = v192;
  v75 = v178;
  v76 = v188;
  v77 = v188 + v190[9];
  v146 = OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_siriLocale;
  outlined init with copy of Date?(v77, &v57[OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_siriLocale], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  type metadata accessor for GenerativeAssistantSettingsProvider();
  static GenerativeAssistantSettingsProvider.shared.getter();
  v78 = v195;
  dispatch thunk of GenerativeAssistantSettingsProvider.modelBundle()();

  v187 = *(v63 + 16);
  v187(v75, v78, v74);
  v79 = v63;
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = v79;
    v152 = swift_slowAlloc();
    v193 = v152;
    *v82 = 136315650;
    v84 = _typeName(_:qualified:)();
    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &v193);

    *(v82 + 4) = v86;
    *(v82 + 12) = 2080;
    *(v82 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000059, 0x800000024FE336D0, &v193);
    *(v82 + 22) = 2080;
    v87 = URL.absoluteString.getter();
    v89 = v88;
    v90 = v83;
    v57 = v189;
    v178 = *(v90 + 8);
    v178(v75, v74);
    v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, &v193);

    *(v82 + 24) = v91;
    _os_log_impl(&dword_24FD67000, v80, v81, "%s.%s Using model bundle: %s", v82, 0x20u);
    v92 = v152;
    swift_arrayDestroy();
    MEMORY[0x253057F40](v92, -1, -1);
    v93 = v82;
    v76 = v188;
    MEMORY[0x253057F40](v93, -1, -1);
  }

  else
  {

    v178 = *(v79 + 8);
    v178(v75, v74);
  }

  v94 = OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_modelBundle;
  v187(&v57[OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_modelBundle], v195, v74);
  v95 = (v76 + v190[13]);
  v97 = *v95;
  v96 = v95[1];
  if (v96)
  {
    type metadata accessor for GenerativeExperiencesSession();
    specialized static DefaultModelSession.getTools(tooling:enableBrowserTool:)(v180, v173 & 1);
    v98 = static GenerativeExperiencesSession.retrieveSession(with:reattaching:)();

    if (v98)
    {

      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v152 = v97;
        v103 = v102;
        v193 = v102;
        *v101 = 136315650;
        v104 = _typeName(_:qualified:)();
        v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v105, &v193);

        *(v101 + 4) = v106;
        v57 = v189;
        *(v101 + 12) = 2080;
        *(v101 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000059, 0x800000024FE336D0, &v193);
        *(v101 + 22) = 2080;
        v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v96, &v193);

        *(v101 + 24) = v107;
        _os_log_impl(&dword_24FD67000, v99, v100, "%s.%s Using existing session, id: %s", v101, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v103, -1, -1);
        MEMORY[0x253057F40](v101, -1, -1);
      }

      else
      {
      }

      v137 = v192;
      v138 = v178;
LABEL_41:
      *(v57 + 2) = v98;
      v139 = type metadata accessor for OSSignpostID();
      v140 = v167;
      (*(*(v139 - 8) + 56))(v167, 1, 1, v139);
      MetricsUtils.recordSignpostEnd(for:signPostID:)("SessionCreation.Time", 20, 2u, v140);
      outlined destroy of OnScreenContent.Document?(v140, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
      SELFUtils.recordCreateSessionEnded()();
      v138(v195, v137);
      outlined destroy of UploadableDocumentData(v76, type metadata accessor for GenerativeRequestMetadata);
      v141 = OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_featureFlagManager;
      v142 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
      (*(*(v142 - 8) + 32))(&v57[v141], v172, v142);
      return v57;
    }
  }

  v145 = v94;
  (*(v175 + 16))(v185, v76 + v190[8], v176);
  v187(v184, v195, v192);
  v152 = v97;
  if (!v96)
  {
    v108 = v149;
    UUID.init()();
    UUID.uuidString.getter();
    (*(v150 + 8))(v108, v151);
  }

  swift_bridgeObjectRetain_n();
  GenerativeAssistantUseCase.rawValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration11ModelBundleVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration11ModelBundleVGMR);
  v109 = (*(v191 + 80) + 32) & ~*(v191 + 80);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_24FE1A560;
  v187((v110 + v109), v184, v192);
  static CachePolicy.inMemory.getter();
  getProcessIdenitifierForSiri()();
  v111 = v174;
  SessionConfiguration.init(identifier:useCaseID:preferredModelBundles:handlesSensitiveData:cachePolicy:onBehalfOf:parentOfOnBehalfOf:)();
  v112 = v162;
  (*(v177 + 16))(v155, v111, v162);
  v113 = (*(v159 + 104))(v161, *MEMORY[0x277D42E48], v160);
  MEMORY[0x28223BE20](v113);
  v114 = v186;
  ChatMessagePrompt.init(role:prompt:)();
  v186 = v114;

  if (!v96)
  {
    v116 = v149;
    UUID.init()();
    UUID.uuidString.getter();
    (*(v150 + 8))(v116, v151);
  }

  v115 = v154;
  SessionConfiguration.init(tokenGeneratorConfig:identifier:instructions:templateID:)();
  v76 = v188;
  v117 = v166;
  (*(v177 + 8))(v174, v112);
  v118 = v192;
  v119 = v178;
  v178(v184, v192);
  (*(v175 + 8))(v185, v176);
  (*(v156 + 32))(v157, v115, v158);
  type metadata accessor for GenerativeExperiencesSession();
  swift_allocObject();
  v120 = GenerativeExperiencesSession.init(configuration:)();
  if (v120)
  {
    v98 = v120;
    outlined init with copy of UploadableMedia.Source(v76, v117, type metadata accessor for GenerativeRequestMetadata);

    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v193 = v124;
      *v123 = 136315906;
      v125 = _typeName(_:qualified:)();
      v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v126, &v193);

      *(v123 + 4) = v127;
      *(v123 + 12) = 2080;
      *(v123 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000059, 0x800000024FE336D0, &v193);
      *(v123 + 22) = 2080;
      v128 = GenerativeAssistantUseCase.rawValue.getter();
      v130 = v129;
      outlined destroy of UploadableDocumentData(v117, type metadata accessor for GenerativeRequestMetadata);
      v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v130, &v193);

      *(v123 + 24) = v131;
      *(v123 + 32) = 2080;
      v132 = GenerativeExperiencesSession.sessionIdentifier()();
      v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132._countAndFlagsBits, v132._object, &v193);

      *(v123 + 34) = v133;
      _os_log_impl(&dword_24FD67000, v121, v122, "%s.%s Created a new session for %s, id: %s", v123, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v124, -1, -1);
      v134 = v123;
      v76 = v188;
      MEMORY[0x253057F40](v134, -1, -1);
    }

    else
    {

      outlined destroy of UploadableDocumentData(v117, type metadata accessor for GenerativeRequestMetadata);
    }

    v138 = v178;
    specialized static DefaultModelSession.getTools(tooling:enableBrowserTool:)(v180, v173 & 1);

    GenerativeExperiencesSession.tools.setter();
    static ToolChoice.automatic.getter();
    GenerativeExperiencesSession.toolChoice.setter();
    v137 = v192;
    v57 = v189;
    goto LABEL_41;
  }

  MetricsUtils.emitSignpostEvent(_:)("Error.SessionCreation", 21, 2);
  SELFUtils.recordCreateSessionFailed(code:domain:)(0, 3);
  SELFUtils.recordCreateSessionFailed(code:domain:)(0, 3);
  SELFUtils.recordRequestFailed(code:domain:)(0, 3);
  lazy protocol witness table accessor for type DefaultModelSession.SessionError and conformance DefaultModelSession.SessionError();
  swift_allocError();
  *v135 = 0;
  swift_willThrow();
  v136 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  (*(*(v136 - 8) + 8))(v172, v136);
  v119(v195, v118);
  outlined destroy of UploadableDocumentData(v76, type metadata accessor for GenerativeRequestMetadata);
  v57 = v189;
  (*(v181 + 8))(&v189[v147], v182);
  outlined destroy of OnScreenContent.Document?(&v57[v146], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v119(&v57[v145], v118);
  swift_deallocPartialClassInstance();
  return v57;
}

uint64_t closure #1 in DefaultModelSession.registerImageInLineAndGenerateResponse(userQuery:image:useCaseID:keepAliveCallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v22 = a2;
  v23 = a3;
  v32 = a5;
  v27 = type metadata accessor for User();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChatMessagePrompt();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ChatMessagesPrompt();
  v12 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v30 = v22;
  v31 = v23;
  v15 = v25;
  User.init(_:)();
  v25 = v15;
  MEMORY[0x253056D90](v28 + OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_siriLocale);
  (*(v24 + 8))(v7, v27);
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v9 + 8))(v11, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMR);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24FE1A560;
  v18 = v17 + v16;
  v19 = v26;
  (*(v12 + 16))(v18, v14, v26);
  MEMORY[0x253056D00](v17);

  return (*(v12 + 8))(v14, v19);
}

uint64_t DefaultModelSession.getModelResponse(from:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[19] = a2;
  v3[20] = v4;
  v3[18] = a1;
  v5 = type metadata accessor for ExternalPartnerAuthenticator();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5Anvil16RateLimitBudgetsVSgMd, &_s5Anvil16RateLimitBudgetsVSgMR);
  v3[24] = swift_task_alloc();
  v6 = type metadata accessor for RateLimitBudgets();
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5Anvil28ExternalPartnerAuthenticatorVSgMd, &_s5Anvil28ExternalPartnerAuthenticatorVSgMR);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v7 = type metadata accessor for PromptCompletion.Annotation();
  v3[30] = v7;
  v3[31] = *(v7 - 8);
  v3[32] = swift_task_alloc();
  v8 = type metadata accessor for PromptCompletion.FileContent();
  v3[33] = v8;
  v3[34] = *(v8 - 8);
  v3[35] = swift_task_alloc();
  v9 = type metadata accessor for String.Encoding();
  v3[36] = v9;
  v3[37] = *(v9 - 8);
  v3[38] = swift_task_alloc();
  v10 = type metadata accessor for PromptCompletion.TextContent();
  v3[39] = v10;
  v3[40] = *(v10 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v11 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  v3[44] = v11;
  v3[45] = *(v11 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v12 = type metadata accessor for PromptCompletion.ImageContent();
  v3[49] = v12;
  v13 = *(v12 - 8);
  v3[50] = v13;
  v3[51] = *(v13 + 64);
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v14 = type metadata accessor for PromptCompletion.Content();
  v3[54] = v14;
  v3[55] = *(v14 - 8);
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v15 = type metadata accessor for PromptCompletion.Segment();
  v3[58] = v15;
  v3[59] = *(v15 - 8);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v16 = type metadata accessor for PromptCompletion.Candidate();
  v3[62] = v16;
  v3[63] = *(v16 - 8);
  v3[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[67] = static MainActor.shared.getter();
  v18 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](DefaultModelSession.getModelResponse(from:), v18, v17);
}

uint64_t DefaultModelSession.getModelResponse(from:)()
{
  v268 = v0;
  v2 = *(v0 + 528);
  v263 = MEMORY[0x277D84F90];
  v3 = type metadata accessor for URL();
  v219 = *(*(v3 - 8) + 56);
  v220 = v3;
  v219(v2, 1, 1);
  v4 = PromptCompletion.candidates.getter();
  v225 = *(v4 + 16);
  if (!v225)
  {

    v237 = 0xE000000000000000;
    v227 = 2;
    v228 = 0;
    v153 = MEMORY[0x277D84F90];
    v261 = MEMORY[0x277D84F90];
    v154 = *(MEMORY[0x277D84F90] + 16);
    if (!v154)
    {
      goto LABEL_78;
    }

LABEL_65:
    v155 = 0;
    v156 = *(v262 + 248);
    v1 = v154 - 1;
    v260 = MEMORY[0x277D84F90];
LABEL_66:
    v157 = v155;
    while (v157 < *(v153 + 16))
    {
      v158 = *(v262 + 256);
      (*(v156 + 16))(v158, v153 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v157, *(v262 + 240));
      closure #1 in DefaultModelSession.getModelResponse(from:)(v158, &v264);
      (*(v156 + 8))(*(v262 + 256), *(v262 + 240));
      v159 = v265;
      if (v265)
      {
        v256 = v266;
        v258 = v264;
        v254 = v267;
        v160 = v1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v260 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v260 + 2) + 1, 1, v260);
        }

        v161 = v258;
        v163 = *(v260 + 2);
        v162 = *(v260 + 3);
        v164 = v254;
        v165 = v256;
        if (v163 >= v162 >> 1)
        {
          v167 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v162 > 1), v163 + 1, 1, v260);
          v164 = v254;
          v165 = v256;
          v260 = v167;
          v161 = v258;
        }

        v155 = v157 + 1;
        *(v260 + 2) = v163 + 1;
        v166 = &v260[32 * v163];
        *(v166 + 4) = v161;
        *(v166 + 5) = v159;
        *(v166 + 6) = v165;
        *(v166 + 7) = v164;
        v1 = v160;
        if (v160 != v157)
        {
          goto LABEL_66;
        }

        goto LABEL_79;
      }

      ++v157;
      outlined consume of Attribution?(v264, 0, v266, v267);
      if (v154 == v157)
      {
        goto LABEL_79;
      }
    }

    goto LABEL_116;
  }

  v228 = 0;
  v5 = 0;
  v6 = *(v262 + 504);
  v223 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v7 = *(v262 + 440);
  v255 = *(v262 + 472);
  v251 = (v7 + 88);
  v252 = (v255 + 8);
  v232 = (v7 + 8);
  v8 = *(v262 + 272);
  v9 = (v7 + 96);
  v231 = (v8 + 32);
  v10 = *(v262 + 400);
  v230 = (v8 + 8);
  v244 = (v10 + 32);
  v245 = v9;
  v11 = *(v262 + 320);
  v236 = v10;
  v235 = (v10 + 8);
  v243 = (v11 + 32);
  v247 = (v11 + 16);
  v250 = *MEMORY[0x277D71C10];
  v249 = (v11 + 8);
  v242 = (*(v262 + 296) + 8);
  v224 = v6;
  v221 = (v6 + 8);
  v261 = MEMORY[0x277D84F90];
  v241 = *MEMORY[0x277D71C20];
  v237 = 0xE000000000000000;
  v227 = 2;
  v234 = *MEMORY[0x277D71C08];
  v233 = *(v262 + 384);
  v226 = *(v262 + 376);
  v240 = *(v262 + 360);
  v222 = v4;
  do
  {
    if (v5 >= *(v4 + 16))
    {
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      swift_once();
      goto LABEL_85;
    }

    v229 = v5;
    (*(v224 + 16))(*(v262 + 512), v223 + *(v224 + 72) * v5, *(v262 + 496));
    v14 = PromptCompletion.Candidate.segments.getter();
    v1 = v14;
    v257 = *(v14 + 16);
    if (v257)
    {
      v15 = 0;
      v253 = v14 + ((*(v255 + 80) + 32) & ~*(v255 + 80));
      v246 = v14;
      do
      {
        if (v15 >= *(v1 + 2))
        {
          __break(1u);
LABEL_107:
          v199 = *(v262 + 200);
          v200 = *(v262 + 208);
          v201 = *(v262 + 184);
          v202 = *(v262 + 192);
          v203 = *(v262 + 168);
          v204 = *(v262 + 176);
          (*(v204 + 16))(v201, *(v262 + 232), v203);
          ExternalPartnerAuthenticator.lastRateLimitBudgets.getter();
          (*(v204 + 8))(v201, v203);
          if ((*(v200 + 48))(v202, 1, v199) == 1)
          {
            goto LABEL_108;
          }

          v217 = *(v262 + 208);
          v216 = *(v262 + 216);
          v218 = *(v262 + 200);
          (*(v217 + 32))(v216, *(v262 + 192), v218);
          v198 = RateLimitBudgets.isRateLimited.getter();
          (*(v217 + 8))(v216, v218);
          goto LABEL_109;
        }

        v16 = *(v262 + 456);
        v17 = *(v262 + 432);
        v18 = *(v255 + 16);
        v18(*(v262 + 488), v253 + *(v255 + 72) * v15, *(v262 + 464));
        PromptCompletion.Segment.content.getter();
        v19 = (*v251)(v16, v17);
        if (v19 == v250)
        {
          v20 = *(v262 + 456);
          v21 = *(v262 + 344);
          v22 = *(v262 + 312);
          (*v245)(v20, *(v262 + 432));
          (*v243)(v21, v20, v22);
          if (one-time initialization token for modelInteraction != -1)
          {
            swift_once();
          }

          v23 = *(v262 + 336);
          v24 = *(v262 + 344);
          v25 = *(v262 + 312);
          v26 = type metadata accessor for Logger();
          __swift_project_value_buffer(v26, static Logger.modelInteraction);
          v27 = *v247;
          (*v247)(v23, v24, v25);
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.info.getter();
          v30 = os_log_type_enabled(v28, v29);
          v31 = *(v262 + 336);
          v32 = *(v262 + 312);
          v260 = v15;
          if (v30)
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v264 = v34;
            *v33 = 136315138;
            v35 = PromptCompletion.TextContent.value.getter();
            v37 = v36;
            v248 = *v249;
            (*v249)(v31, v32);
            v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v264);

            *(v33 + 4) = v38;
            _os_log_impl(&dword_24FD67000, v28, v29, "Text content: %s", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v34);
            MEMORY[0x253057F40](v34, -1, -1);
            MEMORY[0x253057F40](v33, -1, -1);
          }

          else
          {

            v248 = *v249;
            (*v249)(v31, v32);
          }

          v62 = *(v262 + 304);
          v63 = *(v262 + 288);
          PromptCompletion.TextContent.value.getter();
          static String.Encoding.utf8.getter();
          v64 = String.data(using:allowLossyConversion:)();
          v66 = v65;

          (*v242)(v62, v63);
          if (v66 >> 60 == 15)
          {
            v27(*(v262 + 328), *(v262 + 344), *(v262 + 312));
            v67 = Logger.logObject.getter();
            v68 = static os_log_type_t.error.getter();
            v69 = os_log_type_enabled(v67, v68);
            v70 = *(v262 + 488);
            v71 = *(v262 + 464);
            v72 = *(v262 + 344);
            v73 = *(v262 + 328);
            v74 = *(v262 + 312);
            if (v69)
            {
              v239 = *(v262 + 488);
              v238 = *(v262 + 344);
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              v264 = v76;
              *v75 = 136315650;
              v77 = _typeName(_:qualified:)();
              v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v264);

              *(v75 + 4) = v79;
              *(v75 + 12) = 2080;
              *(v75 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000024FE33680, &v264);
              *(v75 + 22) = 2080;
              v80 = PromptCompletion.TextContent.value.getter();
              v82 = v81;
              v248(v73, v74);
              v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, &v264);

              *(v75 + 24) = v83;
              _os_log_impl(&dword_24FD67000, v67, v68, "%s.%s Failed to decode into JSON: %s", v75, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x253057F40](v76, -1, -1);
              MEMORY[0x253057F40](v75, -1, -1);

              v248(v238, v74);
              (*v252)(v239, v71);
            }

            else
            {

              v248(v73, v74);
              v248(v72, v74);
              (*v252)(v70, v71);
            }
          }

          else
          {
            type metadata accessor for JSONDecoder();
            swift_allocObject();
            JSONDecoder.init()();
            lazy protocol witness table accessor for type ModelResponseText and conformance ModelResponseText();
            dispatch thunk of JSONDecoder.decode<A>(_:from:)();
            v124 = *(v262 + 376);

            v126 = *(v262 + 16);
            v125 = *(v262 + 24);
            v127 = *(v262 + 40);
            v227 = *(v262 + 48);
            v228 = *(v262 + 32);
            MEMORY[0x253056FE0](v126, v125);
            *v124 = v126;
            *(v226 + 8) = v125;
            swift_storeEnumTagMultiPayload();
            v237 = v127;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v261 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v261[2] + 1, 1, v261);
            }

            v130 = v261[2];
            v129 = v261[3];
            if (v130 >= v129 >> 1)
            {
              v261 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v129 > 1), v130 + 1, 1, v261);
            }

            v131 = *(v262 + 488);
            v132 = *(v262 + 464);
            v133 = *(v262 + 376);
            v134 = *(v262 + 344);
            v135 = *(v262 + 312);

            v261[2] = v130 + 1;
            outlined init with take of ModelResponse(v133, v261 + ((*(v240 + 80) + 32) & ~*(v240 + 80)) + *(v240 + 72) * v130, type metadata accessor for GeneratedResponse.RichContentEntity);
            v136 = PromptCompletion.TextContent.annotations.getter();
            specialized Array.append<A>(contentsOf:)(v136, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x277D71BF0]);
            outlined consume of Data?(v64, v66);
            v248(v134, v135);
            (*v252)(v131, v132);
          }

          v1 = v246;
          v15 = v260;
        }

        else
        {
          if (v19 == v241)
          {
            v39 = *(v262 + 456);
            v40 = *(v262 + 424);
            v41 = *(v262 + 392);
            (*v245)(v39, *(v262 + 432));
            v42 = *v244;
            (*v244)(v40, v39, v41);
            if (one-time initialization token for modelInteraction != -1)
            {
              swift_once();
            }

            v43 = type metadata accessor for Logger();
            __swift_project_value_buffer(v43, static Logger.modelInteraction);
            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              *v46 = 0;
              _os_log_impl(&dword_24FD67000, v44, v45, "[Generated image] Generated image response received. Wait for further logs to see if the image data is loaded successfully.", v46, 2u);
              MEMORY[0x253057F40](v46, -1, -1);
            }

            v48 = *(v262 + 416);
            v47 = *(v262 + 424);
            v50 = *(v262 + 384);
            v49 = *(v262 + 392);

            (*(v236 + 16))(v48, v47, v49);
            v51 = (*(v236 + 80) + 16) & ~*(v236 + 80);
            v52 = swift_allocObject();
            v42(v52 + v51, v48, v49);
            *v50 = &async function pointer to partial apply for implicit closure #2 in implicit closure #1 in DefaultModelSession.getModelResponse(from:);
            *(v233 + 8) = v52;
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v261 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v261[2] + 1, 1, v261);
            }

            v1 = v246;
            v54 = v261[2];
            v53 = v261[3];
            v55 = v54 + 1;
            if (v54 >= v53 >> 1)
            {
              v261 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v261);
            }

            v56 = *(v262 + 488);
            v57 = *(v262 + 464);
            v58 = *(v262 + 424);
            v60 = *(v262 + 384);
            v59 = *(v262 + 392);
            v61 = v235;
          }

          else
          {
            if (v19 != v234)
            {
              if (one-time initialization token for modelInteraction != -1)
              {
                swift_once();
              }

              v104 = *(v262 + 480);
              v105 = *(v262 + 488);
              v106 = *(v262 + 464);
              v107 = type metadata accessor for Logger();
              __swift_project_value_buffer(v107, static Logger.modelInteraction);
              v18(v104, v105, v106);
              v108 = Logger.logObject.getter();
              v109 = static os_log_type_t.error.getter();
              v110 = os_log_type_enabled(v108, v109);
              v111 = *(v262 + 480);
              v112 = *(v262 + 488);
              v113 = *(v262 + 464);
              if (v110)
              {
                v260 = v15;
                v114 = swift_slowAlloc();
                v115 = swift_slowAlloc();
                v264 = v115;
                *v114 = 136315650;
                v116 = _typeName(_:qualified:)();
                v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, &v264);

                *(v114 + 4) = v118;
                *(v114 + 12) = 2080;
                *(v114 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000024FE33680, &v264);
                *(v114 + 22) = 2080;
                PromptCompletion.Segment.content.getter();
                v119 = String.init<A>(describing:)();
                v121 = v120;
                v122 = *v252;
                (*v252)(v111, v113);
                v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v121, &v264);
                v15 = v260;

                *(v114 + 24) = v123;
                _os_log_impl(&dword_24FD67000, v108, v109, "%s.%s Unhandled segment content type: %s", v114, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x253057F40](v115, -1, -1);
                MEMORY[0x253057F40](v114, -1, -1);

                v122(v112, v113);
              }

              else
              {

                v137 = *v252;
                (*v252)(v111, v113);
                v137(v112, v113);
              }

              (*v232)(*(v262 + 456), *(v262 + 432));
              v1 = v246;
              goto LABEL_10;
            }

            v84 = *(v262 + 456);
            v85 = *(v262 + 280);
            v86 = *(v262 + 264);
            (*v245)(v84, *(v262 + 432));
            (*v231)(v85, v84, v86);
            if (one-time initialization token for modelInteraction != -1)
            {
              swift_once();
            }

            v87 = v15;
            v88 = type metadata accessor for Logger();
            __swift_project_value_buffer(v88, static Logger.modelInteraction);
            v89 = Logger.logObject.getter();
            v90 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v89, v90))
            {
              v91 = swift_slowAlloc();
              *v91 = 0;
              _os_log_impl(&dword_24FD67000, v89, v90, "[Generated File] Generated file response received", v91, 2u);
              MEMORY[0x253057F40](v91, -1, -1);
            }

            v92 = *(v262 + 368);

            PromptCompletion.FileContent.url.getter();
            v93 = PromptCompletion.FileContent.name.getter();
            v95 = v94;
            v96 = PromptCompletion.FileContent.mimeType.getter();
            v98 = v97;
            v99 = PromptCompletion.FileContent.size.getter();
            v100 = type metadata accessor for GeneratedFileContent(0);
            v101 = (v92 + v100[5]);
            *v101 = v93;
            v101[1] = v95;
            v102 = (v92 + v100[6]);
            *v102 = v96;
            v102[1] = v98;
            *(v92 + v100[7]) = v99;
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v261 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v261[2] + 1, 1, v261);
            }

            v15 = v87;
            v54 = v261[2];
            v103 = v261[3];
            v55 = v54 + 1;
            if (v54 >= v103 >> 1)
            {
              v261 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v54 + 1, 1, v261);
            }

            v56 = *(v262 + 488);
            v57 = *(v262 + 464);
            v60 = *(v262 + 368);
            v58 = *(v262 + 280);
            v59 = *(v262 + 264);
            v61 = v230;
          }

          (*v61)(v58, v59);
          (*v252)(v56, v57);
          v261[2] = v55;
          outlined init with take of ModelResponse(v60, v261 + ((*(v240 + 80) + 32) & ~*(v240 + 80)) + *(v240 + 72) * v54, type metadata accessor for GeneratedResponse.RichContentEntity);
        }

LABEL_10:
        ++v15;
      }

      while (v257 != v15);
    }

    v138 = PromptCompletion.Candidate.metadata.getter();
    if (*(v138 + 16) && (v139 = specialized __RawDictionaryStorage.find<A>(_:)(0x61756E69746E6F43, 0xEF4C52556E6F6974), (v140 & 1) != 0))
    {
      outlined init with copy of Any(*(v138 + 56) + 32 * v139, v262 + 56);

      if (swift_dynamicCast())
      {
        v141 = *(v262 + 528);
        v142 = *(v262 + 520);
        v144 = *(v262 + 120);
        v143 = *(v262 + 128);
        URL.init(string:)();
        outlined destroy of OnScreenContent.Document?(v141, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        outlined init with take of URL?(v142, v141);
        if (one-time initialization token for modelInteraction != -1)
        {
          swift_once();
        }

        v145 = type metadata accessor for Logger();
        __swift_project_value_buffer(v145, static Logger.modelInteraction);

        v146 = Logger.logObject.getter();
        v147 = static os_log_type_t.info.getter();

        v148 = os_log_type_enabled(v146, v147);
        v149 = *(v262 + 512);
        v150 = *(v262 + 496);
        if (v148)
        {
          v151 = swift_slowAlloc();
          v1 = swift_slowAlloc();
          v264 = v1;
          *v151 = 136315138;
          v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v143, &v264);

          *(v151 + 4) = v152;
          _os_log_impl(&dword_24FD67000, v146, v147, "Received punch out url %s", v151, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v1);
          MEMORY[0x253057F40](v1, -1, -1);
          MEMORY[0x253057F40](v151, -1, -1);
        }

        else
        {
        }

        (*v221)(v149, v150);
      }

      else
      {
        (*v221)(*(v262 + 512), *(v262 + 496));
      }
    }

    else
    {
      v12 = *(v262 + 512);
      v13 = *(v262 + 496);

      (*v221)(v12, v13);
    }

    v5 = v229 + 1;
    v4 = v222;
  }

  while (v229 + 1 != v225);

  v153 = v263;
  v154 = *(v263 + 16);
  if (v154)
  {
    goto LABEL_65;
  }

LABEL_78:
  v260 = MEMORY[0x277D84F90];
LABEL_79:

  v168 = PromptCompletion.metadata.getter();
  if (!*(v168 + 16) || (v169 = specialized __RawDictionaryStorage.find<A>(_:)(0x73656369746F4ELL, 0xE700000000000000), (v170 & 1) == 0))
  {

LABEL_91:
    v171 = MEMORY[0x277D84F90];
    v172 = *(MEMORY[0x277D84F90] + 16);
    if (!v172)
    {
      goto LABEL_83;
    }

    goto LABEL_92;
  }

  outlined init with copy of Any(*(v168 + 56) + 32 * v169, v262 + 88);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_91;
  }

  v171 = *(v262 + 136);
  v172 = *(v171 + 16);
  if (v172)
  {
LABEL_92:
    v186 = 0;
    v1 = MEMORY[0x277D84F90];
LABEL_93:
    v187 = v186;
    while (v187 < *(v171 + 16))
    {
      v188 = *(v171 + 32 + 8 * v187);
      if (*(v188 + 16))
      {

        v189 = specialized __RawDictionaryStorage.find<A>(_:)(0x6567617373656DLL, 0xE700000000000000);
        if (v190)
        {
          v191 = (*(v188 + 56) + 16 * v189);
          v192 = v191[1];
          v259 = *v191;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
          }

          v193 = v1;
          v194 = *(v1 + 2);
          v195 = v193;
          v196 = *(v193 + 3);
          if (v194 >= v196 >> 1)
          {
            v195 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v196 > 1), v194 + 1, 1, v195);
          }

          v186 = v187 + 1;
          *(v195 + 2) = v194 + 1;
          v197 = &v195[16 * v194];
          v1 = v195;
          *(v197 + 4) = v259;
          *(v197 + 5) = v192;
          if (v172 - 1 != v187)
          {
            goto LABEL_93;
          }

          goto LABEL_84;
        }
      }

      if (v172 == ++v187)
      {
        goto LABEL_84;
      }
    }

    goto LABEL_115;
  }

LABEL_83:
  v1 = MEMORY[0x277D84F90];
LABEL_84:

  if (one-time initialization token for modelInteraction != -1)
  {
    goto LABEL_117;
  }

LABEL_85:
  v173 = type metadata accessor for Logger();
  __swift_project_value_buffer(v173, static Logger.modelInteraction);

  v174 = Logger.logObject.getter();
  v175 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v174, v175))
  {
    v176 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    v264 = v177;
    *v176 = 136315138;
    v178 = MEMORY[0x2530570A0](v1, MEMORY[0x277D837D0]);
    v180 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v178, v179, &v264);

    *(v176 + 4) = v180;
    _os_log_impl(&dword_24FD67000, v174, v175, "Received notice(s) %s", v176, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v177);
    MEMORY[0x253057F40](v177, -1, -1);
    MEMORY[0x253057F40](v176, -1, -1);
  }

  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  v181 = MEMORY[0x253056470]();
  v257 = v1;
  if (v181 == 2)
  {
    v183 = *(v262 + 224);
    v182 = *(v262 + 232);
    v184 = *(v262 + 168);
    v185 = *(v262 + 176);
    (*(v185 + 56))(v182, 1, 1, v184);
    type metadata accessor for GenerativeAssistantProvider();
    static GenerativeAssistantProvider.shared.getter();
    dispatch thunk of GenerativeAssistantProvider.authenticator()();

    outlined assign with take of ExternalPartnerAuthenticator?(v183, v182);
    if (!(*(v185 + 48))(v182, 1, v184))
    {
      goto LABEL_107;
    }

    (*(*(v262 + 208) + 56))(*(v262 + 192), 1, 1, *(v262 + 200));
LABEL_108:
    outlined destroy of OnScreenContent.Document?(*(v262 + 192), &_s5Anvil16RateLimitBudgetsVSgMd, &_s5Anvil16RateLimitBudgetsVSgMR);
    v198 = 0;
LABEL_109:
    outlined destroy of OnScreenContent.Document?(*(v262 + 232), &_s5Anvil28ExternalPartnerAuthenticatorVSgMd, &_s5Anvil28ExternalPartnerAuthenticatorVSgMR);
  }

  else
  {
    v198 = v181;
  }

  v205 = *(v262 + 528);
  v206 = *(v262 + 520);
  v207 = *(v262 + 144);
  outlined init with copy of Date?(v205, v206, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v208 = type metadata accessor for ModelResponse(0);
  v209 = v208[8];
  (v219)(v207 + v209, 1, 1, v220);
  v210 = v208[9];
  *v207 = v261;
  *(v207 + 8) = v228;
  *(v207 + 16) = v237;
  outlined assign with copy of URL?(v206, v207 + v209);
  *(v207 + v210) = v257;
  *(v207 + 32) = v260;
  v211 = (v207 + v208[14]);
  *v211 = 0;
  v211[1] = 0xE000000000000000;
  *(v207 + v208[10]) = v198 & 1;
  *(v207 + v208[11]) = 0;
  v212 = (v207 + v208[12]);
  *v212 = 0;
  v212[1] = 0xE000000000000000;
  outlined destroy of OnScreenContent.Document?(v206, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of OnScreenContent.Document?(v205, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v213 = (v207 + v208[13]);
  *v213 = 0;
  v213[1] = 0xE000000000000000;
  *(v207 + 24) = v227;

  v214 = *(v262 + 8);

  return v214();
}

void *DefaultModelSession.customizeError(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - v3;
  v5 = type metadata accessor for GenerativeError();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v40 = a1;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v13 = swift_dynamicCast();
  v14 = *(v6 + 56);
  if ((v13 & 1) == 0)
  {
    v14(v4, 1, 1, v5);
    outlined destroy of OnScreenContent.Document?(v4, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
LABEL_9:
    v31 = a1;
    return a1;
  }

  v14(v4, 0, 1, v5);
  (*(v6 + 32))(v11, v4, v5);
  v15 = GenerativeError.userFacingLocalizedMessage.getter();
  if (!v16)
  {
    (*(v6 + 8))(v11, v5);
    goto LABEL_9;
  }

  v38 = v16;
  v39 = v15;
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.modelInteraction);
  v18 = *(v6 + 16);
  v18(v9, v11, v5);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v20;
    v22 = v21;
    v35 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40 = v37;
    *v22 = 136315650;
    v23 = _typeName(_:qualified:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v40);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x800000024FE33660, &v40);
    *(v22 + 22) = 2112;
    lazy protocol witness table accessor for type ModelResponse and conformance ModelResponse(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    swift_allocError();
    v18(v26, v9, v5);
    v27 = _swift_stdlib_bridgeErrorToNSError();
    v28 = *(v6 + 8);
    v28(v9, v5);
    *(v22 + 24) = v27;
    v29 = v35;
    *v35 = v27;
    _os_log_impl(&dword_24FD67000, v19, v36, "%s.%s [GenerativeError] throw CustomErrorWithLocalizedDescription error due to: %@", v22, 0x20u);
    outlined destroy of OnScreenContent.Document?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x253057F40](v29, -1, -1);
    v30 = v37;
    swift_arrayDestroy();
    MEMORY[0x253057F40](v30, -1, -1);
    MEMORY[0x253057F40](v22, -1, -1);
  }

  else
  {

    v28 = *(v6 + 8);
    v28(v9, v5);
  }

  MEMORY[0x253056790](v32);
  v33 = objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
  a1 = CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
  v28(v11, v5);
  return a1;
}

uint64_t DefaultModelSession.registerImage(_:uploadProgressCallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for UploadableDocumentData(0);
  v4[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4[8] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v7;
  v4[14] = v6;

  return MEMORY[0x2822009F8](DefaultModelSession.registerImage(_:uploadProgressCallback:), v7, v6);
}

uint64_t DefaultModelSession.registerImage(_:uploadProgressCallback:)(uint64_t a1)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[8];
  IntelligenceFile.fileURL.getter();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v1[8];

    outlined destroy of OnScreenContent.Document?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    v6 = v1[1];

    return v6();
  }

  else
  {
    v9 = v1[10];
    v8 = v1[11];
    v10 = v1[9];
    v12 = v1[6];
    v11 = v1[7];
    v13 = v1[2];
    (*(v9 + 32))(v8, v1[8], v10);
    (*(v9 + 16))(v11, v8, v10);
    v14 = type metadata accessor for UploadableImageData(0);
    outlined init with copy of UploadableMedia.Source(v13 + *(v14 + 28), v11 + *(v12 + 20), type metadata accessor for UploadableMedia.Source);
    v15 = swift_task_alloc();
    v1[15] = v15;
    *v15 = v1;
    v15[1] = DefaultModelSession.registerImage(_:uploadProgressCallback:);
    v16 = v1[7];
    v17 = v1[4];
    v18 = v1[3];

    return DefaultModelSession.registerDocument(_:uploadProgressCallback:)(v16, v18, v17);
  }
}

uint64_t DefaultModelSession.registerImage(_:uploadProgressCallback:)()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  *(*v1 + 128) = v0;

  outlined destroy of UploadableDocumentData(v3, type metadata accessor for UploadableDocumentData);
  v4 = *(v2 + 112);
  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = DefaultModelSession.registerImage(_:uploadProgressCallback:);
  }

  else
  {
    v6 = DefaultModelSession.registerImage(_:uploadProgressCallback:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t DefaultModelSession.registerDocument(_:uploadProgressCallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = *v3;
  type metadata accessor for Locale();
  v4[19] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV7PercentVySf_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySf_GMR);
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v6 = type metadata accessor for DocumentRegistration.Progress();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v7 = type metadata accessor for DocumentRegistration.Status();
  v4[26] = v7;
  v4[27] = *(v7 - 8);
  v4[28] = swift_task_alloc();
  v8 = type metadata accessor for DocumentRegistration();
  v4[29] = v8;
  v4[30] = *(v8 - 8);
  v4[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation20DocumentRegistrationVSgMd, &_s26GenerativeModelsFoundation20DocumentRegistrationVSgMR);
  v4[32] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_13AsyncIteratorSciQxMd, &_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_13AsyncIteratorSciQxMR);
  v4[33] = v9;
  v4[34] = *(v9 - 8);
  v4[35] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_Md, &_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_MR);
  v4[36] = v10;
  v11 = *(v10 - 8);
  v4[37] = v11;
  v4[38] = *(v11 + 64);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v12 = type metadata accessor for URL();
  v4[41] = v12;
  v4[42] = *(v12 - 8);
  v4[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = type metadata accessor for UploadableMedia.Source(0);
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = type metadata accessor for MainActor();
  v4[50] = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[51] = v14;
  v4[52] = v13;

  return MEMORY[0x2822009F8](DefaultModelSession.registerDocument(_:uploadProgressCallback:), v14, v13);
}

uint64_t DefaultModelSession.registerDocument(_:uploadProgressCallback:)()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions22ExtendedAttributeUtilsO_SSSgtGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions22ExtendedAttributeUtilsO_SSSgtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FE1A560;
  *(inited + 32) = 0;
  v4 = *(type metadata accessor for UploadableDocumentData(0) + 20);
  outlined init with copy of UploadableMedia.Source(v2 + v4, v1, type metadata accessor for UploadableMedia.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(v0 + 384);
  if (EnumCaseMultiPayload == 1)
  {
    outlined destroy of OnScreenContent.Document?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v7 = xmmword_24FE1BE10;
  }

  else
  {
    outlined destroy of UploadableDocumentData(v6, type metadata accessor for UploadableMedia.Source);
    v7 = xmmword_24FE1BE00;
  }

  v8 = *(v0 + 376);
  *(inited + 40) = v7;
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26GenerativeAssistantActions22ExtendedAttributeUtilsO_SSSgTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of OnScreenContent.Document?(inited + 32, &_s26GenerativeAssistantActions22ExtendedAttributeUtilsO_SSSgtMd, &_s26GenerativeAssistantActions22ExtendedAttributeUtilsO_SSSgtMR);
  *(v0 + 88) = v9;
  outlined init with copy of UploadableMedia.Source(v2 + v4, v8, type metadata accessor for UploadableMedia.Source);
  v10 = swift_getEnumCaseMultiPayload();
  v11 = *(v0 + 376);
  if (v10 == 1)
  {
    v12 = *(v0 + 352);
    v13 = *(v0 + 360);
    v14 = *(v0 + 328);
    v15 = *(v0 + 336);
    outlined init with take of URL?(v11, v13);
    outlined init with copy of Date?(v13, v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v16 = (*(v15 + 48))(v12, 1, v14);
    v17 = *(v0 + 352);
    if (v16 == 1)
    {
      outlined destroy of OnScreenContent.Document?(*(v0 + 352), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v18 = 0;
      v19 = 1;
    }

    else
    {
      v27 = *(v0 + 328);
      v28 = *(v0 + 336);
      v29 = URL.absoluteString.getter();
      v31 = v30;
      (*(v28 + 8))(v17, v27);
      v19 = v31;
      v18 = v29;
    }

    v32 = *(v0 + 360);
    specialized Dictionary.subscript.setter(v18, v19, 3);
    outlined destroy of OnScreenContent.Document?(v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v26._rawValue = *(v0 + 88);
  }

  else
  {
    v20 = *v11;
    v21 = v11[1];
    v22 = v11[2];
    v23 = v11[3];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, v21, 1, isUniquelyReferenced_nonNull_native);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v23, 2, v25);
    v26._rawValue = v9;
    *(v0 + 88) = v9;
  }

  *(v0 + 424) = v26;
  v34 = *(v0 + 336);
  v33 = *(v0 + 344);
  v35 = *(v0 + 328);
  v36 = *(v0 + 112);
  URL.setExtendedAttributes(_:)(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeModelsFoundation16DocumentResourceVGMd, &_ss23_ContiguousArrayStorageCy26GenerativeModelsFoundation16DocumentResourceVGMR);
  type metadata accessor for DocumentResource();
  *(swift_allocObject() + 16) = xmmword_24FE1A560;
  (*(v34 + 16))(v33, v36, v35);
  DocumentResource.init(url:)();
  v37 = GenerativeExperiencesSession.register(documents:)();

  if (specialized Array._getCount()(v37))
  {
    if (_swift_isClassOrObjCExistentialType())
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v37 & 0xC000000000000001) == 0, v37, &_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_Md, &_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_MR);
      if ((v37 & 0xC000000000000001) != 0)
      {
        v38 = *(v0 + 304);
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v37);
        if (v38 != 8)
        {
          __break(1u);
          return MEMORY[0x282200310](v39, v40, v41, v42, v43, v44);
        }

        v45 = *(v0 + 320);
        v46 = *(v0 + 288);
        v47 = *(v0 + 296);
        *(v0 + 96) = v39;
        v48 = *(v47 + 16);
        v48(v45, v0 + 96, v46);
        swift_unknownObjectRelease();
LABEL_24:

        v54 = *(v0 + 312);
        v53 = *(v0 + 320);
        v55 = *(v0 + 288);
        v56 = *(v0 + 120);
        type metadata accessor for UploadProgressUpdateDebouncer();
        swift_allocObject();
        *(v0 + 432) = UploadProgressUpdateDebouncer.init()();
        v56(0.0);
        v48(v54, v53, v55);
        *(v0 + 440) = swift_getOpaqueTypeConformance2();
        dispatch thunk of AsyncSequence.makeAsyncIterator()();
        *(v0 + 468) = *MEMORY[0x277D0E708];
        *(v0 + 472) = *MEMORY[0x277D0E710];
        v57 = static MainActor.shared.getter();
        *(v0 + 448) = v57;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v59 = swift_task_alloc();
        *(v0 + 456) = v59;
        *v59 = v0;
        v59[1] = DefaultModelSession.registerDocument(_:uploadProgressCallback:);
        v39 = *(v0 + 256);
        v43 = *(v0 + 264);
        v41 = MEMORY[0x277D85700];
        v42 = v0 + 104;
        v40 = v57;
        v44 = AssociatedConformanceWitness;

        return MEMORY[0x282200310](v39, v40, v41, v42, v43, v44);
      }
    }

    else
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, 1, v37, &_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_Md, &_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_MR);
    }

    v52 = *(v0 + 296);
    v48 = *(v52 + 16);
    v48(*(v0 + 320), v37 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), *(v0 + 288));
    goto LABEL_24;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  MetricsUtils.emitSignpostEvent(_:)("Error.RegisterDocument", 22, 2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  SELFUtils.recordRegisterMediaFailed(code:domain:)(1, 8);
  SELFUtils.recordRequestFailed(code:domain:)(1, 3);
  lazy protocol witness table accessor for type DefaultModelSession.SessionError and conformance DefaultModelSession.SessionError();
  swift_allocError();
  *v49 = 1;
  swift_willThrow();

  v50 = *(v0 + 8);

  return v50();
}

{
  v2 = *v1;

  v3 = *(v2 + 408);
  v4 = *(v2 + 416);
  if (v0)
  {
    v5 = DefaultModelSession.registerDocument(_:uploadProgressCallback:);
  }

  else
  {
    v5 = DefaultModelSession.registerDocument(_:uploadProgressCallback:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  v73 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    MetricsUtils.emitSignpostEvent(_:)("Error.RegisterDocumentNeverFinish", 33, 2);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 320);
    v5 = *(v0 + 288);
    v6 = *(v0 + 296);
    SELFUtils.recordRegisterMediaFailed(code:domain:)(2, 8);
    SELFUtils.recordRequestFailed(code:domain:)(2, 3);
    lazy protocol witness table accessor for type DefaultModelSession.SessionError and conformance DefaultModelSession.SessionError();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();

    (*(v6 + 8))(v4, v5);

    v8 = *(v0 + 8);
LABEL_7:

    return v8();
  }

  v10 = *(v0 + 468);
  v12 = *(v0 + 216);
  v11 = *(v0 + 224);
  v13 = *(v0 + 208);
  (*(v3 + 32))(*(v0 + 248), v1, v2);
  DocumentRegistration.status.getter();
  v14 = (*(v12 + 88))(v11, v13);
  if (v14 == v10)
  {
    v15 = *(v0 + 224);
    v16 = *(v0 + 200);
    v17 = *(v0 + 184);
    v18 = *(v0 + 192);
    (*(*(v0 + 216) + 96))(v15, *(v0 + 208));
    (*(v18 + 32))(v16, v15, v17);
    DocumentRegistration.Progress.progress.getter();
    if (one-time initialization token for generativeResponse != -1)
    {
      v71 = v19;
      swift_once();
      v19 = v71;
    }

    v20 = v19 / 100.0;
    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.generativeResponse);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v25 = *(v0 + 168);
      v24 = *(v0 + 176);
      v26 = *(v0 + 160);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v72[0] = v28;
      *v27 = 136315138;
      *(v0 + 464) = v20;
      static Locale.autoupdatingCurrent.getter();
      lazy protocol witness table accessor for type Float and conformance Float();
      FloatingPointFormatStyle.Percent.init(locale:)();
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Float>.Percent and conformance FloatingPointFormatStyle<A>.Percent, &_s10Foundation24FloatingPointFormatStyleV7PercentVySf_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySf_GMR, MEMORY[0x277CC9158]);
      BinaryFloatingPoint.formatted<A>(_:)();
      (*(v25 + 8))(v24, v26);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 72), *(v0 + 80), v72);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_24FD67000, v22, v23, "REGISTERING... progress: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x253057F40](v28, -1, -1);
      MEMORY[0x253057F40](v27, -1, -1);
    }

    v31 = *(v0 + 240);
    v30 = *(v0 + 248);
    v32 = *(v0 + 232);
    v34 = *(v0 + 192);
    v33 = *(v0 + 200);
    v35 = *(v0 + 184);
    (*(v0 + 120))(*(v0 + 432), v20);
    (*(v34 + 8))(v33, v35);
    (*(v31 + 8))(v30, v32);
  }

  else
  {
    if (v14 == *(v0 + 472))
    {
      v37 = *(v0 + 216);
      v36 = *(v0 + 224);
      v38 = *(v0 + 208);

      (*(v37 + 96))(v36, v38);
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.modelInteraction);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      v42 = os_log_type_enabled(v40, v41);
      v43 = *(v0 + 320);
      v44 = *(v0 + 288);
      v45 = *(v0 + 296);
      v47 = *(v0 + 272);
      v46 = *(v0 + 280);
      v48 = *(v0 + 264);
      v70 = *(v0 + 248);
      v69 = *(v0 + 232);
      v49 = (*(v0 + 240) + 8);
      if (v42)
      {
        v68 = *(v0 + 320);
        v50 = swift_slowAlloc();
        v67 = v44;
        v51 = swift_slowAlloc();
        v72[0] = v51;
        *v50 = 136315394;
        v52 = _typeName(_:qualified:)();
        v66 = v48;
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v72);

        *(v50 + 4) = v54;
        *(v50 + 12) = 2080;
        *(v50 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x800000024FE33420, v72);
        _os_log_impl(&dword_24FD67000, v40, v41, "%s.%s finished registering document", v50, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v51, -1, -1);
        MEMORY[0x253057F40](v50, -1, -1);

        (*v49)(v70, v69);
        (*(v47 + 8))(v46, v66);
        (*(v45 + 8))(v68, v67);
      }

      else
      {

        (*v49)(v70, v69);
        (*(v47 + 8))(v46, v48);
        (*(v45 + 8))(v43, v44);
      }

      v64 = *(v0 + 224);
      v65 = type metadata accessor for DocumentResourceIdentifier();
      (*(*(v65 - 8) + 8))(v64, v65);

      v8 = *(v0 + 8);
      goto LABEL_7;
    }

    v55 = *(v0 + 224);
    v56 = *(v0 + 208);
    v57 = *(v0 + 216);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    (*(v57 + 8))(v55, v56);
  }

  v58 = static MainActor.shared.getter();
  *(v0 + 448) = v58;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = swift_task_alloc();
  *(v0 + 456) = v60;
  *v60 = v0;
  v60[1] = DefaultModelSession.registerDocument(_:uploadProgressCallback:);
  v61 = *(v0 + 256);
  v62 = *(v0 + 264);
  v63 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v61, v58, v63, v0 + 104, v62, AssociatedConformanceWitness);
}

{
  v1 = v0[40];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

Swift::Void __swiftcall URL.setExtendedAttributes(_:)(Swift::OpaquePointer a1)
{
  v32 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v32);
  v31 = &v27[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = a1._rawValue + 64;
  v5 = 1 << *(a1._rawValue + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1._rawValue + 8);
  v8 = (v5 + 63) >> 6;
  v30 = (v2 + 8);

  v9 = 0;
  v29 = 0;
  rawValue = a1._rawValue;
  while (v7)
  {
LABEL_10:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    if (*(*(a1._rawValue + 7) + 16 * v12 + 8))
    {
      v13 = *(*(a1._rawValue + 6) + v12);
      v14 = 0x6D696D5F656C6966;
      if (v13 != 2)
      {
        v14 = 0x5F65746973626577;
      }

      v15 = 0xEE00657079745F65;
      if (v13 != 2)
      {
        v15 = 0xEB000000006C7275;
      }

      v16 = 0x745F656372756F73;
      if (v13)
      {
        v16 = 0x6D616E5F656C6966;
      }

      v17 = 0xEB00000000657079;
      if (v13)
      {
        v17 = 0xE900000000000065;
      }

      v18 = v13 <= 1;
      if (v13 <= 1)
      {
        v19 = v16;
      }

      else
      {
        v19 = v14;
      }

      v34 = v19;
      if (v18)
      {
        v20 = v17;
      }

      else
      {
        v20 = v15;
      }

      v21 = v31;
      static String.Encoding.utf8.getter();
      v22 = String.data(using:allowLossyConversion:)();
      v24 = v23;

      (*v30)(v21, v32);
      if (v24 >> 60 == 15)
      {

        a1._rawValue = rawValue;
      }

      else
      {
        v25 = URL.startAccessingSecurityScopedResource()();
        v28 = v25;
        MEMORY[0x28223BE20](v25);
        *&v27[-32] = v22;
        *&v27[-24] = v24;
        *&v27[-16] = v34;
        *&v27[-8] = v20;
        v26 = v29;
        URL.withUnsafeFileSystemRepresentation<A>(_:)();
        v29 = v26;

        if (v28)
        {
          URL.stopAccessingSecurityScopedResource()();
        }

        outlined consume of Data?(v22, v24);
        a1._rawValue = rawValue;
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *&v4[8 * v10];
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t DefaultModelSession.getBlockingResponse(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  v2[4] = swift_task_alloc();
  type metadata accessor for ModelResponse(0);
  v3 = swift_task_alloc();
  v2[5] = v3;
  v4 = type metadata accessor for PromptCompletion();
  v2[6] = v4;
  v2[7] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[8] = v5;
  v2[9] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[10] = v6;
  *v6 = v2;
  v6[1] = DefaultModelSession.getBlockingResponse(_:);

  return MEMORY[0x2821AB608](v3, v5);
}

uint64_t DefaultModelSession.getBlockingResponse(_:)()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = DefaultModelSession.getBlockingResponse(_:);
  }

  else
  {
    outlined destroy of UploadableDocumentData(*(v2 + 40), type metadata accessor for ModelResponse);
    v3 = DefaultModelSession.getBlockingResponse(_:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  (*(v0[7] + 32))(v0[9], v0[8], v0[6]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = DefaultModelSession.getBlockingResponse(_:);
  v2 = v0[9];
  v3 = v0[2];

  return DefaultModelSession.getModelResponse(from:)(v3, v2);
}

{

  return MEMORY[0x2822009F8](DefaultModelSession.getBlockingResponse(_:), 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for OSSignpostID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("ResponseGeneration.Time", 23, 2u, v1);
  outlined destroy of OnScreenContent.Document?(v1, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  SELFUtils.recordGenerativeRequestEnded()();
  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  v6[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6[30] = swift_task_alloc();
  v8 = type metadata accessor for StringResponseSanitizer();
  v6[31] = v8;
  v6[32] = *(v8 - 8);
  v6[33] = swift_task_alloc();
  v9 = type metadata accessor for StringRenderedPromptSanitizer();
  v6[34] = v9;
  v6[35] = *(v9 - 8);
  v6[36] = swift_task_alloc();
  v10 = type metadata accessor for SamplingParameters();
  v6[37] = v10;
  v6[38] = *(v10 - 8);
  v6[39] = swift_task_alloc();
  v11 = swift_allocObject();
  v6[40] = v11;
  v12 = *(a6 + 112);
  *(v11 + 112) = *(a6 + 96);
  *(v11 + 128) = v12;
  *(v11 + 144) = *(a6 + 128);
  v13 = *(a6 + 48);
  *(v11 + 48) = *(a6 + 32);
  *(v11 + 64) = v13;
  v14 = *(a6 + 80);
  *(v11 + 80) = *(a6 + 64);
  *(v11 + 96) = v14;
  v15 = *(a6 + 16);
  *(v11 + 16) = *a6;
  *(v11 + 32) = v15;
  v6[41] = type metadata accessor for MainActor();
  outlined init with copy of IntentCallbackManager(a6, (v6 + 2));
  v6[42] = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[43] = v17;
  v6[44] = v16;

  return MEMORY[0x2822009F8](specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:), v17, v16);
}

{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  v6[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6[30] = swift_task_alloc();
  v8 = type metadata accessor for StringResponseSanitizer();
  v6[31] = v8;
  v6[32] = *(v8 - 8);
  v6[33] = swift_task_alloc();
  v9 = type metadata accessor for StringRenderedPromptSanitizer();
  v6[34] = v9;
  v6[35] = *(v9 - 8);
  v6[36] = swift_task_alloc();
  v10 = type metadata accessor for SamplingParameters();
  v6[37] = v10;
  v6[38] = *(v10 - 8);
  v6[39] = swift_task_alloc();
  v11 = swift_allocObject();
  v6[40] = v11;
  v12 = *(a6 + 112);
  *(v11 + 112) = *(a6 + 96);
  *(v11 + 128) = v12;
  *(v11 + 144) = *(a6 + 128);
  v13 = *(a6 + 48);
  *(v11 + 48) = *(a6 + 32);
  *(v11 + 64) = v13;
  v14 = *(a6 + 80);
  *(v11 + 80) = *(a6 + 64);
  *(v11 + 96) = v14;
  v15 = *(a6 + 16);
  *(v11 + 16) = *a6;
  *(v11 + 32) = v15;
  v6[41] = type metadata accessor for MainActor();
  outlined init with copy of IntentCallbackManager(a6, (v6 + 2));
  v6[42] = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[43] = v17;
  v6[44] = v16;

  return MEMORY[0x2822009F8](specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:), v17, v16);
}

{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  v6[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6[30] = swift_task_alloc();
  v8 = type metadata accessor for StringResponseSanitizer();
  v6[31] = v8;
  v6[32] = *(v8 - 8);
  v6[33] = swift_task_alloc();
  v9 = type metadata accessor for StringRenderedPromptSanitizer();
  v6[34] = v9;
  v6[35] = *(v9 - 8);
  v6[36] = swift_task_alloc();
  v10 = type metadata accessor for SamplingParameters();
  v6[37] = v10;
  v6[38] = *(v10 - 8);
  v6[39] = swift_task_alloc();
  v11 = swift_allocObject();
  v6[40] = v11;
  v12 = *(a6 + 112);
  *(v11 + 112) = *(a6 + 96);
  *(v11 + 128) = v12;
  *(v11 + 144) = *(a6 + 128);
  v13 = *(a6 + 48);
  *(v11 + 48) = *(a6 + 32);
  *(v11 + 64) = v13;
  v14 = *(a6 + 80);
  *(v11 + 80) = *(a6 + 64);
  *(v11 + 96) = v14;
  v15 = *(a6 + 16);
  *(v11 + 16) = *a6;
  *(v11 + 32) = v15;
  v6[41] = type metadata accessor for MainActor();
  outlined init with copy of IntentCallbackManager(a6, (v6 + 2));
  v6[42] = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[43] = v17;
  v6[44] = v16;

  return MEMORY[0x2822009F8](specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:), v17, v16);
}

{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  v6[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6[30] = swift_task_alloc();
  v8 = type metadata accessor for StringResponseSanitizer();
  v6[31] = v8;
  v6[32] = *(v8 - 8);
  v6[33] = swift_task_alloc();
  v9 = type metadata accessor for StringRenderedPromptSanitizer();
  v6[34] = v9;
  v6[35] = *(v9 - 8);
  v6[36] = swift_task_alloc();
  v10 = type metadata accessor for SamplingParameters();
  v6[37] = v10;
  v6[38] = *(v10 - 8);
  v6[39] = swift_task_alloc();
  v11 = swift_allocObject();
  v6[40] = v11;
  v12 = *(a6 + 112);
  *(v11 + 112) = *(a6 + 96);
  *(v11 + 128) = v12;
  *(v11 + 144) = *(a6 + 128);
  v13 = *(a6 + 48);
  *(v11 + 48) = *(a6 + 32);
  *(v11 + 64) = v13;
  v14 = *(a6 + 80);
  *(v11 + 80) = *(a6 + 64);
  *(v11 + 96) = v14;
  v15 = *(a6 + 16);
  *(v11 + 16) = *a6;
  *(v11 + 32) = v15;
  v6[41] = type metadata accessor for MainActor();
  outlined init with copy of IntentCallbackManager(a6, (v6 + 2));
  v6[42] = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[43] = v17;
  v6[44] = v16;

  return MEMORY[0x2822009F8](specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:), v17, v16);
}

uint64_t specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:)()
{
  v40 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0[45] = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("ResponseGeneration.Time", 23, 2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v4 = v0[30];
  v5 = v0[26];
  v6 = v0[27];
  v7 = static SELFUtils.shared;
  v0[46] = static SELFUtils.shared;
  specialized SELFUtils.recordGenerativeRequestStarted(usecase:mediaQAUseCase:llmAgentName:)(0x100000000, 0x100000000);
  v8 = *(v6 + 112);
  v36 = *(v6 + 104);
  v37 = v8;
  v38 = 0;
  v39 = 3;

  IntentCallbackManager.updateIntentProgress(to:)(&v36);
  outlined consume of GenerativeAssistantProgressLevel(v36, v37, v38, v39);
  (*(v1 + 16))(v2, v5 + OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_samplingParameters, v3);
  GenerativeAssistantUseCase.promptSanitizer.getter();
  GenerativeAssistantUseCase.responseSanitizer.getter();
  v9 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatClientTraceID;
  swift_beginAccess();
  outlined init with copy of Date?(v7 + v9, v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v4, 1, v10);
  v13 = v0[30];
  if (v12 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v0[30], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    UUID.uuidString.getter();
    (*(v11 + 8))(v13, v10);
  }

  v35 = v0[40];
  v14 = v0[38];
  v29 = v0[36];
  v30 = v0[39];
  v15 = v0[35];
  v16 = v0[32];
  v17 = v0[33];
  v31 = v0[31];
  v33 = v0[37];
  v34 = v0[29];
  v18 = v0[26];
  v32 = v0[34];
  v20 = v0[23];
  v19 = v0[24];
  type metadata accessor for ModelResponse(0);
  v21 = swift_task_alloc();
  v21[2] = v20;
  v21[3] = v19;
  v21[4] = v18;
  lazy protocol witness table accessor for type ModelResponse and conformance ModelResponse(&lazy protocol witness table cache variable for type ModelResponse and conformance ModelResponse, type metadata accessor for ModelResponse, &protocol conformance descriptor for ModelResponse);
  v0[47] = GenerativeExperiencesSession.complete<A>(generating:parameters:promptSanitizer:responseSanitizer:clientRequestID:prompt:)();

  (*(v16 + 8))(v17, v31);
  (*(v15 + 8))(v29, v32);
  (*(v14 + 8))(v30, v33);
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v34, 1, 1, v22);

  v23 = static MainActor.shared.getter();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v18;
  v24[5] = partial apply for implicit closure #4 in implicit closure #3 in closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v24[6] = v35;
  v0[48] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v34, &closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:)partial apply, v24);
  v26 = swift_task_alloc();
  v0[49] = v26;
  *v26 = v0;
  v26[1] = specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:);
  v27 = v0[22];

  return DefaultModelSession.getBlockingResponse(_:)(v27);
}

{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 352);
  v4 = *(v2 + 344);
  if (v0)
  {
    v5 = specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:);
  }

  else
  {
    v5 = specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[48];
  v2 = v0[27];

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x2530571A0](v1, MEMORY[0x277D84F78] + 8, v3, MEMORY[0x277D84950]);

  outlined destroy of IntentCallbackManager(v2);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[50];
  v2 = v0[48];
  v4 = v0[27];
  v3 = v0[28];

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x2530571A0](v2, MEMORY[0x277D84F78] + 8, v5, MEMORY[0x277D84950]);

  v6 = type metadata accessor for OSSignpostID();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("ResponseGeneration.Time", 23, 2u, v3);
  outlined destroy of OnScreenContent.Document?(v3, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  MetricsUtils.emitSignpostEvent(_:)("Error.GMS.GenerativeResultFailed", 32, 2);
  SELFUtils.recordGenerativeRequestFailed(code:domain:)(100, 9);
  DefaultModelSession.customizeError(_:)(v1);
  swift_willThrow();

  outlined destroy of IntentCallbackManager(v4);

  v7 = v0[1];

  return v7();
}

{
  v40 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0[45] = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("ResponseGeneration.Time", 23, 2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v4 = v0[30];
  v5 = v0[26];
  v6 = v0[27];
  v7 = static SELFUtils.shared;
  v0[46] = static SELFUtils.shared;
  specialized SELFUtils.recordGenerativeRequestStarted(usecase:mediaQAUseCase:llmAgentName:)(0x100000000, 0x100000000);
  v8 = *(v6 + 112);
  v36 = *(v6 + 104);
  v37 = v8;
  v38 = 0;
  v39 = 3;

  IntentCallbackManager.updateIntentProgress(to:)(&v36);
  outlined consume of GenerativeAssistantProgressLevel(v36, v37, v38, v39);
  (*(v1 + 16))(v2, v5 + OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_samplingParameters, v3);
  GenerativeAssistantUseCase.promptSanitizer.getter();
  GenerativeAssistantUseCase.responseSanitizer.getter();
  v9 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatClientTraceID;
  swift_beginAccess();
  outlined init with copy of Date?(v7 + v9, v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v4, 1, v10);
  v13 = v0[30];
  if (v12 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v0[30], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    UUID.uuidString.getter();
    (*(v11 + 8))(v13, v10);
  }

  v35 = v0[40];
  v14 = v0[38];
  v29 = v0[36];
  v30 = v0[39];
  v15 = v0[35];
  v16 = v0[32];
  v17 = v0[33];
  v31 = v0[31];
  v33 = v0[37];
  v34 = v0[29];
  v18 = v0[26];
  v32 = v0[34];
  v20 = v0[23];
  v19 = v0[24];
  type metadata accessor for ModelResponse(0);
  v21 = swift_task_alloc();
  v21[2] = v20;
  v21[3] = v19;
  v21[4] = v18;
  lazy protocol witness table accessor for type ModelResponse and conformance ModelResponse(&lazy protocol witness table cache variable for type ModelResponse and conformance ModelResponse, type metadata accessor for ModelResponse, &protocol conformance descriptor for ModelResponse);
  v0[47] = GenerativeExperiencesSession.complete<A>(generating:parameters:promptSanitizer:responseSanitizer:clientRequestID:prompt:)();

  (*(v16 + 8))(v17, v31);
  (*(v15 + 8))(v29, v32);
  (*(v14 + 8))(v30, v33);
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v34, 1, 1, v22);

  v23 = static MainActor.shared.getter();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v18;
  v24[5] = partial apply for implicit closure #4 in implicit closure #3 in closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v24[6] = v35;
  v0[48] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v34, &closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:)partial apply, v24);
  v26 = swift_task_alloc();
  v0[49] = v26;
  *v26 = v0;
  v26[1] = specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:);
  v27 = v0[22];

  return DefaultModelSession.getBlockingResponse(_:)(v27);
}

{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 352);
  v4 = *(v2 + 344);
  if (v0)
  {
    v5 = specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:);
  }

  else
  {
    v5 = specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v40 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0[45] = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("ResponseGeneration.Time", 23, 2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v4 = v0[30];
  v5 = v0[26];
  v6 = v0[27];
  v7 = static SELFUtils.shared;
  v0[46] = static SELFUtils.shared;
  specialized SELFUtils.recordGenerativeRequestStarted(usecase:mediaQAUseCase:llmAgentName:)(0x100000000, 0x100000000);
  v8 = *(v6 + 112);
  v36 = *(v6 + 104);
  v37 = v8;
  v38 = 0;
  v39 = 3;

  IntentCallbackManager.updateIntentProgress(to:)(&v36);
  outlined consume of GenerativeAssistantProgressLevel(v36, v37, v38, v39);
  (*(v1 + 16))(v2, v5 + OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_samplingParameters, v3);
  GenerativeAssistantUseCase.promptSanitizer.getter();
  GenerativeAssistantUseCase.responseSanitizer.getter();
  v9 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatClientTraceID;
  swift_beginAccess();
  outlined init with copy of Date?(v7 + v9, v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v4, 1, v10);
  v13 = v0[30];
  if (v12 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v0[30], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    UUID.uuidString.getter();
    (*(v11 + 8))(v13, v10);
  }

  v35 = v0[40];
  v14 = v0[38];
  v29 = v0[36];
  v30 = v0[39];
  v15 = v0[35];
  v16 = v0[32];
  v17 = v0[33];
  v31 = v0[31];
  v33 = v0[37];
  v34 = v0[29];
  v18 = v0[26];
  v32 = v0[34];
  v20 = v0[23];
  v19 = v0[24];
  type metadata accessor for ModelResponse(0);
  v21 = swift_task_alloc();
  v21[2] = v20;
  v21[3] = v19;
  v21[4] = v18;
  lazy protocol witness table accessor for type ModelResponse and conformance ModelResponse(&lazy protocol witness table cache variable for type ModelResponse and conformance ModelResponse, type metadata accessor for ModelResponse, &protocol conformance descriptor for ModelResponse);
  v0[47] = GenerativeExperiencesSession.complete<A>(generating:parameters:promptSanitizer:responseSanitizer:clientRequestID:prompt:)();

  (*(v16 + 8))(v17, v31);
  (*(v15 + 8))(v29, v32);
  (*(v14 + 8))(v30, v33);
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v34, 1, 1, v22);

  v23 = static MainActor.shared.getter();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v18;
  v24[5] = partial apply for implicit closure #4 in implicit closure #3 in closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v24[6] = v35;
  v0[48] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v34, &closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:)partial apply, v24);
  v26 = swift_task_alloc();
  v0[49] = v26;
  *v26 = v0;
  v26[1] = specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:);
  v27 = v0[22];

  return DefaultModelSession.getBlockingResponse(_:)(v27);
}

{
  v40 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0[45] = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("ResponseGeneration.Time", 23, 2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v4 = v0[30];
  v5 = v0[26];
  v6 = v0[27];
  v7 = static SELFUtils.shared;
  v0[46] = static SELFUtils.shared;
  specialized SELFUtils.recordGenerativeRequestStarted(usecase:mediaQAUseCase:llmAgentName:)(0x100000000, 0x100000000);
  v8 = *(v6 + 112);
  v36 = *(v6 + 104);
  v37 = v8;
  v38 = 0;
  v39 = 3;

  IntentCallbackManager.updateIntentProgress(to:)(&v36);
  outlined consume of GenerativeAssistantProgressLevel(v36, v37, v38, v39);
  (*(v1 + 16))(v2, v5 + OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_samplingParameters, v3);
  GenerativeAssistantUseCase.promptSanitizer.getter();
  GenerativeAssistantUseCase.responseSanitizer.getter();
  v9 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatClientTraceID;
  swift_beginAccess();
  outlined init with copy of Date?(v7 + v9, v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v4, 1, v10);
  v13 = v0[30];
  if (v12 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v0[30], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    UUID.uuidString.getter();
    (*(v11 + 8))(v13, v10);
  }

  v35 = v0[40];
  v14 = v0[38];
  v29 = v0[36];
  v30 = v0[39];
  v15 = v0[35];
  v16 = v0[32];
  v17 = v0[33];
  v31 = v0[31];
  v33 = v0[37];
  v34 = v0[29];
  v18 = v0[26];
  v32 = v0[34];
  v20 = v0[23];
  v19 = v0[24];
  type metadata accessor for ModelResponse(0);
  v21 = swift_task_alloc();
  v21[2] = v20;
  v21[3] = v19;
  v21[4] = v18;
  lazy protocol witness table accessor for type ModelResponse and conformance ModelResponse(&lazy protocol witness table cache variable for type ModelResponse and conformance ModelResponse, type metadata accessor for ModelResponse, &protocol conformance descriptor for ModelResponse);
  v0[47] = GenerativeExperiencesSession.complete<A>(generating:parameters:promptSanitizer:responseSanitizer:clientRequestID:prompt:)();

  (*(v16 + 8))(v17, v31);
  (*(v15 + 8))(v29, v32);
  (*(v14 + 8))(v30, v33);
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v34, 1, 1, v22);

  v23 = static MainActor.shared.getter();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v18;
  v24[5] = partial apply for implicit closure #4 in implicit closure #3 in closure #2 in ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:);
  v24[6] = v35;
  v0[48] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v34, &closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:)partial apply, v24);
  v26 = swift_task_alloc();
  v0[49] = v26;
  *v26 = v0;
  v26[1] = specialized DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:);
  v27 = v0[22];

  return DefaultModelSession.getBlockingResponse(_:)(v27);
}

uint64_t closure #1 in DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v20 = a2;
  v28 = a4;
  v24 = type metadata accessor for User();
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ChatMessagePrompt();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ChatMessagesPrompt();
  v11 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v27 = v20;
  v14 = v22;
  User.init(_:)();
  v22 = v14;
  MEMORY[0x253056D90](v25 + OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_siriLocale);
  (*(v21 + 8))(v6, v24);
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v8 + 8))(v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMR);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24FE1A560;
  v17 = v16 + v15;
  v18 = v23;
  (*(v11 + 16))(v17, v13, v23);
  MEMORY[0x253056D00](v16);

  return (*(v11 + 8))(v13, v18);
}

uint64_t DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[37] = a8;
  v9[38] = v8;
  v9[35] = a6;
  v9[36] = a7;
  v9[33] = a4;
  v9[34] = a5;
  v9[31] = a2;
  v9[32] = a3;
  v9[30] = a1;
  v9[39] = *v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  v9[40] = swift_task_alloc();
  v10 = type metadata accessor for PromptCompletion();
  v9[41] = v10;
  v9[42] = *(v10 - 8);
  v9[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions13ModelResponseVSgMd, &_s26GenerativeAssistantActions13ModelResponseVSgMR);
  v9[44] = swift_task_alloc();
  v9[45] = swift_task_alloc();
  v11 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  v9[46] = v11;
  v9[47] = *(v11 - 8);
  v9[48] = swift_task_alloc();
  v9[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9[50] = swift_task_alloc();
  v12 = type metadata accessor for ModelResponse(0);
  v9[51] = v12;
  v9[52] = *(v12 - 8);
  v9[53] = swift_task_alloc();
  v9[54] = swift_task_alloc();
  v9[55] = swift_task_alloc();
  v9[56] = swift_task_alloc();
  v9[57] = swift_task_alloc();
  v13 = type metadata accessor for Field.FieldType();
  v9[58] = v13;
  v9[59] = *(v13 - 8);
  v9[60] = swift_task_alloc();
  v14 = type metadata accessor for Field();
  v9[61] = v14;
  v9[62] = *(v14 - 8);
  v9[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4Sage5FieldVSgMd, &_s4Sage5FieldVSgMR);
  v9[64] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4Sage18TokenStreamHandlerC6stream6fieldsSayQrGSaySSG_tFQOy26GenerativeAssistantActions13ModelResponseV_Qo_13AsyncIteratorSciQxMd, &_s4Sage18TokenStreamHandlerC6stream6fieldsSayQrGSaySSG_tFQOy26GenerativeAssistantActions13ModelResponseV_Qo_13AsyncIteratorSciQxMR);
  v9[65] = v15;
  v9[66] = *(v15 - 8);
  v9[67] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4Sage18TokenStreamHandlerC6stream6fieldsSayQrGSaySSG_tFQOy26GenerativeAssistantActions13ModelResponseV_Qo_Md, &_s4Sage18TokenStreamHandlerC6stream6fieldsSayQrGSaySSG_tFQOy26GenerativeAssistantActions13ModelResponseV_Qo_MR);
  v9[68] = v16;
  v17 = *(v16 - 8);
  v9[69] = v17;
  v9[70] = *(v17 + 64);
  v9[71] = swift_task_alloc();
  v9[72] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9[73] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9[74] = swift_task_alloc();
  v18 = type metadata accessor for StringResponseSanitizer();
  v9[75] = v18;
  v9[76] = *(v18 - 8);
  v9[77] = swift_task_alloc();
  v19 = type metadata accessor for StringRenderedPromptSanitizer();
  v9[78] = v19;
  v9[79] = *(v19 - 8);
  v9[80] = swift_task_alloc();
  v20 = type metadata accessor for SamplingParameters();
  v9[81] = v20;
  v9[82] = *(v20 - 8);
  v9[83] = swift_task_alloc();
  v21 = type metadata accessor for User();
  v9[84] = v21;
  v9[85] = *(v21 - 8);
  v9[86] = swift_task_alloc();
  v22 = type metadata accessor for ChatMessagePrompt();
  v9[87] = v22;
  v9[88] = *(v22 - 8);
  v9[89] = swift_task_alloc();
  v9[90] = swift_task_alloc();
  v9[91] = swift_task_alloc();
  v9[92] = type metadata accessor for MainActor();
  v9[93] = static MainActor.shared.getter();
  v24 = dispatch thunk of Actor.unownedExecutor.getter();
  v9[94] = v24;
  v9[95] = v23;

  return MEMORY[0x2822009F8](DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:), v24, v23);
}

uint64_t DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v0 + 768) = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("ResponseGeneration.Time", 23, 2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v3 = static SELFUtils.shared;
  *(v0 + 776) = static SELFUtils.shared;
  v75 = v3;
  specialized SELFUtils.recordGenerativeRequestStarted(usecase:mediaQAUseCase:llmAgentName:)(0x100000000, 0x100000000);
  v1();
  v4 = *(v0 + 304);
  if (v2)
  {
    v6 = *(v0 + 248);
    v5 = *(v0 + 256);
    v7 = *(v0 + 240);
    v8 = swift_task_alloc();
    v8[2] = v5;
    v8[3] = v7;
    v8[4] = v6;
    v9 = v5;
    User.init(_:)();

    MEMORY[0x253056D90](v4 + OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_siriLocale);
  }

  else
  {
    v11 = *(v0 + 240);
    v10 = *(v0 + 248);
    v12 = swift_task_alloc();
    *(v12 + 16) = v11;
    *(v12 + 24) = v10;
    User.init(_:)();

    MEMORY[0x253056D90](v4 + OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_siriLocale);
  }

  v13 = *(v0 + 728);
  v14 = *(v0 + 720);
  v15 = *(v0 + 712);
  v16 = *(v0 + 704);
  v17 = *(v0 + 696);
  (*(*(v0 + 680) + 8))(*(v0 + 688), *(v0 + 672));
  v74 = *(v16 + 32);
  v74(v13, v14, v17);
  (*(v16 + 16))(v15, v13, v17);
  v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v18);
  }

  v21 = *(v0 + 712);
  v22 = *(v0 + 704);
  v23 = *(v0 + 696);
  v24 = *(v0 + 664);
  v25 = *(v0 + 656);
  v26 = *(v0 + 648);
  v73 = *(v0 + 592);
  v27 = *(v0 + 304);
  v18[2] = v20 + 1;
  v74(v18 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v20, v21, v23);
  *(v0 + 216) = v18;
  (*(v25 + 16))(v24, v27 + OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_samplingParameters, v26);
  GenerativeAssistantUseCase.promptSanitizer.getter();
  GenerativeAssistantUseCase.responseSanitizer.getter();
  v28 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatClientTraceID;
  swift_beginAccess();
  outlined init with copy of Date?(v75 + v28, v73, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v29 = type metadata accessor for UUID();
  v30 = *(v29 - 8);
  v31 = (*(v30 + 48))(v73, 1, v29);
  v32 = *(v0 + 592);
  if (v31 == 1)
  {
    outlined destroy of OnScreenContent.Document?(*(v0 + 592), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    UUID.uuidString.getter();
    (*(v30 + 8))(v32, v29);
  }

  v33 = *(v0 + 664);
  v34 = *(v0 + 656);
  v35 = *(v0 + 640);
  v36 = *(v0 + 632);
  v68 = *(v0 + 624);
  v69 = *(v0 + 648);
  v37 = *(v0 + 616);
  v38 = *(v0 + 608);
  v67 = *(v0 + 600);
  v70 = *(v0 + 584);
  v71 = *(v0 + 304);
  v72 = *(v0 + 280);
  v76 = *(v0 + 272);
  *(swift_task_alloc() + 16) = v0 + 216;
  v66 = lazy protocol witness table accessor for type ModelResponse and conformance ModelResponse(&lazy protocol witness table cache variable for type ModelResponse and conformance ModelResponse, type metadata accessor for ModelResponse, &protocol conformance descriptor for ModelResponse);
  *(v0 + 784) = GenerativeExperiencesSession.complete<A>(generating:parameters:promptSanitizer:responseSanitizer:clientRequestID:prompt:)();

  (*(v38 + 8))(v37, v67);
  (*(v36 + 8))(v35, v68);
  (*(v34 + 8))(v33, v69);
  v39 = type metadata accessor for TaskPriority();
  (*(*(v39 - 8) + 56))(v70, 1, 1, v39);

  v40 = static MainActor.shared.getter();
  v41 = swift_allocObject();
  v42 = MEMORY[0x277D85700];
  v41[2] = v40;
  v41[3] = v42;
  v41[4] = v71;
  v41[5] = v76;
  v41[6] = v72;
  *(v0 + 792) = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v70, &async function pointer to partial apply for closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:), v41);
  if (GenerativeAssistantFeatureFlagManager.isTextContentStreamEnabled.getter())
  {
    v43 = TokenStreamHandler.stream(fields:)();
    if (_swift_isClassOrObjCExistentialType())
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v43 & 0xC000000000000001) == 0, v43, &_s4Sage18TokenStreamHandlerC6stream6fieldsSayQrGSaySSG_tFQOy26GenerativeAssistantActions13ModelResponseV_Qo_Md, &_s4Sage18TokenStreamHandlerC6stream6fieldsSayQrGSaySSG_tFQOy26GenerativeAssistantActions13ModelResponseV_Qo_MR);
      if ((v43 & 0xC000000000000001) != 0)
      {
        v44 = *(v0 + 560);
        v45 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v43);
        if (v44 != 8)
        {
          __break(1u);
          return MEMORY[0x282200310](v45, v46, v47, v48, v49, v50);
        }

        v51 = *(v0 + 576);
        v52 = *(v0 + 552);
        v53 = *(v0 + 544);
        *(v0 + 224) = v45;
        v54 = *(v52 + 16);
        v54(v51, v0 + 224, v53);
        swift_unknownObjectRelease();
LABEL_23:

        v59 = *(v0 + 576);
        v60 = *(v0 + 568);
        v61 = *(v0 + 544);
        v62 = *(v0 + 408);
        *(v0 + 40) = 0;
        *(v0 + 48) = 0xE000000000000000;
        v54(v60, v59, v61);
        *(v0 + 56) = v62;
        *(v0 + 64) = v66;
        *(v0 + 800) = swift_getOpaqueTypeConformance2();
        dispatch thunk of AsyncSequence.makeAsyncIterator()();
        *(v0 + 864) = *MEMORY[0x277D4B398];
        *(v0 + 808) = 0xE000000000000000;
        v63 = static MainActor.shared.getter();
        *(v0 + 816) = v63;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v65 = swift_task_alloc();
        *(v0 + 824) = v65;
        *v65 = v0;
        v65[1] = DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:);
        v49 = *(v0 + 520);
        v45 = *(v0 + 512);
        v47 = MEMORY[0x277D85700];
        v48 = v0 + 232;
        v46 = v63;
        v50 = AssociatedConformanceWitness;

        return MEMORY[0x282200310](v45, v46, v47, v48, v49, v50);
      }
    }

    else
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, 1, v43, &_s4Sage18TokenStreamHandlerC6stream6fieldsSayQrGSaySSG_tFQOy26GenerativeAssistantActions13ModelResponseV_Qo_Md, &_s4Sage18TokenStreamHandlerC6stream6fieldsSayQrGSaySSG_tFQOy26GenerativeAssistantActions13ModelResponseV_Qo_MR);
    }

    v58 = *(v0 + 552);
    v54 = *(v58 + 16);
    v54(*(v0 + 576), v43 + ((*(v58 + 80) + 32) & ~*(v58 + 80)), *(v0 + 544));
    goto LABEL_23;
  }

  v55 = swift_task_alloc();
  *(v0 + 848) = v55;
  *v55 = v0;
  v55[1] = DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:);
  v56 = *(v0 + 352);

  return DefaultModelSession.getBlockingResponse(_:)(v56);
}

{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 760);
    v4 = *(v2 + 752);
    v5 = DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:);
  }

  else
  {

    v3 = *(v2 + 760);
    v4 = *(v2 + 752);
    v5 = DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = *(v0 + 512);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));

    v4 = swift_task_alloc();
    *(v0 + 832) = v4;
    *v4 = v0;
    v4[1] = DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:);
    v5 = *(v0 + 440);
    v6 = *(v0 + 344);

    return MEMORY[0x2821AB610](v5, v6);
  }

  else
  {
    v7 = *(v0 + 864);
    v9 = *(v0 + 472);
    v8 = *(v0 + 480);
    v10 = *(v0 + 464);
    (*(v3 + 32))(*(v0 + 504), v1, v2);
    Field.data.getter();
    if ((*(v9 + 88))(v8, v10) == v7)
    {
      v11 = *(v0 + 480);
      v12 = *(v0 + 456);
      v14 = *(v0 + 400);
      v13 = *(v0 + 408);
      v15 = *(v0 + 392);
      v61 = *(v0 + 384);
      (*(*(v0 + 472) + 96))(v11, *(v0 + 464));
      v16 = v11[1];
      *(v0 + 72) = *v11;
      *(v0 + 80) = v16;
      *(v0 + 88) = 28252;
      *(v0 + 96) = 0xE200000000000000;
      *(v0 + 104) = 10;
      *(v0 + 112) = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v19 = v18;

      *(v0 + 120) = v17;
      *(v0 + 128) = v19;
      *(v0 + 136) = 92;
      *(v0 + 144) = 0xE100000000000000;
      *(v0 + 152) = 0;
      *(v0 + 160) = 0xE000000000000000;
      v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v22 = v21;

      *(v0 + 168) = v20;
      *(v0 + 176) = v22;
      *(v0 + 184) = 8796;
      *(v0 + 192) = 0xE200000000000000;
      *(v0 + 200) = 34;
      *(v0 + 208) = 0xE100000000000000;
      v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v25 = v24;

      MEMORY[0x253056FE0](v23, v25);

      v26 = type metadata accessor for URL();
      v27 = *(*(v26 - 8) + 56);
      v27(v14, 1, 1, v26);
      v28 = v13[8];
      v27(v12 + v28, 1, 1, v26);
      v29 = v13[9];
      *(v12 + 8) = 0;
      *(v12 + 16) = 0xE000000000000000;
      outlined assign with copy of URL?(v14, v12 + v28);
      v30 = MEMORY[0x277D84F90];
      *(v12 + v29) = MEMORY[0x277D84F90];
      *(v12 + 32) = v30;
      *(v12 + v13[10]) = 0;
      *(v12 + v13[11]) = 0;
      v31 = (v12 + v13[12]);
      *v31 = 0;
      v31[1] = 0xE000000000000000;
      outlined destroy of OnScreenContent.Document?(v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v32 = (v12 + v13[13]);
      *v32 = 0;
      v32[1] = 0xE000000000000000;
      *(v12 + 24) = 0;
      v33 = *(v0 + 48);
      v59 = *(v0 + 40);
      *v15 = v59;
      v15[1] = v33;
      swift_storeEnumTagMultiPayload();
      outlined init with copy of UploadableMedia.Source(v15, v61, type metadata accessor for GeneratedResponse.RichContentEntity);
      swift_bridgeObjectRetain_n();
      v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v30);
      v36 = v34[2];
      v35 = v34[3];
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v34);
        v37 = v36 + 1;
        v34 = v55;
      }

      v38 = *(v0 + 496);
      v60 = *(v0 + 488);
      v62 = *(v0 + 504);
      v39 = *(v0 + 456);
      v41 = *(v0 + 408);
      v40 = *(v0 + 416);
      v42 = *(v0 + 384);
      v43 = *(v0 + 376);
      v44 = *(v0 + 360);
      v58 = *(v0 + 392);
      v57 = *(v0 + 288);
      v45 = (v39 + *(v41 + 56));
      v34[2] = v37;
      outlined init with take of ModelResponse(v42, v34 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v36, type metadata accessor for GeneratedResponse.RichContentEntity);
      *v39 = v34;
      *v45 = v59;
      v45[1] = v33;
      outlined init with copy of UploadableMedia.Source(v39, v44, type metadata accessor for ModelResponse);
      (*(v40 + 56))(v44, 0, 1, v41);
      v57(v44);
      outlined destroy of OnScreenContent.Document?(v44, &_s26GenerativeAssistantActions13ModelResponseVSgMd, &_s26GenerativeAssistantActions13ModelResponseVSgMR);
      outlined destroy of UploadableDocumentData(v58, type metadata accessor for GeneratedResponse.RichContentEntity);
      (*(v38 + 8))(v62, v60);
      outlined destroy of UploadableDocumentData(v39, type metadata accessor for ModelResponse);
    }

    else
    {
      v46 = *(v0 + 480);
      v47 = *(v0 + 464);
      v48 = *(v0 + 472);
      (*(*(v0 + 496) + 8))(*(v0 + 504), *(v0 + 488));
      (*(v48 + 8))(v46, v47);
      v33 = *(v0 + 808);
    }

    *(v0 + 808) = v33;
    v49 = static MainActor.shared.getter();
    *(v0 + 816) = v49;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v51 = swift_task_alloc();
    *(v0 + 824) = v51;
    *v51 = v0;
    v51[1] = DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:);
    v52 = *(v0 + 520);
    v53 = *(v0 + 512);
    v54 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v53, v49, v54, v0 + 232, v52, AssociatedConformanceWitness);
  }
}

{
  v2 = *v1;
  *(*v1 + 840) = v0;

  if (v0)
  {
    v3 = v2[95];
    v4 = v2[94];
    v5 = DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:);
  }

  else
  {
    (*(v2[42] + 8))(v2[43], v2[41]);
    v3 = v2[95];
    v4 = v2[94];
    v5 = DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v40 = v0;
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[51];
  v4 = v0[52];
  v5 = v0[45];
  v6 = v0[36];

  outlined init with take of ModelResponse(v1, v2, type metadata accessor for ModelResponse);
  outlined init with copy of UploadableMedia.Source(v2, v5, type metadata accessor for ModelResponse);
  v7 = *(v4 + 56);
  v7(v5, 0, 1, v3);
  v6(v5);
  outlined destroy of OnScreenContent.Document?(v5, &_s26GenerativeAssistantActions13ModelResponseVSgMd, &_s26GenerativeAssistantActions13ModelResponseVSgMR);
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v8 = v0[56];
  v9 = v0[54];
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.modelInteraction);
  outlined init with copy of UploadableMedia.Source(v8, v9, type metadata accessor for ModelResponse);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[54];
  if (v13)
  {
    v15 = v0[53];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v39[0] = v17;
    *v16 = 136315650;
    v18 = _typeName(_:qualified:)();
    v20 = v7;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v39);

    *(v16 + 4) = v21;
    v7 = v20;
    *(v16 + 12) = 2080;
    *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000061, 0x800000024FE335A0, v39);
    *(v16 + 22) = 2080;
    outlined init with copy of UploadableMedia.Source(v14, v15, type metadata accessor for ModelResponse);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    outlined destroy of UploadableDocumentData(v14, type metadata accessor for ModelResponse);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v39);

    *(v16 + 24) = v25;
    _os_log_impl(&dword_24FD67000, v11, v12, "%s.%s FINAL CONTENT: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v17, -1, -1);
    MEMORY[0x253057F40](v16, -1, -1);
  }

  else
  {

    outlined destroy of UploadableDocumentData(v14, type metadata accessor for ModelResponse);
  }

  v26 = v0[72];
  v27 = v0[69];
  v28 = v0[68];
  v29 = v0[56];
  v30 = v0[45];
  v31 = v0[36];
  v7(v30, 1, 1, v0[51]);
  v31(v30);
  outlined destroy of OnScreenContent.Document?(v30, &_s26GenerativeAssistantActions13ModelResponseVSgMd, &_s26GenerativeAssistantActions13ModelResponseVSgMR);
  outlined destroy of UploadableDocumentData(v29, type metadata accessor for ModelResponse);
  (*(v27 + 8))(v26, v28);
  v32 = v0[99];
  v33 = v0[91];
  v34 = v0[88];
  v35 = v0[87];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x2530571A0](v32, MEMORY[0x277D84F78] + 8, v36, MEMORY[0x277D84950]);

  (*(v34 + 8))(v33, v35);

  v37 = v0[1];

  return v37();
}

{
  v2 = *v1;
  *(*v1 + 856) = v0;

  v3 = *(v2 + 760);
  v4 = *(v2 + 752);
  if (v0)
  {
    v5 = DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:);
  }

  else
  {
    v5 = DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[44];
  v4 = v0[36];

  (*(v2 + 56))(v3, 0, 1, v1);
  v4(v3);
  outlined destroy of OnScreenContent.Document?(v3, &_s26GenerativeAssistantActions13ModelResponseVSgMd, &_s26GenerativeAssistantActions13ModelResponseVSgMR);
  v5 = v0[99];
  v6 = v0[91];
  v7 = v0[88];
  v8 = v0[87];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x2530571A0](v5, MEMORY[0x277D84F78] + 8, v9, MEMORY[0x277D84950]);

  (*(v7 + 8))(v6, v8);

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[72];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[65];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[29];
  v8 = v0[99];
  v9 = v0[91];
  v10 = v0[88];
  v16 = v0[87];
  v11 = v0[40];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x2530571A0](v8, MEMORY[0x277D84F78] + 8, v12, MEMORY[0x277D84950]);

  v13 = type metadata accessor for OSSignpostID();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("ResponseGeneration.Time", 23, 2u, v11);
  outlined destroy of OnScreenContent.Document?(v11, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  MetricsUtils.emitSignpostEvent(_:)("Error.GMS.GenerativeResultFailed", 32, 2);
  SELFUtils.recordGenerativeRequestFailed(code:domain:)(100, 9);
  DefaultModelSession.customizeError(_:)(v7);
  swift_willThrow();

  (*(v10 + 8))(v9, v16);

  v14 = v0[1];

  return v14();
}

{
  v1 = v0[72];
  v2 = v0[69];
  v3 = v0[68];

  (*(v2 + 8))(v1, v3);
  v4 = v0[105];
  v5 = v0[99];
  v6 = v0[91];
  v7 = v0[88];
  v13 = v0[87];
  v8 = v0[40];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x2530571A0](v5, MEMORY[0x277D84F78] + 8, v9, MEMORY[0x277D84950]);

  v10 = type metadata accessor for OSSignpostID();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("ResponseGeneration.Time", 23, 2u, v8);
  outlined destroy of OnScreenContent.Document?(v8, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  MetricsUtils.emitSignpostEvent(_:)("Error.GMS.GenerativeResultFailed", 32, 2);
  SELFUtils.recordGenerativeRequestFailed(code:domain:)(100, 9);
  DefaultModelSession.customizeError(_:)(v4);
  swift_willThrow();

  (*(v7 + 8))(v6, v13);

  v11 = v0[1];

  return v11();
}

{

  v1 = v0[107];
  v2 = v0[99];
  v3 = v0[91];
  v4 = v0[88];
  v10 = v0[87];
  v5 = v0[40];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x2530571A0](v2, MEMORY[0x277D84F78] + 8, v6, MEMORY[0x277D84950]);

  v7 = type metadata accessor for OSSignpostID();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("ResponseGeneration.Time", 23, 2u, v5);
  outlined destroy of OnScreenContent.Document?(v5, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  MetricsUtils.emitSignpostEvent(_:)("Error.GMS.GenerativeResultFailed", 32, 2);
  SELFUtils.recordGenerativeRequestFailed(code:domain:)(100, 9);
  DefaultModelSession.customizeError(_:)(v1);
  swift_willThrow();

  (*(v4 + 8))(v3, v10);

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in closure #1 in DefaultModelSession.registerImageInLineAndGenerateResponse(userQuery:image:useCaseID:keepAliveCallback:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v7 = type metadata accessor for Prompt();
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24[-1] - v13;
  v25 = &type metadata for PromptImage;
  v26 = lazy protocol witness table accessor for type PromptImage and conformance PromptImage();
  v24[0] = a1;
  v15 = a1;
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_0(v24);
  v25 = MEMORY[0x277D837D0];
  v26 = MEMORY[0x277D42EC0];
  v24[0] = a2;
  v24[1] = a3;

  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v16 = *(v8 + 72);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_24FE1A8C0;
  v19 = v18 + v17;
  v20 = *(v9 + 16);
  v20(v19, v14, v7);
  v20(v19 + v16, v12, v7);
  MEMORY[0x253056D20](v18, v7, MEMORY[0x277D42E18]);

  v21 = *(v9 + 8);
  v21(v12, v7);
  return (v21)(v14, v7);
}

uint64_t closure #1 in closure #1 in DefaultModelSession.generate(userQuery:useCaseID:keepAliveCallback:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[3] = MEMORY[0x277D837D0];
  v13[4] = MEMORY[0x277D42EC0];
  v13[0] = a1;
  v13[1] = a2;

  v8 = MEMORY[0x277D42E18];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_0(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24FE1A560;
  (*(v5 + 16))(v10 + v9, v7, v4);
  MEMORY[0x253056D20](v10, v4, v8);

  return (*(v5 + 8))(v7, v4);
}

uint64_t closure #3 in DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:)(uint64_t *a1)
{
  v2 = type metadata accessor for ChatMessagesPrompt();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[3] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9PromptKit011ChatMessageA0VGMd, &_sSay9PromptKit011ChatMessageA0VGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [ChatMessagePrompt] and conformance <A> [A], &_sSay9PromptKit011ChatMessageA0VGMd, &_sSay9PromptKit011ChatMessageA0VGMR, MEMORY[0x277D42EC8]);
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMR);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24FE1A560;
  (*(v3 + 16))(v7 + v6, v5, v2);
  MEMORY[0x253056D00](v7);

  return (*(v3 + 8))(v5, v2);
}

uint64_t implicit closure #2 in implicit closure #1 in DefaultModelSession.getModelResponse(from:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = implicit closure #2 in implicit closure #1 in DefaultModelSession.getModelResponse(from:);

  return MEMORY[0x2821D9A18]();
}

uint64_t implicit closure #2 in implicit closure #1 in DefaultModelSession.getModelResponse(from:)(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t closure #1 in DefaultModelSession.getModelResponse(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a2;
  v3 = type metadata accessor for PromptCompletion.Annotation();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v50 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v52 = &v46[-v6];
  v51 = type metadata accessor for URL();
  v7 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for PromptCompletion.URLCitation();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for PromptCompletion.Annotation.Type();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v46[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  PromptCompletion.Annotation.type.getter();
  if ((*(v15 + 88))(v17, v14) == *MEMORY[0x277D71BE8])
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    PromptCompletion.URLCitation.url.getter();
    v18 = URL.absoluteString.getter();
    v20 = v19;
    (*(v7 + 8))(v9, v51);
    v21 = String.asDisplayURL.getter(v18, v20);
    v23 = v22;
    result = (*(v11 + 8))(v13, v10);
    if (!v23)
    {

      v21 = v18;
      v23 = v20;
    }

    v25 = v55;
    *v55 = v21;
    v25[1] = v23;
    v25[2] = v18;
    v25[3] = v20;
  }

  else
  {
    v51 = v14;
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.modelInteraction);
    v28 = v52;
    v27 = v53;
    v29 = *(v53 + 16);
    v30 = v54;
    v29(v52, a1, v54);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v48 = v31;
      v34 = v33;
      v49 = swift_slowAlloc();
      v56 = v49;
      *v34 = 136315138;
      v47 = v32;
      v29(v50, v28, v30);
      v35 = String.init<A>(describing:)();
      v36 = v30;
      v37 = v35;
      v39 = v38;
      (*(v27 + 8))(v28, v36);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v56);

      v41 = v34;
      *(v34 + 4) = v40;
      v42 = v48;
      _os_log_impl(&dword_24FD67000, v48, v47, "Unexpected annotation type: %s", v41, 0xCu);
      v43 = v49;
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x253057F40](v43, -1, -1);
      MEMORY[0x253057F40](v41, -1, -1);
    }

    else
    {

      (*(v27 + 8))(v28, v30);
    }

    v44 = v51;
    v45 = v55;
    *v55 = 0u;
    *(v45 + 1) = 0u;
    return (*(v15 + 8))(v17, v44);
  }

  return result;
}

uint64_t closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = type metadata accessor for CancellationError();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock.Instant();
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock();
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[21] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[22] = v11;
  v6[23] = v10;

  return MEMORY[0x2822009F8](closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:), v11, v10);
}

uint64_t closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:)()
{
  v8 = v0;
  if (one-time initialization token for generativeResponse != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 192) = __swift_project_value_buffer(v1, static Logger.generativeResponse);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x800000024FE336A0, &v7);
    _os_log_impl(&dword_24FD67000, v2, v3, "[keep-alive]: %s starting task for keep-alive callbacks", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x253057F40](v5, -1, -1);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  *(v0 + 200) = 1;
  static Clock<>.continuous.getter();
  *(v0 + 40) = xmmword_24FE1BE20;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return MEMORY[0x2822009F8](closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:), 0, 0);
}

{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = lazy protocol witness table accessor for type ModelResponse and conformance ModelResponse(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type ModelResponse and conformance ModelResponse(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v5 = *(v2 + 8);
  v0[26] = v5;
  v0[27] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[28] = v6;
  *v6 = v0;
  v6[1] = closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:);
  v8 = v0[17];
  v7 = v0[18];

  return MEMORY[0x2822008C8](v8, v0 + 2, v7, v4);
}

{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    (*(v2 + 208))(*(v2 + 136), *(v2 + 112));
    v3 = closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 152);
    v6 = *(v2 + 160);
    v8 = *(v2 + 144);
    (*(v2 + 208))(*(v2 + 136), *(v2 + 112));
    (*(v7 + 8))(v6, v8);
    v4 = *(v2 + 176);
    v5 = *(v2 + 184);
    v3 = closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  v1 = *(v0 + 232);
  v2 = static Task<>.checkCancellation()();
  if (v1)
  {

    *(v0 + 56) = v1;
    v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_24FD67000, v4, v5, "[keep-alive]: keep-alive task canceled, potentially due to receiving response successfully; no longer sending heartbeats", v6, 2u);
        MEMORY[0x253057F40](v6, -1, -1);
      }

      v8 = *(v0 + 96);
      v7 = *(v0 + 104);
      v9 = *(v0 + 88);

      (*(v8 + 8))(v7, v9);
      goto LABEL_19;
    }

    v17 = v1;
    v14 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v14, v18))
    {

LABEL_19:

      v23 = *(v0 + 8);

      return v23();
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = v1;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v22;
    *v20 = v22;
    _os_log_impl(&dword_24FD67000, v14, v18, "[keep-alive]: task encountered error: %@", v19, 0xCu);
    outlined destroy of OnScreenContent.Document?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x253057F40](v20, -1, -1);
    MEMORY[0x253057F40](v19, -1, -1);

LABEL_18:
    goto LABEL_19;
  }

  (*(v0 + 72))(v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_24FD67000, v10, v11, "[keep-alive]: did invoke app intent keep-alive callback", v12, 2u);
    MEMORY[0x253057F40](v12, -1, -1);
  }

  v13 = *(v0 + 200);

  if (v13 == 11)
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = 60;

      _os_log_impl(&dword_24FD67000, v14, v15, "[keep-alive]: %ld seconds passed, allow app intent to naturally time out", v16, 0xCu);
      MEMORY[0x253057F40](v16, -1, -1);
    }

    else
    {
    }

    goto LABEL_18;
  }

  ++*(v0 + 200);
  static Clock<>.continuous.getter();
  *(v0 + 40) = xmmword_24FE1BE20;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return MEMORY[0x2822009F8](closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:), 0, 0);
}

{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[22];
  v2 = v0[23];

  return MEMORY[0x2822009F8](closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:), v1, v2);
}

{

  v1 = *(v0 + 232);
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24FD67000, v3, v4, "[keep-alive]: keep-alive task canceled, potentially due to receiving response successfully; no longer sending heartbeats", v5, 2u);
      MEMORY[0x253057F40](v5, -1, -1);
    }

    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 88);

    (*(v7 + 8))(v6, v8);
    v9 = *(v0 + 56);
  }

  else
  {

    v10 = v1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_24FD67000, v11, v12, "[keep-alive]: task encountered error: %@", v13, 0xCu);
      outlined destroy of OnScreenContent.Document?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x253057F40](v14, -1, -1);
      MEMORY[0x253057F40](v13, -1, -1);

      goto LABEL_9;
    }

    v9 = v1;
  }

LABEL_9:

  v17 = *(v0 + 8);

  return v17();
}

uint64_t DefaultModelSession.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_samplingParameters;
  v2 = type metadata accessor for SamplingParameters();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of OnScreenContent.Document?(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_siriLocale, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v3 = OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_modelBundle;
  v4 = type metadata accessor for ModelBundle();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC26GenerativeAssistantActions19DefaultModelSession_featureFlagManager;
  v6 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DefaultModelSession(uint64_t a1)
{
  result = type metadata singleton initialization cache for DefaultModelSession;
  if (!type metadata singleton initialization cache for DefaultModelSession)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for DefaultModelSession(uint64_t a1)
{
  type metadata accessor for SamplingParameters();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Locale?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ModelBundle();
      if (v3 <= 0x3F)
      {
        type metadata accessor for GenerativeAssistantFeatureFlagManager();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata accessor for Locale?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Locale?)
  {
    type metadata accessor for Locale();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Locale?);
    }
  }
}

uint64_t protocol witness for ModelSession.registerDocument(_:uploadProgressCallback:) in conformance DefaultModelSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of ContentLoaderProviding.load();

  return DefaultModelSession.registerDocument(_:uploadProgressCallback:)(a1, a2, a3);
}

uint64_t protocol witness for ModelSession.registerImage(_:uploadProgressCallback:) in conformance DefaultModelSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PartnerStreamWrapper.getStreamedResponse();

  return DefaultModelSession.registerImage(_:uploadProgressCallback:)(a1, a2, a3);
}

uint64_t getProcessIdenitifierForSiri()()
{
  v0 = MEMORY[0x253056EA0](0x6C7070612E6D6F63, 0xEE00697269732E65);
  v1 = [objc_opt_self() predicateMatchingBundleIdentifier_];

  type metadata accessor for RBSProcessHandle();
  v2 = v1;
  v3 = specialized @nonobjc RBSProcessHandle.__allocating_init(for:)(v2);

  v4 = [v3 pid];
  return v4;
}

void closure #1 in URL.setExtendedAttribute(_:forName:)(const char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  value[12] = *MEMORY[0x277D85DE8];
  v7 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v7)
    {
      value[0] = a2;
      LOWORD(value[1]) = a3;
      BYTE2(value[1]) = BYTE2(a3);
      BYTE3(value[1]) = BYTE3(a3);
      BYTE4(value[1]) = BYTE4(a3);
      v8 = BYTE6(a3);
      BYTE5(value[1]) = BYTE5(a3);
      v9 = (String.utf8CString.getter() + 32);
      v10 = value;
      v11 = a1;
LABEL_18:
      v18 = v8;
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v12 = *(a2 + 16);
    v13 = __DataStorage._bytes.getter();
    if (v13)
    {
      v14 = __DataStorage._offset.getter();
      if (__OFSUB__(v12, v14))
      {
        goto LABEL_30;
      }

      v13 += v12 - v14;
    }

    MEMORY[0x2530551C0]();
    v16 = *(a2 + 16);
    v15 = *(a2 + 24);
    v8 = v15 - v16;
    if (!__OFSUB__(v15, v16))
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_11:
    if (a2 > a2 >> 32)
    {
      __break(1u);
    }

    else
    {
      v13 = __DataStorage._bytes.getter();
      if (v13)
      {
        v17 = __DataStorage._offset.getter();
        if (__OFSUB__(a2, v17))
        {
          goto LABEL_31;
        }

        v13 += a2 - v17;
      }

      MEMORY[0x2530551C0]();
      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        v8 = HIDWORD(a2) - a2;
LABEL_17:
        v9 = (String.utf8CString.getter() + 32);
        v11 = a1;
        v10 = v13;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  memset(value, 0, 14);
  v9 = (String.utf8CString.getter() + 32);
  v10 = value;
  v11 = a1;
  v18 = 0;
LABEL_20:
  v19 = setxattr(v11, v9, v10, v18, 0, 0);

  if (v19 < 0)
  {
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.modelInteraction);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      value[0] = v39;
      *v23 = 136315650;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(5001813, 0xE300000000000000, value);
      *(v23 + 12) = 2080;
      *(v23 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x800000024FE33570, value);
      *(v23 + 22) = 2080;
      v24 = MEMORY[0x253056B60]();
      v25 = *MEMORY[0x277CCA5B8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24FE1A560;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v27;
      v28 = v25;
      if (strerror(v24))
      {
        v29 = String.init(cString:)();
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 48) = v29;
        *(inited + 56) = v30;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(inited);
        swift_setDeallocating();
        outlined destroy of OnScreenContent.Document?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
        v31 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v33 = [v31 initWithDomain:v28 code:v24 userInfo:isa];

        v34 = [v33 localizedDescription];
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, value);

        *(v23 + 24) = v38;
        _os_log_impl(&dword_24FD67000, v21, v22, "%s.%s Extended attribute could not be set: %s", v23, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v39, -1, -1);
        MEMORY[0x253057F40](v23, -1, -1);
      }

      else
      {

        __break(1u);
      }
    }

    else
    {
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExtendedAttributeUtils()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ExtendedAttributeUtils(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExtendedAttributeUtils(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ExtendedAttributeUtils@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ExtendedAttributeUtils.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ExtendedAttributeUtils(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000657079;
  v3 = 0x745F656372756F73;
  v4 = 0xEE00657079745F65;
  v5 = 0x6D696D5F656C6966;
  if (*v1 != 2)
  {
    v5 = 0x5F65746973626577;
    v4 = 0xEB000000006C7275;
  }

  if (*v1)
  {
    v3 = 0x6D616E5F656C6966;
    v2 = 0xE900000000000065;
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

uint64_t specialized Array._getCount()(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_Md, &_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_MR);
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && a1 >> 62)
  {

    JUMPOUT(0x253057520);
  }

  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v3 = a1;
  }

  return *(v3 + 16);
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  v6 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  result = _swift_isClassOrObjCExistentialType();
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = a3 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v7 = a3;
  }

  if (*(v7 + 16) <= v6)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t specialized _ArrayBuffer._getElementSlowPath(_:)(unint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4Sage18TokenStreamHandlerC6stream6fieldsSayQrGSaySSG_tFQOy26GenerativeAssistantActions13ModelResponseV_Qo_Md, &_s4Sage18TokenStreamHandlerC6stream6fieldsSayQrGSaySSG_tFQOy26GenerativeAssistantActions13ModelResponseV_Qo_MR);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && a2 >> 62)
  {
    v11 = _CocoaArrayWrapper.subscript.getter();
    v18 = v11;
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      (*(v5 + 8))(v8, v4);
      return v11;
    }

    goto LABEL_15;
  }

  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(85);
    v15 = "ce>) -> Array<some>>>.0";
    v16 = 0xD000000000000046;
    goto LABEL_17;
  }

  if (isClassOrObjCExistentialType)
  {
    v13 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v13 = a2;
  }

  if (*(v13 + 16) <= a1)
  {
    goto LABEL_14;
  }

  v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  v18 = v11;
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {
    (*(v5 + 8))(v10, v4);
    return v11;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v15 = "";
  v16 = 0xD000000000000043;
LABEL_17:
  MEMORY[0x253056FE0](v16, v15 | 0x8000000000000000);
  MEMORY[0x253056FE0](0xD000000000000048, 0x800000024FE33610);
  MEMORY[0x253056FE0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v17 = _typeName(_:qualified:)();
  MEMORY[0x253056FE0](v17);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_Md, &_s4Sage28GenerativeExperiencesSessionC8register9documentsSayQrGSay0B16ModelsFoundation16DocumentResourceVG_tFQOy_Qo_MR);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && a2 >> 62)
  {
    v11 = _CocoaArrayWrapper.subscript.getter();
    v18 = v11;
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      (*(v5 + 8))(v8, v4);
      return v11;
    }

    goto LABEL_15;
  }

  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(85);
    v15 = "ce>) -> Array<some>>>.0";
    v16 = 0xD000000000000046;
    goto LABEL_17;
  }

  if (isClassOrObjCExistentialType)
  {
    v13 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v13 = a2;
  }

  if (*(v13 + 16) <= a1)
  {
    goto LABEL_14;
  }

  v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  v18 = v11;
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {
    (*(v5 + 8))(v10, v4);
    return v11;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v15 = "";
  v16 = 0xD000000000000043;
LABEL_17:
  MEMORY[0x253056FE0](v16, v15 | 0x8000000000000000);
  MEMORY[0x253056FE0](0xD000000000000057, 0x800000024FE334C0);
  MEMORY[0x253056FE0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v17 = _typeName(_:qualified:)();
  MEMORY[0x253056FE0](v17);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type DefaultModelSession.SessionError and conformance DefaultModelSession.SessionError()
{
  result = lazy protocol witness table cache variable for type DefaultModelSession.SessionError and conformance DefaultModelSession.SessionError;
  if (!lazy protocol witness table cache variable for type DefaultModelSession.SessionError and conformance DefaultModelSession.SessionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultModelSession.SessionError and conformance DefaultModelSession.SessionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultModelSession.SessionError and conformance DefaultModelSession.SessionError;
  if (!lazy protocol witness table cache variable for type DefaultModelSession.SessionError and conformance DefaultModelSession.SessionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultModelSession.SessionError and conformance DefaultModelSession.SessionError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Float and conformance Float()
{
  result = lazy protocol witness table cache variable for type Float and conformance Float;
  if (!lazy protocol witness table cache variable for type Float and conformance Float)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Float and conformance Float);
  }

  return result;
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t partial apply for closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = dispatch thunk of ContentLoaderProviding.load();

  return closure #1 in DefaultModelSession.createAndRunKeepAliveTask(using:)(a1, v4, v5, v6, v7, v8);
}

uint64_t outlined assign with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ModelResponse(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PromptImage and conformance PromptImage()
{
  result = lazy protocol witness table cache variable for type PromptImage and conformance PromptImage;
  if (!lazy protocol witness table cache variable for type PromptImage and conformance PromptImage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptImage and conformance PromptImage);
  }

  return result;
}

void outlined consume of Attribution?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t outlined assign with take of ExternalPartnerAuthenticator?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5Anvil28ExternalPartnerAuthenticatorVSgMd, &_s5Anvil28ExternalPartnerAuthenticatorVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModelResponseText and conformance ModelResponseText()
{
  result = lazy protocol witness table cache variable for type ModelResponseText and conformance ModelResponseText;
  if (!lazy protocol witness table cache variable for type ModelResponseText and conformance ModelResponseText)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelResponseText and conformance ModelResponseText);
  }

  return result;
}

uint64_t sub_24FDD5DF4()
{
  v1 = type metadata accessor for PromptCompletion.ImageContent();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in DefaultModelSession.getModelResponse(from:)()
{
  type metadata accessor for PromptCompletion.ImageContent();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for implicit closure #2 in implicit closure #1 in DefaultModelSession.getModelResponse(from:);

  return implicit closure #2 in implicit closure #1 in DefaultModelSession.getModelResponse(from:)();
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in DefaultModelSession.getModelResponse(from:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t lazy protocol witness table accessor for type ModelResponse and conformance ModelResponse(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of UploadableDocumentData(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of UploadableMedia.Source(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *specialized static DefaultModelSession.getTools(tooling:enableBrowserTool:)(uint64_t a1, int a2)
{
  v74 = a2;
  v3 = type metadata accessor for FileGenerationParameters();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v79 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageGenerationParameters.Size();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v73 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ImageGenerationParameters.Count();
  v70 = *(v9 - 8);
  v71 = v9;
  MEMORY[0x28223BE20](v9);
  v72 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for ImageGenerationParameters.Detail();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v69 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for ImageGenerationParameters.Shape();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v64 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for ImageGenerationParameters();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v63 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolType();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v80 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v78 = &v57 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v83 = &v57 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v60 = &v57 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v82 = &v57 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v57 - v26;
  v28 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  v76 = *(v28 - 8);
  v77 = v28;
  MEMORY[0x28223BE20](v28);
  v75 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 16);
  v31 = MEMORY[0x277D84F90];
  v81 = v3;
  if (v30)
  {
    v57 = v7;
    v58 = v6;
    v59 = v4;
    v85 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
    v31 = v85;
    v32 = a1 + 32;
    do
    {
      outlined init with copy of GenerativeAssistantFeatureFlagManaging(v32, v84);
      static ToolType.tooling(_:)();
      __swift_destroy_boxed_opaque_existential_0(v84);
      v85 = v31;
      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
        v31 = v85;
      }

      v31[2] = v34 + 1;
      (*(v15 + 32))(v31 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v34, v27, v14);
      v32 += 40;
      --v30;
    }

    while (v30);
    v3 = v81;
    v4 = v59;
    v6 = v58;
    v7 = v57;
  }

  v35 = v75;
  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v36 = GenerativeAssistantFeatureFlagManager.isMultiImageGenerationEnabled.getter();
  (*(v76 + 8))(v35, v77);
  if (v36)
  {
    (*(v61 + 104))(v64, *MEMORY[0x277D0DCE0], v62);
    (*(v66 + 104))(v69, *MEMORY[0x277D0DCE8], v68);
    (*(v70 + 104))(v72, *MEMORY[0x277D0DCD8], v71);
    (*(v7 + 104))(v73, *MEMORY[0x277D0DCD0], v6);
    v37 = v63;
    ImageGenerationParameters.init(size:shape:detail:count:modelName:)();
    static ToolType.imageGenerationTool(parameters:)();
    (*(v65 + 8))(v37, v67);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
    }

    v39 = v31[2];
    v38 = v31[3];
    v40 = v39 + 1;
    v3 = v81;
    v41 = v82;
    if (v39 >= v38 >> 1)
    {
      v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v31);
      v41 = v82;
      v31 = v42;
    }
  }

  else
  {
    v43 = v60;
    static ToolType.imageGenerator.getter();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
    }

    v39 = v31[2];
    v44 = v31[3];
    v40 = v39 + 1;
    if (v39 >= v44 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v39 + 1, 1, v31);
    }

    v41 = v43;
  }

  v31[2] = v40;
  v45 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v46 = *(v15 + 72);
  v82 = *(v15 + 32);
  (v82)(v31 + v45 + v46 * v39, v41, v14);
  v47 = v79;
  FileGenerationParameters.init()();
  v48 = v83;
  static ToolType.fileGenerationTool(parameters:)();
  (*(v4 + 8))(v47, v3);
  v49 = v78;
  (*(v15 + 16))(v78, v48, v14);
  v51 = v31[2];
  v50 = v31[3];
  if (v51 >= v50 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v31);
  }

  v31[2] = v51 + 1;
  (v82)(v31 + v45 + v46 * v51, v49, v14);
  if (one-time initialization token for _enableWebSources != -1)
  {
    swift_once();
  }

  if (byte_27F39FB50 & 1) != 0 && (v52 = unk_27F39FB40, v53 = static Overrides._enableWebSources, , , v52(v84, v53), , , v53, LOBYTE(v84[0]) != 2) && (v84[0] & 1) != 0 || (v74)
  {
    static ToolType.browser.getter();
    v55 = v31[2];
    v54 = v31[3];
    if (v55 >= v54 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v31);
    }

    (*(v15 + 8))(v83, v14);
    v31[2] = v55 + 1;
    (v82)(v31 + v45 + v55 * v46, v80, v14);
  }

  else
  {
    (*(v15 + 8))(v83, v14);
  }

  return v31;
}