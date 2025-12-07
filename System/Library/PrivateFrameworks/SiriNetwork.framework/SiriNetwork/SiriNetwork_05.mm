Swift::Void __swiftcall RPCOspreyConnectionProvider.updateAndEmitConnectionMetricsPreparationReport()()
{
  (MEMORY[0x28223BE20])();
  if (*(v0 + 2168))
  {
    return;
  }

  v1 = v0;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of ConnectionSnapshotReport?(v0 + 32, v42, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  if (!v43)
  {
    outlined destroy of ConnectionSnapshotReport?(v42, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
    goto LABEL_8;
  }

  outlined init with copy of RPCOspreyConnectionProtocol(v42, v39);
  outlined destroy of ConnectionSnapshotReport?(v42, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  SiriNetworkOspreyChannel.getMetrics()(__src);
  memcpy(__dst, __src, 0x599uLL);
  OUTLINED_FUNCTION_10_1(__dst);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v39);
LABEL_8:
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.siriNetwork);
    OUTLINED_FUNCTION_11_3();

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      OUTLINED_FUNCTION_6_5();
      v7 = swift_slowAlloc();
      OUTLINED_FUNCTION_4_3();
      v8 = swift_slowAlloc();
      __dst[0] = v8;
      *v7 = 136315138;
      v10 = *(v1 + 16);
      v9 = *(v1 + 24);

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, __dst);

      *(v7 + 4) = v11;
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      v17 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v17);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    return;
  }

  outlined init with copy of ConnectionSnapshotReport?(&__dst[12], v37, &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
  outlined destroy of ConnectionSnapshotReport?(__src, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
  __swift_destroy_boxed_opaque_existential_0(v39);
  OUTLINED_FUNCTION_40(v38);
  v3 = _s11SiriNetwork27ConnectionPreparationReportVSgWOg(v38);
  if (v3 == 1)
  {
    goto LABEL_8;
  }

  *(v0 + 2168) = 1;
  swift_beginAccess();
  memcpy(v37, (v0 + 168), sizeof(v37));
  OUTLINED_FUNCTION_40((v0 + 168));
  outlined init with copy of ConnectionPreparationReport(v38, v36);
  outlined destroy of ConnectionSnapshotReport?(v37, &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
  v18 = LOBYTE(v38[4]);
  v19 = [objc_allocWithZone(MEMORY[0x277D58BE0]) init];
  [v19 setHasDNS_];
  if (v19)
  {
    NetworkAnalytics.logNetworkConnectionStatePreparationSnapshotCaptured(_:)();
  }

  memcpy(v36, v38, sizeof(v36));
  v20 = ConnectionPreparationReport.netDebugConnectionStatePreparationSnapshot.getter();
  if (v20)
  {
    v21 = v20;
    NetworkAnalytics.logDebugNetworkConnectionStatePreparationSnapshotCaptured(_:)();
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.siriNetwork);
  OUTLINED_FUNCTION_40(v36);
  outlined init with copy of ConnectionPreparationReport(v36, v35);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  outlined destroy of ConnectionSnapshotReport?(&__dst[12], &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_6_5();
    v25 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v26 = swift_slowAlloc();
    v34 = v26;
    *v25 = 136315138;
    memcpy(v33, v38, sizeof(v33));
    OUTLINED_FUNCTION_40(v35);
    outlined init with copy of ConnectionPreparationReport(v35, v32);
    v27 = String.init<A>(describing:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v34);

    *(v25 + 4) = v29;
    OUTLINED_FUNCTION_38(&dword_223515000, v30, v31, "%s");
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    outlined destroy of ConnectionSnapshotReport?(&__dst[12], &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
  }

  else
  {

    outlined destroy of ConnectionSnapshotReport?(&__dst[12], &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
  }
}

Swift::Void __swiftcall RPCOspreyConnectionProvider.updateAndEmitConnectionMetricsReadyEstablishmentReport()()
{
  if (*(v0 + 2169))
  {
    return;
  }

  v1 = v0;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of ConnectionSnapshotReport?(v0 + 32, v42, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  if (v43)
  {
    outlined init with copy of RPCOspreyConnectionProtocol(v42, v39);
    outlined destroy of ConnectionSnapshotReport?(v42, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    SiriNetworkOspreyChannel.getMetrics()(__src);
    memcpy(__dst, __src, 0x599uLL);
    OUTLINED_FUNCTION_10_1(__dst);
    if (v2)
    {
      __swift_destroy_boxed_opaque_existential_0(v39);
    }

    else
    {
      outlined init with copy of ConnectionSnapshotReport?(&__dst[57], v44, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
      outlined destroy of ConnectionSnapshotReport?(__src, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
      __swift_destroy_boxed_opaque_existential_0(v39);
      OUTLINED_FUNCTION_25(v37);
      if (v38)
      {
        OUTLINED_FUNCTION_25(v44);
        *(v0 + 2169) = 1;
        swift_beginAccess();
        memcpy(v36, (v0 + 528), sizeof(v36));
        OUTLINED_FUNCTION_25((v0 + 528));
        outlined init with copy of ConnectionEstablishmentReport(v37, v35);
        outlined destroy of ConnectionSnapshotReport?(v36, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
        ConnectionEstablishmentReport.netConnectionStateReadySnapshot.getter();
        if (v3)
        {
          v4 = v3;
          NetworkAnalytics.logNetworkConnectionStateReadySnapshotCaptured(_:)();
        }

        ConnectionEstablishmentReport.netDebugConnectionStateReadySnapshot.getter();
        if (v5)
        {
          v6 = v5;
          NetworkAnalytics.logDebugNetworkConnectionStateReadySnapshotCaptured(_:)();
        }

        if (one-time initialization token for siriNetwork != -1)
        {
          OUTLINED_FUNCTION_0_8();
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        __swift_project_value_buffer(v7, static Logger.siriNetwork);
        OUTLINED_FUNCTION_25(v35);
        outlined init with copy of ConnectionEstablishmentReport(v35, v34);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.default.getter();
        outlined destroy of ConnectionSnapshotReport?(&__dst[57], &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
        if (os_log_type_enabled(v8, v9))
        {
          OUTLINED_FUNCTION_6_5();
          v10 = swift_slowAlloc();
          OUTLINED_FUNCTION_4_3();
          v11 = swift_slowAlloc();
          v33 = v11;
          *v10 = 136315138;
          memcpy(v32, v44, sizeof(v32));
          OUTLINED_FUNCTION_25(v34);
          outlined init with copy of ConnectionEstablishmentReport(v34, v31);
          v12 = String.init<A>(describing:)();
          v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v33);

          *(v10 + 4) = v14;
          OUTLINED_FUNCTION_38(&dword_223515000, v15, v16, "%s");
          __swift_destroy_boxed_opaque_existential_0(v11);
          OUTLINED_FUNCTION_2_2();
          MEMORY[0x223DE38F0]();
          OUTLINED_FUNCTION_2_2();
          MEMORY[0x223DE38F0]();
          outlined destroy of ConnectionSnapshotReport?(&__dst[57], &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
        }

        else
        {

          outlined destroy of ConnectionSnapshotReport?(&__dst[57], &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
        }

        return;
      }
    }
  }

  else
  {
    outlined destroy of ConnectionSnapshotReport?(v42, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.siriNetwork);
  OUTLINED_FUNCTION_11_3();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_6_5();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v21 = swift_slowAlloc();
    __dst[0] = v21;
    *v20 = 136315138;
    v23 = *(v1 + 16);
    v22 = *(v1 + 24);

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, __dst);

    *(v20 + 4) = v24;
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v30 = OUTLINED_FUNCTION_1_2();
    MEMORY[0x223DE38F0](v30);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }
}

Swift::Int RPCOspreyConnectionProvider.hashValue.getter()
{
  Hasher.init(_seed:)();
  specialized ConnectionProviderProtocol.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for ConnectionProviderProtocol.connectionMetrics.getter in conformance RPCOspreyConnectionProvider@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  memcpy(__dst, (v1 + 72), 0x599uLL);
  memcpy(a1, (v1 + 72), 0x599uLL);
  return outlined init with copy of ConnectionMetrics(__dst, &v4);
}

uint64_t protocol witness for ConnectionProviderProtocol.delegate.setter in conformance RPCOspreyConnectionProvider(uint64_t a1, uint64_t a2)
{
  *(v2 + 1528) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for ConnectionProviderProtocol.connectionConfiguration.getter in conformance RPCOspreyConnectionProvider@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 1552), 0x204uLL);
  memcpy(a1, (v1 + 1552), 0x204uLL);
  return outlined init with copy of ConnectionConfiguration(__dst, v4);
}

uint64_t protocol witness for ConnectionProviderProtocol.openCompletion.setter in conformance RPCOspreyConnectionProvider(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 2080);
  v4 = *(v2 + 2088);
  *(v2 + 2080) = a1;
  *(v2 + 2088) = a2;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v3, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RPCOspreyConnectionProvider(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  WitnessTable = swift_getWitnessTable();
  ConnectionProviderProtocol.hash(into:)(v5, a2, WitnessTable);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RPCOspreyConnectionProvider(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static ConnectionProviderProtocol.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t instantiation function for generic protocol witness table for RPCOspreyConnectionProvider(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type RPCOspreyConnectionProvider and conformance RPCOspreyConnectionProvider(&lazy protocol witness table cache variable for type RPCOspreyConnectionProvider and conformance RPCOspreyConnectionProvider, a2, type metadata accessor for RPCOspreyConnectionProvider, &protocol conformance descriptor for RPCOspreyConnectionProvider);
  *(a1 + 8) = result;
  return result;
}

id outlined copy of ConnectionProviderState(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RPCOspreyConnectionProvider and conformance RPCOspreyConnectionProvider(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void outlined consume of Result<(), NetworkConnectionError>(void *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, char a6)
{
  if (a6)
  {
    outlined consume of NetworkConnectionError(result, a2, a3, a4, a5);
  }
}

void outlined consume of NetworkConnectionError(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if ((a4 >> 60) <= 9)
  {
    if (a4 >> 60 == 3)
    {
      a1 = a5;
    }
  }
}

uint64_t outlined assign with take of RPCOspreyConnectionProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ConnectionResolutionReport(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for ConnectionResolutionReport(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

void *static NSURLSessionConfiguration.defaultSessionConfiguration(with:)(char *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = __src[200];
  v3 = __src[201];
  memcpy(v52, __src + 202, sizeof(v52));
  v42 = *(__src + 34);
  v4 = __src[280];
  v5 = *(__src + 297);
  v55 = *(__src + 281);
  v56 = v5;
  *v57 = *(__src + 313);
  *&v57[15] = *(__src + 41);
  v6 = __src[336];
  v7 = __src[337];
  v8 = __src[338];
  v43 = v4;
  v44 = __src[339];
  v41 = __src[340];
  v9 = *(__src + 97);
  v10 = *(__src + 341);
  v11 = *(__src + 373);
  v64 = *(__src + 357);
  *v65 = v11;
  v63 = v10;
  *&v65[15] = v9;
  v39 = *(__src + 49);
  v40 = *(__src + 50);
  v12 = *(__src + 51);
  v13 = *(__src + 27);
  v69 = *(__src + 26);
  v70 = v13;
  v71 = *(__src + 28);
  v72 = *(__src + 58);
  v14 = __src[472];
  v15 = *(__src + 473);
  v16 = *(__src + 489);
  *&v75[9] = *(__src + 498);
  v74 = v15;
  *v75 = v16;
  v17 = *(__src + 257);
  v18 = [swift_getObjCClassFromMetadata() defaultSessionConfiguration];
  v37 = v8;
  v50 = v2;
  v38 = v3;
  v51 = v3;
  v53 = v42;
  v54 = v43;
  v58 = v6;
  v59 = v7;
  v60 = v8;
  v61 = v44;
  v62 = v41;
  v66 = v39;
  v67 = v40;
  v45 = v12;
  v68 = v12;
  v73 = v14;
  v76 = v17;
  v19 = ConnectionConfiguration.usingTLS.getter();
  [v18 setAllowsCellularAccess_];
  [v18 setNetworkServiceType_];
  [v18 set:1 allowTCPIOConnectionStreamTask:?];
  [v18 setTimeoutIntervalForRequest_];
  if ((v43 & 1) == 0)
  {
    [v18 setTimeoutIntervalForRequest_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2235EFCC0;
  __dst[0] = *MEMORY[0x277CBACD8];
  v21 = __dst[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefaSgMd, &_sSo11CFStringRefaSgMR);
  lazy protocol witness table accessor for type CFStringRef? and conformance <A> A?();
  AnyHashable.init<A>(_:)();
  v22 = MEMORY[0x277D839B0];
  *(v20 + 96) = MEMORY[0x277D839B0];
  *(v20 + 72) = 1;
  __dst[0] = *MEMORY[0x277CBADB8];
  v23 = __dst[0];
  AnyHashable.init<A>(_:)();
  *(v20 + 168) = v22;
  *(v20 + 144) = 1;
  Dictionary.init(dictionaryLiteral:)();
  if (v39)
  {
    v24 = v18;
    if (!v19)
    {
      v25 = 0;
      v26 = v7;
      goto LABEL_13;
    }

    v25 = v41;
    v26 = v7;
  }

  else
  {
    v6 = 0;
    v24 = v18;
    if (!v19)
    {
      v25 = 0;
      v26 = 1;
      goto LABEL_13;
    }

    v25 = v2;
    v26 = 1;
  }

  [v24 set:v38 & 1 allowsTLSSessionTickets:?];
  if (v39 && (v37 & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefaSg_SbtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefaSg_SbtGMR);
    v27 = swift_allocObject();
    v28 = v26;
    *(v27 + 16) = xmmword_2235EFCB0;
    v29 = *MEMORY[0x277CBACD0];
    *(v27 + 32) = *MEMORY[0x277CBACD0];
    *(v27 + 40) = 1;
    v30 = v29;
    v31 = Dictionary.init(dictionaryLiteral:)();
    v32 = *MEMORY[0x277CBAE68];
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    v33 = v32;
    AnyHashable.init<A>(_:)();
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaSgSbGMd, _sSDySo11CFStringRefaSgSbGMR);
    *&v47 = v31;
    v26 = v28;
    outlined init with take of Any(&v47, v46);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v46, __dst, isUniquelyReferenced_nonNull_native);
    outlined destroy of AnyHashable(__dst);
  }

LABEL_13:
  [v24 set:v25 & 1 allowsTCPFastOpen:?];
  [v24 set:1 allowsRetryForBackgroundDataTasks:?];
  if (!AFIsHorseman() && (v6 & 1) == 0 && (v45 == 1) | v14 & 1)
  {
    [v24 set:1 allowsMultipathTCP:?];
    [v24 setMultipathServiceType_];
  }

  if (v26)
  {
    [v24 set:1 expiredDNSBehavior:?];
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v24 set:isa socketStreamProperties:?];

  [v24 set:4 timingDataOptions:?];
  return v24;
}

uint64_t NSURLSessionConfiguration.rpcDescription.getter()
{
  strcpy(v22, "Service Type ");
  [v0 networkServiceType];
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v1);

  v21 = v22[0];
  _StringGuts.grow(_:)(17);

  v22[0] = 0x7473696D6974704FLL;
  v22[1] = 0xEF20534E44206369;
  v2 = [v0 _expiredDNSBehavior];
  v3 = v2 == 1;
  if (v2 == 1)
  {
    v4 = 0x64656C62616E65;
  }

  else
  {
    v4 = 0x64656C6261736964;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  MEMORY[0x223DE2180](v4, v5);

  v7 = v22[0];
  v6 = v22[1];
  v22[0] = 0x20504354504DLL;
  v22[1] = 0xE600000000000000;
  v8 = [v0 _allowsMultipathTCP];
  v9 = v8 == 0;
  if (v8)
  {
    v10 = 0x64656C62616E65;
  }

  else
  {
    v10 = 0x64656C6261736964;
  }

  if (v9)
  {
    v11 = 0xE800000000000000;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v10, v11);

  v13 = v22[0];
  v12 = v22[1];
  v22[0] = 542329940;
  v22[1] = 0xE400000000000000;
  v14 = [v0 _allowsTLSSessionTickets];
  v15 = v14 == 0;
  if (v14)
  {
    v16 = 0x64656C62616E65;
  }

  else
  {
    v16 = 0x64656C6261736964;
  }

  if (v15)
  {
    v17 = 0xE800000000000000;
  }

  else
  {
    v17 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v16, v17);

  _StringGuts.grow(_:)(32);

  [v0 timeoutIntervalForRequest];
  Double.seconds.getter(v18);
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v19);

  MEMORY[0x223DE2180](0x73646E6F63657320, 0xE90000000000002ELL);
  _StringGuts.grow(_:)(18);

  OUTLINED_FUNCTION_0_11();
  MEMORY[0x223DE2180](v7, v6);

  OUTLINED_FUNCTION_0_11();
  MEMORY[0x223DE2180](v13, v12);

  OUTLINED_FUNCTION_0_11();
  MEMORY[0x223DE2180](v22[0], v22[1]);

  OUTLINED_FUNCTION_0_11();
  MEMORY[0x223DE2180](0xD000000000000015, 0x80000002235F6F30);

  return v21;
}

unint64_t lazy protocol witness table accessor for type CFStringRef? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CFStringRef? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CFStringRef? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo11CFStringRefaSgMd, &_sSo11CFStringRefaSgMR);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef()
{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

CFStringRef one-time initialization function for httpMethodACE()
{
  result = __CFStringMakeConstantString("ACE");
  static ConnectionConfigurationConstants.httpMethodACE = result;
  return result;
}

CFStringRef one-time initialization function for httpContentLengthACE()
{
  result = __CFStringMakeConstantString("2000000000");
  static ConnectionConfigurationConstants.httpContentLengthACE = result;
  return result;
}

unint64_t Logger.Category.rawValue.getter(char a1)
{
  result = 0x6B726F7774654ELL;
  switch(a1)
  {
    case 1:
      result = 0x436567617373654DLL;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x7974696C697455;
      break;
    default:
      return result;
  }

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

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t one-time initialization function for messageCenterActor()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.messageCenterActor);
  __swift_project_value_buffer(v0, static Logger.messageCenterActor);
  type metadata accessor for OS_os_log();
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t one-time initialization function for siriNetwork(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  type metadata accessor for OS_os_log();
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t ConnectionTCPInfoMetrics.interfaceName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConnectionTCPInfoMetrics.interfaceName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.connectionIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ConnectionTCPInfoMetrics.connectionIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.bytesReceived.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.bytesRetransmitted.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.bytesSent.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.bytesUnacked.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.duplicateBytesReceived.setter(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.outOfOrderBytesReceived.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.packetsReceived.setter(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.packetsSent.setter(uint64_t result, char a2)
{
  *(v2 + 152) = result;
  *(v2 + 160) = a2 & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.rttBest.setter(uint64_t result)
{
  *(v1 + 164) = result;
  *(v1 + 168) = BYTE4(result) & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.rttCurrent.setter(uint64_t result)
{
  *(v1 + 172) = result;
  *(v1 + 176) = BYTE4(result) & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.rttSmoothed.setter(uint64_t result)
{
  *(v1 + 180) = result;
  *(v1 + 184) = BYTE4(result) & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.rttVariance.setter(uint64_t result)
{
  *(v1 + 188) = result;
  *(v1 + 192) = BYTE4(result) & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.sendBandwidth.setter(uint64_t result, char a2)
{
  *(v2 + 200) = result;
  *(v2 + 208) = a2 & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.sendBufferBytes.setter(uint64_t result, char a2)
{
  *(v2 + 216) = result;
  *(v2 + 224) = a2 & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.synRetransmits.setter(uint64_t result)
{
  *(v1 + 228) = result;
  *(v1 + 232) = BYTE4(result) & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.tfoSynDataAcked.setter(uint64_t result)
{
  *(v1 + 236) = result;
  *(v1 + 240) = BYTE4(result) & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.subflowSwitchCount.setter(uint64_t result)
{
  *(v1 + 244) = result;
  *(v1 + 248) = BYTE4(result) & 1;
  return result;
}

BOOL ConnectionTCPInfoMetrics.isPoorLinkQuality.getter()
{
  memcpy(__dst, v0, 0xF9uLL);
  if (__dst[12] & 1) != 0 || (__dst[22])
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.siriNetwork);
    outlined init with copy of ConnectionTCPInfoMetrics(__dst, &v31);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    outlined destroy of ConnectionTCPInfoMetrics(__dst);
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v30 = v5;
      *v4 = 136315138;
      v6 = __dst[1];
      if (__dst[1])
      {
        v31 = __dst[0];
        v32 = __dst[1];

        v6 = String.init<A>(describing:)();
        v8 = v7;
      }

      else
      {
        v8 = 0xE000000000000000;
      }

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v30);

      *(v4 + 4) = v13;
      _os_log_impl(&dword_223515000, v2, v3, "SiriNetwork - Report Link Quality [%s]. Bytes unacked unknown", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    return 0;
  }

  else
  {
    v9 = __dst[11];
    v10 = HIDWORD(__dst[21]);
    v12 = __dst[11] > 0x100uLL || HIDWORD(__dst[21]) > 0x3E8;
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(87);
    OUTLINED_FUNCTION_7_5();
    if ((__dst[23] & 1) == 0)
    {
      LODWORD(v30) = HIDWORD(__dst[22]);
      String.init<A>(describing:)();
    }

    OUTLINED_FUNCTION_8_4();

    OUTLINED_FUNCTION_7_5();
    LODWORD(v30) = v10;
    v14 = String.init<A>(describing:)();
    MEMORY[0x223DE2180](v14);

    OUTLINED_FUNCTION_7_5();
    if ((__dst[24] & 1) == 0)
    {
      LODWORD(v30) = HIDWORD(__dst[23]);
      String.init<A>(describing:)();
    }

    OUTLINED_FUNCTION_8_4();

    MEMORY[0x223DE2180](0x657479626273202CLL, 0xEB00000000203A73);
    if ((__dst[28] & 1) == 0)
    {
      v30 = __dst[27];
      String.init<A>(describing:)();
    }

    OUTLINED_FUNCTION_8_4();

    MEMORY[0x223DE2180](0x63616E757874202CLL, 0xED0000203A64656BLL);
    v30 = v9;
    v15 = String.init<A>(describing:)();
    MEMORY[0x223DE2180](v15);

    MEMORY[0x223DE2180](0xD000000000000015, 0x80000002235F6FC0);
    if ((__dst[8] & 1) == 0)
    {
      v30 = __dst[7];
      String.init<A>(describing:)();
    }

    OUTLINED_FUNCTION_8_4();

    v17 = v31;
    v16 = v32;
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.siriNetwork);
    outlined init with copy of ConnectionTCPInfoMetrics(__dst, &v31);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    outlined destroy of ConnectionTCPInfoMetrics(__dst);

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v21 = 136315650;
      v22 = __dst[1];
      if (__dst[1])
      {
        v31 = __dst[0];
        v32 = __dst[1];

        v22 = String.init<A>(describing:)();
        v24 = v23;
      }

      else
      {
        v24 = 0xE000000000000000;
      }

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v30);

      *(v21 + 4) = v25;
      v26 = "Good link quality";
      *(v21 + 12) = 2080;
      if (v12)
      {
        v26 = "Poor link quality";
      }

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, (v26 - 32) | 0x8000000000000000, &v30);

      *(v21 + 14) = v27;
      *(v21 + 22) = 2080;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v30);

      *(v21 + 24) = v28;
      _os_log_impl(&dword_223515000, v19, v20, "SiriNetwork - Report Link Quality [%s]. %s. %s", v21, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    else
    {
    }
  }

  return v12;
}

uint64_t Data.truncateBeginning(removeSize:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a2;
  switch(a3 >> 62)
  {
    case 1uLL:
      v5 = a2;
      v6 = a2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v5 = *(a2 + 16);
      v6 = *(a2 + 24);
LABEL_6:
      if (v5 == v6)
      {
        goto LABEL_7;
      }

      if (a3 >> 62 != 2)
      {
        goto LABEL_12;
      }

      v8 = *(a2 + 16);
      v7 = *(a2 + 24);
      v4 = v7 - v8;
      if (!__OFSUB__(v7, v8))
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_12:
      if (!__OFSUB__(HIDWORD(v3), v3))
      {
        v4 = HIDWORD(v3) - v3;
        goto LABEL_14;
      }

      __break(1u);
      break;
    case 3uLL:
      goto LABEL_7;
    default:
      if ((a3 & 0xFF000000000000) != 0)
      {
        v4 = BYTE6(a3);
LABEL_14:
        if (v4 <= result)
        {
          v3 = 0;
        }

        else
        {
          v3 = Data.subdata(in:)();
        }
      }

      else
      {
LABEL_7:
        outlined copy of Data._Representation(a2, a3);
      }

      result = v3;
      break;
  }

  return result;
}

uint64_t SafeCallback.__deallocating_deinit()
{
  MEMORY[0x223DE39C0](v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

Swift::Int NWConnection.hashValue.getter()
{
  Hasher.init(_seed:)();
  v0 = NWConnection.identifier.getter();
  MEMORY[0x223DE29A0](v0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NWConnection(uint64_t a1)
{
  Hasher.init(_seed:)();
  v1 = NWConnection.identifier.getter();
  MEMORY[0x223DE29A0](v1);
  return Hasher._finalize()();
}

uint64_t instantiation function for generic protocol witness table for NWConnection(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NWConnection and conformance NWConnection(&lazy protocol witness table cache variable for type NWConnection and conformance NWConnection, &protocol conformance descriptor for NWConnection);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type NWConnection and conformance NWConnection(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NWConnection();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t SiriNetworkOspreyChannel.connectionIdentifier.didset()
{
  v1 = SiriNetworkOspreyChannel.connectionMetrics.modify(v17);
  v3 = v2;
  memmove(__dst, v2, 0x599uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(__dst) == 1)
  {
    (v1)(v17, 0);
  }

  else
  {
    memmove(v16, v3 + 12, 0x168uLL);
    if (_s11SiriNetwork27ConnectionPreparationReportVSgWOg(v16) != 1)
    {
      v4 = [v0 description];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v3[12] = v5;
      v3[13] = v7;
    }

    (v1)(v17, 0);
  }

  v8 = SiriNetworkOspreyChannel.connectionMetrics.modify(v17);
  v10 = v9;
  memmove(v16, v9, 0x599uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v16) != 1 && v10[64])
  {
    v11 = [v0 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v10[57] = v12;
    v10[58] = v14;
  }

  return (v8)(v17, 0);
}

uint64_t SiriNetworkOspreyChannel.connectionIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___SNOspreyChannel_connectionIdentifier);
  *v3 = a1;
  v3[1] = a2;

  return SiriNetworkOspreyChannel.connectionIdentifier.didset();
}

uint64_t SiriNetworkOspreyChannel.description.getter()
{
  if (*(v0 + OBJC_IVAR___SNOspreyChannel_connectionIdentifier + 8))
  {
    v1 = *(v0 + OBJC_IVAR___SNOspreyChannel_connectionIdentifier);
    v2 = *(v0 + OBJC_IVAR___SNOspreyChannel_connectionIdentifier + 8);
  }

  else
  {
    v2 = 0x80000002235F7290;
    v1 = 0xD000000000000012;
  }

  MEMORY[0x223DE2180](v1, v2);

  MEMORY[0x223DE2180](32, 0xE100000000000000);
  v3 = *(v0 + OBJC_IVAR___SNOspreyChannel_configuration + 8);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR___SNOspreyChannel_configuration);
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = *(v0 + OBJC_IVAR___SNOspreyChannel_configuration + 8);
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  MEMORY[0x223DE2180](v4, v5);

  return 0;
}

char *SiriNetworkOspreyChannel.__allocating_init(url:connectionConfiguration:)(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v3 = v1;
  v5 = v4;
  v6 = v2;
  memcpy(v67, v4, sizeof(v67));
  type metadata accessor for NSURLSessionConfiguration();
  memcpy(__dst, v5, 0x204uLL);
  v7 = static NSURLSessionConfiguration.defaultSessionConfiguration(with:)(__dst);
  v8 = objc_allocWithZone(v3);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = [v8 initWithURL:v10 configuration:v7];

  v13 = v12;
  v14 = URL.host.getter();
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v18 = URL.port.getter();
  if (v19)
  {
    v20 = 443;
  }

  else
  {
    v20 = v18;
  }

  __dst[0] = v16;
  __dst[1] = v17;
  MEMORY[0x223DE2180](58, 0xE100000000000000);
  v65[0] = v20;
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v21);

  MEMORY[0x223DE2180](8236, 0xE200000000000000);
  v22 = NSURLSessionConfiguration.rpcDescription.getter();
  MEMORY[0x223DE2180](v22);

  v23 = __dst[1];
  v24 = &v13[OBJC_IVAR___SNOspreyChannel_configuration];
  *v24 = __dst[0];
  *(v24 + 1) = v23;

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.siriNetwork);
  v26 = v7;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v50 = v6;
    v29 = v3;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    __dst[0] = v31;
    *v30 = 136315138;
    v32 = NSURLSessionConfiguration.rpcDescription.getter();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, __dst);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_223515000, v27, v28, "Provider - SiriNetworkOspreyChannel: Channel init with configuration: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    OUTLINED_FUNCTION_12();
    v3 = v29;
    v6 = v50;
    OUTLINED_FUNCTION_12();
  }

  memcpy(__src, v67, sizeof(__src));
  destructiveProjectEnumData for ConnectionConfigurationError();
  memcpy(v61, &v13[OBJC_IVAR___SNOspreyChannel_connectionConfiguration], 0x204uLL);
  memcpy(&v13[OBJC_IVAR___SNOspreyChannel_connectionConfiguration], __src, 0x204uLL);
  outlined destroy of ConnectionConfiguration?(v61, &_s11SiriNetwork23ConnectionConfigurationVSgMd, &_s11SiriNetwork23ConnectionConfigurationVSgMR);
  LOBYTE(aBlock[0]) = 1;
  v59 = 1;
  _s11SiriNetwork27ConnectionPreparationReportVSgWOi0_(v62);
  memcpy(v64, v62, sizeof(v64));
  _s11SiriNetwork24ConnectionSnapshotReportVSgWOi0_(v63);
  memcpy(&v65[71], v63, 0x2C8uLL);
  v58 = 1;
  v57 = 1;
  v56 = 1;
  v55 = 1;
  v54 = 1;
  v53 = 1;
  v52 = 1;
  v65[0] = 0;
  LOBYTE(v65[1]) = 1;
  *&v65[3] = 0u;
  v65[2] = MEMORY[0x277D84F90];
  v65[5] = MEMORY[0x277D84F90];
  LODWORD(v65[6]) = 0;
  BYTE4(v65[6]) = 1;
  memset(&v65[7], 0, 40);
  memcpy(&v65[12], v64, 0x168uLL);
  memset(&v65[57], 0, 112);
  v65[160] = MEMORY[0x277D84F90];
  memset(&v65[161], 0, 40);
  LOBYTE(v65[166]) = 1;
  v65[167] = 0;
  LOBYTE(v65[168]) = 1;
  v65[169] = 0;
  LOBYTE(v65[170]) = 1;
  memset(&v65[171], 0, 20);
  BYTE4(v65[173]) = 1;
  v65[174] = 0;
  LOBYTE(v65[175]) = 1;
  v65[176] = 0;
  LOBYTE(v65[177]) = 1;
  v65[178] = 0;
  LOBYTE(v65[179]) = 1;
  destructiveProjectEnumData for ConnectionConfigurationError();
  v35 = OBJC_IVAR___SNOspreyChannel_connectionMetrics;
  swift_beginAccess();
  memcpy(__dst, &v13[v35], 0x599uLL);
  memcpy(&v13[v35], v65, 0x599uLL);
  outlined destroy of ConnectionConfiguration?(__dst, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = v3;
  v38 = &v13[OBJC_IVAR___SNOspreyChannel_ospreyConnectionMetrics];
  v39 = *&v13[OBJC_IVAR___SNOspreyChannel_ospreyConnectionMetrics];
  v40 = *&v13[OBJC_IVAR___SNOspreyChannel_ospreyConnectionMetrics + 8];
  *v38 = partial apply for closure #1 in SiriNetworkOspreyChannel.init(url:connectionConfiguration:);
  v38[1] = v37;
  v41 = v13;

  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v39, v40);

  v42 = *v38;
  v43 = v38[1];
  if (*v38)
  {
    OUTLINED_FUNCTION_3();
    v44 = swift_allocObject();
    *(v44 + 16) = v42;
    *(v44 + 24) = v43;
    v45 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed OspreyConnectionMetrics) -> ();
  }

  else
  {
    v45 = destructiveProjectEnumData for ConnectionConfigurationError;
    v44 = 0;
  }

  OUTLINED_FUNCTION_3();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = v44;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OspreyConnectionMetrics) -> (@out ());
  aBlock[5] = v46;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed OspreyConnectionMetrics) -> ();
  aBlock[3] = &block_descriptor_3;
  v47 = _Block_copy(aBlock);
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v42, v43);

  [v41 setConnectionMetricsHandler_];
  _Block_release(v47);

  [v41 setUseCompression_];
  type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  (*(v48 + 8))(v6);
  return v41;
}

void closure #1 in SiriNetworkOspreyChannel.init(url:connectionConfiguration:)(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = OBJC_IVAR___SNOspreyChannel_lock;
  [*(Strong + OBJC_IVAR___SNOspreyChannel_lock) lock];
  v5 = OBJC_IVAR___SNOspreyChannel_connectionMetrics;
  swift_beginAccess();
  memcpy(v70, &v3[v5], 0x599uLL);
  memcpy(v69, &v3[v5], 0x599uLL);
  memmove(v71, &v3[v5], 0x599uLL);
  v6 = _s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v71);
  v7 = MEMORY[0x277D84F90];
  if (v6 == 1)
  {
    memcpy(v68, v69, 0x599uLL);
    outlined init with copy of ConnectionSnapshotReport?(v70, v67, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
    outlined destroy of ConnectionConfiguration?(v68, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
  }

  else
  {
    memcpy(v64, &v69[96], 0x168uLL);
    memcpy(v68, v69, 0x599uLL);
    outlined init with copy of ConnectionSnapshotReport?(v70, v67, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
    outlined init with copy of ConnectionSnapshotReport?(v64, v67, &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
    outlined destroy of ConnectionConfiguration?(v68, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
    memcpy(v65, v64, 0x168uLL);
    if (_s11SiriNetwork27ConnectionPreparationReportVSgWOg(v65) != 1)
    {
      outlined destroy of ConnectionConfiguration?(v64, &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
      goto LABEL_11;
    }
  }

  v8 = SiriNetworkOspreyChannel.connectionMetrics.modify(v64);
  v10 = v9;
  memmove(v69, v9, 0x599uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v69) == 1)
  {
    (v8)(v64, 0);
  }

  else
  {
    _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(v65);
    if (one-time initialization token for sharedNetworkAnalytics != -1)
    {
      swift_once();
    }

    v11 = static NetworkAnalytics.sharedNetworkAnalytics;
    memcpy(&v66[3], v65, 0x121uLL);
    v67[0] = 0uLL;
    v67[1] = xmmword_2235F0700;
    LODWORD(v67[2]) = 0;
    BYTE4(v67[2]) = 0;
    memcpy(&v67[2] + 5, v66, 0x124uLL);
    *&v67[21] = v7;
    *(&v67[21] + 1) = v7;
    *&v67[22] = static NetworkAnalytics.sharedNetworkAnalytics;
    destructiveProjectEnumData for ConnectionConfigurationError();
    memcpy(v68, v10 + 96, 0x168uLL);
    memcpy(v10 + 96, v67, 0x168uLL);
    v12 = v11;
    outlined destroy of ConnectionConfiguration?(v68, &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
    (v8)(v64, 0);
  }

LABEL_11:
  v13 = SiriNetworkOspreyChannel.connectionMetrics.modify(v67);
  v15 = v14;
  memmove(v69, v14, 0x599uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v69) != 1)
  {
    memmove(v68, v15 + 12, 0x168uLL);
    if (_s11SiriNetwork27ConnectionPreparationReportVSgWOg(v68) != 1)
    {
      v65[0] = 0;
      v65[1] = 0xE000000000000000;
      v64[0] = v3;
      lazy protocol witness table accessor for type SiriNetworkOspreyChannel and conformance NSObject();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v16 = v65[1];
      v15[12] = v65[0];
      v15[13] = v16;
    }
  }

  (v13)(v67, 0);
  memcpy(v67, &v3[v5], 0x599uLL);
  memcpy(v65, &v3[v5], 0x599uLL);
  memmove(v68, &v3[v5], 0x599uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v68) == 1)
  {
    memcpy(v64, v65, 0x599uLL);
    outlined init with copy of ConnectionSnapshotReport?(v67, v63, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
    outlined destroy of ConnectionConfiguration?(v64, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
  }

  else
  {
    memcpy(v62, &v65[57], 0x70uLL);
    memcpy(v64, v65, 0x599uLL);
    outlined init with copy of ConnectionSnapshotReport?(v67, v63, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
    outlined init with copy of ConnectionSnapshotReport?(v62, v63, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
    outlined destroy of ConnectionConfiguration?(v64, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
    if (v62[7])
    {
      outlined destroy of ConnectionConfiguration?(v62, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
      goto LABEL_23;
    }
  }

  v17 = SiriNetworkOspreyChannel.connectionMetrics.modify(v63);
  v19 = v18;
  memmove(v65, v18, 0x599uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v65) == 1)
  {
    (v17)(v63, 0);
  }

  else
  {
    v20 = v4;
    LOBYTE(v64[0]) = 1;
    LOBYTE(v62[0]) = 1;
    v61[0] = 1;
    if (one-time initialization token for sharedNetworkAnalytics != -1)
    {
      swift_once();
    }

    v21 = static NetworkAnalytics.sharedNetworkAnalytics;
    v22 = v64[0];
    v23 = v62[0];
    v24 = v61[0];
    memcpy(v64, v19 + 57, 0x70uLL);
    v19[57] = 0;
    v19[58] = 0;
    *(v19 + 118) = 0;
    *(v19 + 476) = v22;
    v19[60] = 0;
    *(v19 + 488) = v23;
    v19[62] = 0;
    *(v19 + 504) = v24;
    v7 = MEMORY[0x277D84F90];
    v19[64] = MEMORY[0x277D84F90];
    v19[65] = v7;
    *(v19 + 264) = 0;
    v19[67] = 0;
    v19[69] = 0;
    v19[68] = 0;
    v19[70] = v21;
    v25 = v21;
    outlined destroy of ConnectionConfiguration?(v64, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
    (v17)(v63, 0);
    v4 = v20;
  }

LABEL_23:
  v26 = SiriNetworkOspreyChannel.connectionMetrics.modify(v64);
  v28 = v27;
  memmove(v65, v27, 0x599uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v65) != 1 && v28[64])
  {
    v63[0] = 0;
    v63[1] = 0xE000000000000000;
    v62[0] = v3;
    lazy protocol witness table accessor for type SiriNetworkOspreyChannel and conformance NSObject();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v29 = v63[1];
    v28[57] = v63[0];
    v28[58] = v29;
  }

  (v26)(v64, 0);
  v30 = SiriNetworkOspreyChannel.connectionMetrics.modify(v61);
  v32 = v31;
  memmove(v64, v31, 0x599uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v64) != 1)
  {
    v33 = v1;
    ConnectionEstablishmentReport.init(ospreyConnectionMetrics:)(v1, v62);
    memcpy(v63, v32 + 456, 0x70uLL);
    memcpy(v32 + 456, v62, 0x70uLL);
    outlined destroy of ConnectionConfiguration?(v63, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
  }

  (v30)(v61, 0);
  memcpy(v62, &v3[v5], 0x599uLL);
  memcpy(v61, &v3[v5], 0x599uLL);
  memmove(v63, &v3[v5], 0x599uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v63) == 1)
  {
    memcpy(v60, v61, 0x599uLL);
    outlined init with copy of ConnectionSnapshotReport?(v62, v59, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
    outlined destroy of ConnectionConfiguration?(v60, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
    goto LABEL_31;
  }

  memcpy(__dst, &v61[568], 0x2C8uLL);
  memcpy(v60, v61, 0x599uLL);
  outlined init with copy of ConnectionSnapshotReport?(v62, v59, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
  outlined init with copy of ConnectionSnapshotReport?(__dst, v59, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
  outlined destroy of ConnectionConfiguration?(v60, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
  memcpy(__src, __dst, 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(__src) == 1)
  {
LABEL_31:
    v34 = SiriNetworkOspreyChannel.connectionMetrics.modify(v52);
    v36 = v35;
    memmove(v61, v35, 0x599uLL);
    if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v61) == 1)
    {
      (v34)(v52, 0);
    }

    else
    {
      _s11SiriNetwork010ConnectionB6ReportVSgWOi0_(__src);
      memcpy(v58, __src, sizeof(v58));
      v72[0] = 1;
      _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(__dst);
      memcpy(&v57[7], __dst, 0x121uLL);
      if (one-time initialization token for sharedNetworkAnalytics != -1)
      {
        swift_once();
      }

      v37 = static NetworkAnalytics.sharedNetworkAnalytics;
      LODWORD(v59[0]) = 0;
      v59[1] = 0;
      v59[2] = 0xE000000000000000;
      v59[3] = 0;
      v59[4] = 0xE000000000000000;
      memcpy(&v59[5], v58, 0x139uLL);
      v59[46] = 0;
      v59[45] = 0;
      LOBYTE(v59[47]) = v72[0];
      memcpy(&v59[47] + 1, v57, 0x128uLL);
      v59[85] = v7;
      v59[86] = v7;
      LODWORD(v59[87]) = 4;
      v59[88] = static NetworkAnalytics.sharedNetworkAnalytics;
      destructiveProjectEnumData for ConnectionConfigurationError();
      memcpy(v60, v36 + 568, 0x2C8uLL);
      memcpy(v36 + 568, v59, 0x2C8uLL);
      v38 = v37;
      outlined destroy of ConnectionConfiguration?(v60, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
      (v34)(v52, 0);
    }

    goto LABEL_37;
  }

  outlined destroy of ConnectionConfiguration?(__dst, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
LABEL_37:
  ConnectionNetworkReport.init(ospreyConnectionMetrics:)(v1, v72);
  memcpy(v56, v72, sizeof(v56));
  v39 = SiriNetworkOspreyChannel.connectionMetrics.modify(__dst);
  v41 = v40;
  memmove(v61, v40, 0x599uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v61) == 1)
  {
    outlined destroy of ConnectionNetworkReport(v72);
    (v39)(__dst, 0);
  }

  else
  {
    memmove(v60, v41 + 568, 0x2C8uLL);
    if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v60) == 1)
    {
      outlined destroy of ConnectionNetworkReport(v72);
    }

    else
    {
      memcpy(__src, v56, 0x139uLL);
      destructiveProjectEnumData for ConnectionConfigurationError();
      memcpy(v59, v41 + 608, 0x139uLL);
      memcpy(v41 + 608, __src, 0x139uLL);
      outlined destroy of ConnectionConfiguration?(v59, &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
    }

    (v39)(__dst, 0);
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Logger.siriNetwork);
  v43 = v3;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v55 = v47;
    *v46 = 136315138;
    memcpy(v59, &v3[v5], 0x599uLL);
    memmove(v60, &v3[v5], 0x599uLL);
    if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v60) == 1)
    {
      v48 = 0xE100000000000000;
      v49 = 45;
    }

    else
    {
      memcpy(__dst, v59, 0x599uLL);
      memcpy(__src, v59, 0x599uLL);
      outlined init with copy of ConnectionMetrics(__src, v52);
      v49 = String.init<A>(describing:)();
      v48 = v50;
    }

    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v48, &v55);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_223515000, v44, v45, "Provider - SiriNetworkOspreyChannel: Channel metrics generated. %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x223DE38F0](v47, -1, -1);
    MEMORY[0x223DE38F0](v46, -1, -1);
  }

  [*&v3[v4] unlock];
}

void SiriNetworkOspreyChannel.send(_:)()
{
  v1 = *(v0 + OBJC_IVAR___SNOspreyChannel_ospreyClientStreamingContext);
  if (v1)
  {
    swift_unknownObjectRetain();
    oslog = Data._bridgeToObjectiveC()().super.isa;
    [v1 writeFrame_];
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.siriNetwork);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_223515000, oslog, v3, "Provider - SiriNetworkOspreyChannel: Channel streaming context is nil.", v4, 2u);
      OUTLINED_FUNCTION_12();
    }
  }
}

id SiriNetworkOspreyChannel.bidirectionalStreamingRequest(withMethodName:requestBuilder:streamingResponseHandler:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.siriNetwork);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_223515000, v15, v16, "Provider - SiriNetworkOspreyChannel: Bidirectional streaming created.", v17, 2u);
    OUTLINED_FUNCTION_12();
  }

  v18 = MEMORY[0x223DE2070](a1, a2);
  if (a3)
  {
    v35 = a3;
    v36 = a4;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = thunk for @escaping @callee_guaranteed (@guaranteed OspreyConnectionMetrics) -> ();
    v34 = &block_descriptor_70;
    v19 = _Block_copy(&aBlock);
  }

  else
  {
    v19 = 0;
  }

  v35 = a5;
  v36 = a6;
  OUTLINED_FUNCTION_2_4();
  v32 = 1107296256;
  v33 = thunk for @escaping @callee_guaranteed (@guaranteed Data) -> ();
  v34 = &block_descriptor_64;
  v20 = _Block_copy(&aBlock);

  v35 = a7;
  v36 = a8;
  OUTLINED_FUNCTION_2_4();
  v32 = 1107296256;
  v33 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v34 = &block_descriptor_67;
  v21 = _Block_copy(&aBlock);

  v30.receiver = v28;
  v30.super_class = type metadata accessor for SiriNetworkOspreyChannel();
  v22 = objc_msgSendSuper2(&v30, sel_bidirectionalStreamingRequestWithMethodName_requestBuilder_streamingResponseHandler_completion_, v18, v19, v20, v21);
  _Block_release(v21);
  _Block_release(v20);
  _Block_release(v19);

  *&v28[OBJC_IVAR___SNOspreyChannel_ospreyClientStreamingContext] = v22;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v23 = &v28[OBJC_IVAR___SNOspreyChannel_ospreyRequestBuilder];
  v24 = *&v28[OBJC_IVAR___SNOspreyChannel_ospreyRequestBuilder];
  v25 = *&v28[OBJC_IVAR___SNOspreyChannel_ospreyRequestBuilder + 8];
  *v23 = a3;
  *(v23 + 1) = a4;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v24, v25);
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a3, a4);
  return v22;
}

void thunk for @escaping @callee_guaranteed (@guaranteed OspreyConnectionMetrics) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Data) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v3(v5, v7);
  outlined consume of Data._Representation(v5, v7);
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSData) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa);
}

id SiriNetworkOspreyChannel.getMetrics()@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR___SNOspreyChannel_lock;
  [*(v1 + OBJC_IVAR___SNOspreyChannel_lock) lock];
  v4 = OBJC_IVAR___SNOspreyChannel_connectionMetrics;
  swift_beginAccess();
  memcpy(__dst, (v1 + v4), 0x599uLL);
  memcpy(a1, (v1 + v4), 0x599uLL);
  v5 = *(v1 + v3);
  outlined init with copy of ConnectionSnapshotReport?(__dst, &v7, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
  return [v5 unlock];
}

id SiriNetworkOspreyChannel.init(url:configuration:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___SNOspreyChannel_connectionConfiguration;
  _s11SiriNetwork23ConnectionConfigurationVSgWOi0_(__src);
  memcpy(&v3[v6], __src, 0x204uLL);
  *&v3[OBJC_IVAR___SNOspreyChannel_ospreyClientStreamingContext] = 0;
  OUTLINED_FUNCTION_5_7(OBJC_IVAR___SNOspreyChannel_ospreyRequestBuilder);
  OUTLINED_FUNCTION_5_7(OBJC_IVAR___SNOspreyChannel_ospreyConnectionMetrics);
  v7 = OBJC_IVAR___SNOspreyChannel_connectionMetrics;
  _s11SiriNetwork17ConnectionMetricsVSgWOi0_(v17);
  memcpy(&v3[v7], v17, 0x599uLL);
  v8 = OBJC_IVAR___SNOspreyChannel_lock;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  OUTLINED_FUNCTION_5_7(OBJC_IVAR___SNOspreyChannel_connectionIdentifier);
  OUTLINED_FUNCTION_5_7(OBJC_IVAR___SNOspreyChannel_configuration);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for SiriNetworkOspreyChannel();
  v12 = objc_msgSendSuper2(&v15, sel_initWithURL_configuration_, v11, a2);

  type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  (*(v13 + 8))(a1);
  return v12;
}

id SiriNetworkOspreyChannel.init(url:configuration:useCache:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = OBJC_IVAR___SNOspreyChannel_connectionConfiguration;
  _s11SiriNetwork23ConnectionConfigurationVSgWOi0_(__src);
  memcpy(&v4[v8], __src, 0x204uLL);
  *&v4[OBJC_IVAR___SNOspreyChannel_ospreyClientStreamingContext] = 0;
  OUTLINED_FUNCTION_4_4(OBJC_IVAR___SNOspreyChannel_ospreyRequestBuilder);
  OUTLINED_FUNCTION_4_4(OBJC_IVAR___SNOspreyChannel_ospreyConnectionMetrics);
  v9 = OBJC_IVAR___SNOspreyChannel_connectionMetrics;
  _s11SiriNetwork17ConnectionMetricsVSgWOi0_(v19);
  memcpy(&v4[v9], v19, 0x599uLL);
  v10 = OBJC_IVAR___SNOspreyChannel_lock;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  OUTLINED_FUNCTION_4_4(OBJC_IVAR___SNOspreyChannel_connectionIdentifier);
  OUTLINED_FUNCTION_4_4(OBJC_IVAR___SNOspreyChannel_configuration);
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for SiriNetworkOspreyChannel();
  v14 = objc_msgSendSuper2(&v17, sel_initWithURL_configuration_useCache_, v13, a2, a3 & 1);

  type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  (*(v15 + 8))(a1);
  return v14;
}

id SiriNetworkOspreyChannel.init()()
{
  v1 = OBJC_IVAR___SNOspreyChannel_connectionConfiguration;
  _s11SiriNetwork23ConnectionConfigurationVSgWOi0_(__src);
  memcpy(&v0[v1], __src, 0x204uLL);
  *&v0[OBJC_IVAR___SNOspreyChannel_ospreyClientStreamingContext] = 0;
  v2 = &v0[OBJC_IVAR___SNOspreyChannel_ospreyRequestBuilder];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR___SNOspreyChannel_ospreyConnectionMetrics];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR___SNOspreyChannel_connectionMetrics;
  _s11SiriNetwork17ConnectionMetricsVSgWOi0_(v12);
  memcpy(&v0[v4], v12, 0x599uLL);
  v5 = OBJC_IVAR___SNOspreyChannel_lock;
  *&v0[v5] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v6 = &v0[OBJC_IVAR___SNOspreyChannel_connectionIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v0[OBJC_IVAR___SNOspreyChannel_configuration];
  v8 = type metadata accessor for SiriNetworkOspreyChannel();
  *v7 = 0;
  *(v7 + 1) = 0;
  v10.receiver = v0;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, sel_init);
}

id SiriNetworkOspreyChannel.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SiriNetworkOspreyChannel();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t type metadata accessor for NSURLSessionConfiguration()
{
  result = lazy cache variable for type metadata for NSURLSessionConfiguration;
  if (!lazy cache variable for type metadata for NSURLSessionConfiguration)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSURLSessionConfiguration);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OspreyConnectionMetrics) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t lazy protocol witness table accessor for type SiriNetworkOspreyChannel and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type SiriNetworkOspreyChannel and conformance NSObject;
  if (!lazy protocol witness table cache variable for type SiriNetworkOspreyChannel and conformance NSObject)
  {
    type metadata accessor for SiriNetworkOspreyChannel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriNetworkOspreyChannel and conformance NSObject);
  }

  return result;
}

uint64_t outlined destroy of ConnectionConfiguration?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1();
  (*(v4 + 8))(a1);
  return a1;
}

void _s11SiriNetwork23ConnectionConfigurationVSgWOi0_(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
  bzero(a1 + 4, 0x1E4uLL);
}

uint64_t one-time initialization function for connectionStart()
{
  result = siri_ariadneDbgCode(320);
  static Constants.Signposts.connectionStart = result;
  return result;
}

uint64_t one-time initialization function for connectionOpen()
{
  result = siri_ariadneDbgCode(321);
  static Constants.Signposts.connectionOpen = result;
  return result;
}

uint64_t one-time initialization function for connectionOpened()
{
  result = siri_ariadneDbgCode(322);
  static Constants.Signposts.connectionOpened = result;
  return result;
}

uint64_t one-time initialization function for connectionClosed()
{
  result = siri_ariadneDbgCode(351);
  static Constants.Signposts.connectionClosed = result;
  return result;
}

uint64_t one-time initialization function for streamOpenNetwork()
{
  result = siri_ariadneDbgCode(356);
  static Constants.Signposts.streamOpenNetwork = result;
  return result;
}

uint64_t one-time initialization function for readBufferBegin()
{
  result = siri_ariadneDbgCode(358);
  static Constants.Signposts.readBufferBegin = result;
  return result;
}

uint64_t one-time initialization function for readBufferEnd()
{
  result = siri_ariadneDbgCode(359);
  static Constants.Signposts.readBufferEnd = result;
  return result;
}

uint64_t one-time initialization function for writeBufferBegin()
{
  result = siri_ariadneDbgCode(360);
  static Constants.Signposts.writeBufferBegin = result;
  return result;
}

uint64_t one-time initialization function for writeBufferEnd()
{
  result = siri_ariadneDbgCode(361);
  static Constants.Signposts.writeBufferEnd = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionMethod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConnectionMethod(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t ConnectionMethod.nextConnectionMethodSupported(connectionConfiguration:)(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 99);
  v4 = *(a1 + 408);
  v5 = *(a1 + 513);
  v17 = MEMORY[0x277D84FA0];
  v7 = v4 == 1 || v5 != 4;
  v8 = v7 | v3;
LABEL_8:
  while (2)
  {
    specialized Set._Variant.insert(_:)(v16, a2);
    v9 = 1;
    switch(a2)
    {
      case 1:
        v9 = 0;
        break;
      case 2:
        a2 = 3;
        v9 = 3;
        if (v8)
        {
          goto LABEL_12;
        }

        break;
      case 3:
        break;
      default:
        a2 = 2;
        v9 = 2;
        if ((v3 & 1) == 0)
        {
LABEL_12:
          v10 = v17;
          if (!*(v17 + 16))
          {
            continue;
          }

          Hasher.init(_seed:)();
          MEMORY[0x223DE2980](a2);
          v11 = Hasher._finalize()();
          v12 = ~(-1 << *(v10 + 32));
          do
          {
            v13 = v11 & v12;
            if (((*(v10 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
            {
              goto LABEL_8;
            }

            v11 = v13 + 1;
          }

          while (*(*(v10 + 48) + v13) != a2);
          v9 = a2;
        }

        break;
    }

    break;
  }

  v14 = specialized Set.contains(_:)(v9, v17);

  if (v14)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

SiriNetwork::ConnectionMethod_optional __swiftcall ConnectionMethod.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 4)
  {
    LOBYTE(rawValue) = 4;
  }

  return rawValue;
}

SiriNetwork::ConnectionMethod_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ConnectionMethod@<W0>(Swift::Int *a1@<X0>, SiriNetwork::ConnectionMethod_optional *a2@<X8>)
{
  result.value = ConnectionMethod.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ConnectionMethod@<X0>(uint64_t *a1@<X8>)
{
  result = ConnectionMethod.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type [ConnectionMethod] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ConnectionMethod] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ConnectionMethod] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11SiriNetwork16ConnectionMethodOGMd, &_sSay11SiriNetwork16ConnectionMethodOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ConnectionMethod] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConnectionMethod and conformance ConnectionMethod()
{
  result = lazy protocol witness table cache variable for type ConnectionMethod and conformance ConnectionMethod;
  if (!lazy protocol witness table cache variable for type ConnectionMethod and conformance ConnectionMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionMethod and conformance ConnectionMethod);
  }

  return result;
}

uint64_t type metadata completion function for NetworkActivity(uint64_t a1)
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

_BYTE *storeEnumTagSinglePayload for NetworkActivityTracingState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkActivityTracingState and conformance NetworkActivityTracingState()
{
  result = lazy protocol witness table cache variable for type NetworkActivityTracingState and conformance NetworkActivityTracingState;
  if (!lazy protocol witness table cache variable for type NetworkActivityTracingState and conformance NetworkActivityTracingState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkActivityTracingState and conformance NetworkActivityTracingState);
  }

  return result;
}

id Error.sn_isNetworkUnreachable()(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = MEMORY[0x28223BE20](a1);
  v13 = OUTLINED_FUNCTION_0_15(v5, v6, v7, v8, v9, v10, v11, v12, v23);
  v14(v13);
  OUTLINED_FUNCTION_2_5();
  v15 = _getErrorEmbeddedNSError<A>(_:)();
  if (v15)
  {
    v3 = v15;
    v16 = OUTLINED_FUNCTION_2_5();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_3_3();
    v16 = OUTLINED_FUNCTION_1_7(v18, v19);
  }

  v17(v16);
  v20 = _convertErrorToNSError(_:)();

  v21 = [v20 *a3];
  return v21;
}

Swift::Bool __swiftcall Error.isFallbackConnectionMethodRetryable(for:)(SiriNetwork::ConnectionMethod a1)
{
  v3 = MEMORY[0x28223BE20](a1);
  v11 = OUTLINED_FUNCTION_0_15(v3, v4, v5, v6, v7, v8, v9, v10, v21);
  v12(v11);
  OUTLINED_FUNCTION_2_5();
  v13 = _getErrorEmbeddedNSError<A>(_:)();
  if (v13)
  {
    v1 = v13;
    v14 = OUTLINED_FUNCTION_2_5();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_3_3();
    v14 = OUTLINED_FUNCTION_1_7(v16, v17);
  }

  v15(v14);
  v18 = _convertErrorToNSError(_:)();

  v19 = NSError.isFallbackConnectionMethodRetryable(for:)(a1);
  return v19;
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

void specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v3)
    {
    }
  }
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3, a4), (v5 & 1) != 0))
  {
    return swift_unknownObjectRetain();
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

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 16 * v4);
  }

  else
  {
    return 0;
  }
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 2;
  }
}

