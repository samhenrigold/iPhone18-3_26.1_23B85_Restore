uint64_t BackgroundConnectionError.shouldSkipIDSOrTuscanyUserInfo(_:_:)(char a1, char a2)
{
  v4 = Dictionary.init(dictionaryLiteral:)();
  v5 = MEMORY[0x277D839B0];
  if (a1)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    v15 = v5;
    LOBYTE(v14) = 1;
    outlined init with take of Any(&v14, v13);
    swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v6, v8);
  }

  if (a2)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v15 = v5;
    LOBYTE(v14) = 1;
    outlined init with take of Any(&v14, v13);
    swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v9, v11);
  }

  return v4;
}

unint64_t static BackgroundConnectionError.== infix(_:_:)(unint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  v12 = *(a1 + 32);
  v14 = *a2;
  v13 = a2[1];
  v16 = a2[2];
  v15 = a2[3];
  v17 = *(a2 + 32);
  v59[0] = *a1;
  v59[1] = v9;
  v59[2] = v11;
  v59[3] = v10;
  v60 = v12;
  v61 = v14;
  v62 = v13;
  v63 = v16;
  v64 = v15;
  v65 = v17;
  switch(v12)
  {
    case 1:
      if (v17 != 1)
      {
        goto LABEL_54;
      }

      goto LABEL_18;
    case 2:
      if (v17 != 2)
      {
        goto LABEL_54;
      }

      goto LABEL_18;
    case 3:
      if (v17 != 3)
      {
        goto LABEL_54;
      }

LABEL_18:
      outlined destroy of (BackgroundConnectionError, BackgroundConnectionError)(v59);
      if ((v14 ^ v8))
      {
        return 0;
      }

      else
      {
        return (v8 >> 8) & 1 ^ ((v14 & 0x100) == 0);
      }

    case 4:
      if (v11 | v9 | v8 | v10)
      {
        v19 = v11 | v9 | v10;
        if (v8 != 1 || v19)
        {
          if (v8 != 2 || v19)
          {
            if (v8 != 3 || v19)
            {
              if (v17 != 4 || v14 != 4)
              {
                goto LABEL_54;
              }
            }

            else if (v17 != 4 || v14 != 3)
            {
              goto LABEL_54;
            }
          }

          else if (v17 != 4 || v14 != 2)
          {
            goto LABEL_54;
          }
        }

        else if (v17 != 4 || v14 != 1)
        {
          goto LABEL_54;
        }

        if (v16 | v13 | v15)
        {
          goto LABEL_54;
        }
      }

      else if (v17 != 4 || v16 | v13 | v14 | v15)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    default:
      if (v17)
      {

        v18 = v9;
LABEL_54:
        v40 = v14;
        v41 = v13;
        v42 = v16;
        v43 = v15;
        v44 = v17;
        goto LABEL_55;
      }

      if (v8 != v14)
      {
        goto LABEL_37;
      }

      if (!v9)
      {
        if (!v13)
        {
          OUTLINED_FUNCTION_1_29();
          outlined copy of BackgroundConnectionError(v47, v48, v49, v50, v51);
          OUTLINED_FUNCTION_2_32();
          outlined copy of BackgroundConnectionError(v52, v53, v54, v55, v56);
          goto LABEL_62;
        }

LABEL_37:
        OUTLINED_FUNCTION_1_29();
        outlined copy of BackgroundConnectionError(v35, v36, v37, v38, v39);
        OUTLINED_FUNCTION_2_32();
LABEL_55:
        outlined copy of BackgroundConnectionError(v40, v41, v42, v43, v44);
        goto LABEL_56;
      }

      if (!v13)
      {
        goto LABEL_37;
      }

      type metadata accessor for CFStringRef(0);
      OUTLINED_FUNCTION_1_29();
      outlined copy of BackgroundConnectionError(v22, v23, v24, v25, v26);
      OUTLINED_FUNCTION_2_32();
      outlined copy of BackgroundConnectionError(v27, v28, v29, v30, v31);
      lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
      v32 = v13;
      v33 = static _CFObject.== infix(_:_:)();

      if (v33)
      {
LABEL_62:
        if (v10)
        {
          if (!v15)
          {
            goto LABEL_56;
          }

          if (v11 == v16 && v10 == v15)
          {
LABEL_52:
            outlined destroy of (BackgroundConnectionError, BackgroundConnectionError)(v59);
          }

          else
          {
            OUTLINED_FUNCTION_1_29();
            v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
            outlined destroy of (BackgroundConnectionError, BackgroundConnectionError)(v59);
            if ((v58 & 1) == 0)
            {
              return 0;
            }
          }
        }

        else
        {

          outlined destroy of (BackgroundConnectionError, BackgroundConnectionError)(v59);
          if (v15)
          {

            return 0;
          }
        }

        return 1;
      }

LABEL_56:
      outlined destroy of (BackgroundConnectionError, BackgroundConnectionError)(v59);
      return 0;
  }
}

void outlined copy of BackgroundConnectionError(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5)
  {

    v6 = a2;
  }
}

uint64_t outlined destroy of (BackgroundConnectionError, BackgroundConnectionError)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork25BackgroundConnectionErrorO_ACtMd, &_s11SiriNetwork25BackgroundConnectionErrorO_ACtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for Error._domain.getter in conformance BackgroundConnectionError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance BackgroundConnectionError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork25BackgroundConnectionErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
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

uint64_t getEnumTagSinglePayload for BackgroundConnectionError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 33))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 4)
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

uint64_t storeEnumTagSinglePayload for BackgroundConnectionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t destructiveInjectEnumTag for BackgroundConnectionError(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_96_1(a1);
  MEMORY[0x223DE2980](qword_2235F5450[v1]);
  return Hasher._finalize()();
}

{
  v1 = a1;
  OUTLINED_FUNCTION_96_1(a1);
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_96_1(a1);
  MEMORY[0x223DE2980](1);
  return Hasher._finalize()();
}

{
  v1 = a1;
  OUTLINED_FUNCTION_96_1(a1);
  MEMORY[0x223DE2980](v1 + 1);
  return Hasher._finalize()();
}

{
  v1 = a1;
  OUTLINED_FUNCTION_96_1(a1);
  MEMORY[0x223DE2980](v1);
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_96_1(a1);
  MEMORY[0x223DE2980](a1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(char a1)
{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1 & 1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1 & 1);
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](qword_2235F5450[a2]);
  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](a2);
  return Hasher._finalize()();
}

uint64_t specialized Set.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    Hasher.init(_seed:)();
    MEMORY[0x223DE2980](v4);
    v5 = Hasher._finalize()();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + v7) != v4);
  }

  return v2;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_104_0(v13);
  if (*(a2 + 16))
  {
    OUTLINED_FUNCTION_104_0(__dst);
    Hasher.init(_seed:)();
    ConnectionPolicyRoute.hash(into:)(v11);
    Hasher._finalize()();
    OUTLINED_FUNCTION_18_8();
    v5 = ~v4;
    while (1)
    {
      v6 = v3 & v5;
      if (((*(a2 + 56 + (((v3 & v5) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v3 & v5)) & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_104_0(v11);
      OUTLINED_FUNCTION_104_0(__src);
      v7 = static ConnectionPolicyRoute.== infix(_:_:)(__src, v13);
      memcpy(__dst, __src, 0x72uLL);
      outlined init with copy of ConnectionPolicyRoute(v11, v9);
      outlined destroy of ConnectionPolicyRoute(__dst);
      if (v7)
      {
        return 1;
      }

      v3 = v6 + 1;
    }
  }

  return 0;
}

SiriNetwork::ConnectionState_optional __swiftcall ConnectionState.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

SiriNetwork::ConnectionState_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ConnectionState@<W0>(Swift::Int *a1@<X0>, SiriNetwork::ConnectionState_optional *a2@<X8>)
{
  result.value = ConnectionState.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t BackgroundConnection.connectionAnalysisInfo.getter()
{
  OUTLINED_FUNCTION_133();
  if (*(v0 + 1080))
  {
    OUTLINED_FUNCTION_134();
    v2 = *(v1 + 64);
    swift_unknownObjectRetain();
    v3 = OUTLINED_FUNCTION_0_36();
    v2(v3);
    OUTLINED_FUNCTION_106_0();

    return swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for ConnectionAnalysisInfo(0);
    OUTLINED_FUNCTION_106_0();

    return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t closure #1 in closure #2 in BackgroundConnection.start(proposedFallbackMethod:allowFallbackToNewMethod:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v4 >> 1 != 0xFFFFFFFF || v6 >= 2)
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.siriNetwork);
      outlined copy of NetworkConnectionError?(v5, v4, v7, v6, v8);
      outlined init with copy of NetworkConnectionError(a3, v27);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      outlined consume of NetworkConnectionError?(v5, v4, v7, v6, v8);
      outlined destroy of NetworkConnectionError(a3);
      if (os_log_type_enabled(v12, v13))
      {
        v26 = v13;
        v14 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v14 = 138412546;
        lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        swift_allocError();
        *v15 = v5;
        v15[1] = v4;
        v15[2] = v7;
        v15[3] = v6;
        v15[4] = v8;
        outlined copy of NetworkConnectionError(v5, v4, v7, v6, v8);
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 4) = v16;
        *v25 = v16;
        *(v14 + 12) = 2112;
        swift_allocError();
        v17 = *(a3 + 32);
        v18 = *(a3 + 16);
        *v19 = *a3;
        *(v19 + 16) = v18;
        *(v19 + 32) = v17;
        outlined init with copy of NetworkConnectionError(a3, v27);
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 14) = v20;
        v25[1] = v20;
        _os_log_impl(&dword_223515000, v12, v26, "Background Connection - Fallback: Callback to Completion with error %@ for Open Connection error (%@)", v14, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x223DE38F0](v25, -1, -1);
        MEMORY[0x223DE38F0](v14, -1, -1);
      }

      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v21 = swift_allocError();
      v22 = *(a3 + 32);
      v23 = *(a3 + 16);
      *v24 = *a3;
      *(v24 + 16) = v23;
      *(v24 + 32) = v22;
      outlined init with copy of NetworkConnectionError(a3, v27);
      BackgroundConnection.didEncounterError(_:)(v21);

      BackgroundConnection.cancel()();
    }
  }

  return result;
}

void BackgroundConnection.startSecondaryConnection()()
{
  OUTLINED_FUNCTION_46();
  if (!*(v0 + 1184))
  {
    v1 = v0;
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v2, static Logger.siriNetwork);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_15_1(v4))
    {
      v5 = OUTLINED_FUNCTION_14();
      *v5 = 0;
      OUTLINED_FUNCTION_55_4();
      _os_log_impl(v6, v7, v8, v9, v5, 2u);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    v10 = ConnectionMethod.providerClass(for:)(*(v1 + 40));
    v12 = v11;
    memcpy(__dst, (v1 + 40), 0x204uLL);
    memcpy(v30, (v1 + 40), sizeof(v30));
    v29[0] = *(v1 + 137);
    *(v29 + 7) = *(v1 + 144);
    memcpy(v28, (v1 + 153), sizeof(v28));
    v13 = *(v1 + 656);
    memcpy(__src, (v1 + 40), 0x60uLL);
    LOBYTE(__src[12]) = v13;
    *(&__src[12] + 1) = *(v1 + 137);
    __src[13] = *(v1 + 144);
    LOBYTE(__src[14]) = 0;
    memcpy(&__src[14] + 1, (v1 + 153), 0x193uLL);
    memcpy(v27, __src, 0x204uLL);
    v14 = *(v1 + 1144);
    v15 = *(v1 + 1176);
    v16 = *(v12 + 448);
    v17 = *(v1 + 32);
    v18 = v15;
    outlined init with copy of ConnectionConfiguration(__dst, v26);
    outlined init with copy of ConnectionConfiguration(__src, v26);
    v19 = v14;
    *(v1 + 1160) = v16(v27, v17, v14, v18, v10, v12);
    *(v1 + 1168) = v12;
    swift_unknownObjectRelease();
    if (*(v1 + 1160))
    {
      v20 = *(v1 + 1168);
      ObjectType = swift_getObjectType();
      v22 = *(v20 + 128);
      swift_unknownObjectRetain();

      v22(v23, &protocol witness table for BackgroundConnection, ObjectType, v20);
      *(v1 + 1184) = 1;
      OUTLINED_FUNCTION_7_1();
      v24 = swift_allocObject();
      swift_weakInit();
      v25 = *(v20 + 456);

      v25(0, partial apply for closure #1 in BackgroundConnection.startSecondaryConnection(), v24, ObjectType, v20);
      swift_unknownObjectRelease();

      memcpy(v27, v30, 0x60uLL);
      LOBYTE(v27[12]) = v13;
      *(&v27[12] + 1) = v29[0];
      v27[13] = *(v29 + 7);
      LOBYTE(v27[14]) = 0;
      memcpy(&v27[14] + 1, v28, 0x193uLL);
      outlined destroy of ConnectionConfiguration(v27);
    }

    else
    {
      memcpy(v27, v30, 0x60uLL);
      LOBYTE(v27[12]) = v13;
      *(&v27[12] + 1) = v29[0];
      v27[13] = *(v29 + 7);
      LOBYTE(v27[14]) = 0;
      memcpy(&v27[14] + 1, v28, 0x193uLL);
      outlined destroy of ConnectionConfiguration(v27);
    }
  }

  OUTLINED_FUNCTION_47();
}

void closure #1 in BackgroundConnection.startSecondaryConnection()(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (one-time initialization token for connectionOpen != -1)
    {
      swift_once();
    }

    siri_kdebug_trace(static Constants.Signposts.connectionOpen);
    if (*(v13 + 1188))
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.siriNetwork);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_223515000, v15, v16, "Background Connection - Provider. Secondary connection ignored. Primary connection viable.", v17, 2u);
        MEMORY[0x223DE38F0](v17, -1, -1);
      }

      BackgroundConnection.cancelSecondaryConnection()();
LABEL_10:

      return;
    }

    if (v11)
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.siriNetwork);
      outlined copy of NetworkConnectionError(v6, v7, v8, v9, v10);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      outlined consume of Result<(), NetworkConnectionError>(v6, v7, v8, v9, v10, 1);
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v45 = v6;
        v49 = v10;
        v50 = v44;
        *v21 = 136315138;
        v46 = v7;
        v47 = v8;
        v48 = v9;
        outlined copy of NetworkConnectionError(v6, v7, v8, v9, v10);
        v22 = String.init<A>(describing:)();
        v43 = v20;
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v50);

        *(v21 + 4) = v24;
        _os_log_impl(&dword_223515000, v19, v43, "Background Connection - Provider. Secondary connection failed. Error: %s", v21, 0xCu);
        v25 = v44;
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x223DE38F0](v25, -1, -1);
        MEMORY[0x223DE38F0](v21, -1, -1);
      }

      BackgroundConnection.cancelSecondaryConnection()();
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v26 = swift_allocError();
      *v27 = v6;
      v27[1] = v7;
      v27[2] = v8;
      v27[3] = v9;
      v27[4] = v10;
      v28 = swift_allocError();
      *(v29 + 8) = 0;
      *(v29 + 16) = 0;
      *v29 = v26;
      *(v29 + 24) = xmmword_2235F0A80;
      outlined copy of Result<(), NetworkConnectionError>(v6, v7, v8, v9, v10, 1);
      v30 = v26;
      BackgroundConnection.didEncounterError(_:)(v28);

      v31 = v26;
    }

    else
    {
      *(v13 + 1184) = 2;
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.siriNetwork);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_223515000, v33, v34, "Background Connection - Provider. Secondary connection ready.", v35, 2u);
        MEMORY[0x223DE38F0](v35, -1, -1);
      }

      v36 = swift_unknownObjectWeakLoadStrong();
      if (!v36)
      {
        goto LABEL_10;
      }

      v37 = v36;
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v38 = swift_allocError();
      *(v39 + 8) = 0;
      *(v39 + 16) = 0;
      *v39 = 0;
      *(v39 + 24) = xmmword_2235F0AC0;
      v40 = type metadata accessor for ConnectionAnalysisInfo(0);
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v40);

      specialized Connection.didEncounterError(_:error:analysisInfo:)(v41, v38, v5, v37);

      swift_unknownObjectRelease();
      outlined destroy of NetworkConnectionProtocol?(v5, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
      v31 = v38;
    }
  }
}

void BackgroundConnection.cancelSecondaryConnection()()
{
  OUTLINED_FUNCTION_133();
  if (*(v0 + 1160))
  {
    v1 = v0;
    v2 = *(v0 + 1168);
    v3 = one-time initialization token for siriNetwork;
    swift_unknownObjectRetain();
    if (v3 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v4, static Logger.siriNetwork);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_15_1(v6))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_37_4();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      v12 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v12);
    }

    ObjectType = swift_getObjectType();
    (*(v2 + 472))(ObjectType, v2);
    swift_unknownObjectRelease();
    *(v1 + 1160) = 0;
    *(v1 + 1168) = 0;
    swift_unknownObjectRelease();
    *(v1 + 1184) = 0;
    *(v1 + 1189) = 0;
  }

  OUTLINED_FUNCTION_106_0();
}

Swift::Void __swiftcall BackgroundConnection.updateActiveBackgroundConnectionWithSecondary()()
{
  v7 = v6;
  v8 = (v6 + 1080);
  BackgroundConnection.closeConnectionAndPrepareForReconnect(_:)(0, v0, v1, v2, v3, v4, v5);
  *(v6 + 1080) = *(v6 + 1160);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v6 + 1168) = 0;
  *(v6 + 1160) = 0;
  swift_unknownObjectRelease();
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v9, static Logger.siriNetwork);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_15_1(v11))
  {
    v12 = OUTLINED_FUNCTION_14();
    *v12 = 0;
    OUTLINED_FUNCTION_55_4();
    _os_log_impl(v13, v14, v15, v16, v12, 2u);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  OUTLINED_FUNCTION_36_5(v7 + 1096, v17, v18, v19, v20, v21, v22);
  outlined init with copy of MessageCenterBrowserProtocol?(v7 + 1096, v33, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  if (v34)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork21CommunicationProtocol_pMd, _s11SiriNetwork21CommunicationProtocol_pMR);
    OUTLINED_FUNCTION_53_1();
    type metadata accessor for CommunicationProtocolAce();
    if (swift_dynamicCast())
    {
      if (*v8)
      {
        v23 = *(v7 + 1088);
        ObjectType = swift_getObjectType();
        if ((*(v23 + 552))(ObjectType, v23))
        {
          v25 = 5.0;
        }

        else
        {
          v25 = 7.0;
        }

        swift_unknownObjectRetain();
        CommunicationProtocolAce.scheduleAceHeaderTimeout(withInterval:)(v25);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(v33, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  }

  v26 = outlined init with copy of MessageCenterBrowserProtocol?(v7 + 1096, v33, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  if (v34)
  {
    OUTLINED_FUNCTION_101_1(v26, v27);
    outlined destroy of NetworkConnectionProtocol?(v33, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    v28 = v31;
    v29 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v29 + 104))(0, 0, *(v7 + 153), v28, v29);
    __swift_destroy_boxed_opaque_existential_0(v30);
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(v33, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  }

  BackgroundConnection.setupReadHandlerOnProvider()();
  BackgroundConnection.networkProviderDidOpen()();
  *(v7 + 1184) = 0;
  *(v7 + 1188) = 1;
}

Swift::Void __swiftcall BackgroundConnection.cancel()()
{
  if ((*(v6 + 1186) & 1) == 0)
  {
    BackgroundConnection.closeConnectionAndPrepareForReconnect(_:)(0, v0, v1, v2, v3, v4, v5);
    *(v6 + 1186) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      specialized Connection.didClose(_:)(v6, Strong);
      swift_unknownObjectRelease();
      *(v6 + 24) = 0;

      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t BackgroundConnection.barrier(with:)()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_40_1(v0 + 1096, v4);
  outlined init with copy of MessageCenterBrowserProtocol?(v0 + 1096, v5, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  if (!v6)
  {
    return outlined destroy of NetworkConnectionProtocol?(v5, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork21CommunicationProtocol_pMd, _s11SiriNetwork21CommunicationProtocol_pMR);
  OUTLINED_FUNCTION_53_1();
  type metadata accessor for CommunicationProtocolAce();
  result = swift_dynamicCast();
  if (result)
  {
    v2 = OUTLINED_FUNCTION_32();
    CommunicationProtocolAce.barrier(with:)(v2, v3);
  }

  return result;
}

void BackgroundConnection.didEncounterError(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_133();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - v6;
  if (*(v1 + 1187))
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v8, static Logger.siriNetwork);
    v9 = v4;
    v36 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v10))
    {
      OUTLINED_FUNCTION_6_5();
      v11 = swift_slowAlloc();
      v12 = OUTLINED_FUNCTION_58_3();
      *v11 = 138412290;
      v13 = v4;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_223515000, v36, v10, "Background Connection - Provider: Did encounter error %@, but it is not going to be reported because a more recent error was already reported.", v11, 0xCu);
      outlined destroy of NetworkConnectionProtocol?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    OUTLINED_FUNCTION_106_0();
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v19, static Logger.siriNetwork);
      v20 = v4;
      v21 = Logger.logObject.getter();
      static os_log_type_t.error.getter();

      if (OUTLINED_FUNCTION_141())
      {
        OUTLINED_FUNCTION_6_5();
        v22 = swift_slowAlloc();
        v23 = OUTLINED_FUNCTION_58_3();
        *v22 = 138412290;
        v24 = v4;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v25;
        *v23 = v25;
        OUTLINED_FUNCTION_55_0();
        _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
        outlined destroy of NetworkConnectionProtocol?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v31 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x223DE38F0](v31);
        v32 = OUTLINED_FUNCTION_7_2();
        MEMORY[0x223DE38F0](v32);
      }

      BackgroundConnection.connectionAnalysisInfo.getter();
      v33 = OUTLINED_FUNCTION_32();
      specialized Connection.didEncounterError(_:error:analysisInfo:)(v33, v34, v7, v18);
      swift_unknownObjectRelease();
      outlined destroy of NetworkConnectionProtocol?(v7, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
    }

    *(v2 + 1187) = 1;
    OUTLINED_FUNCTION_106_0();
  }
}

void BackgroundConnection.didEncounterIntermediateError(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_133();
  if (*(v1 + 1080))
  {
    v3 = v1;
    v4 = v2;
    v5 = *(v1 + 1088);
    v6 = one-time initialization token for siriNetwork;
    swift_unknownObjectRetain();
    if (v6 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v7, static Logger.siriNetwork);
    v8 = v4;
    v9 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (OUTLINED_FUNCTION_141())
    {
      OUTLINED_FUNCTION_6_5();
      v10 = swift_slowAlloc();
      v11 = OUTLINED_FUNCTION_58_3();
      *v10 = 138412290;
      v12 = v4;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      OUTLINED_FUNCTION_55_0();
      _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
      outlined destroy of NetworkConnectionProtocol?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v19 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x223DE38F0](v19);
      v20 = OUTLINED_FUNCTION_7_2();
      MEMORY[0x223DE38F0](v20);
    }

    ObjectType = swift_getObjectType();
    v22 = swift_unknownObjectRetain();
    specialized BackgroundConnection.connectionProvider(_:receivedIntermediateError:)(v22, v4, v3, ObjectType, v5);
    swift_unknownObjectRelease_n();
  }

  OUTLINED_FUNCTION_106_0();
}

uint64_t closure #1 in BackgroundConnection.getConnectionMetrics(connectionMethodHistory:with:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 1080))
    {
      v8 = *(result + 1088);
      swift_beginAccess();
      memcpy(v16, (v6 + 16), 0x599uLL);
      memcpy(__dst, (v6 + 16), 0x599uLL);
      if (v4)
      {
        v9 = swift_allocObject();
        *(v9 + 16) = v4;
        *(v9 + 24) = v2;
        v10 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ConnectionMetrics?) -> ();
      }

      else
      {
        v10 = 0;
        v9 = 0;
      }

      ObjectType = swift_getObjectType();
      v12 = *(v8 + 536);
      swift_unknownObjectRetain();
      outlined init with copy of ConnectionMetrics(v16, v14);
      outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v4, v2);
      v12(__dst, v10, v9, ObjectType, v8);

      outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v10, v9);
      swift_unknownObjectRelease();
      memcpy(v14, __dst, 0x599uLL);
      return outlined destroy of ConnectionMetrics(v14);
    }

    else if (v4)
    {
      swift_beginAccess();
      memcpy(v14, (v6 + 16), 0x599uLL);
      memcpy(__dst, (v6 + 16), 0x599uLL);
      destructiveProjectEnumData for ConnectionConfigurationError();
      memcpy(__src, __dst, 0x599uLL);
      outlined init with copy of ConnectionMetrics(v14, v16);
      v4(__src);

      memcpy(v16, __src, 0x599uLL);
      return outlined destroy of NetworkConnectionProtocol?(v16, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
    }

    else
    {
    }
  }

  return result;
}

