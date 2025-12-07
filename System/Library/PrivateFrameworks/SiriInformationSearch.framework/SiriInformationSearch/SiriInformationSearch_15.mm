uint64_t specialized AssistantLocationProvider.init(serviceHelper:)(uint64_t a1)
{
  v13 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v2 - 8);
  v12 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v5);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v6 - 8);
  *(v1 + 16) = 0;
  v7 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v10[0] = ".available(PommesLocationInfo)";
  v10[1] = v7;
  static DispatchQoS.unspecified.getter();
  v14 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type PommesCodableLocation and conformance PommesCodableLocation(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v11 + 104))(v4, *MEMORY[0x277D85260], v12);
  *(v1 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for LocationStatus(0);
  swift_storeEnumTagMultiPayload();
  v8 = OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider_statusPassthrough;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCys6ResultOy21SiriInformationSearch14LocationStatusOAF0H5ErrorOGs5NeverOGMd, &_s7Combine18PassthroughSubjectCys6ResultOy21SiriInformationSearch14LocationStatusOAF0H5ErrorOGs5NeverOGMR);
  swift_allocObject();
  *(v1 + v8) = PassthroughSubject.init()();
  *(v1 + OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider____lazy_storage___statusPublisher) = 0;
  swift_beginAccess();
  *(v1 + 16) = v13;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t lazy protocol witness table accessor for type PommesCodableLocation? and conformance <A> A?(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s21SiriInformationSearch21PommesCodableLocationCSgMd, &_s21SiriInformationSearch21PommesCodableLocationCSgMR);
    lazy protocol witness table accessor for type PommesCodableLocation and conformance PommesCodableLocation(a2, type metadata accessor for PommesCodableLocation, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for AssistantLocationProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for AssistantLocationProvider;
  if (!type metadata singleton initialization cache for AssistantLocationProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AssistantLocationProvider(uint64_t a1)
{
  result = type metadata accessor for LocationStatus(319);
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

unint64_t lazy protocol witness table accessor for type OptionalMethodError and conformance OptionalMethodError()
{
  result = lazy protocol witness table cache variable for type OptionalMethodError and conformance OptionalMethodError;
  if (!lazy protocol witness table cache variable for type OptionalMethodError and conformance OptionalMethodError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OptionalMethodError and conformance OptionalMethodError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OptionalMethodError and conformance OptionalMethodError;
  if (!lazy protocol witness table cache variable for type OptionalMethodError and conformance OptionalMethodError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OptionalMethodError and conformance OptionalMethodError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PommesCodableLocation and conformance PommesCodableLocation(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static PairedDeviceDataProvider.make()(uint64_t a1)
{
  type metadata accessor for PairedDeviceDataProvider();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMR);
  swift_allocObject();
  return specialized AnyDataProvider.init<A>(provider:)(v1);
}

uint64_t PairedDeviceDataProvider.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t PairedDeviceDataProvider.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

void PairedDeviceDataProvider.prepare(dispatchQueue:)()
{
  v1 = v0;
  v2 = *(*v0 + 96);
  v3 = v2();
  if (v3)
  {
  }

  else
  {
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 getActivePairedDevice];

    (*(*v1 + 104))(v5);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.pommes);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      v2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NRDeviceCSgMd, &_sSo8NRDeviceCSgMR);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2232BB000, v7, v8, "PairedDeviceDataProvider: paired watch fetched as %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x223DE0F80](v10, -1, -1);
      MEMORY[0x223DE0F80](v9, -1, -1);
    }
  }
}

uint64_t PairedDeviceDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)()
{
  v1 = (*(*v0 + 96))();
  if (!v1)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.pommes);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2232BB000, v26, v27, "PairedDeviceDataProvider: no paired device", v28, 2u);
      MEMORY[0x223DE0F80](v28, -1, -1);
    }

    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = specialized PairedDeviceDataProvider.pairedDeviceValue(forKey:device:)(v3, v4, v2);
  v7 = v6;

  if (!v7)
  {
LABEL_16:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.pommes);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2232BB000, v30, v31, "PairedDeviceDataProvider: found paired device but unable to extract productType, systemVersion, or regulatoryDeviceModel property", v32, 2u);
      MEMORY[0x223DE0F80](v32, -1, -1);
    }

    return 0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = specialized PairedDeviceDataProvider.pairedDeviceValue(forKey:device:)(v8, v9, v2);
  v12 = v11;

  if (!v12)
  {
LABEL_15:

    goto LABEL_16;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = specialized PairedDeviceDataProvider.pairedDeviceValue(forKey:device:)(v13, v14, v2);
  v17 = v16;

  if (!v17)
  {

    goto LABEL_15;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.pommes);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v35 = v10;
    v21 = v15;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v36[0] = v23;
    *v22 = 136315650;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v36);

    *(v22 + 4) = v24;
    *(v22 + 12) = 2080;
    *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v12, v36);
    *(v22 + 22) = 2080;
    *(v22 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v17, v36);
    _os_log_impl(&dword_2232BB000, v19, v20, "PairedDeviceDataProvider: returning paired device (product: %s, OS: %s, model: %s)", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v23, -1, -1);
    MEMORY[0x223DE0F80](v22, -1, -1);
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI27Useragentpb_CompanionDeviceVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI27Useragentpb_CompanionDeviceVGMR);
  type metadata accessor for Useragentpb_CompanionDevice();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2234CF920;
  MEMORY[0x28223BE20](v34);
  lazy protocol witness table accessor for type Useragentpb_CompanionDevice and conformance Useragentpb_CompanionDevice(&lazy protocol witness table cache variable for type Useragentpb_CompanionDevice and conformance Useragentpb_CompanionDevice, MEMORY[0x277D38EB8], MEMORY[0x277D38EB0]);
  static Message.with(_:)();

  return v34;
}

uint64_t closure #1 in PairedDeviceDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = type metadata accessor for Useragentpb_DeviceMetadata();
  MEMORY[0x28223BE20](v5);
  v6 = type metadata accessor for Useragentpb_UserAgent();
  MEMORY[0x28223BE20](v6);
  lazy protocol witness table accessor for type Useragentpb_CompanionDevice and conformance Useragentpb_CompanionDevice(&lazy protocol witness table cache variable for type Useragentpb_UserAgent and conformance Useragentpb_UserAgent, MEMORY[0x277D38E50], MEMORY[0x277D38E48]);
  static Message.with(_:)();
  Useragentpb_CompanionDevice.companionUserAgent.setter();
  lazy protocol witness table accessor for type Useragentpb_CompanionDevice and conformance Useragentpb_CompanionDevice(&lazy protocol witness table cache variable for type Useragentpb_DeviceMetadata and conformance Useragentpb_DeviceMetadata, MEMORY[0x277D38E88], MEMORY[0x277D38E80]);
  static Message.with(_:)();
  return Useragentpb_CompanionDevice.deviceMetadata.setter();
}

uint64_t closure #1 in closure #1 in PairedDeviceDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  Useragentpb_UserAgent.buildOsVersion.setter();

  return Useragentpb_UserAgent.productVersion.setter();
}

uint64_t PairedDeviceDataProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:) in conformance PairedDeviceDataProvider@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 136))();
  *a1 = result;
  return result;
}

uint64_t specialized PairedDeviceDataProvider.pairedDeviceValue(forKey:device:)(uint64_t a1, unint64_t a2, void *a3)
{
  result = specialized static PegasusOverrideUtil.pairedDeviceOverrideValue(forKey:)(a1, a2);
  if (!v7)
  {
    v8 = MEMORY[0x223DDF550](a1, a2);
    v9 = [a3 valueForProperty_];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        return v10;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      outlined destroy of Any?(v13);
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of PairedDeviceDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 136);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

uint64_t partial apply for closure #2 in closure #1 in PairedDeviceDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return MEMORY[0x223DDA070](v2, v1);
}

uint64_t lazy protocol witness table accessor for type Useragentpb_CompanionDevice and conformance Useragentpb_CompanionDevice(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double static UtteranceMatchPreflightClient.disallowedUtterances.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t static UtteranceMatchPreflightClient.disallowedUtterances.setter(void *a1)
{
  swift_beginAccess();
  static UtteranceMatchPreflightClient.disallowedUtterances = a1;
}

uint64_t key path setter for static UtteranceMatchPreflightClient.disallowedUtterances : UtteranceMatchPreflightClient.Type(void **a1)
{
  v1 = *a1;

  swift_beginAccess();
  static UtteranceMatchPreflightClient.disallowedUtterances = v1;
}

uint64_t UtteranceMatchPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for PommesSearchReason();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = (&v47 - v8);
  v9 = type metadata accessor for PommesSearchRequest(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 + *(v10 + 20));
  v14 = *v13;
  v15 = v13[1];
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = swift_beginAccess();
    v18 = static UtteranceMatchPreflightClient.disallowedUtterances;
    v53[0] = v14;
    v53[1] = v15;
    MEMORY[0x28223BE20](v17);
    v46 = v53;

    v19 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v45, v18);

    if ((v19 & 1) == 0)
    {
      return 1;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Logger.pommes);
  outlined init with copy of PommesSearchRequest(a1, v12);
  v50 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v48 = v5;
    v25 = v24;
    v26 = swift_slowAlloc();
    v53[0] = v26;
    *v25 = 136315138;
    v27 = &v12[*(v9 + 20)];
    v49 = a1;
    v28 = v3;
    v29 = v4;
    v30 = *v27;
    v31 = v27[1];

    outlined destroy of PommesSearchRequest(v12);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v53);
    v4 = v29;
    v3 = v28;
    a1 = v49;

    *(v25 + 4) = v32;
    _os_log_impl(&dword_2232BB000, v22, v23, "UtteranceMatchPreflightClient matched utterance: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x223DE0F80](v26, -1, -1);
    v33 = v25;
    v5 = v48;
    MEMORY[0x223DE0F80](v33, -1, -1);
  }

  else
  {

    outlined destroy of PommesSearchRequest(v12);
  }

  v34 = (a1 + *(v9 + 32));
  v35 = *v34;
  v36 = v34[1];
  v37 = v51;
  PommesSearchRequest.pommesCandidateId.getter(v51);
  v38 = type metadata accessor for PommesCandidateId();
  (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  v39 = v52;
  default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v52);
  v45[1] = v3;
  v46 = &protocol witness table for UtteranceMatchPreflightClient;
  v40 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(a1, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v35, v36, v37, v39, 0x6867696C66657270, 0xE900000000000074, 0xD00000000000001DLL, 0x80000002234D66D0);
  (*(v5 + 8))(v39, v4);
  outlined destroy of PommesCandidateId?(v37);
  result = v40;
  if (!v40)
  {
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2232BB000, v42, v43, "UtteranceMatchPreflightClient#handle could not build PommesResponse with given parameters", v44, 2u);
      MEMORY[0x223DE0F80](v44, -1, -1);
    }

    return 1;
  }

  return result;
}

uint64_t AppData.init(applicationIdentifier:supportedIntents:supportedMediaCategories:linkActions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t AppDataProvider.__allocating_init(appChecking:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized AppDataProvider.init(appChecking:)(v7, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t AppData.applicationIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AppDataProvider.init(appChecking:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized AppDataProvider.init(appChecking:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void AppDataProvider.getAppInfo(bundleId:allowPlaceholder:)(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v42[1] = *MEMORY[0x277D85DE8];
  if ((*(*v4 + 120))())
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.pommes);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v42[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v42);
    v14 = "AppDataProvider#getAppInfo failed to locate app for bundleIdentifier:%s";
LABEL_11:
    _os_log_impl(&dword_2232BB000, v10, v11, v14, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x223DE0F80](v13, -1, -1);
    MEMORY[0x223DE0F80](v12, -1, -1);
LABEL_12:

LABEL_13:
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_14;
  }

  v15 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v16 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, a3 & 1);
  v23 = v16;
  if (!v16)
  {
LABEL_7:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.pommes);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v42[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v42);
    v14 = "AppDataProvider#getAppInfo failed to resolve appData for bundleIdentifier:%s";
    goto LABEL_11;
  }

  v24 = [objc_opt_self() appInfoWithApplicationRecord_];
  if (!v24)
  {

    goto LABEL_7;
  }

  v25 = v24;
  if ([v23 appProtectionHidden])
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.pommes);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2232BB000, v27, v28, "AppDataProvider#getAppInfo excluded hidden app from consideration", v29, 2u);
      MEMORY[0x223DE0F80](v29, -1, -1);
    }

    goto LABEL_13;
  }

  v30 = v4[7];
  v31 = MEMORY[0x223DDF550](a1, a2);
  v42[0] = 0;
  v32 = [v30 actionsForBundleIdentifier:v31 error:v42];

  v33 = v42[0];
  if (v32)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for LNActionMetadata, 0x277D23730);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v35 = v42[0];
    v36 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v22 = MEMORY[0x277D84F90];
  }

  v37 = [v25 applicationIdentifier];
  if (v37)
  {
    v38 = v37;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v39;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v40 = [v25 supportedIntents];
  v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = [v25 supportedMediaCategories];
  v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_14:
  *a4 = v18;
  a4[1] = v19;
  a4[2] = v20;
  a4[3] = v21;
  a4[4] = v22;
}

unint64_t AppDataProvider.getVocabularies(bundleId:allowPlaceholder:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v102 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v102 - v13;
  if ((*(*v2 + 120))(a1, a2))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.pommes);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_12;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v109[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v109);
    v20 = "AppDataProvider#getAppInfo failed to locate app for bundleIdentifier:%s";
LABEL_11:
    _os_log_impl(&dword_2232BB000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x223DE0F80](v19, -1, -1);
    MEMORY[0x223DE0F80](v18, -1, -1);
LABEL_12:

    v24 = MEMORY[0x277D84F90];

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So12NSDictionaryCTt0g5Tf4g_n(v24);
  }

  v21 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v22 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, 0);
  if (!v22)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.pommes);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_12;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v109[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v109);
    v20 = "AppDataProvider#getVocabularies failed to resolve appData for bundleIdentifier:%s";
    goto LABEL_11;
  }

  v26 = v22;
  if ([v26 appProtectionHidden])
  {

    if (one-time initialization token for pommes != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_18;
  }

  v34 = [v26 URL];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL.absoluteURL.getter();
  v36 = *(v6 + 8);
  v35 = v6 + 8;
  v36(v14, v5);
  v37 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  URL._bridgeToObjectiveC()(v38);
  v40 = v39;
  v41 = [v37 initWithURL_];

  v105 = v36;
  v106 = v5;
  v36(v12, v5);
  if (!v41)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    __swift_project_value_buffer(v78, static Logger.pommes);
    v79 = v26;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v109[0] = v108;
      *v82 = 136315138;
      v83 = [v79 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL.absoluteURL.getter();
      v85 = v105;
      v84 = v106;
      v105(v14, v106);
      v86 = URL.absoluteString.getter();
      v88 = v87;
      v85(v12, v84);
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, v109);

      *(v82 + 4) = v89;
      _os_log_impl(&dword_2232BB000, v80, v81, "AppDataProvider#getVocabularies unable to construct bundle for url: %s", v82, 0xCu);
      v90 = v108;
      __swift_destroy_boxed_opaque_existential_1(v108);
      MEMORY[0x223DE0F80](v90, -1, -1);
      MEMORY[0x223DE0F80](v82, -1, -1);
    }

    v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So12NSDictionaryCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    return v45;
  }

  v103 = v26;
  v42 = [v41 localizations];
  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = [objc_allocWithZone(MEMORY[0x277CBEB38]) initWithCapacity_];
  v109[0] = 0;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  v45 = v109[0];
  if (!v109[0])
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    __swift_project_value_buffer(v91, static Logger.pommes);

    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();

    v94 = os_log_type_enabled(v92, v93);
    v95 = v103;
    if (v94)
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v109[0] = v97;
      *v96 = 136315138;
      v98 = MEMORY[0x223DDF850](v43, MEMORY[0x277D837D0]);
      v100 = v99;

      v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, v109);

      *(v96 + 4) = v101;
      _os_log_impl(&dword_2232BB000, v92, v93, "AppDataProvider#getVocabularies unable create vocabulariesByLocale from allLocalizations:%s", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v97);
      MEMORY[0x223DE0F80](v97, -1, -1);
      MEMORY[0x223DE0F80](v96, -1, -1);
    }

    else
    {
    }

    v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So12NSDictionaryCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    return v45;
  }

  v108 = v41;
  v46 = [v41 localizations];
  v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = *(v47 + 16);
  v102[1] = v47;
  if (!v26)
  {
LABEL_41:

    return v45;
  }

  v107 = "eranceMatchPreflightClient";
  v48 = (v47 + 40);
  v104 = v35;
  while (1)
  {
    v49 = *(v48 - 1);
    v50 = *v48;

    v51 = MEMORY[0x223DDF550](0xD000000000000013, v107 | 0x8000000000000000);
    v52 = MEMORY[0x223DDF550](0x7473696C70, 0xE500000000000000);
    v53 = MEMORY[0x223DDF550](v49, v50);
    v54 = [v108 URLForResource:v51 withExtension:v52 subdirectory:0 localization:v53];

    if (!v54)
    {
      goto LABEL_26;
    }

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
    URL._bridgeToObjectiveC()(v56);
    v58 = v57;
    v59 = [v55 initWithContentsOfURL_];

    if (v59)
    {
      break;
    }

    v105(v9, v106);
LABEL_26:

LABEL_27:
    v48 += 2;
    if (!--v26)
    {
      goto LABEL_41;
    }
  }

  v60 = static Locale.canonicalLanguageIdentifier(from:)();
  v62 = v61;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v109[0] = v45;
  v64 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v62);
  v66 = v45[2];
  v67 = (v65 & 1) == 0;
  v68 = __OFADD__(v66, v67);
  v69 = v66 + v67;
  if (!v68)
  {
    v70 = v65;
    if (v45[3] >= v69)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_35;
      }

      v74 = v64;
      specialized _NativeDictionary.copy()();
      v64 = v74;
      v45 = v109[0];
      if ((v70 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_36:
      v72 = v45[7];
      v73 = *(v72 + 8 * v64);
      *(v72 + 8 * v64) = v59;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v69, isUniquelyReferenced_nonNull_native);
      v64 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v62);
      if ((v70 & 1) != (v71 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

LABEL_35:
      v45 = v109[0];
      if (v70)
      {
        goto LABEL_36;
      }

LABEL_38:
      v45[(v64 >> 6) + 8] |= 1 << v64;
      v75 = (v45[6] + 16 * v64);
      *v75 = v60;
      v75[1] = v62;
      *(v45[7] + 8 * v64) = v59;
      v76 = v45[2];
      v68 = __OFADD__(v76, 1);
      v77 = v76 + 1;
      if (v68)
      {
        goto LABEL_55;
      }

      v45[2] = v77;
    }

    v105(v9, v106);
    goto LABEL_27;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  swift_once();
LABEL_18:
  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.pommes);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = v26;
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2232BB000, v28, v29, "AppDataProvider#getVocabularies excluded hidden app from consideration", v31, 2u);
    v32 = v31;
    v26 = v30;
    MEMORY[0x223DE0F80](v32, -1, -1);
  }

  v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So12NSDictionaryCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return v33;
}