Swift::Bool __swiftcall NSError.isFallbackConnectionMethodRetryable(for:)(SiriNetwork::ConnectionMethod a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  OUTLINED_FUNCTION_11_1(v4);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  v12 = v11 - v10;
  *&v46 = v1;
  type metadata accessor for NSError();
  v13 = v1;
  if (swift_dynamicCast())
  {
    v14 = 1;
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v6);
    (*(v8 + 32))(v12, v2, v6);
    v18 = NWError.isFallbackConnectionMethodRetryable(for:)(a1);
    (*(v8 + 8))(v12, v6);
    if (v18)
    {
      return v14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v6);
    outlined destroy of ConnectionSnapshotReport?(v2, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  }

  v22 = [v13 domain];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v23 == v26 && v25 == v27)
  {
    goto LABEL_16;
  }

  v29 = OUTLINED_FUNCTION_24_0(v26);

  if (v29)
  {
    goto LABEL_17;
  }

  v30 = [v13 domain];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v31 == v34 && v33 == v35)
  {
LABEL_16:

    goto LABEL_17;
  }

  v37 = OUTLINED_FUNCTION_24_0(v34);

  if ((v37 & 1) == 0)
  {
LABEL_23:
    v40 = [v13 userInfo];
    v41 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v42, v43, v41, &v46);

    if (!v47)
    {
      outlined destroy of ConnectionSnapshotReport?(&v46, &_sypSgMd, &_sypSgMR);
      return 0;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v44 = NSError.isFallbackConnectionMethodRetryable(for:)(a1);

    return v44;
  }