Swift::Void __swiftcall BackgroundConnection.probeConnection()()
{
  OUTLINED_FUNCTION_36_5(v6 + 1096, v0, v1, v2, v3, v4, v5);
  v7 = outlined init with copy of MessageCenterBrowserProtocol?(v6 + 1096, v12, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  if (v13)
  {
    OUTLINED_FUNCTION_101_1(v7, v8);
    outlined destroy of NetworkConnectionProtocol?(v12, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v9 = OUTLINED_FUNCTION_16_10();
    v10(v9);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(v12, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  }
}

void specialized BackgroundConnection.fallbackToNextConnectionMethodWithError(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a2 + 1136);
  memcpy(__dst, (a2 + 40), 0x204uLL);
  memcpy(__src, (a2 + 40), 0x204uLL);

  v9 = a4;
  outlined init with copy of ConnectionConfiguration(__dst, v88);
  v10 = ConnectionMethod.nextConnectionMethodSupported(connectionConfiguration:)(__src, v8);
  memcpy(v88, __src, 0x204uLL);
  outlined destroy of ConnectionConfiguration(v88);
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.siriNetwork);
  swift_retain_n();
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v83 = a1;
  if (os_log_type_enabled(v13, v14))
  {
    v81 = v10;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    __src[0] = v17;
    *v15 = 136315650;
    v18 = 0xE700000000000000;
    v19 = 0x6E776F6E6B6E75;
    switch(*(a2 + 1136))
    {
      case 1:
        v19 = 0x6B726F7774656ELL;
        break;
      case 2:
        v18 = 0xE400000000000000;
        v19 = 1919247728;
        break;
      case 3:
        v18 = 0xE300000000000000;
        v19 = 7368560;
        break;
      default:
        break;
    }

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, __src);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    a1 = v83;
    if (v83)
    {
      v21 = v83;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      v23 = v22;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    *(v15 + 14) = v22;
    *v16 = v23;
    *(v15 + 22) = 1024;
    v24 = *(a2 + 139);

    *(v15 + 24) = v24;

    _os_log_impl(&dword_223515000, v13, v14, "Background Connection - Fallback: Start. Current method: %s. Error: %@. Uses Proxy: %{BOOL}d", v15, 0x1Cu);
    outlined destroy of NetworkConnectionProtocol?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE38F0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x223DE38F0](v17, -1, -1);
    MEMORY[0x223DE38F0](v15, -1, -1);

    v10 = v81;
  }

  else
  {
  }

  v25 = 0.0;
  if (!v10)
  {
    if (*(a2 + 1136) != 1 || *(a2 + 139) != 1)
    {
      goto LABEL_28;
    }

    if (*(a2 + 138) == 1)
    {
      v26 = a1;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = a3;
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        if (a1)
        {
          v32 = a1;
          v33 = _swift_stdlib_bridgeErrorToNSError();
          v34 = v33;
        }

        else
        {
          v33 = 0;
          v34 = 0;
        }

        *(v30 + 4) = v33;
        *v31 = v34;
        _os_log_impl(&dword_223515000, v27, v28, "Background Connection - Fallback: Resetting connection method on error (%@). Trying Peer now.", v30, 0xCu);
        outlined destroy of NetworkConnectionProtocol?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x223DE38F0](v31, -1, -1);
        MEMORY[0x223DE38F0](v30, -1, -1);
        a3 = v29;
      }

      memcpy(v85, (a2 + 40), 0x204uLL);
      memcpy(v84, (a2 + 40), 0x204uLL);
      outlined init with copy of ConnectionConfiguration(v85, __src);
      v10 = ConnectionMethod.nextConnectionMethodSupported(connectionConfiguration:)(v84, 0);
      memcpy(__src, v84, 0x204uLL);
      outlined destroy of ConnectionConfiguration(__src);
      *(a2 + 138) = 0;
      goto LABEL_29;
    }

    v10 = 0;
    if (!AFHasCellularData() || !a1)
    {
      goto LABEL_29;
    }

    swift_getErrorValue();
    v35 = a1;
    if (!Error.sn_isNetworkDown()())
    {
LABEL_27:

LABEL_28:
      v10 = 0;
      goto LABEL_29;
    }

    v36 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
    [v36 systemUptime];
    v38 = v37;

    if (v38 - *(a2 + 1192) > 30.0)
    {
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_223515000, v39, v40, "Background Connection - Fallback: Ran out of time waiting for network to become available.", v41, 2u);
        MEMORY[0x223DE38F0](v41, -1, -1);
      }

      goto LABEL_27;
    }

    v71 = a1;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = a4;
      v76 = swift_slowAlloc();
      *v74 = 138412290;
      v77 = a1;
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v74 + 4) = v78;
      *v76 = v78;
      _os_log_impl(&dword_223515000, v72, v73, "Background Connection - Fallback: Resetting connection method on error (%@) while waiting for cellular.", v74, 0xCu);
      outlined destroy of NetworkConnectionProtocol?(v76, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v79 = v76;
      a4 = v75;
      MEMORY[0x223DE38F0](v79, -1, -1);
      MEMORY[0x223DE38F0](v74, -1, -1);
    }

    memcpy(v85, (a2 + 40), 0x204uLL);
    memcpy(v84, (a2 + 40), 0x204uLL);
    outlined init with copy of ConnectionConfiguration(v85, __src);
    v10 = ConnectionMethod.nextConnectionMethodSupported(connectionConfiguration:)(v84, 0);

    memcpy(__src, v84, 0x204uLL);
    outlined destroy of ConnectionConfiguration(__src);
    v25 = 1.0;
  }

LABEL_29:
  swift_beginAccess();
  outlined init with copy of MessageCenterBrowserProtocol?(a2 + 1096, __src, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  v42 = __src[3];
  if (__src[3])
  {
    v43 = __src[4];
    __swift_project_boxed_opaque_existential_1(__src, __src[3]);
    v44 = (*(v43 + 16))(v42, v43);
    v46 = v45;
    outlined destroy of NetworkConnectionProtocol?(__src, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    if (v46 >> 60 != 15)
    {
      outlined consume of Data?(v44, v46);
      if (v10)
      {
        v47 = BackgroundConnection.canFallBackFromError(_:)(a1);
        goto LABEL_35;
      }
    }
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(__src, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  }

  v47 = 0;
LABEL_35:

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v48, v49))
  {

    goto LABEL_44;
  }

  v82 = v10;
  v50 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  v84[0] = v51;
  *v50 = 67109378;
  *(v50 + 4) = v47 & 1;
  *(v50 + 8) = 2080;
  outlined init with copy of MessageCenterBrowserProtocol?(a2 + 1096, __src, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  v52 = __src[3];
  if (__src[3])
  {
    v80 = a3;
    v53 = a4;
    v54 = __src[4];
    __swift_project_boxed_opaque_existential_1(__src, __src[3]);
    v55 = (*(v54 + 16))(v52, v54);
    v57 = v56;
    outlined destroy of NetworkConnectionProtocol?(__src, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    if (v57 >> 60 != 15)
    {
      __src[0] = v55;
      __src[1] = v57;
      v59 = String.init<A>(describing:)();
      v58 = v60;
      a4 = v53;
      a3 = v80;
      goto LABEL_43;
    }

    a4 = v53;
    a3 = v80;
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(__src, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    v55 = 0;
    v57 = 0xF000000000000000;
  }

  outlined consume of Data?(v55, v57);
  v58 = 0xE800000000000000;
  v59 = 0x6566617320746F4ELL;
LABEL_43:
  v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v58, v84);

  *(v50 + 10) = v61;
  _os_log_impl(&dword_223515000, v48, v49, "Background Connection - Fallback: Can fallback %{BOOL}d. Buffer: %s", v50, 0x12u);
  __swift_destroy_boxed_opaque_existential_0(v51);
  MEMORY[0x223DE38F0](v51, -1, -1);
  MEMORY[0x223DE38F0](v50, -1, -1);

  v10 = v82;
LABEL_44:
  if (v47)
  {

    v62 = a4;
    specialized BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)(v10, v83, a2, a3, a4, v25);

    v63 = a4;
  }

  else
  {
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_223515000, v64, v65, "Background Connection - Fallback: No fallback available.", v66, 2u);
      MEMORY[0x223DE38F0](v66, -1, -1);
    }

    v68 = BackgroundConnection.communicationProtocol.modify(__src);
    v69 = *(v67 + 24);
    if (v69)
    {
      v70 = *(v67 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v67, *(v67 + 24));
      (*(v70 + 24))(0, 0xF000000000000000, v69, v70);
    }

    (v68)(__src, 0);
    __src[2] = 0;
    __src[0] = 9;
    __src[1] = 0;
    *&__src[3] = xmmword_2235F01E0;
    closure #1 in closure #1 in BackgroundConnection.connectionProvider(_:received:)(__src, a3, a4);

    v63 = a4;
  }
}

void specialized BackgroundConnection.fallbackToNextConnectionMethodWithError(_:with:)()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_49_5(v6, v7);
  memcpy(__dst, v3 + 40, 0x204uLL);
  v166 = v2;

  v169 = v1;
  outlined init with copy of NetworkConnectionError(v1, v176);
  outlined init with copy of ConnectionConfiguration(v175, v176);
  ConnectionMethod.nextConnectionMethodSupported(connectionConfiguration:)(__dst, v0);
  OUTLINED_FUNCTION_129();
  outlined destroy of ConnectionConfiguration(v176);
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.siriNetwork);
  OUTLINED_FUNCTION_112_1();
  swift_retain_n();
  v9 = v5;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v161 = v5;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = OUTLINED_FUNCTION_58_3();
    OUTLINED_FUNCTION_4_3();
    v14 = swift_slowAlloc();
    __dst[0] = v14;
    *v12 = 136315650;
    v5 = 0xE700000000000000;
    v15 = 0x6E776F6E6B6E75;
    switch(v3[1136])
    {
      case 1:
        v15 = OUTLINED_FUNCTION_12_9();
        break;
      case 2:
        v5 = 0xE400000000000000;
        v15 = 1919247728;
        break;
      case 3:
        v5 = 0xE300000000000000;
        v15 = 7368560;
        break;
      default:
        break;
    }

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v5, __dst);

    OUTLINED_FUNCTION_111_0();
    v17 = v5;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_77_1(v18, v18);
    v12[6] = v16;

    OUTLINED_FUNCTION_122_1(&dword_223515000, v19, v20, "Background Connection - Fallback: Start. Current method: %s. Error: %@. Uses Proxy: %{BOOL}d");
    outlined destroy of NetworkConnectionProtocol?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v21 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x223DE38F0](v21);
    __swift_destroy_boxed_opaque_existential_0(v14);
    v22 = OUTLINED_FUNCTION_2_0();
    MEMORY[0x223DE38F0](v22);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  else
  {

    OUTLINED_FUNCTION_112_1();
  }

  if (!v4)
  {
    if (v3[1136] == 1 && v3[139] == 1)
    {
      if (v3[138] == 1)
      {
        v23 = v5;
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v24, v25))
        {
          OUTLINED_FUNCTION_6_5();
          v26 = swift_slowAlloc();
          v27 = OUTLINED_FUNCTION_58_3();
          *v26 = 138412290;
          if (v5)
          {
            v28 = v5;
            v29 = _swift_stdlib_bridgeErrorToNSError();
            v32 = v29;
          }

          else
          {
            v29 = OUTLINED_FUNCTION_46_5();
          }

          *(v26 + 4) = v29;
          *v27 = v32;
          OUTLINED_FUNCTION_131(&dword_223515000, v30, v31, "Background Connection - Fallback: Resetting connection method on error (%@). Trying Peer now.");
          outlined destroy of NetworkConnectionProtocol?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v85 = OUTLINED_FUNCTION_2_0();
          MEMORY[0x223DE38F0](v85);
          OUTLINED_FUNCTION_2_2();
          MEMORY[0x223DE38F0]();
        }

        v86 = OUTLINED_FUNCTION_62_3();
        OUTLINED_FUNCTION_61_3(v86, v87, v88, v89, v90, v91, v92, v93, v146, v151, v156, v161, v166, v169);
        v94 = OUTLINED_FUNCTION_136();
        v4 = OUTLINED_FUNCTION_135(v94, v95, v96, v97, v98, v99, v100, v101, v147, v152, v157, v162);
        OUTLINED_FUNCTION_65_4(v4, v102, v103, v104, v105, v106, v107, v108, v148, v153, v158, v163, v167, v170, v172[0]);
        outlined destroy of ConnectionConfiguration(__dst);
        v3[138] = 0;
        goto LABEL_27;
      }

      LOBYTE(v4) = 0;
      if (!AFHasCellularData() || !v5)
      {
        goto LABEL_27;
      }

      swift_getErrorValue();
      OUTLINED_FUNCTION_128();
      OUTLINED_FUNCTION_16_10();
      if (Error.sn_isNetworkDown()())
      {
        v33 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
        [v33 systemUptime];

        OUTLINED_FUNCTION_110_0();
        if (!(!v35 & v34))
        {
          v109 = v5;
          v110 = Logger.logObject.getter();
          static os_log_type_t.default.getter();

          v111 = OUTLINED_FUNCTION_106_1();
          if (os_log_type_enabled(v111, v112))
          {
            OUTLINED_FUNCTION_6_5();
            v113 = swift_slowAlloc();
            v114 = OUTLINED_FUNCTION_58_3();
            *v113 = 138412290;
            v115 = v5;
            v116 = _swift_stdlib_bridgeErrorToNSError();
            *(v113 + 4) = v116;
            *v114 = v116;
            OUTLINED_FUNCTION_18_10();
            _os_log_impl(v117, v118, v119, v120, v121, 0xCu);
            outlined destroy of NetworkConnectionProtocol?(v114, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            OUTLINED_FUNCTION_2_2();
            MEMORY[0x223DE38F0]();
            OUTLINED_FUNCTION_2_2();
            MEMORY[0x223DE38F0]();
          }

          v122 = OUTLINED_FUNCTION_62_3();
          OUTLINED_FUNCTION_61_3(v122, v123, v124, v125, v126, v127, v128, v129, v146, v151, v156, v161, v166, v169);
          v130 = OUTLINED_FUNCTION_136();
          LOBYTE(v4) = OUTLINED_FUNCTION_135(v130, v131, v132, v133, v134, v135, v136, v137, v149, v154, v159, v164);

          OUTLINED_FUNCTION_65_4(v138, v139, v140, v141, v142, v143, v144, v145, v150, v155, v160, v165, v168, v171, v172[0]);
          outlined destroy of ConnectionConfiguration(__dst);
          goto LABEL_27;
        }

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_4_20(v37))
        {
          v38 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_85(v38);
          OUTLINED_FUNCTION_18_10();
          _os_log_impl(v39, v40, v41, v42, v43, 2u);
          OUTLINED_FUNCTION_2_2();
          MEMORY[0x223DE38F0]();
        }
      }
    }

    LOBYTE(v4) = 0;
  }

LABEL_27:
  v44 = OUTLINED_FUNCTION_40_1((v3 + 1096), v173);
  OUTLINED_FUNCTION_138(v44, v45, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  if (__dst[3])
  {
    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    OUTLINED_FUNCTION_64_3();
    v46 = OUTLINED_FUNCTION_16_10();
    v47(v46);
    v49 = v48;
    outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    if (v49 >> 60 != 15)
    {
      v50 = OUTLINED_FUNCTION_14_3();
      outlined consume of Data?(v50, v51);
      if (v4)
      {
        v52 = BackgroundConnection.canFallBackFromError(_:)(v5);
        goto LABEL_33;
      }
    }
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  }

  v52 = 0;
LABEL_33:

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v56 = swift_slowAlloc();
    v172[0] = v56;
    OUTLINED_FUNCTION_87_1(1.5047e-36);
    OUTLINED_FUNCTION_138(v57, v58, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    v59 = __dst[3];
    if (__dst[3])
    {
      v60 = __dst[4];
      __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
      OUTLINED_FUNCTION_64_3();
      v62 = v61(v59, v60);
      v64 = v63;
      outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      if (v64 >> 60 != 15)
      {
        __dst[0] = v62;
        __dst[1] = v64;
        v65 = String.init<A>(describing:)();
        v62 = v66;
        goto LABEL_45;
      }
    }

    else
    {
      outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      v62 = 0;
      v64 = 0xF000000000000000;
    }

    outlined consume of Data?(v62, v64);
    v65 = OUTLINED_FUNCTION_85_0();
LABEL_45:
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v62, v172);
    OUTLINED_FUNCTION_72_0();

    *(v55 + 10) = v64;
    OUTLINED_FUNCTION_125(&dword_223515000, v80, v81, "Background Connection - Fallback: Can fallback %{BOOL}d. Buffer: %s");
    __swift_destroy_boxed_opaque_existential_0(v56);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    v82 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x223DE38F0](v82);

    if (v52)
    {
      goto LABEL_46;
    }

    goto LABEL_38;
  }

  if (v52)
  {
LABEL_46:

    v76 = v169;
    outlined init with copy of NetworkConnectionError(v169, __dst);
    v83 = OUTLINED_FUNCTION_51_4();
    v84(v83);
    goto LABEL_47;
  }

LABEL_38:
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_4_20(v68))
  {
    v69 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_85(v69);
    OUTLINED_FUNCTION_18_10();
    _os_log_impl(v70, v71, v72, v73, v74, 2u);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  v76 = BackgroundConnection.communicationProtocol.modify(__dst);
  if (*(v75 + 24))
  {
    __swift_mutable_project_boxed_opaque_existential_1(v75, *(v75 + 24));
    v77 = OUTLINED_FUNCTION_54_5();
    v78(v77);
  }

  (v76)(__dst, 0);
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_52_6(xmmword_2235F01E0);
  v79();
LABEL_47:

  outlined destroy of NetworkConnectionError(v76);

  outlined destroy of NetworkConnectionError(v169);
  OUTLINED_FUNCTION_81_1();
}

{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_49_5(v6, v7);
  memcpy(__dst, v3 + 40, 0x204uLL);
  v168 = v2;

  v171 = v1;
  v8 = v1;
  outlined init with copy of ConnectionConfiguration(v177, v178);
  ConnectionMethod.nextConnectionMethodSupported(connectionConfiguration:)(__dst, v0);
  OUTLINED_FUNCTION_129();
  outlined destroy of ConnectionConfiguration(v178);
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriNetwork);
  OUTLINED_FUNCTION_112_1();
  swift_retain_n();
  v10 = v5;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v163 = v5;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = OUTLINED_FUNCTION_58_3();
    OUTLINED_FUNCTION_4_3();
    v15 = swift_slowAlloc();
    __dst[0] = v15;
    *v13 = 136315650;
    v5 = 0xE700000000000000;
    v16 = 0x6E776F6E6B6E75;
    switch(v3[1136])
    {
      case 1:
        v16 = OUTLINED_FUNCTION_12_9();
        break;
      case 2:
        v5 = 0xE400000000000000;
        v16 = 1919247728;
        break;
      case 3:
        v5 = 0xE300000000000000;
        v16 = 7368560;
        break;
      default:
        break;
    }

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v5, __dst);

    OUTLINED_FUNCTION_111_0();
    v18 = v5;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_77_1(v19, v19);
    v13[6] = v17;

    OUTLINED_FUNCTION_122_1(&dword_223515000, v20, v21, "Background Connection - Fallback: Start. Current method: %s. Error: %@. Uses Proxy: %{BOOL}d");
    outlined destroy of NetworkConnectionProtocol?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v22 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x223DE38F0](v22);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v23 = OUTLINED_FUNCTION_2_0();
    MEMORY[0x223DE38F0](v23);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  else
  {

    OUTLINED_FUNCTION_112_1();
  }

  if (!v4)
  {
    if (v3[1136] == 1 && v3[139] == 1)
    {
      if (v3[138] == 1)
      {
        v24 = v5;
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v25, v26))
        {
          OUTLINED_FUNCTION_6_5();
          v27 = swift_slowAlloc();
          v28 = OUTLINED_FUNCTION_58_3();
          *v27 = 138412290;
          if (v5)
          {
            v29 = v5;
            v30 = _swift_stdlib_bridgeErrorToNSError();
            v33 = v30;
          }

          else
          {
            v30 = OUTLINED_FUNCTION_46_5();
          }

          *(v27 + 4) = v30;
          *v28 = v33;
          OUTLINED_FUNCTION_131(&dword_223515000, v31, v32, "Background Connection - Fallback: Resetting connection method on error (%@). Trying Peer now.");
          outlined destroy of NetworkConnectionProtocol?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v87 = OUTLINED_FUNCTION_2_0();
          MEMORY[0x223DE38F0](v87);
          OUTLINED_FUNCTION_2_2();
          MEMORY[0x223DE38F0]();
        }

        v88 = OUTLINED_FUNCTION_62_3();
        OUTLINED_FUNCTION_61_3(v88, v89, v90, v91, v92, v93, v94, v95, v148, v153, v158, v163, v168, v171);
        v96 = OUTLINED_FUNCTION_136();
        v4 = OUTLINED_FUNCTION_135(v96, v97, v98, v99, v100, v101, v102, v103, v149, v154, v159, v164);
        OUTLINED_FUNCTION_65_4(v4, v104, v105, v106, v107, v108, v109, v110, v150, v155, v160, v165, v169, v172, v174[0]);
        outlined destroy of ConnectionConfiguration(__dst);
        v3[138] = 0;
        goto LABEL_27;
      }

      LOBYTE(v4) = 0;
      if (!AFHasCellularData() || !v5)
      {
        goto LABEL_27;
      }

      swift_getErrorValue();
      OUTLINED_FUNCTION_128();
      OUTLINED_FUNCTION_16_10();
      if (Error.sn_isNetworkDown()())
      {
        v34 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
        [v34 systemUptime];

        OUTLINED_FUNCTION_110_0();
        if (!(!v36 & v35))
        {
          v111 = v5;
          v112 = Logger.logObject.getter();
          static os_log_type_t.default.getter();

          v113 = OUTLINED_FUNCTION_106_1();
          if (os_log_type_enabled(v113, v114))
          {
            OUTLINED_FUNCTION_6_5();
            v115 = swift_slowAlloc();
            v116 = OUTLINED_FUNCTION_58_3();
            *v115 = 138412290;
            v117 = v5;
            v118 = _swift_stdlib_bridgeErrorToNSError();
            *(v115 + 4) = v118;
            *v116 = v118;
            OUTLINED_FUNCTION_18_10();
            _os_log_impl(v119, v120, v121, v122, v123, 0xCu);
            outlined destroy of NetworkConnectionProtocol?(v116, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            OUTLINED_FUNCTION_2_2();
            MEMORY[0x223DE38F0]();
            OUTLINED_FUNCTION_2_2();
            MEMORY[0x223DE38F0]();
          }

          v124 = OUTLINED_FUNCTION_62_3();
          OUTLINED_FUNCTION_61_3(v124, v125, v126, v127, v128, v129, v130, v131, v148, v153, v158, v163, v168, v171);
          v132 = OUTLINED_FUNCTION_136();
          LOBYTE(v4) = OUTLINED_FUNCTION_135(v132, v133, v134, v135, v136, v137, v138, v139, v151, v156, v161, v166);

          OUTLINED_FUNCTION_65_4(v140, v141, v142, v143, v144, v145, v146, v147, v152, v157, v162, v167, v170, v173, v174[0]);
          outlined destroy of ConnectionConfiguration(__dst);
          goto LABEL_27;
        }

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_4_20(v38))
        {
          v39 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_85(v39);
          OUTLINED_FUNCTION_18_10();
          _os_log_impl(v40, v41, v42, v43, v44, 2u);
          OUTLINED_FUNCTION_2_2();
          MEMORY[0x223DE38F0]();
        }
      }
    }

    LOBYTE(v4) = 0;
  }

LABEL_27:
  v45 = OUTLINED_FUNCTION_40_1((v3 + 1096), v175);
  OUTLINED_FUNCTION_138(v45, v46, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  if (__dst[3])
  {
    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    OUTLINED_FUNCTION_64_3();
    v47 = OUTLINED_FUNCTION_16_10();
    v48(v47);
    v50 = v49;
    outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    if (v50 >> 60 != 15)
    {
      v51 = OUTLINED_FUNCTION_14_3();
      outlined consume of Data?(v51, v52);
      if (v4)
      {
        v53 = BackgroundConnection.canFallBackFromError(_:)(v5);
        goto LABEL_33;
      }
    }
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  }

  v53 = 0;
LABEL_33:

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v57 = swift_slowAlloc();
    v174[0] = v57;
    OUTLINED_FUNCTION_87_1(1.5047e-36);
    OUTLINED_FUNCTION_138(v58, v59, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    v60 = __dst[3];
    if (__dst[3])
    {
      v61 = __dst[4];
      __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
      OUTLINED_FUNCTION_64_3();
      v63 = v62(v60, v61);
      v65 = v64;
      outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      if (v65 >> 60 != 15)
      {
        __dst[0] = v63;
        __dst[1] = v65;
        v66 = String.init<A>(describing:)();
        v63 = v67;
        goto LABEL_45;
      }
    }

    else
    {
      outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      v63 = 0;
      v65 = 0xF000000000000000;
    }

    outlined consume of Data?(v63, v65);
    v66 = OUTLINED_FUNCTION_85_0();
LABEL_45:
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v63, v174);
    OUTLINED_FUNCTION_72_0();

    *(v56 + 10) = v65;
    OUTLINED_FUNCTION_125(&dword_223515000, v81, v82, "Background Connection - Fallback: Can fallback %{BOOL}d. Buffer: %s");
    __swift_destroy_boxed_opaque_existential_0(v57);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    v83 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x223DE38F0](v83);

    if (v53)
    {
      goto LABEL_46;
    }

    goto LABEL_38;
  }

  if (v53)
  {
LABEL_46:

    v77 = v171;
    v84 = v171;
    v85 = OUTLINED_FUNCTION_51_4();
    v86(v85);
    goto LABEL_47;
  }

LABEL_38:
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_4_20(v69))
  {
    v70 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_85(v70);
    OUTLINED_FUNCTION_18_10();
    _os_log_impl(v71, v72, v73, v74, v75, 2u);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  v77 = BackgroundConnection.communicationProtocol.modify(__dst);
  if (*(v76 + 24))
  {
    __swift_mutable_project_boxed_opaque_existential_1(v76, *(v76 + 24));
    v78 = OUTLINED_FUNCTION_54_5();
    v79(v78);
  }

  (v77)(__dst, 0);
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_52_6(xmmword_2235F01E0);
  v80();
LABEL_47:

  OUTLINED_FUNCTION_81_1();
}