Swift::Bool __swiftcall AppDataProvider.isAppHidden(bundleId:)(Swift::String bundleId)
{
  object = bundleId._object;
  countAndFlagsBits = bundleId._countAndFlagsBits;
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  (*(v5 + 8))(&v7, countAndFlagsBits, object, v4, v5);
  LOBYTE(object) = v8;

  return object;
}

uint64_t AppDataProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t AppDataProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

double protocol witness for AppDataProviding.getAppInfo(bundleId:allowPlaceholder:) in conformance AppDataProvider@<D0>(uint64_t a1@<X8>)
{
  (*(**v1 + 104))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t specialized AppDataProvider.init(appChecking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *(a2 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  outlined init with take of PommesAppChecking(&v9, a2 + 16);
  return a2;
}

uint64_t getEnumTagSinglePayload for AppData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AppData(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t NLXResultCandidate.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x28223BE20](v1);
  v3 = v11 - v2;
  v12 = 0;
  v13 = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v11[0] = *(*v0 + 16);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DDF6D0](v4);

  MEMORY[0x223DDF6D0](0xD00000000000001BLL, 0x80000002234DF860);
  v5 = type metadata accessor for NLXResultCandidate(0);
  outlined init with copy of Siri_Nlu_External_DelegatedUserDialogAct?(v0 + *(v5 + 20), v3);
  v6 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v6);

  MEMORY[0x223DDF6D0](0xD000000000000022, 0x80000002234DF880);
  v7 = (v0 + *(v5 + 24));
  v8 = v7[1];
  v11[0] = *v7;
  v11[1] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v9 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v9);

  return v12;
}

uint64_t type metadata accessor for NLXResultCandidate(uint64_t a1)
{
  result = type metadata singleton initialization cache for NLXResultCandidate;
  if (!type metadata singleton initialization cache for NLXResultCandidate)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of Siri_Nlu_External_DelegatedUserDialogAct?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NLXResultCandidate.init(parses:fallbackParse:responseVariantResult:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for NLXResultCandidate(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = &a5[*(v10 + 24)];
  *a5 = a1;
  result = outlined assign with take of Siri_Nlu_External_DelegatedUserDialogAct?(a2, &a5[v11]);
  *v13 = a3;
  *(v13 + 1) = a4;
  return result;
}

uint64_t NLXResultCandidate.parses.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t NLXResultCandidate.fallbackParse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NLXResultCandidate(0) + 20);

  return outlined init with copy of Siri_Nlu_External_DelegatedUserDialogAct?(v3, a1);
}

uint64_t NLXResultCandidate.fallbackParse.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NLXResultCandidate(0) + 20);

  return outlined assign with take of Siri_Nlu_External_DelegatedUserDialogAct?(a1, v3);
}

uint64_t NLXResultCandidate.responseVariantResult.getter()
{
  v1 = *(v0 + *(type metadata accessor for NLXResultCandidate(0) + 24));

  return v1;
}

uint64_t NLXResultCandidate.responseVariantResult.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NLXResultCandidate(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void type metadata completion function for NLXResultCandidate(uint64_t a1)
{
  type metadata accessor for [Siri_Nlu_External_UserParse](319, &lazy cache variable for type metadata for [Siri_Nlu_External_UserParse], MEMORY[0x277D5DB08], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Siri_Nlu_External_UserParse](319, &lazy cache variable for type metadata for Siri_Nlu_External_DelegatedUserDialogAct?, MEMORY[0x277D5DD80], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [Siri_Nlu_External_UserParse](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t SportsPersonalizationSelection<A>.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v19 = 0xD00000000000001ELL;
    v20 = 0x80000002234DF510;
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

    MEMORY[0x223DDF6D0](v16, v17);

    MEMORY[0x223DDF6D0](41, 0xE100000000000000);
    v18 = v19;
    (*(v4 + 8))(v7, v3);
    return v18;
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

uint64_t *static DummyDataProvider.make(dummyResult:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  type metadata accessor for AnyDataProvider(0, v3, v8, v9);
  v12 = type metadata accessor for DummyDataProvider(0, v3, v10, v11);
  (*(v5 + 16))(v7, a1, v4);
  v13 = swift_allocObject();
  DummyDataProvider.init(dummyResult:)(v7);
  v19 = v13;
  WitnessTable = swift_getWitnessTable();
  v16 = specialized AnyDataProvider.__allocating_init<A>(provider:)(&v19, v12, WitnessTable, v15);

  return v16;
}

uint64_t key path setter for DummyDataProvider.dummyResult : <A>DummyDataProvider<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  return (*(**a2 + 104))(v8);
}

uint64_t DummyDataProvider.dummyResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 88);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t DummyDataProvider.dummyResult.setter(uint64_t a1)
{
  v3 = *(*v1 + 88);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t DummyDataProvider.__allocating_init(dummyResult:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DummyDataProvider.init(dummyResult:)(a1);
  return v2;
}

uint64_t *DummyDataProvider.make()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 80);
  type metadata accessor for AnyDataProvider(0, v5, a3, a4);
  v12 = v4;
  v8 = type metadata accessor for DummyDataProvider(0, v5, v6, v7);
  WitnessTable = swift_getWitnessTable();
  return specialized AnyDataProvider.__allocating_init<A>(provider:)(&v12, v8, WitnessTable, v10);
}

uint64_t DummyDataProvider.init(dummyResult:)(uint64_t a1)
{
  v3 = *(*v1 + 88);
  (*(*(*(*v1 + 80) - 8) + 56))(v1 + v3, 1, 1, *(*v1 + 80));
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  swift_endAccess();
  return v1;
}

uint64_t DummyDataProvider.deinit()
{
  v1 = *(*v0 + 88);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DummyDataProvider.__deallocating_deinit()
{
  v1 = *(*v0 + 88);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for DummyDataProvider(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of DummyDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 152);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

uint64_t static Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit.fromString(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v6 == a2)
  {
    v9 = MEMORY[0x277D38C18];
LABEL_8:

    goto LABEL_9;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    v9 = MEMORY[0x277D38C18];
    goto LABEL_9;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = MEMORY[0x277D38C10];
  if (v14 == a1 && v15 == a2)
  {
    goto LABEL_8;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v17 & 1) == 0)
  {
    v9 = MEMORY[0x277D38C20];
  }

LABEL_9:
  v10 = *v9;
  v11 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit();
  v12 = *(*(v11 - 8) + 104);

  return v12(a3, v10, v11);
}

uint64_t static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v62 = type metadata accessor for Date();
  v67 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v58 = *(Context - 8);
  v9 = MEMORY[0x28223BE20](Context);
  v52 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v49 - v11;
  v13 = type metadata accessor for SignpostToken(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v65 = a3;
  v16 = type metadata accessor for OSSignposter();
  v53 = __swift_project_value_buffer(v16, static Signposter.pommes);
  v54 = v15;
  OSSignposter.begin(name:context:)("proxy.createQueryContext", 24, 2u, 0, v15);
  v17 = Apple_Parsec_Search_PegasusQueryContext.init()();
  v18 = v12;
  if (one-time initialization token for shared != -1)
  {
    v17 = swift_once();
    v18 = v12;
  }

  v66 = v18;
  v19 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v17);
  v46[0] = v20;
  v46[1] = a2;
  v57 = a1;
  v47 = a1;
  Date.init()();
  v21 = (*v19 + 200);
  v64 = *v21;
  v22 = v21;
  v23 = MEMORY[0x277D84F78] + 8;
  v47 = &v45;
  v48 = MEMORY[0x277D84F78] + 8;
  LOBYTE(v46[0]) = 2;
  v64(0xD000000000000017, 0x80000002234DF8B0, 0, v8, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 25, "build(for:withLocationManager:dataProviderManager:)", 51, v46[0], partial apply for closure #1 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:));
  v24 = *(v67 + 8);
  v67 += 8;
  v61 = v24;
  v25 = v62;
  v26 = v24(v8, v62);
  v51 = v49;
  MEMORY[0x28223BE20](v26);
  Date.init()();
  v56 = v23;
  v47 = v46;
  v48 = v23;
  LOBYTE(v46[0]) = 2;
  v59 = v19;
  v60 = v22;
  v27 = v64;
  v64(0xD000000000000015, 0x80000002234DF950, 0, v8, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 29, "build(for:withLocationManager:dataProviderManager:)", 51, v46[0], partial apply for closure #2 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:));
  v50 = 0;
  v28 = v61(v8, v25);
  v51 = v49;
  MEMORY[0x28223BE20](v28);
  Date.init()();
  v47 = v46;
  v48 = v23;
  LOBYTE(v46[0]) = 2;
  v29 = v50;
  v27(0xD000000000000026, 0x80000002234DF970, 0, v8, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 32, "build(for:withLocationManager:dataProviderManager:)", 51, v46[0], partial apply for closure #3 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:));
  v30 = v61;
  v31 = v61(v8, v25);
  v51 = v49;
  MEMORY[0x28223BE20](v31);
  LODWORD(v46[0]) = v65;
  Date.init()();
  v32 = Context;
  v47 = &v45;
  v48 = Context;
  LOBYTE(v46[0]) = 2;
  v33 = v52;
  v64(0xD00000000000002DLL, 0x80000002234DF9A0, 0, v8, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 36, "build(for:withLocationManager:dataProviderManager:)", 51, v46[0], partial apply for closure #4 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:));
  v50 = v29;
  v30(v8, v25);
  v51 = *(v58 + 40);
  v34 = v51(v66, v33, v32);
  v49[1] = v49;
  MEMORY[0x28223BE20](v34);
  Date.init()();
  v47 = v46;
  v48 = v32;
  LOBYTE(v46[0]) = 2;
  v35 = v50;
  v36 = v64;
  v64(0xD000000000000023, 0x80000002234DF9D0, 0, v8, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 39, "build(for:withLocationManager:dataProviderManager:)", 51, v46[0], partial apply for closure #5 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:));
  v50 = v35;
  v37 = v61;
  v61(v8, v62);
  v38 = v66;
  v39 = v51(v66, v33, Context);
  MEMORY[0x28223BE20](v39);
  Date.init()();
  v47 = v46;
  v48 = v56;
  LOBYTE(v46[0]) = 2;
  v40 = v36;
  v41 = v62;
  v40(0xD00000000000002BLL, 0x80000002234DFA00, 0, v8, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 42, "build(for:withLocationManager:dataProviderManager:)", 51, v46[0], partial apply for closure #6 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:));
  v37(v8, v41);
  v42 = type metadata accessor for PommesSearchRequest(0);
  if (*(v57 + *(v42 + 60)) == 1)
  {
    MEMORY[0x28223BE20](v42);
    LODWORD(v46[0]) = v65;
    Date.init()();
    v47 = &v45;
    v48 = v56;
    LOBYTE(v46[0]) = 2;
    v64(0xD00000000000002BLL, 0x80000002234DFA30, 0, v8, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 47, "build(for:withLocationManager:dataProviderManager:)", 51, v46[0], partial apply for closure #7 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:));
    v37(v8, v41);
  }

  (*(v58 + 32))(v55, v38, Context);
  v43 = v54;
  OSSignposter.end(token:message:)(v54, 0, 0xE000000000000000);
  return _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v43, type metadata accessor for SignpostToken);
}

uint64_t closure #1 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:)(uint64_t a1, int *a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = 5;
  (*(v6 + 104))(v8, *MEMORY[0x277D85188], v5);
  Apple_Parsec_Search_PegasusQueryContext.addLocation(using:for:suspensionTimeInterval:)(a2, a3, v8);
  return (*(v6 + 8))(v8, v5);
}

void Apple_Parsec_Search_PegasusQueryContext.addLocation(using:for:suspensionTimeInterval:)(int *a1, uint64_t a2, uint64_t a3)
{
  v62 = a2;
  v66 = a3;
  v54 = type metadata accessor for Apple_Parsec_Search_V2_Location();
  MEMORY[0x28223BE20](v54);
  v55 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Apple_Parsec_Search_V2_PreciseStatus();
  v57 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for PerformanceUtil.Ticket(0);
  MEMORY[0x28223BE20](v56);
  v58 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    v9 = swift_once();
  }

  v12 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v9);
  v49 = a1;
  Date.init()();
  v13 = *(*v12 + 200);
  v61 = *v12 + 200;
  v49 = &v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  LOBYTE(v48) = 2;
  v67 = v12;
  v63 = v13;
  v13(&v68, 0xD00000000000001DLL, 0x80000002234DFA60, 0, v11, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 119, "addLocation(using:for:suspensionTimeInterval:)", 46, v48, partial apply for closure #1 in Apple_Parsec_Search_PegasusQueryContext.addLocation(using:for:suspensionTimeInterval:));
  v14 = *(v8 + 8);
  v65 = v7;
  v59 = v14;
  v60 = 0;
  v14(v11, v7);
  v15 = v69;
  v64 = v8 + 8;
  if (v69)
  {
    v16 = v68;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.pommes);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v68 = v21;
      *v20 = 136315138;

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v68);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_2232BB000, v18, v19, "Adding country code to query context: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x223DE0F80](v21, -1, -1);
      MEMORY[0x223DE0F80](v20, -1, -1);
    }

    Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
  }

  Apple_Parsec_Search_PegasusQueryContext.suspendRequestIfNecessary(_:_:_:)(v62, a1, v66);
  MEMORY[0x28223BE20](v23);
  Date.init()();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch18PommesLocationInfoVAC0F5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch18PommesLocationInfoVAC0F5ErrorOGMR);
  v49 = &v48;
  v50 = v24;
  LOBYTE(v48) = 2;
  v63(&v68, 0xD00000000000001ELL, 0x80000002234DFAB0, 0, v11, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 129, "addLocation(using:for:suspensionTimeInterval:)", 46, v48, partial apply for closure #2 in Apple_Parsec_Search_PegasusQueryContext.addLocation(using:for:suspensionTimeInterval:));
  v59(v11, v65);
  v25 = v68;
  v26 = v69;
  v27 = v70;
  if (v71)
  {
    if (v68)
    {
      if (v68 == 1)
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        __swift_project_value_buffer(v28, static Logger.pommes);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_2232BB000, v29, v30, "Location services disabled", v31, 2u);
          MEMORY[0x223DE0F80](v31, -1, -1);
        }
      }

      else
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        __swift_project_value_buffer(v44, static Logger.pommes);
        v29 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v29, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_2232BB000, v29, v45, "Siri location sharing disabled", v46, 2u);
          MEMORY[0x223DE0F80](v46, -1, -1);
        }
      }
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.pommes);
      v29 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_2232BB000, v29, v42, "Location unavailable", v43, 2u);
        MEMORY[0x223DE0F80](v43, -1, -1);
      }
    }

    lazy protocol witness table accessor for type Apple_Parsec_Search_V2_Location and conformance Apple_Parsec_Search_V2_Location();
    static Message.with(_:)();
    Apple_Parsec_Search_PegasusQueryContext.location.setter();
    outlined consume of Result<PommesLocationInfo, LocationError>(v25, v26, v27, 1);
  }

  else
  {
    v32 = v70;
    v33 = v58;
    Date.init()();
    v34 = v56;
    v35 = v33 + *(v56 + 20);
    *v35 = "SiriInformationSearch/PegasusQueryContext+Extensions.swift";
    *(v35 + 8) = 58;
    *(v35 + 16) = 2;
    *(v33 + v34[6]) = 139;
    v36 = v33 + v34[7];
    *v36 = "addLocation(using:for:suspensionTimeInterval:)";
    *(v36 + 8) = 46;
    *(v36 + 16) = 2;
    v37 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000023, 0x80000002234DFAD0);
    v38 = (v33 + v34[8]);
    *v38 = v37;
    v38[1] = v39._internal;
    v39.super.isa = v25;
    Apple_Parsec_Search_PegasusQueryContext.augment(withLocation:)(v39);
    if (v26)
    {
      if (v26 == 1)
      {
        v40 = MEMORY[0x277D39240];
      }

      else
      {
        v40 = MEMORY[0x277D39248];
      }
    }

    else
    {
      v40 = MEMORY[0x277D39250];
    }

    (*(v57 + 104))(v53, *v40, v52);
    v47 = Apple_Parsec_Search_PegasusQueryContext.location.modify();
    Apple_Parsec_Search_V2_Location.preciseStatus.setter();
    v47(&v68, 0);
    (*(*v67 + 184))(v33, 0);
    outlined consume of Result<PommesLocationInfo, LocationError>(v25, v26, v32, 0);
    _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v33, type metadata accessor for PerformanceUtil.Ticket);
  }
}

