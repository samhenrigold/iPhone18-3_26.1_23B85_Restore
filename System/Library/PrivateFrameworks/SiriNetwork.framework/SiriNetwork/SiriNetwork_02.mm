uint64_t Connection.getSNConnectionMetrics(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v6 = OUTLINED_FUNCTION_32();
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v6, v7);
  Connection.getConnectionMetrics(_:with:)();
}

void Connection.getConnectionMetrics(_:with:)()
{
  OUTLINED_FUNCTION_46();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v60 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_1();
  v14 = v13 - v12;
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0_0();
  v58 = v16;
  v59 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v17 = type metadata accessor for String.Encoding();
  v18 = OUTLINED_FUNCTION_11_1(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_1();
  dispatch_queue_get_label(0);
  static String.Encoding.utf8.getter();
  v19 = String.init(cString:encoding:)();
  v21 = v20;
  if ((v8 & 1) == 0)
  {

    OUTLINED_FUNCTION_109();
    v30 = swift_allocObject();
    v30[2] = v2;
    v30[3] = v6;
    v30[4] = v4;
    v62[4] = partial apply for closure #2 in Connection.getConnectionMetrics(_:with:);
    OUTLINED_FUNCTION_17_8(v30);
    v62[1] = 1107296256;
    OUTLINED_FUNCTION_3_5();
    v62[2] = v31;
    v62[3] = &block_descriptor_43_0;
    v32 = _Block_copy(v62);
    v33 = v2;
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v6, v4);
    static DispatchQoS.unspecified.getter();
    v61[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_1_24();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(v34, v35, MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2460](0, v1, v14, v32);
    _Block_release(v32);
    (*(v60 + 8))(v14, v9);
    (*(v58 + 8))(v1, v59);

    goto LABEL_26;
  }

  v22 = v19;
  v23 = *&v2[OBJC_IVAR___SNConnectionInternal_connectionQueue];
  v24 = OS_dispatch_queue.label.getter();
  if (v21)
  {
    v26 = v22 == v24 && v21 == v25;
    v27 = v4;
    v28 = v6;
    if (v26)
    {
      goto LABEL_17;
    }

    v29 = OUTLINED_FUNCTION_72_1(v22, v21, v24);

    if (v29)
    {
      goto LABEL_18;
    }
  }

  else
  {

    v27 = v4;
    v28 = v6;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v36, static Logger.siriNetwork);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  v39 = OUTLINED_FUNCTION_16_0();
  if (os_log_type_enabled(v39, v40))
  {
    OUTLINED_FUNCTION_17_5();
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_223515000, v37, v38, "Connection - Get Connection Metrics: synchronously", v41, 2u);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  OUTLINED_FUNCTION_109();
  v42 = swift_allocObject();
  v42[2] = v2;
  v42[3] = v28;
  v42[4] = v27;
  OUTLINED_FUNCTION_3();
  v43 = swift_allocObject();
  *(v43 + 16) = partial apply for closure #1 in Connection.getConnectionMetrics(_:with:);
  *(v43 + 24) = v42;
  v62[4] = thunk for @callee_guaranteed () -> ()partial apply;
  OUTLINED_FUNCTION_17_8(v43);
  v62[1] = 1107296256;
  OUTLINED_FUNCTION_5_9();
  v62[2] = v44;
  v62[3] = &block_descriptor_53;
  v45 = _Block_copy(v62);
  v46 = v2;
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v28, v27);

  dispatch_sync(v23, v45);
  _Block_release(v45);
  LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

  if (v45)
  {
    __break(1u);
LABEL_17:

LABEL_18:
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v47, static Logger.siriNetwork);
    v48 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v49 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v49, v50))
    {
      OUTLINED_FUNCTION_17_5();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_52_5();
      _os_log_impl(v51, v52, v53, v54, v55, 2u);
      v56 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v56);
    }

    if (Connection.activeOrAnyPendingConnection()())
    {
      OUTLINED_FUNCTION_8();
      swift_beginAccess();

      BackgroundConnection.getConnectionMetrics(connectionMethodHistory:with:)(v57);
    }

    else if (v28)
    {
      _s11SiriNetwork17ConnectionMetricsVSgWOi0_(v62);
      memcpy(v61, v62, 0x599uLL);
      v28(v61);
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_47();
}

uint64_t outlined destroy of WiFiRecord?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork10WiFiRecordVSgMd, &_s11SiriNetwork10WiFiRecordVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of MessageCenterActorWrapper(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13_4();
  v4 = OUTLINED_FUNCTION_14_3();
  v5(v4);
  return a2;
}

uint64_t _s11SiriNetwork25MessageCenterActorWrapperVWObTm_0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_53_1();
  v4(v3);
  OUTLINED_FUNCTION_71();
  v5 = OUTLINED_FUNCTION_14_3();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_118()
{
}

BOOL OUTLINED_FUNCTION_118_0()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t OUTLINED_FUNCTION_124@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v4 + a3, v3, a1, a2);
}

void *OUTLINED_FUNCTION_124_0()
{

  return memcpy(&STACK[0x860], &STACK[0x10C8], 0x599uLL);
}

id OUTLINED_FUNCTION_128()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_97_0()
{

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_97_1(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t closure #2 in Connection.getConnectionMetrics(_:with:)(uint64_t a1, uint64_t (*a2)(_BYTE *))
{
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
    *v6 = 0;
    _os_log_impl(&dword_223515000, v4, v5, "Connection - Get Connection Metrics: async", v6, 2u);
    MEMORY[0x223DE38F0](v6, -1, -1);
  }

  result = Connection.activeOrAnyPendingConnection()();
  if (result)
  {
    swift_beginAccess();

    BackgroundConnection.getConnectionMetrics(connectionMethodHistory:with:)(v8);
  }

  else if (a2)
  {
    _s11SiriNetwork17ConnectionMetricsVSgWOi0_(__src);
    memcpy(v9, __src, 0x599uLL);
    return a2(v9);
  }

  return result;
}

uint64_t BackgroundConnection.getConnectionMetrics(connectionMethodHistory:with:)(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v3 = v1;
  v5 = v4;
  v84 = v6;
  v7 = *&v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork10WiFiRecordVSgMd, &_s11SiriNetwork10WiFiRecordVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v81 - v9;
  v11 = type metadata accessor for WiFiRecord(0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_1();
  v15 = (v14 - v13);
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v16, static Logger.siriNetwork);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_15_1(v18))
  {
    v19 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_40_2(v19);
    OUTLINED_FUNCTION_40_6();
    _os_log_impl(v20, v21, v22, v23, v24, 2u);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  v25 = *(v3 + 1232);
  v26 = __CFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    v90 = v7;
    v7 = COERCE_DOUBLE(v177);
    *(v3 + 1232) = v27;
    v98 = swift_allocObject();
    ConnectionMetrics.init()(v98 + 16);
    _s11SiriNetwork010ConnectionB6ReportVSgWOi0_(v185);
    memcpy(v184, v185, sizeof(v184));
    _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(v186);
    result = memcpy(v181, v186, sizeof(v181));
    if (one-time initialization token for sharedNetworkAnalytics == -1)
    {
      goto LABEL_7;
    }
  }

  result = swift_once();
LABEL_7:
  v29 = static NetworkAnalytics.sharedNetworkAnalytics;
  *(*&v7 + 1008) = 1;
  *(*&v7 + 1000) = 1;
  LOBYTE(v175[0]) = 1;
  v174[0] = 1;
  LOBYTE(v173[0]) = 1;
  LOBYTE(v158) = 1;
  v179[0] = 1;
  v178[0] = 1;
  LOBYTE(v177[0]) = 1;
  LOBYTE(v99) = 1;
  *(*&v7 + 992) = 1;
  *(*&v7 + 984) = 1;
  *(*&v7 + 976) = 1;
  *(*&v7 + 968) = 1;
  v30 = 0.0;
  v31 = *(v3 + 1208);
  v32 = *(v3 + 1192);
  v33 = 0.0;
  *(*&v7 + 960) = 1;
  if (v32 < v31)
  {
    v33 = v31 - v32;
    *(*&v7 + 992) = 0;
  }

  v34 = *(v3 + 1216);
  if (v32 < v34)
  {
    v30 = v34 - v32;
    *(*&v7 + 984) = 0;
  }

  v95 = *(v3 + 1224);
  if (HIDWORD(v95))
  {
    __break(1u);
    goto LABEL_36;
  }

  v83 = v5;
  v93 = LOBYTE(v177[0]);
  v94 = v99;
  *(*&v7 + 1008) = 0;
  v35 = *(v3 + 1144);
  v92 = v29;
  if (v35)
  {
    v36 = *&v35[OBJC_IVAR___SNNetworkManagerInternal_carrierName];
    v96 = *&v35[OBJC_IVAR___SNNetworkManagerInternal_carrierName + 8];
    v97 = v36;

    v37 = v29;
    v38 = v35;

    v39 = 0.0;
    if ((v38[OBJC_IVAR___SNNetworkManagerInternal_lastSignalStrength + 8] & 1) == 0)
    {
      v39 = *&v38[OBJC_IVAR___SNNetworkManagerInternal_lastSignalStrength];
      *(*&v7 + 1000) = 0;
    }

    v40 = *&v38[OBJC_IVAR___SNNetworkManagerInternal_networkWiFiManager];
    NetworkWiFiManager.getWiFiRecord()(v10);

    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      outlined destroy of NetworkConnectionProtocol?(v10, &_s11SiriNetwork10WiFiRecordVSgMd, &_s11SiriNetwork10WiFiRecordVSgMR);
      v41 = 0;
      v42 = 0;
      LODWORD(v35) = 0;
      v43 = 0.0;
    }

    else
    {
      _s11SiriNetwork25MessageCenterActorWrapperVWObTm_0(v10, v15);
      *(*&v7 + 968) = 0;
      v91 = vcvtq_f64_s64(*v15);
      *(*&v7 + 976) = 0;
      v43 = v15[1].i64[0];
      *(*&v7 + 960) = 0;
      LODWORD(v35) = v15[3].u8[8];
      v41 = v15[2].i64[1];
      v42 = v15[3].i64[0];

      outlined destroy of WiFiRecord(v15);
    }

    v29 = v92;
    v46 = v96;
    v45 = v97;
  }

  else
  {
    v44 = v29;
    v45 = 0;
    v46 = 0;
    v41 = 0;
    v42 = 0;
    v39 = 0.0;
    v43 = 0.0;
  }

  LODWORD(v177[0]) = v95;
  BYTE4(v177[0]) = *(*&v7 + 1008);
  *(*&v7 + 5) = v199;
  HIBYTE(v177[0]) = v200;
  v96 = v46;
  v97 = v45;
  v177[1] = v45;
  v177[2] = v46;
  *&v177[3] = v39;
  LOBYTE(v177[4]) = *(*&v7 + 1000);
  *(*&v7 + 33) = *v198;
  HIDWORD(v177[4]) = *&v198[3];
  v177[5] = v41;
  v177[6] = v42;
  LODWORD(v177[11]) = 0;
  *(*&v7 + 72) = 0u;
  *(*&v7 + 56) = 0u;
  BYTE4(v177[11]) = 1;
  *(*&v7 + 93) = v196;
  HIBYTE(v177[11]) = v197;
  LODWORD(v177[12]) = 0;
  BYTE4(v177[12]) = 1;
  *(*&v7 + 101) = v194;
  HIBYTE(v177[12]) = v195;
  v177[13] = MEMORY[0x277D84F98];
  memset(&v177[14], 0, 24);
  LOBYTE(v177[17]) = 1;
  HIDWORD(v177[17]) = *&v193[3];
  *(*&v7 + 137) = *v193;
  v177[18] = 0;
  LOBYTE(v177[19]) = 1;
  HIDWORD(v177[19]) = *&v192[3];
  *(*&v7 + 153) = *v192;
  v177[20] = 0;
  LOBYTE(v177[21]) = 1;
  HIDWORD(v177[21]) = *&v191[3];
  *(*&v7 + 169) = *v191;
  v177[22] = 0;
  LOBYTE(v177[23]) = 1;
  HIDWORD(v177[23]) = *&v190[3];
  *(*&v7 + 185) = *v190;
  v177[24] = 0;
  LOBYTE(v177[25]) = v93;
  HIDWORD(v177[25]) = *&v189[3];
  *(*&v7 + 201) = *v189;
  v177[26] = 0;
  LOBYTE(v177[27]) = v94;
  HIDWORD(v177[27]) = *&v188[3];
  *(*&v7 + 217) = *v188;
  v177[29] = 0;
  v177[28] = 0;
  *&v177[30] = v33;
  v87 = *(*&v7 + 992);
  LOBYTE(v177[31]) = v87;
  HIDWORD(v177[31]) = *&v187[3];
  *(*&v7 + 249) = *v187;
  *&v177[32] = v30;
  v86 = *(*&v7 + 984);
  LOBYTE(v177[33]) = v86;
  v89 = v35;
  BYTE1(v177[33]) = v35;
  OUTLINED_FUNCTION_115_1(v177);
  HIWORD(v177[33]) = v47;
  v85 = v48.f64[0];
  v177[34] = *&v48.f64[0];
  LOBYTE(v177[35]) = *(*&v7 + 976);
  v50 = *(v180 + 3);
  *(v49 + 281) = v180[0];
  HIDWORD(v177[35]) = v50;
  v91 = v48;
  *(v49 + 288) = v48.f64[1];
  LOBYTE(v177[37]) = *(*&v7 + 968);
  OUTLINED_FUNCTION_114_1(v49);
  HIDWORD(v177[37]) = v51;
  *&v177[38] = v43;
  LOBYTE(v177[39]) = *(*&v7 + 960);
  memcpy(v178, v177, sizeof(v178));
  destructiveProjectEnumData for ConnectionConfigurationError();
  OUTLINED_FUNCTION_98_1(v179);
  outlined init with copy of ConnectionNetworkReport(v177, v175);
  outlined destroy of NetworkConnectionProtocol?(v179, &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
  memcpy(v184, v178, sizeof(v184));
  OUTLINED_FUNCTION_40_1(v3 + 1096, &v176);
  outlined init with copy of MessageCenterBrowserProtocol?(v3 + 1096, v175, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  v52 = *&v175[3];
  v88 = v42;
  if (v175[3])
  {
    v53 = v175[4];
    __swift_project_boxed_opaque_existential_1(v175, v175[3]);
    v54 = (*(v53 + 40))(COERCE_FLOAT64_T(*&v52), v53);
    outlined destroy of NetworkConnectionProtocol?(v175, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    if (v54)
    {
      v55 = v41;
      result = Double.milliseconds.getter(*(v54 + 24));
      v56 = *(v54 + 16);
      if ((v56 & 0x8000000000000000) != 0)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (HIDWORD(v56))
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v57 = result;
      v58 = PingInfo.numberOfUnacknowledgedPings()();

      if ((v58 & 0x8000000000000000) != 0)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v59 = HIDWORD(v58);
      if (HIDWORD(v58))
      {
LABEL_40:
        __break(1u);
        return result;
      }

      v60 = v57;
      *&v52 = v56 | (v58 << 32);
      v29 = v92;
      v41 = v55;
    }

    else
    {
      v52 = 0.0;
      LOBYTE(v59) = 1;
      v60 = 0.0;
      v29 = v92;
    }
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(v175, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    LOBYTE(v59) = 1;
    v60 = 0.0;
  }

  v182 = v59;
  LODWORD(v173[0]) = 0;
  v173[1] = 0;
  v173[2] = 0xE000000000000000;
  v173[3] = 0;
  v173[4] = 0xE000000000000000;
  OUTLINED_FUNCTION_98_1(&v173[5]);
  *(&v173[44] + 1) = *v183;
  HIDWORD(v173[44]) = *&v183[3];
  *&v173[45] = v60;
  *&v173[46] = v52;
  LOBYTE(v173[47]) = v182;
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_108_1();
  HIDWORD(v173[84]) = v61;
  v173[85] = MEMORY[0x277D84F90];
  v173[86] = MEMORY[0x277D84F90];
  LODWORD(v173[87]) = 4;
  v173[88] = v29;
  memcpy(v174, v173, sizeof(v174));
  destructiveProjectEnumData for ConnectionConfigurationError();
  v62 = v98;
  memcpy(v175, (v98 + 584), sizeof(v175));
  memcpy((v98 + 584), v174, 0x2C8uLL);
  outlined init with copy of ConnectionSnapshotReport(v173, &v158);
  outlined destroy of NetworkConnectionProtocol?(v175, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
  *(v62 + 32) = v90;

  v63 = *(v3 + 1232);
  if (HIDWORD(v63))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v64 = v91.f64[1];
  v65 = v98;
  *(v98 + 64) = v63;
  *(v65 + 68) = 0;
  if (*(v3 + 1080))
  {
    v90 = v64;
    v91.f64[0] = v52;
    v66 = *(v3 + 1088);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_7_1();
    v67 = swift_allocObject();
    swift_weakInit();
    v68 = swift_allocObject();
    v69 = v98;
    v68[2] = v67;
    v68[3] = v69;
    v70 = v41;
    v72 = v83;
    v71 = v84;
    v68[4] = v84;
    v68[5] = v72;
    v81[0] = *(v66 + 528);
    v81[1] = v66 + 528;
    swift_unknownObjectRetain();

    v73 = v71;
    v41 = v70;
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v73, v72);
    v74 = v66;
    v52 = v91.f64[0];
    (v81[0])(partial apply for closure #1 in BackgroundConnection.getConnectionMetrics(connectionMethodHistory:with:), v68, ObjectType, v74);
    v7 = COERCE_DOUBLE(v177);
    v29 = v92;

    swift_unknownObjectRelease();
  }

  v99 = v95;
  v100 = *(*&v7 + 1008);
  v101 = v199;
  v102 = v200;
  v103 = v97;
  v104 = v96;
  v105 = v39;
  v106 = *(*&v7 + 1000);
  *v107 = *v198;
  *&v107[3] = *&v198[3];
  v108 = v41;
  v109 = v88;
  v112 = 0;
  v110 = 0u;
  v111 = 0u;
  v113 = 1;
  v114 = v196;
  v115 = v197;
  v116 = 0;
  v117 = 1;
  v118 = v194;
  v119 = v195;
  v120 = MEMORY[0x277D84F98];
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v124 = 1;
  *&v125[3] = *&v193[3];
  *v125 = *v193;
  v126 = 0;
  v127 = 1;
  *&v128[3] = *&v192[3];
  *v128 = *v192;
  v129 = 0;
  v130 = 1;
  *&v131[3] = *&v191[3];
  *v131 = *v191;
  v132 = 0;
  v133 = 1;
  *&v134[3] = *&v190[3];
  *v134 = *v190;
  v135 = 0;
  v136 = v93;
  *&v137[3] = *&v189[3];
  *v137 = *v189;
  v138 = 0;
  v139 = v94;
  *&v140[3] = *&v188[3];
  *v140 = *v188;
  v141 = 0;
  v142 = 0;
  v143 = v33;
  v144 = v87;
  *&v145[3] = *&v187[3];
  *v145 = *v187;
  v146 = v30;
  v147 = v86;
  v148 = v89;
  OUTLINED_FUNCTION_115_1(&v99);
  v149 = v75;
  v150 = v85;
  v151 = *(*&v7 + 976);
  v77 = *(v180 + 3);
  *(v76 + 281) = v180[0];
  v152 = v77;
  v153 = v78;
  v154 = *(*&v7 + 968);
  OUTLINED_FUNCTION_114_1(v76);
  v155 = v79;
  v156 = v43;
  v157 = *(*&v7 + 960);
  outlined destroy of ConnectionNetworkReport(&v99);
  v158 = 0;
  v159 = 0;
  v160 = 0xE000000000000000;
  v161 = 0;
  v162 = 0xE000000000000000;
  OUTLINED_FUNCTION_98_1(&v163);
  *v164 = *v183;
  *&v164[3] = *&v183[3];
  v165 = v60;
  v166 = v52;
  v167 = v182;
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_108_1();
  v168 = v80;
  v169 = MEMORY[0x277D84F90];
  v170 = MEMORY[0x277D84F90];
  v171 = 4;
  v172 = v29;
  outlined destroy of ConnectionSnapshotReport(&v158);
}

uint64_t sub_22353C0A4()
{

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 448))
  {

    if (*(v0 + 160))
    {

      if (*(v0 + 200) != 1)
      {
      }
    }
  }

  if (*(v0 + 528))
  {
  }

  if (*(v0 + 600))
  {

    if (*(v0 + 728))
    {
    }

    if (*(v0 + 976))
    {

      if (*(v0 + 1016) != 1)
      {
      }
    }
  }

  return MEMORY[0x2821FE8E8](v0, 1449, 7);
}

uint64_t sub_22353C250()
{

  if (*(v0 + 32))
  {
  }

  v1 = OUTLINED_FUNCTION_19_8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t NetworkWiFiManager.getWiFiRecord()@<X0>(uint64_t a1@<X8>)
{
  v3 = 0x6E776F6E6B6E75;
  v4 = type metadata accessor for WiFiRecord(0);
  OUTLINED_FUNCTION_71();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork10WiFiRecordVSgMd, &_s11SiriNetwork10WiFiRecordVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v67 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v64 = &v59 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v59 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v59 - v18;
  __swift_storeEnumTagSinglePayload(&v59 - v18, 1, 1, v4);
  v20 = NetworkWiFiManager.currentNetwork()();
  v62 = v8;
  if (v20)
  {
    v21 = MEMORY[0x223DE2070](5394003, 0xE300000000000000);
    OUTLINED_FUNCTION_5_18();
    IntProperty = WiFiNetworkGetIntProperty();

    v65 = WiFiNetworkIsCaptive() != 0;
    v22 = MEMORY[0x223DE2070](4277059, 0xE300000000000000);
    OUTLINED_FUNCTION_5_18();
    v23 = WiFiNetworkGetIntProperty();

    v24 = MEMORY[0x223DE2070](0x45444F4D5F594850, 0xE800000000000000);
    v25 = WiFiNetworkGetIntProperty();

    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v25))
    {
      v3 = static WiFiPhyModeApple80211.wifiPhyMode(_:)(v25);
      v27 = v26;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    __break(1u);
LABEL_35:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
    goto LABEL_25;
  }

  v65 = 0;
  v23 = 0;
  IntProperty = 0;
  v27 = 0xE700000000000000;
LABEL_6:
  v28 = *(v1 + OBJC_IVAR___SNNetworkWiFiManagerInternal_interface);
  if (!v28)
  {
LABEL_9:

    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
    }

    v31 = type metadata accessor for Logger();
    v32 = OUTLINED_FUNCTION_17(v31, static Logger.siriNetwork);
    v33 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_4_20(v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_223515000, v32, v1, "NetworkWiFiManager - WiFiRecord: Not available device to get WiFiRecord", v34, 2u);
      OUTLINED_FUNCTION_12();
    }

    __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
    return outlined destroy of WiFiRecord?(v19);
  }

  v68 = v4;
  v4 = v28;
  v29 = outlined bridged method (pb) of @objc CWFInterface.ssid()(v4);
  if (v30 >> 60 == 15)
  {

    v4 = v68;
    goto LABEL_9;
  }

  v61 = a1;
  outlined consume of Data?(v29, v30);
  v60 = [v4 RSSI];
  v35 = [v4 CCA];
  v36 = static WiFiPhyModeApple80211.wifiPhyMode(_:)([v4 PHYMode]);
  v38 = v37;
  if (v35)
  {
    v39 = v35;
  }

  else
  {
    v39 = v23;
  }

  v1 = CWFInterface.channelInfo.getter();
  v41 = v40;
  v42 = v36 == 0x6E776F6E6B6E75 && v38 == 0xE700000000000000;
  if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {

    v3 = v36;
    v27 = v38;
  }

  v43 = v68;
  Date.init()();
  v44 = IntProperty;
  *v17 = v60;
  *(v17 + 1) = v44;
  *(v17 + 2) = v39;
  *(v17 + 3) = v1;
  *(v17 + 4) = v41;
  *(v17 + 5) = v3;
  *(v17 + 6) = v27;
  v17[56] = v65;
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v43);
  outlined assign with take of WiFiRecord?(v17, v19);
  v25 = v61;
  if (one-time initialization token for siriNetwork != -1)
  {
    goto LABEL_35;
  }

LABEL_25:
  v45 = type metadata accessor for Logger();
  v46 = OUTLINED_FUNCTION_17(v45, static Logger.siriNetwork);
  v47 = static os_log_type_t.default.getter();
  v48 = OUTLINED_FUNCTION_4_20(v47);
  v49 = v67;
  if (v48)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v69 = v51;
    *v50 = 136315138;
    swift_beginAccess();
    v52 = v64;
    outlined init with copy of WiFiRecord?(v19, v64);
    outlined init with copy of WiFiRecord?(v52, v49);
    if (__swift_getEnumTagSinglePayload(v49, 1, v68) != 1)
    {
      v53 = v63;
      outlined init with take of WiFiRecord(v49, v63);
      outlined init with copy of WiFiRecord(v53, v62);
      OUTLINED_FUNCTION_5_18();
      String.init<A>(describing:)();
      outlined destroy of WiFiRecord(v53);
    }

    outlined destroy of WiFiRecord?(v64);
    v54 = OUTLINED_FUNCTION_5_18();
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v56);

    *(v50 + 4) = v57;
    _os_log_impl(&dword_223515000, v46, v1, "NetworkWiFiManager - WiFiRecord: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v25 = v61;
  }

  else
  {
  }

  swift_beginAccess();
  outlined init with copy of WiFiRecord?(v19, v25);
  return outlined destroy of WiFiRecord?(v19);
}

uint64_t sub_22353C8E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
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

uint64_t Connection.activeOrAnyPendingConnection()()
{
  v1 = *(v0 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection);
  if (!v1)
  {
    OUTLINED_FUNCTION_8();
    swift_beginAccess();

    v1 = specialized Collection.first.getter(v2);

    if (!v1)
    {
      OUTLINED_FUNCTION_8();
      swift_beginAccess();

      v1 = specialized Collection.first.getter(v3);
    }
  }

  return v1;
}

uint64_t NetworkWiFiManager.currentNetwork()()
{
  v1 = WiFiManagerClientCopyDevices();
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
  }

  v3 = type metadata accessor for Logger();
  v4 = OUTLINED_FUNCTION_17(v3, static Logger.siriNetwork);
  v5 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_4_20(v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_223515000, v4, v0, "NetworkWiFiManager - CurrentNetwork: Not available device to get WiFiRecord", v6, 2u);
    OUTLINED_FUNCTION_12();
  }

  return 0;
}

