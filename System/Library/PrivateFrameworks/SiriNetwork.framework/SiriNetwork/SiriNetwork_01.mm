unint64_t type metadata accessor for OS_dispatch_source()
{
  result = lazy cache variable for type metadata for OS_dispatch_source;
  if (!lazy cache variable for type metadata for OS_dispatch_source)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_source);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  specialized __RawDictionaryStorage.find<A>(_:)(a1);
  OUTLINED_FUNCTION_2_19();
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys6UInt32VSdGMd, &_ss17_NativeDictionaryVys6UInt32VSdGMR);
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(a2 & 1, v8);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = result;
LABEL_5:
  v16 = *v4;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a3;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v12, a1, v16, a3);
  }

  return result;
}

Swift::Void __swiftcall PingInfo.markPingSent(withIndex:)(Swift::UInt32 withIndex)
{
  v2 = v1;
  v3 = *&withIndex;
  v4 = [objc_opt_self() processInfo];
  [v4 systemUptime];
  v6 = v5;

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 32);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, isUniquelyReferenced_nonNull_native, v6);
  *(v2 + 32) = v8;
  swift_endAccess();
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 4 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

Swift::Int CommunicationProtocolAce.checkPings()()
{
  v3 = *(v1 + 232);
  v4 = __CFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
    OUTLINED_FUNCTION_0_8();
    swift_once();
    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v7, static Logger.siriNetwork);

    v8 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v9 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_28_3();
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      v11[1] = *(v0 + 232);

      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v12, v13, v14, v15, v16, 8u);
      v17 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v17);
    }

    else
    {
    }
  }

  else
  {
    v0 = v1;
    if (v5 <= 0xFFFE795F)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    *(v1 + 232) = v6;
    CommunicationProtocolAce.sendAcePing(withId:)(v6);
  }

  if (!*(v0 + 240))
  {
    type metadata accessor for PingInfo();
    OUTLINED_FUNCTION_109();
    swift_allocObject();
    *(v0 + 240) = PingInfo.init(pingAcknowledgedCount:avgPingTime:)(0, 0.0);

    if (!*(v0 + 240))
    {
      return 0;
    }
  }

  v18 = *(v0 + 232);

  PingInfo.markPingSent(withIndex:)(v18);

  if (!*(v0 + 240))
  {
    return 0;
  }

  result = PingInfo.numberOfUnacknowledgedPings()();
  if (result < 2)
  {
    return 0;
  }

  if (result != 3)
  {
    if (result == 7)
    {
      return 5;
    }

    else if (result < 0xC)
    {
      return 1;
    }

    else
    {
      return 9;
    }
  }

  return result;
}

uint64_t closure #1 in CommunicationProtocolAce.resumePingTimer()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CommunicationProtocolAce.pingTimerFired()(result, v2, v3, v4);
  }

  return result;
}

uint64_t CommunicationProtocolAce.pingTimerFired()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  OUTLINED_FUNCTION_36_2((v4 + 5), a2, a3, a4);
  OUTLINED_FUNCTION_48_0();
  if ((!v15 & v14 || (v16 = OUTLINED_FUNCTION_41_0(), outlined copy of Data._Representation(v16, v17), v18 = OUTLINED_FUNCTION_41_0(), v19 = MEMORY[0x223DE13E0](v18), v20 = OUTLINED_FUNCTION_41_0(), outlined consume of Data?(v20, v21), v19 <= 0)) && ((OUTLINED_FUNCTION_37_1((v4 + 9), v7, v8, v9, v10, v11, v12, v13, v75), OUTLINED_FUNCTION_48_0(), !v15 & v14) || (v22 = OUTLINED_FUNCTION_41_0(), outlined copy of Data._Representation(v22, v23), v24 = OUTLINED_FUNCTION_41_0(), v25 = MEMORY[0x223DE13E0](v24), v26 = OUTLINED_FUNCTION_41_0(), outlined consume of Data?(v26, v27), v25 < 1)))
  {
    v28 = CommunicationProtocolAce.checkPings()();
  }

  else
  {
    CommunicationProtocolAce.checkForProgressOnReadingData()();
  }

  v29 = v28;
  result = CommunicationProtocolAce.aceDelegate.getter();
  if (result)
  {
    v32 = result;
    v33 = v31;
    if ((v29 & 2) != 0 && BackgroundConnection.shouldFallbackQuickly()() || (v29 & 4) != 0)
    {
      if (BackgroundConnection.isUsingPeer()())
      {
        if (!AFDeviceSupportsWiFiLPASMode() || !BackgroundConnection.logTcpInfoIndicatesPoorLinkQuality()())
        {
          OUTLINED_FUNCTION_61();
          if (!v15)
          {
            OUTLINED_FUNCTION_0_8();
            swift_once();
          }

          v61 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_58(v61, static Logger.siriNetwork);
          v62 = Logger.logObject.getter();
          static os_log_type_t.default.getter();
          v63 = OUTLINED_FUNCTION_16_0();
          if (os_log_type_enabled(v63, v64))
          {
            OUTLINED_FUNCTION_17_5();
            v65 = swift_slowAlloc();
            OUTLINED_FUNCTION_11_7(v65);
            OUTLINED_FUNCTION_15_0();
            _os_log_impl(v66, v67, v68, v69, v70, 2u);
            v71 = OUTLINED_FUNCTION_6_15();
            MEMORY[0x223DE38F0](v71);
          }

          return swift_unknownObjectRelease();
        }
      }

      else
      {
        if (!BackgroundConnection.isUsingPop()() && !BackgroundConnection.isUsingFlorence()())
        {
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_61();
        if (!v15)
        {
          OUTLINED_FUNCTION_0_8();
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_58(v35, static Logger.siriNetwork);
        v36 = Logger.logObject.getter();
        v5 = static os_log_type_t.default.getter();
        v37 = OUTLINED_FUNCTION_16_0();
        if (os_log_type_enabled(v37, v38))
        {
          OUTLINED_FUNCTION_17_5();
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_55_0();
          _os_log_impl(v39, v40, v41, v42, v43, 2u);
          v44 = OUTLINED_FUNCTION_7_2();
          MEMORY[0x223DE38F0](v44);
        }

        if (v29)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      if (v29 < 8)
      {
LABEL_12:
        if ((v29 & 1) == 0)
        {
          return swift_unknownObjectRelease();
        }

        v34 = 0;
        goto LABEL_28;
      }

      if (v29)
      {
LABEL_27:
        v34 = 1;
LABEL_28:
        if (!BackgroundConnection.isUsingPop()() || BackgroundConnection.isUsingPeer()())
        {
          OUTLINED_FUNCTION_7_1();
          v45 = swift_allocObject();
          swift_weakInit();
          OUTLINED_FUNCTION_109();
          v5 = swift_allocObject();
          *(v5 + 16) = v45;
          *(v5 + 24) = v32;
          *(v5 + 32) = v33;

          swift_unknownObjectRetain();
          BackgroundConnection.logTcpInfoIndicatesPoorLinkQuality(_:)();
        }

        if (!v34)
        {
          return swift_unknownObjectRelease();
        }
      }
    }

    OUTLINED_FUNCTION_61();
    if (!v15)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v46, static Logger.siriNetwork);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      OUTLINED_FUNCTION_17_5();
      v49 = swift_slowAlloc();
      OUTLINED_FUNCTION_51_1(v49);
      _os_log_impl(&dword_223515000, v47, v48, "CommunicationProtocol - Ace pings: Ping timeout", v5, 2u);
      v50 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v50);
    }

    if (v6[13])
    {
      v51 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      v52 = OUTLINED_FUNCTION_16_0();
      if (os_log_type_enabled(v52, v53))
      {
        OUTLINED_FUNCTION_17_5();
        v54 = swift_slowAlloc();
        OUTLINED_FUNCTION_11_7(v54);
        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v55, v56, v57, v58, v59, 2u);
        v60 = OUTLINED_FUNCTION_6_15();
        MEMORY[0x223DE38F0](v60);
      }
    }

    lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
    OUTLINED_FUNCTION_10_0();
    v72 = swift_allocError();
    OUTLINED_FUNCTION_79_0(v72, v73);
    v74 = OUTLINED_FUNCTION_68_1();
    BackgroundConnection.fallbackToNextConnectionMethod(error:)(v74);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CommunicationProtocolAce.sendAcePing(withId:)(uint64_t a1)
{
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v3, static Logger.siriNetwork);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_28_3();
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_223515000, v4, v5, "CommunicationProtocol - Ace pings: Sending ACE Ping %u", v6, 8u);
    v7 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x223DE38F0](v7);
  }

  static AceDataHeader.createHeaderData(forType:lengthOrIdentifier:)(4, a1);
  OUTLINED_FUNCTION_31_2();
  if (!v11 & v10)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_17_5();
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_11_7(v14);
      _os_log_impl(&dword_223515000, v12, v13, "Failed to serialize ACE Ping", v1, 2u);
      v15 = OUTLINED_FUNCTION_6_15();
      MEMORY[0x223DE38F0](v15);
    }

    lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
    OUTLINED_FUNCTION_10_0();
    swift_allocError();
    OUTLINED_FUNCTION_8_10(v16, 3);
    return swift_willThrow();
  }

  else
  {
    CommunicationProtocolAce.compressData(_:logDebug:)(v8, v9, 0);
    if (!v1)
    {
      OUTLINED_FUNCTION_31_2();
      if (!v11 & v10)
      {
        lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
        OUTLINED_FUNCTION_10_0();
        swift_allocError();
        OUTLINED_FUNCTION_8_10(v18, 3);
        swift_willThrow();
      }

      else
      {
        if (CommunicationProtocolAce.aceDelegate.getter())
        {
          v19 = OUTLINED_FUNCTION_26();
          BackgroundConnection.connectionSendData(_:)(v19, v20);
          swift_unknownObjectRelease();
        }

        v21 = OUTLINED_FUNCTION_26();
        outlined consume of Data?(v21, v22);
      }
    }

    v23 = OUTLINED_FUNCTION_53();
    return outlined consume of Data?(v23, v24);
  }
}

uint64_t BackgroundConnection.connectionSendData(_:)(uint64_t a1, unint64_t a2)
{
  v3[3] = MEMORY[0x277CC9318];
  v3[0] = a1;
  v3[1] = a2;
  outlined copy of Data._Representation(a1, a2);
  BackgroundConnection.sendData(_:with:)(v3, destructiveProjectEnumData for ConnectionConfigurationError);
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t NWConnection.startActivity(_:)(uint64_t a1, void (*a2)())
{
  outlined init with copy of Any?(a1, v4);
  if (!v5)
  {
    return outlined destroy of Any?(v4);
  }

  type metadata accessor for NWActivity();
  result = swift_dynamicCast();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized closure #1 in NetworkActivityTracingInternal.stop(label:reason:error:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v121 = a6;
  v122 = a3;
  v9 = type metadata accessor for UUID();
  v120 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v92 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v92 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v118 = &v92 - v23;
  MEMORY[0x28223BE20](v22);
  v119 = &v92 - v24;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v26 = result;
  v116 = v9;
  if (a2 == 1)
  {
    v109 = a2;
    v110 = v18;
    v117 = v12;
    v111 = v21;
    v114 = v14;
    swift_beginAccess();
    v115 = v26;
    v18 = *(v26 + 16);
    v14 = v18 + 64;
    v27 = 1 << v18[32];
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v21 = v28 & *(v18 + 8);
    v29 = (v27 + 63) >> 6;
    v103 = (v120 + 32);
    v102 = (v120 + 16);
    v101 = (v120 + 8);

    v26 = 0;
    v30 = static Logger.siriNetwork;
    *&v31 = 136315906;
    v106 = v31;
    v105 = "SiriNetworkActivityUnknown";
    v104 = v122;
    v100 = "SiriNetworkActivitySucceeded";
    v99 = "SiriNetworkActivityTimedOut";
    v98 = "SiriNetworkActivityFailed";
    v97 = "SiriNetworkActivityCancelled";
    v96 = "remoteRequestExecution";
    v112 = v18;
    while (v21)
    {
LABEL_11:
      v33 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v34 = *(*(v18 + 7) + ((v26 << 9) | (8 * v33)));
      if (v34[32] == 1 && v34[34] == 1)
      {
        v35 = a5;
        v36 = one-time initialization token for siriNetwork;

        if (v36 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        v38 = v30;
        __swift_project_value_buffer(v37, v30);

        v39 = a4;
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();

        v107 = v41;
        if (os_log_type_enabled(v40, v41))
        {
          v95 = v40;
          v113 = a4;
          v108 = v35;
          v42 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v125 = v94;
          *v42 = v106;
          LOBYTE(v124) = v34[35];
          v43 = String.init<A>(describing:)();
          v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v125);

          *(v42 + 4) = v45;
          *(v42 + 12) = 2080;
          v46 = v119;
          specialized NetworkActivity.token.getter(v119);
          v47 = v118;
          outlined init with copy of UUID?(v46, v118);
          v48 = v116;
          if (__swift_getEnumTagSinglePayload(v47, 1, v116) == 1)
          {
            v49 = 0;
            v50 = 0xE000000000000000;
          }

          else
          {
            v51 = v114;
            (*v103)(v114, v47, v48);
            (*v102)(v117, v51, v48);
            v52 = String.init<A>(describing:)();
            v50 = v53;
            v54 = v51;
            v49 = v52;
            (*v101)(v54, v48);
          }

          v18 = v112;
          v55 = 0xD00000000000001ALL;
          outlined destroy of ConnectionSnapshotReport?(v119, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
          v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v125);

          *(v42 + 14) = v56;
          *(v42 + 22) = 2080;
          v57 = v105;
          v58 = v113;
          switch(v104)
          {
            case 1:
              v59 = v128;
              goto LABEL_26;
            case 2:
              v55 = 0xD00000000000001CLL;
              v59 = &v127;
              goto LABEL_26;
            case 3:
              v55 = 0xD00000000000001BLL;
              v59 = &v126;
              goto LABEL_26;
            case 4:
              v55 = 0xD000000000000019;
              v59 = &v125;
              goto LABEL_26;
            case 5:
              v55 = 0xD00000000000001CLL;
              v59 = &v124;
LABEL_26:
              v57 = *(v59 - 32);
              break;
            default:
              break;
          }

          v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57 | 0x8000000000000000, &v125);

          *(v42 + 24) = v60;
          *(v42 + 32) = 2112;
          if (v58)
          {
            v61 = v58;
            v62 = _swift_stdlib_bridgeErrorToNSError();
            v63 = v62;
          }

          else
          {
            v62 = 0;
            v63 = 0;
          }

          v30 = static Logger.siriNetwork;
          v64 = v95;
          *(v42 + 34) = v62;
          v65 = v93;
          *v93 = v63;
          _os_log_impl(&dword_223515000, v64, v107, "NetworkActivity Tracing: Stopping network sub-activity %s %s with reason %s and error: %@", v42, 0x2Au);
          outlined destroy of ConnectionSnapshotReport?(v65, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x223DE38F0](v65, -1, -1);
          v66 = v94;
          swift_arrayDestroy();
          MEMORY[0x223DE38F0](v66, -1, -1);
          MEMORY[0x223DE38F0](v42, -1, -1);

          a5 = v108;
          a4 = v113;
        }

        else
        {

          v30 = v38;
          a5 = v35;
          v18 = v112;
        }

        v34[34] = 0;
        specialized NetworkActivity.stop(completionReason:error:)(v122, a4);
      }
    }

    while (1)
    {
      v32 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v32 >= v29)
      {

        v14 = v114;
        v26 = v115;
        v21 = v111;
        v12 = v117;
        v18 = v110;
        a2 = v109;
        goto LABEL_33;
      }

      v21 = *&v14[8 * v32];
      ++v26;
      if (v21)
      {
        v26 = v32;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_58;
  }

LABEL_33:
  swift_beginAccess();
  v67 = specialized Dictionary.subscript.getter(a2, *(v26 + 16));
  if (v67)
  {
    v29 = v67;
    if (*(v67 + 34) != 1)
    {
LABEL_52:

      goto LABEL_53;
    }

    v117 = v12;
    if (one-time initialization token for siriNetwork == -1)
    {
LABEL_36:
      v68 = type metadata accessor for Logger();
      __swift_project_value_buffer(v68, static Logger.siriNetwork);
      v69 = a4;

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v70, v71))
      {
        LODWORD(v119) = v71;
        v115 = v26;
        v113 = a4;
        v108 = a5;
        v72 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v124 = v118;
        *v72 = 136315906;
        v123 = *(v29 + 35);
        v73 = String.init<A>(describing:)();
        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v124);

        *(v72 + 4) = v75;
        *(v72 + 12) = 2080;
        specialized NetworkActivity.token.getter(v21);
        outlined init with copy of UUID?(v21, v18);
        v76 = v116;
        if (__swift_getEnumTagSinglePayload(v18, 1, v116) == 1)
        {
          v77 = 0;
          v78 = 0xE000000000000000;
        }

        else
        {
          v79 = v120;
          (*(v120 + 32))(v14, v18, v76);
          (*(v79 + 16))(v117, v14, v76);
          v77 = String.init<A>(describing:)();
          v78 = v80;
          (*(v79 + 8))(v14, v76);
        }

        v81 = 0xD00000000000001ALL;
        outlined destroy of ConnectionSnapshotReport?(v21, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
        v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v124);

        *(v72 + 14) = v82;
        *(v72 + 22) = 2080;
        v83 = "SiriNetworkActivityUnknown";
        a4 = v113;
        switch(v122)
        {
          case 1:
            v83 = "SiriNetworkActivitySucceeded";
            break;
          case 2:
            v84 = "SiriNetworkActivitySucceeded";
            goto LABEL_46;
          case 3:
            v83 = "SiriNetworkActivityFailed";
            v81 = 0xD00000000000001BLL;
            break;
          case 4:
            v83 = "SiriNetworkActivityCancelled";
            v81 = 0xD000000000000019;
            break;
          case 5:
            v84 = "SiriNetworkActivityCancelled";
LABEL_46:
            v83 = v84 - 32;
            v81 = 0xD00000000000001CLL;
            break;
          default:
            break;
        }

        v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83 | 0x8000000000000000, &v124);

        *(v72 + 24) = v85;
        *(v72 + 32) = 2112;
        if (a4)
        {
          v86 = a4;
          v87 = _swift_stdlib_bridgeErrorToNSError();
          v88 = v87;
        }

        else
        {
          v87 = 0;
          v88 = 0;
        }

        a5 = v108;
        v89 = v119;
        v90 = v118;
        *(v72 + 34) = v87;
        v91 = v114;
        *v114 = v88;
        _os_log_impl(&dword_223515000, v70, v89, "NetworkActivity Tracing: Stopping network activity %s %s with reason %s and error: %@", v72, 0x2Au);
        outlined destroy of ConnectionSnapshotReport?(v91, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x223DE38F0](v91, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x223DE38F0](v90, -1, -1);
        MEMORY[0x223DE38F0](v72, -1, -1);
      }

      *(v29 + 34) = 0;
      specialized NetworkActivity.stop(completionReason:error:)(v122, a4);
      goto LABEL_52;
    }

LABEL_58:
    swift_once();
    goto LABEL_36;
  }