void specialized BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  v55 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v57 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v54 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchTime();
  v53 = *(v60 - 8);
  v14 = MEMORY[0x28223BE20](v60);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v61 = a4;

  v62 = a5;
  v20 = a5;
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
    v24 = a1;
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = a6;
    _os_log_impl(&dword_223515000, v22, v23, "Background Connection - Fallback: Fallback after delay %f.", v25, 0xCu);
    v26 = v25;
    a1 = v24;
    MEMORY[0x223DE38F0](v26, -1, -1);
  }

  swift_beginAccess();
  if (specialized Set.contains(_:)(*(a3 + 1136), *(a3 + 1152)))
  {
    v33 = 0;
  }

  else if (a2)
  {
    v34 = *(a3 + 1136);
    swift_beginAccess();
    v35 = a2;
    specialized Set._Variant.insert(_:)(&v63, v34);
    swift_endAccess();
    swift_getErrorValue();
    v33 = Error.isFallbackConnectionMethodRetryable(for:)(*(a3 + 1136));
  }

  else
  {
    v33 = 1;
  }

  BackgroundConnection.closeConnectionAndPrepareForReconnect(_:)(1, v27, v28, v29, v30, v31, v32);
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = a1;
  v38 = v33;
  *(v37 + 25) = v38;
  *(v37 + 32) = partial apply for closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(error:);
  *(v37 + 40) = v19;
  if (a6 <= 0.0)
  {
    v47 = v61;

    v48 = v62;
    v49 = v62;

    specialized closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)(v50, a1, v38, v47, v48, v51);
  }

  else
  {

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = a6;
      _os_log_impl(&dword_223515000, v39, v40, "Background Connection - Fallback: Delaying start %f.", v41, 0xCu);
      MEMORY[0x223DE38F0](v41, -1, -1);
    }

    v52 = *(a3 + 32);
    static DispatchTime.now()();
    v42 = v18;
    + infix(_:_:)();
    v53 = *(v53 + 8);
    (v53)(v16, v60);
    aBlock[4] = partial apply for specialized closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:);
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_152;
    v43 = _Block_copy(aBlock);

    v44 = v54;
    static DispatchQoS.unspecified.getter();
    v63 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v45 = v57;
    v46 = v55;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2440](v42, v44, v45, v43);
    _Block_release(v43);

    (*(v59 + 8))(v45, v46);
    (*(v56 + 8))(v44, v58);
    (v53)(v42, v60);
  }
}

{
  v11 = a1;
  v54 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v56 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v53 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DispatchTime();
  v52 = *(v59 - 8);
  v14 = MEMORY[0x28223BE20](v59);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v60 = a4;

  v61 = a5;
  v20 = a5;
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
    v24 = v11;
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = a6;
    _os_log_impl(&dword_223515000, v22, v23, "Background Connection - Fallback: Fallback after delay %f.", v25, 0xCu);
    v26 = v25;
    v11 = v24;
    MEMORY[0x223DE38F0](v26, -1, -1);
  }

  swift_beginAccess();
  if (specialized Set.contains(_:)(*(a3 + 1136), *(a3 + 1152)))
  {
    v33 = 0;
  }

  else if (a2)
  {
    v34 = *(a3 + 1136);
    swift_beginAccess();
    v35 = a2;
    specialized Set._Variant.insert(_:)(&v62, v34);
    swift_endAccess();
    swift_getErrorValue();
    v33 = Error.isFallbackConnectionMethodRetryable(for:)(*(a3 + 1136));
  }

  else
  {
    v33 = 1;
  }

  BackgroundConnection.closeConnectionAndPrepareForReconnect(_:)(1, v27, v28, v29, v30, v31, v32);
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = v11;
  v38 = v33;
  *(v37 + 25) = v38;
  *(v37 + 32) = partial apply for closure #1 in closure #1 in BackgroundConnection.connectionProvider(_:received:);
  *(v37 + 40) = v19;
  if (a6 <= 0.0)
  {
    v47 = v60;

    v48 = v61;
    v49 = v61;

    specialized closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)(v50, v11, v38, v47, v48);
  }

  else
  {

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = a6;
      _os_log_impl(&dword_223515000, v39, v40, "Background Connection - Fallback: Delaying start %f.", v41, 0xCu);
      MEMORY[0x223DE38F0](v41, -1, -1);
    }

    v51 = *(a3 + 32);
    static DispatchTime.now()();
    v42 = v18;
    + infix(_:_:)();
    v52 = *(v52 + 8);
    (v52)(v16, v59);
    aBlock[4] = closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)specialized partial apply;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_273_0;
    v43 = _Block_copy(aBlock);

    v44 = v53;
    static DispatchQoS.unspecified.getter();
    v62 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v45 = v56;
    v46 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2440](v42, v44, v45, v43);
    _Block_release(v43);

    (*(v58 + 8))(v45, v46);
    (*(v55 + 8))(v44, v57);
    (v52)(v42, v59);
  }
}

{
  v55 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v57 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v54 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchTime();
  v53 = *(v60 - 8);
  v14 = MEMORY[0x28223BE20](v60);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v61 = a4;

  v62 = a5;
  v20 = a5;
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
    v24 = a1;
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = a6;
    _os_log_impl(&dword_223515000, v22, v23, "Background Connection - Fallback: Fallback after delay %f.", v25, 0xCu);
    v26 = v25;
    a1 = v24;
    MEMORY[0x223DE38F0](v26, -1, -1);
  }

  swift_beginAccess();
  if (specialized Set.contains(_:)(*(a3 + 1136), *(a3 + 1152)))
  {
    v33 = 0;
  }

  else if (a2)
  {
    v34 = *(a3 + 1136);
    swift_beginAccess();
    v35 = a2;
    specialized Set._Variant.insert(_:)(&v63, v34);
    swift_endAccess();
    swift_getErrorValue();
    v33 = Error.isFallbackConnectionMethodRetryable(for:)(*(a3 + 1136));
  }

  else
  {
    v33 = 1;
  }

  BackgroundConnection.closeConnectionAndPrepareForReconnect(_:)(1, v27, v28, v29, v30, v31, v32);
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = a1;
  v38 = v33;
  *(v37 + 25) = v38;
  *(v37 + 32) = partial apply for closure #2 in closure #1 in BackgroundConnection.setupReadHandlerOnProvider();
  *(v37 + 40) = v19;
  if (a6 <= 0.0)
  {
    v47 = v61;

    v48 = v62;
    v49 = v62;

    specialized closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)(v50, a1, v38, v47, v48, v51);
  }

  else
  {

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = a6;
      _os_log_impl(&dword_223515000, v39, v40, "Background Connection - Fallback: Delaying start %f.", v41, 0xCu);
      MEMORY[0x223DE38F0](v41, -1, -1);
    }

    v52 = *(a3 + 32);
    static DispatchTime.now()();
    v42 = v18;
    + infix(_:_:)();
    v53 = *(v53 + 8);
    (v53)(v16, v60);
    aBlock[4] = closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)specialized partial apply;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_190_0;
    v43 = _Block_copy(aBlock);

    v44 = v54;
    static DispatchQoS.unspecified.getter();
    v63 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v45 = v57;
    v46 = v55;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2440](v42, v44, v45, v43);
    _Block_release(v43);

    (*(v59 + 8))(v45, v46);
    (*(v56 + 8))(v44, v58);
    (v53)(v42, v60);
  }
}

uint64_t specialized BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v54 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v56 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v53 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchTime();
  v52 = *(v60 - 8);
  v14 = MEMORY[0x28223BE20](v60);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  v20 = *(a5 + 16);
  *(v19 + 24) = *a5;
  *(v19 + 40) = v20;
  *(v19 + 56) = *(a5 + 32);
  v61 = a4;

  v59 = a5;
  outlined init with copy of NetworkConnectionError(a5, aBlock);
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
    v24 = a1;
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = a6;
    _os_log_impl(&dword_223515000, v22, v23, "Background Connection - Fallback: Fallback after delay %f.", v25, 0xCu);
    v26 = v25;
    a1 = v24;
    MEMORY[0x223DE38F0](v26, -1, -1);
  }

  swift_beginAccess();
  if (specialized Set.contains(_:)(*(a3 + 1136), *(a3 + 1152)))
  {
    v33 = 0;
  }

  else if (a2)
  {
    v34 = *(a3 + 1136);
    swift_beginAccess();
    v35 = a2;
    specialized Set._Variant.insert(_:)(&v62, v34);
    swift_endAccess();
    swift_getErrorValue();
    v33 = Error.isFallbackConnectionMethodRetryable(for:)(*(a3 + 1136));
  }

  else
  {
    v33 = 1;
  }

  BackgroundConnection.closeConnectionAndPrepareForReconnect(_:)(1, v27, v28, v29, v30, v31, v32);
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = a1;
  v38 = v33;
  *(v37 + 25) = v38;
  *(v37 + 32) = partial apply for closure #1 in closure #2 in BackgroundConnection.start(proposedFallbackMethod:allowFallbackToNewMethod:);
  *(v37 + 40) = v19;
  if (a6 <= 0.0)
  {
    v47 = v61;

    v46 = v59;
    outlined init with copy of NetworkConnectionError(v59, aBlock);

    specialized closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)(v48, a1, v38, v47, v46, v49);
  }

  else
  {

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = a6;
      _os_log_impl(&dword_223515000, v39, v40, "Background Connection - Fallback: Delaying start %f.", v41, 0xCu);
      MEMORY[0x223DE38F0](v41, -1, -1);
    }

    v51 = *(a3 + 32);
    static DispatchTime.now()();
    + infix(_:_:)();
    v52 = *(v52 + 8);
    (v52)(v16, v60);
    aBlock[4] = closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)specialized partial apply;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_261_0;
    v42 = _Block_copy(aBlock);

    v43 = v53;
    static DispatchQoS.unspecified.getter();
    v62 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v44 = v56;
    v45 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2440](v18, v43, v44, v42);
    _Block_release(v42);

    (*(v58 + 8))(v44, v45);
    (*(v55 + 8))(v43, v57);
    (v52)(v18, v60);

    v46 = v59;
  }

  return outlined destroy of NetworkConnectionError(v46);
}

{
  v54 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v56 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v53 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchTime();
  v52 = *(v60 - 8);
  v14 = MEMORY[0x28223BE20](v60);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  v20 = *(a5 + 16);
  *(v19 + 24) = *a5;
  *(v19 + 40) = v20;
  *(v19 + 56) = *(a5 + 32);
  v61 = a4;

  v59 = a5;
  outlined init with copy of NetworkConnectionError(a5, aBlock);
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
    v24 = a1;
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = a6;
    _os_log_impl(&dword_223515000, v22, v23, "Background Connection - Fallback: Fallback after delay %f.", v25, 0xCu);
    v26 = v25;
    a1 = v24;
    MEMORY[0x223DE38F0](v26, -1, -1);
  }

  swift_beginAccess();
  if (specialized Set.contains(_:)(*(a3 + 1136), *(a3 + 1152)))
  {
    v33 = 0;
  }

  else if (a2)
  {
    v34 = *(a3 + 1136);
    swift_beginAccess();
    v35 = a2;
    specialized Set._Variant.insert(_:)(&v62, v34);
    swift_endAccess();
    swift_getErrorValue();
    v33 = Error.isFallbackConnectionMethodRetryable(for:)(*(a3 + 1136));
  }

  else
  {
    v33 = 1;
  }

  BackgroundConnection.closeConnectionAndPrepareForReconnect(_:)(1, v27, v28, v29, v30, v31, v32);
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = a1;
  v38 = v33;
  *(v37 + 25) = v38;
  *(v37 + 32) = partial apply for closure #1 in closure #1 in BackgroundConnection.setupReadHandlerOnProvider();
  *(v37 + 40) = v19;
  if (a6 <= 0.0)
  {
    v47 = v61;

    v46 = v59;
    outlined init with copy of NetworkConnectionError(v59, aBlock);

    specialized closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)(v48, a1, v38, v47, v46, v49);
  }

  else
  {

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = a6;
      _os_log_impl(&dword_223515000, v39, v40, "Background Connection - Fallback: Delaying start %f.", v41, 0xCu);
      MEMORY[0x223DE38F0](v41, -1, -1);
    }

    v51 = *(a3 + 32);
    static DispatchTime.now()();
    + infix(_:_:)();
    v52 = *(v52 + 8);
    (v52)(v16, v60);
    aBlock[4] = closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)specialized partial apply;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_179;
    v42 = _Block_copy(aBlock);

    v43 = v53;
    static DispatchQoS.unspecified.getter();
    v62 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v44 = v56;
    v45 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2440](v18, v43, v44, v42);
    _Block_release(v42);

    (*(v58 + 8))(v44, v45);
    (*(v55 + 8))(v43, v57);
    (v52)(v18, v60);

    v46 = v59;
  }

  return outlined destroy of NetworkConnectionError(v46);
}

void specialized closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)(uint64_t a1, SiriNetwork::ConnectionMethod a2, char a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
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
      *v11 = 0;
      _os_log_impl(&dword_223515000, v9, v10, "Background Connection - Fallback: Start new connection.", v11, 2u);
      MEMORY[0x223DE38F0](v11, -1, -1);
    }

    BackgroundConnection.start(proposedFallbackMethod:allowFallbackToNewMethod:)(a2, (a3 & 1) == 0);
    if (v12)
    {
    }

    swift_beginAccess();
    swift_weakLoadStrong();
  }
}

void specialized closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_48_2(a1, a2, a3, a4, a5, a6);
  if (swift_weakLoadStrong())
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v9, static Logger.siriNetwork);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_15_1(v11))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_76();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      v17 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x223DE38F0](v17);
    }

    OUTLINED_FUNCTION_100_1();
    if (v7)
    {
    }

    OUTLINED_FUNCTION_40_1(v8 + 16, v18);
    swift_weakLoadStrong();
  }
}

uint64_t specialized closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_48_2(a1, a2, a3, a4, a5, a6);
  if (swift_weakLoadStrong())
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v9, static Logger.siriNetwork);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_15_1(v11))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_76();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      v17 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x223DE38F0](v17);
    }

    OUTLINED_FUNCTION_100_1();
    if (v7)
    {
    }

    OUTLINED_FUNCTION_40_1(v8 + 16, v19);
    swift_weakLoadStrong();
  }

  return outlined destroy of NetworkConnectionError(v6);
}

uint64_t specialized closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)(uint64_t a1, SiriNetwork::ConnectionMethod a2, char a3, void (*a4)(__int128 *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
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
      *v11 = 0;
      _os_log_impl(&dword_223515000, v9, v10, "Background Connection - Fallback: Start new connection.", v11, 2u);
      MEMORY[0x223DE38F0](v11, -1, -1);
    }

    BackgroundConnection.start(proposedFallbackMethod:allowFallbackToNewMethod:)(a2, (a3 & 1) == 0);
    if (v12)
    {
    }

    v13 = xmmword_2235F5150;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    a4(&v13);
  }

  return result;
}

uint64_t BackgroundConnection.canFallBackFromError(_:)(uint64_t a1)
{
  if (!*(v1 + 1080))
  {
    return 1;
  }

  v4 = OUTLINED_FUNCTION_134();
  return (*(v2 + 496))(a1, v4, v2) & 1;
}

void closure #1 in BackgroundConnection.connectionProvider(_:received:)(uint64_t a1)
{
  v7 = OUTLINED_FUNCTION_90_1(a1);
  OUTLINED_FUNCTION_40_1(v7, v118);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  v10 = *(Strong + 1080);
  if (!v10 || v10 != v1)
  {
    goto LABEL_4;
  }

  swift_getObjectType();
  OUTLINED_FUNCTION_126();
  if (v6(v5, v4))
  {
    type metadata accessor for BackgroundConnection();
    v11 = swift_dynamicCastClass();
    if (!v11)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v11 = 0;
  }

  OUTLINED_FUNCTION_40_1(v3 + 16, v117);
  v12 = swift_weakLoadStrong();
  v13 = v12;
  if (v11)
  {
    if (!v12)
    {

      swift_unknownObjectRelease();
LABEL_58:
      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
    if (v13 != v11)
    {
LABEL_57:

      goto LABEL_58;
    }
  }

  else if (v12)
  {

    swift_unknownObjectRelease();
LABEL_4:

    return;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v14, static Logger.siriNetwork);
  v15 = v2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_6_5();
    v18 = swift_slowAlloc();
    v19 = OUTLINED_FUNCTION_58_3();
    *v18 = 138412290;
    if (v2)
    {
      v20 = v2;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      v22 = v21;
    }

    else
    {
      v21 = OUTLINED_FUNCTION_46_5();
    }

    *(v18 + 4) = v21;
    *v19 = v22;
    _os_log_impl(&dword_223515000, v16, v17, "Background Connection - Provider: Error (%@)", v18, 0xCu);
    outlined destroy of NetworkConnectionProtocol?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    v23 = OUTLINED_FUNCTION_7_2();
    MEMORY[0x223DE38F0](v23);
  }

  if (*(v9 + 1186) != 1)
  {
    if (!v2)
    {
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_15_1(v50))
      {
        v51 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_40_2(v51);
        OUTLINED_FUNCTION_34_6(&dword_223515000, v52, v53, "Background Connection - Provider: Closing provider connection without error");
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
      }

      BackgroundConnection.cancel()();
      goto LABEL_57;
    }

    v31 = v2;
    v32 = v2;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (OUTLINED_FUNCTION_123(v33, v34, v35, &type metadata for NetworkConnectionError, v36, v37, v38, v39, v107, v109))
    {
      if (v115 >> 60 == 10 && !v116)
      {
        v40 = v115 == 0xA000000000000000 && v113 == 7;
        if (v40 && v114 == 0)
        {
          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.default.getter();
          if (OUTLINED_FUNCTION_15_1(v42))
          {
            *OUTLINED_FUNCTION_14() = 0;
            OUTLINED_FUNCTION_37_4();
            _os_log_impl(v43, v44, v45, v46, v47, 2u);
            v48 = OUTLINED_FUNCTION_2_0();
            MEMORY[0x223DE38F0](v48);
          }

          BackgroundConnection.cancel()();
          outlined consume of NetworkConnectionError(7, 0, 0, 0xA000000000000000, 0);
LABEL_56:

          goto LABEL_57;
        }
      }

      outlined consume of NetworkConnectionError(v113, v114, *(&v114 + 1), v115, v116);
    }

    if (AFDeviceSupportsSiriUOD())
    {
      v54 = v2;
      if (OUTLINED_FUNCTION_123(v54, v55, v56, &type metadata for NetworkConnectionError, v57, v58, v59, v60, v108, v110))
      {
        v61 = v115;
        if (v115 >> 60 == 1)
        {
          v62 = v113;
          oslog = Logger.logObject.getter();
          v63 = static os_log_type_t.default.getter();
          v64 = OUTLINED_FUNCTION_35_3();
          outlined consume of NetworkConnectionError(v64, v65, v66, v67, v116);
          if (os_log_type_enabled(oslog, v63))
          {
            OUTLINED_FUNCTION_6_5();
            v68 = swift_slowAlloc();
            v111 = OUTLINED_FUNCTION_58_3();
            *v68 = 138412290;
            v69 = lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
            OUTLINED_FUNCTION_60(&type metadata for NetworkConnectionError, v69);
            *v70 = v113;
            *(v70 + 8) = v114;
            *(v70 + 24) = v115;
            *(v70 + 32) = v116;
            v71 = v113;
            v72 = _swift_stdlib_bridgeErrorToNSError();
            v73 = v68;
            v61 = v115;
            *(v73 + 1) = v72;
            *v111 = v72;
            OUTLINED_FUNCTION_40_6();
            _os_log_impl(v74, v75, v76, v77, v78, 0xCu);
            outlined destroy of NetworkConnectionProtocol?(v111, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            OUTLINED_FUNCTION_2_2();
            MEMORY[0x223DE38F0]();
            OUTLINED_FUNCTION_2_2();
            MEMORY[0x223DE38F0]();
          }

          v79 = lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
          v80 = OUTLINED_FUNCTION_60(&type metadata for NetworkConnectionError, v79);
          *v81 = v113;
          *(v81 + 8) = v114;
          *(v81 + 24) = v61;
          *(v81 + 32) = v116;
          v82 = v113;
          BackgroundConnection.didEncounterError(_:)(v80);

          v83 = OUTLINED_FUNCTION_35_3();
          outlined consume of NetworkConnectionError(v83, v84, v85, v86, v116);
          swift_unknownObjectRelease();

          *(v9 + 1187) = 0;
          goto LABEL_4;
        }

        v93 = OUTLINED_FUNCTION_35_3();
        outlined consume of NetworkConnectionError(v93, v94, v95, v96, v97);
      }
    }

    OUTLINED_FUNCTION_7_1();
    v98 = swift_allocObject();
    OUTLINED_FUNCTION_36_5(v3 + 16, v99, v100, v101, v102, v103, v104);
    swift_weakLoadStrong();
    swift_weakInit();
    v105 = v2;

    v106 = v2;

    specialized BackgroundConnection.fallbackToNextConnectionMethodWithError(_:with:)(v2, v9, v98, v2);

    goto LABEL_56;
  }

  v24 = v2;
  v25 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (OUTLINED_FUNCTION_141())
  {
    OUTLINED_FUNCTION_6_5();
    v26 = swift_slowAlloc();
    v27 = OUTLINED_FUNCTION_58_3();
    *v26 = 138412290;
    if (v2)
    {
      v28 = v2;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      v30 = v29;
    }

    else
    {
      v29 = OUTLINED_FUNCTION_46_5();
    }

    *(v26 + 4) = v29;
    *v27 = v30;
    OUTLINED_FUNCTION_40_6();
    _os_log_impl(v87, v88, v89, v90, v91, 0xCu);
    outlined destroy of NetworkConnectionProtocol?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v92 = OUTLINED_FUNCTION_7_2();
    MEMORY[0x223DE38F0](v92);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  swift_unknownObjectRelease();
}

uint64_t closure #1 in closure #1 in BackgroundConnection.connectionProvider(_:received:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if (v4 >> 1 != 0xFFFFFFFF || v6 >= 2)
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.siriNetwork);
      outlined copy of NetworkConnectionError?(v5, v4, v7, v6, v8);
      v13 = a3;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      outlined consume of NetworkConnectionError?(v5, v4, v7, v6, v8);

      if (os_log_type_enabled(v14, v15))
      {
        v36 = a3;
        v16 = swift_slowAlloc();
        v35 = v15;
        v17 = swift_slowAlloc();
        *v16 = 138412546;
        lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        swift_allocError();
        *v18 = v5;
        v18[1] = v4;
        v18[2] = v7;
        v18[3] = v6;
        v18[4] = v8;
        outlined copy of NetworkConnectionError(v5, v4, v7, v6, v8);
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 4) = v19;
        *v17 = v19;
        *(v16 + 12) = 2112;
        v20 = v36;
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 14) = v21;
        v17[1] = v21;
        _os_log_impl(&dword_223515000, v14, v35, "Background Connection - Fallback: Callback to Completion with error %@ for provider error (%@)", v16, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x223DE38F0](v17, -1, -1);
        v22 = v16;
        a3 = v36;
        MEMORY[0x223DE38F0](v22, -1, -1);
      }

      swift_beginAccess();
      outlined init with copy of MessageCenterBrowserProtocol?(v10 + 1096, v40, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      if (v40[3])
      {
        outlined init with copy of RPCOspreyConnectionProtocol(v40, v37);
        outlined destroy of NetworkConnectionProtocol?(v40, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
        v23 = v38;
        v24 = v39;
        __swift_project_boxed_opaque_existential_1(v37, v38);
        v25 = (*(v24 + 184))(v23, v24);
        __swift_destroy_boxed_opaque_existential_0(v37);
        if (v25)
        {
          v26 = a3;
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v40[0] = v30;
            *v29 = 136315138;
            v37[0] = a3;
            v31 = a3;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
            v32 = String.init<A>(describing:)();
            v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v40);

            *(v29 + 4) = v34;
            _os_log_impl(&dword_223515000, v27, v28, "Background Connection - Provider: Error during request: %s", v29, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v30);
            MEMORY[0x223DE38F0](v30, -1, -1);
            MEMORY[0x223DE38F0](v29, -1, -1);
          }

          BackgroundConnection.didEncounterError(_:)(a3);
        }
      }

      else
      {
        outlined destroy of NetworkConnectionProtocol?(v40, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      }

      BackgroundConnection.cancel()();
    }
  }

  return result;
}

void closure #1 in BackgroundConnection.connectionProvider(_:receivedIntermediateError:)(uint64_t a1)
{
  v7 = OUTLINED_FUNCTION_90_1(a1);
  OUTLINED_FUNCTION_40_1(v7, v60);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + 1080);
    if (!v10 || v10 != v1)
    {
      goto LABEL_4;
    }

    swift_getObjectType();
    OUTLINED_FUNCTION_126();
    if (v6(v5, v4))
    {
      type metadata accessor for BackgroundConnection();
      v11 = swift_dynamicCastClass();
      if (!v11)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v11 = 0;
    }

    OUTLINED_FUNCTION_40_1(v3 + 16, &v59);
    v12 = swift_weakLoadStrong();
    v13 = v12;
    if (v11)
    {
      if (!v12)
      {

        goto LABEL_22;
      }

      swift_unknownObjectRelease();
      if (v13 != v11)
      {
LABEL_13:

LABEL_23:
        swift_unknownObjectRelease();
        return;
      }
    }

    else if (v12)
    {

      swift_unknownObjectRelease();
LABEL_4:

      return;
    }

    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v14, static Logger.siriNetwork);
    v15 = v2;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      OUTLINED_FUNCTION_6_5();
      v18 = swift_slowAlloc();
      v19 = OUTLINED_FUNCTION_58_3();
      *v18 = 138412290;
      if (v2)
      {
        v20 = v2;
        v21 = _swift_stdlib_bridgeErrorToNSError();
        v22 = v21;
      }

      else
      {
        v21 = OUTLINED_FUNCTION_46_5();
      }

      *(v18 + 4) = v21;
      *v19 = v22;
      _os_log_impl(&dword_223515000, v16, v17, "Background Connection - Provider: Intermediate Error (%@)", v18, 0xCu);
      outlined destroy of NetworkConnectionProtocol?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v23 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x223DE38F0](v23);
      v24 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v24);
    }

    if (*(v9 + 1186) == 1)
    {
      v25 = v2;
      v26 = Logger.logObject.getter();
      static os_log_type_t.default.getter();

      if (OUTLINED_FUNCTION_141())
      {
        OUTLINED_FUNCTION_6_5();
        v27 = swift_slowAlloc();
        v28 = OUTLINED_FUNCTION_58_3();
        *v27 = 138412290;
        if (v2)
        {
          v29 = v2;
          v30 = _swift_stdlib_bridgeErrorToNSError();
          v31 = v30;
        }

        else
        {
          v30 = OUTLINED_FUNCTION_46_5();
        }

        *(v27 + 4) = v30;
        *v28 = v31;
        OUTLINED_FUNCTION_40_6();
        _os_log_impl(v53, v54, v55, v56, v57, 0xCu);
        outlined destroy of NetworkConnectionProtocol?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v58 = OUTLINED_FUNCTION_7_2();
        MEMORY[0x223DE38F0](v58);
        goto LABEL_40;
      }

      goto LABEL_41;
    }

    if (!v2)
    {
      v26 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_15_1(v49))
      {
        v50 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_40_2(v50);
        OUTLINED_FUNCTION_34_6(&dword_223515000, v51, v52, "Background Connection - Provider: Intermediate Error nill");
LABEL_40:
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
      }