uint64_t outlined bridged method (pb) of @objc CWFInterface.ssid()(void *a1)
{
  v1 = [a1 SSID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t @objc NetworkAnalytics.setNetId(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t OUTLINED_FUNCTION_52_0()
{

  return swift_arrayDestroy();
}

BOOL OUTLINED_FUNCTION_52_2()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t outlined assign with take of WiFiRecord?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork10WiFiRecordVSgMd, &_s11SiriNetwork10WiFiRecordVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22353CE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t outlined init with take of WiFiRecord(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WiFiRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of WiFiRecord(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WiFiRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WiFiRecord(uint64_t a1)
{
  v2 = type metadata accessor for WiFiRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static WiFiPhyModeApple80211.wifiPhyMode(_:)(int a1)
{
  v3 = 0x6E776F6E6B6E75;
  v4 = (a1 & 0x22) == 0;
  if ((a1 & 0x22) != 0)
  {
    v5 = 0x6131312E323038;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if ((a1 & 4) != 0)
  {
    OUTLINED_FUNCTION_1_22();
    v5 = v5 & 0xFFFFFFFFFFFFLL | 0x62000000000000;
  }

  if ((a1 & 8) != 0)
  {

    v5 = 0x6731312E323038;
    if ((a1 & 0x40) == 0)
    {
LABEL_8:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  v5 = 0x6731312E323038;
  if ((a1 & 0x10) == 0)
  {
LABEL_9:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    OUTLINED_FUNCTION_1_22();
    v5 = v5 & 0xFFFFFFFFFFFFLL | 0x6361000000000000;

    goto LABEL_15;
  }

LABEL_13:
  OUTLINED_FUNCTION_1_22();
  v5 = v5 & 0xFFFFFFFFFFFFLL | 0x6E000000000000;

  if ((a1 & 0x80) != 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  if ((a1 & 0x100) != 0)
  {

    v5 = 0x786131312E323038;
  }

  if ((a1 & 0x400) != 0)
  {

    v5 = 0x786131312E323038;
  }

  else
  {
    if (!(!v4 & v1))
    {
      switch(a1)
      {
        case 0:
          goto LABEL_35;
        case 1:
        case 3:
        case 5:
        case 6:
        case 7:
          goto LABEL_27;
        case 2:
          goto LABEL_34;
        case 4:
          OUTLINED_FUNCTION_0_43();
          v3 = 0x62776F6E6B6E75;
          goto LABEL_35;
        case 8:
          goto LABEL_33;
        default:
          JUMPOUT(0);
      }
    }

    switch(a1)
    {
      case 16:
        OUTLINED_FUNCTION_0_43();
        v3 = 0x6E776F6E6B6E75;
        goto LABEL_35;
      case 32:
LABEL_34:
        v3 = 0x6131312E323038;
        goto LABEL_35;
      case 64:
LABEL_33:
        v3 = 0x6731312E323038;
        goto LABEL_35;
      case 128:
        OUTLINED_FUNCTION_0_43();
        v3 = 0x6361776F6E6B6E75;
        goto LABEL_35;
      case 256:
LABEL_28:
        v3 = 0x786131312E323038;
LABEL_35:

        return v3;
    }
  }

LABEL_27:
  if (a1 == 1024)
  {
    goto LABEL_28;
  }

  return v5;
}

uint64_t CWFInterface.channelInfo.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = [v0 channel];
  if (v2)
  {
    v3 = v2;
    if ([v2 channel] < 1)
    {
    }

    else
    {
      v4 = [v3 channel];
      v5 = CWFInterface.frequencyBand.getter();
      [v3 width];
      v1 = static WiFiRecord.channelInfo(channel:frequencyBand:channelInMHz:)(v4, v5, 0xE400000000000000);
    }
  }

  return v1;
}

uint64_t CWFInterface.frequencyBand.getter()
{
  v1 = 2051557183;
  v2 = [v0 channel];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 band];

    if (v4 - 1 <= 2)
    {
      return *&a2ghz[8 * v4 - 8];
    }
  }

  return v1;
}

uint64_t static WiFiRecord.channelInfo(channel:frequencyBand:channelInMHz:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 1)
  {
    return 0x6E776F6E6B6E75;
  }

  _StringGuts.grow(_:)(22);

  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v5);

  MEMORY[0x223DE2180](10272, 0xE200000000000000);
  MEMORY[0x223DE2180](a2, a3);
  OUTLINED_FUNCTION_4();
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v6);

  MEMORY[0x223DE2180](695879757, 0xE400000000000000);
  return 0x206C656E6E616843;
}

uint64_t outlined init with copy of WiFiRecord?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork10WiFiRecordVSgMd, &_s11SiriNetwork10WiFiRecordVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WiFiRecord.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v31[0] = 0x203A69737372;
  v31[1] = 0xE600000000000000;
  v30 = *v0;
  v5 = OUTLINED_FUNCTION_5_22();
  MEMORY[0x223DE2180](v5);

  v28 = v31[1];
  v29 = v31[0];
  v31[0] = 0x203A726E73;
  v31[1] = 0xE500000000000000;
  v30 = v0[1];
  v6 = OUTLINED_FUNCTION_5_22();
  MEMORY[0x223DE2180](v6);

  v26 = v31[1];
  v27 = v31[0];
  v31[0] = 0x203A616363;
  v31[1] = 0xE500000000000000;
  v30 = v0[2];
  v7 = OUTLINED_FUNCTION_5_22();
  MEMORY[0x223DE2180](v7);

  v8 = v31[1];
  v23 = v31[0];
  strcpy(v31, "channelInfo: ");
  HIWORD(v31[1]) = -4864;
  MEMORY[0x223DE2180](v1[3], v1[4]);
  v9 = v31[1];
  v24 = v31[0];
  strcpy(v31, "phyMode: ");
  WORD1(v31[1]) = 0;
  HIDWORD(v31[1]) = -385875968;
  MEMORY[0x223DE2180](v1[5], v1[6]);
  v10 = v31[1];
  v25 = v31[0];
  strcpy(v31, "isCaptive: ");
  HIDWORD(v31[1]) = -352321536;
  if (*(v0 + 56))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v0 + 56))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x223DE2180](v11, v12);

  v13 = v31[1];
  v22 = v31[0];
  strcpy(v31, "timestamp: ");
  HIDWORD(v31[1]) = -352321536;
  type metadata accessor for WiFiRecord(0);
  static Locale.current.getter();
  v14 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v14);
  v15 = Date.description(with:)();
  v17 = v16;
  outlined destroy of Locale?(v4);
  MEMORY[0x223DE2180](v15, v17);

  v19 = v31[0];
  v18 = v31[1];
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  strcpy(v31, "WiFiRecord: ");
  BYTE5(v31[1]) = 0;
  HIWORD(v31[1]) = -5120;
  MEMORY[0x223DE2180](v29, v28);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v27, v26);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v23, v8);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v24, v9);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v25, v10);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v22, v13);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v19, v18);

  return v31[0];
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_126()
{

  return swift_unknownObjectRetain();
}

uint64_t getEnumTagSinglePayload for ConnectionNetworkReport(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 313))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 104);
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

double OUTLINED_FUNCTION_56_3(float a1)
{
  *v1 = a1;

  return result;
}

uint64_t OUTLINED_FUNCTION_56_4(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t Double.milliseconds.getter(double a1)
{
  v1 = a1 * 1000.0;
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

BOOL OUTLINED_FUNCTION_141()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork25ConnectionInterfaceReportVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

Swift::Void __swiftcall NetworkConnectionProvider.updateConnectionMetricsSnapshotReport()()
{
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v1);
  v2 = v0;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of NetworkConnectionProtocol?(v0 + 16, v84, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (v84[3])
  {
    v3 = OUTLINED_FUNCTION_60_0();
    outlined init with take of RPCOspreyConnectionProtocol(v3, &v83);
    OUTLINED_FUNCTION_95(v0 + 56, &v82);
    v4 = OUTLINED_FUNCTION_60_0();
    memcpy(v4, (v0 + 56), 0x599uLL);
    if (*(v84[160] + 16))
    {
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_69();
      outlined init with copy of ConnectionMetrics(v5, v6);
    }

    else
    {
      v10 = OUTLINED_FUNCTION_107();
      __swift_project_boxed_opaque_existential_1(v10, v11);
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_69();
      outlined init with copy of ConnectionMetrics(v12, v13);
      *(v0 + 1336) = NWConnection.getAttemptedEndpoints()();
    }

    v14 = OUTLINED_FUNCTION_107();
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v16 = *(v0 + 2101);
    v17._rawValue = *(v0 + 1336);

    v18 = NWConnection.getConnectionEdgeID(wasConnected:attemptedEndpoints:)(v16, v17);

    *(v0 + 1344) = v18;

    memcpy(__dst, (v0 + 1536), 0x204uLL);
    v19 = OUTLINED_FUNCTION_108();
    memcpy(v19, (v0 + 1536), 0x204uLL);
    v20 = *(v0 + 2100);
    outlined init with copy of ConnectionConfiguration(__dst, v67);
    v21 = OUTLINED_FUNCTION_108();
    v22 = ConnectionMethod.connectionMethodDescription(connectionConfiguration:isMPTCP:)(v21, v20, 1);
    v24 = v23;
    OUTLINED_FUNCTION_69();
    memcpy(v25, v26, 0x204uLL);
    outlined destroy of ConnectionConfiguration(v61);
    v27 = OUTLINED_FUNCTION_107();
    outlined init with copy of RPCOspreyConnectionProtocol(v27, v59);
    v28 = *(v2 + 2101);
    v29 = *(*(v2 + 2144) + OBJC_IVAR___SNNetworkAnalyticsInternal_sequenceNumber);
    _s11SiriNetwork010ConnectionB6ReportVSgWOi0_(__src);
    memcpy(v73, __src, sizeof(v73));
    v75 = 0;
    v74 = 0;
    v76 = 1;
    _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(v63);
    memcpy(v77, v63, sizeof(v77));
    v78 = MEMORY[0x277D84F90];
    v80 = 4;
    if (one-time initialization token for sharedNetworkAnalytics != -1)
    {
      OUTLINED_FUNCTION_40_0(&one-time initialization token for sharedNetworkAnalytics);
    }

    v81 = static NetworkAnalytics.sharedNetworkAnalytics;
    v68 = v29;
    v69 = 0xD000000000000017;
    v70 = 0x80000002235F7560;
    v71 = 0x6574736575716572;
    v72 = 0xEA0000000000646ELL;
    v30 = static NetworkAnalytics.sharedNetworkAnalytics;
    v79 = static ConnectionTCPInfoMetrics.connectionTCPInfoMetrics(from:wasConnected:)(v59, v28);
    ConnectionSnapshotReport.updateTCPInfoMetrics(connection:wasConnected:connectionMethod:)(v59, v28, v22, v24);

    outlined destroy of NetworkConnectionProtocol?(v59, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    OUTLINED_FUNCTION_69();
    memcpy(v31, v32, 0x2C8uLL);
    OUTLINED_FUNCTION_69();
    memcpy(v33, v34, 0x2C8uLL);
    destructiveProjectEnumData for ConnectionConfigurationError();
    OUTLINED_FUNCTION_69();
    memcpy(v35, v36, 0x2C8uLL);
    outlined init with copy of ConnectionSnapshotReport(v64, v67);
    outlined destroy of ConnectionSnapshotReport(&v66);
    memcpy(v67, (v2 + 624), sizeof(v67));
    memcpy((v2 + 624), v65, 0x2C8uLL);
    outlined destroy of NetworkConnectionProtocol?(v67, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
    v37 = NetworkConnectionProvider.connectionMetrics.modify(v57);
    v39 = v38;
    v40 = OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_19_0(v40, v41);
    v42 = OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_10_1(v42);
    if (!v43)
    {
      memcpy(v59, v39 + 76, 0x139uLL);
      OUTLINED_FUNCTION_12_0(v59);
      if (!v43)
      {
        v44 = *(v2 + 1496);
        if (v44)
        {
          v45 = *(v44 + OBJC_IVAR___SNNetworkManagerInternal_carrierName);
        }

        else
        {
          v45 = 0;
          v46 = 0;
        }

        v39[77] = v45;
        v39[78] = v46;
      }
    }

    (v37)(v57, 0);
    v47 = *(v2 + 1496);
    if (v47)
    {
      v48 = v47 + OBJC_IVAR___SNNetworkManagerInternal_lastSignalStrength;
      if ((*(v48 + 8) & 1) == 0)
      {
        v49 = *v48;
        v50 = NetworkConnectionProvider.connectionMetrics.modify(v58);
        v52 = v51;
        OUTLINED_FUNCTION_19_0(v59, v51);
        OUTLINED_FUNCTION_10_1(v59);
        if (!v43)
        {
          memcpy(v57, (v52 + 608), 0x139uLL);
          OUTLINED_FUNCTION_12_0(v57);
          if (!v53)
          {
            *(v52 + 632) = v49;
            *(v52 + 640) = 0;
          }
        }

        (v50)(v58, 0);
      }
    }

    v54 = OUTLINED_FUNCTION_60_0();
    specialized ConnectionProviderProtocol.updateConnectionMetrics(with:completion:)(v54);
    v55 = OUTLINED_FUNCTION_60_0();
    outlined destroy of ConnectionMetrics(v55);
    v56 = OUTLINED_FUNCTION_107();
    __swift_destroy_boxed_opaque_existential_0(v56);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_60_0();
    outlined destroy of NetworkConnectionProtocol?(v7, v8, v9);
  }

  OUTLINED_FUNCTION_47();
}

uint64_t OUTLINED_FUNCTION_54_0()
{
  *(v1 + 14) = v2;
  *(v1 + 22) = v0;
  return *(v3 - 272);
}

void OUTLINED_FUNCTION_54_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork24ConnectionTCPInfoMetricsVSg(uint64_t a1)
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

uint64_t OUTLINED_FUNCTION_103_1()
{

  return swift_unknownObjectRetain();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
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

void static ConnectionTCPInfoMetrics.setConnectionMetricsTCPInfo(_:from:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v103 = v2;
  v116 = type metadata accessor for NWInterface.InterfaceType();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v115 = v7 - v6;
  v8 = type metadata accessor for NWInterface();
  OUTLINED_FUNCTION_0_0();
  v117 = v9;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v114 = &v95 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v95 - v16;
  if (v1)
  {

    *&v126[0] = NWConnection.identifier.getter();
    v97 = dispatch thunk of CustomStringConvertible.description.getter();
    v100 = v18;
    NWConnection.currentPath.getter();
    v19 = type metadata accessor for NWPath();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v19);
    v99 = v1;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of ConnectionSnapshotReport?(v17, &_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
LABEL_33:
      v25 = MEMORY[0x277D84F98];
LABEL_34:
      v59 = v103 + 64;
      v60 = 1 << *(v103 + 32);
      v61 = -1;
      if (v60 < 64)
      {
        v61 = ~(-1 << v60);
      }

      v62 = v61 & *(v103 + 64);
      v63 = (v60 + 63) >> 6;

      v64 = 0;
      v113 = MEMORY[0x277D84F90];
      v116 = v63;
LABEL_37:
      v65 = v64;
      if (!v62)
      {
        goto LABEL_39;
      }

      while (1)
      {
        v64 = v65;
LABEL_42:
        v66 = __clz(__rbit64(v62));
        v62 &= v62 - 1;
        v67 = (v64 << 10) | (16 * v66);
        v68 = *(v103 + 56);
        v69 = (*(v103 + 48) + v67);
        v70 = v69[1];
        v115 = *v69;
        v71 = (v68 + v67);
        v73 = *v71;
        v72 = v71[1];
        v117 = *v71;
        switch(v72 >> 62)
        {
          case 1uLL:
            v75 = v73 >> 32;
            if (v73 >> 32 < v73)
            {
              goto LABEL_85;
            }

            v112 = v73;
            v114 = v70;

            outlined copy of Data._Representation(v73, v72);
            v76 = __DataStorage._bytes.getter();
            v74 = v72;
            if (v76)
            {
              v77 = __DataStorage._offset.getter();
              v78 = v112;
              if (__OFSUB__(v112, v77))
              {
                goto LABEL_88;
              }

              v76 += v112 - v77;
            }

            else
            {
              v78 = v112;
            }

            v85 = MEMORY[0x223DE1260]();
            v70 = v114;
            if (!v76)
            {
              goto LABEL_63;
            }

            v84 = v75 - v78;
            if (v85 < v75 - v78)
            {
              v84 = v85;
            }

LABEL_61:
            if (v84 == 424)
            {
              memmove(v118, v76, 0x1A8uLL);
              _sSo8tcp_infoVSgWOi_(v118);
              memcpy(v125, v118, 0x1A9uLL);
            }

            else
            {
LABEL_63:
              _sSo8tcp_infoVSgWOi0_(v125);
            }

            memcpy(v126, v125, 0x1A9uLL);
            ConnectionTCPInfoMetrics.init(tcpInfo:)();
            memcpy(v118, v124, 0xF9uLL);
            v86 = v74;
            if (_s11SiriNetwork24ConnectionTCPInfoMetricsVSgWOg(v118) != 1)
            {
              memcpy(v123, &v118[33], sizeof(v123));

              v63 = v116;
              if (v25[2])
              {
                v114 = specialized __RawDictionaryStorage.find<A>(_:)(v115, v70);
                v88 = v87;

                if (v88)
                {
                  v89 = v114[v25[7]];
                }

                else
                {
                  v89 = 25;
                }

                LODWORD(v114) = v89;
              }

              else
              {

                LODWORD(v114) = 25;
              }

              v90 = v100;

              v122[0] = v115;
              v122[1] = v70;
              v122[2] = v97;
              v122[3] = v90;
              LOBYTE(v122[4]) = v114;
              memcpy(&v122[4] + 1, v123, 0xD8uLL);
              outlined init with copy of ConnectionTCPInfoMetrics(v122, v119);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v113 = v93;
              }

              v91 = *(v113 + 16);
              if (v91 >= *(v113 + 24) >> 1)
              {
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v113 = v94;
              }

              outlined consume of Data._Representation(v117, v86);
              v92 = v113;
              *(v113 + 16) = v91 + 1;
              memcpy((v92 + (v91 << 8) + 32), v122, 0xF9uLL);
              v119[0] = v115;
              v119[1] = v70;
              v119[2] = v97;
              v119[3] = v100;
              v120 = v114;
              memcpy(v121, v123, sizeof(v121));
              outlined destroy of ConnectionTCPInfoMetrics(v119);
              goto LABEL_37;
            }

            outlined consume of Data._Representation(v117, v74);

            v65 = v64;
            v63 = v116;
            if (!v62)
            {
LABEL_39:
              while (1)
              {
                v64 = v65 + 1;
                if (__OFADD__(v65, 1))
                {
                  break;
                }

                if (v64 >= v63)
                {

                  goto LABEL_80;
                }

                v62 = *(v59 + 8 * v64);
                ++v65;
                if (v62)
                {
                  goto LABEL_42;
                }
              }

              __break(1u);
LABEL_82:
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
LABEL_88:
              __break(1u);
LABEL_89:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              JUMPOUT(0x22353ED38);
            }

            return;
          case 2uLL:
            v79 = *(v73 + 16);
            v80 = *(v73 + 24);
            v114 = v70;

            outlined copy of Data._Representation(v73, v72);
            v76 = __DataStorage._bytes.getter();
            if (!v76)
            {
              goto LABEL_51;
            }

            v81 = __DataStorage._offset.getter();
            if (__OFSUB__(v79, v81))
            {
              goto LABEL_87;
            }

            v76 += v79 - v81;
LABEL_51:
            v57 = __OFSUB__(v80, v79);
            v82 = v80 - v79;
            if (v57)
            {
              goto LABEL_86;
            }

            v74 = v72;
            v83 = MEMORY[0x223DE1260]();
            if (v83 >= v82)
            {
              v84 = v82;
            }

            else
            {
              v84 = v83;
            }

            v70 = v114;
            if (!v76)
            {
              goto LABEL_63;
            }

            goto LABEL_61;
          default:
            v74 = v72;

            goto LABEL_63;
        }
      }
    }

    v21 = NWPath.availableInterfaces.getter();
    (*(*(v19 - 8) + 8))(v17, v19);
    v113 = *(v21 + 16);
    if (!v113)
    {

      goto LABEL_33;
    }

    v22 = 0;
    OUTLINED_FUNCTION_9_7();
    v112 = v23;
    v110 = v24 + 32;
    v111 = v24 + 16;
    v109 = (v4 + 88);
    v108 = *MEMORY[0x277CD8CB0];
    v102 = *MEMORY[0x277CD8CA8];
    v101 = *MEMORY[0x277CD8CB8];
    v98 = *MEMORY[0x277CD8CA0];
    v107 = (v24 + 8);
    v95 = (v4 + 8);
    v25 = MEMORY[0x277D84F98];
    v96 = *MEMORY[0x277CD8CC0];
    v105 = v13;
    v106 = v8;
    v104 = v21;
    while (1)
    {
      if (v22 >= *(v21 + 16))
      {
        goto LABEL_82;
      }

      v26 = v117;
      v27 = v114;
      v28 = (*(v117 + 16))(v114, v112 + *(v117 + 72) * v22, v8);
      v29 = MEMORY[0x223DE1820](v28);
      v31 = v30;
      (*(v26 + 32))(v13, v27, v8);
      v32 = v115;
      NWInterface.type.getter();
      v33 = (*v109)(v32, v116);
      if (v33 == v108)
      {
        break;
      }

      if (v33 == v102)
      {
        v37 = OUTLINED_FUNCTION_3_12();
        v38(v37);
        v36 = 1;
      }

      else
      {
        if (v33 == v101)
        {
          if (one-time initialization token for shared != -1)
          {
            OUTLINED_FUNCTION_4_11();
            swift_once();
          }

          NetworkManager.connectionTechnologyForCellularInterface()();
          v39 = OUTLINED_FUNCTION_3_12();
          v40(v39);
          v36 = v126[0];
          goto LABEL_22;
        }

        if (v33 == v98)
        {
          v41 = OUTLINED_FUNCTION_3_12();
          v42(v41);
          v36 = 23;
        }

        else
        {
          if (v33 == v96)
          {
            break;
          }

          v43 = OUTLINED_FUNCTION_3_12();
          v44(v43);
          (*v95)(v115, v116);
          v36 = 0;
        }
      }

LABEL_22:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v126[0] = v25;
      v46 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v31);
      v48 = v25[2];
      v49 = (v47 & 1) == 0;
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        goto LABEL_83;
      }

      v51 = v46;
      v52 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS11SiriNetwork14ConnectionTypeOGMd, &_ss17_NativeDictionaryVySS11SiriNetwork14ConnectionTypeOGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v50))
      {
        v53 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v31);
        if ((v52 & 1) != (v54 & 1))
        {
          goto LABEL_89;
        }

        v51 = v53;
      }

      if (v52)
      {

        v25 = *&v126[0];
        *(*(*&v126[0] + 56) + v51) = v36;
      }

      else
      {
        v25 = *&v126[0];
        *(*&v126[0] + 8 * (v51 >> 6) + 64) |= 1 << v51;
        v55 = (v25[6] + 16 * v51);
        *v55 = v29;
        v55[1] = v31;
        *(v25[7] + v51) = v36;
        v56 = v25[2];
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_84;
        }

        v25[2] = v58;
      }

      ++v22;
      v13 = v105;
      v8 = v106;
      v21 = v104;
      if (v113 == v22)
      {

        goto LABEL_34;
      }
    }

    MEMORY[0x223DE1820]();
    v34 = String.lowercased()();

    v126[0] = v34;
    v125[0] = 0x6365737069;
    v125[1] = 0xE500000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v35 = StringProtocol.contains<A>(_:)();

    (*v107)(v13, v8);
    if (v35)
    {
      v36 = 24;
    }

    else
    {
      v36 = 0;
    }

    goto LABEL_22;
  }

LABEL_80:
  OUTLINED_FUNCTION_47();
}

void ConnectionTCPInfoMetrics.init(tcpInfo:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v74 = 1;
  v73 = 1;
  v72 = 1;
  v71 = 1;
  v70 = 1;
  v69 = 1;
  v68 = 1;
  v67 = 1;
  v66 = 1;
  v65 = 1;
  v64 = 1;
  v63 = 1;
  v62 = 1;
  v61 = 1;
  v60 = 1;
  v59 = 1;
  v58 = 1;
  memcpy(__dst, v2, 0x1A9uLL);
  if (_sSo8tcp_infoVSgWOg(__dst) == 1)
  {
    memset(v22, 0, sizeof(v22));
    v23 = 25;
    v24 = 0;
    v25 = v74;
    v26 = 0;
    v27 = v73;
    v28 = 0;
    v29 = v72;
    v30 = 0;
    v31 = v71;
    v32 = 0;
    v33 = v70;
    v34 = 0;
    v35 = v69;
    v36 = 0;
    v37 = v68;
    v38 = 0;
    v39 = v67;
    v40 = 0;
    v41 = v66;
    v42 = 0;
    v43 = v65;
    v44 = 0;
    v45 = v64;
    v46 = 0;
    v47 = v63;
    v48 = 0;
    v49 = v62;
    v50 = 0;
    v51 = v61;
    v52 = 0;
    v53 = v60;
    v54 = 0;
    v55 = v59;
    v56 = 0;
    v57 = v58;
    outlined destroy of ConnectionTCPInfoMetrics(v22);
    _s11SiriNetwork24ConnectionTCPInfoMetricsVSgWOi0_(__src);
    v3 = v1;
  }

  else
  {
    v16 = __dst[5];
    v17 = __dst[6];
    v18 = __dst[7];
    v4 = __dst[8];
    v19 = __dst[16];
    v20 = v1;
    v5 = *&__dst[17];
    v6 = *&__dst[19];
    v7 = *&__dst[21];
    v8 = *&__dst[23];
    v9 = *&__dst[25];
    v10 = *&__dst[27];
    v11 = *&__dst[29];
    v12 = *&__dst[31];
    v13 = *&__dst[33];
    v15 = LOBYTE(__dst[35]);
    memcpy(__src, __dst, 0x1A8uLL);
    v74 = 0;
    v73 = 0;
    v72 = 0;
    v71 = 0;
    v70 = 0;
    v69 = 0;
    v68 = 0;
    v67 = 0;
    v66 = 0;
    v65 = 0;
    v64 = 0;
    v63 = 0;
    v62 = 0;
    v61 = 0;
    v60 = 0;
    v14 = _So8tcp_infoV_tcpi_tfo_syn_data_acked_getter(__src);
    LOBYTE(__src[2]) = 25;
    *(&__src[2] + 1) = v10;
    LOBYTE(__src[3]) = v74;
    *(&__src[3] + 1) = v7;
    LOBYTE(__src[4]) = v73;
    *(&__src[4] + 1) = v6;
    LOBYTE(__src[5]) = v72;
    *(&__src[5] + 1) = v8;
    LOBYTE(__src[6]) = v71;
    *(&__src[6] + 1) = v11;
    LOBYTE(__src[7]) = v70;
    *(&__src[7] + 1) = v12;
    LOBYTE(__src[8]) = v69;
    *(&__src[8] + 1) = v9;
    LOBYTE(__src[9]) = v68;
    *(&__src[9] + 1) = v5;
    LOBYTE(__src[10]) = v67;
    DWORD1(__src[10]) = v4;
    BYTE8(__src[10]) = v66;
    HIDWORD(__src[10]) = v16;
    LOBYTE(__src[11]) = v65;
    DWORD1(__src[11]) = v17;
    BYTE8(__src[11]) = v64;
    HIDWORD(__src[11]) = v18;
    LOBYTE(__src[12]) = v63;
    *(&__src[12] + 1) = v13;
    LOBYTE(__src[13]) = v62;
    *(&__src[13] + 1) = v19;
    LOBYTE(__src[14]) = v61;
    DWORD1(__src[14]) = v15;
    BYTE8(__src[14]) = v60;
    HIDWORD(__src[14]) = v14;
    BYTE8(__src[15]) = v58;
    v59 = 0;
    memset(__src, 0, 32);
    LOBYTE(__src[15]) = 0;
    DWORD1(__src[15]) = 0;
    destructiveProjectEnumData for ConnectionConfigurationError();
    v3 = v20;
  }

  memcpy(v3, __src, 0xF9uLL);
  OUTLINED_FUNCTION_47();
}

