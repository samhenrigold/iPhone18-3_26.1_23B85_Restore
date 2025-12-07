uint64_t closure #1 in STLSServerHandshaker.init(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void))
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1B25F5000, v9, v10, "In handshaker selection callback...", v11, 2u);
    MEMORY[0x1B274ECF0](v11, -1, -1);
  }

  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v27 = a2;
    v28 = a3;
    v29 = a4;
    v31 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v14 = (a1 + 56);
    do
    {
      v30 = v12;
      v15 = *(v14 - 3);
      v16 = *(v14 - 2);
      v17 = *(v14 - 1);
      v18 = *v14;
      if (*v14 >> 60 == 15)
      {
        v19 = 0;
      }

      else
      {
        v19 = *(v14 - 1);
      }

      if (*v14 >> 60 == 15)
      {
        v20 = 0xC000000000000000;
      }

      else
      {
        v20 = *v14;
      }

      v21 = objc_allocWithZone(SwiftTLSOfferedEPSK);
      outlined copy of Data._Representation(v15, v16);
      outlined copy of Data?(v17, v18);
      outlined copy of Data._Representation(v15, v16);
      outlined copy of Data?(v17, v18);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v23 = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v19, v20);
      [v21 initWithExternalIdentity:isa :v23];

      outlined consume of Data._Representation(v15, v16);
      outlined consume of Data._Representation(v15, v16);
      outlined consume of ByteBuffer?(v17, v18);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 += 4;
      v12 = v30 - 1;
    }

    while (v30 != 1);
    v13 = v31;
    a4 = v29;
    a2 = v27;
    a3 = v28;
  }

  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = a3;
  v24[4] = v13;

  a4(v25, partial apply for closure #2 in closure #1 in STLSServerHandshaker.init(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:), v24);
}

