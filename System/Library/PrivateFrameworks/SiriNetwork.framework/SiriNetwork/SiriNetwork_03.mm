uint64_t ConnectionConfiguration.resolvedPort.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2 = OUTLINED_FUNCTION_11_1(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_9();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = v26 - v7;
  memcpy(v27, v0, sizeof(v27));
  ConnectionConfiguration.resolvedURL.getter(v8);
  v9 = type metadata accessor for URL();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v10 = URL.port.getter();
    v12 = v11;
    OUTLINED_FUNCTION_13_4();
    (*(v13 + 8))(v8, v9);
    if ((v12 & 1) == 0)
    {
      v23 = 0;
      v24 = v10;
      return v24 | (v23 << 16);
    }
  }

  ConnectionConfiguration.resolvedURL.getter(v5);
  v14 = OUTLINED_FUNCTION_8_23();
  if (__swift_getEnumTagSinglePayload(v14, v15, v9) == 1)
  {
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_10:
    v24 = 0;
    v23 = 1;
    return v24 | (v23 << 16);
  }

  v16 = URL.scheme.getter();
  v18 = v17;
  OUTLINED_FUNCTION_13_4();
  (*(v19 + 8))(v5, v9);
  if (!v18)
  {
    goto LABEL_10;
  }

  v26[2] = v16;
  v26[3] = v18;
  OUTLINED_FUNCTION_11_13();
  v26[0] = v20;
  v26[1] = v21;
  lazy protocol witness table accessor for type String and conformance String();
  v22 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  v23 = 0;
  if (v22)
  {
    v24 = 80;
  }

  else
  {
    v24 = 443;
  }

  return v24 | (v23 << 16);
}

uint64_t ConnectionProviderState.init(from:)(uint64_t a1)
{
  type metadata accessor for NWError();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for NWConnection.State();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v4);
  v10 = OUTLINED_FUNCTION_3_9();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x277CD8DE8] || (v1 = v12, v12 == *MEMORY[0x277CD8DE0]))
  {
    v13 = OUTLINED_FUNCTION_3_9();
    v14(v13);
    v15 = OUTLINED_FUNCTION_2_10();
    v1(v15);
    v16 = lazy protocol witness table accessor for type NWError and conformance NWError();
    v17 = OUTLINED_FUNCTION_5_10(v16);
    v19 = OUTLINED_FUNCTION_1_12(v17, v18);
    v1(v19);
    v20 = OUTLINED_FUNCTION_0_23();
    v21(v20);
  }

  else
  {
    if (v12 == *MEMORY[0x277CD8DD8])
    {
      v22 = OUTLINED_FUNCTION_0_23();
      v23(v22);
    }

    else
    {
      if (v12 == *MEMORY[0x277CD8DF8])
      {
        v24 = OUTLINED_FUNCTION_0_23();
        v25(v24);
        return 1;
      }

      if (v12 == *MEMORY[0x277CD8DD0])
      {
        v27 = OUTLINED_FUNCTION_0_23();
        v28(v27);
        return 2;
      }

      v29 = *MEMORY[0x277CD8DF0];
      v30 = *(v6 + 8);
      v30(a1, v4);
      if (v1 == v29)
      {
        return 3;
      }

      v31 = OUTLINED_FUNCTION_3_9();
      (v30)(v31);
    }

    return 0;
  }

  return v9;
}

void outlined consume of ConnectionProviderState(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t type metadata accessor for ConnectionAnalysisInfo(uint64_t a1)
{
  result = type metadata singleton initialization cache for ConnectionAnalysisInfo;
  if (!type metadata singleton initialization cache for ConnectionAnalysisInfo)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NWConnection.getAttemptedEndpoints()()
{
  MEMORY[0x223DE1A50]();
  v1 = nw_connection_copy_attempted_endpoint_array();
  swift_unknownObjectRelease();
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  swift_unknownObjectRetain();
  count = nw_array_get_count();
  if (count < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = count;
    if (count)
    {
      v4 = 0;
      v0 = MEMORY[0x277D84F90];
      do
      {
        v5 = nw_array_get_object_at_index();
        v22[1] = &unk_2836D0120;
        if (!swift_dynamicCastObjCProtocolConditional())
        {
          swift_unknownObjectRelease();
        }

        nw_endpoint_get_description();
        v6 = String.init(cString:)();
        v8 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v0 = v11;
        }

        v9 = *(v0 + 16);
        if (v9 >= *(v0 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v0 = v12;
        }

        ++v4;
        swift_unknownObjectRelease();
        *(v0 + 16) = v9 + 1;
        v10 = v0 + 16 * v9;
        *(v10 + 32) = v6;
        *(v10 + 40) = v8;
      }

      while (v3 != v4);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v0 = MEMORY[0x277D84F90];
    }

    if (one-time initialization token for siriNetwork == -1)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
LABEL_16:
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.siriNetwork);
  swift_bridgeObjectRetain_n();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22[0] = v17;
    *v16 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v18 = String.init<A>(describing:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v22);

    *(v16 + 4) = v20;

    _os_log_impl(&dword_223515000, v14, v15, "SiriNetwork - Report: Attempted Endpoints: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {
  }

  swift_unknownObjectRelease();
  return v0;
}

uint64_t ConnectionSnapshotReport.debugDescription.getter()
{
  v1 = 0xD000000000000019;
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  memcpy(__dst, v0 + 10, sizeof(__dst));
  v7 = *(v0 + 45);
  v8 = *(v0 + 46);
  v9 = *(v0 + 376);
  memcpy(__src, v0 + 96, sizeof(__src));
  v41 = *(v0 + 85);
  v44 = *(v0 + 86);
  v45 = v0[174];
  OUTLINED_FUNCTION_3_6();
  _StringGuts.grow(_:)(17);

  v63[0] = 0x65636E6575716573;
  v63[1] = 0xEF207265626D754ELL;
  LODWORD(v54[0]) = v2;
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v10);

  v48 = v63[0];
  v49 = v63[1];
  v63[0] = 0x72656469766F7270;
  v63[1] = 0xE900000000000020;
  MEMORY[0x223DE2180](v3, v4);
  v50 = v63[0];
  v51 = v63[1];
  OUTLINED_FUNCTION_3_6();
  _StringGuts.grow(_:)(24);

  OUTLINED_FUNCTION_5_0();
  v63[0] = 0xD000000000000016;
  v63[1] = v11;
  MEMORY[0x223DE2180](v5, v6);
  v46 = v63[0];
  v47 = v63[1];
  OUTLINED_FUNCTION_3_6();
  _StringGuts.grow(_:)(26);

  OUTLINED_FUNCTION_5_0();
  v55 = 0xD000000000000018;
  v56 = v12;
  memcpy(v63, __dst, 0x139uLL);
  if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v63) == 1)
  {
    v13 = 0xE700000000000000;
    OUTLINED_FUNCTION_4_6();
    v14 = 0xD000000000000019;
  }

  else
  {
    memcpy(v53, __dst, 0x139uLL);
    memcpy(v54, __dst, 0x139uLL);
    outlined init with copy of ConnectionNetworkReport(v54, v52);
    String.init<A>(describing:)();
    v13 = v15;
    OUTLINED_FUNCTION_4_6();
  }

  MEMORY[0x223DE2180](v14, v13);

  v42 = v55;
  v43 = v56;
  v54[0] = 0;
  v54[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  OUTLINED_FUNCTION_5_0();
  v59 = 0xD000000000000019;
  v60 = v16;
  if (v9)
  {
    v17 = 0xE700000000000000;
    v18 = 0xD000000000000019;
  }

  else
  {
    v54[0] = v7;
    v54[1] = v8;
    v18 = String.init<A>(describing:)();
    v17 = v19;
  }

  MEMORY[0x223DE2180](v18, v17);

  v40 = v59;
  v20 = v60;
  v54[0] = 0;
  v54[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  OUTLINED_FUNCTION_5_0();
  v57 = 0xD000000000000011;
  v58 = v21;
  memcpy(v54, __src, 0x121uLL);
  if (_s11SiriNetwork25ConnectionInterfaceReportVSgWOg(v54) == 1)
  {
    v22 = 0xE700000000000000;
    v23 = 0xD000000000000019;
  }

  else
  {
    memcpy(v52, __src, 0x121uLL);
    memcpy(v53, __src, 0x121uLL);
    outlined init with copy of ConnectionInterfaceReport(v53, &v55);
    v23 = String.init<A>(describing:)();
    v22 = v24;
  }

  MEMORY[0x223DE2180](v23, v22);

  v39 = v57;
  v25 = v58;
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  OUTLINED_FUNCTION_5_0();
  v53[0] = 0xD00000000000001BLL;
  v53[1] = v26;
  v27 = MEMORY[0x223DE2280](v41, &type metadata for ConnectionInterfaceReport);
  MEMORY[0x223DE2180](v27);

  v28 = v53[0];
  v29 = v53[1];
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  OUTLINED_FUNCTION_5_0();
  v53[0] = 0xD000000000000019;
  v53[1] = v30;
  v31 = MEMORY[0x223DE2280](v44, &type metadata for ConnectionTCPInfoMetrics);
  MEMORY[0x223DE2180](v31);

  v33 = v53[0];
  v32 = v53[1];
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v53[0] = 0x516B726F7774656ELL;
  v53[1] = 0xEF207974696C6175;
  if (v45 == 4)
  {
    v34 = 0xE700000000000000;
  }

  else
  {
    v52[0] = v45;
    v1 = String.init<A>(describing:)();
    v34 = v35;
  }

  MEMORY[0x223DE2180](v1, v34);

  v37 = v53[0];
  v36 = v53[1];
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(77);
  MEMORY[0x223DE2180](0xD00000000000002BLL, 0x80000002235F7640);
  MEMORY[0x223DE2180](v48, v49);

  OUTLINED_FUNCTION_0_20();
  MEMORY[0x223DE2180](v50, v51);

  OUTLINED_FUNCTION_0_20();
  MEMORY[0x223DE2180](v46, v47);

  OUTLINED_FUNCTION_0_20();
  MEMORY[0x223DE2180](v42, v43);

  OUTLINED_FUNCTION_0_20();
  MEMORY[0x223DE2180](v40, v20);

  OUTLINED_FUNCTION_0_20();
  MEMORY[0x223DE2180](v39, v25);

  OUTLINED_FUNCTION_0_20();
  MEMORY[0x223DE2180](v28, v29);

  OUTLINED_FUNCTION_0_20();
  MEMORY[0x223DE2180](v33, v32);

  OUTLINED_FUNCTION_0_20();
  MEMORY[0x223DE2180](v37, v36);

  return v53[0];
}

uint64_t ConnectionNetworkReport.debugDescription.getter()
{
  v1 = 0x6E776F6E6B6E75;
  strcpy(v48, "attemptCount ");
  HIWORD(v48[1]) = -4864;
  OUTLINED_FUNCTION_5_20(*v0);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v2);

  v46 = v48[0];
  v47 = v48[1];
  strcpy(v48, "carrierName ");
  BYTE5(v48[1]) = 0;
  HIWORD(v48[1]) = -5120;
  if (!*(v0 + 16))
  {
    OUTLINED_FUNCTION_6_19();
  }

  OUTLINED_FUNCTION_8_13();

  v44 = v48[0];
  v45 = v48[1];
  BYTE5(v48[1]) = 0;
  _StringGuts.grow(_:)(21);
  MEMORY[0x223DE2180](0xD000000000000013, 0x80000002235F8AD0);
  Double.write<A>(to:)();
  strcpy(v48, "wifiPhyMode ");
  HIWORD(v48[1]) = -5120;
  if (!*(v0 + 48))
  {
    OUTLINED_FUNCTION_6_19();
  }

  OUTLINED_FUNCTION_8_13();

  v42 = v48[0];
  v43 = v48[1];
  _StringGuts.grow(_:)(23);

  OUTLINED_FUNCTION_5_0();
  v48[0] = 0xD000000000000015;
  v48[1] = v3;
  if (!*(v0 + 64))
  {
    OUTLINED_FUNCTION_6_19();
  }

  OUTLINED_FUNCTION_8_13();

  v40 = v48[0];
  v41 = v48[1];
  OUTLINED_FUNCTION_5_0();
  v48[0] = 0xD00000000000001CLL;
  v48[1] = v4;
  if (!*(v0 + 80))
  {
    OUTLINED_FUNCTION_6_19();
  }

  OUTLINED_FUNCTION_8_13();

  v38 = v48[0];
  v39 = v48[1];
  strcpy(v48, "subflowCount ");
  HIWORD(v48[1]) = -4864;
  OUTLINED_FUNCTION_5_20(*(v0 + 88));
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_7_17();

  v36 = v48[0];
  v37 = v48[1];
  OUTLINED_FUNCTION_5_0();
  v48[0] = 0xD000000000000016;
  v48[1] = v5;
  OUTLINED_FUNCTION_5_20(*(v0 + 96));
  v6 = OUTLINED_FUNCTION_2_24();
  MEMORY[0x223DE2180](v6);

  v35 = v48[1];
  OUTLINED_FUNCTION_5_0();
  v48[1] = v7;
  v8 = Dictionary.description.getter();
  MEMORY[0x223DE2180](v8);

  v34 = v48[1];
  OUTLINED_FUNCTION_5_0();
  v48[0] = 0xD000000000000011;
  v48[1] = v9;
  if (!*(v0 + 120))
  {
    OUTLINED_FUNCTION_6_19();
  }

  OUTLINED_FUNCTION_8_13();

  v32 = v48[0];
  v33 = v48[1];
  OUTLINED_FUNCTION_5_0();
  v48[1] = v10;
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_7_17();

  v31 = v48[1];
  OUTLINED_FUNCTION_5_0();
  v48[0] = 0xD000000000000019;
  v48[1] = v11;
  OUTLINED_FUNCTION_0_39(*(v0 + 144));
  OUTLINED_FUNCTION_7_17();

  v30 = v48[1];
  OUTLINED_FUNCTION_5_0();
  v48[0] = 0xD000000000000020;
  v48[1] = v12;
  OUTLINED_FUNCTION_0_39(*(v0 + 160));
  OUTLINED_FUNCTION_7_17();

  v29 = v48[1];
  OUTLINED_FUNCTION_5_0();
  v48[0] = 0xD000000000000027;
  v48[1] = v13;
  OUTLINED_FUNCTION_0_39(*(v0 + 176));
  OUTLINED_FUNCTION_7_17();

  v28 = v48[1];
  OUTLINED_FUNCTION_5_0();
  v48[0] = 0xD000000000000022;
  v48[1] = v14;
  OUTLINED_FUNCTION_0_39(*(v0 + 192));
  OUTLINED_FUNCTION_7_17();

  v27 = v48[1];
  OUTLINED_FUNCTION_5_0();
  v48[0] = 0xD000000000000015;
  v48[1] = v15;
  v16 = OUTLINED_FUNCTION_0_39(*(v0 + 208));
  MEMORY[0x223DE2180](v16);

  v26 = v48[1];
  strcpy(v48, "tlsVersion ");
  HIDWORD(v48[1]) = -352321536;
  if (*(v0 + 232))
  {
    v1 = *(v0 + 224);
    v17 = *(v0 + 232);
  }

  else
  {
    v17 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v1, v17);

  v24 = v48[1];
  v25 = v48[0];
  MEMORY[0x223DE2180](0x656D69546E65706FLL, 0xED000020734D6E49);
  ConnectionNetworkReport.openTimeInMs.getter();
  Double.write<A>(to:)();
  OUTLINED_FUNCTION_5_0();
  v48[1] = v18;
  ConnectionNetworkReport.firstByteTimeInMs.getter();
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v19);

  v20 = v48[1];
  strcpy(v48, "isCaptive ");
  BYTE3(v48[1]) = 0;
  HIDWORD(v48[1]) = -369098752;
  if (*(v0 + 265))
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (*(v0 + 265))
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x223DE2180](v21, v22);

  MEMORY[0x223DE2180](0x2069737372, 0xE500000000000000);
  OUTLINED_FUNCTION_3_19();
  MEMORY[0x223DE2180](544370291, 0xE400000000000000);
  OUTLINED_FUNCTION_3_19();
  _StringGuts.grow(_:)(30);
  MEMORY[0x223DE2180](0xD00000000000001CLL, 0x80000002235F8CA0);
  OUTLINED_FUNCTION_3_19();
  _StringGuts.grow(_:)(132);
  MEMORY[0x223DE2180](0xD00000000000002ALL, 0x80000002235F8CC0);
  MEMORY[0x223DE2180](v46, v47);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v44, v45);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0, 0xE000000000000000);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v42, v43);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v40, v41);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v38, v39);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v36, v37);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000016, v35);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000014, v34);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v32, v33);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000016, v31);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000019, v30);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000020, v29);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000027, v28);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000022, v27);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000015, v26);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v25, v24);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0, 0xE000000000000000);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000012, v20);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v48[0], v48[1]);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0, 0xE000000000000000);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0, 0xE000000000000000);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0, 0xE000000000000000);

  return 0;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t ConnectionInterfaceReport.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 9);
  memcpy(__dst, v0 + 5, sizeof(__dst));
  v27[0] = 0x20656D616ELL;
  OUTLINED_FUNCTION_1_23();
  MEMORY[0x223DE2180](v1, v2);
  v19 = v27[0];
  v6 = v27[1];
  v27[0] = 0x2065707974;
  OUTLINED_FUNCTION_1_23();
  MEMORY[0x223DE2180](v3, v4);
  v20 = v27[0];
  v7 = v27[1];
  v27[0] = 0;
  OUTLINED_FUNCTION_1_23();
  _StringGuts.grow(_:)(17);
  MEMORY[0x223DE2180](0x697463656E6E6F63, 0xEF20657079546E6FLL);
  _print_unlocked<A, B>(_:_:)();
  v8 = v27[0];
  v9 = v27[1];
  v27[0] = 0x207865646E69;
  v27[1] = 0xE600000000000000;
  LODWORD(v23[0]) = v5;
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v10);

  v11 = v27[0];
  v12 = v27[1];
  v27[0] = 0;
  OUTLINED_FUNCTION_1_23();
  _StringGuts.grow(_:)(27);

  v24 = 0xD000000000000019;
  v25 = 0x80000002235F7620;
  memcpy(v27, __dst, 0xF9uLL);
  if (_s11SiriNetwork24ConnectionTCPInfoMetricsVSgWOg(v27) == 1)
  {
    v13 = 0xE700000000000000;
    v14 = 0x6E776F6E6B6E75;
  }

  else
  {
    memcpy(v22, __dst, sizeof(v22));
    memcpy(v23, __dst, 0xF9uLL);
    outlined init with copy of ConnectionTCPInfoMetrics(v23, v21);
    v14 = String.init<A>(describing:)();
    v13 = v15;
  }

  MEMORY[0x223DE2180](v14, v13);

  v16 = v24;
  v17 = v25;
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(64);
  MEMORY[0x223DE2180](0xD00000000000002DLL, 0x80000002235F8F00);
  MEMORY[0x223DE2180](v19, v6);

  OUTLINED_FUNCTION_0_44();
  MEMORY[0x223DE2180](v20, v7);

  OUTLINED_FUNCTION_0_44();
  MEMORY[0x223DE2180](v8, v9);

  OUTLINED_FUNCTION_0_44();
  MEMORY[0x223DE2180](v11, v12);

  OUTLINED_FUNCTION_0_44();
  MEMORY[0x223DE2180](v16, v17);

  MEMORY[0x223DE2180](93, 0xE100000000000000);
  return v23[0];
}

uint64_t NetworkConnectionProvider.configureConnectionHandler(_:)(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of NetworkConnectionProtocol?(v1 + 16, &aBlock, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (v55)
  {
    outlined init with take of RPCOspreyConnectionProtocol(&aBlock, &v62);
    type metadata accessor for NetworkConnectionProvider.StateUpdateHandler(0);
    OUTLINED_FUNCTION_7_1();
    v5 = swift_allocObject();
    OUTLINED_FUNCTION_91(v5);
    *(v1 + 2152) = v1;

    swift_weakAssign();

    v7 = *(v1 + 2152);
    OUTLINED_FUNCTION_87(v6, v8, v9, v10, v11, v12, v13, v14, v50, aBlock, *(&aBlock + 1), v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
    v15 = v2[6];

    v16 = OUTLINED_FUNCTION_25_1();
    v15(v16);
    type metadata accessor for NetworkConnectionProvider.ViabilityUpdateHandler(0);
    OUTLINED_FUNCTION_7_1();
    v17 = swift_allocObject();
    OUTLINED_FUNCTION_91(v17);
    *(v3 + 2160) = v7;

    swift_weakAssign();

    v19 = *(v3 + 2160);
    OUTLINED_FUNCTION_87(v18, v20, v21, v22, v23, v24, v25, v26, v51, aBlock, *(&aBlock + 1), v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
    v27 = v2[9];

    v28 = OUTLINED_FUNCTION_25_1();
    v27(v28);
    type metadata accessor for NetworkConnectionProvider.BetterPathUpdateHandler(0);
    OUTLINED_FUNCTION_7_1();
    v29 = swift_allocObject();
    OUTLINED_FUNCTION_91(v29);
    *(v3 + 2168) = v19;

    swift_weakAssign();

    OUTLINED_FUNCTION_87(v30, v31, v32, v33, v34, v35, v36, v37, v52, aBlock, *(&aBlock + 1), v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
    v38 = v2[12];

    v39 = OUTLINED_FUNCTION_25_1();
    v38(v39);
    if (a1)
    {
      outlined init with copy of RPCOspreyConnectionProtocol(&v62, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
      type metadata accessor for NWConnection();
      if (swift_dynamicCast())
      {
        MEMORY[0x223DE1A50]();
        OUTLINED_FUNCTION_7_1();
        v40 = swift_allocObject();
        swift_weakInit();
        v56 = partial apply for closure #1 in NetworkConnectionProvider.configureConnectionHandler(_:);
        v57 = v40;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v54 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v55 = &block_descriptor_261;
        v41 = _Block_copy(&aBlock);

        nw_connection_set_read_close_handler();
        _Block_release(v41);
        v42 = swift_unknownObjectRelease();
        MEMORY[0x223DE1A50](v42);
        OUTLINED_FUNCTION_104();
        OUTLINED_FUNCTION_7_1();
        v43 = swift_allocObject();
        swift_weakInit();
        v56 = partial apply for closure #2 in NetworkConnectionProvider.configureConnectionHandler(_:);
        v57 = v43;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v54 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v55 = &block_descriptor_265;
        v44 = _Block_copy(&aBlock);

        nw_connection_set_write_close_handler();
        _Block_release(v44);

        swift_unknownObjectRelease();
      }
    }

    return __swift_destroy_boxed_opaque_existential_0(&v62);
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(&aBlock, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    OUTLINED_FUNCTION_10_0();
    v46 = swift_allocError();
    OUTLINED_FUNCTION_34_0(v46, v47);
    return OUTLINED_FUNCTION_39(xmmword_2235F01E0, v48, v49);
  }
}

uint64_t objectdestroy_21Tm()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t NetworkConnectionProvider.startConnectionWithOpenTimeoutTimer(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of NetworkConnectionProtocol?(v3 + 16, &v19, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (v20)
  {
    outlined init with take of RPCOspreyConnectionProtocol(&v19, v21);
    specialized ConnectionProviderProtocol.openCompletionSetup(completion:)(a1, a2);
    specialized ConnectionProviderProtocol.setupOpenTimeoutTimer()();
    specialized ConnectionProviderProtocol.setupOpenSlowTimer()();
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriNetwork);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_6_5();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_4_3();
      v10 = swift_slowAlloc();
      *&v19 = v10;
      *v9 = 136315138;
      v11 = NetworkConnectionProvider.connectionIdentifier.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v19);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_223515000, v7, v8, "Provider - NetworkConnectionProvider [%s]: Connection start", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    NWConnection.start(queue:)();
    return __swift_destroy_boxed_opaque_existential_0(v21);
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(&v19, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    OUTLINED_FUNCTION_10_0();
    v15 = swift_allocError();
    OUTLINED_FUNCTION_34_0(v15, v16);
    return OUTLINED_FUNCTION_39(xmmword_2235F01E0, v17, v18);
  }
}

uint64_t specialized ConnectionProviderProtocol.openCompletionSetup(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;
  v7 = *(v2 + 2064);
  v8 = *(v2 + 2072);
  *(v2 + 2064) = partial apply for specialized closure #1 in ConnectionProviderProtocol.openCompletionSetup(completion:);
  *(v2 + 2072) = v6;

  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v7, v8);
}

{
  OUTLINED_FUNCTION_7_1();
  v5 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_109();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;
  v7 = *(v2 + 2080);
  v8 = *(v2 + 2088);
  *(v2 + 2080) = partial apply for specialized closure #1 in ConnectionProviderProtocol.openCompletionSetup(completion:);
  *(v2 + 2088) = v6;

  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v7, v8);
}

uint64_t sub_223550DBC()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t specialized ConnectionProviderProtocol.setupOpenTimeoutTimer()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v88 = *(v2 - 8);
  v89 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v86 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v87 = &v70 - v5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v84 = *(v6 - 8);
  v85 = v6;
  MEMORY[0x28223BE20](v6);
  v82 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DispatchQoS();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v78 = *(v9 - 8);
  v79 = v9;
  MEMORY[0x28223BE20](v9);
  v77 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v75 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = (&v70 - v14);
  v15 = type metadata accessor for DispatchTimeInterval();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v90 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v70 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v70 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v70 - v25;
  specialized ConnectionProviderProtocol.openTimeoutTimerInterval.getter((&v70 - v25));
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.siriNetwork);
  v28 = *(v16 + 16);
  v91 = v26;
  v28(v24, v26, v15);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  v31 = os_log_type_enabled(v29, v30);
  v92 = v1;
  v74 = v15;
  if (v31)
  {
    v72 = v30;
    v73 = v21;
    v32 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    aBlock[0] = v71;
    *v32 = 136315650;
    v33 = _typeName(_:qualified:)();
    v35 = v15;
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, aBlock);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    v37 = NetworkConnectionProvider.connectionIdentifier.getter();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, aBlock);

    *(v32 + 14) = v39;
    v40 = v35;
    *(v32 + 22) = 2080;
    v41 = v76;
    v28(v76, v24, v35);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v35);
    v42 = v41;
    v43 = v75;
    outlined init with copy of NetworkConnectionProtocol?(v42, v75, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    if (__swift_getEnumTagSinglePayload(v43, 1, v35) == 1)
    {
      v44 = 0xE100000000000000;
      v45 = 45;
      v21 = v73;
    }

    else
    {
      v21 = v73;
      (*(v16 + 32))(v73, v43, v40);
      v28(v90, v21, v40);
      v45 = String.init<A>(describing:)();
      v44 = v47;
      (*(v16 + 8))(v21, v40);
    }

    outlined destroy of NetworkConnectionProtocol?(v76, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    v48 = *(v16 + 8);
    v75 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v76 = v48;
    (v48)(v24, v40);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, aBlock);

    *(v32 + 24) = v49;
    _os_log_impl(&dword_223515000, v29, v72, "Provider - %s [%s]: Open timer scheduled (%s).", v32, 0x20u);
    v50 = v71;
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v50, -1, -1);
    MEMORY[0x223DE38F0](v32, -1, -1);
  }

  else
  {

    v46 = *(v16 + 8);
    v75 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v76 = v46;
    (v46)(v24, v15);
  }

  type metadata accessor for OS_dispatch_source();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, 255, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  v51 = v77;
  v52 = v79;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v53 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v78 + 8))(v51, v52);
  ObjectType = swift_getObjectType();
  v55 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for specialized closure #1 in ConnectionProviderProtocol.setupOpenTimeoutTimer();
  aBlock[5] = v55;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_253;
  v56 = _Block_copy(aBlock);

  v57 = v80;
  default argument 0 of OS_dispatch_source.setEventHandler(qos:flags:handler:)(ObjectType);
  v58 = v82;
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  v73 = v53;
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v56);
  (*(v84 + 8))(v58, v85);
  (*(v81 + 8))(v57, v83);

  v59 = v86;
  static DispatchTime.now()();
  v60 = v87;
  DispatchTime.advanced(by:)();
  v61 = v89;
  v62 = *(v88 + 8);
  v62(v59, v89);
  default argument 1 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v21);
  v63 = v21;
  v64 = v90;
  default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v90);
  MEMORY[0x223DE2510](v60, v63, v64, ObjectType);
  v65 = v64;
  v66 = v74;
  v67 = v76;
  (v76)(v65, v74);
  v67(v63, v66);
  v62(v60, v61);
  v68 = v73;
  OS_dispatch_source.resume()();
  v67(v91, v66);
  *(v92 + 2112) = v68;
  return swift_unknownObjectRelease();
}