uint64_t _sSo8tcp_infoVSgWOg(uint64_t a1)
{
  if (*(a1 + 424))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s11SiriNetwork010ConnectionB6ReportVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *ConnectionInterfaceReport.init(interface:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NWInterface();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NWInterface.InterfaceType();
  OUTLINED_FUNCTION_0_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11SiriNetwork24ConnectionTCPInfoMetricsVSgWOi0_(v21);
  v16 = memcpy((a2 + 40), v21, 0xF9uLL);
  *a2 = MEMORY[0x223DE1820](v16);
  *(a2 + 8) = v17;
  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  NWInterface.type.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v12 + 8))(v15, v10);
  v18 = v22[1];
  *(a2 + 16) = v22[0];
  *(a2 + 24) = v18;
  (*(v6 + 16))(v9, a1, v4);
  ConnectionType.init(fromInterface:)(v9, v22);
  *(a2 + 32) = v22[0];
  v19 = NWInterface.index.getter();
  result = (*(v6 + 8))(a1, v4);
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v19))
  {
    *(a2 + 36) = v19;
    memcpy(v22, (a2 + 40), 0xF9uLL);
    outlined destroy of ConnectionTCPInfoMetrics?(v22);
    return memcpy((a2 + 40), v21, 0xF9uLL);
  }

  __break(1u);
  return result;
}

uint64_t ConnectionType.init(fromInterface:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for NWInterface.InterfaceType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  NWInterface.type.getter();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277CD8CB0])
  {
LABEL_2:
    MEMORY[0x223DE1820]();
    v9 = String.lowercased()();

    v19 = v9;
    v18[0] = 0x6365737069;
    v18[1] = 0xE500000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v10 = StringProtocol.contains<A>(_:)();
    type metadata accessor for NWInterface();
    OUTLINED_FUNCTION_1();
    (*(v11 + 8))(a1);

    if (v10)
    {
      countAndFlagsBits = 24;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    goto LABEL_15;
  }

  if (v8 == *MEMORY[0x277CD8CA8])
  {
    type metadata accessor for NWInterface();
    OUTLINED_FUNCTION_1();
    result = (*(v14 + 8))(a1);
    countAndFlagsBits = 1;
    goto LABEL_15;
  }

  if (v8 != *MEMORY[0x277CD8CB8])
  {
    if (v8 == *MEMORY[0x277CD8CA0])
    {
      type metadata accessor for NWInterface();
      OUTLINED_FUNCTION_1();
      result = (*(v16 + 8))(a1);
      countAndFlagsBits = 23;
      goto LABEL_15;
    }

    if (v8 != *MEMORY[0x277CD8CC0])
    {
      type metadata accessor for NWInterface();
      OUTLINED_FUNCTION_1();
      (*(v17 + 8))(a1);
      result = (*(v5 + 8))(v7, v4);
      countAndFlagsBits = 0;
      goto LABEL_15;
    }

    goto LABEL_2;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  NetworkManager.connectionTechnologyForCellularInterface()();
  type metadata accessor for NWInterface();
  OUTLINED_FUNCTION_1();
  result = (*(v15 + 8))(a1);
  countAndFlagsBits = v19._countAndFlagsBits;
LABEL_15:
  *a2 = countAndFlagsBits;
  return result;
}

void *specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = *(a2 + 16);
  for (i = (a2 + 32); ; i += 256)
  {
    if (!v6)
    {
      _s11SiriNetwork24ConnectionTCPInfoMetricsVSgWOi0_(__dst);
      v16 = __dst;
      return memcpy(a3, v16, 0xF9uLL);
    }

    memcpy(__dst, i, 0xF9uLL);
    memcpy(v50, i, 0xF9uLL);
    outlined init with copy of ConnectionTCPInfoMetrics(__dst, &v18);
    v8 = a1(v50);
    if (v3)
    {
      OUTLINED_FUNCTION_49_3(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50[0]);
      return outlined destroy of ConnectionTCPInfoMetrics(&v18);
    }

    if (v8)
    {
      break;
    }

    OUTLINED_FUNCTION_49_3(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50[0]);
    outlined destroy of ConnectionTCPInfoMetrics(&v18);
    --v6;
  }

  OUTLINED_FUNCTION_49_3(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50[0]);
  destructiveProjectEnumData for ConnectionConfigurationError();
  v16 = &v18;
  return memcpy(a3, v16, 0xF9uLL);
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork010ConnectionB6ReportVSg(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ConnectionSnapshotReport(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 712))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

Swift::String_optional __swiftcall NWConnection.getConnectionEdgeID(wasConnected:attemptedEndpoints:)(Swift::Bool wasConnected, Swift::OpaquePointer attemptedEndpoints)
{
  if (wasConnected && (MEMORY[0x223DE1A50](), v3 = nw_connection_copy_connected_remote_endpoint(), swift_unknownObjectRelease(), v3))
  {
    nw_endpoint_get_description();
    v4 = String.init(cString:)();
    v6 = v5;
    v7 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v8 = v4;
    }

    else
    {

      v6 = 0x80000002235F7130;
      v8 = 0xD000000000000012;
    }

    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.siriNetwork);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v22 = 136315138;

      v24 = String.init<A>(describing:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v31);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_223515000, v20, v21, "SiriNetwork - Report: Connection EdgeID: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v9 = *(attemptedEndpoints._rawValue + 2);
    if (v9)
    {
      v31 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
      v10 = v31;
      v11 = attemptedEndpoints._rawValue + 40;
      v30 = v9;
      do
      {

        v12 = String.init<A>(_:)();
        v14 = v13;
        v31 = v10;
        v16 = *(v10 + 16);
        v15 = *(v10 + 24);
        if (v16 >= v15 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
          v10 = v31;
        }

        *(v10 + 16) = v16 + 1;
        v17 = v10 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
        v11 += 16;
        --v9;
      }

      while (v9);
      v9 = v30;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v8 = BidirectionalCollection<>.joined(separator:)();
    v6 = v18;

    if (!v9)
    {

      v6 = 0xEF656C62616C6961;
      v8 = 0x76616E5572656570;
    }
  }

  v27 = v8;
  v28 = v6;
  result.value._object = v28;
  result.value._countAndFlagsBits = v27;
  return result;
}

uint64_t ConnectionMethod.connectionMethodDescription(connectionConfiguration:isMPTCP:)(uint64_t a1, char a2, char a3)
{
  v4 = 7365492;
  v5 = *(a1 + 313);
  v6 = *(a1 + 392);
  switch(a3)
  {
    case 1:
      if (*(a1 + 408) == 1 || *(a1 + 513) == 5)
      {
LABEL_7:
        v8 = 0x706374706DLL;
        if ((a2 & 1) == 0)
        {
          v8 = 7365492;
        }

        v9 = 0xD000000000000010;
        if (a2)
        {
          v9 = 0xD000000000000012;
        }

        if (((v6 != 0) & v5) == 1)
        {
          v4 = v9;
        }

        else
        {
          v4 = v8;
        }
      }

      else
      {
        switch(*(a1 + 513))
        {
          case 1:
          case 2:
          case 3:
          case 4:
            v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v12 = v11;
            if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
            {
              OUTLINED_FUNCTION_0_14();
            }

            else
            {
              v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v15 & 1) == 0)
              {
                goto LABEL_7;
              }

              OUTLINED_FUNCTION_0_14();
            }

            break;
          default:
            goto LABEL_7;
        }
      }

      break;
    case 2:
      v4 = 1919247728;
      break;
    case 3:
      v4 = 0x796E6163737574;
      break;
    default:
      return v4;
  }

  return v4;
}

uint64_t outlined init with copy of NetworkConnectionProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)()
{
  OUTLINED_FUNCTION_46();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_78_0(v7, v5, v3);
  specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
  OUTLINED_FUNCTION_2_19();
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10Foundation4DataVGMd, &_ss17_NativeDictionaryVySS10Foundation4DataVGMR);
  if (!OUTLINED_FUNCTION_118_0())
  {
    goto LABEL_5;
  }

  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v16;
LABEL_5:
  v18 = *v0;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = v8;
    v19[1] = v6;
    OUTLINED_FUNCTION_47();

    outlined consume of Data._Representation(v20, v21);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v14, v4, v2, v8, v6, v18);
    OUTLINED_FUNCTION_47();
  }
}

{
  OUTLINED_FUNCTION_46();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_78_0(v7, v5, v3);
  specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
  OUTLINED_FUNCTION_2_19();
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
  if (!OUTLINED_FUNCTION_118_0())
  {
    goto LABEL_5;
  }

  v16 = OUTLINED_FUNCTION_88_0();
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  if ((v15 & 1) != (v19 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v18;
LABEL_5:
  v20 = *v0;
  if (v15)
  {
    v21 = (v20[7] + 16 * v14);
    *v21 = v8;
    v21[1] = v6;
    OUTLINED_FUNCTION_47();
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v14, v4, v2, v8, v6, v20);
    OUTLINED_FUNCTION_47();
  }
}

{
  OUTLINED_FUNCTION_46();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_20_4(v8, v9, v10);
  OUTLINED_FUNCTION_2_19();
  if (v11)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v5);
  if (OUTLINED_FUNCTION_28_4())
  {
    OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_16_8();
    if (!v13)
    {
      goto LABEL_14;
    }

    v3 = v12;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    OUTLINED_FUNCTION_47();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_52_3();
    specialized _NativeDictionary._insert(at:key:value:)(v15, v16, v17, v18, v19);
    OUTLINED_FUNCTION_47();
  }
}

uint64_t _s11SiriNetwork24ConnectionTCPInfoMetricsVSgWOg(uint64_t a1)
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

uint64_t ConnectionTCPInfoMetrics.debugDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v75 = *(v0 + 56);
  v73 = *(v0 + 64);
  v69 = *(v0 + 72);
  v67 = *(v0 + 80);
  v65 = *(v0 + 88);
  v63 = *(v0 + 96);
  v58 = *(v0 + 104);
  v56 = *(v0 + 112);
  v54 = *(v0 + 120);
  v52 = *(v0 + 128);
  v49 = *(v0 + 136);
  v47 = *(v0 + 144);
  v45 = *(v0 + 152);
  v43 = *(v0 + 160);
  v37 = *(v0 + 172);
  v41 = *(v0 + 180);
  v87[0] = 0x6361667265746E69;
  if (v1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  v61 = *(v0 + 200);
  v60 = *(v0 + 208);
  v72 = *(v0 + 216);
  v71 = *(v0 + 224);
  v81 = *(v0 + 228);
  v82 = *(v0 + 236);
  v87[1] = 0xEA00000000002065;
  if (v1)
  {
    v7 = v1;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v6, v7);

  v85 = v87[0];
  v86 = v87[1];
  _StringGuts.grow(_:)(17);

  v87[0] = 0x697463656E6E6F63;
  v87[1] = 0xEF20657079546E6FLL;
  if (v5 == 25)
  {
    v8 = 0x6E776F6E6B6E75;
    v9 = 0xE700000000000000;
  }

  else
  {
    v8 = ConnectionType.stringRawValue.getter();
    v9 = v10;
  }

  MEMORY[0x223DE2180](v8, v9);

  v83 = v87[1];
  v84 = v87[0];
  strcpy(v87, "connection ");
  HIDWORD(v87[1]) = -352321536;
  if (v3)
  {
    v11 = v4;
  }

  else
  {
    v11 = 0x6E776F6E6B6E75;
  }

  if (v3)
  {
    v12 = v3;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v11, v12);

  v79 = v87[1];
  v80 = v87[0];
  _StringGuts.grow(_:)(16);

  strcpy(v87, "bytesReceived ");
  HIBYTE(v87[1]) = -18;
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_6_7();

  v78 = v87[0];
  v77 = v87[1];
  OUTLINED_FUNCTION_5_0();
  v87[0] = 0xD000000000000013;
  v87[1] = v13;
  v14 = v75;
  if (v73)
  {
    v14 = 0;
  }

  OUTLINED_FUNCTION_1_6(v14);
  OUTLINED_FUNCTION_6_7();

  v74 = v87[1];
  v76 = v87[0];
  strcpy(v87, "bytesSent ");
  BYTE3(v87[1]) = 0;
  HIDWORD(v87[1]) = -369098752;
  v15 = v69;
  if (v67)
  {
    v15 = 0;
  }

  OUTLINED_FUNCTION_1_6(v15);
  OUTLINED_FUNCTION_6_7();

  v68 = v87[1];
  v70 = v87[0];
  strcpy(v87, "bytesUnacked ");
  HIWORD(v87[1]) = -4864;
  v16 = v65;
  if (v63)
  {
    v16 = 0;
  }

  OUTLINED_FUNCTION_1_6(v16);
  OUTLINED_FUNCTION_6_7();

  v64 = v87[1];
  v66 = v87[0];
  OUTLINED_FUNCTION_5_0();
  v87[0] = 0xD000000000000017;
  v87[1] = v17;
  v18 = v58;
  if (v56)
  {
    v18 = 0;
  }

  OUTLINED_FUNCTION_1_6(v18);
  OUTLINED_FUNCTION_6_7();

  v57 = v87[1];
  v59 = v87[0];
  OUTLINED_FUNCTION_5_0();
  v87[0] = 0xD000000000000018;
  v87[1] = v19;
  v20 = v54;
  if (v52)
  {
    v20 = 0;
  }

  OUTLINED_FUNCTION_1_6(v20);
  OUTLINED_FUNCTION_6_7();

  v53 = v87[1];
  v55 = v87[0];
  OUTLINED_FUNCTION_5_0();
  v87[0] = 0xD000000000000010;
  v87[1] = v21;
  v22 = v49;
  if (v47)
  {
    v22 = 0;
  }

  OUTLINED_FUNCTION_1_6(v22);
  OUTLINED_FUNCTION_6_7();

  v48 = v87[1];
  v50 = v87[0];
  strcpy(v87, "packetsSent ");
  BYTE5(v87[1]) = 0;
  HIWORD(v87[1]) = -5120;
  v23 = v45;
  if (v43)
  {
    v23 = 0;
  }

  OUTLINED_FUNCTION_1_6(v23);
  OUTLINED_FUNCTION_6_7();

  v44 = v87[1];
  v46 = v87[0];
  strcpy(v87, "rttBest ");
  BYTE1(v87[1]) = 0;
  WORD1(v87[1]) = 0;
  HIDWORD(v87[1]) = -402653184;
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_9_4();

  v39 = v87[1];
  v40 = v87[0];
  strcpy(v87, "rttCurrent ");
  HIDWORD(v87[1]) = -352321536;
  OUTLINED_FUNCTION_2_3(v37);
  OUTLINED_FUNCTION_9_4();

  v24 = v87[1];
  v38 = v87[0];
  strcpy(v87, "rttSmoothed ");
  HIWORD(v87[1]) = -5120;
  OUTLINED_FUNCTION_2_3(v41);
  OUTLINED_FUNCTION_9_4();

  v25 = v87[1];
  v42 = v87[0];
  strcpy(v87, "rttVariance ");
  HIWORD(v87[1]) = -5120;
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_9_4();

  v26 = v87[1];
  v51 = v87[0];
  strcpy(v87, "sendBandwidth ");
  HIBYTE(v87[1]) = -18;
  v27 = v61;
  if (v60)
  {
    v27 = 0;
  }

  v28 = OUTLINED_FUNCTION_1_6(v27);
  MEMORY[0x223DE2180](v28);

  v29 = v87[1];
  v62 = v87[0];
  OUTLINED_FUNCTION_5_0();
  v87[0] = 0xD000000000000010;
  v87[1] = v30;
  v31 = v72;
  if (v71)
  {
    v31 = 0;
  }

  v32 = OUTLINED_FUNCTION_1_6(v31);
  MEMORY[0x223DE2180](v32);

  v33 = v87[1];
  v34 = OUTLINED_FUNCTION_2_3(v81);
  MEMORY[0x223DE2180](v34);

  OUTLINED_FUNCTION_5_0();
  v87[1] = v35;
  OUTLINED_FUNCTION_2_3(v82);
  OUTLINED_FUNCTION_6_7();

  _StringGuts.grow(_:)(131);
  MEMORY[0x223DE2180](0xD000000000000037, 0x80000002235F70E0);
  MEMORY[0x223DE2180](v85, v86);

  MEMORY[0x223DE2180](10272, 0xE200000000000000);
  MEMORY[0x223DE2180](v80, v79);

  MEMORY[0x223DE2180](2112041, 0xE300000000000000);
  MEMORY[0x223DE2180](v84, v83);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v78, v77);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v76, v74);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v70, v68);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v66, v64);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v59, v57);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v55, v53);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v50, v48);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v46, v44);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v40, v39);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v38, v24);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v42, v25);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v51, v26);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v62, v29);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v87[0], v33);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0x61727465526E7973, 0xEF207374696D736ELL);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000010, v87[1]);

  MEMORY[0x223DE2180](93, 0xE100000000000000);
  return 0;
}

uint64_t outlined destroy of ConnectionTCPInfoMetrics?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork24ConnectionTCPInfoMetricsVSgMd, _s11SiriNetwork24ConnectionTCPInfoMetricsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConnectionTCPInfoMetrics(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 249))
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

void *OUTLINED_FUNCTION_19_0(void *a1, uint64_t a2)
{
  v3 = (a2 + 568);

  return memmove(a1, v3, 0x2C8uLL);
}

void OUTLINED_FUNCTION_19_2(CFStringRef value)
{

  CFHTTPMessageSetHeaderFieldValue(v2, v1, value);
}

uint64_t OUTLINED_FUNCTION_19_7()
{

  return swift_bridgeObjectRelease_n();
}

void OUTLINED_FUNCTION_19_9()
{
}

void OUTLINED_FUNCTION_36(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_36_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_36_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_36_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  *(v17 + v18) = a17;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_36_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return swift_beginAccess();
}

SiriNetwork::ConnectionQualityReport __swiftcall NetworkManager.currentConnectionQualityReport()()
{
  v1 = OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality;
  [*(v0 + OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality) lock];
  v2 = *(v0 + OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport);
  v3 = *(v0 + OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport + 1);
  v4 = *(v0 + OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport + 2);
  v5 = *(v0 + OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport + 3);
  [*(v0 + v1) unlock];
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriNetwork);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_223515000, v7, v8, "NetworkManager - PerformanceFeed: Current connection quality report: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223DE38F0](v10, -1, -1);
    MEMORY[0x223DE38F0](v9, -1, -1);
  }

  return (v2 | (v3 << 8) | (v4 << 16) | (v5 << 24));
}