void Apple_Parsec_Search_PegasusQueryContext.addSiriLocale(using:)(uint64_t a1)
{
  v1 = [*(a1 + 120) languageCode];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    Apple_Parsec_Search_PegasusQueryContext.siriLocale.setter();
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.pommes);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2232BB000, oslog, v4, "Unable to add locale to QueryContext", v5, 2u);
      MEMORY[0x223DE0F80](v5, -1, -1);
    }
  }
}

void Apple_Parsec_Search_PegasusQueryContext.addSiriResponseLanguageVariant(using:)(uint64_t a1)
{
  v1 = PommesSearchRequest.responseVariantResult.getter();
  if (v2)
  {
    v3 = v1;
    v4 = v2;

    Apple_Parsec_Search_PegasusQueryContext.siriResponseLanguageVariant.setter();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.pommes);

    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315138;
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, &v11);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_2232BB000, oslog, v6, "Adding siri response language variant to query context: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x223DE0F80](v8, -1, -1);
      MEMORY[0x223DE0F80](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a1;
  v69 = a4;
  v80 = type metadata accessor for Date();
  v75 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v7 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Search_V2_Location();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v62 - v13;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v72 = *(Context - 8);
  v73 = Context;
  v16 = MEMORY[0x28223BE20](Context);
  v65 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v62 - v18;
  v20 = type metadata accessor for SignpostToken(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for OSSignposter();
  v66 = __swift_project_value_buffer(v23, static Signposter.pommes);
  v67 = v22;
  OSSignposter.begin(name:context:)("proxy.createQueryContext", 24, 2u, 0, v22);
  Apple_Parsec_Search_PegasusQueryContext.init()();
  v68 = v7;
  v77 = a3;
  if (a2)
  {
    v24 = a2;
    Apple_Parsec_Search_V2_Location.init()();
    v25 = [v24 coordinate];
    *&v26 = v26;
    MEMORY[0x223DDA160](v25, *&v26);
    [v24 coordinate];
    Apple_Parsec_Search_V2_Location.longitude.setter();
    (*(v9 + 16))(v12, v14, v8);
    v27 = v19;
    Apple_Parsec_Search_PegasusQueryContext.location.setter();

    v28 = (*(v9 + 8))(v14, v8);
  }

  else
  {
    v27 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2234CF920;
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 32) = 0xD000000000000014;
    *(v29 + 40) = 0x80000002234DFB00;
    print(_:separator:terminator:)();

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.pommes);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2232BB000, v31, v32, "Location unavailable", v33, 2u);
      MEMORY[0x223DE0F80](v33, -1, -1);
    }
  }

  if (one-time initialization token for shared != -1)
  {
    v28 = swift_once();
  }

  v34 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v28);
  v35 = v27;
  v60 = v27;
  v61 = v77;
  v36 = v68;
  Date.init()();
  v38 = (*v34 + 200);
  v37 = *v38;
  v76 = v34;
  v39 = v38;
  v40 = MEMORY[0x277D84F78] + 8;
  v60 = &v59;
  v61 = MEMORY[0x277D84F78] + 8;
  LOBYTE(v59) = 2;
  v41 = v37;
  v79 = v37;
  v37(0xD000000000000015, 0x80000002234DF950, 0, v36, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 68, "build(for:withLocation:dataProviderManager:)", 44, v59, partial apply for closure #1 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:));
  v42 = v75 + 8;
  v71 = *(v75 + 8);
  v43 = v71(v36, v80);
  v64 = v62;
  MEMORY[0x28223BE20](v43);
  v63 = v35;
  Date.init()();
  v61 = v40;
  v70 = v40;
  v60 = &v59;
  LOBYTE(v59) = 2;
  v78 = v39;
  v41(0xD000000000000012, 0x80000002234DFB50, 0, v36, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 72, "build(for:withLocation:dataProviderManager:)", 44, v59, partial apply for closure #2 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:));
  v44 = v71;
  v45 = v71(v36, v80);
  v64 = v62;
  MEMORY[0x28223BE20](v45);
  Date.init()();
  v60 = &v59;
  v61 = v40;
  LOBYTE(v59) = 2;
  v46 = v79;
  v79(0xD000000000000026, 0x80000002234DF970, 0, v36, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 76, "build(for:withLocation:dataProviderManager:)", 44, v59, partial apply for closure #3 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:));
  v47 = v44(v36, v80);
  v64 = v62;
  MEMORY[0x28223BE20](v47);
  v48 = v63;
  v59 = v77;
  Date.init()();
  v49 = v73;
  v60 = &v58;
  v61 = v73;
  LOBYTE(v59) = 2;
  v50 = v65;
  v46(0xD00000000000002DLL, 0x80000002234DF9A0, 0, v36, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 80, "build(for:withLocation:dataProviderManager:)", 44, v59, partial apply for closure #4 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:));
  v44(v36, v80);
  v64 = *(v72 + 40);
  v51 = (v64)(v48, v50, v49);
  v62[1] = v62;
  MEMORY[0x28223BE20](v51);
  Date.init()();
  v60 = &v59;
  v61 = v49;
  LOBYTE(v59) = 2;
  v75 = v42;
  v79(0xD000000000000023, 0x80000002234DF9D0, 0, v36, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 83, "build(for:withLocation:dataProviderManager:)", 44, v59, partial apply for closure #5 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:));
  v52 = v71;
  v71(v36, v80);
  v53 = (v64)(v48, v50, v49);
  v54 = v80;
  MEMORY[0x28223BE20](v53);
  Date.init()();
  v60 = &v59;
  v61 = v70;
  LOBYTE(v59) = 2;
  v79(0xD00000000000002BLL, 0x80000002234DFA00, 0, v36, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 86, "build(for:withLocation:dataProviderManager:)", 44, v59, partial apply for closure #6 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:));
  v52(v36, v54);
  v55 = type metadata accessor for PommesSearchRequest(0);
  if (*(v74 + *(v55 + 60)) == 1)
  {
    MEMORY[0x28223BE20](v55);
    v59 = v77;
    Date.init()();
    v60 = &v58;
    v61 = v70;
    LOBYTE(v59) = 2;
    v79(0xD00000000000002BLL, 0x80000002234DFA30, 0, v36, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 91, "build(for:withLocation:dataProviderManager:)", 44, v59, partial apply for closure #7 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:));
    v52(v36, v54);
  }

  (*(v72 + 32))(v69, v48, v73);
  v56 = v67;
  OSSignposter.end(token:message:)(v67, 0, 0xE000000000000000);
  return _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v56, type metadata accessor for SignpostToken);
}

Swift::Void __swiftcall Apple_Parsec_Search_PegasusQueryContext.addLocation(using:)(CLLocation using)
{
  isa = using.super.isa;
  v2 = type metadata accessor for Apple_Parsec_Search_V2_Location();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  Apple_Parsec_Search_V2_Location.init()();
  v9 = [(objc_class *)isa coordinate];
  *&v10 = v10;
  MEMORY[0x223DDA160](v9, *&v10);
  [(objc_class *)isa coordinate];
  Apple_Parsec_Search_V2_Location.longitude.setter();
  (*(v3 + 16))(v6, v8, v2);
  Apple_Parsec_Search_PegasusQueryContext.location.setter();
  (*(v3 + 8))(v8, v2);
}

Swift::Void __swiftcall Apple_Parsec_Search_PegasusQueryContext.addInternalBuild()()
{
  AFIsInternalInstall();

  Apple_Parsec_Search_PegasusQueryContext.internalBuild.setter();
}

uint64_t closure #4 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v7 = *(Context - 8);
  MEMORY[0x28223BE20](Context);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a2, Context);
  (*(*a1 + 352))(v9, a3);
  return (*(v7 + 8))(v9, Context);
}

uint64_t closure #5 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:)(uint64_t a1, uint64_t a2)
{
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v5 = *(Context - 8);
  MEMORY[0x28223BE20](Context);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, Context);
  (*(*a1 + 392))(v7);
  return (*(v5 + 8))(v7, Context);
}

uint64_t partial apply for closure #1 in Apple_Parsec_Search_PegasusQueryContext.addLocation(using:for:suspensionTimeInterval:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  result = (*(v5 + 32))(v4, v5);
  *a1 = result;
  a1[1] = v7;
  return result;
}

void Apple_Parsec_Search_PegasusQueryContext.suspendRequestIfNecessary(_:_:_:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v32 - v11;
  if (Apple_Parsec_Search_PegasusQueryContext.shouldSuspend(_:_:)(a1, a2))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    v32[0] = __swift_project_value_buffer(v13, static Logger.pommes);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2232BB000, v14, v15, "locationManager.status is pending. Suspending execution until location available or timeout.", v16, 2u);
      MEMORY[0x223DE0F80](v16, -1, -1);
    }

    v17 = dispatch_semaphore_create(0);
    v18 = a2[3];
    v19 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v18);
    v32[1] = (*(v19 + 56))(v18, v19);
    *(swift_allocObject() + 16) = v17;
    v20 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVys6ResultOy21SiriInformationSearch14LocationStatusOAF0H5ErrorOGs5NeverOGMd, &_s7Combine12AnyPublisherVys6ResultOy21SiriInformationSearch14LocationStatusOAF0H5ErrorOGs5NeverOGMR);
    lazy protocol witness table accessor for type AnyPublisher<Result<LocationStatus, LocationError>, Never> and conformance AnyPublisher<A, B>();
    Publisher<>.sink(receiveValue:)();

    static DispatchTime.now()();
    MEMORY[0x223DDF450](v10, a3);
    v21 = *(v7 + 8);
    v21(v10, v6);
    v22 = MEMORY[0x223DDFC40](v12);
    v21(v12, v6);
    AnyCancellable.cancel()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    v25 = os_log_type_enabled(v23, v24);
    if (v22)
    {
      if (v25)
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        v27 = "Timed out waiting to receive location. Resuming execution with no location info.";
LABEL_18:
        _os_log_impl(&dword_2232BB000, v23, v24, v27, v26, 2u);
        MEMORY[0x223DE0F80](v26, -1, -1);
      }
    }

    else if (v25)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "Resuming execution to add location to Pegasus request";
      goto LABEL_18;
    }

    return;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.pommes);
  v32[0] = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32[0], v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2232BB000, v32[0], v29, "Will not suspend request. Continuing to add location.", v30, 2u);
    MEMORY[0x223DE0F80](v30, -1, -1);
  }

  v31 = v32[0];
}

double closure #2 in Apple_Parsec_Search_PegasusQueryContext.addLocation(using:for:suspensionTimeInterval:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (a1 + *(type metadata accessor for PommesSearchRequest(0) + 32));
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = a2[3];
    v9 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch18PommesLocationInfoV7OptionsOGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch18PommesLocationInfoV7OptionsOGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2234CF920;
    *(v10 + 32) = v7;
    *(v10 + 40) = v6;
    v11 = *(v9 + 24);

    v11(&v17, v10, v8, v9);
  }

  else
  {
    v12 = a2[3];
    v13 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v12);
    (*(v13 + 24))(&v17, MEMORY[0x277D84F90], v12, v13);
  }

  v14 = v18;
  v15 = v19;
  result = *&v17;
  *a3 = v17;
  *(a3 + 16) = v14;
  *(a3 + 17) = v15;
  return result;
}

uint64_t closure #3 in Apple_Parsec_Search_PegasusQueryContext.addLocation(using:for:suspensionTimeInterval:)(uint64_t a1, unsigned int *a2)
{
  v3 = type metadata accessor for Apple_Parsec_Search_V2_Location.Source();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 104))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *a2);
  return Apple_Parsec_Search_V2_Location.source.setter();
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Search_V2_Location and conformance Apple_Parsec_Search_V2_Location()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Search_V2_Location and conformance Apple_Parsec_Search_V2_Location;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Search_V2_Location and conformance Apple_Parsec_Search_V2_Location)
  {
    type metadata accessor for Apple_Parsec_Search_V2_Location();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Search_V2_Location and conformance Apple_Parsec_Search_V2_Location);
  }

  return result;
}

void outlined consume of Result<PommesLocationInfo, LocationError>(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.shouldSuspend(_:_:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for PommesSearchRequest.ParseState(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocationStatus(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  (*(v11 + 48))(v10, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMd, &_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMR) + 48);
    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 8))(v9 + v15, v16);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v9, type metadata accessor for LocationStatus);
      return 0;
    }

    v13 = *(v9 + 16);

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_0(a1, v6, type metadata accessor for PommesSearchRequest.ParseState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {

    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR) + 64);

    outlined destroy of Siri_Nlu_External_DelegatedUserDialogAct?(&v6[v17]);
    return 1;
  }

  else
  {
    _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v6, type metadata accessor for PommesSearchRequest.ParseState);
    return *(a1 + *(type metadata accessor for PommesSearchRequest(0) + 80));
  }
}

void closure #1 in Apple_Parsec_Search_PegasusQueryContext.suspendRequestIfNecessary(_:_:_:)(uint64_t a1)
{
  v2 = type metadata accessor for LocationStatus(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v43[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v43[-v7];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v43[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v43[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14LocationStatusOAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14LocationStatusOAC0E5ErrorOGMR);
  MEMORY[0x28223BE20](v14);
  v16 = &v43[-v15];
  outlined init with copy of Result<LocationStatus, LocationError>(a1, &v43[-v15]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of LocationStatus(v16, v13);
    _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_0(v13, v11, type metadata accessor for LocationStatus);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v11, type metadata accessor for LocationStatus);
    if (EnumCaseMultiPayload)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.pommes);
      _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_0(v13, v8, type metadata accessor for LocationStatus);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v28, v29))
      {

        _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v8, type metadata accessor for LocationStatus);
        v41 = v13;
LABEL_30:
        _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v41, type metadata accessor for LocationStatus);
        return;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44 = v31;
      *v30 = 136315138;
      _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_0(v8, v5, type metadata accessor for LocationStatus);
      v32 = swift_getEnumCaseMultiPayload();
      if (v32 > 2)
      {
        if (v32 == 3)
        {
          v35 = 0x80000002234DF6F0;
          _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v8, type metadata accessor for LocationStatus);
          v36 = 0xD000000000000015;
        }

        else if (v32 == 4)
        {
          _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v8, type metadata accessor for LocationStatus);
          v35 = 0xEC000000656C6261;
          v36 = 0x6C696176616E752ELL;
        }

        else
        {
          _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v8, type metadata accessor for LocationStatus);
          v35 = 0xE800000000000000;
          v36 = 0x6E776F6E6B6E752ELL;
        }
      }

      else if (v32)
      {
        if (v32 == 1)
        {
          v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMd, &_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMR) + 48);
          _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v8, type metadata accessor for LocationStatus);
          v34 = type metadata accessor for Date();
          (*(*(v34 - 8) + 8))(&v5[v33], v34);
          v35 = 0xE800000000000000;
          v36 = 0x676E69646E65702ELL;
        }

        else
        {
          v35 = 0x80000002234DF710;
          _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v8, type metadata accessor for LocationStatus);
          v36 = 0xD000000000000011;
        }
      }

      else
      {
        _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v5, type metadata accessor for LocationStatus);
        v35 = 0x80000002234DF730;
        _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v8, type metadata accessor for LocationStatus);
        v36 = 0xD00000000000001ELL;
      }

      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, &v44);

      *(v30 + 4) = v42;
      _os_log_impl(&dword_2232BB000, v28, v29, "locationManager.status changed to %s. Continuing suspension until location available or timeout.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x223DE0F80](v31, -1, -1);
      MEMORY[0x223DE0F80](v30, -1, -1);
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.pommes);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_2232BB000, v38, v39, "locationManager.status changed to available", v40, 2u);
        MEMORY[0x223DE0F80](v40, -1, -1);
      }

      OS_dispatch_semaphore.signal()();
    }

    v41 = v13;
    goto LABEL_30;
  }

  v17 = *v16;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.pommes);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v44 = v22;
    *v21 = 136315138;
    v43[7] = v17;
    lazy protocol witness table accessor for type LocationError and conformance LocationError();
    v23 = Error.localizedDescription.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v44);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_2232BB000, v19, v20, "locationManager.statusPublisher failed with error=%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x223DE0F80](v22, -1, -1);
    MEMORY[0x223DE0F80](v21, -1, -1);
  }
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.addWeatherUnits(using:)(void *a1)
{
  v2 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.PressureUnit();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.DistanceUnit();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.PrecipitationUnit();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.WindUnit();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.TemperatureUnit();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v25 - v22;
  Apple_Parsec_Search_V2_WeatherUnits.init()();
  static Apple_Parsec_Search_V2_WeatherUnits.TemperatureUnit.fromWeatherUnitManager(_:)(a1, v16);
  Apple_Parsec_Search_V2_WeatherUnits.temperature.setter();
  static Apple_Parsec_Search_V2_WeatherUnits.WindUnit.fromWeatherUnitManager(_:)(a1, v13);
  Apple_Parsec_Search_V2_WeatherUnits.wind.setter();
  static Apple_Parsec_Search_V2_WeatherUnits.PrecipitationUnit.fromWeatherUnitManager(_:)(a1, v10);
  Apple_Parsec_Search_V2_WeatherUnits.precipitation.setter();
  static Apple_Parsec_Search_V2_WeatherUnits.DistanceUnit.fromWeatherUnitManager(_:)(a1, v7);
  Apple_Parsec_Search_V2_WeatherUnits.distance.setter();
  static Apple_Parsec_Search_V2_WeatherUnits.PressureUnit.fromWeatherUnitManager(_:)(a1, v4);
  Apple_Parsec_Search_V2_WeatherUnits.pressure.setter();
  (*(v18 + 16))(v21, v23, v17);
  Apple_Parsec_Search_PegasusQueryContext.weatherUnits.setter();
  return (*(v18 + 8))(v23, v17);
}