LABEL_41:

      swift_unknownObjectRelease();

      return;
    }

    v32 = v2;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_15_1(v34))
    {
      OUTLINED_FUNCTION_6_5();
      v35 = swift_slowAlloc();
      v36 = OUTLINED_FUNCTION_58_3();
      *v35 = 138412290;
      v37 = v2;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v38;
      *v36 = v38;
      OUTLINED_FUNCTION_37_4();
      _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
      outlined destroy of NetworkConnectionProtocol?(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v44 = OUTLINED_FUNCTION_7_2();
      MEMORY[0x223DE38F0](v44);
      v45 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v45);
    }

    v46 = swift_unknownObjectWeakLoadStrong();
    if (!v46)
    {

      goto LABEL_13;
    }

    v47 = v46;

    specialized Connection.didEncounterIntermediateError(_:error:)(v48, v2, v47);

LABEL_22:
    swift_unknownObjectRelease();
    goto LABEL_23;
  }
}

void closure #1 in closure #1 in BackgroundConnection.setupReadHandlerOnProvider()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a3;
  v6 = *a1;
  v5 = *(a1 + 8);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 32);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (v5 >> 1 == 0xFFFFFFFF && v7 <= 1)
    {
LABEL_21:

      return;
    }

    v53 = v4;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.siriNetwork);
    outlined copy of NetworkConnectionError?(v6, v5, v8, v7, v9);
    outlined init with copy of NetworkConnectionError(a3, v57);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    outlined consume of NetworkConnectionError?(v6, v5, v8, v7, v9);
    outlined destroy of NetworkConnectionError(a3);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v52 = v15;
      v17 = swift_slowAlloc();
      *v16 = 138412546;
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      swift_allocError();
      *v18 = v6;
      v18[1] = v5;
      v18[2] = v8;
      v18[3] = v7;
      v18[4] = v9;
      outlined copy of NetworkConnectionError(v6, v5, v8, v7, v9);
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      *(v16 + 12) = 2112;
      swift_allocError();
      v20 = *(a3 + 32);
      v21 = *(a3 + 16);
      *v22 = *a3;
      *(v22 + 16) = v21;
      *(v22 + 32) = v20;
      outlined init with copy of NetworkConnectionError(a3, v57);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v23;
      v17[1] = v23;
      _os_log_impl(&dword_223515000, v14, v52, "Background Connection - Fallback: Callback to Completion with error %@ for Read Handler error (%@)", v16, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v17, -1, -1);
      MEMORY[0x223DE38F0](v16, -1, -1);
    }

    swift_beginAccess();
    outlined init with copy of MessageCenterBrowserProtocol?(v11 + 1096, v57, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    if (v58)
    {
      outlined init with copy of RPCOspreyConnectionProtocol(v57, v54);
      outlined destroy of NetworkConnectionProtocol?(v57, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      v24 = v55;
      v25 = v56;
      __swift_project_boxed_opaque_existential_1(v54, v55);
      LOBYTE(v24) = (*(v25 + 184))(v24, v25);
      __swift_destroy_boxed_opaque_existential_0(v54);
      v26 = v53;
      if (v24)
      {
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_223515000, v27, v28, "Background Connection - Fallback: Read Error - mid request", v29, 2u);
          MEMORY[0x223DE38F0](v29, -1, -1);
        }

LABEL_25:
        lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        v48 = swift_allocError();
        v49 = *(a3 + 32);
        v50 = *(a3 + 16);
        *v51 = *a3;
        *(v51 + 16) = v50;
        *(v51 + 32) = v49;
        outlined init with copy of NetworkConnectionError(a3, v57);
        BackgroundConnection.didEncounterError(_:)(v48);

        return;
      }
    }

    else
    {
      outlined destroy of NetworkConnectionProtocol?(v57, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      v26 = v53;
    }

    if (*(a3 + 24) >> 60 == 7)
    {
      v30 = v26;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      outlined destroy of NetworkConnectionError(a3);
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        swift_allocError();
        v35 = *(a3 + 32);
        v36 = *(a3 + 16);
        *v37 = *a3;
        *(v37 + 16) = v36;
        *(v37 + 32) = v35;
        v38 = v26;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 4) = v39;
        *v34 = v39;
        _os_log_impl(&dword_223515000, v31, v32, "Background Connection - Fallback: Read Error - cancel (%@)", v33, 0xCu);
        outlined destroy of NetworkConnectionProtocol?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x223DE38F0](v34, -1, -1);
        MEMORY[0x223DE38F0](v33, -1, -1);
      }

      BackgroundConnection.cancel()();
      goto LABEL_21;
    }

    outlined init with copy of NetworkConnectionError(a3, v57);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    outlined destroy of NetworkConnectionError(a3);
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      swift_allocError();
      v44 = *(a3 + 32);
      v45 = *(a3 + 16);
      *v46 = *a3;
      *(v46 + 16) = v45;
      *(v46 + 32) = v44;
      outlined init with copy of NetworkConnectionError(a3, v57);
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v47;
      *v43 = v47;
      _os_log_impl(&dword_223515000, v40, v41, "Background Connection - Fallback: Read Error - error (%@)", v42, 0xCu);
      outlined destroy of NetworkConnectionProtocol?(v43, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223DE38F0](v43, -1, -1);
      MEMORY[0x223DE38F0](v42, -1, -1);
    }

    goto LABEL_25;
  }
}

void closure #2 in closure #1 in BackgroundConnection.setupReadHandlerOnProvider()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = Strong;
  if (v4 >> 1 == 0xFFFFFFFF && v6 <= 1)
  {
LABEL_23:

    return;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.siriNetwork);
  outlined copy of NetworkConnectionError?(v5, v4, v7, v6, v8);
  v13 = a3;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  outlined consume of NetworkConnectionError?(v5, v4, v7, v6, v8);

  if (os_log_type_enabled(v14, v15))
  {
    v34 = v15;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412546;
    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    swift_allocError();
    *v18 = v5;
    v18[1] = v4;
    v18[2] = v7;
    v18[3] = v6;
    v18[4] = v8;
    outlined copy of NetworkConnectionError(v5, v4, v7, v6, v8);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    *(v16 + 12) = 2112;
    if (a3)
    {
      v20 = a3;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      v22 = v21;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    *(v16 + 14) = v21;
    v17[1] = v22;
    _os_log_impl(&dword_223515000, v14, v34, "Background Connection - Fallback: Callback to Completion with error %@ for Read Handler error (%@)", v16, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v17, -1, -1);
    MEMORY[0x223DE38F0](v16, -1, -1);
  }

  swift_beginAccess();
  outlined init with copy of MessageCenterBrowserProtocol?(v10 + 1096, v38, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  if (!v39)
  {
    outlined destroy of NetworkConnectionProtocol?(v38, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    goto LABEL_20;
  }

  outlined init with copy of RPCOspreyConnectionProtocol(v38, v35);
  outlined destroy of NetworkConnectionProtocol?(v38, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  v23 = v36;
  v24 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v25 = (*(v24 + 184))(v23, v24);
  __swift_destroy_boxed_opaque_existential_0(v35);
  if ((v25 & 1) == 0)
  {
LABEL_20:
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_223515000, v31, v32, "Background Connection - Fallback: Read Error - cancel", v33, 2u);
      MEMORY[0x223DE38F0](v33, -1, -1);
    }

    BackgroundConnection.cancel()();
    goto LABEL_23;
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_223515000, v26, v27, "Background Connection - Fallback: Read Error - mid request)", v28, 2u);
    MEMORY[0x223DE38F0](v28, -1, -1);
  }

  lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
  v29 = swift_allocError();
  *(v30 + 8) = 0;
  *(v30 + 16) = 0;
  *v30 = 0;
  *(v30 + 24) = xmmword_2235F0AB0;
  BackgroundConnection.didEncounterError(_:)(v29);
}

Swift::Bool __swiftcall BackgroundConnection.isUsingFlorence()()
{
  if (v0[1136] != 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_78_1(v11);
  memcpy(__dst, v0 + 40, sizeof(__dst));
  v1 = v13;
  memcpy(v9, v0 + 456, 0x61uLL);
  v2 = v14;
  v7 = v12;
  v8 = v13;
  v9[97] = v14;
  v10 = v15;
  outlined init with copy of ConnectionConfiguration(v11, &v5);
  outlined destroy of ConnectionConfiguration(__dst);
  return v1 != 1 && v2 == 2;
}

Swift::Bool __swiftcall BackgroundConnection.shouldFallbackQuickly()()
{
  if (!*(v0 + 1080))
  {
    return 0;
  }

  v1 = *(v0 + 1088);
  ObjectType = swift_getObjectType();
  return (*(v1 + 552))(ObjectType, v1) & 1;
}

Swift::Bool __swiftcall BackgroundConnection.logTcpInfoIndicatesPoorLinkQuality()()
{
  (MEMORY[0x28223BE20])();
  if (*(v0 + 1080))
  {
    v1 = *(v0 + 1088);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 520);
    swift_unknownObjectRetain();
    v3(ObjectType, v1);
    (*(v1 + 40))(v11, ObjectType, v1);
    OUTLINED_FUNCTION_137(v12);
    if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v12) != 1)
    {
      OUTLINED_FUNCTION_137(v8);
      OUTLINED_FUNCTION_137(v6);
      OUTLINED_FUNCTION_124_0();
      OUTLINED_FUNCTION_137(v10);
      outlined init with copy of ConnectionSnapshotReport(v10, v7);
      outlined destroy of ConnectionMetrics(v9);
      v4 = ConnectionSnapshotReport.isPoorLinkQuality.getter();
      swift_unknownObjectRelease();
      outlined destroy of NetworkConnectionProtocol?(v8, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
      return v4 & 1;
    }

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_124_0();
    outlined destroy of ConnectionMetrics(v9);
  }

  v4 = 0;
  return v4 & 1;
}

void BackgroundConnection.logTcpInfoIndicatesPoorLinkQuality(_:)()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 1080);
  if (v3)
  {
    v4 = *(v1 + 1088);
    ObjectType = swift_getObjectType();
    v6 = swift_allocObject();
    v6[2] = v3;
    v6[3] = v4;
    v6[4] = v2;
    v6[5] = v0;
    v7 = *(v4 + 528);
    swift_unknownObjectRetain_n();
    v8 = OUTLINED_FUNCTION_32();
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v8, v9);
    v7(partial apply for closure #1 in BackgroundConnection.logTcpInfoIndicatesPoorLinkQuality(_:), v6, ObjectType, v4);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47();
  }

  else
  {
    if (v2)
    {
      v2(0);
    }

    OUTLINED_FUNCTION_47();
  }
}

uint64_t closure #1 in BackgroundConnection.logTcpInfoIndicatesPoorLinkQuality(_:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  ObjectType = swift_getObjectType();
  (*(v4 + 40))(v13, ObjectType, v4);
  memcpy(v14, &v13[71], sizeof(v14));
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v14) != 1)
  {
    memcpy(v10, &v13[71], sizeof(v10));
    memcpy(v8, &v13[71], sizeof(v8));
    memcpy(__dst, v13, 0x599uLL);
    memcpy(v12, &v13[71], sizeof(v12));
    outlined init with copy of ConnectionSnapshotReport(v12, v9);
    outlined destroy of ConnectionMetrics(__dst);
    v7 = ConnectionSnapshotReport.isPoorLinkQuality.getter();
    result = outlined destroy of NetworkConnectionProtocol?(v10, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
    if (!v2)
    {
      return result;
    }

    return v2(v7 & 1);
  }

  memcpy(__dst, v13, 0x599uLL);
  result = outlined destroy of ConnectionMetrics(__dst);
  v7 = 0;
  if (v2)
  {
    return v2(v7 & 1);
  }

  return result;
}

uint64_t BackgroundConnection.fallbackToNextConnectionMethod(error:)(void *a1)
{
  OUTLINED_FUNCTION_7_1();
  swift_allocObject();
  swift_weakInit();

  v2 = a1;
  OUTLINED_FUNCTION_14_3();
  specialized BackgroundConnection.fallbackToNextConnectionMethodWithError(_:with:)();
}

void closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(error:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v4 >> 1 != 0xFFFFFFFF || v6 > 1)
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.siriNetwork);
      outlined copy of NetworkConnectionError?(v5, v4, v7, v6, v8);
      v11 = a3;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      outlined consume of NetworkConnectionError?(v5, v4, v7, v6, v8);

      if (os_log_type_enabled(v12, v13))
      {
        v24 = v13;
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412546;
        lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        swift_allocError();
        *v16 = v5;
        v16[1] = v4;
        v16[2] = v7;
        v16[3] = v6;
        v16[4] = v8;
        outlined copy of NetworkConnectionError(v5, v4, v7, v6, v8);
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 4) = v17;
        *v15 = v17;
        *(v14 + 12) = 2112;
        if (a3)
        {
          v18 = a3;
          v19 = _swift_stdlib_bridgeErrorToNSError();
          v20 = v19;
        }

        else
        {
          v19 = 0;
          v20 = 0;
        }

        *(v14 + 14) = v19;
        v15[1] = v20;
        _os_log_impl(&dword_223515000, v12, v24, "Background Connection - Fallback: Callback to Completion with error %@ for error (%@)", v14, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x223DE38F0](v15, -1, -1);
        MEMORY[0x223DE38F0](v14, -1, -1);
      }

      v21 = a3;
      if (!a3)
      {
        lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        v21 = swift_allocError();
        *(v22 + 8) = 0;
        *(v22 + 16) = 0;
        *v22 = 9;
        *(v22 + 24) = xmmword_2235F01E0;
      }

      v23 = a3;
      BackgroundConnection.didEncounterError(_:)(v21);
    }

    else
    {
    }
  }
}

uint64_t BackgroundConnection.didReceiveObject(_:)(uint64_t a1, unint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = OUTLINED_FUNCTION_72_0();
    specialized Connection.didReceiveObject(_:object:)(v6, a1, a2, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Int BackgroundConnection.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_96_1(a1);
  specialized BackgroundConnectionProtocol.hash(into:)(v2);
  return Hasher._finalize()();
}

_BYTE *storeEnumTagSinglePayload for ConnectionState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConnectionState and conformance ConnectionState()
{
  result = lazy protocol witness table cache variable for type ConnectionState and conformance ConnectionState;
  if (!lazy protocol witness table cache variable for type ConnectionState and conformance ConnectionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionState and conformance ConnectionState);
  }

  return result;
}

uint64_t protocol witness for BackgroundConnectionProtocol.connectionConfiguration.getter in conformance BackgroundConnection@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_78_1(v5);
  memcpy(a1, (v1 + 40), 0x204uLL);
  return outlined init with copy of ConnectionConfiguration(v5, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BackgroundConnection(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  WitnessTable = swift_getWitnessTable();
  BackgroundConnectionProtocol.hash(into:)(v5, a2, WitnessTable);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BackgroundConnection(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static BackgroundConnectionProtocol.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t instantiation function for generic protocol witness table for BackgroundConnection(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type BackgroundConnection and conformance BackgroundConnection, a2, type metadata accessor for BackgroundConnection, &protocol conformance descriptor for BackgroundConnection);
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2235EFB30;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL specialized Set._Variant.insert(_:)(_BYTE *a1, unint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](a2);
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    if (*(*(v5 + 48) + v8) == a2)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

BOOL specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  AnyHashable._rawHashValue(seed:)(*(*v2 + 40));
  OUTLINED_FUNCTION_18_8();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(v5 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      outlined init with copy of AnyHashable(a2, v17);
      v16 = *v3;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v17, v9, isUniquelyReferenced_nonNull_native);
      *v3 = v16;
      v13 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v13;
      *(a1 + 32) = *(a2 + 32);
      return v10 == 0;
    }

    outlined init with copy of AnyHashable(*(v5 + 48) + 40 * v9, v17);
    v11 = MEMORY[0x223DE26B0](v17, a2);
    outlined destroy of AnyHashable(v17);
    if (v11)
    {
      break;
    }

    v6 = v9 + 1;
  }

  outlined destroy of AnyHashable(a2);
  outlined init with copy of AnyHashable(*(v5 + 48) + 40 * v9, a1);
  return v10 == 0;
}