void specialized ConnectionProviderProtocol.openTimeoutTimerInterval.getter(uint64_t *a1@<X8>)
{
  if ((*(v1 + 1816) & 1) == 0)
  {
    v5 = *(v1 + 1808);
    v6 = v5 * 1000.0;
    if (v5 * 1000.0 <= -9.22337204e18)
    {
      v3 = MEMORY[0x277D85178];
    }

    else
    {
      if (v6 < 9.22337204e18)
      {
        if (v6 <= -9.22337204e18)
        {
          __break(1u);
          goto LABEL_20;
        }

        v4 = v6;
        if (v6 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v3 = MEMORY[0x277D85178];
          goto LABEL_14;
        }
      }

      v7 = round(v5);
      if (v7 > -9.22337204e18)
      {
        if (v7 >= 9.22337204e18)
        {
          v3 = MEMORY[0x277D85188];
          v4 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_14;
        }

        if (v7 > -9.22337204e18)
        {
          v4 = v7;
          v3 = MEMORY[0x277D85188];
          goto LABEL_14;
        }

LABEL_20:
        __break(1u);
        return;
      }

      v3 = MEMORY[0x277D85188];
    }

    v4 = 0x8000000000000000;
    goto LABEL_14;
  }

  v3 = MEMORY[0x277D85178];
  v4 = 15000;
LABEL_14:
  *a1 = v4;
  v8 = *v3;
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(*(v9 - 8) + 104);

  v10(a1, v8, v9);
}

{
  if ((*(v1 + 1832) & 1) == 0)
  {
    v5 = *(v1 + 1824);
    v6 = v5 * 1000.0;
    if (v5 * 1000.0 <= -9.22337204e18)
    {
      v3 = MEMORY[0x277D85178];
    }

    else
    {
      if (v6 < 9.22337204e18)
      {
        if (v6 <= -9.22337204e18)
        {
          __break(1u);
          goto LABEL_20;
        }

        v4 = v6;
        if (v6 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v3 = MEMORY[0x277D85178];
          goto LABEL_14;
        }
      }

      v7 = round(v5);
      if (v7 > -9.22337204e18)
      {
        if (v7 >= 9.22337204e18)
        {
          v3 = MEMORY[0x277D85188];
          v4 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_14;
        }

        if (v7 > -9.22337204e18)
        {
          v4 = v7;
          v3 = MEMORY[0x277D85188];
          goto LABEL_14;
        }

LABEL_20:
        __break(1u);
        return;
      }

      v3 = MEMORY[0x277D85188];
    }

    v4 = 0x8000000000000000;
    goto LABEL_14;
  }

  v3 = MEMORY[0x277D85178];
  v4 = 15000;
LABEL_14:
  *a1 = v4;
  v8 = *v3;
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(*(v9 - 8) + 104);

  v10(a1, v8, v9);
}

uint64_t default argument 1 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85180];
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t specialized ConnectionProviderProtocol.setupOpenSlowTimer()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v88 = *(v2 - 8);
  v89 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v86 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v87 = &v70 - v5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v84 = *(v6 - 8);
  v85 = v6;
  MEMORY[0x28223BE20](v6);
  v82 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DispatchQoS();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v78 = *(v9 - 8);
  v79 = v9;
  MEMORY[0x28223BE20](v9);
  v77 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v75 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = (&v70 - v14);
  v15 = type metadata accessor for DispatchTimeInterval();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v90 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v70 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v70 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v70 - v25;
  specialized ConnectionProviderProtocol.openSlowTimerInterval.getter((&v70 - v25));
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.siriNetwork);
  v28 = *(v16 + 16);
  v91 = v26;
  v28(v24, v26, v15);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  v31 = os_log_type_enabled(v29, v30);
  v92 = v1;
  v74 = v15;
  if (v31)
  {
    v72 = v30;
    v73 = v21;
    v32 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    aBlock[0] = v71;
    *v32 = 136315650;
    v33 = _typeName(_:qualified:)();
    v35 = v15;
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, aBlock);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    v37 = NetworkConnectionProvider.connectionIdentifier.getter();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, aBlock);

    *(v32 + 14) = v39;
    v40 = v35;
    *(v32 + 22) = 2080;
    v41 = v76;
    v28(v76, v24, v35);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v35);
    v42 = v41;
    v43 = v75;
    outlined init with copy of NetworkConnectionProtocol?(v42, v75, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    if (__swift_getEnumTagSinglePayload(v43, 1, v35) == 1)
    {
      v44 = 0xE100000000000000;
      v45 = 45;
      v21 = v73;
    }

    else
    {
      v21 = v73;
      (*(v16 + 32))(v73, v43, v40);
      v28(v90, v21, v40);
      v45 = String.init<A>(describing:)();
      v44 = v47;
      (*(v16 + 8))(v21, v40);
    }

    outlined destroy of NetworkConnectionProtocol?(v76, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    v48 = *(v16 + 8);
    v75 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v76 = v48;
    (v48)(v24, v40);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, aBlock);

    *(v32 + 24) = v49;
    _os_log_impl(&dword_223515000, v29, v72, "Provider - %s [%s]: Open slow timer scheduled (%s).", v32, 0x20u);
    v50 = v71;
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v50, -1, -1);
    MEMORY[0x223DE38F0](v32, -1, -1);
  }

  else
  {

    v46 = *(v16 + 8);
    v75 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v76 = v46;
    (v46)(v24, v15);
  }

  type metadata accessor for OS_dispatch_source();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, 255, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  v51 = v77;
  v52 = v79;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v53 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v78 + 8))(v51, v52);
  ObjectType = swift_getObjectType();
  v55 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for specialized closure #1 in ConnectionProviderProtocol.setupOpenSlowTimer();
  aBlock[5] = v55;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_249;
  v56 = _Block_copy(aBlock);

  v57 = v80;
  default argument 0 of OS_dispatch_source.setEventHandler(qos:flags:handler:)(ObjectType);
  v58 = v82;
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  v73 = v53;
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v56);
  (*(v84 + 8))(v58, v85);
  (*(v81 + 8))(v57, v83);

  v59 = v86;
  static DispatchTime.now()();
  v60 = v87;
  DispatchTime.advanced(by:)();
  v61 = v89;
  v62 = *(v88 + 8);
  v62(v59, v89);
  default argument 1 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v21);
  v63 = v21;
  v64 = v90;
  default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v90);
  MEMORY[0x223DE2510](v60, v63, v64, ObjectType);
  v65 = v64;
  v66 = v74;
  v67 = v76;
  (v76)(v65, v74);
  v67(v63, v66);
  v62(v60, v61);
  v68 = v73;
  OS_dispatch_source.resume()();
  v67(v91, v66);
  *(v92 + 2120) = v68;
  return swift_unknownObjectRelease();
}

void specialized ConnectionProviderProtocol.openSlowTimerInterval.getter(uint64_t *a1@<X8>)
{
  if ((*(v1 + 1832) & 1) == 0)
  {
    v5 = *(v1 + 1824);
    v6 = v5 * 1000.0;
    if (v5 * 1000.0 <= -9.22337204e18)
    {
      v3 = MEMORY[0x277D85178];
    }

    else
    {
      if (v6 < 9.22337204e18)
      {
        if (v6 <= -9.22337204e18)
        {
          __break(1u);
          goto LABEL_20;
        }

        v4 = v6;
        if (v6 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v3 = MEMORY[0x277D85178];
          goto LABEL_14;
        }
      }

      v7 = round(v5);
      if (v7 > -9.22337204e18)
      {
        if (v7 >= 9.22337204e18)
        {
          v3 = MEMORY[0x277D85188];
          v4 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_14;
        }

        if (v7 > -9.22337204e18)
        {
          v4 = v7;
          v3 = MEMORY[0x277D85188];
          goto LABEL_14;
        }

LABEL_20:
        __break(1u);
        return;
      }

      v3 = MEMORY[0x277D85188];
    }

    v4 = 0x8000000000000000;
    goto LABEL_14;
  }

  v3 = MEMORY[0x277D85178];
  v4 = 6000;
LABEL_14:
  *a1 = v4;
  v8 = *v3;
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(*(v9 - 8) + 104);

  v10(a1, v8, v9);
}

{
  if ((*(v1 + 1848) & 1) == 0)
  {
    v5 = *(v1 + 1840);
    v6 = v5 * 1000.0;
    if (v5 * 1000.0 <= -9.22337204e18)
    {
      v3 = MEMORY[0x277D85178];
    }

    else
    {
      if (v6 < 9.22337204e18)
      {
        if (v6 <= -9.22337204e18)
        {
          __break(1u);
          goto LABEL_20;
        }

        v4 = v6;
        if (v6 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v3 = MEMORY[0x277D85178];
          goto LABEL_14;
        }
      }

      v7 = round(v5);
      if (v7 > -9.22337204e18)
      {
        if (v7 >= 9.22337204e18)
        {
          v3 = MEMORY[0x277D85188];
          v4 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_14;
        }

        if (v7 > -9.22337204e18)
        {
          v4 = v7;
          v3 = MEMORY[0x277D85188];
          goto LABEL_14;
        }

LABEL_20:
        __break(1u);
        return;
      }

      v3 = MEMORY[0x277D85188];
    }

    v4 = 0x8000000000000000;
    goto LABEL_14;
  }

  v3 = MEMORY[0x277D85178];
  v4 = 6000;
LABEL_14:
  *a1 = v4;
  v8 = *v3;
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(*(v9 - 8) + 104);

  v10(a1, v8, v9);
}

uint64_t static ConnectionConfiguration.== infix(_:_:)(double *a1, double *a2)
{
  v5 = *a1;
  v4 = *(a1 + 1);
  v6 = *(a1 + 3);
  v367 = *(a1 + 4);
  v374 = *(a1 + 2);
  v381 = *(a1 + 5);
  v339 = *(a1 + 7);
  v346 = *(a1 + 6);
  v297 = *(a1 + 8);
  v248 = *(a1 + 10);
  v318 = *(a1 + 11);
  v325 = *(a1 + 9);
  HIDWORD(v283) = *(a1 + 96);
  HIDWORD(v276) = *(a1 + 97);
  HIDWORD(v269) = *(a1 + 98);
  HIDWORD(v262) = *(a1 + 113);
  HIDWORD(v255) = *(a1 + 114);
  v7 = a1[15];
  HIDWORD(v234) = *(a1 + 128);
  HIDWORD(v227) = *(a1 + 201);
  v8 = a1[26];
  HIDWORD(v220) = *(a1 + 216);
  v199 = a1[28];
  HIDWORD(v213) = *(a1 + 232);
  v185 = *(a1 + 30);
  HIDWORD(v206) = *(a1 + 248);
  v157 = a1[32];
  LODWORD(v192) = *(a1 + 264);
  v143 = a1[34];
  HIDWORD(v164) = *(a1 + 280);
  v122 = a1[38];
  HIDWORD(v150) = *(a1 + 312);
  LODWORD(v136) = *(a1 + 313);
  memcpy(__dst, a1 + 40, sizeof(__dst));
  memcpy(v396, a1 + 50, 0x72uLL);
  v9 = *a2;
  v10 = *(a2 + 1);
  v12 = *(a2 + 2);
  v11 = *(a2 + 3);
  v13 = *(a2 + 5);
  v353 = *(a2 + 6);
  v360 = *(a2 + 4);
  v332 = *(a2 + 7);
  v290 = *(a2 + 8);
  v241 = *(a2 + 10);
  v304 = *(a2 + 11);
  v311 = *(a2 + 9);
  LODWORD(v283) = *(a2 + 96);
  LODWORD(v276) = *(a2 + 97);
  LODWORD(v269) = *(a2 + 98);
  LODWORD(v262) = *(a2 + 113);
  LODWORD(v255) = *(a2 + 114);
  v14 = a2[15];
  LODWORD(v234) = *(a2 + 128);
  LODWORD(v227) = *(a2 + 201);
  v15 = a2[26];
  LODWORD(v220) = *(a2 + 216);
  v16 = a2[28];
  LODWORD(v213) = *(a2 + 232);
  v178 = *(a2 + 30);
  HIDWORD(v192) = *(a2 + 248);
  v17 = a2[32];
  v18 = a2[34];
  LODWORD(v171) = *(a2 + 280);
  HIDWORD(v171) = *(a2 + 264);
  v19 = a2[38];
  HIDWORD(v136) = *(a2 + 312);
  HIDWORD(v129) = *(a2 + 313);
  memcpy(v397, a2 + 40, sizeof(v397));
  memcpy(v398, a2 + 50, 0x72uLL);
  if (v5 != v9 || v4 != v10)
  {
    goto LABEL_5;
  }

  if (v6)
  {
    if (!v11)
    {
      goto LABEL_5;
    }

    v23 = v374 == v12 && v6 == v11;
    if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if (v11)
  {
    goto LABEL_5;
  }

  if (v381)
  {
    if (!v13)
    {
      goto LABEL_5;
    }

    v24 = v367 == v360 && v381 == v13;
    if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if (v13)
  {
    goto LABEL_5;
  }

  v25 = v396[1];
  if (v396[1] == 1 || (v26 = v396[3]) == 0)
  {
    v26 = v339;

    v27 = v346;
  }

  else
  {
    v27 = v396[2];
  }

  v28 = v398[1];
  if (v398[1] == 1 || (v29 = v398[3]) == 0)
  {
    v29 = v332;

    if (!v26)
    {
LABEL_32:
      if (v29)
      {
        goto LABEL_42;
      }

      goto LABEL_44;
    }
  }

  else
  {
    v353 = v398[2];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  if (!v29)
  {
LABEL_42:

    goto LABEL_5;
  }

  if (v27 == v353 && v26 == v29)
  {

    goto LABEL_44;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v31 & 1) == 0)
  {
LABEL_5:
    v21 = 0;
    return v21 & 1;
  }

LABEL_44:
  if (v325)
  {
    v32 = v318;
    if (!v311)
    {
      goto LABEL_5;
    }

    v33 = v297 == v290 && v325 == v311;
    if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v32 = v318;
    if (v311)
    {
      goto LABEL_5;
    }
  }

  if (!v32)
  {
    v21 = 0;
    if (v304)
    {
      return v21 & 1;
    }

    goto LABEL_62;
  }

  if (!v304)
  {
    goto LABEL_5;
  }

  if (v248 != v241 || v32 != v304)
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v21 = 0;
    if ((v35 & 1) == 0)
    {
      return v21 & 1;
    }

LABEL_62:
    if ((HIDWORD(v283) ^ v283))
    {
      return v21 & 1;
    }

    goto LABEL_65;
  }

  v21 = 0;
  if (HIDWORD(v283) != v283)
  {
    return v21 & 1;
  }

LABEL_65:
  if ((HIDWORD(v276) ^ v276) & 1) != 0 || ((HIDWORD(v269) ^ v269) & 1) != 0 || ((HIDWORD(v262) ^ v262) & 1) != 0 || ((HIDWORD(v255) ^ v255))
  {
    return v21 & 1;
  }

  if ((v234 & 0x100000000) != 0)
  {
    v21 = 0;
    if (!v234)
    {
      return v21 & 1;
    }
  }

  else
  {
    v21 = 0;
    v36 = v234;
    if (v7 != v14)
    {
      v36 = 1;
    }

    if (v36)
    {
      return v21 & 1;
    }
  }

  if ((HIDWORD(v227) ^ v227))
  {
    return v21 & 1;
  }

  if ((v220 & 0x100000000) != 0)
  {
    v21 = v220;
    if (!v220)
    {
      return v21 & 1;
    }
  }

  else
  {
    v37 = v220;
    if (v8 != v15)
    {
      v37 = 1;
    }

    if (v37)
    {
      goto LABEL_5;
    }
  }

  if ((v213 & 0x100000000) != 0)
  {
    v21 = v213;
    if (!v213)
    {
      return v21 & 1;
    }
  }

  else
  {
    v38 = v213;
    if (v199 != v16)
    {
      v38 = 1;
    }

    if (v38)
    {
      goto LABEL_5;
    }
  }

  if ((v206 & 0x100000000) != 0)
  {
    v21 = BYTE4(v192);
    if (!HIDWORD(v192))
    {
      return v21 & 1;
    }
  }

  else
  {
    v39 = BYTE4(v192);
    if (v185 != v178)
    {
      v39 = 1;
    }

    if (v39)
    {
      goto LABEL_5;
    }
  }

  if (v192)
  {
    v21 = BYTE4(v171);
    if (!HIDWORD(v171))
    {
      return v21 & 1;
    }
  }

  else
  {
    v40 = BYTE4(v171);
    if (v157 != v17)
    {
      v40 = 1;
    }

    if (v40)
    {
      goto LABEL_5;
    }
  }

  if ((v164 & 0x100000000) != 0)
  {
    v21 = v171;
    if (!v171)
    {
      return v21 & 1;
    }
  }

  else
  {
    v41 = v171;
    if (v143 != v18)
    {
      v41 = 1;
    }

    if (v41)
    {
      goto LABEL_5;
    }
  }

  if ((v150 & 0x100000000) != 0)
  {
    v21 = 0;
    if (!HIDWORD(v136))
    {
      return v21 & 1;
    }

LABEL_112:
    if ((v136 ^ HIDWORD(v129)))
    {
      return v21 & 1;
    }

    v43 = __dst[9];
    v44 = v397[9];
    if (__dst[9])
    {
      OUTLINED_FUNCTION_7_8();
      __src[9] = v43;
      memcpy(v391, __src, 0x50uLL);
      if (v44)
      {
        memcpy(v390, a2 + 40, 0x48uLL);
        v390[9] = v44;
        OUTLINED_FUNCTION_0_22(__dst, v45, v46, v47, v48, v49, v50, v51, v115, *&v122, v129, v136, *&v143, v150, *&v157, v164, v171, v178, v185, v192, *&v199, v206, v213, v220, v227, v234, v241, v248, v255, v262, v269, v276, v283, v290, v297, v304, v311, v318, v325, v332, v339, v346, v353, v360, v367, v374, v381, v388[0], v388[1], v388[2], v388[3], v388[4], v388[5], v388[6], v388[7], v388[8], v388[9], v388[10], v388[11], v388[12], v388[13], v388[14]);
        OUTLINED_FUNCTION_0_22(v397, v52, v53, v54, v55, v56, v57, v58, v116, v123, v130, v137, v144, v151, v158, v165, v172, v179, v186, v193, v200, v207, v214, v221, v228, v235, v242, v249, v256, v263, v270, v277, v284, v291, v298, v305, v312, v319, v326, v333, v340, v347, v354, v361, v368, v375, v382, v388[0], v388[1], v388[2], v388[3], v388[4], v388[5], v388[6], v388[7], v388[8], v388[9], v388[10], v388[11], v388[12], v388[13], v388[14]);
        OUTLINED_FUNCTION_0_22(__src, v59, v60, v61, v62, v63, v64, v65, v117, v124, v131, v138, v145, v152, v159, v166, v173, v180, v187, v194, v201, v208, v215, v222, v229, v236, v243, v250, v257, v264, v271, v278, v285, v292, v299, v306, v313, v320, v327, v334, v341, v348, v355, v362, v369, v376, v383, v388[0], v388[1], v388[2], v388[3], v388[4], v388[5], v388[6], v388[7], v388[8], v388[9], v388[10], v388[11], v388[12], v388[13], v388[14]);
        static ConnectionPolicy.== infix(_:_:)(v391, v390);
        v67 = v66;
        memcpy(v388, v390, 0x50uLL);
        outlined destroy of ConnectionPolicy(v388);
        memcpy(v389, v391, 0x50uLL);
        outlined destroy of ConnectionPolicy(v389);
        memcpy(v390, a1 + 40, 0x48uLL);
        v390[9] = v43;
        outlined destroy of ConnectionSnapshotReport?(v390, &_s11SiriNetwork16ConnectionPolicyVSgMd, &_s11SiriNetwork16ConnectionPolicyVSgMR);
        if ((v67 & 1) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_122;
      }

      memcpy(v390, __src, 0x50uLL);
      OUTLINED_FUNCTION_6_9(__dst, v68, v69, v70, v71, v72, v73, v74, v115, *&v122, v129, v136, *&v143, v150, *&v157, v164, v171, v178, v185, v192, *&v199, v206, v213, v220, v227, v234, v241, v248, v255, v262, v269, v276, v283, v290, v297, v304, v311, v318, v325, v332, v339, v346, v353, v360, v367, v374, v381, v388[0], v388[1], v388[2], v388[3], v388[4], v388[5], v388[6], v388[7], v388[8], v388[9], v388[10], v388[11], v388[12], v388[13], v388[14]);
      OUTLINED_FUNCTION_6_9(v397, v75, v76, v77, v78, v79, v80, v81, v118, v125, v132, v139, v146, v153, v160, v167, v174, v181, v188, v195, v202, v209, v216, v223, v230, v237, v244, v251, v258, v265, v272, v279, v286, v293, v300, v307, v314, v321, v328, v335, v342, v349, v356, v363, v370, v377, v384, v388[0], v388[1], v388[2], v388[3], v388[4], v388[5], v388[6], v388[7], v388[8], v388[9], v388[10], v388[11], v388[12], v388[13], v388[14]);
      OUTLINED_FUNCTION_6_9(__src, v82, v83, v84, v85, v86, v87, v88, v119, v126, v133, v140, v147, v154, v161, v168, v175, v182, v189, v196, v203, v210, v217, v224, v231, v238, v245, v252, v259, v266, v273, v280, v287, v294, v301, v308, v315, v322, v329, v336, v343, v350, v357, v364, v371, v378, v385, v388[0], v388[1], v388[2], v388[3], v388[4], v388[5], v388[6], v388[7], v388[8], v388[9], v388[10], v388[11], v388[12], v388[13], v388[14]);
      outlined destroy of ConnectionPolicy(v390);
    }

    else
    {
      if (!v397[9])
      {
        OUTLINED_FUNCTION_7_8();
        __src[9] = 0;
        OUTLINED_FUNCTION_4_7(__dst);
        OUTLINED_FUNCTION_4_7(v397);
        outlined destroy of ConnectionSnapshotReport?(__src, &_s11SiriNetwork16ConnectionPolicyVSgMd, &_s11SiriNetwork16ConnectionPolicyVSgMR);
LABEL_122:
        v91 = v396[0];
        memcpy(v394, &v396[2], sizeof(v394));
        v92 = v398[0];
        memcpy(v393, &v398[2], sizeof(v393));
        if (v25 == 1)
        {
          if (v28 == 1)
          {
            __src[0] = v396[0];
            __src[1] = 1;
            OUTLINED_FUNCTION_8_6();
            OUTLINED_FUNCTION_4_7(v396);
            OUTLINED_FUNCTION_4_7(v398);
            outlined destroy of ConnectionSnapshotReport?(__src, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
            v21 = 1;
            return v21 & 1;
          }

          OUTLINED_FUNCTION_5_8(v396, __src);
          OUTLINED_FUNCTION_5_8(v398, __src);
        }

        else
        {
          __src[0] = v396[0];
          __src[1] = v25;
          OUTLINED_FUNCTION_8_6();
          memcpy(v391, __src, 0x72uLL);
          if (v28 != 1)
          {
            memcpy(&v390[2], &v398[2], 0x62uLL);
            v390[0] = v92;
            v390[1] = v28;
            v93 = static ConnectionPolicyRoute.== infix(_:_:)(v391, v390);
            memcpy(v388, v390, 0x72uLL);
            OUTLINED_FUNCTION_0_22(v396, v94, v95, v96, v97, v98, v99, v100, v115, *&v122, v129, v136, *&v143, v150, *&v157, v164, v171, v178, v185, v192, *&v199, v206, v213, v220, v227, v234, v241, v248, v255, v262, v269, v276, v283, v290, v297, v304, v311, v318, v325, v332, v339, v346, v353, v360, v367, v374, v381, v388[0], v388[1], v388[2], v388[3], v388[4], v388[5], v388[6], v388[7], v388[8], v388[9], v388[10], v388[11], v388[12], v388[13], v388[14]);
            OUTLINED_FUNCTION_0_22(v398, v101, v102, v103, v104, v105, v106, v107, v120, v127, v134, v141, v148, v155, v162, v169, v176, v183, v190, v197, v204, v211, v218, v225, v232, v239, v246, v253, v260, v267, v274, v281, v288, v295, v302, v309, v316, v323, v330, v337, v344, v351, v358, v365, v372, v379, v386, v388[0], v388[1], v388[2], v388[3], v388[4], v388[5], v388[6], v388[7], v388[8], v388[9], v388[10], v388[11], v388[12], v388[13], v388[14]);
            OUTLINED_FUNCTION_0_22(__src, v108, v109, v110, v111, v112, v113, v114, v121, v128, v135, v142, v149, v156, v163, v170, v177, v184, v191, v198, v205, v212, v219, v226, v233, v240, v247, v254, v261, v268, v275, v282, v289, v296, v303, v310, v317, v324, v331, v338, v345, v352, v359, v366, v373, v380, v387, v388[0], v388[1], v388[2], v388[3], v388[4], v388[5], v388[6], v388[7], v388[8], v388[9], v388[10], v388[11], v388[12], v388[13], v388[14]);
            outlined destroy of ConnectionPolicyRoute(v388);
            memcpy(v389, v391, 0x72uLL);
            outlined destroy of ConnectionPolicyRoute(v389);
            v390[0] = v91;
            v390[1] = v25;
            memcpy(&v390[2], v394, 0x62uLL);
            outlined destroy of ConnectionSnapshotReport?(v390, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
            v21 = v93;
            return v21 & 1;
          }

          memcpy(v390, __src, 0x72uLL);
          OUTLINED_FUNCTION_5_8(v396, v389);
          OUTLINED_FUNCTION_5_8(v398, v389);
          OUTLINED_FUNCTION_5_8(__src, v389);
          outlined destroy of ConnectionPolicyRoute(v390);
        }

        __src[0] = v91;
        __src[1] = v25;
        memcpy(&__src[2], v394, 0x62uLL);
        __src[15] = v92;
        __src[16] = v28;
        memcpy(&__src[17], v393, 0x62uLL);
        v89 = &_s11SiriNetwork21ConnectionPolicyRouteVSg_ADtMd;
        v90 = &_s11SiriNetwork21ConnectionPolicyRouteVSg_ADtMR;
        goto LABEL_129;
      }

      outlined init with copy of ConnectionSnapshotReport?(__dst, __src, &_s11SiriNetwork16ConnectionPolicyVSgMd, &_s11SiriNetwork16ConnectionPolicyVSgMR);
      outlined init with copy of ConnectionSnapshotReport?(v397, __src, &_s11SiriNetwork16ConnectionPolicyVSgMd, &_s11SiriNetwork16ConnectionPolicyVSgMR);
    }

    OUTLINED_FUNCTION_7_8();
    __src[9] = v43;
    memcpy(&__src[10], a2 + 40, 0x48uLL);
    __src[19] = v44;
    v89 = &_s11SiriNetwork16ConnectionPolicyVSg_ADtMd;
    v90 = &_s11SiriNetwork16ConnectionPolicyVSg_ADtMR;
LABEL_129:
    outlined destroy of ConnectionSnapshotReport?(__src, v89, v90);
    goto LABEL_5;
  }

  v21 = 0;
  v42 = BYTE4(v136);
  if (v122 != v19)
  {
    v42 = 1;
  }

  if ((v42 & 1) == 0)
  {
    goto LABEL_112;
  }

  return v21 & 1;
}

void static ConnectionPolicy.== infix(_:_:)(double *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a1 + 18);
  v7 = *(a1 + 19);
  v8 = *(a1 + 20);
  v9 = a1[3];
  v10 = *(a1 + 32);
  v11 = *(a1 + 5);
  v12 = *(a1 + 48);
  v13 = a1[7];
  v14 = *(a1 + 64);
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v17 = *(a2 + 17);
  v18 = *(a2 + 18);
  v19 = *(a2 + 19);
  v20 = *(a2 + 20);
  v21 = *(a2 + 24);
  v22 = *(a2 + 32);
  v23 = *(a2 + 40);
  v24 = *(a2 + 48);
  v25 = *(a2 + 56);
  v26 = *(a2 + 64);
  if (!v3)
  {
    if (v15 || ((v4 ^ v16) & 1) != 0 || ((v5 ^ v17) & 1) != 0 || ((v6 ^ v18) & 1) != 0 || ((v7 ^ v19) & 1) != 0 || ((v8 ^ v20) & 1) != 0)
    {
      goto LABEL_35;
    }

LABEL_18:
    if (((*(a1 + 21) ^ *(a2 + 21)) & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_35:
    OUTLINED_FUNCTION_0_50();
    return;
  }

  if (!v15)
  {
    goto LABEL_35;
  }

  if (*a1 == *a2 && v3 == v15)
  {
    if ((v4 ^ v16 | v5 ^ v17 | v6 ^ v18 | v7 ^ v19 | v8 ^ v20))
    {
      goto LABEL_35;
    }

    goto LABEL_18;
  }

  v42 = *(a1 + 32);
  v43 = *(a2 + 48);
  v44 = *(a2 + 64);
  v45 = *(a1 + 64);
  v37 = v8 ^ v20;
  v38 = *(a2 + 21);
  v28 = *(a1 + 5);
  v29 = *(a1 + 48);
  v41 = *(a2 + 40);
  v39 = *(a2 + 32);
  v40 = *(a1 + 21);
  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v22 = v39;
  v23 = v41;
  v10 = v42;
  v24 = v43;
  v26 = v44;
  v14 = v45;
  if ((v30 ^ 1 | v4 ^ v16 | v5 ^ v17 | v6 ^ v18 | v7 ^ v19 | v37))
  {
    goto LABEL_35;
  }

  v12 = v29;
  v11 = v28;
  if ((v40 ^ v38))
  {
    goto LABEL_35;
  }

LABEL_19:
  if (v10)
  {
    if (!v22)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v9 == v21)
    {
      v31 = v22;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      goto LABEL_35;
    }
  }

  if (v12)
  {
    if (!v24)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v11 == v23)
    {
      v32 = v24;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      goto LABEL_35;
    }
  }

  if (v14)
  {
    if (!v26)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v13 == v25)
    {
      v33 = v26;
    }

    else
    {
      v33 = 1;
    }

    if (v33)
    {
      goto LABEL_35;
    }
  }

  OUTLINED_FUNCTION_0_50();

  _sSh2eeoiySbShyxG_ABtFZ11SiriNetwork21ConnectionPolicyRouteV_Tt1g5(v34, v35);
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ11SiriNetwork21ConnectionPolicyRouteV_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v17 = (v7 - 1) & v7;
LABEL_13:
      v12 = (*(v3 + 48) + 120 * (v9 | (v4 << 6)));
      memcpy(__dst, v12, 0x72uLL);
      memcpy(v22, v12, 0x72uLL);
      memcpy(v21, v12, 0x72uLL);
      Hasher.init(_seed:)();
      outlined init with copy of ConnectionPolicyRoute(__dst, v20);
      ConnectionPolicyRoute.hash(into:)(__src);
      v13 = Hasher._finalize()();
      v14 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v15 = v13 & v14;
        if (((*(a2 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          memcpy(v21, v22, 0x72uLL);
          outlined destroy of ConnectionPolicyRoute(v21);
          return 0;
        }

        v16 = *(a2 + 48) + 120 * v15;
        memcpy(v20, v16, 0x72uLL);
        memcpy(__src, v16, 0x72uLL);
        LOBYTE(v16) = static ConnectionPolicyRoute.== infix(_:_:)(__src, v22);
        memcpy(v21, __src, 0x72uLL);
        outlined init with copy of ConnectionPolicyRoute(v20, v18);
        outlined destroy of ConnectionPolicyRoute(v21);
        if (v16)
        {
          break;
        }

        v13 = v15 + 1;
      }

      memcpy(__src, v22, 0x72uLL);
      result = outlined destroy of ConnectionPolicyRoute(__src);
      v7 = v17;
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 56 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v17 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void closure #1 in Connection.willStartConnection(_:type:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_65_3(a1);
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v5, static Logger.siriNetwork);
    swift_unknownObjectRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_4_3();
      v9 = swift_slowAlloc();
      v26[0] = v9;
      *v8 = 136315138;
      v10 = *(a2 + 448);
      if (v10 >= 2)
      {
        v26[1] = *(a2 + 440);
        v26[2] = v10;

        v12 = String.init<A>(describing:)();
        v11 = v13;
      }

      else
      {
        OUTLINED_FUNCTION_46_4();
        v11 = 0xE700000000000000;
        v12 = OUTLINED_FUNCTION_3_18();
      }

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v26);

      *(v8 + 4) = v14;
      OUTLINED_FUNCTION_52_5();
      _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      v20 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v20);
    }

    OUTLINED_FUNCTION_8();
    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      v23 = objc_allocWithZone(type metadata accessor for ConnectionTypeWrapper());
      v24 = OUTLINED_FUNCTION_15_8();
      v25 = ConnectionTypeWrapper.init(_:)(v24);
      [v22 willStartConnection:v4 type:v25];
      swift_unknownObjectRelease();
    }
  }
}