void static Apple_Parsec_Search_V2_WeatherUnits.TemperatureUnit.fromWeatherUnitManager(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = objc_opt_self();
  v16 = v5;
  v7 = [v6 celsius];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
  LOBYTE(v4) = static NSObject.== infix(_:_:)();

  if (v4)
  {
    v8 = *MEMORY[0x277D39088];
    v9 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.TemperatureUnit();
    (*(*(v9 - 8) + 104))(a2, v8, v9);
  }

  else
  {
    v10 = [v6 fahrenheit];
    v11 = static NSObject.== infix(_:_:)();

    v12 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.TemperatureUnit();
    v13 = *(*(v12 - 8) + 104);
    if (v11)
    {
      v14 = MEMORY[0x277D39080];
    }

    else
    {
      v14 = MEMORY[0x277D39090];
    }

    v15 = *v14;

    v13(a2, v15, v12);
  }
}

void static Apple_Parsec_Search_V2_WeatherUnits.WindUnit.fromWeatherUnitManager(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v6 = objc_opt_self();
  v21 = v5;
  v7 = [v6 metersPerSecond];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSUnitSpeed, 0x277CCAE40);
  LOBYTE(v4) = static NSObject.== infix(_:_:)();

  if (v4)
  {
    v8 = MEMORY[0x277D390B8];
LABEL_7:
    v13 = *v8;
    v14 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.WindUnit();
    (*(*(v14 - 8) + 104))(a2, v13, v14);

    return;
  }

  v21 = v21;
  v9 = [v6 kilometersPerHour];
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    v8 = MEMORY[0x277D390C0];
    goto LABEL_7;
  }

  v21 = v21;
  v11 = [v6 milesPerHour];
  v12 = static NSObject.== infix(_:_:)();

  if (v12)
  {
    v8 = MEMORY[0x277D390B0];
    goto LABEL_7;
  }

  v15 = [v6 knots];
  v16 = static NSObject.== infix(_:_:)();

  v17 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.WindUnit();
  v18 = *(*(v17 - 8) + 104);
  if (v16)
  {
    v19 = MEMORY[0x277D390C8];
  }

  else
  {
    v19 = MEMORY[0x277D390D0];
  }

  v20 = *v19;

  v18(a2, v20, v17);
}

void static Apple_Parsec_Search_V2_WeatherUnits.PrecipitationUnit.fromWeatherUnitManager(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = objc_opt_self();
  v19 = v5;
  v7 = [v6 inches];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  LOBYTE(v4) = static NSObject.== infix(_:_:)();

  if (v4)
  {
    v8 = MEMORY[0x277D390A0];
LABEL_5:
    v11 = *v8;
    v12 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.PrecipitationUnit();
    (*(*(v12 - 8) + 104))(a2, v11, v12);

    return;
  }

  v19 = v19;
  v9 = [v6 millimeters];
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    v8 = MEMORY[0x277D39098];
    goto LABEL_5;
  }

  v13 = [v6 centimeters];
  v14 = static NSObject.== infix(_:_:)();

  v15 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.PrecipitationUnit();
  v16 = *(*(v15 - 8) + 104);
  if (v14)
  {
    v17 = MEMORY[0x277D39098];
  }

  else
  {
    v17 = MEMORY[0x277D390A8];
  }

  v18 = *v17;

  v16(a2, v18, v15);
}

void static Apple_Parsec_Search_V2_WeatherUnits.DistanceUnit.fromWeatherUnitManager(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 32))(v3, v4);
  v6 = objc_opt_self();
  v16 = v5;
  v7 = [v6 miles];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  LOBYTE(v4) = static NSObject.== infix(_:_:)();

  if (v4)
  {
    v8 = *MEMORY[0x277D39048];
    v9 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.DistanceUnit();
    (*(*(v9 - 8) + 104))(a2, v8, v9);
  }

  else
  {
    v10 = [v6 kilometers];
    v11 = static NSObject.== infix(_:_:)();

    v12 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.DistanceUnit();
    v13 = *(*(v12 - 8) + 104);
    if (v11)
    {
      v14 = MEMORY[0x277D39040];
    }

    else
    {
      v14 = MEMORY[0x277D39050];
    }

    v15 = *v14;

    v13(a2, v15, v12);
  }
}

void static Apple_Parsec_Search_V2_WeatherUnits.PressureUnit.fromWeatherUnitManager(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 40))(v3, v4);
  v6 = objc_opt_self();
  v21 = v5;
  v7 = [v6 millibars];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSUnitPressure, 0x277CCAE38);
  LOBYTE(v4) = static NSObject.== infix(_:_:)();

  if (v4)
  {
    v8 = MEMORY[0x277D39078];
LABEL_7:
    v13 = *v8;
    v14 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.PressureUnit();
    (*(*(v14 - 8) + 104))(a2, v13, v14);

    return;
  }

  v21 = v21;
  v9 = [v6 inchesOfMercury];
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    v8 = MEMORY[0x277D39068];
    goto LABEL_7;
  }

  v21 = v21;
  v11 = [v6 hectopascals];
  v12 = static NSObject.== infix(_:_:)();

  if (v12)
  {
    v8 = MEMORY[0x277D39060];
    goto LABEL_7;
  }

  v15 = [v6 kilopascals];
  v16 = static NSObject.== infix(_:_:)();

  v17 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.PressureUnit();
  v18 = *(*(v17 - 8) + 104);
  if (v16)
  {
    v19 = MEMORY[0x277D39058];
  }

  else
  {
    v19 = MEMORY[0x277D39070];
  }

  v20 = *v19;

  v18(a2, v20, v17);
}

uint64_t partial apply for closure #6 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:)()
{
  return (*(**(v0 + 16) + 400))(*(v0 + 24));
}

{
  return partial apply for closure #6 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:)();
}

uint64_t partial apply for closure #7 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:)()
{
  return (*(**(v0 + 16) + 408))(*(v0 + 24), *(v0 + 32));
}

{
  return partial apply for closure #7 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:)();
}

uint64_t outlined destroy of Siri_Nlu_External_DelegatedUserDialogAct?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AnyPublisher<Result<LocationStatus, LocationError>, Never> and conformance AnyPublisher<A, B>()
{
  result = lazy protocol witness table cache variable for type AnyPublisher<Result<LocationStatus, LocationError>, Never> and conformance AnyPublisher<A, B>;
  if (!lazy protocol witness table cache variable for type AnyPublisher<Result<LocationStatus, LocationError>, Never> and conformance AnyPublisher<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine12AnyPublisherVys6ResultOy21SiriInformationSearch14LocationStatusOAF0H5ErrorOGs5NeverOGMd, &_s7Combine12AnyPublisherVys6ResultOy21SiriInformationSearch14LocationStatusOAF0H5ErrorOGs5NeverOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyPublisher<Result<LocationStatus, LocationError>, Never> and conformance AnyPublisher<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of Result<LocationStatus, LocationError>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14LocationStatusOAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14LocationStatusOAC0E5ErrorOGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type LocationError and conformance LocationError()
{
  result = lazy protocol witness table cache variable for type LocationError and conformance LocationError;
  if (!lazy protocol witness table cache variable for type LocationError and conformance LocationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationError and conformance LocationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationError and conformance LocationError;
  if (!lazy protocol witness table cache variable for type LocationError and conformance LocationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationError and conformance LocationError);
  }

  return result;
}

uint64_t _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t *PommesBridgeInstrumentationUtil.sharedInstance.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  return &static PommesBridgeInstrumentationUtil.sharedInstance;
}

uint64_t one-time initialization function for sharedInstance()
{
  type metadata accessor for PommesBridgeInstrumentationUtil();
  v0 = swift_allocObject();
  v0[2] = [objc_opt_self() sharedStream];
  type metadata accessor for InstrumentationUtil();
  swift_allocObject();
  v0[3] = InstrumentationUtil.init()();
  type metadata accessor for AnalyticsComponentIdGenerator();
  v0[4] = swift_allocObject();
  v1 = type metadata accessor for FeatureChecker();
  result = swift_allocObject();
  v0[8] = v1;
  v0[9] = &protocol witness table for FeatureChecker;
  v0[5] = result;
  static PommesBridgeInstrumentationUtil.sharedInstance = v0;
  return result;
}

uint64_t static PommesBridgeInstrumentationUtil.sharedInstance.getter()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }
}

void *PommesBridgeInstrumentationUtil.__allocating_init(_:_:_:featureChecker:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  outlined init with take of DomainWarmupHandling(a4, (v8 + 5));
  return v8;
}

void *PommesBridgeInstrumentationUtil.init(_:_:_:featureChecker:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  outlined init with take of DomainWarmupHandling(a4, (v4 + 5));
  return v4;
}

void PommesBridgeInstrumentationUtil.logPommesRequestStarted(pommesCandidateId:requestId:rootRequestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - v12;
  v14 = specialized PommesBridgeInstrumentationUtil.buildWrapperEventMessageForPommes(pommesCandidateId:requestId:rootRequestId:logResourceUtilization:)(a1, a2, a3, a4, a5);
  if (v14)
  {
    v15 = v14;
    v30 = [objc_allocWithZone(MEMORY[0x277D59788]) init];
    [v30 setExists:1];
    v16 = [v15 pommesBridgeContext];
    [v16 setStartedOrChanged_];

    [*(v5 + 16) emitMessage_];
    v17 = dispatch thunk of InstrumentationUtil.powerLogger()();
    if (v17)
    {
      v18 = v17;
      v19 = [v17 captureSnapshot];

      if (v19)
      {
        v20 = [objc_opt_self() context];
        if (v20)
        {
          v21 = v20;
          UUID.init(uuidString:)();
          v22 = type metadata accessor for UUID();
          v23 = *(v22 - 8);
          isa = 0;
          if ((*(v23 + 48))(v13, 1, v22) != 1)
          {
            isa = UUID._bridgeToObjectiveC()().super.isa;
            (*(v23 + 8))(v13, v22);
          }

          [v19 logWithEventContext:v21 requestIdentifier:isa];
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.pommes);
    v30 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2232BB000, v30, v26, "Unable to log Pommes request started because wrapperEvent is nil", v27, 2u);
      MEMORY[0x223DE0F80](v27, -1, -1);
    }
  }

  v28 = v30;
}

void PommesBridgeInstrumentationUtil.logPommesRequestEnded(status:pommesCandidateId:requestId:rootRequestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v31 - v14;
  v16 = specialized PommesBridgeInstrumentationUtil.buildWrapperEventMessageForPommes(pommesCandidateId:requestId:rootRequestId:logResourceUtilization:)(a2, a3, a4, a5, a6);
  if (v16)
  {
    v17 = v16;
    v32 = [objc_allocWithZone(MEMORY[0x277D59778]) init];
    [v32 setStatus:a1];
    v18 = [v17 pommesBridgeContext];
    [v18 setEnded_];

    [*(v6 + 16) emitMessage_];
    v19 = dispatch thunk of InstrumentationUtil.powerLogger()();
    if (v19)
    {
      v20 = v19;
      v21 = [v19 captureSnapshot];

      if (v21)
      {
        v22 = [objc_opt_self() context];
        if (v22)
        {
          v23 = v22;
          UUID.init(uuidString:)();
          v24 = type metadata accessor for UUID();
          v25 = *(v24 - 8);
          isa = 0;
          if ((*(v25 + 48))(v15, 1, v24) != 1)
          {
            isa = UUID._bridgeToObjectiveC()().super.isa;
            (*(v25 + 8))(v15, v24);
          }

          [v21 logWithEventContext:v23 requestIdentifier:isa];
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.pommes);
    v32 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2232BB000, v32, v28, "Unable to log Pommes request ended because wrapperEvent is nil", v29, 2u);
      MEMORY[0x223DE0F80](v29, -1, -1);
    }
  }

  v30 = v32;
}

void PommesBridgeInstrumentationUtil.logPommesRequestFailed(reason:pommesCandidateId:requestId:rootRequestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v31 - v14;
  v16 = specialized PommesBridgeInstrumentationUtil.buildWrapperEventMessageForPommes(pommesCandidateId:requestId:rootRequestId:logResourceUtilization:)(a2, a3, a4, a5, a6);
  if (v16)
  {
    v17 = v16;
    v32 = [objc_allocWithZone(MEMORY[0x277D59780]) init];
    [v32 setReason:a1];
    v18 = [v17 pommesBridgeContext];
    [v18 setFailed_];

    [*(v6 + 16) emitMessage_];
    v19 = dispatch thunk of InstrumentationUtil.powerLogger()();
    if (v19)
    {
      v20 = v19;
      v21 = [v19 captureSnapshot];

      if (v21)
      {
        v22 = [objc_opt_self() context];
        if (v22)
        {
          v23 = v22;
          UUID.init(uuidString:)();
          v24 = type metadata accessor for UUID();
          v25 = *(v24 - 8);
          isa = 0;
          if ((*(v25 + 48))(v15, 1, v24) != 1)
          {
            isa = UUID._bridgeToObjectiveC()().super.isa;
            (*(v25 + 8))(v15, v24);
          }

          [v21 logWithEventContext:v23 requestIdentifier:isa];
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.pommes);
    v32 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2232BB000, v32, v28, "Unable to log Pommes request failed because wrapperEvent is nil", v29, 2u);
      MEMORY[0x223DE0F80](v29, -1, -1);
    }
  }

  v30 = v32;
}

void PommesBridgeInstrumentationUtil.logPommesRequestUnableToHandle(pommesCandidateId:requestId:rootRequestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = specialized PommesBridgeInstrumentationUtil.buildWrapperEventMessageForPommes(pommesCandidateId:requestId:rootRequestId:logResourceUtilization:)(a1, a2, a3, a4, a5);
  if (v6)
  {
    v7 = v6;
    oslog = [objc_allocWithZone(MEMORY[0x277D59790]) init];
    [oslog setExists:1];
    v8 = [v7 pommesBridgeContext];
    [v8 setCancelled_];

    [*(v5 + 16) emitMessage_];
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.pommes);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2232BB000, oslog, v10, "Unable to log Pommes request unable to habdle because wrapperEvent is nil", v11, 2u);
      MEMORY[0x223DE0F80](v11, -1, -1);
    }
  }
}