void closure #2 in closure #1 in STLSServerHandshaker.init(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(id a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for SymmetricKey();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EPSK(0);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  *&v54 = &v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v50 - v17;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, logger);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B25F5000, v20, v21, "In handshaker complete block...", v22, 2u);
      MEMORY[0x1B274ECF0](v22, -1, -1);
    }

    if (!a1)
    {
      (*(v57 + 56))(v18, 1, 1, v58);
      (a2)(0, v18);
      outlined destroy of P256.Signing.PrivateKey?(v18, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
      return;
    }

    a1 = a1;
    v23 = [a1 external_identity];
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = 0;
    v28 = v26 >> 62;
    v51 = a3;
    v52 = a2;
    if ((v26 >> 62) > 1)
    {
      if (v28 == 2)
      {
        v27 = *(v24 + 16);
      }
    }

    else if (v28)
    {
      v27 = v24;
    }

    v53 = v24;
    v29 = [a1 epsk];
    v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    *&v59 = v30;
    *(&v59 + 1) = v32;
    SymmetricKey.init<A>(data:)();
    v33 = [a1 context];
    a2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = 0;
    v37 = v35 >> 62;
    if ((v35 >> 62) > 1)
    {
      if (v37 == 2)
      {
        v36 = *(a2 + 16);
      }
    }

    else if (v37)
    {
      v36 = a2;
    }

    if (SymmetricKey.bitCount.getter() <= 127)
    {
      break;
    }

    *v14 = v53;
    *(v14 + 8) = v26;
    *(v14 + 16) = v50;
    v41 = v58;
    (*(v55 + 32))(v14 + *(v58 + 20), v10, v56);
    v42 = (v14 + *(v41 + 24));
    *v42 = a2;
    v42[1] = v35;
    v42[2] = v36;
    outlined init with take of EncryptionLevel(v14, v54, type metadata accessor for EPSK);
    a3 = a4 & 0xFFFFFFFFFFFFFF8;
    if (a4 >> 62)
    {
      if ((a4 & 0x8000000000000000) != 0)
      {
        v49 = a4;
      }

      else
      {
        v49 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      v43 = MEMORY[0x1B274D9C0](v49);
    }

    else
    {
      v43 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0;
    v10 = (a4 & 0xC000000000000001);
    while (1)
    {
      if (v43 == v14)
      {
        (*(v57 + 56))(v18, 1, 1, v58);
        v52(0, v18);

        outlined destroy of P256.Signing.PrivateKey?(v18, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
        v47 = v54;
LABEL_32:
        outlined destroy of ServerHandshakeStateMachine(v47, type metadata accessor for EPSK);
        return;
      }

      if (!v10)
      {
        break;
      }

      v44 = MEMORY[0x1B274D8D0](v14, a4);
LABEL_25:
      v45 = v44;
      *&v59 = v44;
      a2 = closure #1 in closure #2 in closure #1 in configureServerStateMachine(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(&v59, a1);

      if (a2)
      {
        v48 = v54;
        outlined init with copy of ServerHandshakeStateMachine(v54, v18, type metadata accessor for EPSK);
        (*(v57 + 56))(v18, 0, 1, v58);
        v52(v14, v18);

        outlined destroy of P256.Signing.PrivateKey?(v18, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
        v47 = v48;
        goto LABEL_32;
      }

      if (__OFADD__(v14++, 1))
      {
        goto LABEL_34;
      }
    }

    if (v14 < *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v44 = *(a4 + 8 * v14 + 32);
      goto LABEL_25;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

  v54 = xmmword_1B26C5EE0;
  v59 = xmmword_1B26C5EE0;
  v60 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined consume of Data._Representation(a2, v35);
  outlined consume of Data._Representation(v53, v26);
  (*(v55 + 8))(v10, v56);
  v38 = swift_allocError();
  *v39 = v54;
  *(v39 + 16) = 2;
  (*(v57 + 56))(v18, 1, 1, v58);
  v40 = v38;
  v52(0, v18);

  outlined destroy of P256.Signing.PrivateKey?(v18, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
}

id STLSServerHandshaker.init(_:quicTransportParameters:alpn:pakeContext:pakeClientIdentity:pakeServerIdentity:pakePasswordVerifier:)(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  ObjectType = swift_getObjectType();
  *(&v46 + 1) = &type metadata for SwiftTLSFeatureFlags;
  *&v47 = lazy protocol witness table accessor for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags();
  v11 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v45);
  v39 = a4;
  v12 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v39);
  v14 = v13;
  v38 = a5;
  v15 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v38);
  v17 = v16;
  v37 = a6;
  v18 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v37);
  v20 = v19;
  v21 = a7;
  v23 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v21);
  if (v11)
  {
    v24 = 32150;
  }

  else
  {
    v24 = -1;
  }

  _s15SwiftTLSLibrary16PAKEServerRecordV6scheme7context14clientIdentity06serverH00I16PasswordVerifier9simulatedAcA10PAKESchemeV_10Foundation4DataVA3NSbtAA8TLSErrorOYKcfC(v24, v12, v14, v15, v17, v18, v20, v23, &v45, v22, 0, &v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary16PAKEServerRecordVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary16PAKEServerRecordVGMR);
  v25 = swift_allocObject();
  v26 = v49;
  v27 = v51[0];
  *(v25 + 112) = v50;
  *(v25 + 128) = v27;
  *(v25 + 138) = *(v51 + 10);
  v28 = v45;
  v29 = v46;
  *(v25 + 16) = xmmword_1B26C6030;
  *(v25 + 32) = v28;
  v30 = v47;
  v31 = v48;
  *(v25 + 48) = v29;
  *(v25 + 64) = v30;
  *(v25 + 80) = v31;
  *(v25 + 96) = v26;
  v32 = objc_allocWithZone(ObjectType);
  outlined init with copy of PAKEServerRecord(&v45, v43);
  v33 = STLSServerHandshaker.init(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(a1, 0, a2, a3, 0, 0, 0, 0, v25, 0);
  v34 = v33;
  outlined destroy of PAKEServerRecord(&v45);

  if (v33)
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v33;
}

NSData_optional __swiftcall STLSServerHandshaker.continueHandshake(_:)(NSData_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v119 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v115 = &v105 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v105 - v9;
  v11 = type metadata accessor for EncryptionLevel(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v112 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v105 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v105 - v19);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v111 = &v105 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v113 = &v105 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v114 = (&v105 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v105 - v27;
  if (isa)
  {
    v116 = v10;
    v117 = v20;
    v118 = v17;
    v29 = v11;
    v30 = isa;
    v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v31;
    v34 = v32;
    v35 = 0;
    v36 = v32 >> 62;
    v37 = v12;
    if ((v32 >> 62) > 1)
    {
      if (v36 == 2)
      {
        v35 = *(v31 + 16);
      }
    }

    else if (v36)
    {
      v35 = v31;
    }

    v121 = v31;
    v122 = v32;
    v123 = v35;
    v38 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_stateMachine;
    swift_beginAccess();
    v39 = type metadata accessor for ServerHandshakeStateMachine(0);
    if (!(*(*(v39 - 8) + 48))(&v2[v38], 1, v39))
    {
      ServerHandshakeStateMachine.receivedNetworkData(_:)(&v121);
      v33 = v121;
      v34 = v122;
    }

    swift_endAccess();

    outlined consume of Data._Representation(v33, v34);
    v11 = v29;
    v12 = v37;
    v20 = v117;
    v17 = v118;
    v10 = v116;
  }

  v40 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_stateMachine;
  swift_beginAccess();
  v41 = type metadata accessor for ServerHandshakeStateMachine(0);
  v42 = (*(*(v41 - 8) + 48))(&v2[v40], 1, v41);
  if (v42 == 1)
  {
    goto LABEL_66;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV07processD0AA07PartialD6ResultVSgyAA8TLSErrorOYKF(&v120, v28);
  v44 = v10;
  swift_endAccess();
  v45 = &v2[OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_partialHandshakeResult];
  swift_beginAccess();
  outlined assign with take of PartialHandshakeResult?(v28, v45, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  swift_endAccess();
  v46 = type metadata accessor for PartialHandshakeResult(0);
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  v116 = (v47 + 48);
  v49 = v48;
  v50 = v48(v45, 1, v46);
  v110 = v45;
  if (v50)
  {
    v51 = v46;
    v52 = v44;
    v12[7](v44, 1, 1, v11);
    v53 = v119;
LABEL_14:
    outlined destroy of P256.Signing.PrivateKey?(v52, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    v56 = v110;
    v57 = v49;
    v58 = v51;
    v59 = v57(v110, 1, v51);
    goto LABEL_15;
  }

  v51 = v46;
  v54 = v45 + *(v46 + 24);
  v52 = v44;
  outlined init with copy of Any?(v54, v44, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v55 = (v12[6])(v44, 1, v11);
  v53 = v119;
  if (v55 == 1)
  {
    goto LABEL_14;
  }

  v109 = v49;
  v67 = v114;
  outlined init with take of EncryptionLevel(v52, v114, type metadata accessor for EncryptionLevel);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v118 = v17;
  v68 = type metadata accessor for Logger();
  __swift_project_value_buffer(v68, logger);
  v69 = v113;
  outlined init with copy of ServerHandshakeStateMachine(v67, v113, type metadata accessor for EncryptionLevel);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  v117 = v70;
  v58 = v51;
  if (os_log_type_enabled(v70, v71))
  {
    v107 = v71;
    v72 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v121 = v105;
    v106 = v72;
    *v72 = 136315138;
    v73 = v111;
    outlined init with copy of ServerHandshakeStateMachine(v69, v111, type metadata accessor for EncryptionLevel);
    v108 = v11;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    outlined destroy of ServerHandshakeStateMachine(v69, type metadata accessor for EncryptionLevel);
    v75 = type metadata accessor for SymmetricKey();
    (*(*(v75 - 8) + 8))(v73, v75);
    if (EnumCaseMultiPayload)
    {
      v56 = v110;
      if (EnumCaseMultiPayload == 1)
      {
        v76 = 0x6B616873646E6168;
        v77 = 0xE900000000000065;
      }

      else
      {
        v76 = 0x746163696C707061;
        v77 = 0xEB000000006E6F69;
      }

      v11 = v108;
      v95 = v106;
    }

    else
    {
      v76 = 0x746144796C726165;
      v11 = v108;
      v56 = v110;
      v95 = v106;
      v77 = 0xE900000000000061;
    }

    v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, &v121);

    *(v95 + 1) = v96;
    v97 = v117;
    _os_log_impl(&dword_1B25F5000, v117, v107, "server handshaker got new read encryption level: %s", v95, 0xCu);
    v98 = v105;
    __swift_destroy_boxed_opaque_existential_0(v105);
    MEMORY[0x1B274ECF0](v98, -1, -1);
    MEMORY[0x1B274ECF0](v95, -1, -1);

    v67 = v114;
  }

  else
  {

    outlined destroy of ServerHandshakeStateMachine(v69, type metadata accessor for EncryptionLevel);
    v56 = v110;
  }

  v99 = v115;
  outlined init with take of EncryptionLevel(v67, v115, type metadata accessor for EncryptionLevel);
  v12[7](v99, 0, 1, v11);
  v100 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_readEncryptionLevel;
  swift_beginAccess();
  outlined assign with take of PartialHandshakeResult?(v99, &v2[v100], &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  swift_endAccess();
  v17 = v118;
  v53 = v119;
  v57 = v109;
  v59 = v109(v56, 1, v51);
LABEL_15:
  if (v59)
  {
    v12[7](v53, 1, 1, v11);
LABEL_18:
    outlined destroy of P256.Signing.PrivateKey?(v53, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    goto LABEL_19;
  }

  outlined init with copy of Any?(v56 + *(v58 + 20), v53, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  if ((v12[6])(v53, 1, v11) == 1)
  {
    goto LABEL_18;
  }

  outlined init with take of EncryptionLevel(v53, v20, type metadata accessor for EncryptionLevel);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v78 = type metadata accessor for Logger();
  __swift_project_value_buffer(v78, logger);
  outlined init with copy of ServerHandshakeStateMachine(v20, v17, type metadata accessor for EncryptionLevel);
  v79 = Logger.logObject.getter();
  LODWORD(v119) = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v79, v119))
  {
    v109 = v57;
    v117 = v20;
    v118 = v12;
    v80 = 0xE900000000000061;
    v81 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v121 = v114;
    *v81 = 136315138;
    v82 = v112;
    outlined init with copy of ServerHandshakeStateMachine(v17, v112, type metadata accessor for EncryptionLevel);
    v108 = v11;
    v83 = swift_getEnumCaseMultiPayload();
    outlined destroy of ServerHandshakeStateMachine(v17, type metadata accessor for EncryptionLevel);
    v84 = type metadata accessor for SymmetricKey();
    (*(*(v84 - 8) + 8))(v82, v84);
    if (v83)
    {
      v85 = v119;
      if (v83 == 1)
      {
        v86 = 0x6B616873646E6168;
        v80 = 0xE900000000000065;
      }

      else
      {
        v86 = 0x746163696C707061;
        v80 = 0xEB000000006E6F69;
      }

      v57 = v109;
    }

    else
    {
      v86 = 0x746144796C726165;
      v57 = v109;
      v85 = v119;
    }

    v101 = v114;
    v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v80, &v121);

    *(v81 + 4) = v102;
    _os_log_impl(&dword_1B25F5000, v79, v85, "server handshaker got new write encryption level: %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v101);
    MEMORY[0x1B274ECF0](v101, -1, -1);
    MEMORY[0x1B274ECF0](v81, -1, -1);

    v11 = v108;
    v20 = v117;
    v12 = v118;
  }

  else
  {

    outlined destroy of ServerHandshakeStateMachine(v17, type metadata accessor for EncryptionLevel);
  }

  v103 = v115;
  outlined init with take of EncryptionLevel(v20, v115, type metadata accessor for EncryptionLevel);
  v12[7](v103, 0, 1, v11);
  v104 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_writeEncryptionLevel;
  swift_beginAccess();
  outlined assign with take of PartialHandshakeResult?(v103, &v2[v104], &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  swift_endAccess();
LABEL_19:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  __swift_project_value_buffer(v60, logger);
  v61 = v2;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 67109120;
    v65 = !v57(v56, 1, v58) && v56[1] >> 60 != 15;
    *(v64 + 4) = v65;

    _os_log_impl(&dword_1B25F5000, v62, v63, "server handshaker has handshake bytes to send? %{BOOL}d", v64, 8u);
    MEMORY[0x1B274ECF0](v64, -1, -1);
  }

  else
  {

    v62 = v61;
  }

  v42 = v57(v56, 1, v58);
  if (!v42)
  {
    v66 = v56[1];
    if (v66 >> 60 != 15)
    {
      v87 = *v56;
      v88 = v56[2];
      v89 = v66 >> 62;
      if ((v66 >> 62) > 1)
      {
        if (v89 != 2)
        {
          v90 = 0;
          goto LABEL_53;
        }

        v90 = *(v87 + 24);
      }

      else
      {
        if (!v89)
        {
          v90 = BYTE6(v66);
LABEL_53:
          if (v90 >= v88)
          {
            v91 = Data._Representation.subscript.getter();
            v93 = v92;
            outlined consume of ByteBuffer?(v87, v66);
            v94 = Data._bridgeToObjectiveC()().super.isa;
            outlined consume of Data._Representation(v91, v93);
            v42 = v94;
            goto LABEL_67;
          }

          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v90 = v87 >> 32;
      }

      outlined copy of Data._Representation(*v56, v56[1]);
      goto LABEL_53;
    }
  }

  v42 = 0;
LABEL_67:
  result.value.super.isa = v42;
  result.is_nil = v43;
  return result;
}

Swift::Int32 __swiftcall STLSServerHandshaker.getErrorCode()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_latestError);
  if (v1)
  {
    v7 = *(v0 + OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_latestError);
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (!swift_dynamicCast())
    {
      goto LABEL_12;
    }

    if (v6 == 2)
    {
      if (v4 <= 6)
      {
        if (__PAIR128__((v4 >= 3) + v5 - 1, v4 - 3) < 2)
        {

          LODWORD(v1) = -9856;
          return v1;
        }

        if (v4 ^ 6 | v5)
        {
          goto LABEL_11;
        }

LABEL_12:

        LODWORD(v1) = -9858;
        return v1;
      }

      if (!(v4 ^ 7 | v5))
      {

        LODWORD(v1) = -9830;
        return v1;
      }

      if (!(v4 ^ 0xC | v5))
      {

        LODWORD(v1) = -9808;
        return v1;
      }
    }

LABEL_11:
    outlined consume of TLSError(v4, v5, v6);
    goto LABEL_12;
  }

  return v1;
}

Swift::Int __swiftcall STLSServerHandshaker.getEncryptionLevel(write:)(Swift::Bool write)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for EncryptionLevel(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  if (write)
  {
    v13 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_writeEncryptionLevel;
  }

  else
  {
    v13 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_readEncryptionLevel;
  }

  v14 = v1 + v13;
  swift_beginAccess();
  outlined init with copy of Any?(v14, v5, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v5, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    return -1;
  }

  else
  {
    outlined init with take of EncryptionLevel(v5, v12, type metadata accessor for EncryptionLevel);
    outlined init with take of EncryptionLevel(v12, v10, type metadata accessor for EncryptionLevel);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v17 = type metadata accessor for SymmetricKey();
    (*(*(v17 - 8) + 8))(v10, v17);
    return EnumCaseMultiPayload + 1;
  }
}

NSData_optional __swiftcall STLSServerHandshaker.getEncryptionSecret(write:)(Swift::Bool write)
{
  v3 = type metadata accessor for SymmetricKey();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v24 - v8;
  v10 = type metadata accessor for EncryptionLevel(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - v15;
  if (write)
  {
    v17 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_writeEncryptionLevel;
  }

  else
  {
    v17 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_readEncryptionLevel;
  }

  v18 = v1 + v17;
  swift_beginAccess();
  outlined init with copy of Any?(v18, v9, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v9, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    v20 = 0;
  }

  else
  {
    outlined init with take of EncryptionLevel(v9, v16, type metadata accessor for EncryptionLevel);
    outlined init with copy of ServerHandshakeStateMachine(v16, v14, type metadata accessor for EncryptionLevel);
    (*(v4 + 32))(v6, v14, v3);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    (*(v4 + 8))(v6, v3);
    v21 = v24[1];
    v22 = v24[2];
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v21, v22);
    outlined destroy of ServerHandshakeStateMachine(v16, type metadata accessor for EncryptionLevel);
    v20 = isa;
  }

  result.value.super.isa = v20;
  result.is_nil = v19;
  return result;
}

NSData_optional __swiftcall STLSServerHandshaker.getPeerQUICTransportParameters()()
{
  v1 = type metadata accessor for ServerHandshakeStateMachine(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_stateMachine;
  swift_beginAccess();
  if ((*(v2 + 48))(v0 + v5, 1, v1) || (outlined init with copy of ServerHandshakeStateMachine(v0 + v5, v4, type metadata accessor for ServerHandshakeStateMachine), v7 = ServerHandshakeStateMachine.peerQUICTransportParameters.getter(), v9 = v8, v11 = v10, v12 = outlined destroy of ServerHandshakeStateMachine(v4, type metadata accessor for ServerHandshakeStateMachine), v9 >> 60 == 15))
  {
    v12 = 0;
  }

  else
  {
    v13 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v13 == 2)
      {
        v6 = *(v7 + 24);
      }

      else
      {
        v6 = 0;
      }
    }

    else if (v13)
    {
      v6 = v7 >> 32;
    }

    else
    {
      v6 = BYTE6(v9);
    }

    if (v6 < v11)
    {
      __break(1u);
    }

    else
    {
      v14 = Data._Representation.subscript.getter();
      v16 = v15;
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v14, v16);
      outlined consume of ByteBuffer?(v7, v9);
      v12 = isa;
    }
  }

  result.is_nil = v6;
  result.value.super.isa = v12;
  return result;
}

uint64_t @objc STLSServerHandshaker.getNegotiatedCiphersuite()(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_stateMachine;
  swift_beginAccess();
  outlined init with copy of Any?(&a1[v8], v7, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMR);
  v9 = type metadata accessor for ServerHandshakeStateMachine(0);
  result = (*(*(v9 - 8) + 48))(v7, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = a1;
    v12 = a3();

    outlined destroy of ServerHandshakeStateMachine(v7, type metadata accessor for ServerHandshakeStateMachine);
    if ((v12 & 0x10000) != 0)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  return result;
}

uint64_t @objc STLSServerHandshaker.getPAKEOffered()(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_stateMachine;
  swift_beginAccess();
  outlined init with copy of Any?(&a1[v8], v7, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMR);
  v9 = type metadata accessor for ServerHandshakeStateMachine(0);
  result = (*(*(v9 - 8) + 48))(v7, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = a1;
    v12 = a3();

    outlined destroy of ServerHandshakeStateMachine(v7, type metadata accessor for ServerHandshakeStateMachine);
    return v12 & 1;
  }

  return result;
}

uint64_t type metadata accessor for STLSServerHandshaker(uint64_t a1)
{
  result = type metadata singleton initialization cache for STLSServerHandshaker;
  if (!type metadata singleton initialization cache for STLSServerHandshaker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for STLSServerHandshaker(uint64_t a1)
{
  type metadata accessor for ServerHandshakeStateMachine?(319, &lazy cache variable for type metadata for ServerHandshakeStateMachine?, type metadata accessor for ServerHandshakeStateMachine);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ServerHandshakeStateMachine?(319, &lazy cache variable for type metadata for PartialHandshakeResult?, type metadata accessor for PartialHandshakeResult);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ServerHandshakeStateMachine?(319, &lazy cache variable for type metadata for EncryptionLevel?, type metadata accessor for EncryptionLevel);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ServerHandshakeStateMachine?(319, &lazy cache variable for type metadata for SymmetricKey?, MEMORY[0x1E6966458]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata accessor for ServerHandshakeStateMachine?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
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

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x1B274CD90]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL specialized static Data.== infix(_:_:)(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t outlined init with take of EncryptionLevel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ServerHandshakeStateMachine(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ServerHandshakeStateMachine(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef()
{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(void *a1)
{
  v36[5] = *MEMORY[0x1E69E9840];
  v32 = a1;
  *&v33 = a1;
  type metadata accessor for SwiftTLSExternalPreSharedKey(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(v34, v36);
    __swift_project_boxed_opaque_existential_0(v36, v36[3]);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v34[0] = v33;
    __swift_destroy_boxed_opaque_existential_0(v36);
    goto LABEL_40;
  }

  v35 = 0;
  memset(v34, 0, sizeof(v34));
  outlined destroy of P256.Signing.PrivateKey?(v34, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  v3 = NSData.startIndex.getter();
  v4 = NSData.endIndex.getter();
  v5 = NSData.startIndex.getter();
  v6 = NSData.endIndex.getter();
  if (v3 < v5 || v6 < v3)
  {
    goto LABEL_43;
  }

  v7 = NSData.startIndex.getter();
  v8 = NSData.endIndex.getter();
  if (v4 < v7 || v8 < v4)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(v4, v3))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *&v34[0] = specialized Data._Representation.init(count:)(v4 - v3);
  *(&v34[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v34[0]);
  v31[2] = &v32;
  v12 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:), v31);
  v13 = v10;
  v14 = *&v34[0];
  v15 = *(&v34[0] + 1) >> 62;
  if ((*(&v34[0] + 1) >> 62) > 1)
  {
    if (v15 == 2)
    {
      v17 = *(*&v34[0] + 16);
      v16 = *(*&v34[0] + 24);
      v18 = __OFSUB__(v16, v17);
      v19 = v16 - v17;
      if (v18)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      if (v11 != v19)
      {
        goto LABEL_18;
      }
    }

    else if (v11)
    {
      v20 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    if (!v15)
    {
      if (v11 != BYTE14(v34[0]))
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }

    if (__OFSUB__(DWORD1(v34[0]), v34[0]))
    {
      goto LABEL_48;
    }

    if (v11 != DWORD1(v34[0]) - LODWORD(v34[0]))
    {
LABEL_18:
      if (v15 != 2)
      {
        if (v15 == 1)
        {
          v20 = *&v34[0] >> 32;
        }

        else
        {
          v20 = BYTE14(v34[0]);
        }

LABEL_37:
        if (v20 >= v11)
        {
          Data._Representation.replaceSubrange(_:with:count:)();
          goto LABEL_39;
        }

        goto LABEL_46;
      }

LABEL_35:
      v20 = *(v14 + 24);
      goto LABEL_37;
    }
  }

LABEL_23:
  memset(v36, 0, 15);
  if (v10 == NSData.endIndex.getter())
  {
    goto LABEL_39;
  }

  v21 = NSData.subscript.getter();
  v22 = NSData.startIndex.getter();
  v23 = NSData.endIndex.getter();
  if (v13 < v22 || v13 >= v23)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  LOBYTE(v24) = 0;
  v25 = v13 + 1;
  while (1)
  {
    *(v36 + v24) = v21;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v24 == 14)
    {
      *&v33 = v36[0];
      *(&v33 + 6) = *(v36 + 6);
      Data._Representation.append(contentsOf:)();
      if (v25 == NSData.endIndex.getter())
      {
        goto LABEL_39;
      }

      LOBYTE(v24) = 0;
      goto LABEL_32;
    }

    if (v25 == NSData.endIndex.getter())
    {
      break;
    }

LABEL_32:
    v21 = NSData.subscript.getter();
    v26 = NSData.startIndex.getter();
    v27 = NSData.endIndex.getter();
    if (v25 >= v26)
    {
      v14 = v25 + 1;
      if (v25++ < v27)
      {
        continue;
      }
    }

    goto LABEL_34;
  }

  *&v33 = v36[0];
  *(&v33 + 6) = *(v36 + 6);
  Data._Representation.append(contentsOf:)();
LABEL_39:

LABEL_40:
  v29 = v34[0];
  outlined copy of Data._Representation(*&v34[0], *(&v34[0] + 1));

  outlined consume of Data._Representation(v29, *(&v29 + 1));
  return v29;
}

id STLSClientHandshaker.init(_:serverName:quicTransportParameters:alpn:sessionState:ticketRequest:keyExchangeGroup:enableEarlyData:)(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, int a7, int a8)
{
  v91 = a8;
  v90 = a7;
  v102 = a6;
  v103 = a5;
  v108 = a4;
  v109 = a3;
  v101 = a1;
  ObjectType = swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v98 = v84 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v88 = v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v87 = v84 - v15;
  v86 = type metadata accessor for P256.Signing.PublicKey();
  v89 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v110 = (v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = type metadata accessor for NSFastEnumerationIterator();
  v100 = *(v99 - 8);
  v17 = MEMORY[0x1EEE9AC00](v99);
  v19 = v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v84 - v20;
  v106 = ObjectType;
  v22 = objc_allocWithZone(ObjectType);
  v23 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  v24 = type metadata accessor for HandshakeStateMachine(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v104 = v23;
  v94 = v24;
  v93 = v26;
  v92 = v25 + 56;
  (v26)(&v22[v23], 1, 1);
  v27 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_partialHandshakeResult;
  v28 = type metadata accessor for PartialHandshakeResult(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v105 = v27;
  v97 = v28;
  v96 = v30;
  v95 = v29 + 56;
  (v30)(&v22[v27], 1, 1);
  v31 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_readEncryptionLevel;
  v32 = type metadata accessor for EncryptionLevel(0);
  v33 = *(*(v32 - 8) + 56);
  v33(&v22[v31], 1, 1, v32);
  v34 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_writeEncryptionLevel;
  v33(&v22[OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_writeEncryptionLevel], 1, 1, v32);
  *&v22[OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_receivedSessionTickets] = MEMORY[0x1E69E7CC0];
  v35 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_latestError;
  *&v22[OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_latestError] = 0;
  v107 = a2;
  if (!a2 || !v109 || !v108)
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, logger);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v103;
    if (v44)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1B25F5000, v42, v43, "Cannot start the handshake with NULL parameters", v46, 2u);
      MEMORY[0x1B274ECF0](v46, -1, -1);
    }

    outlined destroy of P256.Signing.PrivateKey?(&v22[v104], &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
    outlined destroy of P256.Signing.PrivateKey?(&v22[v105], &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
    outlined destroy of P256.Signing.PrivateKey?(&v22[v31], &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    outlined destroy of P256.Signing.PrivateKey?(&v22[v34], &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);

    swift_deallocPartialClassInstance();
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v36 = v101;
  if (v101)
  {
    v37 = v107;
    v38 = v109;
    v39 = v108;
    v40 = v36;
  }

  else
  {
    type metadata accessor for SwiftTLSExternalPreSharedKey(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
    v48 = v107;
    v49 = v109;
    v50 = v108;
    v40 = MEMORY[0x1B274D7C0](MEMORY[0x1E69E7CC0]);
  }

  v101 = v36;
  v85 = v40;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (v116)
  {
    v84[1] = v89 + 32;
    v51 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        outlined init with take of Any(&v115, &v113);
        if (swift_dynamicCast())
        {
          break;
        }

        NSFastEnumerationIterator.next()();
        if (!v116)
        {
          goto LABEL_23;
        }
      }

      v52 = v111;
      v113 = v111;
      outlined copy of Data._Representation(v111, *(&v111 + 1));
      lazy protocol witness table accessor for type Data and conformance Data();
      P256.Signing.PublicKey.init<A>(derRepresentation:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51[2] + 1, 1, v51, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x1E6966570]);
      }

      v54 = v51[2];
      v53 = v51[3];
      v84[0] = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v51, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x1E6966570]);
      }

      outlined consume of Data._Representation(v52, *(&v52 + 1));
      v51[2] = v84[0];
      (*(v89 + 32))(v51 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v54, v110, v86);
      NSFastEnumerationIterator.next()();
    }

    while (v116);
  }

  else
  {
    v51 = MEMORY[0x1E69E7CC0];
  }

LABEL_23:
  v55 = v100 + 8;
  v56 = *(v100 + 8);
  v56(v21, v99);
  if (!v102)
  {
    goto LABEL_27;
  }

  if (*(v102 + 16) != 2)
  {

LABEL_27:
    LODWORD(v89) = 0;
    LODWORD(v102) = 1;
    goto LABEL_28;
  }

  LODWORD(v89) = *(v102 + 32);

  LODWORD(v102) = 0;
LABEL_28:
  v110 = v51;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (v116)
  {
    v57 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        outlined init with take of Any(&v115, &v113);
        if (swift_dynamicCast())
        {
          break;
        }

        NSFastEnumerationIterator.next()();
        if (!v116)
        {
          goto LABEL_40;
        }
      }

      v58 = v111;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100 = v55;
      v86 = v56;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 2) + 1, 1, v57);
      }

      v61 = *(v57 + 2);
      v60 = *(v57 + 3);
      if (v61 >= v60 >> 1)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v57);
      }

      *(v57 + 2) = v61 + 1;
      *&v57[16 * v61 + 32] = v58;
      NSFastEnumerationIterator.next()();
      v55 = v100;
      v56 = v86;
    }

    while (v116);
  }

  else
  {
    v57 = MEMORY[0x1E69E7CC0];
  }

LABEL_40:
  v56(v19, v99);
  v62 = v107;
  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v64;
  v66 = v109;
  v67 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;

  v70 = v69 >> 62;
  if ((v69 >> 62) > 1)
  {
    v71 = 0;
    if (v70 == 2)
    {
      v71 = *(v67 + 16);
    }
  }

  else if (v70)
  {
    v71 = v67;
  }

  else
  {
    v71 = 0;
  }

  HandshakeStateMachine.Configuration.init(serverName:validPublicKeys:quicTransportParameters:alpn:ticketRequest:fixedKeyExchangeGroup:enableEarlyData:useRawEPSKs:)(v63, v65, v110, v67, v69, v71, v57, v89 | (v102 << 16), &v115, v90, v91 & 1, 0);
  if (v103)
  {
    v72 = v103;
    v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;
    outlined init with copy of HandshakeStateMachine.Configuration(&v115, &v113);
    v76 = v87;
    _s15SwiftTLSLibrary21HandshakeStateMachineV13sessionTicket13configurationAC10Foundation4DataV_AC13ConfigurationVtAA8TLSErrorOYKcfC(v73, v75, &v115, v112, v87);
    v77 = v108;

    outlined destroy of HandshakeStateMachine.Configuration(&v115);
    v93(v76, 0, 1, v94);
    v80 = v104;
    swift_beginAccess();
    outlined assign with take of PartialHandshakeResult?(v76, &v22[v80], &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
    swift_endAccess();
  }

  else
  {
    v78 = v88;
    HandshakeStateMachine.init(configuration:)(&v115, v88);
    v77 = v108;

    v93(v78, 0, 1, v94);
    v79 = v104;
    swift_beginAccess();
    outlined assign with take of PartialHandshakeResult?(v78, &v22[v79], &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
    swift_endAccess();
    v72 = 0;
  }

  v81 = v98;
  v96(v98, 1, 1, v97);
  v82 = v105;
  swift_beginAccess();
  outlined assign with take of PartialHandshakeResult?(v81, &v22[v82], &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  swift_endAccess();
  v114.receiver = v22;
  v114.super_class = v106;
  v83 = objc_msgSendSuper2(&v114, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v83;
}

id STLSClientHandshaker.init(_:quicTransportParameters:alpn:sessionState:ticketRequest:pakeContext:pakeClientIdentity:pakeServerIdentity:pakeClientPasswordVerifier:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v10 = v9;
  v132 = a5;
  v140 = a4;
  v142 = a3;
  v143 = a1;
  v144 = a2;
  v136 = a9;
  v141 = v10;
  ObjectType = swift_getObjectType();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v129 = &v110 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v116 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v110 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v119 = &v110 - v22;
  v23 = type metadata accessor for P256.Signing.PublicKey();
  v24 = *(v23 - 8);
  v117 = v23;
  v118 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v121 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for NSFastEnumerationIterator();
  v122 = *(v131 - 8);
  v26 = MEMORY[0x1EEE9AC00](v131);
  v130 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v110 - v28;
  *(&v167 + 1) = &type metadata for SwiftTLSFeatureFlags;
  *&v168 = lazy protocol witness table accessor for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags();
  v30 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v166);
  v139 = a6;
  v31 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v139);
  v33 = v32;
  v138 = a7;
  v34 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v138);
  v36 = v35;
  v137 = a8;
  v37 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v137);
  v39 = v38;
  v136 = v136;
  v41 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v136);
  if (v30)
  {
    v42 = 32150;
  }

  else
  {
    v42 = -1;
  }

  _s15SwiftTLSLibrary23PAKEClientConfigurationV6scheme7context14clientIdentity06serverH00G16PasswordVerifierAcA10PAKESchemeV_10Foundation4DataVA3MtAA8TLSErrorOYKcfC(v42, v31, v33, v34, v36, v37, v39, v41, v163, v40, v155);
  v120 = v21;
  v170 = v163[4];
  v171 = v163[5];
  v172[0] = v164[0];
  *(v172 + 9) = *(v164 + 9);
  v166 = v163[0];
  v167 = v163[1];
  v168 = v163[2];
  v169 = v163[3];
  _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOi_();
  v160 = v170;
  v161 = v171;
  v162[0] = v172[0];
  *(v162 + 9) = *(v172 + 9);
  v156 = v166;
  v157 = v167;
  v158 = v168;
  v159 = v169;
  v43 = objc_allocWithZone(ObjectType);
  v44 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  v45 = type metadata accessor for HandshakeStateMachine(0);
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v133 = v44;
  v124 = v45;
  v125 = v47;
  v123 = v46 + 56;
  (v47)(&v43[v44], 1, 1);
  v48 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_partialHandshakeResult;
  v49 = type metadata accessor for PartialHandshakeResult(0);
  v50 = *(v49 - 8);
  v51 = *(v50 + 56);
  v134 = v48;
  v127 = v51;
  v128 = v49;
  v126 = v50 + 56;
  (v51)(&v43[v48], 1, 1);
  v52 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_readEncryptionLevel;
  v53 = type metadata accessor for EncryptionLevel(0);
  v54 = *(*(v53 - 8) + 56);
  v54(&v43[v52], 1, 1, v53);
  v55 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_writeEncryptionLevel;
  v54(&v43[OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_writeEncryptionLevel], 1, 1, v53);
  *&v43[OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_receivedSessionTickets] = MEMORY[0x1E69E7CC0];
  v56 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_latestError;
  v135 = v43;
  *&v43[OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_latestError] = 0;
  v57 = v143;
  if (v143 && v144 && v142)
  {
    type metadata accessor for SwiftTLSExternalPreSharedKey(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
    v114 = v57;
    v112 = v144;
    v142 = v142;
    v58 = MEMORY[0x1E69E7CC0];
    v113 = MEMORY[0x1B274D7C0](MEMORY[0x1E69E7CC0]);
    NSArray.makeIterator()();
    NSFastEnumerationIterator.next()();
    if (*(&v167 + 1))
    {
      v59 = v118;
      v60 = v118 + 32;
      v115 = MEMORY[0x1E69E7CC0];
      do
      {
        outlined init with take of Any(&v166, &v148);
        if (swift_dynamicCast())
        {
          v61 = *v146;
          v148 = *v146;
          outlined copy of Data._Representation(v146[0], v146[1]);
          lazy protocol witness table accessor for type Data and conformance Data();
          P256.Signing.PublicKey.init<A>(derRepresentation:)();
          v62 = v115;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62[2] + 1, 1, v62, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x1E6966570]);
          }

          v111 = v60;
          v63 = v62;
          v64 = v62[2];
          v115 = v63;
          v65 = v63[3];
          if (v64 >= v65 >> 1)
          {
            v115 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v64 + 1, 1, v115, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x1E6966570]);
          }

          outlined consume of Data._Representation(v61, *(&v61 + 1));
          v66 = v115;
          v115[2] = v64 + 1;
          v60 = v111;
          (*(v59 + 32))(v66 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v64, v121, v117);
        }

        NSFastEnumerationIterator.next()();
      }

      while (*(&v167 + 1));
    }

    else
    {
      v115 = v58;
    }

    v74 = *(v122 + 8);
    (v74)(v29, v131);
    if (v132)
    {
      v75 = v130;
      if (*(v132 + 16) == 2)
      {
        LODWORD(v122) = *(v132 + 32);

        LODWORD(v132) = 0;
      }

      else
      {

        LODWORD(v122) = 0;
        LODWORD(v132) = 1;
      }
    }

    else
    {
      LODWORD(v122) = 0;
      LODWORD(v132) = 1;
      v75 = v130;
    }

    NSArray.makeIterator()();
    NSFastEnumerationIterator.next()();
    if (*(&v167 + 1))
    {
      v76 = MEMORY[0x1E69E7CC0];
      do
      {
        while (1)
        {
          outlined init with take of Any(&v166, &v148);
          if (swift_dynamicCast())
          {
            break;
          }

          NSFastEnumerationIterator.next()();
          if (!*(&v167 + 1))
          {
            goto LABEL_39;
          }
        }

        v121 = v74;
        v77 = *v146;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v76 + 2) + 1, 1, v76);
        }

        v79 = *(v76 + 2);
        v78 = *(v76 + 3);
        if (v79 >= v78 >> 1)
        {
          v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v76);
        }

        *(v76 + 2) = v79 + 1;
        *&v76[16 * v79 + 32] = v77;
        v75 = v130;
        NSFastEnumerationIterator.next()();
        v74 = v121;
      }

      while (*(&v167 + 1));
    }

    else
    {
      v76 = MEMORY[0x1E69E7CC0];
    }