uint64_t specialized ConnectionProviderProtocol.updateConnectionMetrics(with:completion:)(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = v2;
  v86 = *(v2 + 16);
  v6 = v86;
  v85 = *(v2 + 24);
  swift_beginAccess();
  *(v1 + 104) = *(v5 + 48);
  *(v1 + 108) = *(v5 + 52);
  *(v1 + 72) = v6;
  outlined init with copy of NetworkConnectionProtocol?(&v86, v81, &_sSaySSGMd, &_sSaySSGMR);
  outlined init with copy of NetworkConnectionProtocol?(&v85, v81, &_sSSSgMd, &_sSSSgMR);
  *(v1 + 80) = v85;

  memcpy(v108, (v1 + 624), 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v108) == 1)
  {
    _s11SiriNetwork010ConnectionB6ReportVSgWOi0_(v79);
    memcpy(v78, v79, 0x139uLL);
    LOBYTE(v96[0]) = 1;
    _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(v97);
    memcpy(&v83[7], v97, 0x121uLL);
    if (one-time initialization token for sharedNetworkAnalytics != -1)
    {
      swift_once();
    }

    v7 = static NetworkAnalytics.sharedNetworkAnalytics;
    memcpy(&v80[5], v78, 0x139uLL);
    LODWORD(v80[0]) = 0;
    v80[1] = 0;
    v80[2] = 0xE000000000000000;
    v80[3] = 0;
    v80[4] = 0xE000000000000000;
    v80[46] = 0;
    v80[45] = 0;
    LOBYTE(v80[47]) = v96[0];
    memcpy(&v80[47] + 1, v83, 0x128uLL);
    v80[85] = MEMORY[0x277D84F90];
    v80[86] = MEMORY[0x277D84F90];
    LODWORD(v80[87]) = 4;
    v80[88] = static NetworkAnalytics.sharedNetworkAnalytics;
    destructiveProjectEnumData for ConnectionConfigurationError();
    memcpy(v81, (v1 + 624), 0x2C8uLL);
    memcpy((v1 + 624), v80, 0x2C8uLL);
    v8 = v7;
    outlined destroy of NetworkConnectionProtocol?(v81, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
  }

  memcpy(v81, (v1 + 56), 0x599uLL);
  memcpy(v80, (v1 + 56), 0x599uLL);
  memcpy(v82, (v1 + 624), sizeof(v82));
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v82) == 1)
  {
    memcpy(v79, v80, 0x599uLL);
    outlined init with copy of ConnectionMetrics(v81, v78);
    outlined destroy of ConnectionMetrics(v79);
  }

  else
  {
    memcpy(v96, &v80[76], 0x139uLL);
    memcpy(v79, v80, 0x599uLL);
    outlined init with copy of ConnectionMetrics(v81, v78);
    outlined init with copy of NetworkConnectionProtocol?(v96, v78, &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
    outlined destroy of ConnectionMetrics(v79);
    memcpy(v97, v96, 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v97) != 1)
    {
      outlined destroy of NetworkConnectionProtocol?(v96, &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
      goto LABEL_12;
    }
  }

  type metadata accessor for NetworkConnectionProvider();
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type NetworkConnectionProvider and conformance NetworkConnectionProvider, v9, type metadata accessor for NetworkConnectionProvider, &protocol conformance descriptor for NetworkConnectionProvider);
  v10 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider(v97);
  v12 = v11;
  memmove(v80, (v11 + 568), 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v80) != 1)
  {
    v79[0] = 1;
    LOBYTE(v96[0]) = 1;
    LOBYTE(v95[0]) = 1;
    LOBYTE(v94[0]) = 1;
    v93[0] = 1;
    v92[0] = 1;
    v91[0] = 1;
    v90[0] = 1;
    v89[0] = 1;
    v88[0] = 1;
    LOBYTE(v87[0]) = 1;
    v84[0] = 1;
    v77[0] = 1;
    v76[0] = 1;
    LODWORD(v78[0]) = 0;
    BYTE4(v78[0]) = 1;
    memset(&v78[1], 0, 24);
    LOBYTE(v78[4]) = 1;
    memset(&v78[5], 0, 52);
    BYTE4(v78[11]) = 1;
    LODWORD(v78[12]) = 0;
    BYTE4(v78[12]) = 1;
    v78[13] = MEMORY[0x277D84F98];
    memset(&v78[14], 0, 24);
    LOBYTE(v78[17]) = 1;
    LOBYTE(v78[19]) = 1;
    v78[18] = 0;
    v78[20] = 0;
    LOBYTE(v78[21]) = 1;
    LOBYTE(v78[23]) = 1;
    v78[22] = 0;
    v78[24] = 0;
    LOBYTE(v78[25]) = 1;
    LOBYTE(v78[27]) = 1;
    v78[26] = 0;
    memset(&v78[28], 0, 24);
    LOBYTE(v78[31]) = 1;
    v78[32] = 0;
    LOWORD(v78[33]) = 1;
    *(&v78[33] + 2) = v94[0];
    HIWORD(v78[33]) = v94[1];
    v78[34] = 0;
    LOBYTE(v78[35]) = 1;
    *(&v78[35] + 1) = v96[0];
    HIDWORD(v78[35]) = *(v96 + 3);
    v78[36] = 0;
    LOBYTE(v78[37]) = 1;
    *(&v78[37] + 1) = v95[0];
    HIDWORD(v78[37]) = *(v95 + 3);
    v78[38] = 0;
    LOBYTE(v78[39]) = 1;
    destructiveProjectEnumData for ConnectionConfigurationError();
    memcpy(v79, (v12 + 608), 0x139uLL);
    memcpy((v12 + 608), v78, 0x139uLL);
    outlined destroy of NetworkConnectionProtocol?(v79, &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
  }

  (v10)(v97, 0);
LABEL_12:
  memcpy(v84, (v5 + 568), sizeof(v84));
  type metadata accessor for NetworkConnectionProvider();
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type NetworkConnectionProvider and conformance NetworkConnectionProvider, v13, type metadata accessor for NetworkConnectionProvider, &protocol conformance descriptor for NetworkConnectionProvider);
  v14 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider(v80);
  v16 = v15;
  memmove(v77, &v15[35].u64[1], 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v77) != 1)
  {
    memcpy(v87, v84, sizeof(v87));
    v17 = _s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v87) == 1;
    v18 = v17 | LOBYTE(v87[47]);
    v19 = vdup_n_s32(v17);
    v20.i64[0] = v19.u32[0];
    v20.i64[1] = v19.u32[1];
    v16[58] = vandq_s8(*&v87[45], vcgezq_s64(vshlq_n_s64(v20, 0x3FuLL)));
    v16[59].i8[0] = v18 & 1;
  }

  (v14)(v80, 0);
  v21 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider(v79);
  v23 = v22;
  memmove(v76, (v22 + 568), 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v76) != 1)
  {
    memcpy(v80, (v23 + 608), 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v80) != 1)
    {
      memcpy(v88, v84, sizeof(v88));
      if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v88) == 1 || (memcpy(v98, &v88[40], 0x139uLL), _s11SiriNetwork010ConnectionB6ReportVSgWOg(v98) == 1))
      {
        v24 = 0;
        v25 = 1;
      }

      else
      {
        v24 = v98[0];
        v25 = v98[1];
      }

      *(v23 + 608) = v24;
      *(v23 + 612) = v25 & 1;
    }
  }

  (v21)(v79, 0);
  memcpy(v97, v84, sizeof(v97));
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v97) != 1)
  {
    memcpy(v107, &v97[40], 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v107) != 1)
    {
      v26 = v107[2];
      if (v107[2])
      {
        v27 = v107[1];

        v28 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider(v78);
        v30 = v29;
        memmove(v80, v29 + 71, 0x2C8uLL);
        if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v80) != 1)
        {
          memcpy(v79, v30 + 76, 0x139uLL);
          if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v79) != 1)
          {
            v30[77] = v27;
            v30[78] = v26;
          }
        }

        (v28)(v78, 0);
      }
    }
  }

  v31 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider(v79);
  v33 = v32;
  memmove(__dst, (v32 + 568), 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(__dst) != 1)
  {
    memcpy(v80, (v33 + 608), 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v80) != 1)
    {
      memcpy(v89, v84, sizeof(v89));
      if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v89) == 1 || (memcpy(v99, &v89[40], 0x139uLL), _s11SiriNetwork010ConnectionB6ReportVSgWOg(v99) == 1))
      {
        v34 = 0;
        v35 = 1;
      }

      else
      {
        v34 = v99[38];
        v35 = v99[39];
      }

      *(v33 + 912) = v34;
      *(v33 + 920) = v35 & 1;
    }
  }

  (v31)(v79, 0);
  memcpy(v96, v84, sizeof(v96));
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v96) != 1)
  {
    memcpy(v106, &v96[10], 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v106) != 1)
    {
      v36 = v106[265];
      v37 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider(v78);
      v39 = v38;
      memmove(v80, (v38 + 568), 0x2C8uLL);
      if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v80) != 1)
      {
        memcpy(v79, (v39 + 608), 0x139uLL);
        if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v79) != 1)
        {
          *(v39 + 873) = v36;
        }
      }

      (v37)(v78, 0);
    }
  }

  v40 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider(v79);
  v42 = v41;
  memmove(v74, (v41 + 568), 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v74) != 1)
  {
    memcpy(v80, (v42 + 608), 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v80) != 1)
    {
      memcpy(v90, v84, sizeof(v90));
      if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v90) == 1 || (memcpy(v100, &v90[40], 0x139uLL), _s11SiriNetwork010ConnectionB6ReportVSgWOg(v100) == 1))
      {
        v43 = 0;
        v44 = 1;
      }

      else
      {
        v43 = v100[34];
        v44 = v100[35];
      }

      *(v42 + 880) = v43;
      *(v42 + 888) = v44 & 1;
    }
  }

  (v40)(v79, 0);
  v45 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider(v79);
  v47 = v46;
  memmove(v73, (v46 + 568), 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v73) != 1)
  {
    memcpy(v80, (v47 + 608), 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v80) != 1)
    {
      memcpy(v91, v84, sizeof(v91));
      if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v91) == 1 || (memcpy(v101, &v91[40], 0x139uLL), _s11SiriNetwork010ConnectionB6ReportVSgWOg(v101) == 1))
      {
        v48 = 0;
        v49 = 1;
      }

      else
      {
        v48 = v101[36];
        v49 = v101[37];
      }

      *(v47 + 896) = v48;
      *(v47 + 904) = v49 & 1;
    }
  }

  (v45)(v79, 0);
  memcpy(v95, v84, sizeof(v95));
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v95) != 1)
  {
    memcpy(v105, &v95[10], 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v105) != 1 && (v105[4] & 1) == 0)
    {
      v50 = v105[3];
      v51 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider(v78);
      v53 = v52;
      memmove(v80, (v52 + 568), 0x2C8uLL);
      if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v80) != 1)
      {
        memcpy(v79, (v53 + 608), 0x139uLL);
        if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v79) != 1)
        {
          *(v53 + 632) = v50;
          *(v53 + 640) = 0;
        }
      }

      (v51)(v78, 0);
    }
  }

  v54 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider(v79);
  v56 = v55;
  memmove(v72, v55 + 71, 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v72) != 1)
  {
    memcpy(v80, v56 + 76, 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v80) != 1)
    {
      memcpy(v92, v84, sizeof(v92));
      if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v92) == 1 || (memcpy(v102, &v92[40], 0x139uLL), _s11SiriNetwork010ConnectionB6ReportVSgWOg(v102) == 1))
      {
        v57 = 0;
        v58 = 0;
      }

      else
      {
        v57 = v102[5];
      }

      v56[81] = v57;
      v56[82] = v58;
    }
  }

  (v54)(v79, 0);
  v59 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider(v79);
  v61 = v60;
  memmove(v71, (v60 + 568), 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v71) != 1)
  {
    memcpy(v80, (v61 + 608), 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v80) != 1)
    {
      memcpy(v93, v84, sizeof(v93));
      if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v93) == 1 || (memcpy(v103, &v93[40], 0x139uLL), _s11SiriNetwork010ConnectionB6ReportVSgWOg(v103) == 1))
      {
        v62 = 0;
        v63 = 1;
      }

      else
      {
        v62 = v103[30];
        v63 = v103[31];
      }

      *(v61 + 848) = v62;
      *(v61 + 856) = v63 & 1;
    }
  }

  (v59)(v79, 0);
  v64 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider(v79);
  v66 = v65;
  memmove(v70, (v65 + 568), 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v70) == 1)
  {
    result = (v64)(v79, 0);
    if (!v4)
    {
      return result;
    }

LABEL_86:
    memcpy(v79, (v1 + 56), 0x599uLL);
    memcpy(v78, (v1 + 56), 0x599uLL);
    outlined init with copy of ConnectionMetrics(v79, v80);
    v4(v78);
    memcpy(v80, v78, 0x599uLL);
    return outlined destroy of ConnectionMetrics(v80);
  }

  memcpy(v80, (v66 + 608), 0x139uLL);
  if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v80) != 1)
  {
    memcpy(v94, v84, sizeof(v94));
    if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v94) == 1 || (memcpy(v104, &v94[10], 0x139uLL), _s11SiriNetwork010ConnectionB6ReportVSgWOg(v104) == 1))
    {
      v68 = 0;
      v69 = 1;
    }

    else
    {
      v68 = v104[32];
      v69 = v104[33];
    }

    *(v66 + 864) = v68;
    *(v66 + 872) = v69 & 1;
  }

  result = (v64)(v79, 0);
  if (v4)
  {
    goto LABEL_86;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ConnectionNetworkReport(uint64_t result, int a2, int a3)
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
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 313) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 313) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_134()
{

  return swift_getObjectType();
}

void OUTLINED_FUNCTION_80_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

double OUTLINED_FUNCTION_73()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return result;
}

uint64_t OUTLINED_FUNCTION_135(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return ConnectionMethod.nextConnectionMethodSupported(connectionConfiguration:)(va, 0);
}

void *OUTLINED_FUNCTION_120(void *a1)
{

  return memcpy(a1, (v1 + 72), 0x599uLL);
}

double OUTLINED_FUNCTION_120_0()
{
  *(v0 + 376) = *(*(v0 + 368) + 120);

  return result;
}