LABEL_53:
  if (a5)
  {
    a5(v67);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

double *PingInfo.init(pingAcknowledgedCount:avgPingTime:)(uint64_t a1, double a2)
{
  v2[3] = 0.0;
  *(v2 + 4) = Dictionary.init(dictionaryLiteral:)();
  *(v2 + 2) = a1;
  v2[3] = a2;
  return v2;
}

uint64_t NetworkActivityLabel.description.getter()
{
  result = 0x64696C61766E69;
  switch(*v0)
  {
    case 1:
      result = 0x7365757165526975;
      break;
    case 2:
      result = 0x6973734164616F6CLL;
      break;
    case 3:
      result = 0x7274536F69647561;
      break;
    case 4:
      result = 0x686365657073;
      break;
    case 5:
      result = 0x73746C75736572;
      break;
    case 6:
      result = 0x7972746572;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      v2 = 2003790950;
      goto LABEL_12;
    case 9:
      v2 = 1668184435;
LABEL_12:
      result = v2 | 0x6D6D6F4300000000;
      break;
    case 0xA:
      result = 1953718636;
      break;
    default:
      return result;
  }

  return result;
}

void specialized NetworkActivity.stop(completionReason:error:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v39 = a1;
  v5 = type metadata accessor for NWActivity.CompletionReason();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  specialized NetworkActivity.moveTo(_:)(3u);
  swift_beginAccess();

  v13 = specialized Set.isEmpty.getter(v12);

  if ((v13 & 1) != 0 || (v14 = *(v3 + 16)) == 0)
  {
LABEL_23:
    if (!a2 || (*&v40 = a2, v26 = a2, __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR), type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8), !swift_dynamicCast()))
    {
      if (!*(v3 + 16))
      {
        return;
      }

      (*(v6 + 104))(v9, **(&unk_2784DD390 + v39), v5);

      NWActivity.complete(reason:)();

      v11 = v9;
      goto LABEL_35;
    }

    v27 = v42;
    v28 = [v42 code];
    v29 = [v27 userInfo];
    v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v31, v32, v30, &v40);

    if (v41)
    {
      if (swift_dynamicCast())
      {
        v33 = v42;
        v34 = [v42 code];

LABEL_32:
        *v11 = v28;
        *(v11 + 1) = v34;
        (*(v6 + 104))(v11, *MEMORY[0x277CD8AB0], v5);
        if (*(v3 + 16))
        {

          NWActivity.complete(reason:)();
        }

LABEL_35:
        (*(v6 + 8))(v11, v5);
        return;
      }
    }

    else
    {
      outlined destroy of ConnectionSnapshotReport?(&v40, &_sypSgMd, &_sypSgMR);
    }

    v34 = -1;
    goto LABEL_32;
  }

  v37 = v6;
  v38 = v5;
  v15 = *(v3 + 24);
  v36 = v11;
  if ((v15 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for NWConnection();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type NWConnection and conformance NWConnection, MEMORY[0x277CD8E08], &protocol conformance descriptor for NWConnection);
    Set.Iterator.init(_cocoa:)();
    v15 = v43;
    v16 = v44;
    v18 = v45;
    v17 = v46;
    v19 = v47;
  }

  else
  {
    v20 = -1 << *(v15 + 32);
    v16 = v15 + 56;
    v18 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(v15 + 56);

    v17 = 0;
  }

  v35 = v18;
  if (v15 < 0)
  {
    goto LABEL_12;
  }

  while (v19)
  {
LABEL_19:
    v19 &= v19 - 1;

    while (1)
    {
      v41 = type metadata accessor for NWActivity();
      *&v40 = v14;

      NWConnection.endActivity(_:)(&v40);

      outlined destroy of ConnectionSnapshotReport?(&v40, &_sypSgMd, &_sypSgMR);
      if ((v15 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_12:
      v23 = __CocoaSet.Iterator.next()();
      if (!v23)
      {
        goto LABEL_22;
      }

      v42 = v23;
      type metadata accessor for NWConnection();
      swift_dynamicCast();
    }
  }

  v24 = v17;
  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= ((v18 + 64) >> 6))
    {
LABEL_22:

      outlined consume of Set<MessageCenterUser>.Iterator._Variant(v15);
      v6 = v37;
      v5 = v38;
      v11 = v36;
      goto LABEL_23;
    }

    v19 = *(v16 + 8 * v25);
    ++v24;
    if (v19)
    {
      v17 = v25;
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t closure #1 in BackgroundConnection.setupReadHandlerOnProvider()(uint64_t a1, unint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  if (one-time initialization token for readBufferEnd != -1)
  {
    swift_once();
  }

  siri_kdebug_trace(static Constants.Signposts.readBufferEnd);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(result + 1080);
    if (!v12 || v12 != a6)
    {
    }

    if (!a3 || (v13 = a3, __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR), (swift_dynamicCast() & 1) == 0))
    {
      if (a2 >> 60 == 15)
      {
        if (one-time initialization token for siriNetwork != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        __swift_project_value_buffer(v27, static Logger.siriNetwork);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_223515000, v28, v29, "Background Connection - Reader: Reader called but it did not returned data.", v30, 2u);
          MEMORY[0x223DE38F0](v30, -1, -1);
        }

        swift_allocObject();
        swift_beginAccess();
        swift_weakLoadStrong();
        swift_weakInit();

        v31 = a3;

        v32 = a3;

        specialized BackgroundConnection.fallbackToNextConnectionMethodWithError(_:with:)();
      }

      else
      {
        outlined copy of Data._Representation(a1, a2);
        if (one-time initialization token for siriNetwork != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        __swift_project_value_buffer(v33, static Logger.siriNetwork);
        outlined copy of Data._Representation(a1, a2);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 134217984;
          v37 = v36;
          v38 = 0;
          switch(a2 >> 62)
          {
            case 1uLL:
              LODWORD(v38) = HIDWORD(a1) - a1;
              if (__OFSUB__(HIDWORD(a1), a1))
              {
                __break(1u);
LABEL_35:
                __break(1u);
                JUMPOUT(0x22352C210);
              }

              v38 = v38;
LABEL_30:
              *(v36 + 4) = v38;
              outlined consume of Data?(a1, a2);
              _os_log_impl(&dword_223515000, v34, v35, "Background Connection - Reader: Read %ld bytes", v37, 0xCu);
              MEMORY[0x223DE38F0](v37, -1, -1);
              break;
            case 2uLL:
              v40 = *(a1 + 16);
              v39 = *(a1 + 24);
              v41 = __OFSUB__(v39, v40);
              v38 = v39 - v40;
              if (!v41)
              {
                goto LABEL_30;
              }

              goto LABEL_35;
            case 3uLL:
              goto LABEL_30;
            default:
              v38 = BYTE6(a2);
              goto LABEL_30;
          }
        }

        else
        {
          outlined consume of Data?(a1, a2);
        }

        outlined copy of Data._Representation(a1, a2);
        BackgroundConnection.connectionHasBytesAvailable(_:)(a1, a2, v42, v43, v44, v45, v46);
        outlined consume of Data?(a1, a2);
        if (a4)
        {
          BackgroundConnection.setupReadHandlerOnProvider()();
        }

        outlined consume of Data?(a1, a2);
      }
    }

    v49 = v47[0];
    v50 = v47[1];
    v51 = v48;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.siriNetwork);
    outlined init with copy of NetworkConnectionError(&v49, v47);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    outlined destroy of NetworkConnectionError(&v49);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      swift_allocError();
      v19 = v51;
      v20 = v50;
      *v21 = v49;
      *(v21 + 16) = v20;
      *(v21 + 32) = v19;
      outlined init with copy of NetworkConnectionError(&v49, v47);
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v22;
      *v18 = v22;
      _os_log_impl(&dword_223515000, v15, v16, "Background Connection - Reader: Error. %@", v17, 0xCu);
      outlined destroy of NetworkConnectionProtocol?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223DE38F0](v18, -1, -1);
      MEMORY[0x223DE38F0](v17, -1, -1);
    }

    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    v23 = swift_allocError();
    v24 = v51;
    v25 = v50;
    *v26 = v49;
    *(v26 + 16) = v25;
    *(v26 + 32) = v24;
    swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();
    outlined init with copy of NetworkConnectionError(&v49, v47);

    outlined init with copy of NetworkConnectionError(&v49, v47);

    outlined init with copy of NetworkConnectionError(&v49, v47);

    specialized BackgroundConnection.fallbackToNextConnectionMethodWithError(_:with:)();

    outlined destroy of NetworkConnectionError(&v49);

    return outlined destroy of NetworkConnectionError(&v49);
  }

  return result;
}

void CommunicationProtocolAce.bytesAvailable(_:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_25_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_31_2();
  if (!(!v8 & v7))
  {
    v9 = v2[40];
    *(v2 + 20) = xmmword_2235EF700;
    outlined consume of Data?(v9, v6);
    if (CommunicationProtocolAce.aceDelegate.getter())
    {
      BackgroundConnection.updateFirstByteReadTime()();
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_40_1((v2 + 14), v183);
  v10 = OUTLINED_FUNCTION_65_0();
  outlined init with copy of DataDecompressing?(v10, v11, v12, v13);
  if (!v185)
  {
    outlined destroy of NetworkConnectionProtocol?(v184, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
LABEL_7:
    v16 = OUTLINED_FUNCTION_3_2();
    outlined copy of Data._Representation(v16, v17);
    goto LABEL_8;
  }

  outlined init with copy of RPCOspreyConnectionProtocol(v184, v177);
  outlined destroy of NetworkConnectionProtocol?(v184, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
  __swift_project_boxed_opaque_existential_1(v177, v178);
  v14 = OUTLINED_FUNCTION_3_2();
  v45 = v15(v14);
  v47 = v46;
  __swift_destroy_boxed_opaque_existential_0(v177);
  if (v47 >> 60 == 15)
  {
    goto LABEL_7;
  }

  a1 = v45;
  a2 = v47;
LABEL_8:
  OUTLINED_FUNCTION_25_2();
  swift_beginAccess();
  v18 = v3[6];
  if (v18 >> 60 == 15)
  {
    v19 = v3[5];
    v3[5] = a1;
    v3[6] = a2;
    v20 = OUTLINED_FUNCTION_3_2();
    outlined copy of Data._Representation(v20, v21);
    outlined consume of Data?(v19, v18);
  }

  else
  {
    v22 = CommunicationProtocolAce.bufferedInputData.modify();
    OUTLINED_FUNCTION_24_1();
    if (!(!v8 & v7))
    {
      OUTLINED_FUNCTION_3_2();
      Data.append(_:)();
    }

    (v22)(v184, 0);
  }

  v23 = v3[6];
  if (v23 >> 60 == 15)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v24, static Logger.siriNetwork);
    v25 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v26 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v26, v27))
    {
      OUTLINED_FUNCTION_17_5();
      v28 = swift_slowAlloc();
      OUTLINED_FUNCTION_40_2(v28);
      OUTLINED_FUNCTION_44_2();
      _os_log_impl(v29, v30, v31, v32, v33, v34);
      v35 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v35);
    }

    v36 = OUTLINED_FUNCTION_3_2();
    outlined consume of Data._Representation(v36, v37);
  }

  else
  {
    v181 = v3[5];
    v182 = v23;
    outlined copy of Data._Representation(v181, v23);
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.siriNetwork);
    v39 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v40 = OUTLINED_FUNCTION_16_0();
    v42 = &unk_2235F1000;
    if (os_log_type_enabled(v40, v41))
    {
      OUTLINED_FUNCTION_6_5();
      v43 = swift_slowAlloc();
      *v43 = 134217984;
      OUTLINED_FUNCTION_40_1(&v181, v176);
      v44 = 0;
      switch(v182 >> 62)
      {
        case 1uLL:
          LODWORD(v44) = HIDWORD(v181) - v181;
          if (__OFSUB__(HIDWORD(v181), v181))
          {
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
            JUMPOUT(0x22352CBE4);
          }

          v44 = v44;
LABEL_29:
          *(v43 + 4) = v44;
          OUTLINED_FUNCTION_74_0();
          _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
          v56 = OUTLINED_FUNCTION_4_0();
          MEMORY[0x223DE38F0](v56);
          break;
        case 2uLL:
          v49 = *(v181 + 16);
          v48 = *(v181 + 24);
          v50 = __OFSUB__(v48, v49);
          v44 = v48 - v49;
          if (!v50)
          {
            goto LABEL_29;
          }

          goto LABEL_65;
        case 3uLL:
          goto LABEL_29;
        default:
          v44 = BYTE6(v182);
          goto LABEL_29;
      }
    }

    if (v3[13])
    {
      OUTLINED_FUNCTION_62_0(v57, v58, v59, v60, v61, v62, v63, v64, v172, v173, v174, v175, v176[0], v176[1], v176[2], v177[0], v177[1], v177[2], v178, v179, v180, v181);
      OUTLINED_FUNCTION_27_1();
      swift_beginAccess();
      CommunicationProtocolAce.consumeHttpHeader(withData:)();
      swift_endAccess();
      v65 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      v66 = OUTLINED_FUNCTION_16_0();
      if (os_log_type_enabled(v66, v67))
      {
        OUTLINED_FUNCTION_6_5();
        v68 = swift_slowAlloc();
        OUTLINED_FUNCTION_63_2(v68, 3.852e-34);
        OUTLINED_FUNCTION_34_2();
        _os_log_impl(v69, v70, v71, v72, v73, 0xCu);
        v74 = OUTLINED_FUNCTION_5_14();
        MEMORY[0x223DE38F0](v74);
      }
    }

    v75 = OUTLINED_FUNCTION_65_0();
    outlined init with copy of DataDecompressing?(v75, v76, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
    v77 = v185;
    v78 = outlined destroy of NetworkConnectionProtocol?(v184, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
    if (!v77)
    {
      OUTLINED_FUNCTION_62_0(v78, v79, v80, v81, v82, v83, v84, v85, v172, v173, v174, v175, v176[0], v176[1], v176[2], v177[0], v177[1], v177[2], v178, v179, v180, v181);
      OUTLINED_FUNCTION_27_1();
      swift_beginAccess();
      CommunicationProtocolAce.consumeAceHeader(withData:)(&v181);
      swift_endAccess();
      v117 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      v118 = OUTLINED_FUNCTION_16_0();
      if (os_log_type_enabled(v118, v119))
      {
        OUTLINED_FUNCTION_6_5();
        v121 = swift_slowAlloc();
        OUTLINED_FUNCTION_63_2(v121, 3.852e-34);
        OUTLINED_FUNCTION_34_2();
        _os_log_impl(v122, v123, v124, v125, v126, 0xCu);
        v127 = OUTLINED_FUNCTION_5_14();
        MEMORY[0x223DE38F0](v127);
      }

      v128 = OUTLINED_FUNCTION_65_0();
      outlined init with copy of DataDecompressing?(v128, v129, v130, v131);
      if (v185)
      {
        outlined init with copy of RPCOspreyConnectionProtocol(v184, v177);
        outlined destroy of NetworkConnectionProtocol?(v184, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
        v132 = v179;
        v173 = v179;
        v133 = __swift_project_boxed_opaque_existential_1(v177, v178);
        v174 = *(v132 + 16);
        v175 = v133;
        v134 = OUTLINED_FUNCTION_50_1();
        outlined copy of Data._Representation(v134, v135);
        v136 = OUTLINED_FUNCTION_50_1();
        v137 = v174(v136);
        v139 = v138;
        v140 = OUTLINED_FUNCTION_50_1();
        outlined consume of Data._Representation(v140, v141);
        __swift_destroy_boxed_opaque_existential_0(v177);
        if (v139 >> 60 != 15)
        {
          v142 = Logger.logObject.getter();
          static os_log_type_t.default.getter();
          v143 = OUTLINED_FUNCTION_16_0();
          if (os_log_type_enabled(v143, v144))
          {
            OUTLINED_FUNCTION_6_5();
            v145 = swift_slowAlloc();
            *v145 = 134217984;
            v148 = 0;
            switch(v182 >> 62)
            {
              case 1uLL:
                LODWORD(v148) = HIDWORD(v181) - v181;
                if (__OFSUB__(HIDWORD(v181), v181))
                {
                  goto LABEL_66;
                }

                v148 = v148;
LABEL_53:
                *(v145 + 4) = v148;
                OUTLINED_FUNCTION_80_0(&dword_223515000, v146, v147, "CommunicationProtocol - Ace bytes available: Still have %ld after Ace Header, decompressing");
                OUTLINED_FUNCTION_2_2();
                MEMORY[0x223DE38F0]();
                break;
              case 2uLL:
                v150 = *(v181 + 16);
                v149 = *(v181 + 24);
                v50 = __OFSUB__(v149, v150);
                v148 = v149 - v150;
                if (!v50)
                {
                  goto LABEL_53;
                }

                goto LABEL_67;
              case 3uLL:
                goto LABEL_53;
              default:
                v148 = BYTE6(v182);
                goto LABEL_53;
            }
          }

          v151 = v181;
          v152 = v182;
          v181 = v137;
          v182 = v139;
          v153 = OUTLINED_FUNCTION_26();
          outlined copy of Data._Representation(v153, v154);
          outlined consume of Data._Representation(v151, v152);
          v155 = OUTLINED_FUNCTION_26();
          outlined copy of Data._Representation(v155, v156);
          v157 = Logger.logObject.getter();
          static os_log_type_t.default.getter();
          v158 = OUTLINED_FUNCTION_16_0();
          if (os_log_type_enabled(v158, v159))
          {
            OUTLINED_FUNCTION_6_5();
            v160 = swift_slowAlloc();
            *v160 = 134217984;
            v161 = 0;
            switch(v139 >> 62)
            {
              case 1uLL:
                LODWORD(v161) = HIDWORD(v137) - v137;
                if (__OFSUB__(HIDWORD(v137), v137))
                {
                  goto LABEL_68;
                }

                v161 = v161;
LABEL_61:
                *(v160 + 4) = v161;
                v166 = OUTLINED_FUNCTION_26();
                outlined consume of Data?(v166, v167);
                OUTLINED_FUNCTION_80_0(&dword_223515000, v168, v169, "CommunicationProtocol - Ace bytes available: Decompressed %ld bytes");
                OUTLINED_FUNCTION_2_2();
                MEMORY[0x223DE38F0]();
                break;
              case 2uLL:
                v165 = *(v137 + 16);
                v164 = *(v137 + 24);
                v50 = __OFSUB__(v164, v165);
                v161 = v164 - v165;
                if (!v50)
                {
                  goto LABEL_61;
                }

                goto LABEL_69;
              case 3uLL:
                goto LABEL_61;
              default:
                v161 = BYTE6(v139);
                goto LABEL_61;
            }
          }

          else
          {
            v162 = OUTLINED_FUNCTION_26();
            outlined consume of Data?(v162, v163);
          }

          v170 = OUTLINED_FUNCTION_26();
          outlined consume of Data?(v170, v171);
        }

        v42 = &unk_2235F1000;
      }

      else
      {
        outlined destroy of NetworkConnectionProtocol?(v184, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
      }
    }

    v86 = OUTLINED_FUNCTION_65_0();
    outlined init with copy of DataDecompressing?(v86, v87, v88, v89);
    if (v185)
    {
      v90 = outlined destroy of NetworkConnectionProtocol?(v184, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
      OUTLINED_FUNCTION_62_0(v90, v91, v92, v93, v94, v95, v96, v97, v172, v173, v174, v175, v176[0], v176[1], v176[2], v177[0], v177[1], v177[2], v178, v179, v180, v181);
      OUTLINED_FUNCTION_27_1();
      swift_beginAccess();
      CommunicationProtocolAce.consumeAceData(withData:)(&v181);
      swift_endAccess();
      v98 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      v99 = OUTLINED_FUNCTION_16_0();
      if (os_log_type_enabled(v99, v100))
      {
        OUTLINED_FUNCTION_6_5();
        v101 = swift_slowAlloc();
        OUTLINED_FUNCTION_63_2(v101, COERCE_FLOAT(v42[396]));
        OUTLINED_FUNCTION_18_5();
        _os_log_impl(v102, v103, v104, v105, v106, v107);
        v108 = OUTLINED_FUNCTION_2_0();
        MEMORY[0x223DE38F0](v108);
      }

      v109 = OUTLINED_FUNCTION_3_2();
      outlined consume of Data._Representation(v109, v110);
    }

    else
    {
      v111 = OUTLINED_FUNCTION_3_2();
      outlined consume of Data._Representation(v111, v112);
      outlined destroy of NetworkConnectionProtocol?(v184, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
    }

    OUTLINED_FUNCTION_40_1(&v181, v177);
    v113 = v181;
    v114 = v182;
    v3[5] = v181;
    v3[6] = v114;
    outlined copy of Data._Representation(v113, v114);
    v115 = OUTLINED_FUNCTION_14_3();
    outlined consume of Data?(v115, v116);
    outlined consume of Data._Representation(v181, v182);
  }
}

uint64_t closure #1 in ZlibDataDecompressor.decompressedDataForData(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, __int128 *a5@<X8>)
{
  v6 = v5;
  v31 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    swift_beginAccess();
    *(a2 + 16) = a1;
  }

  v12 = MEMORY[0x223DE13E0](a3, a4);
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  LODWORD(a4) = v12;
  if (HIDWORD(v12))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_20;
  }

  swift_beginAccess();
  *(a2 + 24) = a4;
  v30 = xmmword_2235EF6F0;
  v13 = *(a2 + 128);
  while (1)
  {
    swift_beginAccess();
    *(a2 + 40) = v13;
    *(a2 + 48) = 0x2000;
    LODWORD(a4) = inflate((a2 + 16), 2);
    swift_endAccess();
    if (a4 > 1)
    {
      break;
    }

    v14 = *(a2 + 48);
    if (v14 == 0x2000)
    {
      v15 = 0;
      v16 = 0xC000000000000000;
    }

    else
    {
      v17 = 0x2000 - v14;
      if (v14 >> 1 >= 0xFF9)
      {
        memset(__dst, 0, sizeof(__dst));
        v29 = -v14;
        memcpy(__dst, v13, v17);
        v15 = *__dst;
        v6 = v6 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v29 << 16)) << 32);
        v16 = v6;
      }

      else
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v15 = v17 << 32;
        v16 = __DataStorage.init(bytes:length:)() | 0x4000000000000000;
      }
    }

    if (*(&v30 + 1) >> 60 != 15)
    {
      Data.append(_:)();
    }

    outlined consume of Data._Representation(v15, v16);
    if (a4 || *(a2 + 48) || !*(a2 + 24))
    {
      v18 = v30;
      *a5 = v30;
      outlined copy of Data?(v18, *(&v18 + 1));
      return outlined consume of Data?(v18, *(&v18 + 1));
    }
  }

  result = *(a2 + 64);
  if (!result)
  {
    __break(1u);
    return result;
  }

  a5 = String.init(cString:)();
  v6 = v20;
  if (one-time initialization token for siriNetwork != -1)
  {
    goto LABEL_26;
  }

LABEL_20:
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.siriNetwork);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *__dst = v25;
    *v24 = 67109378;
    *(v24 + 4) = a4;
    *(v24 + 8) = 2080;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, v6, __dst);

    *(v24 + 10) = v26;
    _os_log_impl(&dword_223515000, v22, v23, "DataCompressor - Compression: Inflate finished with unexpected status %d %s", v24, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x223DE38F0](v25, -1, -1);
    MEMORY[0x223DE38F0](v24, -1, -1);
  }

  else
  {
  }

  outlined consume of Data?(v30, *(&v30 + 1));
  v30 = xmmword_2235EF700;
  lazy protocol witness table accessor for type DataCompressorError and conformance DataCompressorError();
  swift_allocError();
  *v27 = a4;
  swift_willThrow();
  return outlined consume of Data?(v30, *(&v30 + 1));
}

uint64_t (*CommunicationProtocolAce.bufferedInputData.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_27_1();
  swift_beginAccess();
  return RPCOspreyConnectionProvider.connectionMetrics.modify;
}

void closure #1 in NetworkConnectionProvider.readData(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, unint64_t, void *, uint64_t))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 2099))
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.siriNetwork);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v33 = v19;
        *v18 = 136315138;
        v20 = NetworkConnectionProvider.connectionIdentifier.getter();
        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v33);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_223515000, v16, v17, "Provider - NetworkConnectionProvider [%s]: Reader got data, but connection was cancelled", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x223DE38F0](v19, -1, -1);
        MEMORY[0x223DE38F0](v18, -1, -1);
      }
    }

    else
    {
      v23 = *(Strong + 2080);
      v24 = __CFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        __break(1u);
      }

      else
      {
        *(Strong + 2080) = v25;
        if (a2 >> 60 == 15 || (v26 = type metadata accessor for NWError(), v27 = 1, __swift_getEnumTagSinglePayload(a5, 1, v26) != 1))
        {
          outlined init with copy of NetworkConnectionProtocol?(a5, v13, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
          v29 = type metadata accessor for NWError();
          if (__swift_getEnumTagSinglePayload(v13, 1, v29) == 1)
          {
            outlined destroy of NetworkConnectionProtocol?(v13, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
            lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
            v28 = swift_allocError();
            *(v30 + 16) = 0;
            *v30 = 0;
          }

          else
          {
            lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type NWError and conformance NWError, 255, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
            v31 = swift_allocError();
            (*(*(v29 - 8) + 32))(v32, v13, v29);
            lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
            v28 = swift_allocError();
            *(v30 + 16) = 0;
            *v30 = v31;
          }

          *(v30 + 8) = 0;
          v27 = 0;
          *(v30 + 24) = xmmword_2235F0AB0;
        }

        else
        {
          v28 = 0;
        }

        a7(a1, a2, v28, v27);
      }
    }
  }
}