void *PommesBridgeInstrumentationUtil.logSearchCompletion(pommesCandidateId:requestId:rootRequestId:result:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8)
{
  v100 = a5;
  v101 = a6;
  v99 = a4;
  v102 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v91 - v14;
  v16 = type metadata accessor for PommesSearchError(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v95 = (&v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v94 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v91 - v22;
  v24 = type metadata accessor for PommesError();
  v96 = *(v24 - 8);
  v97 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v25);
  v28 = &v91 - v27;
  if ((a8 & 1) == 0)
  {
    v40 = *(*v8 + 136);
    v41 = a7;
    v40(1, a2, a3, v99, v100, v101);
    (*(v17 + 56))(v102, 1, 1, v16);
    return a7;
  }

  v91 = v26;
  v92 = a2;
  v93 = a3;
  v98 = v17;
  v29 = v102;
  v104 = a7;
  v30 = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();
  v104 = a7;
  v31 = a7;
  v32 = a7;
  if (swift_dynamicCast())
  {
    LOBYTE(v104) = v103;
    logAndMapSearchRequestProcessorError #1 (_:) in PommesBridgeInstrumentationUtil.logSearchCompletion(pommesCandidateId:requestId:rootRequestId:result:)(&v104, a7, v8, v92, v93, v99, v100, v101, v23);
    v34 = v96;
    v33 = v97;
    if ((*(v96 + 48))(v23, 1, v97) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v23, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
      v35 = *(v16 + 20);
      v36 = *MEMORY[0x277D56670];
      v37 = type metadata accessor for PommesSearchReason();
      (*(*(v37 - 8) + 104))(v29 + v35, v36, v37);
      lazy protocol witness table accessor for type PommesError and conformance PommesError();
      v38 = swift_allocError();
      (*(v34 + 104))(v39, *MEMORY[0x277D5CEE0], v33);
      outlined consume of Result<PommesResponse, Error>(a7);
    }

    else
    {
      v53 = *(v34 + 32);
      v53(v28, v23, v33);
      lazy protocol witness table accessor for type PommesError and conformance PommesError();
      v38 = swift_allocError();
      v53(v54, v28, v33);
      outlined consume of Result<PommesResponse, Error>(a7);
      v55 = *(v16 + 20);
      v56 = *MEMORY[0x277D56670];
      v57 = type metadata accessor for PommesSearchReason();
      (*(*(v57 - 8) + 104))(v29 + v55, v56, v57);
    }

    *v29 = v38;
    (*(v98 + 56))(v29, 0, 1, v16);
    return 0;
  }

  v104 = a7;
  v43 = a7;
  v44 = v16;
  v45 = swift_dynamicCast();
  v46 = *(v98 + 56);
  v98 += 56;
  if (!v45)
  {
    v95 = v8;
    v46(v15, 1, 1, v16);
    outlined destroy of MediaUserStateCenter?(v15, &_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Logger.pommes);
    v59 = a7;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    outlined consume of Result<PommesResponse, Error>(a7);
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v103 = a7;
      v104 = v63;
      *v62 = 136315138;
      v64 = a7;
      v65 = String.init<A>(describing:)();
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v104);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_2232BB000, v60, v61, "Pommes request failed due to unknown error, not of expected types: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      v68 = v63;
      v32 = a7;
      MEMORY[0x223DE0F80](v68, -1, -1);
      MEMORY[0x223DE0F80](v62, -1, -1);
    }

    v69 = v96;
    v70 = v29;
    v71 = v97;
    (*(*v95 + 18))(0, v92, v93, v99, v100, v101);
    v72 = *(v16 + 20);
    v73 = *MEMORY[0x277D56670];
    v74 = type metadata accessor for PommesSearchReason();
    (*(*(v74 - 8) + 104))(v70 + v72, v73, v74);
    lazy protocol witness table accessor for type PommesError and conformance PommesError();
    v75 = swift_allocError();
    (*(v69 + 104))(v76, *MEMORY[0x277D5CEE0], v71);
    outlined consume of Result<PommesResponse, Error>(v32);
    *v70 = v75;
    v77 = v70;
    v78 = v16;
    goto LABEL_21;
  }

  v46(v15, 0, 1, v16);
  v47 = v15;
  v48 = v95;
  outlined init with take of PommesSearchError(v47, v95);
  v104 = *v48;
  v49 = v104;
  if (swift_dynamicCast())
  {
    LOBYTE(v104) = v103;
    v50 = v94;
    logAndMapSearchRequestProcessorError #1 (_:) in PommesBridgeInstrumentationUtil.logSearchCompletion(pommesCandidateId:requestId:rootRequestId:result:)(&v104, v32, v8, v92, v93, v99, v100, v101, v94);
    v52 = v96;
    v51 = v97;
    if ((*(v96 + 48))(v50, 1, v97) != 1)
    {
      v79 = v44;
      v85 = *(v52 + 32);
      v86 = v91;
      v85(v91, v50, v51);
      lazy protocol witness table accessor for type PommesError and conformance PommesError();
      v87 = swift_allocError();
      v85(v88, v86, v51);
      outlined consume of Result<PommesResponse, Error>(v32);
      v89 = *(v44 + 20);
      v90 = type metadata accessor for PommesSearchReason();
      (*(*(v90 - 8) + 16))(v29 + v89, v48 + v89, v90);
      outlined destroy of PommesSearchError(v48);
      *v29 = v87;
      goto LABEL_20;
    }

    outlined destroy of MediaUserStateCenter?(v50, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  }

  else
  {
    v52 = v96;
    v51 = v97;
  }

  v79 = v44;
  v80 = *(v44 + 20);
  lazy protocol witness table accessor for type PommesError and conformance PommesError();
  v81 = swift_allocError();
  (*(v52 + 104))(v82, *MEMORY[0x277D5CEE0], v51);
  outlined consume of Result<PommesResponse, Error>(v32);
  v83 = *(v79 + 20);
  v84 = type metadata accessor for PommesSearchReason();
  (*(*(v84 - 8) + 16))(v29 + v83, v48 + v80, v84);
  outlined destroy of PommesSearchError(v48);
  *v29 = v81;
LABEL_20:
  v77 = v29;
  v78 = v79;
LABEL_21:
  v46(v77, 0, 1, v78);
  return 0;
}

uint64_t logAndMapSearchRequestProcessorError #1 (_:) in PommesBridgeInstrumentationUtil.logSearchCompletion(pommesCandidateId:requestId:rootRequestId:result:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *a1;
  if (!(v15 >> 6))
  {
    if (v15 == 2)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Logger.pommes);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_31;
      }

      v28 = a5;
      v29 = a6;
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2232BB000, v26, v27, "Declining Pommes request due to low PSC score. This is expected behavior for non-info requests.", v30, 2u);
      v31 = v30;
      a6 = v29;
      a5 = v28;
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Logger.pommes);
      v52 = a2;
      v26 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v26, v53))
      {
        goto LABEL_31;
      }

      v54 = swift_slowAlloc();
      v92 = a6;
      v55 = swift_slowAlloc();
      v97 = v55;
      *v54 = 136315138;
      v56 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v57 = String.init<A>(describing:)();
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v97);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_2232BB000, v26, v53, "Pommes request unable to be handled: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      v60 = v55;
      a6 = v92;
      MEMORY[0x223DE0F80](v60, -1, -1);
      v31 = v54;
    }

    MEMORY[0x223DE0F80](v31, -1, -1);
LABEL_31:

    (*(*a3 + 152))(a4, a5, a6, a7, a8);
    v24 = MEMORY[0x277D5CEC8];
    goto LABEL_42;
  }

  if (v15 >> 6 == 1)
  {
    v16 = v15 & 0x3F;
    if ((v15 & 0x3F) == 1)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.pommes);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = a5;
        v21 = a6;
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2232BB000, v18, v19, "Declining Pommes request due to missing DUDA. This is expected behavior for non-info requests.", v22, 2u);
        v23 = v22;
        a6 = v21;
        a5 = v20;
        MEMORY[0x223DE0F80](v23, -1, -1);
      }

      (*(*a3 + 144))(7, a4, a5, a6, a7, a8);
      v24 = MEMORY[0x277D5CEC0];
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.pommes);
      v43 = a2;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v91 = v45;
        v46 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v97 = v90;
        *v46 = 136315138;
        v47 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v48 = String.init<A>(describing:)();
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v97);

        *(v46 + 4) = v50;
        _os_log_impl(&dword_2232BB000, v44, v91, "Pommes request failed due to a Pommes failure: %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v90);
        MEMORY[0x223DE0F80](v90, -1, -1);
        MEMORY[0x223DE0F80](v46, -1, -1);
      }

      (*(*a3 + 144))(7, a4, a5, a6, a7, a8);
      v24 = qword_2784DACB8[v16];
    }
  }

  else if (v15 == 128)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static Logger.pommes);
    v62 = a2;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v93 = a6;
      v66 = swift_slowAlloc();
      v97 = v66;
      *v65 = 136315138;
      v67 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v68 = String.init<A>(describing:)();
      v70 = a4;
      v71 = a5;
      v72 = a8;
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v97);

      *(v65 + 4) = v73;
      a8 = v72;
      a5 = v71;
      a4 = v70;
      _os_log_impl(&dword_2232BB000, v63, v64, "Pommes request failed due to invalid state: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      v74 = v66;
      a6 = v93;
      MEMORY[0x223DE0F80](v74, -1, -1);
      MEMORY[0x223DE0F80](v65, -1, -1);
    }

    (*(*a3 + 144))(7, a4, a5, a6, a7, a8);
    v24 = MEMORY[0x277D5CEB8];
  }

  else if (v15 == 129)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.pommes);
    v33 = a2;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v97 = v37;
      *v36 = 136315138;
      v38 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v39 = String.init<A>(describing:)();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v97);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_2232BB000, v34, v35, "Pommes request failed due to getting no results: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x223DE0F80](v37, -1, -1);
      MEMORY[0x223DE0F80](v36, -1, -1);
    }

    (*(*a3 + 136))(2, a4, a5, a6, a7, a8);
    v24 = MEMORY[0x277D5CEF0];
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static Logger.pommes);
    v76 = a2;
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v94 = a6;
      v80 = swift_slowAlloc();
      v97 = v80;
      *v79 = 136315138;
      v81 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v82 = String.init<A>(describing:)();
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, &v97);

      *(v79 + 4) = v84;
      _os_log_impl(&dword_2232BB000, v77, v78, "Pommes request failed due to unavailable network: %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      v85 = v80;
      a6 = v94;
      MEMORY[0x223DE0F80](v85, -1, -1);
      MEMORY[0x223DE0F80](v79, -1, -1);
    }

    (*(*a3 + 144))(6, a4, a5, a6, a7, a8);
    v24 = MEMORY[0x277D5CED0];
  }

LABEL_42:
  v86 = *v24;
  v87 = type metadata accessor for PommesError();
  v88 = *(v87 - 8);
  (*(v88 + 104))(a9, v86, v87);
  return (*(v88 + 56))(a9, 0, 1, v87);
}

uint64_t PommesBridgeInstrumentationUtil.deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  return v0;
}

uint64_t PommesBridgeInstrumentationUtil.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t specialized PommesBridgeInstrumentationUtil.getRCIdAndTRPId(pommesCandidateId:)(uint64_t a1)
{
  v2 = type metadata accessor for PommesCandidateId();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D56618])
  {
    goto LABEL_2;
  }

  if (v6 == *MEMORY[0x277D56620])
  {
    (*(v3 + 96))(v5, v2);
    v8 = *v5;

    return v8;
  }

  else
  {
    if (v6 == *MEMORY[0x277D56610])
    {
LABEL_2:
      (*(v3 + 96))(v5, v2);
      return *v5;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.pommes);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2232BB000, v10, v11, "Unknown PommesCandidateId. Setting resultCandidateId and trpId to empty string.", v12, 2u);
      MEMORY[0x223DE0F80](v12, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

void *specialized PommesBridgeInstrumentationUtil.buildWrapperEventMessageForPommes(pommesCandidateId:requestId:rootRequestId:logResourceUtilization:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a3;
  v49 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v46 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v47 = &v45 - v16;
  v17 = specialized PommesBridgeInstrumentationUtil.getRCIdAndTRPId(pommesCandidateId:)(a1);
  v19 = v18;
  v50 = v5;

  v20 = dispatch thunk of InstrumentationUtil.buildWrapperEventMessage(_:_:logResourceUtilization:)();

  if (v20)
  {

    v21 = [objc_allocWithZone(MEMORY[0x277D59770]) init];
    UUID.init(uuidString:)();

    v22 = *(v13 + 48);
    v23 = v13;
    if (v22(v11, 1, v12) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v31 = v47;
      (*(v13 + 32))(v47, v11, v12);
      if (v21)
      {
        v32 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v33 = v21;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v35 = [v32 initWithNSUUID_];

        v23 = v13;
        [v33 setTrpId_];
      }

      v13 = v23;
      (*(v23 + 8))(v31, v12);
    }

    v36 = v50[8];
    v37 = v50[9];
    __swift_project_boxed_opaque_existential_1(v50 + 5, v36);
    if ((*(v37 + 8))(v36, v37))
    {
      v38 = v48;
      UUID.init(uuidString:)();
      if (v22(v38, 1, v12) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v38, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v39 = v46;
        (*(v13 + 32))(v46, v38, v12);
        if (v21)
        {
          v40 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          v41 = v21;
          v42 = UUID._bridgeToObjectiveC()().super.isa;
          v43 = [v40 initWithNSUUID_];

          [v41 setSubRequestId_];
        }

        (*(v13 + 8))(v39, v12);
      }
    }

    [v20 setPommesBridgeContext_];
  }

  else
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.pommes);

    v25 = v51;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v52 = v29;
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v25, &v52);
      *(v28 + 12) = 2080;
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v52);

      *(v28 + 14) = v30;
      _os_log_impl(&dword_2232BB000, v26, v27, "Unable to create ORCHSchemaORCHClientEvent for requestId=%s resultCandidateId=%s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v29, -1, -1);
      MEMORY[0x223DE0F80](v28, -1, -1);
    }

    else
    {
    }
  }

  return v20;
}

unint64_t lazy protocol witness table accessor for type PommesError and conformance PommesError()
{
  result = lazy protocol witness table cache variable for type PommesError and conformance PommesError;
  if (!lazy protocol witness table cache variable for type PommesError and conformance PommesError)
  {
    type metadata accessor for PommesError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesError and conformance PommesError);
  }

  return result;
}

uint64_t outlined init with take of PommesSearchError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesSearchError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PommesSearchError(uint64_t a1)
{
  v2 = type metadata accessor for PommesSearchError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AssistantDataSnapshot.MeCard.toProfileSliceProtobuf()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12[-v4];
  v6 = type metadata accessor for Google_Protobuf_Any();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14[3] = type metadata accessor for Apple_Parsec_Siri_V2alpha_Person();
  v14[4] = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_Person and conformance Apple_Parsec_Siri_V2alpha_Person(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Person and conformance Apple_Parsec_Siri_V2alpha_Person, MEMORY[0x277D38FC0], MEMORY[0x277D38FB8]);
  __swift_allocate_boxed_opaque_existential_1(v14);
  v13 = v1;
  static Message.with(_:)();
  defaultAnyTypeURLPrefix.getter();
  Google_Protobuf_Any.init(message:partial:typePrefix:)();
  (*(v7 + 56))(v5, 0, 1, v6);
  (*(v7 + 32))(v9, v5, v6);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  MEMORY[0x28223BE20](v10);
  *&v12[-16] = v9;
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_Person and conformance Apple_Parsec_Siri_V2alpha_Person(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x277D39768], MEMORY[0x277D39760]);
  static Message.with(_:)();
  (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  return (*(v7 + 8))(v9, v6);
}

uint64_t AssistantDataSnapshot.MeCard.toPersonProtobuf()()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Person();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_Person and conformance Apple_Parsec_Siri_V2alpha_Person(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Person and conformance Apple_Parsec_Siri_V2alpha_Person, MEMORY[0x277D38FC0], MEMORY[0x277D38FB8]);
  return static Message.with(_:)();
}

uint64_t closure #1 in AssistantDataSnapshot.MeCard.toProfileSliceProtobuf()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Google_Protobuf_Any();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  MEMORY[0x28223BE20](v11);
  (*(v13 + 104))(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D39AD8]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  (*(v8 + 104))(v10, *MEMORY[0x277D39D58], v7);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
  (*(v4 + 16))(v6, a2, v3);
  return Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
}

uint64_t closure #1 in AssistantDataSnapshot.MeCard.toPersonProtobuf()(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2[1])
  {

    Apple_Parsec_Siri_V2alpha_Person.givenName.setter();
  }

  if (a2[3])
  {

    Apple_Parsec_Siri_V2alpha_Person.middleName.setter();
  }

  if (a2[5])
  {

    Apple_Parsec_Siri_V2alpha_Person.familyName.setter();
  }

  if (a2[9])
  {

    Apple_Parsec_Siri_V2alpha_Person.fullName.setter();
  }

  if (a2[7])
  {

    Apple_Parsec_Siri_V2alpha_Person.nickname.setter();
  }

  if (a2[12])
  {

    Apple_Parsec_Siri_V2alpha_Person.contactIdentifier.setter();
  }

  v7 = a2[10];
  v8 = *(v7 + 16);
  if (v8)
  {
    v19[1] = a1;
    v21 = MEMORY[0x277D84F90];
    v9 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v10 = v21;
    v11 = (v7 + 32);
    v19[2] = v23 + 32;
    do
    {
      v12 = v11[1];
      v22[0] = *v11;
      v22[1] = v12;
      v13 = v11[2];
      v14 = v11[3];
      v15 = v11[5];
      v22[4] = v11[4];
      v22[5] = v15;
      v22[2] = v13;
      v22[3] = v14;
      MEMORY[0x28223BE20](v9);
      v19[-2] = v22;
      outlined init with copy of AssistantDataSnapshot.MeCard.ContactAddress(v22, v20);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_Person and conformance Apple_Parsec_Siri_V2alpha_Person(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ContactAddress and conformance Apple_Parsec_Siri_V2alpha_ContactAddress, MEMORY[0x277D39648], MEMORY[0x277D39640]);
      static Message.with(_:)();
      outlined destroy of AssistantDataSnapshot.MeCard.ContactAddress(v22);
      v21 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v10 = v21;
      }

      *(v10 + 16) = v17 + 1;
      v9 = (*(v23 + 32))(v10 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v17, v6, v4);
      v11 += 6;
      --v8;
    }

    while (v8);
  }

  return Apple_Parsec_Siri_V2alpha_Person.addresses.setter();
}