LABEL_17:
  v38 = [v13 code];
  if (v38 != POSIXErrorCode.rawValue.getter() && v38 != POSIXErrorCode.rawValue.getter())
  {
    if (v38 == POSIXErrorCode.rawValue.getter())
    {
      return a1 == SiriNetwork_ConnectionMethod_peer;
    }

    goto LABEL_23;
  }

  return 1;
}

Swift::Bool __swiftcall NSError.sn_isNetworkUnreachable()()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  OUTLINED_FUNCTION_11_1(v3);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_1();
  v11 = v10 - v9;
  *&v60 = isNetwork;
  type metadata accessor for NSError();
  v12 = isNetwork;
  if (OUTLINED_FUNCTION_22_1(v2, &v60))
  {
    v1 = 1;
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v5);
    (*(v7 + 32))(v11, v2, v5);
    isNetwork = NWError.sn_isNetworkUnreachable()();
    (*(v7 + 8))(v11, v5);
    if (isNetwork)
    {
      return v1;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v5);
    outlined destroy of ConnectionSnapshotReport?(v2, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  }

  v19 = OUTLINED_FUNCTION_14_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_15_3();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  v22 = v22 && isNetwork == v21;
  if (v22)
  {
LABEL_16:

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_0_16(v20);
  OUTLINED_FUNCTION_16_4();

  if (!v1)
  {
    v23 = OUTLINED_FUNCTION_14_1();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_15_3();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_4_5();
    if (!v22 || isNetwork != v25)
    {
      OUTLINED_FUNCTION_0_16(v24);
      OUTLINED_FUNCTION_16_4();

      if (!v1)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_17:
  isNetwork = OUTLINED_FUNCTION_30_0();
  if (isNetwork == POSIXErrorCode.rawValue.getter() || isNetwork == POSIXErrorCode.rawValue.getter() || isNetwork == POSIXErrorCode.rawValue.getter())
  {
    return 1;
  }

LABEL_20:
  v27 = OUTLINED_FUNCTION_14_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_15_3();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  if (v22 && isNetwork == v29)
  {
  }

  else
  {
    OUTLINED_FUNCTION_0_16(v28);
    OUTLINED_FUNCTION_16_4();

    if (!v1)
    {
      goto LABEL_31;
    }
  }

  v31 = OUTLINED_FUNCTION_30_0();
  if (v31 == -65554 || v31 == -65537)
  {
    return 1;
  }

LABEL_31:
  v33 = OUTLINED_FUNCTION_14_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_15_3();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  if (v22 && isNetwork == v35)
  {
  }

  else
  {
    OUTLINED_FUNCTION_0_16(v34);
    OUTLINED_FUNCTION_16_4();

    if (!v1)
    {
      goto LABEL_39;
    }
  }

  if (OUTLINED_FUNCTION_30_0() - 1 < 2)
  {
    return 1;
  }

LABEL_39:
  v37 = OUTLINED_FUNCTION_14_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_15_3();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  if (v22 && isNetwork == v39)
  {

    return 1;
  }

  OUTLINED_FUNCTION_0_16(v38);
  OUTLINED_FUNCTION_16_4();

  if (v1)
  {
    return 1;
  }

  v41 = OUTLINED_FUNCTION_14_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_15_3();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  if (v22 && isNetwork == v43)
  {

    goto LABEL_54;
  }

  OUTLINED_FUNCTION_0_16(v42);
  OUTLINED_FUNCTION_16_4();

  if (v1)
  {
LABEL_54:
    v46 = OUTLINED_FUNCTION_30_0();
    if (v46 >= 0x11 || ((0x1726Bu >> v46) & 1) == 0)
    {
      goto LABEL_56;
    }

    return 1;
  }

LABEL_56:
  v47 = OUTLINED_FUNCTION_14_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_15_3();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  if (v22 && isNetwork == v49)
  {
  }

  else
  {
    OUTLINED_FUNCTION_0_16(v48);
    OUTLINED_FUNCTION_16_4();

    if (!v1)
    {
      goto LABEL_69;
    }
  }

  v51 = [v12 userInfo];
  v52 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v53, v54, v52, &v60);

  if (!v61)
  {
    outlined destroy of ConnectionSnapshotReport?(&v60, &_sypSgMd, &_sypSgMR);
LABEL_69:
    v55 = [v12 userInfo];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_23_1(v56, v57);

    if (!v61)
    {
      outlined destroy of ConnectionSnapshotReport?(&v60, &_sypSgMd, &_sypSgMR);
      return 0;
    }

    OUTLINED_FUNCTION_26_1();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v58 = [v59 sn_isNetworkUnreachable];

    return (v58 & 1) != 0;
  }

  OUTLINED_FUNCTION_26_1();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_69;
  }

  v1 = 1;
  if (v59 != 406 && v59 != 503)
  {
    goto LABEL_69;
  }

  return v1;
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

BOOL @objc NSError.sn_isNetworkUnreachable()(void *a1)
{
  v1 = a1;
  isNetwork = NSError.sn_isNetworkUnreachable()();

  return isNetwork;
}

Swift::Bool __swiftcall NSError.sn_isNetworkUnreachableForServerCause()()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  OUTLINED_FUNCTION_11_1(v3);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_1();
  *&v48 = v0;
  type metadata accessor for NSError();
  v10 = v0;
  if (OUTLINED_FUNCTION_12_1(v10, &v48))
  {
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v5);
    v14 = *(v7 + 32);
    v15 = OUTLINED_FUNCTION_18_2();
    v14(v15);
    v16 = OUTLINED_FUNCTION_19_1();
    v14(v16);
    v17 = OUTLINED_FUNCTION_5_2();
    if (v18(v17) == *MEMORY[0x277CD8FB0])
    {
      v19 = OUTLINED_FUNCTION_5_2();
      v20(v19);
      v21 = *v2 > 0x3Du || ((1 << *v2) & 0x2060000000000000) == 0;
      if (!v21)
      {
        return 1;
      }
    }

    else
    {
      v25 = OUTLINED_FUNCTION_5_2();
      v26(v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v5);
    outlined destroy of ConnectionSnapshotReport?(v1, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  }

  v27 = [v10 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_20_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  if (v21 && v5 == v29)
  {
LABEL_22:

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_2_6(v28);
  OUTLINED_FUNCTION_21_2();

  if ((v2 & 1) == 0)
  {
    v31 = [v10 domain];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_20_1();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_4_5();
    if (!v21 || v5 != v33)
    {
      OUTLINED_FUNCTION_2_6(v32);
      OUTLINED_FUNCTION_21_2();

      if ((v2 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_23:
  v5 = [v10 code];
  if (v5 == POSIXErrorCode.rawValue.getter() || v5 == POSIXErrorCode.rawValue.getter() || v5 == POSIXErrorCode.rawValue.getter())
  {
    return 1;
  }

LABEL_26:
  v35 = [v10 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_20_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  if (v21 && v5 == v37)
  {

    goto LABEL_33;
  }

  OUTLINED_FUNCTION_2_6(v36);
  OUTLINED_FUNCTION_21_2();

  if (v2)
  {
LABEL_33:
    v39 = [v10 code];
    if (v39 <= 7 && ((1 << v39) & 0x8C) != 0)
    {
      return 1;
    }
  }

  v41 = [v10 userInfo];
  v42 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v43, v44, v42, &v48);

  if (!v49)
  {
    outlined destroy of ConnectionSnapshotReport?(&v48, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  if ((OUTLINED_FUNCTION_7_6(&v47, &v48) & 1) == 0)
  {
    return 0;
  }

  v45 = v47;
  v46 = [v47 sn_isNetworkUnreachableForServerCause];

  return (v46 & 1) != 0;
}

BOOL @objc NSError.sn_isNetworkUnreachableForServerCause()(void *a1)
{
  v1 = a1;
  isNetworkUnreachableForServer = NSError.sn_isNetworkUnreachableForServerCause()();

  return isNetworkUnreachableForServer;
}

Swift::Bool __swiftcall NSError.sn_isNetworkDown()()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  OUTLINED_FUNCTION_11_1(v3);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_1();
  v43[0] = v0;
  type metadata accessor for NSError();
  v10 = v0;
  if (OUTLINED_FUNCTION_12_1(v10, v43))
  {
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v5);
    v14 = *(v7 + 32);
    v15 = OUTLINED_FUNCTION_18_2();
    v14(v15);
    v16 = OUTLINED_FUNCTION_19_1();
    v14(v16);
    v17 = OUTLINED_FUNCTION_5_2();
    if (v18(v17) == *MEMORY[0x277CD8FB0])
    {
      v19 = OUTLINED_FUNCTION_5_2();
      v20(v19);
      return *v2 == 50;
    }

    v40 = OUTLINED_FUNCTION_5_2();
    v41(v40);
    return 0;
  }

  OUTLINED_FUNCTION_8_5();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v5);
  outlined destroy of ConnectionSnapshotReport?(v1, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v25 = OUTLINED_FUNCTION_29_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_20_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  v28 = v28 && v5 == v27;
  if (!v28)
  {
    OUTLINED_FUNCTION_2_6(v26);
    OUTLINED_FUNCTION_21_2();

    if (v2)
    {
      goto LABEL_16;
    }

    v29 = OUTLINED_FUNCTION_29_1();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_20_1();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_4_5();
    if (!v28 || v5 != v31)
    {
      OUTLINED_FUNCTION_2_6(v30);
      OUTLINED_FUNCTION_21_2();

      if ((v2 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

LABEL_16:
  v33 = [v10 code];
  if (v33 == POSIXErrorCode.rawValue.getter())
  {
    return 1;
  }

LABEL_18:
  v34 = [v10 userInfo];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_23_1(v35, v36);

  if (v43[3])
  {
    v37 = OUTLINED_FUNCTION_26_1();
    if ((OUTLINED_FUNCTION_7_6(v37, v38) & 1) == 0)
    {
      return 0;
    }

    v39 = [v42 sn_isNetworkDown];

    return (v39 & 1) != 0;
  }

  outlined destroy of ConnectionSnapshotReport?(v43, &_sypSgMd, &_sypSgMR);
  return 0;
}

BOOL @objc NSError.sn_isNetworkDown()(void *a1)
{
  v1 = a1;
  isNetwork = NSError.sn_isNetworkDown()();

  return isNetwork;
}

BOOL @objc NSError.sn_isNetworkConnectionRetryable()(void *a1)
{
  v1 = a1;
  isNetworkConnection = NSError.sn_isNetworkConnectionRetryable()();

  return isNetworkConnection;
}

Swift::Bool __swiftcall NSError.sn_isNetworkConnectionRetryableNow()()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  OUTLINED_FUNCTION_11_1(v3);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_1();
  *&v43 = v0;
  type metadata accessor for NSError();
  v10 = v0;
  if (OUTLINED_FUNCTION_12_1(v10, &v43))
  {
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v5);
    v14 = *(v7 + 32);
    v15 = OUTLINED_FUNCTION_18_2();
    v14(v15);
    v16 = OUTLINED_FUNCTION_19_1();
    v14(v16);
    v17 = OUTLINED_FUNCTION_5_2();
    if (v18(v17) == *MEMORY[0x277CD8FB0])
    {
      v19 = OUTLINED_FUNCTION_5_2();
      v20(v19);
      if (*v2 == 54)
      {
        return 1;
      }
    }

    else
    {
      v24 = OUTLINED_FUNCTION_5_2();
      v25(v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v5);
    outlined destroy of ConnectionSnapshotReport?(v1, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  }

  v26 = OUTLINED_FUNCTION_29_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_20_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  v29 = v29 && v5 == v28;
  if (!v29)
  {
    OUTLINED_FUNCTION_2_6(v27);
    OUTLINED_FUNCTION_21_2();

    if (v2)
    {
      goto LABEL_19;
    }

    v30 = OUTLINED_FUNCTION_29_1();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_20_1();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_4_5();
    if (!v29 || v5 != v32)
    {
      OUTLINED_FUNCTION_2_6(v31);
      OUTLINED_FUNCTION_21_2();

      if ((v2 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

LABEL_19:
  v34 = [v10 code];
  if (v34 == POSIXErrorCode.rawValue.getter())
  {
    return 1;
  }

LABEL_21:
  v36 = [v10 userInfo];
  v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v38, v39, v37, &v43);

  if (v44)
  {
    if (OUTLINED_FUNCTION_7_6(&v42, &v43))
    {
      v40 = v42;
      v41 = [v42 sn_isNetworkConnectionRetryableNow];

      if (v41)
      {
        return 1;
      }
    }
  }

  else
  {
    outlined destroy of ConnectionSnapshotReport?(&v43, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

BOOL @objc NSError.sn_isNetworkConnectionRetryableNow()(void *a1)
{
  v1 = a1;
  isNetworkConnectionRetryable = NSError.sn_isNetworkConnectionRetryableNow()();

  return isNetworkConnectionRetryable;
}

Swift::Bool __swiftcall NSError.sn_isNetworkConnectionRetryableAfterDelay()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  OUTLINED_FUNCTION_11_1(v1);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_1();
  v9 = v8 - v7;
  if ([isNetworkConnectionRetryableAfter sn_isNetworkConnectionRetryableNow])
  {
    return 1;
  }

  v37[0] = isNetworkConnectionRetryableAfter;
  type metadata accessor for NSError();
  v10 = isNetworkConnectionRetryableAfter;
  if (OUTLINED_FUNCTION_22_1(isNetworkConnectionRetryableAfter, v37))
  {
    v11 = 1;
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v3);
    v15 = OUTLINED_FUNCTION_25_0();
    v16(v15);
    isNetworkConnectionRetryableAfter = NWError.sn_isNetworkConnectionRetryableAfterDelay()();
    (*(v5 + 8))(v9, v3);
    if (isNetworkConnectionRetryableAfter)
    {
      return v11;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v3);
    outlined destroy of ConnectionSnapshotReport?(isNetworkConnectionRetryableAfter, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  }

  v20 = OUTLINED_FUNCTION_14_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_15_3();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  v23 = v23 && isNetworkConnectionRetryableAfter == v22;
  if (v23)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_0_16(v21);
  OUTLINED_FUNCTION_16_4();

  if (v9)
  {
LABEL_18:
    v28 = [v10 code];
    if (v28 == POSIXErrorCode.rawValue.getter() || v28 == POSIXErrorCode.rawValue.getter())
    {
      return 1;
    }

    goto LABEL_22;
  }

  v24 = OUTLINED_FUNCTION_14_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_15_3();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  if (v23 && isNetworkConnectionRetryableAfter == v26)
  {
LABEL_17:

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_0_16(v25);
  OUTLINED_FUNCTION_16_4();

  if (v9)
  {
    goto LABEL_18;
  }

LABEL_22:
  v30 = [v10 userInfo];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_23_1(v31, v32);

  if (!v37[3])
  {
    outlined destroy of ConnectionSnapshotReport?(v37, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v33 = OUTLINED_FUNCTION_26_1();
  if ((OUTLINED_FUNCTION_7_6(v33, v34) & 1) == 0)
  {
    return 0;
  }

  v35 = [v36 sn_isNetworkConnectionRetryableAfterDelay];

  return (v35 & 1) != 0;
}

BOOL @objc NSError.sn_isNetworkConnectionRetryableAfterDelay()(void *a1)
{
  v1 = a1;
  isNetworkConnectionRetryableAfter = NSError.sn_isNetworkConnectionRetryableAfterDelay()();

  return isNetworkConnectionRetryableAfter;
}

Swift::Bool __swiftcall NSError.sn_isNetworkOperationRetryable()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  OUTLINED_FUNCTION_11_1(v1);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_1();
  v9 = v8 - v7;
  v10 = [isNetworkOperation sn_isNetworkConnectionRetryable];
  if (v10)
  {
    *&v37 = isNetworkOperation;
    type metadata accessor for NSError();
    v11 = isNetworkOperation;
    if (OUTLINED_FUNCTION_22_1(isNetworkOperation, &v37))
    {
      OUTLINED_FUNCTION_9_0();
      __swift_storeEnumTagSinglePayload(v12, v13, v14, v3);
      v15 = OUTLINED_FUNCTION_25_0();
      v16(v15);
      isNetworkOperation = NWError.sn_isNetworkOperationRetryable()();
      (*(v5 + 8))(v9, v3);
      if ((isNetworkOperation & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      OUTLINED_FUNCTION_8_5();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v3);
      outlined destroy of ConnectionSnapshotReport?(isNetworkOperation, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
    }

    v20 = OUTLINED_FUNCTION_14_1();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_15_3();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_4_5();
    v23 = v23 && isNetworkOperation == v22;
    if (!v23)
    {
      OUTLINED_FUNCTION_0_16(v21);
      OUTLINED_FUNCTION_16_4();

      if (v9)
      {
        goto LABEL_18;
      }

      v24 = OUTLINED_FUNCTION_14_1();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_15_3();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_4_5();
      if (!v23 || isNetworkOperation != v26)
      {
        OUTLINED_FUNCTION_0_16(v25);
        OUTLINED_FUNCTION_16_4();

        if ((v9 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }
    }

LABEL_18:
    v28 = [v11 code];
    if (v28 == POSIXErrorCode.rawValue.getter())
    {
LABEL_19:
      LOBYTE(v10) = 0;
      return v10;
    }

LABEL_20:
    v29 = [v11 userInfo];
    v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v31, v32, v30, &v37);

    if (v38)
    {
      if (OUTLINED_FUNCTION_7_6(&v36, &v37))
      {
        v33 = v36;
        v34 = [v36 sn_isNetworkOperationRetryable];

        if ((v34 & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      outlined destroy of ConnectionSnapshotReport?(&v37, &_sypSgMd, &_sypSgMR);
    }

    LOBYTE(v10) = 1;
  }

  return v10;
}

BOOL @objc NSError.sn_isNetworkOperationRetryable()(void *a1)
{
  v1 = a1;
  isNetworkOperation = NSError.sn_isNetworkOperationRetryable()();

  return isNetworkOperation;
}

id SNSetRestrictionsThunk.init(thunk:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = thunk for @escaping @callee_guaranteed (@guaranteed AceObject?) -> ();
    v5[3] = &block_descriptor_4;
    v2 = _Block_copy(v5);
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithThunk_];
  _Block_release(v2);
  return v3;
}

void thunk for @escaping @callee_guaranteed (@guaranteed AceObject?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

char *SNSetRestrictionsThunk.init(thunk:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_17(OBJC_IVAR___SNSetRestrictionsThunk_thunk);
  v11.receiver = v2;
  v11.super_class = SNSetRestrictionsThunk;
  v5 = objc_msgSendSuper2(&v11, sel_init);
  v6 = &v5[OBJC_IVAR___SNSetRestrictionsThunk_thunk];
  v7 = *&v5[OBJC_IVAR___SNSetRestrictionsThunk_thunk];
  v8 = *&v5[OBJC_IVAR___SNSetRestrictionsThunk_thunk + 8];
  *v6 = a1;
  *(v6 + 1) = a2;
  v9 = v5;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v7, v8);

  return v9;
}

id SNSetRestrictionsThunk.init(coder:)(void *a1)
{
  OUTLINED_FUNCTION_0_17(OBJC_IVAR___SNSetRestrictionsThunk_thunk);
  v5.receiver = v1;
  v5.super_class = SNSetRestrictionsThunk;
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SNSetRestrictionsThunk.init(dictionary:context:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithDictionary:isa context:a2];

  swift_unknownObjectRelease();
  return v5;
}

void SNSetRestrictionsThunk.init(dictionary:context:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_17(OBJC_IVAR___SNSetRestrictionsThunk_thunk);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v6.receiver = v2;
  v6.super_class = SNSetRestrictionsThunk;
  v5 = objc_msgSendSuper2(&v6, sel_initWithDictionary_context_, isa, a2);

  if (v5)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void __swiftcall SNSetRestrictionsThunk.init(dictionary:)(SNSetRestrictionsThunk *__return_ptr retstr, Swift::OpaquePointer dictionary)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 initWithDictionary_];
}

void SNSetRestrictionsThunk.init(dictionary:)()
{
  OUTLINED_FUNCTION_0_17(OBJC_IVAR___SNSetRestrictionsThunk_thunk);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v3.receiver = v0;
  v3.super_class = SNSetRestrictionsThunk;
  v2 = objc_msgSendSuper2(&v3, sel_initWithDictionary_, isa);

  if (v2)
  {
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SNSetRestrictionsThunk.siriNetwork_invokeThunk()()
{
  v1 = (v0 + OBJC_IVAR___SNSetRestrictionsThunk_thunk);
  v2 = *(v0 + OBJC_IVAR___SNSetRestrictionsThunk_thunk);
  if (v2)
  {
    v3 = v1[1];

    v2();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v2, v3);
    v4 = *v1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v1[1];
  *v1 = 0;
  v1[1] = 0;

  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v4, v5);
}

void __swiftcall SNSetRestrictionsThunk.init()(SNSetRestrictionsThunk *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for SNSetRestrictionsThunk()
{
  result = lazy cache variable for type metadata for SNSetRestrictionsThunk;
  if (!lazy cache variable for type metadata for SNSetRestrictionsThunk)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SNSetRestrictionsThunk);
  }

  return result;
}

void specialized ConnectionProviderProtocol.setupOpenTimeoutTimer()()
{
  OUTLINED_FUNCTION_46();
  v3 = v0;
  type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_35_0();
  v85 = v6;
  OUTLINED_FUNCTION_31();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v83 = v8;
  v84 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_1();
  v82 = v10 - v9;
  OUTLINED_FUNCTION_31();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_31();
  type metadata accessor for OS_dispatch_source.TimerFlags();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_49_1(v14 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  v16 = OUTLINED_FUNCTION_11_1(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_35_0();
  v81 = v21;
  OUTLINED_FUNCTION_31();
  v22 = type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5();
  v86 = v24;
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_100();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_99();
  specialized ConnectionProviderProtocol.openTimeoutTimerInterval.getter(v28);
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.siriNetwork);
  v30 = OUTLINED_FUNCTION_57_2();
  v1(v30);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  v88 = v3;
  if (os_log_type_enabled(v31, v32))
  {
    v79 = v31;
    v80 = v2;
    OUTLINED_FUNCTION_4_3();
    v33 = swift_slowAlloc();
    v89[0] = OUTLINED_FUNCTION_116();
    *v33 = 136315650;
    v34 = _typeName(_:qualified:)();
    v35 = v19;
    v2 = v22;
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v89);

    OUTLINED_FUNCTION_73();
    v38 = OUTLINED_FUNCTION_98();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, v39);

    v41 = OUTLINED_FUNCTION_54_0();
    v1(v41);
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v2);
    outlined init with copy of NetworkConnectionProtocol?(v3, v35, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    OUTLINED_FUNCTION_113(v35);
    if (v45)
    {
      OUTLINED_FUNCTION_97();
    }

    else
    {
      v2 = v80;
      OUTLINED_FUNCTION_45();
      v48();
      v49 = OUTLINED_FUNCTION_50();
      v1(v49);
      String.init<A>(describing:)();
      v50 = OUTLINED_FUNCTION_62();
      v51(v50);
    }

    v3 = v79;
    outlined destroy of NetworkConnectionProtocol?(v81, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    v52 = OUTLINED_FUNCTION_7_7();
    v53(v52);
    v54 = OUTLINED_FUNCTION_98();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v1, v55);
    OUTLINED_FUNCTION_115();
    *(v33 + 24) = v40;
    OUTLINED_FUNCTION_74(&dword_223515000, v56, v57, "Provider - %s [%s]: Open timer scheduled (%s).");
    OUTLINED_FUNCTION_86();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  else
  {

    v46 = OUTLINED_FUNCTION_7_7();
    v47(v46);
  }

  type metadata accessor for OS_dispatch_source();
  v89[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_13_2();
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v58, 255, v59, MEMORY[0x277D85280]);
  v60 = OUTLINED_FUNCTION_79();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(v60, v61);
  OUTLINED_FUNCTION_83();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](v63, v64, v65);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_111();
  v66 = OUTLINED_FUNCTION_81();
  v67(v66);
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_7_1();
  v69 = swift_allocObject();
  OUTLINED_FUNCTION_77(v69);
  swift_weakInit();
  v89[4] = partial apply for specialized closure #1 in ConnectionProviderProtocol.setupOpenTimeoutTimer();
  v89[5] = &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR;
  v89[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_32_1(COERCE_DOUBLE(1107296256));
  v89[2] = v70;
  v89[3] = &block_descriptor_307;
  _Block_copy(v89);
  OUTLINED_FUNCTION_104();

  default argument 0 of OS_dispatch_source.setEventHandler(qos:flags:handler:)(ObjectType);
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  v71 = OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90_0(v71, v72);
  _Block_release(v62);
  (*(v83 + 8))(v82, v84);
  v73 = OUTLINED_FUNCTION_106();
  v74(v73);

  static DispatchTime.now()();
  DispatchTime.advanced(by:)();
  v75 = OUTLINED_FUNCTION_103_0();
  (_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR)(v75);
  OUTLINED_FUNCTION_101();
  default argument 1 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v76);
  OUTLINED_FUNCTION_101();
  default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v77);
  OUTLINED_FUNCTION_88();
  v78 = OUTLINED_FUNCTION_51();
  v86(v78);
  (v86)(v2, v3);
  (_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR)(v85, v62);
  OS_dispatch_source.resume()();
  (v86)(v87, v3);
  *(v88 + 2128) = v79;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_47();
}

void specialized closure #1 in ConnectionProviderProtocol.setupOpenTimeoutTimer()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.siriNetwork);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v22 = v7;
      *v6 = 136315394;
      v8 = _typeName(_:qualified:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v22);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      v11 = v2[2];
      v12 = v2[3];

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

      *(v6 + 14) = v13;
      _os_log_impl(&dword_223515000, v4, v5, "Provider - %s [%s]: Open timer fired.", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v7, -1, -1);
      MEMORY[0x223DE38F0](v6, -1, -1);
    }

    specialized ConnectionProviderProtocol.cancelOpenTimer()();
    v14 = v2[265];
    v15 = v14;
    if (AFDeviceSupportsSiriUOD() && swift_unknownObjectWeakLoadStrong())
    {
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v16 = swift_allocError();
      *(v17 + 8) = 0;
      *(v17 + 16) = 0;
      *v17 = v14;
      *(v17 + 24) = xmmword_2235F0A60;

      v18 = v14;
      specialized BackgroundConnection.connectionProvider(_:received:)();

      swift_unknownObjectRelease();
    }

    else
    {
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v19 = swift_allocError();
      *(v20 + 8) = 0;
      *(v20 + 16) = 0;
      *v20 = v14;
      *(v20 + 24) = xmmword_2235F0A60;
      v21 = v14;
      RPCOspreyConnectionProvider.closeWithError(_:)(v19);
    }
  }
}

{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.siriNetwork);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v22 = v7;
      *v6 = 136315394;
      v8 = _typeName(_:qualified:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v22);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      v11 = NetworkConnectionProvider.connectionIdentifier.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

      *(v6 + 14) = v13;
      _os_log_impl(&dword_223515000, v4, v5, "Provider - %s [%s]: Open timer fired.", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v7, -1, -1);
      MEMORY[0x223DE38F0](v6, -1, -1);
    }

    specialized ConnectionProviderProtocol.cancelOpenTimer()();
    v14 = *(v2 + 2104);
    v15 = v14;
    if (AFDeviceSupportsSiriUOD() && swift_unknownObjectWeakLoadStrong())
    {
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v16 = swift_allocError();
      *(v17 + 8) = 0;
      *(v17 + 16) = 0;
      *v17 = v14;
      *(v17 + 24) = xmmword_2235F0A60;

      v18 = v14;
      specialized BackgroundConnection.connectionProvider(_:received:)();

      swift_unknownObjectRelease();
    }

    else
    {
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v19 = swift_allocError();
      *(v20 + 8) = 0;
      *(v20 + 16) = 0;
      *v20 = v14;
      *(v20 + 24) = xmmword_2235F0A60;
      v21 = v14;
      NetworkConnectionProvider.closeWithError(_:)();
    }
  }
}

void specialized ConnectionProviderProtocol.setupOpenSlowTimer()()
{
  OUTLINED_FUNCTION_46();
  v3 = v0;
  type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_35_0();
  v85 = v6;
  OUTLINED_FUNCTION_31();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v83 = v8;
  v84 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_1();
  v82 = v10 - v9;
  OUTLINED_FUNCTION_31();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_31();
  type metadata accessor for OS_dispatch_source.TimerFlags();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_49_1(v14 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  v16 = OUTLINED_FUNCTION_11_1(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_35_0();
  v81 = v21;
  OUTLINED_FUNCTION_31();
  v22 = type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5();
  v86 = v24;
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_100();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_99();
  specialized ConnectionProviderProtocol.openSlowTimerInterval.getter(v28);
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.siriNetwork);
  v30 = OUTLINED_FUNCTION_57_2();
  v1(v30);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  v88 = v3;
  if (os_log_type_enabled(v31, v32))
  {
    v79 = v31;
    v80 = v2;
    OUTLINED_FUNCTION_4_3();
    v33 = swift_slowAlloc();
    v89[0] = OUTLINED_FUNCTION_116();
    *v33 = 136315650;
    v34 = _typeName(_:qualified:)();
    v35 = v19;
    v2 = v22;
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v89);

    OUTLINED_FUNCTION_73();
    v38 = OUTLINED_FUNCTION_98();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, v39);

    v41 = OUTLINED_FUNCTION_54_0();
    v1(v41);
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v2);
    outlined init with copy of NetworkConnectionProtocol?(v3, v35, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    OUTLINED_FUNCTION_113(v35);
    if (v45)
    {
      OUTLINED_FUNCTION_97();
    }

    else
    {
      v2 = v80;
      OUTLINED_FUNCTION_45();
      v48();
      v49 = OUTLINED_FUNCTION_50();
      v1(v49);
      String.init<A>(describing:)();
      v50 = OUTLINED_FUNCTION_62();
      v51(v50);
    }

    v3 = v79;
    outlined destroy of NetworkConnectionProtocol?(v81, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    v52 = OUTLINED_FUNCTION_7_7();
    v53(v52);
    v54 = OUTLINED_FUNCTION_98();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v1, v55);
    OUTLINED_FUNCTION_115();
    *(v33 + 24) = v40;
    OUTLINED_FUNCTION_74(&dword_223515000, v56, v57, "Provider - %s [%s]: Open slow timer scheduled (%s).");
    OUTLINED_FUNCTION_86();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  else
  {

    v46 = OUTLINED_FUNCTION_7_7();
    v47(v46);
  }

  type metadata accessor for OS_dispatch_source();
  v89[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_13_2();
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v58, 255, v59, MEMORY[0x277D85280]);
  v60 = OUTLINED_FUNCTION_79();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(v60, v61);
  OUTLINED_FUNCTION_83();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](v63, v64, v65);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_111();
  v66 = OUTLINED_FUNCTION_81();
  v67(v66);
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_7_1();
  v69 = swift_allocObject();
  OUTLINED_FUNCTION_77(v69);
  swift_weakInit();
  v89[4] = partial apply for specialized closure #1 in ConnectionProviderProtocol.setupOpenSlowTimer();
  v89[5] = &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR;
  v89[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_32_1(COERCE_DOUBLE(1107296256));
  v89[2] = v70;
  v89[3] = &block_descriptor_295;
  _Block_copy(v89);
  OUTLINED_FUNCTION_104();

  default argument 0 of OS_dispatch_source.setEventHandler(qos:flags:handler:)(ObjectType);
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  v71 = OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90_0(v71, v72);
  _Block_release(v62);
  (*(v83 + 8))(v82, v84);
  v73 = OUTLINED_FUNCTION_106();
  v74(v73);

  static DispatchTime.now()();
  DispatchTime.advanced(by:)();
  v75 = OUTLINED_FUNCTION_103_0();
  (_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR)(v75);
  OUTLINED_FUNCTION_101();
  default argument 1 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v76);
  OUTLINED_FUNCTION_101();
  default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v77);
  OUTLINED_FUNCTION_88();
  v78 = OUTLINED_FUNCTION_51();
  v86(v78);
  (v86)(v2, v3);
  (_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR)(v85, v62);
  OS_dispatch_source.resume()();
  (v86)(v87, v3);
  *(v88 + 2136) = v79;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_47();
}

void *specialized closure #1 in ConnectionProviderProtocol.setupOpenSlowTimer()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.siriNetwork);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136315394;
      v8 = _typeName(_:qualified:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v19);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      v11 = v2[2];
      v12 = v2[3];

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v19);

      *(v6 + 14) = v13;
      _os_log_impl(&dword_223515000, v4, v5, "Provider - %s [%s]: Open slow timer fired.", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v7, -1, -1);
      MEMORY[0x223DE38F0](v6, -1, -1);
    }

    specialized ConnectionProviderProtocol.cancelOpenSlowTimer()();
    v14 = v2[265];
    if (swift_unknownObjectWeakLoadStrong())
    {
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v15 = swift_allocError();
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *v16 = v14;
      *(v16 + 24) = xmmword_2235F0A70;
      v17 = v14;

      v18 = v14;
      specialized BackgroundConnection.connectionProvider(_:received:)();

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t specialized closure #1 in ConnectionProviderProtocol.setupOpenSlowTimer()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.siriNetwork);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136315394;
      v8 = _typeName(_:qualified:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v19);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      v11 = NetworkConnectionProvider.connectionIdentifier.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v19);

      *(v6 + 14) = v13;
      _os_log_impl(&dword_223515000, v4, v5, "Provider - %s [%s]: Open slow timer fired.", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v7, -1, -1);
      MEMORY[0x223DE38F0](v6, -1, -1);
    }

    specialized ConnectionProviderProtocol.cancelOpenSlowTimer()();
    v14 = *(v2 + 2104);
    if (swift_unknownObjectWeakLoadStrong())
    {
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v15 = swift_allocError();
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *v16 = v14;
      *(v16 + 24) = xmmword_2235F0A70;
      v17 = v14;

      v18 = v14;
      specialized BackgroundConnection.connectionProvider(_:received:)();

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t specialized ConnectionProviderProtocol.setupConnectionUnviableTimer()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v94 = *(v2 - 8);
  v95 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v92 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v93 = &v74 - v5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v90 = *(v6 - 8);
  v91 = v6;
  MEMORY[0x28223BE20](v6);
  v88 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for DispatchQoS();
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v86 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v84 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v83 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v81 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v82 = &v74 - v14;
  v15 = type metadata accessor for DispatchTimeInterval();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v96 = &v74 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v74 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v74 - v25;
  Double.dispatchTimeInterval.getter((&v74 - v25), 2.0);
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.siriNetwork);
  v28 = *(v16 + 16);
  v85 = v26;
  v28(v24, v26, v15);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v77 = v30;
    v75 = v19;
    v78 = v29;
    v79 = v9;
    v31 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    aBlock[0] = v76;
    *v31 = 136315650;
    v32 = _typeName(_:qualified:)();
    v34 = v15;
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, aBlock);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    v36 = v1;
    v37 = NetworkConnectionProvider.connectionIdentifier.getter();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, aBlock);

    *(v31 + 14) = v39;
    v40 = v34;
    *(v31 + 22) = 2080;
    v41 = v82;
    v28(v82, v24, v34);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v34);
    v42 = v81;
    outlined init with copy of NetworkConnectionProtocol?(v41, v81, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    if (__swift_getEnumTagSinglePayload(v42, 1, v34) == 1)
    {
      v43 = 0xE100000000000000;
      v44 = 45;
    }

    else
    {
      v47 = v96;
      (*(v16 + 32))(v96, v42, v40);
      v28(v75, v47, v40);
      v44 = String.init<A>(describing:)();
      v43 = v48;
      (*(v16 + 8))(v47, v40);
    }

    outlined destroy of NetworkConnectionProtocol?(v41, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    v49 = *(v16 + 8);
    v81 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v82 = v49;
    (v49)(v24, v40);
    v46 = v40;
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v43, aBlock);

    *(v31 + 24) = v50;
    v51 = v78;
    _os_log_impl(&dword_223515000, v78, v77, "Provider - %s [%s]: Unviable timer scheduled (%s).", v31, 0x20u);
    v52 = v76;
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v52, -1, -1);
    MEMORY[0x223DE38F0](v31, -1, -1);

    v1 = v36;
    v9 = v79;
  }

  else
  {

    v45 = *(v16 + 8);
    v81 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v82 = v45;
    (v45)(v24, v15);
    v46 = v15;
  }

  specialized ConnectionProviderProtocol.cancelConnectionUnviableTimer()();
  type metadata accessor for OS_dispatch_source();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, 255, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  v53 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  v54 = v83;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v55 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v84 + 8))(v54, v9);
  v80 = v53;
  v56 = NetworkConnectionProvider.connectionIdentifier.getter();
  v58 = v57;
  ObjectType = swift_getObjectType();
  v60 = swift_allocObject();
  swift_weakInit();
  v61 = swift_allocObject();
  v61[2] = v60;
  v61[3] = v56;
  v61[4] = v58;
  aBlock[4] = partial apply for specialized closure #1 in ConnectionProviderProtocol.setupConnectionUnviableTimer();
  aBlock[5] = v61;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_199;
  v62 = _Block_copy(aBlock);

  v63 = v86;
  default argument 0 of OS_dispatch_source.setEventHandler(qos:flags:handler:)(ObjectType);
  v64 = v88;
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v62);
  (*(v90 + 8))(v64, v91);
  (*(v87 + 8))(v63, v89);

  v65 = v92;
  static DispatchTime.now()();
  v66 = v93;
  v67 = v85;
  DispatchTime.advanced(by:)();
  v68 = v95;
  v69 = *(v94 + 8);
  v69(v65, v95);
  v70 = v96;
  default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v96);
  MEMORY[0x223DE2510](v66, v67, v70, ObjectType);
  v71 = v70;
  v72 = v82;
  (v82)(v71, v46);
  v69(v66, v68);
  OS_dispatch_source.resume()();
  v72(v67, v46);
  *(v80 + 2136) = v55;
  return swift_unknownObjectRelease();
}