id ConnectionTypeWrapper.init(_:)(Swift::Int a1)
{
  ConnectionType.init(rawValue:)(a1);
  v2 = v5;
  if (v5 == 25)
  {
    v2 = 0;
  }

  v1[OBJC_IVAR___SNConnectionTypeInternal_connectionType] = v2;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ConnectionTypeWrapper();
  return objc_msgSendSuper2(&v4, sel_init);
}

SiriNetwork::ConnectionType_optional __swiftcall ConnectionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  switch(rawValue)
  {
    case 2000:
      v2 = 2;
      break;
    case 2001:
      v2 = 3;
      break;
    case 2002:
      v2 = 4;
      break;
    case 2003:
      v2 = 5;
      break;
    case 2004:
      v2 = 6;
      break;
    case 2005:
      break;
    case 2006:
      v2 = 8;
      break;
    case 2007:
      v2 = 9;
      break;
    case 2008:
      v2 = 10;
      break;
    case 2009:
      v2 = 11;
      break;
    case 2010:
      v2 = 12;
      break;
    case 2011:
      v2 = 13;
      break;
    case 2012:
      v2 = 14;
      break;
    case 2013:
      v2 = 15;
      break;
    case 2014:
      v2 = 16;
      break;
    default:
      switch(rawValue)
      {
        case 3000:
          v2 = 17;
          break;
        case 3001:
          v2 = 18;
          break;
        case 3002:
          v2 = 19;
          break;
        case 3003:
          v2 = 20;
          break;
        case 3004:
          v2 = 21;
          break;
        case 3005:
          v2 = 22;
          break;
        case 3006:
          v2 = 23;
          break;
        default:
          if (rawValue)
          {
            if (rawValue == 4000)
            {
              v2 = 24;
            }

            else if (rawValue == 1000)
            {
              v2 = 1;
            }

            else
            {
              v2 = 25;
            }
          }

          else
          {
            v2 = 0;
          }

          break;
      }

      break;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t Connection.delegate.getter()
{
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

Swift::String __swiftcall ConnectionTypeWrapper.connectionTypeStringRawValue()()
{
  v0 = ConnectionType.stringRawValue.getter();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t specialized SafeCallback.reify(_:)(void (*a1)(void))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    a1();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_90_0(uint64_t a1, uint64_t a2)
{
  *(v3 - 296) = v2;

  return OS_dispatch_source.setEventHandler(qos:flags:handler:)();
}

void closure #1 in NetworkManager.updateNetworkPerformanceFeed()(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v37 = a5;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriNetwork);
    v12 = a2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v36 = a4;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock = v16;
      *v15 = 136315138;
      if (a2)
      {
        v44 = a2;
        v17 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v18 = String.init<A>(describing:)();
        v20 = v19;
      }

      else
      {
        v20 = 0xE300000000000000;
        v18 = 7104878;
      }

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &aBlock);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_223515000, v13, v14, "NetworkManager - PerformanceFeed: Instant data for WiFi. Error: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x223DE38F0](v16, -1, -1);
      MEMORY[0x223DE38F0](v15, -1, -1);

      a4 = v36;
    }

    else
    {
    }

    v45 = 0;
    if (a1)
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      v23 = a1;
    }

    else
    {
      v23 = 0;
      v22 = 0;
      v39 = 0;
      v40 = 0;
    }

    aBlock = v23;
    v41 = v22;

    v24 = NetworkManager.acceptableSuccessRate(fullScorecard:hasMetrics:)(&aBlock, &v45);
    outlined destroy of Any?(&aBlock);
    v25 = v45;
    v26 = OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality;
    [*&v10[OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality] lock];
    if (v25 == 1)
    {
      v10[OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport] = (v24 & 1) == 0;
      [*&v10[v26] unlock];
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 67109120;
        *(v29 + 4) = v24 & 1;
        _os_log_impl(&dword_223515000, v27, v28, "NetworkManager - PerformanceFeed: Symptoms WiFi Instant: %{BOOL}d", v29, 8u);
        MEMORY[0x223DE38F0](v29, -1, -1);
      }

      if ((v24 & 1) == 0)
      {
        specialized _dictionaryUpCast<A, B, C, D>(_:)(v37);
        v31 = v30;
        v32 = swift_allocObject();
        swift_beginAccess();
        v33 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakInit();

        v42 = partial apply for closure #1 in closure #1 in NetworkManager.updateNetworkPerformanceFeed();
        v43 = v32;
        aBlock = MEMORY[0x277D85DD0];
        v39 = 1107296256;
        v40 = thunk for @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ();
        v41 = &block_descriptor_18_0;
        v34 = _Block_copy(&aBlock);

        outlined bridged method (mnbnnn) of @objc NetworkPerformanceFeed.fullScorecard(for:options:reply:)(1, v31, v34, a4);

        _Block_release(v34);
        return;
      }
    }

    else
    {
      v10[OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport] = 2;
      v35 = *&v10[v26];
      [v35 unlock];
    }
  }
}

uint64_t NetworkManager.acceptableSuccessRate(fullScorecard:hasMetrics:)(uint64_t a1, _BYTE *a2)
{
  outlined init with copy of Any?(a1, &v38);
  if (!*(&v39 + 1))
  {
    goto LABEL_33;
  }

  v6 = type metadata accessor for NSDictionary();
  if ((OUTLINED_FUNCTION_1_15(v6, v7) & 1) == 0)
  {
    return 0;
  }

  v8 = v34;
  if ([v34 count] < 1)
  {
    goto LABEL_36;
  }

  v9 = &off_2784DD000;
  v10 = [v34 allValues];
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v11[2])
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  outlined init with copy of Any((v11 + 4), &v38);

  if ((OUTLINED_FUNCTION_1_15(v12, v13) & 1) == 0)
  {
LABEL_36:

    return 0;
  }

  v11 = v34;
  if ([v34 count] < 1)
  {

    return 0;
  }

  v14 = [v34 allValues];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v10 + 16))
  {
    goto LABEL_40;
  }

  outlined init with copy of Any(v10 + 32, &v38);

  if ((OUTLINED_FUNCTION_1_15(v15, v16) & 1) == 0)
  {
LABEL_35:

    goto LABEL_36;
  }

  v6 = v34;
  v35[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35[1] = v17;
  v10 = [v6 __swift_objectForKeyedSubscript_];
  v18 = swift_unknownObjectRelease();
  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    v18 = swift_unknownObjectRelease();
  }

  else
  {
    *v35 = 0u;
    v37 = 0u;
  }

  v38 = *v35;
  v39 = v37;
  if (!*(&v37 + 1))
  {
LABEL_32:

LABEL_33:
    outlined destroy of Any?(&v38);
    return 0;
  }

  if ((OUTLINED_FUNCTION_9_6(v18, v19, v20, MEMORY[0x277D839F8], v21) & 1) == 0)
  {
LABEL_34:

    goto LABEL_35;
  }

  v3 = v33;
  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_41;
  }

  v2 = -9.22337204e18;
  if (v33 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v33 < 9.22337204e18)
  {
    v9 = v33;
    if (v33 >= 7)
    {
      v36[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36[1] = v22;
      v23 = [v6 __swift_objectForKeyedSubscript_];
      v24 = swift_unknownObjectRelease();
      if (v23)
      {
        _bridgeAnyObjectToAny(_:)();
        v24 = swift_unknownObjectRelease();
      }

      else
      {
        *v36 = 0u;
        v37 = 0u;
      }

      v38 = *v36;
      v39 = v37;
      if (*(&v37 + 1))
      {
        if (OUTLINED_FUNCTION_9_6(v24, v25, v26, MEMORY[0x277D839F8], v27))
        {
          v4 = v33;
          *a2 = 1;
          v3 = v33 / v33;
          v10 = v33 / v33 > 0.5;
          if (one-time initialization token for siriNetwork == -1)
          {
            goto LABEL_26;
          }

          goto LABEL_44;
        }

        goto LABEL_34;
      }

      goto LABEL_32;
    }

    return 0;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
LABEL_26:
  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.siriNetwork);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v29, v30))
  {
LABEL_31:

    return v10;
  }

  result = swift_slowAlloc();
  *result = 134219008;
  *(result + 4) = v3;
  *(result + 12) = 1024;
  *(result + 14) = v3 > 0.5;
  *(result + 18) = 2048;
  *(result + 20) = 0x3FE0000000000000;
  *(result + 28) = 2048;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v4 <= v2)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v4 < 9.22337204e18)
  {
    v32 = result;
    *(result + 30) = v4;
    *(result + 38) = 2048;
    *(result + 40) = v9;
    _os_log_impl(&dword_223515000, v29, v30, "NetworkManager - PerformanceFeed: Success rate %f is acceptable: %{BOOL}d (success rate higher than %f). successes = %ld attempts = %ld", result, 0x30u);
    MEMORY[0x223DE38F0](v32, -1, -1);
    goto LABEL_31;
  }

LABEL_47:
  __break(1u);
  return result;
}

void closure #2 in NetworkManager.updateNetworkPerformanceFeed()(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v37 = a5;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriNetwork);
    v12 = a2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v36 = a4;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock = v16;
      *v15 = 136315138;
      if (a2)
      {
        v44 = a2;
        v17 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v18 = String.init<A>(describing:)();
        v20 = v19;
      }

      else
      {
        v20 = 0xE300000000000000;
        v18 = 7104878;
      }

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &aBlock);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_223515000, v13, v14, "NetworkManager - PerformanceFeed: Instant data for Cell. Error: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x223DE38F0](v16, -1, -1);
      MEMORY[0x223DE38F0](v15, -1, -1);

      a4 = v36;
    }

    else
    {
    }

    v45 = 0;
    if (a1)
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      v23 = a1;
    }

    else
    {
      v23 = 0;
      v22 = 0;
      v39 = 0;
      v40 = 0;
    }

    aBlock = v23;
    v41 = v22;

    v24 = NetworkManager.acceptableSuccessRate(fullScorecard:hasMetrics:)(&aBlock, &v45);
    outlined destroy of Any?(&aBlock);
    v25 = v45;
    v26 = OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality;
    [*&v10[OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality] lock];
    if (v25 == 1)
    {
      v10[OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport + 1] = (v24 & 1) == 0;
      [*&v10[v26] unlock];
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 67109120;
        *(v29 + 4) = v24 & 1;
        _os_log_impl(&dword_223515000, v27, v28, "NetworkManager - PerformanceFeed: Symptoms Cellular Instant: %{BOOL}d", v29, 8u);
        MEMORY[0x223DE38F0](v29, -1, -1);
      }

      if ((v24 & 1) == 0)
      {
        specialized _dictionaryUpCast<A, B, C, D>(_:)(v37);
        v31 = v30;
        v32 = swift_allocObject();
        swift_beginAccess();
        v33 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakInit();

        v42 = partial apply for closure #1 in closure #2 in NetworkManager.updateNetworkPerformanceFeed();
        v43 = v32;
        aBlock = MEMORY[0x277D85DD0];
        v39 = 1107296256;
        v40 = thunk for @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ();
        v41 = &block_descriptor_14_0;
        v34 = _Block_copy(&aBlock);

        outlined bridged method (mnbnnn) of @objc NetworkPerformanceFeed.fullScorecard(for:options:reply:)(2, v31, v34, a4);

        _Block_release(v34);
        return;
      }
    }

    else
    {
      v10[OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport + 1] = 2;
      v35 = *&v10[v26];
      [v35 unlock];
    }
  }
}

void closure #1 in NetworkAnalytics.setNetIdAvailable(_:)(uint64_t a1, char a2)
{
  *(a1 + OBJC_IVAR___SNNetworkAnalyticsInternal_netIdAvailable) = a2;
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriNetwork);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a2 & 1;
    _os_log_impl(&dword_223515000, oslog, v4, "Network Analytics: NetId available: %{BOOL}d", v5, 8u);
    MEMORY[0x223DE38F0](v5, -1, -1);
  }
}

void closure #1 in NetworkAnalytics.logRequestLinkBetweenOrchestratorAndNetworkComponent()(uint64_t a1, void *a2)
{
  v115 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x28223BE20](v2);
  v4 = &v108 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v116 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v108 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v108 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v108 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v108 - v17;
  v19 = type metadata accessor for UUID();
  v121 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v119 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v118 = &v108 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v117 = &v108 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v108 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v108 - v30;
  MEMORY[0x28223BE20](v29);
  v120 = &v108 - v32;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v114 = v28;
  v34 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
  v35 = Strong;
  swift_beginAccess();
  outlined init with copy of UUID?(v35 + v34, v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    v36 = v35;
    outlined destroy of NetworkConnectionProtocol?(v18, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.siriNetwork);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_223515000, v38, v39, "Network Analytics: Event link. No netId generated", v40, 2u);
      MEMORY[0x223DE38F0](v40, -1, -1);
    }

    return;
  }

  v112 = v10;
  v42 = v120;
  v41 = v121;
  v43 = *(v121 + 32);
  v111 = v121 + 32;
  v110 = v43;
  v43(v120, v18, v19);
  v44 = OBJC_IVAR___SNNetworkAnalyticsInternal_netIdForRequestLink;
  swift_beginAccess();
  v109 = *(v41 + 16);
  v109(v16, v42, v19);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v19);
  v45 = *(v2 + 48);
  v113 = v35;
  v108 = v44;
  outlined init with copy of UUID?(v35 + v44, v4);
  outlined init with copy of UUID?(v16, &v4[v45]);
  v46 = v19;
  if (__swift_getEnumTagSinglePayload(v4, 1, v19) == 1)
  {
    outlined destroy of NetworkConnectionProtocol?(v16, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v4[v45], 1, v19);
    v48 = v112;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of NetworkConnectionProtocol?(v4, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
      v49 = v120;
LABEL_27:
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v89 = type metadata accessor for Logger();
      __swift_project_value_buffer(v89, static Logger.siriNetwork);
      v90 = v119;
      v109(v119, v49, v46);
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v123[0] = v94;
        *v93 = 136315138;
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v95 = dispatch thunk of CustomStringConvertible.description.getter();
        v96 = v90;
        v98 = v97;
        v99 = *(v121 + 8);
        v99(v96, v46);
        v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v98, v123);

        *(v93 + 4) = v100;
        _os_log_impl(&dword_223515000, v91, v92, "Network Analytics: Event link. Request Link already sent for netId: %s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v94);
        MEMORY[0x223DE38F0](v94, -1, -1);
        MEMORY[0x223DE38F0](v93, -1, -1);

        v99(v49, v46);
        return;
      }

      v101 = *(v121 + 8);
      v101(v90, v46);
      goto LABEL_39;
    }

    goto LABEL_13;
  }

  outlined init with copy of UUID?(v4, v13);
  v50 = __swift_getEnumTagSinglePayload(&v4[v45], 1, v19);
  v48 = v112;
  if (v50 == 1)
  {
    outlined destroy of NetworkConnectionProtocol?(v16, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    (*(v121 + 8))(v13, v19);
LABEL_13:
    outlined destroy of NetworkConnectionProtocol?(v4, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v49 = v120;
    goto LABEL_14;
  }

  v110(v31, &v4[v45], v19);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v87 = dispatch thunk of static Equatable.== infix(_:_:)();
  v88 = *(v121 + 8);
  v88(v31, v46);
  outlined destroy of NetworkConnectionProtocol?(v16, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v88(v13, v46);
  v49 = v120;
  outlined destroy of NetworkConnectionProtocol?(v4, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  if (v87)
  {
    goto LABEL_27;
  }

LABEL_14:
  v51 = OBJC_IVAR___SNNetworkAnalyticsInternal_orchestratorRequestId;
  v52 = v46;
  v53 = v113;
  swift_beginAccess();
  outlined init with copy of UUID?(&v53[v51], v48);
  if (__swift_getEnumTagSinglePayload(v48, 1, v52) == 1)
  {
    v54 = v52;
    outlined destroy of NetworkConnectionProtocol?(v48, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.siriNetwork);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_223515000, v56, v57, "Network Analytics: Event link. No orchestrator requestId", v58, 2u);
      MEMORY[0x223DE38F0](v58, -1, -1);
    }

    else
    {
    }

    (*(v121 + 8))(v49, v54);
  }

  else
  {
    v59 = v114;
    v110(v114, v48, v52);
    if (v53[OBJC_IVAR___SNNetworkAnalyticsInternal_isConnectionActive] != 1)
    {
      v46 = v52;
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v102 = type metadata accessor for Logger();
      __swift_project_value_buffer(v102, static Logger.siriNetwork);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_223515000, v103, v104, "Network Analytics: Event link. No active connection", v105, 2u);
        MEMORY[0x223DE38F0](v105, -1, -1);
      }

      v101 = *(v121 + 8);
      v101(v114, v46);
LABEL_39:
      v101(v49, v46);
      return;
    }

    v60 = v53;
    v61 = v116;
    v62 = v109;
    v109(v116, v49, v52);
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v52);
    v119 = NetworkAnalytics.createRequestLinkInfo(from:component:)(v61, 18);
    outlined destroy of NetworkConnectionProtocol?(v61, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    v62(v61, v59, v52);
    v63 = v62;
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v52);
    v64 = NetworkAnalytics.createRequestLinkInfo(from:component:)(v61, 1);
    outlined destroy of NetworkConnectionProtocol?(v61, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    v65 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
    v66 = v52;
    if (v65)
    {
      v67 = v65;
      [v65 setSource_];
      [v67 setTarget_];
      [*&v60[OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream] emitMessage:v67 timestamp:v115];
    }

    v115 = v64;
    v63(v61, v49, v52);
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v52);
    v68 = v108;
    swift_beginAccess();
    outlined assign with take of UUID?(v61, &v60[v68]);
    swift_endAccess();
    v69 = v63;
    v71 = v117;
    v70 = v118;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Logger.siriNetwork);
    v69(v71, v49, v66);
    v69(v70, v114, v66);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v122[0] = v116;
      *v75 = 136315394;
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v77;
      v79 = *(v121 + 8);
      v79(v71, v66);
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, v122);

      *(v75 + 4) = v80;
      *(v75 + 12) = 2080;
      v81 = v118;
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      v79(v81, v66);
      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, v122);
      v49 = v120;

      *(v75 + 14) = v85;
      _os_log_impl(&dword_223515000, v73, v74, "Network Analytics: Event link emitted. netId: %s, orchestratorRequestId: %s", v75, 0x16u);
      v86 = v116;
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v86, -1, -1);
      MEMORY[0x223DE38F0](v75, -1, -1);
    }

    else
    {

      v79 = *(v121 + 8);
      v79(v70, v66);
      v79(v71, v66);
    }

    v106 = v115;
    v107 = v113;
    NetworkAnalytics.emitAllCachedMessagesFor(_:)();

    v79(v114, v66);
    v79(v49, v66);
  }
}

uint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(uint64_t result)
{
  if (result)
  {
    v6[3] = v1;
    v6[4] = v2;
    v3 = result;
    v6[0] = 0;
    MEMORY[0x223DE3910](v6, 8);
    v4 = v3;
    result = (LOBYTE(v6[0]) * v3) >> 8;
    if (v3 > (LOBYTE(v6[0]) * v3) && -v3 % v3 > (LOBYTE(v6[0]) * v3))
    {
      v5 = (-v3 % v3);
      do
      {
        v6[0] = 0;
        MEMORY[0x223DE3910](v6, 8);
      }

      while (v5 > (LOBYTE(v6[0]) * v4));
      return (LOBYTE(v6[0]) * v4) >> 8;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized closure #1 in NetworkActivityTracingInternal.addConnection(_:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = *(v6 + 24);

    specialized Set.contains(_:)(a2, v7, v8, v9, v10, v11, v12, v13, v33, v35, v37, v39, v40[0], v40[1], v40[2], v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, vars0, vars8);
    v15 = v14;

    if (v15)
    {
LABEL_14:
      if (a3)
      {
        a3(v16);
      }
    }

    else
    {
      swift_beginAccess();

      specialized Set._Variant.insert(_:)(&v39, a2, v17, v18, v19, v20, v21, v22, v34, v36, v38, v39, v40[0], v40[1], v40[2], v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, vars0, vars8);
      swift_endAccess();

      swift_beginAccess();
      v23 = *(v6 + 16);
      v26 = *(v23 + 64);
      v25 = v23 + 64;
      v24 = v26;
      v27 = 1 << *(*(v6 + 16) + 32);
      v28 = -1;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      v29 = v28 & v24;
      v30 = (v27 + 63) >> 6;

      v31 = 0;
      if (v29)
      {
        goto LABEL_11;
      }

      while (1)
      {
        v32 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v32 >= v30)
        {

          goto LABEL_14;
        }

        v29 = *(v25 + 8 * v32);
        ++v31;
        if (v29)
        {
          v31 = v32;
          do
          {
LABEL_11:
            v29 &= v29 - 1;

            specialized NetworkActivity.addConnection(_:)(a2);
          }

          while (v29);
          continue;
        }
      }

      __break(1u);
    }
  }
}

void specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_67_1();
  v31 = v30;
  if ((v30 & 0xC000000000000001) != 0)
  {

    __CocoaSet.contains(_:)();
  }

  else if (*(v30 + 16))
  {
    Hasher.init(_seed:)();
    v32 = NWConnection.identifier.getter();
    MEMORY[0x223DE29A0](v32);
    Hasher._finalize()();
    OUTLINED_FUNCTION_18_8();
    v35 = ~v34;
    do
    {
      v36 = v33 & v35;
      if (((1 << (v33 & v35)) & *(v31 + 56 + (((v33 & v35) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      v37 = NWConnection.identifier.getter();
      v38 = NWConnection.identifier.getter();

      v33 = v36 + 1;
    }

    while (v37 != v38);
  }

  OUTLINED_FUNCTION_66_3();
}

void NetworkAnalytics.logDebugNetworkConnectionStatePreparationSnapshotCaptured(_:)()
{
  OUTLINED_FUNCTION_46();
  v30 = v3;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_0_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  if (NetworkAnalytics.emitLogDebug()())
  {
    v28 = v10;
    v29 = v14;
    v16 = mach_absolute_time();
    v17 = *(v0 + OBJC_IVAR___SNNetworkAnalyticsInternal_queue);
    OUTLINED_FUNCTION_7_1();
    v18 = swift_allocObject();
    OUTLINED_FUNCTION_28_0(v18);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_109();
    v19 = swift_allocObject();
    v19[2] = v12;
    v19[3] = v7;
    v19[4] = v16;
    v31[4] = v5;
    v31[5] = v19;
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
    v31[2] = v20;
    v31[3] = v30;
    v21 = _Block_copy(v31);
    v22 = v17;
    OUTLINED_FUNCTION_42();
    v23 = v7;
    static DispatchQoS.unspecified.getter();
    OUTLINED_FUNCTION_2_9();
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v24, v25, MEMORY[0x277D851A0]);
    v26 = OUTLINED_FUNCTION_27_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
    OUTLINED_FUNCTION_45_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
    OUTLINED_FUNCTION_11_5();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_43_1();
    _Block_release(v21);

    (*(v28 + 8))(v1, v8);
    (*(v29 + 8))(v2, v12);
    OUTLINED_FUNCTION_39_0();
  }

  OUTLINED_FUNCTION_47();
}

{
  NetworkAnalytics.logDebugNetworkConnectionStatePreparationSnapshotCaptured(_:)();
}

Swift::Bool __swiftcall NetworkAnalytics.emitLogDebug()()
{
  if (specialized RandomNumberGenerator.next<A>(upperBound:)(10))
  {
    return AFIsInternalInstall();
  }

  else
  {
    return 1;
  }
}

void NetworkAnalytics.logSessionConnectionHttpHeaderCreated(_:)()
{
  OUTLINED_FUNCTION_46();
  v23 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_53_1();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v7 = mach_absolute_time();
  v8 = *&v0[OBJC_IVAR___SNNetworkAnalyticsInternal_queue];
  OUTLINED_FUNCTION_7_1();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_28_0(v9);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_109();
  v10 = swift_allocObject();
  v10[2] = v1;
  v10[3] = v0;
  v10[4] = v7;
  v24[4] = v4;
  v24[5] = v10;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v24[2] = v11;
  v24[3] = v23;
  v12 = _Block_copy(v24);
  v13 = v8;
  OUTLINED_FUNCTION_42();
  v14 = v0;
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_2_9();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v15, v16, MEMORY[0x277D851A0]);
  v17 = OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_45_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_43_1();
  _Block_release(v12);

  v19 = OUTLINED_FUNCTION_16_1();
  v20(v19);
  v21 = OUTLINED_FUNCTION_16();
  v22(v21);
  OUTLINED_FUNCTION_39_0();

  OUTLINED_FUNCTION_47();
}

{
  NetworkAnalytics.logSessionConnectionHttpHeaderCreated(_:)();
}

unint64_t type metadata accessor for NSDictionary()
{
  result = lazy cache variable for type metadata for NSDictionary;
  if (!lazy cache variable for type metadata for NSDictionary)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSDictionary);
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_2Tm_0()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void closure #1 in NetworkAnalytics.resetNetId()(uint64_t a1)
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v34 = v5;
    UUID.init()();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v1);
    v19 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
    swift_beginAccess();
    outlined assign with take of UUID?(v16, v18 + v19);
    swift_endAccess();
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.siriNetwork);
    v21 = v18;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v32 = v2;
      v24 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35[0] = v33;
      *v24 = 136315138;
      outlined init with copy of UUID?(v18 + v19, v14);
      outlined init with copy of UUID?(v14, v11);
      if (__swift_getEnumTagSinglePayload(v11, 1, v1) == 1)
      {
        v25 = 0xE400000000000000;
        v26 = 1819047278;
      }

      else
      {
        v27 = v32;
        (*(v32 + 32))(v7, v11, v1);
        (*(v27 + 16))(v34, v7, v1);
        v26 = String.init<A>(describing:)();
        v25 = v28;
        (*(v27 + 8))(v7, v1);
      }

      outlined destroy of NetworkConnectionProtocol?(v14, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, v35);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_223515000, v22, v23, "Network Analytics: NetId reset: %s", v24, 0xCu);
      v30 = v33;
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x223DE38F0](v30, -1, -1);
      MEMORY[0x223DE38F0](v24, -1, -1);
    }
  }
}

unint64_t ConnectionQualityReport.debugDescription.getter(unsigned int a1)
{
  v2 = 1685024615;
  OUTLINED_FUNCTION_2_22();
  _StringGuts.grow(_:)(22);

  OUTLINED_FUNCTION_5_0();
  v19 = v3;
  v4 = 0xE400000000000000;
  v5 = 1685024615;
  switch(a1)
  {
    case 1:
      v4 = 0xE300000000000000;
      v5 = 6578530;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_4_19();
      v4 = 0xEB00000000656C62;
      break;
    case 3:
      v4 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_3_18();
      break;
    default:
      break;
  }

  MEMORY[0x223DE2180](v5, v4);

  v6 = v19;
  _StringGuts.grow(_:)(26);

  OUTLINED_FUNCTION_5_0();
  v20 = v7;
  v8 = 0xE400000000000000;
  v9 = 1685024615;
  switch(BYTE1(a1))
  {
    case 1:
      v8 = 0xE300000000000000;
      v9 = 6578530;
      break;
    case 2:
      v9 = OUTLINED_FUNCTION_4_19();
      v8 = 0xEB00000000656C62;
      break;
    case 3:
      v8 = 0xE700000000000000;
      v9 = OUTLINED_FUNCTION_3_18();
      break;
    default:
      break;
  }

  MEMORY[0x223DE2180](v9, v8);

  v10 = v20;
  OUTLINED_FUNCTION_2_22();
  _StringGuts.grow(_:)(25);

  OUTLINED_FUNCTION_5_0();
  v21 = v11;
  v12 = 0xE400000000000000;
  v13 = 1685024615;
  switch(BYTE2(a1))
  {
    case 1:
      v12 = 0xE300000000000000;
      v13 = 6578530;
      break;
    case 2:
      v13 = OUTLINED_FUNCTION_4_19();
      v12 = 0xEB00000000656C62;
      break;
    case 3:
      v12 = 0xE700000000000000;
      v13 = OUTLINED_FUNCTION_3_18();
      break;
    default:
      break;
  }

  v14 = HIBYTE(a1);
  MEMORY[0x223DE2180](v13, v12);

  v15 = v21;
  OUTLINED_FUNCTION_2_22();
  _StringGuts.grow(_:)(29);

  OUTLINED_FUNCTION_5_0();
  v22 = v16;
  v17 = 0xE400000000000000;
  switch(v14)
  {
    case 1:
      v17 = 0xE300000000000000;
      v2 = 6578530;
      break;
    case 2:
      OUTLINED_FUNCTION_11_9();
      v17 = 0xEB00000000656C62;
      break;
    case 3:
      v17 = 0xE700000000000000;
      OUTLINED_FUNCTION_4_6();
      break;
    default:
      break;
  }

  MEMORY[0x223DE2180](v2, v17);

  OUTLINED_FUNCTION_2_22();
  _StringGuts.grow(_:)(58);
  MEMORY[0x223DE2180](0xD00000000000002BLL, 0x80000002235F8680);
  MEMORY[0x223DE2180](0xD000000000000014, v6);

  OUTLINED_FUNCTION_6_18();
  MEMORY[0x223DE2180](0xD000000000000018, v10);

  OUTLINED_FUNCTION_6_18();
  MEMORY[0x223DE2180](0xD000000000000017, v15);

  OUTLINED_FUNCTION_6_18();
  MEMORY[0x223DE2180](0xD00000000000001BLL, v22);

  MEMORY[0x223DE2180](93, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

uint64_t OUTLINED_FUNCTION_111()
{

  return static OS_dispatch_source.makeTimerSource(flags:queue:)();
}

SiriNetwork::ConnectionType __swiftcall NetworkManager.connectionTechnologyForCellularInterface()()
{
  v2 = v0;
  v21[4] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + OBJC_IVAR___SNNetworkManagerInternal_dataServiceDescriptor);
  if (v3 && ([v3 copy], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for CTServiceDescriptor, 0x277CC3718), (swift_dynamicCast() & 1) != 0))
  {
    v4 = *(v1 + OBJC_IVAR___SNNetworkManagerInternal_coreTelephonyClient);
    v21[0] = 0;
    v5 = [v4 getCurrentRat:v20 error:v21];
    v6 = v21[0];
    if (v5)
    {
      v7 = v5;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
      v11 = v6;

      v12._countAndFlagsBits = v8;
      v12._object = v10;
      ConnectionType.init(fromCoreTelephonyeRATString:)(v12);

      return result;
    }

    v18 = v21[0];
    v19 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
    }

    v14 = type metadata accessor for Logger();
    v15 = OUTLINED_FUNCTION_17(v14, static Logger.siriNetwork);
    v16 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_1(v16))
    {
      v17 = OUTLINED_FUNCTION_14();
      *v17 = 0;
      _os_log_impl(&dword_223515000, v15, v16, "NetworkManager - CoreTelephony: No data service descriptor to get cellular interface.", v17, 2u);
      OUTLINED_FUNCTION_12();
    }
  }

  *v2 = 2;
  return result;
}

void OUTLINED_FUNCTION_101_0()
{

  JUMPOUT(0x223DE2180);
}

uint64_t OUTLINED_FUNCTION_101_1(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);

  return outlined init with copy of RPCOspreyConnectionProtocol(va1, va);
}

SiriNetwork::ConnectionType __swiftcall ConnectionType.init(fromCoreTelephonyeRATString:)(Swift::String fromCoreTelephonyeRATString)
{
  object = fromCoreTelephonyeRATString._object;
  v4 = v1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  v7 = v7 && v6 == object;
  if (v7)
  {

LABEL_8:

    v9 = 5;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46(v5);
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_8;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v11 == object)
  {

LABEL_17:

    v9 = 6;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46(v10);
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_17;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v14 == object)
  {

LABEL_25:

    v9 = 7;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46(v13);
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_25;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v17 == object)
  {

LABEL_33:

    v9 = 8;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46(v16);
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_33;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v20 == object)
  {

LABEL_41:

    v9 = 9;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46(v19);
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_41;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v23 == object)
  {

LABEL_49:

    v9 = 4;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46(v22);
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_49;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v26 == object)
  {

LABEL_57:

    v9 = 10;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46(v25);
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_57;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v29 == object)
  {

LABEL_65:

    v9 = 11;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46(v28);
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_65;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v32 == object)
  {

LABEL_73:

    v9 = 12;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46(v31);
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_73;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v35 == object)
  {

LABEL_81:

    v9 = 13;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46(v34);
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_81;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v38 == object)
  {

LABEL_89:

    v9 = 14;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46(v37);
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_89;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v41 == object)
  {

LABEL_97:

    v9 = 15;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46(v40);
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_97;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v44 == object)
  {

    v9 = 16;
  }

  else
  {
    v46 = OUTLINED_FUNCTION_0_46(v43);

    if (v46)
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }
  }

LABEL_9:
  *v4 = v9;
  return result;
}

uint64_t OUTLINED_FUNCTION_77_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 14) = a1;
  *v3 = a2;
  *(v2 + 22) = 1024;
}

void specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_67_1();
  v31 = v30;
  v32 = *v30;
  if ((*v30 & 0xC000000000000001) != 0)
  {
    if (v32 < 0)
    {
      v33 = *v30;
    }

    else
    {
      v33 = v32 & 0xFFFFFFFFFFFFFF8;
    }

    v34 = __CocoaSet.contains(_:)();

    if (v34)
    {
      specialized Set._Variant._migrateToNative(_:removing:)(v33);
    }

    else
    {
    }
  }

  else
  {
    Hasher.init(_seed:)();
    v35 = NWConnection.identifier.getter();
    MEMORY[0x223DE29A0](v35);
    Hasher._finalize()();
    OUTLINED_FUNCTION_18_8();
    v38 = ~v37;
    while (1)
    {
      v39 = v36 & v38;
      if (((*(v32 + 56 + (((v36 & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v36 & v38)) & 1) == 0)
      {
        break;
      }

      v40 = NWConnection.identifier.getter();
      v41 = NWConnection.identifier.getter();

      if (v40 == v41)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = *v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeSet.copy()();
        }

        specialized _NativeSet._delete(at:)(v39);
        *v31 = v43;
        break;
      }

      v36 = v39 + 1;
    }
  }

  OUTLINED_FUNCTION_66_3();
}

uint64_t getEnumTagSinglePayload for ConnectionPreparationReport(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 360))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 336);
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

uint64_t ConnectionPreparationReport.debugDescription.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = *v0;
  v3 = *(v0 + 8);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  v52 = *(v0 + 33);
  v49 = *(v0 + 34);
  v46 = *(v0 + 35);
  v43 = *(v0 + 36);
  v57 = *(v0 + 336);
  v59 = *(v0 + 344);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;

  _StringGuts.grow(_:)(17);

  OUTLINED_FUNCTION_2_30(0x697463656E6E6F63uLL);
  if (v3)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  v8 = 0xE700000000000000;
  if (!v3)
  {
    v3 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v7, v3);

  OUTLINED_FUNCTION_1_28();
  v60 = v10;
  v61 = v9;
  OUTLINED_FUNCTION_2_30(0x7461745368746170uLL);
  if (v4)
  {
    v11 = v5;
  }

  else
  {
    v11 = 0x6E776F6E6B6E75;
  }

  if (v4)
  {
    v12 = v4;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v11, v12);

  v56 = __dst[0];
  v58 = __dst[1];
  __dst[0] = 0x20534E44736168;
  __dst[1] = 0xE700000000000000;
  if (v6)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v6)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x223DE2180](v13, v14);

  OUTLINED_FUNCTION_1_28();
  v54 = v16;
  v55 = v15;
  OUTLINED_FUNCTION_2_30(0x736E657078457369uLL);
  v17 = OUTLINED_FUNCTION_3_26(v52);
  if (v18)
  {
    v19 = 0xE500000000000000;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  MEMORY[0x223DE2180](v17, v19);

  OUTLINED_FUNCTION_1_28();
  v51 = v21;
  v53 = v20;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  OUTLINED_FUNCTION_2_30(0x7274736E6F437369uLL);
  v22 = OUTLINED_FUNCTION_3_26(v49);
  if (v18)
  {
    v23 = 0xE500000000000000;
  }

  else
  {
    v23 = 0xE400000000000000;
  }

  MEMORY[0x223DE2180](v22, v23);

  OUTLINED_FUNCTION_1_28();
  v48 = v25;
  v50 = v24;
  __dst[0] = 0x2034767049736168;
  __dst[1] = 0xE800000000000000;
  v26 = OUTLINED_FUNCTION_3_26(v46);
  if (v18)
  {
    v27 = 0xE500000000000000;
  }

  else
  {
    v27 = 0xE400000000000000;
  }

  MEMORY[0x223DE2180](v26, v27);

  OUTLINED_FUNCTION_1_28();
  v45 = v29;
  v47 = v28;
  v68 = 0x2036767049736168;
  v69 = 0xE800000000000000;
  v30 = OUTLINED_FUNCTION_3_26(v43);
  if (v18)
  {
    v31 = 0xE500000000000000;
  }

  else
  {
    v31 = 0xE400000000000000;
  }

  MEMORY[0x223DE2180](v30, v31);

  v33 = v68;
  v32 = v69;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v65 = 0xD000000000000011;
  v66 = 0x80000002235F75E0;
  memcpy(__dst, (v0 + 40), 0x121uLL);
  if (_s11SiriNetwork25ConnectionInterfaceReportVSgWOg(__dst) != 1)
  {
    memcpy(v63, (v0 + 40), sizeof(v63));
    memcpy(v64, (v0 + 40), 0x121uLL);
    outlined init with copy of ConnectionInterfaceReport(v64, v62);
    v1 = String.init<A>(describing:)();
    v8 = v34;
  }

  MEMORY[0x223DE2180](v1, v8);

  v44 = v65;
  v35 = v66;
  v64[0] = 0;
  v64[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v64[0] = 0x65746E4968746170;
  v64[1] = 0xEF20736563616672;
  v36 = MEMORY[0x223DE2280](v57, &type metadata for ConnectionInterfaceReport);
  MEMORY[0x223DE2180](v36);

  v37 = v64[0];
  v38 = v64[1];
  strcpy(v64, "pathGateways ");
  HIWORD(v64[1]) = -4864;
  v39 = MEMORY[0x223DE2280](v59, &type metadata for ConnectionEndpointReport);
  MEMORY[0x223DE2180](v39);

  v40 = v64[0];
  v41 = v64[1];
  v64[0] = 0;
  v64[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(84);
  MEMORY[0x223DE2180](0xD00000000000002ELL, 0x80000002235F9620);
  MEMORY[0x223DE2180](v56, v58);

  OUTLINED_FUNCTION_0_51();
  MEMORY[0x223DE2180](v54, v55);

  OUTLINED_FUNCTION_0_51();
  MEMORY[0x223DE2180](v51, v53);

  OUTLINED_FUNCTION_0_51();
  MEMORY[0x223DE2180](v48, v50);

  OUTLINED_FUNCTION_0_51();
  MEMORY[0x223DE2180](v45, v47);

  OUTLINED_FUNCTION_0_51();
  MEMORY[0x223DE2180](v33, v32);

  OUTLINED_FUNCTION_0_51();
  MEMORY[0x223DE2180](v44, v35);

  OUTLINED_FUNCTION_0_51();
  MEMORY[0x223DE2180](v37, v38);

  OUTLINED_FUNCTION_0_51();
  MEMORY[0x223DE2180](v40, v41);

  OUTLINED_FUNCTION_0_51();
  MEMORY[0x223DE2180](v60, v61);

  return v64[0];
}

uint64_t closure #1 in NetworkConnectionProvider.closeWithError(_:)(uint64_t a1, void (*a2)(void **), uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      v16 = a4;
      v17 = 0u;
      v18 = 0u;
      v19 = 1;
      outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a2, a3);
      v9 = a4;
      a2(&v16);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(a2, a3);
      outlined consume of Result<(), NetworkConnectionError>(v16, v17, *(&v17 + 1), v18, *(&v18 + 1), v19);
    }

    else if (swift_unknownObjectWeakLoadStrong())
    {

      specialized BackgroundConnection.connectionProvider(_:received:)();
      swift_unknownObjectRelease();
    }

    v10 = *(v8 + 2144);
    NetworkAnalytics.setIsConnectionActive(_:)(0);

    v11 = *(v8 + 2144);
    NetworkAnalytics.setNetIdAvailable(_:)(0);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = *(result + 2064);
    v15 = *(v13 + 2072);
    *(v13 + 2064) = 0u;
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v14, v15);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t ConnectionEndpointReport.debugDescription.getter()
{
  MEMORY[0x223DE2180]();
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v0);

  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v1);

  _StringGuts.grow(_:)(55);
  MEMORY[0x223DE2180](0xD00000000000002CLL, 0x80000002235F7930);
  MEMORY[0x223DE2180](0x2074736F68, 0xE500000000000000);

  MEMORY[0x223DE2180](8236, 0xE200000000000000);
  MEMORY[0x223DE2180](0x2074726F70, 0xE500000000000000);

  MEMORY[0x223DE2180](8236, 0xE200000000000000);
  MEMORY[0x223DE2180](0x2065707974, 0xE500000000000000);

  MEMORY[0x223DE2180](93, 0xE100000000000000);
  return 0;
}

id ConnectionPreparationReport.netDebugConnectionStatePreparationSnapshot.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = *(v0 + 33);
  v5 = *(v0 + 34);
  v6 = *(v0 + 35);
  v7 = *(v0 + 36);
  v8 = v0[42];
  v38 = v0[43];
  v9 = [objc_allocWithZone(MEMORY[0x277D58B88]) init];
  v10 = v9;
  v40 = v9;
  if (v9)
  {
    v11 = v9;
    v12 = v2 ? MEMORY[0x223DE2070](v1, v2) : 0;
    [v10 setConnectionInfo_];

    if (v3)
    {
      type metadata accessor for NetworkAnalytics(0);
      v13 = v40;
      v10 = v40;
      [v13 setStatus_];
    }
  }

  v14 = v10;
  [v14 setIsConstrained_];
  [v14 setIsExpensive_];
  [v14 setHasIpv4_];
  [v14 setHasIpv6_];

  v15 = *(v8 + 16);
  v16 = MEMORY[0x277D84F90];
  v39 = v14;
  if (v15)
  {
    v17 = (v8 + 32);
    v43 = MEMORY[0x277D84F90];
    v18 = v15 - 1;
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      memcpy(__dst, v17, 0x121uLL);
      v20 = objc_allocWithZone(MEMORY[0x277D58BF8]);
      outlined init with copy of ConnectionInterfaceReport(__dst, v41);
      v21 = [v20 init];
      if (v21)
      {
        v22 = __dst[0];
        v23 = __dst[1];
        v24 = v21;
        outlined bridged method (mbgnn) of @objc NETSchemaNETPathInterface.name.setter(v22, v23, v24);

        [v24 setIndex_];
        type metadata accessor for NetworkAnalytics(0);
        v25 = v24;
        [v25 setType_];

        outlined destroy of ConnectionInterfaceReport(__dst);
        v26 = v25;
        MEMORY[0x223DE2240]();
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v19 = v43;
        if (!v18)
        {
LABEL_16:
          if (v40)
          {
            v27 = v19;
            v14 = v39;
            outlined bridged method (mbnn) of @objc NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured.pathGateways.setter(v27, v39, &lazy cache variable for type metadata for NETSchemaNETPathInterface, 0x277D58BF8, &selRef_setPathInterfaces_);
          }

          else
          {

            v14 = v39;
          }

          break;
        }
      }

      else
      {
        [0 setIndex_];
        outlined destroy of ConnectionInterfaceReport(__dst);
        if (!v18)
        {
          goto LABEL_16;
        }
      }

      --v18;
      v17 += 296;
    }
  }

  v28 = *(v38 + 16);
  if (v28)
  {
    __dst[0] = v16;
    v29 = (v38 + 52);
    do
    {
      v31 = *(v29 - 1);
      v30 = *v29;
      v32 = objc_allocWithZone(MEMORY[0x277D58BC0]);

      v33 = [v32 init];
      [v33 setPort_];
      if (v33)
      {
        type metadata accessor for NetworkAnalytics(0);
        v34 = static NetworkAnalytics.netEndpointType(from:)(v30);
        v35 = v33;
        [v35 setType_];

        v36 = v35;
        MEMORY[0x223DE2240]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v16 = __dst[0];
      }

      else
      {
      }

      v29 += 6;
      --v28;
    }

    while (v28);
    if (v40)
    {
      v14 = v39;
      outlined bridged method (mbnn) of @objc NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured.pathGateways.setter(v16, v39, &lazy cache variable for type metadata for NETSchemaNETEndpoint, 0x277D58BC0, &selRef_setPathGateways_);
    }

    else
    {

      return v39;
    }
  }

  return v14;
}

uint64_t static NetworkAnalytics.netPathStatus(from:)()
{
  v1 = String.lowercased()();
  String.lowercased()();
  OUTLINED_FUNCTION_9_17();
  v4 = v4 && v3 == v1._object;
  if (v4)
  {

LABEL_8:

    return 2;
  }

  OUTLINED_FUNCTION_3_30(v2);
  OUTLINED_FUNCTION_15_11();
  if (v0)
  {
    goto LABEL_8;
  }

  String.lowercased()();
  OUTLINED_FUNCTION_9_17();
  if (v4 && v7 == v1._object)
  {

LABEL_16:

    return 3;
  }

  OUTLINED_FUNCTION_3_30(v6);
  OUTLINED_FUNCTION_15_11();
  if (v0)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_7_21();
  String.lowercased()();
  OUTLINED_FUNCTION_9_17();
  if (v4 && v10 == v1._object)
  {

    return 4;
  }

  else
  {
    OUTLINED_FUNCTION_3_30(v9);
    OUTLINED_FUNCTION_12_11();

    if (v1._countAndFlagsBits)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }
}

void outlined bridged method (mbgnn) of @objc NETSchemaNETPathInterface.name.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x223DE2070](a1, a2);
  [a3 setName_];
}

uint64_t static NetworkAnalytics.netPathType(from:)()
{
  v1 = String.lowercased()();
  String.lowercased()();
  OUTLINED_FUNCTION_9_17();
  v4 = v4 && v3 == v1._object;
  if (v4)
  {

LABEL_8:

    return 0;
  }

  OUTLINED_FUNCTION_3_30(v2);
  OUTLINED_FUNCTION_15_11();
  if (v0)
  {
    goto LABEL_8;
  }

  String.lowercased()();
  OUTLINED_FUNCTION_9_17();
  if (v4 && v7 == v1._object)
  {

LABEL_16:

    return 1;
  }

  OUTLINED_FUNCTION_3_30(v6);
  OUTLINED_FUNCTION_15_11();
  if (v0)
  {
    goto LABEL_16;
  }

  String.lowercased()();
  OUTLINED_FUNCTION_9_17();
  if (v4 && v10 == v1._object)
  {

LABEL_24:

    return 2;
  }

  OUTLINED_FUNCTION_3_30(v9);
  OUTLINED_FUNCTION_15_11();
  if (v0)
  {
    goto LABEL_24;
  }

  String.lowercased()();
  OUTLINED_FUNCTION_9_17();
  if (v4 && v13 == v1._object)
  {

LABEL_32:

    return 3;
  }

  OUTLINED_FUNCTION_3_30(v12);
  OUTLINED_FUNCTION_15_11();
  if (v0)
  {
    goto LABEL_32;
  }

  String.lowercased()();
  OUTLINED_FUNCTION_9_17();
  if (v4 && v16 == v1._object)
  {

    return 4;
  }

  else
  {
    OUTLINED_FUNCTION_3_30(v15);
    OUTLINED_FUNCTION_12_11();

    if (v1._countAndFlagsBits)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t NetworkConnectionProvider.__deallocating_deinit()
{
  NetworkConnectionProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 2176, 7);
}

uint64_t NetworkConnectionProvider.deinit()
{
  v1 = v0;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriNetwork);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_223515000, v3, v4, "Provider - NetworkConnectionProvider: Deallocating.", v5, 2u);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  NetworkConnectionProvider.configureConnectionHandler(_:)(0);
  *(v1 + 1512) = 0;
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_96();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v6, v7);
  specialized ConnectionProviderProtocol.cancelOpenTimer()();
  specialized ConnectionProviderProtocol.cancelOpenSlowTimer()();
  specialized ConnectionProviderProtocol.cancelStaleConnectionTimer()();
  specialized ConnectionProviderProtocol.cancelConnectionUnviableTimer()();
  NetworkConnectionProvider.closeWithError(_:)();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_223515000, v8, v9, "Provider - NetworkConnectionProvider: Deallocated.", v10, 2u);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  outlined destroy of NetworkConnectionProtocol?(v1 + 16, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  memcpy(v12, (v1 + 56), 0x599uLL);
  outlined destroy of ConnectionMetrics(v12);

  outlined destroy of weak ConnectionProviderDelegate?(v1 + 1504);
  outlined consume of ConnectionProviderState(*(v1 + 1520), *(v1 + 1528));
  memcpy(__dst, (v1 + 1536), 0x204uLL);
  outlined destroy of ConnectionConfiguration(__dst);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(*(v1 + 2064), *(v1 + 2072));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v1;
}