uint64_t outlined destroy of Google_Protobuf_Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in AssistantDataSnapshot.MeCard.ContactAddress.toContactAddressProtobuf()(uint64_t a1, uint64_t *a2)
{
  if (a2[1])
  {

    result = Apple_Parsec_Siri_V2alpha_Person.givenName.setter();
  }

  if (a2[3])
  {

    result = Apple_Parsec_Siri_V2alpha_Person.middleName.setter();
  }

  if (a2[5])
  {

    result = Apple_Parsec_Siri_V2alpha_Person.familyName.setter();
  }

  if (a2[7])
  {

    result = Apple_Parsec_Siri_V2alpha_Person.nickname.setter();
  }

  if (a2[9])
  {

    result = Apple_Parsec_Siri_V2alpha_Person.fullName.setter();
  }

  if (a2[11])
  {

    return Apple_Parsec_Siri_V2alpha_ContactAddress.countryCode.setter();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_Person and conformance Apple_Parsec_Siri_V2alpha_Person(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *AppIntentMetadataMapper.getAppIntentMetadata(bundleId:)(uint64_t a1, uint64_t a2)
{
  i = a1;
  v101 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVSgMd, &_s10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v102 = &v81 - v4;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata();
  v95 = *(v5 - 8);
  v96 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v93 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v94 = &v81 - v8;
  outlined init with copy of AppDataProviding(v2, v104);
  v98 = v106;
  v99 = v105;
  v97 = __swift_project_boxed_opaque_existential_1(v104, v105);
  if (one-time initialization token for mappings != -1)
  {
    goto LABEL_58;
  }

LABEL_2:
  v9 = static AppIntentMetadataMapper.mappings;
  v10 = MEMORY[0x277D84F90];
  v103 = MEMORY[0x277D84F90];
  v11 = 1 << *(static AppIntentMetadataMapper.mappings + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(static AppIntentMetadataMapper.mappings + 8);
  v14 = (v11 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v15 = 0;
  if (!v13)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_5:
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      if ([objc_opt_self() protocolOrNilWithIdentifier_])
      {
        break;
      }

      if (!v13)
      {
        goto LABEL_7;
      }
    }

    MEMORY[0x223DDF820]();
    if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v10 = v103;
  }

  while (v13);
  while (1)
  {
LABEL_7:
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    if (v17 >= v14)
    {
      break;
    }

    v13 = v9[v17 + 8];
    ++v15;
    if (v13)
    {
      v15 = v17;
      goto LABEL_5;
    }
  }

  v18 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo16LNSystemProtocolC_SayAEGTt0g5Tf4g_n(v10);

  v20 = i;
  v19 = v101;
  v21 = (*(v98 + 8))(v18, 2, i, v101, v99);

  if (*(v21 + 16) && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v19), (v23 & 1) != 0))
  {
    v24 = *(*(v21 + 56) + 8 * v22);

    __swift_destroy_boxed_opaque_existential_1(v104);
    v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v26 = 0;
    v27 = v24 + 64;
    v28 = 1 << *(v24 + 32);
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & *(v24 + 64);
    v31 = (v28 + 63) >> 6;
    v97 = v24;
    v98 = v95 + 48;
    v89 = (v95 + 32);
    v90 = v25;
    v88 = (v95 + 16);
    v87 = v95 + 8;
    v86 = v95 + 40;
    v91 = v31;
    v92 = v24 + 64;
LABEL_22:
    if (v30)
    {
      v32 = v26;
LABEL_27:
      v33 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v99 = *(v97[7] + ((v32 << 9) | (8 * v33)));
      v34 = [v99 systemProtocolMetadata];
      type metadata accessor for LNSystemProtocolIdentifier(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24LNSystemProtocolMetadata_pMd, &_sSo24LNSystemProtocolMetadata_pMR);
      lazy protocol witness table accessor for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier(&lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier, type metadata accessor for LNSystemProtocolIdentifier, &protocol conformance descriptor for LNSystemProtocolIdentifier);
      v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = 0;
      v37 = v35 + 64;
      v38 = 1 << *(v35 + 32);
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      else
      {
        v39 = -1;
      }

      v40 = v39 & *(v35 + 64);
      v41 = (v38 + 63) >> 6;
      for (i = v35; ; v35 = i)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              do
              {
                if (!v40)
                {
                  while (1)
                  {
                    v43 = v36 + 1;
                    if (__OFADD__(v36, 1))
                    {
                      break;
                    }

                    if (v43 >= v41)
                    {

                      v26 = v32;
                      v31 = v91;
                      v27 = v92;
                      goto LABEL_22;
                    }

                    v42 = *(v37 + 8 * v43);
                    ++v36;
                    if (v42)
                    {
                      v36 = v43;
                      goto LABEL_38;
                    }
                  }

LABEL_56:
                  __break(1u);
LABEL_57:
                  __break(1u);
LABEL_58:
                  swift_once();
                  goto LABEL_2;
                }

                v42 = v40;
LABEL_38:
                v40 = (v42 - 1) & v42;
              }

              while (!v9[2]);
              v44 = (v36 << 9) | (8 * __clz(__rbit64(v42)));
              v45 = v9;
              v46 = *(*(v35 + 56) + v44);
              v47 = *(*(v35 + 48) + v44);
              swift_unknownObjectRetain();
              v48 = specialized __RawDictionaryStorage.find<A>(_:)(v47);
              if (v49)
              {
                break;
              }

              swift_unknownObjectRelease();
              v9 = v45;
            }

            v101 = v40;
            v50 = v45;
            v51 = *(v45[7] + 16 * v48);
            v104[0] = v46;

            v51(v104);
            v52 = v102;

            if ((*v98)(v52, 1, v96) != 1)
            {
              break;
            }

            swift_unknownObjectRelease();

            outlined destroy of MediaUserStateCenter?(v52, &_s10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVSgMd, &_s10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVSgMR);
            v9 = v45;
            v35 = i;
            v40 = v101;
          }

          v85 = v46;
          v53 = v96;
          v82 = *v89;
          v82(v94, v52, v96);
          v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v56 = v55;
          (*v88)(v93, v94, v53);
          v57 = v90;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v104[0] = v57;
          v84 = v54;
          v59 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v56);
          v60 = v57[2];
          v61 = (v58 & 1) == 0;
          v62 = v60 + v61;
          if (__OFADD__(v60, v61))
          {
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v9 = v50;
          if (v57[3] < v62)
          {
            break;
          }

          v40 = v101;
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v58 & 1) == 0)
            {
              goto LABEL_51;
            }
          }

          else
          {
            isUniquelyReferenced_nonNull_native = v58;
            v90 = v59;
            specialized _NativeDictionary.copy()(MEMORY[0x277D39C20], &_ss18_DictionaryStorageCySS10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVGMd, _ss18_DictionaryStorageCySS10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVGMR);
            v59 = v90;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              goto LABEL_51;
            }
          }

LABEL_49:
          v69 = v59;

          v90 = v104[0];
          v70 = v95;
          v71 = *(v104[0] + 56) + *(v95 + 72) * v69;
          v72 = v96;
          (*(v95 + 40))(v71, v93, v96);

          swift_unknownObjectRelease();
          (*(v70 + 8))(v94, v72);
          v35 = i;
        }

        v63 = v58;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v62, isUniquelyReferenced_nonNull_native, MEMORY[0x277D39C20], &_ss18_DictionaryStorageCySS10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVGMd, _ss18_DictionaryStorageCySS10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVGMR);
        v64 = specialized __RawDictionaryStorage.find<A>(_:)(v84, v56);
        v66 = v65 & 1;
        v67 = v63;
        v68 = v63 & 1;
        v40 = v101;
        if (v68 != v66)
        {
          goto LABEL_61;
        }

        v59 = v64;
        if (v67)
        {
          goto LABEL_49;
        }

LABEL_51:
        v73 = v56;
        v74 = v104[0];
        *(v104[0] + 8 * (v59 >> 6) + 64) |= 1 << v59;
        v75 = (v74[6] + 16 * v59);
        *v75 = v84;
        v75[1] = v73;
        v76 = v96;
        v82((v74[7] + *(v95 + 72) * v59), v93, v96);

        swift_unknownObjectRelease();
        (*(v95 + 8))(v94, v76);
        v77 = v74[2];
        v78 = __OFADD__(v77, 1);
        v79 = v77 + 1;
        if (v78)
        {
          goto LABEL_60;
        }

        v90 = v74;
        v74[2] = v79;
      }
    }

    while (1)
    {
      v32 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_57;
      }

      if (v32 >= v31)
      {
        break;
      }

      v30 = *(v27 + 8 * v32);
      ++v26;
      if (v30)
      {
        goto LABEL_27;
      }
    }

    return v90;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v104);
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }
}

uint64_t one-time initialization function for mappings()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo26LNSystemProtocolIdentifiera_10PegasusAPI035Apple_Parsec_Siri_V2alpha_AppIntentE8MetadataVSgSo0deO0_pctGMd, &_ss23_ContiguousArrayStorageCySo26LNSystemProtocolIdentifiera_10PegasusAPI035Apple_Parsec_Siri_V2alpha_AppIntentE8MetadataVSgSo0deO0_pctGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234CF940;
  v1 = *MEMORY[0x277D23710];
  *(inited + 32) = *MEMORY[0x277D23710];
  *(inited + 40) = specialized thunk for @escaping @callee_guaranteed (@guaranteed LNSystemProtocolMetadata) -> (@out Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata?);
  *(inited + 48) = 0;
  v2 = *MEMORY[0x277D23718];
  *(inited + 56) = *MEMORY[0x277D23718];
  *(inited + 64) = specialized thunk for @escaping @callee_guaranteed (@guaranteed LNSystemProtocolMetadata) -> (@out Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata?);
  *(inited + 72) = 0;
  v3 = v1;
  v4 = v2;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26LNSystemProtocolIdentifiera_10PegasusAPI035Apple_Parsec_Siri_V2alpha_AppIntentD8MetadataVSgSo0cdN0_pcTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26LNSystemProtocolIdentifiera_yyctMd, &_sSo26LNSystemProtocolIdentifiera_yyctMR);
  result = swift_arrayDestroy();
  static AppIntentMetadataMapper.mappings = v5;
  return result;
}

uint64_t static AppIntentMetadataMapper.mapPlayVideo(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v59 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v47 - v7;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata.VideoCategory();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v50 = v14;
    v51 = v13;
    v52 = a1;
    swift_unknownObjectRetain();
    v49 = v16;
    Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata.init()();
    v19 = [v18 supportedCategories];
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = *(v20 + 16);
    if (v21)
    {
      v48 = a2;
      v63 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v22 = v63;
      v58 = *MEMORY[0x277CB9E10];
      v56 = *MEMORY[0x277CB9E08];
      v23 = *MEMORY[0x277CB9E18];
      v53 = *MEMORY[0x277D39C00];
      v54 = v23;
      v24 = (v10 + 104);
      v55 = *MEMORY[0x277D39BE8];
      v61 = v10 + 32;
      v47[1] = v20;
      v25 = v20 + 40;
      v57 = *MEMORY[0x277D39BF0];
      v62 = *MEMORY[0x277D39BF8];
      do
      {

        VideoCategory.init(rawValue:)();
        v26 = type metadata accessor for VideoCategory();
        v27 = *(v26 - 8);
        v28 = (*(v27 + 48))(v8, 1, v26);
        v29 = v62;
        if (v28 != 1)
        {
          v30 = v8;
          v60 = v21;
          v31 = v22;
          v32 = v8;
          v33 = v24;
          v34 = v10;
          v35 = v12;
          v36 = v9;
          v37 = v59;
          outlined init with copy of MediaUserStateCenter?(v30, v59, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
          v38 = v37;
          v9 = v36;
          v12 = v35;
          v10 = v34;
          v24 = v33;
          v8 = v32;
          v22 = v31;
          v21 = v60;
          v39 = (*(v27 + 88))(v38, v26);
          v29 = v57;
          if (v39 != v58)
          {
            v29 = v55;
            if (v39 != v56)
            {
              v29 = v53;
              if (v39 != v54)
              {
                (*(v27 + 8))(v59, v26);
                v29 = v62;
              }
            }
          }
        }

        (*v24)(v12, v29, v9);
        outlined destroy of MediaUserStateCenter?(v8, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
        v63 = v22;
        v41 = *(v22 + 16);
        v40 = *(v22 + 24);
        if (v41 >= v40 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
          v22 = v63;
        }

        *(v22 + 16) = v41 + 1;
        (*(v10 + 32))(v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v41, v12, v9);
        v25 += 16;
        --v21;
      }

      while (v21);

      a2 = v48;
    }

    else
    {

      v22 = MEMORY[0x277D84F90];
    }

    v45 = v49;
    MEMORY[0x223DDBB00](v22);
    v46 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata();
    MEMORY[0x28223BE20](v46);
    v47[-2] = v45;
    lazy protocol witness table accessor for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata and conformance Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata, MEMORY[0x277D39C20], MEMORY[0x277D39C18]);
    static Message.with(_:)();
    swift_unknownObjectRelease();
    (*(*(v46 - 8) + 56))(a2, 0, 1, v46);
    return (*(v50 + 8))(v45, v51);
  }

  else
  {
    v42 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata();
    v43 = *(*(v42 - 8) + 56);

    return v43(a2, 1, 1, v42);
  }
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed LNSystemProtocolMetadata) -> (@out Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata?)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  return static AppIntentMetadataMapper.mapPlayVideo(_:)(*a1, a2);
}

{
  return static AppIntentMetadataMapper.mapShowInAppStringSearchResults(_:)(*a1, a2);
}

uint64_t static AppIntentMetadataMapper.mapShowInAppStringSearchResults(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v60 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - v7;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata.StringSearchScope();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v51 = v14;
    v52 = v13;
    v53 = a1;
    swift_unknownObjectRetain();
    v50 = v16;
    Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata.init()();
    v19 = [v18 searchScopes];
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = *(v20 + 16);
    if (v21)
    {
      v47 = a2;
      v64 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v22 = v64;
      v59 = *MEMORY[0x277CB9FF8];
      v57 = *MEMORY[0x277CB9FF0];
      v55 = *MEMORY[0x277CB9FE8];
      v49 = *MEMORY[0x277CB9FE0];
      v48 = *MEMORY[0x277D39BB0];
      v23 = (v10 + 104);
      v54 = *MEMORY[0x277D39BB8];
      v56 = *MEMORY[0x277D39BC0];
      v62 = v10 + 32;
      v46 = v20;
      v24 = v20 + 40;
      v58 = *MEMORY[0x277D39BC8];
      v63 = *MEMORY[0x277D39BD0];
      do
      {

        StringSearchScope.init(rawValue:)();
        v25 = type metadata accessor for StringSearchScope();
        v26 = *(v25 - 8);
        v27 = (*(v26 + 48))(v8, 1, v25);
        v28 = v63;
        if (v27 != 1)
        {
          v29 = v8;
          v61 = v21;
          v30 = v22;
          v31 = v8;
          v32 = v23;
          v33 = v10;
          v34 = v12;
          v35 = v9;
          v36 = v60;
          outlined init with copy of MediaUserStateCenter?(v29, v60, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
          v37 = v36;
          v9 = v35;
          v12 = v34;
          v10 = v33;
          v23 = v32;
          v8 = v31;
          v22 = v30;
          v21 = v61;
          v38 = (*(v26 + 88))(v37, v25);
          v28 = v58;
          if (v38 != v59)
          {
            v28 = v56;
            if (v38 != v57)
            {
              v28 = v54;
              if (v38 != v55)
              {
                v28 = v48;
                if (v38 != v49)
                {
                  (*(v26 + 8))(v60, v25);
                  v28 = v63;
                }
              }
            }
          }
        }

        (*v23)(v12, v28, v9);
        outlined destroy of MediaUserStateCenter?(v8, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
        v64 = v22;
        v40 = *(v22 + 16);
        v39 = *(v22 + 24);
        if (v40 >= v39 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
          v22 = v64;
        }

        *(v22 + 16) = v40 + 1;
        (*(v10 + 32))(v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v40, v12, v9);
        v24 += 16;
        --v21;
      }

      while (v21);

      a2 = v47;
    }

    else
    {

      v22 = MEMORY[0x277D84F90];
    }

    v44 = v50;
    MEMORY[0x223DDBAC0](v22);
    v45 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata();
    MEMORY[0x28223BE20](v45);
    *(&v46 - 2) = v44;
    lazy protocol witness table accessor for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata and conformance Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata, MEMORY[0x277D39C20], MEMORY[0x277D39C18]);
    static Message.with(_:)();
    swift_unknownObjectRelease();
    (*(*(v45 - 8) + 56))(a2, 0, 1, v45);
    return (*(v51 + 8))(v44, v52);
  }

  else
  {
    v41 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata();
    v42 = *(*(v41 - 8) + 56);

    return v42(a2, 1, 1, v41);
  }
}