uint64_t specialized closure #1 in ConnectionProviderProtocol.setupConnectionUnviableTimer()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    specialized ConnectionProviderProtocol.cancelConnectionUnviableTimer()();
    swift_beginAccess();
    outlined init with copy of NetworkConnectionProtocol?(v6 + 16, v13, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    v7 = v14;
    outlined destroy of NetworkConnectionProtocol?(v13, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    if (v7)
    {
      if (NetworkConnectionProvider.connectionIdentifier.getter() == a2 && v8 == a3)
      {
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v10 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v11 = swift_allocError();
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      *v12 = 0;
      *(v12 + 24) = xmmword_2235F0A80;
      NetworkConnectionProvider.closeWithError(_:)();
    }

LABEL_11:
    *(v6 + 2088) = 0;
  }

  return result;
}

void specialized ConnectionProviderProtocol.setupStaleConnectionTimer()()
{
  OUTLINED_FUNCTION_46();
  v4 = v0;
  type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_0_0();
  v111 = v6;
  v112 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v110 = v7;
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_35_0();
  v109 = v9;
  OUTLINED_FUNCTION_31();
  v108 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v106 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_1();
  v104 = v13 - v12;
  OUTLINED_FUNCTION_31();
  v107 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0_0();
  v105 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_56();
  type metadata accessor for OS_dispatch_source.TimerFlags();
  OUTLINED_FUNCTION_0_0();
  v102 = v17;
  v103 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_1();
  v101 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  v21 = OUTLINED_FUNCTION_11_1(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_35_0();
  v97 = v23;
  OUTLINED_FUNCTION_31();
  v24 = type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_0_0();
  v115 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v27);
  v113 = (v92 - v28);
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v30);
  v32 = v92 - v31;
  Double.dispatchTimeInterval.getter((v92 - v31), *(v0 + 1696));
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v33, static Logger.siriNetwork);
  v34 = *(v115 + 16);
  (v34)(v2, v32, v24);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  LODWORD(v98) = v36;
  v37 = os_log_type_enabled(v35, v36);
  v114 = v24;
  if (v37)
  {
    v92[1] = v3;
    v94 = v35;
    v95 = v32;
    v96 = v1;
    OUTLINED_FUNCTION_4_3();
    v38 = swift_slowAlloc();
    v93 = OUTLINED_FUNCTION_116();
    v116[0] = v93;
    *v38 = 136315650;
    v39 = _typeName(_:qualified:)();
    v40 = v4;
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v116);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    v43 = *(v4 + 16);
    v44 = *(v40 + 24);

    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v116);
    v46 = v114;

    *(v38 + 14) = v45;
    *(v38 + 22) = 2080;
    v47 = v97;
    (v34)(v97, v2, v46);
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v46);
    v51 = v100;
    outlined init with copy of NetworkConnectionProtocol?(v47, v100, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    if (__swift_getEnumTagSinglePayload(v51, 1, v46) == 1)
    {
      v52 = 0xE100000000000000;
      v53 = 45;
    }

    else
    {
      OUTLINED_FUNCTION_30_1();
      v55();
      OUTLINED_FUNCTION_83();
      v34();
      v53 = String.init<A>(describing:)();
      v52 = v56;
      v57 = OUTLINED_FUNCTION_79();
      v58(v57);
    }

    outlined destroy of NetworkConnectionProtocol?(v47, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    v54 = *(v115 + 8);
    v54(v2, v46);
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v52, v116);

    *(v38 + 24) = v59;
    v60 = v94;
    _os_log_impl(&dword_223515000, v94, v98, "Provider - %s [%s]: Stale connection timer scheduled (%s).", v38, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();

    v4 = v40;
    v1 = v96;
    v32 = v95;
  }

  else
  {

    v54 = *(v115 + 8);
    v54(v2, v24);
  }

  OUTLINED_FUNCTION_7_1();
  v61 = swift_allocObject();
  v62 = *(v4 + 2096);
  v63 = __CFADD__(v62, 1);
  v64 = v62 + 1;
  if (v63)
  {
    __break(1u);
  }

  else
  {
    *(v61 + 16) = v64;
    v100 = v54;
    v65 = v61;
    specialized ConnectionProviderProtocol.cancelStaleConnectionTimer()();
    type metadata accessor for OS_dispatch_source();
    v116[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_13_2();
    lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v66, 255, v67, MEMORY[0x277D85280]);
    v68 = v1;
    v69 = OUTLINED_FUNCTION_79();
    __swift_instantiateConcreteTypeFromMangledNameV2(v69, v70);
    OUTLINED_FUNCTION_83();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](v71, v72, v73);
    v74 = v101;
    v75 = v103;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v99 = v4;
    v76 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
    (*(v102 + 8))(v74, v75);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_7_1();
    v78 = swift_allocObject();
    OUTLINED_FUNCTION_77(v78);
    swift_weakInit();
    v79 = swift_allocObject();
    *(v79 + 16) = v75;
    *(v79 + 24) = v65;
    v98 = v65;
    v116[4] = partial apply for specialized closure #1 in ConnectionProviderProtocol.setupStaleConnectionTimer();
    v116[5] = v79;
    v116[0] = MEMORY[0x277D85DD0];
    v116[1] = 1107296256;
    v116[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v116[3] = &block_descriptor_283;
    v80 = _Block_copy(v116);

    default argument 0 of OS_dispatch_source.setEventHandler(qos:flags:handler:)(ObjectType);
    v81 = v104;
    default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v80);
    v82 = v32;
    (*(v106 + 8))(v81, v108);
    (*(v105 + 8))(v68, v107);

    v83 = v110;
    static DispatchTime.now()();
    v84 = v109;
    DispatchTime.advanced(by:)();
    v85 = v112;
    v86 = *(v111 + 8);
    v86(v83, v112);
    v87 = v113;
    default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v113);
    v88 = v76;
    MEMORY[0x223DE2510](v84, v82, v87, ObjectType);
    v89 = v87;
    v90 = v114;
    v91 = v100;
    v100(v89, v114);
    v86(v84, v85);
    OS_dispatch_source.resume()();
    v91(v82, v90);
    *(v99 + 2144) = v88;

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47();
  }
}