void outlined bridged method (mbnn) of @objc NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured.pathGateways.setter(uint64_t a1, void *a2, unint64_t *a3, void *a4, SEL *a5)
{
  type metadata accessor for CTServiceDescriptor(0, a3, a4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 *a5];
}

unint64_t lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError()
{
  result = lazy protocol witness table cache variable for type NetworkConnectionError and conformance NetworkConnectionError;
  if (!lazy protocol witness table cache variable for type NetworkConnectionError and conformance NetworkConnectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkConnectionError and conformance NetworkConnectionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkConnectionError and conformance NetworkConnectionError;
  if (!lazy protocol witness table cache variable for type NetworkConnectionError and conformance NetworkConnectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkConnectionError and conformance NetworkConnectionError);
  }

  return result;
}

uint64_t static NetworkAnalytics.netEndpointType(from:)(unsigned int a1)
{
  if (a1 < 5)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t get_enum_tag_for_layout_string_11SiriNetwork0B15ConnectionErrorO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >> 61 <= 4)
  {
    return v1 >> 60;
  }

  else
  {
    return (*a1 + 10);
  }
}

void closure #1 in NetworkAnalytics.logNetworkConnectionStatePreparationSnapshotCaptured(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const char *a21)
{
  OUTLINED_FUNCTION_46();
  v187 = v22;
  v24 = v23;
  v185 = v25;
  v190 = v26;
  v197 = v27;
  v194 = v28;
  v191 = v29;
  v31 = v30;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  OUTLINED_FUNCTION_71();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v33);
  v35 = &v176[-v34];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v37 = OUTLINED_FUNCTION_11_1(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_50_0();
  v196 = v40;
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v176[-v43];
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v176[-v46];
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_51_0();
  MEMORY[0x28223BE20](v48);
  v50 = &v176[-v49];
  v51 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_0();
  v199 = v52;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_50_0();
  v195 = v55;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_14_2();
  v58 = MEMORY[0x28223BE20](v57);
  v60 = &v176[-v59];
  MEMORY[0x28223BE20](v58);
  v62 = &v176[-v61];
  OUTLINED_FUNCTION_40_1(v31 + 16, &v204);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_48;
  }

  v184 = v24;
  v64 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
  v65 = Strong;
  OUTLINED_FUNCTION_40_1(Strong + OBJC_IVAR___SNNetworkAnalyticsInternal_netId, &v203);
  outlined init with copy of UUID?(&v65[v64], v50);
  if (__swift_getEnumTagSinglePayload(v50, 1, v51) != 1)
  {
    v180 = v60;
    v70 = v199;
    v71 = *(v199 + 32);
    v179 = v199 + 32;
    v178 = v71;
    v71(v62, v50, v51);
    v72 = *v197;
    v197 = v65;
    v73 = &v65[v72];
    swift_beginAccess();
    v74 = v70;
    v75 = v51;
    v76 = *(v74 + 16);
    v181 = v62;
    v183 = v76;
    v76(v21, v62, v51);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v51);
    v77 = v198[12];
    v182 = v73;
    outlined init with copy of UUID?(v73, v35);
    outlined init with copy of UUID?(v21, &v35[v77]);
    OUTLINED_FUNCTION_18_4(v35);
    if (v79)
    {
      outlined destroy of NetworkConnectionProtocol?(v21, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
      OUTLINED_FUNCTION_18_4(&v35[v77]);
      if (v79)
      {
        outlined destroy of NetworkConnectionProtocol?(v35, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_49_2();
        v78 = v181;
LABEL_24:
        if (one-time initialization token for siriNetwork != -1)
        {
          OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
        }

        v111 = type metadata accessor for Logger();
        __swift_project_value_buffer(v111, static Logger.siriNetwork);
        v112 = v189;
        (v21)(v189, v78, v75);
        v113 = Logger.logObject.getter();
        v114 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = OUTLINED_FUNCTION_55();
          v116 = v75;
          v117 = OUTLINED_FUNCTION_54();
          v202[0] = v117;
          *v115 = 136315138;
          OUTLINED_FUNCTION_6_10();
          lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v118, v119, MEMORY[0x277CC9628]);
          v120 = dispatch thunk of CustomStringConvertible.description.getter();
          v122 = v121;
          v123 = *(v199 + 8);
          v123(v112, v116);
          v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v122, v202);

          *(v115 + 4) = v124;
          _os_log_impl(&dword_223515000, v113, v114, v187, v115, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v117);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_12();

          v125 = v181;
          v126 = v116;
LABEL_37:
          v123(v125, v126);
          goto LABEL_48;
        }

        v152 = *(v199 + 8);
        v152(v112, v75);
LABEL_47:
        v152(v78, v75);
        goto LABEL_48;
      }
    }

    else
    {
      outlined init with copy of UUID?(v35, v47);
      OUTLINED_FUNCTION_18_4(&v35[v77]);
      v80 = v180;
      if (!v79)
      {
        OUTLINED_FUNCTION_37_0();
        v103();
        OUTLINED_FUNCTION_6_10();
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v104, v105, MEMORY[0x277CC9610]);
        OUTLINED_FUNCTION_47_0();
        v177 = dispatch thunk of static Equatable.== infix(_:_:)();
        v106 = *(v199 + 8);
        (v106)(v80, v75);
        v107 = OUTLINED_FUNCTION_31_1();
        v21 = v108;
        outlined destroy of NetworkConnectionProtocol?(v107, v109, v108);
        v110 = OUTLINED_FUNCTION_48();
        v106(v110);
        v78 = v62;
        outlined destroy of NetworkConnectionProtocol?(v35, &_s10Foundation4UUIDVSgMd, v21);
        OUTLINED_FUNCTION_49_2();
        if (v177)
        {
          goto LABEL_24;
        }

LABEL_17:
        v83 = OUTLINED_FUNCTION_22_3();
        (v21)(v83);
        OUTLINED_FUNCTION_41_2(v44);
        v84 = v182;
        swift_beginAccess();
        outlined assign with take of UUID?(v44, v84);
        swift_endAccess();
        v85 = OUTLINED_FUNCTION_22_3();
        (v21)(v85);
        OUTLINED_FUNCTION_41_2(v44);
        v86 = OBJC_IVAR___SNNetworkAnalyticsInternal_networkConnectionId;
        v87 = v197;
        OUTLINED_FUNCTION_40_1(&v197[OBJC_IVAR___SNNetworkAnalyticsInternal_networkConnectionId], v202);
        outlined init with copy of UUID?(&v87[v86], v196);
        v201 = v87[OBJC_IVAR___SNNetworkAnalyticsInternal_connectionProvider + 4];
        NetworkAnalytics.createSchemaClientEventFrom(netId:networkConnectionId:connectionProvider:)();
        v89 = v88;
        OUTLINED_FUNCTION_29_3();
        outlined destroy of NetworkConnectionProtocol?(v90, v91, v92);
        OUTLINED_FUNCTION_29_3();
        outlined destroy of NetworkConnectionProtocol?(v93, v94, v95);
        if (!v89)
        {
          (*(v199 + 8))(v78, v75);

          goto LABEL_48;
        }

        v96 = *v190;
        v196 = v89;
        [v89 v96];
        v97 = OBJC_IVAR___SNNetworkAnalyticsInternal_netIdForRequestLink;
        OUTLINED_FUNCTION_40_1(&v87[OBJC_IVAR___SNNetworkAnalyticsInternal_netIdForRequestLink], &v201);
        v98 = v192;
        (v21)(v192, v78, v75);
        OUTLINED_FUNCTION_41_2(v98);
        v99 = v198[12];
        v100 = v193;
        outlined init with copy of UUID?(&v87[v97], v193);
        outlined init with copy of UUID?(v98, v100 + v99);
        OUTLINED_FUNCTION_18_4(v100);
        if (v79)
        {
          outlined destroy of NetworkConnectionProtocol?(v98, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
          OUTLINED_FUNCTION_18_4(v100 + v99);
          v101 = v195;
          if (v79)
          {
            outlined destroy of NetworkConnectionProtocol?(v100, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
            v102 = v196;
LABEL_41:
            v160 = *(type metadata accessor for NetworkAnalyticsEventMessage(0) + 20);
            v161 = *(v182 + v160);
            *(v182 + v160) = 0;

            [*&v197[OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream] emitMessage:v102 timestamp:v194];
            if (one-time initialization token for siriNetwork != -1)
            {
              OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
            }

            v162 = type metadata accessor for Logger();
            __swift_project_value_buffer(v162, static Logger.siriNetwork);
            v101 = v186;
            v163 = OUTLINED_FUNCTION_22_3();
            (v21)(v163);
            v164 = Logger.logObject.getter();
            v165 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v164, v165))
            {
              v166 = OUTLINED_FUNCTION_55();
              v167 = OUTLINED_FUNCTION_54();
              v200 = v167;
              *v166 = 136315138;
              OUTLINED_FUNCTION_6_10();
              lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v168, v169, MEMORY[0x277CC9628]);
              v170 = dispatch thunk of CustomStringConvertible.description.getter();
              v171 = v75;
              v173 = v172;
              v174 = *(v199 + 8);
              v174(v101, v171);
              v175 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v170, v173, &v200);

              *(v166 + 4) = v175;
              _os_log_impl(&dword_223515000, v164, v165, v185, v166, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v167);
              OUTLINED_FUNCTION_12();
              OUTLINED_FUNCTION_12();

              v174(v181, v171);
              goto LABEL_48;
            }

LABEL_46:
            v152 = *(v199 + 8);
            v152(v101, v75);
            goto LABEL_47;
          }
        }

        else
        {
          outlined init with copy of UUID?(v100, v188);
          OUTLINED_FUNCTION_18_4(v100 + v99);
          v101 = v195;
          if (!v127)
          {
            v153 = v180;
            OUTLINED_FUNCTION_37_0();
            v154();
            OUTLINED_FUNCTION_6_10();
            lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v155, v156, MEMORY[0x277CC9610]);
            OUTLINED_FUNCTION_47_0();
            v157 = dispatch thunk of static Equatable.== infix(_:_:)();
            v21 = *(v199 + 8);
            v158 = v153;
            v101 = v195;
            (v21)(v158, v75);
            outlined destroy of NetworkConnectionProtocol?(v98, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
            v159 = OUTLINED_FUNCTION_48();
            (v21)(v159);
            OUTLINED_FUNCTION_49_2();
            outlined destroy of NetworkConnectionProtocol?(v100, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
            v102 = v196;
            if (v157)
            {
              goto LABEL_41;
            }

LABEL_33:
            v130 = type metadata accessor for NetworkAnalyticsEventMessage(0);
            v131 = *(v130 + 20);
            v132 = v182;
            v133 = *(v182 + v131);
            *(v182 + v131) = v102;
            v134 = v132 + *(v130 + 24);
            *v134 = v194;
            *(v134 + 8) = 0;
            v135 = v102;

            if (one-time initialization token for siriNetwork != -1)
            {
              OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
            }

            v136 = type metadata accessor for Logger();
            __swift_project_value_buffer(v136, static Logger.siriNetwork);
            v137 = OUTLINED_FUNCTION_22_3();
            (v21)(v137);
            v138 = Logger.logObject.getter();
            v139 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v138, v139))
            {
              v140 = OUTLINED_FUNCTION_55();
              v141 = OUTLINED_FUNCTION_54();
              v198 = v135;
              v142 = v75;
              v143 = v141;
              v200 = v141;
              *v140 = 136315138;
              OUTLINED_FUNCTION_6_10();
              lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v144, v145, MEMORY[0x277CC9628]);
              v146 = dispatch thunk of CustomStringConvertible.description.getter();
              v147 = v78;
              v149 = v148;
              v150 = v101;
              v123 = *(v199 + 8);
              v123(v150, v142);
              v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v149, &v200);

              *(v140 + 4) = v151;
              _os_log_impl(&dword_223515000, v138, v139, v184, v140, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v143);
              OUTLINED_FUNCTION_12();
              OUTLINED_FUNCTION_12();

              v125 = v147;
              v126 = v142;
              goto LABEL_37;
            }

            goto LABEL_46;
          }

          outlined destroy of NetworkConnectionProtocol?(v98, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
          v128 = OUTLINED_FUNCTION_48();
          v129(v128);
        }

        outlined destroy of NetworkConnectionProtocol?(v100, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
        v102 = v196;
        goto LABEL_33;
      }

      outlined destroy of NetworkConnectionProtocol?(v21, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
      v81 = OUTLINED_FUNCTION_48();
      v82(v81);
    }

    outlined destroy of NetworkConnectionProtocol?(v35, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    OUTLINED_FUNCTION_49_2();
    v78 = v181;
    goto LABEL_17;
  }

  outlined destroy of NetworkConnectionProtocol?(v50, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
  }

  v66 = type metadata accessor for Logger();
  __swift_project_value_buffer(v66, static Logger.siriNetwork);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_223515000, v67, v68, a21, v69, 2u);
    OUTLINED_FUNCTION_12();
  }

LABEL_48:
  OUTLINED_FUNCTION_47();
}

uint64_t NetworkConnectionProvider.StateUpdateHandler.__deallocating_deinit()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void NetworkAnalytics.createSchemaClientEventFrom(netId:networkConnectionId:connectionProvider:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v7 = OUTLINED_FUNCTION_11_1(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9();
  v20 = (v18 - v19);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v45 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v45 - v25;
  outlined init with copy of UUID?(v5, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    outlined destroy of NetworkConnectionProtocol?(v13, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    goto LABEL_24;
  }

  v46 = v20;
  v47 = v3;
  v49 = v1;
  v50 = v26;
  v45 = *(v16 + 32);
  v45(v26, v13, v14);
  v27 = [objc_allocWithZone(MEMORY[0x277D58B78]) init];
  if (v27)
  {
    v28 = objc_allocWithZone(MEMORY[0x277D58B80]);
    v29 = v27;
    v30 = [v28 init];
    [v29 setEventMetadata_];
  }

  type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC78);
  v48 = v16;
  v31 = *(v16 + 16);
  v31(v24, v50, v14);
  v32 = SISchemaUUID.__allocating_init(nsuuid:)(v24);
  if (v27)
  {
    v33 = [v27 eventMetadata];
    if (v33)
    {
      v34 = v33;
      [v33 setNetId_];
    }
  }

  outlined init with copy of UUID?(v47, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v14) == 1)
  {
    outlined destroy of NetworkConnectionProtocol?(v10, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    v35 = v49;
    v36 = v50;
    v37 = v48;
    if ((v49 & 0x100000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v44 = *(v37 + 8);
    goto LABEL_21;
  }

  v47 = v32;
  v40 = v46;
  v45(v46, v10, v14);
  v31(v24, v40, v14);
  v41 = SISchemaUUID.__allocating_init(nsuuid:)(v24);
  if (!v27)
  {
    v44 = *(v48 + 8);
    v44(v40, v14);

    v36 = v50;
    v32 = v47;
LABEL_21:
    v44(v36, v14);

    goto LABEL_24;
  }

  v42 = [v27 eventMetadata];
  v36 = v50;
  v37 = v48;
  if (v42)
  {
    v43 = v42;
    [v42 setNetworkConnectionId_];
  }

  else
  {
  }

  (*(v37 + 8))(v46, v14);
  v35 = v49;
  v32 = v47;
  if ((v49 & 0x100000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (!v27)
  {
    v44 = *(v37 + 8);
    goto LABEL_21;
  }

  v38 = [v27 eventMetadata];
  if (v38)
  {
    v39 = v38;
    [v38 setProvider_];
  }

  else
  {
  }

  (*(v37 + 8))(v36, v14);
LABEL_24:
  OUTLINED_FUNCTION_47();
}

id SISchemaUUID.__allocating_init(nsuuid:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithNSUUID_];

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t objectdestroy_111Tm()
{

  OUTLINED_FUNCTION_109();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void partial apply for specialized closure #1 in ConnectionProviderProtocol.openCompletionSetup(completion:)(__int128 *a1)
{
  specialized closure #1 in ConnectionProviderProtocol.openCompletionSetup(completion:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  specialized closure #1 in ConnectionProviderProtocol.openCompletionSetup(completion:)(a1, *(v1 + 16), *(v1 + 24));
}

void specialized closure #1 in ConnectionProviderProtocol.openCompletionSetup(completion:)(__int128 *a1, uint64_t a2, void (*a3)(__int128 *))
{
  v3 = a1[1];
  v4 = *a1;
  v5[0] = v3;
  *(v5 + 9) = *(a1 + 25);
  specialized closure #1 in ConnectionProviderProtocol.openCompletionSetup(completion:)(&v4, a2, a3);
}

{
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 4);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    specialized ConnectionProviderProtocol.cancelOpenTimer()();
    specialized ConnectionProviderProtocol.cancelOpenSlowTimer()();
    if (*(a1 + 40))
    {
      v51 = a3;
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v12 = swift_allocError();
      *v13 = v5;
      v13[1] = v6;
      v13[2] = v7;
      v13[3] = v8;
      v13[4] = v9;
      v14 = *(v11 + 1520);
      *(v11 + 1520) = v12;
      v15 = *(v11 + 1528);
      *(v11 + 1528) = 1;
      v50 = v5;
      outlined copy of NetworkConnectionError(v5, v6, v7, v8, v9);
      outlined consume of ConnectionProviderState(v14, v15);
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.siriNetwork);

      outlined init with copy of NetworkConnectionProtocol?(a1, &v53, &_ss6ResultOyyt11SiriNetwork0C15ConnectionErrorOGMd, &_ss6ResultOyyt11SiriNetwork0C15ConnectionErrorOGMR);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      outlined destroy of NetworkConnectionProtocol?(a1, &_ss6ResultOyyt11SiriNetwork0C15ConnectionErrorOGMd, &_ss6ResultOyyt11SiriNetwork0C15ConnectionErrorOGMR);
      v49 = v18;
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v52 = v20;
        *v19 = 136315650;
        v21 = _typeName(_:qualified:)();
        log = v17;
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v52);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2080;
        v24 = NetworkConnectionProvider.connectionIdentifier.getter();
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v52);

        *(v19 + 14) = v26;
        *(v19 + 22) = 2080;
        v27 = v50;
        *&v53 = v50;
        *(&v53 + 1) = v6;
        *v54 = v7;
        *&v54[8] = v8;
        *&v54[16] = v9;
        outlined copy of NetworkConnectionError(v50, v6, v7, v8, v9);
        v28 = String.init<A>(describing:)();
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v52);

        *(v19 + 24) = v30;
        _os_log_impl(&dword_223515000, log, v49, "Provider - %s [%s]: Open Completion error. %s", v19, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223DE38F0](v20, -1, -1);
        MEMORY[0x223DE38F0](v19, -1, -1);

        v31 = v51;
      }

      else
      {

        v31 = a3;
        v27 = v50;
      }

      *&v53 = v27;
      *(&v53 + 1) = v6;
      *v54 = v7;
      *&v54[8] = v8;
      *&v54[16] = v9;
      v54[24] = 1;
      outlined copy of NetworkConnectionError(v27, v6, v7, v8, v9);
      v31(&v53);

      outlined consume of Result<(), NetworkConnectionError>(v53, *(&v53 + 1), *v54, *&v54[8], *&v54[16], v54[24]);
    }

    else
    {
      v32 = *(v11 + 1520);
      *(v11 + 1520) = 2;
      v33 = *(v11 + 1528);
      *(v11 + 1528) = 2;
      outlined consume of ConnectionProviderState(v32, v33);
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.siriNetwork);

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = a3;
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *&v53 = v39;
        *v38 = 136315394;
        v40 = _typeName(_:qualified:)();
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v53);

        *(v38 + 4) = v42;
        *(v38 + 12) = 2080;
        v43 = NetworkConnectionProvider.connectionIdentifier.getter();
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v53);

        *(v38 + 14) = v45;
        _os_log_impl(&dword_223515000, v35, v36, "Provider - %s [%s]: Connection ready.", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE38F0](v39, -1, -1);
        v46 = v38;
        a3 = v37;
        MEMORY[0x223DE38F0](v46, -1, -1);
      }

      v47 = a1[1];
      v53 = *a1;
      *v54 = v47;
      *&v54[9] = *(a1 + 25);
      a3(&v53);
    }
  }
}

{
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 4);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v49 = a3;
    specialized ConnectionProviderProtocol.cancelOpenTimer()();
    specialized ConnectionProviderProtocol.cancelOpenSlowTimer()();
    if (*(a1 + 40))
    {
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v12 = swift_allocError();
      *v13 = v5;
      v13[1] = v6;
      v13[2] = v7;
      v13[3] = v8;
      v13[4] = v9;
      v14 = *(v11 + 1536);
      *(v11 + 1536) = v12;
      v15 = *(v11 + 1544);
      *(v11 + 1544) = 1;
      v48 = v5;
      outlined copy of NetworkConnectionError(v5, v6, v7, v8, v9);
      outlined consume of ConnectionProviderState(v14, v15);
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.siriNetwork);

      outlined init with copy of NetworkConnectionProtocol?(a1, &v51, &_ss6ResultOyyt11SiriNetwork0C15ConnectionErrorOGMd, &_ss6ResultOyyt11SiriNetwork0C15ConnectionErrorOGMR);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      outlined destroy of NetworkConnectionProtocol?(a1, &_ss6ResultOyyt11SiriNetwork0C15ConnectionErrorOGMd, &_ss6ResultOyyt11SiriNetwork0C15ConnectionErrorOGMR);
      v47 = v18;
      v19 = v18;
      v20 = v17;
      if (os_log_type_enabled(v17, v19))
      {
        v21 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v50 = v46;
        *v21 = 136315650;
        v22 = _typeName(_:qualified:)();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v50);

        *(v21 + 4) = v24;
        *(v21 + 12) = 2080;
        v25 = *(v11 + 16);
        v26 = *(v11 + 24);

        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v50);

        *(v21 + 14) = v27;
        *(v21 + 22) = 2080;
        v28 = v48;
        *&v51 = v48;
        *(&v51 + 1) = v6;
        *v52 = v7;
        *&v52[8] = v8;
        *&v52[16] = v9;
        outlined copy of NetworkConnectionError(v48, v6, v7, v8, v9);
        v29 = String.init<A>(describing:)();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v50);

        *(v21 + 24) = v31;
        _os_log_impl(&dword_223515000, v20, v47, "Provider - %s [%s]: Open Completion error. %s", v21, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223DE38F0](v46, -1, -1);
        MEMORY[0x223DE38F0](v21, -1, -1);
      }

      else
      {

        v28 = v48;
      }

      *&v51 = v28;
      *(&v51 + 1) = v6;
      *v52 = v7;
      *&v52[8] = v8;
      *&v52[16] = v9;
      v52[24] = 1;
      outlined copy of NetworkConnectionError(v28, v6, v7, v8, v9);
      v49(&v51);

      outlined consume of Result<(), NetworkConnectionError>(v51, *(&v51 + 1), *v52, *&v52[8], *&v52[16], v52[24]);
    }

    else
    {
      v32 = *(v11 + 1536);
      *(v11 + 1536) = 2;
      v33 = *(v11 + 1544);
      *(v11 + 1544) = 2;
      outlined consume of ConnectionProviderState(v32, v33);
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.siriNetwork);

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *&v51 = v38;
        *v37 = 136315394;
        v39 = _typeName(_:qualified:)();
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v51);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2080;
        v42 = *(v11 + 16);
        v43 = *(v11 + 24);

        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v51);

        *(v37 + 14) = v44;
        _os_log_impl(&dword_223515000, v35, v36, "Provider - %s [%s]: Connection ready.", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE38F0](v38, -1, -1);
        MEMORY[0x223DE38F0](v37, -1, -1);
      }

      v45 = a1[1];
      v51 = *a1;
      *v52 = v45;
      *&v52[9] = *(a1 + 25);
      v49(&v51);
    }
  }
}

{
  v3 = a1[1];
  v4 = *a1;
  v5[0] = v3;
  *(v5 + 9) = *(a1 + 25);
  specialized closure #1 in ConnectionProviderProtocol.openCompletionSetup(completion:)(&v4, a2, a3);
}