LABEL_39:
    (v74)(v75, v131);
    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;
    v83 = v112;
    v84 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    v87 = v86 >> 62;
    if ((v86 >> 62) > 1)
    {
      v88 = 0;
      v89 = v115;
      if (v87 == 2)
      {
        v88 = *(v84 + 16);
      }
    }

    else
    {
      if (v87)
      {
        v88 = v84;
      }

      else
      {
        v88 = 0;
      }

      v89 = v115;
    }

    HandshakeStateMachine.Configuration.init(serverName:validPublicKeys:quicTransportParameters:alpn:ticketRequest:fixedKeyExchangeGroup:enableEarlyData:useRawEPSKs:)(v80, v82, v89, v84, v86, v88, v76, v122 | (v132 << 16), v165, 24, 0, 0);
    v90 = v140;
    if (v140)
    {
      v91 = v140;
      v92 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v94 = v93;
      outlined init with copy of HandshakeStateMachine.Configuration(v165, &v166);
      v95 = v119;
      _s15SwiftTLSLibrary21HandshakeStateMachineV13sessionTicket13configurationAC10Foundation4DataV_AC13ConfigurationVtAA8TLSErrorOYKcfC(v92, v94, v165, v155, v119);
      v96 = v135;
      v97 = v114;

      outlined destroy of HandshakeStateMachine.Configuration(v165);
      v102 = v142;

      v125(v95, 0, 1, v124);
      v103 = v133;
      swift_beginAccess();
      outlined assign with take of PartialHandshakeResult?(v95, v96 + v103, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
      swift_endAccess();
      v104 = v102;
    }

    else
    {
      v152 = v160;
      v153 = v161;
      v154[0] = v162[0];
      *(v154 + 9) = *(v162 + 9);
      v148 = v156;
      v149 = v157;
      v150 = v158;
      v151 = v159;
      v98 = _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOg(&v148);
      v96 = v135;
      v97 = v114;
      if (v98 == 1)
      {
        v99 = v120;
        HandshakeStateMachine.init(configuration:)(v165, v120);
        v100 = v142;

        v125(v99, 0, 1, v124);
        v101 = v133;
        swift_beginAccess();
        outlined assign with take of PartialHandshakeResult?(v99, v96 + v101, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
        swift_endAccess();
        v104 = v100;
      }

      else
      {
        v170 = v152;
        v171 = v153;
        v172[0] = v154[0];
        *(v172 + 9) = *(v154 + 9);
        v166 = v148;
        v167 = v149;
        v168 = v150;
        v169 = v151;
        outlined init with copy of Any?(&v156, v146, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
        outlined init with copy of HandshakeStateMachine.Configuration(v165, v146);
        outlined init with copy of Any?(&v156, v146, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
        v105 = v116;
        _s15SwiftTLSLibrary21HandshakeStateMachineV4pake13configurationAcA23PAKEClientConfigurationV_AC0I0VtAA8TLSErrorOYKcfC(&v166, v165, v155, v116);

        outlined destroy of HandshakeStateMachine.Configuration(v165);
        outlined destroy of P256.Signing.PrivateKey?(&v156, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
        v104 = v142;

        v125(v105, 0, 1, v124);
        v106 = v133;
        swift_beginAccess();
        outlined assign with take of PartialHandshakeResult?(v105, v96 + v106, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
        swift_endAccess();
      }
    }

    v107 = v129;
    v127(v129, 1, 1, v128);
    v108 = v134;
    swift_beginAccess();
    outlined assign with take of PartialHandshakeResult?(v107, v96 + v108, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
    swift_endAccess();
    v147.receiver = v96;
    v147.super_class = ObjectType;
    v73 = objc_msgSendSuper2(&v147, sel_init);
    outlined destroy of P256.Signing.PrivateKey?(&v156, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
  }

  else
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, logger);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_1B25F5000, v68, v69, "Cannot start the handshake with NULL parameters", v70, 2u);
      v71 = v70;
      v57 = v143;
      MEMORY[0x1B274ECF0](v71, -1, -1);
    }

    outlined destroy of P256.Signing.PrivateKey?(&v156, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);

    v72 = v135;
    outlined destroy of P256.Signing.PrivateKey?(&v135[v133], &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
    outlined destroy of P256.Signing.PrivateKey?(&v72[v134], &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
    outlined destroy of P256.Signing.PrivateKey?(&v72[v52], &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    outlined destroy of P256.Signing.PrivateKey?(&v72[v55], &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);

    swift_deallocPartialClassInstance();
    v73 = 0;
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v73;
}

NSData_optional __swiftcall STLSClientHandshaker.getClientRandom()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  swift_beginAccess();
  outlined init with copy of Any?(v0 + v4, v3, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  v5 = type metadata accessor for HandshakeStateMachine(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  if (v6 == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = HandshakeStateMachine.clientRandom.getter();
  v10 = v9;
  v12 = v11;
  v6 = outlined destroy of ExportedAuthenticator(v3, type metadata accessor for HandshakeStateMachine);
  if (v10 >> 60 != 15)
  {
    v13 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v13 == 2)
      {
        v7 = *(v8 + 24);
      }

      else
      {
        v7 = 0;
      }
    }

    else if (v13)
    {
      v7 = v8 >> 32;
    }

    else
    {
      v7 = BYTE6(v10);
    }

    if (v7 >= v12)
    {
      v14 = Data._Representation.subscript.getter();
      v16 = v15;
      outlined consume of ByteBuffer?(v8, v10);
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v14, v16);
      v6 = isa;
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_15;
  }

  v6 = 0;
LABEL_16:
  result.is_nil = v7;
  result.value.super.isa = v6;
  return result;
}

uint64_t thunk for @callee_unowned @convention(block) (@unowned NSData) -> (@autoreleased NSData?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = (*(a3 + 16))(a3, isa);

  if (!v5)
  {
    return 0;
  }

  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

{
  return a1();
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x1E6966570]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary4EPSKVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary4EPSKVGMR, type metadata accessor for EPSK);
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySo6NSDataCG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

id specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = specialized closure #1 in closure #3 in Data.init<A>(_:)(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    return result;
  }

  return result;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized STLSClientHandshaker.validateAuthenticator(authenticator:context:keyParser:)(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v26 = a3;
  v27 = a4;
  v24 = a2;
  v25 = a1;
  v6 = type metadata accessor for ExportedAuthenticator(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for HandshakeStateMachine(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  swift_beginAccess();
  outlined init with copy of Any?(v5 + v16, v11, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v11, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
    return MEMORY[0x1E69E7CC0];
  }

  outlined init with take of HandshakeStateMachine(v11, v15, type metadata accessor for HandshakeStateMachine);
  v17 = 0;
  v18 = v24;
  v19 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    v20 = v25;
    if (v19 == 2)
    {
      v17 = *(v25 + 16);
      goto LABEL_8;
    }
  }

  else
  {
    v20 = v25;
    if (v19)
    {
      v17 = v25;
LABEL_8:
      outlined copy of Data._Representation(v20, v24);
    }
  }

  v28 = v20;
  v29 = v18;
  v30 = v17;
  outlined init with copy of HandshakeStateMachine(v15, &v8[*(v6 + 24)], type metadata accessor for HandshakeStateMachine);
  *v8 = xmmword_1B26C5EF0;
  *(v8 + 2) = 0;
  v8[24] = 0;
  HandshakeMessageParser.appendBytes(_:)(&v28);
  v22 = _s15SwiftTLSLibrary21ExportedAuthenticatorV8validate9keyParserSay10Foundation4DataVGAHSgAHXE_tAA8TLSErrorOYKF(v26, v27);
  outlined destroy of ExportedAuthenticator(v8, type metadata accessor for ExportedAuthenticator);
  outlined consume of Data._Representation(v28, v29);
  outlined destroy of ExportedAuthenticator(v15, type metadata accessor for HandshakeStateMachine);
  return v22;
}

void *partial apply for specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = **(v3 + 16);
  v8[2] = &v9;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySo6NSDataCG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v8, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t outlined init with take of ContiguousBytes(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = NSData.startIndex.getter();
  v7 = result;
  if (!a1 || !a2)
  {
    return a3;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (result != NSData.endIndex.getter())
    {
      v8 = 0;
      while (1)
      {
        v9 = v8;
        v10 = v7 + v8;
        v11 = NSData.subscript.getter();
        v12 = NSData.startIndex.getter();
        result = NSData.endIndex.getter();
        if (v10 < v12 || v10 >= result)
        {
          break;
        }

        *(a1 + v9) = v11;
        if (a2 - 1 != v9)
        {
          v13 = NSData.endIndex.getter();
          v8 = v9 + 1;
          if (v7 + v9 + 1 != v13)
          {
            continue;
          }
        }

        return a3;
      }

      __break(1u);
      goto LABEL_12;
    }

    return a3;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of HandshakeStateMachine(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ExportedAuthenticator(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t one-time initialization function for SwiftTLSPAKELimiter()
{
  type metadata accessor for PAKELimiter();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x1E69E7CC8];
  SwiftTLSPAKELimiter = result;
  return result;
}

uint64_t PAKELimiter.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t *SwiftTLSPAKELimiter.unsafeMutableAddressor()
{
  if (one-time initialization token for SwiftTLSPAKELimiter != -1)
  {
    swift_once();
  }

  return &SwiftTLSPAKELimiter;
}

uint64_t PAKECredential.context.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t PAKECredential.clientIdentity.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t PAKECredential.serverIdentity.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Data._Representation(v1, *(v0 + 40));
  return v1;
}

uint64_t PAKECredential.init(context:clientIdentity:serverIdentity:isServer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

__n128 PAKECredential.init(PAKEClientConfiguration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *(a1 + 8);
  v4 = *(a1 + 24);
  v10 = *(a1 + 40);
  v11 = v4;
  v5 = v10;
  v7 = v4;
  v8 = v12;
  outlined init with copy of Data(&v12, v9);
  outlined init with copy of Data(&v11, v9);
  outlined init with copy of Data(&v10, v9);
  outlined destroy of PAKEClientConfiguration(a1);
  result = v8;
  *a2 = v8;
  *(a2 + 16) = v7;
  *(a2 + 32) = v5;
  *(a2 + 48) = 0;
  return result;
}

__n128 PAKECredential.init(PAKEServerRecord:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *(a1 + 8);
  v4 = *(a1 + 24);
  v10 = *(a1 + 40);
  v11 = v4;
  v5 = v10;
  v7 = v4;
  v8 = v12;
  outlined init with copy of Data(&v12, v9);
  outlined init with copy of Data(&v11, v9);
  outlined init with copy of Data(&v10, v9);
  outlined destroy of PAKEServerRecord(a1);
  result = v8;
  *a2 = v8;
  *(a2 + 16) = v7;
  *(a2 + 32) = v5;
  *(a2 + 48) = 1;
  return result;
}

uint64_t static PAKECredential.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) && specialized static Data.== infix(_:_:)(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) && specialized static Data.== infix(_:_:)(*(a1 + 32), *(a1 + 40), *(a2 + 32), *(a2 + 40)))
  {
    v4 = *(a1 + 48) ^ *(a2 + 48) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void PAKECredential.hash(into:)(uint64_t a1)
{
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(*(v1 + 48) & 1);
}

Swift::Int PAKECredential.hashValue.getter()
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(*(v0 + 48) & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PAKECredential()
{
  v1 = *(v0 + 48);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PAKECredential(uint64_t a1)
{
  v2 = *(v1 + 48);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PAKECredential(uint64_t a1)
{
  v2 = *(v1 + 48);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PAKECredential(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (!specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !specialized static Data.== infix(_:_:)(v2, v3, v7, v8))
  {
    return 0;
  }

  if (specialized static Data.== infix(_:_:)(v4, v5, v9, v10))
  {
    return v6 ^ v11 ^ 1u;
  }

  return 0;
}

uint64_t PAKELimiter.addPAKECredential(credential:limit:)(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  os_unfair_lock_lock((v2 + 16));
  if (*(*(v2 + 24) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v4, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v10;

    v7 = 1;
  }

  os_unfair_lock_unlock(v3 + 4);
  return v7;
}

BOOL PAKELimiter.hasPAKEAttempt(credential:)(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_lock((v1 + 16));
  v4 = *(v1 + 24);
  v7 = *(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0) && *(*(v4 + 56) + 4 * v5) != 0;
  os_unfair_lock_unlock(v2 + 4);
  return v7;
}

uint64_t PAKELimiter.claimPAKEAttempt(credential:)(__int128 *a1)
{
  v2 = v1;
  os_unfair_lock_lock((v1 + 16));
  v4 = *(v1 + 24);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0) && (v7 = *(*(v4 + 56) + 4 * v5)) != 0)
  {
    v8 = v7 - 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v2 + 24);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v12;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock((v2 + 16));
  return v10;
}

unint64_t PAKELimiter.restorePAKEAttempt(credential:)(__int128 *a1)
{
  v2 = v1;
  os_unfair_lock_lock((v1 + 16));
  v4 = *(v1 + 24);
  if (!*(v4 + 16) || (result = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) == 0))
  {
    v10 = 0;
    goto LABEL_6;
  }

  v7 = *(*(v4 + 56) + 4 * result);
  v8 = v7 + 1;
  if (v7 != -1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v11;
    v10 = 1;
LABEL_6:
    os_unfair_lock_unlock((v2 + 16));
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t PAKELimiter.__deallocating_deinit()
{
  outlined destroy of [PAKECredential : UInt32](v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t PAKELimiter.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = MEMORY[0x1E69E7CC8];
  return result;
}

double variable initialization expression of ServerHandshakeState.ClientHelloVerifier.clientOfferedPAKE@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double variable initialization expression of PAKEServerState.pakeServerHello@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xF000000000000000;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

uint64_t variable initialization expression of TLSRecordProtector.writeKey@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(*(a1 + 48) & 1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt16 *a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*a1);
  Data.hash(into:)();
  Data.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(int a1, __int128 *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_15:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 4 * result) = a1;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  v20 = v19[6] + 56 * result;
  v21 = *a2;
  v22 = a2[1];
  v23 = a2[2];
  *(v20 + 48) = *(a2 + 48);
  *(v20 + 16) = v22;
  *(v20 + 32) = v23;
  *v20 = v21;
  *(v19[7] + 4 * result) = a1;
  v24 = v19[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19[2] = v25;
  return outlined init with copy of PAKECredential(a2, v26);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v102[3] = *MEMORY[0x1E69E9840];
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v99 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = a1;
    v98 = ~v3;
    v6 = *a1;
    v7 = a1[1];
    if (*a1)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7 == 0xC000000000000000;
    }

    v9 = !v8;
    v95 = v9;
    v10 = v7 >> 62;
    v93 = *a1;
    v11 = HIDWORD(v6) - v6;
    v12 = __OFSUB__(HIDWORD(v6), v6);
    v92 = v12;
    v90 = a1[1];
    v91 = v11;
    v94 = BYTE6(v7);
    v96 = v7 >> 62;
    while (1)
    {
      v13 = *(v2 + 48) + 56 * v4;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      v18 = *(v13 + 32);
      v19 = *(v13 + 40);
      v20 = *(v13 + 48);
      v21 = v15 >> 62;
      if (v15 >> 62 == 3)
      {
        break;
      }

      if (v21 > 1)
      {
        if (v21 != 2)
        {
          goto LABEL_37;
        }

        v29 = *(v14 + 16);
        v28 = *(v14 + 24);
        v30 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v30)
        {
          goto LABEL_179;
        }

        if (v10 <= 1)
        {
          goto LABEL_34;
        }
      }

      else if (v21)
      {
        LODWORD(v27) = HIDWORD(v14) - v14;
        if (__OFSUB__(HIDWORD(v14), v14))
        {
          goto LABEL_180;
        }

        v27 = v27;
        if (v10 <= 1)
        {
LABEL_34:
          v31 = v94;
          if (v10)
          {
            v31 = v91;
            if (v92)
            {
              __break(1u);
LABEL_178:
              __break(1u);
LABEL_179:
              __break(1u);
LABEL_180:
              __break(1u);
LABEL_181:
              __break(1u);
LABEL_182:
              __break(1u);
LABEL_183:
              __break(1u);
LABEL_184:
              __break(1u);
LABEL_185:
              __break(1u);
LABEL_186:
              __break(1u);
LABEL_187:
              __break(1u);
LABEL_188:
              __break(1u);
LABEL_189:
              __break(1u);
LABEL_190:
              __break(1u);
LABEL_191:
              __break(1u);
LABEL_192:
              __break(1u);
LABEL_193:
              __break(1u);
LABEL_194:
              __break(1u);
LABEL_195:
              __break(1u);
LABEL_196:
              __break(1u);
LABEL_197:
              __break(1u);
LABEL_198:
              __break(1u);
LABEL_199:
              __break(1u);
LABEL_200:
              __break(1u);
            }
          }

          goto LABEL_40;
        }
      }

      else
      {
        v27 = BYTE6(v15);
        if (v10 <= 1)
        {
          goto LABEL_34;
        }
      }

LABEL_38:
      if (v10 != 2)
      {
        if (v27)
        {
          goto LABEL_14;
        }

LABEL_46:
        v97 = v20;
        v25 = v14;
        v26 = v15;
LABEL_47:
        outlined copy of Data._Representation(v25, v26);
        outlined copy of Data._Representation(v16, v17);
        v100 = v18;
        outlined copy of Data._Representation(v18, v19);
        goto LABEL_48;
      }

      v33 = *(v93 + 16);
      v32 = *(v93 + 24);
      v30 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v30)
      {
        goto LABEL_178;
      }

LABEL_40:
      if (v27 != v31)
      {
        goto LABEL_14;
      }

      if (v27 < 1)
      {
        goto LABEL_46;
      }

      v97 = v20;
      v100 = v18;
      if (v21 > 1)
      {
        if (v21 == 2)
        {
          v46 = *(v14 + 16);
          v47 = *(v14 + 24);
          outlined copy of Data._Representation(v14, v15);
          outlined copy of Data._Representation(v16, v17);
          outlined copy of Data._Representation(v18, v19);
          v48 = __DataStorage._bytes.getter();
          if (v48)
          {
            v49 = __DataStorage._offset.getter();
            if (__OFSUB__(v46, v49))
            {
              goto LABEL_191;
            }

            v48 += v46 - v49;
          }

          if (__OFSUB__(v47, v46))
          {
            goto LABEL_188;
          }

LABEL_103:
          MEMORY[0x1B274CD90]();
          closure #1 in static Data.== infix(_:_:)(v48, v93, v90, v102);
          v5 = a1;
          v2 = v89;
          if ((v102[0] & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_48;
        }

        memset(v102, 0, 14);
        outlined copy of Data._Representation(v14, v15);
        outlined copy of Data._Representation(v16, v17);
        outlined copy of Data._Representation(v18, v19);
      }

      else
      {
        if (v21)
        {
          if (v14 >> 32 < v14)
          {
            goto LABEL_187;
          }

          outlined copy of Data._Representation(v14, v15);
          outlined copy of Data._Representation(v16, v17);
          outlined copy of Data._Representation(v18, v19);
          v48 = __DataStorage._bytes.getter();
          if (v48)
          {
            v55 = __DataStorage._offset.getter();
            if (__OFSUB__(v14, v55))
            {
              goto LABEL_192;
            }

            v48 += v14 - v55;
          }

          goto LABEL_103;
        }

        v102[0] = v14;
        LOWORD(v102[1]) = v15;
        BYTE2(v102[1]) = BYTE2(v15);
        BYTE3(v102[1]) = BYTE3(v15);
        BYTE4(v102[1]) = BYTE4(v15);
        BYTE5(v102[1]) = BYTE5(v15);
        outlined copy of Data._Representation(v14, v15);
        outlined copy of Data._Representation(v16, v17);
        outlined copy of Data._Representation(v18, v19);
      }

      closure #1 in static Data.== infix(_:_:)(v102, v93, v90, &v101);
      if (!v101)
      {
        goto LABEL_13;
      }

LABEL_48:
      v35 = v5[2];
      v34 = v5[3];
      v36 = v17 >> 62;
      v37 = v34 >> 62;
      if (v17 >> 62 == 3)
      {
        if (v16)
        {
          v38 = 0;
        }

        else
        {
          v38 = v17 == 0xC000000000000000;
        }

        v39 = 0;
        v40 = v38 && v34 >> 62 == 3;
        if (v40 && !v35 && v34 == 0xC000000000000000)
        {
          goto LABEL_121;
        }

LABEL_69:
        if (v37 > 1)
        {
          goto LABEL_63;
        }

        goto LABEL_70;
      }

      if (v36 > 1)
      {
        if (v36 == 2)
        {
          v45 = *(v16 + 16);
          v44 = *(v16 + 24);
          v30 = __OFSUB__(v44, v45);
          v39 = v44 - v45;
          if (v30)
          {
            goto LABEL_183;
          }

          goto LABEL_69;
        }

        v39 = 0;
        if (v37 > 1)
        {
          goto LABEL_63;
        }
      }

      else if (v36)
      {
        LODWORD(v39) = HIDWORD(v16) - v16;
        if (__OFSUB__(HIDWORD(v16), v16))
        {
          goto LABEL_184;
        }

        v39 = v39;
        if (v37 > 1)
        {
LABEL_63:
          if (v37 != 2)
          {
            if (v39)
            {
              goto LABEL_13;
            }

            goto LABEL_121;
          }

          v42 = *(v35 + 16);
          v41 = *(v35 + 24);
          v30 = __OFSUB__(v41, v42);
          v43 = v41 - v42;
          if (v30)
          {
            goto LABEL_182;
          }

          goto LABEL_72;
        }
      }

      else
      {
        v39 = BYTE6(v17);
        if (v37 > 1)
        {
          goto LABEL_63;
        }
      }

LABEL_70:
      if (!v37)
      {
        v43 = BYTE6(v34);
LABEL_72:
        if (v39 != v43)
        {
          goto LABEL_13;
        }

        goto LABEL_79;
      }

      if (__OFSUB__(HIDWORD(v35), v35))
      {
        goto LABEL_181;
      }

      if (v39 != HIDWORD(v35) - v35)
      {
        goto LABEL_13;
      }

LABEL_79:
      if (v39 < 1)
      {
        goto LABEL_121;
      }

      if (v36 > 1)
      {
        if (v36 != 2)
        {
          memset(v102, 0, 14);
LABEL_113:
          closure #1 in static Data.== infix(_:_:)(v102, v35, v34, &v101);
          if (!v101)
          {
            goto LABEL_13;
          }

          goto LABEL_121;
        }

        v82 = *(v16 + 24);
        v86 = *(v16 + 16);
        v50 = __DataStorage._bytes.getter();
        v81 = v19;
        if (v50)
        {
          v51 = v50;
          v52 = __DataStorage._offset.getter();
          v53 = v86;
          if (__OFSUB__(v86, v52))
          {
            goto LABEL_195;
          }

          v54 = v86 - v52 + v51;
        }

        else
        {
          v54 = 0;
          v53 = v86;
        }

        if (__OFSUB__(v82, v53))
        {
          goto LABEL_194;
        }

        MEMORY[0x1B274CD90]();
        closure #1 in static Data.== infix(_:_:)(v54, v35, v34, v102);
        v5 = a1;
        v2 = v89;
        v19 = v81;
        if ((v102[0] & 1) == 0)
        {
LABEL_13:
          outlined consume of Data._Representation(v14, v15);
          outlined consume of Data._Representation(v16, v17);
          outlined consume of Data._Representation(v100, v19);
          v10 = v96;
          goto LABEL_14;
        }
      }

      else
      {
        if (!v36)
        {
          v102[0] = v16;
          LOWORD(v102[1]) = v17;
          BYTE2(v102[1]) = BYTE2(v17);
          BYTE3(v102[1]) = BYTE3(v17);
          BYTE4(v102[1]) = BYTE4(v17);
          BYTE5(v102[1]) = BYTE5(v17);
          goto LABEL_113;
        }

        if (v16 >> 32 < v16)
        {
          goto LABEL_193;
        }

        v56 = __DataStorage._bytes.getter();
        if (v56)
        {
          v83 = v56;
          v57 = __DataStorage._offset.getter();
          if (__OFSUB__(v16, v57))
          {
            goto LABEL_196;
          }

          v58 = v16 - v57 + v83;
        }

        else
        {
          v58 = 0;
        }

        MEMORY[0x1B274CD90]();
        closure #1 in static Data.== infix(_:_:)(v58, v35, v34, v102);
        v5 = a1;
        v2 = v89;
        if ((v102[0] & 1) == 0)
        {
          goto LABEL_13;
        }
      }

LABEL_121:
      v59 = v5[4];
      v60 = v5[5];
      v61 = v19 >> 62;
      v62 = v60 >> 62;
      if (v19 >> 62 == 3)
      {
        v63 = 0;
        if (!v100 && v19 == 0xC000000000000000 && v60 >> 62 == 3)
        {
          v63 = 0;
          if (!v59 && v60 == 0xC000000000000000)
          {
            outlined consume of Data._Representation(v14, v15);
            outlined consume of Data._Representation(v16, v17);
            v64 = 0;
            v65 = 0xC000000000000000;
            goto LABEL_151;
          }
        }

LABEL_137:
        if (v62 > 1)
        {
          goto LABEL_131;
        }

        goto LABEL_138;
      }

      if (v61 > 1)
      {
        if (v61 == 2)
        {
          v70 = *(v100 + 16);
          v69 = *(v100 + 24);
          v30 = __OFSUB__(v69, v70);
          v63 = v69 - v70;
          if (v30)
          {
            goto LABEL_190;
          }

          goto LABEL_137;
        }

        v63 = 0;
        if (v62 > 1)
        {
          goto LABEL_131;
        }
      }

      else if (v61)
      {
        LODWORD(v63) = HIDWORD(v100) - v100;
        if (__OFSUB__(HIDWORD(v100), v100))
        {
          goto LABEL_189;
        }

        v63 = v63;
        if (v62 > 1)
        {
LABEL_131:
          if (v62 != 2)
          {
            if (v63)
            {
              goto LABEL_13;
            }

LABEL_150:
            outlined consume of Data._Representation(v14, v15);
            outlined consume of Data._Representation(v16, v17);
            v64 = v100;
            v65 = v19;
LABEL_151:
            outlined consume of Data._Representation(v64, v65);
            v10 = v96;
            goto LABEL_152;
          }

          v67 = *(v59 + 16);
          v66 = *(v59 + 24);
          v30 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v30)
          {
            goto LABEL_186;
          }

          goto LABEL_140;
        }
      }

      else
      {
        v63 = BYTE6(v19);
        if (v62 > 1)
        {
          goto LABEL_131;
        }
      }

LABEL_138:
      if (!v62)
      {
        v68 = BYTE6(v60);
LABEL_140:
        if (v63 != v68)
        {
          goto LABEL_13;
        }

        goto LABEL_146;
      }

      if (__OFSUB__(HIDWORD(v59), v59))
      {
        goto LABEL_185;
      }

      if (v63 != HIDWORD(v59) - v59)
      {
        goto LABEL_13;
      }

LABEL_146:
      if (v63 < 1)
      {
        goto LABEL_150;
      }

      if (v61 > 1)
      {
        if (v61 != 2)
        {
          memset(v102, 0, 14);
LABEL_168:
          closure #1 in static Data.== infix(_:_:)(v102, v59, v60, &v101);
          outlined consume of Data._Representation(v14, v15);
          outlined consume of Data._Representation(v16, v17);
          outlined consume of Data._Representation(v100, v19);
          v10 = v96;
          if (!v101)
          {
            goto LABEL_14;
          }

          goto LABEL_152;
        }

        v84 = *(v100 + 24);
        v87 = *(v100 + 16);
        v71 = __DataStorage._bytes.getter();
        if (v71)
        {
          v72 = v71;
          v73 = __DataStorage._offset.getter();
          v74 = v87;
          if (__OFSUB__(v87, v73))
          {
            goto LABEL_199;
          }

          v80 = v87 - v73 + v72;
        }

        else
        {
          v80 = 0;
          v74 = v87;
        }

        if (__OFSUB__(v84, v74))
        {
          goto LABEL_198;
        }

        MEMORY[0x1B274CD90]();
        v78 = v80;
      }

      else
      {
        if (!v61)
        {
          v102[0] = v100;
          LOWORD(v102[1]) = v19;
          BYTE2(v102[1]) = BYTE2(v19);
          BYTE3(v102[1]) = BYTE3(v19);
          BYTE4(v102[1]) = BYTE4(v19);
          BYTE5(v102[1]) = BYTE5(v19);
          goto LABEL_168;
        }

        if (v100 >> 32 < v100)
        {
          goto LABEL_197;
        }

        v75 = __DataStorage._bytes.getter();
        if (v75)
        {
          v85 = v75;
          v76 = __DataStorage._offset.getter();
          if (__OFSUB__(v100, v76))
          {
            goto LABEL_200;
          }

          v77 = v100 - v76 + v85;
        }

        else
        {
          v77 = 0;
        }

        MEMORY[0x1B274CD90]();
        v78 = v77;
      }

      closure #1 in static Data.== infix(_:_:)(v78, v59, v60, v102);
      outlined consume of Data._Representation(v14, v15);
      outlined consume of Data._Representation(v16, v17);
      outlined consume of Data._Representation(v100, v19);
      v5 = a1;
      v2 = v89;
      v10 = v96;
      if ((v102[0] & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_152:
      if (v97 == (v5[6] & 1))
      {
        return v4;
      }

LABEL_14:
      v4 = (v4 + 1) & v98;
      if (((*(v99 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    if (v14)
    {
      v22 = 0;
    }

    else
    {
      v22 = v15 == 0xC000000000000000;
    }

    v24 = !v22 || v10 < 3;
    if (((v24 | v95) & 1) == 0)
    {
      v97 = v20;
      v25 = 0;
      v26 = 0xC000000000000000;
      goto LABEL_47;
    }

LABEL_37:
    v27 = 0;
    if (v10 <= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int16 *a1, uint64_t a2)
{
  v62[3] = *MEMORY[0x1E69E9840];
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v6 = a1;
  v7 = ~v4;
  v8 = *a1;
  v58 = v2 + 64;
  v60 = ~v4;
  v59 = v8;
  while (1)
  {
    v9 = (*(v2 + 48) + 40 * v5);
    if (*v9 != v8)
    {
      goto LABEL_6;
    }

    v11 = v9[1];
    v10 = v9[2];
    v13 = v9[3];
    v12 = v9[4];
    v14 = *(v6 + 1);
    v15 = *(v6 + 2);
    v16 = v10 >> 62;
    v17 = v15 >> 62;
    if (v10 >> 62 == 3)
    {
      if (v11)
      {
        v18 = 0;
      }

      else
      {
        v18 = v10 == 0xC000000000000000;
      }

      v19 = 0;
      v20 = v18 && v15 >> 62 == 3;
      if (v20 && !v14 && v15 == 0xC000000000000000)
      {
        v21 = 0;
        v22 = 0xC000000000000000;
        goto LABEL_45;
      }

LABEL_30:
      if (v17 <= 1)
      {
        goto LABEL_31;
      }

      goto LABEL_36;
    }

    if (v16 <= 1)
    {
      if (!v16)
      {
        v19 = BYTE6(v10);
        if (v17 <= 1)
        {
          goto LABEL_31;
        }

        goto LABEL_36;
      }

      LODWORD(v19) = HIDWORD(v11) - v11;
      if (__OFSUB__(HIDWORD(v11), v11))
      {
        goto LABEL_118;
      }

      v19 = v19;
      goto LABEL_30;
    }

    if (v16 == 2)
    {
      v24 = *(v11 + 16);
      v23 = *(v11 + 24);
      v25 = __OFSUB__(v23, v24);
      v19 = v23 - v24;
      if (v25)
      {
        goto LABEL_119;
      }

      goto LABEL_30;
    }

    v19 = 0;
    if (v17 <= 1)
    {
LABEL_31:
      if (v17)
      {
        LODWORD(v26) = HIDWORD(v14) - v14;
        if (__OFSUB__(HIDWORD(v14), v14))
        {
          goto LABEL_117;
        }

        v26 = v26;
      }

      else
      {
        v26 = BYTE6(v15);
      }

      goto LABEL_38;
    }

LABEL_36:
    if (v17 != 2)
    {
      if (v19)
      {
        goto LABEL_6;
      }

LABEL_44:
      v21 = v11;
      v22 = v10;
LABEL_45:
      outlined copy of Data._Representation(v21, v22);
      outlined copy of Data._Representation(v13, v12);
      goto LABEL_60;
    }

    v28 = *(v14 + 16);
    v27 = *(v14 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
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
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
    }

LABEL_38:
    if (v19 != v26)
    {
      goto LABEL_6;
    }

    if (v19 < 1)
    {
      goto LABEL_44;
    }

    if (v16 <= 1)
    {
      if (!v16)
      {
        v62[0] = v11;
        LOWORD(v62[1]) = v10;
        BYTE2(v62[1]) = BYTE2(v10);
        BYTE3(v62[1]) = BYTE3(v10);
        BYTE4(v62[1]) = BYTE4(v10);
        BYTE5(v62[1]) = BYTE5(v10);
        outlined copy of Data._Representation(v11, v10);
        outlined copy of Data._Representation(v13, v12);
        goto LABEL_59;
      }

      if (v11 >> 32 < v11)
      {
        goto LABEL_124;
      }

      outlined copy of Data._Representation(v11, v10);
      outlined copy of Data._Representation(v13, v12);
      v30 = __DataStorage._bytes.getter();
      if (v30)
      {
        v32 = __DataStorage._offset.getter();
        if (__OFSUB__(v11, v32))
        {
          goto LABEL_129;
        }

        v30 += v11 - v32;
      }

LABEL_56:
      MEMORY[0x1B274CD90]();
      closure #1 in static Data.== infix(_:_:)(v30, v14, v15, v62);
      v6 = a1;
      v2 = v57;
      v3 = v58;
      if ((v62[0] & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_60;
    }

    if (v16 == 2)
    {
      v29 = *(v11 + 16);
      v53 = *(v11 + 24);
      outlined copy of Data._Representation(v11, v10);
      outlined copy of Data._Representation(v13, v12);
      v30 = __DataStorage._bytes.getter();
      if (v30)
      {
        v31 = __DataStorage._offset.getter();
        if (__OFSUB__(v29, v31))
        {
          goto LABEL_128;
        }

        v30 += v29 - v31;
      }

      if (__OFSUB__(v53, v29))
      {
        goto LABEL_125;
      }

      goto LABEL_56;
    }

    memset(v62, 0, 14);
    outlined copy of Data._Representation(v11, v10);
    outlined copy of Data._Representation(v13, v12);
LABEL_59:
    closure #1 in static Data.== infix(_:_:)(v62, v14, v15, &v61);
    v3 = v58;
    if (!v61)
    {
      goto LABEL_4;
    }

LABEL_60:
    v34 = *(v6 + 3);
    v33 = *(v6 + 4);
    v35 = v12 >> 62;
    v36 = v33 >> 62;
    if (v12 >> 62 == 3)
    {
      if (v13)
      {
        v37 = 0;
      }

      else
      {
        v37 = v12 == 0xC000000000000000;
      }

      v38 = 0;
      v39 = v37 && v33 >> 62 == 3;
      if (v39 && !v34 && v33 == 0xC000000000000000)
      {
        outlined consume of Data._Representation(v11, v10);
        v51 = 0;
        v52 = 0xC000000000000000;
        goto LABEL_114;
      }

LABEL_82:
      if (v36 <= 1)
      {
        goto LABEL_83;
      }

      goto LABEL_88;
    }

    if (v35 <= 1)
    {
      if (!v35)
      {
        v38 = BYTE6(v12);
        if (v36 <= 1)
        {
          goto LABEL_83;
        }

        goto LABEL_88;
      }

      LODWORD(v38) = HIDWORD(v13) - v13;
      if (__OFSUB__(HIDWORD(v13), v13))
      {
        goto LABEL_122;
      }

      v38 = v38;
      goto LABEL_82;
    }

    if (v35 == 2)
    {
      v41 = *(v13 + 16);
      v40 = *(v13 + 24);
      v25 = __OFSUB__(v40, v41);
      v38 = v40 - v41;
      if (v25)
      {
        goto LABEL_123;
      }

      goto LABEL_82;
    }

    v38 = 0;
    if (v36 <= 1)
    {
LABEL_83:
      if (v36)
      {
        LODWORD(v42) = HIDWORD(v34) - v34;
        if (__OFSUB__(HIDWORD(v34), v34))
        {
          goto LABEL_120;
        }

        v42 = v42;
      }

      else
      {
        v42 = BYTE6(v33);
      }

      goto LABEL_90;
    }

LABEL_88:
    if (v36 != 2)
    {
      if (!v38)
      {
        break;
      }

LABEL_4:
      outlined consume of Data._Representation(v11, v10);
      outlined consume of Data._Representation(v13, v12);
      goto LABEL_5;
    }

    v44 = *(v34 + 16);
    v43 = *(v34 + 24);
    v25 = __OFSUB__(v43, v44);
    v42 = v43 - v44;
    if (v25)
    {
      goto LABEL_121;
    }

LABEL_90:
    if (v38 != v42)
    {
      goto LABEL_4;
    }

    if (v38 < 1)
    {
      break;
    }

    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v45 = *(v13 + 16);
        v54 = *(v13 + 24);
        v46 = __DataStorage._bytes.getter();
        if (v46)
        {
          v47 = __DataStorage._offset.getter();
          if (__OFSUB__(v45, v47))
          {
            goto LABEL_130;
          }

          v46 += v45 - v47;
        }

        if (__OFSUB__(v54, v45))
        {
          goto LABEL_127;
        }

        goto LABEL_110;
      }

      memset(v62, 0, 14);
    }

    else
    {
      if (v35)
      {
        if (v13 >> 32 < v13)
        {
          goto LABEL_126;
        }

        v48 = __DataStorage._bytes.getter();
        if (v48)
        {
          v55 = v48;
          v49 = __DataStorage._offset.getter();
          if (__OFSUB__(v13, v49))
          {
            goto LABEL_131;
          }

          v46 = v13 - v49 + v55;
        }

        else
        {
          v46 = 0;
        }

LABEL_110:
        MEMORY[0x1B274CD90]();
        closure #1 in static Data.== infix(_:_:)(v46, v34, v33, v62);
        outlined consume of Data._Representation(v11, v10);
        outlined consume of Data._Representation(v13, v12);
        if (v62[0])
        {
          return v5;
        }

        v6 = a1;
        v2 = v57;
        v3 = v58;
        goto LABEL_5;
      }

      v62[0] = v13;
      LOWORD(v62[1]) = v12;
      BYTE2(v62[1]) = BYTE2(v12);
      BYTE3(v62[1]) = BYTE3(v12);
      BYTE4(v62[1]) = BYTE4(v12);
      BYTE5(v62[1]) = BYTE5(v12);
    }

    closure #1 in static Data.== infix(_:_:)(v62, v34, v33, &v61);
    outlined consume of Data._Representation(v11, v10);
    outlined consume of Data._Representation(v13, v12);
    if (v61)
    {
      return v5;
    }

    v3 = v58;
LABEL_5:
    v7 = v60;
    v8 = v59;
LABEL_6:
    v5 = (v5 + 1) & v7;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  outlined consume of Data._Representation(v11, v10);
  v51 = v13;
  v52 = v12;
LABEL_114:
  outlined consume of Data._Representation(v51, v52);
  return v5;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SwiftTLSLibrary17PAKEServerRecordsV9RecordKeyV_AC0eG0VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SwiftTLSLibrary17PAKEServerRecordsV9RecordKeyVAC0eG0VGMd, &_ss18_DictionaryStorageCy15SwiftTLSLibrary17PAKEServerRecordsV9RecordKeyVAC0eG0VGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 144);
      *&v26[128] = *(v4 + 128);
      *&v26[144] = v6;
      *&v26[160] = *(v4 + 160);
      v7 = *(v4 + 80);
      *&v26[64] = *(v4 + 64);
      *&v26[80] = v7;
      v8 = *(v4 + 112);
      *&v26[96] = *(v4 + 96);
      *&v26[112] = v8;
      v9 = *(v4 + 16);
      *v26 = *v4;
      *&v26[16] = v9;
      v10 = *(v4 + 48);
      *&v26[32] = *(v4 + 32);
      *&v26[48] = v10;
      *v27 = *v26;
      *&v27[8] = *&v26[8];
      *&v27[24] = *&v26[24];
      outlined init with copy of (PAKEServerRecords.RecordKey, PAKEServerRecord)(v26, v25);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v27);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 40 * result;
      v14 = *&v27[16];
      *v13 = *v27;
      *(v13 + 16) = v14;
      *(v13 + 32) = *&v27[32];
      v15 = (v3[7] + (result << 7));
      v16 = *&v26[104];
      v17 = *&v26[120];
      v18 = *&v26[136];
      *(v15 + 106) = *&v26[146];
      v15[5] = v17;
      v15[6] = v18;
      v15[4] = v16;
      v19 = *&v26[88];
      v20 = *&v26[72];
      v21 = *&v26[56];
      *v15 = *&v26[40];
      v15[1] = v21;
      v15[2] = v20;
      v15[3] = v19;
      v22 = v3[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_11;
      }

      v3[2] = v24;
      if (!i)
      {

        return v3;
      }

      v4 += 168;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PAKECredential and conformance PAKECredential()
{
  result = lazy protocol witness table cache variable for type PAKECredential and conformance PAKECredential;
  if (!lazy protocol witness table cache variable for type PAKECredential and conformance PAKECredential)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PAKECredential and conformance PAKECredential);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for PAKECredential(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PAKECredential(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t outlined init with copy of (PAKEServerRecords.RecordKey, PAKEServerRecord)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17PAKEServerRecordsV9RecordKeyV_AA0cE0VtMd, &_s15SwiftTLSLibrary17PAKEServerRecordsV9RecordKeyV_AA0cE0VtMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV25readPeerCertificateBundleAA0fgH0VSgyAA8TLSErrorOYKF@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v39 = a1;
  v4 = type metadata accessor for P256.Signing.PublicKey();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v36 - v15;
  v17 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v17 & 0x100) != 0)
  {
    goto LABEL_10;
  }

  if (v17 == 1)
  {
    (*(v5 + 56))(a2, 1, 1, v4);
LABEL_19:
    v31 = type metadata accessor for PeerCertificateBundle(0);
    return (*(*(v31 - 8) + 56))(a2, 0, 1, v31);
  }

  if (v17)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, logger);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1B25F5000, v25, v26, "invalid serialized session", v27, 2u);
      MEMORY[0x1B274ECF0](v27, -1, -1);
    }

    v37 = xmmword_1B26C6440;
    v38 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    v28 = 7;
    goto LABEL_17;
  }

  result = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt64V_Tt0g5();
  if (v19)
  {
LABEL_7:
    v22 = *(v5 + 56);
    v22(v16, 1, 1, v4);
LABEL_8:
    outlined init with take of P256.Signing.PublicKey?(v16, v14, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
    if ((*(v5 + 48))(v14, 1, v4) == 1)
    {
      outlined destroy of P256.Signing.PrivateKey?(v14, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
LABEL_10:
      v23 = type metadata accessor for PeerCertificateBundle(0);
      return (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
    }

    v30 = *(v5 + 32);
    v30(v8, v14, v4);
    v30(a2, v8, v4);
    v22(a2, 0, 1, v4);
    goto LABEL_19;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = ByteBuffer.readSlice(length:)(result);
    if (v20 >> 60 == 15)
    {
      goto LABEL_7;
    }

    v32 = v20;
    v33 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v33 == 2)
      {
        v34 = *(result + 24);
      }

      else
      {
        v34 = 0;
      }
    }

    else if (v33)
    {
      v34 = result >> 32;
    }

    else
    {
      v34 = BYTE6(v20);
    }

    if (v34 >= v21)
    {
      v36[0] = result;
      v36[1] = v21;
      *&v37 = Data._Representation.subscript.getter();
      *(&v37 + 1) = v35;
      P256.Signing.PublicKey.init<A>(rawRepresentation:)();
      if (!v2)
      {
        outlined consume of ByteBuffer?(v36[0], v32);
        (*(v5 + 32))(v16, v10, v4);
        v22 = *(v5 + 56);
        v22(v16, 0, 1, v4);
        goto LABEL_8;
      }

      outlined consume of ByteBuffer?(v36[0], v32);
      v37 = xmmword_1B26C6420;
      v38 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      result = swift_willThrowTypedImpl();
      v28 = 32;
LABEL_17:
      v29 = v39;
      *v39 = v28;
      v29[1] = 0;
      *(v29 + 16) = 2;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt64V_Tt0g5()
{
  v1 = v0[2];
  v2 = v1 + 8;
  if (__OFADD__(v1, 8))
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v5)
    {
      v6 = v3 >> 32;
    }

    else
    {
      v6 = BYTE6(v4);
    }

    if (v6 >= v2)
    {
LABEL_7:
      v8 = *v0;
      v9 = v0[1];
      if (v2 >= v1)
      {
        outlined copy of Data._Representation(v3, v4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
        lazy protocol witness table accessor for type Data and conformance Data();
        lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
        DataProtocol.copyBytes<A>(to:from:)();
        outlined consume of Data._Representation(v8, v9);
        result = bswap64(0);
        v0[2] = v2;
        return result;
      }

LABEL_16:
      __break(1u);
    }
  }

  return 0;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t specialized static PeerCertificateBundle.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for P256.Signing.PublicKey();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21PeerCertificateBundleV0E033_9D809D834761BB6AED97717D65905FEBLLO_AFtMd, &_s15SwiftTLSLibrary21PeerCertificateBundleV0E033_9D809D834761BB6AED97717D65905FEBLLO_AFtMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v28 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of PeerCertificateBundle.Bundle(a1, &v28 - v13);
  outlined init with copy of PeerCertificateBundle.Bundle(a2, &v14[v15]);
  v16 = *(v5 + 48);
  LODWORD(a2) = v16(v14, 1, v4);
  result = v16(&v14[v15], 1, v4);
  if (a2 == 1)
  {
    if (result == 1)
    {
      return result;
    }

    outlined destroy of PeerCertificateBundle.Bundle(&v14[v15]);
  }

  else if (result == 1)
  {
    (*(v5 + 8))(v14, v4);
  }

  else
  {
    v18 = *(v5 + 32);
    v18(v10, v14, v4);
    v19 = (v18)(v8, &v14[v15], v4);
    v20 = MEMORY[0x1B274D470](v19);
    v22 = v21;
    v23 = MEMORY[0x1B274D470]();
    v25 = v24;
    v26 = specialized static Data.== infix(_:_:)(v20, v22, v23, v24);
    outlined consume of Data._Representation(v23, v25);
    outlined consume of Data._Representation(v20, v22);
    v27 = *(v5 + 8);
    v27(v8, v4);
    v27(v10, v4);
    if (v26)
    {
      return 1;
    }
  }

  return 0;
}

BOOL specialized static PeerCertificateBundle.Bundle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for P256.Signing.PublicKey();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21PeerCertificateBundleV0E033_9D809D834761BB6AED97717D65905FEBLLO_AFtMd, &_s15SwiftTLSLibrary21PeerCertificateBundleV0E033_9D809D834761BB6AED97717D65905FEBLLO_AFtMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of PeerCertificateBundle.Bundle(a1, &v29 - v13);
  outlined init with copy of PeerCertificateBundle.Bundle(a2, &v14[v15]);
  v16 = v5[6];
  LODWORD(a2) = v16(v14, 1, v4);
  v17 = v16(&v14[v15], 1, v4);
  if (a2 != 1)
  {
    if (v17 != 1)
    {
      v19 = v5[4];
      v19(v10, v14, v4);
      v20 = (v19)(v8, &v14[v15], v4);
      v21 = MEMORY[0x1B274D470](v20);
      v23 = v22;
      v24 = MEMORY[0x1B274D470]();
      v26 = v25;
      v18 = specialized static Data.== infix(_:_:)(v21, v23, v24, v25);
      outlined consume of Data._Representation(v24, v26);
      outlined consume of Data._Representation(v21, v23);
      v27 = v5[1];
      v27(v8, v4);
      v27(v10, v4);
      return v18;
    }

    (v5[1])(v14, v4);
    return 0;
  }

  if (v17 != 1)
  {
    outlined destroy of PeerCertificateBundle.Bundle(&v14[v15]);
    return 0;
  }

  return 1;
}

uint64_t outlined destroy of PeerCertificateBundle.Bundle(uint64_t a1)
{
  v2 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t outlined init with copy of SessionKeyManager<SHA384>.State(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_WORD *protocol witness for RawRepresentable.init(rawValue:) in conformance PAKEScheme@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PAKEScheme()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PAKEScheme(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t PAKEScheme.description.getter(unsigned __int16 a1)
{
  result = 0xD000000000000010;
  if (a1 == 0xFFFF)
  {
    return 0xD000000000000013;
  }

  if (a1 != 32150)
  {
    _StringGuts.grow(_:)(24);

    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B274D610](v3);

    MEMORY[0x1B274D610](41, 0xE100000000000000);
    return 0xD000000000000015;
  }

  return result;
}

uint64_t ByteBuffer.writePAKEScheme(_:)(unsigned int a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  v2 = bswap32(a1) >> 16;
  v3[3] = MEMORY[0x1E69E6290];
  v3[4] = MEMORY[0x1E6969DF8];
  v3[0] = &v2;
  v3[1] = v3;
  __swift_project_boxed_opaque_existential_0(v3, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v3);
  return 2;
}

uint64_t ByteBuffer.readPAKEScheme()()
{
  v0 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  v1 = v0;
  if ((v0 & 0x10000) != 0)
  {
    v1 = 0;
  }

  return v0 & 0x10000 | v1;
}

unint64_t lazy protocol witness table accessor for type PAKEScheme and conformance PAKEScheme()
{
  result = lazy protocol witness table cache variable for type PAKEScheme and conformance PAKEScheme;
  if (!lazy protocol witness table cache variable for type PAKEScheme and conformance PAKEScheme)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PAKEScheme and conformance PAKEScheme);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PAKEScheme and conformance PAKEScheme;
  if (!lazy protocol witness table cache variable for type PAKEScheme and conformance PAKEScheme)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PAKEScheme and conformance PAKEScheme);
  }

  return result;
}

uint64_t static HKDF.expandLabel<A, B>(secret:label:context:length:)@<X0>(int64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, int64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a7@<X6>, char a8@<W7>, unint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  LOBYTE(v12) = a8;
  v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 514, 0, MEMORY[0x1E69E7CC0]);
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v21 = a5 >> 16;
    if (!(a5 >> 16))
    {
      v11 = v20;
      v27 = a2;
      a2 = *(v20 + 2);
      v21 = *(v20 + 3);
      v22 = v21 >> 1;
      a4 = a2 + 1;
      if (v21 >> 1 > a2)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), a4, 1, v11);
  v21 = *(v11 + 3);
  v22 = v21 >> 1;
LABEL_4:
  *(v11 + 2) = a4;
  v11[a2 + 32] = BYTE1(a5);
  v23 = a2 + 2;
  if (v22 < v23)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v23, 1, v11);
  }

  *(v11 + 2) = v23;
  v11[a4 + 32] = a5;
  if ((a3 & 0x1000000000000000) != 0)
  {
    v24 = String.UTF8View._foreignCount()();
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      goto LABEL_11;
    }

    v24 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (v24 <= 0xFF)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v24 = HIBYTE(a3) & 0xF;
LABEL_12:
  v12 = v24 + 6;
  if ((v12 >> 8))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  a7 = *(v11 + 2);
  a9 = *(v11 + 3);
  a1 = a7 + 1;

  if (a7 >= a9 >> 1)
  {
LABEL_21:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a9 > 1), a1, 1, v11);
  }

  *(v11 + 2) = a1;
  v11[a7 + 32] = v12;
  specialized Array.append<A>(contentsOf:)(0x203331736C74, 0xE600000000000000);
  v25 = specialized Array.append<A>(contentsOf:)(v27, a3);
  MEMORY[0x1EEE9AC00](v25);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary11GeneralEPSKVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary11GeneralEPSKVGMR, type metadata accessor for GeneralEPSK);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for GeneralEPSK(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t static HKDF.deriveSecret<A>(secret:label:transcriptHash:)@<X0>(int64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, int64_t a4@<X3>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t a9@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = dispatch thunk of static Digest.byteCount.getter();
  return static HKDF.expandLabel<A, B>(secret:label:context:length:)(a1, a2, a3, a4, v17, a6, AssociatedTypeWitness, a9, a7, a8);
}

uint64_t static HKDF.tlsExporter<A>(secret:label:context:)@<X0>(int64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, int64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t a9@<X8>)
{
  v25 = a6;
  v26 = a8;
  v27 = a9;
  v28 = a4;
  v23 = a2;
  v24 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v23 - v14;
  v16 = type metadata accessor for SymmetricKey();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static HashFunction.zeroHash.getter(a5, a7);
  static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(a1, v23, v24, v15, v25, a7, v26, v19);
  (*(v13 + 8))(v15, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  v20 = dispatch thunk of static Digest.byteCount.getter();
  v21 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
  static HKDF.expandLabel<A, B>(secret:label:context:length:)(v19, 0x726574726F707865uLL, 0xE800000000000000, v28, v20, v16, AssociatedTypeWitness, v27, a7, v21);
  return (*(v17 + 8))(v19, v16);
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey()
{
  result = lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey;
  if (!lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey)
  {
    type metadata accessor for SymmetricKey();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey;
  if (!lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey)
  {
    type metadata accessor for SymmetricKey();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey);
  }

  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary11ImportedPSKVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary11ImportedPSKVGMR, type metadata accessor for ImportedPSK);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary11GeneralEPSKVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary11GeneralEPSKVGMR, type metadata accessor for GeneralEPSK);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary15CertificateTypeVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary15CertificateTypeVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary10NamedGroupVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary10NamedGroupVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary15SignatureSchemeVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary15SignatureSchemeVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO20PreSharedKeyKexModesV4ModeVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO20PreSharedKeyKexModesV4ModeVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO4PAKEO9PAKEShareVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO4PAKEO9PAKEShareVGMR, &type metadata for Extension.PAKE.PAKEShare);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO8KeyShareO0gH5EntryVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO8KeyShareO0gH5EntryVGMR, &type metadata for Extension.KeyShare.KeyShareEntry);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary11CipherSuiteVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary11CipherSuiteVGMR);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = (v13 - 32 + ((v13 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[2 * v10])
    {
      memmove(v14, v15, 2 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 2 * v10);
  }

  return v12;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

__n128 HandshakeMessageParser.ParseResult.init(messageBytes:message:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a4 + 32);
  *(a5 + 72) = *(a4 + 48);
  v6 = *(a4 + 80);
  *(a5 + 88) = *(a4 + 64);
  *(a5 + 104) = v6;
  *(a5 + 113) = *(a4 + 89);
  result = *a4;
  v8 = *(a4 + 16);
  *(a5 + 24) = *a4;
  *(a5 + 40) = v8;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 56) = v5;
  return result;
}

uint64_t HandshakeMessageParser.ParseResult.messageBytes.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

void HandshakeMessageParser.ParseResult.messageBytes.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined consume of Data._Representation(*v3, v3[1]);
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HandshakeMessageParser(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HandshakeMessageParser(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for HandshakeMessageParser.ParseResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 128) = -a2;
    }
  }

  return result;
}

uint64_t ServerHandshakeStateMachine.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = xmmword_1B26C5EF0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v24 = 0;
  MEMORY[0x1B274ED00](&v24, 8);
  v8 = v24;
  v24 = 0;
  MEMORY[0x1B274ED00](&v24, 8);
  v9 = v24;
  v24 = 0;
  MEMORY[0x1B274ED00](&v24, 8);
  v10 = v24;
  v24 = 0;
  MEMORY[0x1B274ED00](&v24, 8);
  v11 = v24;
  v12 = type metadata accessor for ServerHandshakeStateMachine(0);
  v13 = (a2 + v12[8]);
  *v13 = v8;
  v13[1] = v9;
  v13[2] = v10;
  v13[3] = v11;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(a1, a2 + v12[9], type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v14 = a2 + v12[6];
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(a1, v7, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v7, v14, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v15 = type metadata accessor for ServerHandshakeState.IdleState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  swift_storeEnumTagMultiPayload();
  *(v14 + v15[6]) = 0;
  v16 = (v14 + v15[7]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v14 + v15[8]);
  *v17 = 0;
  v17[1] = 0;
  LOBYTE(v5) = v7[*(v5 + 44)];
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v7, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  *(v14 + v15[9]) = v5;
  type metadata accessor for ServerHandshakeState(0);
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, logger);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1B25F5000, v19, v20, "server state machine initialized", v21, 2u);
    MEMORY[0x1B274ECF0](v21, -1, -1);
  }

  return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(a1, type metadata accessor for ServerHandshakeStateMachine.Configuration);
}

void _s15SwiftTLSLibrary27ServerHandshakeStateMachineV5epsks21epskSelectionCallback13configurationACSayAA4EPSKVG_ySayAA0a7OfferedL0VG_ySi_AHSgtctcSgAC13ConfigurationVtAA8TLSErrorOYKcfC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v89 = a5;
  v7 = v6;
  v93 = a2;
  v94 = a3;
  v11 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ImportedPSK(0);
  v97 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v98 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for RawEPSK(0);
  MEMORY[0x1EEE9AC00](v101);
  v100 = (&v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for GeneralEPSK(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v89 - v21;
  v99 = type metadata accessor for EPSK(0);
  v22 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v24 = (&v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a6 = xmmword_1B26C5EF0;
  *(a6 + 16) = 0;
  v92 = a6;
  *(a6 + 24) = 0;
  v112 = MEMORY[0x1E69E7CC0];
  v107 = *(a1 + 16);
  v95 = a4;
  v91 = v11;
  if (v107)
  {
    v25 = 0;
    v106 = *(a4 + *(v11 + 40));
    v26 = *(v22 + 80);
    v104 = v24;
    v105 = a1 + ((v26 + 32) & ~v26);
    v103 = v22;
    v96 = a1;
    while (v25 < *(a1 + 16))
    {
      v28 = *(v22 + 72);
      v110 = v25;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v105 + v28 * v25, v24, type metadata accessor for EPSK);
      if (v106)
      {
        v109 = v7;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v29 = a1;
        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, logger);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_1B25F5000, v31, v32, "raw epsk added to server", v33, 2u);
          MEMORY[0x1B274ECF0](v33, -1, -1);
        }

        v34 = *v24;
        v35 = v24[1];
        v36 = v24[2];
        v37 = *(v99 + 20);
        v38 = *(v101 + 20);
        v39 = type metadata accessor for SymmetricKey();
        v40 = v100;
        v41 = v100 + v38;
        v24 = v104;
        (*(*(v39 - 8) + 16))(v41, v104 + v37, v39);
        *v40 = v34;
        v40[1] = v35;
        v40[2] = v36;
        outlined init with take of ImportedPSK(v40, v108, type metadata accessor for RawEPSK);
        type metadata accessor for PSK(0);
        swift_storeEnumTagMultiPayload();
        v42 = v112;
        outlined copy of Data._Representation(v34, v35);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
        }

        v44 = v42[2];
        v43 = v42[3];
        v22 = v103;
        a1 = v29;
        if (v44 >= v43 >> 1)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v42);
        }

        v7 = v109;
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v24, type metadata accessor for EPSK);
        v42[2] = v44 + 1;
        outlined init with take of ImportedPSK(v108, v42 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v44, type metadata accessor for GeneralEPSK);
        v112 = v42;
      }

      else
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v45 = type metadata accessor for Logger();
        __swift_project_value_buffer(v45, logger);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_1B25F5000, v46, v47, "server importing epsk", v48, 2u);
          MEMORY[0x1B274ECF0](v48, -1, -1);
        }

        v49 = _s15SwiftTLSLibrary4EPSKV18deriveImportedPSKs3forSayAA0E3PSKVGSayAA16TLSKDFIdentifierVG_tAA8TLSErrorOYKF(&_s15SwiftTLSLibrary27ServerHandshakeStateMachineV5epsks21epskSelectionCallback13configurationACSayAA4EPSKVG_ySayAA0a7OfferedL0VG_ySi_AHSgtctcSgAC13ConfigurationVtAA8TLSErrorOYKcfCTv_r);
        v52 = v49;
        if (v7)
        {
          v85 = v49;
          v86 = v50;
          v87 = v51;
          outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v93, v94);

          _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v95, type metadata accessor for ServerHandshakeStateMachine.Configuration);
          _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v24, type metadata accessor for EPSK);

          outlined consume of ByteBuffer?(*v92, *(v92 + 8));
          v88 = v89;
          *v89 = v85;
          v88[1] = v86;
          *(v88 + 16) = v87;
          return;
        }

        v7 = 0;
        v53 = *(v49 + 16);
        if (v53)
        {
          v109 = 0;
          v111[0] = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53, 0);
          v54 = v111[0];
          v55 = v98;
          v56 = *(v97 + 80);
          v102 = v52;
          v57 = v52 + ((v56 + 32) & ~v56);
          v58 = *(v97 + 72);
          do
          {
            _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v57, v55, type metadata accessor for ImportedPSK);
            outlined init with take of ImportedPSK(v55, v20, type metadata accessor for ImportedPSK);
            type metadata accessor for PSK(0);
            swift_storeEnumTagMultiPayload();
            v111[0] = v54;
            v60 = *(v54 + 16);
            v59 = *(v54 + 24);
            if (v60 >= v59 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
              v55 = v98;
              v54 = v111[0];
            }

            *(v54 + 16) = v60 + 1;
            outlined init with take of ImportedPSK(v20, v54 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v60, type metadata accessor for GeneralEPSK);
            v57 += v58;
            --v53;
          }

          while (v53);

          v7 = v109;
          v27 = v96;
          v22 = v103;
          v24 = v104;
        }

        else
        {
          v27 = a1;

          v54 = MEMORY[0x1E69E7CC0];
        }

        specialized Array.append<A>(contentsOf:)(v54);
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v24, type metadata accessor for EPSK);
        a1 = v27;
      }

      v25 = v110 + 1;
      if (v110 + 1 == v107)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