void BackgroundConnection.connectionHasBytesAvailable(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 >> 60 == 15)
  {
LABEL_8:
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v12, static Logger.siriNetwork);
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = OUTLINED_FUNCTION_14();
      *v14 = 0;
      _os_log_impl(&dword_223515000, oslog, v13, "Background Connection - Reader: Connection does not have bytes available", v14, 2u);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }
  }

  else
  {
    switch(a2 >> 62)
    {
      case 1uLL:
        v10 = a1;
        v11 = a1 >> 32;
        goto LABEL_7;
      case 2uLL:
        v10 = *(a1 + 16);
        v11 = *(a1 + 24);
LABEL_7:
        if (v10 == v11)
        {
          goto LABEL_8;
        }

        v15 = OUTLINED_FUNCTION_32();
        outlined copy of Data?(v15, v16);
        goto LABEL_16;
      case 3uLL:
        goto LABEL_4;
      default:
        if ((a2 & 0xFF000000000000) == 0)
        {
LABEL_4:
          v8 = OUTLINED_FUNCTION_32();
          outlined consume of Data?(v8, v9);
          goto LABEL_8;
        }

LABEL_16:
        OUTLINED_FUNCTION_36_5(v7 + 1096, a2, a3, a4, a5, a6, a7);
        v17 = outlined init with copy of MessageCenterBrowserProtocol?(v7 + 1096, v27, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
        if (v28)
        {
          OUTLINED_FUNCTION_101_1(v17, v18);
          outlined destroy of NetworkConnectionProtocol?(v27, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
          OUTLINED_FUNCTION_143(v26);
          v19 = OUTLINED_FUNCTION_32();
          v20(v19);
          v21 = OUTLINED_FUNCTION_32();
          outlined consume of Data?(v21, v22);
          __swift_destroy_boxed_opaque_existential_0(v26);
        }

        else
        {
          v23 = OUTLINED_FUNCTION_32();
          outlined consume of Data?(v23, v24);
          outlined destroy of NetworkConnectionProtocol?(v27, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
        }

        break;
    }
  }
}

uint64_t ZlibDataDecompressor.decompressedDataForData(_:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1;
      v9 = a1 >> 32;
      goto LABEL_7;
    case 2uLL:
      v8 = *(a1 + 16);
      v9 = *(a1 + 24);
LABEL_7:
      if (v8 == v9)
      {
        return 0;
      }

      v11 = OUTLINED_FUNCTION_0();
      outlined copy of Data?(v11, v12);
      goto LABEL_11;
    case 3uLL:
      goto LABEL_4;
    default:
      if ((a2 & 0xFF000000000000) == 0)
      {
LABEL_4:
        v6 = OUTLINED_FUNCTION_0();
        outlined consume of Data?(v6, v7);
        return 0;
      }

LABEL_11:
      v13 = OUTLINED_FUNCTION_0();
      outlined copy of Data?(v13, v14);

      v15 = OUTLINED_FUNCTION_0();
      specialized Data.withUnsafeBytes<A>(_:)(v15, v16, v2, a1, a2, v17);
      v18 = OUTLINED_FUNCTION_0();
      result = outlined consume of Data?(v18, v19);
      if (!v3)
      {
        result = v20;
      }

      break;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_58_1(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_58_3()
{

  return swift_slowAlloc();
}

uint64_t CommunicationProtocolAce.consumeAceData(withData:)(uint64_t *a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[1];
  v7 = v1;
  v8 = 0;
  switch(v6 >> 62)
  {
    case 1uLL:
      v9 = __OFSUB__(HIDWORD(v5), v5);
      v10 = HIDWORD(v5) - v5;
      if (v9)
      {
        goto LABEL_60;
      }

      v2 = v10;
LABEL_6:
      if (v2 < 1)
      {
        return 0;
      }

      v8 = 0;
      break;
    case 2uLL:
      v13 = v5 + 16;
      v11 = *(v5 + 16);
      v12 = *(v13 + 8);
      v2 = v12 - v11;
      if (!__OFSUB__(v12, v11))
      {
        goto LABEL_6;
      }

      goto LABEL_61;
    case 3uLL:
      return v8;
    default:
      v2 = BYTE6(v6);
      goto LABEL_6;
  }

  while (2)
  {
    v14 = *a1;
    v3 = a1[1];
    v67 = v2;
    v68 = v8;
    switch(v3 >> 62)
    {
      case 1uLL:
        v21 = v14 >> 32;
        if (v14 >> 32 < v14)
        {
          goto LABEL_56;
        }

        v8 = v14;
        v18 = __DataStorage._bytes.getter();
        if (v18)
        {
          v22 = __DataStorage._offset.getter();
          if (__OFSUB__(v8, v22))
          {
            goto LABEL_59;
          }

          v18 += v8 - v22;
        }

        v20 = v21 - v8;
        goto LABEL_22;
      case 2uLL:
        v17 = *(v14 + 16);
        v8 = *(v14 + 24);
        v18 = __DataStorage._bytes.getter();
        if (!v18)
        {
          goto LABEL_13;
        }

        v19 = __DataStorage._offset.getter();
        if (__OFSUB__(v17, v19))
        {
          goto LABEL_58;
        }

        v18 += v17 - v19;
LABEL_13:
        v9 = __OFSUB__(v8, v17);
        v20 = v8 - v17;
        if (v9)
        {
          goto LABEL_57;
        }

LABEL_22:
        v23 = MEMORY[0x223DE1260]();
        if (v23 >= v20)
        {
          v24 = v20;
        }

        else
        {
          v24 = v23;
        }

        v25 = (v24 + v18);
        if (v18)
        {
          v15 = v25;
        }

        else
        {
          v15 = 0;
        }

        v16 = v18;
LABEL_29:
        closure #1 in static AceSerialization.parsePacket(data:)(v16, v15, &v72);
        v2 = v7;
        if (!v7)
        {
          v26 = v75;
          v27 = v76;
          v28 = v77;
          v78[0] = v72;
          v78[1] = v73;
          v79 = v74;
          v4 = a1;
          v29 = OUTLINED_FUNCTION_50_1();
          outlined copy of Data._Representation(v29, v30);
          v31 = OUTLINED_FUNCTION_50_1();
          outlined consume of Data._Representation(v31, v32);
          v3 = Data.advanced(by:)();
          v34 = v33;
          v35 = OUTLINED_FUNCTION_50_1();
          outlined consume of Data._Representation(v35, v36);
          *a1 = v3;
          a1[1] = v34;
          v8 = v68 + v28;
          if (__OFADD__(v68, v28))
          {
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            OUTLINED_FUNCTION_0_8();
            swift_once();
LABEL_43:
            v39 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_58(v39, static Logger.siriNetwork);
            v40 = OUTLINED_FUNCTION_53();
            outlined copy of AceSerializationError(v40, v41, v8);
            v42 = Logger.logObject.getter();
            v43 = static os_log_type_t.error.getter();
            v44 = OUTLINED_FUNCTION_53();
            outlined consume of AceSerializationError(v44, v45, v8);
            if (os_log_type_enabled(v42, v43))
            {
              OUTLINED_FUNCTION_6_5();
              v46 = swift_slowAlloc();
              OUTLINED_FUNCTION_28_3();
              v47 = swift_slowAlloc();
              *v46 = 138412290;
              lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
              OUTLINED_FUNCTION_10_0();
              swift_allocError();
              *v48 = v4;
              *(v48 + 8) = v3;
              *(v48 + 16) = v8;
              v49 = OUTLINED_FUNCTION_53();
              outlined copy of AceSerializationError(v49, v50, v8);
              v51 = _swift_stdlib_bridgeErrorToNSError();
              *(v46 + 4) = v51;
              *v47 = v51;
              _os_log_impl(&dword_223515000, v42, v43, "CommunicationProtocol - Ace Data: Error reading Ace data %@", v46, 0xCu);
              outlined destroy of NetworkConnectionProtocol?(v47, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              v52 = OUTLINED_FUNCTION_5_14();
              MEMORY[0x223DE38F0](v52);
              v53 = OUTLINED_FUNCTION_4_0();
              MEMORY[0x223DE38F0](v53);
            }

            lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
            OUTLINED_FUNCTION_10_0();
            swift_allocError();
            *v54 = v4;
            *(v54 + 8) = v3;
            *(v54 + 16) = v8;
            swift_willThrow();

            return v8;
          }

          v7 = 0;
          if (v28 <= 0)
          {
            outlined destroy of NetworkConnectionProtocol?(v78, &_s11SiriNetwork13SessionObject_pSgMd, &_s11SiriNetwork13SessionObject_pSgMR);
            return v8;
          }

          v2 = v67 - v28;
          if (v67 >= v28)
          {
            v37 = v67 - v28;
          }

          else
          {
            v37 = 0;
          }

          v4 = &_s11SiriNetwork13SessionObject_pSgMd;
          outlined init with copy of DataDecompressing?(v78, &v70, &_s11SiriNetwork13SessionObject_pSgMd, &_s11SiriNetwork13SessionObject_pSgMR);
          if (v71)
          {
            outlined init with take of RPCOspreyConnectionProtocol(&v70, &v72);
            outlined init with copy of RPCOspreyConnectionProtocol(&v72, &v70);
            CommunicationProtocolAce.handleAceObject(_:)(&v70);
            outlined destroy of NetworkConnectionProtocol?(&v70, &_s11SiriNetwork13SessionObject_pSgMd, &_s11SiriNetwork13SessionObject_pSgMR);
            __swift_destroy_boxed_opaque_existential_0(&v72);
          }

          else
          {
            outlined destroy of NetworkConnectionProtocol?(&v70, &_s11SiriNetwork13SessionObject_pSgMd, &_s11SiriNetwork13SessionObject_pSgMR);
            CommunicationProtocolAce.handlePacket(_:)(v26 | (v27 << 32));
          }

          outlined destroy of NetworkConnectionProtocol?(v78, &_s11SiriNetwork13SessionObject_pSgMd, &_s11SiriNetwork13SessionObject_pSgMR);
          if (v37 <= 0)
          {
            return v8;
          }

          continue;
        }

        *&v78[0] = v7;
        v38 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        if (swift_dynamicCast())
        {
          v3 = *(&v72 + 1);
          v4 = v72;
          v8 = v73;
          if (v73)
          {
            if (one-time initialization token for siriNetwork == -1)
            {
              goto LABEL_43;
            }

            goto LABEL_62;
          }

          if (one-time initialization token for siriNetwork != -1)
          {
            OUTLINED_FUNCTION_0_8();
            swift_once();
          }

          v55 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_58(v55, static Logger.siriNetwork);
          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.default.getter();
          v58 = OUTLINED_FUNCTION_16_0();
          if (os_log_type_enabled(v58, v59))
          {
            OUTLINED_FUNCTION_6_5();
            v60 = swift_slowAlloc();
            OUTLINED_FUNCTION_28_3();
            v61 = swift_slowAlloc();
            *v60 = 138412290;
            lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
            OUTLINED_FUNCTION_10_0();
            swift_allocError();
            *v62 = v4;
            *(v62 + 8) = v3;
            *(v62 + 16) = 0;
            v63 = _swift_stdlib_bridgeErrorToNSError();
            *(v60 + 4) = v63;
            *v61 = v63;
            _os_log_impl(&dword_223515000, v56, v57, "CommunicationProtocol - Ace Data: Need more data to read Ace object %@", v60, 0xCu);
            outlined destroy of NetworkConnectionProtocol?(v61, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v64 = OUTLINED_FUNCTION_5_14();
            MEMORY[0x223DE38F0](v64);
            v65 = OUTLINED_FUNCTION_7_2();
            MEMORY[0x223DE38F0](v65);
          }
        }

        else
        {
        }

        return 0;
      case 3uLL:
        *(&v70 + 6) = 0;
        *&v70 = 0;
        v16 = &v70;
        v15 = &v70;
        goto LABEL_29;
      default:
        *&v70 = *a1;
        WORD4(v70) = v3;
        BYTE10(v70) = BYTE2(v3);
        BYTE11(v70) = BYTE3(v3);
        BYTE12(v70) = BYTE4(v3);
        BYTE13(v70) = BYTE5(v3);
        v15 = (&v70 + BYTE6(v3));
        v16 = &v70;
        goto LABEL_29;
    }
  }
}

uint64_t closure #1 in static AceSerialization.parsePacket(data:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  if (!a1)
  {
    v8 = lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
    OUTLINED_FUNCTION_60(&type metadata for AceSerializationError, v8);
    *v9 = xmmword_2235EF700;
    v10 = 1;
LABEL_6:
    *(v9 + 16) = v10;
LABEL_7:
    swift_willThrow();
    return outlined destroy of SessionObject?(&v46);
  }

  v4 = a2 - a1;
  v5 = a2 - a1 - 5;
  if (a2 - a1 < 5)
  {
    v6 = lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
    OUTLINED_FUNCTION_60(&type metadata for AceSerializationError, v6);
    *v7 = 5;
    *(v7 + 8) = v4;
LABEL_4:
    *(v7 + 16) = 0;
    goto LABEL_7;
  }

  v13 = AceDataType.init(rawValue:)(*a1);
  v14 = 0;
  switch(v13)
  {
    case 2u:
    case 3u:
      goto LABEL_16;
    case 6u:
      v14 = 1;
LABEL_16:
      if (one-time initialization token for ntohl != -1)
      {
        OUTLINED_FUNCTION_2_23(&one-time initialization token for ntohl);
      }

      v19 = static Endian.ntohl(*(a1 + 1));
      if (v5 < v19)
      {
        v20 = lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
        OUTLINED_FUNCTION_60(&type metadata for AceSerializationError, v20);
        *v7 = v19;
        *(v7 + 8) = v5;
        goto LABEL_4;
      }

      v21 = a1 + 5;
      if (v14)
      {
        v22 = static AceSerialization.parseSpeechPacket(withBytes:length:)(v21, v19);
        if (!v22)
        {
          v35 = MEMORY[0x223DE13C0](a1 + 5, v19);
          v37 = v36;
          v38 = lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
          OUTLINED_FUNCTION_60(&type metadata for AceSerializationError, v38);
          *v9 = v35;
          *(v9 + 8) = v37;
          v10 = 2;
          goto LABEL_6;
        }

        v23 = v22;
        v24 = type metadata accessor for SpeechPacket();
        outlined destroy of SessionObject?(&v46);
        v15 = 0;
        result = 0;
        *&v46 = v23;
        *(&v47 + 1) = v24;
        v25 = &protocol witness table for SpeechPacket;
      }

      else
      {
        MEMORY[0x223DE13C0](v21, v19);
        v26 = type metadata accessor for AceObject();
        v27 = OUTLINED_FUNCTION_26();
        outlined copy of Data._Representation(v27, v28);
        v29 = OUTLINED_FUNCTION_26();
        v31 = @nonobjc AceObject.__allocating_init(plistData:)(v29, v30);
        if (!v31)
        {
          v39 = MEMORY[0x223DE13C0](a1 + 5, v19);
          v41 = v40;
          v42 = lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
          OUTLINED_FUNCTION_60(&type metadata for AceSerializationError, v42);
          *v43 = v39;
          v43[1] = v41;
          OUTLINED_FUNCTION_5_19(v43, 1);
          v44 = OUTLINED_FUNCTION_26();
          outlined consume of Data._Representation(v44, v45);
          return outlined destroy of SessionObject?(&v46);
        }

        v32 = v31;
        v33 = OUTLINED_FUNCTION_26();
        outlined consume of Data._Representation(v33, v34);
        outlined destroy of SessionObject?(&v46);
        v15 = 0;
        result = 0;
        *&v46 = v32;
        *(&v47 + 1) = v26;
        v25 = &protocol witness table for AceObject;
      }

      v48 = v25;
      v16 = v19 + 5;
LABEL_13:
      v17 = v47;
      *a3 = v46;
      *(a3 + 16) = v17;
      *(a3 + 32) = v48;
      *(a3 + 40) = v15;
      *(a3 + 44) = result;
      *(a3 + 48) = v16;
      break;
    case 7u:
      v18 = lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
      OUTLINED_FUNCTION_60(&type metadata for AceSerializationError, v18);
      *v9 = 0;
      *(v9 + 8) = 0;
      v10 = 3;
      goto LABEL_6;
    default:
      v15 = static AceSerialization.rawPacketType(fromDataType:)(v13);
      if (one-time initialization token for ntohl != -1)
      {
        OUTLINED_FUNCTION_2_23(&one-time initialization token for ntohl);
      }

      result = static Endian.ntohl(*(a1 + 1));
      v16 = 5;
      goto LABEL_13;
  }

  return result;
}

uint64_t static AceSerialization.rawPacketType(fromDataType:)(unsigned __int8 a1)
{
  if (a1 >= 6u)
  {
    return 0;
  }

  else
  {
    return (0x30200000104uLL >> (8 * a1));
  }
}

uint64_t AceDataType.init(rawValue:)(char a1)
{
  if ((a1 + 1) > 8u)
  {
    return 7;
  }

  else
  {
    return byte_2235F3AB2[(a1 + 1)];
  }
}

void CommunicationProtocolAce.handlePacket(_:)(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  switch(v1)
  {
    case 1:
      CommunicationProtocolAce.handleAceNop()();
      break;
    case 2:

      CommunicationProtocolAce.handleAcePing(_:)(v2);
      break;
    case 3:

      CommunicationProtocolAce.handleAcePong(_:)(v2);
      break;
    case 4:

      CommunicationProtocolAce.handleAceEnd()();
      break;
    default:
      return;
  }
}

void CommunicationProtocolAce.handleAcePong(_:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v4, static Logger.siriNetwork);
  v5 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v6 = OUTLINED_FUNCTION_16_0();
  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_28_3();
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    v8[1] = a1;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v9, v10, v11, v12, v13, 8u);
    v14 = OUTLINED_FUNCTION_1_2();
    MEMORY[0x223DE38F0](v14);
  }

  if (a1 <= 0xFFFE795F)
  {
    if (*(v2 + 240))
    {

      PingInfo.markPongReceived(withIndex:)(a1);
    }
  }

  else
  {

    CommunicationProtocolAce.handleBarrierReply(barrierValue:)(a1, v15, v16, v17);
  }
}

Swift::Void __swiftcall PingInfo.markPongReceived(withIndex:)(Swift::UInt32 withIndex)
{
  v2 = v1;
  v3 = *&withIndex;
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (*(v4 + 16))
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);
      swift_beginAccess();
      specialized Dictionary._Variant.removeValue(forKey:)(v3);
      swift_endAccess();
      v8 = [objc_opt_self() processInfo];
      [v8 systemUptime];
      v10 = v9;

      v11 = *(v2 + 16);
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        __break(1u);
      }

      else
      {
        *(v2 + 16) = v13;
        v14 = (v10 - v7 - *(v2 + 24)) / v13;
        if (v14 > 0.0)
        {
          *(v2 + 24) = v14;
        }
      }
    }
  }
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v7 = *(*v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys6UInt32VSdGMd, &_ss17_NativeDictionaryVys6UInt32VSdGMR);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
  v8 = *(*(v10 + 56) + 8 * v5);
  _NativeDictionary._delete(at:)();
  *v2 = v10;
  return v8;
}

{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v7 = *(*v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys6UInt32VySbcGMd, &_ss17_NativeDictionaryVys6UInt32VySbcGMR);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
  v8 = *(*(v10 + 56) + 16 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySbcMd, &_sySbcMR);
  _NativeDictionary._delete(at:)();
  *v2 = v10;
  return v8;
}

uint64_t OUTLINED_FUNCTION_57_2()
{
  result = v1;
  *(v2 - 152) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_3()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_57_4@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 16), (v1 + 456), 0x62uLL);
}

void BackgroundConnection.setupReadHandlerOnProvider()()
{
  v1 = *(v0 + 1080);
  if (v1)
  {
    v2 = *(v0 + 1088);
    v3 = one-time initialization token for readBufferBegin;
    swift_unknownObjectRetain();
    if (v3 != -1)
    {
      swift_once();
    }

    siri_kdebug_trace(static Constants.Signposts.readBufferBegin);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_7_1();
    v5 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_109();
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = v1;
    v6[4] = v2;
    v7 = *(v2 + 512);
    swift_unknownObjectRetain();

    v7(partial apply for closure #1 in BackgroundConnection.setupReadHandlerOnProvider(), v6, ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

uint64_t NetworkConnectionProvider.readData(_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.siriNetwork);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_6_5();
    v25[6] = v3;
    v10 = a2;
    v11 = a1;
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v13 = swift_slowAlloc();
    v25[0] = v13;
    *v12 = 136315138;
    v14 = NetworkConnectionProvider.connectionIdentifier.getter();
    v4 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v25);

    *(v12 + 4) = v4;
    _os_log_impl(&dword_223515000, v8, v9, "Provider - NetworkConnectionProvider [%s]: Reader. Ready to receive data.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    a1 = v11;
    a2 = v10;
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of NetworkConnectionProtocol?(v2 + 16, &v23, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (!v24)
  {
    outlined destroy of NetworkConnectionProtocol?(&v23, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    goto LABEL_9;
  }

  outlined init with take of RPCOspreyConnectionProtocol(&v23, v25);
  if (*(v2 + 2099))
  {
    __swift_destroy_boxed_opaque_existential_0(v25);
LABEL_9:
    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    OUTLINED_FUNCTION_10_0();
    v16 = swift_allocError();
    OUTLINED_FUNCTION_34_0(v16, v17);
    return OUTLINED_FUNCTION_39(xmmword_2235F01E0, v18, v19);
  }

  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  OUTLINED_FUNCTION_7_1();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_77(v21);
  swift_weakInit();
  OUTLINED_FUNCTION_109();
  v22 = swift_allocObject();
  v22[2] = v4;
  v22[3] = a1;
  v22[4] = a2;

  NWConnection.receive(minimumIncompleteLength:maximumLength:completion:)();

  return __swift_destroy_boxed_opaque_existential_0(v25);
}

unint64_t OUTLINED_FUNCTION_70_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, a3);
}

double OUTLINED_FUNCTION_70_2()
{

  return result;
}

uint64_t NetworkActivityTracing.stop(label:reason:error:completion:)(uint64_t a1)
{
  OUTLINED_FUNCTION_0_37(a1);
  if (v1 >= 6)
  {
    v5 = 1;
  }

  else
  {
    v5 = v1;
  }

  v7 = v5;
  return NetworkActivityTracing.stop(label:reason:error:completion:)(&v8, &v7, v2, v3, v4);
}

uint64_t NetworkActivityTracing.stop(label:reason:error:completion:)(char *a1, unsigned __int8 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = *a1;

  specialized NetworkActivityTracingInternal.stop(label:reason:error:completion:)(v9, v8, a3, a4, a5);
}

uint64_t specialized NetworkActivityTracingInternal.stop(label:reason:error:completion:)(char a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v24 = a2;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for DispatchQoS();
  v25 = *(v13 - 8);
  v26 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v5 + 32);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a1;
  *(v18 + 25) = v24;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  aBlock[4] = partial apply for specialized closure #1 in NetworkActivityTracingInternal.stop(label:reason:error:completion:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_68;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  v21 = a3;
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a4, a5);
  static DispatchQoS.unspecified.getter();
  v28 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2460](0, v15, v12, v19);
  _Block_release(v19);

  (*(v27 + 8))(v12, v10);
  (*(v25 + 8))(v15, v26);
}

uint64_t sub_22352F1F8()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void closure #1 in NetworkAnalytics.setNetId(_:)()
{
  OUTLINED_FUNCTION_46();
  v2 = v1;
  v46 = v3;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9();
  v45 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v18 = OUTLINED_FUNCTION_11_1(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_51_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v42 - v24;
  OUTLINED_FUNCTION_40_1(v7 + 16, &v49);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    if (v5)
    {
      UUID.init(uuidString:)();
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v25, 1, 1, v8);
    }

    v28 = *v46;
    swift_beginAccess();
    outlined assign with take of UUID?(v25, v27 + v28);
    swift_endAccess();
    v29 = v10;
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.siriNetwork);
    v31 = v27;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v44 = v2;
      v34 = OUTLINED_FUNCTION_55();
      v43 = OUTLINED_FUNCTION_54();
      v47 = v43;
      *v34 = 136315138;
      v35 = *v46;
      OUTLINED_FUNCTION_40_1(v31 + *v46, &v48);
      outlined init with copy of UUID?(v31 + v35, v0);
      outlined init with copy of UUID?(v0, v21);
      if (__swift_getEnumTagSinglePayload(v21, 1, v8) == 1)
      {
        v36 = 0xE400000000000000;
        v37 = 1819047278;
      }

      else
      {
        (*(v29 + 32))(v16, v21, v8);
        (*(v29 + 16))(v45, v16, v8);
        v37 = String.init<A>(describing:)();
        v36 = v38;
        v39 = OUTLINED_FUNCTION_32_2();
        v40(v39);
      }

      outlined destroy of NetworkConnectionProtocol?(v0, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, &v47);

      *(v34 + 4) = v41;
      _os_log_impl(&dword_223515000, v32, v33, v44, v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }
  }

  OUTLINED_FUNCTION_47();
}