uint64_t storeEnumTagSinglePayload for ConnectionSnapshotReport(uint64_t result, int a2, int a3)
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
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 696) = 0u;
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
      *(result + 712) = 1;
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

    *(result + 712) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed ConnectionMetrics?) -> ()(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  memcpy(__dst, v1, 0x599uLL);
  memcpy(__src, v4, sizeof(__src));
  destructiveProjectEnumData for ConnectionConfigurationError();
  memcpy(v6, __src, 0x599uLL);
  outlined init with copy of ConnectionMetrics(__dst, v9);
  v3(v6);
  memcpy(v9, v6, 0x599uLL);
  return outlined destroy of NetworkConnectionProtocol?(v9, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
}

void closure #1 in Connection.getSNConnectionMetrics(_:with:)(void *__src, void (*a2)(void *))
{
  if (a2)
  {
    memcpy(__dst, __src, 0x599uLL);
    if (_s11SiriNetwork17ConnectionMetricsVSgWOg(__dst) == 1)
    {
      v3 = 0;
    }

    else
    {
      v4 = memcpy(v5, __dst, sizeof(v5));
      v3 = ConnectionMetrics.snConnectionMetrics.getter(v4);
    }

    a2(v3);
  }
}

id ConnectionMetrics.snConnectionMetrics.getter(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = OUTLINED_FUNCTION_7_20();
  memcpy(v6, (v1 + 568), 0x2C8uLL);
  v7 = *(v1 + 1296);
  v95 = *(v1 + 1288);
  v96 = *(v1 + 1304);
  v8 = *(v1 + 1312);
  v92 = *(v1 + 1320);
  v9 = *(v1 + 1336);
  v97 = *(v1 + 1328);
  v98 = *(v1 + 1344);
  v10 = *(v1 + 1352);
  v11 = *(v1 + 1376);
  v91 = *(v1 + 1384);
  v12 = *(v1 + 1388);
  v13 = *(v1 + 1392);
  v99 = *(v1 + 1360);
  v100 = *(v1 + 1400);
  v14 = *(v1 + 1408);
  v93 = *(v1 + 1424);
  v94 = *(v1 + 1368);
  v101 = *(v1 + 1416);
  v102 = *(v1 + 1432);
  v15 = [objc_allocWithZone(SNConnectionMetrics) init];
  if (*(v5 + 16))
  {
    v16 = memcpy(__dst, (v5 + 32), 0x599uLL);
    v17 = ConnectionMetrics.snConnectionMetrics.getter(v16);
    OUTLINED_FUNCTION_6_4(v17, sel_setRemoteMetrics_);
  }

  if (*(v3 + 16))
  {
    specialized _arrayForceCast<A, B>(_:)(v3);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 setConnectionMethodHistory_];
  }

  if (v4)
  {
    v19 = MEMORY[0x223DE2070](v2, v4);
    OUTLINED_FUNCTION_6_4(v19, sel_setPolicyId_);
  }

  memcpy(__dst, v110, 0x2C8uLL);
  v20 = 0x277CCA000uLL;
  v21 = &off_2784DD000;
  v22 = &selRef_host;
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(__dst) != 1)
  {
    memcpy(v107, v110, sizeof(v107));
    OUTLINED_FUNCTION_0_52();
    outlined init with copy of ConnectionSnapshotReport(v107, v104);
    v23 = __dst;
    v24 = ConnectionSnapshotReport.netConnectionSnapshot.getter();
    OUTLINED_FUNCTION_6_4(v24, sel_setConnectionSnapshot_);

    OUTLINED_FUNCTION_0_52();
    v25 = ConnectionSnapshotReport.netDebugConnectionSnapshot.getter();
    OUTLINED_FUNCTION_6_4(v25, sel_setDebugConnectionSnapshot_);

    v26 = MEMORY[0x223DE2070](__dst[1], __dst[2]);
    OUTLINED_FUNCTION_6_4(v26, sel_setProviderStyle_);

    v27 = MEMORY[0x223DE2070](__dst[3], __dst[4]);
    OUTLINED_FUNCTION_6_4(v27, sel_setSnapshotTriggerReason_);

    memcpy(v108, &__dst[5], 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v108) != 1)
    {
      if (v108[2])
      {
        v28 = v108[1];
        outlined init with copy of ConnectionNetworkReport?(&__dst[5], v105);

        OUTLINED_FUNCTION_6_21();
        v29 = OUTLINED_FUNCTION_3_27();
        OUTLINED_FUNCTION_2_31(v29, sel_setCarrierName_);
      }

      else
      {
        OUTLINED_FUNCTION_8_19();
        outlined init with copy of ConnectionNetworkReport(v105, v104);
      }

      if (v108[15])
      {
        v30 = v108[14];

        OUTLINED_FUNCTION_6_21();
        v31 = OUTLINED_FUNCTION_3_27();
        OUTLINED_FUNCTION_2_31(v31, sel_setConnectionMethod_);
      }

      if (v108[10])
      {
        v32 = v108[9];

        OUTLINED_FUNCTION_6_21();
        v33 = OUTLINED_FUNCTION_3_27();
        OUTLINED_FUNCTION_2_31(v33, sel_setPrimarySubflowInterfaceName_);
      }

      v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      OUTLINED_FUNCTION_6_4(v34, sel_setIsCaptive_);

      if ((v108[35] & 1) == 0)
      {
        v35 = OUTLINED_FUNCTION_5_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v35, sel_setRssi_);
      }

      if ((v108[37] & 1) == 0)
      {
        v36 = OUTLINED_FUNCTION_5_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v36, sel_setSnr_);
      }

      if ((v108[39] & 1) == 0)
      {
        v37 = OUTLINED_FUNCTION_5_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v37, sel_setCca_);
      }

      if ((v108[0] & 0x100000000) == 0)
      {
        v38 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
        OUTLINED_FUNCTION_6_4(v38, sel_setAttemptCount_);
      }

      if ((v108[33] & 1) == 0)
      {
        v39 = OUTLINED_FUNCTION_5_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v39, sel_setTimeUntilFirstByteRead_);
      }

      if ((v108[17] & 1) == 0)
      {
        v40 = OUTLINED_FUNCTION_4_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v40, sel_setDnsResolutionTime_);
      }

      if ((v108[19] & 1) == 0)
      {
        v41 = OUTLINED_FUNCTION_4_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v41, sel_setConnectionStartTimeToDNSResolutionTimeMsec_);
      }

      if (v108[29])
      {
        v42 = v108[28];

        OUTLINED_FUNCTION_6_21();
        v43 = OUTLINED_FUNCTION_3_27();
        OUTLINED_FUNCTION_2_31(v43, sel_setTlsVersion_);
      }

      if ((v108[27] & 1) == 0)
      {
        v44 = OUTLINED_FUNCTION_4_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v44, sel_setTlsHandshakeTimeMsec_);
      }

      if ((v108[21] & 1) == 0)
      {
        v45 = OUTLINED_FUNCTION_4_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v45, sel_setConnectionEstablishmentTimeMsec_);
      }

      if ((v108[23] & 1) == 0)
      {
        v46 = OUTLINED_FUNCTION_4_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v46, sel_setConnectionStartTimeToConnectionEstablishmentTimeMsec_);
      }

      if ((v108[25] & 1) == 0)
      {
        v47 = OUTLINED_FUNCTION_4_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v47, sel_setConnectionStartTimeToTLSHandshakeTimeMsec_);
      }

      if (v108[6])
      {
        v48 = v108[5];

        OUTLINED_FUNCTION_6_21();
        v49 = OUTLINED_FUNCTION_3_27();
        OUTLINED_FUNCTION_2_31(v49, sel_setWifiPhyMode_);
      }

      if ((v108[4] & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_5_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v50, sel_setSignalStrengthBars_);
      }

      if ((v108[31] & 1) == 0)
      {
        v51 = OUTLINED_FUNCTION_5_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v51, sel_setTimeUntilOpen_);
      }

      v23 = &off_2784DD000;
      if ((v108[11] & 0x100000000) == 0)
      {
        v52 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
        OUTLINED_FUNCTION_6_4(v52, sel_setConnectedSubflowCount_);
      }

      outlined destroy of ConnectionSnapshotReport?(&__dst[5], &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
      if ((v108[12] & 0x100000000) == 0)
      {
        v53 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
        OUTLINED_FUNCTION_6_4(v53, sel_setConnectedSubflowCount_);
      }
    }

    OUTLINED_FUNCTION_0_52();
    v54 = ConnectionSnapshotReport.flowNetworkInterfaceType.getter()[2];

    if (v54)
    {
      OUTLINED_FUNCTION_0_52();
      v55 = ConnectionSnapshotReport.flowNetworkInterfaceType.getter();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v55);
      OUTLINED_FUNCTION_3_27();
      v56 = Dictionary._bridgeToObjectiveC()().super.isa;

      OUTLINED_FUNCTION_6_4(v57, sel_setFlowNetworkInterfaceType_);
    }

    OUTLINED_FUNCTION_0_52();
    v58 = *(ConnectionSnapshotReport.tcpInfoMetricsByInterfaceName.getter() + 16);

    if (v58)
    {
      OUTLINED_FUNCTION_0_52();
      ConnectionSnapshotReport.tcpInfoMetricsByInterfaceName.getter();
      type metadata accessor for SNConnectionTCPInfoMetrics();
      Dictionary._bridgeToObjectiveC()();
      v59 = OUTLINED_FUNCTION_3_27();
      OUTLINED_FUNCTION_2_31(v59, sel_setTCPInfoMetricsByInterfaceName_);
    }

    if ((__dst[47] & 1) == 0)
    {
      v60 = HIDWORD(__dst[46]);
      v61 = *&__dst[45];
      v62 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      OUTLINED_FUNCTION_2_31(v62, sel_setPingCount_);

      v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      OUTLINED_FUNCTION_2_31(v23, sel_setMeanPing_);

      v63 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      OUTLINED_FUNCTION_6_4(v63, sel_setUnacknowledgedPingCount_);
    }

    OUTLINED_FUNCTION_8_19();
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v105) != 1)
    {
      v64 = v106;
      memcpy(v104, &__dst[5], 0x139uLL);
      outlined init with copy of ConnectionNetworkReport(v104, v103);
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v64);
      Dictionary._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_3_27();
      v65 = outlined destroy of ConnectionSnapshotReport?(&__dst[5], &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
      OUTLINED_FUNCTION_2_31(v65, sel_setSubflowSwitchCounts_);
    }

    v66 = __dst[87];
    v22 = &selRef_host;
    if (LOBYTE(__dst[87]) == 4)
    {
      v67 = OUTLINED_FUNCTION_7_20();
      outlined destroy of ConnectionSnapshotReport?(v67, v68, v69);
      v20 = 0x277CCA000;
    }

    else
    {
      v70 = *(ConnectionQualityReport.symptomsBasedNetworkQuality.getter(__dst[87]) + 16);

      v20 = 0x277CCA000uLL;
      if (v70)
      {
        v71 = ConnectionQualityReport.symptomsBasedNetworkQuality.getter(v66);
        specialized _dictionaryUpCast<A, B, C, D>(_:)(v71);
        OUTLINED_FUNCTION_3_27();
        v72 = Dictionary._bridgeToObjectiveC()().super.isa;

        OUTLINED_FUNCTION_6_4(v73, sel_setSymptomsBasedNetworkQuality_);
        v74 = OUTLINED_FUNCTION_7_20();
        outlined destroy of ConnectionSnapshotReport?(v74, v75, v76);
      }

      else
      {
        v77 = OUTLINED_FUNCTION_7_20();
        outlined destroy of ConnectionSnapshotReport?(v77, v78, v79);
      }
    }

    v21 = &off_2784DD000;
  }

  if (v11)
  {
    v80 = MEMORY[0x223DE2070](v94, v11);
    OUTLINED_FUNCTION_6_4(v80, sel_setWifiChannelInfo_);
  }

  if ((v12 & 1) == 0)
  {
    v81 = [objc_allocWithZone(*(v20 + 2992)) initWithUnsignedInt_];
    OUTLINED_FUNCTION_6_4(v81, sel_setSimSubscriptions_);
  }

  if (v7)
  {
    v82 = MEMORY[0x223DE2070](v95, v7);
    OUTLINED_FUNCTION_6_4(v82, sel_setConnectionEdgeID_);
  }

  if (v8)
  {
    v83 = MEMORY[0x223DE2070](v96, v8);
    OUTLINED_FUNCTION_6_4(v83, sel_setConnectionEdgeType_);
  }

  if ((v97 & 1) == 0)
  {
    v84 = [objc_allocWithZone(*(v20 + 2992)) v21[493]];
    OUTLINED_FUNCTION_6_4(v84, sel_setConnectionFallbackReason_);
  }

  if ((v98 & 1) == 0)
  {
    v85 = [objc_allocWithZone(*(v20 + 2992)) v22[6]];
    OUTLINED_FUNCTION_6_4(v85, sel_setConnectionDelay_);
  }

  if ((v99 & 1) == 0)
  {
    v86 = [objc_allocWithZone(*(v20 + 2992)) v22[6]];
    OUTLINED_FUNCTION_6_4(v86, sel_setFirstTxByteDelay_);
  }

  if ((v100 & 1) == 0)
  {
    v87 = [objc_allocWithZone(*(v20 + 2992)) v22[6]];
    OUTLINED_FUNCTION_6_4(v87, sel_setIdsLastMessageDelay_);
  }

  if ((v101 & 1) == 0)
  {
    v88 = [objc_allocWithZone(*(v20 + 2992)) v22[6]];
    OUTLINED_FUNCTION_6_4(v88, sel_setIdsLastSocketDelay_);
  }

  if ((v102 & 1) == 0)
  {
    v89 = [objc_allocWithZone(*(v20 + 2992)) v21[493]];
    OUTLINED_FUNCTION_6_4(v89, sel_setIdsLastSocketOpenError_);
  }

  return v15;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      outlined init with take of Any(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi3key_Say11SiriNetwork21ConnectionPolicyRouteVG5valuetGMd, &_ss23_ContiguousArrayStorageCySi3key_Say11SiriNetwork21ConnectionPolicyRouteVG5valuetGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_Say11SiriNetwork21ConnectionPolicyRouteVG5valuetMd, &_sSi3key_Say11SiriNetwork21ConnectionPolicyRouteVG5valuetMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t static NetworkAnalytics.netSnapshotState(from:)()
{
  String.lowercased()();
  OUTLINED_FUNCTION_10_12();
  v3 = v3 && v2 == 0xEA0000000000646ELL;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_4_29(0x6574736575716572, 0xEA0000000000646ELL) & 1) != 0))
  {

    return 1;
  }

  else if (v4 == 0x6674736575716572 && v0 == 0xED000064656C6961)
  {

    return 2;
  }

  else
  {
    OUTLINED_FUNCTION_4_29(0x6674736575716572, 0xED000064656C6961);
    OUTLINED_FUNCTION_12_11();
    if (v4)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t ConnectionNetworkReport.firstByteTimeInMs.getter()
{
  v1 = *(v0 + 256);
  if (*(v0 + 264) & 1 | (v1 <= 0.0))
  {
    return 0;
  }

  v2 = v1 * 1000.0;
  if (v2 <= 0.0)
  {
    return 0;
  }

  if (v2 >= 1.84467441e19)
  {
    return -1;
  }

  if (*&v2 >> 52 > 0x7FEuLL)
  {
    __break(1u);
  }

  else if (v2 > -1.0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

void outlined bridged method (mbnn) of @objc NETSchemaNETSessionConnectionNetwork.primarySubflowInterfaceName.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x223DE2070](a1);

  [a3 setPrimarySubflowInterfaceName_];
}

uint64_t static NetworkAnalytics.netConnectionMethod(from:)()
{
  String.lowercased()();
  v1 = lazy protocol witness table accessor for type String and conformance String();
  v8 = OUTLINED_FUNCTION_0_56(v1, MEMORY[0x277D837D0], v2, v3, v4, v5, v6, v7, 1919247728);
  if (v8)
  {

    return 1;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_0_56(v8, MEMORY[0x277D837D0], v9, v10, v11, v12, v13, v14, 0x796E6163737574);
    if (v16)
    {

      return 2;
    }

    else
    {
      v23 = OUTLINED_FUNCTION_0_56(v16, MEMORY[0x277D837D0], v17, v18, v19, v20, v21, v22, 0x65636E65726F6C66);
      if (v23)
      {

        return 3;
      }

      else
      {
        v30 = OUTLINED_FUNCTION_0_56(v23, MEMORY[0x277D837D0], v24, v25, v26, v27, v28, v29, 0xD000000000000012);
        if (v30)
        {

          return 4;
        }

        else
        {
          v37 = OUTLINED_FUNCTION_0_56(v30, MEMORY[0x277D837D0], v31, v32, v33, v34, v35, v36, 0xD000000000000010);
          if (v37)
          {

            return 5;
          }

          else
          {
            v44 = OUTLINED_FUNCTION_0_56(v37, MEMORY[0x277D837D0], v38, v39, v40, v41, v42, v43, 0x706374706DLL);
            if (v44)
            {

              return 6;
            }

            else
            {
              OUTLINED_FUNCTION_0_56(v44, MEMORY[0x277D837D0], v45, v46, v47, v48, v49, v50, 7365492);
              OUTLINED_FUNCTION_12_11();
              if (v0)
              {
                return 7;
              }

              else
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t static NetworkAnalytics.netTLSVersion(from:)()
{
  String.lowercased()();
  OUTLINED_FUNCTION_10_12();
  v3 = v3 && v2 == 0xE500000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_4_29(0x3031736C74, 0xE500000000000000) & 1) != 0))
  {

    return 2;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_17_11() & 0xFFFF0000FFFFFFFFLL | 0x3100000000;
    v7 = v4 == v6 && v0 == 0xE500000000000000;
    if (v7 || (OUTLINED_FUNCTION_4_29(v6, 0xE500000000000000) & 1) != 0)
    {

      return 3;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_17_11() & 0xFFFF0000FFFFFFFFLL | 0x3200000000;
      v9 = v4 == v8 && v0 == 0xE500000000000000;
      if (v9 || (OUTLINED_FUNCTION_4_29(v8, 0xE500000000000000) & 1) != 0)
      {

        return 4;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_17_11() & 0xFFFF0000FFFFFFFFLL | 0x3300000000;
        v11 = v4 == v10 && v0 == 0xE500000000000000;
        if (v11 || (OUTLINED_FUNCTION_4_29(v10, 0xE500000000000000) & 1) != 0)
        {

          return 5;
        }

        else
        {
          v12 = OUTLINED_FUNCTION_17_11() & 0xFFFF0000FFFFFFFFLL | 0x3400000000;
          v13 = v4 == v12 && v0 == 0xE500000000000000;
          if (v13 || (OUTLINED_FUNCTION_4_29(v12, 0xE500000000000000) & 1) != 0)
          {

            return 6;
          }

          else if (v4 == 0x30336C7373 && v0 == 0xE500000000000000)
          {

            return 1;
          }

          else
          {
            OUTLINED_FUNCTION_4_29(0x30336C7373, 0xE500000000000000);
            OUTLINED_FUNCTION_12_11();
            return v4 & 1;
          }
        }
      }
    }
  }
}

Swift::UInt32 __swiftcall NetworkAnalytics.getSequenceNumber()()
{
  v22 = 0;
  v1 = *&v0[OBJC_IVAR___SNNetworkAnalyticsInternal_queue];
  OUTLINED_FUNCTION_3();
  v2 = swift_allocObject();
  *(v2 + 16) = &v22;
  *(v2 + 24) = v0;
  OUTLINED_FUNCTION_3();
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in NetworkAnalytics.getSequenceNumber();
  *(v3 + 24) = v2;
  v20 = thunk for @callee_guaranteed () -> ()partial apply;
  v21 = v3;
  OUTLINED_FUNCTION_12_3();
  v17 = 1107296256;
  OUTLINED_FUNCTION_5_9();
  v18 = v4;
  v19 = &block_descriptor_40;
  v5 = _Block_copy(aBlock);
  v6 = v1;
  v7 = v0;

  v8 = OUTLINED_FUNCTION_31_1();
  dispatch_sync(v8, v9);

  _Block_release(v5);
  v10 = OUTLINED_FUNCTION_36_1();
  v13 = OUTLINED_FUNCTION_46_0(v10, v11, v12, 135);

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

uint64_t sub_223544B40()
{
  OUTLINED_FUNCTION_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void *ConnectionNetworkReport.netDebugSessionConnectionNetwork.getter()
{
  v2 = [objc_allocWithZone(MEMORY[0x277D58BA0]) init];
  v3 = v2;
  if (*(v0 + 48))
  {
    if (!v2)
    {
      return v3;
    }

    type metadata accessor for NetworkAnalytics(0);
    v4 = v3;
    OUTLINED_FUNCTION_1_9();
    [v1 setWiFiPhyMode_];
  }

  else if (!v2)
  {
    return v3;
  }

  v5 = *(v0 + 24);
  if (*(v0 + 32))
  {
    v5 = 0.0;
  }

  [v3 setSignalStrengthBars_];
  v6 = COERCE_DOUBLE(ConnectionNetworkReport.openTimeInMs.getter());
  if (v7)
  {
    v6 = 0.0;
  }

  [v3 setOpenTimeInMs_];
  if (*(v0 + 100))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v0 + 96);
  }

  [v3 setConnectedSubflowCount_];
  return v3;
}

uint64_t static NetworkAnalytics.netWiFiPhyMode(from:)()
{
  String.lowercased()();
  OUTLINED_FUNCTION_10_12();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_4_29(0x6131312E323038, 0xE700000000000000) & 1) != 0))
  {

    return 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_2_34() & 0xFFFFFFFFFFFFLL | 0x62000000000000;
    v7 = v4 == v6 && v0 == 0xE700000000000000;
    if (v7 || (OUTLINED_FUNCTION_4_29(v6, 0xE700000000000000) & 1) != 0)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_2_34() & 0xFFFFFFFFFFFFLL | 0x67000000000000;
      v9 = v4 == v8 && v0 == 0xE700000000000000;
      if (v9 || (OUTLINED_FUNCTION_4_29(v8, 0xE700000000000000) & 1) != 0)
      {

        return 3;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_2_34() & 0xFFFFFFFFFFFFLL | 0x6E000000000000;
        v11 = v4 == v10 && v0 == 0xE700000000000000;
        if (v11 || (OUTLINED_FUNCTION_4_29(v10, 0xE700000000000000) & 1) != 0)
        {

          return 4;
        }

        else
        {
          v12 = OUTLINED_FUNCTION_2_34() & 0xFFFFFFFFFFFFLL | 0x6361000000000000;
          v13 = v4 == v12 && v0 == 0xE800000000000000;
          if (v13 || (OUTLINED_FUNCTION_4_29(v12, 0xE800000000000000) & 1) != 0)
          {

            return 5;
          }

          else
          {
            v14 = OUTLINED_FUNCTION_2_34() & 0xFFFFFFFFFFFFLL | 0x7861000000000000;
            v15 = v4 == v14 && v0 == 0xE800000000000000;
            if (v15 || (OUTLINED_FUNCTION_4_29(v14, 0xE800000000000000) & 1) != 0)
            {

              return 6;
            }

            else
            {
              v16 = OUTLINED_FUNCTION_2_34() & 0xFFFFFFFFFFFFLL | 0x6A61000000000000;
              v17 = v4 == v16 && v0 == 0xE800000000000000;
              if (v17 || (OUTLINED_FUNCTION_4_29(v16, 0xE800000000000000) & 1) != 0)
              {

                return 7;
              }

              else
              {
                v18 = OUTLINED_FUNCTION_2_34() & 0xFFFFFFFFFFFFLL | 0x6861000000000000;
                v19 = v4 == v18 && v0 == 0xE800000000000000;
                if (v19 || (OUTLINED_FUNCTION_4_29(v18, 0xE800000000000000) & 1) != 0)
                {

                  return 8;
                }

                else
                {
                  v20 = OUTLINED_FUNCTION_2_34() & 0xFFFFFFFFFFFFLL | 0x6461000000000000;
                  if (v4 == v20 && v0 == 0xE800000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_4_29(v20, 0xE800000000000000);
                    OUTLINED_FUNCTION_12_11();
                    if (v4)
                    {
                      return 9;
                    }

                    else
                    {
                      return 0;
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

uint64_t ConnectionNetworkReport.openTimeInMs.getter()
{
  result = *(v0 + 240);
  if ((*(v0 + 248) & 1) == 0)
  {
    v2 = *&result * 1000.0;
    *&result = -9.22337204e18;
    if (v2 > -9.22337204e18)
    {
      *&result = 9.22337204e18;
      if (v2 < 9.22337204e18)
      {
        if (v2 <= -9.22337204e18)
        {
          __break(1u);
        }

        else
        {
          *&result = v2;
        }
      }
    }
  }

  return result;
}

void *ConnectionTCPInfoMetrics.netDebugNetworkInterface.getter()
{
  v1 = *(v0 + 40);
  v44 = *(v0 + 48);
  v2 = *(v0 + 56);
  v43 = *(v0 + 64);
  v3 = *(v0 + 72);
  v42 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v36 = *(v0 + 120);
  v34 = *(v0 + 128);
  v38 = *(v0 + 136);
  v37 = *(v0 + 144);
  v40 = *(v0 + 152);
  v39 = *(v0 + 160);
  v35 = *(v0 + 188);
  v41 = *(v0 + 192);
  v27 = *(v0 + 200);
  v29 = *(v0 + 216);
  v28 = *(v0 + 224);
  v8 = *(v0 + 236);
  v32 = *(v0 + 208);
  v33 = *(v0 + 240);
  v30 = *(v0 + 248);
  v31 = *(v0 + 244);
  v9 = [objc_allocWithZone(MEMORY[0x277D58B98]) init];
  v10 = v9;
  if (v9)
  {
    if (v44)
    {
      v11 = 0;
    }

    else
    {
      v11 = v1;
    }

    [v9 setBytesReceived_];
    if (v43)
    {
      v12 = 0;
    }

    else
    {
      v12 = v2;
    }

    [v10 setBytesRetransmitted_];
    if (v42)
    {
      v13 = 0;
    }

    else
    {
      v13 = v3;
    }

    [v10 setBytesSent_];
    if (v5)
    {
      v14 = 0;
    }

    else
    {
      v14 = v4;
    }

    [v10 setBytesUnacked_];
    if (v7)
    {
      v15 = 0;
    }

    else
    {
      v15 = v6;
    }

    [v10 setDuplicateBytesReceived_];
    if (v34)
    {
      v16 = 0;
    }

    else
    {
      v16 = v36;
    }

    [v10 setOutOfOrderBytesReceived_];
    if (v37)
    {
      v17 = 0;
    }

    else
    {
      v17 = v38;
    }

    [v10 setPacketsReceived_];
    if (v39)
    {
      v18 = 0;
    }

    else
    {
      v18 = v40;
    }

    [v10 setPacketsSent_];
    OUTLINED_FUNCTION_0_9();
    [v10 setRttBest_];
    OUTLINED_FUNCTION_0_9();
    [v10 setRttCurrent_];
    OUTLINED_FUNCTION_0_9();
    [v10 setRttSmoothed_];
    if (v41)
    {
      v19 = 0;
    }

    else
    {
      v19 = v35;
    }

    [v10 setRttVariance_];
    if (v32)
    {
      v20 = 0;
    }

    else
    {
      v20 = v27;
    }

    [v10 setSendBandwidth_];
    if (v28)
    {
      v21 = 0;
    }

    else
    {
      v21 = v29;
    }

    [v10 setSendBufferBytes_];
    if (v30)
    {
      v22 = 0;
    }

    else
    {
      v22 = v31;
    }

    [v10 setSubflowSwitchCount_];
    OUTLINED_FUNCTION_0_9();
    [v10 setSynRetransmits_];
    if (v33)
    {
      v23 = 0;
    }

    else
    {
      v23 = v8;
    }

    [v10 setTfoSynDataAcked_];
    v24 = v10;
    v25 = ConnectionTCPInfoMetrics.netNetworkInterface.getter();
    [v24 setNetworkInterface_];
  }

  return v10;
}

void *ConnectionTCPInfoMetrics.netNetworkInterface.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 32);
  v4 = [objc_allocWithZone(MEMORY[0x277D58BF0]) init];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    if (v1)
    {
      v7 = MEMORY[0x223DE2070](v2, v1);
    }

    else
    {
      v7 = 0;
    }

    [v5 setName_];

    if (v3 == 25)
    {
      v8 = 0;
    }

    else
    {
      v8 = ConnectionType.netConnectionType.getter();
    }

    [v5 setConnectionType_];
  }

  return v5;
}

void *ConnectionPingInfoReport.netPingInfo.getter(unint64_t a1, double a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D58BA8]) init];
  v5 = v4;
  if (v4)
  {
    [v4 setPingCount_];
    [v5 setMeanPingInMs_];
    [v5 setUnacknowledgedPingCount_];
  }

  return v5;
}

uint64_t ConnectionQualityReport.symptomsBasedNetworkQuality.getter(unsigned int a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_5_17();
      break;
    case 2:
      OUTLINED_FUNCTION_0_35();
      break;
    case 3:
      OUTLINED_FUNCTION_1_18();
      break;
    default:
      break;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_7_16();
  switch(BYTE1(a1))
  {
    case 1:
      OUTLINED_FUNCTION_5_17();
      break;
    case 2:
      OUTLINED_FUNCTION_0_35();
      break;
    case 3:
      OUTLINED_FUNCTION_1_18();
      break;
    default:
      break;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_7_16();
  switch(BYTE2(a1))
  {
    case 1:
      OUTLINED_FUNCTION_5_17();
      break;
    case 2:
      OUTLINED_FUNCTION_0_35();
      break;
    case 3:
      OUTLINED_FUNCTION_1_18();
      break;
    default:
      break;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_7_16();
  switch(HIBYTE(a1))
  {
    case 2u:
      OUTLINED_FUNCTION_11_9();
      break;
    case 3u:
      OUTLINED_FUNCTION_4_6();
      break;
    default:
      break;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_9_11();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
  return v3;
}

void static NetworkAnalytics.netDebugSessionConnectionQuality(from:)(uint64_t a1)
{
  v2 = 0xEF746E6174736E69;
  v17 = [objc_allocWithZone(MEMORY[0x277D58BB0]) init];
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v18 = 0;
  v19 = 0;
  v7 = 0;
  while (v5)
  {
    v8 = v2;
LABEL_10:
    v5 &= v5 - 1;

    v20 = static NetworkAnalytics.netQuality(fromString:)();

    v10 = String.lowercased()();

    v2 = v8;
    v11 = v10._countAndFlagsBits == 0x72616C756C6C6563 && v10._object == v8;
    if (v11 || (OUTLINED_FUNCTION_8_22(0x72616C756C6C6563, v8, v10._countAndFlagsBits) & 1) != 0)
    {

      HIDWORD(v19) = v20;
    }

    else
    {
      v12 = v10._countAndFlagsBits == 0xD000000000000012 && 0x80000002235F86B0 == v10._object;
      if (v12 || (OUTLINED_FUNCTION_8_22(0xD000000000000012, 0x80000002235F86B0, v10._countAndFlagsBits) & 1) != 0)
      {

        LODWORD(v19) = v20;
      }

      else
      {
        v13 = v10._countAndFlagsBits == 0x74736E6969666977 && v10._object == 0xEB00000000746E61;
        if (v13 || (OUTLINED_FUNCTION_8_22(0x74736E6969666977, 0xEB00000000746E61, v10._countAndFlagsBits) & 1) != 0)
        {

          HIDWORD(v18) = v20;
        }

        else
        {
          if (v10._countAndFlagsBits == 0x7473696869666977 && v10._object == 0xEE006C616369726FLL)
          {

            goto LABEL_35;
          }

          v15 = OUTLINED_FUNCTION_8_22(0x7473696869666977, 0xEE006C616369726FLL, v10._countAndFlagsBits);

          if (v15)
          {
LABEL_35:
            LODWORD(v18) = v20;
          }
        }
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      v16 = v17;
      [v16 setSymptomsCellularInstant_];
      [v16 setSymptomsCellularHistorical_];
      [v16 setSymptomsWiFiInstant_];
      [v16 setSymptomsWiFiHistorical_];

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v5)
    {
      v8 = v2;
      v7 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t static NetworkAnalytics.netQuality(fromString:)()
{
  String.lowercased()();
  OUTLINED_FUNCTION_10_12();
  v3 = v3 && v2 == 0xE300000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_4_29(6578530, 0xE300000000000000) & 1) != 0))
  {

    return 3;
  }

  else
  {
    v6 = v4 == 1685024615 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_4_29(1685024615, 0xE400000000000000) & 1) != 0)
    {

      return 2;
    }

    else if (v4 == 0x616C696176616E75 && v0 == 0xEB00000000656C62)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_4_29(0x616C696176616E75, 0xEB00000000656C62);
      OUTLINED_FUNCTION_12_11();
      return v4 & 1;
    }
  }
}

uint64_t outlined init with copy of ConnectionNetworkReport?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *ConnectionSnapshotReport.flowNetworkInterfaceType.getter()
{
  v1 = *(v0 + 680);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  v3 = 0;
  v29 = *(v0 + 680);
  v4 = (v1 + 32);
  v30 = v2 - 1;
  v5 = MEMORY[0x277D84F98];
  while (1)
  {
    if (v3 >= v2)
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      JUMPOUT(0x2235461F8);
    }

    v31 = v4;
    memcpy(__dst, v4, 0x121uLL);
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E55;
    switch(LOBYTE(__dst[4]))
    {
      case 1:
        v6 = 0xE500000000000000;
        v7 = 0x69462D6957;
        break;
      case 2:
        v6 = 0xE400000000000000;
        v7 = 1312905047;
        break;
      case 3:
        v6 = 0xE500000000000000;
        v7 = 0x4E41525455;
        break;
      case 4:
        v6 = 0xE900000000000078;
        v7 = 0x31414D4443204732;
        break;
      case 5:
        v7 = 0x53525047204732;
        break;
      case 6:
        v7 = 0x65676445204732;
        break;
      case 7:
        v6 = 0xE800000000000000;
        v7 = 0x414D444357204733;
        break;
      case 8:
        v6 = 0xE800000000000000;
        v9 = 0x445348204733;
        goto LABEL_27;
      case 9:
        v6 = 0xE800000000000000;
        v9 = 0x555348204733;
LABEL_27:
        v7 = v9 & 0xFFFFFFFFFFFFLL | 0x4150000000000000;
        break;
      case 0xA:
        v8 = 0x307665524FLL;
        goto LABEL_25;
      case 0xB:
        v8 = 0x417665524FLL;
        goto LABEL_25;
      case 0xC:
        v8 = 0x427665524FLL;
LABEL_25:
        v6 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        v7 = 0x44564520414D4443;
        break;
      case 0xD:
        v6 = 0xE400000000000000;
        v7 = 1146114632;
        break;
      case 0xE:
        v6 = 0xE300000000000000;
        v7 = 4543564;
        break;
      case 0xF:
        v6 = 0xE800000000000000;
        v7 = 0x41534E524E204735;
        break;
      case 0x10:
        v6 = 0xE500000000000000;
        v7 = 0x524E204735;
        break;
      case 0x11:
        v6 = 0xE500000000000000;
        v7 = 0x504354504DLL;
        break;
      case 0x12:
        v6 = 0xE800000000000000;
        v7 = 0x796C6C654264654CLL;
        break;
      case 0x13:
        v6 = 0xE300000000000000;
        v7 = 5456969;
        break;
      case 0x14:
        v6 = 0xE300000000000000;
        v7 = 5263184;
        break;
      case 0x15:
        v6 = 0xE800000000000000;
        v7 = 0x65636E65726F6C46;
        break;
      case 0x16:
        v6 = 0xE500000000000000;
        v7 = 0x6C61636F4CLL;
        break;
      case 0x17:
        v7 = 0x504354504D574ELL;
        break;
      case 0x18:
        v6 = 0xE500000000000000;
        v7 = 0x6365737069;
        break;
      default:
        break;
    }

    v11 = __dst[0];
    v10 = __dst[1];
    outlined init with copy of ConnectionInterfaceReport(__dst, &v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v5;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v10);
    v15 = v5[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_44;
    }

    v18 = v13;
    v19 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17))
    {
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v10);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_46;
      }

      v18 = v20;
    }

    v5 = v32;
    if (v19)
    {
      v22 = (v32[7] + 16 * v18);
      *v22 = v7;
      v22[1] = v6;

      outlined destroy of ConnectionInterfaceReport(__dst);
    }

    else
    {
      v32[(v18 >> 6) + 8] |= 1 << v18;
      v23 = (v5[6] + 16 * v18);
      *v23 = v11;
      v23[1] = v10;
      v24 = (v5[7] + 16 * v18);
      *v24 = v7;
      v24[1] = v6;

      outlined destroy of ConnectionInterfaceReport(__dst);
      v25 = v5[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_45;
      }

      v5[2] = v27;
    }

    if (v30 == v3)
    {
      return v5;
    }

    v2 = *(v29 + 16);
    v4 = v31 + 296;
    ++v3;
  }
}

uint64_t ConnectionSnapshotReport.tcpInfoMetricsByInterfaceName.getter()
{
  v1 = *(v0 + 688);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  v3 = (v1 + 48);
  v4 = MEMORY[0x277D84F98];
  do
  {
    v5 = *(v3 - 1);
    if (v5)
    {
      v6 = *(v3 - 2);
      memcpy(v9, v3, sizeof(v9));

      v7 = ConnectionTCPInfoMetrics.snConnectionTCPInfoMetrics.getter();
      swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, v6, v5);
    }

    v3 += 32;
    --v2;
  }

  while (v2);
  return v4;
}

id ConnectionTCPInfoMetrics.snConnectionTCPInfoMetrics.getter()
{
  v32 = *(v0 + 88);
  v31 = *(v0 + 96);
  v35 = *(v0 + 104);
  v34 = *(v0 + 112);
  v41 = *(v0 + 120);
  v39 = *(v0 + 128);
  v36 = *(v0 + 164);
  v1 = *(v0 + 168);
  v2 = *(v0 + 180);
  v3 = *(v0 + 184);
  v4 = *(v0 + 188);
  v5 = *(v0 + 192);
  v44 = *(v0 + 200);
  v43 = *(v0 + 208);
  v40 = *(v0 + 216);
  v38 = *(v0 + 224);
  v46 = *(v0 + 232);
  v47 = *(v0 + 228);
  v49 = *(v0 + 240);
  v50 = *(v0 + 236);
  if (*(v0 + 8))
  {
    v51 = *(v0 + 8);
    v52 = *v0;
  }

  else
  {
    v51 = 0xE000000000000000;
    v52 = 0;
  }

  if (*(v0 + 176))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v0 + 172);
  }

  v7 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  v48 = [v7 initWithUnsignedInt_];
  if (v3)
  {
    v8 = 0;
  }

  else
  {
    v8 = v2;
  }

  v45 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v4;
  }

  v42 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  if (v1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v36;
  }

  v37 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v33 = OUTLINED_FUNCTION_0_38(objc_allocWithZone(MEMORY[0x277CCABB0]));
  v30 = OUTLINED_FUNCTION_0_38(objc_allocWithZone(MEMORY[0x277CCABB0]));
  v28 = OUTLINED_FUNCTION_0_38(objc_allocWithZone(MEMORY[0x277CCABB0]));
  v29 = OUTLINED_FUNCTION_0_38(objc_allocWithZone(MEMORY[0x277CCABB0]));
  v11 = OUTLINED_FUNCTION_0_38(objc_allocWithZone(MEMORY[0x277CCABB0]));
  if (v31)
  {
    v12 = 0;
  }

  else
  {
    v12 = v32;
  }

  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  if (v34)
  {
    v14 = 0;
  }

  else
  {
    v14 = v35;
  }

  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  if (v39)
  {
    v16 = 0;
  }

  else
  {
    v16 = v41;
  }

  v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  if (v38)
  {
    v18 = 0;
  }

  else
  {
    v18 = v40;
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  if (v43)
  {
    v20 = 0;
  }

  else
  {
    v20 = v44;
  }

  v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  if (v46)
  {
    v22 = 0;
  }

  else
  {
    v22 = v47;
  }

  v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  if (v49)
  {
    v24 = 0;
  }

  else
  {
    v24 = v50;
  }

  v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) &selRef:v24 setNetworkConnectionStateReadySnapshotCaptured:? + 3];
  v26 = objc_allocWithZone(SNConnectionTCPInfoMetrics);
  return @nonobjc SNConnectionTCPInfoMetrics.init(interfaceName:rttCurrent:rttSmoothed:rttVariance:rttBest:packetsSent:packetsReceived:bytesSent:bytesReceived:bytesRetransmitted:bytesUnacked:duplicateBytesReceived:outOfOrderBytesReceived:sendBufferBytes:sendBandwidth:synRetransmits:tfoSynDataAcked:)(v52, v51, v48, v45, v42, v37, v33, v30, v28, v29, v11, v13, v15, v17, v19, v21, v23, v25);
}

Swift::Void __swiftcall NetworkAnalytics.resetNetId()()
{
  OUTLINED_FUNCTION_46();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v5 = *(v0 + OBJC_IVAR___SNNetworkAnalyticsInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_28_0(v6);
  swift_unknownObjectWeakInit();
  v18[4] = partial apply for closure #1 in NetworkAnalytics.resetNetId();
  v19 = v1;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v18[2] = v7;
  v18[3] = &block_descriptor_6;
  v8 = _Block_copy(v18);
  v9 = v5;
  OUTLINED_FUNCTION_42();
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_2_9();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v10, v11, MEMORY[0x277D851A0]);
  v12 = OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_45_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_43_1();
  _Block_release(v8);

  v14 = OUTLINED_FUNCTION_16_1();
  v15(v14);
  v16 = OUTLINED_FUNCTION_16();
  v17(v16);
  OUTLINED_FUNCTION_39_0();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_223546944()
{
  MEMORY[0x223DE39C0](v0 + 16);
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t closure #1 in NetworkAnalytics.getNetId()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v7 = OUTLINED_FUNCTION_11_1(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v13[-v8 - 8];
  v10 = *a3;
  OUTLINED_FUNCTION_40_1(a2 + v10, v13);
  outlined init with copy of UUID?(a2 + v10, v9);
  return outlined assign with take of UUID?(v9, a1);
}

void specialized ConnectionProviderProtocol.cancelStaleConnectionTimer()()
{
  if (*(v0 + 2128))
  {
    v1 = v0;
    v2 = one-time initialization token for siriNetwork;
    swift_unknownObjectRetain();
    if (v2 != -1)
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
      v14 = v7;
      *v6 = 136315394;
      v8 = _typeName(_:qualified:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v14);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      v11 = NetworkConnectionProvider.connectionIdentifier.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

      *(v6 + 14) = v13;
      _os_log_impl(&dword_223515000, v4, v5, "Provider - %s [%s]: Stale connection timer cancelled.", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v7, -1, -1);
      MEMORY[0x223DE38F0](v6, -1, -1);
    }

    *(v1 + 2128) = 0;
    swift_unknownObjectRelease();
    swift_getObjectType();
    OS_dispatch_source.cancel()();

    swift_unknownObjectRelease();
  }
}

{
  OUTLINED_FUNCTION_112();
  if (*(v0 + 2144))
  {
    v3 = v0;
    v4 = one-time initialization token for siriNetwork;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v5, static Logger.siriNetwork);

    v6 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_122();
    if (OUTLINED_FUNCTION_121())
    {
      OUTLINED_FUNCTION_89();
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_38_0(4.8151e-34);
      v7 = _typeName(_:qualified:)();
      OUTLINED_FUNCTION_119(v7, v8, v9, v10);
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_21_3();
      v11 = OUTLINED_FUNCTION_65();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v13);
      OUTLINED_FUNCTION_118();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_36_0(&dword_223515000, v14, v15, "Provider - %s [%s]: Stale connection timer cancelled.");
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    *(v3 + 2144) = 0;
    swift_unknownObjectRelease();
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    OUTLINED_FUNCTION_63_1();

    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_63_1();
  }
}

void *OUTLINED_FUNCTION_21_1(void *a1)
{

  return memcpy(a1, &STACK[0x10F0], 0x599uLL);
}

uint64_t OUTLINED_FUNCTION_21_2()
{
}

double OUTLINED_FUNCTION_21_3()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return result;
}