LABEL_28:

  if (one-time initialization token for logger != -1)
  {
LABEL_38:
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, logger);
  v62 = v112;

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 134217984;
    *(v65 + 4) = v62[2];

    _os_log_impl(&dword_1B25F5000, v63, v64, "server has %ld epsks", v65, 0xCu);
    MEMORY[0x1B274ECF0](v65, -1, -1);
  }

  else
  {
  }

  v111[0] = 0;
  MEMORY[0x1B274ED00](v111, 8);
  v66 = v111[0];
  v111[0] = 0;
  MEMORY[0x1B274ED00](v111, 8);
  v67 = v111[0];
  v111[0] = 0;
  MEMORY[0x1B274ED00](v111, 8);
  v68 = v111[0];
  v111[0] = 0;
  MEMORY[0x1B274ED00](v111, 8);
  v69 = v111[0];
  v70 = type metadata accessor for ServerHandshakeStateMachine(0);
  v71 = v92;
  v72 = (v92 + v70[8]);
  *v72 = v66;
  v72[1] = v67;
  v72[2] = v68;
  v72[3] = v69;
  v73 = v95;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v95, v71 + v70[9], type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v74 = v71 + v70[6];
  v75 = v90;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v73, v90, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v75, v74, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v76 = type metadata accessor for ServerHandshakeState.IdleState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  swift_storeEnumTagMultiPayload();
  *(v74 + v76[6]) = v62;
  v77 = (v74 + v76[7]);
  v79 = v93;
  v78 = v94;
  *v77 = v93;
  v77[1] = v78;
  v80 = (v74 + v76[8]);
  *v80 = 0;
  v80[1] = 0;
  v81 = *(v75 + *(v91 + 36));
  outlined copy of (@escaping @callee_guaranteed (@guaranteed [SwiftTLSOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@guaranteed SecExternalPreSharedKey?) -> ()) -> ())?(v79, v78);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v75, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  *(v74 + v76[9]) = v81;
  type metadata accessor for ServerHandshakeState(0);
  swift_storeEnumTagMultiPayload();
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_1B25F5000, v82, v83, "server state machine initialized with epsks", v84, 2u);
    MEMORY[0x1B274ECF0](v84, -1, -1);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v79, v78);
  }

  else
  {
    outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v79, v78);
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v73, type metadata accessor for ServerHandshakeStateMachine.Configuration);
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV4pake13configurationACSayAA16PAKEServerRecordVG_AC13ConfigurationVtAA8TLSErrorOYKcfC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v30 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = xmmword_1B26C5EF0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a1[2];

    _os_log_impl(&dword_1B25F5000, v8, v9, "server has %ld pake records", v10, 0xCu);
    MEMORY[0x1B274ECF0](v10, -1, -1);
  }

  else
  {
  }

  v32 = 0;
  MEMORY[0x1B274ED00](&v32, 8);
  v11 = v32;
  v32 = 0;
  MEMORY[0x1B274ED00](&v32, 8);
  v12 = v32;
  v32 = 0;
  MEMORY[0x1B274ED00](&v32, 8);
  v13 = v32;
  v32 = 0;
  MEMORY[0x1B274ED00](&v32, 8);
  v14 = v32;
  v15 = type metadata accessor for ServerHandshakeStateMachine(0);
  v16 = (a3 + v15[8]);
  *v16 = v11;
  v16[1] = v12;
  v16[2] = v13;
  v16[3] = v14;
  v17 = v31;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v31, a3 + v15[9], type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v18 = a3 + v15[6];
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v17, v6, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v19 = specialized PAKEServerRecords.init(_:)(a1);
  v21 = v20;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v6, v18, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v22 = type metadata accessor for ServerHandshakeState.IdleState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  swift_storeEnumTagMultiPayload();
  *(v18 + v22[6]) = 0;
  v23 = (v18 + v22[7]);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v18 + v22[8]);
  *v24 = v19;
  v24[1] = v21;
  LOBYTE(v19) = v6[*(v30 + 36)];
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v6, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  *(v18 + v22[9]) = v19;
  type metadata accessor for ServerHandshakeState(0);
  swift_storeEnumTagMultiPayload();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1B25F5000, v25, v26, "server state machine initialized with pake records", v27, 2u);
    MEMORY[0x1B274ECF0](v27, -1, -1);
  }

  return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v17, type metadata accessor for ServerHandshakeStateMachine.Configuration);
}