void specialized closure #2 in BackgroundConnection.start(proposedFallbackMethod:allowFallbackToNewMethod:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v73 = *a1;
  v13 = *(a1 + 2);
  v12 = *(a1 + 3);
  v14 = *(a1 + 4);
  v15 = *(a1 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    *&v69 = v13;
    *(&v69 + 1) = v12;
    if (one-time initialization token for connectionOpen != -1)
    {
      swift_once();
    }

    siri_kdebug_trace(static Constants.Signposts.connectionOpen);
    v18 = *(v17 + 1080);
    if (v18 && (v19 = *(v17 + 1088), v20 = swift_getObjectType(), v18 == a3))
    {
      if (v15)
      {
        v25 = *(&v73 + 1);
        v26 = v73;
        v79 = v73;
        v27 = *(&v69 + 1);
        v80 = v69;
        v81 = v14;
        if (AFDeviceSupportsSiriUOD() && (*(&v69 + 1) & 0xF000000000000000) == 0x1000000000000000)
        {
          if (one-time initialization token for siriNetwork != -1)
          {
            swift_once();
          }

          v28 = type metadata accessor for Logger();
          __swift_project_value_buffer(v28, static Logger.siriNetwork);
          outlined copy of NetworkConnectionError(v73, *(&v73 + 1), v69, *(&v69 + 1), v14);
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.error.getter();
          outlined consume of Result<(), NetworkConnectionError>(v73, *(&v73 + 1), v69, *(&v69 + 1), v14, 1);
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            *v31 = 138412290;
            lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
            swift_allocError();
            v33 = v81;
            v34 = v80;
            *v35 = v79;
            *(v35 + 16) = v34;
            *(v35 + 32) = v33;
            outlined copy of NetworkConnectionError(v73, *(&v73 + 1), v69, *(&v69 + 1), v14);
            v26 = v73;
            v36 = _swift_stdlib_bridgeErrorToNSError();
            *(v31 + 4) = v36;
            *v32 = v36;
            _os_log_impl(&dword_223515000, v29, v30, "Background Connection - Provider: Connection failed. Error: (%@), but device support UOD.", v31, 0xCu);
            outlined destroy of NetworkConnectionProtocol?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v37 = v32;
            v25 = *(&v73 + 1);
            MEMORY[0x223DE38F0](v37, -1, -1);
            v38 = v31;
            v27 = *(&v69 + 1);
            MEMORY[0x223DE38F0](v38, -1, -1);
          }

          lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
          v39 = swift_allocError();
          v40 = v81;
          v41 = v80;
          *v42 = v79;
          *(v42 + 16) = v41;
          *(v42 + 32) = v40;
          outlined copy of NetworkConnectionError(v26, v25, v69, v27, v14);
          BackgroundConnection.didEncounterError(_:)(v39);

          *(v17 + 1187) = 0;
        }

        else
        {
          if (*(v17 + 1080))
          {
            v53 = *(v17 + 1088);
            ObjectType = swift_getObjectType();
            v55 = *(v53 + 184);
            swift_unknownObjectRetain();
            v56 = ObjectType;
            v27 = *(&v69 + 1);
            v55(0, 0, v56, v53);
            v25 = *(&v73 + 1);
            v26 = v73;
            swift_unknownObjectRelease();
          }

          if (one-time initialization token for siriNetwork != -1)
          {
            swift_once();
          }

          v57 = type metadata accessor for Logger();
          __swift_project_value_buffer(v57, static Logger.siriNetwork);

          outlined copy of Result<(), NetworkConnectionError>(v26, v25, v69, v27, v14, 1);

          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.default.getter();
          outlined consume of Result<(), NetworkConnectionError>(v26, v25, v69, v27, v14, 1);
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v75[0] = v72;
            *v60 = 136315394;
            v76 = v79;
            v77 = v80;
            v78 = v81;
            outlined copy of NetworkConnectionError(v26, v25, v69, *(&v69 + 1), v14);
            v61 = String.init<A>(describing:)();
            v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v75);

            *(v60 + 4) = v63;
            *(v60 + 12) = 1024;
            v64 = *(v17 + 1186);

            *(v60 + 14) = v64;

            _os_log_impl(&dword_223515000, v58, v59, "Background Connection - Provider. Connection failed. Error: %s. Connection was Cancelled: %{BOOL}d", v60, 0x12u);
            __swift_destroy_boxed_opaque_existential_0(v72);
            MEMORY[0x223DE38F0](v72, -1, -1);
            MEMORY[0x223DE38F0](v60, -1, -1);
          }

          else
          {
          }

          if ((*(v17 + 1186) & 1) == 0)
          {
            lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
            v65 = swift_allocError();
            v66 = v81;
            v67 = v80;
            *v68 = v79;
            *(v68 + 16) = v67;
            *(v68 + 32) = v66;
            swift_allocObject();
            swift_beginAccess();
            swift_weakLoadStrong();
            swift_weakInit();
            outlined copy of NetworkConnectionError(v73, *(&v73 + 1), v69, *(&v69 + 1), v14);

            outlined copy of Result<(), NetworkConnectionError>(v73, *(&v73 + 1), v69, *(&v69 + 1), v14, 1);

            outlined copy of Result<(), NetworkConnectionError>(v73, *(&v73 + 1), v69, *(&v69 + 1), v14, 1);

            specialized BackgroundConnection.fallbackToNextConnectionMethodWithError(_:with:)();

            outlined consume of Result<(), NetworkConnectionError>(v73, *(&v73 + 1), v69, *(&v69 + 1), v14, 1);

            return;
          }
        }
      }

      else
      {
        v74 = v20;
        v43 = swift_getObjectType();
        v44 = *(v19 + 184);
        swift_unknownObjectRetain();
        v44(0, 0, v43, v19);
        swift_unknownObjectRelease();
        if (one-time initialization token for siriNetwork != -1)
        {
          swift_once();
        }

        v45 = type metadata accessor for Logger();
        __swift_project_value_buffer(v45, static Logger.siriNetwork);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_223515000, v46, v47, "Background Connection - Provider. Connection ready.", v48, 2u);
          MEMORY[0x223DE38F0](v48, -1, -1);
        }

        swift_beginAccess();
        outlined init with copy of RPCOspreyConnectionProtocol(a5 + 16, &v79);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork21CommunicationProtocol_pMd, _s11SiriNetwork21CommunicationProtocol_pMR);
        type metadata accessor for CommunicationProtocolAce();
        if (swift_dynamicCast())
        {
          v49 = (*(a4 + 552))(v74, a4);
          v50 = 5.0;
          if ((v49 & 1) == 0)
          {
            v50 = 7.0;
            if (*(v17 + 1136) == 3)
            {
              v50 = -1.0;
              if ((*(a6 + 128) & 1) == 0)
              {
                v50 = *(a6 + 120);
              }
            }
          }

          CommunicationProtocolAce.scheduleAceHeaderTimeout(withInterval:)(v50);
        }

        swift_beginAccess();
        outlined init with copy of MessageCenterBrowserProtocol?(v17 + 1096, &v79, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
        if (*(&v80 + 1))
        {
          outlined init with copy of RPCOspreyConnectionProtocol(&v79, &v76);
          outlined destroy of NetworkConnectionProtocol?(&v79, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
          v51 = *(&v77 + 1);
          v52 = v78;
          __swift_project_boxed_opaque_existential_1(&v76, *(&v77 + 1));
          v52[13](a7, a8, *(v17 + 153), v51, v52);
          __swift_destroy_boxed_opaque_existential_0(&v76);
        }

        else
        {
          outlined destroy of NetworkConnectionProtocol?(&v79, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
        }

        BackgroundConnection.setupReadHandlerOnProvider()();
        BackgroundConnection.networkProviderDidOpen()();
      }
    }

    else
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.siriNetwork);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_223515000, v22, v23, "Background Connection - Provider. Connection open ignored for stale connection.", v24, 2u);
        MEMORY[0x223DE38F0](v24, -1, -1);
      }
    }
  }
}

uint64_t protocol witness for ConnectionProviderProtocol.openCompletion.setter in conformance NetworkConnectionProvider(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 2064);
  v4 = *(v2 + 2072);
  *(v2 + 2064) = a1;
  *(v2 + 2072) = a2;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v3, v4);
}

Swift::Void __swiftcall CommunicationProtocolAce.scheduleAceHeaderTimeout(withInterval:)(Swift::Double withInterval)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_0_0();
  v75 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v83 = v7;
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v67 - v9;
  v82 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v80 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_1();
  v77 = v14 - v13;
  OUTLINED_FUNCTION_31();
  v78 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0_0();
  v76 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_1();
  v74 = v18 - v17;
  OUTLINED_FUNCTION_31();
  v19 = type metadata accessor for OS_dispatch_source.TimerFlags();
  OUTLINED_FUNCTION_0_0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_1();
  v25 = v24 - v23;
  v81 = type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_0_0();
  v79 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5();
  v73 = v28;
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x28223BE20](v29);
  v31 = (&v67 - v30);
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v32, static Logger.siriNetwork);
  v33 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v34 = OUTLINED_FUNCTION_16_0();
  if (os_log_type_enabled(v34, v35))
  {
    OUTLINED_FUNCTION_6_5();
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    *(v36 + 4) = withInterval;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
    v42 = OUTLINED_FUNCTION_1_2();
    MEMORY[0x223DE38F0](v42);
  }

  if (*(v2 + 192))
  {
    CommunicationProtocolAce.cancelAceHeaderTimeoutTimer()();
  }

  if (withInterval > 0.0)
  {
    v72 = v31;
    Double.dispatchTimeInterval.getter(v31, withInterval);
    type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for OS_dispatch_source, 0x277D85CA0);
    aBlock[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_30_3();
    lazy protocol witness table accessor for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags(v43, v44, MEMORY[0x277D85280]);
    v70 = v10;
    v45 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
    v71 = v4;
    v46 = v2;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v47 = *(v2 + 32);
    v69 = v46;
    v48 = v47;
    v49 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

    (*(v21 + 8))(v25, v19);
    v50 = v49;
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_7_1();
    v52 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_109();
    v53 = swift_allocObject();
    *(v53 + 16) = v49;
    *(v53 + 24) = v52;
    *(v53 + 32) = withInterval;
    aBlock[4] = partial apply for closure #1 in CommunicationProtocolAce.scheduleAceHeaderTimeout(withInterval:);
    aBlock[5] = v53;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_11;
    v54 = _Block_copy(aBlock);
    v68 = v50;
    swift_unknownObjectRetain();

    v55 = v74;
    static DispatchQoS.unspecified.getter();
    v56 = v77;
    default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v54);
    (*(v80 + 8))(v56, v82);
    (*(v76 + 8))(v55, v78);

    v57 = v83;
    static DispatchTime.now()();
    v58 = v70;
    v59 = v72;
    DispatchTime.advanced(by:)();
    v60 = *(v45 + 8);
    v61 = v71;
    v60(v57, v71);
    v62 = v73;
    default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v73);
    v63 = v68;
    MEMORY[0x223DE2510](v58, v59, v62, ObjectType);
    v64 = *(v79 + 8);
    v65 = v62;
    v66 = v81;
    v64(v65, v81);
    v60(v58, v61);
    OS_dispatch_source.resume()();
    v64(v59, v66);
    *(v69 + 192) = v63;
    swift_unknownObjectRelease();
  }
}

void CommunicationProtocolAce.updateBuffers(forInitialPayload:bufferedLength:forceReconnect:)()
{
  OUTLINED_FUNCTION_46();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4DataVSgMd, &_s8Dispatch0A4DataVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v69[-v10];
  v2[13] = CFHTTPMessageCreateEmpty(0, 0);
  if (v8)
  {
    static DispatchData._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for DispatchData();
    v13 = 0;
  }

  else
  {
    v12 = type metadata accessor for DispatchData();
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v13, 1, v12);
  Data.init(copying:)(v11);
  OUTLINED_FUNCTION_71_0();
  if (v14 >> 60 == 15)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v15, static Logger.siriNetwork);
    v16 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v17 = OUTLINED_FUNCTION_10_4();
    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_17_5();
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_223515000, v16, v6, "CommunicationProtocol - Ace: No initial payload", v19, 2u);
      v20 = OUTLINED_FUNCTION_7_2();
      MEMORY[0x223DE38F0](v20);
    }

    CommunicationProtocolAce.prepareProviderHeader(withForceReconnect:)(v4 & 1);
    v21 = OUTLINED_FUNCTION_21_4();
    outlined copy of Data?(v21, v22);
    v23 = 0;
  }

  else
  {
    v24 = OUTLINED_FUNCTION_21_4();
    outlined copy of Data._Representation(v24, v25);
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v26, static Logger.siriNetwork);
    v27 = OUTLINED_FUNCTION_21_4();
    outlined copy of Data?(v27, v28);

    v29 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v30 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v30, v31))
    {
      OUTLINED_FUNCTION_30();
      v32 = swift_slowAlloc();
      *v32 = 134218240;
      v33 = v32;
      v34 = 0;
      switch(v1 >> 62)
      {
        case 1uLL:
          LODWORD(v34) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            __break(1u);
LABEL_32:
            __break(1u);
            JUMPOUT(0x22355BCF4);
          }

          v34 = v34;
LABEL_19:
          *(v32 + 4) = v34;
          v40 = OUTLINED_FUNCTION_21_4();
          outlined consume of Data?(v40, v41);
          *(v33 + 12) = 2048;
          OUTLINED_FUNCTION_40_1((v2 + 9), v69);
          v42 = 0;
          v43 = v2[10];
          if (v43 >> 60 != 15)
          {
            v44 = v2[9];
            outlined copy of Data._Representation(v44, v2[10]);
            v42 = MEMORY[0x223DE13E0](v44, v43);
            outlined consume of Data?(v44, v43);
          }

          *(v33 + 14) = v42;

          OUTLINED_FUNCTION_55_0();
          _os_log_impl(v45, v46, v47, v48, v49, 0x16u);
          v50 = OUTLINED_FUNCTION_7_2();
          MEMORY[0x223DE38F0](v50);
          break;
        case 2uLL:
          v38 = *(v8 + 16);
          v37 = *(v8 + 24);
          v39 = __OFSUB__(v37, v38);
          v34 = v37 - v38;
          if (!v39)
          {
            goto LABEL_19;
          }

          goto LABEL_32;
        case 3uLL:
          goto LABEL_19;
        default:
          v34 = BYTE6(v1);
          goto LABEL_19;
      }
    }

    else
    {

      v35 = OUTLINED_FUNCTION_21_4();
      outlined consume of Data?(v35, v36);
    }

    OUTLINED_FUNCTION_40_1((v2 + 40), &v71);
    if (v2[41] >> 60 != 15)
    {
      v51 = CommunicationProtocolAce.safetyNetBuffer.modify();
      OUTLINED_FUNCTION_24_1();
      if (!(!v53 & v52))
      {
        OUTLINED_FUNCTION_21_4();
        Data.append(_:)();
      }

      (v51)(&v70, 0);
    }

    OUTLINED_FUNCTION_25_2();
    swift_beginAccess();
    v54 = v2[9];
    v55 = v2[10];
    if (v55 >> 60 == 15)
    {
      v56 = OUTLINED_FUNCTION_21_4();
      outlined consume of Data?(v56, v57);
    }

    else
    {
      outlined copy of Data._Representation(v2[9], v2[10]);
      v58 = Data.truncateBeginning(removeSize:)(v6, v54, v55);
      v60 = v59;
      v61 = OUTLINED_FUNCTION_21_4();
      outlined consume of Data?(v61, v62);
      outlined consume of Data?(v54, v55);
      v54 = v58;
      v55 = v60;
    }

    v63 = v2[9];
    v64 = v2[10];
    v2[9] = v54;
    v2[10] = v55;
    outlined consume of Data?(v63, v64);
    v65 = OUTLINED_FUNCTION_21_4();
    v23 = !specialized Collection.isEmpty.getter(v65, v66);
  }

  CommunicationProtocolAce.initializeBufferedGeneralOutputData(hasInitialPayload:)(v23);
  v67 = OUTLINED_FUNCTION_21_4();
  outlined consume of Data?(v67, v68);
  OUTLINED_FUNCTION_47();
}

uint64_t Data.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4DataVSgMd, &_s8Dispatch0A4DataVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-v4];
  v6 = type metadata accessor for DispatchData();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  outlined init with copy of DispatchData?(a1, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    outlined destroy of DispatchData?(a1);
    outlined destroy of DispatchData?(v5);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v1, v5, v6);
    v11 = DispatchData.count.getter();
    v14 = MEMORY[0x223DE13D0](v11);
    v15 = v12;
    MEMORY[0x28223BE20](v14);
    *&v13[-16] = v1;
    specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for closure #1 in Data.init(copying:), &v13[-32]);
    outlined destroy of DispatchData?(a1);
    (*(v8 + 8))(v1, v6);
    return v14;
  }
}

uint64_t outlined init with copy of DispatchData?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4DataVSgMd, &_s8Dispatch0A4DataVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DispatchData?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4DataVSgMd, &_s8Dispatch0A4DataVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_68_2()
{
}

void OUTLINED_FUNCTION_68_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t CommunicationProtocolAce.prepareProviderHeader(withForceReconnect:)(char a1)
{
  OUTLINED_FUNCTION_25_2();
  swift_beginAccess();
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *(v1 + 56) = xmmword_2235EF6F0;
  outlined consume of Data._Representation(v4, v5);
  result = CommunicationProtocolAce.aceDelegate.getter();
  if (result)
  {
    BackgroundConnection.providerHeaderData(forceReconnect:)(a1 & 1);
    OUTLINED_FUNCTION_71_0();
    result = swift_unknownObjectRelease();
    if (v2 >> 60 != 15)
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v7, static Logger.siriNetwork);
      v8 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      v9 = OUTLINED_FUNCTION_10_4();
      if (os_log_type_enabled(v9, v10))
      {
        OUTLINED_FUNCTION_17_5();
        v11 = swift_slowAlloc();
        OUTLINED_FUNCTION_51_1(v11);
        OUTLINED_FUNCTION_9_8();
        _os_log_impl(v12, v13, v14, v15, v16, v17);
        v18 = OUTLINED_FUNCTION_2_0();
        MEMORY[0x223DE38F0](v18);
      }

      OUTLINED_FUNCTION_27_1();
      swift_beginAccess();
      OUTLINED_FUNCTION_21_4();
      Data.append(_:)();
      swift_endAccess();
      v19 = OUTLINED_FUNCTION_21_4();
      return outlined consume of Data?(v19, v20);
    }
  }

  return result;
}

uint64_t BackgroundConnection.providerHeaderData(forceReconnect:)(char a1)
{
  if (!*(v1 + 1080))
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_134();
  return (*(v2 + 560))(a1 & 1, v4, v2);
}

uint64_t CommunicationProtocolAce.initializeBufferedGeneralOutputData(hasInitialPayload:)(char a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_25_2();
  swift_beginAccess();
  v4 = v1[10];
  if (v4 >> 60 == 15)
  {
    v5 = v1[9];
    *(v1 + 9) = xmmword_2235EF6F0;
    v6 = outlined consume of Data?(v5, v4);
    if ((a1 & 1) == 0)
    {
      OUTLINED_FUNCTION_61();
      if (!v7)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.siriNetwork);
      v9 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      v10 = OUTLINED_FUNCTION_10_4();
      if (os_log_type_enabled(v10, v11))
      {
        OUTLINED_FUNCTION_17_5();
        v12 = swift_slowAlloc();
        OUTLINED_FUNCTION_51_1(v12);
        OUTLINED_FUNCTION_9_8();
        _os_log_impl(v13, v14, v15, v16, v17, v18);
        v19 = OUTLINED_FUNCTION_2_0();
        MEMORY[0x223DE38F0](v19);
      }

      CommunicationProtocolAce.httpHeaderData()();
      OUTLINED_FUNCTION_31_2();
      if (!v7 & v22)
      {
        v23 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        v24 = OUTLINED_FUNCTION_16_0();
        if (os_log_type_enabled(v24, v25))
        {
          OUTLINED_FUNCTION_17_5();
          v26 = swift_slowAlloc();
          OUTLINED_FUNCTION_40_2(v26);
          OUTLINED_FUNCTION_44_2();
          _os_log_impl(v27, v28, v29, v30, v31, v32);
          v33 = OUTLINED_FUNCTION_1_2();
          MEMORY[0x223DE38F0](v33);
        }
      }

      else
      {
        v34 = v20;
        v35 = v21;
        CommunicationProtocolAce.bufferGeneralData(data:)(v20, v21);
        v6 = outlined consume of Data?(v34, v35);
      }
    }

    v36 = v2[42];
    MEMORY[0x28223BE20](v6);
    os_unfair_lock_lock(v36 + 4);
    partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
    os_unfair_lock_unlock(v36 + 4);
    if ((a1 & 1) == 0)
    {
      OUTLINED_FUNCTION_61();
      if (!v7)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v37, static Logger.siriNetwork);
      v38 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      v39 = OUTLINED_FUNCTION_16_0();
      if (os_log_type_enabled(v39, v40))
      {
        OUTLINED_FUNCTION_17_5();
        v41 = swift_slowAlloc();
        OUTLINED_FUNCTION_11_7(v41);
        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v42, v43, v44, v45, v46, 2u);
        v47 = OUTLINED_FUNCTION_6_15();
        MEMORY[0x223DE38F0](v47);
      }

      static AceStreamHeader.createAceStreamHeaderData(withMagic:compressionType:)(&outlined read-only object #0 of one-time initialization function for aceHeaderMagic, 1);
      OUTLINED_FUNCTION_71_0();
      CommunicationProtocolAce.bufferGeneralData(data:)(v48, v49);
      v50 = OUTLINED_FUNCTION_21_4();
      outlined consume of Data._Representation(v50, v51);
    }
  }

  OUTLINED_FUNCTION_25_2();
  result = swift_beginAccess();
  v53 = v2[12];
  if (v53 >> 60 == 15)
  {
    v54 = v2[11];
    *(v2 + 11) = xmmword_2235EF6F0;
    return outlined consume of Data?(v54, v53);
  }

  return result;
}

void CommunicationProtocolAce.httpHeaderData()()
{
  OUTLINED_FUNCTION_46();
  v1 = type metadata accessor for URL.DirectoryHint();
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25[-1] - v9;
  v11 = type metadata accessor for URL();
  OUTLINED_FUNCTION_0_0();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v25[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v25[-1] - v18;
  v24 = v0;
  v20 = CommunicationProtocolAce.aceDelegate.getter();
  if (v20)
  {
    memcpy(v26, (v20 + 40), 0x204uLL);
    outlined init with copy of ConnectionConfiguration(v26, v25);
    swift_unknownObjectRelease();
    memcpy(v25, v26, 0x204uLL);
    ConnectionConfiguration.resolvedURL.getter(v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      outlined destroy of NetworkConnectionProtocol?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of ConnectionConfiguration(v26);
    }

    else
    {
      (*(v13 + 32))(v19, v10, v11);
      v25[0] = 1701011759;
      v25[1] = 0xE400000000000000;
      (*(v3 + 104))(v7, *MEMORY[0x277CC91D8], v1);
      lazy protocol witness table accessor for type String and conformance String();
      URL.appending<A>(path:directoryHint:)();
      v21 = OUTLINED_FUNCTION_26();
      v22(v21);
      CommunicationProtocolAce.headerData(forURL:aceHost:languageCode:syncAssistantId:)();
      outlined destroy of ConnectionConfiguration(v26);
      v23 = *(v13 + 8);
      v23(v17, v11);
      v23(v19, v11);
    }
  }

  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_47();
}

uint64_t ConnectionConfiguration.resolvedURL.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  OUTLINED_FUNCTION_11_1(v4);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_11_1(v13);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v17 = type metadata accessor for URL();
  OUTLINED_FUNCTION_0_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_1();
  v23 = v22 - v21;
  v24 = *(v1 + 408);
  if (v24 != 1)
  {
    OUTLINED_FUNCTION_7_24(v24);
    ConnectionPolicyRoute.routeHost.getter();
    if (v25)
    {
      URL.init(string:)();

      if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
      {
        v26 = &_s10Foundation3URLVSgMd;
        v27 = &_s10Foundation3URLVSgMR;
        v28 = v16;
      }

      else
      {
        (*(v19 + 32))(v23, v16, v17);
        URLComponents.init(url:resolvingAgainstBaseURL:)();
        v29 = OUTLINED_FUNCTION_8_23();
        if (__swift_getEnumTagSinglePayload(v29, v30, v6) != 1)
        {
          (*(v8 + 32))(v12, v2, v6);
          URLComponents.url.getter();
          (*(v8 + 8))(v12, v6);
          return (*(v19 + 8))(v23, v17);
        }

        (*(v19 + 8))(v23, v17);
        v26 = &_s10Foundation13URLComponentsVSgMd;
        v27 = &_s10Foundation13URLComponentsVSgMR;
        v28 = v2;
      }

      outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v28, v26, v27);
    }
  }

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v17);
}

void CommunicationProtocolAce.headerData(forURL:aceHost:languageCode:syncAssistantId:)()
{
  OUTLINED_FUNCTION_46();
  v108 = v0;
  v2 = v1;
  object = v3;
  v6 = v5;
  v8 = v7;
  v9 = CommunicationProtocolAce.aceDelegate.getter();
  if (v9)
  {
    memcpy(__dst, (v9 + 40), 0x204uLL);
    outlined init with copy of ConnectionConfiguration(__dst, &v111);
    if (one-time initialization token for httpMethodACE != -1)
    {
      goto LABEL_82;
    }

    while (1)
    {
      v10 = static ConnectionConfigurationConstants.httpMethodACE;
      v104 = v2;
      if (static ConnectionConfigurationConstants.httpMethodACE)
      {
        v11 = static ConnectionConfigurationConstants.httpMethodACE;
      }

      else
      {
        v11 = MEMORY[0x223DE2070](4539201, 0xE300000000000000);
        v10 = 0;
      }

      v12 = v10;
      URL._bridgeToObjectiveC()(v13);
      v15 = v14;
      Request = CFHTTPMessageCreateRequest(0, v11, v14, *MEMORY[0x277CBACF8]);

      v17 = URL.host(percentEncoded:)(1);
      if (v17.value._object)
      {
        countAndFlagsBits = v17.value._countAndFlagsBits;
      }

      else
      {
        countAndFlagsBits = 0;
      }

      v19 = MEMORY[0x223DE2070](1953722184, 0xE400000000000000);
      v20 = OUTLINED_FUNCTION_58_0();
      MEMORY[0x223DE2070](v20);
      OUTLINED_FUNCTION_52();

      CFHTTPMessageSetHeaderFieldValue(Request, v19, countAndFlagsBits);

      if (__dst[20])
      {
        v21 = __dst[19];

        v22 = OUTLINED_FUNCTION_58_0();
        MEMORY[0x223DE2070](v22);
        OUTLINED_FUNCTION_52();
      }

      else
      {
        v21 = 0;
      }

      v2 = [objc_opt_self() createUserAgentStringFromProductTypePrefix_];

      v23 = v2;
      if (!v2)
      {
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = MEMORY[0x223DE2070](v24);
      }

      v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v107 = v25;
      v26 = MEMORY[0x223DE2070](0x6567412D72657355, 0xEA0000000000746ELL);
      OUTLINED_FUNCTION_45_1(v26);

      if (v6)
      {
        v27 = MEMORY[0x223DE2070](0x6F482D6563412D58, 0xEA00000000007473);
        v28 = OUTLINED_FUNCTION_53();
        v29 = MEMORY[0x223DE2070](v28);
        OUTLINED_FUNCTION_19_2(v29);
      }

      v101 = v8;
      v103 = v6;
      if (object)
      {
        v30 = MEMORY[0x223DE2070](0x4C2D747065636341, 0xEF65676175676E61);
        v31 = OUTLINED_FUNCTION_26();
        v32 = MEMORY[0x223DE2070](v31);
        OUTLINED_FUNCTION_19_2(v32);
      }

      v8 = __dst;
      if (one-time initialization token for httpContentLengthACE != -1)
      {
        swift_once();
      }

      v33 = MEMORY[0x223DE2070](0x2D746E65746E6F43, 0xEE006874676E654CLL);
      OUTLINED_FUNCTION_45_1(v33);

      v105 = CFUUIDCreate(0);
      v34 = CFUUIDCreateString(0, v105);
      v35 = MEMORY[0x223DE2070](0xD000000000000016, 0x80000002235F7F50);
      v106 = v34;
      CFHTTPMessageSetHeaderFieldValue(Request, v35, v34);

      if (BYTE3(__dst[64]) == 1)
      {
        v36 = __dst[22];
        if (__dst[22])
        {
          v2 = __dst[21];

          v37 = MEMORY[0x223DE2070](0xD000000000000012, 0x80000002235F8040);
          MEMORY[0x223DE2070](v2, v36);
          OUTLINED_FUNCTION_72_0();

          CFHTTPMessageSetHeaderFieldValue(Request, v37, v2);
        }

        v35 = __dst[24];
        if (__dst[24])
        {
          v2 = __dst[23];

          v38 = MEMORY[0x223DE2070](0xD000000000000015, 0x80000002235F8020);
          MEMORY[0x223DE2070](v2, v35);
          OUTLINED_FUNCTION_72_0();

          CFHTTPMessageSetHeaderFieldValue(Request, v38, v2);
        }
      }

      if (!AFIsInternalInstall())
      {
        break;
      }

      if (BYTE2(__dst[64]) == 1)
      {
        MEMORY[0x223DE2070](0xD000000000000012, 0x80000002235F8000);
        OUTLINED_FUNCTION_46_1();
        OUTLINED_FUNCTION_19_2(v39);
      }

      v40 = [objc_opt_self() sharedPreferences];
      v41 = outlined bridged method (ob) of @objc AFPreferences.configOverrides()(v40);
      if (!v41)
      {
        v41 = Dictionary.init(dictionaryLiteral:)();
      }

      v42 = v41;
      v6 = 0;
      v43 = v41 + 64;
      OUTLINED_FUNCTION_49();
      v46 = v45 & v44;
      object = ((v47 + 63) >> 6);
      if ((v45 & v44) != 0)
      {
        do
        {
          v48 = v6;
LABEL_37:
          v49 = __clz(__rbit64(v46));
          v46 &= v46 - 1;
          v50 = (*(v42 + 56) + ((v48 << 10) | (16 * v49)));
          v8 = *v50;
          v51 = v50[1];

          v52 = OUTLINED_FUNCTION_21_4();
          v2 = MEMORY[0x223DE2070](v52);

          v53 = MEMORY[0x223DE2070](v8, v51);

          CFHTTPMessageSetHeaderFieldValue(Request, v2, v53);
        }

        while (v46);
      }

      while (1)
      {
        v48 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v48 >= object)
        {

          goto LABEL_40;
        }

        v46 = *(v43 + 8 * v48);
        ++v6;
        if (v46)
        {
          v6 = v48;
          goto LABEL_37;
        }
      }

LABEL_81:
      __break(1u);
LABEL_82:
      swift_once();
    }

LABEL_40:
    v2 = [objc_opt_self() featureFlags];
    v54 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
    v110 = v54;
    v55 = 1 << *(v54 + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v54 + 64;
    v58 = v56 & *(v54 + 64);
    v8 = ((v55 + 63) >> 6);
    message = Request;
    while (v58)
    {
LABEL_48:
      v60 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
      v61 = (v6 << 10) | (16 * v60);
      v62 = (*(v110 + 48) + v61);
      v64 = *v62;
      v63 = v62[1];
      v65 = (*(v110 + 56) + v61);
      v66 = *v65;
      v2 = v65[1];

      if ((AFIsInternalInstall() & 1) != 0 || (v67._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)(), object = v67._object, v68 = String.hasPrefix(_:)(v67), , !v68))
      {
        object = MEMORY[0x223DE2070](v64, v63);

        v69 = MEMORY[0x223DE2070](v66, v2);

        Request = message;
        CFHTTPMessageSetHeaderFieldValue(message, object, v69);
      }

      else
      {

        Request = message;
      }
    }

    while (1)
    {
      v59 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_81;
      }

      if (v59 >= v8)
      {
        break;
      }

      v58 = *(v57 + 8 * v59);
      ++v6;
      if (v58)
      {
        v6 = v59;
        goto LABEL_48;
      }
    }

    if ((__dst[14] & 0x10000) != 0)
    {
      MEMORY[0x223DE2070](0xD000000000000020, 0x80000002235F7FD0);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_19_2(v70);
    }

    if (AFIsInternalInstall() && _AFPreferencesShowAllDialogVariantsEnabled())
    {
      MEMORY[0x223DE2070](0xD000000000000016, 0x80000002235F7FB0);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_19_2(v71);
    }

    if (v108)
    {
      v72 = MEMORY[0x223DE2070](0xD000000000000019, 0x80000002235F7F90);
      v73 = MEMORY[0x223DE2070](v104, v108);
      OUTLINED_FUNCTION_19_2(v73);
    }

    v74 = CFHTTPMessageCopyAllHeaderFields(Request);
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v75, static Logger.siriNetwork);
    v76 = v74;
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v77, v78))
    {
      OUTLINED_FUNCTION_6_5();
      v79 = swift_slowAlloc();
      OUTLINED_FUNCTION_28_3();
      v80 = swift_slowAlloc();
      *v79 = 138412290;
      *(v79 + 4) = v76;
      *v80 = v74;
      v81 = v76;
      OUTLINED_FUNCTION_18_5();
      _os_log_impl(v82, v83, v84, v85, v86, v87);
      outlined destroy of NetworkConnectionProtocol?(v80, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v88 = OUTLINED_FUNCTION_7_2();
      MEMORY[0x223DE38F0](v88);
      v89 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v89);
    }

    if (v76)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v111 = 0;
        v90 = v76;
        static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

        v78 = v111;
        if (v111)
        {
          v91 = OUTLINED_FUNCTION_68_1();
          BackgroundConnection.willStartConnection(with:)(v91);
        }
      }
    }

    v92 = AFDeviceRegionCode();
    if (v92)
    {
      v93 = v92;
      v94 = MEMORY[0x223DE2070](0xD000000000000014, 0x80000002235F7F70);
      OUTLINED_FUNCTION_45_1(v94);
    }

    v95 = CFHTTPMessageCopySerializedMessage(Request);
    v96 = v95;
    Data.init(fromCFData:)(v95);
    if (AFIsInternalInstall())
    {
      v97 = [objc_allocWithZone(MEMORY[0x277D58C18]) init];
      if (v97)
      {
        v98 = v97;
        outlined bridged method (mbnn) of @objc NETSchemaNETSessionConnectionHttpHeaderCreated.userAgent.setter(v102, v107, v97);
        if (v103)
        {
          v99 = MEMORY[0x223DE2070](v101);
        }

        else
        {
          v99 = 0;
        }

        [v98 setAceHost_];

        v100 = OUTLINED_FUNCTION_68_1();
        BackgroundConnection.logSessionConnectionHttpHeaderCreated(httpHeader:)(v100);

        outlined destroy of ConnectionConfiguration(__dst);
        goto LABEL_78;
      }
    }

    else
    {
    }

    outlined destroy of ConnectionConfiguration(__dst);