void OUTLINED_FUNCTION_21_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_81_0(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

void outlined bridged method (mbnn) of @objc NETSchemaNETSessionConnectionSnapshotCaptured.networkInterfaces.setter(uint64_t a1, void *a2, unint64_t *a3, void *a4)
{
  type metadata accessor for CTServiceDescriptor(0, a3, a4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setNetworkInterfaces_];
}

id ConnectionSnapshotReport.netConnectionSnapshot.getter()
{
  v1 = *v0;
  memcpy(__dst, v0 + 5, sizeof(__dst));
  v2 = v0[85];
  v3 = v0[86];
  v4 = [objc_allocWithZone(MEMORY[0x277D58C28]) init];
  [v4 setSequenceNumber_];
  if (v4)
  {
    type metadata accessor for NetworkAnalytics(0);
    v5 = v4;
    [v5 setProvider_];

    v6 = v5;
    [v6 setSnapshotTriggerReason_];
  }

  if (*(v2 + 16))
  {
    v7 = MEMORY[0x277D84F90];
    v24 = MEMORY[0x277D84F90];
    v8 = *(v3 + 16);
    if (v8)
    {
      v9 = (v3 + 32);
      do
      {
        memcpy(v25, v9, 0xF9uLL);
        v10 = objc_allocWithZone(MEMORY[0x277D58BF0]);
        outlined init with copy of ConnectionTCPInfoMetrics(v25, v23);
        v11 = [v10 init];
        if (v11)
        {
          v12 = v11;
          v13 = v25[1];
          if (v25[1])
          {
            v14 = v25[0];
            v15 = v11;
            v13 = MEMORY[0x223DE2070](v14, v13);
          }

          else
          {
            v16 = v11;
          }

          v17 = SLOBYTE(v25[4]);
          [v12 setName_];

          [v12 setConnectionType_];
          outlined destroy of ConnectionTCPInfoMetrics(v25);
          v18 = v12;
          MEMORY[0x223DE2240]();
          if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v7 = v24;
        }

        else
        {
          outlined destroy of ConnectionTCPInfoMetrics(v25);
        }

        v9 += 256;
        --v8;
      }

      while (v8);
    }

    if (!v4)
    {

      return v4;
    }

    outlined bridged method (mbnn) of @objc NETSchemaNETSessionConnectionSnapshotCaptured.networkInterfaces.setter(v7, v4, &lazy cache variable for type metadata for NETSchemaNETNetworkInterface, 0x277D58BF0);
  }

  if (v4)
  {
    memcpy(v23, __dst, 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v23) == 1)
    {
      v19 = v4;
      v20 = 0;
    }

    else
    {
      memcpy(v25, v23, 0x139uLL);
      v21 = v4;
      v20 = ConnectionNetworkReport.netSessionConnectionNetwork.getter();
    }

    [v4 setNetwork_];
  }

  return v4;
}

id ConnectionSnapshotReport.netDebugConnectionSnapshot.getter()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);
  v4 = *(v0 + 680);
  v5 = *(v0 + 688);
  v6 = *(v0 + 696);
  v7 = [objc_allocWithZone(MEMORY[0x277D58BB8]) init];
  if (v7)
  {
    if (one-time initialization token for sharedNetworkAnalytics != -1)
    {
      swift_once();
    }

    [v7 setSequenceNumber_];
    memcpy(__dst, (v0 + 40), 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(__dst) == 1)
    {
      v8 = v7;
      v9 = 0;
    }

    else
    {
      memcpy(v29, __dst, sizeof(v29));
      v10 = v7;
      v9 = ConnectionNetworkReport.netDebugSessionConnectionNetwork.getter();
    }

    [v7 setNetwork_];
  }

  if (*(v4 + 16))
  {
    v11 = MEMORY[0x277D84F90];
    v28 = MEMORY[0x277D84F90];
    v12 = *(v5 + 16);
    if (v12)
    {
      v13 = (v5 + 32);
      do
      {
        memcpy(__dst, v13, 0xF9uLL);
        memcpy(v27, v13, sizeof(v27));
        outlined init with copy of ConnectionTCPInfoMetrics(__dst, v26);
        v14 = ConnectionTCPInfoMetrics.netDebugNetworkInterface.getter();
        if (v14)
        {
          v15 = v14;
          outlined destroy of ConnectionTCPInfoMetrics(__dst);
          v16 = v15;
          MEMORY[0x223DE2240]();
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v11 = v28;
        }

        else
        {
          outlined destroy of ConnectionTCPInfoMetrics(__dst);
        }

        v13 += 256;
        --v12;
      }

      while (v12);
    }

    if (!v7)
    {

      return v7;
    }

    outlined bridged method (mbnn) of @objc NETSchemaNETSessionConnectionSnapshotCaptured.networkInterfaces.setter(v11, v7, &lazy cache variable for type metadata for NETSchemaNETDebugNetworkInterface, 0x277D58B98);
  }

  if (v7)
  {
    v17 = v7;
    if (v3)
    {
      v18 = 0;
    }

    else
    {
      v18 = ConnectionPingInfoReport.netPingInfo.getter(v2, v1);
    }

    [v17 setPingInfo_];

    if (v6 == 4)
    {
      v19 = v17;
      v20 = 0;
    }

    else
    {
      type metadata accessor for NetworkAnalytics(0);
      v21 = v17;
      v22 = ConnectionQualityReport.symptomsBasedNetworkQuality.getter(v6);
      static NetworkAnalytics.netDebugSessionConnectionQuality(from:)(v22);
      v20 = v23;
    }

    [v17 setQuality_];
  }

  return v7;
}

id @nonobjc SNConnectionTCPInfoMetrics.init(interfaceName:rttCurrent:rttSmoothed:rttVariance:rttBest:packetsSent:packetsReceived:bytesSent:bytesReceived:bytesRetransmitted:bytesUnacked:duplicateBytesReceived:outOfOrderBytesReceived:sendBufferBytes:sendBandwidth:synRetransmits:tfoSynDataAcked:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18)
{
  v20 = MEMORY[0x223DE2070](a1);

  v27 = [v26 initWithInterfaceName:v20 rttCurrent:a3 rttSmoothed:a4 rttVariance:a5 rttBest:a6 packetsSent:a7 packetsReceived:a8 bytesSent:a9 bytesReceived:a10 bytesRetransmitted:a11 bytesUnacked:a12 duplicateBytesReceived:a13 outOfOrderBytesReceived:a14 sendBufferBytes:a15 sendBandwidth:a16 synRetransmits:a17 tfoSynDataAcked:a18];

  return v27;
}

void *ConnectionNetworkReport.netSessionConnectionNetwork.getter()
{
  v2 = v0;
  v3 = [objc_allocWithZone(MEMORY[0x277D58C20]) init];
  v4 = v3;
  if (v3)
  {
    v5 = *(v0 + 2);
    if (v5)
    {
      v6 = *(v2 + 1);
      v7 = v3;
      v5 = MEMORY[0x223DE2070](v6, v5);
    }

    else
    {
      v8 = v3;
    }

    [v4 setCarrierName_];

    if (*(v2 + 4))
    {
      v9 = 0;
    }

    else
    {
      v9 = *v2;
    }

    [v4 setAttempCount_];
    v10 = *(v2 + 38);
    if (*(v2 + 312))
    {
      v10 = 0.0;
    }

    [v4 setClearChannelAssessmentScore_];
    OUTLINED_FUNCTION_0_18();
    [v4 setDnsResolutionTime_];
    OUTLINED_FUNCTION_0_18();
    [v4 setStartToDNSResolution_];
    OUTLINED_FUNCTION_0_18();
    [v4 setConnectionStartToEstablishmentTime_];
    OUTLINED_FUNCTION_0_18();
    [v4 setConnectionStartToTLSHandshake_];
    OUTLINED_FUNCTION_0_18();
    [v4 setTlsHandshakeTime_];
    OUTLINED_FUNCTION_0_18();
    [v4 setConnectionEstablishmentTime_];
    v11 = ConnectionNetworkReport.firstByteTimeInMs.getter();
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    [v4 setFirstByteTime_];
    [v4 setIsCaptive_];
    v14 = *(v2 + 34);
    if (*(v2 + 280))
    {
      v14 = 0.0;
    }

    [v4 setRssi_];
    v15 = *(v2 + 36);
    if (*(v2 + 296))
    {
      v15 = 0.0;
    }

    [v4 setSnr_];
    if (*(v2 + 10))
    {
      v16 = *(v2 + 9);
      v17 = *(v2 + 10);
    }

    else
    {
      v16 = 0;
      v17 = 0xE000000000000000;
    }

    outlined bridged method (mbnn) of @objc NETSchemaNETSessionConnectionNetwork.primarySubflowInterfaceName.setter(v16, v17, v4);
    if (*(v2 + 15))
    {
      type metadata accessor for NetworkAnalytics(0);
      v18 = v4;
      OUTLINED_FUNCTION_1_9();
      [v1 setConnectionMethod_];
    }

    if (*(v2 + 29))
    {
      type metadata accessor for NetworkAnalytics(0);
      v19 = v4;
      [v19 setTlsVersion_];
    }
  }

  return v4;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_20_4(a1, a2, a3);
  OUTLINED_FUNCTION_2_19();
  if (v7)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo26SNConnectionTCPInfoMetricsCGMd, &_ss17_NativeDictionaryVySSSo26SNConnectionTCPInfoMetricsCGMR);
  if (OUTLINED_FUNCTION_28_4())
  {
    OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_16_8();
    if (!v9)
    {
      goto LABEL_14;
    }

    v6 = v8;
  }

  if (v5)
  {
    *(*(*v4 + 56) + 8 * v6) = v3;
    OUTLINED_FUNCTION_106_0();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_52_3();
    specialized _NativeDictionary._insert(at:key:value:)(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_106_0();
  }
}

{
  OUTLINED_FUNCTION_20_4(a1, a2, a3);
  OUTLINED_FUNCTION_2_19();
  if (v7)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSs6UInt64VGMd, &_ss17_NativeDictionaryVySSs6UInt64VGMR);
  if (OUTLINED_FUNCTION_28_4())
  {
    OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_16_8();
    if (!v9)
    {
      goto LABEL_12;
    }

    v6 = v8;
  }

  if (v5)
  {
    *(*(*v4 + 56) + 8 * v6) = v3;
    OUTLINED_FUNCTION_106_0();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_52_3();
    specialized _NativeDictionary._insert(at:key:value:)(v10, v11, v12, v13, v14);
    OUTLINED_FUNCTION_106_0();
  }
}

uint64_t OUTLINED_FUNCTION_86()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_93()
{
}

uint64_t OUTLINED_FUNCTION_93_0(uint64_t a1)
{

  return AsyncStream.Continuation.yield(_:)();
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

unint64_t type metadata accessor for SNConnectionTCPInfoMetrics()
{
  result = lazy cache variable for type metadata for SNConnectionTCPInfoMetrics;
  if (!lazy cache variable for type metadata for SNConnectionTCPInfoMetrics)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SNConnectionTCPInfoMetrics);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionMetrics(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 1433))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t objectdestroy_30Tm()
{
  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_109();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t objectdestroy_55Tm()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void Connection.cancelSynchronously(_:isOnConnectionQueue:with:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v70 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_1();
  v15 = v14 - v13;
  v16 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0_0();
  v69 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_1();
  v21 = v20 - v19;
  v22 = type metadata accessor for String.Encoding();
  v23 = OUTLINED_FUNCTION_11_1(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_1();
  if (v1[OBJC_IVAR___SNConnectionInternal_isCanceled])
  {
    if (v5)
    {
      v5();
    }

    goto LABEL_33;
  }

  v68 = v3;
  v1[OBJC_IVAR___SNConnectionInternal_isCanceled] = 1;
  dispatch_queue_get_label(0);
  static String.Encoding.utf8.getter();
  v24 = String.init(cString:encoding:)();
  v26 = v25;
  if (v7)
  {

    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v27, static Logger.siriNetwork);
    v28 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v29 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v29, v30))
    {
      OUTLINED_FUNCTION_17_5();
      v31 = swift_slowAlloc();
      OUTLINED_FUNCTION_40_2(v31);
      OUTLINED_FUNCTION_68_3(&dword_223515000, v32, v33, "Connection - Cancel: on connection queue");
      v34 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v34);
    }

    Connection.cancelSynchronously(_:)(v5);
    goto LABEL_33;
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_27;
  }

  v35 = v24;
  v36 = *&v1[OBJC_IVAR___SNConnectionInternal_connectionQueue];
  v37 = OS_dispatch_queue.label.getter();
  if (v26)
  {
    if (v35 == v37 && v26 == v38)
    {
      goto LABEL_26;
    }

    v40 = OUTLINED_FUNCTION_72_1(v35, v26, v37);

    v41 = v68;
    if (v40)
    {
      goto LABEL_28;
    }
  }

  else
  {

    v41 = v68;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v42, static Logger.siriNetwork);
  v43 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v44 = OUTLINED_FUNCTION_16_0();
  if (os_log_type_enabled(v44, v45))
  {
    OUTLINED_FUNCTION_17_5();
    v46 = swift_slowAlloc();
    OUTLINED_FUNCTION_40_2(v46);
    OUTLINED_FUNCTION_68_3(&dword_223515000, v47, v48, "Connection - Cancel: synchronously");
    v49 = OUTLINED_FUNCTION_1_2();
    MEMORY[0x223DE38F0](v49);
  }

  OUTLINED_FUNCTION_109();
  v50 = swift_allocObject();
  v50[2] = v1;
  v50[3] = v5;
  v50[4] = v41;
  OUTLINED_FUNCTION_3();
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in Connection.cancelSynchronously(_:isOnConnectionQueue:with:);
  *(v10 + 24) = v50;
  v75 = _sIg_Ieg_TRTA_0;
  v76 = v10;
  OUTLINED_FUNCTION_1_1();
  v72 = 1107296256;
  OUTLINED_FUNCTION_5_9();
  v73 = v51;
  v74 = &block_descriptor_37;
  v52 = _Block_copy(&v71);
  v16 = v76;
  v53 = v1;
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v5, v41);

  dispatch_sync(v36, v52);
  _Block_release(v52);
  LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

  if (v52)
  {
    __break(1u);
LABEL_26:

LABEL_27:

LABEL_28:
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v54, static Logger.siriNetwork);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    v57 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v57, v58))
    {
      OUTLINED_FUNCTION_17_5();
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_223515000, v55, v56, "Connection - Cancel: async", v59, 2u);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    OUTLINED_FUNCTION_7_1();
    v60 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_109();
    v61 = swift_allocObject();
    v61[2] = v60;
    v61[3] = v5;
    v61[4] = v68;
    v75 = partial apply for closure #2 in Connection.cancelSynchronously(_:isOnConnectionQueue:with:);
    v76 = v61;
    OUTLINED_FUNCTION_1_1();
    v72 = 1107296256;
    OUTLINED_FUNCTION_3_5();
    v73 = v62;
    v74 = &block_descriptor_28_0;
    v63 = _Block_copy(&v71);
    v64 = OUTLINED_FUNCTION_32();
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v64, v65);

    static DispatchQoS.unspecified.getter();
    OUTLINED_FUNCTION_1_24();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(v66, v67, MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2460](0, v21, v15, v63);
    _Block_release(v63);
    (*(v70 + 8))(v15, v10);
    (*(v69 + 8))(v21, v16);
  }

LABEL_33:
  OUTLINED_FUNCTION_47();
}

void closure #2 in Connection.cancelSynchronously(_:isOnConnectionQueue:with:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    Connection.cancelSynchronously(_:)(a2);
  }
}

uint64_t objectdestroy_24Tm()
{

  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_109();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t objectdestroy_24Tm_0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t BackgroundConnection.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  BackgroundConnection.deinit(a1, a2, a3, a4, a5, a6, a7);

  return MEMORY[0x2821FE8D8](v7, 1256, 7);
}

id *BackgroundConnection.deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  BackgroundConnection.closeConnectionAndPrepareForReconnect(_:)(0, a2, a3, a4, a5, a6, a7);
  outlined destroy of weak ConnectionProviderDelegate?((v7 + 2));

  OUTLINED_FUNCTION_78_1(v9);
  outlined destroy of ConnectionConfiguration(v9);
  memcpy(__dst, v7 + 70, 0x204uLL);
  outlined destroy of ConnectionConfiguration(__dst);
  swift_unknownObjectRelease();
  outlined destroy of NetworkConnectionProtocol?((v7 + 137), &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);

  swift_unknownObjectRelease();

  return v7;
}

uint64_t BackgroundConnection.closeConnectionAndPrepareForReconnect(_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(v7 + 1080))
  {
    v9 = *(v7 + 1088);
    swift_getObjectType();
    v10 = *(v9 + 472);
    swift_unknownObjectRetain();
    v11 = OUTLINED_FUNCTION_0_36();
    v10(v11);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_36_5(v7 + 1096, a2, a3, a4, a5, a6, a7);
  v12 = outlined init with copy of MessageCenterBrowserProtocol?(v7 + 1096, v19, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  if (v20)
  {
    OUTLINED_FUNCTION_101_1(v12, v13);
    outlined destroy of NetworkConnectionProtocol?(v19, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    v14 = v18[3];
    v15 = v18[4];
    OUTLINED_FUNCTION_143(v18);
    (*(v16 + 144))(a1 & 1, v14, v15);
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(v19, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  }

  *(v7 + 1185) = 0;
  *(v7 + 1187) = 0;
  if (one-time initialization token for connectionClosed != -1)
  {
    swift_once();
  }

  return siri_kdebug_trace(static Constants.Signposts.connectionClosed);
}

Swift::Void __swiftcall ConnectionProviderProtocol.close()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*(v2 + 152))(v3, v2);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v3;
  v17[3] = v2;
  v17[4] = v16;
  aBlock[4] = partial apply for closure #1 in ConnectionProviderProtocol.close();
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_1;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2460](0, v14, v9, v18);
  _Block_release(v18);

  (*(v6 + 8))(v9, v4);
  (*(v11 + 8))(v14, v19[0]);
}

uint64_t sub_223548B50()
{
  MEMORY[0x223DE39C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_223548B88()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

Swift::Void __swiftcall CommunicationProtocolAce.closeConnection(prepareForReconnect:)(Swift::Bool prepareForReconnect)
{
  v2 = v1;
  OUTLINED_FUNCTION_25_2();
  swift_beginAccess();
  v4 = v2[5];
  v5 = v2[6];
  *(v2 + 5) = xmmword_2235EF700;
  outlined consume of Data?(v4, v5);
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  OUTLINED_FUNCTION_27_1();
  swift_beginAccess();
  outlined assign with take of DataCompressing?(v17, (v2 + 14), &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
  swift_endAccess();
  if (!prepareForReconnect)
  {
    OUTLINED_FUNCTION_25_2();
    swift_beginAccess();
    v6 = v2[9];
    v7 = v2[10];
    *(v2 + 9) = xmmword_2235EF700;
    v8 = outlined consume of Data?(v6, v7);
    v9 = v2[42];
    MEMORY[0x28223BE20](v8);
    os_unfair_lock_lock(v9 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
    os_unfair_lock_unlock(v9 + 4);
    OUTLINED_FUNCTION_25_2();
    swift_beginAccess();
    v10 = v2[11];
    v11 = v2[12];
    *(v2 + 11) = xmmword_2235EF700;
    v12 = outlined consume of Data?(v10, v11);
    CommunicationProtocolAce.cancelOutstandingBarriers()(v12, v13, v14, v15);
  }

  v16 = v2[13];
  if (v16)
  {

    v2[13] = 0;
  }
}

uint64_t outlined assign with take of DataCompressing?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_75_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_71();
  v5 = OUTLINED_FUNCTION_14_3();
  v6(v5);
  return v4;
}

uint64_t ZlibDataDecompressor.__deallocating_deinit()
{
  ZlibDataDecompressor.deinit();

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t ZlibDataDecompressor.deinit()
{
  MEMORY[0x223DE38F0](*(v0 + 128), -1, -1);
  swift_beginAccess();
  inflateEnd((v0 + 16));
  swift_endAccess();
  return v0;
}

uint64_t closure #1 in ConnectionProviderProtocol.close()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(a3 + 488))(0, a2, a3);
    return swift_unknownObjectRelease();
  }

  return result;
}

void NetworkConnectionProvider.closeWithError(_:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_1();
  v10 = v9 - v8;
  v11 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_1();
  if (*(v0 + 2099))
  {
    goto LABEL_35;
  }

  *(v0 + 2099) = 1;
  v81 = v6;
  v80 = v11;
  v79 = v10;
  v78 = v13;
  v77 = v16 - v15;
  if (v3)
  {
    v86[0] = v3;
    v17 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      if (*(&v82[1] + 1) >> 60 == 10 && !v83)
      {
        v18 = *(&v82[1] + 1) == 0xA000000000000000 && *&v82[0] == 1;
        if (v18 && *(v82 + 8) == 0)
        {
          if (one-time initialization token for siriNetwork != -1)
          {
            OUTLINED_FUNCTION_0_8();
            swift_once();
          }

          v19 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_58(v19, static Logger.siriNetwork);

          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v20, v21))
          {
            goto LABEL_27;
          }

          OUTLINED_FUNCTION_6_5();
          v22 = swift_slowAlloc();
          OUTLINED_FUNCTION_4_3();
          v23 = swift_slowAlloc();
          *&v82[0] = v23;
          *v22 = 136315138;
          v24 = NetworkConnectionProvider.connectionIdentifier.getter();
          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v82);

          *(v22 + 4) = v26;
          v27 = "Provider - NetworkConnectionProvider [%s]: Close and cancel connection after receiving cancellation";
          goto LABEL_20;
        }
      }

      outlined consume of NetworkConnectionError(*&v82[0], *(&v82[0] + 1), *&v82[1], *(&v82[1] + 1), v83);
    }

    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v32, static Logger.siriNetwork);
    v33 = v3;

    v20 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v20, v34))
    {
      goto LABEL_27;
    }

    v35 = OUTLINED_FUNCTION_89();
    v36 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v37 = swift_slowAlloc();
    *&v82[0] = v37;
    *v35 = 136315394;
    v38 = NetworkConnectionProvider.connectionIdentifier.getter();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v82);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2112;
    v41 = v3;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 14) = v42;
    *v36 = v42;
    _os_log_impl(&dword_223515000, v20, v34, "Provider - NetworkConnectionProvider [%s]: Close and cancel connection for error: %@", v35, 0x16u);
    outlined destroy of NetworkConnectionProtocol?(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    __swift_destroy_boxed_opaque_existential_0(v37);
    goto LABEL_26;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v28, static Logger.siriNetwork);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v20, v21))
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_6_5();
  v22 = swift_slowAlloc();
  OUTLINED_FUNCTION_4_3();
  v23 = swift_slowAlloc();
  *&v82[0] = v23;
  *v22 = 136315138;
  v29 = NetworkConnectionProvider.connectionIdentifier.getter();
  v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v82);

  *(v22 + 4) = v31;
  v27 = "Provider - NetworkConnectionProvider [%s]: Close and cancel connection with no error";
LABEL_20:
  _os_log_impl(&dword_223515000, v20, v21, v27, v22, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v23);
LABEL_26:
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x223DE38F0]();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x223DE38F0]();
LABEL_27:

  specialized ConnectionProviderProtocol.cancelStaleConnectionTimer()();
  specialized ConnectionProviderProtocol.cancelConnectionUnviableTimer()();
  specialized ConnectionProviderProtocol.cancelOpenTimer()();
  specialized ConnectionProviderProtocol.cancelOpenSlowTimer()();
  v43 = *(v0 + 2064);
  v44 = *(v0 + 2072);
  OUTLINED_FUNCTION_7_1();
  v45 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_66();
  v46 = swift_allocObject();
  v46[2] = v45;
  v46[3] = v43;
  v46[4] = v44;
  v46[5] = v3;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of NetworkConnectionProtocol?(v1 + 16, v82, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (*(&v82[1] + 1))
  {
    outlined init with take of RPCOspreyConnectionProtocol(v82, v86);
    v83 = 0;
    memset(v82, 0, sizeof(v82));
    swift_beginAccess();
    v47 = OUTLINED_FUNCTION_50();
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v47, v48);
    v49 = v3;
    v50 = OUTLINED_FUNCTION_50();
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v50, v51);
    outlined assign with take of NetworkConnectionProtocol?(v82, v1 + 16);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1(v86, v86[3]);
    v52 = NWConnection.identifier.getter();
    v76 = v43;
    v53 = dispatch_group_create();
    dispatch_group_enter(v53);
    OUTLINED_FUNCTION_7_1();
    v54 = swift_allocObject();
    swift_weakInit();
    v55 = swift_allocObject();
    *(v55 + 16) = v53;
    *(v55 + 24) = v54;
    v56 = v53;

    NetworkConnectionProvider.updateConnectionMetricsSnapthotReport(_:)();

    dispatch_group_enter(v56);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    outlined init with copy of RPCOspreyConnectionProtocol(v86, v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
    type metadata accessor for NWConnection();
    if (swift_dynamicCast())
    {
      v57 = *&v85[0];
    }

    else
    {
      v57 = 0;
    }

    OUTLINED_FUNCTION_7_1();
    v58 = swift_allocObject();
    *(v58 + 16) = v56;
    v59 = v56;
    NetworkActivityTracing.removeNWConnection(_:completion:)(v57, partial apply for closure #3 in NetworkConnectionProvider.closeWithError(_:), v58);

    outlined init with copy of RPCOspreyConnectionProtocol(v86, v85);
    v60 = swift_allocObject();
    v60[2] = v52;
    outlined init with take of RPCOspreyConnectionProtocol(v85, (v60 + 3));
    v60[8] = partial apply for closure #1 in NetworkConnectionProvider.closeWithError(_:);
    v60[9] = v46;
    v83 = partial apply for closure #4 in NetworkConnectionProvider.closeWithError(_:);
    v84 = v60;
    *&v82[0] = MEMORY[0x277D85DD0];
    *(&v82[0] + 1) = 1107296256;
    *&v82[1] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v82[1] + 1) = &block_descriptor_242;
    v61 = _Block_copy(v82);

    static DispatchQoS.unspecified.getter();
    OUTLINED_FUNCTION_1_8();
    lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v62, 255, v63, MEMORY[0x277D851A0]);
    v64 = OUTLINED_FUNCTION_79();
    __swift_instantiateConcreteTypeFromMangledNameV2(v64, v65);
    OUTLINED_FUNCTION_83();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](v66, v67, v68);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v61);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v76, v44);
    (*(v81 + 8))(v79, v4);
    (*(v78 + 8))(v77, v80);

    __swift_destroy_boxed_opaque_existential_0(v86);
  }

  else
  {
    v69 = OUTLINED_FUNCTION_50();
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v69, v70);
    v71 = v3;
    v72 = OUTLINED_FUNCTION_50();
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v72, v73);

    outlined destroy of NetworkConnectionProtocol?(v82, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    closure #1 in NetworkConnectionProvider.closeWithError(_:)(v45, v43, v44, v3);

    v74 = OUTLINED_FUNCTION_50();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v74, v75);
  }