void ServerHandshakeStateMachine.receivedNetworkData(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v3);
    v7 = v2 >> 32;
    if (!v5)
    {
      v7 = v6;
    }
  }

  v8 = v7 - v4;
  if (__OFSUB__(v7, v4))
  {
    __break(1u);
  }

  else if (one-time initialization token for logger == -1)
  {
    goto LABEL_10;
  }

  swift_once();
LABEL_10:
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_1B25F5000, v10, v11, "received network data (%ld bytes)", v12, 0xCu);
    MEMORY[0x1B274ECF0](v12, -1, -1);
  }

  HandshakeMessageParser.appendBytes(_:)(a1);
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04stepD033_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v3;
  v6 = v2;
  v43 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v8 = MEMORY[0x1EEE9AC00](v43);
  v39 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v38 - v10;
  v12 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, logger);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v38[1] = v12;
    v19 = v6;
    v20 = a2;
    v21 = a1;
    v22 = v14;
    v23 = v18;
    *v18 = 0;
    _os_log_impl(&dword_1B25F5000, v16, v17, "server attempting step handshake", v18, 2u);
    v24 = v23;
    v14 = v22;
    a1 = v21;
    a2 = v20;
    v6 = v19;
    v5 = v3;
    MEMORY[0x1B274ECF0](v24, -1, -1);
  }

  v25 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v6 + *(v25 + 24), v14, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v34 = type metadata accessor for PartialHandshakeResult(0);
        (*(*(v34 - 8) + 56))(a2, 2, 2, v34);
        v27 = type metadata accessor for ServerHandshakeState;
        return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v14, v27);
      }

      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV24handleReadClientFinished33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF(&v40, a2);
      v27 = type metadata accessor for ServerHandshakeState;
      if (!v5)
      {
        return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v14, v27);
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC17CertificateVerify33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF(&v40, a2);
        v27 = type metadata accessor for ServerHandshakeState;
        if (!v5)
        {
          return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v14, v27);
        }

        goto LABEL_21;
      }

      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC8Finished33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF(&v40, a2);
      v27 = type metadata accessor for ServerHandshakeState;
      if (!v5)
      {
        return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v14, v27);
      }
    }

    v28 = v40;
    v29 = v41;
    v31 = v42;
    v30 = type metadata accessor for ServerHandshakeState;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC5Hello33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF(&v40, a2);
      v27 = type metadata accessor for ServerHandshakeState;
      if (!v5)
      {
        return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v14, v27);
      }
    }

    else
    {
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV21handleReadClientHello33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF(&v40, a2);
      v27 = type metadata accessor for ServerHandshakeState;
      if (!v5)
      {
        return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v14, v27);
      }
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 2)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC19EncryptedExtensions33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF(&v40, a2);
    v27 = type metadata accessor for ServerHandshakeState;
    if (!v5)
    {
      return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v14, v27);
    }