uint64_t closure #2 in static AppIntentMetadataMapper.mapPlayVideo(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unsigned int *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataV06OneOf_J0OSgMd, &_s10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataV06OneOf_J0OSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = a3(0);
  (*(*(v10 - 8) + 16))(v9, a2, v10);
  v11 = *a4;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v9, v11, v12);
  (*(v13 + 56))(v9, 0, 1, v12);
  return Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.metadata.setter();
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x277D5DA48], &_ss18_DictionaryStorageCySS12SiriNLUTypes0C18_Nlu_External_SpanVGMd, &_ss18_DictionaryStorageCySS12SiriNLUTypes0C18_Nlu_External_SpanVGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS12SiriNLUTypes0C36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtGMd, &_ss18_DictionaryStorageCySS12SiriNLUTypes0C36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtGMR);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        outlined init with take of (delegatedUDA: Siri_Nlu_External_DelegatedUserDialogAct, score: Double, isEligibleForCombination: Bool)(v28, v41);
      }

      else
      {
        outlined init with copy of MediaUserStateCenter?(v28, v41, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = outlined init with take of (delegatedUDA: Siri_Nlu_External_DelegatedUserDialogAct, score: Double, isEligibleForCombination: Bool)(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSaySDyS2SGGGMd, &_ss18_DictionaryStorageCySSSaySDyS2SGGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSo15StateCacheEntryCGMd, &_ss18_DictionaryStorageCySSSo15StateCacheEntryCGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PommesDialogStateManager.DialogValue(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch24PommesDialogStateManagerC0G5Value33_DDAE567450B270DABF8F98FB8100F132LLVGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch24PommesDialogStateManagerC0G5Value33_DDAE567450B270DABF8F98FB8100F132LLVGMR);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        outlined init with take of PommesBridgeResultCandidateState(v28, v41, type metadata accessor for PommesDialogStateManager.DialogValue);
      }

      else
      {
        outlined init with copy of PommesBridgeResultCandidateState(v28, v41, type metadata accessor for PommesDialogStateManager.DialogValue);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = outlined init with take of PommesBridgeResultCandidateState(v41, *(v9 + 56) + v27 * v17, type metadata accessor for PommesDialogStateManager.DialogValue);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSo12NSDictionaryCGMd, &_ss18_DictionaryStorageCySSSo12NSDictionaryCGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch7AppDataVGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch7AppDataVGMR);
  v44 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
    v42 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v43 = result;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v45 = (v12 - 1) & v12;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v48 = *v24;
      v26 = (*(v5 + 56) + 40 * v23);
      v27 = v26[1];
      v46 = *v26;
      v29 = v26[2];
      v28 = v26[3];
      v30 = v26[4];
      if ((v44 & 1) == 0)
      {
      }

      v47 = v28;
      v31 = v29;
      v32 = v27;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v7 = v43;
      v33 = -1 << *(v43 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v16 = v47;
        v17 = v30;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v16 = v47;
      v17 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (*(v43 + 48) + 16 * v15);
      *v18 = v48;
      v18[1] = v25;
      v19 = (*(v43 + 56) + 40 * v15);
      v12 = v45;
      *v19 = v46;
      v19[1] = v32;
      v19[2] = v31;
      v19[3] = v16;
      v19[4] = v17;
      ++*(v43 + 16);
      v5 = v42;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v45 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v9, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSaySo16LNActionMetadataCGGMd, &_ss18_DictionaryStorageCySSSaySo16LNActionMetadataCGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS8Dispatch0C13TimeoutResultOGMd, &_ss18_DictionaryStorageCySS8Dispatch0C13TimeoutResultOGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch21DomainAffinityKVStoreCGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch21DomainAffinityKVStoreCGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSDySSSfGGMd, &_ss18_DictionaryStorageCySSSDySSSfGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSaySSGGMd, &_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSaySSGGMR);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSSGMd, &_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSSGMR);
  v32 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = v22[1];
      v33 = *v22;
      if ((v32 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v33;
      v16[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS21SiriInformationSearch18AudioItemCandidateCGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch18AudioItemCandidateCGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS21SiriInformationSearch12PommesResultCGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch12PommesResultCGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay20SiriInformationTypes15WarmupComponentOGGMd, &_ss18_DictionaryStorageCySSSay20SiriInformationTypes15WarmupComponentOGGMR);
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v50 = a3(0);
  v10 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v42 - v11;
  v12 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v47 = v9;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v43 = v5;
    v44 = (v10 + 16);
    v45 = v12;
    v46 = v10;
    v48 = (v10 + 32);
    v21 = result + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v46 + 72);
      v33 = v28 + v32 * v27;
      if (v47)
      {
        (*v48)(v49, v33, v50);
      }

      else
      {
        (*v44)(v49, v33, v50);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      result = (*v48)(*(v14 + 56) + v32 * v22, v49, v50);
      ++*(v14 + 16);
      v12 = v45;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v8 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v8 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PommesCandidateId();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy20SiriInformationTypes17PommesCandidateIdO0cD6Search0f12BridgeResultG5StateVGMd, &_ss18_DictionaryStorageCy20SiriInformationTypes17PommesCandidateIdO0cD6Search0f12BridgeResultG5StateVGMR);
  v43 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        outlined init with take of PommesBridgeResultCandidateState(v27 + v28 * v24, v47, type metadata accessor for PommesBridgeResultCandidateState);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        outlined init with copy of PommesBridgeResultCandidateState(v29 + v28 * v24, v47, type metadata accessor for PommesBridgeResultCandidateState);
      }

      lazy protocol witness table accessor for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier(&lazy protocol witness table cache variable for type PommesCandidateId and conformance PommesCandidateId, MEMORY[0x277D56628], MEMORY[0x277D56638]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = outlined init with take of PommesBridgeResultCandidateState(v47, *(v12 + 56) + v28 * v20, type metadata accessor for PommesBridgeResultCandidateState);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSfGMd, &_ss18_DictionaryStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSfGMR);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v19 = v6;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v41 = *(v19 + 72);
      v26 = v25 + v41 * v24;
      if (v39)
      {
        (*v40)(v42, v26, v43);
      }

      else
      {
        (*v37)(v42, v26, v43);
      }

      v27 = *(*(v9 + 56) + 4 * v24);
      lazy protocol witness table accessor for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530], MEMORY[0x277D39538]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v40)(*(v11 + 48) + v41 * v20, v42, v43);
      *(*(v11 + 56) + 4 * v20) = v27;
      ++*(v11 + 16);
      v19 = v38;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void specialized _NativeDictionary.copy()()
{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  specialized _NativeDictionary.copy()(MEMORY[0x277D5DA48], &_ss18_DictionaryStorageCySS12SiriNLUTypes0C18_Nlu_External_SpanVGMd, &_ss18_DictionaryStorageCySS12SiriNLUTypes0C18_Nlu_External_SpanVGMR);
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS12SiriNLUTypes0C36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtGMd, &_ss18_DictionaryStorageCySS12SiriNLUTypes0C36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        outlined init with copy of MediaUserStateCenter?(*(v4 + 56) + v26, v30, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        outlined init with take of (delegatedUDA: Siri_Nlu_External_DelegatedUserDialogAct, score: Double, isEligibleForCombination: Bool)(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    v6 = v32;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSaySDyS2SGGGMd, &_ss18_DictionaryStorageCySSSaySDyS2SGGGMR);
}

{
  v1 = v0;
  v2 = type metadata accessor for PommesDialogStateManager.DialogValue(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch24PommesDialogStateManagerC0G5Value33_DDAE567450B270DABF8F98FB8100F132LLVGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch24PommesDialogStateManagerC0G5Value33_DDAE567450B270DABF8F98FB8100F132LLVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        outlined init with copy of PommesBridgeResultCandidateState(*(v4 + 56) + v26, v30, type metadata accessor for PommesDialogStateManager.DialogValue);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        outlined init with take of PommesBridgeResultCandidateState(v25, *(v27 + 56) + v26, type metadata accessor for PommesDialogStateManager.DialogValue);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch7AppDataVGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch7AppDataVGMR);
  v29 = v0;
  v1 = *v0;
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = v2;
  if (*(v1 + 16))
  {
    v4 = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || v4 >= v1 + 64 + 8 * v5)
    {
      memmove(v4, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = (*(v1 + 48) + 16 * v16);
        v19 = *v18;
        v20 = v18[1];
        v16 *= 40;
        v21 = (*(v1 + 56) + v16);
        v23 = *v21;
        v22 = v21[1];
        v24 = v21[2];
        v25 = v21[3];
        v26 = v21[4];
        v27 = (*(v3 + 48) + v17);
        *v27 = v19;
        v27[1] = v20;
        v28 = (*(v3 + 56) + v16);
        *v28 = v23;
        v28[1] = v22;
        v28[2] = v24;
        v28[3] = v25;
        v28[4] = v26;
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v29 = v3;
  }
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS8Dispatch0C13TimeoutResultOGMd, &_ss18_DictionaryStorageCySS8Dispatch0C13TimeoutResultOGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSDySSSfGGMd, &_ss18_DictionaryStorageCySSSDySSSfGGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSaySSGGMd, &_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSaySSGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSSGMd, &_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSSGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay20SiriInformationTypes15WarmupComponentOGGMd, &_ss18_DictionaryStorageCySSSay20SiriInformationTypes15WarmupComponentOGGMR);
}

id specialized _NativeDictionary.copy()()
{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo15StateCacheEntryCGMd, &_ss18_DictionaryStorageCySSSo15StateCacheEntryCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo12NSDictionaryCGMd, &_ss18_DictionaryStorageCySSSo12NSDictionaryCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS21SiriInformationSearch18AudioItemCandidateCGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch18AudioItemCandidateCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS21SiriInformationSearch12PommesResultCGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch12PommesResultCGMR);
}

void specialized _NativeDictionary.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v43 = a1(0);
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v37 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v38 = v6;
    v11 = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v13)
    {
      memmove(v11, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v44 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = v45 + 32;
    v40 = v45 + 16;
    v41 = v8;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 16 * v24;
        v26 = *(v8 + 56);
        v27 = (*(v8 + 48) + 16 * v24);
        v28 = *v27;
        v29 = v27[1];
        v30 = v45;
        v31 = *(v45 + 72) * v24;
        v32 = v42;
        v33 = v43;
        (*(v45 + 16))(v42, v26 + v31, v43);
        v34 = v44;
        v35 = (*(v44 + 48) + v25);
        *v35 = v28;
        v35[1] = v29;
        v36 = *(v34 + 56) + v31;
        v8 = v41;
        (*(v30 + 32))(v36, v32, v33);

        v19 = v46;
      }

      while (v46);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v38;
        v10 = v44;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v46 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }
}

void specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        LOBYTE(v20) = *(*(v4 + 56) + v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = v22;
        v23[1] = v21;
        *(*(v6 + 56) + v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for PommesCandidateId();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy20SiriInformationTypes17PommesCandidateIdO0cD6Search0f12BridgeResultG5StateVGMd, &_ss18_DictionaryStorageCy20SiriInformationTypes17PommesCandidateIdO0cD6Search0f12BridgeResultG5StateVGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        outlined init with copy of PommesBridgeResultCandidateState(*(v5 + 56) + v26, v35, type metadata accessor for PommesBridgeResultCandidateState);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = outlined init with take of PommesBridgeResultCandidateState(v25, *(v27 + 56) + v26, type metadata accessor for PommesBridgeResultCandidateState);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch21DomainAffinityKVStoreCGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch21DomainAffinityKVStoreCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v29 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSfGMd, &_ss18_DictionaryStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSfGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; *(*(v23 + 56) + 4 * v17) = v22)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v31;
      v19 = *(v31 + 72) * v17;
      v20 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 48) + v19, v29);
      v22 = *(*(v3 + 56) + 4 * v17);
      v23 = v30;
      result = (*(v18 + 32))(*(v30 + 48) + v19, v20, v21);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223DDFA80](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC21SiriInformationSearch19AudioTypeFeaturiserC13ExactMatchKey33_F1B61A3F9E84F78A1DE0179177191518LLV_SayAIGTt0g5Tf4g_n(uint64_t a1)
{
  matched = type metadata accessor for AudioTypeFeaturiser.ExactMatchKey(0);
  v3 = *(matched - 8);
  v4 = MEMORY[0x28223BE20](matched);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier(&lazy protocol witness table cache variable for type AudioTypeFeaturiser.ExactMatchKey and conformance AudioTypeFeaturiser.ExactMatchKey, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey, &protocol conformance descriptor for AudioTypeFeaturiser.ExactMatchKey);
  result = MEMORY[0x223DDFA80](v9, matched, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      outlined init with copy of PommesBridgeResultCandidateState(v12, v6, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
      specialized Set._Variant.insert(_:)(v8, v6);
      outlined destroy of AudioTypeFeaturiser.ExactMatchKey(v8);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo16LNSystemProtocolC_SayAEGTt0g5Tf4g_n(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v4 = type metadata accessor for LNSystemProtocol();
    v5 = lazy protocol witness table accessor for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier(&lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject, type metadata accessor for LNSystemProtocol, MEMORY[0x277D85378]);
    result = MEMORY[0x223DDFA80](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223DDFF80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t outlined init with take of (delegatedUDA: Siri_Nlu_External_DelegatedUserDialogAct, score: Double, isEligibleForCombination: Bool)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of PommesBridgeResultCandidateState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of PommesBridgeResultCandidateState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t static SearchProxy.defaultRRClient()@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() processInfo];
  v3 = NSProcessInfo.isRunningUnitTests.getter();

  if (v3)
  {
    v4 = &type metadata for EmptyReferenceResolver;
    result = lazy protocol witness table accessor for type EmptyReferenceResolver and conformance EmptyReferenceResolver();
  }

  else
  {
    v4 = type metadata accessor for ReferenceResolutionClient();
    *a1 = ReferenceResolutionClient.__allocating_init()();
    result = MEMORY[0x277D5FDD8];
  }

  a1[3] = v4;
  a1[4] = result;
  return result;
}

uint64_t SearchProxy.addGenerativeModelSupport(to:)()
{
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v0 = MEMORY[0x223DDF550](0xD000000000000024, 0x80000002234DBDD0);
  MGGetBoolAnswer();

  if (AFIsInternalInstall())
  {
    v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v2 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
    v3 = [v1 initWithSuiteName_];

    if (v3)
    {
      v4 = MEMORY[0x223DDF550](0xD00000000000002CLL, 0x80000002234DFC10);
      v5 = [v3 BOOLForKey_];

      if (v5)
      {
        if (one-time initialization token for overrides != -1)
        {
          swift_once();
        }

        v6 = type metadata accessor for Logger();
        __swift_project_value_buffer(v6, static Logger.overrides);
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          MEMORY[0x223DE0F80](v9, -1, -1);
        }
      }
    }
  }

  v10 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.modify();
  Apple_Parsec_Search_PegasusQueryContext.isGenerativeModelDevice.setter();
  return v10(&v12, 0);
}

uint64_t SearchProxy.appendClientEntities(_:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  v6 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  (*(*(v9 - 8) + 16))(a3, a2, v9);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.pommes);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v50[0] = v43;
    *v13 = 136315138;
    v14 = *(a1 + 16);
    v15 = MEMORY[0x277D84F90];
    if (v14)
    {
      v38 = v13;
      v39 = v12;
      v40 = v11;
      v41 = a3;
      v49[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
      v15 = v49[0];
      v17 = *(v6 + 16);
      v16 = v6 + 16;
      v18 = *(v16 + 64);
      v42 = a1;
      v19 = a1 + ((v18 + 32) & ~v18);
      v44 = *(v16 + 56);
      v45 = v17;
      v46 = v16;
      v20 = (v16 - 8);
      do
      {
        v21 = v47;
        v45(v8, v19, v47);
        v22 = Apple_Parsec_Siri_Context_ClientEntity.summarizedDescription.getter();
        v24 = v23;
        (*v20)(v8, v21);
        v49[0] = v15;
        v26 = *(v15 + 16);
        v25 = *(v15 + 24);
        if (v26 >= v25 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
          v15 = v49[0];
        }

        *(v15 + 16) = v26 + 1;
        v27 = v15 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        v19 += v44;
        --v14;
      }

      while (v14);
      a1 = v42;
      v11 = v40;
      LOBYTE(v12) = v39;
      v13 = v38;
    }

    v49[0] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v28 = BidirectionalCollection<>.joined(separator:)();
    v30 = v29;

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v50);

    *(v13 + 4) = v31;
    _os_log_impl(&dword_2232BB000, v11, v12, "Adding client entities to request: [%s]", v13, 0xCu);
    v32 = v43;
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x223DE0F80](v32, -1, -1);
    MEMORY[0x223DE0F80](v13, -1, -1);
  }

  v33 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.modify();
  v34 = Apple_Parsec_Siri_Context_ClientConversationContextInfo.onDeviceContext.modify();
  v35 = Apple_Parsec_Siri_Context_OnDeviceContext.entities.modify();
  specialized Array.append<A>(contentsOf:)(a1);
  v35(v48, 0);
  v34(v49, 0);
  return v33(v50, 0);
}