LABEL_78:
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_47();
}

uint64_t OUTLINED_FUNCTION_64_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t static SNUtilities.createUserAgentString(fromProductTypePrefix:)(uint64_t a1, uint64_t a2)
{
  v4 = AFProductType();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2235F4D90;
  v9 = AFDeviceName();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v14 = lazy protocol witness table accessor for type String and conformance String();
  v15 = v14;
  *(v8 + 64) = v14;
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  if (!a2)
  {
    *(v8 + 96) = v13;
    *(v8 + 104) = v14;
    goto LABEL_5;
  }

  v16 = specialized StringProtocol.appending<A>(_:)(v5, v7, a1, a2);
  *(v8 + 96) = v13;
  *(v8 + 104) = v15;
  if (!v17)
  {
LABEL_5:
    *(v8 + 72) = v5;
    *(v8 + 80) = v7;

    goto LABEL_6;
  }

  *(v8 + 72) = v16;
  *(v8 + 80) = v17;
LABEL_6:
  v18 = AFProductName();
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v8 + 136) = v13;
  *(v8 + 144) = v15;
  *(v8 + 112) = v19;
  *(v8 + 120) = v21;
  v22 = AFProductVersion();
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *(v8 + 176) = v13;
  *(v8 + 184) = v15;
  *(v8 + 152) = v23;
  *(v8 + 160) = v25;
  v26 = AFBuildVersion();
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  *(v8 + 216) = v13;
  *(v8 + 224) = v15;
  *(v8 + 192) = v27;
  *(v8 + 200) = v29;
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 256) = v13;
  *(v8 + 264) = v15;
  *(v8 + 232) = v30;
  *(v8 + 240) = v31;
  v32 = String.init(format:_:)();

  return v32;
}

uint64_t OUTLINED_FUNCTION_42()
{
}

void OUTLINED_FUNCTION_42_0()
{

  JUMPOUT(0x223DE38F0);
}

uint64_t outlined bridged method (ob) of @objc AFPreferences.configOverrides()(void *a1)
{
  v2 = [a1 configOverrides];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t BackgroundConnection.willStartConnection(with:)()
{
  OUTLINED_FUNCTION_13_3();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v0(v1, v2, result);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized Connection.willStartConnection(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v18[2] = v17;
      v18[3] = a1;
      v18[4] = v14;
      v18[5] = a2;
      aBlock[4] = partial apply for closure #1 in Connection.willStartConnection(_:with:);
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_159;
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

const __CFData *Data.init(fromCFData:)(const __CFData *result)
{
  if (result)
  {
    v1 = result;
    if (CFDataGetBytePtr(result))
    {
      CFDataGetLength(v1);
      Data.append(_:count:)();
    }

    return 0;
  }

  return result;
}

void outlined bridged method (mbnn) of @objc NETSchemaNETSessionConnectionHttpHeaderCreated.userAgent.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x223DE2070](a1);

  [a3 setUserAgent_];
}

void OUTLINED_FUNCTION_62_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void *OUTLINED_FUNCTION_62_3()
{

  return memcpy(&STACK[0x238], (v0 + 40), 0x204uLL);
}

void BackgroundConnection.logSessionConnectionHttpHeaderCreated(httpHeader:)(uint64_t a1)
{
  v2 = *(v1 + 1176);
  NetworkAnalytics.logSessionConnectionHttpHeaderCreated(_:)();
}

uint64_t ZlibDataCompressor.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = 0u;
  *(v0 + 128) = v1;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  swift_beginAccess();
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  v2 = deflateInit_((v0 + 16), 9, "1.2.12", 112);
  swift_endAccess();
  if (v2)
  {

    return 0;
  }

  return v0;
}

uint64_t static AceStreamHeader.createAceStreamHeaderData(withMagic:compressionType:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Data.Deallocator();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_1();
  v10 = v9 - v8;
  v11 = *(a1 + 16);
  v12 = swift_slowAlloc();
  memcpy(v12, (a1 + 32), v11);
  *(v12 + v11) = (a2 & 1) + 1;
  (*(v6 + 104))(v10, *MEMORY[0x277CC92A0], v4);
  return MEMORY[0x223DE1380](v12, v11 + 1, v10);
}

void BackgroundConnection.networkProviderDidOpen()()
{
  OUTLINED_FUNCTION_120_1();
  if (*(v0 + 1185))
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v1, static Logger.siriNetwork);
    osloga = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(osloga, v2))
    {
      v3 = OUTLINED_FUNCTION_14();
      *v3 = 0;
      _os_log_impl(&dword_223515000, osloga, v2, "Background Connection - Provider. Provider ready received when it is already ready.", v3, 2u);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    OUTLINED_FUNCTION_81_1();
  }

  else
  {
    v6 = v0;
    if (one-time initialization token for connectionOpened != -1)
    {
      swift_once();
    }

    siri_kdebug_trace(static Constants.Signposts.connectionOpened);
    *(v0 + 1185) = 1;
    *(v0 + 1188) = 1;
    v7 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
    [v7 systemUptime];
    v9 = v8;

    *(v6 + 1208) = v9;
    OUTLINED_FUNCTION_40_1(v6 + 1096, &v58);
    outlined init with copy of MessageCenterBrowserProtocol?(v6 + 1096, __dst, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    if (__dst[3])
    {
      outlined init with copy of RPCOspreyConnectionProtocol(__dst, v55);
      outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      v10 = v55[3];
      v11 = v55[4];
      __swift_project_boxed_opaque_existential_1(v55, v55[3]);
      (*(v11 + 168))(v10, v11);
      __swift_destroy_boxed_opaque_existential_0(v55);
    }

    else
    {
      outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    }

    v12 = *(v6 + 1208);
    v13 = *(v6 + 1200);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      if (*(v6 + 1080))
      {
        v22 = v12 - v13;
        v23 = *(v6 + 1088);
        swift_getObjectType();
        v24 = *(v23 + 168);
        swift_unknownObjectRetain();
        v25 = OUTLINED_FUNCTION_0_36();
        v24(v25);
        v26 = v56[103];
        memcpy(__dst, (v6 + 40), 0x204uLL);
        v27 = __dst[50];
        v28 = __dst[51];
        if (__dst[51] == 1)
        {
          v29 = 0;
          v30 = 0;
        }

        else
        {

          v29 = v27;
          v30 = v28;
        }

        memcpy(v55, (v6 + 40), 0x190uLL);
        v55[50] = v27;
        v55[51] = v28;
        memcpy(v56, (v6 + 456), 0x64uLL);
        outlined init with copy of ConnectionConfiguration(__dst, v34);
        outlined destroy of ConnectionConfiguration(v55);
        specialized Connection.didOpenConnectionType(_:type:routeId:delay:)(v6, v26, v29, v30, v21, v22);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    BackgroundConnection.tryToWriteBufferedOutputData(with:)(0, 0, v15, v16, v17, v18, v19, v20, v31, oslog, v34[0], v34[1], v34[2], v34[3], v34[4], v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
    OUTLINED_FUNCTION_81_1();
  }
}

unint64_t OUTLINED_FUNCTION_139(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

uint64_t storeEnumTagSinglePayload for ConnectionInterfaceReport(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *(result + 288) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 289) = 1;
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

    *(result + 289) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized Connection.didOpenConnectionType(_:type:routeId:delay:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v24 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    result = swift_unknownObjectRelease();
    if (v19 == a5)
    {
      v23 = *(a5 + OBJC_IVAR___SNConnectionInternal_connectionQueue);
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v21 + 24) = a1;
      *(v21 + 32) = a2;
      *(v21 + 40) = a3;
      *(v21 + 48) = a4;
      *(v21 + 56) = a6;
      aBlock[4] = partial apply for closure #1 in Connection.didOpenConnectionType(_:type:routeId:delay:);
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_234;
      v22 = _Block_copy(aBlock);

      swift_retain_n();

      static DispatchQoS.unspecified.getter();
      v26 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x223DE2460](0, v17, v14, v22);
      _Block_release(v22);

      (*(v25 + 8))(v14, v12);
      (*(v24 + 8))(v17, v15);
    }
  }

  return result;
}

uint64_t sub_22355E7D8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void closure #1 in NetworkAnalytics.logSessionConnectionHttpHeaderCreated(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v122 = a3;
  v120 = a2;
  v121 = type metadata accessor for NetworkAnalyticsEventMessage(0);
  MEMORY[0x28223BE20](v121);
  v4 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v114 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v114 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v114 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v119 = &v114 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v118 = &v114 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v114 - v27;
  MEMORY[0x28223BE20](v26);
  v124 = &v114 - v29;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v31 = Strong;
  v123 = v18;
  v32 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
  swift_beginAccess();
  outlined init with copy of UUID?(&v31[v32], v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    outlined destroy of NetworkConnectionProtocol?(v16, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.siriNetwork);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_223515000, v34, v35, "Network Analytics: Event Header. No netId generated", v36, 2u);
      MEMORY[0x223DE38F0](v36, -1, -1);
    }

    return;
  }

  v37 = v123;
  (*(v123 + 32))(v124, v16, v17);
  v38 = &v31[OBJC_IVAR___SNNetworkAnalyticsInternal_httpHeaderEvent];
  swift_beginAccess();
  v117 = v38;
  outlined init with copy of NetworkAnalyticsEventMessage(v38, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v17))
  {
    outlined destroy of NetworkAnalyticsEventMessage(v4);
    v39 = 0;
    v40 = 0;
  }

  else
  {
    (*(v37 + 16))(v28, v4, v17);
    outlined destroy of NetworkAnalyticsEventMessage(v4);
    v39 = UUID.uuidString.getter();
    v41 = v37;
    v40 = v42;
    (*(v41 + 8))(v28, v17);
  }

  v43 = UUID.uuidString.getter();
  if (!v40)
  {

    goto LABEL_20;
  }

  if (v39 != v43 || v40 != v44)
  {
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v46)
    {
      goto LABEL_24;
    }

LABEL_20:
    v47 = v17;
    v48 = v124;
    v49 = v123 + 16;
    v50 = *(v123 + 16);
    v50(v14, v124, v47);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v47);
    v51 = v117;
    swift_beginAccess();
    outlined assign with take of UUID?(v14, v51);
    swift_endAccess();
    v116 = v49;
    v115 = v50;
    v50(v14, v48, v47);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v47);
    v52 = OBJC_IVAR___SNNetworkAnalyticsInternal_networkConnectionId;
    swift_beginAccess();
    outlined init with copy of UUID?(&v31[v52], v11);
    v126[0] = v31[OBJC_IVAR___SNNetworkAnalyticsInternal_connectionProvider + 4];
    NetworkAnalytics.createSchemaClientEventFrom(netId:networkConnectionId:connectionProvider:)();
    v54 = v53;
    outlined destroy of NetworkConnectionProtocol?(v11, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    outlined destroy of NetworkConnectionProtocol?(v14, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    if (!v54)
    {
      (*(v123 + 8))(v48, v47);

      return;
    }

    [v54 setSessionConnectionHttpHeaderCreated_];
    v55 = OBJC_IVAR___SNNetworkAnalyticsInternal_netIdForRequestLink;
    swift_beginAccess();
    outlined init with copy of UUID?(&v31[v55], v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v47))
    {
      v56 = v47;
      outlined destroy of NetworkConnectionProtocol?(v8, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
      v57 = 0;
      v58 = 0;
      v59 = v115;
    }

    else
    {
      v59 = v115;
      v115(v28, v8, v47);
      outlined destroy of NetworkConnectionProtocol?(v8, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
      v57 = UUID.uuidString.getter();
      v58 = v73;
      v74 = v28;
      v56 = v47;
      (*(v123 + 8))(v74, v47);
    }

    v75 = v124;
    v76 = UUID.uuidString.getter();
    if (v58)
    {
      if (v57 == v76 && v58 == v77)
      {

LABEL_44:
        v98 = *(v121 + 5);
        v99 = *(v117 + v98);
        *(v117 + v98) = 0;

        [*&v31[OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream] emitMessage:v54 timestamp:v122];
        if (one-time initialization token for siriNetwork != -1)
        {
          swift_once();
        }

        v100 = type metadata accessor for Logger();
        __swift_project_value_buffer(v100, static Logger.siriNetwork);
        v101 = v118;
        v88 = v56;
        v59(v118, v75, v56);
        v102 = Logger.logObject.getter();
        v103 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v122 = v54;
          v105 = v101;
          v106 = v104;
          v121 = swift_slowAlloc();
          v125 = v121;
          *v106 = 136315138;
          lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v107 = dispatch thunk of CustomStringConvertible.description.getter();
          v109 = v108;
          v110 = *(v123 + 8);
          v110(v105, v56);
          v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v109, &v125);

          *(v106 + 4) = v111;
          _os_log_impl(&dword_223515000, v102, v103, "Network Analytics: Event Header. httpHeaderEvent emitted: %s", v106, 0xCu);
          v112 = v121;
          __swift_destroy_boxed_opaque_existential_0(v121);
          MEMORY[0x223DE38F0](v112, -1, -1);
          MEMORY[0x223DE38F0](v106, -1, -1);

          v110(v124, v56);
          return;
        }

        v113 = *(v123 + 8);
        v113(v101, v56);
        goto LABEL_50;
      }

      v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v79)
      {
        goto LABEL_44;
      }
    }

    else
    {
    }

    v81 = v121;
    v80 = v122;
    v82 = *(v121 + 5);
    v83 = v117;
    v84 = *(v117 + v82);
    *(v117 + v82) = v54;
    v85 = v83 + *(v81 + 6);
    *v85 = v80;
    *(v85 + 8) = 0;
    v122 = v54;

    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    __swift_project_value_buffer(v86, static Logger.siriNetwork);
    v87 = v119;
    v88 = v56;
    v59(v119, v75, v56);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v125 = v92;
      *v91 = 136315138;
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v93 = dispatch thunk of CustomStringConvertible.description.getter();
      v95 = v94;
      v96 = *(v123 + 8);
      v96(v87, v88);
      v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v95, &v125);

      *(v91 + 4) = v97;
      _os_log_impl(&dword_223515000, v89, v90, "Network Analytics: Event Header. No netIdForRequestLink for netId: %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v92);
      MEMORY[0x223DE38F0](v92, -1, -1);
      MEMORY[0x223DE38F0](v91, -1, -1);

      v96(v124, v88);
      return;
    }

    v113 = *(v123 + 8);
    v113(v87, v56);
LABEL_50:
    v113(v75, v88);
    return;
  }

LABEL_24:
  v60 = v123;
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, static Logger.siriNetwork);
  v62 = v124;
  (*(v60 + 16))(v21, v124, v17);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v127[0] = v66;
    *v65 = 136315138;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v68;
    v70 = *(v60 + 8);
    v70(v21);
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v127);

    *(v65 + 4) = v71;
    _os_log_impl(&dword_223515000, v63, v64, "Network Analytics: Event Header. Http header already sent for netId: %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    MEMORY[0x223DE38F0](v66, -1, -1);
    MEMORY[0x223DE38F0](v65, -1, -1);

    (v70)(v124, v17);
  }

  else
  {

    v72 = *(v60 + 8);
    v72(v21, v17);
    v72(v62, v17);
  }
}

uint64_t outlined init with copy of NetworkAnalyticsEventMessage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkAnalyticsEventMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NetworkAnalyticsEventMessage(uint64_t a1)
{
  v2 = type metadata accessor for NetworkAnalyticsEventMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_91(uint64_t a1)
{

  return swift_weakInit();
}

void OUTLINED_FUNCTION_91_1(void *a1@<X1>, uint64_t a2@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
}

uint64_t specialized ConnectionProviderProtocol.connectionAnalysisInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21[-v5];
  memcpy(v25, (v1 + 1536), sizeof(v25));
  v7 = ConnectionConfiguration.resolvedURL.getter(v6);
  specialized ConnectionProviderProtocol.primaryInterface.getter(v7);
  memcpy(v27, v26, 0x121uLL);
  v8 = _s11SiriNetwork25ConnectionInterfaceReportVSgWOg(v27);
  v9 = v8;
  if (v8 == 1)
  {
    v10 = 0;
  }

  else
  {
    v8 = outlined destroy of NetworkConnectionProtocol?(v26, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
    v10 = v27[9];
  }

  specialized ConnectionProviderProtocol.primaryInterface.getter(v8);
  memcpy(v24, v23, 0x121uLL);
  v11 = _s11SiriNetwork25ConnectionInterfaceReportVSgWOg(v24);
  if (v11 == 1 || (outlined init with copy of NetworkConnectionProtocol?(&v24[40], v21, &_s11SiriNetwork24ConnectionTCPInfoMetricsVSgMd, _s11SiriNetwork24ConnectionTCPInfoMetricsVSgMR), outlined destroy of NetworkConnectionProtocol?(v23, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR), memcpy(v22, &v24[40], 0xF9uLL), v11 = _s11SiriNetwork24ConnectionTCPInfoMetricsVSgWOg(v22), v11 == 1) || (v11 = outlined destroy of NetworkConnectionProtocol?(&v24[40], &_s11SiriNetwork24ConnectionTCPInfoMetricsVSgMd, _s11SiriNetwork24ConnectionTCPInfoMetricsVSgMR), (v22[28] & 1) != 0))
  {
    v12 = 0;
  }

  else
  {
    v12 = v22[27];
  }

  v13 = *(v1 + 1632);
  specialized ConnectionProviderProtocol.connectionType.getter(v11, v22);
  v14 = v22[0];
  if (*(v1 + 1928))
  {
    v15 = *(v1 + 1864);
    v16 = *(v2 + 1856);
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  outlined init with take of URL?(v6, a1);
  v17 = type metadata accessor for ConnectionAnalysisInfo(0);
  v18 = a1 + v17[5];
  *v18 = v10;
  *(v18 + 4) = v9 == 1;
  *(a1 + v17[6]) = v12;
  *(a1 + v17[7]) = v13;
  *(a1 + v17[8]) = v14;
  v19 = (a1 + v17[9]);
  *v19 = v16;
  v19[1] = v15;
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v17);
}

void *specialized ConnectionProviderProtocol.primaryInterface.getter(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v2;
  swift_beginAccess();
  memcpy(v14, (v1 + 56), 0x599uLL);
  memcpy(v12, (v1 + 56), 0x599uLL);
  memcpy(v15, (v1 + 624), sizeof(v15));
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v15) == 1)
  {
    _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(v7);
    memcpy(__dst, v12, 0x599uLL);
    outlined init with copy of ConnectionMetrics(v14, v10);
    outlined destroy of ConnectionMetrics(__dst);
    v4 = v7;
  }

  else
  {
    memcpy(__src, &v12[952], 0x121uLL);
    memcpy(__dst, v12, 0x599uLL);
    outlined init with copy of ConnectionMetrics(v14, v10);
    outlined init with copy of NetworkConnectionProtocol?(__src, v10, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
    outlined destroy of ConnectionMetrics(__dst);
    memcpy(v7, __src, 0x121uLL);
    if (_s11SiriNetwork25ConnectionInterfaceReportVSgWOg(v7) != 1)
    {
      v5 = __src;
      return memcpy(v3, v5, 0x121uLL);
    }

    v4 = __src;
  }

  memcpy(v13, v4, 0x121uLL);
  memcpy(v12, (v1 + 56), 0x599uLL);
  memcpy(__dst, (v1 + 56), 0x599uLL);
  memcpy(__src, (v1 + 152), sizeof(__src));
  if (_s11SiriNetwork27ConnectionPreparationReportVSgWOg(__src) == 1)
  {
    memcpy(v10, __dst, 0x599uLL);
    outlined init with copy of ConnectionMetrics(v12, v7);
    outlined destroy of ConnectionMetrics(v10);
    outlined destroy of NetworkConnectionProtocol?(v13, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
    _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(v7);
    v5 = v7;
  }

  else
  {
    memcpy(v8, &__dst[136], 0x121uLL);
    memcpy(v10, __dst, 0x599uLL);
    outlined init with copy of ConnectionMetrics(v12, v7);
    outlined init with copy of NetworkConnectionProtocol?(v8, v7, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
    outlined destroy of ConnectionMetrics(v10);
    outlined destroy of NetworkConnectionProtocol?(v13, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
    v5 = v8;
  }

  return memcpy(v3, v5, 0x121uLL);
}

uint64_t storeEnumTagSinglePayload for ConnectionTCPInfoMetrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 248) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 249) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 249) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t specialized ConnectionProviderProtocol.connectionType.getter@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (*(v2 + 2100))
  {
    v4 = 17;
  }

  else
  {
    specialized ConnectionProviderProtocol.primaryInterface.getter(result);
    memcpy(__dst, __src, 0x121uLL);
    result = _s11SiriNetwork25ConnectionInterfaceReportVSgWOg(__dst);
    if (result == 1)
    {
      v4 = 0;
    }

    else
    {
      result = outlined destroy of NetworkConnectionProtocol?(__src, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
      v4 = __dst[32];
    }
  }

  *a2 = v4;
  return result;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22355FDE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = a2;
  }

  return result;
}

uint64_t sub_22355FEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t outlined init with copy of ConnectionAnalysisInfo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionAnalysisInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ConnectionAnalysisInfo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionAnalysisInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ConnectionAnalysisInfo(uint64_t a1)
{
  v2 = type metadata accessor for ConnectionAnalysisInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void NetworkConnectionProvider.handleViabilityUpdate(_:)()
{
  OUTLINED_FUNCTION_46();
  v2 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0_0();
  v30 = v5;
  v31 = v4;
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
    v9 = OUTLINED_FUNCTION_89();
    v32[0] = swift_slowAlloc();
    *v9 = 136315394;
    v10 = NetworkConnectionProvider.connectionIdentifier.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v32);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    if (v2)
    {
      v13 = 0x656C62616976;
    }

    else
    {
      v13 = 0x656C626169766E75;
    }

    if (v2)
    {
      v14 = 0xE600000000000000;
    }

    else
    {
      v14 = 0xE800000000000000;
    }

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v32);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_223515000, v7, v8, "Provider - NetworkConnectionProvider [%s]: Viability update. Connection %s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  OUTLINED_FUNCTION_7_1();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v2 & 1;
  v32[4] = partial apply for closure #1 in NetworkConnectionProvider.handleViabilityUpdate(_:);
  v32[5] = v17;
  OUTLINED_FUNCTION_1_1();
  v32[1] = 1107296256;
  OUTLINED_FUNCTION_3_5();
  v32[2] = v18;
  v32[3] = &block_descriptor_190;
  v19 = _Block_copy(v32);

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_1_8();
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v20, 255, v21, MEMORY[0x277D851A0]);
  v22 = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_45();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](v24, v25, v26);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_64();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v27);
  _Block_release(v19);
  v28 = OUTLINED_FUNCTION_16_1();
  v29(v28);
  (*(v30 + 8))(v0, v31);

  OUTLINED_FUNCTION_47();
}

uint64_t sub_22356049C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t implicit closure #4 in implicit closure #3 in NetworkConnectionProvider.configureConnectionHandler(_:)(char a1, uint64_t a2, void (*a3)(void))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1 & 1);
  }

  return result;
}