LABEL_21:
    v28 = v40;
    v29 = v41;
    v30 = type metadata accessor for ServerHandshakeState;
    v31 = v42;
LABEL_24:
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v14, v30);
    *a1 = v28;
    *(a1 + 8) = v29;
    *(a1 + 16) = v31;
    return result;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v14, v11, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
  v33 = v43;
  if (v11[*(v43 + 40)] != 1)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v11, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v35 = v39;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v14, v39, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    if (*(v35 + *(v33 + 48) + 2))
    {
      v36 = v14;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v35, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC11Certificate33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF(&v40, a2);
      if (v5)
      {
        v28 = v40;
        v29 = v41;
        v30 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
        v31 = v42;
LABEL_36:
        v14 = v36;
        goto LABEL_24;
      }
    }

    else
    {
      v36 = v14;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC8Finished33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF(&v40, a2);
      if (v5)
      {
        v37 = v35;
        v28 = v40;
        v29 = v41;
        v31 = v42;
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v37, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
        v30 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
        goto LABEL_36;
      }

      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v35, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    }

    v27 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
    v14 = v36;
    return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v14, v27);
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC8Finished33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF(&v40, a2);
  if (v5)
  {
    v28 = v40;
    v29 = v41;
    v31 = v42;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v11, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v30 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
    goto LABEL_24;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v11, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
  v27 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
  return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v14, v27);
}

void _s15SwiftTLSLibrary27ServerHandshakeStateMachineV21handleReadClientHello33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1B25F5000, v9, v10, "server expecting client hello", v11, 2u);
    MEMORY[0x1B274ECF0](v11, -1, -1);
  }

  if (v2[1] >> 60 == 15)
  {
    goto LABEL_6;
  }

  _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v2, v2, v41, &v43);
  if (v3)
  {
    v16 = v41[0];
    v17 = v41[1];
    v18 = v42;
LABEL_11:
    *a1 = v16;
    *(a1 + 8) = v17;
    *(a1 + 16) = v18;
    return;
  }

  v37[6] = v49;
  v37[7] = v50;
  v37[2] = v45;
  v37[3] = v46;
  v37[4] = v47;
  v37[5] = v48;
  v37[0] = v43;
  v37[1] = v44;
  v40[5] = v49;
  v40[6] = v50;
  v40[1] = v45;
  v40[2] = v46;
  v40[3] = v47;
  v40[4] = v48;
  v38 = v51;
  LOBYTE(v40[7]) = v51;
  v39 = v43;
  v40[0] = v44;
  if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v39) == 1)
  {
LABEL_6:
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B25F5000, v12, v13, "incomplete message, waiting for more data", v14, 2u);
      MEMORY[0x1B274ECF0](v14, -1, -1);
    }

    v15 = type metadata accessor for PartialHandshakeResult(0);
    (*(*(v15 - 8) + 56))(v56, 2, 2, v15);
    return;
  }

  v54[3] = *(&v40[3] + 8);
  v54[4] = *(&v40[4] + 8);
  v55[0] = *(&v40[5] + 8);
  *(v55 + 9) = *(&v40[6] + 1);
  v54[0] = *(v40 + 8);
  v54[1] = *(&v40[1] + 8);
  v54[2] = *(&v40[2] + 8);
  if (LOBYTE(v40[7]))
  {
    ServerHandshakeStateMachine.logUnexpectedMessage(message:)(v54);
    v31 = xmmword_1B26C6430;
    v18 = 2;
    LOBYTE(v32) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of P256.Signing.PrivateKey?(v37, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    v17 = 0;
    v16 = 4;
    goto LABEL_11;
  }

  v52[4] = *(&v40[4] + 8);
  v52[5] = *(&v40[5] + 8);
  v53 = *(&v40[6] + 1);
  v52[0] = *(v40 + 8);
  v52[1] = *(&v40[1] + 8);
  v52[2] = *(&v40[2] + 8);
  v52[3] = *(&v40[3] + 8);
  v31 = *(v40 + 8);
  v32 = *(&v40[1] + 8);
  v33 = *(&v40[2] + 8);
  v34 = *(&v40[3] + 8);
  *(v36 + 9) = *(&v40[6] + 1);
  v35 = *(&v40[4] + 8);
  v36[0] = *(&v40[5] + 8);
  outlined init with copy of ClientHello(&v31, &v30);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1B25F5000, v19, v20, "server got client hello", v21, 2u);
    MEMORY[0x1B274ECF0](v21, -1, -1);
  }

  v22 = v39;
  v23 = *&v40[0];
  type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary20ServerHandshakeStateO19receivedClientHello_5bytesAA07PartialD6ResultVSgAA0gH0V_AA10ByteBufferVtAA8TLSErrorOYKF(v52, v22, *(&v22 + 1), v23, v41, v7);
  outlined destroy of P256.Signing.PrivateKey?(v37, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
  outlined destroy of HandshakeMessage(v40 + 8);
  v24 = type metadata accessor for PartialHandshakeResult(0);
  v25 = (*(v24 - 8) + 48);
  v26 = (*v25)(v7, 1, v24);
  v27 = (v25 + 1);
  if (v26 == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v7, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
    (*v27)(v56, 1, 2, v24);
  }

  else
  {
    v28 = v56;
    outlined init with take of ImportedPSK(v7, v56, type metadata accessor for PartialHandshakeResult);
    (*v27)(v28, 0, 2, v24);
  }
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC5Hello33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a1;
  v92 = a2;
  v118 = *MEMORY[0x1E69E9840];
  v91 = type metadata accessor for PartialHandshakeResult(0);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v102 = (&v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v100 = &v90 - v4;
  v99 = type metadata accessor for PAKEServerState(0);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v93 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v96 = &v90 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v90 - v9;
  v94 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  v11 = *(v94 - 8);
  v12 = MEMORY[0x1EEE9AC00](v94);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v90 - v15;
  v16 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, logger);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1B25F5000, v21, v22, "sending server hello", v23, 2u);
    MEMORY[0x1B274ECF0](v23, -1, -1);
  }

  v97 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v106 + *(v97 + 24), v18, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v18, type metadata accessor for ServerHandshakeState);
    v26 = ServerHandshakeStateMachine.stateDescription.getter();
    v28 = v27;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v116 = v32;
      *v31 = 136315138;
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v116);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_1B25F5000, v29, v30, "invalid state for handleReadClientHello: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1B274ECF0](v32, -1, -1);
      MEMORY[0x1B274ECF0](v31, -1, -1);
    }

    else
    {
    }

    *v116 = xmmword_1B26C6450;
    v41 = 2;
    v116[16] = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    v43 = 0;
    v44 = 2;
    goto LABEL_33;
  }

  v24 = v104;
  outlined init with take of ImportedPSK(v18, v104, type metadata accessor for ServerHandshakeState.ClientHelloState);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionOGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionOGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B26C6030;
  v107 = 1;
  *(v25 + 32) = 1027;
  *(v25 + 40) = 1;
  *(v25 + 112) = 32;
  outlined init with copy of Any?(v24 + *(v105 + 44), v10, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  if ((*(v11 + 48))(v10, 1, v94) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v10, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  }

  else
  {
    v34 = v95;
    outlined init with take of ImportedPSK(v10, v95, type metadata accessor for GeneratedEphemeralPrivateKey);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v34, v14, type metadata accessor for GeneratedEphemeralPrivateKey);
    v35 = qword_1B26C6D78[swift_getEnumCaseMultiPayload()];
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v14, type metadata accessor for GeneratedEphemeralPrivateKey);
    v36 = GeneratedEphemeralPrivateKey.publicKeyData.getter();
    v38 = v36;
    v39 = 0;
    v40 = v37 >> 62;
    if ((v37 >> 62) > 1)
    {
      if (v40 == 2)
      {
        v39 = *(v36 + 16);
      }
    }

    else if (v40)
    {
      v39 = v36;
    }

    v46 = *(v25 + 16);
    v45 = *(v25 + 24);
    if (v46 >= v45 >> 1)
    {
      v88 = v37;
      v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v25);
      v37 = v88;
      v25 = v89;
    }

    v47 = v37 | 0x1000000000000000;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v95, type metadata accessor for GeneratedEphemeralPrivateKey);
    *(v25 + 16) = v46 + 1;
    v48 = v25 + 88 * v46;
    *(v48 + 32) = v35;
    *(v48 + 40) = v38;
    *(v48 + 48) = v47;
    *(v48 + 56) = v39;
    *(v48 + 112) = 64;
    v24 = v104;
  }

  v49 = v105;
  v50 = v96;
  outlined init with copy of Any?(v24 + *(v105 + 72), v96, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v51 = type metadata accessor for GeneralEPSK(0);
  v52 = (*(*(v51 - 8) + 48))(v50, 1, v51);
  outlined destroy of P256.Signing.PrivateKey?(v50, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  if (v52 != 1)
  {
    v53 = *(v24 + v49[19]);
    v55 = *(v25 + 16);
    v54 = *(v25 + 24);
    if (v55 >= v54 >> 1)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v25);
    }

    v116[0] = 1;
    *(v25 + 16) = v55 + 1;
    v56 = v25 + 88 * v55;
    *(v56 + 32) = v53;
    *(v56 + 40) = 0;
    *(v56 + 48) = v116[0];
    *(v56 + 112) = -96;
  }

  v57 = v106;
  v58 = v100;
  outlined init with copy of Any?(v24 + v49[21], v100, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  v59 = v99;
  if ((*(v98 + 48))(v58, 1, v99) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v58, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  }

  else
  {
    v60 = v93;
    outlined init with take of ImportedPSK(v58, v93, type metadata accessor for PAKEServerState);
    v61 = (v60 + *(v59 + 24));
    v62 = v61[2];
    if (v62 >> 60 == 15)
    {
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v60, type metadata accessor for PAKEServerState);
      v57 = v106;
    }

    else
    {
      v63 = *v61;
      v64 = v61[1];
      v65 = v61[3];
      v66 = v61[4];
      v67 = v61[5];
      v68 = v61[6];
      v69 = v61[7];
      v70 = v61[8];
      v71 = v61[9];
      v100 = v63;
      *v116 = v63;
      *&v116[8] = v64;
      *&v116[16] = v62;
      *&v116[24] = v65;
      *&v116[32] = v66;
      *&v116[40] = v67;
      v99 = v67;
      v98 = v68;
      *&v116[48] = v68;
      *&v116[56] = v69;
      v96 = v69;
      v95 = v70;
      *&v116[64] = v70;
      *&v116[72] = v71;
      v94 = v71;
      outlined init with copy of Extension.PAKE.PAKEServerHello(v116, &v108);
      v73 = *(v25 + 16);
      v72 = *(v25 + 24);
      if (v73 >= v72 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v25);
      }

      LOBYTE(v108) = 1;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v93, type metadata accessor for PAKEServerState);
      *(v25 + 16) = v73 + 1;
      v74 = v25 + 88 * v73;
      *(v74 + 32) = v100;
      *(v74 + 40) = v64;
      *(v74 + 48) = v62;
      *(v74 + 56) = v65;
      v75 = v99;
      *(v74 + 64) = v66;
      *(v74 + 72) = v75;
      v76 = v96;
      *(v74 + 80) = v98;
      *(v74 + 88) = v76;
      v77 = v94;
      *(v74 + 96) = v95;
      *(v74 + 104) = v77;
      *(v74 + 112) = -63;
      v57 = v106;
      v24 = v104;
      v49 = v105;
    }
  }

  v78 = (v57 + *(v97 + 32));
  v79 = v24 + v49[14];
  v80 = v49[6];
  v81 = v78[1];
  *&v116[8] = *v78;
  *&v116[24] = v81;
  v82 = *(v79 + 16);
  *&v116[40] = *v79;
  v83 = *(v79 + 32);
  LOWORD(v79) = *(v24 + v80);
  *v116 = 771;
  *&v116[56] = v82;
  *&v116[72] = v83;
  LOWORD(v117) = v79;
  BYTE2(v117) = 0;
  *(&v117 + 1) = v25;
  v84 = v102;
  v85 = v101;
  _s15SwiftTLSLibrary20ServerHandshakeStateO07sendingC5HelloyAA07PartialD6ResultVAA0cG0VzAA8TLSErrorOYKF(v116, v114, v102);
  if (v85)
  {
    v41 = v114[0];
    v43 = v114[1];
    v44 = v115;
    v110 = *&v116[32];
    v111 = *&v116[48];
    v112 = *&v116[64];
    v113 = v117;
    v108 = *v116;
    v109 = *&v116[16];
    outlined destroy of ServerHello(&v108);
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v24, type metadata accessor for ServerHandshakeState.ClientHelloState);
LABEL_33:
    v86 = v103;
    *v103 = v41;
    v86[1] = v43;
    *(v86 + 16) = v44;
    return result;
  }

  v110 = *&v116[32];
  v111 = *&v116[48];
  v112 = *&v116[64];
  v113 = v117;
  v108 = *v116;
  v109 = *&v116[16];
  outlined destroy of ServerHello(&v108);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v24, type metadata accessor for ServerHandshakeState.ClientHelloState);
  v87 = v92;
  outlined init with take of ImportedPSK(v84, v92, type metadata accessor for PartialHandshakeResult);
  return (*(v90 + 56))(v87, 0, 2, v91);
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC19EncryptedExtensions33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v3;
  v6 = v2;
  v97 = a2;
  v7 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v99 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PartialHandshakeResult(0);
  v95 = *(v9 - 8);
  v96 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ServerHandshakeState(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v92 - v15;
  v107 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v17 = MEMORY[0x1EEE9AC00](v107);
  v101 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v92 - v19;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  *&v98 = __swift_project_value_buffer(v21, logger);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  v24 = os_log_type_enabled(v22, v23);
  v102 = v6;
  if (v24)
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1B25F5000, v22, v23, "sending server EE", v25, 2u);
    v5 = v3;
    v6 = v102;
    MEMORY[0x1B274ECF0](v25, -1, -1);
  }

  v26 = type metadata accessor for ServerHandshakeStateMachine(0);
  v100 = *(v26 + 24);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v6 + v100, v16, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v16, type metadata accessor for ServerHandshakeState);
    v39 = ServerHandshakeStateMachine.stateDescription.getter();
    v41 = v40;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v105 = v45;
      *v44 = 136315138;
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v105);

      *(v44 + 4) = v46;
      _os_log_impl(&dword_1B25F5000, v42, v43, "invalid state for sendServerEncryptedExtensions: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x1B274ECF0](v45, -1, -1);
      MEMORY[0x1B274ECF0](v44, -1, -1);
    }

    else
    {
    }

    v105 = xmmword_1B26C6450;
    v69 = 2;
    v106 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    v71 = 0;
    v72 = 2;
    goto LABEL_40;
  }

  outlined init with take of ImportedPSK(v16, v20, type metadata accessor for ServerHandshakeState.ServerHelloState);
  v27 = v20[v107[12] + 2];
  v93 = v14;
  if (v27 == 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v28);
    }

    *(v28 + 2) = v31;
    v32 = &v28[88 * v30];
    *(v32 + 4) = &_s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC19EncryptedExtensions33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKFTv_r;
    v32[112] = 16;
    v33 = &v20[v107[14]];
    if ((v33[1] & 1) == 0)
    {
      v34 = a1;
      v35 = *v33;
      v36 = *(v28 + 3);
      v37 = v30 + 2;
      if (v37 > (v36 >> 1))
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37, 1, v28);
      }

      LOBYTE(v105) = 1;
      *(v28 + 2) = v37;
      v38 = &v28[88 * v31];
      *(v38 + 4) = v35;
      v38[40] = v105;
      v38[112] = 112;
      a1 = v34;
    }
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v47 = &v20[v107[8]];
  v48 = *(v47 + 1);
  if (v48)
  {
    *&v98 = a1;
    v49 = *v47;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
    }

    v51 = *(v28 + 2);
    v50 = *(v28 + 3);
    if (v51 >= v50 >> 1)
    {
      v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v28);
    }

    LOBYTE(v105) = 1;
    *(v28 + 2) = v51 + 1;
    v52 = &v28[88 * v51];
    *(v52 + 4) = v49;
    *(v52 + 5) = v48;
    v52[48] = v105;
    v52[112] = 48;
    a1 = v98;
  }

  v53 = v102;
  v54 = v102 + *(v26 + 36);
  v55 = (v54 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration(0) + 24));
  v56 = v55[1];
  if (v56 >> 60 != 15)
  {
    v98 = *(v55 + 1);
    v57 = *v55;
    outlined copy of Data._Representation(*v55, v56);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
    }

    v59 = *(v28 + 2);
    v58 = *(v28 + 3);
    v60 = v98;
    if (v59 >= v58 >> 1)
    {
      v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v28);
      v60 = v98;
      v28 = v91;
    }

    *(v28 + 2) = v59 + 1;
    v61 = &v28[88 * v59];
    *(v61 + 4) = v57;
    *(v61 + 40) = v60;
    v61[112] = 0x80;
  }

  v62 = v20;
  v63 = v101;
  if (v20[v107[11]] == 1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v99;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
    }

    v67 = *(v28 + 2);
    v66 = *(v28 + 3);
    if (v67 >= v66 >> 1)
    {
      v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v28);
    }

    LOBYTE(v105) = 1;
    *(v28 + 2) = v67 + 1;
    v68 = &v28[88 * v67];
    *(v68 + 8) = 0;
    v68[36] = v105;
    v68[112] = 80;
    v63 = v101;
  }

  else
  {
    v65 = v99;
  }

  v73 = v53 + v100;
  v74 = v93;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v73, v93, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of ImportedPSK(v74, v63, type metadata accessor for ServerHandshakeState.ServerHelloState);
    v75 = v5;
    v76 = _s15SwiftTLSLibrary20ServerHandshakeStateO0c19EncryptedExtensionsE0V07sendingcfG008originalE006serverfG0AE5state_AA10ByteBufferV0jfG5BytestAC0c5HelloE0V_AA0fG0VtAA8TLSErrorOYKFZ(v65, v63, v28, v103);
    v79 = v63;
    if (v75)
    {
      v69 = v103[0];
      v71 = v103[1];
      v72 = v104;

      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v63, type metadata accessor for ServerHandshakeState.ServerHelloState);
      result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v62, type metadata accessor for ServerHandshakeState.ServerHelloState);