Swift::Void __swiftcall NetworkAnalytics.logRequestLinkBetweenOrchestratorAndNetworkComponent()()
{
  OUTLINED_FUNCTION_46();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v4 = mach_absolute_time();
  v5 = *(v0 + OBJC_IVAR___SNNetworkAnalyticsInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_28_0(v6);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v4;
  v19[4] = partial apply for closure #1 in NetworkAnalytics.logRequestLinkBetweenOrchestratorAndNetworkComponent();
  v19[5] = v7;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v19[2] = v8;
  v19[3] = &block_descriptor_108;
  v9 = _Block_copy(v19);
  v10 = v5;
  OUTLINED_FUNCTION_42();
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_2_9();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v11, v12, MEMORY[0x277D851A0]);
  v13 = OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_45_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_43_1();
  _Block_release(v9);

  v15 = OUTLINED_FUNCTION_16_1();
  v16(v15);
  v17 = OUTLINED_FUNCTION_16();
  v18(v17);
  OUTLINED_FUNCTION_39_0();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_22352F818()
{

  OUTLINED_FUNCTION_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t _s11SiriNetwork0B18ConnectionProviderC06createC18WithInitialPayload_07networkC12ProtocolTypeySo16OS_dispatch_dataCSg_xmtKAA0bcJ0RzlF0B012NWConnectionC_Tt0g5(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = type metadata accessor for NWEndpoint();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v24 - v12;
  memcpy(v28, (v2 + 1536), 0x204uLL);
  memcpy(v27, (v2 + 1536), 0x204uLL);
  outlined init with copy of ConnectionConfiguration(v28, v26);
  NWEndpoint.init(configuration:)(v27, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    outlined destroy of NetworkConnectionProtocol?(v6, &_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    swift_allocError();
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *v14 = 0;
    *(v14 + 24) = xmmword_2235F01E0;
    return swift_willThrow();
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    if (one-time initialization token for streamOpenNetwork != -1)
    {
      swift_once();
    }

    siri_kdebug_trace(static Constants.Signposts.streamOpenNetwork);
    v16 = type metadata accessor for NWConnection();
    (*(v8 + 16))(v11, v13, v7);
    memcpy(v27, (v2 + 1536), 0x204uLL);
    memcpy(v26, (v2 + 1536), 0x204uLL);
    v25[3] = v16;
    v25[4] = &protocol witness table for NWConnection;
    outlined init with copy of ConnectionConfiguration(v27, v24);
    v17 = a1;
    v25[0] = NWConnection.init(endpoint:configuration:with:)(v11, v26, a1);
    swift_beginAccess();
    outlined assign with take of NetworkConnectionProtocol?(v25, v2 + 16);
    swift_endAccess();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    outlined init with copy of NetworkConnectionProtocol?(v2 + 16, v26, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    if (v26[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
      if (swift_dynamicCast())
      {
        v23 = v24[0];
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      outlined destroy of NetworkConnectionProtocol?(v26, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
      v23 = 0;
    }

    NetworkActivityTracing.addNWConnection(_:completion:)(v23, 0, 0, v18, v19, v20, v21, v22, v24[0]);

    result = (*(v8 + 8))(v13, v7);
    *(v2 + 2101) = 0;
  }

  return result;
}

void closure #1 in NetworkManager.acquireWiFiAssertion(wifiAssertionTypeRawValue:)(uint64_t a1, Swift::Int a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___SNNetworkManagerInternal_networkWiFiManager);
    NetworkWiFiManager.acquireWiFiAssertion(wifiAssertionTypeRawValue:)(a2);
  }
}

Swift::Void __swiftcall NetworkWiFiManager.acquireWiFiAssertion(wifiAssertionTypeRawValue:)(Swift::Int wifiAssertionTypeRawValue)
{
  v1 = wifiAssertionTypeRawValue == 2;
  if (wifiAssertionTypeRawValue == 3)
  {
    v1 = 2;
  }

  v2 = v1;
  NetworkWiFiManager.acquireWiFiAssertion(wifiAssertionType:)(&v2);
}

Swift::Void __swiftcall NetworkWiFiManager.acquireWiFiAssertion(wifiAssertionType:)(SiriNetwork::WiFiAssertionType wifiAssertionType)
{
  v1 = *wifiAssertionType;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
  }

  v2 = type metadata accessor for Logger();
  v3 = OUTLINED_FUNCTION_17(v2, static Logger.siriNetwork);
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_223515000, v3, v4, "NetworkWiFiManager - Assertion: acquireWiFiAssertion: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  NetworkWiFiManager.setWiFiManagerClientType(_:)(dword_2235F3A94[v1]);
}

Swift::Void __swiftcall NetworkManager.startMonitoringNetwork(_:)(Swift::String a1)
{
  v3 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  v22 = OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_1();
  v15 = v14 - v13;
  v16 = *(v3 + OBJC_IVAR___SNNetworkManagerInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = countAndFlagsBits;
  v18[4] = object;
  v26 = partial apply for closure #1 in NetworkManager.startMonitoringNetwork(_:);
  v27 = v18;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v24 = v19;
  v25 = &block_descriptor_17_0;
  v20 = _Block_copy(aBlock);
  v21 = v16;

  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_3();
  _Block_release(v20);

  (*(v8 + 8))(v2, v6);
  (*(v11 + 8))(v15, v22);
}

uint64_t sub_223530170()
{
  MEMORY[0x223DE39C0](v0 + 16);
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2235301A4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t NetworkWiFiManager.setWiFiManagerClientType(_:)(uint64_t result)
{
  if (*(v1 + OBJC_IVAR___SNNetworkWiFiManagerInternal_wifiClientType) != result)
  {
    *(v1 + OBJC_IVAR___SNNetworkWiFiManagerInternal_wifiClientType) = result;
    return MEMORY[0x2821878C8](*(v1 + OBJC_IVAR___SNNetworkWiFiManagerInternal_wifiManager), result);
  }

  return result;
}

void NetworkAnalytics.setNetworkConnectionId(_:)()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_53_1();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v27[2] = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_0_0();
  v27[0] = v5;
  v27[1] = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v27 - v8;
  v10 = *(v0 + OBJC_IVAR___SNNetworkAnalyticsInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_28_0(v11);
  swift_unknownObjectWeakInit();
  v12 = OUTLINED_FUNCTION_27_0();
  outlined init with copy of UUID?(v12, v13);
  v14 = ((*(v7 + 80) + 24) & ~*(v7 + 80));
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  outlined init with take of UUID?(v9, v14 + v15);
  v28[4] = partial apply for closure #1 in NetworkAnalytics.setNetworkConnectionId(_:);
  v28[5] = v15;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v28[2] = v16;
  v28[3] = &block_descriptor_23;
  v17 = _Block_copy(v28);
  v18 = v10;
  OUTLINED_FUNCTION_42();
  static DispatchQoS.unspecified.getter();
  v27[3] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_9();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v19, v20, MEMORY[0x277D851A0]);
  v21 = OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  OUTLINED_FUNCTION_45_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_43_1();
  _Block_release(v17);

  v23 = OUTLINED_FUNCTION_16_1();
  v24(v23);
  v25 = OUTLINED_FUNCTION_16();
  v26(v25);
  OUTLINED_FUNCTION_39_0();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_2235304CC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v5))
  {
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork26ConnectionHTTPHeaderReportVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork27ConnectionPreparationReportVSg(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork29ConnectionEstablishmentReportVSg(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork24ConnectionSnapshotReportVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_35_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t getEnumTagSinglePayload for ConnectionInterfaceReport(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 289))
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

uint64_t _s11SiriNetwork24ConnectionSnapshotReportVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t protocol witness for ConnectionProviderProtocol.connectionMetrics.getter in conformance NetworkConnectionProvider@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  memcpy(__dst, (v1 + 56), 0x599uLL);
  memcpy(a1, (v1 + 56), 0x599uLL);
  return outlined init with copy of ConnectionMetrics(__dst, &v4);
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void NetworkAnalytics.setNetId(_:)()
{
  OUTLINED_FUNCTION_46();
  v25 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v11 = *(v0 + OBJC_IVAR___SNNetworkAnalyticsInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_28_0(v12);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_109();
  v13 = swift_allocObject();
  v13[2] = v1;
  v13[3] = v8;
  v13[4] = v6;
  v26[4] = v4;
  v26[5] = v13;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v26[2] = v14;
  v26[3] = v25;
  v15 = _Block_copy(v26);

  v16 = v11;

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_2_9();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v17, v18, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v19 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_30_2(v19);
  v20 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v20);
  _Block_release(v15);

  v21 = OUTLINED_FUNCTION_16_1();
  v22(v21);
  v23 = OUTLINED_FUNCTION_16();
  v24(v23);
  OUTLINED_FUNCTION_39_0();

  OUTLINED_FUNCTION_47();
}

uint64_t static NetworkAnalytics.netProvider(from:)()
{
  v0 = String.lowercased()();
  OUTLINED_FUNCTION_7_21();
  v2 = v0._countAndFlagsBits == 0xD000000000000018 && v1 == v0._object;
  if (v2 || (OUTLINED_FUNCTION_4_29(0xD000000000000018, v1) & 1) != 0)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7_21();
    v5 = v0._countAndFlagsBits == 0xD00000000000001ELL && v4 == v0._object;
    if (v5 || (OUTLINED_FUNCTION_4_29(0xD00000000000001ELL, v4) & 1) != 0)
    {

      return 3;
    }

    else
    {
      OUTLINED_FUNCTION_7_21();
      v7 = v0._countAndFlagsBits == 0xD000000000000014 && v6 == v0._object;
      if (v7 || (OUTLINED_FUNCTION_4_29(0xD000000000000014, v6) & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_7_21();
        v9 = v0._countAndFlagsBits == 0xD000000000000017 && v8 == v0._object;
        if (v9 || (OUTLINED_FUNCTION_4_29(0xD000000000000017, v8) & 1) != 0)
        {

          return 4;
        }

        else
        {
          OUTLINED_FUNCTION_7_21();
          if (v0._countAndFlagsBits == 0xD00000000000001ELL && v10 == v0._object)
          {

            return 5;
          }

          else
          {
            OUTLINED_FUNCTION_4_29(0xD00000000000001ELL, v10);
            OUTLINED_FUNCTION_12_11();
            if (v0._countAndFlagsBits)
            {
              return 5;
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

id Connection.__deallocating_deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v3 = OUTLINED_FUNCTION_11_1(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  if (!*&v0[OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection])
  {
    dispatch_group_leave(*&v0[OBJC_IVAR___SNConnectionInternal_activeConnectionGroup]);
  }

  v6 = OBJC_IVAR___SNConnectionInternal_networkAnalytics;
  v7 = *&v0[OBJC_IVAR___SNConnectionInternal_networkAnalytics];
  v8 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
  v9 = v7;
  NetworkAnalytics.setNetworkConnectionId(_:)();

  outlined destroy of NetworkConnectionProtocol?(v5, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v10 = *&v1[v6];
  v11 = OUTLINED_FUNCTION_53_1();
  NetworkAnalytics.setConnectionProvider(_:)(v11);

  v12 = type metadata accessor for Connection();
  v14.receiver = v1;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, sel_dealloc);
}

uint64_t outlined consume of ConnectionPolicyRoute?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Connection.start()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v3 = OUTLINED_FUNCTION_11_1(v2);
  MEMORY[0x28223BE20](v3);
  v5 = (&v128 - v4);
  if (one-time initialization token for siriNetwork != -1)
  {
LABEL_58:
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, static Logger.siriNetwork);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = OUTLINED_FUNCTION_16_0();
  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_17_5();
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_223515000, v8, v9, "Connection - Start: Starting connection", v12, 2u);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  if (*(v1 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection))
  {
    v13 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v14 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_17_5();
      v16 = swift_slowAlloc();
      OUTLINED_FUNCTION_40_2(v16);
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      v22 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v22);
    }

    v23 = lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    v24 = OUTLINED_FUNCTION_60(&type metadata for NetworkConnectionError, v23);
    v26 = 2;
LABEL_12:
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    *v25 = v26;
    *(v25 + 24) = xmmword_2235F01E0;
LABEL_13:
    v137 = v24;
    swift_willThrow();
    return;
  }

  if (*(v1 + OBJC_IVAR___SNConnectionInternal_isCanceledInternal))
  {
    v27 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v28 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v28, v29))
    {
      OUTLINED_FUNCTION_17_5();
      v30 = swift_slowAlloc();
      OUTLINED_FUNCTION_40_2(v30);
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v31, v32, v33, v34, v35, 2u);
      v36 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v36);
    }

    v37 = lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    v24 = OUTLINED_FUNCTION_60(&type metadata for NetworkConnectionError, v37);
    v26 = 1;
    goto LABEL_12;
  }

  v38 = [objc_opt_self() sharedPreferences];
  v39 = [v38 isDictationHIPAACompliant];

  if (v39)
  {
    v40 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v41 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v41, v42))
    {
      OUTLINED_FUNCTION_17_5();
      v43 = swift_slowAlloc();
      OUTLINED_FUNCTION_40_2(v43);
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v44, v45, v46, v47, v48, 2u);
      v49 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v49);
    }

    v50 = lazy protocol witness table accessor for type ConnectionConfigurationError and conformance ConnectionConfigurationError();
    v24 = OUTLINED_FUNCTION_60(&type metadata for ConnectionConfigurationError, v50);
    *v51 = 1;
    goto LABEL_13;
  }

  v150 = MEMORY[0x277D84FA0];
  v52 = (v1 + OBJC_IVAR___SNConnectionInternal_connectionConfiguration);
  v53 = *(v1 + OBJC_IVAR___SNConnectionInternal_connectionConfiguration + 392);
  if (v53)
  {
    static ConnectionPolicyRoute.aceptableRoutes(_:)(v53);
    specialized Set.formUnion<A>(_:)(v54);
  }

  v55 = *(v52 + 51);
  if (v55 != 1)
  {
    v56 = v7;
    v57 = *(v52 + 50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork21ConnectionPolicyRouteVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork21ConnectionPolicyRouteVGMR);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_2235EFCB0;
    *(v58 + 32) = v57;
    *(v58 + 40) = v55;
    memcpy((v58 + 48), v52 + 52, 0x62uLL);
    v149[0] = v57;
    v7 = v56;
    v149[1] = v55;
    memcpy(&v149[2], v52 + 52, 0x62uLL);
    outlined init with copy of ConnectionPolicyRoute(v149, v148);
    v59 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11SiriNetwork21ConnectionPolicyRouteV_Tt0g5(v58);
    static ConnectionPolicyRoute.aceptableRoutes(_:)(v59);
    v61 = v60;

    specialized Set.formUnion<A>(_:)(v61);
  }

  v62 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC11SiriNetwork21ConnectionPolicyRouteV_ShyAFGTt0g5(v150);
  if (!*(v62 + 2))
  {

    v101 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v102 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v102, v103))
    {
      OUTLINED_FUNCTION_17_5();
      v104 = swift_slowAlloc();
      OUTLINED_FUNCTION_40_2(v104);
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v105, v106, v107, v108, v109, 2u);
      v110 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v110);
    }

    v111 = lazy protocol witness table accessor for type ConnectionConfigurationError and conformance ConnectionConfigurationError();
    v24 = OUTLINED_FUNCTION_60(&type metadata for ConnectionConfigurationError, v111);
    *v112 = 0;
    goto LABEL_13;
  }

  v134 = v7;
  v63 = OBJC_IVAR___SNConnectionInternal_networkAnalytics;
  v64 = *(v1 + OBJC_IVAR___SNConnectionInternal_networkAnalytics);
  UUID.init()();
  v65 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v65);
  NetworkAnalytics.setNetworkConnectionId(_:)();

  outlined destroy of NetworkConnectionProtocol?(v5, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v66 = *(v1 + v63);
  v67 = ConnectionProtocolTechnology.provider()();
  v140 = v52;
  NetworkAnalytics.setConnectionProvider(_:)(v67);

  v68 = v140;

  v135 = static ConnectionPolicyRoute.groupedRoutesAndSortedByPriority(_:)(v62);

  if (*(v68 + 49) && (v68[44] & 1) == 0)
  {
    v113 = v68[43];
    OUTLINED_FUNCTION_8();
    swift_beginAccess();
    v70 = *&static ConnectionPolicy.maxGlobalTimeout;
    if (*&static ConnectionPolicy.maxGlobalTimeout >= v113)
    {
      v70 = v113;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8();
    swift_beginAccess();
    v70 = *&static ConnectionPolicy.maxGlobalTimeout;
  }

  v71 = v135;
  v132 = v135[2];
  if (!v132)
  {
    goto LABEL_47;
  }

  v72 = 0;
  v138 = OBJC_IVAR___SNConnectionInternal_networkManager;
  v139 = OBJC_IVAR___SNConnectionInternal_connectionQueue;
  v133 = v135 + 4;
  v73 = 0.0;
  *&v69 = 134218242;
  v128 = v69;
  while (2)
  {
    if (v72 >= v71[2])
    {
      __break(1u);
      return;
    }

    v74 = &v133[2 * v72];
    v75 = *v74;
    v5 = v74[1];
    swift_bridgeObjectRetain_n();
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();

    LODWORD(v141) = v77;
    v78 = os_log_type_enabled(v76, v77);
    v136 = v75;
    if (v78)
    {
      OUTLINED_FUNCTION_30();
      v79 = swift_slowAlloc();
      v130 = v76;
      v80 = v79;
      OUTLINED_FUNCTION_4_3();
      v129 = swift_slowAlloc();
      v149[0] = v129;
      *v80 = v128;
      *(v80 + 4) = v75;
      *(v80 + 12) = 2080;
      v81 = MEMORY[0x223DE2280](v5, &type metadata for ConnectionPolicyRoute);
      v131 = v5;
      v83 = v72;
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, v149);
      v5 = v131;

      *(v80 + 14) = v84;
      v72 = v83;
      v85 = v130;
      _os_log_impl(&dword_223515000, v130, v141, "Connection - Start: Acceptable Routes for priority %ld: %s", v80, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v129);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      v86 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v86);
    }

    else
    {
    }

    static ConnectionPolicyRoute.maxTimeoutFromRoutes(_:)(v5);
    if (v87 <= 5.0)
    {
      v88 = v87;
    }

    else
    {
      v88 = 5.0;
    }

    if (v73 == 0.0 || v70 > v73)
    {
      v136 = v72 + 1;
      v90 = static ConnectionPolicyRoute.prioritizedPOPRoutes(_:)(v5);

      v91 = 0;
      v141 = v90[2];
      v92 = 4;
      while (v141 != v91)
      {
        if (v91 >= v90[2])
        {
          __break(1u);
          goto LABEL_58;
        }

        memcpy(v144, &v90[v92], 0x72uLL);
        memcpy(v145, &v90[v92], sizeof(v145));
        memcpy(v146, v68, 0x204uLL);
        memcpy(v143, v68, sizeof(v143));
        memcpy(v147, v68 + 50, 0x72uLL);
        outlined init with copy of ConnectionPolicyRoute(v144, v149);
        outlined init with copy of ConnectionConfiguration(v146, v149);
        outlined destroy of NetworkConnectionProtocol?(v147, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
        memcpy(&v143[400], v145, 0x72uLL);
        memcpy(v148, v143, 0x204uLL);
        memcpy(v149, v143, 0x204uLL);
        v93 = *(v1 + v139);
        v94 = *(v1 + v138);
        outlined init with copy of ConnectionConfiguration(v148, &v142);
        v95 = v1;
        v96 = one-time initialization token for sharedNetworkAnalytics;
        v97 = v93;
        v98 = v94;
        if (v96 != -1)
        {
          OUTLINED_FUNCTION_24_3();
          swift_once();
        }

        v99 = static NetworkAnalytics.sharedNetworkAnalytics;
        type metadata accessor for BackgroundConnection();
        swift_allocObject();
        v5 = BackgroundConnection.init(connectionConfiguration:connectionQueue:networkManager:networkAnalytics:)(v149, v97, v94, v99);
        v100 = v99;
        Connection.scheduleBackgroundConnection(_:after:)(v5, v73);

        memcpy(v149, v143, 0x204uLL);
        outlined destroy of ConnectionConfiguration(v149);
        v92 += 15;
        ++v91;
        v1 = v95;
        v68 = v140;
      }

      v73 = v73 + v88;
      v71 = v135;
      v72 = v136;
      if (v136 != v132)
      {
        continue;
      }

LABEL_47:

      return;
    }

    break;
  }

  v114 = Logger.logObject.getter();
  v115 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v114, v115))
  {
    v117 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v118 = swift_slowAlloc();
    v149[0] = v118;
    *v117 = 134218754;
    *(v117 + 4) = v136;
    *(v117 + 12) = 2048;
    *(v117 + 14) = v73;
    *(v117 + 22) = 2048;
    *(v117 + 24) = v70;
    *(v117 + 32) = 2080;
    v148[0] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriNetwork21ConnectionPolicyRouteVGMd, &_sSay11SiriNetwork21ConnectionPolicyRouteVGMR);
    v119 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v120, v149);
    OUTLINED_FUNCTION_53_4();

    *(v117 + 34) = v5;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v121, v122, v123, v124, v125, 0x2Au);
    __swift_destroy_boxed_opaque_existential_0(v118);
    v126 = OUTLINED_FUNCTION_2_0();
    MEMORY[0x223DE38F0](v126);
    v127 = OUTLINED_FUNCTION_1_2();
    MEMORY[0x223DE38F0](v127);
  }

  else
  {
  }
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork21ConnectionPolicyRouteVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork21ConnectionPolicyRouteVGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 120);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
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

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *static ConnectionPolicyRoute.groupedRoutesAndSortedByPriority(_:)(uint64_t a1)
{

  v2 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSi_Say11SiriNetwork21ConnectionPolicyRouteVGTt1g504_s11d9Network21fgh46V32groupedRoutesAndSortedByPriorityySaySi3key_Q24ACG5valuetGAFFZSiACXEfU_Tf1nc_n(v1);
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(v2);
  specialized MutableCollection<>.sort(by:)(&v4);

  return v4;
}