void *specialized closure #1 in ConnectionProviderProtocol.setupStaleConnectionTimer()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(a2 + 16);
    v6 = v4[262];
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriNetwork);
    swift_retain_n();
    swift_retain_n();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = v5 == v6;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24[0] = v12;
      *v11 = 136316162;
      v13 = _typeName(_:qualified:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v24);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = v4[2];
      v17 = v4[3];

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v24);

      *(v11 + 14) = v18;
      *(v11 + 22) = 1024;
      *(v11 + 24) = v10;
      *(v11 + 28) = 2048;
      swift_beginAccess();
      v19 = *(a2 + 16);

      *(v11 + 30) = v19;

      *(v11 + 38) = 2048;
      v20 = v4[262];

      *(v11 + 40) = v20;

      _os_log_impl(&dword_223515000, v8, v9, "Provider - %s [%s]: Stale connection timer check. Connection in stale %{BOOL}d. Last read/write counter value %lu, current %lu", v11, 0x30u);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v12, -1, -1);
      MEMORY[0x223DE38F0](v11, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v21 = v4[262];
    if (*(a2 + 16) == v21)
    {
      specialized ConnectionProviderProtocol.cancelStaleConnectionTimer()();
      if (swift_unknownObjectWeakLoadStrong())
      {
        lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        v22 = swift_allocError();
        *(v23 + 8) = 0;
        *(v23 + 16) = 0;
        *v23 = 7;
        *(v23 + 24) = xmmword_2235F01E0;

        specialized BackgroundConnection.connectionProvider(_:received:)();

        swift_unknownObjectRelease();
      }
    }

    else
    {

      result = swift_beginAccess();
      *(a2 + 16) = v21;
    }
  }

  return result;
}

uint64_t specialized closure #1 in ConnectionProviderProtocol.setupStaleConnectionTimer()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(a2 + 16);
    v6 = *(v4 + 2080);
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriNetwork);
    swift_retain_n();
    swift_retain_n();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = v5 == v6;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24[0] = v12;
      *v11 = 136316162;
      v13 = _typeName(_:qualified:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v24);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = NetworkConnectionProvider.connectionIdentifier.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v24);

      *(v11 + 14) = v18;
      *(v11 + 22) = 1024;
      *(v11 + 24) = v10;
      *(v11 + 28) = 2048;
      swift_beginAccess();
      v19 = *(a2 + 16);

      *(v11 + 30) = v19;

      *(v11 + 38) = 2048;
      v20 = *(v4 + 2080);

      *(v11 + 40) = v20;

      _os_log_impl(&dword_223515000, v8, v9, "Provider - %s [%s]: Stale connection timer check. Connection in stale %{BOOL}d. Last read/write counter value %lu, current %lu", v11, 0x30u);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v12, -1, -1);
      MEMORY[0x223DE38F0](v11, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v21 = *(v4 + 2080);
    if (*(a2 + 16) == v21)
    {
      specialized ConnectionProviderProtocol.cancelStaleConnectionTimer()();
      if (swift_unknownObjectWeakLoadStrong())
      {
        lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        v22 = swift_allocError();
        *(v23 + 8) = 0;
        *(v23 + 16) = 0;
        *v23 = 7;
        *(v23 + 24) = xmmword_2235F01E0;

        specialized BackgroundConnection.connectionProvider(_:received:)();

        swift_unknownObjectRelease();
      }
    }

    else
    {

      result = swift_beginAccess();
      *(a2 + 16) = v21;
    }
  }

  return result;
}

void specialized ConnectionProviderProtocol.hash(into:)(void *a1)
{
  memcpy(__dst, (v1 + 1552), sizeof(__dst));
  ConnectionConfiguration.hash(into:)(a1);
}

{
  memcpy(__dst, (v1 + 1536), sizeof(__dst));
  ConnectionConfiguration.hash(into:)(a1);
}

uint64_t specialized NetworkConnectionProtocol.tcpInfoMetrics(wasConnected:queue:deadline:_:)(char a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v30 = a3;
  v11 = *v6;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v15);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[3] = v11;
  v38[4] = &protocol witness table for NWConnection;
  v38[0] = v6;
  if ((a1 & 1) == 0)
  {

    goto LABEL_6;
  }

  v28 = v16;
  outlined init with copy of NetworkConnectionProtocol?(v38, &aBlock, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (!v34)
  {

    outlined destroy of NetworkConnectionProtocol?(&aBlock, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    if (!a4)
    {
      return outlined destroy of NetworkConnectionProtocol?(v38, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    }

    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    if (!a4)
    {
      return outlined destroy of NetworkConnectionProtocol?(v38, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    }

LABEL_7:
    a4(MEMORY[0x277D84F90]);
    return outlined destroy of NetworkConnectionProtocol?(v38, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  }

  v19 = v37;
  v20 = swift_allocObject();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = 1;
  *(v21 + 32) = a4;
  *(v21 + 40) = a5;
  *(v20 + 16) = partial apply for closure #1 in static ConnectionTCPInfoMetrics.connectionTCPInfoMetrics(from:wasConnected:queue:deadline:_:);
  *(v20 + 24) = v21;
  v27[1] = v19;

  v22 = outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a4, a5);
  MEMORY[0x223DE1A50](v22);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = v20;
  v35 = partial apply for closure #2 in static ConnectionTCPInfoMetrics.connectionTCPInfoMetrics(from:wasConnected:queue:deadline:_:);
  v36 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object?) -> ();
  v34 = &block_descriptor_5;
  v24 = _Block_copy(&aBlock);
  v27[0] = a2;

  nw_connection_copy_tcp_info_async();
  _Block_release(v24);
  swift_unknownObjectRelease();
  v35 = partial apply for closure #3 in static ConnectionTCPInfoMetrics.connectionTCPInfoMetrics(from:wasConnected:queue:deadline:_:);
  v36 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v34 = &block_descriptor_161;
  v25 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v37 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2440](v30, v18, v14, v25);
  _Block_release(v25);

  (*(v29 + 8))(v14, v12);
  (*(v28 + 8))(v18, v15);

  return outlined destroy of NetworkConnectionProtocol?(v38, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
}

void closure #1 in NetworkConnectionProvider.configureConnectionHandler(_:)()
{
  OUTLINED_FUNCTION_46();
  v29 = v2;
  v30 = v3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v32 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_56();
  v7 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0_0();
  v31 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_0_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_35_0();
  v19 = v18;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = *(Strong + 2056);

    static DispatchTime.now()();
    v26 = v19;
    + infix(_:_:)();
    v28 = *(v15 + 8);
    v28(v1, v13);
    OUTLINED_FUNCTION_7_1();
    v21 = swift_allocObject();
    OUTLINED_FUNCTION_8();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v33[4] = v29;
    v33[5] = v21;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 1107296256;
    OUTLINED_FUNCTION_3_5();
    v33[2] = v22;
    v33[3] = v30;
    v23 = _Block_copy(v33);

    static DispatchQoS.unspecified.getter();
    OUTLINED_FUNCTION_1_8();
    lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v24, 255, v25, MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2440](v26, v12, v0, v23);
    _Block_release(v23);

    (*(v32 + 8))(v0, v4);
    (*(v31 + 8))(v12, v7);
    v28(v26, v13);
  }

  OUTLINED_FUNCTION_47();
}

uint64_t closure #1 in closure #1 in NetworkConnectionProvider.configureConnectionHandler(_:)(uint64_t a1, const char *a2)
{
  OUTLINED_FUNCTION_77(a1);
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v4, static Logger.siriNetwork);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      OUTLINED_FUNCTION_6_5();
      v7 = swift_slowAlloc();
      OUTLINED_FUNCTION_4_3();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      OUTLINED_FUNCTION_8();
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        NetworkConnectionProvider.connectionIdentifier.getter();

        Strong = String.init<A>(describing:)();
        v11 = v10;
      }

      else
      {
        v11 = 0xE000000000000000;
      }

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(Strong, v11, &v13);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_223515000, v5, v6, a2, v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    NetworkConnectionProvider.closeWithError(_:)();
  }

  return result;
}

void closure #2 in NetworkConnectionProvider.closeWithError(_:)(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    memcpy(__dst, (v3 + 624), sizeof(__dst));
    memmove(v19, (v3 + 624), 0x2C8uLL);
    if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v19) == 1)
    {
    }

    else
    {
      memcpy(v16, __dst, sizeof(v16));
      outlined init with copy of ConnectionSnapshotReport(v16, v15);
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.siriNetwork);
      memcpy(v17, __dst, sizeof(v17));
      outlined init with copy of ConnectionSnapshotReport(v17, v15);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v14 = v8;
        *v7 = 136315138;
        memcpy(v13, v19, sizeof(v13));
        memcpy(v15, __dst, sizeof(v15));
        outlined init with copy of ConnectionSnapshotReport(v15, &v12);
        v9 = String.init<A>(describing:)();
        v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_223515000, v5, v6, "%s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x223DE38F0](v8, -1, -1);
        MEMORY[0x223DE38F0](v7, -1, -1);
        outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
      }

      else
      {

        outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
      }
    }
  }

  dispatch_group_leave(v1);
}

uint64_t closure #4 in NetworkConnectionProvider.closeWithError(_:)(uint64_t a1, void *a2, void (*a3)(void))
{
  v6 = type metadata accessor for NWConnection.SendCompletion();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *v9 = partial apply for closure #1 in closure #4 in NetworkConnectionProvider.closeWithError(_:);
  v9[1] = v10;
  (*(v7 + 104))(v9, *MEMORY[0x277CD8DB0], v6);
  outlined init with copy of RPCOspreyConnectionProtocol(a2, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
  type metadata accessor for NWConnection();
  if (swift_dynamicCast())
  {
    MEMORY[0x223DE1A50]();
    nw_connection_set_read_close_handler();
    v11 = swift_unknownObjectRelease();
    MEMORY[0x223DE1A50](v11);
    nw_connection_set_write_close_handler();

    swift_unknownObjectRelease();
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for NWConnection.ContentContext();
  static NWConnection.ContentContext.defaultMessage.getter();
  NWConnection.send(content:contentContext:isComplete:completion:)();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  NWConnection.cancel()();
  a3();
  return (*(v7 + 8))(v9, v6);
}

void closure #1 in closure #4 in NetworkConnectionProvider.closeWithError(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriNetwork);
  outlined init with copy of NetworkConnectionProtocol?(a1, v9, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 134218242;
    *(v13 + 4) = a2;
    *(v13 + 12) = 2112;
    outlined init with copy of NetworkConnectionProtocol?(v9, v7, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
    v15 = type metadata accessor for NWError();
    if (__swift_getEnumTagSinglePayload(v7, 1, v15) == 1)
    {
      outlined destroy of NetworkConnectionProtocol?(v7, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
      outlined destroy of NetworkConnectionProtocol?(v9, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
      v16 = 0;
    }

    else
    {
      lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type NWError and conformance NWError, 255, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      swift_allocError();
      (*(*(v15 - 8) + 32))(v17, v7, v15);
      v16 = _swift_stdlib_bridgeErrorToNSError();
      outlined destroy of NetworkConnectionProtocol?(v9, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
    }

    *(v13 + 14) = v16;
    *v14 = v16;
    _os_log_impl(&dword_223515000, v11, v12, "Provider - NetworkConnectionProvider [%llu]: Close. Nil content sent to close connection. Start cancelling connection. Close error %@", v13, 0x16u);
    outlined destroy of NetworkConnectionProtocol?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE38F0](v14, -1, -1);
    MEMORY[0x223DE38F0](v13, -1, -1);
  }

  else
  {

    outlined destroy of NetworkConnectionProtocol?(v9, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  }
}

void NetworkConnectionProvider.handleBetterPathUpdate(_:)()
{
  OUTLINED_FUNCTION_46();
  v2 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0_0();
  v29 = v5;
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_56();
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v6, static Logger.siriNetwork);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_6_5();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v28 = swift_slowAlloc();
    v31[0] = v28;
    *v9 = 136315138;
    v10 = NetworkConnectionProvider.connectionIdentifier.getter();
    v12 = v2;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v31);

    *(v9 + 4) = v13;
    v2 = v12;
    _os_log_impl(&dword_223515000, v7, v8, "Provider - NetworkConnectionProvider [%s]: handle better path update", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  OUTLINED_FUNCTION_7_1();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v2 & 1;
  v31[4] = partial apply for closure #1 in NetworkConnectionProvider.handleBetterPathUpdate(_:);
  v31[5] = v15;
  OUTLINED_FUNCTION_1_1();
  v31[1] = 1107296256;
  OUTLINED_FUNCTION_3_5();
  v31[2] = v16;
  v31[3] = &block_descriptor_183;
  v17 = _Block_copy(v31);

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_1_8();
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v18, 255, v19, MEMORY[0x277D851A0]);
  v20 = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  OUTLINED_FUNCTION_45();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](v22, v23, v24);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_64();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v25);
  _Block_release(v17);
  v26 = OUTLINED_FUNCTION_16_1();
  v27(v26);
  (*(v29 + 8))(v0, v30);

  OUTLINED_FUNCTION_47();
}

void closure #1 in NetworkConnectionProvider.handleBetterPathUpdate(_:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriNetwork);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v38[0] = v9;
    *v8 = 136315394;
    v10 = NetworkConnectionProvider.connectionIdentifier.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v38);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    if (a2)
    {
      v13 = 5457241;
    }

    else
    {
      v13 = 20302;
    }

    if (a2)
    {
      v14 = 0xE300000000000000;
    }

    else
    {
      v14 = 0xE200000000000000;
    }

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v38);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_223515000, v6, v7, "Provider - NetworkConnectionProvider [%s]: Better path available updated to: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v9, -1, -1);
    MEMORY[0x223DE38F0](v8, -1, -1);
  }

  swift_beginAccess();
  outlined init with copy of NetworkConnectionProtocol?(v4 + 16, v38, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  v16 = v38[3];
  outlined destroy of NetworkConnectionProtocol?(v38, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (!v16 || (*(v4 + 2099) & 1) != 0)
  {

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38[0] = v20;
      *v19 = 136315138;
      v21 = NetworkConnectionProvider.connectionIdentifier.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v38);

      *(v19 + 4) = v23;
      v24 = "Provider - NetworkConnectionProvider [%s]: Better path available updated, but connection does not exist or cancelled";
LABEL_24:
      _os_log_impl(&dword_223515000, v17, v18, v24, v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x223DE38F0](v20, -1, -1);
      MEMORY[0x223DE38F0](v19, -1, -1);
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
LABEL_22:

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38[0] = v20;
      *v19 = 136315138;
      v35 = NetworkConnectionProvider.connectionIdentifier.getter();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v38);

      *(v19 + 4) = v37;
      v24 = "Provider - NetworkConnectionProvider [%s]: Better path available updated to NO";
      goto LABEL_24;
    }

LABEL_25:

    return;
  }

  v26 = v25;
  if ((a2 & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38[0] = v30;
    *v29 = 136315138;
    v31 = NetworkConnectionProvider.connectionIdentifier.getter();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v38);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_223515000, v27, v28, "Provider - NetworkConnectionProvider [%s]: Better path available updated to YES", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x223DE38F0](v30, -1, -1);
    MEMORY[0x223DE38F0](v29, -1, -1);
  }

  specialized BackgroundConnection.connectionProviderReceivedBetterRouteNotification(_:)(v34, v26);
  swift_unknownObjectRelease();
}

void NetworkConnectionProvider.updateConnectionMetricsSnapthotReport(_:)()
{
  OUTLINED_FUNCTION_46();
  v3 = MEMORY[0x28223BE20](v2);
  v4 = v0;
  v6 = v5;
  v7 = v3;
  v8 = type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of NetworkConnectionProtocol?(v0 + 16, v41, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (*(&v41[1] + 1))
  {
    outlined init with take of RPCOspreyConnectionProtocol(v41, v39);
    OUTLINED_FUNCTION_95(v0 + 56, &v38);
    memcpy(v41, (v0 + 56), 0x599uLL);
    v15 = *(*&v41[80] + 16);
    v33 = v6;
    if (v15)
    {
      outlined init with copy of ConnectionMetrics(v41, v37);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v39, v40);
      outlined init with copy of ConnectionMetrics(v41, v37);
      *(v0 + 1336) = NWConnection.getAttemptedEndpoints()();
    }

    __swift_project_boxed_opaque_existential_1(v39, v40);
    v17 = *(v0 + 2101);
    v18._rawValue = *(v0 + 1336);

    v19 = NWConnection.getConnectionEdgeID(wasConnected:attemptedEndpoints:)(v17, v18);

    *(v0 + 1344) = v19;

    memcpy(v35, (v0 + 1536), 0x204uLL);
    memcpy(v37, (v0 + 1536), 0x204uLL);
    v20 = *(v0 + 2100);
    outlined init with copy of ConnectionConfiguration(v35, v36);
    v21 = ConnectionMethod.connectionMethodDescription(connectionConfiguration:isMPTCP:)(v37, v20, 1);
    v29 = v22;
    v30 = v21;
    memcpy(v36, v37, 0x204uLL);
    outlined destroy of ConnectionConfiguration(v36);
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v32 = *(v4 + 2101);
    v31 = *(v4 + 2056);
    static DispatchTime.now()();
    v23 = v14;
    + infix(_:_:)();
    v24 = *(v10 + 8);
    v24(v1, v8);
    OUTLINED_FUNCTION_7_1();
    v25 = swift_allocObject();
    swift_weakInit();
    outlined init with copy of RPCOspreyConnectionProtocol(v39, v34);
    v26 = swift_allocObject();
    v27 = v33;
    v26[2] = v7;
    v26[3] = v27;
    v26[4] = v25;
    outlined init with take of RPCOspreyConnectionProtocol(v34, (v26 + 5));
    v28 = v29;
    v26[10] = v30;
    v26[11] = v28;
    memcpy(v26 + 12, v41, 0x599uLL);
    outlined init with copy of ConnectionMetrics(v41, v37);
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v7, v27);

    specialized NetworkConnectionProtocol.tcpInfoMetrics(wasConnected:queue:deadline:_:)(v32, v31, v23, partial apply for closure #1 in NetworkConnectionProvider.updateConnectionMetricsSnapthotReport(_:), v26);

    outlined destroy of ConnectionMetrics(v41);
    v24(v23, v8);

    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    v16 = outlined destroy of NetworkConnectionProtocol?(v41, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    if (v7)
    {
      v7(v16);
    }
  }

  OUTLINED_FUNCTION_47();
}

uint64_t closure #1 in NetworkConnectionProvider.updateConnectionMetricsSnapthotReport(_:)(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    if (!v11)
    {
      return result;
    }

    return v11();
  }

  v14 = result;
  _s11SiriNetwork010ConnectionB6ReportVSgWOi0_(__src);
  memcpy(__dst, __src, sizeof(__dst));
  v36[0] = 1;
  _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(v40);
  memcpy(&v37[7], v40, 0x121uLL);
  if (one-time initialization token for sharedNetworkAnalytics != -1)
  {
    swift_once();
  }

  v15 = static NetworkAnalytics.sharedNetworkAnalytics;
  LODWORD(v41[0]) = 0;
  v41[1] = 0;
  v41[2] = 0xE000000000000000;
  v41[3] = 0;
  v41[4] = 0xE000000000000000;
  memcpy(&v41[5], __dst, 0x139uLL);
  v41[46] = 0;
  v41[45] = 0;
  LOBYTE(v41[47]) = v36[0];
  memcpy(&v41[47] + 1, v37, 0x128uLL);
  v41[85] = MEMORY[0x277D84F90];
  v41[86] = MEMORY[0x277D84F90];
  LODWORD(v41[87]) = 4;
  v41[88] = static NetworkAnalytics.sharedNetworkAnalytics;
  destructiveProjectEnumData for ConnectionConfigurationError();
  swift_beginAccess();
  memcpy(v42, (v14 + 624), sizeof(v42));
  memcpy((v14 + 624), v41, 0x2C8uLL);
  v16 = v15;
  outlined destroy of NetworkConnectionProtocol?(v42, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
  v17 = NetworkConnectionProvider.connectionMetrics.modify(v35);
  v19 = v18;
  memmove(v43, (v18 + 568), 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v43) != 1)
  {
    outlined init with copy of RPCOspreyConnectionProtocol(v9, v36);
    v20 = *(v14 + 2101);
    *(v19 + 568) = *(*(v14 + 2144) + OBJC_IVAR___SNNetworkAnalyticsInternal_sequenceNumber);
    *(v19 + 576) = 0xD000000000000017;
    *(v19 + 584) = 0x80000002235F7560;

    *(v19 + 592) = 0x6574736575716572;
    *(v19 + 600) = 0xEA0000000000646ELL;

    *(v19 + 1256) = v12;

    ConnectionSnapshotReport.updateTCPInfoMetrics(connection:wasConnected:connectionMethod:)(v36, v20, v7, v5);
    outlined destroy of NetworkConnectionProtocol?(v36, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  }

  (v17)(v35, 0);
  v21 = NetworkConnectionProvider.connectionMetrics.modify(v33);
  v23 = v22;
  memmove(v36, v22 + 71, 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v36) != 1)
  {
    memcpy(v35, v23 + 76, 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v35) != 1)
    {
      v24 = *(v14 + 1496);
      if (v24)
      {
        v25 = *(v24 + OBJC_IVAR___SNNetworkManagerInternal_carrierName);
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

      v23[77] = v25;
      v23[78] = v26;
    }
  }

  (v21)(v33, 0);
  v27 = *(v14 + 1496);
  if (v27)
  {
    v28 = v27 + OBJC_IVAR___SNNetworkManagerInternal_lastSignalStrength;
    if ((*(v28 + 8) & 1) == 0)
    {
      v29 = *v28;
      v30 = NetworkConnectionProvider.connectionMetrics.modify(v34);
      v32 = v31;
      memmove(v35, (v31 + 568), 0x2C8uLL);
      if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v35) != 1)
      {
        memcpy(v33, (v32 + 608), 0x139uLL);
        if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v33) != 1)
        {
          *(v32 + 632) = v29;
          *(v32 + 640) = 0;
        }
      }

      (v30)(v34, 0);
    }
  }

  specialized ConnectionProviderProtocol.updateConnectionMetrics(with:completion:)(v3);

  if (v11)
  {
    return v11();
  }

  return result;
}