LABEL_35:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_223549844()
{

  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_66();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_223549890()
{
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2235498C4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t ZlibDataCompressor.__deallocating_deinit()
{
  ZlibDataCompressor.deinit();

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t ZlibDataCompressor.deinit()
{
  MEMORY[0x223DE38F0](*(v0 + 128), -1, -1);
  swift_beginAccess();
  deflateEnd((v0 + 16));
  swift_endAccess();
  return v0;
}

void *OUTLINED_FUNCTION_78_1(void *a1)
{

  return memcpy(a1, (v1 + 40), 0x204uLL);
}

void specialized ConnectionProviderProtocol.cancelConnectionUnviableTimer()()
{
  if (*(v0 + 2136))
  {
    v1 = v0;
    v2 = one-time initialization token for siriNetwork;
    swift_unknownObjectRetain();
    if (v2 != -1)
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
      v14 = v7;
      *v6 = 136315394;
      v8 = _typeName(_:qualified:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v14);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      v11 = NetworkConnectionProvider.connectionIdentifier.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

      *(v6 + 14) = v13;
      _os_log_impl(&dword_223515000, v4, v5, "Provider - %s [%s]: Unviable timer cancelled", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v7, -1, -1);
      MEMORY[0x223DE38F0](v6, -1, -1);
    }

    *(v1 + 2136) = 0;
    swift_unknownObjectRelease();
    swift_getObjectType();
    OS_dispatch_source.cancel()();

    swift_unknownObjectRelease();
  }
}

{
  OUTLINED_FUNCTION_112();
  if (*(v0 + 2152))
  {
    v3 = v0;
    v4 = one-time initialization token for siriNetwork;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v5, static Logger.siriNetwork);

    v6 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_122();
    if (OUTLINED_FUNCTION_121())
    {
      OUTLINED_FUNCTION_89();
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_38_0(4.8151e-34);
      v7 = _typeName(_:qualified:)();
      OUTLINED_FUNCTION_119(v7, v8, v9, v10);
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_21_3();
      v11 = OUTLINED_FUNCTION_65();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v13);
      OUTLINED_FUNCTION_118();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_36_0(&dword_223515000, v14, v15, "Provider - %s [%s]: Unviable timer cancelled");
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    *(v3 + 2152) = 0;
    swift_unknownObjectRelease();
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    OUTLINED_FUNCTION_63_1();

    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_63_1();
  }
}

void CommunicationProtocolAce.cancelOutstandingBarriers()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_36_2(v4 + 208, a2, a3, a4);
  v5 = *(v4 + 208);
  OUTLINED_FUNCTION_49();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
    v12 = v11;
LABEL_7:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = *(*(v5 + 56) + ((v12 << 10) | (16 * v13)));
    v15[0] = 0;

    v14(v15);
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      OUTLINED_FUNCTION_27_1();
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD8_VariantVys6UInt32VySbc_GMd, &_sSD8_VariantVys6UInt32VySbc_GMR);
      Dictionary._Variant.removeAll(keepingCapacity:)(0);
      swift_endAccess();
      OUTLINED_FUNCTION_77_0();
      return;
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t CommunicationProtocolAce.deinit()
{
  CommunicationProtocolAce.closeConnection(prepareForReconnect:)(0);
  CommunicationProtocolAce.cancelAceHeaderTimeoutTimer()();
  CommunicationProtocolAce.cancelPingTimer()();
  outlined destroy of weak ConnectionProviderDelegate?(v0 + 16);

  outlined consume of Data?(*(v0 + 40), *(v0 + 48));
  outlined consume of Data._Representation(*(v0 + 56), *(v0 + 64));
  outlined consume of Data?(*(v0 + 72), *(v0 + 80));
  outlined consume of Data?(*(v0 + 88), *(v0 + 96));
  outlined destroy of NetworkConnectionProtocol?(v0 + 112, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
  outlined destroy of NetworkConnectionProtocol?(v0 + 152, &_s11SiriNetwork15DataCompressing_pSgMd, &_s11SiriNetwork15DataCompressing_pSgMR);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  outlined consume of Data?(*(v0 + 256), *(v0 + 264));
  outlined consume of Data?(*(v0 + 320), *(v0 + 328));

  return v0;
}

uint64_t CommunicationProtocolAce.__deallocating_deinit()
{
  CommunicationProtocolAce.deinit();

  return MEMORY[0x2821FE8D8](v0, 344, 7);
}

void CommunicationProtocolAce.cancelAceHeaderTimeoutTimer()()
{
  if (*(v0 + 192))
  {
    v1 = v0;
    v2 = one-time initialization token for siriNetwork;
    swift_unknownObjectRetain();
    if (v2 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v3, static Logger.siriNetwork);
    v4 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v5 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v5, v6))
    {
      OUTLINED_FUNCTION_17_5();
      v7 = swift_slowAlloc();
      OUTLINED_FUNCTION_40_2(v7);
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      v13 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v13);
    }

    swift_getObjectType();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    *(v1 + 192) = 0;

    swift_unknownObjectRelease();
  }
}

unint64_t ConnectionPingInfoReport.debugDescription.getter(double a1)
{
  MEMORY[0x223DE2180](0x676E69506E61656DLL, 0xED000020734D6E49);
  Double.write<A>(to:)();
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v1);

  _StringGuts.grow(_:)(26);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v2);

  _StringGuts.grow(_:)(45);

  MEMORY[0x223DE2180](0, 0xE000000000000000);

  MEMORY[0x223DE2180](8236, 0xE200000000000000);
  MEMORY[0x223DE2180](0x6E756F43676E6970, 0xEA00000000002074);

  MEMORY[0x223DE2180](8236, 0xE200000000000000);
  MEMORY[0x223DE2180](0xD000000000000018, 0x80000002235F8D70);

  MEMORY[0x223DE2180](93, 0xE100000000000000);
  return 0xD000000000000022;
}

uint64_t NWConnection.init(endpoint:configuration:with:)(uint64_t a1, const void *a2, void *a3)
{
  v6 = type metadata accessor for NWEndpoint();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  memcpy(v14, a2, 0x204uLL);
  type metadata accessor for NWParameters();
  v10 = a3;
  NWParameters.init(configuration:with:)(v14, a3);
  (*(v7 + 16))(v9, a1, v6);
  v11 = dispatch thunk of NWConnection.__allocating_init(to:using:)();

  (*(v7 + 8))(a1, v6);
  return v11;
}

uint64_t NWParameters.init(configuration:with:)(const void *a1, void *a2)
{
  v142[65] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for NWParameters.ServiceClass();
  isa = v5[-1].isa;
  MEMORY[0x28223BE20](v5);
  v133 = v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v142, a1, 0x204uLL);
  memcpy(v141, a1, sizeof(v141));
  v7 = ConnectionConfiguration.usingTLS.getter();
  v8 = &lazy cache variable for type metadata for OS_dispatch_queue;
  if (v7 && (v142[14] & 1) == 0)
  {
    OUTLINED_FUNCTION_4_14();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriNetwork);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_3_13(v13))
    {
      v14 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_11_7(v14);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v15, v16, v17, v18, v19, 2u);
      OUTLINED_FUNCTION_12();
    }

    v9 = LOBYTE(v142[25]);
    type metadata accessor for NWProtocolTLS.Options();
    swift_allocObject();
    v137 = NWProtocolTLS.Options.init()();
    v20 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
    sec_protocol_options_set_tls_tickets_enabled(v20, SBYTE1(v142[25]));
    if (v142[49] && ((v142[42] & 0x10000) != 0 || (v142[42] & 0x1000000) != 0))
    {
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_3_13(v22))
      {
        v23 = OUTLINED_FUNCTION_14();
        *v23 = 0;
        _os_log_impl(&dword_223515000, v21, v2, "Provider - Network setup: TLS13 enabled", v23, 2u);
        OUTLINED_FUNCTION_12();
      }

      sec_protocol_options_set_max_tls_protocol_version(v20, tls_protocol_version_TLSv13);
      sec_protocol_options_set_tls_resumption_enabled(v20, 1);
      sec_protocol_options_set_tls_false_start_enabled(v20, 1);
      v24 = String.utf8CString.getter();
      sec_protocol_options_add_tls_application_protocol(v20, (v24 + 32));
    }

    swift_unknownObjectRelease();
    v8 = &lazy cache variable for type metadata for OS_dispatch_queue;
  }

  else
  {
    v9 = 0;
    v137 = 0;
  }

  type metadata accessor for NWProtocolTCP.Options();
  swift_allocObject();
  v25 = NWProtocolTCP.Options.init()();
  v129 = v142[49] != 0;
  v130 = LOBYTE(v142[42]);
  v135 = v142[49] == 0;
  v136 = BYTE1(v142[42]);
  if (v142[49])
  {
    v26 = BYTE4(v142[42]);
  }

  else
  {
    v26 = v9;
  }

  dispatch thunk of NWProtocolTCP.Options.noDelay.setter();
  v132 = v26;
  dispatch thunk of NWProtocolTCP.Options.enableFastOpen.setter();
  v27 = *&v142[26];
  v28 = v142[27];
  if (LOBYTE(v142[27]) != 1 || LOBYTE(v142[29]) != 1 || (v142[31] & 1) == 0)
  {
    v128 = v5;
    dispatch thunk of NWProtocolTCP.Options.enableKeepalive.setter();
    dispatch thunk of NWProtocolTCP.Options.keepaliveCount.setter();
    OUTLINED_FUNCTION_4_14();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.siriNetwork);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_8_9(v31))
    {
      v32 = OUTLINED_FUNCTION_55();
      *v32 = 134217984;
      *(v32 + 4) = dispatch thunk of NWProtocolTCP.Options.keepaliveCount.getter();

      OUTLINED_FUNCTION_6_14(&dword_223515000, v33, v34, "Provider - Network setup: keepaliveCount (number of keepalive probes to send before terminating): %ld");
      OUTLINED_FUNCTION_12();

      if (v28)
      {
LABEL_27:
        dispatch thunk of NWProtocolTCP.Options.keepaliveIdle.setter();

        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_8_9(v36))
        {
          v37 = OUTLINED_FUNCTION_55();
          *v37 = 134217984;
          *(v37 + 4) = dispatch thunk of NWProtocolTCP.Options.keepaliveIdle.getter();

          OUTLINED_FUNCTION_6_14(&dword_223515000, v38, v39, "Provider - Network setup: keepaliveIdle (number of seconds of idleness to wait before keepalive): %ld");
          OUTLINED_FUNCTION_12();
        }

        else
        {
        }

        if ((v142[29] & 1) == 0)
        {
          Double.seconds.getter(*&v142[28]);
        }

        dispatch thunk of NWProtocolTCP.Options.keepaliveInterval.setter();

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_8_9(v41))
        {
          v42 = OUTLINED_FUNCTION_55();
          *v42 = 134217984;
          *(v42 + 4) = dispatch thunk of NWProtocolTCP.Options.keepaliveInterval.getter();

          OUTLINED_FUNCTION_6_14(&dword_223515000, v43, v44, "Provider - Network setup: keepaliveInterval (number of seconds to wait before resending TCP): %ld");
          OUTLINED_FUNCTION_12();
        }

        else
        {
        }

        v8 = &lazy cache variable for type metadata for OS_dispatch_queue;
        v5 = v128;
        goto LABEL_36;
      }
    }

    else
    {

      if (v28)
      {
        goto LABEL_27;
      }
    }

    Double.seconds.getter(v27);
    goto LABEL_27;
  }

LABEL_36:
  if ((v142[33] & 1) == 0)
  {
    v45 = *&v142[32];
    OUTLINED_FUNCTION_4_14();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
    }

    v46 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v46, static Logger.siriNetwork);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_3_13(v48))
    {
      v8 = OUTLINED_FUNCTION_55();
      *v8 = 134217984;
      *(v8 + 4) = Double.seconds.getter(v45);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v49, v50, v51, v52, v53, 0xCu);
      OUTLINED_FUNCTION_2_17();
    }

    Double.seconds.getter(v45);
    dispatch thunk of NWProtocolTCP.Options.connectionDropTime.setter();
  }

  if (v7)
  {
    v54 = v137;
  }

  else
  {
    v54 = 0;
  }

  v55 = MEMORY[0x223DE1B10](v54, v25);
  if (v7 && (v142[14] & 1) == 0)
  {
    v131 = a2;
    memcpy(v141, v142, sizeof(v141));

    v56 = ConnectionConfiguration.resolvedHost.getter();
    if (v57)
    {
      v58 = v56;
      v59 = v57;
      v60 = String.utf8CString.getter();
      v61 = strdup((v60 + 32));

      if (v61)
      {
        v128 = v58;
        v62 = strlen(v61);
        v63 = xpc_data_create(v61, v62);
        NWParameters.nw.getter();
        nw_parameters_set_tls_session_id();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_4_14();
        if (!v10)
        {
          OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
        }

        v64 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_58(v64, static Logger.siriNetwork);

        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = OUTLINED_FUNCTION_55();
          v127[1] = v63;
          v68 = v67;
          v8 = swift_slowAlloc();
          *v141 = v8;
          *v68 = 136315138;
          v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v59, v141);
          v128 = v65;
          v70 = v69;

          *(v68 + 4) = v70;
          v65 = v128;
          _os_log_impl(&dword_223515000, v128, v66, "Provider - Network setup: session set %s", v68, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v8);
          OUTLINED_FUNCTION_2_17();
          OUTLINED_FUNCTION_12();
        }

        else
        {
        }

        OUTLINED_FUNCTION_12();
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    a2 = v131;
  }

  else
  {
  }

  LODWORD(v71) = v129 & v130;
  NWParameters.nw.getter();
  if (one-time initialization token for siriContext != -1)
  {
    swift_once();
  }

  nw_parameters_set_context();
  swift_unknownObjectRelease();
  NWParameters.nw.getter();
  nw_parameters_set_data_mode();
  swift_unknownObjectRelease();
  (*(isa + 13))(v133, *MEMORY[0x277CD8E10], v5);
  NWParameters.serviceClass.setter();
  NWParameters.nw.getter();
  nw_parameters_set_traffic_class();
  swift_unknownObjectRelease();
  if (((AFIsHorseman() | v71) & 1) == 0)
  {
    OUTLINED_FUNCTION_4_14();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
    }

    v82 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v82, static Logger.siriNetwork);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_3_13(v84))
    {
      v85 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_11_7(v85);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v86, v87, v88, v89, v90, 2u);
      OUTLINED_FUNCTION_2_17();
    }

    v91 = NWParameters.nw.getter();
    nw_parameters_set_multipath_service(v91, nw_multipath_service_interactive);
    goto LABEL_77;
  }

  if (LOBYTE(v142[12]) == 1 && AFHasCellularData())
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((*(static NetworkManager.shared + OBJC_IVAR___SNNetworkManagerInternal_lastSignalStrength + 8) & 1) == 0 && *(static NetworkManager.shared + OBJC_IVAR___SNNetworkManagerInternal_lastSignalStrength) >= 2)
    {
      OUTLINED_FUNCTION_4_14();
      if (!v10)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
      }

      v72 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v72, static Logger.siriNetwork);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_3_13(v74))
      {
        v75 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_11_7(v75);
        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v76, v77, v78, v79, v80, 2u);
        OUTLINED_FUNCTION_2_17();
      }

      v81 = NWParameters.nw.getter();
      nw_parameters_set_required_interface_type(v81, nw_interface_type_cellular);
LABEL_77:
      swift_unknownObjectRelease();
    }
  }

  NWParameters.nw.getter();
  nw_parameters_set_indefinite();
  swift_unknownObjectRelease();
  NWParameters.nw.getter();
  nw_parameters_set_tfo();
  swift_unknownObjectRelease();
  if (LOBYTE(v142[14]) != 1)
  {
    outlined destroy of ConnectionConfiguration(v142);
    goto LABEL_89;
  }

  if (v142[51] == 1 || (v92 = v142[53]) == 0)
  {
    v93 = v142[6];
    v92 = v142[7];

    outlined destroy of ConnectionConfiguration(v142);
    if (!v92)
    {
      goto LABEL_89;
    }
  }

  else
  {
    v93 = v142[52];

    outlined destroy of ConnectionConfiguration(v142);
  }

  OUTLINED_FUNCTION_4_14();
  if (!v10)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
  }

  v94 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v94, static Logger.siriNetwork);

  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v95, v96))
  {
    v8 = OUTLINED_FUNCTION_55();
    v97 = swift_slowAlloc();
    *v141 = v97;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v92, v141);
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v98, v99, v100, v101, v102, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v97);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_2_17();
  }

  NWParameters.nw.getter();
  NetworkServiceProxyEnableInParameters();
  swift_unknownObjectRelease();
  NWParameters.nw.getter();
  v71 = MEMORY[0x223DE2070](v93, v92);

  NetworkServiceProxySetServiceNameInParameters();
  swift_unknownObjectRelease();

LABEL_89:
  v103 = v135 | v136;
  if (a2)
  {
    v104 = v8[80];
    v105 = a2;
    if (v104 != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
    }

    v106 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v106, static Logger.siriNetwork);
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_3_13(v108))
    {
      v109 = OUTLINED_FUNCTION_14();
      *v109 = 0;
      _os_log_impl(&dword_223515000, v107, v71, "Provider - Network setup: Connection with initial payload", v109, 2u);
      OUTLINED_FUNCTION_12();
    }

    NWParameters.nw.getter();
    nw_parameters_set_initial_data_payload();

    swift_unknownObjectRelease();
  }

  if (v103)
  {
    OUTLINED_FUNCTION_4_14();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
    }

    v110 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v110, static Logger.siriNetwork);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_3_13(v112))
    {
      v113 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_11_7(v113);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v114, v115, v116, v117, v118, 2u);
      OUTLINED_FUNCTION_2_17();
    }

    v119 = NWParameters.nw.getter();
    nw_parameters_set_expired_dns_behavior(v119, nw_parameters_expired_dns_behavior_allow);
    swift_unknownObjectRelease();
  }

  memset(v141, 0, 32);
  v140 = 8;
  if (task_info(*MEMORY[0x277D85F48], 0xFu, v141, &v140))
  {
    OUTLINED_FUNCTION_4_14();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
    }

    v120 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v120, static Logger.siriNetwork);
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = OUTLINED_FUNCTION_14();
      *v123 = 0;
      v124 = "Provider - Network setup: Failed to get audit_token_t for current task.";
LABEL_110:
      _os_log_impl(&dword_223515000, v121, v122, v124, v123, 2u);
      OUTLINED_FUNCTION_12();
    }
  }

  else
  {
    NWParameters.nw.getter();
    v138 = *v141;
    v139 = *&v141[16];
    nw_parameters_set_source_application();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_4_14();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
    }

    v125 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v125, static Logger.siriNetwork);
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = OUTLINED_FUNCTION_14();
      *v123 = 0;
      v124 = "Provider - Network setup: Source application assigned (audit_token_t).";
      goto LABEL_110;
    }
  }

  return v55;
}

BOOL ConnectionConfiguration.usingTLS.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  OUTLINED_FUNCTION_11_1(v1);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v2);
  v4 = v46 - v3;
  v5 = type metadata accessor for URLComponents();
  OUTLINED_FUNCTION_0_0();
  v48 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = OUTLINED_FUNCTION_11_1(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v46 - v17;
  v19 = type metadata accessor for URL();
  OUTLINED_FUNCTION_0_0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_9();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = v46 - v27;
  v29 = v0[51];
  if (v29 == 1)
  {
    goto LABEL_9;
  }

  v51 = v0[50];
  v52 = v29;
  memcpy(v53, v0 + 52, sizeof(v53));
  ConnectionPolicyRoute.routeHost.getter();
  if (!v30)
  {
    goto LABEL_9;
  }

  URL.init(string:)();

  OUTLINED_FUNCTION_6_25(v15);
  if (v31)
  {
    v32 = &_s10Foundation3URLVSgMd;
    v33 = &_s10Foundation3URLVSgMR;
    v34 = v15;
LABEL_8:
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v34, v32, v33);
LABEL_9:
    v36 = OUTLINED_FUNCTION_8_23();
    __swift_storeEnumTagSinglePayload(v36, v37, 1, v19);
LABEL_10:
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v18, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return 0;
  }

  v47 = *(v21 + 32);
  v47(v25, v15, v19);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v5);
  if (EnumTagSinglePayload == 1)
  {
    (*(v21 + 8))(v25, v19);
    v32 = &_s10Foundation13URLComponentsVSgMd;
    v33 = &_s10Foundation13URLComponentsVSgMR;
    v34 = v4;
    goto LABEL_8;
  }

  v46[1] = v21 + 32;
  v39 = v48;
  (*(v48 + 32))(v10, v4, v5);
  URLComponents.url.getter();
  (*(v39 + 8))(v10, v5);
  v40 = *(v21 + 8);
  v40(v25, v19);
  OUTLINED_FUNCTION_6_25(v18);
  if (v31)
  {
    goto LABEL_10;
  }

  v47(v28, v18, v19);
  v41 = URL.scheme.getter();
  if (v42)
  {
    v51 = v41;
    v52 = v42;
    OUTLINED_FUNCTION_11_13();
    v49 = v43;
    v50 = v44;
    lazy protocol witness table accessor for type String and conformance String();
    v45 = StringProtocol.caseInsensitiveCompare<A>(_:)();

    v40(v28, v19);
    return v45 == 0;
  }

  v40(v28, v19);
  return 0;
}

uint64_t outlined assign with take of NetworkConnectionProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NetworkActivityTracing.addNWConnection(_:completion:)(uint64_t result, uint64_t (*a2)(void), uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  if (result)
  {
    v13 = result;

    specialized NetworkActivityTracingInternal.addConnection(_:completion:)(v13, a2, a3, a4, a5, a6, a7);
  }

  else if (a2)
  {
    return a2();
  }

  return result;
}

uint64_t specialized NetworkActivityTracingInternal.addConnection(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = a5;
  v42 = a6;
  v39 = a4;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v45 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0_0();
  v43 = v17;
  v44 = v16;
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.siriNetwork);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v38 = v19;
    v24 = v15;
    v25 = v11;
    v26 = a7;
    v27 = a2;
    v28 = a3;
    v29 = v23;
    *v23 = 134217984;
    *(v23 + 4) = NWConnection.identifier.getter();

    _os_log_impl(&dword_223515000, v21, v22, v39, v29, 0xCu);
    v30 = v29;
    a3 = v28;
    a2 = v27;
    a7 = v26;
    v11 = v25;
    v15 = v24;
    v19 = v38;
    MEMORY[0x223DE38F0](v30, -1, -1);
  }

  else
  {
  }

  v31 = *(v40 + 32);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = a1;
  v33[4] = a2;
  v33[5] = a3;
  aBlock[4] = v42;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a7;
  v34 = _Block_copy(aBlock);

  v35 = v31;

  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a2, a3);
  static DispatchQoS.unspecified.getter();
  v46 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2460](0, v19, v15, v34);
  _Block_release(v34);

  (*(v45 + 8))(v15, v11);
  (*(v43 + 8))(v19, v44);
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