void *_sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSi_Say11SiriNetwork21ConnectionPolicyRouteVGTt1g504_s11d9Network21fgh46V32groupedRoutesAndSortedByPriorityySaySi3key_Q24ACG5valuetGAFFZSiACXEfU_Tf1nc_n(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x277D84F98];
  v30 = MEMORY[0x277D84F98];
  v4 = *(a1 + 16);
  v5 = 32;
  v27 = v4;
  while (1)
  {
    if (v4 == v2)
    {

      return v3;
    }

    if (v2 >= *(a1 + 16))
    {
      break;
    }

    memcpy(__dst, (a1 + v5), 0x72uLL);
    v6 = __dst[4];
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(__dst[4]);
    v9 = v3[2];
    v10 = (v8 & 1) == 0;
    v11 = v9 + v10;
    if (__OFADD__(v9, v10))
    {
      goto LABEL_19;
    }

    v12 = v8;
    if (v3[3] >= v11)
    {
      v15 = v7;
      outlined init with copy of ConnectionPolicyRoute(__dst, v28);
      if (v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
      outlined init with copy of ConnectionPolicyRoute(__dst, v28);
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v11, 1);
      v3 = v30;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if ((v12 & 1) != (v14 & 1))
      {
        goto LABEL_21;
      }

      v15 = v13;
      if (v12)
      {
LABEL_11:
        v20 = v3[7];
        v21 = *(v20 + 8 * v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v20 + 8 * v15) = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v21 = v24;
          *(v20 + 8 * v15) = v24;
        }

        v23 = *(v21 + 16);
        if (v23 >= *(v21 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v21 = v25;
          *(v20 + 8 * v15) = v25;
        }

        *(v21 + 16) = v23 + 1;
        memcpy((v21 + 120 * v23 + 32), __dst, 0x72uLL);
        v4 = v27;
        goto LABEL_16;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork21ConnectionPolicyRouteVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork21ConnectionPolicyRouteVGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2235EFCB0;
    memcpy((v16 + 32), __dst, 0x72uLL);
    v3[(v15 >> 6) + 8] |= 1 << v15;
    *(v3[6] + 8 * v15) = v6;
    *(v3[7] + 8 * v15) = v16;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      goto LABEL_20;
    }

    v3[2] = v19;
LABEL_16:
    v5 += 120;
    ++v2;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    outlined init with copy of AnyHashable(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x223DE26B0](v8, a1);
    outlined destroy of AnyHashable(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi3key_Say11SiriNetwork21ConnectionPolicyRouteVG5valuet_Tt1g5(*(a1 + 16), 0);
  specialized Sequence._copySequenceContents(initializing:)(&v8, v3 + 4, v1, a1);
  v5 = v4;
  v6 = v8;

  outlined consume of Set<MessageCenterUser>.Iterator._Variant(v6);
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_Say11SiriNetwork21ConnectionPolicyRouteVG5valuetMd, &_sSi3key_Say11SiriNetwork21ConnectionPolicyRouteVG5valuetMR);
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

void specialized Sequence._copySequenceContents(initializing:)(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v7;
    a1[3] = v13;
    a1[4] = v9;
    return;
  }

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
    while (v12 < a3)
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
      v16 = (v15 << 9) | (8 * __clz(__rbit64(v9)));
      v17 = *(*(a4 + 56) + v16);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v16);
      v11[1] = v17;
      if (v14 == a3)
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
}

Swift::String __swiftcall ConnectionProtocolTechnology.provider()()
{
  v1 = v0;
  v2 = 0xD000000000000017;
  if (v1 == 1)
  {
    v3 = "v16@?0@<OS_xpc_object>8";
  }

  else
  {
    if (v1 != 2)
    {
      v2 = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      goto LABEL_7;
    }

    v3 = "connectionReadyReportEmitted";
    v2 = 0xD00000000000001ELL;
  }

  v4 = (v3 | 0x8000000000000000);
LABEL_7:
  result._object = v4;
  result._countAndFlagsBits = v2;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi3key_Say11SiriNetwork21ConnectionPolicyRouteVG5valuet_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi3key_Say11SiriNetwork21ConnectionPolicyRouteVG5valuetGMd, &_ss23_ContiguousArrayStorageCySi3key_Say11SiriNetwork21ConnectionPolicyRouteVG5valuetGMR);
  v4 = OUTLINED_FUNCTION_16_6();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_7_9();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

uint64_t BackgroundConnection.init(connectionConfiguration:connectionQueue:networkManager:networkAnalytics:)(void *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, __src, 0x204uLL);
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 1121) = 0u;
  *(v4 + 1096) = 0u;
  *(v4 + 1112) = 0u;
  *(v4 + 1080) = 0u;
  *(v4 + 1160) = 0u;
  *(v4 + 1184) = 0;
  *(v4 + 1188) = 0;
  *(v4 + 1192) = 0u;
  *(v4 + 1208) = 0u;
  *(v4 + 1224) = 0u;
  *(v4 + 1240) = 1;
  *(v4 + 1248) = 0;
  memcpy((v4 + 40), __src, 0x204uLL);
  memcpy((v4 + 560), __src, 0x204uLL);
  *(v4 + 32) = a2;
  *(v4 + 1152) = MEMORY[0x277D84FA0];
  *(v4 + 1176) = a4;
  *(v4 + 1144) = a3;
  outlined init with copy of ConnectionConfiguration(__dst, &v10);
  return v4;
}

void Connection.scheduleBackgroundConnection(_:after:)(void *a1, double a2)
{
  v4 = v2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v11 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_1();
  v16 = v15 - v14;
  if (!*&v4[OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection] && (v4[OBJC_IVAR___SNConnectionInternal_isCanceledInternal] & 1) == 0)
  {
    v17 = a1[56];
    if (v17 != 1)
    {
      v36 = v13;
      v40 = v9;
      v18 = a1[55];
      memcpy(__dst, a1 + 57, sizeof(__dst));
      v38 = v18;
      v50[0] = v18;
      v50[1] = v17;
      OUTLINED_FUNCTION_57_4(v50);
      outlined init with copy of ConnectionPolicyRoute(v50, &v44);
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v19, static Logger.siriNetwork);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      v37 = v21;
      v39 = v17;
      if (os_log_type_enabled(v20, v21))
      {
        v35 = v20;
        OUTLINED_FUNCTION_30();
        v22 = swift_slowAlloc();
        OUTLINED_FUNCTION_4_3();
        v34 = swift_slowAlloc();
        v43 = v34;
        *v22 = 134218242;
        *(v22 + 4) = a2;
        *(v22 + 12) = 2080;
        v23 = a1[56];
        if (v23 == 1)
        {
          v24 = 0xE100000000000000;
          v25 = 45;
        }

        else
        {
          v26 = a1[55];
          OUTLINED_FUNCTION_57_4(v42);
          v42[0] = v26;
          v42[1] = v23;
          v44 = v26;
          v45 = v23;
          OUTLINED_FUNCTION_57_4(&v44);
          outlined init with copy of ConnectionPolicyRoute(&v44, &v41);
          v25 = String.init<A>(describing:)();
          v24 = v27;
        }

        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, &v43);

        *(v22 + 14) = v28;
        v20 = v35;
        _os_log_impl(&dword_223515000, v35, v37, "Connection - Start: Background Connection. Scheduling route after delay %f: %s", v22, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v34);
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
      }

      OUTLINED_FUNCTION_7_1();
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      *(v30 + 24) = v38;
      *(v30 + 32) = v39;
      memcpy((v30 + 40), __dst, 0x62uLL);
      *(v30 + 144) = a1;
      *(v30 + 152) = a2;
      v48 = partial apply for closure #1 in Connection.scheduleBackgroundConnection(_:after:);
      v49 = v30;
      v44 = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      OUTLINED_FUNCTION_3_5();
      v46 = v31;
      v47 = &block_descriptor_174;
      _Block_copy(&v44);
      OUTLINED_FUNCTION_53_4();

      static DispatchQoS.unspecified.getter();
      v42[0] = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_1_24();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(v32, v33, MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x223DE2460](0, v16, v3, v4);
      _Block_release(v4);
      (*(v40 + 8))(v3, v7);
      (*(v36 + 8))(v16, v11);
    }
  }
}

uint64_t sub_223532948()
{

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t NetworkConnectionProvider.openConnectionWithInitialPayload(_:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
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
    _os_log_impl(&dword_223515000, v10, v11, "Provider - NetworkConnectionProvider: Preparing connection with initial payload.", v12, 2u);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  OUTLINED_FUNCTION_96();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v13, v14);
  specialized ConnectionProviderProtocol.cancelOpenTimer()();
  specialized ConnectionProviderProtocol.cancelOpenSlowTimer()();
  specialized ConnectionProviderProtocol.configureNetworkAnalytics()();
  result = _s11SiriNetwork0B18ConnectionProviderC06createC18WithInitialPayload_07networkC12ProtocolTypeySo16OS_dispatch_dataCSg_xmtKAA0bcJ0RzlF0B012NWConnectionC_Tt0g5(a1);
  if (!v4)
  {
    NetworkConnectionProvider.configureConnectionHandler(_:)(v5);
    return NetworkConnectionProvider.startConnectionWithOpenTimeoutTimer(completion:)(a2, a3);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BackgroundConnection.start(proposedFallbackMethod:allowFallbackToNewMethod:)(SiriNetwork::ConnectionMethod proposedFallbackMethod, Swift::Bool allowFallbackToNewMethod)
{
  v3 = v2;
  if (one-time initialization token for connectionStart != -1)
  {
    swift_once();
  }

  siri_kdebug_trace(static Constants.Signposts.connectionStart);
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v97 = 0x6E776F6E6B6E75;
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriNetwork);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *__dst = swift_slowAlloc();
    *v9 = 136315650;
    v10 = 0x6E776F6E6B6E75;
    switch(*(v3 + 1136))
    {
      case 1:
        v10 = OUTLINED_FUNCTION_12_9();
        break;
      case 2:
        v10 = OUTLINED_FUNCTION_75_2();
        break;
      case 3:
        v10 = OUTLINED_FUNCTION_74_2();
        break;
      default:
        break;
    }

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, 0xE700000000000000, __dst);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2080;
    v12 = 0x6E776F6E6B6E75;
    switch(proposedFallbackMethod)
    {
      case SiriNetwork_ConnectionMethod_network:
        v12 = OUTLINED_FUNCTION_12_9();
        break;
      case SiriNetwork_ConnectionMethod_peer:
        v12 = OUTLINED_FUNCTION_75_2();
        break;
      case SiriNetwork_ConnectionMethod_pop:
        v12 = OUTLINED_FUNCTION_74_2();
        break;
      default:
        break;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, 0xE700000000000000, __dst);

    *(v9 + 14) = v13;
    *(v9 + 22) = 1024;
    *(v9 + 24) = allowFallbackToNewMethod;
    _os_log_impl(&dword_223515000, v7, v8, "Background Connection - Start. Current method: %s. Proposed: %s. Allow fallback: %{BOOL}d", v9, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  else
  {
  }

  [*(v3 + 1144) updateNetworkPerformanceFeed];
  v14 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  [v14 systemUptime];
  v16 = v15;

  *(v3 + 1200) = v16;
  if (*(v3 + 1192) <= 0.0)
  {
    *(v3 + 1192) = v16;
  }

  *(v3 + 1208) = 0;
  v17 = *(v3 + 1224);
  v18 = __CFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
    JUMPOUT(0x2235338ECLL);
  }

  *(v3 + 1224) = v19;
  v20 = *(v3 + 1136);
  if (!*(v3 + 1136))
  {
    if ((*(v3 + 138) & 1) == 0)
    {
      OUTLINED_FUNCTION_95_1(v104);
      OUTLINED_FUNCTION_95_1(__src);
      outlined init with copy of ConnectionConfiguration(v104, __dst);
      v21 = 0;
      goto LABEL_29;
    }

    proposedFallbackMethod = SiriNetwork_ConnectionMethod_network;
LABEL_30:
    *(v3 + 1136) = proposedFallbackMethod;
    goto LABEL_36;
  }

  if (allowFallbackToNewMethod)
  {
    if (proposedFallbackMethod == SiriNetwork_ConnectionMethod_unknown)
    {
      OUTLINED_FUNCTION_95_1(v104);
      OUTLINED_FUNCTION_95_1(__src);
      outlined init with copy of ConnectionConfiguration(v104, __dst);
      v21 = v20;
LABEL_29:
      proposedFallbackMethod = ConnectionMethod.nextConnectionMethodSupported(connectionConfiguration:)(__src, v21);
      memcpy(__dst, __src, sizeof(__dst));
      outlined destroy of ConnectionConfiguration(__dst);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = OUTLINED_FUNCTION_106_1();
  if (os_log_type_enabled(v24, v25))
  {
    OUTLINED_FUNCTION_6_5();
    v26 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v27 = swift_slowAlloc();
    *__dst = v27;
    *v26 = 136315138;
    v28 = v27;
    v29 = 0x6E776F6E6B6E75;
    switch(*(v3 + 1136))
    {
      case 1:
        v29 = OUTLINED_FUNCTION_12_9();
        break;
      case 2:
        v29 = OUTLINED_FUNCTION_75_2();
        break;
      case 3:
        v29 = OUTLINED_FUNCTION_74_2();
        break;
      default:
        break;
    }

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, 0xE700000000000000, __dst);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_223515000, v22, v23, "Background Connection - Start. Fallback not allowed for this attempt, sticking with %s method.", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v31 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x223DE38F0](v31);
    v32 = OUTLINED_FUNCTION_7_2();
    MEMORY[0x223DE38F0](v32);
  }

  else
  {
  }

  proposedFallbackMethod = *(v3 + 1136);
LABEL_36:
  if (proposedFallbackMethod == SiriNetwork_ConnectionMethod_peer && *(v3 + 137) == 1)
  {
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(v104, 2uLL);
    swift_endAccess();
    v33 = *(v3 + 1136);
    OUTLINED_FUNCTION_95_1(v104);
    OUTLINED_FUNCTION_95_1(__src);
    outlined init with copy of ConnectionConfiguration(v104, __dst);
    LOBYTE(v33) = ConnectionMethod.nextConnectionMethodSupported(connectionConfiguration:)(__src, v33);
    memcpy(__dst, __src, sizeof(__dst));
    outlined destroy of ConnectionConfiguration(__dst);
    *(v3 + 1136) = v33;
  }

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  v36 = OUTLINED_FUNCTION_106_1();
  if (os_log_type_enabled(v36, v37))
  {
    OUTLINED_FUNCTION_6_5();
    v38 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v39 = swift_slowAlloc();
    *__dst = v39;
    *v38 = 136315138;
    v40 = 0xE700000000000000;
    v41 = v39;
    switch(*(v3 + 1136))
    {
      case 1:
        v42 = 0x6B726F7774656ELL;
        goto LABEL_44;
      case 2:
        v40 = 0xE400000000000000;
        v42 = 1919247728;
        goto LABEL_44;
      case 3:
        v40 = 0xE300000000000000;
        v42 = 7368560;
LABEL_44:
        v97 = v42;
        break;
      default:
        break;
    }

    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v40, __dst);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_223515000, v34, v35, "Background Connection - Start. Selected method: %s.", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    v44 = OUTLINED_FUNCTION_7_2();
    MEMORY[0x223DE38F0](v44);
    v45 = OUTLINED_FUNCTION_2_0();
    MEMORY[0x223DE38F0](v45);
  }

  v46 = ConnectionMethod.communicationProtocolClass(for:)(*(v3 + 48));
  v48 = v47;
  v49 = swift_allocObject();
  v50 = *(v3 + 32);
  v51 = *(v48 + 8);
  v49[5] = v46;
  v49[6] = v48;
  __swift_allocate_boxed_opaque_existential_1(v49 + 2);
  v52 = v50;

  v86 = v52;
  v51(v3, &protocol witness table for BackgroundConnection);
  v94 = v49;
  outlined init with copy of RPCOspreyConnectionProtocol((v49 + 2), __dst);
  swift_beginAccess();
  outlined assign with take of CommunicationProtocol?(__dst, v3 + 1096);
  swift_endAccess();
  outlined init with copy of MessageCenterBrowserProtocol?(v3 + 1096, v111, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  if (v112)
  {
    outlined init with copy of RPCOspreyConnectionProtocol(v111, __dst);
    outlined destroy of NetworkConnectionProtocol?(v111, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    v53 = *&__dst[24];
    v54 = *&__dst[32];
    __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
    (*(v54 + 88))(*(v3 + 1136) != 0, v53, v54);
    __swift_destroy_boxed_opaque_existential_0(__dst);
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(v111, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  }

  OUTLINED_FUNCTION_95_1(__dst);
  memcpy(v109, (v3 + 40), sizeof(v109));
  v55 = __dst[96];
  v108[0] = *(v3 + 137);
  *(v108 + 7) = *(v3 + 144);
  v107[0] = *(v3 + 153);
  *(v107 + 15) = *(v3 + 168);
  memcpy(v106, (v3 + 192), sizeof(v106));
  v96 = *&__dst[320];
  v98 = *&__dst[336];
  v56 = *&__dst[344];
  v57 = *&__dst[352];
  v58 = *&__dst[360];
  v59 = *&__dst[368];
  v60 = *&__dst[376];
  v61 = *&__dst[384];
  v62 = *&__dst[392];
  memcpy(v105, (v3 + 440), sizeof(v105));
  if (*(v3 + 1136))
  {
    outlined init with copy of ConnectionConfiguration(__dst, v104);
    v95 = v59;
    v63 = v60;
  }

  else
  {
    *__src = *&__dst[320];
    *&__src[8] = *&__dst[328];
    *&__src[16] = *&__dst[336];
    *&__src[24] = *&__dst[344];
    *&__src[32] = *&__dst[352];
    *&__src[40] = *&__dst[360];
    *&__src[48] = *&__dst[368];
    *&__src[56] = *&__dst[376];
    *&__src[64] = *&__dst[384];
    *&__src[72] = *&__dst[392];
    outlined init with copy of ConnectionConfiguration(__dst, v104);
    outlined destroy of NetworkConnectionProtocol?(__src, &_s11SiriNetwork16ConnectionPolicyVSgMd, &_s11SiriNetwork16ConnectionPolicyVSgMR);
    v96 = 0uLL;
    v98 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v95 = 0;
    v63 = 0;
    v61 = 0;
    v62 = 0;
  }

  if (__dst[98])
  {
    v64 = v55;
  }

  else
  {
    v64 = 1;
  }

  v65 = *(v3 + 1136) == 3;
  v87 = ConnectionMethod.providerClass(for:)(*__dst);
  v85 = v66;
  memcpy(v104, v109, 0x60uLL);
  v89 = v64;
  v90 = v65;
  v104[96] = v64;
  *&v104[97] = v108[0];
  *&v104[104] = *(v108 + 7);
  v104[112] = v65;
  *&v104[113] = v107[0];
  *&v104[128] = *(v107 + 15);
  *&v104[144] = 0x4056800000000000;
  memcpy(&v104[152], v106, 0xA8uLL);
  *&v104[320] = v96;
  *&v104[336] = v98;
  v91 = v56;
  *&v92 = v57;
  *&v104[344] = v56;
  *&v104[352] = v57;
  *(&v92 + 1) = v58;
  v93 = v63;
  *&v104[360] = v58;
  *&v104[368] = v95;
  *&v104[376] = v63;
  *&v104[384] = v61;
  v88 = v62;
  *&v104[392] = v62;
  memcpy(&v104[400], v105, 0x74uLL);
  memcpy(__src, v104, sizeof(__src));
  v67 = *(v3 + 1144);
  v68 = *(v3 + 1176);
  v69 = *(v85 + 448);
  outlined init with copy of ConnectionConfiguration(v104, v100);
  v70 = v67;
  v71 = v69(__src, v86, v67, v68, v87, v85);
  *(v3 + 1080) = v71;
  *(v3 + 1088) = v85;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v99 = 0;
  outlined init with copy of MessageCenterBrowserProtocol?(v3 + 1096, __src, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  if (*&__src[24])
  {
    v72 = v104[113];
    outlined init with copy of RPCOspreyConnectionProtocol(__src, v100);
    outlined destroy of NetworkConnectionProtocol?(__src, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    v73 = v101;
    v74 = v102;
    __swift_project_boxed_opaque_existential_1(v100, v101);
    v75 = (*(v74 + 96))(&v99, v72, v73, v74);
    __swift_destroy_boxed_opaque_existential_0(v100);
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(__src, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    v75 = 0;
  }

  v76 = *(v85 + 128);
  v77 = swift_unknownObjectRetain();
  v76(v77, &protocol witness table for BackgroundConnection, v87, v85);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v79 = Strong;
    (*(v85 + 168))(__src, v87, v85);
    specialized Connection.willStartConnection(_:type:)(v3, __src[0], v79);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_7_1();
  v80 = swift_allocObject();
  swift_weakInit();
  memcpy(v113, v109, 0x60uLL);
  LOBYTE(v113[6]) = v64;
  *(&v113[6] + 1) = v108[0];
  *(&v113[6] + 1) = *(v108 + 7);
  LOBYTE(v113[7]) = v90;
  *(&v113[7] + 1) = v107[0];
  v113[8] = *(v107 + 15);
  *&v113[9] = 0x4056800000000000;
  memcpy(&v113[9] + 8, v106, 0xA8uLL);
  v113[20] = v96;
  *&v113[21] = v98;
  *(&v113[21] + 1) = v91;
  v113[22] = v92;
  *&v113[23] = v95;
  *(&v113[23] + 1) = v93;
  *&v113[24] = v61;
  *(&v113[24] + 1) = v88;
  memcpy(&v113[25], v105, 0x74uLL);
  v81 = v99;
  v82 = swift_allocObject();
  v82[2] = v80;
  v82[3] = v71;
  v82[4] = v85;
  v82[5] = v94;
  memcpy(v82 + 6, v113, 0x204uLL);
  v82[71] = v75;
  v82[72] = v81;
  v83 = *(v85 + 456);
  v84 = v75;
  swift_unknownObjectRetain_n();

  outlined init with copy of ConnectionConfiguration(v113, __src);
  v83(v75, partial apply for specialized closure #2 in BackgroundConnection.start(proposedFallbackMethod:allowFallbackToNewMethod:), v82, v87, v85);

  swift_unknownObjectRelease_n();
  memcpy(__src, v109, 0x60uLL);
  __src[96] = v89;
  *&__src[97] = v108[0];
  *&__src[104] = *(v108 + 7);
  __src[112] = v90;
  *&__src[113] = v107[0];
  *&__src[128] = *(v107 + 15);
  *&__src[144] = 0x4056800000000000;
  memcpy(&__src[152], v106, 0xA8uLL);
  *&__src[320] = v96;
  *&__src[336] = v98;
  *&__src[344] = v91;
  *&__src[352] = v92;
  *&__src[368] = v95;
  *&__src[376] = v93;
  *&__src[384] = v61;
  *&__src[392] = v88;
  memcpy(&__src[400], v105, 0x74uLL);
  outlined destroy of ConnectionConfiguration(__src);
}

uint64_t sub_22353392C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_223533960()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_223533998()
{

  swift_unknownObjectRelease();

  if (*(v0 + 440))
  {
  }

  if (*(v0 + 456) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 584, 7);
}

uint64_t storeEnumTagSinglePayload for ConnectionPolicy(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ConnectionPolicyRoute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 114) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 114) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t ConnectionPolicyRoute.routeHost.getter()
{
  v1 = v0[7];
  v2 = v0[8];
  if (v0[6])
  {
    v3 = v0[5];

    if (AFIsInternalInstall())
    {
      return v3;
    }

    v4._countAndFlagsBits = OUTLINED_FUNCTION_4_24();
    if (String.hasSuffix(_:)(v4))
    {
      return v3;
    }

    v5._countAndFlagsBits = OUTLINED_FUNCTION_2_28();
    if (String.hasPrefix(_:)(v5))
    {
      return v3;
    }
  }

  if (!v2 || (, (AFIsInternalInstall() & 1) != 0) || (v6._countAndFlagsBits = OUTLINED_FUNCTION_4_24(), String.hasSuffix(_:)(v6)))
  {
  }

  else
  {
    v8._countAndFlagsBits = OUTLINED_FUNCTION_2_28();
    v9 = String.hasPrefix(_:)(v8);

    if (!v9)
    {

      return 0;
    }
  }

  return v1;
}

char *closure #1 in Connection.scheduleBackgroundConnection(_:after:)(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchTime();
  v47 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v46 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v50 = &v39 - v18;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    v43 = v10;
    v44 = v11;
    swift_beginAccess();
    outlined init with copy of ConnectionPolicyRoute(a2, v52);
    specialized Set._Variant.insert(_:)();
    memcpy(v53, v52, 0x72uLL);
    swift_endAccess();
    outlined destroy of ConnectionPolicyRoute(v53);
    swift_beginAccess();

    specialized Set._Variant.insert(_:)();
    swift_endAccess();

    swift_beginAccess();
    outlined init with copy of ConnectionPolicyRoute(a2, v52);
    specialized Set._Variant.insert(_:)();
    memcpy(__dst, v52, 0x72uLL);
    swift_endAccess();
    outlined destroy of ConnectionPolicyRoute(__dst);
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.siriNetwork);
    outlined init with copy of ConnectionPolicyRoute(a2, v52);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    outlined destroy of ConnectionPolicyRoute(a2);
    v24 = os_log_type_enabled(v22, v23);
    v45 = v15;
    if (v24)
    {
      v40 = a3;
      v41 = v14;
      v42 = v12;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v51[0] = v26;
      *v25 = 136315138;
      v27 = a2[1];
      if (v27)
      {
        v52[0] = *a2;
        v52[1] = v27;

        v28 = String.init<A>(describing:)();
        v30 = v29;
      }

      else
      {
        v30 = 0xE700000000000000;
        v28 = 0x6E776F6E6B6E75;
      }

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v51);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_223515000, v22, v23, "Connection - Start: Background Connection. Scheduled route %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x223DE38F0](v26, -1, -1);
      MEMORY[0x223DE38F0](v25, -1, -1);

      v14 = v41;
      v12 = v42;
      v15 = v45;
      a3 = v40;
    }

    else
    {
    }

    v32 = swift_allocObject();
    v32[2] = v20;
    memcpy(v32 + 3, a2, 0x72uLL);
    v32[18] = a3;
    v32[19] = a1;
    if (a4 <= 0.0)
    {
      outlined init with copy of ConnectionPolicyRoute(a2, v52);

      v38 = v20;

      closure #1 in closure #1 in Connection.scheduleBackgroundConnection(_:after:)(v38, a2, a3, a1);
    }

    else
    {
      v41 = *&v20[OBJC_IVAR___SNConnectionInternal_connectionQueue];
      outlined init with copy of ConnectionPolicyRoute(a2, v52);

      v42 = v20;

      v33 = v46;
      static DispatchTime.now()();
      + infix(_:_:)();
      v47 = *(v47 + 8);
      (v47)(v33, v15);
      v52[4] = partial apply for closure #1 in closure #1 in Connection.scheduleBackgroundConnection(_:after:);
      v52[5] = v32;
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 1107296256;
      v52[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v52[3] = &block_descriptor_180;
      v34 = _Block_copy(v52);

      static DispatchQoS.unspecified.getter();
      v51[0] = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v35 = v43;
      v36 = v49;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v37 = v50;
      MEMORY[0x223DE2440](v50, v14, v35, v34);
      _Block_release(v34);

      (*(v48 + 8))(v35, v36);
      (*(v12 + 1))(v14, v44);
      (v47)(v37, v45);
    }
  }

  return result;
}

uint64_t sub_22353433C()
{

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

void OUTLINED_FUNCTION_88()
{

  JUMPOUT(0x223DE2510);
}

void ConnectionConfiguration.hash(into:)(void *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  v26 = *(v1 + 72);
  v27 = *(v1 + 88);
  v28 = *(v1 + 96);
  v29 = *(v1 + 97);
  v30 = *(v1 + 98);
  v31 = *(v1 + 113);
  v32 = *(v1 + 114);
  v33 = *(v1 + 128);
  v18 = *(v1 + 120);
  v19 = *(v1 + 208);
  v34 = *(v1 + 201);
  v35 = *(v1 + 216);
  v20 = *(v1 + 224);
  v21 = *(v1 + 240);
  v36 = *(v1 + 232);
  v37 = *(v1 + 248);
  v22 = *(v1 + 256);
  v23 = *(v1 + 272);
  v38 = *(v1 + 264);
  v39 = *(v1 + 280);
  v40 = *(v1 + 312);
  v41 = *(v1 + 313);
  v7 = *(v1 + 392);
  v24 = *(v1 + 304);
  v25 = *(v1 + 400);
  v8 = *(v1 + 408);
  v42 = *(v1 + 416);
  v9 = *(v1 + 424);
  MEMORY[0x223DE2980](*v1);
  MEMORY[0x223DE2980](v3);
  if (v4)
  {
    OUTLINED_FUNCTION_1_11();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_2_8();
  }

  if (v5)
  {
    OUTLINED_FUNCTION_1_11();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_2_8();
  }

  v10 = v8;
  if (v8 != 1 && v9)
  {

    v11 = v27;
    goto LABEL_11;
  }

  v11 = v27;
  if (v6)
  {
LABEL_11:
    OUTLINED_FUNCTION_1_11();
    String.hash(into:)();

    if (v26)
    {
      goto LABEL_12;
    }

LABEL_15:
    OUTLINED_FUNCTION_2_8();
    if (v11)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_2_8();
  if (!v26)
  {
    goto LABEL_15;
  }

LABEL_12:
  OUTLINED_FUNCTION_1_11();
  String.hash(into:)();
  if (v11)
  {
LABEL_13:
    OUTLINED_FUNCTION_1_11();
    String.hash(into:)();
    goto LABEL_17;
  }

LABEL_16:
  OUTLINED_FUNCTION_2_8();
LABEL_17:
  Hasher._combine(_:)(v28);
  Hasher._combine(_:)(v29);
  Hasher._combine(_:)(v30);
  Hasher._combine(_:)(v31);
  Hasher._combine(_:)(v32);
  if (v33)
  {
    OUTLINED_FUNCTION_2_8();
  }

  else
  {
    OUTLINED_FUNCTION_1_11();
    v12 = OUTLINED_FUNCTION_3_7(v18);
    MEMORY[0x223DE29A0](v12);
  }

  Hasher._combine(_:)(v34);
  if (v35)
  {
    OUTLINED_FUNCTION_2_8();
  }

  else
  {
    OUTLINED_FUNCTION_1_11();
    v13 = OUTLINED_FUNCTION_3_7(v19);
    MEMORY[0x223DE29A0](v13);
  }

  if (v36)
  {
    OUTLINED_FUNCTION_2_8();
  }

  else
  {
    OUTLINED_FUNCTION_1_11();
    v14 = OUTLINED_FUNCTION_3_7(v20);
    MEMORY[0x223DE29A0](v14);
  }

  if (v37)
  {
    OUTLINED_FUNCTION_2_8();
  }

  else
  {
    OUTLINED_FUNCTION_1_11();
    MEMORY[0x223DE2980](v21);
  }

  if (v38)
  {
    OUTLINED_FUNCTION_2_8();
  }

  else
  {
    OUTLINED_FUNCTION_1_11();
    v15 = OUTLINED_FUNCTION_3_7(v22);
    MEMORY[0x223DE29A0](v15);
  }

  if (v39)
  {
    OUTLINED_FUNCTION_2_8();
  }

  else
  {
    OUTLINED_FUNCTION_1_11();
    v16 = OUTLINED_FUNCTION_3_7(v23);
    MEMORY[0x223DE29A0](v16);
  }

  if (v40)
  {
    OUTLINED_FUNCTION_2_8();
  }

  else
  {
    OUTLINED_FUNCTION_1_11();
    v17 = OUTLINED_FUNCTION_3_7(v24);
    MEMORY[0x223DE29A0](v17);
  }

  Hasher._combine(_:)(v41);
  if (v7)
  {
    memcpy(__dst, (v1 + 320), 0x48uLL);
    __dst[9] = v7;
    OUTLINED_FUNCTION_1_11();
    memcpy(v44, (v1 + 320), 0x48uLL);
    v44[9] = v7;
    outlined init with copy of ConnectionPolicy(v44, v45);
    ConnectionPolicy.hash(into:)(a1);
    memcpy(v45, __dst, 0x50uLL);
    outlined destroy of ConnectionPolicy(v45);
  }

  else
  {
    OUTLINED_FUNCTION_2_8();
  }

  if (v10 == 1)
  {
    OUTLINED_FUNCTION_2_8();
  }

  else
  {
    memcpy(&__dst[4], (v1 + 432), 0x52uLL);
    __dst[0] = v25;
    __dst[1] = v10;
    __dst[2] = v42;
    __dst[3] = v9;
    OUTLINED_FUNCTION_1_11();
    v44[0] = v25;
    v44[1] = v10;
    v44[2] = v42;
    v44[3] = v9;
    memcpy(&v44[4], (v1 + 432), 0x52uLL);
    outlined init with copy of ConnectionPolicyRoute(v44, v45);
    ConnectionPolicyRoute.hash(into:)(a1);
    memcpy(v45, __dst, 0x72uLL);
    outlined destroy of ConnectionPolicyRoute(v45);
  }
}

void ConnectionPolicy.hash(into:)(void *a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 17);
  v6 = *(v2 + 18);
  v7 = *(v2 + 19);
  v8 = *(v2 + 20);
  v9 = *(v2 + 21);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v14 = *(v2 + 40);
  v15 = *(v2 + 56);
  v16 = *(v2 + 48);
  v17 = *(v2 + 64);
  v18 = *(v2 + 72);
  if (*(v2 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  if (v11)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x223DE29A0](v12);
  }

  if (v16)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x223DE2980](v14);
  }

  if (v17)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v13 = v15;
    }

    else
    {
      v13 = 0;
    }

    MEMORY[0x223DE29A0](v13);
  }

  specialized Set.hash(into:)(a1, v18);
}