void specialized _NativeSet.resize(capacity:)()
{
  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_15_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Network12NWConnectionCAESH04SiriC0yHCg_GMd, &_ss11_SetStorageCy7Network12NWConnectionCAESH04SiriC0yHCg_GMR);
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_83_1();
  if (!v7)
  {
LABEL_25:

    *v0 = v2;
    OUTLINED_FUNCTION_66_3();
    return;
  }

  v24 = v0;
  v8 = 0;
  OUTLINED_FUNCTION_27_4();
  OUTLINED_FUNCTION_45_3();
  if (!v0)
  {
LABEL_4:
    v10 = v8;
    while (1)
    {
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v8 >= v6)
      {
        break;
      }

      ++v10;
      if (v3[v8])
      {
        OUTLINED_FUNCTION_49_0();
        v0 = (v12 & v11);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_17_10();
    if (v20 >= 64)
    {
      v22 = OUTLINED_FUNCTION_43_5();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v22, v23, v3);
    }

    else
    {
      OUTLINED_FUNCTION_18_8();
      *v3 = v21;
    }

    v0 = v24;
    *(v1 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_107_1();
LABEL_9:
    OUTLINED_FUNCTION_97_1(v9);
    v13 = NWConnection.identifier.getter();
    MEMORY[0x223DE29A0](v13);
    Hasher._finalize()();
    OUTLINED_FUNCTION_53_5();
    if (v14)
    {
      break;
    }

    OUTLINED_FUNCTION_8_8();
LABEL_19:
    OUTLINED_FUNCTION_4_10();
    *(v5 + v17) |= v18;
    *(*(v2 + 48) + 8 * v19) = v4;
    OUTLINED_FUNCTION_26_5();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_11();
  while (1)
  {
    OUTLINED_FUNCTION_63_3();
    if (v14)
    {
      if (v15)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_84_1();
    if (v14)
    {
      v16 = 0;
    }

    if (*(v5 + 8 * v16) != -1)
    {
      OUTLINED_FUNCTION_6_12();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

{
  OUTLINED_FUNCTION_46();
  v2 = v0;
  v3 = OUTLINED_FUNCTION_53_1();
  v4 = type metadata accessor for MessageCenterActorWrapper(v3);
  v5 = OUTLINED_FUNCTION_15(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v8 = v7 - v6;
  v9 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork25MessageCenterActorWrapperVGMd, &_ss11_SetStorageCy11SiriNetwork25MessageCenterActorWrapperVGMR);
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_83_1();
  if (!v10)
  {
LABEL_25:

    *v2 = v1;
    OUTLINED_FUNCTION_47();
    return;
  }

  v33 = v9;
  v11 = 0;
  v12 = (v9 + 56);
  OUTLINED_FUNCTION_8_20();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v18 = v1 + 56;
  if ((v14 & v13) == 0)
  {
LABEL_4:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v11 >= v17)
      {
        break;
      }

      ++v19;
      if (v12[v11])
      {
        OUTLINED_FUNCTION_49_0();
        v15 = v21 & v20;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_17_10();
    if (v29 >= 64)
    {
      v31 = OUTLINED_FUNCTION_43_5();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v31, v32, v12);
    }

    else
    {
      OUTLINED_FUNCTION_18_8();
      *v12 = v30;
    }

    v2 = v0;
    *(v9 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_42_2();
LABEL_9:
    OUTLINED_FUNCTION_1_30();
    _s11SiriNetwork25MessageCenterActorWrapperVWObTm_0(v22, v8);
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_32_5();
    lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, v23, MEMORY[0x277CC9600]);
    dispatch thunk of Hashable.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_21_8();
    OUTLINED_FUNCTION_116_1();
    if (v24)
    {
      break;
    }

    OUTLINED_FUNCTION_8_8();
LABEL_19:
    *(v18 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    OUTLINED_FUNCTION_1_30();
    _s11SiriNetwork25MessageCenterActorWrapperVWObTm_0(v8, v28);
    OUTLINED_FUNCTION_26_5();
    v9 = v33;
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_11();
  while (1)
  {
    OUTLINED_FUNCTION_63_3();
    if (v24)
    {
      if (v26)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_84_1();
    if (v24)
    {
      v27 = 0;
    }

    if (*(v18 + 8 * v27) != -1)
    {
      OUTLINED_FUNCTION_6_12();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork16ConnectionMethodOGMd, &_ss11_SetStorageCy11SiriNetwork16ConnectionMethodOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x223DE2980](v16);
    result = Hasher._finalize()();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork21ConnectionPolicyRouteVGMd, &_ss11_SetStorageCy11SiriNetwork21ConnectionPolicyRouteVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; ++*(v5 + 16))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v15 = (*(v3 + 48) + 120 * (v12 | (v6 << 6)));
      memcpy(__dst, v15, sizeof(__dst));
      memcpy(v19, v15, sizeof(v19));
      Hasher.init(_seed:)();
      ConnectionPolicyRoute.hash(into:)(v18);
      Hasher._finalize()();
      v16 = _HashTable.nextHole(atOrAfter:)();
      *(v5 + 56 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = memcpy((*(v5 + 48) + 120 * v16), __dst, 0x72uLL);
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= i)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v17 = 1 << *(v3 + 32);
    if (v17 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v17 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v17;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 40 * (v13 | (v6 << 6));
    v27 = *v16;
    v28 = *(v16 + 16);
    v29 = *(v16 + 32);
    result = AnyHashable._rawHashValue(seed:)(*(v5 + 40));
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = *(v5 + 48) + 40 * v20;
    *v25 = v27;
    *(v25 + 16) = v28;
    *(v25 + 32) = v29;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_121_1();
  a33 = v39;
  a34 = v40;
  OUTLINED_FUNCTION_15_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork21MessageCenterEndpointVGMd, &_ss11_SetStorageCy11SiriNetwork21MessageCenterEndpointVGMR);
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_83_1();
  if (!v41)
  {
LABEL_28:

    *v34 = v36;
    OUTLINED_FUNCTION_60_4();
    return;
  }

  v42 = 0;
  v43 = v35 + 7;
  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_93_1();
  if (!v38)
  {
LABEL_4:
    v46 = v42;
    while (1)
    {
      v42 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v42 >= v37)
      {
        break;
      }

      ++v46;
      if (v43[v42])
      {
        OUTLINED_FUNCTION_49_0();
        v38 = v48 & v47;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_17_10();
    if (v62 >= 64)
    {
      v64 = OUTLINED_FUNCTION_43_5();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v64, v65, (v35 + 7));
    }

    else
    {
      OUTLINED_FUNCTION_18_8();
      *v43 = v63;
    }

    v35[2] = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_119_0();
LABEL_9:
    v49 = v35[6] + (v44 | (v42 << 6)) * v45;
    v50 = *(v49 + 32);
    v51 = *(v49 + 16);
    a19 = *v49;
    a20 = v51;
    a21 = v50;
    Hasher.init(_seed:)();
    v52 = *(&a20 + 1);
    v53 = a21;
    __swift_project_boxed_opaque_existential_1(&a19, *(&a20 + 1));
    OUTLINED_FUNCTION_64_3();
    v54(v52, v53);
    if (v55)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._finalize()();
    OUTLINED_FUNCTION_21_8();
    OUTLINED_FUNCTION_116_1();
    if (v56)
    {
      break;
    }

    OUTLINED_FUNCTION_8_8();
LABEL_22:
    OUTLINED_FUNCTION_4_10();
    OUTLINED_FUNCTION_67_2();
    v59 = a19;
    v60 = a20;
    *(v61 + 32) = a21;
    *v61 = v59;
    *(v61 + 16) = v60;
    OUTLINED_FUNCTION_26_5();
    if (!v38)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_11();
  while (1)
  {
    OUTLINED_FUNCTION_63_3();
    if (v56)
    {
      if (v57)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_84_1();
    if (v56)
    {
      v58 = 0;
    }

    if (v34[v58] != -1)
    {
      OUTLINED_FUNCTION_6_12();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_67_1();
  a29 = v37;
  a30 = v38;
  OUTLINED_FUNCTION_15_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork20BackgroundConnectionCGMd, &_ss11_SetStorageCy11SiriNetwork20BackgroundConnectionCGMR);
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_83_1();
  if (!v39)
  {
LABEL_25:

    *v30 = v32;
    OUTLINED_FUNCTION_66_3();
    return;
  }

  v56 = v30;
  v40 = 0;
  OUTLINED_FUNCTION_27_4();
  OUTLINED_FUNCTION_45_3();
  if (!v30)
  {
LABEL_4:
    v42 = v40;
    while (1)
    {
      v40 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v40 >= v36)
      {
        break;
      }

      ++v42;
      if (v33[v40])
      {
        OUTLINED_FUNCTION_49_0();
        v30 = (v44 & v43);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_17_10();
    if (v52 >= 64)
    {
      v54 = OUTLINED_FUNCTION_43_5();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v54, v55, v33);
    }

    else
    {
      OUTLINED_FUNCTION_18_8();
      *v33 = v53;
    }

    v30 = v56;
    *(v31 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_107_1();
LABEL_9:
    OUTLINED_FUNCTION_97_1(v41);
    specialized BackgroundConnectionProtocol.hash(into:)(&a10);
    Hasher._finalize()();
    OUTLINED_FUNCTION_53_5();
    if (v45)
    {
      break;
    }

    OUTLINED_FUNCTION_8_8();
LABEL_19:
    OUTLINED_FUNCTION_4_10();
    *(v35 + v49) |= v50;
    *(*(v32 + 48) + 8 * v51) = v34;
    OUTLINED_FUNCTION_26_5();
    if (!v30)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_11();
  while (1)
  {
    OUTLINED_FUNCTION_63_3();
    if (v45)
    {
      if (v47)
      {
        break;
      }
    }

    if (v46 == v48)
    {
      v46 = 0;
    }

    if (*(v35 + 8 * v46) != -1)
    {
      OUTLINED_FUNCTION_6_12();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

unint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
LABEL_10:
      v12 = *v3;
      Hasher.init(_seed:)();
      MEMORY[0x223DE2980](v5);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void specialized _NativeSet.copy()()
{
  specialized _NativeSet.copy()(&_ss11_SetStorageCy7Network12NWConnectionCAESH04SiriC0yHCg_GMd);
}

{
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork21ConnectionPolicyRouteVGMd, &_ss11_SetStorageCy11SiriNetwork21ConnectionPolicyRouteVGMR);
  v4 = OUTLINED_FUNCTION_99_0();
  if (*(v1 + 16))
  {
    v5 = OUTLINED_FUNCTION_11_11();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v2, 8 * v6);
    }

    v10 = 0;
    OUTLINED_FUNCTION_10_11();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_39_2();
LABEL_15:
        v20 = *(v1 + 48);
        v21 = 120 * (v16 | (v10 << 6));
        memcpy(__dst, (v20 + v21), 0x72uLL);
        memmove((*(v4 + 48) + v21), (v20 + v21), 0x72uLL);
        outlined init with copy of ConnectionPolicyRoute(__dst, &v22);
      }

      while (v13);
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
        goto LABEL_17;
      }

      ++v17;
      if (*(v2 + v10))
      {
        OUTLINED_FUNCTION_49_0();
        v13 = v19 & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v4;
  }
}

{
  specialized _NativeSet.copy()(&_ss11_SetStorageCy11SiriNetwork21MessageCenterEndpointVGMd, &_ss11_SetStorageCy11SiriNetwork21MessageCenterEndpointVGMR, outlined init with copy of MessageCenterEndpoint);
}

{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v2 = type metadata accessor for MessageCenterActorWrapper(0);
  v3 = OUTLINED_FUNCTION_15(v2);
  v5 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_1();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork25MessageCenterActorWrapperVGMd, &_ss11_SetStorageCy11SiriNetwork25MessageCenterActorWrapperVGMR);
  v9 = *v0;
  v10 = static _SetStorage.copy(original:)();
  if (v9[2])
  {
    v11 = OUTLINED_FUNCTION_13_10();
    v13 = (v12 + 63) >> 6;
    if (v10 != v9 || v11 >= &v9[v13 + 7])
    {
      memmove(v11, v9 + 7, 8 * v13);
    }

    v15 = 0;
    *(v10 + 16) = v9[2];
    OUTLINED_FUNCTION_14_6();
    v18 = v17 & v16;
    v20 = (v19 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_15:
        v25 = *(v5 + 72) * (v21 | (v15 << 6));
        outlined init with copy of MessageCenterActorWrapper(v9[6] + v25, v8);
        OUTLINED_FUNCTION_1_30();
        _s11SiriNetwork25MessageCenterActorWrapperVWObTm_0(v8, v26 + v25);
      }

      while (v18);
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
        goto LABEL_17;
      }

      ++v22;
      if (v9[v15 + 7])
      {
        OUTLINED_FUNCTION_49_0();
        v18 = v24 & v23;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v10;
    OUTLINED_FUNCTION_47();
  }
}

{
  OUTLINED_FUNCTION_133();
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork17MessageCenterUserVGMd, &_ss11_SetStorageCy11SiriNetwork17MessageCenterUserVGMR);
  v4 = OUTLINED_FUNCTION_99_0();
  if (*(v1 + 16))
  {
    v5 = OUTLINED_FUNCTION_11_11();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v2, 8 * v6);
    }

    v10 = 0;
    OUTLINED_FUNCTION_10_11();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_42_2();
LABEL_15:
        v20 = v16 | (v10 << 6);
        v21 = (*(v1 + 48) + 32 * v20);
        v22 = v21[1];
        v23 = v21[2];
        v24 = v21[3];
        v25 = (*(v4 + 48) + 32 * v20);
        *v25 = *v21;
        v25[1] = v22;
        v25[2] = v23;
        v25[3] = v24;
      }

      while (v13);
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
        goto LABEL_17;
      }

      ++v17;
      if (*(v2 + v10))
      {
        OUTLINED_FUNCTION_49_0();
        v13 = v19 & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v4;
    OUTLINED_FUNCTION_106_0();
  }
}

{
  specialized _NativeSet.copy()(&_ss11_SetStorageCy11SiriNetwork20BackgroundConnectionCGMd);
}

{
  specialized _NativeSet.copy()(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR, outlined init with copy of AnyHashable);
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork16ConnectionMethodOGMd, &_ss11_SetStorageCy11SiriNetwork16ConnectionMethodOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void specialized _NativeSet.copy()(uint64_t a1)
{
  OUTLINED_FUNCTION_133();
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v7 = OUTLINED_FUNCTION_99_0();
  if (*(v2 + 16))
  {
    v8 = OUTLINED_FUNCTION_11_11();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v3, 8 * v9);
    }

    v13 = 0;
    OUTLINED_FUNCTION_10_11();
    v16 = v15 & v14;
    v18 = (v17 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_39_2();
LABEL_15:
        *(*(v7 + 48) + 8 * (v19 | (v13 << 6))) = *(*(v2 + 48) + 8 * (v19 | (v13 << 6)));
      }

      while (v16);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_17;
      }

      ++v20;
      if (*(v3 + v13))
      {
        OUTLINED_FUNCTION_49_0();
        v16 = v22 & v21;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v4 = v7;
    OUTLINED_FUNCTION_106_0();
  }
}

void specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2, void (*a3)(int64_t, _OWORD *))
{
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *v3;
  v7 = static _SetStorage.copy(original:)();
  if (v6[2])
  {
    v8 = OUTLINED_FUNCTION_13_10();
    v10 = (v9 + 63) >> 6;
    if (v7 != v6 || v8 >= &v6[v10 + 7])
    {
      memmove(v8, v6 + 7, 8 * v10);
    }

    v12 = 0;
    *(v7 + 16) = v6[2];
    OUTLINED_FUNCTION_14_6();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_42_2();
LABEL_15:
        v22 = v18 | (v12 << 6);
        v23 = 5 * v22;
        a3(v6[6] + 40 * v22, v27);
        v24 = *(v7 + 48) + 8 * v23;
        v25 = v27[0];
        v26 = v27[1];
        *(v24 + 32) = v28;
        *v24 = v25;
        *(v24 + 16) = v26;
      }

      while (v15);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_17;
      }

      ++v19;
      if (v6[v12 + 7])
      {
        OUTLINED_FUNCTION_49_0();
        v15 = v21 & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v5 = v7;
  }
}

void specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_121_1();
  a33 = v39;
  a34 = v40;
  OUTLINED_FUNCTION_15_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork21MessageCenterEndpointVGMd, &_ss11_SetStorageCy11SiriNetwork21MessageCenterEndpointVGMR);
  static _SetStorage.resize(original:capacity:move:)();
  OUTLINED_FUNCTION_83_1();
  if (v41)
  {
    v42 = 0;
    OUTLINED_FUNCTION_8_20();
    OUTLINED_FUNCTION_93_1();
    if (v38)
    {
      while (1)
      {
        OUTLINED_FUNCTION_119_0();
LABEL_9:
        outlined init with copy of MessageCenterEndpoint(*(v35 + 48) + (v43 | (v42 << 6)) * v44, &a20);
        Hasher.init(_seed:)();
        v48 = *(&a21 + 1);
        v49 = a22;
        __swift_project_boxed_opaque_existential_1(&a20, *(&a21 + 1));
        OUTLINED_FUNCTION_64_3();
        v50(v48, v49);
        if (v51)
        {
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        Hasher._finalize()();
        OUTLINED_FUNCTION_21_8();
        OUTLINED_FUNCTION_116_1();
        if (v52)
        {
          break;
        }

        OUTLINED_FUNCTION_8_8();
LABEL_22:
        OUTLINED_FUNCTION_4_10();
        OUTLINED_FUNCTION_67_2();
        v55 = a20;
        v56 = a21;
        *(v57 + 32) = a22;
        *v57 = v55;
        *(v57 + 16) = v56;
        OUTLINED_FUNCTION_26_5();
        if (!v38)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_7_11();
      while (1)
      {
        OUTLINED_FUNCTION_63_3();
        if (v52)
        {
          if (v53)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_84_1();
        if (v52)
        {
          v54 = 0;
        }

        if (v34[v54] != -1)
        {
          OUTLINED_FUNCTION_6_12();
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_4:
      v45 = v42;
      while (1)
      {
        v42 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        if (v42 >= v37)
        {
          goto LABEL_24;
        }

        ++v45;
        if (*(v35 + 56 + 8 * v42))
        {
          OUTLINED_FUNCTION_49_0();
          v38 = v47 & v46;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_24:

    *v34 = v36;
    OUTLINED_FUNCTION_60_4();
  }
}

void specialized _NativeSet.copyAndResize(capacity:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_53_1();
  v3 = type metadata accessor for MessageCenterActorWrapper(v2);
  v4 = OUTLINED_FUNCTION_15(v3);
  v30 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_1();
  v8 = v7 - v6;
  v9 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork25MessageCenterActorWrapperVGMd, &_ss11_SetStorageCy11SiriNetwork25MessageCenterActorWrapperVGMR);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v9 + 16))
  {
    v29 = v9;
    v11 = 0;
    v12 = v9 + 56;
    OUTLINED_FUNCTION_8_20();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    v18 = v10 + 56;
    if ((v14 & v13) != 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_39_2();
LABEL_9:
        outlined init with copy of MessageCenterActorWrapper(*(v9 + 48) + *(v30 + 72) * (v19 | (v11 << 6)), v8);
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        OUTLINED_FUNCTION_32_5();
        lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, v23, MEMORY[0x277CC9600]);
        dispatch thunk of Hashable.hash(into:)();
        Hasher._finalize()();
        OUTLINED_FUNCTION_21_8();
        OUTLINED_FUNCTION_116_1();
        if (v24)
        {
          break;
        }

        OUTLINED_FUNCTION_8_8();
LABEL_19:
        *(v18 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        OUTLINED_FUNCTION_1_30();
        _s11SiriNetwork25MessageCenterActorWrapperVWObTm_0(v8, v28);
        ++*(v10 + 16);
        v9 = v29;
        if (!v15)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_7_11();
      while (1)
      {
        OUTLINED_FUNCTION_63_3();
        if (v24)
        {
          if (v26)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_84_1();
        if (v24)
        {
          v27 = 0;
        }

        if (*(v18 + 8 * v27) != -1)
        {
          OUTLINED_FUNCTION_6_12();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v20 = v11;
      while (1)
      {
        v11 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v11 >= v17)
        {

          v1 = v0;
          goto LABEL_23;
        }

        ++v20;
        if (*(v12 + 8 * v11))
        {
          OUTLINED_FUNCTION_49_0();
          v15 = v22 & v21;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v1 = v10;
    OUTLINED_FUNCTION_47();
  }
}

uint64_t specialized BackgroundConnection.connectionProvider(_:receivedIntermediateError:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(a3 + 32);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a1;
  v17[4] = a5;
  v17[5] = a2;
  aBlock[4] = partial apply for closure #1 in BackgroundConnection.connectionProvider(_:receivedIntermediateError:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_200;
  v18 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  v19 = a2;
  static DispatchQoS.unspecified.getter();
  v23 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2460](0, v15, v12, v18);
  _Block_release(v18);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v22);
}

uint64_t specialized Connection.didEncounterError(_:error:analysisInfo:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v16 = &v31 - v15;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    result = swift_unknownObjectRelease();
    if (v18 == a4)
    {

      v19 = BackgroundConnection.getConnectionMethod()();
      object = v19._object;
      countAndFlagsBits = v19._countAndFlagsBits;
      v35 = *(a4 + OBJC_IVAR___SNConnectionInternal_connectionQueue);
      v20 = swift_allocObject();
      v34 = v6;
      v21 = v20;
      swift_unknownObjectWeakInit();
      outlined init with copy of MessageCenterBrowserProtocol?(v36, v16, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
      v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v23 = (v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
      v24 = swift_allocObject();
      v36 = v9;
      v25 = v37;
      *(v24 + 16) = v21;
      *(v24 + 24) = v25;
      outlined init with take of ConnectionAnalysisInfo?(v16, v24 + v22);
      *(v24 + v23) = a1;
      v26 = (v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
      v27 = object;
      *v26 = countAndFlagsBits;
      v26[1] = v27;
      aBlock[4] = partial apply for closure #1 in Connection.didEncounterError(_:error:analysisInfo:);
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_214;
      v28 = _Block_copy(aBlock);

      v29 = v25;
      static DispatchQoS.unspecified.getter();
      v40 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v30 = v34;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x223DE2460](0, v11, v8, v28);
      _Block_release(v28);

      (*(v39 + 8))(v8, v30);
      (*(v38 + 8))(v11, v36);
    }
  }

  return result;
}

uint64_t specialized Connection.didClose(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type BackgroundConnection and conformance BackgroundConnection, v12, type metadata accessor for BackgroundConnection, &protocol conformance descriptor for BackgroundConnection);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    result = swift_unknownObjectRelease();
    if (v14 == a2)
    {
      v18[2] = *(a2 + OBJC_IVAR___SNConnectionInternal_connectionQueue);
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = a1;
      v18[1] = v15;
      aBlock[4] = partial apply for closure #1 in Connection.didClose(_:);
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_221;
      v17 = _Block_copy(aBlock);
      swift_retain_n();

      static DispatchQoS.unspecified.getter();
      v18[3] = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x223DE2460](0, v11, v7, v17);
      _Block_release(v17);

      (*(v5 + 8))(v7, v4);
      (*(v9 + 8))(v11, v8);
    }
  }

  return result;
}

void specialized Connection.didEncounterIntermediateError(_:error:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v40 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type BackgroundConnection and conformance BackgroundConnection, v12, type metadata accessor for BackgroundConnection, &protocol conformance descriptor for BackgroundConnection);
  v48 = a2;
  v14 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v15 = v45 >> 60 == 2;
    outlined consume of NetworkConnectionError(aBlock, v43, v44, v45, v46);
  }

  else
  {
    v15 = 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v17 = Strong, swift_unknownObjectRelease(), v17 == a3) && ((v18 = *(a3 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection)) != 0 ? (v19 = v18 == a1) : (v19 = 0), v19 ? (v20 = 1) : (v20 = v15), v20 == 1))
  {
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = a1;
    v22[4] = v13;
    v22[5] = a2;
    v46 = partial apply for closure #1 in Connection.didEncounterIntermediateError(_:error:);
    v47 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v45 = &block_descriptor_207;
    v23 = _Block_copy(&aBlock);
    v24 = a2;

    static DispatchQoS.unspecified.getter();
    v48 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2460](0, v11, v8, v23);
    _Block_release(v23);
    (*(v41 + 8))(v8, v6);
    (*(v40 + 8))(v11, v9);
  }

  else
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriNetwork);
    v26 = a2;

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v48 = v31;
      *v29 = 136315394;
      v32 = *(a1 + 448);
      if (v32 >= 2)
      {
        aBlock = *(a1 + 440);
        v43 = v32;

        v34 = String.init<A>(describing:)();
        v33 = v35;
      }

      else
      {
        swift_bridgeObjectRelease_n();
        v33 = 0xE700000000000000;
        v34 = 0x6E776F6E6B6E75;
      }

      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, &v48);

      *(v29 + 4) = v36;
      *(v29 + 12) = 2112;
      v37 = a2;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v38;
      *v30 = v38;
      _os_log_impl(&dword_223515000, v27, v28, "Connection - Intermediate Error: Background Connection. Got an intermediate error from inactive background connection route %s. Error: %@", v29, 0x16u);
      outlined destroy of NetworkConnectionProtocol?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223DE38F0](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x223DE38F0](v31, -1, -1);
      MEMORY[0x223DE38F0](v29, -1, -1);
    }
  }
}

uint64_t specialized Connection.didReceiveObject(_:object:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v22 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type BackgroundConnection and conformance BackgroundConnection, v14, type metadata accessor for BackgroundConnection, &protocol conformance descriptor for BackgroundConnection);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    result = swift_unknownObjectRelease();
    if (v17 == a4)
    {
      v21 = *(a4 + OBJC_IVAR___SNConnectionInternal_connectionQueue);
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = a1;
      v19[4] = v15;
      v19[5] = a2;
      v19[6] = a3;
      aBlock[4] = partial apply for closure #1 in Connection.didReceiveObject(_:object:);
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_16;
      v20 = _Block_copy(aBlock);

      outlined copy of Data?(a2, a3);
      static DispatchQoS.unspecified.getter();
      v24 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x223DE2460](0, v13, v10, v20);
      _Block_release(v20);
      (*(v23 + 8))(v10, v8);
      (*(v22 + 8))(v13, v11);
    }
  }

  return result;
}

id outlined copy of NetworkConnectionError?(id result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if (a2 >> 1 != 0xFFFFFFFF || a4 >= 2)
  {
    return outlined copy of NetworkConnectionError(result, a2, a3, a4, a5);
  }

  return result;
}

void outlined consume of NetworkConnectionError?(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if (a2 >> 1 != 0xFFFFFFFF || a4 >= 2)
  {
    outlined consume of NetworkConnectionError(a1, a2, a3, a4, a5);
  }
}

void outlined consume of Result<(), Error>(id a1, char a2)
{
  if (a2)
  {
  }
}

void partial apply for closure #1 in Connection.didEncounterError(_:error:analysisInfo:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  OUTLINED_FUNCTION_15(v0);

  closure #1 in Connection.didEncounterError(_:error:analysisInfo:)();
}

id outlined copy of Result<(), NetworkConnectionError>(id result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, char a6)
{
  if (a6)
  {
    return outlined copy of NetworkConnectionError(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t objectdestroy_170Tm()
{

  outlined consume of NetworkConnectionError(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_144Tm()
{
  OUTLINED_FUNCTION_13_3();

  v2(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, v0, 7);
}

uint64_t objectdestroy_148Tm()
{

  v0 = OUTLINED_FUNCTION_19_8();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

void *OUTLINED_FUNCTION_61_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return memcpy(va, (v14 + 40), 0x204uLL);
}

void *OUTLINED_FUNCTION_95_1(void *a1)
{

  return memcpy(a1, (v1 + 40), 0x204uLL);
}

void *OUTLINED_FUNCTION_96_1(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

void *OUTLINED_FUNCTION_98_1(void *a1)
{

  return memcpy(a1, (v1 + 4680), 0x139uLL);
}

uint64_t OUTLINED_FUNCTION_99_0()
{

  return static _SetStorage.copy(original:)();
}

void OUTLINED_FUNCTION_105_1()
{
  STACK[0x470] = 0;
  STACK[0x460] = 9;
  STACK[0x468] = 0;
}

void OUTLINED_FUNCTION_122_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_123(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_125(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x12u);
}

void *OUTLINED_FUNCTION_127()
{

  return memcpy((v1 + 377), (v0 + 4376), 0x128uLL);
}

void *OUTLINED_FUNCTION_129()
{

  return memcpy(&STACK[0x870], &STACK[0x460], 0x204uLL);
}

void OUTLINED_FUNCTION_130(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_131(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_132()
{
}

uint64_t OUTLINED_FUNCTION_136()
{

  return outlined init with copy of ConnectionConfiguration(&STACK[0x238], &STACK[0x460]);
}

void *OUTLINED_FUNCTION_137(void *a1)
{

  return memcpy(a1, (v1 + 568), 0x2C8uLL);
}

uint64_t OUTLINED_FUNCTION_138(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return outlined init with copy of MessageCenterBrowserProtocol?(v4 + 1096, &STACK[0x460], a3, a4);
}

BOOL OUTLINED_FUNCTION_140()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_142()
{

  return swift_unknownObjectRelease();
}

id RATInterface.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RATInterface();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RATInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RATInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [WRM_iRATProximityRecommendation]?) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for WRM_iRATProximityRecommendation, 0x277D7BC50);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3(v2);
}

void @nonobjc WRM_iRATInterface.subscribeStandaloneLinkRecommendation(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = thunk for @escaping @callee_guaranteed (@unowned WRMApplicationType, @unowned WRMLinkType, @guaranteed NSValue?) -> ();
    v4[3] = &block_descriptor_91_0;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 subscribeStandaloneLinkRecommendation_];
  _Block_release(v3);
}

void thunk for @escaping @callee_guaranteed (@unowned WRMApplicationType, @unowned WRMLinkType, @guaranteed NSValue?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

void @nonobjc WRM_iRATInterface.getProximityLinkRecommendation(_:recommendation:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = thunk for @escaping @callee_guaranteed (@guaranteed [WRM_iRATProximityRecommendation]?) -> ();
    v6[3] = &block_descriptor_88;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v3 getProximityLinkRecommendation:a1 & 1 recommendation:v5];
  _Block_release(v5);
}

void @nonobjc WRM_iRATInterface.getLinkRecommendationMetrics(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = thunk for @escaping @callee_guaranteed (@guaranteed AceObject?) -> ();
    v4[3] = &block_descriptor_85;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 getLinkRecommendationMetrics_];
  _Block_release(v3);
}

void NetworkWirelessCoexManager.init(queue:)()
{
  OUTLINED_FUNCTION_46();
  v10 = v2;
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_1();
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_0_1();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 56) = 2;
  type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0;
  static DispatchQoS.userInteractive.getter();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v1, *MEMORY[0x277D85260], v9);
  *(v0 + 176) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 184) = 0x4014000000000000;
  *(v0 + 168) = v10;
  v8 = v10;
  NetworkWirelessCoexManager.resetLinkRecommendationInfo()();

  OUTLINED_FUNCTION_47();
}

uint64_t NetworkWirelessCoexManager.deinit()
{
  NetworkWirelessCoexManager.unregisterClient()();
  outlined destroy of ConnectionSnapshotReport?(v0 + 16, &_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);

  return v0;
}

uint64_t NetworkWirelessCoexManager.__deallocating_deinit()
{
  NetworkWirelessCoexManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 192, 7);
}

Swift::Void __swiftcall NetworkWirelessCoexManager.registerClient()()
{
  OUTLINED_FUNCTION_46();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v19 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0_0();
  v17 = v6;
  v18 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v9 = v8 - v7;
  v10 = *(v0 + 168);
  OUTLINED_FUNCTION_7_1();
  v11 = swift_allocObject();
  swift_weakInit();
  v20[4] = partial apply for closure #1 in NetworkWirelessCoexManager.registerClient();
  v20[5] = v11;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v20[2] = v12;
  v20[3] = &block_descriptor_82_0;
  v13 = _Block_copy(v20);
  v14 = v10;

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_2_33();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(v15, v16, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2460](0, v9, v1, v13);
  _Block_release(v13);

  (*(v19 + 8))(v1, v2);
  (*(v17 + 8))(v9, v18);

  NetworkWirelessCoexManager.resetLinkRecommendationInfo()();
  NetworkWirelessCoexManager.subscribeLinkRecommendation()();
  OUTLINED_FUNCTION_47();
}

uint64_t closure #1 in NetworkWirelessCoexManager.registerClient()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    outlined init with copy of RATManagerProtocol?(v2 + 16, v14);
    v3 = v15;
    outlined destroy of ConnectionSnapshotReport?(v14, &_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);
    if (v3)
    {
      outlined init with copy of RATManagerProtocol?(v2 + 16, v14);
    }

    else
    {
      v4 = type metadata accessor for RATInterface();
      v5 = [objc_allocWithZone(v4) init];
      v15 = v4;
      v16 = &protocol witness table for WRM_iRATInterface;
      v14[0] = v5;
    }

    swift_beginAccess();
    outlined assign with take of RATManagerProtocol?(v14, v2 + 16);
    swift_endAccess();
    outlined init with copy of RATManagerProtocol?(v2 + 16, v14);
    if (v15)
    {
      outlined init with copy of RPCOspreyConnectionProtocol(v14, v11);
      outlined destroy of ConnectionSnapshotReport?(v14, &_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);
      v6 = v12;
      v7 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v8 = *(v2 + 168);
      v9 = *(v7 + 8);
      v10 = v8;
      v9(22, v8, v6, v7);

      return __swift_destroy_boxed_opaque_existential_0(v11);
    }

    else
    {

      return outlined destroy of ConnectionSnapshotReport?(v14, &_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);
    }
  }

  return result;
}

uint64_t closure #1 in NetworkWirelessCoexManager.unregisterClient()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    outlined init with copy of RATManagerProtocol?(v2 + 16, &v10);

    if (*(&v11 + 1))
    {
      outlined init with copy of RPCOspreyConnectionProtocol(&v10, v7);
      outlined destroy of ConnectionSnapshotReport?(&v10, &_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);
      v3 = v8;
      v4 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v4 + 16))(v3, v4);
      __swift_destroy_boxed_opaque_existential_0(v7);
    }

    else
    {
      outlined destroy of ConnectionSnapshotReport?(&v10, &_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    swift_beginAccess();
    outlined assign with take of RATManagerProtocol?(&v10, v6 + 16);
    swift_endAccess();
  }

  return result;
}