void SearchProxy.addMAFStateFlags(to:dataProviderManager:)(uint64_t a1, id *a2)
{
  [a2[15] currentNavigationState];
  IsNavigating = AFNavigationStateIsNavigating();
  v5 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.isNavigationMode.setter();
  v5(v34, 0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.pommes);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34[0] = v10;
    *v9 = 136315138;
    if (IsNavigating)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (IsNavigating)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v34);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2232BB000, v7, v8, "Navigation mode: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x223DE0F80](v10, -1, -1);
    MEMORY[0x223DE0F80](v9, -1, -1);
  }

  v14 = AFDeviceSupportsSystemAssistantExperience();
  if (AFIsInternalInstall())
  {
    v15 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v16 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
    v17 = [v15 initWithSuiteName_];

    if (v17)
    {
      v18 = MEMORY[0x223DDF550](0xD00000000000001ALL, 0x80000002234DFC40);
      v19 = [v17 BOOLForKey_];

      if (v19)
      {
        if (one-time initialization token for overrides != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v6, static Logger.overrides);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          MEMORY[0x223DE0F80](v22, -1, -1);
        }

        v14 = 1;
      }
    }
  }

  v23 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.isSaeRequest.setter();
  v23(v34, 0);
  v24 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.modify();
  v25 = Apple_Parsec_Search_PegasusQueryContext.appleIntelligenceStatus.modify();
  Apple_Parsec_Search_AppleIntelligenceStatus.isEnabled.setter();
  v25(&v33, 0);
  v24(v34, 0);
  (*(*a2 + 64))(a1);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v34[0] = v29;
    *v28 = 136315138;
    if (v14)
    {
      v30 = 1702195828;
    }

    else
    {
      v30 = 0x65736C6166;
    }

    if (v14)
    {
      v31 = 0xE400000000000000;
    }

    else
    {
      v31 = 0xE500000000000000;
    }

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v34);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_2232BB000, v26, v27, "SAE request: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x223DE0F80](v29, -1, -1);
    MEMORY[0x223DE0F80](v28, -1, -1);
  }
}

uint64_t SearchProxy.addDialogState(to:using:)(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 136))();
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.pommes);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = *(v2 + 16);

    _os_log_impl(&dword_2232BB000, v4, v5, "Adding %{public}ld dialog state values to request", v6, 0xCu);
    MEMORY[0x223DE0F80](v6, -1, -1);
  }

  else
  {
  }

  v7 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.dialogState.setter();
  return v7(&v9, 0);
}

uint64_t Apple_Parsec_Siri_Context_ClientEntity.summarizedDescription.getter()
{
  v36 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntityAlignment();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v32 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntitySource();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntityType();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 0;
  v39 = 0xE000000000000000;
  _StringGuts.grow(_:)(107);
  MEMORY[0x223DDF6D0](0x7974202020200A7BLL, 0xEC000000203A6570);
  Apple_Parsec_Siri_Context_ClientEntity.type.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v6 + 8))(v8, v5);
  MEMORY[0x223DDF6D0](0x756F73202020200ALL, 0xED0000203A656372);
  Apple_Parsec_Siri_Context_ClientEntity.source.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v2 + 8))(v4, v1);
  MEMORY[0x223DDF6D0](0x6F6373202020200ALL, 0xEC000000203A6572);
  Apple_Parsec_Siri_Context_ClientEntity.score.getter();
  Double.write<A>(to:)();
  MEMORY[0x223DDF6D0](0xD000000000000015, 0x80000002234DFC60);
  v9 = Apple_Parsec_Siri_Context_ClientEntity.ontologyLabel.getter();
  MEMORY[0x223DDF6D0](v9);

  v10 = MEMORY[0x223DDF6D0](0xD000000000000025, 0x80000002234DFC80);
  v11 = MEMORY[0x223DDA830](v10);
  v12 = *(v11 + 16);
  if (v12)
  {
    v37 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = v37;
    v15 = v34 + 16;
    v14 = *(v34 + 16);
    v16 = *(v34 + 80);
    v32 = v11;
    v17 = v11 + ((v16 + 32) & ~v16);
    v33 = *(v34 + 72);
    v34 = v14;
    v18 = (v15 - 8);
    do
    {
      v19 = v35;
      v20 = v36;
      v21 = (v34)(v35, v17, v36);
      v22 = MEMORY[0x223DDB770](v21);
      v24 = v23;
      (*v18)(v19, v20);
      v37 = v13;
      v26 = *(v13 + 16);
      v25 = *(v13 + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        v13 = v37;
      }

      *(v13 + 16) = v26 + 1;
      v27 = v13 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v17 += v33;
      --v12;
    }

    while (v12);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v28 = MEMORY[0x223DDF850](v13, MEMORY[0x277D837D0]);
  v30 = v29;

  MEMORY[0x223DDF6D0](v28, v30);

  MEMORY[0x223DDF6D0](32010, 0xE200000000000000);
  return v38;
}

uint64_t Siri_Nlu_External_UserParse.firstCallTask()(uint64_t a1)
{
  v3 = Siri_Nlu_External_Span.matcherNames.getter();
  v4 = specialized Sequence.flatMap<A>(_:)(v3);

  if (!v1)
  {
    if (v4 >> 62)
    {
      goto LABEL_18;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      while (1)
      {
        v6 = 0;
        while ((v4 & 0xC000000000000001) != 0)
        {
          v2 = MEMORY[0x223DDFF80](v6, v4);
          v7 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            return v2;
          }

LABEL_10:

          static UsoTask_CodegenConverter.convert(task:)();

          v9[0] = v9[2];
          v9[1] = v10;
          if (*(&v10 + 1))
          {
            type metadata accessor for UsoTask_call_common_PhoneCall();
            if (swift_dynamicCast())
            {
              goto LABEL_16;
            }
          }

          else
          {

            outlined destroy of Any?(v9);
          }

          ++v6;
          if (v7 == v5)
          {
            goto LABEL_19;
          }
        }

        if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_18:
        v5 = __CocoaSet.count.getter();
        if (!v5)
        {
          goto LABEL_19;
        }
      }

      v2 = *(v4 + 8 * v6 + 32);

      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

LABEL_19:

    return 0;
  }

  return v2;
}

BOOL UsoTask.isCallTask.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v5)
  {
    outlined destroy of Any?(v4);
    goto LABEL_5;
  }

  type metadata accessor for UsoTask_call_common_PhoneCall();
  if (!swift_dynamicCast())
  {
LABEL_5:
    v0 = 0;
    goto LABEL_6;
  }

  v0 = v3;
LABEL_6:
  v1 = v0 != 0;

  return v1;
}

uint64_t NSDictionary.arrayValue<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x223DDF550](a1, a2);
  v5 = [v3 objectForKey_];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
    v6 = swift_dynamicCast();
    if (v6)
    {
      *&v12[0] = v9;
      MEMORY[0x28223BE20](v6);
      lazy protocol witness table accessor for type [Any] and conformance [A]();
      v7 = Sequence.compactMap<A>(_:)();

      return v7;
    }
  }

  else
  {
    outlined destroy of Any?(v12);
  }

  return 0;
}

Swift::String_optional __swiftcall NSDictionary.stringValue(for:)(Swift::String a1)
{
  v2 = MEMORY[0x223DDF550](a1._countAndFlagsBits, a1._object);
  v3 = [v1 objectForKey_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    v4 = swift_dynamicCast();
    v5 = v4 == 0;
    if (v4)
    {
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = v10;
    }
  }

  else
  {
    outlined destroy of Any?(v13);
    v6 = 0;
    v7 = 0;
  }

  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::Bool_optional __swiftcall NSDictionary.BOOLeanValue(for:)(Swift::String a1)
{
  v2 = MEMORY[0x223DDF550](a1._countAndFlagsBits, a1._object);
  v3 = [v1 objectForKey_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    outlined destroy of Any?(v8);
    return 2;
  }
}

uint64_t closure #1 in NSDictionary.arrayValue<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with copy of Any(a1, &v7);
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

unint64_t lazy protocol witness table accessor for type [Any] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Any] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Any] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSayypGMd, &_sSayypGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Any] and conformance [A]);
  }

  return result;
}

uint64_t CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  v81 = *(v84 - 8);
  v4 = MEMORY[0x28223BE20](v84);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v81 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v81 - v10;
  v89 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v93 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v88 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Siri_Nlu_External_UserParse();
  MEMORY[0x28223BE20](v92);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + 16);
  v82 = v6;
  v83 = v9;
  v85 = v11;
  if (v17)
  {
    v19 = *(v13 + 16);
    v18 = v13 + 16;
    v20 = a3 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v90 = *(v18 + 56);
    v91 = v19;
    v21 = (v18 - 8);
    v94 = MEMORY[0x277D84F90];
    while (1)
    {
      v22 = v92;
      v23 = v18;
      (v91)(v16, v20, v92);
      v24 = Siri_Nlu_External_Span.matcherNames.getter();
      (*v21)(v16, v22);
      v25 = *(v24 + 16);
      v26 = v94[2];
      v27 = v26 + v25;
      if (__OFADD__(v26, v25))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v94;
      if (!isUniquelyReferenced_nonNull_native || v27 > v94[3] >> 1)
      {
        if (v26 <= v27)
        {
          v30 = v26 + v25;
        }

        else
        {
          v30 = v26;
        }

        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v30, 1, v94);
      }

      v31 = *(v24 + 16);
      v94 = v29;
      if (v31)
      {
        if ((v29[3] >> 1) - v29[2] < v25)
        {
          goto LABEL_64;
        }

        swift_arrayInitWithCopy();

        v18 = v23;
        if (v25)
        {
          v32 = v94[2];
          v33 = __OFADD__(v32, v25);
          v34 = v32 + v25;
          if (v33)
          {
            goto LABEL_65;
          }

          v94[2] = v34;
        }
      }

      else
      {

        v18 = v23;
        if (v25)
        {
          goto LABEL_63;
        }
      }

      v20 += v90;
      if (!--v17)
      {
        goto LABEL_18;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v94 = MEMORY[0x277D84F90];
LABEL_18:
  v35 = MEMORY[0x277D84F90];
  *&v97 = MEMORY[0x277D84F90];
  v36 = v94[2];
  if (v36)
  {
    v25 = *(v93 + 16);
    v37 = v94 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
    v92 = *(v93 + 72);
    v86 = MEMORY[0x277D84F90];
    v93 += 16;
    v91 = (v93 - 8);
    *&v14 = 136315138;
    v87 = v14;
    v38 = v88;
    v17 = v89;
    v90 = v25;
    (v25)(v88, v37, v89);
    while (1)
    {
      v39 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
      if (v39 >> 62)
      {
        v41 = v39;
        v42 = __CocoaSet.count.getter();
        v39 = v41;
        if (!v42)
        {
LABEL_31:

          (*v91)(v38, v17);
          goto LABEL_20;
        }
      }

      else if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      if ((v39 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223DDFF80](0);
      }

      else
      {
        if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }
      }

      v40 = (*v91)(v38, v17);
      MEMORY[0x223DDF820](v40);
      if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v25 = v90;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v86 = v97;
LABEL_20:
      v37 += v92;
      if (!--v36)
      {

        v35 = MEMORY[0x277D84F90];
        v17 = v86;
        goto LABEL_35;
      }

      (v25)(v38, v37, v17);
    }
  }

  v17 = MEMORY[0x277D84F90];
LABEL_35:
  v112 = v35;
  v25 = v17 & 0xFFFFFFFFFFFFFF8;
  if (v17 >> 62)
  {
LABEL_67:
    v43 = __CocoaSet.count.getter();
    goto LABEL_37;
  }

  v43 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_37:
  v44 = 0;
  v45 = v17 & 0xC000000000000001;
  v94 = MEMORY[0x277D84F90];
  while (v43 != v44)
  {
    if (v45)
    {
      v46 = v17;
      v17 = MEMORY[0x223DDFF80](v44, v17);
      v47 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (v44 >= *(v25 + 16))
      {
        goto LABEL_61;
      }

      v46 = v17;
      v17 = *(v17 + 8 * v44 + 32);

      v47 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }
    }

    v48 = specialized CallBusinessNoResultsExperiencesResolver.convertToCommonPhoneCallEntity(task:)(v17);

    ++v44;
    v17 = v46;
    if (v48)
    {
      MEMORY[0x223DDF820](v49);
      if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v17 = v46;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v94 = v112;
      v44 = v47;
    }
  }

  v50 = v94;
  *&v97 = v94;
  *(&v97 + 1) = closure #4 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:);
  *&v98 = 0;
  *(&v98 + 1) = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
  *&v99 = 0;
  *(&v99 + 1) = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
  *&v100 = 0;
  *(&v100 + 1) = closure #5 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:);
  *&v101 = 0;
  *(&v101 + 1) = closure #6 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:);
  *&v102 = 0;
  *(&v102 + 1) = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
  *&v103 = 0;
  *(&v103 + 1) = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
  *&v104 = 0;
  *(&v104 + 1) = closure #7 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:);
  *&v105 = 0;
  *(&v105 + 1) = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
  *&v106 = 0;
  *(&v106 + 1) = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
  *&v107 = 0;
  *(&v107 + 1) = closure #8 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:);
  *&v108 = 0;
  *(&v108 + 1) = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
  v109 = 0;
  v110 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
  v111 = 0;
  v119 = v103;
  v120 = v104;
  v125 = 0;
  v123 = v107;
  v124 = v108;
  v121 = v105;
  v122 = v106;
  v117 = v101;
  v118 = v102;
  v115 = v99;
  v116 = v100;
  v113 = v97;
  v114 = v98;
  v51 = specialized LazyFilterSequence<>.startIndex.getter();
  v53 = v52;
  v55 = v54;
  v95[0] = v50;
  v95[1] = closure #4 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:);
  v95[2] = 0;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
  v57 = lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
  MEMORY[0x223DE0060](&v96, v56, v57);
  v58 = v85;
  v59 = v83;
  if (v51 == v96 && (v55 & 1) != 0)
  {
    goto LABEL_54;
  }

  specialized FlattenSequence<>.subscript.getter(v51, v53, v55 & 1, v50, closure #4 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:), 0, specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:), 0, closure #5 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:));
  dispatch thunk of CodeGenListEntry.entry.getter();

  if (!v95[0])
  {
    __break(1u);
    goto LABEL_69;
  }

  v96 = v95[0];
  closure #7 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:)();

  if (!v95[0])
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  dispatch thunk of UsoEntity_common_Person.name.getter();
  v62 = v61;

  if (!v62)
  {
LABEL_70:
    __break(1u);
    return result;
  }

LABEL_54:
  v63 = outlined destroy of MediaUserStateCenter?(&v97, &_ss15LazyMapSequenceVys0a6FilterC0VyAByAByADyAByAByADyABys07FlattenC0VyAByAByADyABySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAG16CodeGenListEntryCyAG0hi1_J6_AgentCGGSgGGAPGAPGGANSgGGANGAG0hi1_J7_PersonCSgGGA0_GSSSgGGSSGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyAByAByADyAByAByADyABys07FlattenC0VyAByAByADyABySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAG16CodeGenListEntryCyAG0hi1_J6_AgentCGGSgGGAPGAPGGANSgGGANGAG0hi1_J7_PersonCSgGGA0_GSSSgGGSSGMR);
  MEMORY[0x28223BE20](v63);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams and conformance Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  v64 = v84;
  static Message.with(_:)();

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  __swift_project_value_buffer(v65, static Logger.pommes);
  v66 = v81;
  v67 = *(v81 + 16);
  v67(v59, v58, v64);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = v66;
    v72 = swift_slowAlloc();
    v95[0] = v72;
    *v70 = 136315138;
    v93 = Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams.name.getter();
    v94 = v67;
    v74 = v73;
    v75 = *(v71 + 8);
    v75(v59, v84);
    v76 = v75;
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v74, v95);
    v67 = v94;

    *(v70 + 4) = v77;
    _os_log_impl(&dword_2232BB000, v68, v69, "Making PhoneCallExperience for CallBusinessNoResultsExperiencesResolver with phoneCall.name=%s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v72);
    MEMORY[0x223DE0F80](v72, -1, -1);
    v78 = v70;
    v64 = v84;
    MEMORY[0x223DE0F80](v78, -1, -1);
  }

  else
  {

    v76 = *(v66 + 8);
    v76(v59, v64);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_2234D0FE0;
  type metadata accessor for PhoneCallExperience();
  v80 = v85;
  v67(v82, v85, v64);
  *(v79 + 32) = PhoneCallExperience.__allocating_init(phoneCall:queryConfidenceScore:)();
  v76(v80, v64);
  return v79;
}