LABEL_40:
      *a1 = v69;
      *(a1 + 8) = v71;
      *(a1 + 16) = v72;
      return result;
    }

    v80 = v76;
    v81 = v77;
    v82 = v78;
    v107 = 0;

    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v79, type metadata accessor for ServerHandshakeState.ServerHelloState);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v62, type metadata accessor for ServerHandshakeState.ServerHelloState);
    v83 = v102;
    v84 = v100;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v102 + v100, type metadata accessor for ServerHandshakeState);
    outlined init with take of ImportedPSK(v65, v83 + v84, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    swift_storeEnumTagMultiPayload();
    v85 = v96;
    v86 = *(v96 + 20);
    v87 = type metadata accessor for EncryptionLevel(0);
    v88 = *(*(v87 - 8) + 56);
    v89 = v94;
    v88(&v94[v86], 1, 1, v87);
    v88(v89 + *(v85 + 24), 1, 1, v87);
    *v89 = v80;
    v89[1] = v81;
    v89[2] = v82;
    *(v89 + *(v85 + 28)) = xmmword_1B26C5EF0;
    v90 = v97;
    outlined init with take of ImportedPSK(v89, v97, type metadata accessor for PartialHandshakeResult);
    return (*(v95 + 56))(v90, 0, 2, v85);
  }

  else
  {
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v74, type metadata accessor for ServerHandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC8Finished33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = type metadata accessor for PartialHandshakeResult(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, logger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v6;
    v14 = v7;
    v15 = a2;
    v16 = v13;
    *v13 = 0;
    _os_log_impl(&dword_1B25F5000, v11, v12, "sending server finished", v13, 2u);
    v17 = v16;
    a2 = v15;
    v7 = v14;
    v4 = v2;
    v6 = v22;
    MEMORY[0x1B274ECF0](v17, -1, -1);
  }

  type metadata accessor for ServerHandshakeStateMachine(0);
  result = _s15SwiftTLSLibrary20ServerHandshakeStateO07sendingC8FinishedAA07PartialD6ResultVyAA8TLSErrorOYKF(&v20, v9);
  if (v4)
  {
    v19 = v21;
    *a1 = v20;
    *(a1 + 16) = v19;
  }

  else
  {
    outlined init with take of ImportedPSK(v9, a2, type metadata accessor for PartialHandshakeResult);
    return (*(v7 + 56))(a2, 0, 2, v6);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC11Certificate33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v38 = a2;
  v2 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PartialHandshakeResult(0);
  v37 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, logger);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1B25F5000, v15, v16, "sending server certificate", v17, 2u);
    MEMORY[0x1B274ECF0](v17, -1, -1);
  }

  v18 = *(type metadata accessor for ServerHandshakeStateMachine(0) + 24);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v43 + v18, v10, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of ImportedPSK(v10, v7, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v19 = v40;
    v20 = _s15SwiftTLSLibrary20ServerHandshakeStateO0c11CertificateE0V07sendingcF008originalE0AE5state_AA10ByteBufferV06serverF5BytestAC0c19EncryptedExtensionsE0V_tAA8TLSErrorOYKFZ(v4, v7, v41);
    if (v19)
    {
      v23 = v41[0];
      v24 = v41[1];
      v25 = v42;
      result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v7, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v27 = v39;
      *v39 = v23;
      v27[1] = v24;
      *(v27 + 16) = v25;
    }

    else
    {
      v28 = v20;
      v29 = v21;
      v30 = v22;
      v40 = 0;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v7, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v31 = v43;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v43 + v18, type metadata accessor for ServerHandshakeState);
      outlined init with take of ImportedPSK(v4, v31 + v18, type metadata accessor for ServerHandshakeState.ServerCertificateState);
      swift_storeEnumTagMultiPayload();
      v32 = v11[5];
      v33 = type metadata accessor for EncryptionLevel(0);
      v34 = *(*(v33 - 8) + 56);
      v34(v13 + v32, 1, 1, v33);
      v34(v13 + v11[6], 1, 1, v33);
      *v13 = v28;
      v13[1] = v29;
      v13[2] = v30;
      *(v13 + v11[7]) = xmmword_1B26C5EF0;
      v35 = v38;
      outlined init with take of ImportedPSK(v13, v38, type metadata accessor for PartialHandshakeResult);
      return (*(v37 + 56))(v35, 0, 2, v11);
    }
  }

  else
  {
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v10, type metadata accessor for ServerHandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC17CertificateVerify33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v38 = a2;
  v2 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PartialHandshakeResult(0);
  v37 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, logger);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1B25F5000, v15, v16, "sending server certificate verify", v17, 2u);
    MEMORY[0x1B274ECF0](v17, -1, -1);
  }

  v18 = *(type metadata accessor for ServerHandshakeStateMachine(0) + 24);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v43 + v18, v10, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    outlined init with take of ImportedPSK(v10, v7, type metadata accessor for ServerHandshakeState.ServerCertificateState);
    v19 = v40;
    v20 = _s15SwiftTLSLibrary20ServerHandshakeStateO0c17CertificateVerifyE0V07sendingcfG008originalE0AE5state_AA10ByteBufferV06serverfG5BytestAC0cfE0V_tAA8TLSErrorOYKFZ(v4, v7, v41);
    if (v19)
    {
      v23 = v41[0];
      v24 = v41[1];
      v25 = v42;
      result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v7, type metadata accessor for ServerHandshakeState.ServerCertificateState);
      v27 = v39;
      *v39 = v23;
      v27[1] = v24;
      *(v27 + 16) = v25;
    }

    else
    {
      v28 = v20;
      v29 = v21;
      v30 = v22;
      v40 = 0;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v7, type metadata accessor for ServerHandshakeState.ServerCertificateState);
      v31 = v43;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v43 + v18, type metadata accessor for ServerHandshakeState);
      outlined init with take of ImportedPSK(v4, v31 + v18, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
      swift_storeEnumTagMultiPayload();
      v32 = v11[5];
      v33 = type metadata accessor for EncryptionLevel(0);
      v34 = *(*(v33 - 8) + 56);
      v34(v13 + v32, 1, 1, v33);
      v34(v13 + v11[6], 1, 1, v33);
      *v13 = v28;
      v13[1] = v29;
      v13[2] = v30;
      *(v13 + v11[7]) = xmmword_1B26C5EF0;
      v35 = v38;
      outlined init with take of ImportedPSK(v13, v38, type metadata accessor for PartialHandshakeResult);
      return (*(v37 + 56))(v35, 0, 2, v11);
    }
  }

  else
  {
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v10, type metadata accessor for ServerHandshakeState);
    __break(1u);
  }

  return result;
}

void _s15SwiftTLSLibrary27ServerHandshakeStateMachineV24handleReadClientFinished33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v3;
  v6 = v2;
  v40 = a2;
  v7 = type metadata accessor for PartialHandshakeResult(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v60 = __swift_project_value_buffer(v11, logger);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v39 = v6;
    v15 = v8;
    v16 = v7;
    v17 = a1;
    v18 = v14;
    *v14 = 0;
    _os_log_impl(&dword_1B25F5000, v12, v13, "server expecting client finished", v14, 2u);
    v19 = v18;
    a1 = v17;
    v7 = v16;
    v8 = v15;
    v5 = v3;
    v6 = v39;
    MEMORY[0x1B274ECF0](v19, -1, -1);
  }

  if (v6[1] >> 60 == 15)
  {
    goto LABEL_6;
  }

  _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v6, v6, v47, &v49);
  if (v5)
  {
    v24 = v47[0];
    v23 = v47[1];
    v25 = v48;
LABEL_11:
    *a1 = v24;
    *(a1 + 8) = v23;
    *(a1 + 16) = v25;
    return;
  }

  v43[6] = v55;
  v43[7] = v56;
  v43[2] = v51;
  v43[3] = v52;
  v43[4] = v53;
  v43[5] = v54;
  v43[0] = v49;
  v43[1] = v50;
  v46[5] = v55;
  v46[6] = v56;
  v46[1] = v51;
  v46[2] = v52;
  v46[3] = v53;
  v46[4] = v54;
  v44 = v57;
  LOBYTE(v46[7]) = v57;
  v45 = v49;
  v46[0] = v50;
  if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v45) == 1)
  {
LABEL_6:
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B25F5000, v20, v21, "incomplete message, waiting for more data", v22, 2u);
      MEMORY[0x1B274ECF0](v22, -1, -1);
    }

    (*(v8 + 56))(v40, 2, 2, v7);
    return;
  }

  v58[4] = *(&v46[4] + 8);
  v59[0] = *(&v46[5] + 8);
  *(v59 + 9) = *(&v46[6] + 1);
  v58[0] = *(v46 + 8);
  v58[1] = *(&v46[1] + 8);
  v58[2] = *(&v46[2] + 8);
  v58[3] = *(&v46[3] + 8);
  if (LOBYTE(v46[7]) != 6)
  {
    ServerHandshakeStateMachine.logUnexpectedMessage(message:)(v58);
    v41 = xmmword_1B26C6430;
    v25 = 2;
    v42 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of P256.Signing.PrivateKey?(v43, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    v23 = 0;
    v24 = 4;
    goto LABEL_11;
  }

  v35 = a1;
  v37 = *(&v46[1] + 1);
  v38 = *&v46[1];
  v39 = *(&v46[0] + 1);
  outlined copy of Data._Representation(*(&v46[0] + 1), *&v46[1]);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1B25F5000, v26, v27, "server got message expecting finished", v28, 2u);
    MEMORY[0x1B274ECF0](v28, -1, -1);
  }

  v29 = v45;
  v36 = *&v46[0];
  type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary20ServerHandshakeStateO22receivedClientFinished_5bytesAA07PartialD6ResultVAA0H7MessageV_AA10ByteBufferVtAA8TLSErrorOYKF(v39, v38, v37, v29, *(&v29 + 1), v36, v47, v10);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1B25F5000, v30, v31, "server completed TLS handshake", v33, 2u);
    MEMORY[0x1B274ECF0](v33, -1, -1);
  }

  outlined destroy of HandshakeMessage(v46 + 8);

  outlined destroy of P256.Signing.PrivateKey?(v43, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
  v34 = v40;
  outlined init with take of ImportedPSK(v10, v40, type metadata accessor for PartialHandshakeResult);
  (*(v8 + 56))(v34, 0, 2, v7);
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV07processD0AA07PartialD6ResultVSgyAA8TLSErrorOYKF@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v3 = v2;
  v35 = a2;
  v4 = type metadata accessor for ServerHandshakeStateMachine.StepResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, logger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1B25F5000, v8, v9, "server attempting process step", v10, 2u);
      MEMORY[0x1B274ECF0](v10, -1, -1);
    }

    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04stepD033_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF(&v32, v6);
    if (v3)
    {
      break;
    }

    v3 = 0;
    v11 = type metadata accessor for PartialHandshakeResult(0);
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v6, 2, v11);
    if (v13 != 1)
    {
      if (v13)
      {
        v15 = 1;
        v14 = v35;
      }

      else
      {
        v14 = v35;
        outlined init with take of ImportedPSK(v6, v35, type metadata accessor for PartialHandshakeResult);
        v15 = 0;
      }

      return (*(v12 + 56))(v14, v15, 1, v11);
    }
  }

  v16 = v32;
  v17 = v33;
  v18 = v34;
  outlined copy of TLSError(v32, v33, v34);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  outlined consume of TLSError(v16, v17, v18);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_allocError();
    *v23 = v16;
    *(v23 + 8) = v17;
    *(v23 + 16) = v18;
    outlined copy of TLSError(v16, v17, v18);
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v24;
    *v22 = v24;
    _os_log_impl(&dword_1B25F5000, v19, v20, "processing message failed due to error %@", v21, 0xCu);
    outlined destroy of P256.Signing.PrivateKey?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B274ECF0](v22, -1, -1);
    MEMORY[0x1B274ECF0](v21, -1, -1);
  }

  v29 = v16;
  v30 = v17;
  v31 = v18;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  result = swift_willThrowTypedImpl();
  v26 = v28;
  *v28 = v16;
  v26[1] = v17;
  *(v26 + 16) = v18;
  return result;
}

uint64_t ServerHandshakeStateMachine.peerQUICTransportParameters.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  MEMORY[0x1EEE9AC00](ready);
  v42 = &v36 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  MEMORY[0x1EEE9AC00](v39);
  v40 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v43 + *(v18 + 24), v17, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v25 = v17;
        v26 = v40;
        outlined init with take of ImportedPSK(v25, v40, type metadata accessor for ServerHandshakeState.ServerFinishedState);
        v27 = v26 + *(v39 + 24);
        v20 = *v27;
        outlined copy of Data?(*v27, *(v27 + 8));
        v28 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
      }

      else
      {
        v33 = v17;
        v26 = v42;
        outlined init with take of ImportedPSK(v33, v42, type metadata accessor for ServerHandshakeState.ReadyState);
        v34 = v26 + *(ready + 24);
        v20 = *v34;
        outlined copy of Data?(*v34, *(v34 + 8));
        v28 = type metadata accessor for ServerHandshakeState.ReadyState;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        outlined init with take of ImportedPSK(v17, v5, type metadata accessor for ServerHandshakeState.ServerCertificateState);
        v21 = &v5[*(v3 + 28)];
        v20 = *v21;
        outlined copy of Data?(*v21, *(v21 + 1));
        v22 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v23 = v5;
LABEL_17:
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v23, v22);
        return v20;
      }

      v30 = v17;
      v26 = v38;
      outlined init with take of ImportedPSK(v30, v38, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
      v31 = v26 + *(v37 + 24);
      v20 = *v31;
      outlined copy of Data?(*v31, *(v31 + 8));
      v28 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
    }

    v22 = v28;
    v23 = v26;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with take of ImportedPSK(v17, v11, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v24 = &v11[*(v9 + 28)];
      v20 = *v24;
      outlined copy of Data?(*v24, *(v24 + 1));
      v22 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v23 = v11;
    }

    else
    {
      outlined init with take of ImportedPSK(v17, v8, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v32 = &v8[*(v6 + 28)];
      v20 = *v32;
      outlined copy of Data?(*v32, *(v32 + 1));
      v22 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
      v23 = v8;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with take of ImportedPSK(v17, v14, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v29 = &v14[*(v12 + 60)];
    v20 = *v29;
    outlined copy of Data?(*v29, *(v29 + 1));
    v22 = type metadata accessor for ServerHandshakeState.ClientHelloState;
    v23 = v14;
    goto LABEL_17;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v17, type metadata accessor for ServerHandshakeState);
  return 0;
}

uint64_t ServerHandshakeStateMachine.negotiatedCiphersuite.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  MEMORY[0x1EEE9AC00](ready);
  v30 = &v26 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x1EEE9AC00](v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v32 + *(v18 + 24), v17, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        outlined init with take of ImportedPSK(v17, v5, type metadata accessor for ServerHandshakeState.ServerCertificateState);
        v20 = *&v5[*(v26 + 36)];
        v22 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v23 = v5;
      }

      else
      {
        outlined init with take of ImportedPSK(v17, v3, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
        v20 = *&v3[*(v27 + 32)];
        v22 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
        v23 = v3;
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v8 = v28;
      outlined init with take of ImportedPSK(v17, v28, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v20 = *&v8[*(v29 + 32)];
      v24 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
    }

    else
    {
      v8 = v30;
      outlined init with take of ImportedPSK(v17, v30, type metadata accessor for ServerHandshakeState.ReadyState);
      v20 = *&v8[*(ready + 32)];
      v24 = type metadata accessor for ServerHandshakeState.ReadyState;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with take of ImportedPSK(v17, v11, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v20 = *&v11[*(v9 + 36)];
      v22 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v23 = v11;
LABEL_17:
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v23, v22);
      v21 = 0;
      return v20 | (v21 << 16);
    }

    outlined init with take of ImportedPSK(v17, v8, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v20 = *&v8[*(v6 + 36)];
    v24 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
LABEL_16:
    v22 = v24;
    v23 = v8;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with take of ImportedPSK(v17, v14, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v20 = *&v14[*(v12 + 24)];
    v22 = type metadata accessor for ServerHandshakeState.ClientHelloState;
    v23 = v14;
    goto LABEL_17;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v17, type metadata accessor for ServerHandshakeState);
  v20 = 0;
  v21 = 1;
  return v20 | (v21 << 16);
}

uint64_t ServerHandshakeStateMachine.negotiatedPAKE.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  MEMORY[0x1EEE9AC00](ready);
  v33 = &v31 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  MEMORY[0x1EEE9AC00](v32);
  v2 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v35 + *(v18 + 24), v17, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 6)
    {
      outlined init with take of ImportedPSK(v17, v2, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v26 = &v2[*(v32 + 40)];
      v21 = *v26;
      v22 = v26[2];
      v24 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
      v25 = v2;
    }

    else
    {
      v28 = v33;
      outlined init with take of ImportedPSK(v17, v33, type metadata accessor for ServerHandshakeState.ReadyState);
      v29 = v28 + *(ready + 40);
      v21 = *v29;
      v22 = *(v29 + 2);
      v24 = type metadata accessor for ServerHandshakeState.ReadyState;
      v25 = v28;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        outlined init with take of ImportedPSK(v17, v14, type metadata accessor for ServerHandshakeState.ClientHelloState);
        outlined init with copy of Any?(&v14[*(v12 + 84)], v11, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v14, type metadata accessor for ServerHandshakeState.ClientHelloState);
        v20 = type metadata accessor for PAKEServerState(0);
        if ((*(*(v20 - 8) + 48))(v11, 1, v20) != 1)
        {
          v21 = *&v11[*(v20 + 32)];
          _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v11, type metadata accessor for PAKEServerState);
          v22 = 0;
          return v21 | (v22 << 16);
        }

        outlined destroy of P256.Signing.PrivateKey?(v11, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
        goto LABEL_8;
      }

LABEL_7:
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v17, type metadata accessor for ServerHandshakeState);
LABEL_8:
      v21 = 0;
      v22 = 1;
      return v21 | (v22 << 16);
    }

    if (EnumCaseMultiPayload == 2)
    {
      outlined init with take of ImportedPSK(v17, v8, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v23 = &v8[*(v6 + 48)];
      v21 = *v23;
      v22 = v23[2];
      v24 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v25 = v8;
    }

    else
    {
      outlined init with take of ImportedPSK(v17, v5, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v27 = &v5[*(v3 + 48)];
      v21 = *v27;
      v22 = v27[2];
      v24 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
      v25 = v5;
    }
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v25, v24);
  if (v22)
  {
    v21 = 0;
  }

  return v21 | (v22 << 16);
}