Swift::Int NetworkConnectionProvider.hashValue.getter()
{
  Hasher.init(_seed:)();
  specialized ConnectionProviderProtocol.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for ConnectionProviderProtocol.connectionConfiguration.getter in conformance NetworkConnectionProvider@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 1536), 0x204uLL);
  memcpy(a1, (v1 + 1536), 0x204uLL);
  return outlined init with copy of ConnectionConfiguration(__dst, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NetworkConnectionProvider(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  WitnessTable = swift_getWitnessTable();
  ConnectionProviderProtocol.hash(into:)(v5, a2, WitnessTable);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NetworkConnectionProvider(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static ConnectionProviderProtocol.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t instantiation function for generic protocol witness table for NetworkConnectionProvider(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type NetworkConnectionProvider and conformance NetworkConnectionProvider, a2, type metadata accessor for NetworkConnectionProvider, &protocol conformance descriptor for NetworkConnectionProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object?) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void specialized BackgroundConnection.connectionProvider(_:received:)()
{
  OUTLINED_FUNCTION_46();
  v26 = v3;
  v27 = v4;
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v28 = OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_56();
  v10 = lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type NetworkConnectionProvider and conformance NetworkConnectionProvider, v9, type metadata accessor for NetworkConnectionProvider, &protocol conformance descriptor for NetworkConnectionProvider);
  OUTLINED_FUNCTION_7_1();
  v11 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_66();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v2;
  v12[4] = v10;
  v12[5] = v0;
  v29[4] = v26;
  v29[5] = v12;
  OUTLINED_FUNCTION_1_1();
  v29[1] = 1107296256;
  OUTLINED_FUNCTION_3_5();
  v29[2] = v13;
  v29[3] = v27;
  v14 = _Block_copy(v29);

  v15 = v0;
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_1_8();
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v16, 255, v17, MEMORY[0x277D851A0]);
  v18 = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_45();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](v20, v21, v22);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_64();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v23);
  _Block_release(v14);
  v24 = OUTLINED_FUNCTION_16_1();
  v25(v24);
  (*(v7 + 8))(v1, v28);

  OUTLINED_FUNCTION_47();
}

{
  OUTLINED_FUNCTION_46();
  v28 = v3;
  v27 = v4;
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v29 = OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_12_2();
  v11 = lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v9, 255, v10, &protocol conformance descriptor for RPCOspreyConnectionProvider);
  OUTLINED_FUNCTION_7_1();
  v12 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_66();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v2;
  v13[4] = v11;
  v13[5] = v0;
  v30[4] = v27;
  v30[5] = v13;
  OUTLINED_FUNCTION_1_1();
  v30[1] = 1107296256;
  OUTLINED_FUNCTION_3_5();
  v30[2] = v14;
  v30[3] = v28;
  v15 = _Block_copy(v30);

  v16 = v0;
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_1_8();
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v17, 255, v18, MEMORY[0x277D851A0]);
  v19 = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_45();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](v21, v22, v23);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_64();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v24);
  _Block_release(v15);
  v25 = OUTLINED_FUNCTION_16_1();
  v26(v25);
  (*(v7 + 8))(v1, v29);

  OUTLINED_FUNCTION_47();
}

void specialized BackgroundConnection.connectionProvider(_:receivedViabilityChangeNotification:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type NetworkConnectionProvider and conformance NetworkConnectionProvider, a2, type metadata accessor for NetworkConnectionProvider, &protocol conformance descriptor for NetworkConnectionProvider);
  v6 = *(a3 + 1080);
  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7 || !swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  type metadata accessor for BackgroundConnection();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v9 != a3)
  {
    goto LABEL_16;
  }

  if (*(a3 + 1188) != (v4 & 1))
  {
    if ((v4 & 1) == 0)
    {
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v10 = swift_allocError();
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *v11 = 0;
      *(v11 + 24) = xmmword_2235F0AC0;
      BackgroundConnection.didEncounterError(_:)(v10);

LABEL_16:

      swift_unknownObjectRelease();
      return;
    }

LABEL_15:
    BackgroundConnection.cancelSecondaryConnection()();
    goto LABEL_16;
  }

  if (v4)
  {
    goto LABEL_15;
  }

  if (*(a3 + 1189))
  {
    BackgroundConnection.startSecondaryConnection()();
    goto LABEL_16;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.siriNetwork);
  oslog = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_223515000, oslog, v13, "Background Connection - Provider: Wait for better route event", v14, 2u);
    MEMORY[0x223DE38F0](v14, -1, -1);
  }

  swift_unknownObjectRelease();
}

uint64_t specialized BackgroundConnection.connectionProviderReceivedBetterRouteNotification(_:)(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type NetworkConnectionProvider and conformance NetworkConnectionProvider, a2, type metadata accessor for NetworkConnectionProvider, &protocol conformance descriptor for NetworkConnectionProvider);
  v5 = *(a2 + 1080);
  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      type metadata accessor for BackgroundConnection();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        if (v8 == a2)
        {
          *(a2 + 1189) = 1;
          if ((*(a2 + 1188) & 1) == 0)
          {
            if (one-time initialization token for siriNetwork != -1)
            {
              swift_once();
            }

            v9 = type metadata accessor for Logger();
            __swift_project_value_buffer(v9, static Logger.siriNetwork);
            v10 = Logger.logObject.getter();
            v11 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v10, v11))
            {
              v12 = swift_slowAlloc();
              *v12 = 0;
              _os_log_impl(&dword_223515000, v10, v11, "Background Connection - Provider: Starting secondary connection after better route notification received", v12, 2u);
              MEMORY[0x223DE38F0](v12, -1, -1);
            }

            BackgroundConnection.startSecondaryConnection()();
          }
        }
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t objectdestroy_157Tm()
{

  v1 = OUTLINED_FUNCTION_41();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void partial apply for specialized closure #1 in ConnectionProviderProtocol.setupOpenTimeoutTimer()()
{
  specialized closure #1 in ConnectionProviderProtocol.setupOpenTimeoutTimer()(v0);
}

{
  specialized closure #1 in ConnectionProviderProtocol.setupOpenTimeoutTimer()(v0);
}

id outlined copy of NetworkConnectionError(id result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if ((a4 >> 60) <= 9)
  {
    if (a4 >> 60 == 3)
    {
      result = a5;
    }

    return result;
  }

  return result;
}

uint64_t objectdestroy_214Tm()
{

  v0 = OUTLINED_FUNCTION_41();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t objectdestroy_204Tm()
{

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_66();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t objectdestroy_171Tm(void (*a1)(void))
{

  a1(*(v1 + 32));
  OUTLINED_FUNCTION_109();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_92()
{

  return type metadata accessor for DispatchWorkItemFlags();
}

uint64_t OUTLINED_FUNCTION_94()
{
}

double OUTLINED_FUNCTION_96()
{
  result = 0.0;
  *(v0 + 2064) = 0u;
  return result;
}

BOOL OUTLINED_FUNCTION_121()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_122()
{
}

void ConnectionEstablishmentReport.init(ospreyConnectionMetrics:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = 1;
  if (one-time initialization token for sharedNetworkAnalytics != -1)
  {
    swift_once();
  }

  v4 = static NetworkAnalytics.sharedNetworkAnalytics;
  if (a1)
  {
    v5 = static NetworkAnalytics.sharedNetworkAnalytics;
    [a1 fetchStartToDomainLookupStartTime];
    v7 = v6;
    [a1 dnsResolutionTime];
    v9 = v8;
    [a1 connectionEstablishmentTime];
    v11 = v10;
    v42 = 0;
    [a1 tcpConnectTime];
    v13 = v12;
    [a1 secureConnectionTime];
    v15 = v14;
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v17 = v16;
    v19 = *(v16 + 16);
    v18 = *(v16 + 24);
    v20 = v18 >> 1;
    v21 = v19 + 1;
    if (v18 >> 1 <= v19)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v17 = v34;
      v18 = *(v34 + 24);
      v20 = v18 >> 1;
    }

    *(v17 + 16) = v21;
    v22 = v17 + 48 * v19;
    *(v22 + 32) = xmmword_2235F0D60;
    *(v22 + 48) = v13;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    *(v22 + 72) = 1;
    if (v20 < (v19 + 2))
    {
      OUTLINED_FUNCTION_0_19(v18);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v17 = v35;
    }

    v23 = v7 + v9;
    *(v17 + 16) = v19 + 2;
    v24 = v17 + 48 * v21;
    *(v24 + 32) = xmmword_2235F0D70;
    *(v24 + 48) = v15;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    *(v24 + 72) = 1;
    [a1 dnsResolutionTime];
    v26 = v25;
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v28 = v27;
    v30 = *(v27 + 16);
    v29 = *(v27 + 24);
    if (v30 >= v29 >> 1)
    {
      OUTLINED_FUNCTION_0_19(v29);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v28 = v36;
    }

    v31 = v23 + v11;

    *(v28 + 16) = v30 + 1;
    v32 = v28 + 80 * v30;
    *(v32 + 32) = 0;
    *(v32 + 36) = 1;
    *(v32 + 37) = v40;
    *(v32 + 39) = v41;
    *(v32 + 40) = v26;
    *(v32 + 48) = 0;
    *(v32 + 49) = v38;
    *(v32 + 51) = v39;
    *(v32 + 52) = 0;
    *(v32 + 56) = 1;
    *(v32 + 60) = *&v37[3];
    *(v32 + 57) = *v37;
    *(v32 + 80) = 0u;
    *(v32 + 96) = 0u;
    *(v32 + 64) = 0u;
  }

  else
  {
    v33 = static NetworkAnalytics.sharedNetworkAnalytics;
    v17 = MEMORY[0x277D84F90];
    v31 = 0.0;
    v28 = MEMORY[0x277D84F90];
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = v31;
  *(a2 + 48) = v42;
  *(a2 + 56) = v17;
  *(a2 + 64) = v28;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = v4;
}

uint64_t ConnectionSnapshotReport.isPoorLinkQuality.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = *(__dst[86] + 16);
  if (v1)
  {
    v2 = (__dst[86] + 32);
    v3 = v1 - 1;
    v4 = 1;
    while (1)
    {
      memcpy(v28, v2, 0xF9uLL);
      memcpy(v26, v2, 0xF9uLL);
      outlined init with copy of ConnectionTCPInfoMetrics(v28, v27);
      if (ConnectionTCPInfoMetrics.isPoorLinkQuality.getter())
      {
LABEL_4:
        outlined destroy of ConnectionTCPInfoMetrics(v28);
        goto LABEL_20;
      }

      memcpy(v26, &__dst[48], 0x121uLL);
      if (_s11SiriNetwork25ConnectionInterfaceReportVSgWOg(v26) == 1)
      {
        v5 = 0;
        v6 = 0;
      }

      else
      {
        v5 = v26[0];
        v6 = v26[1];
      }

      if (!v28[1])
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_4;
      }

      if (v28[0] == v5 && v28[1] == v6)
      {

        outlined destroy of ConnectionTCPInfoMetrics(v28);

LABEL_19:
        v4 = 0;
        goto LABEL_20;
      }

      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined destroy of ConnectionTCPInfoMetrics(v28);

      if (v8)
      {
        goto LABEL_19;
      }

LABEL_20:
      if (!v3)
      {
        if (one-time initialization token for siriNetwork != -1)
        {
          OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, static Logger.siriNetwork);
        outlined init with copy of ConnectionSnapshotReport(__dst, v26);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.default.getter();
        outlined destroy of ConnectionSnapshotReport(__dst);
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v25 = v13;
          *v12 = 136315394;
          memcpy(v26, &__dst[48], 0x121uLL);
          if (_s11SiriNetwork25ConnectionInterfaceReportVSgWOg(v26) == 1)
          {
            v14 = 0;
            v15 = 0xE000000000000000;
          }

          else
          {
            v27[0] = v26[0];
            v27[1] = v26[1];

            v14 = String.init<A>(describing:)();
            v15 = v20;
          }

          v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v25);

          *(v12 + 4) = v21;
          *(v12 + 12) = 2080;
          v22 = "Poor link quality";
          if ((v4 & 1) == 0)
          {
            v22 = "Good link quality";
          }

          v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, (v22 - 32) | 0x8000000000000000, &v25);

          *(v12 + 14) = v23;
          _os_log_impl(&dword_223515000, v10, v11, "SiriNetwork - Report Link Quality for primary interface [%s]. %s", v12, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DE38F0](v13, -1, -1);
          MEMORY[0x223DE38F0](v12, -1, -1);
        }

        return v4 & 1;
      }

      --v3;
      v2 += 256;
    }

    outlined destroy of ConnectionTCPInfoMetrics(v28);
    if (v6)
    {

      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.siriNetwork);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_223515000, v17, v18, "SiriNetwork - Report Link Quality. Unavailable", v19, 2u);
    MEMORY[0x223DE38F0](v19, -1, -1);
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t static ConnectionPolicy.maxGlobalTimeout.setter(double a1)
{
  result = swift_beginAccess();
  static ConnectionPolicy.maxGlobalTimeout = *&a1;
  return result;
}

double key path getter for static ConnectionPolicy.maxGlobalTimeout : ConnectionPolicy.Type@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  result = *&static ConnectionPolicy.maxGlobalTimeout;
  *a1 = static ConnectionPolicy.maxGlobalTimeout;
  return result;
}

uint64_t key path setter for static ConnectionPolicy.maxGlobalTimeout : ConnectionPolicy.Type(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static ConnectionPolicy.maxGlobalTimeout = v1;
  return result;
}

uint64_t ConnectionPolicy.policyId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConnectionPolicy.policyId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ConnectionPolicy.globalTimeout.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

double ConnectionPolicy.maxRoutesTimeout.getter(uint64_t a1)
{
  if (*(v1 + 32))
  {
    OUTLINED_FUNCTION_1_10(a1);
    return *&static ConnectionPolicy.maxGlobalTimeout;
  }

  else
  {
    v2 = *(v1 + 24);
    OUTLINED_FUNCTION_1_10(a1);
    if (*&static ConnectionPolicy.maxGlobalTimeout < v2)
    {
      return *&static ConnectionPolicy.maxGlobalTimeout;
    }
  }

  return v2;
}

double ConnectionPolicy.delayBetweenScheduledRoutes.getter()
{
  static ConnectionPolicyRoute.aceptableRoutes(_:)(*(v0 + 72));
  static ConnectionPolicyRoute.maxTimeoutFromRoutes(_:)(v1);
  v3 = v2;

  return fmin(v3, 5.0);
}

uint64_t ConnectionPolicy.mptcpFallbackPort.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t ConnectionPolicy.timeToLive.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t ConnectionPolicy.routes.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t Double.seconds.getter(double a1)
{
  v1 = round(a1);
  if (v1 <= -9.22337204e18)
  {
    return 0x8000000000000000;
  }

  if (v1 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v1 > -9.22337204e18)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  return MEMORY[0x223DE2980](qword_2235F0FF0[a2]);
}

{
  String.hash(into:)();
}

Swift::Int ConnectionConfiguration.hashValue.getter()
{
  Hasher.init(_seed:)();
  ConnectionConfiguration.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConnectionConfiguration(uint64_t a1)
{
  Hasher.init(_seed:)();
  ConnectionConfiguration.hash(into:)(v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ConnectionConfiguration and conformance ConnectionConfiguration()
{
  result = lazy protocol witness table cache variable for type ConnectionConfiguration and conformance ConnectionConfiguration;
  if (!lazy protocol witness table cache variable for type ConnectionConfiguration and conformance ConnectionConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionConfiguration and conformance ConnectionConfiguration);
  }

  return result;
}

id one-time initialization function for sharedNetworkAnalytics()
{
  default argument 0 of NetworkAnalytics.init(queue:siriAnalyticsMessageStream:)();
  v2 = v1;
  v3 = [objc_opt_self() sharedStream];
  v4 = OUTLINED_FUNCTION_53_1();
  v5 = objc_allocWithZone(type metadata accessor for NetworkAnalytics(v4));
  result = NetworkAnalytics.init(queue:siriAnalyticsMessageStream:)(v2, v0);
  static NetworkAnalytics.sharedNetworkAnalytics = result;
  return result;
}

void default argument 0 of NetworkAnalytics.init(queue:siriAnalyticsMessageStream:)()
{
  OUTLINED_FUNCTION_46();
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_0_0();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_71();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_9_5();
  v7 = OUTLINED_FUNCTION_11_1(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v8[1] = type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.utility.getter();
  v10 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v9);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  OUTLINED_FUNCTION_47();
}

id static NetworkAnalytics.sharedNetworkAnalytics.getter()
{
  if (one-time initialization token for sharedNetworkAnalytics != -1)
  {
    swift_once();
  }

  v1 = static NetworkAnalytics.sharedNetworkAnalytics;

  return v1;
}

id NetworkAnalytics.init(queue:siriAnalyticsMessageStream:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_17_3(&v2[v5]);
  OUTLINED_FUNCTION_17_3(&v2[OBJC_IVAR___SNNetworkAnalyticsInternal_networkConnectionId]);
  v6 = &v2[OBJC_IVAR___SNNetworkAnalyticsInternal_connectionProvider];
  *v6 = 0;
  v6[4] = 1;
  OUTLINED_FUNCTION_17_3(&v2[OBJC_IVAR___SNNetworkAnalyticsInternal_orchestratorRequestId]);
  OUTLINED_FUNCTION_17_3(&v2[OBJC_IVAR___SNNetworkAnalyticsInternal_netIdForRequestLink]);
  v7 = &v2[OBJC_IVAR___SNNetworkAnalyticsInternal_httpHeaderEvent];
  OUTLINED_FUNCTION_17_3(&v2[OBJC_IVAR___SNNetworkAnalyticsInternal_httpHeaderEvent]);
  v8 = type metadata accessor for NetworkAnalyticsEventMessage(0);
  *&v7[*(v8 + 20)] = 0;
  v9 = &v7[*(v8 + 24)];
  *v9 = 0;
  v9[8] = 1;
  OUTLINED_FUNCTION_3_8(OBJC_IVAR___SNNetworkAnalyticsInternal_preparationSnapshotEvent);
  OUTLINED_FUNCTION_3_8(OBJC_IVAR___SNNetworkAnalyticsInternal_debugPreparationSnapshotEvent);
  OUTLINED_FUNCTION_3_8(OBJC_IVAR___SNNetworkAnalyticsInternal_readySnapshotEvent);
  OUTLINED_FUNCTION_3_8(OBJC_IVAR___SNNetworkAnalyticsInternal_debugReadySnapshotEvent);
  OUTLINED_FUNCTION_3_8(OBJC_IVAR___SNNetworkAnalyticsInternal_sessionConnectionSnapthotEvent);
  OUTLINED_FUNCTION_3_8(OBJC_IVAR___SNNetworkAnalyticsInternal_debugSessionConnectionSnapthotEvent);
  OUTLINED_FUNCTION_3_8(OBJC_IVAR___SNNetworkAnalyticsInternal_sessionConnectionFailedEvent);
  OUTLINED_FUNCTION_3_8(OBJC_IVAR___SNNetworkAnalyticsInternal_peerConnectionFailedEvent);
  *&v2[OBJC_IVAR___SNNetworkAnalyticsInternal_queue] = a1;
  v2[OBJC_IVAR___SNNetworkAnalyticsInternal_isConnectionActive] = 0;
  v2[OBJC_IVAR___SNNetworkAnalyticsInternal_netIdAvailable] = 0;
  *&v2[OBJC_IVAR___SNNetworkAnalyticsInternal_sequenceNumber] = 0;
  *&v2[OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream] = a2;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for NetworkAnalytics(0);
  return objc_msgSendSuper2(&v11, sel_init);
}

Swift::Void __swiftcall NetworkAnalytics.reset()()
{
  NetworkAnalytics.resetNetId()();

  NetworkAnalytics.resetSequenceNumber()();
}

uint64_t NetworkAnalytics.getNetId()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for UUID();
  v3 = OUTLINED_FUNCTION_47_0();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = *&v1[OBJC_IVAR___SNNetworkAnalyticsInternal_queue];
  OUTLINED_FUNCTION_3();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v1;
  OUTLINED_FUNCTION_3();
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in NetworkAnalytics.getNetId();
  *(v7 + 24) = v6;
  v19[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v19[5] = v7;
  OUTLINED_FUNCTION_20_2();
  v19[1] = 1107296256;
  OUTLINED_FUNCTION_5_9();
  v19[2] = v8;
  v19[3] = &block_descriptor_16_0;
  v9 = _Block_copy(v19);
  v10 = v5;
  v11 = v1;

  v12 = OUTLINED_FUNCTION_31_1();
  dispatch_sync(v12, v13);

  _Block_release(v9);
  v14 = OUTLINED_FUNCTION_36_1();
  v17 = OUTLINED_FUNCTION_46_0(v14, v15, v16, 96);

  if (v17)
  {
    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall NetworkAnalytics.getIsConnectionActive()()
{
  v22 = 0;
  v1 = *&v0[OBJC_IVAR___SNNetworkAnalyticsInternal_queue];
  OUTLINED_FUNCTION_3();
  v2 = swift_allocObject();
  *(v2 + 16) = &v22;
  *(v2 + 24) = v0;
  OUTLINED_FUNCTION_3();
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in NetworkAnalytics.getIsConnectionActive();
  *(v3 + 24) = v2;
  v20 = thunk for @callee_guaranteed () -> ()partial apply;
  v21 = v3;
  OUTLINED_FUNCTION_12_3();
  v17 = 1107296256;
  OUTLINED_FUNCTION_5_9();
  v18 = v4;
  v19 = &block_descriptor_56_0;
  v5 = _Block_copy(aBlock);
  v6 = v1;
  v7 = v0;

  v8 = OUTLINED_FUNCTION_31_1();
  dispatch_sync(v8, v9);

  _Block_release(v5);
  v10 = OUTLINED_FUNCTION_36_1();
  v13 = OUTLINED_FUNCTION_46_0(v10, v11, v12, 155);

  if (v13)
  {
    __break(1u);
  }

  else
  {
    v15 = v22;

    return v15;
  }

  return result;
}

Swift::Bool __swiftcall NetworkAnalytics.isNetIdAvailable()()
{
  v22 = 0;
  v1 = *&v0[OBJC_IVAR___SNNetworkAnalyticsInternal_queue];
  OUTLINED_FUNCTION_3();
  v2 = swift_allocObject();
  *(v2 + 16) = &v22;
  *(v2 + 24) = v0;
  OUTLINED_FUNCTION_3();
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in NetworkAnalytics.isNetIdAvailable();
  *(v3 + 24) = v2;
  v20 = thunk for @callee_guaranteed () -> ()partial apply;
  v21 = v3;
  OUTLINED_FUNCTION_12_3();
  v17 = 1107296256;
  OUTLINED_FUNCTION_5_9();
  v18 = v4;
  v19 = &block_descriptor_72;
  v5 = _Block_copy(aBlock);
  v6 = v1;
  v7 = v0;

  v8 = OUTLINED_FUNCTION_31_1();
  dispatch_sync(v8, v9);

  _Block_release(v5);
  v10 = OUTLINED_FUNCTION_36_1();
  v13 = OUTLINED_FUNCTION_46_0(v10, v11, v12, 176);

  if (v13)
  {
    __break(1u);
  }

  else
  {
    v15 = v22;

    return v15;
  }

  return result;
}

void partial apply for closure #1 in NetworkAnalytics.increaseSequenceNumber()()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR___SNNetworkAnalyticsInternal_sequenceNumber);
  if (v2 <= 0x3E8)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = 1;
  }

  *(v1 + OBJC_IVAR___SNNetworkAnalyticsInternal_sequenceNumber) = v3;
}

Class @objc NetworkAnalytics.getNetId()(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v6 = OUTLINED_FUNCTION_11_1(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = a1;
  a3();

  v10 = type metadata accessor for UUID();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v10 - 8) + 8))(v8, v10);
  }

  return isa;
}