uint64_t closure #1 in NetworkWirelessCoexManager.subscribeLinkRecommendation()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    outlined init with copy of RATManagerProtocol?(v2 + 16, v10);

    if (v11)
    {
      outlined init with copy of RPCOspreyConnectionProtocol(v10, v7);
      outlined destroy of ConnectionSnapshotReport?(v10, &_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);
      v3 = v8;
      v4 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v5 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v6 = *(v4 + 32);

      v6(partial apply for closure #1 in closure #1 in NetworkWirelessCoexManager.subscribeLinkRecommendation(), v5, v3, v4);

      return __swift_destroy_boxed_opaque_existential_0(v7);
    }

    else
    {
      return outlined destroy of ConnectionSnapshotReport?(v10, &_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in NetworkWirelessCoexManager.subscribeLinkRecommendation()(int a1, int a2, void *a3, uint64_t a4)
{
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.siriNetwork);
  v8 = a3;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v34 = a3;
    v12 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36[0] = v35;
    *v11 = 136315650;
    v37 = a1;
    type metadata accessor for WRMApplicationType(0);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v36);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v37 = a2;
    type metadata accessor for WRMLinkType(0);
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v36);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2112;
    *(v11 + 24) = v8;
    *v12 = v34;
    v19 = v8;
    _os_log_impl(&dword_223515000, v9, v10, "Received an asynchronous recommendation type %s, linkType %s, value %@", v11, 0x20u);
    outlined destroy of ConnectionSnapshotReport?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE38F0](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v35, -1, -1);
    MEMORY[0x223DE38F0](v11, -1, -1);
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_18;
  }

  if (a1 != 1)
  {

LABEL_18:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    NetworkWirelessCoexManager.resetLinkRecommendationInfo()();
  }

  v21 = NetworkConnectionProvider.connectionMetrics.modify(v36);
  if (*v20 != 2)
  {
    *v20 = 0;
  }

  (v21)(v36, 0);
  v23 = NetworkConnectionProvider.connectionMetrics.modify(v36);
  if (*v22 != 2)
  {
    v22[1] = 1;
  }

  (v23)(v36, 0);
  if (!a2)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_223515000, v30, v31, "NetworkWirelessCoexManager: Standalone linkRecommendationInfo wifiPreference false", v32, 2u);
      MEMORY[0x223DE38F0](v32, -1, -1);
    }

    v28 = NetworkConnectionProvider.connectionMetrics.modify(v36);
    if (*v33 != 2)
    {
      v33[1] = 0;
    }

    goto LABEL_24;
  }

  if (a2 == 1)
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_223515000, v24, v25, "NetworkWirelessCoexManager: Standalone linkRecommendationInfo wifiPreference true", v26, 2u);
      MEMORY[0x223DE38F0](v26, -1, -1);
    }

    v28 = NetworkConnectionProvider.connectionMetrics.modify(v36);
    if (*v27 != 2)
    {
      v27[1] = 1;
    }

LABEL_24:
    (v28)(v36, 0);
  }
}

void NetworkWirelessCoexManager.getProximityLinkRecommendation(retry:_:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v10 = *(v1 + 176);
  OUTLINED_FUNCTION_7_1();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v5;
  *(v12 + 32) = v3;
  *(v12 + 40) = v7;
  v23[4] = partial apply for closure #1 in NetworkWirelessCoexManager.getProximityLinkRecommendation(retry:_:);
  v23[5] = v12;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v23[2] = v13;
  v23[3] = &block_descriptor_48;
  v14 = _Block_copy(v23);
  v15 = v10;

  outlined copy of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v5, v3);
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_2_33();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(v16, v17, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_8_21();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v18);
  _Block_release(v14);

  v19 = OUTLINED_FUNCTION_16_1();
  v20(v19);
  v21 = OUTLINED_FUNCTION_16();
  v22(v21);

  OUTLINED_FUNCTION_47();
}

uint64_t closure #1 in NetworkWirelessCoexManager.getProximityLinkRecommendation(retry:_:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v72) = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v73 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DispatchTime();
  v70 = *(v71 - 8);
  v14 = MEMORY[0x28223BE20](v71);
  v68 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v69 = &v59 - v16;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    NetworkWirelessCoexManager.resetLinkRecommendationInfo()();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    swift_beginAccess();
    outlined init with copy of RATManagerProtocol?(v18 + 16, &aBlock);
    if (v81)
    {
      v66 = v18;
      v59 = v13;
      v60 = v10;
      outlined init with take of RPCOspreyConnectionProtocol(&aBlock, v76);
      v19 = v8;
      v20 = swift_allocObject();
      v21 = dispatch_group_create();
      v67 = v7;
      v22 = a1;
      *(v20 + 16) = v21;
      v23 = (v20 + 16);
      dispatch_group_enter(v21);
      v24 = v78;
      v62 = v77;
      v61 = v11;
      __swift_project_boxed_opaque_existential_1(v76, v77);
      v25 = swift_allocObject();
      v65 = a2;
      v26 = v25;
      swift_beginAccess();
      v63 = v22;
      swift_weakLoadStrong();
      swift_weakInit();

      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      *(v27 + 24) = v20;
      v28 = a3;
      v29 = v24;
      v30 = *(v24 + 40);

      v64 = v20;

      v30(v72 & 1, partial apply for closure #2 in closure #1 in NetworkWirelessCoexManager.getProximityLinkRecommendation(retry:_:), v27, v62, v29);
      v31 = v19;
      v32 = v73;
      v33 = v65;

      swift_beginAccess();
      v34 = v67;
      if (*v23)
      {
        v35 = *v23;
        v36 = v68;
        static DispatchTime.now()();
        v37 = v33;
        v38 = v31;
        v39 = v32;
        v40 = v69;
        + infix(_:_:)();
        v41 = *(v70 + 8);
        v42 = v71;
        v41(v36, v71);
        MEMORY[0x223DE2400](v40);

        v43 = v40;
        v32 = v39;
        v31 = v38;
        v33 = v37;
        v34 = v67;
        v41(v43, v42);
        if (static DispatchTimeoutResult.== infix(_:_:)())
        {
          if (one-time initialization token for siriNetwork != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          __swift_project_value_buffer(v44, static Logger.siriNetwork);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            *v47 = 0;
            _os_log_impl(&dword_223515000, v45, v46, "NetworkWirelessCoexManager: getProximityLinkRecommendation timedout", v47, 2u);
            MEMORY[0x223DE38F0](v47, -1, -1);
          }
        }
      }

      v48 = v63;
      swift_beginAccess();
      v49 = swift_weakLoadStrong();
      if (v49)
      {
        v50 = *(v49 + 168);

        v51 = swift_allocObject();
        v51[2] = v33;
        v51[3] = v28;
        v51[4] = v48;
        v82 = partial apply for closure #4 in closure #1 in NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:);
        v83 = v51;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v80 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v81 = &block_descriptor_65;
        v52 = _Block_copy(&aBlock);
        outlined copy of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v33, v28);

        v53 = v59;
        static DispatchQoS.unspecified.getter();
        v74 = MEMORY[0x277D84F90];
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        v54 = v60;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x223DE2460](0, v53, v54, v52);
        _Block_release(v52);

        (*(v31 + 8))(v54, v34);
        (*(v32 + 8))(v53, v61);
      }

      return __swift_destroy_boxed_opaque_existential_0(v76);
    }

    outlined destroy of ConnectionSnapshotReport?(&aBlock, &_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v72 = *(result + 168);

    v56 = swift_allocObject();
    v56[2] = a2;
    v56[3] = a3;
    v56[4] = a1;
    v82 = partial apply for closure #4 in closure #1 in NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:);
    v83 = v56;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v80 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v81 = &block_descriptor_54_0;
    v57 = _Block_copy(&aBlock);
    outlined copy of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(a2, a3);

    static DispatchQoS.unspecified.getter();
    v75[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v58 = v72;
    MEMORY[0x223DE2460](0, v13, v10, v57);
    _Block_release(v57);

    (*(v8 + 8))(v10, v7);
    (*(v73 + 8))(v13, v11);
  }

  return result;
}

void closure #2 in closure #1 in NetworkWirelessCoexManager.getProximityLinkRecommendation(retry:_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
LABEL_36:
    swift_beginAccess();
    v39 = *(a3 + 16);
    if (v39)
    {
      dispatch_group_leave(v39);
    }

    goto LABEL_38;
  }

  if (!a1)
  {

    goto LABEL_36;
  }

  v41 = a3;
  v5 = specialized Array.count.getter(a1);
  if (!v5)
  {
LABEL_32:
    a3 = v41;
    swift_beginAccess();
    v37 = *(v41 + 16);
    if (v37)
    {
      v38 = v37;
      dispatch_group_leave(v38);
    }

LABEL_38:
    swift_beginAccess();
    v40 = *(a3 + 16);
    *(a3 + 16) = 0;

    return;
  }

  v6 = v5;
  v7 = 0;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  v9 = &selRef_host;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x223DE2730](v7, a1);
    }

    else
    {
      if (v7 >= *(v8 + 16))
      {
        goto LABEL_40;
      }

      v10 = *(a1 + 8 * v7 + 32);
    }

    v11 = v10;
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if ([v10 v9[58]] == 2)
    {
      v13 = [v11 metrics];
      if (v13)
      {
        v14 = v13;
        v15 = v13;
        NetworkWirelessCoexManager.updateMetricsFromProximityRecommendationLogging(_:)(v14, v16, v17, v18, v19, v20, v21, v22);

        v9 = &selRef_host;
      }
    }

    if ([v11 linkIsRecommended] && objc_msgSend(v11, sel_linkRecommendationIsValid))
    {
      if ([v11 v9[58]] == 1)
      {
        if (one-time initialization token for siriNetwork != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        __swift_project_value_buffer(v23, static Logger.siriNetwork);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_223515000, v24, v25, "NetworkWirelessCoexManager: Get Proximity linkRecommendationInfo btPreference true", v26, 2u);
          v27 = v26;
          v8 = a1 & 0xFFFFFFFFFFFFFF8;
          MEMORY[0x223DE38F0](v27, -1, -1);
        }

        v29 = NetworkConnectionProvider.connectionMetrics.modify(v42);
        v9 = &selRef_host;
        if (*v28 != 2)
        {
          *v28 = 1;
        }

        (v29)(v42, 0);
      }

      if ([v11 v9[58]] == 2)
      {
        if (one-time initialization token for siriNetwork != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static Logger.siriNetwork);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_223515000, v31, v32, "NetworkWirelessCoexManager: Get Proximity linkRecommendationInfo wifiPreference true", v33, 2u);
          v34 = v33;
          v8 = a1 & 0xFFFFFFFFFFFFFF8;
          MEMORY[0x223DE38F0](v34, -1, -1);
        }

        v36 = NetworkConnectionProvider.connectionMetrics.modify(v42);
        v9 = &selRef_host;
        if (*v35 != 2)
        {
          v35[1] = 1;
        }

        (v36)(v42, 0);
      }
    }

    ++v7;
    if (v12 == v6)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

void NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v8 = *(v1 + 176);
  OUTLINED_FUNCTION_7_1();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v5;
  v10[4] = v3;
  v21[4] = partial apply for closure #1 in NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:);
  v21[5] = v10;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v21[2] = v11;
  v21[3] = &block_descriptor_17;
  v12 = _Block_copy(v21);
  v13 = v8;

  outlined copy of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v5, v3);
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_2_33();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(v14, v15, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_8_21();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v16 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v16);
  _Block_release(v12);

  v17 = OUTLINED_FUNCTION_16_1();
  v18(v17);
  v19 = OUTLINED_FUNCTION_16();
  v20(v19);

  OUTLINED_FUNCTION_47();
}

uint64_t closure #1 in NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v70 = a3;
  v69 = a2;
  v67 = type metadata accessor for DispatchTime();
  v66 = *(v67 - 8);
  v4 = MEMORY[0x28223BE20](v67);
  v64 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v65 = &v58 - v6;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v72 = a1;
  Strong = swift_weakLoadStrong();
  v16 = MEMORY[0x277D84F90];
  if (Strong)
  {
    v68 = *(Strong + 168);

    v81 = partial apply for closure #1 in closure #1 in NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:);
    v82 = v72;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v79 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v80 = &block_descriptor_22_0;
    v17 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v75[0] = v16;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v71 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v16 = MEMORY[0x277D84F90];
    v14 = v71;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v68;
    MEMORY[0x223DE2460](0, v14, v10, v17);
    _Block_release(v17);

    (v8[1])(v10, v7);
    (*(v12 + 8))(v14, v11);
  }

  v71 = v11;
  swift_beginAccess();
  v19 = swift_weakLoadStrong();
  if (v19)
  {
    v20 = v19;
    swift_beginAccess();
    outlined init with copy of RATManagerProtocol?(v20 + 16, &aBlock);
    if (v80)
    {
      v58 = v10;
      outlined init with take of RPCOspreyConnectionProtocol(&aBlock, v75);
      v21 = swift_allocObject();
      v22 = dispatch_group_create();
      *(v21 + 16) = v22;
      v63 = (v21 + 16);
      dispatch_group_enter(v22);
      v59 = v12;
      v62 = v76;
      v60 = v7;
      v23 = v77;
      v61 = __swift_project_boxed_opaque_existential_1(v75, v76);
      v24 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      v25 = v8;
      swift_weakInit();

      v26 = swift_allocObject();
      *(v26 + 16) = v24;
      *(v26 + 24) = v21;
      v27 = v14;
      v28 = v25;
      v29 = *(v23 + 48);

      v68 = v21;

      v29(partial apply for closure #3 in closure #1 in NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:), v26, v62, v23);
      v30 = v28;
      v31 = v27;

      v32 = v63;
      swift_beginAccess();
      if (*v32)
      {
        v33 = *v32;
        v34 = v64;
        static DispatchTime.now()();
        v63 = v30;
        v35 = v65;
        + infix(_:_:)();
        v36 = *(v66 + 8);
        v37 = v67;
        v36(v34, v67);
        MEMORY[0x223DE2400](v35);

        v30 = v63;
        v36(v35, v37);
        if (static DispatchTimeoutResult.== infix(_:_:)())
        {
          if (one-time initialization token for siriNetwork != -1)
          {
            swift_once();
          }

          v38 = type metadata accessor for Logger();
          __swift_project_value_buffer(v38, static Logger.siriNetwork);
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            *v41 = 0;
            _os_log_impl(&dword_223515000, v39, v40, "NetworkWirelessCoexManager: getLinkRecommendationMetrics timedout", v41, 2u);
            MEMORY[0x223DE38F0](v41, -1, -1);
          }
        }
      }

      swift_beginAccess();
      v42 = swift_weakLoadStrong();
      if (v42)
      {
        v43 = *(v42 + 168);

        v44 = swift_allocObject();
        v45 = v69;
        v46 = v70;
        v44[2] = v69;
        v44[3] = v46;
        v44[4] = v72;
        v81 = partial apply for closure #4 in closure #1 in NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:);
        v82 = v44;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v79 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v80 = &block_descriptor_41;
        v47 = _Block_copy(&aBlock);

        outlined copy of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v45, v46);
        static DispatchQoS.unspecified.getter();
        v73 = MEMORY[0x277D84F90];
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        v48 = v58;
        v49 = v60;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x223DE2460](0, v31, v48, v47);
        _Block_release(v47);

        (v30[1])(v48, v49);
        (*(v59 + 8))(v31, v71);
      }

      return __swift_destroy_boxed_opaque_existential_0(v75);
    }

    outlined destroy of ConnectionSnapshotReport?(&aBlock, &_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v68 = *(result + 168);

    v51 = swift_allocObject();
    v52 = v69;
    v53 = v8;
    v54 = v70;
    v51[2] = v69;
    v51[3] = v54;
    v51[4] = v72;
    v81 = partial apply for closure #2 in closure #1 in NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:);
    v82 = v51;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v79 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v80 = &block_descriptor_28_1;
    v55 = v7;
    v56 = _Block_copy(&aBlock);

    outlined copy of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v52, v54);
    static DispatchQoS.unspecified.getter();
    v74[0] = v16;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v57 = v68;
    MEMORY[0x223DE2460](0, v14, v10, v56);
    _Block_release(v56);

    (v53[1])(v10, v55);
    (*(v12 + 8))(v14, v71);
  }

  return result;
}

uint64_t closure #1 in closure #1 in NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    NetworkWirelessCoexManager.updateMetricsFromProximityRecommendationLogging(_:)(0, v2, v3, v4, v5, v6, v7, v8);
  }

  return result;
}

void closure #3 in closure #1 in NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = a1;
      NetworkWirelessCoexManager.updateMetricsFromProximityRecommendationLogging(_:)(a1, v8, v9, v10, v11, v12, v13, v14);
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
        v29 = v19;
        *v18 = 136315138;
        swift_beginAccess();
        if (*(v6 + 56) == 2)
        {
          v20 = 0xE100000000000000;
          v21 = 45;
        }

        else
        {
          memcpy(__dst, (v6 + 64), sizeof(__dst));
          memcpy(v27, __dst, sizeof(v27));
          v21 = String.init<A>(describing:)();
          v20 = v23;
        }

        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, &v29);

        *(v18 + 4) = v24;
        _os_log_impl(&dword_223515000, v16, v17, "NetworkWirelessCoexManager: LinkRecommendationMetrics %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x223DE38F0](v19, -1, -1);
        MEMORY[0x223DE38F0](v18, -1, -1);
      }

      swift_beginAccess();
      v25 = *(a3 + 16);
      if (v25)
      {
        v26 = v25;
        dispatch_group_leave(v26);
      }

      goto LABEL_17;
    }
  }

  swift_beginAccess();
  v22 = *(a3 + 16);
  if (v22)
  {
    dispatch_group_leave(v22);
  }

  swift_beginAccess();
  v7 = *(a3 + 16);
  *(a3 + 16) = 0;
LABEL_17:
}

uint64_t (*closure #1 in closure #1 in NetworkWirelessCoexManager.getProximityLinkRecommendation(retry:_:)(uint64_t (*result)(_OWORD *), uint64_t a2, uint64_t a3))(_OWORD *)
{
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      swift_beginAccess();
      v18 = *(v5 + 72);
      v19 = *(v5 + 56);
      v16 = *(v5 + 104);
      v17 = *(v5 + 88);
      v14 = *(v5 + 136);
      v15 = *(v5 + 120);
      v13 = *(v5 + 152);

      v7 = v13;
      v6 = v14;
      v9 = v15;
      v8 = v16;
      v11 = v17;
      v10 = v18;
      v12 = v19;
    }

    else
    {
      v12 = xmmword_2235F1900;
      v10 = 0uLL;
      v11 = 0uLL;
      v8 = 0uLL;
      v9 = 0uLL;
      v6 = 0uLL;
      v7 = 0uLL;
    }

    v20[0] = v12;
    v20[1] = v10;
    v20[2] = v11;
    v20[3] = v8;
    v20[4] = v9;
    v20[5] = v6;
    v20[6] = v7;
    return v3(v20);
  }

  return result;
}

uint64_t NetworkWirelessCoexManager.updateMetricsFromProximityRecommendationLogging(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_12_10(a1, a2, a3, a4, a5, a6, a7, a8, v257[0]);
  OUTLINED_FUNCTION_6_22();
  if (v18)
  {
    v19 = OUTLINED_FUNCTION_9_16(v10, v11, v12, v13, v14, v15, v16, v17, v257[0]);
    v20 = v8(v19);
  }

  else
  {
    v28 = v11;
    if (a1)
    {
      v29 = [a1 btRSSI];
    }

    else
    {
      v29 = 0;
    }

    *(v28 + 8) = v29;
    v30 = OUTLINED_FUNCTION_4_27(v29, v11, v12, v13, v14, v15, v16, v17, v257[0]);
    v20 = v8(v30);
  }

  OUTLINED_FUNCTION_12_10(v20, v21, v22, v23, v24, v25, v26, v27, v257[0]);
  OUTLINED_FUNCTION_6_22();
  if (v18)
  {
    v39 = OUTLINED_FUNCTION_9_16(v31, v32, v33, v34, v35, v36, v37, v38, v257[0]);
    v40 = v8(v39);
  }

  else
  {
    v48 = v32;
    if (a1)
    {
      v49 = [a1 wifiRSSI];
    }

    else
    {
      v49 = 0;
    }

    *(v48 + 16) = v49;
    v50 = OUTLINED_FUNCTION_4_27(v49, v32, v33, v34, v35, v36, v37, v38, v257[0]);
    v40 = v8(v50);
  }

  OUTLINED_FUNCTION_12_10(v40, v41, v42, v43, v44, v45, v46, v47, v257[0]);
  OUTLINED_FUNCTION_6_22();
  if (v18)
  {
    v59 = OUTLINED_FUNCTION_9_16(v51, v52, v53, v54, v55, v56, v57, v58, v257[0]);
    v60 = v8(v59);
  }

  else
  {
    v68 = v52;
    if (a1)
    {
      v69 = [a1 wifiSNR];
    }

    else
    {
      v69 = 0;
    }

    *(v68 + 24) = v69;
    v70 = OUTLINED_FUNCTION_4_27(v69, v52, v53, v54, v55, v56, v57, v58, v257[0]);
    v60 = v8(v70);
  }

  OUTLINED_FUNCTION_12_10(v60, v61, v62, v63, v64, v65, v66, v67, v257[0]);
  OUTLINED_FUNCTION_6_22();
  if (v18)
  {
    v79 = OUTLINED_FUNCTION_9_16(v71, v72, v73, v74, v75, v76, v77, v78, v257[0]);
    v80 = v8(v79);
  }

  else
  {
    v88 = v72;
    if (a1)
    {
      v89 = [a1 beaconPER];
    }

    else
    {
      v89 = 0;
    }

    *(v88 + 32) = v89;
    v90 = OUTLINED_FUNCTION_4_27(v89, v72, v73, v74, v75, v76, v77, v78, v257[0]);
    v80 = v8(v90);
  }

  OUTLINED_FUNCTION_12_10(v80, v81, v82, v83, v84, v85, v86, v87, v257[0]);
  OUTLINED_FUNCTION_6_22();
  if (v18)
  {
    v99 = OUTLINED_FUNCTION_9_16(v91, v92, v93, v94, v95, v96, v97, v98, v257[0]);
    v100 = v8(v99);
  }

  else
  {
    v108 = v92;
    if (a1)
    {
      v109 = [a1 nwType];
    }

    else
    {
      v109 = 0;
    }

    *(v108 + 36) = v109;
    v110 = OUTLINED_FUNCTION_4_27(v109, v92, v93, v94, v95, v96, v97, v98, v257[0]);
    v100 = v8(v110);
  }

  OUTLINED_FUNCTION_12_10(v100, v101, v102, v103, v104, v105, v106, v107, v257[0]);
  OUTLINED_FUNCTION_6_22();
  if (v18)
  {
    v119 = OUTLINED_FUNCTION_9_16(v111, v112, v113, v114, v115, v116, v117, v118, v257[0]);
    v120 = v8(v119);
  }

  else
  {
    v128 = v112;
    if (a1)
    {
      v129 = [a1 wifiCCA];
    }

    else
    {
      v129 = 0;
    }

    *(v128 + 40) = v129;
    v130 = OUTLINED_FUNCTION_4_27(v129, v112, v113, v114, v115, v116, v117, v118, v257[0]);
    v120 = v8(v130);
  }

  OUTLINED_FUNCTION_12_10(v120, v121, v122, v123, v124, v125, v126, v127, v257[0]);
  OUTLINED_FUNCTION_6_22();
  if (v18)
  {
    v139 = OUTLINED_FUNCTION_9_16(v131, v132, v133, v134, v135, v136, v137, v138, v257[0]);
    v140 = v8(v139);
  }

  else
  {
    v148 = v132;
    if (a1)
    {
      v149 = [a1 lsmRecommendationBe];
    }

    else
    {
      v149 = 0;
    }

    *(v148 + 48) = v149;
    v150 = OUTLINED_FUNCTION_4_27(v149, v132, v133, v134, v135, v136, v137, v138, v257[0]);
    v140 = v8(v150);
  }

  OUTLINED_FUNCTION_12_10(v140, v141, v142, v143, v144, v145, v146, v147, v257[0]);
  OUTLINED_FUNCTION_6_22();
  if (v18)
  {
    v159 = OUTLINED_FUNCTION_9_16(v151, v152, v153, v154, v155, v156, v157, v158, v257[0]);
    v160 = v8(v159);
  }

  else
  {
    v168 = v152;
    if (a1)
    {
      v169 = [a1 expectedThroughputVIBE];
    }

    else
    {
      v169 = 0;
    }

    *(v168 + 56) = v169;
    v170 = OUTLINED_FUNCTION_4_27(v169, v152, v153, v154, v155, v156, v157, v158, v257[0]);
    v160 = v8(v170);
  }

  OUTLINED_FUNCTION_12_10(v160, v161, v162, v163, v164, v165, v166, v167, v257[0]);
  OUTLINED_FUNCTION_6_22();
  if (v18)
  {
    v179 = OUTLINED_FUNCTION_9_16(v171, v172, v173, v174, v175, v176, v177, v178, v257[0]);
    v180 = v8(v179);
  }

  else
  {
    v188 = v172;
    if (a1)
    {
      v189 = [a1 packetLifetimeVIBE];
    }

    else
    {
      v189 = 0;
    }

    *(v188 + 64) = v189;
    v190 = OUTLINED_FUNCTION_4_27(v189, v172, v173, v174, v175, v176, v177, v178, v257[0]);
    v180 = v8(v190);
  }

  OUTLINED_FUNCTION_12_10(v180, v181, v182, v183, v184, v185, v186, v187, v257[0]);
  OUTLINED_FUNCTION_6_22();
  if (v18)
  {
    v199 = OUTLINED_FUNCTION_9_16(v191, v192, v193, v194, v195, v196, v197, v198, v257[0]);
    v200 = v8(v199);
  }

  else
  {
    v208 = v192;
    if (a1)
    {
      v209 = [a1 packetLossRateVIBE];
    }

    else
    {
      v209 = 0;
    }

    *(v208 + 72) = v209;
    v210 = OUTLINED_FUNCTION_4_27(v209, v192, v193, v194, v195, v196, v197, v198, v257[0]);
    v200 = v8(v210);
  }

  OUTLINED_FUNCTION_12_10(v200, v201, v202, v203, v204, v205, v206, v207, v257[0]);
  OUTLINED_FUNCTION_6_22();
  if (v18)
  {
    v219 = OUTLINED_FUNCTION_9_16(v211, v212, v213, v214, v215, v216, v217, v218, v257[0]);
    v220 = v8(v219);
  }

  else
  {
    v228 = v212;
    if (a1)
    {
      v229 = [a1 btRetransmissionRateTx];
    }

    else
    {
      v229 = 0;
    }

    *(v228 + 80) = v229;
    v230 = OUTLINED_FUNCTION_4_27(v229, v212, v213, v214, v215, v216, v217, v218, v257[0]);
    v220 = v8(v230);
  }

  OUTLINED_FUNCTION_12_10(v220, v221, v222, v223, v224, v225, v226, v227, v257[0]);
  OUTLINED_FUNCTION_6_22();
  if (v18)
  {
    v239 = OUTLINED_FUNCTION_9_16(v231, v232, v233, v234, v235, v236, v237, v238, v257[0]);
    v8(v239);
  }

  else
  {
    v240 = v232;
    if (a1)
    {
      v241 = [a1 btRetransmissionRateRx];
    }

    else
    {
      v241 = 0;
    }

    *(v240 + 88) = v241;
    v242 = OUTLINED_FUNCTION_4_27(v241, v232, v233, v234, v235, v236, v237, v238, v257[0]);
    v8(v242);
  }

  v243 = NetworkConnectionProvider.connectionMetrics.modify(v257);
  v251 = v243;
  if (*v244 == 2)
  {
    v252 = OUTLINED_FUNCTION_9_16(v243, v244, v245, v246, v247, v248, v249, v250, v257[0]);
    return v251(v252);
  }

  else
  {
    v254 = v244;
    if (a1)
    {
      v255 = [a1 btTech];
    }

    else
    {
      v255 = 0;
    }

    *(v254 + 12) = v255;
    v256 = OUTLINED_FUNCTION_4_27(v255, v244, v245, v246, v247, v248, v249, v250, v257[0]);
    return v251(v256);
  }
}