uint64_t ServerHandshakeStateMachine.negotiatedEPSK.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  MEMORY[0x1EEE9AC00](ready);
  v27 = &v26 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  MEMORY[0x1EEE9AC00](v26);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v29 + *(v18 + 24), v17, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 6)
    {
      outlined init with take of ImportedPSK(v17, v2, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v21 = v2[*(v26 + 48)];
      v22 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
      v23 = v2;
    }

    else
    {
      v24 = v27;
      outlined init with take of ImportedPSK(v17, v27, type metadata accessor for ServerHandshakeState.ReadyState);
      v21 = *(v24 + *(ready + 48));
      v22 = type metadata accessor for ServerHandshakeState.ReadyState;
      v23 = v24;
    }

LABEL_13:
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v23, v22);
    return v21;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with take of ImportedPSK(v17, v8, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v21 = v8[*(v6 + 40)];
      v22 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v23 = v8;
    }

    else
    {
      outlined init with take of ImportedPSK(v17, v5, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v21 = v5[*(v3 + 40)];
      v22 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
      v23 = v5;
    }

    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_6:
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v17, type metadata accessor for ServerHandshakeState);
    return 0;
  }

  outlined init with take of ImportedPSK(v17, v14, type metadata accessor for ServerHandshakeState.ClientHelloState);
  outlined init with copy of Any?(&v14[*(v12 + 72)], v11, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v14, type metadata accessor for ServerHandshakeState.ClientHelloState);
  v20 = type metadata accessor for GeneralEPSK(0);
  v21 = (*(*(v20 - 8) + 48))(v11, 1, v20) != 1;
  outlined destroy of P256.Signing.PrivateKey?(v11, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  return v21;
}

uint64_t ServerHandshakeStateMachine.epskOffered.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  MEMORY[0x1EEE9AC00](ready);
  v30 = &v25 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x1EEE9AC00](v27);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v32 + *(v18 + 24), v17, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        outlined init with take of ImportedPSK(v17, v5, type metadata accessor for ServerHandshakeState.ServerCertificateState);
        v20 = v5[*(v26 + 48)];
        v21 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v22 = v5;
      }

      else
      {
        outlined init with take of ImportedPSK(v17, v3, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
        v20 = v3[*(v27 + 44)];
        v21 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
        v22 = v3;
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v8 = v28;
      outlined init with take of ImportedPSK(v17, v28, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v20 = v8[*(v29 + 52)];
      v23 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
    }

    else
    {
      v8 = v30;
      outlined init with take of ImportedPSK(v17, v30, type metadata accessor for ServerHandshakeState.ReadyState);
      v20 = v8[*(ready + 52)];
      v23 = type metadata accessor for ServerHandshakeState.ReadyState;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with take of ImportedPSK(v17, v11, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v20 = v11[*(v9 + 60)];
      v21 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v22 = v11;
LABEL_17:
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v22, v21);
      return v20;
    }

    outlined init with take of ImportedPSK(v17, v8, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v20 = v8[*(v6 + 56)];
    v23 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
LABEL_16:
    v21 = v23;
    v22 = v8;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with take of ImportedPSK(v17, v14, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v20 = v14[*(v12 + 68)];
    v21 = type metadata accessor for ServerHandshakeState.ClientHelloState;
    v22 = v14;
    goto LABEL_17;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v17, type metadata accessor for ServerHandshakeState);
  return 0;
}

uint64_t ServerHandshakeStateMachine.pakeOffered.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  MEMORY[0x1EEE9AC00](ready);
  v30 = &v25 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x1EEE9AC00](v27);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v32 + *(v18 + 24), v17, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        outlined init with take of ImportedPSK(v17, v5, type metadata accessor for ServerHandshakeState.ServerCertificateState);
        v20 = v5[*(v26 + 52)];
        v21 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v22 = v5;
      }

      else
      {
        outlined init with take of ImportedPSK(v17, v3, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
        v20 = v3[*(v27 + 48)];
        v21 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
        v22 = v3;
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v8 = v28;
      outlined init with take of ImportedPSK(v17, v28, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v20 = v8[*(v29 + 60)];
      v23 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
    }

    else
    {
      v8 = v30;
      outlined init with take of ImportedPSK(v17, v30, type metadata accessor for ServerHandshakeState.ReadyState);
      v20 = v8[*(ready + 56)];
      v23 = type metadata accessor for ServerHandshakeState.ReadyState;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with take of ImportedPSK(v17, v11, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v20 = v11[*(v9 + 68)];
      v21 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v22 = v11;
LABEL_17:
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v22, v21);
      return v20;
    }

    outlined init with take of ImportedPSK(v17, v8, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v20 = v8[*(v6 + 64)];
    v23 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
LABEL_16:
    v21 = v23;
    v22 = v8;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with take of ImportedPSK(v17, v14, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v20 = v14[*(v12 + 92)];
    v21 = type metadata accessor for ServerHandshakeState.ClientHelloState;
    v22 = v14;
    goto LABEL_17;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v17, type metadata accessor for ServerHandshakeState);
  return 0;
}

uint64_t ServerHandshakeStateMachine.negotiatedGroup.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  MEMORY[0x1EEE9AC00](ready);
  v38 = &v32 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v39 + *(v18 + 24), v17, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v11 = v36;
        outlined init with take of ImportedPSK(v17, v36, type metadata accessor for ServerHandshakeState.ServerFinishedState);
        v24 = &v11[*(v35 + 44)];
        if (v24[2])
        {
          v20 = 0;
        }

        else
        {
          v20 = NamedGroup.metadataDescription.getter(*v24);
        }

        v23 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
      }

      else
      {
        v11 = v38;
        outlined init with take of ImportedPSK(v17, v38, type metadata accessor for ServerHandshakeState.ReadyState);
        v28 = &v11[*(ready + 44)];
        if (v28[2])
        {
          v20 = 0;
        }

        else
        {
          v20 = NamedGroup.metadataDescription.getter(*v28);
        }

        v23 = type metadata accessor for ServerHandshakeState.ReadyState;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        outlined init with take of ImportedPSK(v17, v5, type metadata accessor for ServerHandshakeState.ServerCertificateState);
        v21 = &v5[*(v3 + 44)];
        if (v21[2])
        {
          v20 = 0;
        }

        else
        {
          v20 = NamedGroup.metadataDescription.getter(*v21);
        }

        v29 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v30 = v5;
        goto LABEL_38;
      }

      v11 = v34;
      outlined init with take of ImportedPSK(v17, v34, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
      v26 = &v11[*(v33 + 40)];
      if (v26[2])
      {
        v20 = 0;
      }

      else
      {
        v20 = NamedGroup.metadataDescription.getter(*v26);
      }

      v23 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
    }

LABEL_37:
    v29 = v23;
    v30 = v11;
LABEL_38:
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v30, v29);
    return v20;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      outlined init with take of ImportedPSK(v17, v8, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v27 = &v8[*(v6 + 52)];
      if (v27[2])
      {
        v20 = 0;
      }

      else
      {
        v20 = NamedGroup.metadataDescription.getter(*v27);
      }

      v29 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
      v30 = v8;
      goto LABEL_38;
    }

    outlined init with take of ImportedPSK(v17, v11, type metadata accessor for ServerHandshakeState.ServerHelloState);
    v22 = &v11[*(v9 + 52)];
    if (v22[2])
    {
      v20 = 0;
    }

    else
    {
      v20 = NamedGroup.metadataDescription.getter(*v22);
    }

    v23 = type metadata accessor for ServerHandshakeState.ServerHelloState;
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with take of ImportedPSK(v17, v14, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v25 = &v14[*(v12 + 28)];
    if (v25[2])
    {
      v20 = 0;
    }

    else
    {
      v20 = NamedGroup.metadataDescription.getter(*v25);
    }

    v29 = type metadata accessor for ServerHandshakeState.ClientHelloState;
    v30 = v14;
    goto LABEL_38;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v17, type metadata accessor for ServerHandshakeState);
  return 0;
}

uint64_t ServerHandshakeStateMachine.earlyDataAccepted.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  MEMORY[0x1EEE9AC00](ready);
  v30 = &v25 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x1EEE9AC00](v27);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v32 + *(v18 + 24), v17, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        outlined init with take of ImportedPSK(v17, v5, type metadata accessor for ServerHandshakeState.ServerCertificateState);
        v20 = v5[*(v26 + 40)];
        v21 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v22 = v5;
      }

      else
      {
        outlined init with take of ImportedPSK(v17, v3, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
        v20 = v3[*(v27 + 36)];
        v21 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
        v22 = v3;
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v8 = v28;
      outlined init with take of ImportedPSK(v17, v28, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v20 = v8[*(v29 + 36)];
      v23 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
    }

    else
    {
      v8 = v30;
      outlined init with take of ImportedPSK(v17, v30, type metadata accessor for ServerHandshakeState.ReadyState);
      v20 = v8[*(ready + 36)];
      v23 = type metadata accessor for ServerHandshakeState.ReadyState;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with take of ImportedPSK(v17, v11, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v20 = v11[*(v9 + 44)];
      v21 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v22 = v11;
LABEL_17:
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v22, v21);
      return v20;
    }

    outlined init with take of ImportedPSK(v17, v8, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v20 = v8[*(v6 + 44)];
    v23 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
LABEL_16:
    v21 = v23;
    v22 = v8;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with take of ImportedPSK(v17, v14, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v20 = v14[*(v12 + 80)];
    v21 = type metadata accessor for ServerHandshakeState.ClientHelloState;
    v22 = v14;
    goto LABEL_17;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v17, type metadata accessor for ServerHandshakeState);
  return 2;
}

uint64_t ServerHandshakeStateMachine.stateDescription.getter()
{
  v1 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v0 + *(v4 + 24), v3, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = 1701602409;
  v7 = 0x6946726576726573;
  if (EnumCaseMultiPayload != 6)
  {
    v7 = 0x726F467964616572;
  }

  v8 = 0xD000000000000017;
  if (EnumCaseMultiPayload == 4)
  {
    v8 = 0xD000000000000011;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v7 = v8;
  }

  v9 = 0xD000000000000019;
  if (EnumCaseMultiPayload == 2)
  {
    v9 = 0x6548726576726573;
  }

  if (EnumCaseMultiPayload)
  {
    v6 = 0x6548746E65696C63;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v6 = v9;
  }

  if (EnumCaseMultiPayload <= 3)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v3, type metadata accessor for ServerHandshakeState);
  return v10;
}

BOOL ServerHandshakeStateMachine.handshakeComplete.getter()
{
  v1 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v0 + *(v4 + 24), v3, type metadata accessor for ServerHandshakeState);
  v5 = swift_getEnumCaseMultiPayload() > 6;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v3, type metadata accessor for ServerHandshakeState);
  return v5;
}

uint64_t ServerHandshakeStateMachine.handshakeStarted.getter()
{
  v1 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v0 + *(v4 + 24), v3, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload())
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v0 + 24);
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v3, type metadata accessor for ServerHandshakeState);
  return v5;
}

void ServerHandshakeStateMachine.logUnexpectedMessage(message:)(uint64_t a1)
{
  type metadata accessor for ServerHandshakeStateMachine(0);
  v2 = ServerHandshakeState.description.getter();
  v4 = *(a1 + 104);
  v5 = 0x6548746E65696C63;
  v6 = 0xE800000000000000;
  v7 = 0x64656873696E6966;
  if (v4 != 6)
  {
    v7 = 0xD000000000000010;
    v6 = 0x80000001B26CD8F0;
  }

  v8 = 0xEB00000000657461;
  v9 = 0x6369666974726563;
  if (v4 != 4)
  {
    v9 = 0xD000000000000011;
    v8 = 0x80000001B26CD910;
  }

  if (*(a1 + 104) <= 5u)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0x80000001B26CD950;
  v11 = 0xD000000000000012;
  if (v4 == 2)
  {
    v11 = 0xD000000000000013;
  }

  else
  {
    v10 = 0x80000001B26CD930;
  }

  if (*(a1 + 104))
  {
    v5 = 0x6548726576726573;
  }

  if (*(a1 + 104) <= 1u)
  {
    v10 = 0xEB000000006F6C6CLL;
  }

  else
  {
    v5 = v11;
  }

  if (*(a1 + 104) <= 3u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  if (*(a1 + 104) <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v6;
  }

  v14 = v2;
  v15 = v3;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, logger);

  oslog = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136315394;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v23);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2080;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v23);

    *(v18 + 14) = v21;
    _os_log_impl(&dword_1B25F5000, oslog, v17, "unexpected message %s in state %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274ECF0](v19, -1, -1);
    MEMORY[0x1B274ECF0](v18, -1, -1);
  }

  else
  {
  }
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary11GeneralEPSKVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary11GeneralEPSKVGMR);
  v10 = *(type metadata accessor for GeneralEPSK(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for GeneralEPSK(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary10PAKESchemeVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary10PAKESchemeVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void specialized SwiftOfferedEPSK.init(external_identity:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else if (v11)
  {
    v12 = a1 >> 32;
  }

  else
  {
    v12 = BYTE6(a2);
  }

  if (v12 < a3)
  {
    goto LABEL_22;
  }

  Data._Representation.subscript.getter();
  if (a5 >> 60 == 15)
  {
    outlined consume of Data._Representation(a1, a2);
    return;
  }

  v13 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v13 != 2)
    {
      if (a6 <= 0)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    v14 = *(a4 + 24);
  }

  else
  {
    if (!v13)
    {
      if (BYTE6(a5) < a6)
      {
        goto LABEL_21;
      }

LABEL_19:
      Data._Representation.subscript.getter();
      outlined consume of ByteBuffer?(a4, a5);
      outlined consume of Data._Representation(a1, a2);
      outlined consume of ByteBuffer?(a4, a5);
      return;
    }

    v14 = a4 >> 32;
  }

  outlined copy of Data._Representation(a4, a5);
  if (v14 >= a6)
  {
    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SwiftOfferedEPSK(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SwiftOfferedEPSK(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t type metadata completion function for ServerHandshakeStateMachine(uint64_t a1)
{
  result = type metadata accessor for ServerHandshakeState(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ServerHandshakeStateMachine.Configuration(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for ServerHandshakeStateMachine.StepResult(uint64_t a1)
{
  v1 = type metadata accessor for PartialHandshakeResult(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t outlined init with take of ImportedPSK(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void TLSPlaintext.hash(into:)(int a1, unsigned int a2, uint64_t a3)
{
  v4 = a2 >> 8;
  v5 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  v6 = *(a3 + 16);
  MEMORY[0x1B274DB20](v6);
  if (v6)
  {
    v7 = (a3 + 32);
    do
    {
      v8 = *v7++;
      Hasher._combine(_:)(v8);
      --v6;
    }

    while (v6);
  }
}

Swift::Int TLSPlaintext.hashValue.getter(unsigned int a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  v6 = *(a2 + 16);
  MEMORY[0x1B274DB20](v6);
  if (v6)
  {
    v7 = (a2 + 32);
    do
    {
      v8 = *v7++;
      Hasher._combine(_:)(v8);
      --v6;
    }

    while (v6);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TLSPlaintext(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 1);
  v4 = *v1;
  Hasher.init(_seed:)();
  TLSPlaintext.hash(into:)(v6, v4 | (v2 << 16), v3);
  return Hasher._finalize()();
}

BOOL specialized static TLSPlaintext.__derived_struct_equals(_:_:)(_BOOL8 result, uint64_t a2, int a3, uint64_t a4)
{
  if ((result & 0xFFFFFF) != (a3 & 0xFFFFFF))
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (v4 != *(a4 + 16))
  {
    return 0;
  }

  if (!v4 || a2 == a4)
  {
    return 1;
  }

  v5 = (a2 + 32);
  v6 = (a4 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type TLSPlaintext and conformance TLSPlaintext()
{
  result = lazy protocol witness table cache variable for type TLSPlaintext and conformance TLSPlaintext;
  if (!lazy protocol witness table cache variable for type TLSPlaintext and conformance TLSPlaintext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TLSPlaintext and conformance TLSPlaintext);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TLSPlaintext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TLSPlaintext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary17CertificateVerifyV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfC(uint64_t *a1)
{
  result = _s15SwiftTLSLibrary17CertificateVerifyV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(a1);
  if (!v1)
  {
    return result;
  }

  return result;
}

void CertificateVerify.signature.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined consume of Data._Representation(v3[1], v3[2]);
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = a3;
}

uint64_t static CertificateVerify.__derived_struct_equals(_:_:)(__int16 a1, uint64_t a2, unint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  if (a1 == a5)
  {
    return specialized static ByteBuffer.== infix(_:_:)(a2, a3, a4, a6, a7, a8);
  }

  else
  {
    return 0;
  }
}

void CertificateVerify.hash(into:)(uint64_t a1, Swift::UInt16 a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  Hasher._combine(_:)(a2);
  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v9 = *(a3 + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  else if (v8)
  {
    v9 = a3 >> 32;
  }

  else
  {
    v9 = BYTE6(a4);
  }

  if (v9 < a5)
  {
    __break(1u);
  }

  else
  {
    v10 = Data._Representation.subscript.getter();
    v12 = v11;
    Data.hash(into:)();

    outlined consume of Data._Representation(v10, v12);
  }
}

void CertificateVerify.hashValue.getter(Swift::UInt16 a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v9 = 0;
    if (v8 == 2)
    {
      v9 = *(a2 + 24);
    }
  }

  else if (v8)
  {
    v9 = a2 >> 32;
  }

  else
  {
    v9 = BYTE6(a3);
  }

  if (v9 < a4)
  {
    __break(1u);
  }

  else
  {
    v10 = Data._Representation.subscript.getter();
    v12 = v11;
    Data.hash(into:)();
    outlined consume of Data._Representation(v10, v12);
    Hasher._finalize()();
  }
}

void protocol witness for Hashable.hash(into:) in conformance CertificateVerify(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  Hasher._combine(_:)(*v1);
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v5)
  {
    v6 = v2 >> 32;
  }

  else
  {
    v6 = BYTE6(v3);
  }

  if (v6 < v4)
  {
    __break(1u);
  }

  else
  {
    v7 = Data._Representation.subscript.getter();
    v9 = v8;
    Data.hash(into:)();

    outlined consume of Data._Representation(v7, v9);
  }
}

void protocol witness for Hashable._rawHashValue(seed:) in conformance CertificateVerify(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    v7 = v2 >> 32;
  }

  else
  {
    v7 = BYTE6(v3);
  }

  if (v7 < v4)
  {
    __break(1u);
  }

  else
  {
    v8 = Data._Representation.subscript.getter();
    v10 = v9;
    Data.hash(into:)();
    outlined consume of Data._Representation(v8, v10);
    Hasher._finalize()();
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CertificateVerify(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return specialized static ByteBuffer.== infix(_:_:)(a1[1], a1[2], a1[3], a2[1], a2[2], a2[3]);
  }

  else
  {
    return 0;
  }
}

unint64_t CertificateVerify.write(into:)(uint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = bswap32(a2) >> 16;
  v9 = MEMORY[0x1E69E6290];
  v10 = MEMORY[0x1E6969DF8];
  v31 = MEMORY[0x1E69E6290];
  v32 = MEMORY[0x1E6969DF8];
  v29 = &v28;
  v30 = &v29;
  __swift_project_boxed_opaque_existential_0(&v29, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v29);
  v11 = *a1;
  v12 = a1[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v16 = *(v11 + 24);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v14 = BYTE6(v12);
    v15 = v11 >> 32;
    if (v13)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }
  }

  v28 = 0;
  v31 = v9;
  v32 = v10;
  v29 = &v28;
  v30 = &v29;
  __swift_project_boxed_opaque_existential_0(&v29, v9);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v29);
  v17 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a3 + 16);
      v19 = *(a3 + 24);
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }
  }

  else if (v17)
  {
    v18 = a3;
    v19 = a3 >> 32;
  }

  else
  {
    v18 = 0;
    v19 = BYTE6(a4);
  }

  if (v19 < a5 || v19 < v18)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  v20 = Data._Representation.subscript.getter();
  v22 = v21;
  Data.append(_:)();
  v23 = v22;
  v24 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v24 != 2)
    {
      goto LABEL_29;
    }

    v26 = *(v20 + 16);
    v25 = *(v20 + 24);
    outlined consume of Data._Representation(v20, v23);
    v20 = v25 - v26;
    if (!__OFSUB__(v25, v26))
    {
LABEL_26:
      if ((v20 & 0x8000000000000000) == 0)
      {
        if (!(v20 >> 16))
        {
          goto LABEL_30;
        }

        __break(1u);
LABEL_29:
        outlined consume of Data._Representation(v20, v23);
        v20 = 0;
        goto LABEL_30;
      }

      goto LABEL_32;
    }

    __break(1u);
LABEL_24:
    outlined consume of Data._Representation(v20, v23);
    if (__OFSUB__(HIDWORD(v20), v20))
    {
      goto LABEL_33;
    }

    v20 = HIDWORD(v20) - v20;
    goto LABEL_26;
  }

  if (v24)
  {
    goto LABEL_24;
  }

  outlined consume of Data._Representation(v20, v22);
  v20 = BYTE6(v22);
LABEL_30:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v20, v16);
  return v20 + 4;
}

uint64_t _s15SwiftTLSLibrary17CertificateVerifyVAA24HandshakeMessageProtocolA2aDP5bytesxAA10ByteBufferVz_tAA8TLSErrorOYKcfCTW@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = _s15SwiftTLSLibrary17CertificateVerifyV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(a1);
  if (v3)
  {
    *a2 = result;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
  }

  else
  {
    *a3 = result;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9;
  }

  return result;
}