void *NetworkAnalytics.createRequestLinkInfo(from:component:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v5 = OUTLINED_FUNCTION_11_1(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  outlined init with copy of UUID?(a1, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    outlined destroy of NetworkConnectionProtocol?(v7, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_3();
    v19();
    type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC78);
    (*(v10 + 16))(v14, v17, v8);
    v20 = SISchemaUUID.__allocating_init(nsuuid:)(v14);
    v21 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
    v18 = v21;
    if (v21)
    {
      [v21 setUuid_];
      [v18 setComponent_];

      v22 = OUTLINED_FUNCTION_32_2();
      v23(v22);
    }

    else
    {
      v24 = OUTLINED_FUNCTION_32_2();
      v25(v24);
    }
  }

  return v18;
}

void NetworkAnalytics.emitAllCachedMessagesFor(_:)()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_53_1();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v30 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_0_0();
  v28 = v5;
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v27 = *(v0 + OBJC_IVAR___SNNetworkAnalyticsInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_28_0(v12);
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v6);
  v13 = ((*(v8 + 80) + 24) & ~*(v8 + 80));
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  (*(v8 + 32))(&v13[v14], &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v32[4] = partial apply for closure #1 in NetworkAnalytics.emitAllCachedMessagesFor(_:);
  v32[5] = v14;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v32[2] = v15;
  v32[3] = &block_descriptor_238;
  v16 = _Block_copy(v32);
  v17 = v27;
  OUTLINED_FUNCTION_42();
  static DispatchQoS.unspecified.getter();
  v31 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_9();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v18, v19, MEMORY[0x277D851A0]);
  v20 = OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  OUTLINED_FUNCTION_45_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_43_1();
  _Block_release(v16);

  v22 = OUTLINED_FUNCTION_16_1();
  v23(v22);
  v24 = OUTLINED_FUNCTION_16();
  v25(v24);
  OUTLINED_FUNCTION_39_0();

  OUTLINED_FUNCTION_47();
}

id NetworkAnalytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NetworkAnalytics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkAnalytics(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for NetworkAnalytics(uint64_t a1)
{
  type metadata accessor for UUID?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NetworkAnalyticsEventMessage(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for UUID?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UUID?);
    }
  }
}

void type metadata completion function for NetworkAnalyticsEventMessage(uint64_t a1)
{
  type metadata accessor for UUID?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NETSchemaNETClientEvent?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt64?();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for NETSchemaNETClientEvent?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for NETSchemaNETClientEvent?)
  {
    type metadata accessor for CTServiceDescriptor(255, &lazy cache variable for type metadata for NETSchemaNETClientEvent, 0x277D58B78);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for NETSchemaNETClientEvent?);
    }
  }
}

void type metadata accessor for UInt64?()
{
  if (!lazy cache variable for type metadata for UInt64?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UInt64?);
    }
  }
}

void partial apply for closure #1 in NetworkAnalytics.emitAllCachedMessagesFor(_:)()
{
  v0 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_11_1(v0);
  v1 = OUTLINED_FUNCTION_52_1();

  closure #1 in NetworkAnalytics.emitAllCachedMessagesFor(_:)(v1, v2);
}

uint64_t getEnumTagSinglePayload for ConnectionEndpointReport(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ConnectionEndpointReport(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_11SiriNetwork23ConnectionProviderStateO(uint64_t a1)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionProviderState(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionProviderState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t destructiveInjectEnumTag for ConnectionProviderState(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type NWError and conformance NWError()
{
  result = lazy protocol witness table cache variable for type NWError and conformance NWError;
  if (!lazy protocol witness table cache variable for type NWError and conformance NWError)
  {
    type metadata accessor for NWError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NWError and conformance NWError);
  }

  return result;
}

BOOL NetworkWiFiManager.registerOneShotPowerStateDidChangeForWiFiInterface(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_1();
  v11 = v10 - v9;
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_1();
  v17 = v16 - v15;
  if (a1)
  {
    v18 = *(v2 + OBJC_IVAR___SNNetworkWiFiManagerInternal_queue);
    v25 = v14;
    v26 = v13;
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = a1;
    v20[4] = a2;
    v30 = partial apply for closure #1 in NetworkWiFiManager.registerOneShotPowerStateDidChangeForWiFiInterface(_:);
    v31 = v20;
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
    v28 = v21;
    v29 = &block_descriptor_7;
    v22 = _Block_copy(aBlock);
    v23 = v18;

    outlined copy of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(a1, a2);
    static DispatchQoS.unspecified.getter();
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2460](0, v17, v11, v22);
    _Block_release(v22);

    (*(v7 + 8))(v11, v5);
    (*(v25 + 8))(v17, v26);
  }

  return a1 != 0;
}

void closure #1 in NetworkWiFiManager.registerOneShotPowerStateDidChangeForWiFiInterface(_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for DispatchWorkItemFlags();
  MEMORY[0x28223BE20](v5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  if (NetworkWiFiManager.isWiFiEnabled()())
  {
    if (a2)
    {

      a2(v8);

      outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(a2, a3);
      return;
    }

    goto LABEL_14;
  }

  v9 = OBJC_IVAR___SNNetworkWiFiManagerInternal_queueGroup;
  if (*&v7[OBJC_IVAR___SNNetworkWiFiManagerInternal_queueGroup])
  {
LABEL_11:
    if (a2)
    {
      v20 = swift_allocObject();
      *(v20 + 16) = a2;
      *(v20 + 24) = a3;
      v40 = partial apply for thunk for @callee_guaranteed () -> ();
      v41 = v20;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v39 = &block_descriptor_22;
      _Block_copy(&aBlock);
      outlined copy of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(a2, a3);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      type metadata accessor for DispatchWorkItem();
      swift_allocObject();
      DispatchWorkItem.init(flags:block:)();

      v21 = *&v7[v9];
      if (v21)
      {
        v22 = *&v7[OBJC_IVAR___SNNetworkWiFiManagerInternal_queue];
        v23 = v21;
        v24 = v22;
        OS_dispatch_group.notify(queue:work:)();
        outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(a2, a3);
      }

      else
      {
        outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(a2, a3);
      }

      return;
    }

LABEL_14:

    return;
  }

  v10 = OBJC_IVAR___SNNetworkWiFiManagerInternal_interface;
  v11 = *&v7[OBJC_IVAR___SNNetworkWiFiManagerInternal_interface];
  if (!v11 || (v12 = swift_allocObject(), *(v12 + 16) = v7, v40 = partial apply for closure #1 in closure #1 in NetworkWiFiManager.registerOneShotPowerStateDidChangeForWiFiInterface(_:), v41 = v12, aBlock = MEMORY[0x277D85DD0], v37 = 1107296256, v38 = thunk for @escaping @callee_guaranteed (@guaranteed OspreyConnectionMetrics) -> (), v39 = &block_descriptor_16_1, v13 = _Block_copy(&aBlock), v14 = v11, v35 = v7, , [v14 setEventHandler_], _Block_release(v13), v14, (v15 = *&v7[v10]) == 0))
  {
LABEL_10:
    v17 = dispatch_group_create();
    v18 = *&v7[v9];
    *&v7[v9] = v17;
    v19 = v17;

    dispatch_group_enter(v19);
    if (!*&v7[v9])
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  aBlock = 0;
  if ([v15 startMonitoringEventType:1 error:&aBlock])
  {
    v16 = aBlock;
    goto LABEL_10;
  }

  v25 = aBlock;
  v26 = _convertNSErrorToError(_:)();

  swift_willThrow();
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.siriNetwork);
  v28 = v26;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    v33 = v26;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_223515000, v29, v30, "NetworkWiFiManager - PowerNotification: Failed registering for power notifications, error: %@", v31, 0xCu);
    outlined destroy of NSObject?(v32);
    MEMORY[0x223DE38F0](v32, -1, -1);
    MEMORY[0x223DE38F0](v31, -1, -1);
  }

  else
  {
  }
}

void closure #1 in closure #1 in NetworkWiFiManager.registerOneShotPowerStateDidChangeForWiFiInterface(_:)(void *a1, char *a2)
{
  if ([a1 type] == 1)
  {
    v3 = *&a2[OBJC_IVAR___SNNetworkWiFiManagerInternal_interface];
    if (v3 && (v4 = [v3 interfaceName]) != 0)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0xE000000000000000;
    }

    v9 = MEMORY[0x223DE2070](v6, v8);

    [a2 powerStateDidChangeForWiFiInterfaceWithName_];
  }
}

Swift::Void __swiftcall NetworkWiFiManager.powerStateDidChangeForWiFiInterface(withName:)(Swift::String withName)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v8 = v7 - v6;
  v9 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_1();
  v15 = v14 - v13;
  if (NetworkWiFiManager.isWiFiEnabled()())
  {
    v16 = *(v1 + OBJC_IVAR___SNNetworkWiFiManagerInternal_queue);
    v21 = v9;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = partial apply for closure #1 in NetworkWiFiManager.powerStateDidChangeForWiFiInterface(withName:);
    v26 = v17;
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
    v23 = v18;
    v24 = &block_descriptor_7_0;
    v19 = _Block_copy(aBlock);
    v20 = v16;

    static DispatchQoS.unspecified.getter();
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2460](0, v15, v8, v19);
    _Block_release(v19);

    (*(v4 + 8))(v8, v2);
    (*(v11 + 8))(v15, v21);
  }
}

void closure #1 in NetworkWiFiManager.powerStateDidChangeForWiFiInterface(withName:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR___SNNetworkWiFiManagerInternal_queueGroup;
    v4 = *(Strong + OBJC_IVAR___SNNetworkWiFiManagerInternal_queueGroup);
    if (v4)
    {
      dispatch_group_leave(v4);
      v5 = OBJC_IVAR___SNNetworkWiFiManagerInternal_interface;
      v6 = *&v2[OBJC_IVAR___SNNetworkWiFiManagerInternal_interface];
      if (v6)
      {
        [v6 setEventHandler_];
        v7 = *&v2[v5];
        if (v7)
        {
          [v7 stopMonitoringEventType_];
        }
      }

      v8 = *&v2[v3];
      *&v2[v3] = 0;

      v2 = v8;
    }
  }
}

double ConnectionMetrics.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0u;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  _s11SiriNetwork27ConnectionPreparationReportVSgWOi0_(v4);
  memcpy((a1 + 96), v4, 0x168uLL);
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  _s11SiriNetwork24ConnectionSnapshotReportVSgWOi0_(__src);
  memcpy((a1 + 568), __src, 0x2C8uLL);
  *(a1 + 1280) = v2;
  result = 0.0;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 0u;
  *(a1 + 1320) = 0;
  *(a1 + 1328) = 1;
  *(a1 + 1336) = 0;
  *(a1 + 1344) = 1;
  *(a1 + 1352) = 0;
  *(a1 + 1360) = 1;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0;
  *(a1 + 1388) = 1;
  *(a1 + 1392) = 0;
  *(a1 + 1400) = 1;
  *(a1 + 1408) = 0;
  *(a1 + 1416) = 1;
  *(a1 + 1424) = 0;
  *(a1 + 1432) = 1;
  return result;
}

uint64_t ConnectionMetrics.connectionIdentifier.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t ConnectionMetrics.connectionMethodHistory.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ConnectionMetrics.policyId.setter()
{
  OUTLINED_FUNCTION_13_3();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

void *ConnectionMetrics.remoteMetrics.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 40);
  if (*(v3 + 16))
  {
    memcpy(__dst, (v3 + 32), 0x599uLL);
    memmove(a1, (v3 + 32), 0x599uLL);
    destructiveProjectEnumData for ConnectionConfigurationError();
    return outlined init with copy of ConnectionMetrics(__dst, &v5);
  }

  else
  {
    _s11SiriNetwork17ConnectionMetricsVSgWOi0_(__dst);
    return memcpy(a1, __dst, 0x599uLL);
  }
}

uint64_t key path setter for ConnectionMetrics.remoteMetrics : ConnectionMetrics(void *__src)
{
  memcpy(__dst, __src, 0x599uLL);
  outlined init with copy of ConnectionMetrics?(__dst, &v3);
  return ConnectionMetrics.remoteMetrics.setter(__src);
}

uint64_t ConnectionMetrics.remoteMetrics.setter(void *__src)
{
  memcpy(v7, __src, 0x599uLL);
  v2 = _s11SiriNetwork17ConnectionMetricsVSgWOg(v7);
  v3 = (v1 + 40);

  *v3 = MEMORY[0x277D84F90];
  if (v2 != 1)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
    v5 = *(*v3 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v5, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
    v6 = *v3;
    *(v6 + 16) = v5 + 1;
    result = memcpy((v6 + 1440 * v5 + 32), v7, 0x599uLL);
    *v3 = v6;
  }

  return result;
}

uint64_t (*ConnectionMetrics.remoteMetrics.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x1690uLL);
  v4 = v3;
  *a1 = v3;
  v3[720] = v1;
  v5 = *(v1 + 40);
  v3[721] = v5;
  if (*(v5 + 16))
  {
    memcpy(v3 + 180, (v5 + 32), 0x599uLL);
    memmove(v4, (v5 + 32), 0x599uLL);
    destructiveProjectEnumData for ConnectionConfigurationError();
    outlined init with copy of ConnectionMetrics(v4 + 1440, v4 + 2880);
  }

  else
  {
    _s11SiriNetwork17ConnectionMetricsVSgWOi0_(v3);
  }

  return ConnectionMetrics.remoteMetrics.modify;
}

void ConnectionMetrics.remoteMetrics.modify(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_17_4(v11);
    OUTLINED_FUNCTION_17_4(v3 + 180);
    if (_s11SiriNetwork17ConnectionMetricsVSgWOg((v3 + 180)) == 1)
    {

      v4 = MEMORY[0x277D84F90];
    }

    else
    {
      v9 = v3[720];
      memcpy(v3 + 360, v11, 0x599uLL);
      outlined init with copy of ConnectionMetrics((v3 + 360), (v3 + 540));

      *(v9 + 40) = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_5_11();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(v10);
      OUTLINED_FUNCTION_15_4();
      v4 = *(v9 + 40);
      *(v4 + 16) = 4321;
      memcpy((v4 + 6220832), v3 + 180, 0x599uLL);
    }

    *(v3[720] + 40) = v4;
    OUTLINED_FUNCTION_17_4(v3 + 360);
    outlined destroy of ConnectionMetrics?((v3 + 360));
  }

  else
  {
    OUTLINED_FUNCTION_17_4(v3 + 180);
    v5 = _s11SiriNetwork17ConnectionMetricsVSgWOg((v3 + 180));

    v6 = MEMORY[0x277D84F90];
    if (v5 != 1)
    {
      v7 = v3[720];
      *(v7 + 40) = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_5_11();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(v8);
      OUTLINED_FUNCTION_15_4();
      v6 = *(v7 + 40);
      *(v6 + 16) = v2 + 1;
      memcpy((v6 + 1440 * v2 + 32), v3 + 180, 0x599uLL);
    }

    *(v3[720] + 40) = v6;
  }

  free(v3);
}

uint64_t ConnectionMetrics.metricsCount.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = BYTE4(result) & 1;
  return result;
}

uint64_t ConnectionMetrics.attemptedEndpoints.setter(uint64_t a1)
{

  *(v1 + 1280) = a1;
  return result;
}

uint64_t ConnectionMetrics.connectionEdgeID.setter()
{
  OUTLINED_FUNCTION_13_3();

  *(v1 + 1288) = v2;
  *(v1 + 1296) = v0;
  return result;
}

uint64_t ConnectionMetrics.connectionEdgeType.setter()
{
  OUTLINED_FUNCTION_13_3();

  *(v1 + 1304) = v2;
  *(v1 + 1312) = v0;
  return result;
}

uint64_t ConnectionMetrics.connectionFallbackReason.setter(uint64_t result, char a2)
{
  *(v2 + 1320) = result;
  *(v2 + 1328) = a2 & 1;
  return result;
}

uint64_t ConnectionMetrics.connectionDelay.setter(uint64_t result, char a2)
{
  *(v2 + 1336) = result;
  *(v2 + 1344) = a2 & 1;
  return result;
}

uint64_t ConnectionMetrics.firstTxByteDelay.setter(uint64_t result, char a2)
{
  *(v2 + 1352) = result;
  *(v2 + 1360) = a2 & 1;
  return result;
}

uint64_t ConnectionMetrics.wifiChannelInfo.setter()
{
  OUTLINED_FUNCTION_13_3();

  *(v1 + 1368) = v2;
  *(v1 + 1376) = v0;
  return result;
}

uint64_t ConnectionMetrics.simSubscriptions.setter(uint64_t result)
{
  *(v1 + 1384) = result;
  *(v1 + 1388) = BYTE4(result) & 1;
  return result;
}

uint64_t ConnectionMetrics.idsLastMessageDelay.setter(uint64_t result, char a2)
{
  *(v2 + 1392) = result;
  *(v2 + 1400) = a2 & 1;
  return result;
}

uint64_t ConnectionMetrics.idsLastSocketDelay.setter(uint64_t result, char a2)
{
  *(v2 + 1408) = result;
  *(v2 + 1416) = a2 & 1;
  return result;
}

uint64_t ConnectionMetrics.idsLastSocketOpenError.setter(uint64_t result, char a2)
{
  *(v2 + 1424) = result;
  *(v2 + 1432) = a2 & 1;
  return result;
}

uint64_t outlined destroy of ConnectionMetrics?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t storeEnumTagSinglePayload for ConnectionMetrics(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 1432) = 0;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1433) = 1;
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

    *(result + 1433) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11SiriNetwork21ConnectionPolicyRouteV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork21ConnectionPolicyRouteVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork21ConnectionPolicyRouteVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 120);
  return v4;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_24(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_24(a3, result);
  }

  return result;
}