Swift::Void __swiftcall NetworkConnectionProvider.updateAndEmitConnectionMetricsPreparationReport()()
{
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
  v4 = OUTLINED_FUNCTION_11_1(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v26[-v5];
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of NetworkConnectionProtocol?(v0 + 16, &v39, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (v40)
  {
    outlined init with take of RPCOspreyConnectionProtocol(&v39, v41);
    __swift_project_boxed_opaque_existential_1(v41, v41[3]);
    NWConnection.currentPath.getter();
    ConnectionPreparationReport.init(path:)(v6, v36);
    OUTLINED_FUNCTION_95(v0 + 56, &v35);
    OUTLINED_FUNCTION_84(v37);
    memcpy((v0 + 152), v36, 0x168uLL);
    outlined destroy of NetworkConnectionProtocol?(v37, &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
    v7 = NetworkConnectionProvider.connectionMetrics.modify(v30);
    v9 = v8;
    memmove(v38, (v8 + 96), 0x168uLL);
    if (_s11SiriNetwork27ConnectionPreparationReportVSgWOg(v38) == 1)
    {
      (v7)(v30, 0);
    }

    else
    {
      v10 = 0xE000000000000000;
      v29[0] = 0;
      v29[1] = 0xE000000000000000;
      outlined init with copy of RPCOspreyConnectionProtocol(v41, v34);
      outlined init with copy of NetworkConnectionProtocol?(v34, v33, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
      if (*&v33[24])
      {
        outlined init with take of RPCOspreyConnectionProtocol(v33, v32);
        outlined init with copy of RPCOspreyConnectionProtocol(v32, v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
        v11 = String.init<A>(describing:)();
        v10 = v12;
        __swift_destroy_boxed_opaque_existential_0(v32);
      }

      else
      {
        v11 = 0;
      }

      outlined destroy of NetworkConnectionProtocol?(v34, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
      MEMORY[0x223DE2180](v11, v10);

      v13 = v29[1];
      *(v9 + 96) = v29[0];
      *(v9 + 104) = v13;

      (v7)(v30, 0);
    }

    OUTLINED_FUNCTION_84(v33);
    OUTLINED_FUNCTION_84(v34);
    if (_s11SiriNetwork27ConnectionPreparationReportVSgWOg(v34) != 1)
    {
      memcpy(v31, v33, sizeof(v31));
      outlined init with copy of ConnectionPreparationReport(v31, v30);
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v14, static Logger.siriNetwork);
      memcpy(v32, v33, sizeof(v32));
      outlined init with copy of ConnectionPreparationReport(v32, v30);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      outlined destroy of NetworkConnectionProtocol?(v33, &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
      if (os_log_type_enabled(v15, v16))
      {
        OUTLINED_FUNCTION_6_5();
        v17 = swift_slowAlloc();
        OUTLINED_FUNCTION_4_3();
        v18 = swift_slowAlloc();
        v27[0] = v18;
        *v17 = 136315138;
        memcpy(v29, v34, sizeof(v29));
        memcpy(v30, v33, sizeof(v30));
        outlined init with copy of ConnectionPreparationReport(v30, v28);
        v19 = String.init<A>(describing:)();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v27);
        OUTLINED_FUNCTION_94();
        *(v17 + 4) = v1;
        _os_log_impl(&dword_223515000, v15, v16, "%s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
        outlined destroy of NetworkConnectionProtocol?(v33, &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
      }

      else
      {

        outlined destroy of NetworkConnectionProtocol?(v33, &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
      }
    }

    OUTLINED_FUNCTION_84(v31);
    OUTLINED_FUNCTION_84(v32);
    if (_s11SiriNetwork27ConnectionPreparationReportVSgWOg(v32) != 1)
    {
      memcpy(v30, v31, sizeof(v30));
      v21 = v30[32];
      v22 = objc_allocWithZone(MEMORY[0x277D58BE0]);
      outlined init with copy of ConnectionPreparationReport(v30, v29);
      v23 = [v22 init];
      [v23 setHasDNS_];
      if (v23)
      {
        NetworkAnalytics.logNetworkConnectionStatePreparationSnapshotCaptured(_:)();
      }

      outlined destroy of NetworkConnectionProtocol?(v31, &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
    }

    OUTLINED_FUNCTION_84(v29);
    OUTLINED_FUNCTION_84(v30);
    if (_s11SiriNetwork27ConnectionPreparationReportVSgWOg(v30) != 1)
    {
      memcpy(v28, v29, sizeof(v28));
      memcpy(v27, v29, sizeof(v27));
      outlined init with copy of ConnectionPreparationReport(v28, v26);
      v24 = ConnectionPreparationReport.netDebugConnectionStatePreparationSnapshot.getter();
      if (v24)
      {
        v25 = v24;
        NetworkAnalytics.logDebugNetworkConnectionStatePreparationSnapshotCaptured(_:)();
      }

      outlined destroy of NetworkConnectionProtocol?(v29, &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
    }

    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(&v39, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  }

  OUTLINED_FUNCTION_47();
}

void *ConnectionPreparationReport.init(path:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v136 = a2;
  v143 = type metadata accessor for NWEndpoint.Port();
  OUTLINED_FUNCTION_0_0();
  v132 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_1();
  v142 = (v6 - v5);
  OUTLINED_FUNCTION_31();
  v141 = type metadata accessor for NWEndpoint.Host();
  OUTLINED_FUNCTION_0_0();
  v131 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_1();
  v140 = v10 - v9;
  OUTLINED_FUNCTION_31();
  v161 = type metadata accessor for NWEndpoint();
  OUTLINED_FUNCTION_0_0();
  v158 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v156 = v13;
  MEMORY[0x28223BE20](v14);
  v155 = v121 - v15;
  OUTLINED_FUNCTION_31();
  v154 = type metadata accessor for NWInterface.InterfaceType();
  OUTLINED_FUNCTION_0_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v153 = v19;
  MEMORY[0x28223BE20](v20);
  v152 = v121 - v21;
  OUTLINED_FUNCTION_31();
  v160 = type metadata accessor for NWInterface();
  OUTLINED_FUNCTION_0_0();
  v157 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5();
  v159 = v24;
  MEMORY[0x28223BE20](v25);
  v27 = v121 - v26;
  v28 = type metadata accessor for NWPath.Status();
  OUTLINED_FUNCTION_0_0();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_0_1();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = v121 - v36;
  countAndFlagsBits = type metadata accessor for NWPath();
  OUTLINED_FUNCTION_0_0();
  v135 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_0_1();
  v138 = v42 - v41;
  _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(v178);
  memcpy(&v177[3], v178, 0x121uLL);
  if (one-time initialization token for sharedNetworkAnalytics != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v43 = static NetworkAnalytics.sharedNetworkAnalytics;
    outlined init with copy of NWPath?(a1, v37);
    if (__swift_getEnumTagSinglePayload(v37, 1, countAndFlagsBits) == 1)
    {
      v44 = MEMORY[0x277D84F90];
      v45 = v43;
      outlined destroy of ConnectionSnapshotReport?(a1, &_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
      outlined destroy of ConnectionSnapshotReport?(v37, &_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
      memset(v175, 0, 37);
      memcpy(&v175[4] + 5, v177, 0x124uLL);
      v175[42] = v44;
      v175[43] = v44;
      v175[44] = v45;
      outlined destroy of ConnectionPreparationReport(v175);
      _s11SiriNetwork27ConnectionPreparationReportVSgWOi0_(v176);
      return memcpy(v136, v176, 0x168uLL);
    }

    v151 = a1;
    v47 = *(v135 + 32);
    v130 = countAndFlagsBits;
    v47(v138, v37, countAndFlagsBits);
    *&v176[0] = 0;
    *(&v176[0] + 1) = 0xE000000000000000;
    v129 = v43;
    NWPath.status.getter();
    _print_unlocked<A, B>(_:_:)();
    (*(v30 + 8))(v34, v28);
    v128 = *(&v176[0] + 1);
    v133 = *&v176[0];
    LODWORD(v127) = NWPath.supportsDNS.getter();
    v126 = NWPath.isExpensive.getter();
    v125 = NWPath.isConstrained.getter();
    v124 = NWPath.supportsIPv4.getter();
    v123 = NWPath.supportsIPv6.getter();
    NWPath.nw.getter();
    v48 = nw_path_copy_interface();
    swift_unknownObjectRelease();
    if (v48)
    {
      LODWORD(v149) = nw_interface_get_index(v48);
      swift_unknownObjectRelease();
    }

    else
    {
      LODWORD(v149) = 0;
    }

    v50 = v160;
    v49 = v161;
    v51 = NWPath.availableInterfaces.getter();
    v52 = *(v51 + 16);
    if (!v52)
    {
      break;
    }

    _s11SiriNetwork24ConnectionTCPInfoMetricsVSgWOi0_(v174);
    v53 = *(v157 + 16);
    v54 = (*(v157 + 80) + 32) & ~*(v157 + 80);
    v121[1] = v51;
    v55 = v51 + v54;
    v150 = (v17 + 8);
    v147 = (v17 + 88);
    v148 = v53;
    v146 = (v157 + 8);
    v166 = v52 - 1;
    v167 = MEMORY[0x277D84F90];
    v157 += 16;
    v144 = *(v157 + 56);
    v145 = *MEMORY[0x277CD8CB0];
    v139 = *MEMORY[0x277CD8CA8];
    v137 = *MEMORY[0x277CD8CB8];
    v134 = *MEMORY[0x277CD8CA0];
    v122 = *MEMORY[0x277CD8CC0];
    while (1)
    {
      v162 = v55;
      v56 = v148;
      (v148)(v27);
      v57 = memcpy(v171, v174, sizeof(v171));
      v58 = MEMORY[0x223DE1820](v57);
      v164 = v59;
      v165 = v58;
      *&v176[0] = 0;
      *(&v176[0] + 1) = 0xE000000000000000;
      v60 = v152;
      NWInterface.type.getter();
      v61 = v154;
      _print_unlocked<A, B>(_:_:)();
      v62 = *v150;
      (*v150)(v60, v61);
      v163 = *(&v176[0] + 1);
      v28 = *&v176[0];
      v37 = v159;
      v56(v159, v27, v50);
      v34 = v50;
      countAndFlagsBits = v153;
      NWInterface.type.getter();
      v63 = (*v147)(countAndFlagsBits, v61);
      v17 = v146 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v63 == v145)
      {
        goto LABEL_10;
      }

      if (v63 == v139)
      {
        countAndFlagsBits = *v146;
        v34 = v160;
        (*v146)(v159, v160);
        v30 = 1;
        goto LABEL_23;
      }

      v37 = v159;
      if (v63 != v137)
      {
        if (v63 == v134)
        {
          v68 = OUTLINED_FUNCTION_7_23();
          v34 = v160;
          countAndFlagsBits(v68, v160);
          v30 = 23;
          goto LABEL_23;
        }

        v34 = v160;
        if (v63 != v122)
        {
          v69 = OUTLINED_FUNCTION_7_23();
          countAndFlagsBits(v69, v34);
          v62(v153, v154);
          v30 = 0;
          goto LABEL_23;
        }

LABEL_10:
        MEMORY[0x223DE1820]();
        v64 = String.lowercased()();
        countAndFlagsBits = v64._countAndFlagsBits;

        v176[0] = v64;
        v175[0] = 0x6365737069;
        v175[1] = 0xE500000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v65 = StringProtocol.contains<A>(_:)();
        v66 = OUTLINED_FUNCTION_7_23();
        (v64._countAndFlagsBits)(v66, v34);

        if (v65)
        {
          v30 = 24;
        }

        else
        {
          v30 = 0;
        }

        goto LABEL_23;
      }

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      NetworkManager.connectionTechnologyForCellularInterface()();
      v67 = OUTLINED_FUNCTION_7_23();
      v34 = v160;
      countAndFlagsBits(v67, v160);
      v30 = LOBYTE(v176[0]);
LABEL_23:
      a1 = NWInterface.index.getter();
      countAndFlagsBits(v27, v34);
      if ((a1 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(a1))
      {
        goto LABEL_55;
      }

      memcpy(v170, v171, 0xF9uLL);
      outlined destroy of ConnectionSnapshotReport?(v170, &_s11SiriNetwork24ConnectionTCPInfoMetricsVSgMd, _s11SiriNetwork24ConnectionTCPInfoMetricsVSgMR);
      memcpy(v171, v174, sizeof(v171));
      *&v176[0] = v165;
      *(&v176[0] + 1) = v164;
      *&v176[1] = v28;
      *(&v176[1] + 1) = v163;
      LOBYTE(v176[2]) = v30;
      *(&v176[2] + 1) = v172;
      BYTE3(v176[2]) = v173;
      DWORD1(v176[2]) = a1;
      memcpy(&v176[2] + 8, v174, 0xF9uLL);
      if (v149 == a1)
      {
        memcpy(v169, v176, 0x121uLL);
        destructiveProjectEnumData for ConnectionConfigurationError();
        memcpy(v175, &v177[3], 0x121uLL);
        outlined init with copy of ConnectionInterfaceReport(v176, v168);
        outlined destroy of ConnectionSnapshotReport?(v175, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
        memcpy(&v177[3], v169, 0x121uLL);
      }

      v70 = v167;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v160;
      v49 = v161;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v70 = v74;
      }

      v73 = *(v70 + 16);
      v72 = *(v70 + 24);
      if (v73 >= v72 >> 1)
      {
        OUTLINED_FUNCTION_5_28(v72);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v70 = v75;
      }

      *(v70 + 16) = v73 + 1;
      memcpy((v70 + 296 * v73 + 32), v176, 0x121uLL);
      if (!v166)
      {

        goto LABEL_35;
      }

      --v166;
      v167 = v70;
      v55 = v162 + v144;
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

  v70 = MEMORY[0x277D84F90];
LABEL_35:
  v76 = v130;
  LODWORD(v144) = v127 & 1;
  v139 = v126 & 1;
  v137 = v125 & 1;
  v145 = v123 & 1;
  LODWORD(v146) = v124 & 1;
  v77 = NWPath.gateways.getter();
  v78 = *(v77 + 16);
  v79 = v156;
  if (v78)
  {
    v167 = v70;
    v163 = *(v158 + 16);
    v80 = (*(v158 + 80) + 32) & ~*(v158 + 80);
    v127 = v77;
    v81 = v77 + v80;
    v162 = v158 + 88;
    v160 = *(v158 + 72);
    LODWORD(v159) = *MEMORY[0x277CD8B08];
    LODWORD(v154) = *MEMORY[0x277CD8B00];
    LODWORD(v148) = *MEMORY[0x277CD8AF0];
    LODWORD(v147) = *MEMORY[0x277CD8AD0];
    v164 = (v158 + 8);
    v157 = v158 + 96;
    v158 += 16;
    v152 = (v132 + 32);
    v153 = (v131 + 32);
    v149 = (v131 + 8);
    v150 = (v132 + 8);
    v82 = MEMORY[0x277D84F90];
    v134 = *MEMORY[0x277CD8AF8];
    v83 = v155;
    do
    {
      v166 = v78;
      v84 = v163;
      v163(v83, v81, v49);
      v84(v79, v83, v49);
      v85 = OUTLINED_FUNCTION_1_35();
      v87 = v86(v85);
      if (v87 == v159)
      {
        v88 = OUTLINED_FUNCTION_1_35();
        v89(v88);
        v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointO4HostO4host_AC4PortV4porttMd, &_s7Network10NWEndpointO4HostO4host_AC4PortV4porttMR) + 48);
        v91 = v140;
        v92 = v141;
        (*v153)(v140, v79, v141);
        v94 = v142;
        v93 = v143;
        (*v152)(v142, &v79[v90], v143);
        v165 = NWEndpoint.Host.debugDescription.getter();
        v96 = v95;
        LOWORD(v90) = NWEndpoint.Port.rawValue.getter();
        (*v150)(v94, v93);
        v97 = v91;
        v49 = v161;
        (*v149)(v97, v92);
        v98 = v90;
        v99 = 1;
      }

      else
      {
        if (v87 == v154)
        {
          v100 = OUTLINED_FUNCTION_1_35();
          v101(v100);

          v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_SS4typeSS6domain7Network11NWInterfaceVSg9interfacetMd, &_sSS4name_SS4typeSS6domain7Network11NWInterfaceVSg9interfacetMR);
          outlined destroy of ConnectionSnapshotReport?(&v79[*(v102 + 80)], &_s7Network11NWInterfaceVSgMd, &_s7Network11NWInterfaceVSgMR);
          v165 = 0;
          v98 = 0;
          v99 = 3;
        }

        else if (v87 == v148 || v87 != v147)
        {
          (*v164)(v79, v49);
          v165 = 0;
          v98 = 0;
          v99 = 5;
        }

        else
        {
          v103 = OUTLINED_FUNCTION_1_35();
          v104(v103);
          v165 = 0;
          v98 = 0;
          v99 = 4;
        }

        v96 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v82 = v110;
      }

      v106 = *(v82 + 16);
      v105 = *(v82 + 24);
      if (v106 >= v105 >> 1)
      {
        OUTLINED_FUNCTION_5_28(v105);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v82 = v111;
      }

      v83 = v155;
      (*v164)(v155, v49);
      *(v82 + 16) = v106 + 1;
      v107 = v82 + 24 * v106;
      v108 = v166;
      *(v107 + 32) = v165;
      *(v107 + 40) = v96;
      *(v107 + 48) = v98;
      *(v107 + 52) = v99;
      v81 += v160;
      v78 = v108 - 1;
      v109 = v151;
      v79 = v156;
    }

    while (v78);

    v76 = v130;
    v70 = v167;
    v166 = v82;
  }

  else
  {

    v166 = MEMORY[0x277D84F90];
    v109 = v151;
  }

  outlined destroy of ConnectionSnapshotReport?(v109, &_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
  (*(v135 + 8))(v138, v76);
  v169[1] = 0;
  v169[0] = 0;
  v169[2] = v133;
  v112 = v128;
  v169[3] = v128;
  v113 = v144;
  LOBYTE(v169[4]) = v144;
  v114 = v139;
  BYTE1(v169[4]) = v139;
  v115 = v137;
  BYTE2(v169[4]) = v137;
  v116 = v145;
  BYTE3(v169[4]) = v146;
  BYTE4(v169[4]) = v145;
  memcpy(&v169[4] + 5, v177, 0x124uLL);
  OUTLINED_FUNCTION_4_31();
  HIDWORD(v169[41]) = v117;
  v169[42] = v70;
  v118 = v166;
  v169[43] = v166;
  v119 = v129;
  v169[44] = v129;
  memcpy(v175, v169, 0x168uLL);
  destructiveProjectEnumData for ConnectionConfigurationError();
  memcpy(v136, v175, 0x168uLL);
  v176[0] = 0uLL;
  *&v176[1] = v133;
  *(&v176[1] + 1) = v112;
  LOBYTE(v176[2]) = v113;
  BYTE1(v176[2]) = v114;
  BYTE2(v176[2]) = v115;
  BYTE3(v176[2]) = v146;
  BYTE4(v176[2]) = v116;
  memcpy(&v176[2] + 5, v177, 0x124uLL);
  OUTLINED_FUNCTION_4_31();
  HIDWORD(v176[20]) = v120;
  *&v176[21] = v70;
  *(&v176[21] + 1) = v118;
  *&v176[22] = v119;
  outlined init with copy of ConnectionPreparationReport(v169, v168);
  return outlined destroy of ConnectionPreparationReport(v176);
}

uint64_t outlined init with copy of NWPath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized ConnectionProviderProtocol.setupStaleConnectionTimer()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v90 = *(v2 - 8);
  v91 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v88 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v89 = &v73 - v5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v86 = *(v6 - 8);
  v87 = v6;
  MEMORY[0x28223BE20](v6);
  v84 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for DispatchQoS();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x28223BE20](v9);
  v78 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v77 = (&v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v15 = &v73 - v14;
  v16 = type metadata accessor for DispatchTimeInterval();
  v93 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v92 = &v73 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v73 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v73 - v25;
  Double.dispatchTimeInterval.getter((&v73 - v25), *(v0 + 1680));
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.siriNetwork);
  v28 = *(v93 + 16);
  v28(v24, v26, v16);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  LODWORD(v76) = v30;
  v31 = os_log_type_enabled(v29, v30);
  v81 = v26;
  if (v31)
  {
    v73 = v19;
    v75 = v29;
    v32 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    aBlock[0] = v74;
    *v32 = 136315650;
    v33 = _typeName(_:qualified:)();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, aBlock);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2080;
    v36 = NetworkConnectionProvider.connectionIdentifier.getter();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, aBlock);

    *(v32 + 14) = v38;
    *(v32 + 22) = 2080;
    v28(v15, v24, v16);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
    v39 = v77;
    outlined init with copy of NetworkConnectionProtocol?(v15, v77, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    if (__swift_getEnumTagSinglePayload(v39, 1, v16) == 1)
    {
      v40 = 0xE100000000000000;
      v41 = 45;
    }

    else
    {
      v43 = v92;
      v44 = v93;
      (*(v93 + 32))(v92, v39, v16);
      v28(v73, v43, v16);
      v41 = String.init<A>(describing:)();
      v40 = v45;
      (*(v44 + 8))(v43, v16);
    }

    outlined destroy of NetworkConnectionProtocol?(v15, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    v42 = *(v93 + 8);
    (v42)(v24, v16);
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v40, aBlock);

    *(v32 + 24) = v46;
    v47 = v75;
    _os_log_impl(&dword_223515000, v75, v76, "Provider - %s [%s]: Stale connection timer scheduled (%s).", v32, 0x20u);
    v48 = v74;
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v48, -1, -1);
    MEMORY[0x223DE38F0](v32, -1, -1);
  }

  else
  {

    v42 = *(v93 + 8);
    (v42)(v24, v16);
  }

  result = swift_allocObject();
  v50 = *(v1 + 2080);
  v51 = __CFADD__(v50, 1);
  v52 = v50 + 1;
  if (v51)
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = v52;
    v53 = result;
    specialized ConnectionProviderProtocol.cancelStaleConnectionTimer()();
    type metadata accessor for OS_dispatch_source();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, 255, MEMORY[0x277D85278], MEMORY[0x277D85280]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
    v77 = v42;
    v54 = v78;
    v55 = v80;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v56 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
    (*(v79 + 8))(v54, v55);
    ObjectType = swift_getObjectType();
    v58 = swift_allocObject();
    swift_weakInit();
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    *(v59 + 24) = v53;
    v76 = v53;
    aBlock[4] = partial apply for specialized closure #1 in ConnectionProviderProtocol.setupStaleConnectionTimer();
    aBlock[5] = v59;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_218;
    v60 = _Block_copy(aBlock);

    v79 = v16;
    v80 = v1;
    v61 = v82;
    default argument 0 of OS_dispatch_source.setEventHandler(qos:flags:handler:)(ObjectType);
    v62 = v84;
    default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v60);
    (*(v86 + 8))(v62, v87);
    (*(v83 + 8))(v61, v85);

    v63 = v88;
    static DispatchTime.now()();
    v64 = v89;
    v65 = v81;
    DispatchTime.advanced(by:)();
    v66 = v91;
    v67 = *(v90 + 8);
    v67(v63, v91);
    v68 = v92;
    default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v92);
    v69 = v56;
    MEMORY[0x223DE2510](v64, v65, v68, ObjectType);
    v70 = v68;
    v71 = v79;
    v72 = v77;
    (v77)(v70, v79);
    v67(v64, v66);
    OS_dispatch_source.resume()();
    v72(v65, v71);
    *(v80 + 2128) = v69;

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall NetworkConnectionProvider.updateAndEmitConnectionMetricsReadyEstablishmentReport()()
{
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of NetworkConnectionProtocol?(v0 + 16, &v4, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (v5)
  {
    outlined init with take of RPCOspreyConnectionProtocol(&v4, v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    OUTLINED_FUNCTION_7_1();
    v1 = swift_allocObject();
    swift_weakInit();
    outlined init with copy of RPCOspreyConnectionProtocol(v6, &v4);
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    outlined init with take of RPCOspreyConnectionProtocol(&v4, v2 + 24);
    v3 = swift_allocObject();
    *(v3 + 16) = partial apply for closure #1 in NetworkConnectionProvider.updateAndEmitConnectionMetricsReadyEstablishmentReport();
    *(v3 + 24) = v2;

    NWConnection.requestEstablishmentReport(queue:completion:)();

    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(&v4, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  }
}

uint64_t sub_22354E140()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22354E180()
{

  v0 = OUTLINED_FUNCTION_41();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t ConnectionConfiguration.resolvedHost.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  OUTLINED_FUNCTION_11_1(v2);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_1();
  v10 = v9 - v8;
  v11 = type metadata accessor for URL();
  OUTLINED_FUNCTION_0_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v19 = OUTLINED_FUNCTION_11_1(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v38 - v24;
  v26 = *(v0 + 408);
  if (v26 == 1)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_7_24(v26);
  ConnectionPolicyRoute.routeHost.getter();
  if (!v27)
  {
    goto LABEL_9;
  }

  URL.init(string:)();

  OUTLINED_FUNCTION_6_25(v22);
  if (v28)
  {
    v29 = &_s10Foundation3URLVSgMd;
    v30 = &_s10Foundation3URLVSgMR;
    v31 = v22;
LABEL_8:
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v31, v29, v30);
LABEL_9:
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v11);
    goto LABEL_10;
  }

  (*(v13 + 32))(v17, v22, v11);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v32 = OUTLINED_FUNCTION_8_23();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, v33, v4);
  if (EnumTagSinglePayload == 1)
  {
    (*(v13 + 8))(v17, v11);
    v29 = &_s10Foundation13URLComponentsVSgMd;
    v30 = &_s10Foundation13URLComponentsVSgMR;
    v31 = v1;
    goto LABEL_8;
  }

  (*(v6 + 32))(v10, v1, v4);
  URLComponents.url.getter();
  (*(v6 + 8))(v10, v4);
  v37 = *(v13 + 8);
  v37(v17, v11);
  OUTLINED_FUNCTION_6_25(v25);
  if (!v28)
  {
    v35 = URL.host.getter();
    v37(v25, v11);
    return v35;
  }

LABEL_10:
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v25, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return 0;
}

uint64_t NWEndpoint.init(configuration:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointO4PortVSgMd, _s7Network10NWEndpointO4PortVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - v5;
  v7 = type metadata accessor for NWEndpoint.Port();
  OUTLINED_FUNCTION_0_0();
  v48 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  v12 = v11 - v10;
  v13 = type metadata accessor for NWEndpoint();
  OUTLINED_FUNCTION_0_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_1();
  v19 = v18 - v17;
  memcpy(v50, a1, 0x204uLL);
  memcpy(v49, a1, 0x204uLL);
  v20 = ConnectionConfiguration.resolvedHost.getter();
  if (!v21)
  {
    outlined destroy of ConnectionConfiguration(v50);
LABEL_8:
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriNetwork);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_223515000, v26, v27, "Provider - Network setup: No resolved host", v28, 2u);
      MEMORY[0x223DE38F0](v28, -1, -1);
    }

    v29 = 1;
    return __swift_storeEnumTagSinglePayload(a2, v29, 1, v13);
  }

  v22 = v21;
  v46 = v20;
  v47 = a2;
  memcpy(v49, v50, 0x204uLL);
  v23 = ConnectionConfiguration.resolvedPort.getter();
  if ((v23 & 0x10000) != 0)
  {

    outlined destroy of ConnectionConfiguration(v50);
    goto LABEL_7;
  }

  v24 = v23;
  NWEndpoint.Port.init(rawValue:)();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    outlined destroy of ConnectionConfiguration(v50);

    outlined destroy of ConnectionSnapshotReport?(v6, &_s7Network10NWEndpointO4PortVSgMd, _s7Network10NWEndpointO4PortVSgMR);
LABEL_7:
    a2 = v47;
    goto LABEL_8;
  }

  v44 = v15;
  v31 = v48;
  (*(v48 + 32))(v12, v6, v7);
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointO4HostO4host_AC4PortV4porttMd, &_s7Network10NWEndpointO4HostO4host_AC4PortV4porttMR) + 48);

  NWEndpoint.Host.init(_:)();
  v33 = v31;
  v34 = v44;
  (*(v33 + 16))(v19 + v32, v12, v7);
  (*(v34 + 104))(v19, *MEMORY[0x277CD8B08], v13);
  if (!v50[49])
  {
    outlined destroy of ConnectionConfiguration(v50);
    goto LABEL_19;
  }

  v45 = v50[45];
  v35 = v50[46];
  outlined destroy of ConnectionConfiguration(v50);
  if (v35)
  {
LABEL_19:
    v45 = 5228;
    goto LABEL_20;
  }

  if ((v45 - 1) <= 0xFFFD)
  {
LABEL_20:
    if (one-time initialization token for htons != -1)
    {
      swift_once();
    }

    static Endian.htons(v45);
    NWEndpoint.alternatePort.setter();
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.siriNetwork);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  v43 = v38;
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v49[0] = v42;
    *v39 = 136315650;
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v22, v49);

    *(v39 + 4) = v40;
    *(v39 + 12) = 512;
    *(v39 + 14) = v24;
    *(v39 + 16) = 2048;
    v34 = v44;
    *(v39 + 18) = v45;
    _os_log_impl(&dword_223515000, v37, v43, "Provider - Network setup: Endpoint created: %s:%hu/%ld", v39, 0x1Au);
    v41 = v42;
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x223DE38F0](v41, -1, -1);
    MEMORY[0x223DE38F0](v39, -1, -1);
  }

  else
  {
  }

  (*(v48 + 8))(v12, v7);
  a2 = v47;
  (*(v34 + 32))(v47, v19, v13);
  v29 = 0;
  return __swift_storeEnumTagSinglePayload(a2, v29, 1, v13);
}