uint64_t outlined init with copy of RATManagerProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_18Tm(uint64_t a1)
{

  if (*(v1 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_34Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t outlined assign with take of RATManagerProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void __swiftcall LinkRecommendationInfo.snLinkRecommendationInfo()(SNLinkRecommendationInfo *__return_ptr retstr)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 8);
  v8 = v1[36];
  v10 = *(v1 + 5);
  v9 = *(v1 + 6);
  v13 = *(v1 + 7);
  v14 = *(v1 + 8);
  v15 = *(v1 + 9);
  v16 = *(v1 + 10);
  v17 = *(v1 + 11);
  v18 = *(v1 + 12);
  v11 = *(v1 + 13);
  v12 = [objc_allocWithZone(SNLinkRecommendationInfo) init];
  [v12 setBtPreference_];
  [v12 setWifiPreference_];
  [v12 setBtRSSI_];
  [v12 setWifiRSSI_];
  [v12 setWifiSNR_];
  [v12 setBeaconPER_];
  [v12 setNwType_];
  [v12 setWifiCCA_];
  [v12 setLsmRecommendationBe_];
  [v12 setExpectedThroughputVIBE_];
  [v12 setPacketLifetimeVIBE_];
  [v12 setPacketLossRateVIBE_];
  [v12 setBtRetransmissionRateTx_];
  [v12 setBtRetransmissionRateRx_];
  [v12 setBtTech_];
  [v12 setTimeTaken_];
}

double LinkRecommendationInfo.init(btPreference:wifiPreference:)@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 1) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 29) = 0;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  return result;
}

uint64_t LinkRecommendationInfo.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v34 = *(v0 + 5);
  v32 = *(v0 + 6);
  v27 = *(v0 + 8);
  v28 = *(v0 + 9);
  v29 = *(v0 + 7);
  v30 = *(v0 + 10);
  strcpy(v48, "btPreference ");
  HIWORD(v48[1]) = -4864;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v33 = *(v0 + 11);
  v39 = *(v0 + 12);
  MEMORY[0x223DE2180](v3, v4);

  v46 = v48[1];
  v47 = v48[0];
  _StringGuts.grow(_:)(17);

  OUTLINED_FUNCTION_4_28();
  v48[0] = v5 | 0x6665725000000000;
  v48[1] = 0xEF2065636E657265;
  if (v2)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x223DE2180](v6, v7);

  v44 = v48[1];
  v45 = v48[0];
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_3_29();

  v43 = strcpy(v48, "btRSSI ");
  OUTLINED_FUNCTION_4_28();
  v48[0] = v8 | 0x4953535200000000;
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_3_29();

  v42 = v48[0];
  OUTLINED_FUNCTION_4_28();
  v48[0] = v9 | 0x20524E5300000000;
  v48[1] = 0xEA00000000000000;
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_3_29();

  v41 = v48[0];
  strcpy(v48, "beaconPER ");
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_3_29();

  v37 = v48[1];
  v38 = v48[0];
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_3_29();

  v36 = strcpy(v48, "nwType ");
  OUTLINED_FUNCTION_4_28();
  v48[0] = v10 | 0x2041434300000000;
  OUTLINED_FUNCTION_0_54(v34);
  OUTLINED_FUNCTION_3_29();

  v35 = v48[0];
  _StringGuts.grow(_:)(22);

  OUTLINED_FUNCTION_5_0();
  v48[1] = v11;
  OUTLINED_FUNCTION_0_54(v32);
  OUTLINED_FUNCTION_3_29();

  v31 = v48[1];
  _StringGuts.grow(_:)(25);

  OUTLINED_FUNCTION_5_0();
  v48[1] = v12;
  OUTLINED_FUNCTION_0_54(v29);
  OUTLINED_FUNCTION_3_29();

  v13 = v48[1];
  _StringGuts.grow(_:)(21);

  OUTLINED_FUNCTION_5_0();
  v48[1] = v14;
  v15 = OUTLINED_FUNCTION_0_54(v27);
  MEMORY[0x223DE2180](v15);

  v16 = v48[1];
  _StringGuts.grow(_:)(21);

  OUTLINED_FUNCTION_5_0();
  v48[1] = v17;
  v18 = OUTLINED_FUNCTION_0_54(v28);
  MEMORY[0x223DE2180](v18);

  v19 = v48[1];
  _StringGuts.grow(_:)(25);

  OUTLINED_FUNCTION_5_0();
  v48[1] = v20;
  v21 = OUTLINED_FUNCTION_0_54(v30);
  MEMORY[0x223DE2180](v21);

  v22 = v48[1];
  _StringGuts.grow(_:)(25);

  OUTLINED_FUNCTION_5_0();
  v48[1] = v23;
  v24 = OUTLINED_FUNCTION_0_54(v33);
  MEMORY[0x223DE2180](v24);

  v25 = OUTLINED_FUNCTION_0_54(v39);
  MEMORY[0x223DE2180](v25);

  v40 = strcpy(v48, "btTech ");
  MEMORY[0x223DE2180](0x656B6154656D6974, 0xEA0000000000206ELL);
  Double.write<A>(to:)();
  _StringGuts.grow(_:)(86);
  MEMORY[0x223DE2180](0xD000000000000018, 0x80000002235F9AF0);
  MEMORY[0x223DE2180](v47, v46);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v45, v44);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v43, 0xE700000000000000);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v42, 0xE900000000000020);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v41, 0xE800000000000000);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v38, v37);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v36, 0xE700000000000000);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v35, 0xE800000000000000);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000014, v31);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000017, v13);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000013, v16);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000013, v19);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000017, v22);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000017, v48[1]);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v40, 0xE700000000000000);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0, 0xE000000000000000);

  return 0;
}

uint64_t getEnumTagSinglePayload for LinkRecommendationInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[112])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for LinkRecommendationInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t *NetworkConnectionError.errorDomain.unsafeMutableAddressor()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_55(&one-time initialization token for errorDomain);
  }

  return &static NetworkConnectionError.errorDomain;
}

uint64_t static NetworkConnectionError.errorDomain.getter()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_55(&one-time initialization token for errorDomain);
  }

  swift_beginAccess();
  v0 = static NetworkConnectionError.errorDomain;

  return v0;
}

uint64_t static NetworkConnectionError.errorDomain.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_55(&one-time initialization token for errorDomain);
  }

  swift_beginAccess();
  static NetworkConnectionError.errorDomain = a1;
  qword_281325628 = a2;
}

uint64_t (*static NetworkConnectionError.errorDomain.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_55(&one-time initialization token for errorDomain);
  }

  swift_beginAccess();
  return static ConnectionConfigurationError.errorDomain.modify;
}

double key path getter for static NetworkConnectionError.errorDomain : NetworkConnectionError.Type@<D0>(void *a1@<X8>)
{
  NetworkConnectionError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = qword_281325628;
  *a1 = static NetworkConnectionError.errorDomain;
  a1[1] = v2;

  return result;
}

uint64_t key path setter for static NetworkConnectionError.errorDomain : NetworkConnectionError.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  NetworkConnectionError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  static NetworkConnectionError.errorDomain = v2;
  qword_281325628 = v1;
}

uint64_t NetworkConnectionError.errorCode.getter()
{
  v1 = *v0;
  v2 = v0[3];
  result = 5;
  switch(v2 >> 60)
  {
    case 1uLL:
      result = 6;
      break;
    case 2uLL:
      result = 7;
      break;
    case 3uLL:
      result = 8;
      break;
    case 4uLL:
      result = 17;
      break;
    case 5uLL:
      result = 9;
      break;
    case 6uLL:
      result = 10;
      break;
    case 7uLL:
      result = 12;
      break;
    case 8uLL:
      result = 13;
      break;
    case 9uLL:
      result = 14;
      break;
    case 0xAuLL:
      v4 = v0[4];
      if (v2 == 0xA000000000000000 && (v0[1] | v0[2] | v1 | v4) == 0)
      {
        result = 0;
      }

      else if (!v4 && (v2 == 0xA000000000000000 ? (v6 = v1 == 1) : (v6 = 0), v6 ? (v7 = *(v0 + 1) == 0) : (v7 = 0), v7))
      {
        result = 1;
      }

      else if (!v4 && (v2 == 0xA000000000000000 ? (v8 = v1 == 2) : (v8 = 0), v8 ? (v9 = *(v0 + 1) == 0) : (v9 = 0), v9))
      {
        result = 2;
      }

      else if (!v4 && (v2 == 0xA000000000000000 ? (v10 = v1 == 3) : (v10 = 0), v10 && *(v0 + 1) == 0))
      {
        result = 3;
      }

      else if (!v4 && (v2 == 0xA000000000000000 ? (v11 = v1 == 4) : (v11 = 0), v11 && *(v0 + 1) == 0))
      {
        result = 4;
      }

      else if (!v4 && (v2 == 0xA000000000000000 ? (v12 = v1 == 5) : (v12 = 0), v12 && *(v0 + 1) == 0))
      {
        result = 18;
      }

      else if (!v4 && (v2 == 0xA000000000000000 ? (v13 = v1 == 6) : (v13 = 0), v13 && *(v0 + 1) == 0))
      {
        result = 19;
      }

      else if (!v4 && (v2 == 0xA000000000000000 ? (v14 = v1 == 7) : (v14 = 0), v14 && *(v0 + 1) == 0))
      {
        result = 11;
      }

      else if (*(v0 + 1) == 0 && v1 == 8 && v2 == 0xA000000000000000 && v4 == 0)
      {
        result = 15;
      }

      else
      {
        result = 16;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t NetworkConnectionError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = Dictionary.init(dictionaryLiteral:)();
  v7 = v4 >> 60;
  if ((v4 >> 60) <= 9)
  {
    v8 = v7 == 3 ? v5 : v1;
    if (v8)
    {
      *&v28 = v8;
      outlined copy of NetworkConnectionError(v1, v2, v3, v4, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v9 = type metadata accessor for NSError();
      if (swift_dynamicCast())
      {
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;
        v29 = v9;
        *&v28 = *&v27[0];
        outlined init with take of Any(&v28, v27);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_1_31();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v10, v12);

        v6 = v26;
      }
    }
  }

  if (v7 == 3)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    v17 = MEMORY[0x277D83B88];
    if (v2)
    {
      v18 = 0;
    }

    else
    {
      v18 = v1;
    }

    v29 = MEMORY[0x277D83B88];
    *&v28 = v18;
    outlined init with take of Any(&v28, v27);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_31();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, v14, v16);

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
    if (v4)
    {
      v23 = 0;
    }

    else
    {
      v23 = v3;
    }

    v29 = v17;
    *&v28 = v23;
    outlined init with take of Any(&v28, v27);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_31();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v20, v22);

    return v26;
  }

  return v6;
}

uint64_t protocol witness for Error._domain.getter in conformance NetworkConnectionError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance NetworkConnectionError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t getEnumTagSinglePayload for NetworkConnectionError(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkConnectionError(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 0;
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

void *destructiveInjectEnumTag for NetworkConnectionError(void *result, uint64_t a2)
{
  if (a2 < 0xA)
  {
    v2 = result[3] & 1 | (a2 << 60);
    result[1] &= 1uLL;
    result[3] = v2;
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    *result = (a2 - 10);
    *(result + 3) = xmmword_2235F01E0;
  }

  return result;
}

id static NetworkAnalytics.netSessionConnectionFailed(error:connectionMode:sessionType:sessionState:isDormant:snConnectionAnalysisInfo:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, int a8, void *a9)
{
  v51 = a8;
  v48 = a5;
  v49 = a7;
  v46 = a4;
  v47 = a6;
  v45 = a2;
  v50 = a1;
  v10 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  v17 = type metadata accessor for ConnectionAnalysisInfo(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a9)
  {
    v20 = [a9 connectionType];
    v21 = [v20 technology];
  }

  else
  {
    v21 = 0;
  }

  ConnectionType.init(rawValue:)(v21);
  v22 = v52;
  if (!a9)
  {
    v27 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v27);
    v28 = 0;
LABEL_11:
    type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    goto LABEL_12;
  }

  v23 = [a9 connectionURL];
  if (v23)
  {
    v24 = v23;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = type metadata accessor for URL();
    v26 = 0;
  }

  else
  {
    v25 = type metadata accessor for URL();
    v26 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v26, 1, v25);
  outlined init with take of URL?(v14, v16);
  result = [a9 interfaceIndex];
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
    return result;
  }

  v28 = result;
  isa = [a9 sendBufferSize];
  if (!isa)
  {
    goto LABEL_11;
  }

LABEL_12:
  v31 = UInt64.init(truncating:)();

  if (a9)
  {
    v32 = [a9 wwanPreferred];
    v10 = outlined bridged method (pb) of @objc SAConnectionPolicy.policyId.getter(a9);
    v34 = v33;
  }

  else
  {
    v34 = 0;
    v32 = 0;
  }

  if (v22 == 25)
  {
    LOBYTE(v22) = 0;
  }

  outlined init with take of URL?(v16, v19);
  v35 = &v19[v17[5]];
  *v35 = v28;
  v35[4] = 0;
  *&v19[v17[6]] = v31;
  v19[v17[7]] = v32;
  v19[v17[8]] = v22;
  v36 = &v19[v17[9]];
  *v36 = v10;
  *(v36 + 1) = v34;
  if (a3)
  {
    v37 = v45;
  }

  else
  {
    v37 = 0;
  }

  if (a3)
  {
    v38 = a3;
  }

  else
  {
    v38 = 0xE000000000000000;
  }

  if (v48)
  {
    v39 = v46;
  }

  else
  {
    v39 = 0;
  }

  if (v48)
  {
    v40 = v48;
  }

  else
  {
    v40 = 0xE000000000000000;
  }

  if (v49)
  {
    v41 = v47;
  }

  else
  {
    v41 = 0;
  }

  if (v49)
  {
    v42 = v49;
  }

  else
  {
    v42 = 0xE000000000000000;
  }

  v43 = static NetworkAnalytics.netSessionConnectionFailed(error:connectionMode:sessionType:sessionState:isDormant:connectionAnalysisInfo:)(v50, v37, v38, v39, v40, v41, v42, v51 & 1, v19);

  outlined destroy of ConnectionAnalysisInfo(v19);
  return v43;
}

id static NetworkAnalytics.netSessionConnectionFailed(error:connectionMode:sessionType:sessionState:isDormant:connectionAnalysisInfo:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v11 = [objc_allocWithZone(MEMORY[0x277D58C10]) init];
  if (!a1)
  {
    v53 = 0u;
    v54 = 0u;
LABEL_12:
    outlined destroy of Any?(&v53);
LABEL_13:
    if (!v11)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v12 = objc_allocWithZone(MEMORY[0x277D58BC8]);
  v13 = a1;
  v14 = [v12 init];
  if (v14)
  {
    v15 = v14;
    v16 = [v13 domain];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_11_12(v17, v18, v19, &selRef_setDomain_);
    v20 = [v13 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_11_12(v21, v22, v23, &selRef_setDescription_);
    [v15 setErrorCode_];
    if (v11)
    {
      v24 = v11;
      v25 = v15;
      [v24 setError_];
    }
  }

  v26 = [v13 userInfo];
  v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v28, v29, v27, &v53);

  if (!*(&v54 + 1))
  {
    goto LABEL_12;
  }

  type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v30 = v52;
  v31 = [objc_allocWithZone(MEMORY[0x277D58BC8]) init];
  if (v31)
  {
    v32 = v31;
    v33 = [v52 domain];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_11_12(v34, v35, v36, &selRef_setDomain_);
    v37 = [v52 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_11_12(v38, v39, v40, &selRef_setDescription_);
    [v32 setErrorCode_];
    if (!v11)
    {

      goto LABEL_15;
    }

    v41 = v11;
    v42 = v32;
    [v41 setUnderlyingError_];

LABEL_14:
    LOBYTE(v53) = *(a9 + *(type metadata accessor for ConnectionAnalysisInfo(0) + 32));
    [v11 setConnectionType_];
    v43 = v11;
    [v43 setConnectionMode_];

    v44 = v43;
    [v44 setSessionType_];

    v30 = v44;
    [v30 setNetworkSessionState_];
LABEL_15:

    goto LABEL_16;
  }

  if (v11)
  {
    goto LABEL_14;
  }

LABEL_16:
  [v11 setIsDormant_];
  if (v11)
  {
    v45 = type metadata accessor for ConnectionAnalysisInfo(0);
    [v11 setIsWwanPreferred_];
    [v11 setSendBufferSize_];
    v46 = (a9 + v45[9]);
    v47 = v46[1];
    if (v47)
    {
      v48 = *v46;
      v49 = v11;
      v47 = MEMORY[0x223DE2070](v48, v47);
    }

    else
    {
      v50 = v11;
    }

    [v11 setPolicyId_];
  }

  return v11;
}

uint64_t static NetworkAnalytics.netConnectionMode(from:)()
{
  String.lowercased()();
  OUTLINED_FUNCTION_10_12();
  v3 = v3 && v2 == 0xE900000000000074;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_4_29(0x6E61747369737361, 0xE900000000000074) & 1) != 0))
  {

    return 1;
  }

  else if (v4 == 0xD000000000000015 && 0x80000002235F9B90 == v0)
  {

    return 2;
  }

  else
  {
    OUTLINED_FUNCTION_4_29(0xD000000000000015, 0x80000002235F9B90);
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

uint64_t static NetworkAnalytics.netSessionType(from:)()
{
  String.lowercased()();
  OUTLINED_FUNCTION_10_12();
  v3 = v3 && v2 == 0xE500000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_4_29(0x6C61636F6CLL, 0xE500000000000000) & 1) != 0))
  {

    return 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_13_11();
    v7 = v4 == v6 && v0 == 0xE600000000000000;
    if (v7 || (OUTLINED_FUNCTION_4_29(v6, 0xE600000000000000) & 1) != 0)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_13_11() & 0xFFFFFFFFFFFFLL | 0x696C000000000000;
      v10 = v4 == v8 && v0 == v9;
      if (v10 || (OUTLINED_FUNCTION_4_29(v8, v9) & 1) != 0)
      {

        return 3;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_13_11() & 0xFFFFFFFFFFFFLL | 0x7566000000000000;
        if (v4 == v11 && v0 == v12)
        {

          return 4;
        }

        else
        {
          OUTLINED_FUNCTION_4_29(v11, 0xEA00000000006C6CLL);
          OUTLINED_FUNCTION_12_11();
          if (v4)
          {
            return 4;
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

uint64_t static NetworkAnalytics.netSessionState(from:)()
{
  String.lowercased()();
  OUTLINED_FUNCTION_10_12();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_4_29(0x6C616974696E69, 0xE700000000000000) & 1) != 0))
  {

    return 1;
  }

  else
  {
    v6 = v4 == 0x676E6974696177 && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_4_29(0x676E6974696177, 0xE700000000000000) & 1) != 0)
    {

      return 2;
    }

    else
    {
      v7 = v4 == 0x6961777972746572 && v0 == 0xEC000000676E6974;
      if (v7 || (OUTLINED_FUNCTION_4_29(0x6961777972746572, 0xEC000000676E6974) & 1) != 0)
      {

        return 3;
      }

      else
      {
        OUTLINED_FUNCTION_7_21();
        v9 = v4 == 0xD000000000000011 && v8 == v0;
        if (v9 || (OUTLINED_FUNCTION_4_29(0xD000000000000011, v8) & 1) != 0)
        {

          return 4;
        }

        else
        {
          OUTLINED_FUNCTION_7_21();
          v11 = v4 == 0xD000000000000010 && v10 == v0;
          if (v11 || (OUTLINED_FUNCTION_4_29(0xD000000000000010, v10) & 1) != 0)
          {

            return 5;
          }

          else
          {
            v12 = v4 == 0x6F6464656E65706FLL && v0 == 0xED0000746E616D72;
            if (v12 || (OUTLINED_FUNCTION_3_30(0x6F6464656E65706FLL) & 1) != 0)
            {

              return 6;
            }

            else
            {
              v13 = v4 == 0x69746E6568747561 && v0 == 0xEE00676E69746163;
              if (v13 || (OUTLINED_FUNCTION_4_29(0x69746E6568747561, 0xEE00676E69746163) & 1) != 0)
              {

                return 7;
              }

              else
              {
                v14 = v4 == 0x676E69646C6F68 && v0 == 0xE700000000000000;
                if (v14 || (OUTLINED_FUNCTION_4_29(0x676E69646C6F68, 0xE700000000000000) & 1) != 0)
                {

                  return 8;
                }

                else
                {
                  v15 = v4 == 0x7361657461657263 && v0 == 0xEF746E6174736973;
                  if (v15 || (OUTLINED_FUNCTION_4_29(0x7361657461657263, 0xEF746E6174736973) & 1) != 0)
                  {

                    return 9;
                  }

                  else
                  {
                    v16 = v4 == 0x6973736164616F6CLL && v0 == 0xED0000746E617473;
                    if (v16 || (OUTLINED_FUNCTION_4_29(0x6973736164616F6CLL, 0xED0000746E617473) & 1) != 0)
                    {

                      return 10;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_7_21();
                      v18 = v4 == 0xD000000000000010 && v17 == v0;
                      if (v18 || (OUTLINED_FUNCTION_4_29(0xD000000000000010, v17) & 1) != 0)
                      {

                        return 11;
                      }

                      else if (v4 == 0x657669746361 && v0 == 0xE600000000000000)
                      {

                        return 12;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_4_29(0x657669746361, 0xE600000000000000);
                        OUTLINED_FUNCTION_12_11();
                        if (v4)
                        {
                          return 12;
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
  }
}

uint64_t @objc static NetworkAnalytics.netConnectionMode(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4(v5);

  return v6;
}

unint64_t static NetworkAnalytics.netEndpointFromDictionary(_:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D58BC0]) init];
  result = specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, a1);
  if ((v4 & 1) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if (HIDWORD(result))
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    [v2 setType_];
  }

  result = specialized Dictionary.subscript.getter(1953656688, 0xE400000000000000, a1);
  if ((v5 & 1) != 0 || !v2)
  {
    return v2;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if (!HIDWORD(result))
  {
    [v2 setPort_];
    return v2;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t static NetworkAnalytics.netEndpointsFromArray(_:)(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      outlined init with copy of Any(v3, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSiGMd, &_sSDySSSiGMR);
      if (swift_dynamicCast())
      {
        v4 = static NetworkAnalytics.netEndpointFromDictionary(_:)(v7);

        if (v4)
        {
          v5 = v4;
          MEMORY[0x223DE2240]();
          if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v1 = v9;
        }
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  return v1;
}

uint64_t static NetworkAnalytics.netPathType(from:)(uint64_t result)
{
  if ((result - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t static NetworkAnalytics.netPathInterfaces(from:)(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v54 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = a1 + 32; ; i += 32)
  {
    outlined init with copy of Any(i, v53);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    OUTLINED_FUNCTION_1_32(v4, v5, v6, v4, v7, v8, v9, v10, v50, v51);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }

    v11 = v51;
    v12 = [objc_allocWithZone(MEMORY[0x277D58BF8]) init];
    if (!v12)
    {

      goto LABEL_26;
    }

    v13 = v12;
    if (*(v51 + 16))
    {
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
      if (v15)
      {
        v16 = OUTLINED_FUNCTION_6_23(v14);
        v17 = outlined init with copy of Any(v16, v53);
        OUTLINED_FUNCTION_1_32(v17, v18, v19, v20, v21, v22, v23, v24, v50, v51);
        if (swift_dynamicCast())
        {
          break;
        }
      }
    }

LABEL_11:
    if (*(v11 + 16))
    {
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000);
      if (v27)
      {
        v28 = OUTLINED_FUNCTION_6_23(v26);
        v29 = outlined init with copy of Any(v28, v53);
        OUTLINED_FUNCTION_1_32(v29, v30, v31, v32, v33, v34, v35, v36, v50, v51);
        if (swift_dynamicCast())
        {
          outlined bridged method (mbnn) of @objc NETSchemaNETError.domain.setter(v51, v52, v13, &selRef_setName_);
        }
      }
    }

    if (*(v11 + 16) && (v37 = specialized __RawDictionaryStorage.find<A>(_:)(0x7865646E69, 0xE500000000000000), (v38 & 1) != 0))
    {
      v39 = OUTLINED_FUNCTION_6_23(v37);
      outlined init with copy of Any(v39, v53);

      OUTLINED_FUNCTION_1_32(v40, v41, v42, v43, v44, v45, v46, v47, v50, v51);
      result = swift_dynamicCast();
      if (result)
      {
        if ((v51 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (HIDWORD(v51))
        {
          goto LABEL_31;
        }

        [v13 setIndex_];
      }
    }

    else
    {
    }

    v48 = v13;
    MEMORY[0x223DE2240]();
    OUTLINED_FUNCTION_16_11();
    if (v49)
    {
      OUTLINED_FUNCTION_14_7();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v1 = v54;
LABEL_26:
    if (!--v2)
    {
      return v1;
    }
  }

  result = v51;
  if ((v51 & 0x8000000000000000) == 0)
  {
    if (HIDWORD(v51))
    {
      goto LABEL_30;
    }

    [v13 setType_];
    goto LABEL_11;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t static NetworkAnalytics.netPathStatus(from:)(unsigned int a1)
{
  if (a1 < 4)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t static NetworkAnalytics.netEstablishmentResolution(from:)(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v76 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  v3 = 0xD000000000000010;
  v4 = a1 + 32;
  v72 = "resolutionSource";
  v73 = "destroyassistant";
  v71 = "successfulEndpoint";
  while (1)
  {
    outlined init with copy of Any(v4, v75);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    OUTLINED_FUNCTION_5_27(v5, v6, v7, v5, v8, v9, v10, v11, v70, v71, v72, v73, v74);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_37;
    }

    v12 = v74;
    v13 = [objc_allocWithZone(MEMORY[0x277D58BD0]) init];
    if (!v13)
    {

      goto LABEL_37;
    }

    v14 = v13;
    if (*(v74 + 16))
    {
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E6F697461727564, 0xE800000000000000);
      if (v16)
      {
        v17 = OUTLINED_FUNCTION_6_23(v15);
        v18 = outlined init with copy of Any(v17, v75);
        OUTLINED_FUNCTION_5_27(v18, v19, v20, v21, v22, v23, v24, v25, v70, v71, v72, v73, v74);
        result = swift_dynamicCast();
        if (result)
        {
          break;
        }
      }
    }

LABEL_10:
    if (*(v12 + 16))
    {
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, v73 | 0x8000000000000000);
      if (v28)
      {
        v29 = OUTLINED_FUNCTION_6_23(v27);
        v30 = outlined init with copy of Any(v29, v75);
        OUTLINED_FUNCTION_5_27(v30, v31, v32, v33, v34, v35, v36, v37, v70, v71, v72, v73, v74);
        result = swift_dynamicCast();
        if (result)
        {
          if ((v74 & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          if (HIDWORD(v74))
          {
            goto LABEL_42;
          }

          [v14 setResolutionSource_];
        }
      }
    }

    if (*(v12 + 16))
    {
      v38 = specialized __RawDictionaryStorage.find<A>(_:)(v3 + 2, v72 | 0x8000000000000000);
      if (v39)
      {
        v40 = OUTLINED_FUNCTION_6_23(v38);
        outlined init with copy of Any(v40, v75);
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSiGMd, &_sSDySSSiGMR);
        OUTLINED_FUNCTION_5_27(v41, v42, v43, v41, v44, v45, v46, v47, v70, v71, v72, v73, v74);
        if (swift_dynamicCast())
        {
          v3 = v74;
          static NetworkAnalytics.netEndpointFromDictionary(_:)(v74);
          OUTLINED_FUNCTION_18_11();
          if (v1)
          {
            [v14 setSuccessfulEndpoint_];
          }
        }
      }
    }

    if (*(v12 + 16))
    {
      v48 = specialized __RawDictionaryStorage.find<A>(_:)(v3 + 1, v71 | 0x8000000000000000);
      if (v49)
      {
        v50 = OUTLINED_FUNCTION_6_23(v48);
        outlined init with copy of Any(v50, v75);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSiGMd, &_sSDySSSiGMR);
        OUTLINED_FUNCTION_5_27(v51, v52, v53, v51, v54, v55, v56, v57, v70, v71, v72, v73, v74);
        if (swift_dynamicCast())
        {
          v3 = v74;
          static NetworkAnalytics.netEndpointFromDictionary(_:)(v74);
          OUTLINED_FUNCTION_18_11();
          if (v1)
          {
            [v14 setPreferredEndpoint_];
          }
        }
      }
    }

    if (*(v12 + 16) && (v58 = specialized __RawDictionaryStorage.find<A>(_:)(0x746E696F70646E65, 0xED0000746E756F43), (v59 & 1) != 0))
    {
      v60 = OUTLINED_FUNCTION_6_23(v58);
      outlined init with copy of Any(v60, v75);

      OUTLINED_FUNCTION_5_27(v61, v62, v63, v64, v65, v66, v67, v68, v70, v71, v72, v73, v74);
      result = swift_dynamicCast();
      if (result)
      {
        if ((v74 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        if (HIDWORD(v74))
        {
          goto LABEL_43;
        }

        [v14 setEndpointCount_];
      }
    }

    else
    {
    }

    v69 = v14;
    MEMORY[0x223DE2240]();
    if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v1 = v76;
LABEL_37:
    v4 += 32;
    if (!--v2)
    {
      return v1;
    }
  }

  if ((v74 & 0x8000000000000000) == 0)
  {
    [v14 setDuration_];
    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

id static NetworkAnalytics.netProxyConfiguration(from:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D58C08]) init];
  if (v2)
  {
    [v2 setIsProxyConfigured_];
    v3 = v2;
    [v3 setUsingConfiguredProxy_];
  }

  return v2;
}

uint64_t static NetworkAnalytics.netHandshakeProtocol(from:)(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v58 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  v3 = a1 + 32;
  v55 = "usingConfiguredProxy";
  v4 = MEMORY[0x277D83B88];
  while (1)
  {
    outlined init with copy of Any(v3, v57);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    OUTLINED_FUNCTION_1_32(v5, v6, v7, v5, v8, v9, v10, v11, v55, v56);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_27:
    v3 += 32;
    if (!--v2)
    {
      return v1;
    }
  }

  v12 = v56;
  v13 = [objc_allocWithZone(MEMORY[0x277D58BD8]) init];
  if (!v13)
  {

    goto LABEL_27;
  }

  v14 = v13;
  if (*(v56 + 16))
  {
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(0x6C6F636F746F7270, 0xE800000000000000);
    if (v16)
    {
      v17 = OUTLINED_FUNCTION_6_23(v15);
      v18 = outlined init with copy of Any(v17, v57);
      OUTLINED_FUNCTION_1_32(v18, v19, v20, v21, v22, v23, v24, v25, v55, v56);
      if (swift_dynamicCast())
      {
        v26 = v4;
        v27 = static NetworkAnalytics.netProtocol(from:)();

        v28 = v27;
        v4 = v26;
        [v14 setProtocol_];
      }
    }
  }

  if (*(v12 + 16))
  {
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(0x6B616853646E6168, 0xEC00000054545265);
    if (v30)
    {
      v31 = OUTLINED_FUNCTION_6_23(v29);
      v32 = outlined init with copy of Any(v31, v57);
      OUTLINED_FUNCTION_1_32(v32, v33, v34, v35, v36, v37, v38, v39, v55, v56);
      if ((swift_dynamicCast() & 1) != 0 && (v56 & 0x8000000000000000) == 0)
      {
        if (v56 >= 0xFFFFFFFF)
        {
          v40 = 0xFFFFFFFFLL;
        }

        else
        {
          v40 = v56;
        }

        [v14 setHandShakeRTT_];
      }
    }
  }

  if (!*(v12 + 16) || (v41 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, v55 | 0x8000000000000000), (v42 & 1) == 0))
  {

    goto LABEL_23;
  }

  v43 = OUTLINED_FUNCTION_6_23(v41);
  outlined init with copy of Any(v43, v57);

  OUTLINED_FUNCTION_1_32(v44, v45, v46, v47, v48, v49, v50, v51, v55, v56);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_23:
    v53 = v14;
    MEMORY[0x223DE2240]();
    OUTLINED_FUNCTION_16_11();
    if (v54)
    {
      OUTLINED_FUNCTION_14_7();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v1 = v58;
    goto LABEL_27;
  }

  if ((v56 & 0x8000000000000000) == 0)
  {
    [v14 setHandShakeDuration_];
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, a4, v8);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

void outlined bridged method (mbnn) of @objc NETSchemaNETError.domain.setter(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = MEMORY[0x223DE2070](a1);

  [a3 *a4];
}

Swift::Void __swiftcall NetworkManager.forceFastDormancy()()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  (*(v2 + 104))(v5, *MEMORY[0x277D851C8], v0);
  v6 = static OS_dispatch_queue.global(qos:)();
  (*(v2 + 8))(v5, v0);
  v7 = _CTServerConnectionCreateOnTargetQueue();

  if (v7)
  {
    v8 = _CTServerForceFastDormancy();
    if (v8)
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
      }

      v9 = type metadata accessor for Logger();
      v10 = OUTLINED_FUNCTION_17(v9, static Logger.siriNetwork);
      v11 = static os_log_type_t.error.getter();
      if (!OUTLINED_FUNCTION_15_1(v11))
      {
        goto LABEL_12;
      }

      v12 = swift_slowAlloc();
      *(OUTLINED_FUNCTION_4_30(v12, 1.5047e-36) + 10) = HIDWORD(v8);
      OUTLINED_FUNCTION_2_35();
      v18 = 14;
    }

    else
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
      }

      v19 = type metadata accessor for Logger();
      v10 = OUTLINED_FUNCTION_17(v19, static Logger.siriNetwork);
      v20 = static os_log_type_t.default.getter();
      if (!OUTLINED_FUNCTION_15_1(v20))
      {
        goto LABEL_12;
      }

      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_2_35();
      v18 = 2;
    }

    _os_log_impl(v13, v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_12();
LABEL_12:

    swift_unknownObjectRelease();
  }
}

void closure #1 in static NetworkManager.acquireDormancySuspendAssertion(_:)()
{
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.siriNetwork);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_223515000, oslog, v1, "NetworkManager - Assertion: Dormancy Suspend Assertion auto expired.", v2, 2u);
    MEMORY[0x223DE38F0](v2, -1, -1);
  }
}

uint64_t *MessageCenterError.errorDomain.unsafeMutableAddressor()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_57(&one-time initialization token for errorDomain);
  }

  return &static MessageCenterError.errorDomain;
}

uint64_t static MessageCenterError.errorDomain.getter()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_57(&one-time initialization token for errorDomain);
  }

  swift_beginAccess();
  v0 = static MessageCenterError.errorDomain;

  return v0;
}

uint64_t static MessageCenterError.errorDomain.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_57(&one-time initialization token for errorDomain);
  }

  swift_beginAccess();
  static MessageCenterError.errorDomain = a1;
  qword_27D08A820 = a2;
}

uint64_t (*static MessageCenterError.errorDomain.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_57(&one-time initialization token for errorDomain);
  }

  swift_beginAccess();
  return static ConnectionConfigurationError.errorDomain.modify;
}