uint64_t closure #1 in NWConnection.readyEstablishmentReport(queue:completion:)(uint64_t a1, void (*a2)(double *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network12NWConnectionC19EstablishmentReportVSgMd, &_s7Network12NWConnectionC19EstablishmentReportVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v8 - v5;
  outlined init with copy of NWConnection.EstablishmentReport?(a1, v8 - v5);
  ConnectionEstablishmentReport.init(report:)(v6, v8);
  a2(v8);
  return outlined destroy of ConnectionEstablishmentReport?(v8);
}

uint64_t outlined init with copy of NWConnection.EstablishmentReport?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network12NWConnectionC19EstablishmentReportVSgMd, &_s7Network12NWConnectionC19EstablishmentReportVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t ConnectionEstablishmentReport.init(report:)@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v184 = a2;
  v207 = type metadata accessor for NWEndpoint.Port();
  OUTLINED_FUNCTION_0_0();
  v217 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_33();
  v206 = v5;
  OUTLINED_FUNCTION_31();
  v205 = type metadata accessor for NWEndpoint.Host();
  OUTLINED_FUNCTION_0_0();
  v216 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_33();
  v204 = v8;
  OUTLINED_FUNCTION_31();
  v190 = type metadata accessor for NWEndpoint();
  OUTLINED_FUNCTION_0_0();
  v218 = v9;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v169 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v224 = &v169 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v169 - v17;
  MEMORY[0x28223BE20](v16);
  v223 = &v169 - v19;
  OUTLINED_FUNCTION_31();
  v210 = type metadata accessor for NWConnection.EstablishmentReport.Resolution.Source();
  OUTLINED_FUNCTION_0_0();
  v219 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_33();
  v209 = v22;
  OUTLINED_FUNCTION_31();
  v23 = type metadata accessor for NWConnection.EstablishmentReport.Resolution();
  OUTLINED_FUNCTION_0_0();
  v208 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_33();
  v226 = v26;
  OUTLINED_FUNCTION_31();
  v222 = type metadata accessor for NWConnection.EstablishmentReport.Handshake();
  OUTLINED_FUNCTION_0_0();
  v225 = v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v169 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network12NWConnectionC19EstablishmentReportVSgMd, &_s7Network12NWConnectionC19EstablishmentReportVSgMR);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v169 - v35;
  v37 = type metadata accessor for NWConnection.EstablishmentReport();
  OUTLINED_FUNCTION_0_0();
  v183 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1_33();
  v187 = v40;
  v250 = 1;
  v247 = 1;
  v245 = 1;
  if (one-time initialization token for sharedNetworkAnalytics != -1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v41 = static NetworkAnalytics.sharedNetworkAnalytics;
    outlined init with copy of NWConnection.EstablishmentReport?(a1, v36);
    if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
    {
      v42 = v41;
      outlined destroy of ConnectionSnapshotReport?(a1, &_s7Network12NWConnectionC19EstablishmentReportVSgMd, &_s7Network12NWConnectionC19EstablishmentReportVSgMR);
      outlined destroy of ConnectionSnapshotReport?(v36, &_s7Network12NWConnectionC19EstablishmentReportVSgMd, &_s7Network12NWConnectionC19EstablishmentReportVSgMR);
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v226 = 0;
      v52 = 0;
      v53 = v250;
      v54 = v247;
      v55 = MEMORY[0x277D84F90];
      v56 = 0;
      v57 = v245;
      v58 = 0;
      v59 = MEMORY[0x277D84F90];
LABEL_60:
      v230 = 0;
      v229 = 0;
      LODWORD(v231) = v43;
      BYTE4(v231) = v53;
      *(&v231 + 5) = v248;
      HIBYTE(v231) = v249;
      v232 = v56;
      LOBYTE(v233) = v54;
      *(&v233 + 1) = *v246;
      HIDWORD(v233) = *&v246[3];
      v234 = v58;
      LOBYTE(v235) = v57;
      HIDWORD(v235) = *(v244 + 3);
      *(&v235 + 1) = v244[0];
      v236 = v55;
      v237 = v59;
      LOBYTE(v238) = v44;
      BYTE1(v238) = v45;
      OUTLINED_FUNCTION_6_24();
      v239 = v162;
      v240 = v163;
      v241 = v46;
      v242 = v164;
      v165 = v162;
      v166 = v163;
      result = outlined destroy of ConnectionEstablishmentReport(&v229);
      v167 = v184;
      *v184 = 0.0;
      v167[1] = 0.0;
      *(v167 + 2) = v47;
      *(v167 + 3) = v56;
      *(v167 + 4) = v48;
      *(v167 + 5) = v58;
      *(v167 + 6) = v49;
      *(v167 + 7) = v50;
      v168 = v226;
      *(v167 + 8) = v51;
      *(v167 + 9) = v168;
      *(v167 + 10) = v165;
      *(v167 + 11) = v166;
      *(v167 + 12) = v46;
      *(v167 + 13) = v52;
      return result;
    }

    v178 = a1;
    v179 = v37;
    a1 = v187;
    (*(v183 + 32))(v187, v36, v37);
    v177 = v41;
    result = NWConnection.EstablishmentReport.previousAttemptCount.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (HIDWORD(result))
    {
      goto LABEL_65;
    }

    v180 = result;
    v201 = v13;
    v250 = 0;
    NWConnection.EstablishmentReport.attemptStartedAfterInterval.getter();
    v56 = v61;
    v247 = 0;
    NWConnection.EstablishmentReport.Resolution.duration.getter();
    v58 = v62;
    v245 = 0;
    v171 = NWConnection.EstablishmentReport.proxyConfigured.getter();
    v170 = NWConnection.EstablishmentReport.usedProxy.getter();
    NWConnection.EstablishmentReport.proxyEndpoint.getter();
    v13 = v190;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v190);
    v202 = v18;
    v175 = v41;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of ConnectionSnapshotReport?(v33, &_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
      v173 = 0;
      v174 = 0;
      v172 = 0;
    }

    else
    {
      v64 = NWEndpoint.endpointReport()();
      v173 = v65;
      v174 = v64;
      v172 = v66;
      (*(v218 + 8))(v33, v13);
    }

    v67 = v13;
    v68 = NWConnection.EstablishmentReport.handshakes.getter();
    v69 = *(v68 + 16);
    v203 = v23;
    if (v69)
    {
      v70 = *(v225 + 16);
      v71 = *(v225 + 80);
      v215 = v68;
      a1 = v68 + ((v71 + 32) & ~v71);
      v220 = *(v225 + 72);
      v221 = v70;
      v225 += 16;
      v72 = (v225 - 8);
      v73 = MEMORY[0x277D84F90];
      do
      {
        v13 = v222;
        v221(v30, a1, v222);
        v74 = NWConnection.EstablishmentReport.Handshake.definition.getter();
        v75 = MEMORY[0x223DE1CC0](v74);
        v77 = v76;

        NWConnection.EstablishmentReport.Handshake.handshakeDuration.getter();
        v79 = v78;
        NWConnection.EstablishmentReport.Handshake.handshakeRTT.getter();
        v81 = v80;
        (*v72)(v30, v13);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v82 = v73;
        }

        else
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v82 = v86;
        }

        v84 = *(v82 + 16);
        v83 = *(v82 + 24);
        if (v84 >= v83 >> 1)
        {
          OUTLINED_FUNCTION_5_28(v83);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v82 = v87;
        }

        *(v82 + 16) = v84 + 1;
        v85 = v82 + 48 * v84;
        *(v85 + 32) = v75;
        *(v85 + 40) = v77;
        *(v85 + 48) = v79;
        *(v85 + 56) = 0;
        *(v85 + 64) = v81;
        *(v85 + 72) = 0;
        a1 += v220;
        --v69;
        v73 = v82;
      }

      while (v69);
      v176 = v82;

      v67 = v190;
      v23 = v203;
    }

    else
    {

      v176 = MEMORY[0x277D84F90];
    }

    v88 = NWConnection.EstablishmentReport.resolutions.getter();
    v89 = *(v88 + 16);
    v18 = v202;
    v90 = v179;
    if (!v89)
    {

      v157 = MEMORY[0x277D84F90];
LABEL_59:
      v225 = v157;
      v158 = v171 & 1;
      LODWORD(v222) = v171 & 1;
      v159 = v170 & 1;
      LODWORD(v221) = v170 & 1;
      outlined destroy of ConnectionSnapshotReport?(v178, &_s7Network12NWConnectionC19EstablishmentReportVSgMd, &_s7Network12NWConnectionC19EstablishmentReportVSgMR);
      (*(v183 + 8))(v187, v90);
      v230 = 0;
      v229 = 0;
      LODWORD(v231) = v180;
      LODWORD(v224) = v250;
      BYTE4(v231) = v250;
      *(&v231 + 5) = v248;
      HIBYTE(v231) = v249;
      v232 = v56;
      LODWORD(v223) = v247;
      LOBYTE(v233) = v247;
      *(&v233 + 1) = *v246;
      HIDWORD(v233) = *&v246[3];
      v234 = v58;
      v57 = v245;
      LOBYTE(v235) = v245;
      HIDWORD(v235) = *(v244 + 3);
      *(&v235 + 1) = v244[0];
      v160 = v176;
      v236 = v176;
      v237 = v157;
      LOBYTE(v238) = v158;
      BYTE1(v238) = v159;
      OUTLINED_FUNCTION_6_24();
      v239 = v174;
      v240 = v173;
      v46 = v172;
      v241 = v172;
      v52 = v177;
      v242 = v177;
      v220 = v231;
      v48 = v233;
      v161 = v235;
      v226 = v238;
      outlined init with copy of ConnectionEstablishmentReport(&v229, &v227);
      v54 = v223;
      v53 = v224;
      v45 = v221;
      v44 = v222;
      v55 = v160;
      v49 = v161;
      v47 = v220;
      v59 = v225;
      v43 = v180;
      v50 = v55;
      v51 = v225;
      goto LABEL_60;
    }

    v200 = *(v208 + 16);
    v91 = (*(v208 + 80) + 32) & ~*(v208 + 80);
    v169 = v88;
    v30 = (v88 + v91);
    v191 = *(v208 + 72);
    v199 = (v219 + 88);
    v198 = *MEMORY[0x277CD8DC8];
    v189 = *MEMORY[0x277CD8DC0];
    v186 = *MEMORY[0x277CD8DB8];
    v182 = (v219 + 8);
    v221 = (v218 + 88);
    v222 = (v218 + 16);
    LODWORD(v220) = *MEMORY[0x277CD8B08];
    v197 = *MEMORY[0x277CD8B00];
    v188 = *MEMORY[0x277CD8AF0];
    v219 = v218 + 8;
    v211 = v218 + 96;
    v196 = (v216 + 32);
    v195 = (v217 + 32);
    v194 = (v217 + 8);
    v193 = (v216 + 8);
    v208 += 16;
    v192 = (v208 - 8);
    v37 = v89 - 1;
    v185 = *MEMORY[0x277CD8AD0];
    v181 = *MEMORY[0x277CD8AF8];
    v225 = MEMORY[0x277D84F90];
    while (1)
    {
      v200(v226, v30, v23);
      v92 = v209;
      NWConnection.EstablishmentReport.Resolution.source.getter();
      v93 = (*v199)(v92, v210);
      if (v93 == v198)
      {
        goto LABEL_22;
      }

      if (v93 == v189)
      {
        v33 = 1;
      }

      else
      {
        if (v93 != v186)
        {
          (*v182)(v209, v210);
LABEL_22:
          v33 = 0;
          goto LABEL_27;
        }

        v33 = 2;
      }

LABEL_27:
      v36 = v226;
      NWConnection.EstablishmentReport.Resolution.duration.getter();
      v95 = v94;
      v96 = NWConnection.EstablishmentReport.Resolution.endpointCount.getter();
      if ((v96 & 0x8000000000000000) != 0)
      {
        break;
      }

      a1 = v96;
      if (HIDWORD(v96))
      {
        goto LABEL_62;
      }

      LODWORD(v217) = v33;
      v218 = v37;
      v97 = v223;
      NWConnection.EstablishmentReport.Resolution.successfulEndpoint.getter();
      v98 = *v222;
      (*v222)(v18, v97, v67);
      v99 = *v221;
      v100 = OUTLINED_FUNCTION_2_36();
      v101 = v99(v100);
      v212 = v30;
      if (v101 == v220)
      {
        OUTLINED_FUNCTION_7_22();
        v102 = OUTLINED_FUNCTION_2_36();
        v103(v102);
        v104 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointO4HostO4host_AC4PortV4porttMd, &_s7Network10NWEndpointO4HostO4host_AC4PortV4porttMR) + 48);
        v106 = v204;
        v105 = v205;
        (*v196)(v204, v18, v205);
        v107 = &v18[v104];
        v109 = v206;
        v108 = v207;
        (*v195)(v206, v107, v207);
        v110 = NWEndpoint.Host.debugDescription.getter();
        v215 = v111;
        v216 = v110;
        LOWORD(v104) = NWEndpoint.Port.rawValue.getter();
        (*v194)(v109, v108);
        (*v193)(v106, v105);
        v213 = 0x100000000;
        v214 = v104;
LABEL_33:
        v115 = v201;
        v116 = v219;
        goto LABEL_41;
      }

      if (v101 == v197)
      {
        OUTLINED_FUNCTION_7_22();
        v112 = OUTLINED_FUNCTION_2_36();
        v113(v112);

        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_SS4typeSS6domain7Network11NWInterfaceVSg9interfacetMd, &_sSS4name_SS4typeSS6domain7Network11NWInterfaceVSg9interfacetMR);
        outlined destroy of ConnectionSnapshotReport?(&v18[*(v114 + 80)], &_s7Network11NWInterfaceVSgMd, &_s7Network11NWInterfaceVSgMR);
        v213 = 0x300000000;
        v214 = 0;
        v215 = 0xE000000000000000;
        v216 = 0;
        goto LABEL_33;
      }

      v116 = v219;
      if (v101 == v188)
      {
        v115 = v201;
LABEL_39:
        v120 = OUTLINED_FUNCTION_2_36();
        v121(v120);
        v216 = 0;
        v214 = 0;
        v119 = 0x500000000;
        goto LABEL_40;
      }

      v115 = v201;
      if (v101 != v185)
      {
        goto LABEL_39;
      }

      v117 = OUTLINED_FUNCTION_2_36();
      v118(v117);
      v216 = 0;
      v214 = 0;
      v119 = 0x400000000;
LABEL_40:
      v213 = v119;
      v215 = 0xE000000000000000;
LABEL_41:
      v122 = *v116;
      (*v116)(v223, v67);
      v123 = v224;
      NWConnection.EstablishmentReport.Resolution.preferredEndpoint.getter();
      v98(v115, v123, v67);
      v124 = OUTLINED_FUNCTION_57();
      v125 = v99(v124);
      if (v125 == v220)
      {
        OUTLINED_FUNCTION_7_22();
        v126 = OUTLINED_FUNCTION_57();
        v127(v126);
        v128 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointO4HostO4host_AC4PortV4porttMd, &_s7Network10NWEndpointO4HostO4host_AC4PortV4porttMR) + 48);
        v129 = v204;
        v130 = v205;
        (*v196)(v204, v115, v205);
        v131 = &v115[v128];
        v133 = v206;
        v132 = v207;
        (*v195)(v206, v131, v207);
        v134 = NWEndpoint.Host.debugDescription.getter();
        v136 = v135;
        LOWORD(v128) = NWEndpoint.Port.rawValue.getter();
        (*v194)(v133, v132);
        v137 = v129;
        v67 = v190;
        (*v193)(v137, v130);
        v138 = v128;
        v139 = 0x100000000;
        v140 = v225;
      }

      else
      {
        v140 = v225;
        if (v125 == v197)
        {
          OUTLINED_FUNCTION_7_22();
          v141 = OUTLINED_FUNCTION_57();
          v142(v141);

          v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_SS4typeSS6domain7Network11NWInterfaceVSg9interfacetMd, &_sSS4name_SS4typeSS6domain7Network11NWInterfaceVSg9interfacetMR);
          outlined destroy of ConnectionSnapshotReport?(&v115[*(v143 + 80)], &_s7Network11NWInterfaceVSgMd, &_s7Network11NWInterfaceVSgMR);
          v134 = 0;
          v138 = 0;
          v139 = 0x300000000;
        }

        else if (v125 == v188 || v125 != v185)
        {
          v145 = OUTLINED_FUNCTION_57();
          (v122)(v145);
          v134 = 0;
          v138 = 0;
          v139 = 0x500000000;
        }

        else
        {
          v144 = OUTLINED_FUNCTION_57();
          (v122)(v144);
          v134 = 0;
          v138 = 0;
          v139 = 0x400000000;
        }

        v136 = 0xE000000000000000;
      }

      v122(v224, v67);
      LOBYTE(v244[0]) = 0;
      v243 = 0;
      LOBYTE(v248) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v140 = v155;
      }

      v147 = *(v140 + 16);
      v146 = *(v140 + 24);
      if (v147 >= v146 >> 1)
      {
        OUTLINED_FUNCTION_5_28(v146);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v225 = v156;
      }

      else
      {
        v225 = v140;
      }

      v148 = v213 | v214;
      v13 = (v139 | v138);
      v23 = v203;
      (*v192)(v226, v203);
      v149 = v225;
      *(v225 + 16) = v147 + 1;
      v150 = v149 + 80 * v147;
      *(v150 + 32) = v217;
      *(v150 + 36) = v244[0];
      v151 = v228;
      *(v150 + 37) = v227;
      *(v150 + 39) = v151;
      *(v150 + 40) = v95;
      *(v150 + 48) = v243;
      v152 = v246[2];
      *(v150 + 49) = *v246;
      *(v150 + 51) = v152;
      *(v150 + 52) = a1;
      *(v150 + 56) = v248;
      v153 = *(&v229 + 3);
      *(v150 + 57) = v229;
      *(v150 + 60) = v153;
      v154 = v215;
      *(v150 + 64) = v216;
      *(v150 + 72) = v154;
      *(v150 + 80) = v148;
      *(v150 + 88) = v134;
      *(v150 + 96) = v136;
      *(v150 + 104) = v13;
      if (!v218)
      {

        v90 = v179;
        v157 = v225;
        goto LABEL_59;
      }

      v37 = v218 - 1;
      v30 = &v212[v191];
      v18 = v202;
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    swift_once();
  }

  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t closure #1 in NetworkConnectionProvider.updateAndEmitConnectionMetricsReadyEstablishmentReport()(const void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    memcpy(__dst, (v6 + 512), sizeof(__dst));
    memcpy((v6 + 512), a1, 0x70uLL);
    outlined init with copy of NetworkConnectionProtocol?(a1, v43, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
    outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
    v8 = NetworkConnectionProvider.connectionMetrics.modify(v31);
    if (*(v7 + 512))
    {
      v9 = v7;
      v10 = 0xE000000000000000;
      v30[0] = 0;
      v30[1] = 0xE000000000000000;
      outlined init with copy of RPCOspreyConnectionProtocol(a3, v43);
      outlined init with copy of NetworkConnectionProtocol?(v43, v42, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
      if (*(&v42[1] + 1))
      {
        outlined init with take of RPCOspreyConnectionProtocol(v42, __src);
        outlined init with copy of RPCOspreyConnectionProtocol(__src, v32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
        v11 = String.init<A>(describing:)();
        v10 = v12;
        __swift_destroy_boxed_opaque_existential_0(__src);
      }

      else
      {
        v11 = 0;
      }

      outlined destroy of NetworkConnectionProtocol?(v43, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
      MEMORY[0x223DE2180](v11, v10);

      v13 = v30[1];
      *(v9 + 456) = v30[0];
      *(v9 + 464) = v13;

      (v8)(v31, 0);
    }

    else
    {
      (v8)(v31, 0);
    }

    memcpy(__src, (v6 + 512), sizeof(__src));
    v14 = *(v6 + 528);
    v37 = *(v6 + 512);
    v38 = v14;
    v39 = *(v6 + 544);
    v40 = *(v6 + 560);
    v15 = __src[7];
    v16 = *(v6 + 592);
    v34 = *(v6 + 576);
    v35 = v16;
    v36 = *(v6 + 608);
    if (__src[7])
    {
      memcpy(v42, (v6 + 512), sizeof(v42));
      outlined init with copy of ConnectionEstablishmentReport(v42, v32);
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.siriNetwork);
      memcpy(v43, __src, sizeof(v43));
      outlined init with copy of ConnectionEstablishmentReport(v43, v32);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      outlined destroy of NetworkConnectionProtocol?(__src, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v29[0] = v21;
        *v20 = 136315138;
        v31[0] = v37;
        v31[1] = v38;
        v31[2] = v39;
        *&v31[3] = v40;
        *(&v31[3] + 1) = v15;
        v31[4] = v34;
        v31[5] = v35;
        v31[6] = v36;
        memcpy(v32, __src, sizeof(v32));
        outlined init with copy of ConnectionEstablishmentReport(v32, v30);
        v22 = String.init<A>(describing:)();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v29);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_223515000, v18, v19, "%s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x223DE38F0](v21, -1, -1);
        MEMORY[0x223DE38F0](v20, -1, -1);
        outlined destroy of NetworkConnectionProtocol?(__src, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
      }

      else
      {

        outlined destroy of NetworkConnectionProtocol?(__src, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
      }
    }

    memcpy(v32, (v6 + 512), sizeof(v32));
    if (v32[7])
    {
      memcpy(v42, (v6 + 512), sizeof(v42));
      memcpy(v43, (v6 + 512), sizeof(v43));
      outlined init with copy of ConnectionEstablishmentReport(v42, v31);
      ConnectionEstablishmentReport.netConnectionStateReadySnapshot.getter();
      if (v25)
      {
        v26 = v25;
        NetworkAnalytics.logNetworkConnectionStateReadySnapshotCaptured(_:)();
        outlined destroy of NetworkConnectionProtocol?(v32, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
      }

      else
      {
        outlined destroy of NetworkConnectionProtocol?(v32, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
      }
    }

    memcpy(v31, (v6 + 512), sizeof(v31));
    if (*(&v31[3] + 1))
    {
      memcpy(v30, (v6 + 512), sizeof(v30));
      memcpy(v42, (v6 + 512), sizeof(v42));
      outlined init with copy of ConnectionEstablishmentReport(v30, v29);
      ConnectionEstablishmentReport.netDebugConnectionStateReadySnapshot.getter();
      if (v27)
      {
        v28 = v27;
        NetworkAnalytics.logDebugNetworkConnectionStateReadySnapshotCaptured(_:)();
        outlined destroy of NetworkConnectionProtocol?(v31, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
      }

      else
      {
        outlined destroy of NetworkConnectionProtocol?(v31, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionEstablishmentReport(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t storeEnumTagSinglePayload for ConnectionEstablishmentReport(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ConnectionEstablishmentReport.debugDescription.getter()
{
  v1 = 0x6E776F6E6B6E75;
  _StringGuts.grow(_:)(23);

  OUTLINED_FUNCTION_5_0();
  v30[0] = 0xD000000000000015;
  v30[1] = v2;
  if (*(v0 + 20))
  {
    OUTLINED_FUNCTION_4_23();
  }

  else
  {
    LODWORD(v31[0]) = *(v0 + 16);
    String.init<A>(describing:)();
  }

  OUTLINED_FUNCTION_3_23();

  v28 = v30[0];
  v29 = v30[1];
  _StringGuts.grow(_:)(19);

  OUTLINED_FUNCTION_5_0();
  v30[0] = 0xD000000000000011;
  v30[1] = v3;
  v4 = ConnectionEstablishmentReport.attemptDelayInMs.getter();
  if ((v4 & 0x100000000) != 0)
  {
    OUTLINED_FUNCTION_4_23();
  }

  else
  {
    LODWORD(v31[0]) = v4;
    String.init<A>(describing:)();
  }

  OUTLINED_FUNCTION_3_23();

  v26 = v30[0];
  v27 = v30[1];
  strcpy(v30, "durationInMs ");
  HIWORD(v30[1]) = -4864;
  v5 = ConnectionEstablishmentReport.durationInMs.getter();
  if (v6)
  {
    OUTLINED_FUNCTION_4_23();
  }

  else
  {
    v31[0] = v5;
    String.init<A>(describing:)();
  }

  OUTLINED_FUNCTION_3_23();

  v24 = v30[0];
  v25 = v30[1];
  OUTLINED_FUNCTION_2_26();
  _StringGuts.grow(_:)(29);

  OUTLINED_FUNCTION_5_0();
  v30[0] = 0xD00000000000001BLL;
  v30[1] = v7;
  v8 = MEMORY[0x223DE2280](*(v0 + 56), &type metadata for ConnectionHandshakeReport);
  MEMORY[0x223DE2180](v8);

  v23 = v30[1];
  OUTLINED_FUNCTION_2_26();
  _StringGuts.grow(_:)(30);

  OUTLINED_FUNCTION_5_0();
  v30[0] = 0xD00000000000001CLL;
  v30[1] = v9;
  v10 = MEMORY[0x223DE2280](*(v0 + 64), &type metadata for ConnectionResolutionReport);
  MEMORY[0x223DE2180](v10);

  v22 = v30[1];
  OUTLINED_FUNCTION_2_26();
  _StringGuts.grow(_:)(18);

  OUTLINED_FUNCTION_5_0();
  v30[1] = v11;
  OUTLINED_FUNCTION_3_23();

  v12 = v30[1];
  strcpy(v30, "usedProxy ");
  BYTE3(v30[1]) = 0;
  HIDWORD(v30[1]) = -369098752;
  if (*(v0 + 73))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_3_23();

  v15 = v30[0];
  v14 = v30[1];
  OUTLINED_FUNCTION_2_26();
  _StringGuts.grow(_:)(17);

  strcpy(v31, "proxyEndpoint ");
  HIBYTE(v31[1]) = -18;
  v16 = *(v0 + 88);
  if (v16)
  {
    v17 = *(v0 + 96);
    v30[0] = *(v0 + 80);
    v30[1] = v16;
    v30[2] = v17;

    v18 = String.init<A>(describing:)();
    v13 = v19;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_4_23();
  }

  MEMORY[0x223DE2180](v18, v13);

  MEMORY[0x223DE2180](41, 0xE100000000000000);
  OUTLINED_FUNCTION_2_26();
  _StringGuts.grow(_:)(17);

  v30[0] = 0x697463656E6E6F63;
  v30[1] = 0xEF206F666E496E6FLL;
  if (*(v0 + 8))
  {
    v1 = *v0;
    v20 = *(v0 + 8);
  }

  else
  {
    v20 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v1, v20);

  _StringGuts.grow(_:)(82);
  MEMORY[0x223DE2180](0xD000000000000030, 0x80000002235F91F0);
  MEMORY[0x223DE2180](v28, v29);

  OUTLINED_FUNCTION_0_45();
  MEMORY[0x223DE2180](v26, v27);

  OUTLINED_FUNCTION_0_45();
  MEMORY[0x223DE2180](v24, v25);

  OUTLINED_FUNCTION_0_45();
  MEMORY[0x223DE2180](0xD00000000000001BLL, v23);

  OUTLINED_FUNCTION_0_45();
  MEMORY[0x223DE2180](0xD00000000000001CLL, v22);

  OUTLINED_FUNCTION_0_45();
  MEMORY[0x223DE2180](0xD000000000000010, v12);

  OUTLINED_FUNCTION_0_45();
  MEMORY[0x223DE2180](v15, v14);

  OUTLINED_FUNCTION_0_45();
  MEMORY[0x223DE2180](v31[0], v31[1]);

  OUTLINED_FUNCTION_0_45();
  MEMORY[0x223DE2180](v30[0], v30[1]);

  return 0;
}