void specialized Set.hash(into:)(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= v12)
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a2 + 48) + 120 * (v10 | (v9 << 6)));
    memcpy(v16, v11, 0x72uLL);
    memcpy(v15, v11, sizeof(v15));
    Hasher.init(_seed:)();
    outlined init with copy of ConnectionPolicyRoute(v16, &v13);
    ConnectionPolicyRoute.hash(into:)(v14);
    v12 = Hasher._finalize()();
    outlined destroy of ConnectionPolicyRoute(v16);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x223DE2980](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

BOOL static ConnectionPolicyRoute.== infix(_:_:)(double *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = *(a1 + 3);
  v5 = *(a1 + 4);
  v7 = *(a1 + 5);
  v8 = *(a1 + 6);
  v9 = *(a1 + 7);
  v10 = *(a1 + 8);
  v11 = *(a1 + 72);
  v13 = *(a1 + 10);
  v12 = *(a1 + 11);
  v14 = *(a1 + 96);
  v15 = a1[13];
  v16 = *(a1 + 112);
  v17 = *(a1 + 113);
  v18 = *(a2 + 8);
  v19 = *(a2 + 24);
  v98 = *(a2 + 32);
  v21 = *(a2 + 40);
  v20 = *(a2 + 48);
  v22 = *(a2 + 56);
  v23 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a2 + 80);
  v26 = *(a2 + 88);
  v27 = *(a2 + 96);
  v28 = *(a2 + 104);
  v29 = *(a2 + 112);
  v30 = *(a2 + 113);
  if (v3)
  {
    if (!v18)
    {
      return 0;
    }

    v97 = *(a2 + 16);
    if (*a1 != *a2 || v3 != v18)
    {
      v89 = *(a1 + 5);
      v91 = *(a1 + 6);
      v76 = *(a1 + 10);
      v80 = *(a2 + 64);
      v73 = *(a2 + 96);
      v83 = *(a2 + 112);
      v67 = *(a1 + 112);
      v70 = *(a1 + 96);
      v63 = *(a2 + 113);
      v32 = *(a1 + 113);
      v65 = *(a2 + 88);
      v33 = *(a1 + 11);
      v34 = *(a2 + 80);
      v95 = *(a1 + 72);
      v35 = *(a1 + 7);
      v93 = *(a1 + 8);
      v36 = *(a2 + 72);
      v37 = *(a2 + 56);
      v38 = *(a2 + 48);
      v87 = *(a2 + 40);
      v39 = *(a1 + 4);
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = v39;
      v21 = v87;
      v7 = v89;
      v20 = v38;
      v8 = v91;
      v10 = v93;
      v22 = v37;
      v24 = v36;
      v13 = v76;
      v23 = v80;
      v9 = v35;
      v11 = v95;
      v25 = v34;
      v12 = v33;
      v26 = v65;
      v17 = v32;
      v30 = v63;
      v16 = v67;
      v14 = v70;
      v29 = v83;
      v27 = v73;
      if ((v40 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v97 = *(a2 + 16);
    if (v18)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v19)
    {
      return 0;
    }

    if (v4 == v97 && v6 == v19)
    {
      if (v5 != v98)
      {
        return 0;
      }
    }

    else
    {
      v64 = v5;
      v66 = v20;
      v88 = v21;
      v90 = v7;
      v92 = v8;
      v94 = v10;
      v77 = v25;
      v81 = v22;
      v68 = v24;
      v71 = v9;
      v96 = v11;
      v84 = v12;
      v74 = v17;
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
      result = 0;
      if ((v42 & 1) == 0)
      {
        return result;
      }

      v20 = v66;
      v17 = v74;
      v22 = v81;
      v12 = v84;
      v25 = v77;
      v11 = v96;
      v9 = v71;
      v8 = v92;
      v10 = v94;
      v24 = v68;
      v21 = v88;
      v7 = v90;
      if (v64 != v98)
      {
        return result;
      }
    }
  }

  else
  {
    result = 0;
    if (v19 || v5 != v98)
    {
      return result;
    }
  }

  if (v8)
  {
    if (!v20)
    {
      return 0;
    }

    if (v7 != v21 || v8 != v20)
    {
      v85 = v29;
      v75 = v17;
      v45 = v12;
      v78 = v25;
      v82 = v23;
      v46 = v11;
      v72 = v9;
      v47 = v10;
      v69 = v24;
      v48 = v22;
      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v22 = v48;
      v24 = v69;
      v10 = v47;
      v9 = v72;
      v11 = v46;
      v25 = v78;
      v23 = v82;
      v12 = v45;
      v17 = v75;
      v29 = v85;
      if ((v49 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v10)
  {
    if (!v23)
    {
      return 0;
    }

    if (v9 == v22 && v10 == v23)
    {
      if (v11 != v24)
      {
        return 0;
      }
    }

    else
    {
      v51 = v24;
      v52 = v11;
      v79 = v25;
      v86 = v12;
      v53 = v29;
      v54 = v17;
      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
      result = 0;
      if ((v55 & 1) == 0)
      {
        return result;
      }

      v17 = v54;
      v29 = v53;
      v12 = v86;
      v25 = v79;
      if ((v52 ^ v51))
      {
        return result;
      }
    }
  }

  else
  {
    result = 0;
    if (v23 || ((v11 ^ v24) & 1) != 0)
    {
      return result;
    }
  }

  if (v12)
  {
    if (!v26)
    {
      return 0;
    }

    if (v13 != v25 || v12 != v26)
    {
      v57 = v29;
      v58 = v17;
      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = v58;
      v29 = v57;
      if ((v59 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_54;
  }

  if (v26)
  {
    return 0;
  }

LABEL_54:
  if (v14 == 3)
  {
    if (v27 != 3)
    {
      return 0;
    }
  }

  else if (v27 == 3 || v14 != v27)
  {
    return 0;
  }

  if (v16)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (v15 == v28)
    {
      v61 = v29;
    }

    else
    {
      v61 = 1;
    }

    if (v61)
    {
      return 0;
    }
  }

  if (v17 == 5)
  {
    return v30 == 5;
  }

  else
  {
    return v30 != 5 && v17 == v30;
  }
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSay11SiriNetwork21ConnectionPolicyRouteVGGMd, &_ss18_DictionaryStorageCySiSay11SiriNetwork21ConnectionPolicyRouteVGGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v30 = v3;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_32;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v29 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v4 & 1) == 0)
    {
    }

    result = MEMORY[0x223DE2960](*(v7 + 40), v19);
    v21 = -1 << *(v7 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v7 + 48) + 8 * v24) = v19;
    *(*(v7 + 56) + 8 * v24) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void closure #1 in NetworkManager.startMonitoringNetwork(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR___SNNetworkManagerInternal_pathEvaluator;
    if (*&Strong[OBJC_IVAR___SNNetworkManagerInternal_pathEvaluator])
    {
    }

    else
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.siriNetwork);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        aBlock[0] = v12;
        *v11 = 136315138;
        *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, aBlock);
        _os_log_impl(&dword_223515000, v9, v10, "NetworkManager - PathEvaluator: Start monitoring network %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x223DE38F0](v12, -1, -1);
        MEMORY[0x223DE38F0](v11, -1, -1);
      }

      v13 = String.utf8CString.getter();
      nw_endpoint_create_host((v13 + 32), "443");

      evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
      v15 = *&v6[OBJC_IVAR___SNNetworkManagerInternal_queue];
      v16 = swift_allocObject();
      *(v16 + 16) = v6;
      aBlock[4] = partial apply for closure #1 in closure #1 in NetworkManager.startMonitoringNetwork(_:);
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object?) -> ();
      aBlock[3] = &block_descriptor_27;
      v17 = _Block_copy(aBlock);
      v18 = v15;
      v19 = v6;

      nw_path_evaluator_set_update_handler();
      swift_unknownObjectRelease();
      _Block_release(v17);

      *&v6[v7] = evaluator_for_endpoint;
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_223535698()
{
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void closure #1 in NetworkAnalytics.setConnectionProvider(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a3)
    {
      type metadata accessor for NetworkAnalytics(0);
      v6 = static NetworkAnalytics.netProvider(from:)();
    }

    else
    {
      v6 = 0;
    }

    v7 = &v5[OBJC_IVAR___SNNetworkAnalyticsInternal_connectionProvider];
    *v7 = v6;
    v7[4] = a3 == 0;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.siriNetwork);
    v9 = v5;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      if (v9[OBJC_IVAR___SNNetworkAnalyticsInternal_connectionProvider + 4])
      {
        v14 = 0xE300000000000000;
        v15 = 7104878;
      }

      else
      {
        type metadata accessor for NETSchemaNETProvider(0);
        v15 = String.init<A>(describing:)();
        v14 = v16;
      }

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v18);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_223515000, v10, v11, "Network Analytics: ConnectionProvider set: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DE38F0](v13, -1, -1);
      MEMORY[0x223DE38F0](v12, -1, -1);
    }
  }
}