uint64_t outlined init with copy of ConnectionMetrics?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[120 * a2] <= __dst)
  {
    return memmove(__dst, __src, 120 * a2);
  }

  return __src;
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x6563697665444941;
  }

  if (v2)
  {
    v4 = 0xEF726573776F7242;
  }

  else
  {
    v4 = 0x80000002235F64B0;
  }

  if (a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x6563697665444941;
  }

  if (a2)
  {
    v6 = 0x80000002235F64B0;
  }

  else
  {
    v6 = 0xEF726573776F7242;
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

{
  v2 = "mits = %@ tfoSynDataAcked = %@}";
  if (a1)
  {
    v3 = "remoteIntelligenceClient";
  }

  else
  {
    v3 = "mits = %@ tfoSynDataAcked = %@}";
  }

  if (a2)
  {
    v2 = "remoteIntelligenceClient";
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 1685024615;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1685024615;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 6578530;
      break;
    case 2:
      v5 = 0x616C696176616E75;
      v3 = 0xEB00000000656C62;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 6578530;
      break;
    case 2:
      v2 = 0x616C696176616E75;
      v6 = 0xEB00000000656C62;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

BOOL specialized == infix<A>(_:_:)(char a1, char a2)
{
  return qword_2235F1770[a1] == qword_2235F1770[a2];
}

{
  return (0x70403020100FFuLL >> (8 * a1)) == (0x70403020100FFuLL >> (8 * a2));
}

SiriNetwork::ConnectionType_optional __swiftcall ConnectionType.init(fromStringValue:)(Swift::String fromStringValue)
{
  v2 = v1;
  v3 = String.lowercased()();

  v4 = v3._countAndFlagsBits == 0x6E776F6E6B6E75 && v3._object == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_25(0x6E776F6E6B6E75, 0xE700000000000000) & 1) != 0)
  {

    v6 = 0;
  }

  else
  {
    v7 = v3._countAndFlagsBits == 0x69662D6977 && v3._object == 0xE500000000000000;
    if (v7 || (OUTLINED_FUNCTION_0_25(0x69662D6977, 0xE500000000000000) & 1) != 0)
    {

      v6 = 1;
    }

    else
    {
      v8 = v3._countAndFlagsBits == 1851881335 && v3._object == 0xE400000000000000;
      if (v8 || (OUTLINED_FUNCTION_0_25(1851881335, 0xE400000000000000) & 1) != 0)
      {

        v6 = 2;
      }

      else
      {
        v9 = v3._countAndFlagsBits == 0x6E61727475 && v3._object == 0xE500000000000000;
        if (v9 || (OUTLINED_FUNCTION_0_25(0x6E61727475, 0xE500000000000000) & 1) != 0)
        {

          v6 = 3;
        }

        else
        {
          v10 = v3._countAndFlagsBits == 0x31616D6463206732 && v3._object == 0xE900000000000078;
          if (v10 || (OUTLINED_FUNCTION_0_25(0x31616D6463206732, 0xE900000000000078) & 1) != 0)
          {

            v6 = 4;
          }

          else
          {
            v11 = v3._countAndFlagsBits == 0x73727067206732 && v3._object == 0xE700000000000000;
            if (v11 || (OUTLINED_FUNCTION_0_25(0x73727067206732, 0xE700000000000000) & 1) != 0)
            {

              v6 = 5;
            }

            else
            {
              v12 = v3._countAndFlagsBits == 0x65676465206732 && v3._object == 0xE700000000000000;
              if (v12 || (OUTLINED_FUNCTION_0_25(0x65676465206732, 0xE700000000000000) & 1) != 0)
              {

                v6 = 6;
              }

              else
              {
                v13 = v3._countAndFlagsBits == 0x616D646377206733 && v3._object == 0xE800000000000000;
                if (v13 || (OUTLINED_FUNCTION_0_25(0x616D646377206733, 0xE800000000000000) & 1) != 0)
                {

                  v6 = 7;
                }

                else
                {
                  v14 = v3._countAndFlagsBits == 0x6170647368206733 && v3._object == 0xE800000000000000;
                  if (v14 || (OUTLINED_FUNCTION_0_25(0x6170647368206733, 0xE800000000000000) & 1) != 0)
                  {

                    v6 = 8;
                  }

                  else
                  {
                    v15 = v3._countAndFlagsBits == 0x6170757368206733 && v3._object == 0xE800000000000000;
                    if (v15 || (OUTLINED_FUNCTION_0_25(0x6170757368206733, 0xE800000000000000) & 1) != 0)
                    {

                      v6 = 9;
                    }

                    else
                    {
                      v16 = v3._countAndFlagsBits == 0x64766520616D6463 && v3._object == 0xED0000307665726FLL;
                      if (v16 || (OUTLINED_FUNCTION_0_25(0x64766520616D6463, 0xED0000307665726FLL) & 1) != 0)
                      {

                        v6 = 10;
                      }

                      else
                      {
                        v17 = v3._countAndFlagsBits == 0x64766520616D6463 && v3._object == 0xED0000617665726FLL;
                        if (v17 || (OUTLINED_FUNCTION_0_25(0x64766520616D6463, 0xED0000617665726FLL) & 1) != 0)
                        {

                          v6 = 11;
                        }

                        else
                        {
                          v18 = v3._countAndFlagsBits == 0x64766520616D6463 && v3._object == 0xED0000627665726FLL;
                          if (v18 || (OUTLINED_FUNCTION_0_25(0x64766520616D6463, 0xED0000627665726FLL) & 1) != 0)
                          {

                            v6 = 12;
                          }

                          else
                          {
                            v19 = v3._countAndFlagsBits == 1685090920 && v3._object == 0xE400000000000000;
                            if (v19 || (OUTLINED_FUNCTION_0_25(1685090920, 0xE400000000000000) & 1) != 0)
                            {

                              v6 = 13;
                            }

                            else
                            {
                              v20 = v3._countAndFlagsBits == 6648940 && v3._object == 0xE300000000000000;
                              if (v20 || (OUTLINED_FUNCTION_0_25(6648940, 0xE300000000000000) & 1) != 0)
                              {

                                v6 = 14;
                              }

                              else
                              {
                                v21 = v3._countAndFlagsBits == 0x61736E726E206735 && v3._object == 0xE800000000000000;
                                if (v21 || (OUTLINED_FUNCTION_0_25(0x61736E726E206735, 0xE800000000000000) & 1) != 0)
                                {

                                  v6 = 15;
                                }

                                else
                                {
                                  v22 = v3._countAndFlagsBits == 0x726E206735 && v3._object == 0xE500000000000000;
                                  if (v22 || (OUTLINED_FUNCTION_0_25(0x726E206735, 0xE500000000000000) & 1) != 0)
                                  {

                                    v6 = 16;
                                  }

                                  else
                                  {
                                    v23 = v3._countAndFlagsBits == 0x706374706DLL && v3._object == 0xE500000000000000;
                                    if (v23 || (OUTLINED_FUNCTION_0_25(0x706374706DLL, 0xE500000000000000) & 1) != 0)
                                    {

                                      v6 = 17;
                                    }

                                    else
                                    {
                                      v24 = v3._countAndFlagsBits == 0x796C6C656264656CLL && v3._object == 0xE800000000000000;
                                      if (v24 || (OUTLINED_FUNCTION_0_25(0x796C6C656264656CLL, 0xE800000000000000) & 1) != 0)
                                      {

                                        v6 = 18;
                                      }

                                      else
                                      {
                                        v25 = v3._countAndFlagsBits == 7562345 && v3._object == 0xE300000000000000;
                                        if (v25 || (OUTLINED_FUNCTION_0_25(7562345, 0xE300000000000000) & 1) != 0)
                                        {

                                          v6 = 19;
                                        }

                                        else
                                        {
                                          v26 = v3._countAndFlagsBits == 7368560 && v3._object == 0xE300000000000000;
                                          if (v26 || (OUTLINED_FUNCTION_0_25(7368560, 0xE300000000000000) & 1) != 0)
                                          {

                                            v6 = 20;
                                          }

                                          else
                                          {
                                            v27 = v3._countAndFlagsBits == 0x65636E65726F6C66 && v3._object == 0xE800000000000000;
                                            if (v27 || (OUTLINED_FUNCTION_0_25(0x65636E65726F6C66, 0xE800000000000000) & 1) != 0)
                                            {

                                              v6 = 21;
                                            }

                                            else
                                            {
                                              v28 = v3._countAndFlagsBits == 0x6C61636F6CLL && v3._object == 0xE500000000000000;
                                              if (v28 || (OUTLINED_FUNCTION_0_25(0x6C61636F6CLL, 0xE500000000000000) & 1) != 0)
                                              {

                                                v6 = 22;
                                              }

                                              else
                                              {
                                                v29 = v3._countAndFlagsBits == 0x706374706D776ELL && v3._object == 0xE700000000000000;
                                                if (v29 || (OUTLINED_FUNCTION_0_25(0x706374706D776ELL, 0xE700000000000000) & 1) != 0)
                                                {

                                                  v6 = 23;
                                                }

                                                else if (v3._countAndFlagsBits == 0x6365737069 && v3._object == 0xE500000000000000)
                                                {

                                                  v6 = 24;
                                                }

                                                else
                                                {
                                                  v31 = OUTLINED_FUNCTION_0_25(0x6365737069, 0xE500000000000000);

                                                  if (v31)
                                                  {
                                                    v6 = 24;
                                                  }

                                                  else
                                                  {
                                                    v6 = 25;
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

  *v2 = v6;
  return result;
}

uint64_t ConnectionType.diagnosticConnectionType()()
{
  result = 2;
  v2 = 1 << *v0;
  if ((v2 & 0x1FFFC) == 0)
  {
    return (v2 & 0x1FE0001) == 0;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ConnectionType@<X0>(uint64_t *a1@<X8>)
{
  result = ConnectionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t ConnectionTypeWrapper.diagnosticConnectionType()()
{
  result = 2;
  v2 = 1 << *(v0 + OBJC_IVAR___SNConnectionTypeInternal_connectionType);
  if ((v2 & 0x1FFFC) == 0)
  {
    return (v2 & 0x1FE0001) == 0;
  }

  return result;
}

id ConnectionTypeWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConnectionTypeWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConnectionTypeWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type ConnectionType and conformance ConnectionType()
{
  result = lazy protocol witness table cache variable for type ConnectionType and conformance ConnectionType;
  if (!lazy protocol witness table cache variable for type ConnectionType and conformance ConnectionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionType and conformance ConnectionType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE8)
  {
    if (a2 + 24 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 24) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 25;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v5 = v6 - 25;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConnectionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
          *result = a2 + 24;
        }

        break;
    }
  }

  return result;
}

uint64_t (*AceObject.internalAceId.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = outlined bridged method (pb) of @objc AceObject.aceId.getter(v1, &selRef_aceId);
  a1[1] = v3;
  return AceObject.internalAceId.modify;
}

uint64_t key path setter for AceObject.internalAceId : AceObject(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{

  v6 = OUTLINED_FUNCTION_2_13();
  return a5(v6);
}

void AceObject.internalAceId.setter(uint64_t a1, uint64_t a2, SEL *a3)
{
  if (a2)
  {
    v5 = MEMORY[0x223DE2070](a1);
  }

  else
  {
    v5 = 0;
  }

  [v3 *a3];
}

uint64_t (*AceObject.internalRefId.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = outlined bridged method (pb) of @objc AceObject.aceId.getter(v1, &selRef_refId);
  a1[1] = v3;
  return AceObject.internalRefId.modify;
}

uint64_t AceObject.internalAceId.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {

    v4 = OUTLINED_FUNCTION_2_13();
    a3(v4);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_2_13();
    return a3(v6);
  }
}

BOOL @objc AceObject.isRestartable()(void *a1)
{
  v1 = a1;
  v2 = AceObject.isRestartable()();

  return v2;
}

Swift::String_optional __swiftcall AceObject.sessionRequestId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t @objc AceObject.setSessionRequestId(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }
}

uint64_t (*protocol witness for SessionObject.internalAceId.modify in conformance AceObject(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = *v1;
  a1[2] = *v1;
  *a1 = outlined bridged method (pb) of @objc AceObject.aceId.getter(v3, &selRef_aceId);
  a1[1] = v4;
  return AceObject.internalAceId.modify;
}

uint64_t (*protocol witness for SessionObject.internalRefId.modify in conformance AceObject(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = *v1;
  a1[2] = *v1;
  *a1 = outlined bridged method (pb) of @objc AceObject.aceId.getter(v3, &selRef_refId);
  a1[1] = v4;
  return AceObject.internalRefId.modify;
}

id protocol witness for SessionObject.serializedAceData() in conformance AceObject()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v6[0] = 0;
  v2 = [v1 serializedAceDataAndReturnError_];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

void protocol witness for SessionObject.setSessionRequestId(_:) in conformance AceObject(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = MEMORY[0x223DE2070](a1);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setSessionRequestId_];
}

Swift::String_optional __swiftcall SARollbackRequest.sessionRequestId()()
{
  v1 = outlined bridged method (pb) of @objc AceObject.aceId.getter(v0, &selRef_requestId);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t @objc SARollbackRequest.setSessionRequestId(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a1;
  v7 = OUTLINED_FUNCTION_2_13();
  a4(v7);
}

Swift::String_optional __swiftcall SASSpeechCorrectionStatistics.sessionRequestId()()
{
  v1 = outlined bridged method (pb) of @objc AceObject.aceId.getter(v0, &selRef_interactionId);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

id @objc SARollbackRequest.sessionRequestId()(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x223DE2070](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void SARollbackRequest.setSessionRequestId(_:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  if (a2)
  {
    v5 = MEMORY[0x223DE2070](a1);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v3 *a3];
}

uint64_t specialized Data.InlineData.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for DispatchData();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = a1;
  v12 = WORD2(a2);
  v11 = a2;
  DispatchData.init(bytes:)();
  v8 = DispatchData._bridgeToObjectiveC()();
  (*(v5 + 8))(v7, v4);
  return v8;
}

{
  v13 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for DispatchData();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = a1;
  v12 = WORD2(a2);
  v11 = a2;
  DispatchData.init(bytes:)();
  v8 = DispatchData._bridgeToObjectiveC()();
  (*(v5 + 8))(v7, v4);
  return v8;
}

{
  v13 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for DispatchData();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = a1;
  v12 = WORD2(a2);
  v11 = a2;
  DispatchData.init(bytes:)();
  v8 = DispatchData._bridgeToObjectiveC()();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t outlined bridged method (pb) of @objc AceObject.aceId.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

Swift::Int __swiftcall PingInfo.totalPingCount()()
{
  OUTLINED_FUNCTION_0_26(v0);
  v2 = *(*(v1 + 32) + 16);
  v3 = *(v1 + 16);
  result = v2 + v3;
  if (__OFADD__(v2, v3))
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall NetworkManager.acquireWiFiAssertion(wifiAssertionType:)(SiriNetwork::WiFiAssertionType wifiAssertionType)
{
  v2 = wifiAssertionType;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_1();
  v5 = *v2;
  v6 = *(v1 + OBJC_IVAR___SNNetworkManagerInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v5;
  v19 = partial apply for closure #1 in NetworkManager.acquireWiFiAssertion(wifiAssertionType:);
  v20 = v8;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v17 = v9;
  v18 = &block_descriptor_10_0;
  v10 = _Block_copy(aBlock);
  v11 = v6;

  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_3();
  _Block_release(v10);

  v12 = OUTLINED_FUNCTION_7_10();
  v13(v12);
  v14 = OUTLINED_FUNCTION_5_4();
  v15(v14);
}

void closure #1 in NetworkManager.acquireWiFiAssertion(wifiAssertionType:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___SNNetworkManagerInternal_networkWiFiManager);
    v7 = a2;
    v6 = v5;
    NetworkWiFiManager.acquireWiFiAssertion(wifiAssertionType:)(&v7);
  }
}

void closure #1 in closure #1 in NetworkManager.updateNetworkPerformanceFeed()(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriNetwork);
    v8 = a2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28[0] = v12;
      *v11 = 136315138;
      if (a2)
      {
        v27 = a2;
        v13 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v14 = String.init<A>(describing:)();
        v16 = v15;
      }

      else
      {
        v16 = 0xE300000000000000;
        v14 = 7104878;
      }

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v28);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_223515000, v9, v10, "NetworkManager - PerformanceFeed: Historical data for WiFi. Error: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x223DE38F0](v12, -1, -1);
      MEMORY[0x223DE38F0](v11, -1, -1);
    }

    LOBYTE(v27) = 0;
    if (a1)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      v19 = a1;
    }

    else
    {
      v19 = 0;
      v18 = 0;
      v28[1] = 0;
      v28[2] = 0;
    }

    v28[0] = v19;
    v28[3] = v18;

    v20 = NetworkManager.acceptableSuccessRate(fullScorecard:hasMetrics:)(v28, &v27);
    outlined destroy of Any?(v28);
    v21 = v27;
    v22 = OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality;
    [*&v6[OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality] lock];
    if (v21 == 1)
    {
      v6[OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport + 2] = (v20 & 1) == 0;
      [*&v6[v22] unlock];
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 67109120;
        *(v25 + 4) = v20 & 1;
        _os_log_impl(&dword_223515000, v23, v24, "NetworkManager - PerformanceFeed: Symptoms WiFi Historical: %{BOOL}d", v25, 8u);
        MEMORY[0x223DE38F0](v25, -1, -1);
      }
    }

    else
    {
      v6[OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport + 2] = 2;
      v26 = *&v6[v22];
      [v26 unlock];
    }
  }
}

void closure #1 in closure #2 in NetworkManager.updateNetworkPerformanceFeed()(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriNetwork);
    v8 = a2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28[0] = v12;
      *v11 = 136315138;
      if (a2)
      {
        v27 = a2;
        v13 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v14 = String.init<A>(describing:)();
        v16 = v15;
      }

      else
      {
        v16 = 0xE300000000000000;
        v14 = 7104878;
      }

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v28);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_223515000, v9, v10, "NetworkManager - PerformanceFeed: Historical data for Cell. Error: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x223DE38F0](v12, -1, -1);
      MEMORY[0x223DE38F0](v11, -1, -1);
    }

    LOBYTE(v27) = 0;
    if (a1)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      v19 = a1;
    }

    else
    {
      v19 = 0;
      v18 = 0;
      v28[1] = 0;
      v28[2] = 0;
    }

    v28[0] = v19;
    v28[3] = v18;

    v20 = NetworkManager.acceptableSuccessRate(fullScorecard:hasMetrics:)(v28, &v27);
    outlined destroy of Any?(v28);
    v21 = v27;
    v22 = OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality;
    [*&v6[OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality] lock];
    if (v21 == 1)
    {
      v6[OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport + 3] = (v20 & 1) == 0;
      [*&v6[v22] unlock];
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 67109120;
        *(v25 + 4) = v20 & 1;
        _os_log_impl(&dword_223515000, v23, v24, "NetworkManager - PerformanceFeed: Symptoms Cellular Historical: %{BOOL}d", v25, 8u);
        MEMORY[0x223DE38F0](v25, -1, -1);
      }
    }

    else
    {
      v6[OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport + 3] = 2;
      v26 = *&v6[v22];
      [v26 unlock];
    }
  }
}

uint64_t NetworkManager.networkQuality(networkType:)(uint64_t a1)
{
  v2 = NetworkManager.currentConnectionQualityReport()();
  v3 = v2;
  if (!a1)
  {
    return qword_2235F19C0[v3];
  }

  if (a1 == 1)
  {
    v3 = v2 >> 8;
    return qword_2235F19C0[v3];
  }

  if (a1 != 2)
  {
    return 0;
  }

  result = 1;
  if (v3)
  {
    v5 = v3 >> 8;
    v6 = BYTE1(v3) == 1 || v3 == 1;
    v7 = 2;
    if (!v6)
    {
      v7 = 0;
    }

    if (v5)
    {
      return v7;
    }
  }

  return result;
}

uint64_t static ConnectionTCPInfoMetrics.connectionTCPInfoMetrics(from:wasConnected:)(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  outlined init with copy of NetworkConnectionProtocol?(a1, v7);
  if (!v8)
  {
    outlined destroy of ConnectionSnapshotReport?(v7, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
  v2 = type metadata accessor for NWConnection();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  MEMORY[0x223DE1A50]();
  nw_connection_copy_tcp_info();
  swift_unknownObjectRelease();
  v8 = v2;
  v9 = &protocol witness table for NWConnection;
  v7[0] = v6;

  static ConnectionTCPInfoMetrics.connectionCopyTCPInfo(from:wasConnected:xpcTCPInfo:)();
  v4 = v3;
  swift_unknownObjectRelease();

  outlined destroy of ConnectionSnapshotReport?(v7, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  return v4;
}

void static ConnectionTCPInfoMetrics.connectionCopyTCPInfo(from:wasConnected:xpcTCPInfo:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for NWInterface.InterfaceType();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  v12 = v11 - v10;
  v13 = type metadata accessor for NWInterface();
  OUTLINED_FUNCTION_0_0();
  v110 = v14;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v87 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v87 - v22;
  if ((v3 & 1) == 0)
  {
    goto LABEL_13;
  }

  outlined init with copy of NetworkConnectionProtocol?(v5, &v113);
  if (!v115)
  {
    outlined destroy of ConnectionSnapshotReport?(&v113, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
  type metadata accessor for NWConnection();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    OUTLINED_FUNCTION_47();
    return;
  }

  v106 = v6;
  v24 = v111;
  v113._countAndFlagsBits = NWConnection.identifier.getter();
  countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v107 = v26;
  if (!v1)
  {
LABEL_7:
    if (one-time initialization token for siriNetwork != -1)
    {
LABEL_60:
      OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.siriNetwork);
    v30 = v107;

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = countAndFlagsBits;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v113._countAndFlagsBits = v35;
      *v34 = 136315138;
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v30, &v113._countAndFlagsBits);

      *(v34 + 4) = v36;
      _os_log_impl(&dword_223515000, v31, v32, "NetworkMetrics: TCP Info not reachable for connection %s because path doesn't exist", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    else
    {
    }

    goto LABEL_13;
  }

  v27 = swift_unknownObjectRetain();
  v28 = MEMORY[0x223DE3B00](v27);
  if (v28 != XPC_TYPE_DICTIONARY.getter() || xpc_dictionary_get_count(v1) < 1)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v92 = countAndFlagsBits;
  v118 = MEMORY[0x277D84F98];
  v37 = swift_allocObject();
  *(v37 + 16) = &v118;
  v38 = swift_allocObject();
  *(v38 + 16) = partial apply for closure #1 in static ConnectionTCPInfoMetrics.connectionCopyTCPInfo(from:wasConnected:xpcTCPInfo:);
  *(v38 + 24) = v37;
  v94 = v37;
  v116 = partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool);
  v117 = v38;
  v113._countAndFlagsBits = MEMORY[0x277D85DD0];
  v113._object = 1107296256;
  v114 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool);
  v115 = &block_descriptor_9;
  v39 = _Block_copy(&v113);
  v104 = v1;

  v40 = v104;

  xpc_dictionary_apply(v40, v39);
  _Block_release(v39);
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if (v39)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (!*(v118 + 16))
  {

    swift_unknownObjectRelease();

    goto LABEL_13;
  }

  NWConnection.currentPath.getter();
  countAndFlagsBits = type metadata accessor for NWPath();
  if (__swift_getEnumTagSinglePayload(v23, 1, countAndFlagsBits) == 1)
  {
    outlined destroy of ConnectionSnapshotReport?(v23, &_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
    goto LABEL_53;
  }

  v90 = v24;
  v41 = NWPath.availableInterfaces.getter();
  (*(*(countAndFlagsBits - 8) + 8))(v23, countAndFlagsBits);
  v103 = *(v41 + 16);
  if (!v103)
  {
LABEL_52:

LABEL_53:

    static ConnectionTCPInfoMetrics.setConnectionMetricsTCPInfo(_:from:)();
    v8 = v78;

    v12 = v107;
    if (one-time initialization token for siriNetwork == -1)
    {
LABEL_54:
      v79 = type metadata accessor for Logger();
      __swift_project_value_buffer(v79, static Logger.siriNetwork);

      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v113._countAndFlagsBits = swift_slowAlloc();
        *v82 = 136315394;
        v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v12, &v113._countAndFlagsBits);

        *(v82 + 4) = v83;
        *(v82 + 12) = 2080;
        v84 = MEMORY[0x223DE2280](v8, &type metadata for ConnectionTCPInfoMetrics);
        v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &v113._countAndFlagsBits);

        *(v82 + 14) = v86;
        _os_log_impl(&dword_223515000, v80, v81, "NetworkMetrics: TCP Info by interface for connection %s: %s", v82, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {
      }

      swift_unknownObjectRelease();

      goto LABEL_13;
    }

LABEL_63:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
    goto LABEL_54;
  }

  v42 = 0;
  OUTLINED_FUNCTION_9_7();
  v102 = v43;
  v100 = v44 + 32;
  v101 = v44 + 16;
  v99 = (v8 + 11);
  v98 = *MEMORY[0x277CD8CB0];
  v95 = *MEMORY[0x277CD8CA8];
  v93 = *MEMORY[0x277CD8CB8];
  v91 = *MEMORY[0x277CD8CA0];
  v97 = v44 + 8;
  v88 = (v8 + 1);
  v8 = MEMORY[0x277D84F98];
  v89 = *MEMORY[0x277CD8CC0];
  v96 = v41;
  while (1)
  {
    if (v42 >= *(v41 + 16))
    {
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    countAndFlagsBits = v110;
    v45 = (*(v110 + 16))(v20, v102 + *(v110 + 72) * v42, v13);
    v108 = MEMORY[0x223DE1820](v45);
    v109 = v46;
    (*(countAndFlagsBits + 32))(v18, v20, v13);
    NWInterface.type.getter();
    (*v99)(v12, v106);
    OUTLINED_FUNCTION_7_12();
    if (v52)
    {
LABEL_25:
      MEMORY[0x223DE1820]();
      v47 = String.lowercased()();
      countAndFlagsBits = v47._countAndFlagsBits;

      v113 = v47;
      v111 = 0x6365737069;
      v112 = 0xE500000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v48 = StringProtocol.contains<A>(_:)();

      v49 = OUTLINED_FUNCTION_0_27();
      v50(v49);
      if (v48)
      {
        countAndFlagsBits_low = 24;
      }

      else
      {
        countAndFlagsBits_low = 0;
      }

      goto LABEL_39;
    }

    OUTLINED_FUNCTION_7_12();
    if (v52)
    {
      v53 = OUTLINED_FUNCTION_0_27();
      v54(v53);
      countAndFlagsBits_low = 1;
LABEL_39:
      v105 = countAndFlagsBits_low;
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_7_12();
    if (v55)
    {
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_4_11();
        swift_once();
      }

      NetworkManager.connectionTechnologyForCellularInterface()();
      v56 = OUTLINED_FUNCTION_0_27();
      v57(v56);
      countAndFlagsBits_low = LOBYTE(v113._countAndFlagsBits);
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_7_12();
    if (v58)
    {
      v59 = OUTLINED_FUNCTION_0_27();
      v60(v59);
      countAndFlagsBits_low = 23;
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_7_12();
    if (v75)
    {
      goto LABEL_25;
    }

    v76 = OUTLINED_FUNCTION_0_27();
    v77(v76);
    (*v88)(v12, v106);
    v105 = 0;
LABEL_40:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v113._countAndFlagsBits = v8;
    v62 = specialized __RawDictionaryStorage.find<A>(_:)(v108, v109);
    v64 = v8[2];
    v65 = (v63 & 1) == 0;
    v66 = v64 + v65;
    if (__OFADD__(v64, v65))
    {
      goto LABEL_59;
    }

    countAndFlagsBits = v62;
    v67 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS11SiriNetwork14ConnectionTypeOGMd, &_ss17_NativeDictionaryVySS11SiriNetwork14ConnectionTypeOGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v66))
    {
      break;
    }

LABEL_44:
    v41 = v96;
    if (v67)
    {

      v8 = v113._countAndFlagsBits;
      *(*(v113._countAndFlagsBits + 56) + countAndFlagsBits) = v105;
    }

    else
    {
      v8 = v113._countAndFlagsBits;
      *(v113._countAndFlagsBits + 8 * (countAndFlagsBits >> 6) + 64) |= 1 << countAndFlagsBits;
      v70 = (v8[6] + 16 * countAndFlagsBits);
      v71 = v109;
      *v70 = v108;
      v70[1] = v71;
      *(v8[7] + countAndFlagsBits) = v105;
      v72 = v8[2];
      v73 = __OFADD__(v72, 1);
      v74 = v72 + 1;
      if (v73)
      {
        __break(1u);
        goto LABEL_62;
      }

      v8[2] = v74;
    }

    if (v103 == ++v42)
    {
      goto LABEL_52;
    }
  }

  v68 = specialized __RawDictionaryStorage.find<A>(_:)(v108, v109);
  if ((v67 & 1) == (v69 & 1))
  {
    countAndFlagsBits = v68;
    goto LABEL_44;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}