double key path getter for static MessageCenterError.errorDomain : MessageCenterError.Type@<D0>(void *a1@<X8>)
{
  MessageCenterError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = qword_27D08A820;
  *a1 = static MessageCenterError.errorDomain;
  a1[1] = v2;

  return result;
}

uint64_t key path setter for static MessageCenterError.errorDomain : MessageCenterError.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  MessageCenterError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  static MessageCenterError.errorDomain = v2;
  qword_27D08A820 = v1;
}

uint64_t MessageCenterError.errorCode.getter()
{
  result = *(v0 + 8);
  switch(*(v0 + 8))
  {
    case 1:
      result = 200;
      break;
    case 2:
      result = 300;
      break;
    case 3:
      result = 400;
      break;
    case 4:
      result = 401;
      break;
    case 5:
      result = 403;
      break;
    case 6:
      result = 404;
      break;
    case 7:
      result = 406;
      break;
    case 8:
      result = qword_2235F5B18[*v0];
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MessageCenterError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = Dictionary.init(dictionaryLiteral:)();
  if (v2 <= 7 && v1 != 0)
  {
    *&v11 = v1;
    outlined copy of MessageCenterError(v1, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = type metadata accessor for NSError();
    if (swift_dynamicCast())
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      v12 = v5;
      *&v11 = *&v10[0];
      outlined init with take of Any(&v11, v10);
      swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v6, v8);
    }
  }

  return v3;
}

id outlined copy of MessageCenterError(id result, unsigned __int8 a2)
{
  if (a2 <= 7u)
  {
    return result;
  }

  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance MessageCenterError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MessageCenterError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork18MessageCenterErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 8) & 0xF;
  }
}

uint64_t getEnumTagSinglePayload for MessageCenterError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF8 && *(a1 + 9))
    {
      v2 = *a1 + 247;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 8)
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

uint64_t storeEnumTagSinglePayload for MessageCenterError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 8) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
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

uint64_t destructiveInjectEnumTag for MessageCenterError(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    LOBYTE(a2) = 8;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionHandshakeReport(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for ConnectionHandshakeReport(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t NWEndpoint.endpointReport()()
{
  v1 = v0;
  v2 = type metadata accessor for NWEndpoint.Port();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v8 = v7 - v6;
  v9 = type metadata accessor for NWEndpoint.Host();
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_1();
  v15 = v14 - v13;
  v16 = type metadata accessor for NWEndpoint();
  OUTLINED_FUNCTION_0_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_1();
  v22 = v21 - v20;
  (*(v18 + 16))(v21 - v20, v1, v16);
  v23 = OUTLINED_FUNCTION_6_1();
  v25 = v24(v23);
  if (v25 == *MEMORY[0x277CD8B08])
  {
    v26 = OUTLINED_FUNCTION_6_1();
    v27(v26);
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointO4HostO4host_AC4PortV4porttMd, &_s7Network10NWEndpointO4HostO4host_AC4PortV4porttMR) + 48);
    (*(v11 + 32))(v15, v22, v9);
    (*(v4 + 32))(v8, v22 + v28, v2);
    v29 = NWEndpoint.Host.debugDescription.getter();
    NWEndpoint.Port.rawValue.getter();
    (*(v4 + 8))(v8, v2);
    (*(v11 + 8))(v15, v9);
  }

  else
  {
    if (v25 == *MEMORY[0x277CD8B00])
    {
      v30 = OUTLINED_FUNCTION_6_1();
      v31(v30);

      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_SS4typeSS6domain7Network11NWInterfaceVSg9interfacetMd, &_sSS4name_SS4typeSS6domain7Network11NWInterfaceVSg9interfacetMR);
      outlined destroy of ConnectionSnapshotReport?(v22 + *(v32 + 80), &_s7Network11NWInterfaceVSgMd, &_s7Network11NWInterfaceVSgMR);
    }

    else
    {
      v33 = OUTLINED_FUNCTION_6_1();
      v34(v33);
    }

    return 0;
  }

  return v29;
}

uint64_t ConnectionConfiguration.connectionId.getter()
{
  if (v0[51] == 1 || v0[53] == 0)
  {
    v2 = v0[6];
  }

  else
  {
    v2 = v0[52];
  }

  return v2;
}

uint64_t ConnectionConfiguration.connectionId.setter()
{
  OUTLINED_FUNCTION_13_3();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t ConnectionProtocolTechnology.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

void static ConnectionConfiguration.default.getter(uint64_t a2@<X8>)
{
  if (AFIsInternalInstall())
  {
    _AFPreferencesShouldUseTFO();
  }

  *a2 = vdupq_n_s64(1uLL);
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 1;
  *(a2 + 120) = 0;
  *(a2 + 104) = 0;
  *(a2 + 111) = 0;
  *(a2 + 128) = 1;
  OUTLINED_FUNCTION_12_12(vdupq_n_s64(0x4056800000000000uLL), 0);
  *(a2 + 200) = v3;
  *(a2 + 201) = v4;
  *(a2 + 208) = 0x4024000000000000;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0x4000000000000000;
  *(a2 + 232) = 0;
  *(a2 + 240) = 3;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0x4008000000000000;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0x402E000000000000;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 296) = v4;
  *(a2 + 304) = v5;
  *(a2 + 312) = 0;
  *(a2 + 320) = v6;
  *(a2 + 336) = v6;
  *(a2 + 352) = v6;
  *(a2 + 368) = v6;
  *(a2 + 384) = v6;
  *(a2 + 400) = 0;
  *(a2 + 408) = v4;
  *(a2 + 416) = v6;
  *(a2 + 432) = v6;
  *(a2 + 448) = v6;
  *(a2 + 464) = v6;
  *(a2 + 480) = v6;
  *(a2 + 496) = v6;
  *(a2 + 512) = 0;
}

uint64_t ConnectionConfiguration.assistantIdentifier.setter()
{
  OUTLINED_FUNCTION_13_3();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ConnectionConfiguration.peerAssistantIdentifier.setter()
{
  OUTLINED_FUNCTION_13_3();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t (*ConnectionConfiguration.connectionId.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = v1[7];
  a1[2] = v1;
  a1[3] = v3;
  if (v1[51] == 1 || v1[53] == 0)
  {
    v5 = v1[6];

    v6 = v3;
  }

  else
  {
    v5 = v1[52];
  }

  *a1 = v5;
  a1[1] = v6;
  return ConnectionConfiguration.connectionId.modify;
}

uint64_t ConnectionConfiguration.connectionId.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 48) = v3;
    *(v4 + 56) = v2;
  }

  else
  {

    *(v4 + 48) = v3;
    *(v4 + 56) = v2;
  }

  return result;
}

uint64_t ConnectionConfiguration.remoteHost.setter()
{
  OUTLINED_FUNCTION_13_3();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t ConnectionConfiguration.languageCode.setter()
{
  OUTLINED_FUNCTION_13_3();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

void *ConnectionConfiguration.skipPeerErrorReason.getter()
{
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

uint64_t ConnectionConfiguration.timeout.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t ConnectionConfiguration.productTypePrefix.setter()
{
  OUTLINED_FUNCTION_13_3();

  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return result;
}

uint64_t ConnectionConfiguration.peerType.setter()
{
  OUTLINED_FUNCTION_13_3();

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t ConnectionConfiguration.peerVersion.setter()
{
  OUTLINED_FUNCTION_13_3();

  *(v1 + 184) = v2;
  *(v1 + 192) = v0;
  return result;
}

uint64_t ConnectionConfiguration.connectionPolicy.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 320), sizeof(__dst));
  memcpy(a1, (v1 + 320), 0x50uLL);
  return outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(__dst, &v4, &_s11SiriNetwork16ConnectionPolicyVSgMd, &_s11SiriNetwork16ConnectionPolicyVSgMR);
}

void *ConnectionConfiguration.connectionPolicy.setter(const void *a1)
{
  memcpy(v4, (v1 + 320), sizeof(v4));
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v4, &_s11SiriNetwork16ConnectionPolicyVSgMd, &_s11SiriNetwork16ConnectionPolicyVSgMR);
  return memcpy((v1 + 320), a1, 0x50uLL);
}

uint64_t ConnectionConfiguration.connectionPolicyRoute.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 400), 0x72uLL);
  memcpy(a1, (v1 + 400), 0x72uLL);
  return outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(__dst, v4, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
}

void *ConnectionConfiguration.connectionPolicyRoute.setter(const void *a1)
{
  memcpy(__dst, (v1 + 400), 0x72uLL);
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(__dst, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
  return memcpy((v1 + 400), a1, 0x72uLL);
}

unint64_t lazy protocol witness table accessor for type ConnectionProtocolTechnology and conformance ConnectionProtocolTechnology()
{
  result = lazy protocol witness table cache variable for type ConnectionProtocolTechnology and conformance ConnectionProtocolTechnology;
  if (!lazy protocol witness table cache variable for type ConnectionProtocolTechnology and conformance ConnectionProtocolTechnology)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionProtocolTechnology and conformance ConnectionProtocolTechnology);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommunicationProtocolTechnology and conformance CommunicationProtocolTechnology()
{
  result = lazy protocol witness table cache variable for type CommunicationProtocolTechnology and conformance CommunicationProtocolTechnology;
  if (!lazy protocol witness table cache variable for type CommunicationProtocolTechnology and conformance CommunicationProtocolTechnology)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommunicationProtocolTechnology and conformance CommunicationProtocolTechnology);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionConfiguration(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 516))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for ConnectionConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 504) = 0;
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
    *(result + 512) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 516) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 516) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t CommunicationProtocolProtobuf.protobufDelegate.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    ObjectType = swift_getObjectType();
    result = dynamic_cast_existential_1_conditional(v1, ObjectType, &protocol descriptor for CommunicationProtocolDelegateProtobuf);
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t CommunicationProtocolProtobuf.__allocating_init(withDelegate:connectionQueue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  CommunicationProtocolProtobuf.init(withDelegate:connectionQueue:)(a1, a2, a3);
  return v6;
}

uint64_t CommunicationProtocolProtobuf.init(withDelegate:connectionQueue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_1();
  v8 = v7 - v6;
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  v10 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_0_1();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 32) = xmmword_2235EF700;
  *(v3 + 48) = xmmword_2235EF700;
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v8, *MEMORY[0x277D85260], v13);
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

  *(v4 + 64) = v11;
  *(v4 + 72) = xmmword_2235EF700;
  *(v4 + 88) = 0;
  *(v4 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t CommunicationProtocolProtobuf.updateBuffers(forInitialPayload:bufferedLength:forceReconnect:)()
{
  swift_beginAccess();
  v1 = v0[4];
  v2 = v0[5];
  *(v0 + 2) = xmmword_2235EF6F0;
  outlined consume of Data?(v1, v2);
  swift_beginAccess();
  v3 = v0[6];
  v4 = v0[7];
  *(v0 + 3) = xmmword_2235EF6F0;
  return outlined consume of Data?(v3, v4);
}

uint64_t CommunicationProtocolProtobuf.bufferGeneralData(data:)()
{
  swift_beginAccess();
  if (*(v0 + 40) >> 60 != 15)
  {
    OUTLINED_FUNCTION_32();
    Data.append(_:)();
  }

  return swift_endAccess();
}

uint64_t CommunicationProtocolProtobuf.bufferUncompressedData(data:)()
{
  swift_beginAccess();
  if (*(v0 + 56) >> 60 != 15)
  {
    OUTLINED_FUNCTION_32();
    Data.append(_:)();
  }

  return swift_endAccess();
}

uint64_t CommunicationProtocolProtobuf.getBufferedUncompressedDataToWrite()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_37(v2 + 48, a2);
  v3 = *(v2 + 56);
  if (v3 >> 60 != 15)
  {
    v4 = *(v2 + 48);
    switch(v3 >> 62)
    {
      case 1uLL:
        v9 = v4;
        v10 = v4 >> 32;
        goto LABEL_7;
      case 2uLL:
        v9 = *(v4 + 16);
        v10 = *(v4 + 24);
LABEL_7:
        if (v9 == v10)
        {
          return OUTLINED_FUNCTION_32();
        }

        v11 = OUTLINED_FUNCTION_32();
        outlined copy of Data?(v11, v12);
        v6 = *(v2 + 48);
        v5 = *(v2 + 56);
        goto LABEL_10;
      case 3uLL:
        goto LABEL_4;
      default:
        v5 = *(v2 + 56);
        v6 = *(v2 + 48);
        if ((v3 & 0xFF000000000000) != 0)
        {
LABEL_10:
          *(v2 + 48) = xmmword_2235EF6F0;
          outlined consume of Data?(v6, v5);
        }

        else
        {
LABEL_4:
          v7 = OUTLINED_FUNCTION_32();
          outlined consume of Data?(v7, v8);
        }

        break;
    }
  }

  return OUTLINED_FUNCTION_32();
}

uint64_t CommunicationProtocolProtobuf.getBufferedOutputDataToWrite()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_37(v2 + 32, a2);
  v3 = *(v2 + 40);
  if (v3 >> 60 != 15)
  {
    v4 = *(v2 + 32);
    switch(v3 >> 62)
    {
      case 1uLL:
        v9 = v4;
        v10 = v4 >> 32;
        goto LABEL_7;
      case 2uLL:
        v9 = *(v4 + 16);
        v10 = *(v4 + 24);
LABEL_7:
        if (v9 == v10)
        {
          return OUTLINED_FUNCTION_32();
        }

        v11 = OUTLINED_FUNCTION_32();
        outlined copy of Data?(v11, v12);
        v6 = *(v2 + 32);
        v5 = *(v2 + 40);
        goto LABEL_10;
      case 3uLL:
        goto LABEL_4;
      default:
        v5 = *(v2 + 40);
        v6 = *(v2 + 32);
        if ((v3 & 0xFF000000000000) != 0)
        {
LABEL_10:
          *(v2 + 32) = xmmword_2235EF6F0;
          outlined consume of Data?(v6, v5);
        }

        else
        {
LABEL_4:
          v7 = OUTLINED_FUNCTION_32();
          outlined consume of Data?(v7, v8);
        }

        break;
    }
  }

  return OUTLINED_FUNCTION_32();
}

Swift::Void __swiftcall CommunicationProtocolProtobuf.closeConnection(prepareForReconnect:)(Swift::Bool prepareForReconnect)
{
  if (!prepareForReconnect)
  {
    OUTLINED_FUNCTION_2_37(v2 + 32, v1);
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    *(v2 + 32) = xmmword_2235EF700;
    outlined consume of Data?(v3, v4);
  }
}

uint64_t CommunicationProtocolProtobuf.bytesAvailable(_:)()
{
  if (CommunicationProtocolProtobuf.protobufDelegate.getter())
  {
    BackgroundConnection.updateFirstByteReadTime()();
    swift_unknownObjectRelease();
  }

  result = CommunicationProtocolProtobuf.protobufDelegate.getter();
  if (result)
  {
    v1 = OUTLINED_FUNCTION_32();
    BackgroundConnection.didReceiveObject(_:)(v1, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CommunicationProtocolProtobuf.deinit()
{
  outlined destroy of weak ConnectionProviderDelegate?(v0 + 16);
  outlined consume of Data?(*(v0 + 32), *(v0 + 40));
  outlined consume of Data?(*(v0 + 48), *(v0 + 56));

  outlined consume of Data?(*(v0 + 72), *(v0 + 80));

  return v0;
}

uint64_t CommunicationProtocolProtobuf.__deallocating_deinit()
{
  CommunicationProtocolProtobuf.deinit();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t protocol witness for CommunicationProtocol.init(withDelegate:connectionQueue:) in conformance CommunicationProtocolProtobuf@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = CommunicationProtocolProtobuf.__allocating_init(withDelegate:connectionQueue:)(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CommunicationProtocol.safetyNetBuffer.getter in conformance CommunicationProtocolProtobuf()
{
  v1 = *(*v0 + 72);
  outlined copy of Data?(v1, *(*v0 + 80));
  return v1;
}

uint64_t protocol witness for CommunicationProtocol.safetyNetBuffer.setter in conformance CommunicationProtocolProtobuf(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 80);
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  return outlined consume of Data?(v4, v5);
}

Swift::String_optional __swiftcall URL.host(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = MEMORY[0x28211D088](percentEncoded);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t String.init<A>(describing:)()
{
  return MEMORY[0x2821FBCB0]();
}

{
  return MEMORY[0x2821FBCB8]();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}