void static ConnectionPolicyRoute.maxTimeoutFromRoutes(_:)(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 144;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v3 + 120 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      specialized Sequence<>.max()(v4);

      return;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v7 = *v5;
    v5 += 120;
    ++v1;
    if ((v7 & 1) == 0)
    {
      v8 = *(v5 - 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v4 = v10;
      }

      v9 = *(v4 + 16);
      if (v9 >= *(v4 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v4 = v11;
      }

      *(v4 + 16) = v9 + 1;
      *(v4 + 8 * v9 + 32) = v8;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_6_11();
  if (v4)
  {
    OUTLINED_FUNCTION_1_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_7();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  OUTLINED_FUNCTION_12_4();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, _ss23_ContiguousArrayStorageCySdGMR);
    v7 = OUTLINED_FUNCTION_16_6();
    v8 = _swift_stdlib_malloc_size(v7);
    *(v7 + 2) = v3;
    *(v7 + 3) = 2 * ((v8 - 32) / 8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

{
  OUTLINED_FUNCTION_6_11();
  if (v4)
  {
    OUTLINED_FUNCTION_1_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_7();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  OUTLINED_FUNCTION_3_10();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork21ConnectionPolicyRouteVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork21ConnectionPolicyRouteVGMR);
    v8 = OUTLINED_FUNCTION_11_6(v7);
    v9 = _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_4_9(v9);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_10_3();
  if (v1)
  {
    if (v8 != v0 || &v11[120 * v2] <= v10)
    {
      memmove(v10, v11, 120 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_6_11();
  if (v4)
  {
    OUTLINED_FUNCTION_1_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_7();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  OUTLINED_FUNCTION_3_10();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork25ConnectionInterfaceReportVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork25ConnectionInterfaceReportVGMR);
    v8 = OUTLINED_FUNCTION_11_6(v7);
    v9 = _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_4_9(v9);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_10_3();
  if (v1)
  {
    if (v8 != v0 || &v11[296 * v2] <= v10)
    {
      memmove(v10, v11, 296 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_6_11();
  if (v4)
  {
    OUTLINED_FUNCTION_1_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_7();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  OUTLINED_FUNCTION_3_10();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork24ConnectionTCPInfoMetricsVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork24ConnectionTCPInfoMetricsVGMR);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 256);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_10_3();
  if (v1)
  {
    if (v7 != v0 || &v10[256 * v2] <= v9)
    {
      memmove(v9, v10, v2 << 8);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_6_11();
  if (v4)
  {
    OUTLINED_FUNCTION_1_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_7();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  OUTLINED_FUNCTION_3_10();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v7 = OUTLINED_FUNCTION_16_6();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_7_9();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_10_3();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_6_11();
  if (v4)
  {
    OUTLINED_FUNCTION_1_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_7();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  OUTLINED_FUNCTION_3_10();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork24ConnectionEndpointReportVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork24ConnectionEndpointReportVGMR);
    v8 = OUTLINED_FUNCTION_11_6(v7);
    v9 = _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_4_9(v9);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_10_3();
  if (v1)
  {
    if (v8 != v0 || &v11[24 * v2] <= v10)
    {
      memmove(v10, v11, 24 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_6_11();
  if (v4)
  {
    OUTLINED_FUNCTION_1_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_7();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  OUTLINED_FUNCTION_12_4();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork25ConnectionHandshakeReportVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork25ConnectionHandshakeReportVGMR);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    *(v7 + 2) = v3;
    *(v7 + 3) = 2 * ((v8 - 32) / 48);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[48 * v3] <= v9)
    {
      memmove(v9, v10, 48 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_6_11();
  if (v4)
  {
    OUTLINED_FUNCTION_1_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_7();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  OUTLINED_FUNCTION_3_10();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork26ConnectionResolutionReportVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork26ConnectionResolutionReportVGMR);
    v8 = OUTLINED_FUNCTION_11_6(v7);
    v9 = _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_4_9(v9);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_10_3();
  if (v1)
  {
    if (v8 != v0 || &v11[80 * v2] <= v10)
    {
      memmove(v10, v11, 80 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_6_11();
  if (v4)
  {
    OUTLINED_FUNCTION_1_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_7();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  OUTLINED_FUNCTION_12_4();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v7 = OUTLINED_FUNCTION_16_6();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_7_9();
    *(v7 + 2) = v3;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

uint64_t specialized Sequence<>.max()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

void *static ConnectionPolicyRoute.prioritizedPOPRoutes(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = memcpy(__dst, v2, sizeof(__dst));
    if (__dst[113] == 4)
    {
      v12 = v3[2];
      OUTLINED_FUNCTION_15_9(v4, v5, v6, v7, v8, v9, v10, v11, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
      if (!swift_isUniquelyReferenced_nonNull_native() || v12 >= v3[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v13;
      }

      swift_arrayDestroy();
      v14 = v3[2];
      memmove(v3 + 19, v3 + 4, 120 * v14);
      v3[2] = v14 + 1;
      v15 = v3 + 4;
    }

    else
    {
      OUTLINED_FUNCTION_15_9(v4, v5, v6, v7, v8, v9, v10, v11, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v17;
      }

      v16 = v3[2];
      if (v16 >= v3[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v18;
      }

      v3[2] = v16 + 1;
      v15 = &v3[15 * v16 + 4];
    }

    memcpy(v15, __dst, 0x72uLL);
    v2 += 120;
    --v1;
  }

  while (v1);
  return v3;
}

void static ConnectionPolicyRoute.aceptableRoutes(_:)(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = memcpy(__dst, (*(a1 + 48) + 120 * (v10 | (v7 << 6))), 0x72uLL);
    if (!__dst[6])
    {
      OUTLINED_FUNCTION_15_9(v11, v12, v13, v14, v15, v16, v17, v18, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
      goto LABEL_14;
    }

    v19 = __dst[5];
    OUTLINED_FUNCTION_15_9(v11, v12, v13, v14, v15, v16, v17, v18, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);

    if ((AFIsInternalInstall() & 1) != 0 || OUTLINED_FUNCTION_9_13())
    {
      goto LABEL_21;
    }

    v20._countAndFlagsBits = OUTLINED_FUNCTION_2_28();
    String.hasPrefix(_:)(v20);
    OUTLINED_FUNCTION_2();
    if (v19)
    {
LABEL_22:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
        v8 = v41;
      }

      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v8 = v41;
      }

      *(v8 + 16) = v24 + 1;
      memcpy((v8 + 120 * v24 + 32), __dst, 0x72uLL);
    }

    else
    {
LABEL_14:
      if (__dst[8])
      {

        if (AFIsInternalInstall() || OUTLINED_FUNCTION_9_13() || (v21._countAndFlagsBits = OUTLINED_FUNCTION_2_28(), String.hasPrefix(_:)(v21)))
        {

LABEL_21:

          goto LABEL_22;
        }
      }

      outlined destroy of ConnectionPolicyRoute(__dst);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*v9 >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t ConnectionPolicyRoute.debugDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = OUTLINED_FUNCTION_3_18();
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 48);
  v61 = *(v0 + 40);
  v63 = *(v0 + 56);
  v8 = *(v0 + 64);
  v82 = *(v0 + 72);
  v81[0] = *(v0 + 73);
  *(v9 + 11) = *(v0 + 76);
  v65 = *(v0 + 80);
  v48 = *(v0 + 88);
  v52 = *(v0 + 96);
  v80[0] = *(v0 + 97);
  *(v9 + 3) = *(v0 + 100);
  v60 = *(v0 + 104);
  v79 = *(v0 + 112);
  v58 = *(v0 + 113);
  v67[0] = 0x3A64496574756F72;
  v67[1] = v10;
  if (v1)
  {
    v77 = v2;
    v78 = v1;

    v3 = String.init<A>(describing:)();
    v12 = v11;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v3, v12);

  v59 = v67[0];
  OUTLINED_FUNCTION_5_24();
  _StringGuts.grow(_:)(16);

  strcpy(v67, "connectionId: ");
  HIBYTE(v67[1]) = -18;
  if (v5)
  {
    v77 = v4;
    v78 = v5;

    v13 = String.init<A>(describing:)();
    v15 = v14;
  }

  else
  {
    v15 = 0xE700000000000000;
    v13 = OUTLINED_FUNCTION_3_18();
  }

  MEMORY[0x223DE2180](v13, v15);

  v56 = v67[0];
  v57 = v67[1];
  strcpy(v67, "priority: ");
  BYTE3(v67[1]) = 0;
  HIDWORD(v67[1]) = -369098752;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v16);

  v54 = v67[0];
  v55 = v67[1];
  v77 = 0x736F486574756F72;
  v78 = 0xEB00000000203A74;
  v67[0] = v2;
  v67[1] = v1;
  v67[2] = v4;
  v67[3] = v5;
  v67[4] = v6;
  v67[5] = v61;
  v67[6] = v7;
  v67[7] = v63;
  v67[8] = v8;
  v68 = v82;
  *v69 = v81[0];
  *&v69[3] = *(v81 + 3);
  v70 = v65;
  v71 = v48;
  v72 = v52;
  *&v73[3] = *(v80 + 3);
  *v73 = v80[0];
  v74 = v60;
  v75 = v79;
  v76 = v58;
  ConnectionPolicyRoute.routeHost.getter();
  v17 = 0xE700000000000000;
  if (v18)
  {
    String.init<A>(describing:)();
    v20 = v19;
    OUTLINED_FUNCTION_4_6();
  }

  else
  {
    OUTLINED_FUNCTION_4_6();
    v21 = v4;
    v20 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v21, v20);

  v50 = v77;
  v51 = v78;
  strcpy(v67, "cname: ");
  v67[1] = 0xE700000000000000;
  if (v7)
  {
    v77 = v61;
    v78 = v7;

    v22 = String.init<A>(describing:)();
    v17 = v23;
  }

  else
  {
    v22 = v4;
  }

  MEMORY[0x223DE2180](v22, v17);

  v49 = v67[0];
  v62 = v67[1];
  v67[0] = 0x203A74736F68;
  v67[1] = 0xE600000000000000;
  v24 = 0xE700000000000000;
  if (v8)
  {
    v77 = v63;
    v78 = v8;

    v25 = String.init<A>(describing:)();
    v27 = v26;
  }

  else
  {
    v25 = v4;
    v27 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v25, v27);

  v28 = v67[1];
  v64 = v67[0];
  strcpy(v67, "mptcp: ");
  v67[1] = 0xE700000000000000;
  if (v82)
  {
    v29 = 1702195828;
  }

  else
  {
    v29 = 0x65736C6166;
  }

  if (v82)
  {
    v30 = 0xE400000000000000;
  }

  else
  {
    v30 = 0xE500000000000000;
  }

  MEMORY[0x223DE2180](v29, v30);

  v31 = v67[1];
  v47 = v67[0];
  strcpy(v67, "resolver: ");
  BYTE3(v67[1]) = 0;
  HIDWORD(v67[1]) = -369098752;
  if (v48)
  {
    v77 = v65;
    v78 = v48;

    v32 = String.init<A>(describing:)();
    v24 = v33;
  }

  else
  {
    v32 = v4;
  }

  MEMORY[0x223DE2180](v32, v24);

  v34 = v67[1];
  v66 = v67[0];
  OUTLINED_FUNCTION_5_24();
  _StringGuts.grow(_:)(20);

  v67[0] = 0xD000000000000012;
  v67[1] = 0x80000002235F9230;
  if (v52 == 3)
  {
    v35 = 0xE700000000000000;
    v36 = v4;
  }

  else
  {
    LOBYTE(v77) = v52;
    v36 = String.init<A>(describing:)();
    v35 = v37;
  }

  MEMORY[0x223DE2180](v36, v35);

  v38 = v67[1];
  v53 = v67[0];
  strcpy(v67, "timeout: ");
  WORD1(v67[1]) = 0;
  HIDWORD(v67[1]) = -385875968;
  if (v79)
  {
    v39 = 0xE700000000000000;
    v40 = v4;
  }

  else
  {
    v77 = v60;
    v40 = String.init<A>(describing:)();
    v39 = v41;
  }

  MEMORY[0x223DE2180](v40, v39);

  v42 = v67[0];
  v43 = v67[1];
  v67[0] = 0x203A65707974;
  v67[1] = 0xE600000000000000;
  if (v58 == 5)
  {
    v44 = 0xE700000000000000;
  }

  else
  {
    LOBYTE(v77) = v58;
    v4 = String.init<A>(describing:)();
    v44 = v45;
  }

  MEMORY[0x223DE2180](v4, v44);

  OUTLINED_FUNCTION_5_24();
  _StringGuts.grow(_:)(42);

  OUTLINED_FUNCTION_0_48();
  MEMORY[0x223DE2180](v56, v57);

  OUTLINED_FUNCTION_0_48();
  MEMORY[0x223DE2180](v54, v55);

  OUTLINED_FUNCTION_0_48();
  MEMORY[0x223DE2180](v50, v51);

  OUTLINED_FUNCTION_0_48();
  MEMORY[0x223DE2180](v49, v62);

  OUTLINED_FUNCTION_0_48();
  MEMORY[0x223DE2180](v64, v28);

  OUTLINED_FUNCTION_0_48();
  MEMORY[0x223DE2180](v47, v31);

  OUTLINED_FUNCTION_0_48();
  MEMORY[0x223DE2180](v66, v34);

  OUTLINED_FUNCTION_0_48();
  MEMORY[0x223DE2180](v53, v38);

  OUTLINED_FUNCTION_0_48();
  MEMORY[0x223DE2180](v42, v43);

  OUTLINED_FUNCTION_0_48();
  MEMORY[0x223DE2180](v67[0], v67[1]);

  return v59;
}

uint64_t NetworkManager.registerClient()(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_1();
  v11 = *(v2 + OBJC_IVAR___SNNetworkManagerInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = a1;
  v24 = v12;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v21 = v13;
  v22 = a2;
  v14 = _Block_copy(aBlock);
  v15 = v11;

  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_3_0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v16 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v16);
  _Block_release(v14);

  (*(v8 + 8))(v3, v6);
  v17 = OUTLINED_FUNCTION_5_4();
  v18(v17);
}

uint64_t sub_223536A3C()
{
  MEMORY[0x223DE39C0](v0 + 16);
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

id @nonobjc AnalyticsWorkspace.init(workspaceWithService:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x223DE2070](a1);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWorkspaceWithService_];

  return v4;
}

void type metadata accessor for WiFiClientType(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void partial apply for closure #1 in NetworkAnalytics.setNetworkConnectionId(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_11_1(v0);
  v1 = OUTLINED_FUNCTION_52_1();

  closure #1 in NetworkAnalytics.setNetworkConnectionId(_:)(v1, v2);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v11 = *(*v8 + 16);
  v12 = *(*v8 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v11 + 1, a2, a3, a4, a5, a6, a7, a8, *&v21[0], *&v21[1], *&v21[2], *&v21[3], *&v21[4], *&v21[5], *&v21[6], *&v21[7], *&v21[8], *&v21[9], *&v21[10], *&v21[11], *&v21[12], *&v21[13], *&v21[14], *&v21[15], *&v21[16], *&v21[17], *&v21[18], *&v21[19], *&v21[20], *&v21[21]);
      goto LABEL_10;
    }

    if (v12 <= v11)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
LABEL_10:
      v17 = *v8;
      Hasher.init(_seed:)();
      specialized BackgroundConnectionProtocol.hash(into:)(v26);
      v18 = Hasher._finalize()();
      v19 = ~(-1 << *(v17 + 32));
      while (1)
      {
        v9 = v18 & v19;
        if (((*(v17 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for BackgroundConnection();
        v20 = *(*(v17 + 48) + 8 * v9);
        memcpy(__dst, (v20 + 40), 0x204uLL);
        memcpy(__src, (v20 + 40), 0x204uLL);
        memcpy(v24, (result + 40), 0x204uLL);
        memcpy(v21, (result + 40), 0x204uLL);
        outlined init with copy of ConnectionConfiguration(__dst, v26);
        outlined init with copy of ConnectionConfiguration(v24, v26);
        LOBYTE(v20) = static ConnectionConfiguration.== infix(_:_:)(__src, v21);
        memcpy(v25, v21, 0x204uLL);
        outlined destroy of ConnectionConfiguration(v25);
        memcpy(v26, __src, 0x204uLL);
        outlined destroy of ConnectionConfiguration(v26);
        if (v20)
        {
          goto LABEL_15;
        }

        v18 = v9 + 1;
      }
    }

    specialized _NativeSet.copy()(&_ss11_SetStorageCy11SiriNetwork20BackgroundConnectionCGMd);
  }

LABEL_7:
  v13 = *v8;
  *(*v8 + 8 * (v9 >> 6) + 56) |= 1 << v9;
  *(*(v13 + 48) + 8 * v9) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = 120 * v6;
        memcpy(__dst, (v10 + 120 * v6), 0x72uLL);
        memcpy(v27, (v10 + 120 * v6), sizeof(v27));
        Hasher.init(_seed:)();
        outlined init with copy of ConnectionPolicyRoute(__dst, &v25);
        ConnectionPolicyRoute.hash(into:)(v26);
        v12 = Hasher._finalize()();
        outlined destroy of ConnectionPolicyRoute(__dst);
        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_15:
            v16 = *(v3 + 48);
            v17 = (v16 + 120 * v2);
            v18 = (v16 + v11);
            v19 = v16 + v11 + 120;
            if (120 * v2 < v11 || v17 >= v19 || v2 != v6)
            {
              memmove(v17, v18, 0x78uLL);
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v22 = *(v3 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v24;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        v10 = NWConnection.identifier.getter();
        MEMORY[0x223DE29A0](v10);
        v11 = Hasher._finalize()();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        outlined init with copy of MessageCenterEndpoint(*(v3 + 48) + 40 * v6, v26);
        Hasher.init(_seed:)();
        v10 = v27;
        v11 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        (*(v11 + 16))(v10, v11);
        if (v12)
        {
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v13 = Hasher._finalize()();
        outlined destroy of MessageCenterEndpoint(v26);
        v14 = v13 & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_18:
            v17 = *(v3 + 48);
            v18 = v17 + 40 * v2;
            v19 = (v17 + 40 * v6);
            if (v2 != v6 || v18 >= v19 + 40)
            {
              v21 = *v19;
              v22 = v19[1];
              *(v18 + 32) = *(v19 + 4);
              *v18 = v21;
              *(v18 + 16) = v22;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_18;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 32 * v2);
            v16 = (v14 + 32 * v6);
            if (v2 != v6 || v15 >= v16 + 2)
            {
              v18 = v16[1];
              *v15 = *v16;
              v15[1] = v18;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        specialized BackgroundConnectionProtocol.hash(into:)(v21);
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        outlined init with copy of AnyHashable(*(v3 + 48) + 40 * v6, v23);
        v10 = AnyHashable._rawHashValue(seed:)(*(v3 + 40));
        outlined destroy of AnyHashable(v23);
        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = v14 + 40 * v2;
            v16 = (v14 + 40 * v6);
            if (v2 != v6 || v15 >= v16 + 40)
            {
              v18 = *v16;
              v19 = v16[1];
              *(v15 + 32) = *(v16 + 4);
              *v15 = v18;
              *(v15 + 16) = v19;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void closure #1 in NetworkAnalytics.setNetworkConnectionId(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v34 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v37 = v4;
    outlined init with copy of UUID?(a2, v18);
    v21 = OBJC_IVAR___SNNetworkAnalyticsInternal_networkConnectionId;
    swift_beginAccess();
    outlined assign with take of UUID?(v18, v20 + v21);
    swift_endAccess();
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriNetwork);
    v23 = v20;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v36 = v23;
      v26 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v38[0] = v35;
      *v26 = 136315138;
      outlined init with copy of UUID?(v20 + v21, v16);
      outlined init with copy of UUID?(v16, v13);
      if (__swift_getEnumTagSinglePayload(v13, 1, v3) == 1)
      {
        v27 = 0xE300000000000000;
        v28 = 7104878;
      }

      else
      {
        v29 = v37;
        (*(v37 + 32))(v9, v13, v3);
        (*(v29 + 16))(v7, v9, v3);
        v28 = String.init<A>(describing:)();
        v27 = v30;
        (*(v29 + 8))(v9, v3);
      }

      v31 = v36;
      outlined destroy of NetworkConnectionProtocol?(v16, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, v38);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_223515000, v24, v25, "Network Analytics: NetworkConnectionId set: %s", v26, 0xCu);
      v33 = v35;
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x223DE38F0](v33, -1, -1);
      MEMORY[0x223DE38F0](v26, -1, -1);
    }

    else
    {
    }
  }
}

void closure #1 in closure #1 in Connection.scheduleBackgroundConnection(_:after:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection))
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriNetwork);
    outlined init with copy of ConnectionPolicyRoute(a2, __dst);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    outlined destroy of ConnectionPolicyRoute(a2);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v33[0] = v9;
      *v8 = 136315138;
      v10 = a2[1];
      if (v10)
      {
        __dst[0] = *a2;
        __dst[1] = v10;

        v11 = String.init<A>(describing:)();
        v13 = v12;
      }

      else
      {
        v11 = 0x6E776F6E6B6E75;
        v13 = 0xE700000000000000;
      }

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v33);

      *(v8 + 4) = v24;
      _os_log_impl(&dword_223515000, v6, v7, "Connection - Start: Background Connection. Starting route %s cancelled. Race lost", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223DE38F0](v9, -1, -1);
      MEMORY[0x223DE38F0](v8, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(v36, a2);
    swift_endAccess();
    outlined destroy of NetworkConnectionProtocol?(v36, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.siriNetwork);
    outlined init with copy of ConnectionPolicyRoute(a2, __dst);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    outlined destroy of ConnectionPolicyRoute(a2);

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35[0] = v19;
      *v18 = 136315394;
      v20 = a2[1];
      if (v20)
      {
        __dst[0] = *a2;
        __dst[1] = v20;

        v21 = String.init<A>(describing:)();
        v23 = v22;
      }

      else
      {
        v21 = 0x6E776F6E6B6E75;
        v23 = 0xE700000000000000;
      }

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v35);

      *(v18 + 4) = v25;
      *(v18 + 12) = 2080;
      memcpy(__dst, (a3 + 40), 0x204uLL);
      memcpy(v33, (a3 + 40), 0x204uLL);
      outlined init with copy of ConnectionConfiguration(__dst, &v32);
      v26 = String.init<A>(describing:)();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v35);

      *(v18 + 14) = v28;
      _os_log_impl(&dword_223515000, v16, v17, "Connection - Start: Background Connection. Starting route %s with connection configuration: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v19, -1, -1);
      MEMORY[0x223DE38F0](v18, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v30 = &protocol witness table for Connection;
    if (!Strong)
    {
      v30 = 0;
    }

    *(a3 + 24) = v30;
    swift_unknownObjectWeakAssign();

    BackgroundConnection.start()();
    if (v31)
    {
    }
  }
}

unint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>)
{
  v3 = v2;
  memcpy(__dst, __src, 0x72uLL);
  v6 = *v3;
  memcpy(v16, __src, 0x72uLL);
  Hasher.init(_seed:)();
  ConnectionPolicyRoute.hash(into:)(v15);
  result = Hasher._finalize()();
  v8 = ~(-1 << *(*&v6 + 32));
  while (1)
  {
    v9 = result & v8;
    if (((*(*&v6 + 56 + (((result & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v8)) & 1) == 0)
    {
      *a1 = xmmword_2235EFB30;
      *(a1 + 1) = 0u;
      *(a1 + 2) = 0u;
      *(a1 + 3) = 0u;
      *(a1 + 4) = 0u;
      *(a1 + 5) = 0u;
      *(a1 + 6) = 0u;
      *(a1 + 56) = 0;
      return result;
    }

    v10 = *(*&v6 + 48);
    memcpy(v15, (v10 + 120 * v9), 0x72uLL);
    memcpy(__srca, (v10 + 120 * v9), 0x72uLL);
    LOBYTE(v10) = static ConnectionPolicyRoute.== infix(_:_:)(__srca, __dst);
    memcpy(v16, __srca, 0x72uLL);
    outlined init with copy of ConnectionPolicyRoute(v15, v13);
    outlined destroy of ConnectionPolicyRoute(v16);
    if (v10)
    {
      break;
    }

    result = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v3;
  __srca[0] = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v12 = __srca[0];
  }

  memcpy(a1, (*(*&v12 + 48) + 120 * v9), 0x72uLL);
  result = specialized _NativeSet._delete(at:)(v9);
  *v3 = __srca[0];
  return result;
}

void *closure #1 in NetworkManager.registerClient()(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    a2(v5);
  }

  return result;
}

void NetworkWirelessCoexManager.unregisterClient()()
{
  OUTLINED_FUNCTION_46();
  v2 = v1;
  v4 = v3;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v7 = *(v0 + 168);
  OUTLINED_FUNCTION_7_1();
  v8 = swift_allocObject();
  swift_weakInit();
  v19[4] = v4;
  v19[5] = v8;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v19[2] = v9;
  v19[3] = v2;
  v10 = _Block_copy(v19);
  v11 = v7;

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_2_33();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(v12, v13, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_8_21();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v14 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v14);
  _Block_release(v10);

  v15 = OUTLINED_FUNCTION_16_1();
  v16(v15);
  v17 = OUTLINED_FUNCTION_16();
  v18(v17);

  OUTLINED_FUNCTION_47();
}

uint64_t sub_223537E50()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t closure #1 in NetworkWirelessCoexManager.resetLinkRecommendationInfo()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    *(v2 + 56) = 256;
    *(v2 + 72) = 0;
    *(v2 + 80) = 0;
    *(v2 + 64) = 0;
    *(v2 + 85) = 0;
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 128) = 0u;
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0;
  }

  return result;
}

Swift::Void __swiftcall NetworkManager.updateNetworkPerformanceFeed()()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 processInfo];
  [v3 systemUptime];
  v5 = v4;

  v6 = OBJC_IVAR___SNNetworkManagerInternal_lastTimeSymptomsFetch;
  if (v5 - *(v1 + OBJC_IVAR___SNNetworkManagerInternal_lastTimeSymptomsFetch) > 90.0)
  {
    v7 = [v2 processInfo];
    [v7 systemUptime];
    v9 = v8;

    *(v1 + v6) = v9;
    v10 = OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality;
    [*(v1 + OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality) lock];
    *(v1 + OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport) = 50529027;
    [*(v1 + v10) unlock];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    v14 = objc_allocWithZone(MEMORY[0x277D6B500]);
    v38 = @nonobjc AnalyticsWorkspace.init(workspaceWithService:)(v11, v13);
    v15 = [objc_allocWithZone(MEMORY[0x277D6B6E8]) initWithWorkspace_];
    if (v15)
    {
      v16 = *(v1 + OBJC_IVAR___SNNetworkManagerInternal_queue);
      v17 = v15;
      [v17 setQueue_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2235EFCB0;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v19;
      *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 56) = v20;
      v21 = Dictionary.init(dictionaryLiteral:)();
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_2235EFCB0;
      *(v22 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v22 + 40) = v23;
      *(v22 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v22 + 56) = v24;
      v25 = Dictionary.init(dictionaryLiteral:)();
      v26 = v17;
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v21);
      v28 = v27;
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = swift_allocObject();
      v30[2] = v29;
      v30[3] = v26;
      v30[4] = v25;
      v43 = partial apply for closure #1 in NetworkManager.updateNetworkPerformanceFeed();
      v44 = v30;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = thunk for @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ();
      v42 = &block_descriptor_9;
      v31 = _Block_copy(&aBlock);

      outlined bridged method (mnbnnn) of @objc NetworkPerformanceFeed.fullScorecard(for:options:reply:)(1, v28, v31, v26);
      _Block_release(v31);
      v32 = v26;
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v21);
      v34 = v33;

      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = swift_allocObject();
      v36[2] = v35;
      v36[3] = v32;
      v36[4] = v25;
      v43 = partial apply for closure #2 in NetworkManager.updateNetworkPerformanceFeed();
      v44 = v36;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = thunk for @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ();
      v42 = &block_descriptor_10_1;
      v37 = _Block_copy(&aBlock);

      outlined bridged method (mnbnnn) of @objc NetworkPerformanceFeed.fullScorecard(for:options:reply:)(2, v34, v37, v32);

      _Block_release(v37);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_223538390()
{
  MEMORY[0x223DE39C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BackgroundConnection.start()()
{
  v0[1136] = 0;
  v0[138] = v0[658];
  v0[136] = v0[656];
  BackgroundConnection.start(proposedFallbackMethod:allowFallbackToNewMethod:)(SiriNetwork_ConnectionMethod_unknown, 1);
}

uint64_t ConnectionMethod.communicationProtocolClass(for:)(uint64_t a1)
{
  if (a1 == 2)
  {
    return type metadata accessor for CommunicationProtocolProtobuf();
  }

  if (a1 == 1)
  {
    return type metadata accessor for CommunicationProtocolAce();
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
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

uint64_t protocol witness for CommunicationProtocol.init(withDelegate:connectionQueue:) in conformance CommunicationProtocolAce@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = CommunicationProtocolAce.__allocating_init(withDelegate:connectionQueue:)(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_67(uint64_t a1)
{

  return outlined init with copy of MessageCenterEndpoint(v1 + 344, a1 + 16);
}

unint64_t OUTLINED_FUNCTION_67_0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, va);
}

uint64_t CommunicationProtocolAce.init(withDelegate:connectionQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 40) = xmmword_2235EF700;
  *(v3 + 56) = xmmword_2235EF6F0;
  *(v3 + 72) = xmmword_2235EF700;
  *(v3 + 88) = xmmword_2235EF700;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySbcMd, &_sySbcMR);
  *(v3 + 208) = Dictionary.init(dictionaryLiteral:)();
  *(v3 + 216) = -100000;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0;
  *(v3 + 240) = 0;
  *(v3 + 248) = 0;
  *(v3 + 256) = xmmword_2235EF700;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0;
  *(v3 + 328) = 0xF000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v3 + 336) = v6;
  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(a1, ObjectType, &protocol descriptor for CommunicationProtocolDelegateAce))
  {
    v9 = *(v8 + 8);
  }

  else
  {
    swift_unknownObjectRelease();
    v9 = 0;
  }

  *(v3 + 24) = v9;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v3 + 32) = a3;
  return v3;
}

void *OUTLINED_FUNCTION_49_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char __src)
{

  return memcpy(&a9, &__src, 0xF9uLL);
}

void *OUTLINED_FUNCTION_49_5(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 40);

  return memcpy(&STACK[0x668], v3, 0x204uLL);
}

uint64_t outlined assign with take of CommunicationProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall CommunicationProtocolAce.connectionStarted(fallingBack:)(Swift::Bool fallingBack)
{
  v2 = v1;
  if (fallingBack)
  {
    if (one-time initialization token for siriNetwork != -1)
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
      OUTLINED_FUNCTION_30();
      v7 = swift_slowAlloc();
      *v7 = 134218240;
      OUTLINED_FUNCTION_36_2((v2 + 40), v8, v9, v10);
      v18 = 0;
      if (v2[41] >> 60 != 15)
      {
        v19 = OUTLINED_FUNCTION_18();
        outlined copy of Data._Representation(v19, v20);
        v21 = OUTLINED_FUNCTION_18();
        v18 = MEMORY[0x223DE13E0](v21);
        v22 = OUTLINED_FUNCTION_18();
        outlined consume of Data?(v22, v23);
      }

      *(v7 + 4) = v18;
      *(v7 + 12) = 2048;
      OUTLINED_FUNCTION_37_1((v2 + 9), v11, v12, v13, v14, v15, v16, v17, v53);
      v24 = 0;
      if (v2[10] >> 60 != 15)
      {
        v25 = OUTLINED_FUNCTION_18();
        outlined copy of Data._Representation(v25, v26);
        v27 = OUTLINED_FUNCTION_18();
        v24 = MEMORY[0x223DE13E0](v27);
        v28 = OUTLINED_FUNCTION_18();
        outlined consume of Data?(v28, v29);
      }

      *(v7 + 14) = v24;

      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v30, v31, v32, v33, v34, 0x16u);
      v35 = OUTLINED_FUNCTION_6_15();
      MEMORY[0x223DE38F0](v35);
    }

    else
    {
    }

    OUTLINED_FUNCTION_25_2();
    swift_beginAccess();
    OUTLINED_FUNCTION_31_2();
    if (!(!v38 & v37) && !specialized Collection.isEmpty.getter(v2[9], v36))
    {
      OUTLINED_FUNCTION_40_1((v2 + 40), v57);
      if (v2[41] >> 60 != 15)
      {
        v39 = CommunicationProtocolAce.safetyNetBuffer.modify();
        OUTLINED_FUNCTION_24_1();
        if (!(!v38 & v37))
        {
          OUTLINED_FUNCTION_40_1((v2 + 9), v54);
          OUTLINED_FUNCTION_31_2();
          outlined copy of Data?(v40, v41);
          OUTLINED_FUNCTION_0();
          Data.append(_:)();
          v42 = OUTLINED_FUNCTION_0();
          outlined consume of Data._Representation(v42, v43);
        }

        (v39)(v55, 0);
      }
    }

    OUTLINED_FUNCTION_40_1((v2 + 40), v56);
    OUTLINED_FUNCTION_31_2();
    if (!v38 & v37 || specialized Collection.isEmpty.getter(v2[40], v44))
    {
      v45 = 0;
      v46 = 0xF000000000000000;
    }

    else
    {
      v45 = v2[40];
      v46 = v2[41];
      v47 = OUTLINED_FUNCTION_58_0();
      outlined copy of Data?(v47, v48);
    }

    v49 = v2[9];
    v50 = v2[10];
    v2[9] = v45;
    v2[10] = v46;
    outlined consume of Data?(v49, v50);
  }

  OUTLINED_FUNCTION_25_2();
  swift_beginAccess();
  v51 = v2[40];
  v52 = v2[41];
  *(v2 + 20) = xmmword_2235EF6F0;
  outlined consume of Data?(v51, v52);
}

uint64_t ConnectionMethod.providerClass(for:)(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = type metadata accessor for RPCOspreyConnectionProvider();
    v2 = &lazy protocol witness table cache variable for type RPCOspreyConnectionProvider and conformance RPCOspreyConnectionProvider;
    v3 = type metadata accessor for RPCOspreyConnectionProvider;
    v4 = &protocol conformance descriptor for RPCOspreyConnectionProvider;
LABEL_5:
    lazy protocol witness table accessor for type RPCOspreyConnectionProvider and conformance RPCOspreyConnectionProvider(v2, v3, v4);
    return v1;
  }

  if (a1 == 1)
  {
    v1 = type metadata accessor for NetworkConnectionProvider();
    v2 = &lazy protocol witness table cache variable for type NetworkConnectionProvider and conformance NetworkConnectionProvider;
    v3 = type metadata accessor for NetworkConnectionProvider;
    v4 = &protocol conformance descriptor for NetworkConnectionProvider;
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type RPCOspreyConnectionProvider and conformance RPCOspreyConnectionProvider(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t NetworkConnectionProvider.__allocating_init(connectionConfiguration:connectionQueue:networkManager:networkAnalytics:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  NetworkConnectionProvider.init(connectionConfiguration:connectionQueue:networkManager:networkAnalytics:)(a1, a2, a3, a4);
  return v8;
}

uint64_t NetworkConnectionProvider.init(connectionConfiguration:connectionQueue:networkManager:networkAnalytics:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 1496) = 0;
  *(v4 + 1512) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 2096) = 0;
  *(v4 + 2080) = 0u;
  *(v4 + 2064) = 0u;
  *(v4 + 2098) = 1;
  *(v4 + 2104) = 0u;
  *(v4 + 2120) = 0u;
  *(v4 + 2136) = 0;
  *(v4 + 2152) = 0;
  *(v4 + 2160) = 0u;
  memcpy((v4 + 1536), a1, 0x204uLL);
  *(v4 + 2056) = a2;
  _s11SiriNetwork27ConnectionPreparationReportVSgWOi0_(__src);
  memcpy(__dst, __src, sizeof(__dst));
  _s11SiriNetwork24ConnectionSnapshotReportVSgWOi0_(v13);
  *(v4 + 56) = 0;
  *(v4 + 64) = 1;
  v9 = MEMORY[0x277D84F90];
  *(v4 + 72) = MEMORY[0x277D84F90];
  *(v4 + 80) = 0u;
  *(v4 + 96) = v9;
  *(v4 + 104) = 0;
  *(v4 + 108) = 1;
  *(v4 + 144) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  memcpy((v4 + 152), __dst, 0x168uLL);
  *(v4 + 512) = 0u;
  *(v4 + 528) = 0u;
  *(v4 + 544) = 0u;
  *(v4 + 560) = 0u;
  *(v4 + 576) = 0u;
  *(v4 + 592) = 0u;
  *(v4 + 608) = 0u;
  memcpy((v4 + 624), v13, 0x2C8uLL);
  *(v4 + 1336) = v9;
  *(v4 + 1344) = 0u;
  *(v4 + 1360) = 0u;
  *(v4 + 1376) = 0;
  *(v4 + 1384) = 1;
  *(v4 + 1392) = 0;
  *(v4 + 1400) = 1;
  *(v4 + 1408) = 0;
  *(v4 + 1416) = 1;
  *(v4 + 1424) = 0u;
  *(v4 + 1440) = 0;
  *(v4 + 1444) = 1;
  *(v4 + 1448) = 0;
  *(v4 + 1456) = 1;
  *(v4 + 1464) = 0;
  *(v4 + 1472) = 1;
  *(v4 + 1480) = 0;
  *(v4 + 1488) = 1;
  *(v4 + 1520) = 0;
  *(v4 + 1528) = 2;
  *(v4 + 2144) = a4;
  v10 = *(v4 + 1496);
  *(v4 + 1496) = a3;

  return v4;
}

uint64_t CommunicationProtocolAce.initialPayload(withBufferedInitialLength:forceReconnect:)(uint64_t *a1)
{
  v25 = xmmword_2235EF700;
  if (CommunicationProtocolAce.aceDelegate.getter())
  {
    if (BackgroundConnection.isUsingPop()())
    {
      outlined consume of Data?(0, 0xF000000000000000);
      v25 = xmmword_2235EF6F0;
      OUTLINED_FUNCTION_37_1(v1 + 72, v3, v4, v5, v6, v7, v8, v9, v24);
      if (*(v1 + 80) >> 60 == 15)
      {
        CommunicationProtocolAce.httpHeaderData()();
        OUTLINED_FUNCTION_31_2();
        OUTLINED_FUNCTION_21_4();
        Data.append(_:)();
        v10 = OUTLINED_FUNCTION_21_4();
        outlined consume of Data._Representation(v10, v11);
        static AceStreamHeader.createAceStreamHeaderData(withMagic:compressionType:)(&outlined read-only object #0 of one-time initialization function for aceHeaderMagic, 1);
        OUTLINED_FUNCTION_71_0();
        Data.append(_:)();
        v21 = OUTLINED_FUNCTION_21_4();
        outlined consume of Data._Representation(v21, v22);
      }

      else
      {
        v15 = OUTLINED_FUNCTION_0();
        outlined copy of Data._Representation(v15, v16);
        OUTLINED_FUNCTION_0();
        Data.append(_:)();
        v17 = OUTLINED_FUNCTION_0();
        v18 = MEMORY[0x223DE13E0](v17);
        v19 = OUTLINED_FUNCTION_0();
        outlined consume of Data?(v19, v20);
        *a1 = v18;
      }
    }

    v14 = *(&v25 + 1);
    v12 = v25;
    if (*(&v25 + 1) >> 60 == 15)
    {
      swift_unknownObjectRelease();
      v13 = 0;
    }

    else
    {
      v13 = specialized Data.withUnsafeBytes<A>(_:)(v25, *(&v25 + 1));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0xF000000000000000;
  }

  outlined consume of Data?(v12, v14);
  return v13;
}

uint64_t protocol witness for ConnectionProviderProtocol.delegate.setter in conformance NetworkConnectionProvider(uint64_t a1, uint64_t a2)
{
  *(v2 + 1512) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t ConnectionProviderProtocol.connectionType.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  result = (*(a2 + 280))();
  if (result)
  {
    v7 = 17;
  }

  else
  {
    (*(a2 + 160))(__src, a1, a2);
    memcpy(__dst, __src, 0x121uLL);
    result = _s11SiriNetwork25ConnectionInterfaceReportVSgWOg(__dst);
    if (result == 1)
    {
      v7 = 0;
    }

    else
    {
      result = outlined destroy of ConnectionSnapshotReport?(__src, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
      v7 = __dst[32];
    }
  }

  *a3 = v7;
  return result;
}

void *ConnectionProviderProtocol.primaryInterface.getter(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v6 = v5;
  v7 = *(v2 + 40);
  v7(v16);
  memcpy(v20, v18, sizeof(v20));
  OUTLINED_FUNCTION_10_1(v20);
  if (v8)
  {
    _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(v13);
    OUTLINED_FUNCTION_17_0();
    outlined destroy of ConnectionMetrics(v15);
    v9 = v13;
    goto LABEL_6;
  }

  memcpy(__dst, &v18[384], 0x121uLL);
  OUTLINED_FUNCTION_17_0();
  outlined init with copy of ConnectionSnapshotReport?(__dst, v19, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
  outlined destroy of ConnectionMetrics(v15);
  memcpy(v13, __dst, 0x121uLL);
  v10 = _s11SiriNetwork25ConnectionInterfaceReportVSgWOg(v13);
  if (v10 == 1)
  {
    v9 = __dst;
LABEL_6:
    memcpy(v19, v9, 0x121uLL);
    (v7)(v16, v4, v3);
    memcpy(v13, v17, sizeof(v13));
    if (_s11SiriNetwork27ConnectionPreparationReportVSgWOg(v13) == 1)
    {
      OUTLINED_FUNCTION_17_0();
      outlined destroy of ConnectionMetrics(v15);
      outlined destroy of ConnectionSnapshotReport?(v19, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
      _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(__dst);
    }

    else
    {
      memcpy(__dst, &v17[40], 0x121uLL);
      OUTLINED_FUNCTION_17_0();
      outlined init with copy of ConnectionSnapshotReport?(__dst, v12, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
      outlined destroy of ConnectionMetrics(v15);
      outlined destroy of ConnectionSnapshotReport?(v19, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
    }
  }

  return memcpy(v6, __dst, 0x121uLL);
}

uint64_t _s11SiriNetwork27ConnectionPreparationReportVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t specialized Connection.willStartConnection(_:type:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type BackgroundConnection and conformance BackgroundConnection, v13, type metadata accessor for BackgroundConnection, &protocol conformance descriptor for BackgroundConnection);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    result = swift_unknownObjectRelease();
    if (v16 == a3)
    {
      v20[1] = *(a3 + OBJC_IVAR___SNConnectionInternal_connectionQueue);
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = a1;
      *(v18 + 32) = v14;
      *(v18 + 40) = a2;
      aBlock[4] = partial apply for closure #1 in Connection.willStartConnection(_:type:);
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_249_0;
      v19 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v22 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x223DE2460](0, v12, v8, v19);
      _Block_release(v19);
      (*(v21 + 8))(v8, v6);
      (*(v10 + 8))(v12, v9);
    }
  }

  return result;
}

uint64_t sub_2235396C4()
{
  MEMORY[0x223DE39C0](v0 + 16);
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void specialized ConnectionProviderProtocol.cancelOpenSlowTimer()()
{
  if (*(v0 + 2120))
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
      _os_log_impl(&dword_223515000, v4, v5, "Provider - %s [%s]: Open slow timer cancelled.", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v7, -1, -1);
      MEMORY[0x223DE38F0](v6, -1, -1);
    }

    *(v1 + 2120) = 0;
    swift_unknownObjectRelease();
    swift_getObjectType();
    OS_dispatch_source.cancel()();

    swift_unknownObjectRelease();
  }
}

{
  OUTLINED_FUNCTION_112();
  if (*(v0 + 2136))
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
      OUTLINED_FUNCTION_36_0(&dword_223515000, v14, v15, "Provider - %s [%s]: Open slow timer cancelled.");
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    *(v3 + 2136) = 0;
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

id outlined bridged method (mnbnnn) of @objc NetworkPerformanceFeed.fullScorecard(for:options:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = [a4 fullScorecardFor:a1 options:isa reply:a3];

  return v8;
}

void specialized ConnectionProviderProtocol.configureNetworkAnalytics()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(v0 + 2144);
  NetworkAnalytics.resetSequenceNumber()();

  v6 = *(v1 + 2144);
  NetworkAnalytics.setIsConnectionActive(_:)(1);

  v7 = *(v1 + 2144);
  NetworkAnalytics.getOrchestratorRequestId()(v4);

  v8 = type metadata accessor for UUID();
  LODWORD(v7) = __swift_getEnumTagSinglePayload(v4, 1, v8);
  outlined destroy of NetworkConnectionProtocol?(v4, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  if (v7 == 1)
  {
    v9 = *(v1 + 2144);
    NetworkAnalytics.resetNetId()();

    v10 = *(v1 + 2144);
    NetworkAnalytics.setNetIdAvailable(_:)(1);
  }

  v11 = *(v1 + 2144);
  NetworkAnalytics.logRequestLinkBetweenOrchestratorAndNetworkComponent()();
}

{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v4 = OUTLINED_FUNCTION_11_1(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_56();
  v5 = *(v0 + 2160);
  NetworkAnalytics.resetSequenceNumber()();

  v6 = *(v2 + 2160);
  NetworkAnalytics.setIsConnectionActive(_:)(1);

  v7 = *(v2 + 2160);
  NetworkAnalytics.getOrchestratorRequestId()(v1);

  v8 = type metadata accessor for UUID();
  LODWORD(v7) = __swift_getEnumTagSinglePayload(v1, 1, v8);
  outlined destroy of NetworkConnectionProtocol?(v1, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  if (v7 == 1)
  {
    v9 = *(v2 + 2160);
    NetworkAnalytics.resetNetId()();

    v10 = *(v2 + 2160);
    NetworkAnalytics.setNetIdAvailable(_:)(1);
  }

  v11 = *(v2 + 2160);
  NetworkAnalytics.logRequestLinkBetweenOrchestratorAndNetworkComponent()();
}

void specialized ConnectionProviderProtocol.cancelOpenTimer()()
{
  if (*(v0 + 2112))
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
      _os_log_impl(&dword_223515000, v4, v5, "Provider - %s [%s]: Open timer cancelled.", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v7, -1, -1);
      MEMORY[0x223DE38F0](v6, -1, -1);
    }

    *(v1 + 2112) = 0;
    swift_unknownObjectRelease();
    swift_getObjectType();
    OS_dispatch_source.cancel()();

    swift_unknownObjectRelease();
  }
}

{
  OUTLINED_FUNCTION_112();
  if (*(v0 + 2128))
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
      OUTLINED_FUNCTION_36_0(&dword_223515000, v14, v15, "Provider - %s [%s]: Open timer cancelled.");
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    *(v3 + 2128) = 0;
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

uint64_t _s11SiriNetwork25ConnectionInterfaceReportVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t CommunicationProtocolAce.__allocating_init(withDelegate:connectionQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_72_0();
  swift_allocObject();
  v5 = OUTLINED_FUNCTION_52();
  CommunicationProtocolAce.init(withDelegate:connectionQueue:)(v5, v6, a3);
  return v3;
}

uint64_t lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void NetworkAnalytics.setIsConnectionActive(_:)()
{
  OUTLINED_FUNCTION_46();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v8);
  v24 = OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v12 = *&v0[OBJC_IVAR___SNNetworkAnalyticsInternal_queue];
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  *(v13 + 24) = v7;
  v25[4] = v5;
  v25[5] = v13;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v25[2] = v14;
  v25[3] = v3;
  v15 = _Block_copy(v25);
  v16 = v12;
  v17 = v0;
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_2_9();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v18, v19, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v20 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_30_2(v20);
  v21 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v21);
  _Block_release(v15);

  v22 = OUTLINED_FUNCTION_16_1();
  v23(v22);
  (*(v10 + 8))(v1, v24);

  OUTLINED_FUNCTION_47();
}

uint64_t NetworkAnalytics.getOrchestratorRequestId()@<X0>(uint64_t a1@<X8>)
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
  *(v7 + 16) = partial apply for closure #1 in NetworkAnalytics.getOrchestratorRequestId();
  *(v7 + 24) = v6;
  v19[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v19[5] = v7;
  OUTLINED_FUNCTION_20_2();
  v19[1] = 1107296256;
  OUTLINED_FUNCTION_5_9();
  v19[2] = v8;
  v19[3] = &block_descriptor_101;
  v9 = _Block_copy(v19);
  v10 = v5;
  v11 = v1;

  v12 = OUTLINED_FUNCTION_31_1();
  dispatch_sync(v12, v13);

  _Block_release(v9);
  v14 = OUTLINED_FUNCTION_36_1();
  v17 = OUTLINED_FUNCTION_46_0(v14, v15, v16, 219);

  if (v17)
  {
    __break(1u);
  }

  return result;
}

void NetworkAnalytics.increaseSequenceNumber()()
{
  OUTLINED_FUNCTION_46();
  v3 = v2;
  v5 = v4;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v6);
  v22 = OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v10 = *&v0[OBJC_IVAR___SNNetworkAnalyticsInternal_queue];
  OUTLINED_FUNCTION_7_1();
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  v23[4] = v5;
  v23[5] = v11;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v23[2] = v12;
  v23[3] = v3;
  v13 = _Block_copy(v23);
  v14 = v10;
  v15 = v0;
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_2_9();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v16, v17, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v18 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_30_2(v18);
  v19 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v19);
  _Block_release(v13);

  v20 = OUTLINED_FUNCTION_16_1();
  v21(v20);
  (*(v8 + 8))(v1, v22);

  OUTLINED_FUNCTION_47();
}

uint64_t sub_22353A398()
{
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22353A3FC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t NetworkActivity.__deallocating_deinit()
{
  NetworkActivity.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t NetworkActivity.deinit()
{
  v1 = *(*v0 + 112);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

Swift::Void __swiftcall NetworkManager.releaseWiFiAssertion()()
{
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_1();
  v3 = *(v0 + OBJC_IVAR___SNNetworkManagerInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = partial apply for closure #1 in NetworkManager.releaseWiFiAssertion();
  v16 = v4;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v13 = v5;
  v14 = &block_descriptor_14;
  v6 = _Block_copy(aBlock);
  v7 = v3;

  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_3();
  _Block_release(v6);

  v8 = OUTLINED_FUNCTION_7_10();
  v9(v8);
  v10 = OUTLINED_FUNCTION_5_4();
  v11(v10);
}

void closure #1 in NetworkManager.releaseWiFiAssertion()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR___SNNetworkManagerInternal_networkWiFiManager);
    NetworkWiFiManager.releaseWiFiAssertion()();
  }
}

Swift::Void __swiftcall NetworkWiFiManager.releaseWiFiAssertion()()
{
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
  }

  v0 = type metadata accessor for Logger();
  v1 = OUTLINED_FUNCTION_17(v0, static Logger.siriNetwork);
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_223515000, v1, v2, "NetworkWiFiManager - Assertion: releaseWiFiAssertion", v3, 2u);
    OUTLINED_FUNCTION_12();
  }

  NetworkWiFiManager.setWiFiManagerClientType(_:)(0);
}