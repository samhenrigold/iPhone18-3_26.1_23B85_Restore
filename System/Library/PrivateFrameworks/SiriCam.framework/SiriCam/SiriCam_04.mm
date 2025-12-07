uint64_t static AutoSendHandler.validateRequestId(requestId:)@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v21 - v4;
  if (one-time initialization token for autoSend != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.autoSend);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_11();
    v21[1] = v10;
    *v9 = 136315138;
    v11 = OUTLINED_FUNCTION_10_0();
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v13);
    _os_log_impl(&dword_266790000, v7, v8, "Trying to validate requestId: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  OUTLINED_FUNCTION_10_0();
  UUID.init(uuidString:)();
  v14 = type metadata accessor for UUID();
  if (__swift_getEnumTagSinglePayload(v5, 1, v14) != 1)
  {
    return (*(*(v14 - 8) + 32))(a2, v5, v14);
  }

  outlined destroy of UUID?(v5);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  v17 = OUTLINED_FUNCTION_22_0();
  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_7_5();
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_266790000, v15, v16, "Invalid requestId. Generating an unlinked autoSendId to fulfill the runtime request. Skipping request link event logging and using invalid requestId elsewhere. ", v19, 2u);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  return UUID.init()();
}

void static AutoSendHandler.makeAutoSendIdAndLogRequestLink(requestId:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  if (one-time initialization token for autoSend != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.autoSend);
  (*(v6 + 16))(v10, a1, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v29 = a2;
    v14 = swift_slowAlloc();
    v15 = OUTLINED_FUNCTION_11();
    v30 = v15;
    *v14 = 136315138;
    OUTLINED_FUNCTION_1_17();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(v16, v17, MEMORY[0x277CC9628]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = OUTLINED_FUNCTION_10_0();
    v22(v21);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v30);

    *(v14 + 4) = v23;
    _os_log_impl(&dword_266790000, v12, v13, "Trying to log request link event for requestId: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    a2 = v29;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  else
  {

    v24 = OUTLINED_FUNCTION_10_0();
    v25(v24);
  }

  v26 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v28 = [v26 derivedIdentifierForComponent:4 fromSourceIdentifier:isa];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static CamRequestLinkLogger.log(requestId:camId:)(a1, a2);
}

uint64_t AutoSendHandler.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC7SiriCam15AutoSendHandler_siriLocale;
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata completion function for AutoSendHandler(uint64_t a1)
{
  result = type metadata accessor for Locale();
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

uint64_t outlined destroy of AutoSendInput(uint64_t a1)
{
  v2 = type metadata accessor for AutoSendInput(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for AppLaunchTieBreaker(uint64_t a1)
{
  result = type metadata singleton initialization cache for AppLaunchTieBreaker;
  if (!type metadata singleton initialization cache for AppLaunchTieBreaker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AppLaunchTieBreaker(uint64_t a1)
{
  type metadata accessor for ForcedDisambiguation?();
  if (v1 <= 0x3F)
  {
    type metadata accessor for RankedAction(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t specialized ActionProtocol.isAppLaunchActionFor(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2 == 0xD00000000000001ELL && 0x80000002668194E0 == v2[1];
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v6 = specialized ActionProtocol.getAssociatedAppMentioned()(), v7))
  {
    if (v6 == a1 && v7 == a2)
    {
      v9 = 1;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t specialized ActionProtocol.getAssociatedAppMentioned()()
{
  v1 = v0;
  v2 = type metadata accessor for CamParse(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CamUSOParse(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RankedAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for common == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v11 = type metadata accessor for Logger();
    v12 = __swift_project_value_buffer(v11, static Logger.common);
    _s7SiriCam12RankedActionVWOcTm_0(v1, v10, type metadata accessor for RankedAction);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v53 = v8;
      v16 = v15;
      v17 = swift_slowAlloc();
      v55 = v7;
      v18 = v17;
      v56 = v17;
      *v16 = 136315138;
      i = v1;
      v19 = v2;
      v20 = v12;
      v21 = *v10;
      v22 = *(v10 + 8);

      _s7SiriCam0B5ParseOWOhTm_2(v10, type metadata accessor for RankedAction);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v56);

      *(v16 + 4) = v23;
      v12 = v20;
      v2 = v19;
      v1 = i;
      _os_log_impl(&dword_266790000, v13, v14, "Trying to extract app associated with %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      v24 = v18;
      v7 = v55;
      MEMORY[0x26D5DDCD0](v24, -1, -1);
      v25 = v16;
      v8 = v53;
      MEMORY[0x26D5DDCD0](v25, -1, -1);
    }

    else
    {

      _s7SiriCam0B5ParseOWOhTm_2(v10, type metadata accessor for RankedAction);
    }

    _s7SiriCam12RankedActionVWOcTm_0(v1 + *(v8 + 20), v4, type metadata accessor for CamParse);
    if (swift_getEnumCaseMultiPayload())
    {
      break;
    }

    outlined init with take of CamUSOParse(v4, v7, type metadata accessor for CamUSOParse);
    if (!CamUSOParse.getFirstUserDialogActAsTask()())
    {
      v26 = type metadata accessor for CamUSOParse;
      v27 = v7;
      goto LABEL_7;
    }

    v53 = v12;
    v55 = v7;
    v32 = UsoTask.arguments.getter();

    v7 = (v32 + 64);
    v33 = 1 << *(v32 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v10 = v34 & *(v32 + 64);
    v35 = (v33 + 63) >> 6;

    v1 = 0;
    v4 = 0;
    v8 = MEMORY[0x277D84F90];
    for (i = v32; v10; v10 &= v10 - 1)
    {
LABEL_18:
      v58 = *(*(v32 + 56) + ((v1 << 9) | (8 * __clz(__rbit64(v10)))));
      closure #1 in ActionProtocol.getAssociatedAppMentioned()(&v58, &v56);
      v37 = v57;
      if (v57)
      {
        v38 = v56;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v8 = v41;
        }

        v39 = *(v8 + 16);
        v2 = v39 + 1;
        if (v39 >= *(v8 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v8 = v42;
        }

        *(v8 + 16) = v2;
        v40 = v8 + 16 * v39;
        *(v40 + 32) = v38;
        *(v40 + 40) = v37;
        v32 = i;
      }
    }

    while (1)
    {
      v36 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v36 >= v35)
      {

        if (*(v8 + 16))
        {
          v31 = *(v8 + 32);
          v43 = *(v8 + 40);
        }

        else
        {
          v31 = 0;
          v43 = 0;
        }

        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v57 = v43;
          v58 = v47;
          *v46 = 136315138;
          v56 = v31;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v48 = String.init<A>(describing:)();
          v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v58);

          *(v46 + 4) = v50;
          _os_log_impl(&dword_266790000, v44, v45, "Extracted %s", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v47);
          MEMORY[0x26D5DDCD0](v47, -1, -1);
          MEMORY[0x26D5DDCD0](v46, -1, -1);
        }

        else
        {
        }

        _s7SiriCam0B5ParseOWOhTm_2(v55, type metadata accessor for CamUSOParse);
        return v31;
      }

      v10 = *&v7[8 * v36];
      ++v1;
      if (v10)
      {
        v1 = v36;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  v26 = type metadata accessor for CamParse;
  v27 = v4;
LABEL_7:
  _s7SiriCam0B5ParseOWOhTm_2(v27, v26);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_266790000, v28, v29, "No USO values found", v30, 2u);
    MEMORY[0x26D5DDCD0](v30, -1, -1);
  }

  return 0;
}

uint64_t AppLaunchTieBreaker.init(tie:)@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  *a2 = 1025;
  v4 = type metadata accessor for AppLaunchTieBreaker(0);
  outlined init with take of CamUSOParse(a1, a2 + *(v4 + 24), type metadata accessor for RankedAction);
  v5 = type metadata accessor for TopTwo(0);
  return outlined init with take of CamUSOParse(a1 + *(v5 + 20), a2 + *(v4 + 28), type metadata accessor for RankedAction);
}

Swift::Bool __swiftcall AppLaunchTieBreaker.supportedTie()()
{
  type metadata accessor for CamParse(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v1);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CamUSOParse(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RankedAction(0);
  OUTLINED_FUNCTION_0_2();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = type metadata accessor for AppLaunchTieBreaker(0);
  v15 = v0 + *(v14 + 24);
  v16 = static AppLaunchTieBreaker.isEnabledAppShortcut(_:)(v15);
  v17 = v0 + *(v14 + 28);
  v18 = static AppLaunchTieBreaker.isEnabledAppShortcut(_:)(v17);
  if (v16 & 1) != 0 || (v18)
  {
    v20 = (v16 & 1) == 0;
    if (v16)
    {
      v21 = v17;
    }

    else
    {
      v21 = v15;
    }

    if (v20)
    {
      v22 = v17;
    }

    else
    {
      v22 = v15;
    }

    _s7SiriCam12RankedActionVWOcTm_0(v22, v13, type metadata accessor for RankedAction);
    _s7SiriCam12RankedActionVWOcTm_0(v21, v11, type metadata accessor for RankedAction);
    _s7SiriCam12RankedActionVWOcTm_0(&v13[*(v7 + 20)], v3, type metadata accessor for CamParse);
    if (swift_getEnumCaseMultiPayload())
    {
      v23 = type metadata accessor for CamParse;
      v24 = v3;
    }

    else
    {
      outlined init with take of CamUSOParse(v3, v6, type metadata accessor for CamUSOParse);
      v29 = CamUSOParse.appShortcutInvocation.getter();
      if (v30)
      {
        v31 = v29;
        v32 = v30;

        v19 = specialized ActionProtocol.isAppLaunchActionFor(_:)(v31, v32);

        v33 = OUTLINED_FUNCTION_1_18();
        _s7SiriCam0B5ParseOWOhTm_2(v33, v34);
LABEL_19:
        _s7SiriCam0B5ParseOWOhTm_2(v11, type metadata accessor for RankedAction);
        _s7SiriCam0B5ParseOWOhTm_2(v13, type metadata accessor for RankedAction);
        return v19 & 1;
      }

      v24 = OUTLINED_FUNCTION_1_18();
    }

    _s7SiriCam0B5ParseOWOhTm_2(v24, v23);
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.common);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_266790000, v26, v27, "Could not extract App Shortcut bundle ID", v28, 2u);
      MEMORY[0x26D5DDCD0](v28, -1, -1);
    }

    v19 = 0;
    goto LABEL_19;
  }

  v19 = 0;
  return v19 & 1;
}

void *static AppLaunchTieBreaker.isEnabledAppShortcut(_:)(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for RankedAction(0) + 44));
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_2_14();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = [*(*(v1 + 56) + 8 * v2) int64Value];
  result = specialized Dictionary.subscript.getter();
  if (result)
  {
    v6 = result;
    v7 = [result int64Value];

    if (v7)
    {
      v8 = v4 == 0;
    }

    else
    {
      v8 = 1;
    }

    return !v8;
  }

  return result;
}

uint64_t AppLaunchTieBreaker.actionBoost(features:loggingId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a1 + 16) && (v6 = OUTLINED_FUNCTION_2_14(), (v7 & 1) != 0) && (v8 = *(*(a1 + 56) + 8 * v6), v9 = [v8 int64Value], v8, v9))
  {
    v10 = 0xED00007475637472;
    v11 = 0x6F68537070417349;
    v12 = 0x3F947AE147AE147BLL;
  }

  else
  {
    v10 = 0x800000026681B3C0;
    v11 = 0xD000000000000015;
    v12 = 0;
  }

  v13 = *(type metadata accessor for ScoreBoost(0) + 24);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_2();
  result = (*(v14 + 16))(a3 + v13, a2);
  *a3 = v12;
  a3[1] = v11;
  a3[2] = v10;
  return result;
}

uint64_t _s7SiriCam12RankedActionVWOcTm_0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t _s7SiriCam0B5ParseOWOhTm_2(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(a1);
  return a1;
}

void CamResponseStatusCode.init(fromError:)(uint64_t *__return_ptr a1@<X8>, id a2@<X0>)
{
  v158 = a2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (OUTLINED_FUNCTION_0_17(v5, v6, v7, &type metadata for CamModelVersionError, v8, v9))
  {
    if (v157)
    {
      if (v157 == 1)
      {
        OUTLINED_FUNCTION_2_15(v156, *(&v156 + 1), 1u, v10, v11, v12, v13, v14, v139, v147, v156, *(&v156 + 1), v157, v158);
        v15 = 3;
      }

      else
      {
        OUTLINED_FUNCTION_2_15(v156, *(&v156 + 1), 2u, v10, v11, v12, v13, v14, v139, v147, v156, *(&v156 + 1), v157, v158);
        v15 = 4;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2_15(v156, *(&v156 + 1), 0, v10, v11, v12, v13, v14, v139, v147, v156, *(&v156 + 1), v157, v158);
      v15 = 2;
    }
  }

  else
  {

    v24 = OUTLINED_FUNCTION_1_19(v16, v17, v18, v19, v20, v21, v22, v23, v139, v147, v156, *(&v156 + 1), v157, v158);
    if (OUTLINED_FUNCTION_0_17(v24, v25, v26, &type metadata for ModelError, v27, v28))
    {
      if (v157)
      {
        if (v157 == 1)
        {
          outlined consume of ModelError(v156, *(&v156 + 1), 1u);

          v15 = 8;
        }

        else
        {

          if (v156 == 0)
          {
            v15 = 5;
          }

          else
          {
            v15 = 6;
          }
        }
      }

      else
      {
        outlined consume of ModelError(v156, *(&v156 + 1), 0);

        v15 = 7;
      }
    }

    else
    {

      v37 = OUTLINED_FUNCTION_1_19(v29, v30, v31, v32, v33, v34, v35, v36, v140, v148, v156, *(&v156 + 1), v157, v158);
      if (OUTLINED_FUNCTION_0_17(v37, v38, v39, &type metadata for FeatureDictionaryError, v40, v41))
      {

        v15 = 9;
      }

      else
      {

        v50 = OUTLINED_FUNCTION_1_19(v42, v43, v44, v45, v46, v47, v48, v49, v141, v149, v156, *(&v156 + 1), v157, v158);
        if (OUTLINED_FUNCTION_0_17(v50, v51, v52, &type metadata for CoreMLError, v53, v54))
        {
          if (v157)
          {
            if (v157 == 1)
            {
              OUTLINED_FUNCTION_2_15(v156, *(&v156 + 1), 1u, v55, v56, v57, v58, v59, v142, v150, v156, *(&v156 + 1), v157, v158);
              v15 = 11;
            }

            else
            {
              OUTLINED_FUNCTION_2_15(v156, *(&v156 + 1), 2u, v55, v56, v57, v58, v59, v142, v150, v156, *(&v156 + 1), v157, v158);
              v15 = 12;
            }
          }

          else
          {
            OUTLINED_FUNCTION_2_15(v156, *(&v156 + 1), 0, v55, v56, v57, v58, v59, v142, v150, v156, *(&v156 + 1), v157, v158);
            v15 = 10;
          }
        }

        else
        {

          v85 = OUTLINED_FUNCTION_1_19(v77, v78, v79, v80, v81, v82, v83, v84, v142, v150, v156, *(&v156 + 1), v157, v158);
          if (OUTLINED_FUNCTION_0_17(v85, v86, v87, &type metadata for WordEmbeddingFeatureExtractorError, v88, v89))
          {
            switch(v157)
            {
              case 1:
                OUTLINED_FUNCTION_2_15(v156, *(&v156 + 1), 1u, v90, v91, v92, v93, v94, v143, v152, v156, *(&v156 + 1), v157, v158);
                v15 = 14;
                break;
              case 2:
                OUTLINED_FUNCTION_2_15(v156, *(&v156 + 1), 2u, v90, v91, v92, v93, v94, v143, v152, v156, *(&v156 + 1), v157, v158);
                v15 = 15;
                break;
              case 3:

                if (v156 == 0)
                {
                  v15 = 17;
                }

                else
                {
                  v15 = 18;
                }

                break;
              default:
                OUTLINED_FUNCTION_2_15(v156, *(&v156 + 1), 0, v90, v91, v92, v93, v94, v143, v152, v156, *(&v156 + 1), v157, v158);
                v15 = 13;
                break;
            }
          }

          else
          {

            v103 = OUTLINED_FUNCTION_1_19(v95, v96, v97, v98, v99, v100, v101, v102, v143, v152, v156, *(&v156 + 1), v157, v158);
            if (OUTLINED_FUNCTION_0_17(v103, v104, v105, &type metadata for TopRecogntionFeatureExtractorError, v106, v107))
            {

              v15 = 29;
            }

            else
            {

              v116 = OUTLINED_FUNCTION_1_19(v108, v109, v110, v111, v112, v113, v114, v115, v144, v153, v156, *(&v156 + 1), v157, v158);
              if (OUTLINED_FUNCTION_0_17(v116, v117, v118, &type metadata for CamError, v119, v120))
              {
                switch(v157)
                {
                  case 1:
                    outlined consume of CamError(v156, *(&v156 + 1), 1u);

                    v15 = 20;
                    break;
                  case 2:
                    outlined consume of CamError(v156, *(&v156 + 1), 2u);

                    v15 = 21;
                    break;
                  case 3:
                    outlined consume of CamError(v156, *(&v156 + 1), 3u);

                    v15 = 22;
                    break;
                  case 4:
                    outlined consume of CamError(v156, *(&v156 + 1), 4u);
                    goto LABEL_46;
                  default:
                    outlined consume of CamError(v156, *(&v156 + 1), 0);

                    v15 = 19;
                    break;
                }
              }

              else
              {

                v129 = OUTLINED_FUNCTION_1_19(v121, v122, v123, v124, v125, v126, v127, v128, v145, v154, v156, *(&v156 + 1), v157, v158);
                if (OUTLINED_FUNCTION_0_17(v129, v130, v131, &type metadata for AutoConfirmError, v132, v133))
                {
                  switch(v157)
                  {
                    case 1:
                      OUTLINED_FUNCTION_3_14(v156, *(&v156 + 1), 1u, v134, v135, v136, v137, v138, v146, v155, v156, *(&v156 + 1), v157, v158);
                      v15 = 24;
                      break;
                    case 2:
                      OUTLINED_FUNCTION_3_14(v156, *(&v156 + 1), 2u, v134, v135, v136, v137, v138, v146, v155, v156, *(&v156 + 1), v157, v158);
                      v15 = 25;
                      break;
                    case 3:
                      OUTLINED_FUNCTION_3_14(v156, *(&v156 + 1), 3u, v134, v135, v136, v137, v138, v146, v155, v156, *(&v156 + 1), v157, v158);
                      v15 = 26;
                      break;
                    case 4:
                      OUTLINED_FUNCTION_3_14(v156, *(&v156 + 1), 4u, v134, v135, v136, v137, v138, v146, v155, v156, *(&v156 + 1), v157, v158);
                      v15 = 27;
                      break;
                    case 5:
                      OUTLINED_FUNCTION_3_14(v156, *(&v156 + 1), 5u, v134, v135, v136, v137, v138, v146, v155, v156, *(&v156 + 1), v157, v158);
                      v15 = 28;
                      break;
                    default:
                      OUTLINED_FUNCTION_3_14(v156, *(&v156 + 1), 0, v134, v135, v136, v137, v138, v146, v155, v156, *(&v156 + 1), v157, v158);
                      v15 = 23;
                      break;
                  }
                }

                else
                {
LABEL_46:

                  v15 = 1;
                }
              }
            }
          }
        }
      }
    }
  }

  v60 = dispatch thunk of CustomStringConvertible.description.getter();
  v62 = v61;
  *&v156 = a2;
  v63 = a2;
  v64 = String.init<A>(reflecting:)();
  v66 = v65;
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  __swift_project_value_buffer(v67, static Logger.common);

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v68, v69))
  {
    v151 = a2;
    v70 = v15;
    v71 = a1;
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *&v156 = v73;
    *v72 = 136315394;
    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &v156);

    *(v72 + 4) = v74;
    *(v72 + 12) = 2080;
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &v156);

    *(v72 + 14) = v75;
    _os_log_impl(&dword_266790000, v68, v69, "CamResponseStatusCode %s used for error %s", v72, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v73, -1, -1);
    v76 = v72;
    a1 = v71;
    v15 = v70;
    MEMORY[0x26D5DDCD0](v76, -1, -1);
  }

  else
  {
  }

  *a1 = v15;
}

SiriCam::CamResponseStatusCode_optional __swiftcall CamResponseStatusCode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 12;
  switch(rawValue)
  {
    case 1000:
      v2 = 2;
      break;
    case 1001:
      v2 = 3;
      break;
    case 1002:
      v2 = 4;
      break;
    case 1003:
    case 1004:
    case 1005:
    case 1006:
    case 1007:
    case 1008:
    case 1009:
    case 1014:
    case 1015:
    case 1016:
    case 1017:
    case 1018:
    case 1019:
    case 1021:
    case 1022:
    case 1023:
    case 1024:
    case 1025:
    case 1026:
    case 1027:
    case 1028:
    case 1029:
    case 1033:
    case 1034:
    case 1035:
    case 1036:
    case 1037:
    case 1038:
    case 1039:
    case 1046:
    case 1047:
    case 1048:
    case 1049:
    case 1054:
    case 1055:
    case 1056:
    case 1057:
    case 1058:
    case 1059:
      goto LABEL_7;
    case 1010:
      v2 = 5;
      break;
    case 1011:
      v2 = 6;
      break;
    case 1012:
      v2 = 7;
      break;
    case 1013:
      v2 = 8;
      break;
    case 1020:
      v2 = 9;
      break;
    case 1030:
      v2 = 10;
      break;
    case 1031:
      v2 = 11;
      break;
    case 1032:
      break;
    case 1040:
      v2 = 13;
      break;
    case 1041:
      v2 = 14;
      break;
    case 1042:
      v2 = 15;
      break;
    case 1043:
      v2 = 16;
      break;
    case 1044:
      v2 = 17;
      break;
    case 1045:
      v2 = 18;
      break;
    case 1050:
      v2 = 19;
      break;
    case 1051:
      v2 = 20;
      break;
    case 1052:
      v2 = 21;
      break;
    case 1053:
      v2 = 22;
      break;
    case 1060:
      v2 = 23;
      break;
    case 1061:
      v2 = 24;
      break;
    case 1062:
      v2 = 25;
      break;
    case 1063:
      v2 = 26;
      break;
    case 1064:
      v2 = 27;
      break;
    case 1065:
      v2 = 28;
      break;
    default:
      switch(rawValue)
      {
        case 200:
          v2 = 0;
          break;
        case 1070:
          v2 = 29;
          break;
        case 500:
          v2 = 1;
          break;
        default:
LABEL_7:
          v2 = 30;
          break;
      }

      break;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type CamResponseStatusCode and conformance CamResponseStatusCode()
{
  result = lazy protocol witness table cache variable for type CamResponseStatusCode and conformance CamResponseStatusCode;
  if (!lazy protocol witness table cache variable for type CamResponseStatusCode and conformance CamResponseStatusCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamResponseStatusCode and conformance CamResponseStatusCode);
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CamResponseStatusCode@<X0>(uint64_t *a1@<X8>)
{
  result = CamResponseStatusCode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CamResponseStatusCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE3)
  {
    if (a2 + 29 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 29) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 30;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v5 = v6 - 30;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CamResponseStatusCode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE2)
  {
    v6 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
          *result = a2 + 29;
        }

        break;
    }
  }

  return result;
}

uint64_t outlined consume of AutoConfirmError(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t outlined consume of CamError(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t outlined consume of ModelError(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t one-time initialization function for savedLocale()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, static AssetProvider.savedLocale);
  __swift_project_value_buffer(v0, static AssetProvider.savedLocale);
  static EnvironmentUtilities.currentSiriLocale.getter();
  v7[4] = Locale.identifier.getter();
  v7[5] = v5;
  v7[2] = 45;
  v7[3] = 0xE100000000000000;
  v7[0] = 95;
  v7[1] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  Locale.init(identifier:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t static AssetProvider.defaultModel(for:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for defaultModelMetadata != -1)
  {
    swift_once();
  }

  v10 = specialized Dictionary.subscript.getter();
  if (!v10)
  {
    v10 = Dictionary.init(dictionaryLiteral:)();
  }

  v11 = v10;
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.common);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v26);
    *(v15 + 12) = 2080;
    v16 = Dictionary.description.getter();
    v23 = v14;
    v24 = v11;
    v18 = v13;
    v19 = a1;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v26);
    v5 = v4;

    *(v15 + 14) = v20;
    a1 = v19;
    v21 = v18;
    v11 = v24;
    _os_log_impl(&dword_266790000, v21, v23, "%s: Using default metadata %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v25, -1, -1);
    MEMORY[0x26D5DDCD0](v15, -1, -1);
  }

  else
  {
  }

  static AssetProvider.defaultModelUrl(for:)(a3, a4, a1);
  if (!v5)
  {
    type metadata accessor for AssetMetadataProvider();
    static AssetMetadataProvider.parseAssetMetadata(modelName:metadata:)(a3, a4, v11, a2);
  }
}

unint64_t lazy protocol witness table accessor for type ModelError and conformance ModelError()
{
  result = lazy protocol witness table cache variable for type ModelError and conformance ModelError;
  if (!lazy protocol witness table cache variable for type ModelError and conformance ModelError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelError and conformance ModelError);
  }

  return result;
}

id outlined bridged method (mnbnn) of @objc UAFAssetSetManager.retrieveAssetSet(_:usages:)(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [a3 retrieveAssetSet:a1 usages:isa];

  return v6;
}

void UncertaintyPromptSequentialEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *(a5 + 16);
  v12 = (a5 + 32);
  if (v11)
  {
    while (1)
    {
      v13 = v12[3];
      v14 = v12[4];
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v14 + 8))(v23, a1, a2, a3, a4, v13, v14);
      v15 = v24;
      if (v24)
      {
        break;
      }

      v12 += 5;
      if (!--v11)
      {
        goto LABEL_4;
      }
    }

    v16 = v23[1];
    v17 = LOBYTE(v23[0]);
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_1_20(&one-time initialization token for ambiguityHandling);
    }

    v18 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v18, static Logger.ambiguityHandling);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_23();
      v22 = OUTLINED_FUNCTION_11();
      v23[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v23);
      _os_log_impl(&dword_266790000, v19, v20, "%s has overridden", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_3_1();
    }

    *a6 = v17;
    a6[1] = v16;
    a6[2] = v15;
  }

  else
  {
LABEL_4:
    OUTLINED_FUNCTION_3_13();
  }
}

void GiveUpRepeatActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = OUTLINED_FUNCTION_43_1();
  if (*(a3 + *(type metadata accessor for CamInput(v8) + 36)) == 2 && *(a2 + 56) == 2)
  {
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_1_20(&one-time initialization token for ambiguityHandling);
    }

    v9 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v9, static Logger.ambiguityHandling);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_34(v11))
    {
      OUTLINED_FUNCTION_23();
      v12 = OUTLINED_FUNCTION_30_4();
      v21 = v12;
      *v4 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam26GiveUpRepeatActionEnforcerVmMd, &_s7SiriCam26GiveUpRepeatActionEnforcerVmMR);
      v13 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v21);
      OUTLINED_FUNCTION_70();
      *(v4 + 4) = v5;
      OUTLINED_FUNCTION_25_5(&dword_266790000, v15, v16, "%s detected previous ASK_REPEAT and about to ASK_REPEAT again - overriding to GIVE_UP_REPEAT");
      __swift_destroy_boxed_opaque_existential_0(v12);
      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_0_8();
    }

    v21 = &type metadata for GiveUpRepeatActionEnforcer;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam26GiveUpRepeatActionEnforcerVmMd, &_s7SiriCam26GiveUpRepeatActionEnforcerVmMR);
    v19 = OUTLINED_FUNCTION_47_1(v17, v18);
    *v3 = 3;
    v3[1] = v19;
    v3[2] = v20;
  }

  else
  {
    OUTLINED_FUNCTION_3_13();
  }
}

void ExecuteActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_43_1();
  if (*(a3 + *(type metadata accessor for CamInput(v7) + 36)) == 3 && *(a2 + 56) == 2)
  {
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_1_20(&one-time initialization token for ambiguityHandling);
    }

    v8 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v8, static Logger.ambiguityHandling);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_34(v10))
    {
      OUTLINED_FUNCTION_23();
      v11 = OUTLINED_FUNCTION_30_4();
      v20 = v11;
      *v3 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam21ExecuteActionEnforcerVmMd, &_s7SiriCam21ExecuteActionEnforcerVmMR);
      v12 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v20);
      OUTLINED_FUNCTION_70();
      *(v3 + 4) = v4;
      OUTLINED_FUNCTION_25_5(&dword_266790000, v14, v15, "%s detected previous GIVE_UP_REPEAT and about to ASK_REPEAT - overriding to EXECUTE_TOP_HYPOTHESIS");
      __swift_destroy_boxed_opaque_existential_0(v11);
      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_0_8();
    }

    v20 = &type metadata for ExecuteActionEnforcer;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam21ExecuteActionEnforcerVmMd, &_s7SiriCam21ExecuteActionEnforcerVmMR);
    v18 = OUTLINED_FUNCTION_47_1(v16, v17);
    OUTLINED_FUNCTION_40_1(v18, v19);
  }

  else
  {
    OUTLINED_FUNCTION_3_13();
  }
}

uint64_t SiriVocabActionEnforcer.getTaskDetailsFromRankedAction(rankedActions:)(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier.NluComponent();
  v55 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v46 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v58 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x28223BE20](v11);
  v52 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v50 = *(v13 - 8);
  v51 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v46 - v17;
  v57 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v59 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CamParse(0);
  MEMORY[0x28223BE20](v20);
  v22 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CamUSOParse(0);
  MEMORY[0x28223BE20](v23 - 8);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v49 = v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for RankedAction(0);
  _s7SiriCam0B5ParseOWOcTm_1(a1 + *(v25 + 20) + ((*(*(v25 - 8) + 80) + 32) & ~*(*(v25 - 8) + 80)), v22, type metadata accessor for CamParse);
  if (swift_getEnumCaseMultiPayload())
  {
    v26 = type metadata accessor for CamParse;
    v27 = v22;
LABEL_4:
    _s7SiriCam12RankedActionVWOhTm_1(v27, v26);
    return 0;
  }

  v29 = v49;
  v30 = outlined init with take of RankedAction(v22, v49, type metadata accessor for CamUSOParse);
  v31 = MEMORY[0x26D5DC620](v30);
  specialized Collection.first.getter(v31);

  v32 = v57;
  if (__swift_getEnumTagSinglePayload(v18, 1, v57) == 1)
  {
    _s7SiriCam12RankedActionVWOhTm_1(v29, type metadata accessor for CamUSOParse);
    outlined destroy of (CamLogOutput, CamModelMetadata)(v18, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    return 0;
  }

  v33 = v59;
  (*(v59 + 32))(v56, v18, v32);
  v34 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (!specialized Array.count.getter())
  {

    (*(v33 + 8))(v56, v57);
    v26 = type metadata accessor for CamUSOParse;
    v27 = v49;
    goto LABEL_4;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  v47 = v7;
  v48 = v5;
  if ((v34 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v46[0] = MEMORY[0x26D5DD230](0, v34);
  }

  else
  {
    v46[0] = *(v34 + 32);
  }

  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  v35 = v52;
  Siri_Nlu_External_UserStatedTask.task.getter();
  (v50[1])(v15, v51);
  v36 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  (*(v53 + 8))(v35, v54);
  v37 = 0;
  v38 = *(v36 + 16);
  v53 = v9 + 16;
  v54 = v38;
  LODWORD(v52) = *MEMORY[0x277D5DD48];
  v50 = (v55 + 104);
  v51 = v36;
  v55 += 8;
  v46[1] = v9 + 8;
  while (v54 != v37)
  {
    if (v37 >= *(v36 + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    v34 = v58;
    (*(v9 + 16))(v58, v36 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v37++, v8);
    v39 = v9;
    v40 = v8;
    v41 = v47;
    Siri_Nlu_External_UsoEntityIdentifier.sourceComponent.getter();
    v42 = v48;
    (*v50)(v48, v52, v2);
    lazy protocol witness table accessor for type Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent and conformance Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoEntityIdentifier.NluComponent and conformance Siri_Nlu_External_UsoEntityIdentifier.NluComponent, MEMORY[0x277D5DD50]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v15 = v55;
    v43 = *v55;
    v44 = v42;
    v33 = v59;
    (*v55)(v44, v2);
    v45 = v41;
    v8 = v40;
    v9 = v39;
    v43(v45, v2);
    v36 = v51;
    (*(v39 + 8))(v34, v8);
    if (v61 == v60)
    {
      break;
    }
  }

  (*(v33 + 8))(v56, v57);
  _s7SiriCam12RankedActionVWOhTm_1(v49, type metadata accessor for CamUSOParse);
  return v46[0];
}

uint64_t SiriVocabActionEnforcer.getTaskDetailsFromUserParse(topUserParse:)(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent();
  v54 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v55 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSg_AFtMR);
  MEMORY[0x28223BE20](v56);
  v5 = v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v57 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v42 - v10;
  MEMORY[0x28223BE20](v9);
  v58 = v42 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B9UserParseOSgMd, &_s7SiriCam0B9UserParseOSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v42 - v14;
  v16 = type metadata accessor for CamUserParse(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = v42 - v20;
  outlined init with copy of (CamLogOutput, CamModelMetadata)(a1, v15, &_s7SiriCam0B9UserParseOSgMd, &_s7SiriCam0B9UserParseOSgMR);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
  {
    outlined init with take of RankedAction(v15, v21, type metadata accessor for CamUserParse);
    _s7SiriCam0B5ParseOWOcTm_1(v21, v19, type metadata accessor for CamUserParse);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s7SiriCam12RankedActionVWOhTm_1(v21, type metadata accessor for CamUserParse);
      v22 = v19;
LABEL_9:
      _s7SiriCam12RankedActionVWOhTm_1(v22, type metadata accessor for CamUserParse);
      return 0;
    }

    v23 = *v19;

    v24 = [v23 userDialogActs];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SIRINLUUserDialogAct_pMd, &_sSo20SIRINLUUserDialogAct_pMR);
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (specialized Array.count.getter())
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
      if ((v25 & 0xC000000000000001) != 0)
      {
        goto LABEL_39;
      }

      v26 = *(v25 + 32);
      swift_unknownObjectRetain();
LABEL_8:
      v27 = v56;

      v29 = static UsoConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
      if (specialized Array.count.getter())
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
        if ((v29 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x26D5DD230](0, v29);
        }

        else
        {
          v44 = *(v29 + 32);
        }

        objc_opt_self();
        v30 = swift_dynamicCastObjCClass();
        if (!v30)
        {

          swift_unknownObjectRelease();
          v22 = v21;
          goto LABEL_9;
        }

        v42[1] = v26;
        v43 = v23;
        v31 = [v30 task];
        v23 = [v31 identifiers];

        type metadata accessor for USOSerializedIdentifier();
        v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v32 = specialized Array.count.getter();
        v52 = v25;
        v53 = v32;
        v33 = 0;
        v50 = v25 & 0xFFFFFFFFFFFFFF8;
        v51 = v25 & 0xC000000000000001;
        v49 = *MEMORY[0x277D5E438];
        v45 = (v54 + 32);
        v47 = (v54 + 8);
        v48 = v54 + 104;
        while (1)
        {
          if (v53 == v33)
          {
            goto LABEL_36;
          }

          if (v51)
          {
            v34 = MEMORY[0x26D5DD230](v33, v52);
          }

          else
          {
            if (v33 >= *(v50 + 16))
            {
              goto LABEL_38;
            }

            v34 = *(v52 + 8 * v33 + 32);
          }

          if (__OFADD__(v33, 1))
          {
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            v26 = MEMORY[0x26D5DD230](0, v25);
            goto LABEL_8;
          }

          v54 = v34;
          v35 = [v34 sourceComponent];
          if (v35)
          {
            v36 = v35;
            v59 = 0;
            v60 = 1;
            static Int._conditionallyBridgeFromObjectiveC(_:result:)();
          }

          v37 = v58;
          Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent.init(rawValue:)();
          (*v48)(v11, v49, v2);
          __swift_storeEnumTagSinglePayload(v11, 0, 1, v2);
          v23 = *(v27 + 48);
          v25 = &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR;
          outlined init with copy of (CamLogOutput, CamModelMetadata)(v37, v5, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);
          outlined init with copy of (CamLogOutput, CamModelMetadata)(v11, v23 + v5, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);
          if (__swift_getEnumTagSinglePayload(v5, 1, v2) == 1)
          {
            break;
          }

          v38 = v57;
          outlined init with copy of (CamLogOutput, CamModelMetadata)(v5, v57, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);
          if (__swift_getEnumTagSinglePayload(v23 + v5, 1, v2) == 1)
          {
            outlined destroy of (CamLogOutput, CamModelMetadata)(v11, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);
            outlined destroy of (CamLogOutput, CamModelMetadata)(v58, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);
            (*v47)(v38, v2);
LABEL_30:
            outlined destroy of (CamLogOutput, CamModelMetadata)(v5, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSg_AFtMR);

            goto LABEL_32;
          }

          v39 = v55;
          (*v45)(v55, v23 + v5, v2);
          lazy protocol witness table accessor for type Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent and conformance Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent(&lazy protocol witness table cache variable for type Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent and conformance Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent, MEMORY[0x277D5E440]);
          v46 = dispatch thunk of static Equatable.== infix(_:_:)();
          v23 = v47;
          v40 = *v47;
          v41 = v39;
          v27 = v56;
          (*v47)(v41, v2);
          outlined destroy of (CamLogOutput, CamModelMetadata)(v11, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);
          outlined destroy of (CamLogOutput, CamModelMetadata)(v58, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);
          v40(v57, v2);
          outlined destroy of (CamLogOutput, CamModelMetadata)(v5, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);

          if (v46)
          {
            goto LABEL_36;
          }

LABEL_32:
          ++v33;
        }

        outlined destroy of (CamLogOutput, CamModelMetadata)(v11, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);
        outlined destroy of (CamLogOutput, CamModelMetadata)(v37, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);
        if (__swift_getEnumTagSinglePayload(v23 + v5, 1, v2) == 1)
        {
          outlined destroy of (CamLogOutput, CamModelMetadata)(v5, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);

LABEL_36:
          swift_unknownObjectRelease();

          _s7SiriCam12RankedActionVWOhTm_1(v21, type metadata accessor for CamUserParse);
          return v44;
        }

        goto LABEL_30;
      }

      _s7SiriCam12RankedActionVWOhTm_1(v21, type metadata accessor for CamUserParse);

      swift_unknownObjectRelease();
    }

    else
    {
      _s7SiriCam12RankedActionVWOhTm_1(v21, type metadata accessor for CamUserParse);
    }

    return 0;
  }

  outlined destroy of (CamLogOutput, CamModelMetadata)(v15, &_s7SiriCam0B9UserParseOSgMd, &_s7SiriCam0B9UserParseOSgMR);
  return 0;
}

void SiriVocabActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)()
{
  OUTLINED_FUNCTION_44_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B9UserParseOSgMd, &_s7SiriCam0B9UserParseOSgMR);
  OUTLINED_FUNCTION_14(v4);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_28_5();
  v6 = type metadata accessor for CamInput(0);
  v7 = OUTLINED_FUNCTION_39_1(v6);
  if (v8)
  {
    if (!SiriVocabActionEnforcer.getTaskDetailsFromRankedAction(rankedActions:)(v7))
    {
      goto LABEL_44;
    }

    v10 = v9;
  }

  else
  {
    CamInput.topUserParse.getter(v0);
    v11 = SiriVocabActionEnforcer.getTaskDetailsFromUserParse(topUserParse:)(v0);
    v10 = v12;
    outlined destroy of (CamLogOutput, CamModelMetadata)(v0, &_s7SiriCam0B9UserParseOSgMd, &_s7SiriCam0B9UserParseOSgMR);
    if (!v11)
    {
      goto LABEL_44;
    }
  }

  if (*(UsoTask.arguments.getter() + 16))
  {
    v13 = OUTLINED_FUNCTION_27_2();
    specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
    v16 = v15;
  }

  else
  {

    v16 = 0;
  }

  v17 = UsoTask.verbString.getter();
  if (v17 == 1684956531 && v18 == 0xE400000000000000)
  {
  }

  else
  {
    OUTLINED_FUNCTION_65(v17, v18);
    OUTLINED_FUNCTION_69();
  }

  if (UsoTask.baseEntityAsString.getter() != 0x4D5F6E6F6D6D6F63 || v20 != 0xEE00656761737365)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_69();
    if (v16 & 1) != 0 && (v10)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  if ((v16 & v10 & 1) == 0)
  {
LABEL_26:
    if (UsoTask.verbString.getter() == 1819042147 && v29 == 0xE400000000000000)
    {
    }

    else
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_69();
    }

    if (UsoTask.baseEntityAsString.getter() == 0xD000000000000010 && 0x800000026681B440 == v31)
    {

      if (v16 & v10)
      {
        if (one-time initialization token for ambiguityHandling != -1)
        {
          OUTLINED_FUNCTION_1_20(&one-time initialization token for ambiguityHandling);
        }

        v33 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_26(v33, static Logger.ambiguityHandling);
        v23 = Logger.logObject.getter();
        v34 = static os_log_type_t.info.getter();
        if (OUTLINED_FUNCTION_10(v34))
        {
          v35 = OUTLINED_FUNCTION_23();
          v45 = OUTLINED_FUNCTION_11();
          *v35 = 136315138;
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0A19VocabActionEnforcerVmMd, &_s7SiriCam0A19VocabActionEnforcerVmMR);
          v37 = OUTLINED_FUNCTION_48_1(v36);
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v45);
          OUTLINED_FUNCTION_68();
          *(v35 + 4) = v1;
          OUTLINED_FUNCTION_61_0(&dword_266790000, v39, v40, "%s detected phone call request with contact name");
          OUTLINED_FUNCTION_26_3();
          OUTLINED_FUNCTION_23_6();
        }

        goto LABEL_41;
      }
    }

    else
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_69();
    }

LABEL_44:
    OUTLINED_FUNCTION_3_13();
    goto LABEL_45;
  }

LABEL_20:
  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_1_20(&one-time initialization token for ambiguityHandling);
  }

  v22 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_26(v22, static Logger.ambiguityHandling);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_10(v24))
  {
    OUTLINED_FUNCTION_23();
    v25 = OUTLINED_FUNCTION_30_4();
    *v10 = 136315138;
    v45 = v25;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0A19VocabActionEnforcerVmMd, &_s7SiriCam0A19VocabActionEnforcerVmMR);
    v27 = OUTLINED_FUNCTION_48_1(v26);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v45);
    OUTLINED_FUNCTION_68();
    *(v10 + 4) = v1;
    _os_log_impl(&dword_266790000, v23, v24, "%s detected message sending request with contact name", v10, 0xCu);
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_0_8();
  }

LABEL_41:

  v45 = &type metadata for SiriVocabActionEnforcer;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0A19VocabActionEnforcerVmMd, &_s7SiriCam0A19VocabActionEnforcerVmMR);
  v42 = OUTLINED_FUNCTION_49_1(v41);
  v44 = v43;

  *v3 = 1;
  v3[1] = v42;
  v3[2] = v44;
LABEL_45:
  OUTLINED_FUNCTION_45_0();
}

void MessageDictationActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)()
{
  OUTLINED_FUNCTION_44_1();
  v111 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B9UserParseOSgMd, &_s7SiriCam0B9UserParseOSgMR);
  OUTLINED_FUNCTION_14(v2);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v105 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_14(v12);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v13);
  v108 = &v105 - v14;
  OUTLINED_FUNCTION_21_4();
  v110 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_22();
  v107 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_2();
  v106 = v17;
  v18 = OUTLINED_FUNCTION_21_4();
  type metadata accessor for CamParse(v18);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_0();
  v22 = v21 - v20;
  v23 = type metadata accessor for CamUSOParse(0);
  v24 = OUTLINED_FUNCTION_14(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_2();
  v109 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  OUTLINED_FUNCTION_14(v26);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v27);
  v29 = &v105 - v28;
  v30 = OUTLINED_FUNCTION_56_0();
  v31 = type metadata accessor for RankedAction(v30);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_2();
  v34 = v33;
  v35 = OUTLINED_FUNCTION_21_4();
  v36 = type metadata accessor for CamInput(v35);
  OUTLINED_FUNCTION_39_1(v36);
  if (v37)
  {
    specialized Collection.first.getter();
    OUTLINED_FUNCTION_32_3(v29, 1, v31);
    if (v80)
    {
      v38 = &_s7SiriCam12RankedActionVSgMd;
      v39 = &_s7SiriCam12RankedActionVSgMR;
      v40 = v29;
    }

    else
    {
      OUTLINED_FUNCTION_20_8();
      outlined init with take of RankedAction(v29, v34, v41);
      OUTLINED_FUNCTION_6_16();
      _s7SiriCam0B5ParseOWOcTm_1(v34 + v42, v22, v43);
      if (swift_getEnumCaseMultiPayload())
      {
        OUTLINED_FUNCTION_3_15();
        _s7SiriCam12RankedActionVWOhTm_1(v34, v45);
        OUTLINED_FUNCTION_5_13();
        v47 = v22;
LABEL_21:
        _s7SiriCam12RankedActionVWOhTm_1(v47, v46);
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_4_11();
      v53 = v109;
      v55 = outlined init with take of RankedAction(v22, v109, v54);
      v56 = MEMORY[0x26D5DC620](v55);
      v57 = v108;
      specialized Collection.first.getter(v56);

      v58 = v110;
      OUTLINED_FUNCTION_32_3(v57, 1, v110);
      if (!v80)
      {
        v29 = v106;
        v64 = v107;
        (*(v107 + 32))(v106, v57, v58);
        v73 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
        if (specialized Array.count.getter())
        {
          OUTLINED_FUNCTION_59_0();
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
          if (v57)
          {
            LOBYTE(v69) = MEMORY[0x26D5DD230](0, v73);
          }

          else
          {
            v69 = *(v73 + 32);
          }

          v74 = UsoTask.arguments.getter();
          OUTLINED_FUNCTION_27_2();
          v75 = specialized Dictionary.subscript.getter();

          if (v75)
          {
            OUTLINED_FUNCTION_59_0();
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
            if (v74)
            {
              MEMORY[0x26D5DD230](0, v75);
            }

            else
            {
            }

            v71 = dispatch thunk of UsoValue.getAsEntity()();

            (*(v64 + 8))(v29, v58);
            OUTLINED_FUNCTION_0_18();
            _s7SiriCam12RankedActionVWOhTm_1(v53, v76);
            v72 = type metadata accessor for RankedAction;
            goto LABEL_39;
          }
        }

        else
        {
        }

        (*(v64 + 8))(v29, v58);
        OUTLINED_FUNCTION_0_18();
        _s7SiriCam12RankedActionVWOhTm_1(v53, v65);
        v46 = type metadata accessor for RankedAction;
        v47 = v34;
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_0_18();
      _s7SiriCam12RankedActionVWOhTm_1(v53, v59);
      OUTLINED_FUNCTION_3_15();
      _s7SiriCam12RankedActionVWOhTm_1(v34, v60);
      v38 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd;
      v39 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR;
      v40 = v57;
    }

LABEL_15:
    outlined destroy of (CamLogOutput, CamModelMetadata)(v40, v38, v39);
LABEL_22:
    OUTLINED_FUNCTION_50_1(v111);
    goto LABEL_23;
  }

  CamInput.topUserParse.getter(v0);
  OUTLINED_FUNCTION_32_3(v0, 1, v4);
  if (v80)
  {
    v38 = &_s7SiriCam0B9UserParseOSgMd;
    v39 = &_s7SiriCam0B9UserParseOSgMR;
    v40 = v0;
    goto LABEL_15;
  }

  v48 = OUTLINED_FUNCTION_16_7();
  v34 = v11;
  outlined init with take of RankedAction(v48, v11, v49);
  OUTLINED_FUNCTION_19_8();
  _s7SiriCam0B5ParseOWOcTm_1(v11, v8, v50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_18_8();
    _s7SiriCam12RankedActionVWOhTm_1(v11, v52);
    v47 = v8;
    v46 = v0;
    goto LABEL_21;
  }

  v61 = *v8;

  v62 = [v61 userDialogActs];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SIRINLUUserDialogAct_pMd, &_sSo20SIRINLUUserDialogAct_pMR);
  v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!specialized Array.count.getter())
  {
    v66 = OUTLINED_FUNCTION_2_16();
    _s7SiriCam12RankedActionVWOhTm_1(v66, v67);

LABEL_72:

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_14_12();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v63 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_46_1();
  }

  else
  {
    swift_unknownObjectRetain();
  }

  v68 = static UsoConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (!specialized Array.count.getter())
  {
    v83 = OUTLINED_FUNCTION_2_16();
    _s7SiriCam12RankedActionVWOhTm_1(v83, v84);

LABEL_71:
    swift_unknownObjectRelease();
    goto LABEL_72;
  }

  OUTLINED_FUNCTION_14_12();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v68 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_46_1();
    LOBYTE(v69) = v104;
  }

  else
  {
    v69 = *(v68 + 32);
  }

  UsoTask.arguments.getter();
  OUTLINED_FUNCTION_27_2();
  v70 = specialized Dictionary.subscript.getter();

  if (!v70)
  {
    v92 = OUTLINED_FUNCTION_2_16();
    _s7SiriCam12RankedActionVWOhTm_1(v92, v93);

    goto LABEL_71;
  }

  OUTLINED_FUNCTION_14_12();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v70 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_46_1();
  }

  else
  {
  }

  v71 = dispatch thunk of UsoValue.getAsEntity()();

  swift_unknownObjectRelease();

  v72 = type metadata accessor for CamUserParse;
LABEL_39:
  _s7SiriCam12RankedActionVWOhTm_1(v34, v72);
  if (!v71)
  {
LABEL_83:

    goto LABEL_22;
  }

  v77 = UsoTask.verbString.getter();
  v79 = v78;

  v80 = v77 == 1684956531 && v79 == 0xE400000000000000;
  if (v80)
  {
LABEL_53:

    goto LABEL_54;
  }

  OUTLINED_FUNCTION_65(v77, v79);
  OUTLINED_FUNCTION_71();
  if ((v77 & 1) == 0)
  {
    if (UsoTask.verbString.getter() != 0x657461647075 || v81 != 0xE600000000000000)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_71();
      if ((v69 & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_54:
  if (UsoTask.baseEntityAsString.getter() == 0x4D5F6E6F6D6D6F63 && v85 == 0xEE00656761737365)
  {
    goto LABEL_65;
  }

  _stringCompareWithSmolCheck(_:_:expecting:)();
  OUTLINED_FUNCTION_71();
  if (v69)
  {
    goto LABEL_66;
  }

  if (UsoTask.baseEntityAsString.getter() == 0xD000000000000013 && 0x800000026681B460 == v87)
  {
LABEL_65:
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_71();
    if ((v69 & 1) == 0)
    {
LABEL_82:

      goto LABEL_83;
    }
  }

LABEL_66:
  v89 = *(UsoEntity.attributes.getter() + 16);

  if (v89 != 1)
  {
    goto LABEL_82;
  }

  if (*(UsoEntity.attributes.getter() + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0x6F43676E69727473, 0xED0000746E65746ELL);
    v91 = v90;

    if (v91)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  if (!*(UsoEntity.attributes.getter() + 16))
  {

    goto LABEL_22;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(0x746E65746E6F63, 0xE700000000000000);
  v95 = v94;

  if ((v95 & 1) == 0)
  {
    goto LABEL_82;
  }

LABEL_77:
  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_1_20(&one-time initialization token for ambiguityHandling);
  }

  v96 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_26(v96, static Logger.ambiguityHandling);
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = OUTLINED_FUNCTION_23();
    v100 = OUTLINED_FUNCTION_11();
    v112 = &type metadata for MessageDictationActionEnforcer;
    v113 = v100;
    *v99 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam30MessageDictationActionEnforcerVmMd, &_s7SiriCam30MessageDictationActionEnforcerVmMR);
    v101 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, &v113);
    OUTLINED_FUNCTION_68();
    *(v99 + 4) = v29;
    _os_log_impl(&dword_266790000, v97, v98, "%s detected message content dictation", v99, 0xCu);
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_23_6();
  }

  v113 = &type metadata for MessageDictationActionEnforcer;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam30MessageDictationActionEnforcerVmMd, &_s7SiriCam30MessageDictationActionEnforcerVmMR);
  OUTLINED_FUNCTION_48_1(v103);
  OUTLINED_FUNCTION_19_5();

  OUTLINED_FUNCTION_55_0(1);
LABEL_23:
  OUTLINED_FUNCTION_45_0();
}

void UserConfirmationActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)()
{
  OUTLINED_FUNCTION_44_1();
  v87 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B9UserParseOSgMd, &_s7SiriCam0B9UserParseOSgMR);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v81 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_14(v13);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v14);
  v85 = &v81 - v15;
  OUTLINED_FUNCTION_21_4();
  v86 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_22();
  v83 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v82 = v18;
  v19 = OUTLINED_FUNCTION_21_4();
  type metadata accessor for CamParse(v19);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_0();
  v23 = v22 - v21;
  v24 = type metadata accessor for CamUSOParse(0);
  v25 = OUTLINED_FUNCTION_14(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_2();
  v84 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  OUTLINED_FUNCTION_14(v27);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_28_5();
  v29 = type metadata accessor for RankedAction(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_0();
  v33 = v32 - v31;
  v34 = type metadata accessor for CamInput(0);
  OUTLINED_FUNCTION_39_1(v34);
  if (!v35)
  {
    CamInput.topUserParse.getter(v0);
    OUTLINED_FUNCTION_32_3(v0, 1, v5);
    if (!v36)
    {
      v47 = OUTLINED_FUNCTION_16_7();
      outlined init with take of RankedAction(v47, v12, v48);
      OUTLINED_FUNCTION_19_8();
      _s7SiriCam0B5ParseOWOcTm_1(v12, v9, v49);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        OUTLINED_FUNCTION_18_8();
        _s7SiriCam12RankedActionVWOhTm_1(v12, v51);
        v46 = v9;
        v45 = v0;
      }

      else
      {
        v60 = *v9;

        v61 = [v60 userDialogActs];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SIRINLUUserDialogAct_pMd, &_sSo20SIRINLUUserDialogAct_pMR);
        OUTLINED_FUNCTION_58();
        v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!specialized Array.count.getter())
        {
          v76 = OUTLINED_FUNCTION_2_16();
          _s7SiriCam12RankedActionVWOhTm_1(v76, v77);

          goto LABEL_17;
        }

        specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
        if ((v62 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D5DD230](0, v62);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        objc_opt_self();
        OUTLINED_FUNCTION_58();
        if (swift_dynamicCastObjCClass() || (objc_opt_self(), OUTLINED_FUNCTION_58(), swift_dynamicCastObjCClass()))
        {
          v88 = &type metadata for UserConfirmationActionEnforcer;
          v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam30UserConfirmationActionEnforcerVmMd, &_s7SiriCam30UserConfirmationActionEnforcerVmMR);
          v64 = OUTLINED_FUNCTION_49_1(v63);
          v66 = v65;
          swift_unknownObjectRelease();

          v67 = OUTLINED_FUNCTION_2_16();
          _s7SiriCam12RankedActionVWOhTm_1(v67, v68);
          v69 = v87;
          *v87 = 1;
          v69[1] = v64;
          v69[2] = v66;
          goto LABEL_18;
        }

        swift_unknownObjectRelease();

        v46 = OUTLINED_FUNCTION_2_16();
      }

      goto LABEL_12;
    }

    v37 = &_s7SiriCam0B9UserParseOSgMd;
    v38 = &_s7SiriCam0B9UserParseOSgMR;
    v39 = v0;
    goto LABEL_16;
  }

  specialized Collection.first.getter();
  OUTLINED_FUNCTION_32_3(v1, 1, v29);
  if (v36)
  {
    v37 = &_s7SiriCam12RankedActionVSgMd;
    v38 = &_s7SiriCam12RankedActionVSgMR;
    v39 = v1;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_20_8();
  outlined init with take of RankedAction(v1, v33, v40);
  OUTLINED_FUNCTION_6_16();
  _s7SiriCam0B5ParseOWOcTm_1(v33 + v41, v23, v42);
  if (!swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_4_11();
    v52 = v84;
    v54 = outlined init with take of RankedAction(v23, v84, v53);
    v55 = MEMORY[0x26D5DC620](v54);
    v56 = v85;
    specialized Collection.first.getter(v55);

    v57 = v86;
    OUTLINED_FUNCTION_32_3(v56, 1, v86);
    if (!v36)
    {
      (*(v83 + 32))(v82, v56, v57);
      v70 = Siri_Nlu_External_UserDialogAct.hasAccepted.getter();
      if (v70 & 1) != 0 || (Siri_Nlu_External_UserDialogAct.hasRejected.getter())
      {
        v88 = &type metadata for UserConfirmationActionEnforcer;
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam30UserConfirmationActionEnforcerVmMd, &_s7SiriCam30UserConfirmationActionEnforcerVmMR);
        OUTLINED_FUNCTION_49_1(v71);
        OUTLINED_FUNCTION_19_5();
        v72 = OUTLINED_FUNCTION_57_0();
        v73(v72);
        OUTLINED_FUNCTION_0_18();
        _s7SiriCam12RankedActionVWOhTm_1(v52, v74);
        OUTLINED_FUNCTION_3_15();
        _s7SiriCam12RankedActionVWOhTm_1(v33, v75);
        OUTLINED_FUNCTION_55_0(1);
        goto LABEL_18;
      }

      v78 = OUTLINED_FUNCTION_57_0();
      v79(v78);
      OUTLINED_FUNCTION_0_18();
      _s7SiriCam12RankedActionVWOhTm_1(v52, v80);
      OUTLINED_FUNCTION_3_15();
      v46 = v33;
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_0_18();
    _s7SiriCam12RankedActionVWOhTm_1(v52, v58);
    OUTLINED_FUNCTION_3_15();
    _s7SiriCam12RankedActionVWOhTm_1(v33, v59);
    v37 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd;
    v38 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR;
    v39 = v56;
LABEL_16:
    outlined destroy of (CamLogOutput, CamModelMetadata)(v39, v37, v38);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_3_15();
  _s7SiriCam12RankedActionVWOhTm_1(v33, v44);
  OUTLINED_FUNCTION_5_13();
  v46 = v23;
LABEL_12:
  _s7SiriCam12RankedActionVWOhTm_1(v46, v45);
LABEL_17:
  OUTLINED_FUNCTION_50_1(v87);
LABEL_18:
  OUTLINED_FUNCTION_45_0();
}

void LongPayloadActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002BLL, 0x8000000266818E40);
  if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = *(*(a1 + 56) + 8 * v5);
  v8 = MLMultiArray.toIntScalar()();
  if (v9)
  {

LABEL_12:
    OUTLINED_FUNCTION_3_13();
    return;
  }

  v10 = v8;

  if (v10 < 21 || *(a2 + 56) != 2)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_1_20(&one-time initialization token for ambiguityHandling);
  }

  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_26(v11, static Logger.ambiguityHandling);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_34(v13))
  {
    OUTLINED_FUNCTION_23();
    v14 = OUTLINED_FUNCTION_30_4();
    v23 = v14;
    *a2 = 136315138;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam25LongPayloadActionEnforcerVmMd, &_s7SiriCam25LongPayloadActionEnforcerVmMR);
    v17 = OUTLINED_FUNCTION_47_1(v15, v16);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v23);
    OUTLINED_FUNCTION_70();
    *(a2 + 4) = v2;
    OUTLINED_FUNCTION_25_5(&dword_266790000, v19, v20, "%s detected long utterance");
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_23_6();
    OUTLINED_FUNCTION_0_8();
  }

  v23 = &type metadata for LongPayloadActionEnforcer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam25LongPayloadActionEnforcerVmMd, &_s7SiriCam25LongPayloadActionEnforcerVmMR);
  v21 = String.init<A>(describing:)();
  OUTLINED_FUNCTION_40_1(v21, v22);
}

uint64_t ShadowLogActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for CamInput(v4);
  v5 = UUID.uuid.getter();
  v6 = 0;
  result = 0;
  v8 = 0;
  if (*(a2 + 56) == 2 && v5 <= 0xCu)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam23ShadowLogActionEnforcerVmMd, &_s7SiriCam23ShadowLogActionEnforcerVmMR);
    result = OUTLINED_FUNCTION_47_1(v10, v11);
    v6 = 1;
  }

  *v2 = v6;
  v2[1] = result;
  v2[2] = v8;
  return result;
}

void UncertaintyPromptMagicWordsActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_43_1();
  v6 = *(a3 + *(type metadata accessor for CamInput(v5) + 32));
  if (v6)
  {
    v7 = [v6 recognition];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 aceRecognition];

      if (v9)
      {
        _s7SiriCam23TopRecognitionExtractorPAAE03getcD011recognitionSSSo14SASRecognitionC_tKFAA41UncertaintyPromptMagicWordsActionEnforcerV_Tt0g5(v9);
        String.lowercased()();

        v10 = lazy protocol witness table accessor for type String and conformance String();
        v11 = OUTLINED_FUNCTION_42_0(v10);
        v12 = v11;
        v13 = OUTLINED_FUNCTION_42_0(v11);

        if (v12)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam41UncertaintyPromptMagicWordsActionEnforcerVmMd, &_s7SiriCam41UncertaintyPromptMagicWordsActionEnforcerVmMR);
          v14 = String.init<A>(describing:)();
          v16 = v15;

          v17 = 2;
LABEL_12:
          *v3 = v17;
          v3[1] = v14;
          v3[2] = v16;
          return;
        }

        if (v13)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam41UncertaintyPromptMagicWordsActionEnforcerVmMd, &_s7SiriCam41UncertaintyPromptMagicWordsActionEnforcerVmMR);
          v14 = String.init<A>(describing:)();
          v16 = v18;

          v17 = 3;
          goto LABEL_12;
        }
      }
    }
  }

  OUTLINED_FUNCTION_3_13();
}

void ZeroAsrConfidenceActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x8000000266818D60), (v6 & 1) != 0) && (v7 = *(*(a1 + 56) + 8 * v5), v8 = MLMultiArray.toDoubleArray()(), v7, v9 = COERCE_DOUBLE(specialized Sequence<>.min()(v8)), v11 = v10, , (v11 & 1) == 0 && v9 <= 0.01 && *(a2 + 56) == 2))
  {
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_1_20(&one-time initialization token for ambiguityHandling);
    }

    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v12, static Logger.ambiguityHandling);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_34(v14))
    {
      OUTLINED_FUNCTION_23();
      v15 = OUTLINED_FUNCTION_30_4();
      v24 = v15;
      *a2 = 136315138;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam31ZeroAsrConfidenceActionEnforcerVmMd, &_s7SiriCam31ZeroAsrConfidenceActionEnforcerVmMR);
      v18 = OUTLINED_FUNCTION_47_1(v16, v17);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v24);
      OUTLINED_FUNCTION_70();
      *(a2 + 4) = v2;
      OUTLINED_FUNCTION_25_5(&dword_266790000, v20, v21, "%s detected only zero ASR confidence scores - overriding to EXECUTE_TOP_HYPOTHESIS");
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_0_8();
    }

    v24 = &type metadata for ZeroAsrConfidenceActionEnforcer;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam31ZeroAsrConfidenceActionEnforcerVmMd, &_s7SiriCam31ZeroAsrConfidenceActionEnforcerVmMR);
    v22 = String.init<A>(describing:)();
    OUTLINED_FUNCTION_40_1(v22, v23);
  }

  else
  {
    OUTLINED_FUNCTION_3_13();
  }
}

void ExactShortcutActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)()
{
  OUTLINED_FUNCTION_44_1();
  v4 = OUTLINED_FUNCTION_66(v3);
  OUTLINED_FUNCTION_22();
  v64 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v63 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMR);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_28_5();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v11 = OUTLINED_FUNCTION_14(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - v16;
  v18 = OUTLINED_FUNCTION_56_0();
  type metadata accessor for CamParse(v18);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_0();
  v22 = v21 - v20;
  type metadata accessor for CamUSOParse(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_2();
  v65 = v24;
  v25 = OUTLINED_FUNCTION_21_4();
  if (!*(*(v2 + *(type metadata accessor for CamInput(v25) + 44)) + 16))
  {
    goto LABEL_22;
  }

  v26 = type metadata accessor for RankedAction(0);
  OUTLINED_FUNCTION_14(v26);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_6_16();
  _s7SiriCam0B5ParseOWOcTm_1(v28 + v27, v22, v29);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_5_13();
    v31 = v22;
LABEL_21:
    _s7SiriCam12RankedActionVWOhTm_1(v31, v30);
LABEL_22:
    OUTLINED_FUNCTION_50_1(v66);
    goto LABEL_23;
  }

  v62 = v1;
  OUTLINED_FUNCTION_4_11();
  outlined init with take of RankedAction(v22, v65, v32);
  v33 = OUTLINED_FUNCTION_53_0();
  v34(v33);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v4);
  v35 = *(v8 + 48);
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_12_0(v0);
  if (v37)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v17, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
    OUTLINED_FUNCTION_12_0(v0 + v35);
    v36 = v62;
    if (v37)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v0, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
      goto LABEL_14;
    }

LABEL_12:
    outlined destroy of (CamLogOutput, CamModelMetadata)(v0, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMR);
LABEL_20:
    OUTLINED_FUNCTION_0_18();
    v31 = v65;
    goto LABEL_21;
  }

  outlined init with copy of (CamLogOutput, CamModelMetadata)(v0, v14, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  OUTLINED_FUNCTION_12_0(v0 + v35);
  v36 = v62;
  if (v37)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v17, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
    v38 = OUTLINED_FUNCTION_52_1();
    v39(v38);
    goto LABEL_12;
  }

  v40 = OUTLINED_FUNCTION_33_1();
  v41(v40);
  OUTLINED_FUNCTION_17_8();
  v44 = lazy protocol witness table accessor for type Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent and conformance Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent(v42, v43);
  OUTLINED_FUNCTION_62_0(v44);
  v45 = OUTLINED_FUNCTION_51_1();
  (v8)(v45);
  outlined destroy of (CamLogOutput, CamModelMetadata)(v17, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  (v8)(v14, v4);
  v46 = OUTLINED_FUNCTION_57_0();
  outlined destroy of (CamLogOutput, CamModelMetadata)(v46, v47, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  if ((&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (*(v36 + 56) != 2)
  {
    goto LABEL_20;
  }

  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_1_20(&one-time initialization token for ambiguityHandling);
  }

  v48 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_26(v48, static Logger.ambiguityHandling);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_10(v50))
  {
    v51 = OUTLINED_FUNCTION_23();
    v52 = OUTLINED_FUNCTION_11();
    v67 = &type metadata for ExactShortcutActionEnforcer;
    v68 = v52;
    *v51 = 136315138;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam27ExactShortcutActionEnforcerVmMd, &_s7SiriCam27ExactShortcutActionEnforcerVmMR);
    v54 = OUTLINED_FUNCTION_48_1(v53);
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v68);

    *(v51 + 4) = v56;
    OUTLINED_FUNCTION_60_0(&dword_266790000, v57, v58, "%s exact shortcut parse - overriding to EXECUTE_TOP_HYPOTHESIS");
    __swift_destroy_boxed_opaque_existential_0(v52);
    OUTLINED_FUNCTION_0_8();
    OUTLINED_FUNCTION_3_1();
  }

  v68 = &type metadata for ExactShortcutActionEnforcer;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam27ExactShortcutActionEnforcerVmMd, &_s7SiriCam27ExactShortcutActionEnforcerVmMR);
  OUTLINED_FUNCTION_49_1(v59);
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_0_18();
  _s7SiriCam12RankedActionVWOhTm_1(v65, v60);
  OUTLINED_FUNCTION_55_0(1);
LABEL_23:
  OUTLINED_FUNCTION_45_0();
}

void OverrideParseActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)()
{
  OUTLINED_FUNCTION_44_1();
  v4 = OUTLINED_FUNCTION_66(v3);
  OUTLINED_FUNCTION_22();
  v64 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v63 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMR);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_28_5();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v11 = OUTLINED_FUNCTION_14(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - v16;
  v18 = OUTLINED_FUNCTION_56_0();
  type metadata accessor for CamParse(v18);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_0();
  v22 = v21 - v20;
  type metadata accessor for CamUSOParse(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_2();
  v65 = v24;
  v25 = OUTLINED_FUNCTION_21_4();
  if (!*(*(v2 + *(type metadata accessor for CamInput(v25) + 44)) + 16))
  {
    goto LABEL_22;
  }

  v26 = type metadata accessor for RankedAction(0);
  OUTLINED_FUNCTION_14(v26);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_6_16();
  _s7SiriCam0B5ParseOWOcTm_1(v28 + v27, v22, v29);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_5_13();
    v31 = v22;
LABEL_21:
    _s7SiriCam12RankedActionVWOhTm_1(v31, v30);
LABEL_22:
    OUTLINED_FUNCTION_50_1(v66);
    goto LABEL_23;
  }

  v62 = v1;
  OUTLINED_FUNCTION_4_11();
  outlined init with take of RankedAction(v22, v65, v32);
  v33 = OUTLINED_FUNCTION_53_0();
  v34(v33);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v4);
  v35 = *(v8 + 48);
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_12_0(v0);
  if (v37)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v17, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
    OUTLINED_FUNCTION_12_0(v0 + v35);
    v36 = v62;
    if (v37)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v0, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
      goto LABEL_14;
    }

LABEL_12:
    outlined destroy of (CamLogOutput, CamModelMetadata)(v0, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMR);
LABEL_20:
    OUTLINED_FUNCTION_0_18();
    v31 = v65;
    goto LABEL_21;
  }

  outlined init with copy of (CamLogOutput, CamModelMetadata)(v0, v14, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  OUTLINED_FUNCTION_12_0(v0 + v35);
  v36 = v62;
  if (v37)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v17, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
    v38 = OUTLINED_FUNCTION_52_1();
    v39(v38);
    goto LABEL_12;
  }

  v40 = OUTLINED_FUNCTION_33_1();
  v41(v40);
  OUTLINED_FUNCTION_17_8();
  v44 = lazy protocol witness table accessor for type Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent and conformance Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent(v42, v43);
  OUTLINED_FUNCTION_62_0(v44);
  v45 = OUTLINED_FUNCTION_51_1();
  (v8)(v45);
  outlined destroy of (CamLogOutput, CamModelMetadata)(v17, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  (v8)(v14, v4);
  v46 = OUTLINED_FUNCTION_57_0();
  outlined destroy of (CamLogOutput, CamModelMetadata)(v46, v47, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  if ((&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (*(v36 + 56) != 2)
  {
    goto LABEL_20;
  }

  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_1_20(&one-time initialization token for ambiguityHandling);
  }

  v48 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_26(v48, static Logger.ambiguityHandling);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_10(v50))
  {
    v51 = OUTLINED_FUNCTION_23();
    v52 = OUTLINED_FUNCTION_11();
    v67 = &type metadata for OverrideParseActionEnforcer;
    v68 = v52;
    *v51 = 136315138;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam27OverrideParseActionEnforcerVmMd, &_s7SiriCam27OverrideParseActionEnforcerVmMR);
    v54 = OUTLINED_FUNCTION_48_1(v53);
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v68);

    *(v51 + 4) = v56;
    OUTLINED_FUNCTION_60_0(&dword_266790000, v57, v58, "%s found override parse - overriding to EXECUTE_TOP_HYPOTHESIS");
    __swift_destroy_boxed_opaque_existential_0(v52);
    OUTLINED_FUNCTION_0_8();
    OUTLINED_FUNCTION_3_1();
  }

  v68 = &type metadata for OverrideParseActionEnforcer;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam27OverrideParseActionEnforcerVmMd, &_s7SiriCam27OverrideParseActionEnforcerVmMR);
  OUTLINED_FUNCTION_49_1(v59);
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_0_18();
  _s7SiriCam12RankedActionVWOhTm_1(v65, v60);
  OUTLINED_FUNCTION_55_0(1);
LABEL_23:
  OUTLINED_FUNCTION_45_0();
}

void UserEntityVocabActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)()
{
  OUTLINED_FUNCTION_44_1();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_43_1();
  v103 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier.NluComponent();
  OUTLINED_FUNCTION_22();
  v98 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v102 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v101 = v90 - v10;
  OUTLINED_FUNCTION_21_4();
  v100 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  OUTLINED_FUNCTION_22();
  v104 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v99 = v13;
  OUTLINED_FUNCTION_21_4();
  v14 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  OUTLINED_FUNCTION_22();
  v97 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_0();
  v19 = v18 - v17;
  v20 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  OUTLINED_FUNCTION_22();
  v96 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_0();
  v25 = (v24 - v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_14(v26);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v27);
  v29 = v90 - v28;
  v107 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_22();
  v105 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_2();
  v106 = v32;
  v33 = OUTLINED_FUNCTION_21_4();
  type metadata accessor for CamParse(v33);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_0();
  v37 = v36 - v35;
  v38 = OUTLINED_FUNCTION_56_0();
  v39 = type metadata accessor for CamUSOParse(v38);
  v40 = OUTLINED_FUNCTION_14(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_2();
  v108 = v41;
  v42 = OUTLINED_FUNCTION_21_4();
  if (!*(*(v2 + *(type metadata accessor for CamInput(v42) + 44)) + 16))
  {
    goto LABEL_26;
  }

  v43 = type metadata accessor for RankedAction(0);
  OUTLINED_FUNCTION_14(v43);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_6_16();
  _s7SiriCam0B5ParseOWOcTm_1(v45 + v44, v37, v46);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_5_13();
    v48 = v37;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_4_11();
  v49 = v108;
  v51 = outlined init with take of RankedAction(v37, v108, v50);
  v52 = MEMORY[0x26D5DC620](v51);
  specialized Collection.first.getter(v52);

  v53 = v107;
  OUTLINED_FUNCTION_32_3(v29, 1, v107);
  if (v67)
  {
    OUTLINED_FUNCTION_0_18();
    _s7SiriCam12RankedActionVWOhTm_1(v49, v54);
    outlined destroy of (CamLogOutput, CamModelMetadata)(v29, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    goto LABEL_26;
  }

  v95 = v4;
  v55 = v105;
  (*(v105 + 32))(v106, v29, v53);
  v56 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (!specialized Array.count.getter())
  {

LABEL_24:
    (*(v55 + 8))(v106, v53);
    OUTLINED_FUNCTION_0_18();
    v48 = v108;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_14_12();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v56 & 0xC000000000000001) != 0)
  {
    goto LABEL_46;
  }

  v57 = *(v56 + 32);

  while (1)
  {

    v58 = *(UsoTask.arguments.getter() + 16);

    if (v58 != 1)
    {

      goto LABEL_24;
    }

    v59 = UsoTask.arguments.getter();
    specialized Collection.first.getter(v59);
    v61 = v60;
    v63 = v62;

    if (!v61)
    {
      goto LABEL_21;
    }

    if (!specialized Array.count.getter())
    {

      goto LABEL_29;
    }

    OUTLINED_FUNCTION_14_12();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    if ((v63 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_46_1();
    }

    else
    {
    }

    v64 = dispatch thunk of UsoValue.getAsEntity()();

    if (!v64)
    {
LABEL_21:

LABEL_29:
      v68 = v108;
      (*(v105 + 8))(v106, v107);
LABEL_30:
      OUTLINED_FUNCTION_0_18();
      v48 = v68;
LABEL_25:
      _s7SiriCam12RankedActionVWOhTm_1(v48, v47);
LABEL_26:
      OUTLINED_FUNCTION_3_13();
      goto LABEL_27;
    }

    v55 = UsoTask.verbString.getter();
    v66 = v65;

    v67 = v55 == 0xD000000000000011 && 0x800000026681B480 == v66;
    if (v67)
    {
    }

    else
    {
      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v55 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
    Siri_Nlu_External_UserStatedTask.task.getter();
    (*(v96 + 8))(v25, v20);
    v69 = Siri_Nlu_External_UsoGraph.identifiers.getter();
    (*(v97 + 8))(v19, v14);
    v53 = 0;
    v96 = *(v69 + 16);
    v97 = v69;
    v93 = v104 + 16;
    v92 = *MEMORY[0x277D5DD48];
    v91 = (v98 + 13);
    ++v98;
    v90[1] = v104 + 8;
    v94 = v57;
    v19 = v99;
    v25 = v101;
LABEL_33:
    v68 = v108;
    if (v96 == v53)
    {

LABEL_44:
      (*(v105 + 8))(v106, v107);
      goto LABEL_30;
    }

    if (v53 < *(v97 + 16))
    {
      break;
    }

    __break(1u);
LABEL_46:
    OUTLINED_FUNCTION_46_1();
    v57 = v89;
  }

  v70 = v104;
  v20 = v100;
  (*(v104 + 16))(v19, v97 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v53++, v100);
  Siri_Nlu_External_UsoEntityIdentifier.sourceComponent.getter();
  v14 = v102;
  v71 = v103;
  (*v91)(v102, v92, v103);
  lazy protocol witness table accessor for type Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent and conformance Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoEntityIdentifier.NluComponent and conformance Siri_Nlu_External_UsoEntityIdentifier.NluComponent, MEMORY[0x277D5DD50]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v55 = v98;
  v72 = *v98;
  (*v98)(v14, v71);
  v72(v25, v71);
  (*(v70 + 8))(v19, v20);
  if (v110 != v109)
  {
    goto LABEL_33;
  }

  v68 = v108;
  if (*(v95 + 56) != 2)
  {

    goto LABEL_44;
  }

  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_1_20(&one-time initialization token for ambiguityHandling);
  }

  v73 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_26(v73, static Logger.ambiguityHandling);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_10(v75))
  {
    v76 = OUTLINED_FUNCTION_23();
    v77 = OUTLINED_FUNCTION_11();
    v109 = &type metadata for UserEntityVocabActionEnforcer;
    v110 = v77;
    *v76 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam29UserEntityVocabActionEnforcerVmMd, &_s7SiriCam29UserEntityVocabActionEnforcerVmMR);
    v78 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &v110);
    OUTLINED_FUNCTION_68();
    *(v76 + 4) = v53;
    OUTLINED_FUNCTION_61_0(&dword_266790000, v80, v81, "%s found UserEntityVocab parse - overriding to EXECUTE_TOP_HYPOTHESIS");
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_23_6();
  }

  v82 = v105;
  v83 = v106;
  v84 = v107;
  v110 = &type metadata for UserEntityVocabActionEnforcer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam29UserEntityVocabActionEnforcerVmMd, &_s7SiriCam29UserEntityVocabActionEnforcerVmMR);
  v85 = String.init<A>(describing:)();
  v87 = v86;

  (*(v82 + 8))(v83, v84);
  OUTLINED_FUNCTION_0_18();
  _s7SiriCam12RankedActionVWOhTm_1(v108, v88);
  *v0 = 1;
  v0[1] = v85;
  v0[2] = v87;
LABEL_27:
  OUTLINED_FUNCTION_45_0();
}

uint64_t outlined init with take of RankedAction(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t _s7SiriCam0B5ParseOWOcTm_1(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t _s7SiriCam12RankedActionVWOhTm_1(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t type metadata accessor for USOSerializedIdentifier()
{
  result = lazy cache variable for type metadata for USOSerializedIdentifier;
  if (!lazy cache variable for type metadata for USOSerializedIdentifier)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for USOSerializedIdentifier);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent and conformance Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_58();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_23_6()
{

  JUMPOUT(0x26D5DDCD0);
}

void OUTLINED_FUNCTION_25_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_26_3()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D5DDCD0);
}

uint64_t OUTLINED_FUNCTION_40_1(uint64_t result, uint64_t a2)
{
  *v2 = 1;
  v2[1] = result;
  v2[2] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_0(uint64_t a1, ...)
{

  return StringProtocol.contains<A>(_:)();
}

void OUTLINED_FUNCTION_46_1()
{

  JUMPOUT(0x26D5DD230);
}

uint64_t OUTLINED_FUNCTION_47_1(uint64_t a1, uint64_t a2, ...)
{

  return String.init<A>(describing:)();
}

uint64_t OUTLINED_FUNCTION_48_1(uint64_t a1)
{

  return String.init<A>(describing:)();
}

uint64_t OUTLINED_FUNCTION_49_1(uint64_t a1)
{

  return String.init<A>(describing:)();
}

void OUTLINED_FUNCTION_50_1(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void OUTLINED_FUNCTION_55_0(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = v2;
  v1[2] = v3;
}

void OUTLINED_FUNCTION_60_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_61_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_62_0(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_63()
{

  return outlined init with copy of (CamLogOutput, CamModelMetadata)(v4, v3 + v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_64()
{

  return outlined init with copy of (CamLogOutput, CamModelMetadata)(v3 + v4, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_65(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_66@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 104) = a1;

  return type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
}

uint64_t OUTLINED_FUNCTION_67()
{

  return type metadata accessor for CamUserParse(0);
}

uint64_t OUTLINED_FUNCTION_68()
{
}

uint64_t OUTLINED_FUNCTION_69()
{
}

uint64_t OUTLINED_FUNCTION_70()
{
}

uint64_t OUTLINED_FUNCTION_71()
{
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1)
{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, MEMORY[0x277D84BD0]);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0);
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(char a1)
{
  OUTLINED_FUNCTION_7_12();
  RankedAction.CodingKeys.rawValue.getter(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_7_12();
  MEMORY[0x26D5DD540](qword_266817428[a1]);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_7_12();
  a2(v5, a1);
  return Hasher._finalize()();
}

uint64_t CamUSOParse.debugDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v1);
  v3 = &v24 - v2;
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(49);

  v25 = 0xD000000000000017;
  v26 = 0x800000026681B4F0;
  v4 = type metadata accessor for CamUSOParse(0);
  v5 = (v0 + v4[6]);
  v6 = v5[1];
  v29[0] = *v5;
  v29[1] = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v7 = String.init<A>(describing:)();
  MEMORY[0x26D5DCD80](v7);

  MEMORY[0x26D5DCD80](0xD000000000000014, 0x800000026681B510);
  outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(v0 + v4[5], v3);
  v8 = String.init<A>(describing:)();
  MEMORY[0x26D5DCD80](v8);

  MEMORY[0x26D5DCD80](11305, 0xE200000000000000);
  v10 = v25;
  v9 = v26;
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  strcpy(v29, "groupIndex: ");
  BYTE5(v29[1]) = 0;
  HIWORD(v29[1]) = -5120;
  v11 = (v0 + v4[7]);
  v12 = *v11;
  LOBYTE(v11) = *(v11 + 4);
  LODWORD(v25) = v12;
  BYTE4(v25) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
  v13 = String.init<A>(describing:)();
  MEMORY[0x26D5DCD80](v13);

  MEMORY[0x26D5DCD80](0x615072657375202CLL, 0xED0000203A657372);
  type metadata accessor for SiriNLUTypesPrintUtils();
  OUTLINED_FUNCTION_28();
  v14 = type metadata accessor for Siri_Nlu_External_UserParse();
  v27 = v14;
  OUTLINED_FUNCTION_3_16();
  v28 = lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse(v15, v16, MEMORY[0x277D5DB00]);
  v17 = __swift_allocate_boxed_opaque_existential_1(&v25);
  (*(*(v14 - 8) + 16))(v17, v0, v14);
  v18 = static SiriNLUTypesPrintUtils.printableProtoObject(object:)();
  v20 = v19;
  __swift_destroy_boxed_opaque_existential_0(&v25);
  MEMORY[0x26D5DCD80](v18, v20);

  MEMORY[0x26D5DCD80](41, 0xE100000000000000);
  v21 = v29[0];
  v22 = v29[1];
  v25 = v10;
  v26 = v9;

  MEMORY[0x26D5DCD80](v21, v22);

  return v25;
}

uint64_t CamUSOParse.init(userParse:parserIdentifier:appBundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for CamUSOParse(0);
  outlined init with take of Siri_Nlu_External_Parser.ParserIdentifier?(a2, a5 + v10[5]);
  type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_0_2();
  result = (*(v11 + 32))(a5, a1);
  v13 = (a5 + v10[6]);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5 + v10[7];
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t outlined init with take of Siri_Nlu_External_Parser.ParserIdentifier?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CamUSOParse.init(userParse:parserIdentifier:appBundleId:groupIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for CamUSOParse(0);
  outlined init with take of Siri_Nlu_External_Parser.ParserIdentifier?(a2, a6 + v12[5]);
  type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_0_2();
  result = (*(v13 + 32))(a6, a1);
  v15 = (a6 + v12[6]);
  *v15 = a3;
  v15[1] = a4;
  v16 = a6 + v12[7];
  *v16 = a5;
  *(v16 + 4) = BYTE4(a5) & 1;
  return result;
}

uint64_t CamUSOParse.userParse.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_0_2();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t CamUSOParse.parserIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CamUSOParse(0) + 20);

  return outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(v3, a1);
}

uint64_t CamUSOParse.appBundleId.getter()
{
  v1 = *(v0 + *(type metadata accessor for CamUSOParse(0) + 24));

  return v1;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CamUSOParse.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SiriCam0B8USOParseV10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLO8rawValueAFSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CamUSOParse.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = _s7SiriCam0B8USOParseV10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLO8rawValueSSvg_0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CamUSOParse.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = _s7SiriCam0B8USOParseV10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLO8rawValueAFSgSS_tcfC_0(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CamUSOParse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CamUSOParse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CamUSOParse.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v2);
  v36 = &v35 - v3;
  v4 = type metadata accessor for JSONEncodingOptions();
  OUTLINED_FUNCTION_22();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy7SiriCam0E8USOParseV10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMd, &_ss22KeyedEncodingContainerVy7SiriCam0E8USOParseV10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMR);
  OUTLINED_FUNCTION_22();
  v13 = v12;
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  JSONEncodingOptions.init()();
  type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_3_16();
  lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse(v17, v18, MEMORY[0x277D5DB00]);
  v19 = v37;
  v20 = v38;
  Message.jsonString(options:)();
  v21 = (v6 + 8);
  if (v20)
  {
    (*v21)(v10, v4);
    return (*(v13 + 8))(v16, v11);
  }

  else
  {
    (*v21)(v10, v4);
    LOBYTE(v39) = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
    v38 = 0;

    v23 = type metadata accessor for CamUSOParse(0);
    v24 = v36;
    outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(v19 + v23[5], v36);
    v25 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v25);
    v27 = v19;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v24, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
      v28 = 0;
    }

    else
    {
      v29 = v24;
      v28 = MEMORY[0x26D5DC5E0]();
      (*(*(v25 - 8) + 8))(v29, v25);
    }

    *&v39 = v28;
    BYTE8(v39) = EnumTagSinglePayload == 1;
    v40 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, _sSiSgMR);
    lazy protocol witness table accessor for type Int? and conformance <A> A?(&lazy protocol witness table cache variable for type Int? and conformance <A> A?, &_sSiSgMd, _sSiSgMR);
    OUTLINED_FUNCTION_2_17();
    v30 = v38;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v30)
    {
      v39 = *(v27 + v23[6]);
      v40 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      lazy protocol witness table accessor for type Int? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd, &_sSSSgMR);
      OUTLINED_FUNCTION_2_17();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v33 = (v27 + v23[7]);
      v34 = *v33;
      LOBYTE(v33) = *(v33 + 4);
      LODWORD(v39) = v34;
      BYTE4(v39) = v33;
      v40 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
      lazy protocol witness table accessor for type Int? and conformance <A> A?(&lazy protocol witness table cache variable for type UInt32? and conformance <A> A?, &_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
      OUTLINED_FUNCTION_2_17();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    v31 = OUTLINED_FUNCTION_6_17();
    return v32(v31);
  }
}

unint64_t lazy protocol witness table accessor for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Int? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL static CamUSOParse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  OUTLINED_FUNCTION_22();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMR);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  if ((static Siri_Nlu_External_UserParse.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v18 = type metadata accessor for CamUSOParse(0);
  v19 = v18[5];
  v20 = *(v14 + 48);
  outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(a1 + v19, v17);
  outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(a2 + v19, &v17[v20]);
  OUTLINED_FUNCTION_12_0(v17);
  if (v21)
  {
    OUTLINED_FUNCTION_12_0(&v17[v20]);
    if (v21)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v17, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
      goto LABEL_13;
    }

LABEL_10:
    outlined destroy of (CamLogOutput, CamModelMetadata)(v17, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMR);
    return 0;
  }

  outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(v17, v13);
  OUTLINED_FUNCTION_12_0(&v17[v20]);
  if (v21)
  {
    (*(v6 + 8))(v13, v4);
    goto LABEL_10;
  }

  (*(v6 + 32))(v10, &v17[v20], v4);
  lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x277D5DA88], MEMORY[0x277D5DA98]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v6 + 8);
  v24(v10, v4);
  v24(v13, v4);
  outlined destroy of (CamLogOutput, CamModelMetadata)(v17, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v25 = v18[6];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }

    v30 = *v26 == *v28 && v27 == v29;
    if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  v31 = v18[7];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 4);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 4);
  if ((v33 & 1) == 0)
  {
    if (*v32 != *v34)
    {
      v35 = 1;
    }

    return (v35 & 1) == 0;
  }

  return (v35 & 1) != 0;
}

uint64_t lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CamParse.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7304053 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x655273656D6D6F70 && a2 == 0xEE0065736E6F7073;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7974706D65 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(unsigned __int8 a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_7_12();
  a2(a1);
  return Hasher._finalize()();
}

uint64_t CamParse.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 7304053;
  }

  if (a1 == 1)
  {
    return 0x655273656D6D6F70;
  }

  return 0x7974706D65;
}

uint64_t CamParse.PommesResponseCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int CamParse.PommesResponseCodingKeys.hashValue.getter()
{
  OUTLINED_FUNCTION_7_12();
  MEMORY[0x26D5DD540](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CamParse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CamParse.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CamParse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamParse.CodingKeys and conformance CamParse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CamParse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamParse.CodingKeys and conformance CamParse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CamParse.EmptyCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = CamParse.EmptyCodingKeys.init(stringValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance CamParse.EmptyCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = CamParse.EmptyCodingKeys.init(intValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CamParse.EmptyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CamParse.EmptyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CamParse.PommesResponseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CamParse.PommesResponseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CamParse.PommesResponseCodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5DD540](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CamParse.UsoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CamParse.UsoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void CamParse.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy7SiriCam0E5ParseO15EmptyCodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMd, &_ss22KeyedEncodingContainerVy7SiriCam0E5ParseO15EmptyCodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMR);
  OUTLINED_FUNCTION_22();
  v42 = v3;
  v43 = v2;
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v4);
  v40 = v37 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy7SiriCam0E5ParseO24PommesResponseCodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMd, &_ss22KeyedEncodingContainerVy7SiriCam0E5ParseO24PommesResponseCodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMR);
  OUTLINED_FUNCTION_22();
  v44 = v7;
  v45 = v6;
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v8);
  v41 = v37 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy7SiriCam0E5ParseO13UsoCodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMd, &_ss22KeyedEncodingContainerVy7SiriCam0E5ParseO13UsoCodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMR);
  OUTLINED_FUNCTION_22();
  v38 = v11;
  v39 = v10;
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v12);
  v14 = v37 - v13;
  v37[1] = type metadata accessor for CamUSOParse(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_0();
  v18 = v17 - v16;
  type metadata accessor for CamParse(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_0();
  v22 = (v21 - v20);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy7SiriCam0E5ParseO10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMd, &_ss22KeyedEncodingContainerVy7SiriCam0E5ParseO10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMR);
  OUTLINED_FUNCTION_22();
  v24 = v23;
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v25);
  v27 = v37 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CamParse.CodingKeys and conformance CamParse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of CamParse(v46, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = *v22;
      v50 = 1;
      lazy protocol witness table accessor for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys();
      v30 = v41;
      v31 = v47;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v48 = v29;
      type metadata accessor for PommesResponse();
      lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse(&lazy protocol witness table cache variable for type PommesResponse and conformance PommesResponse, MEMORY[0x277D566B0], &protocol conformance descriptor for PommesResponse);
      v32 = v45;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v44 + 8))(v30, v32);
      (*(v24 + 8))(v27, v31);
    }

    else
    {
      v51 = 2;
      lazy protocol witness table accessor for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys();
      v35 = v40;
      v36 = v47;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v42 + 8))(v35, v43);
      (*(v24 + 8))(v27, v36);
    }
  }

  else
  {
    outlined init with take of CamUSOParse(v22, v18);
    v49 = 0;
    lazy protocol witness table accessor for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys();
    v33 = v47;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse(&lazy protocol witness table cache variable for type CamUSOParse and conformance CamUSOParse, type metadata accessor for CamUSOParse, &protocol conformance descriptor for CamUSOParse);
    v34 = v39;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v38 + 8))(v14, v34);
    outlined destroy of CamUSOParse(v18);
    (*(v24 + 8))(v27, v33);
  }
}

unint64_t lazy protocol witness table accessor for type CamParse.CodingKeys and conformance CamParse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys()
{
  result = lazy protocol witness table cache variable for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys()
{
  result = lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys()
{
  result = lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys);
  }

  return result;
}

uint64_t outlined destroy of CamUSOParse(uint64_t a1)
{
  v2 = type metadata accessor for CamUSOParse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PommesResponse.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s21SiriInformationSearch14PommesResponseC0A3CamE10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLO8rawValueAGSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PommesResponse.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = _s21SiriInformationSearch14PommesResponseC0A3CamE10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLO8rawValueSSvg_0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance PommesResponse.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = _s21SiriInformationSearch14PommesResponseC0A3CamE10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLO8rawValueAGSgSS_tcfC_0(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PommesResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriInformationSearch14PommesResponseC0D3CamE10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMd, &_ss22KeyedEncodingContainerVy21SiriInformationSearch14PommesResponseC0D3CamE10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMR);
  OUTLINED_FUNCTION_22();
  v5 = v4;
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[0] = dispatch thunk of PommesResponse.primaryPluginIdentifier()();
  v11[1] = v9;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type Int? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd, &_sSSSgMR);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v1)
  {
    PommesResponse.metadataDomainName.getter();
    LOBYTE(v11[0]) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();

    dispatch thunk of PommesResponse.primaryQueryConfidence()();
    LOBYTE(v11[0]) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t lazy protocol witness table accessor for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys);
  }

  return result;
}

void type metadata completion function for CamUSOParse(uint64_t a1)
{
  type metadata accessor for Siri_Nlu_External_UserParse();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Siri_Nlu_External_Parser.ParserIdentifier?)
  {
    type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Siri_Nlu_External_Parser.ParserIdentifier?);
    }
  }
}

uint64_t type metadata completion function for CamParse(uint64_t a1)
{
  result = type metadata accessor for CamUSOParse(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PommesResponse();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PommesResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CamParse.UsoCodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CamUSOParse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t UseCloudThreshold.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t CamRequestContext.init(siriLocale:renderDeviceIdiom:requestIsDictation:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = type metadata accessor for Locale();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for CamRequestContext(0);
  *(a4 + *(result + 20)) = v7;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t type metadata accessor for CamRequestContext(uint64_t a1)
{
  result = type metadata singleton initialization cache for CamRequestContext;
  if (!type metadata singleton initialization cache for CamRequestContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

SiriCam::DeviceIdiom_optional __swiftcall DeviceIdiom.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DeviceIdiom.init(rawValue:), v3);

  v7 = 9;
  if (v5 < 9)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t DeviceIdiom.rawValue.getter()
{
  result = 7496035;
  switch(*v0)
  {
    case 1:
      result = 0x646F70656D6F68;
      break;
    case 2:
      result = 6513005;
      break;
    case 3:
      result = 6578544;
      break;
    case 4:
      result = 6582128;
      break;
    case 5:
      result = 0x656E6F6870;
      break;
    case 6:
      result = 0x6863746177;
      break;
    case 7:
      result = 30324;
      break;
    case 8:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DeviceIdiom and conformance DeviceIdiom()
{
  result = lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom;
  if (!lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom;
  if (!lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom)
  {
    type metadata accessor for DeviceIdiom();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom);
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DeviceIdiom@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceIdiom.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t type metadata completion function for CamRequestContext(uint64_t a1)
{
  result = type metadata accessor for Locale();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceIdiom(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DeviceIdiom(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of SiriSignalsContaining.get(from:query:defaultVal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 16))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 24))(a1, a2, a3, a4, a5);
}

uint64_t _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SiSaySS_SitGTt0g5Tm(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t static ActionRoutingSiriSignals.all()()
{
  Installed = static TimeSinceAppLastInstalledSignal.instances()();
  Launched = static TimeSinceAppLastLaunchedSignal.instances()();
  v12 = Installed;
  specialized Array.append<A>(contentsOf:)(Launched);
  type metadata accessor for AppLaunchCountSignal();
  v2 = MEMORY[0x26D5DC3E0]();
  specialized Array.append<A>(contentsOf:)(v2);
  v3 = MEMORY[0x26D5DC490]();
  specialized Array.append<A>(contentsOf:)(v3);
  v4 = MEMORY[0x26D5DC4F0]();
  specialized Array.append<A>(contentsOf:)(v4);
  v5 = MEMORY[0x26D5DC4C0]();
  specialized Array.append<A>(contentsOf:)(v5);
  v6 = MEMORY[0x26D5DC500]();
  specialized Array.append<A>(contentsOf:)(v6);
  v7 = MEMORY[0x26D5DC4B0]();
  v8 = MEMORY[0x26D5DC4A0]();
  specialized Array.append<A>(contentsOf:)(v8);
  specialized Array.append<A>(contentsOf:)(v7);
  v9 = MEMORY[0x26D5DC4E0]();
  v10 = MEMORY[0x26D5DC4D0]();
  specialized Array.append<A>(contentsOf:)(v10);
  specialized Array.append<A>(contentsOf:)(v9);
  return v12;
}

Swift::Void __swiftcall SiriSignalsContainer.refreshSignals()()
{
  v1 = static ActionRoutingSiriSignals.all()();
  v21 = v0;
  v2 = one-time initialization token for ranker;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.ranker);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136315138;
    type metadata accessor for SignalValue();
    v8 = Dictionary.description.getter();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v22);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_266790000, v4, v5, "SignalContainer.refresh() called %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();
  }

  else
  {
  }

  specialized _arrayForceCast<A, B>(_:)(v1);

  type metadata accessor for SignalGatherer();
  swift_allocObject();
  SignalGatherer.init(signals:candidateAppBundleIds:)();
  v12 = swift_allocObject();
  type metadata accessor for SignalValue();
  *(v12 + 16) = Dictionary.init(dictionaryLiteral:)();

  dispatch thunk of SignalGatherer.gatherValuesAndTimings(completion:)();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22[0] = v16;
    *v15 = 136315138;
    swift_beginAccess();

    v17 = Dictionary.description.getter();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v22);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_266790000, v13, v14, "SignalContainer.refresh() finished %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();
  }

  else
  {
  }

  swift_beginAccess();
  *(v21 + 16) = *(v12 + 16);
}

uint64_t closure #1 in SiriSignalsContainer.refreshSignals()(uint64_t a1, char *a2)
{
  v45 = a2;
  v3 = type metadata accessor for SignalGatherer.ValuesWithTimings();
  v43 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SignalGathererError();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v42 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v44 = &v41 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMd, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMR);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  outlined init with copy of (CamLogOutput, CamModelMetadata)(a1, &v41 - v15, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMd, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v13, v16, v6);
    v17 = v7;
    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.ranker);
    v19 = *(v7 + 16);
    v20 = v44;
    v19(v44, v13, v6);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v45 = v13;
      v24 = v6;
      v25 = v23;
      v26 = swift_slowAlloc();
      v46[0] = v26;
      *v25 = 136315138;
      v19(v42, v20, v6);
      v27 = String.init<A>(describing:)();
      v29 = v28;
      v30 = *(v17 + 8);
      v30(v20, v6);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v46);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_266790000, v21, v22, "Signal gatherer error, setting signalValues to nil: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x26D5DDCD0](v26, -1, -1);
      MEMORY[0x26D5DDCD0](v25, -1, -1);

      return (v30)(v45, v24);
    }

    else
    {

      v40 = *(v17 + 8);
      v40(v20, v6);
      return (v40)(v13, v6);
    }
  }

  else
  {
    v33 = v43;
    (*(v43 + 32))(v5, v16, v3);
    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.ranker);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_266790000, v35, v36, "Successfully gathered all signals", v37, 2u);
      MEMORY[0x26D5DDCD0](v37, -1, -1);
    }

    v38 = SignalGatherer.ValuesWithTimings.values.getter();
    (*(v33 + 8))(v5, v3);
    v39 = v45;
    swift_beginAccess();
    *(v39 + 2) = v38;
  }
}

uint64_t SiriSignalsContainer.get(from:query:defaultVal:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v73 = a3;
  v74 = a4;
  v72 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_11SiriSignals11SignalValueO5valuetMd, &_sSS3key_11SiriSignals11SignalValueO5valuetMR);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v7);
  v9 = v4[2];
  if (*(v9 + 16))
  {
    v75 = v5;
    v10 = *(a1 + 16);
    v11 = MEMORY[0x277D84F90];
    v70 = (&v65 - v8);
    v66 = a1;
    v67 = v10;
    if (v10)
    {
      v12 = v4;
      v81 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
      v11 = v81;
      v13 = a1 + 32;
      do
      {
        outlined init with copy of SignalProviding(v13, &v76);
        v14 = v79;
        v15 = v80;
        v4 = __swift_project_boxed_opaque_existential_1(&v76, v79);
        v16 = MEMORY[0x26D5DC380](v14, v15);
        v18 = v17;
        __swift_destroy_boxed_opaque_existential_0(&v76);
        v81 = v11;
        v20 = *(v11 + 16);
        v19 = *(v11 + 24);
        if (v20 >= v19 >> 1)
        {
          v4 = &v81;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1);
          v11 = v81;
        }

        *(v11 + 16) = v20 + 1;
        v21 = v11 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        v13 += 40;
        --v10;
      }

      while (v10);
      v9 = v12[2];
    }

    v22 = *(v9 + 64);
    v69 = v9 + 64;
    v23 = 1 << *(v9 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v22;
    v26 = (v23 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v27 = 0;
    v68 = MEMORY[0x277D84F90];
    while (v25)
    {
LABEL_16:
      v29 = __clz(__rbit64(v25)) | (v27 << 6);
      v30 = *(v9 + 56);
      v31 = v9;
      v32 = (*(v9 + 48) + 16 * v29);
      v33 = *v32;
      v34 = v32[1];
      type metadata accessor for SignalValue();
      OUTLINED_FUNCTION_0_2();
      v36 = v30 + *(v35 + 72) * v29;
      v4 = v70;
      (*(v35 + 16))(v70 + *(v71 + 48), v36);
      *v4 = v33;
      v4[1] = v34;

      v37 = v75;
      closure #1 in SiriSignalsContainer.get(from:query:defaultVal:)(v4, v11, v72, v73, v74, &v76);
      v75 = v37;
      if (v37)
      {
LABEL_35:

        outlined destroy of (key: String, value: SignalValue)(v4);

        __break(1u);
        return result;
      }

      v25 &= v25 - 1;
      outlined destroy of (key: String, value: SignalValue)(v4);
      v38 = v77;
      v9 = v31;
      if (v77)
      {
        v39 = v76;
        v4 = v78;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v68 = v44;
        }

        v40 = *(v68 + 16);
        v41 = v40 + 1;
        if (v40 >= *(v68 + 24) >> 1)
        {
          v65 = v40 + 1;
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v41 = v65;
          v68 = v45;
        }

        v42 = v68;
        *(v68 + 16) = v41;
        v43 = (v42 + 24 * v40);
        v43[4] = v39;
        v43[5] = v38;
        v43[6] = v4;
      }
    }

    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v28 >= v26)
      {
        break;
      }

      v25 = *(v69 + 8 * v28);
      ++v27;
      if (v25)
      {
        v27 = v28;
        goto LABEL_16;
      }
    }

    v46 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SiSaySS_SitGTt0g5Tm(v68, &_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR, specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:));
    v47 = v46;
    v48 = v67;
    if (v46[2] == v67)
    {
      return v47;
    }

    v51 = MEMORY[0x277D84F90];
    if (v67)
    {
      v75 = v46;
      v81 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67, 0);
      v51 = v81;
      v52 = v66 + 32;
      do
      {
        outlined init with copy of SignalProviding(v52, &v76);
        __swift_project_boxed_opaque_existential_1(&v76, v79);
        v53 = dispatch thunk of AppSelectionSignalComponent.name.getter();
        v55 = v54;
        __swift_destroy_boxed_opaque_existential_0(&v76);
        v81 = v51;
        v57 = *(v51 + 16);
        v56 = *(v51 + 24);
        if (v57 >= v56 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v56 > 1, v57 + 1, 1);
          v51 = v81;
        }

        *(v51 + 16) = v57 + 1;
        v58 = v51 + 16 * v57;
        *(v58 + 32) = v53;
        *(v58 + 40) = v55;
        v52 += 40;
        --v48;
      }

      while (v48);
    }

    v59 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v51);
    v60 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSo14MLFeatureValueC_GTt0g5();
    specialized Set.subtracting(_:)(v60, v59);

    v76 = 0;
    v77 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v76 = 0xD000000000000029;
    v77 = 0x800000026681B5A0;
    v61 = Set.description.getter();
    v63 = v62;

    MEMORY[0x26D5DCD80](v61, v63);

    MEMORY[0x26D5DCD80](46, 0xE100000000000000);
    v47 = v76;
    v49 = v77;
    lazy protocol witness table accessor for type CaarError and conformance CaarError();
    swift_allocError();
  }

  else
  {
    v49 = 0x800000026681B5D0;
    lazy protocol witness table accessor for type CaarError and conformance CaarError();
    swift_allocError();
    v47 = 0xD000000000000050;
  }

  *v50 = v47;
  *(v50 + 8) = v49;
  *(v50 + 16) = 1;
  swift_willThrow();
  return v47;
}

uint64_t closure #1 in SiriSignalsContainer.get(from:query:defaultVal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t *a6@<X8>)
{
  v54 = a2;
  v50 = a5;
  v51 = a4;
  v52 = a3;
  v60 = a6;
  v7 = type metadata accessor for SignalValue();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v53 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_11SiriSignals11SignalValueO5valuetMd, &_sSS3key_11SiriSignals11SignalValueO5valuetMR);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = (&v49 - v15);
  outlined init with copy of (CamLogOutput, CamModelMetadata)(a1, &v49 - v15, &_sSS3key_11SiriSignals11SignalValueO5valuetMd, &_sSS3key_11SiriSignals11SignalValueO5valuetMR);
  v17 = *v16;
  v18 = v16[1];
  v19 = v16 + *(v14 + 56);
  v56 = *(v8 + 8);
  v56(v19, v7);
  outlined init with copy of (CamLogOutput, CamModelMetadata)(a1, v16, &_sSS3key_11SiriSignals11SignalValueO5valuetMd, &_sSS3key_11SiriSignals11SignalValueO5valuetMR);

  v20 = v16 + *(v14 + 56);
  v21 = v7;
  (*(v8 + 32))(v12, v20, v7);
  v59[0] = v17;
  v59[1] = v18;
  v58 = v59;
  v22 = v55;
  if (!specialized Sequence.contains(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), v57, v54))
  {
    v56(v12, v7);

LABEL_14:
    v43 = v60;
    *v60 = 0;
    v43[1] = 0;
    v43[2] = 0;
    return result;
  }

  v55 = v22;
  v23 = v53;
  (*(v8 + 16))(v53, v12, v21);
  if ((*(v8 + 88))(v23, v21) != *MEMORY[0x277D60188])
  {

    v38 = v56;
    v56(v23, v21);
    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.ranker);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_266790000, v40, v41, "Ignoring bundle-dependent signal; can only use independent signals in this context", v42, 2u);
      MEMORY[0x26D5DDCD0](v42, -1, -1);
    }

    result = v38(v12, v21);
    goto LABEL_14;
  }

  v24 = v17;
  (*(v8 + 96))(v23, v21);
  v25 = v51;
  v53 = specialized Dictionary.subscript.getter(v52, v51, *v23);
  v27 = v26;

  if (v27)
  {
    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.ranker);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v29, v30))
    {

      result = (v56)(v12, v21);
      v35 = v50;
      goto LABEL_22;
    }

    v31 = swift_slowAlloc();
    v54 = v18;
    v32 = v31;
    v33 = swift_slowAlloc();
    v49 = v8 + 8;
    v34 = v33;
    v59[0] = v33;
    *v32 = 136315650;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v54, v59);
    *(v32 + 12) = 2080;
    *(v32 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v25, v59);
    *(v32 + 22) = 2048;
    v35 = v50;
    *(v32 + 24) = v50;
    v36 = "No value of %s for include %s. Defaulting to %ld";
  }

  else
  {
    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.ranker);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v29, v30))
    {

      result = (v56)(v12, v21);
      v35 = v53;
      goto LABEL_22;
    }

    v45 = swift_slowAlloc();
    v54 = v18;
    v32 = v45;
    v46 = swift_slowAlloc();
    v49 = v8 + 8;
    v34 = v46;
    v59[0] = v46;
    *v32 = 136315650;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v54, v59);
    *(v32 + 12) = 2080;
    *(v32 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v25, v59);
    *(v32 + 22) = 2048;
    v35 = v53;
    *(v32 + 24) = v53;
    v36 = "Found value of %s for %s: %ld";
  }

  _os_log_impl(&dword_266790000, v29, v30, v36, v32, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x26D5DDCD0](v34, -1, -1);
  v47 = v32;
  v18 = v54;
  MEMORY[0x26D5DDCD0](v47, -1, -1);

  result = (v56)(v12, v21);
LABEL_22:
  v48 = v60;
  *v60 = v24;
  v48[1] = v18;
  v48[2] = v35;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t outlined destroy of (key: String, value: SignalValue)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_11SiriSignals11SignalValueO5valuetMd, &_sSS3key_11SiriSignals11SignalValueO5valuetMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v24 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSiGMd, &_ss17_NativeDictionaryVySSSiGMR);
      _NativeDictionary.copy()();
      if (v14)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v18 = (v17[6] + 16 * v11);
    *v18 = v7;
    v18[1] = v6;
    *(v17[7] + 8 * v11) = v8;
    v19 = v17[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v17[2] = v21;
    ++v4;
    a2 = 1;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)();
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_21;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v22 = swift_allocError();
  swift_willThrow();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  MEMORY[0x26D5DCD80](0xD00000000000001BLL, 0x800000026681B680);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D5DCD80](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v15 = v11;
    if (v9[3] < v13 + v14)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v19 = (v18[6] + 16 * v12);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 8 * v12) = v10;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)();
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v12 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  MEMORY[0x26D5DCD80](0xD00000000000001BLL, 0x800000026681B680);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D5DCD80](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void one-time initialization function for forceEnabled()
{
  static SiriKitRuntimeAmbiguityFeatureFlags.forceEnabled = MEMORY[0x277D84F98];
}

{
  static CamFeatureFlag.forceEnabled = MEMORY[0x277D84F98];
}

uint64_t SiriKitRuntimeAmbiguityFeatureFlags.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static SiriKitRuntimeAmbiguityFeatureFlags.forceEnabled;
  if (*(static SiriKitRuntimeAmbiguityFeatureFlags.forceEnabled + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + v1);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v5[3] = &type metadata for SiriKitRuntimeAmbiguityFeatureFlags;
    v5[4] = lazy protocol witness table accessor for type SiriKitRuntimeAmbiguityFeatureFlags and conformance SiriKitRuntimeAmbiguityFeatureFlags();
    v3 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  return v3 & 1;
}

Swift::Int SiriKitRuntimeAmbiguityFeatureFlags.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5DD540](0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type SiriKitRuntimeAmbiguityFeatureFlags and conformance SiriKitRuntimeAmbiguityFeatureFlags()
{
  result = lazy protocol witness table cache variable for type SiriKitRuntimeAmbiguityFeatureFlags and conformance SiriKitRuntimeAmbiguityFeatureFlags;
  if (!lazy protocol witness table cache variable for type SiriKitRuntimeAmbiguityFeatureFlags and conformance SiriKitRuntimeAmbiguityFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitRuntimeAmbiguityFeatureFlags and conformance SiriKitRuntimeAmbiguityFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriKitRuntimeAmbiguityFeatureFlags and conformance SiriKitRuntimeAmbiguityFeatureFlags;
  if (!lazy protocol witness table cache variable for type SiriKitRuntimeAmbiguityFeatureFlags and conformance SiriKitRuntimeAmbiguityFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitRuntimeAmbiguityFeatureFlags and conformance SiriKitRuntimeAmbiguityFeatureFlags);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriKitRuntimeAmbiguityFeatureFlags(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
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

uint64_t specialized Sequence<>.max()(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

SiriCam::Domain3PProtectionLevel_optional __swiftcall Domain3PProtectionLevel.init(rawValue:)(Swift::Int64 rawValue)
{
  if (rawValue >= 4)
  {
    LOBYTE(rawValue) = 4;
  }

  return rawValue;
}

uint64_t DawnRankerFeatureExtractor.init(actions:rankerContext:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ActionCandidate(0);
  OUTLINED_FUNCTION_2_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  v11 = (a2 + *(type metadata accessor for RankerContext(0) + 24));
  v12 = *v11;
  v13 = v11[1];
  type metadata accessor for ConversationHistoryFeatureExtractor();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v24 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v16 = v24;
    v17 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v18 = *(v6 + 72);
    do
    {
      outlined init with copy of ActionCandidate(v17, v10, type metadata accessor for ActionCandidate);
      v19 = *(v10 + *(v4 + 24));
      outlined destroy of ActionCandidate();
      v21 = v24[2];
      v20 = v24[3];
      if (v21 >= v20 >> 1)
      {
        v22 = OUTLINED_FUNCTION_16_8(v20);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22, v21 + 1, 1);
      }

      v24[2] = v21 + 1;
      v24[v21 + 4] = v19;
      v17 += v18;
      --v15;
    }

    while (v15);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  specialized Sequence<>.max()(v16);

  static DawnRankerFeatureExtractor.extractOnScreenAppBundleIds(rrCandidates:)();
  outlined destroy of ActionCandidate();
  return v14;
}

uint64_t specialized ScalarFeatureExtracting.extract(from:to:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = a3(a1);
  if (!v3)
  {
    specialized _dictionaryUpCast<A, B, C, D>(_:)(result);
    v6 = v5;

    specialized Dictionary.update(other:allowDuplicateKeys:)(v6, 0);
  }

  return result;
}

void one-time initialization function for extractedFeatures()
{
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of static AffinityRankFeatureExtractor.extractedFeatures.getter);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for extractedFeatures);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of static ConversationHistoryFeatureExtractor.extractedFeatures.getter);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for extractedFeatures);
  static RankerFeatureExtractor.extractedFeatures = &outlined read-only object #0 of one-time initialization function for extractedFeatures;
}

{
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for extractedFeatures);
  static DawnRankerFeatureExtractor.extractedFeatures = &outlined read-only object #0 of static ConversationHistoryFeatureExtractor.extractedFeatures.getter;
}

{
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for CLIENT_TIME_RANGE);
  static PersonalContextFeatureExtractor.extractedFeatures = &outlined read-only object #0 of one-time initialization function for extractedFeatures;
}

uint64_t RankerFeatureExtractor.extractImpl(from:)()
{
  type metadata accessor for MLFeatureValue();
  v1 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for RankerFeatureExtractor(0);
  v2 = OUTLINED_FUNCTION_18_9();
  v3 = specialized FeatureExtracting.extract(from:)(v2);
  if (v0)
  {
  }

  else
  {
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v3);

    OUTLINED_FUNCTION_13_12();

    v4 = OUTLINED_FUNCTION_18_9();
    v5 = specialized FeatureExtracting.extract(from:)(v4);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);

    OUTLINED_FUNCTION_13_12();

    v7 = OUTLINED_FUNCTION_18_9();
    specialized ScalarFeatureExtracting.extract(from:to:)(v7, v8, v9);
    v10 = OUTLINED_FUNCTION_18_9();
    v11 = specialized FeatureExtracting.extract(from:)(v10);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v11);

    OUTLINED_FUNCTION_13_12();

    OUTLINED_FUNCTION_6_18();
    v12 = OUTLINED_FUNCTION_18_9();
    specialized ScalarFeatureExtracting.extract(from:to:)(v12, v13, v14);
  }

  return v1;
}

uint64_t ParserPriority.init(parserId:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  if (__swift_getEnumTagSinglePayload(a1, 1, v5) != 1)
  {
    outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(a1, v4);
    OUTLINED_FUNCTION_2_3();
    v8 = v7;
    v10 = (*(v9 + 88))(v4, v5);
    if (v10 == *MEMORY[0x277D5DA80])
    {
      v6 = 0;
      goto LABEL_11;
    }

    if (v10 == *MEMORY[0x277D5DA78])
    {
      v6 = 4;
      goto LABEL_11;
    }

    if (v10 == *MEMORY[0x277D5DA70])
    {
      v6 = 2;
      goto LABEL_11;
    }

    if (v10 == *MEMORY[0x277D5DA60])
    {
      v6 = 1;
      goto LABEL_11;
    }

    (*(v8 + 8))(v4, v5);
  }

  v6 = 5;
LABEL_11:
  outlined destroy of (CamLogOutput, CamModelMetadata)(a1, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  return v6;
}

SiriCam::Domain3PProtectionLevel_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Domain3PProtectionLevel@<W0>(Swift::Int64 *a1@<X0>, SiriCam::Domain3PProtectionLevel_optional *a2@<X8>)
{
  result.value = Domain3PProtectionLevel.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Domain3PProtectionLevel@<X0>(uint64_t *a1@<X8>)
{
  result = Domain3PProtectionLevel.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t static DawnRankerFeatureExtractor.extractOnScreenAppBundleIds(rrCandidates:)()
{
  OUTLINED_FUNCTION_48();
  v60 = type metadata accessor for RREntity();
  OUTLINED_FUNCTION_2_3();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v55 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v51 - v6;
  v61 = type metadata accessor for RRCandidate();
  OUTLINED_FUNCTION_2_3();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v54 = v11;
  v13 = MEMORY[0x28223BE20](v12);
  v52 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  v17 = 0;
  v18 = *(v0 + 2);
  v56 = v0;
  v57 = v18;
  v19 = (v2 + 8);
  v58 = (v9 + 8);
  v59 = v9 + 16;
  v51 = (v9 + 32);
  v53 = MEMORY[0x277D84F90];
  while (v57 != v17)
  {
    v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v21 = *(v9 + 72);
    (*(v9 + 16))(v16, v56 + v20 + v21 * v17, v61);
    RRCandidate.entity.getter();
    RREntity.usoEntity.getter();
    (*v19)(v7, v60);
    v22 = UsoTask.verbString.getter();
    v24 = v23;

    if (v22 == 0x415F6E6F6D6D6F63 && v24 == 0xEA00000000007070)
    {

LABEL_10:
      if (!RRCandidate.isOnScreen.getter())
      {
        goto LABEL_11;
      }

      v27 = *v51;
      (*v51)(v52, v16, v61);
      v28 = v53;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 16) + 1, 1);
        v28 = v62;
      }

      v31 = *(v28 + 16);
      v30 = *(v28 + 24);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v33 = OUTLINED_FUNCTION_16_8(v30);
        v53 = v34;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v33, v34, 1);
        v32 = v53;
        v28 = v62;
      }

      ++v17;
      *(v28 + 16) = v32;
      v53 = v28;
      v27((v28 + v20 + v31 * v21), v52, v61);
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
        goto LABEL_10;
      }

LABEL_11:
      (*v58)(v16, v61);
      ++v17;
    }
  }

  v35 = v53;
  v36 = *(v53 + 16);
  if (v36)
  {
    v62 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
    v37 = v62;
    v38 = v35 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v39 = *(v9 + 72);
    v56 = *(v9 + 16);
    v57 = v39;
    do
    {
      v40 = v54;
      v41 = v61;
      v56(v54, v38, v61);
      v42 = v55;
      RRCandidate.entity.getter();
      v43 = RREntity.id.getter();
      v45 = v44;
      (*v19)(v42, v60);
      (*v58)(v40, v41);
      v62 = v37;
      v47 = *(v37 + 16);
      v46 = *(v37 + 24);
      if (v47 >= v46 >> 1)
      {
        v49 = OUTLINED_FUNCTION_16_8(v46);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49, v47 + 1, 1);
        v37 = v62;
      }

      *(v37 + 16) = v47 + 1;
      v48 = v37 + 16 * v47;
      *(v48 + 32) = v43;
      *(v48 + 40) = v45;
      v38 += v57;
      --v36;
    }

    while (v36);
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  return _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v37);
}

__int128 *DawnRankerFeatureExtractor.extractImpl(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v129 = a3;
  v130 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v120 - v7;
  v9 = type metadata accessor for CamUSOParse(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  v13 = (v12 - v11);
  type metadata accessor for CamParse(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_0();
  v17 = (v16 - v15);
  v18 = type metadata accessor for MLFeatureValue();
  v134 = Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_6_18();
  specialized ScalarFeatureExtracting.extract(from:to:)(a1, &v134, v19);
  if (v4)
  {

    return v13;
  }

  v128 = v18;
  v20 = type metadata accessor for ActionCandidate(0);
  v21 = v20[5];
  v22 = *(a1 + v20[6]);
  if (v22 >= 4)
  {
    v22 = 4;
  }

  if (v22 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  v127 = a1;
  outlined init with copy of ActionCandidate(a1 + v21, v17, type metadata accessor for CamParse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v126 = 0;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = *v17;
      v26 = dispatch thunk of PommesResponse.isPersonalDomainFallback.getter();

      v27 = 0;
      v121 = 0;
      v124 = v26 & 1;
      v125 = 0;
      v28 = 3;
    }

    else
    {
      if (one-time initialization token for ranker != -1)
      {
        OUTLINED_FUNCTION_1(&one-time initialization token for ranker);
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.ranker);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        OUTLINED_FUNCTION_1_8(&dword_266790000, v41, v42, "Unknown parser");
        MEMORY[0x26D5DDCD0](v40, -1, -1);
      }

      outlined destroy of ActionCandidate();
      v124 = 0;
      v125 = 0;
      v27 = 0;
      v121 = 0;
      v28 = 5;
    }

    goto LABEL_20;
  }

  outlined init with take of CamUSOParse(v17, v13);
  outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(v13 + *(v9 + 20), v8);
  v28 = ParserPriority.init(parserId:)(v8);
  v29 = CamUSOParse.appShortcutInvocation.getter();
  if (!v30)
  {
    OUTLINED_FUNCTION_9_11();
    v124 = 0;
    v125 = 0;
    v27 = 0;
    v121 = 0;
LABEL_20:
    v36 = v127;
    goto LABEL_23;
  }

  outlined consume of AppShortcutInvocation?(v29, v30);
  CamUSOParse.appShortcutInvocation.getter();
  v32 = v31;
  v121 = v33;
  v35 = v34;
  OUTLINED_FUNCTION_9_11();
  v36 = v127;
  if (v32)
  {
    v125 = v35;

    v124 = 0;
  }

  else
  {
    v124 = 0;
    v125 = 0;
    v121 = 0;
  }

  v27 = 1;
  v23 = v129;
LABEL_23:
  v43 = (v36 + v20[9]);
  v44 = v43[1];
  v122 = v27;
  if (v44)
  {
    v123 = specialized Set.contains(_:)(*v43, v44, v130);
    if ((v27 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v123 = 0;
    if (!v27)
    {
      goto LABEL_38;
    }
  }

  if (*(v36 + v20[7]))
  {
    OUTLINED_FUNCTION_8_14();
    specialized Dictionary.subscript.getter(v45 - 3, v46 | 0x8000000000000000, v47, &v132);
    if (*(&v133 + 1))
    {
      if (OUTLINED_FUNCTION_23_7(v48, v49, v50, MEMORY[0x277D839B0]))
      {
        goto LABEL_38;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v132 = 0u;
    v133 = 0u;
  }

  outlined destroy of (CamLogOutput, CamModelMetadata)(&v132, &_sypSgMd, &_sypSgMR);
LABEL_33:
  if (one-time initialization token for ranker != -1)
  {
    OUTLINED_FUNCTION_1(&one-time initialization token for ranker);
  }

  v51 = type metadata accessor for Logger();
  __swift_project_value_buffer(v51, static Logger.ranker);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    OUTLINED_FUNCTION_1_8(&dword_266790000, v55, v56, "App Shortcut enablement status not available in user data. This should not happen.");
    v57 = v54;
    v36 = v127;
    MEMORY[0x26D5DDCD0](v57, -1, -1);
  }

LABEL_38:
  if (!*(v36 + v20[7]))
  {
    v132 = 0u;
    v133 = 0u;
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_8_14();
  specialized Dictionary.subscript.getter(v58 - 3, v59 | 0x8000000000000000, v60, &v132);
  if (!*(&v133 + 1))
  {
LABEL_43:
    outlined destroy of (CamLogOutput, CamModelMetadata)(&v132, &_sypSgMd, &_sypSgMR);
    goto LABEL_44;
  }

  if (OUTLINED_FUNCTION_23_7(v61, v62, v63, MEMORY[0x277D839B0]))
  {
    v64 = v131;
    goto LABEL_45;
  }

LABEL_44:
  v64 = 0;
LABEL_45:
  v129 = DawnRankerFeatureExtractor.extractDomainProtectionLevel(from:)(v36);
  v130 = DawnRankerFeatureExtractor.extractAmbiguousFirstRunPreviouslyShown(from:)();
  v65 = objc_opt_self();
  v66 = [v65 featureValueWithInt64_];
  v13 = v134;
  if (v66)
  {
    v67 = v66;
    swift_isUniquelyReferenced_nonNull_native();
    *&v132 = v13;
    OUTLINED_FUNCTION_8_14();
    v69 = &v132;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, v68 - 2, 0x8000000266819430);
    v13 = v132;
  }

  else
  {
    OUTLINED_FUNCTION_8_14();
    v69 = v13;
    specialized __RawDictionaryStorage.find<A>(_:)(v70 - 2, 0x8000000266819430);
    if ((v71 & 1) == 0)
    {
      goto LABEL_50;
    }

    swift_isUniquelyReferenced_nonNull_native();
    *&v132 = v13;
    v13 = *(v13 + 3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_12_15();
    _NativeDictionary._delete(at:)();
  }

  v134 = v13;
LABEL_50:
  if ([v65 featureValueWithInt64_])
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_17_9(isUniquelyReferenced_nonNull_native);
    v13 = v132;
  }

  else
  {
    OUTLINED_FUNCTION_19_9();
    if ((v73 & 1) == 0)
    {
      goto LABEL_55;
    }

    swift_isUniquelyReferenced_nonNull_native();
    *&v132 = v13;
    v13 = *(v13 + 3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_12_15();
    _NativeDictionary._delete(at:)();
  }

  v134 = v13;
LABEL_55:
  if ([v65 featureValueWithInt64_])
  {
    v74 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_17_9(v74);
    v13 = v132;
    v134 = v132;
  }

  else
  {
    OUTLINED_FUNCTION_19_9();
    if (v75)
    {
      OUTLINED_FUNCTION_3_17();
      OUTLINED_FUNCTION_2_18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
      OUTLINED_FUNCTION_0_19();
      OUTLINED_FUNCTION_1_21();
      OUTLINED_FUNCTION_12_15();
      OUTLINED_FUNCTION_7_13(v76, v77, MEMORY[0x277D837D0]);

      v134 = v13;
    }
  }

  OUTLINED_FUNCTION_20_9();
  if ([v65 v78])
  {
    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_14_13();
    OUTLINED_FUNCTION_8_14();
    v79 = OUTLINED_FUNCTION_5_14();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v79, v80, v81);
    v13 = v132;
  }

  else
  {
    OUTLINED_FUNCTION_8_14();
    v69 = v13;
    specialized __RawDictionaryStorage.find<A>(_:)(v82 - 4, 0xD35F5050415F5349);
    if ((v83 & 1) == 0)
    {
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_2_18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_12_15();
    OUTLINED_FUNCTION_7_13(v84, v85, MEMORY[0x277D837D0]);
  }

  v134 = v13;
LABEL_64:
  v86 = [v65 featureValueWithInt64_];
  if (v86)
  {
    v87 = v86;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_14_13();
    v69 = &v132;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v87, 0x665F73656D6D6F70, 0xEF6B6361626C6C61);
    v13 = v132;
  }

  else
  {
    OUTLINED_FUNCTION_19_9();
    if ((v88 & 1) == 0)
    {
      goto LABEL_69;
    }

    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_2_18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_12_15();
    OUTLINED_FUNCTION_7_13(v89, v90, MEMORY[0x277D837D0]);
  }

  v134 = v13;
LABEL_69:
  OUTLINED_FUNCTION_20_9();
  if ([v65 v91])
  {
    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_14_13();
    v92 = OUTLINED_FUNCTION_5_14();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v92, 0xD000000000000017, v93);
    v13 = v132;
  }

  else
  {
    OUTLINED_FUNCTION_25_6();
    if ((v94 & 1) == 0)
    {
      goto LABEL_74;
    }

    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_2_18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_12_15();
    OUTLINED_FUNCTION_7_13(v95, v96, MEMORY[0x277D837D0]);
  }

  v134 = v13;
LABEL_74:
  OUTLINED_FUNCTION_20_9();
  if ([v65 v97])
  {
    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_14_13();
    v98 = OUTLINED_FUNCTION_5_14();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v98, 0xD000000000000017, v99);
    v13 = v132;
LABEL_78:
    v134 = v13;
    goto LABEL_79;
  }

  OUTLINED_FUNCTION_25_6();
  if (v100)
  {
    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_2_18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_12_15();
    OUTLINED_FUNCTION_7_13(v101, v102, MEMORY[0x277D837D0]);

    goto LABEL_78;
  }

LABEL_79:
  OUTLINED_FUNCTION_20_9();
  if ([v65 v103])
  {
    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_14_13();
    OUTLINED_FUNCTION_8_14();
    v104 = OUTLINED_FUNCTION_5_14();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v104, v105, v106);
    v13 = v132;
    v134 = v132;
    v107 = v125;
  }

  else
  {
    OUTLINED_FUNCTION_8_14();
    specialized __RawDictionaryStorage.find<A>(_:)(v108 + 7, 0xE65F73656D6D6F70);
    v107 = v125;
    if (v109)
    {
      OUTLINED_FUNCTION_3_17();
      OUTLINED_FUNCTION_2_18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
      OUTLINED_FUNCTION_0_19();
      OUTLINED_FUNCTION_1_21();
      OUTLINED_FUNCTION_12_15();
      OUTLINED_FUNCTION_7_13(v110, v111, MEMORY[0x277D837D0]);

      v134 = v13;
    }
  }

  if (v107)
  {
    if (@nonobjc MLFeatureValue.__allocating_init(string:)())
    {
      OUTLINED_FUNCTION_3_17();
      OUTLINED_FUNCTION_14_13();
      OUTLINED_FUNCTION_8_14();
      v112 = OUTLINED_FUNCTION_5_14();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v112, v113, v114);
      return v132;
    }

    else
    {
      OUTLINED_FUNCTION_8_14();
      specialized __RawDictionaryStorage.find<A>(_:)(v115 + 7, 0x800000026681AF80);
      if (v116)
      {
        OUTLINED_FUNCTION_3_17();
        OUTLINED_FUNCTION_2_18();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
        OUTLINED_FUNCTION_0_19();
        OUTLINED_FUNCTION_1_21();
        OUTLINED_FUNCTION_12_15();
        OUTLINED_FUNCTION_7_13(v117, v118, MEMORY[0x277D837D0]);
      }
    }
  }

  return v13;
}

uint64_t DawnRankerFeatureExtractor.extractDomainProtectionLevel(from:)(uint64_t a1)
{
  v2 = static TrialProvider.tieBreakingOverrides.getter();
  if (!v2)
  {
    return 3;
  }

  v3 = v2;
  MEMORY[0x28223BE20](v2);
  v8[2] = a1;
  v4 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in DawnRankerFeatureExtractor.extractDomainProtectionLevel(from:), v8, v3);

  v5 = *(v4 + 16);
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = *(v4 + 32);
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v6 = 2;
  }

  return v6;
}

uint64_t DawnRankerFeatureExtractor.extractAmbiguousFirstRunPreviouslyShown(from:)()
{
  v1 = OUTLINED_FUNCTION_48();
  v2 = (v0 + *(type metadata accessor for ActionCandidate(v1) + 36));
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    static CamUserHistoryDefaultsManager.getValue(key:)(0xD000000000000021, 0x800000026681AFC0, v9);
    if (v9[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v5 = swift_dynamicCast();
      if (v5)
      {
        v6 = v8[4];
LABEL_7:
        v9[0] = v4;
        v9[1] = v3;
        MEMORY[0x28223BE20](v5);
        v8[2] = v9;
        LOBYTE(v3) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), v8, v6);

        return v3 & 1;
      }
    }

    else
    {
      v5 = outlined destroy of (CamLogOutput, CamModelMetadata)(v9, &_sypSgMd, &_sypSgMR);
    }

    v6 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  return v3 & 1;
}

id @nonobjc MLFeatureValue.__allocating_init(string:)()
{
  v0 = MEMORY[0x26D5DCC90]();

  v1 = [swift_getObjCClassFromMetadata() featureValueWithString_];

  return v1;
}

uint64_t *closure #1 in DawnRankerFeatureExtractor.extractDomainProtectionLevel(from:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v4 = *result;
  v5 = result[1];
  v6 = result[2];
  v7 = result[3];
  v8 = *a2;
  v9 = a2[1];
  v10 = *result == *a2 && v5 == v9;
  if (v10 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result)) && (v6 == 0xD000000000000021 ? (v11 = 0x8000000266819930 == v7) : (v11 = 0), v11 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result)))
  {
    v12 = 3;
  }

  else
  {
    v13 = v4 == 0xD000000000000021 && 0x8000000266819930 == v5;
    if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result)) && (v6 == v8 ? (v14 = v7 == v9) : (v14 = 0), v14 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result)))
    {
      v12 = 1;
    }

    else
    {
      v12 = 4;
    }
  }

  *a3 = v12;
  return result;
}

double protocol witness for static FeatureExtracting.extractedFeatures.getter in conformance RankerFeatureExtractor(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
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

uint64_t getEnumTagSinglePayload for DawnRankerFeatureExtractor(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for DawnRankerFeatureExtractor(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t type metadata accessor for RankerFeatureExtractor(uint64_t a1)
{
  result = type metadata singleton initialization cache for RankerFeatureExtractor;
  if (!type metadata singleton initialization cache for RankerFeatureExtractor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for RankerFeatureExtractor(uint64_t a1)
{
  result = type metadata accessor for RankerContext(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AffinityRankFeatureExtractor();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ConversationHistoryFeatureExtractor();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t outlined init with copy of ActionCandidate(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of ActionCandidate()
{
  v1 = OUTLINED_FUNCTION_48();
  v2(v1);
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(v0);
  return v0;
}

_BYTE *storeEnumTagSinglePayload for Domain3PProtectionLevel(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type Domain3PProtectionLevel and conformance Domain3PProtectionLevel()
{
  result = lazy protocol witness table cache variable for type Domain3PProtectionLevel and conformance Domain3PProtectionLevel;
  if (!lazy protocol witness table cache variable for type Domain3PProtectionLevel and conformance Domain3PProtectionLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Domain3PProtectionLevel and conformance Domain3PProtectionLevel);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_19_9()
{

  return specialized __RawDictionaryStorage.find<A>(_:)(v1, v0);
}

uint64_t OUTLINED_FUNCTION_23_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_25_6()
{

  return specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, v0 | 0x8000000000000000);
}

id static UncertaintyPromptRequestLogger.map(from:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D56C68]) init];
  if (v2)
  {
    v3 = *(a1 + *(type metadata accessor for CamRequest(0) + 52));
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = (v3 + 32);
      do
      {
        v7 = *v5++;
        v6 = v7;
        v8 = v7 == 1;
        if (v7 == 1)
        {
          v9 = 0x4F5455415F534D53;
        }

        else
        {
          v9 = 0xD000000000000010;
        }

        if (v8)
        {
          v10 = 0xEC000000444E4553;
        }

        else
        {
          v10 = 0x8000000266819EC0;
        }

        if (v6)
        {
          v11 = v9;
        }

        else
        {
          v11 = 0x455045525F4B5341;
        }

        if (v6)
        {
          v12 = v10;
        }

        else
        {
          v12 = 0xEA00000000005441;
        }

        v13 = MEMORY[0x26D5DCC90](v11, v12);

        [v2 addFeature_];

        --v4;
      }

      while (v4);
    }
  }

  return v2;
}

id static CaarErrorLogger.wrapIntoLogEvent(message:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D56BA0]) init];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x277D56B48]) init];
  if (v4)
  {
    [v3 setFailed_];
    [v4 setCaarRequestContext_];
  }

  return v4;
}

void *one-time initialization function for kCamActionMap()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_So18CAMSchemaCAMActionVtGMd, _ss23_ContiguousArrayStorageCys11AnyHashableV_So18CAMSchemaCAMActionVtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2668179C0;
  v1 = lazy protocol witness table accessor for type CamAction and conformance CamAction();
  v9 = OUTLINED_FUNCTION_0_20(v1, v2, v3, v4, v5, v6, v7, v8, v66, *v74, *&v74[4], v74[6], 0);
  *(inited + 72) = 0;
  v17 = OUTLINED_FUNCTION_0_20(v9, v10, v11, v12, v13, v14, v15, v16, v67, v75, v82, v89, 1);
  *(inited + 120) = 1;
  v25 = OUTLINED_FUNCTION_0_20(v17, v18, v19, v20, v21, v22, v23, v24, v68, v76, v83, v90, 2);
  *(inited + 168) = 2;
  v33 = OUTLINED_FUNCTION_0_20(v25, v26, v27, v28, v29, v30, v31, v32, v69, v77, v84, v91, 3);
  *(inited + 216) = 3;
  OUTLINED_FUNCTION_0_20(v33, v34, v35, v36, v37, v38, v39, v40, v70, v78, v85, v92, 4);
  *(inited + 264) = 6;
  v41 = lazy protocol witness table accessor for type AutoConfirmAction and conformance AutoConfirmAction();
  v49 = OUTLINED_FUNCTION_0_20(v41, v42, v43, v44, v45, v46, v47, v48, v71, v79, v86, v93, 0);
  *(inited + 312) = 0;
  v57 = OUTLINED_FUNCTION_0_20(v49, v50, v51, v52, v53, v54, v55, v56, v72, v80, v87, v94, 1);
  *(inited + 360) = 4;
  OUTLINED_FUNCTION_0_20(v57, v58, v59, v60, v61, v62, v63, v64, v73, v81, v88, v95, 2);
  *(inited + 408) = 5;
  type metadata accessor for CAMSchemaCAMAction(0);
  result = Dictionary.init(dictionaryLiteral:)();
  kCamActionMap._rawValue = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AutoConfirmAction and conformance AutoConfirmAction()
{
  result = lazy protocol witness table cache variable for type AutoConfirmAction and conformance AutoConfirmAction;
  if (!lazy protocol witness table cache variable for type AutoConfirmAction and conformance AutoConfirmAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoConfirmAction and conformance AutoConfirmAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoConfirmAction and conformance AutoConfirmAction;
  if (!lazy protocol witness table cache variable for type AutoConfirmAction and conformance AutoConfirmAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoConfirmAction and conformance AutoConfirmAction);
  }

  return result;
}

uint64_t DisambiguationFeatureExtractor.init(rankedActions:siriSignalsContainer:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam6TopTwoVSgMd, &_s7SiriCam6TopTwoVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  Array<A>.topTwo.getter(a1, &v17 - v7);

  v9 = type metadata accessor for TopTwo(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    outlined destroy of Token?(v8, &_s7SiriCam6TopTwoVSgMd, &_s7SiriCam6TopTwoVSgMR);
    v10 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriCam12RankedActionVGMd, &_ss23_ContiguousArrayStorageCy7SiriCam12RankedActionVGMR);
    v11 = *(type metadata accessor for RankedAction(0) - 8);
    v12 = *(v11 + 72);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_266813E60;
    v14 = v10 + v13;
    outlined init with copy of RankedAction(v8, v14);
    outlined init with copy of RankedAction(&v8[*(v9 + 20)], v14 + v12);
    outlined destroy of TopTwo(v8);
  }

  v15 = specialized _arrayForceCast<A, B>(_:)(v10);

  v18 = v15;

  specialized MutableCollection<>.sort(by:)();

  *a3 = v18;
  return outlined init with take of CaarHandler(a2, (a3 + 1));
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32 * v1);

  return v2;
}

void *static DisambiguationFeatureExtractor.extractedFeatures.getter()
{
  if (one-time initialization token for ACTION_DISAMBIGUATION_FREQ != -1)
  {
    swift_once();
  }

  specialized Array.append<A>(contentsOf:)(v0);
  if (one-time initialization token for APP_DISAMBIGUATION_FREQ != -1)
  {
    swift_once();
  }

  specialized Array.append<A>(contentsOf:)(v1);
  if (one-time initialization token for FRAC_SELECTED_APP_DISAMBIGUATION_FREQ != -1)
  {
    swift_once();
  }

  specialized Array.append<A>(contentsOf:)(v2);
  if (one-time initialization token for FRAC_SELECTED_ACTION_DISAMBIGUATION_FREQ != -1)
  {
    swift_once();
  }

  specialized Array.append<A>(contentsOf:)(v3);
  if (one-time initialization token for SELECTED_APP_DISAMBIGUATION_FREQ != -1)
  {
    swift_once();
  }

  specialized Array.append<A>(contentsOf:)(v4);
  if (one-time initialization token for SELECTED_ACTION_DISAMBIGUATION_FREQ != -1)
  {
    swift_once();
  }

  specialized Array.append<A>(contentsOf:)(v5);
  return &outlined read-only object #0 of static DisambiguationFeatureExtractor.extractedFeatures.getter;
}

void *static DisambiguationFeatureExtractor.computeFractionSignal(numerator:denominator:prefixStr:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  specialized Collection.first.getter(a1);
  if (v6)
  {

    String.signalPrefix.getter();
    v8 = v7;

    if (v8)
    {
    }
  }

  specialized Collection.first.getter(a2);
  if (!v10 || (v9, v71 = String.signalPrefix.getter(), v12 = v11, , (v74 = v12) == 0))
  {

    v71 = 0;
    v74 = 0xE000000000000000;
  }

  type metadata accessor for MLFeatureValue();
  v13 = Dictionary.init(dictionaryLiteral:)();
  v14 = v4 + 64;
  v15 = 1 << *(v4 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v4 + 64);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  v67 = v4 + 64;
  v68 = v18;
  v65 = v4;
  while (1)
  {
    if (!v17)
    {
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v20 >= v18)
        {

          return v13;
        }

        v17 = *(v14 + 8 * v20);
        ++v19;
        if (v17)
        {
          v19 = v20;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

LABEL_15:
    v21 = *(*(v4 + 56) + 8 * (__clz(__rbit64(v17)) | (v19 << 6)));

    v75 = v21;
    v22 = OUTLINED_FUNCTION_11_7();
    v24 = String.signalBucket.getter(v22, v23);
    if (!v25)
    {
      break;
    }

    v26 = v24;
    v27 = v25;
    v77[0] = v71;
    v77[1] = v74;

    v28 = OUTLINED_FUNCTION_13_13();
    MEMORY[0x26D5DCD80](v28);
    MEMORY[0x26D5DCD80](v26, v27);
    if (!*(a2 + 16) || (v29 = OUTLINED_FUNCTION_11_7(), v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30), (v32 & 1) == 0))
    {

      _StringGuts.grow(_:)(16);

      strcpy(v77, "Couldn't find ");
      HIBYTE(v77[1]) = -18;
      v58 = OUTLINED_FUNCTION_11_7();
      MEMORY[0x26D5DCD80](v58);

      v59 = v77[0];
      v60 = v77[1];
      goto LABEL_35;
    }

    v17 &= v17 - 1;
    v33 = *(*(a2 + 56) + 8 * v31);

    v77[0] = a3;
    v77[1] = a4;

    v34 = OUTLINED_FUNCTION_13_13();
    MEMORY[0x26D5DCD80](v34);
    MEMORY[0x26D5DCD80](v26, v27);

    v35 = [objc_opt_self() featureValueWithDouble_];
    if (v35)
    {
      v66 = v35;
      v72 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77[0] = v13;
      v37 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      v39 = v13[2];
      v40 = (v38 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        goto LABEL_38;
      }

      v42 = v37;
      v43 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v41))
      {
        v44 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
        if ((v43 & 1) != (v45 & 1))
        {
          goto LABEL_40;
        }

        v42 = v44;
      }

      v13 = v77[0];
      if (v43)
      {
        v52 = *(v77[0] + 56);
        v53 = *(v52 + 8 * v42);
        *(v52 + 8 * v42) = v66;
      }

      else
      {
        *(v77[0] + 8 * (v42 >> 6) + 64) |= 1 << v42;
        v54 = (v13[6] + 16 * v42);
        *v54 = a3;
        v54[1] = a4;
        *(v13[7] + 8 * v42) = v66;
        v55 = v13[2];
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (v56)
        {
          goto LABEL_39;
        }

        v13[2] = v57;
        v53 = v72;
      }

      v4 = v65;
      v14 = v67;
      v18 = v68;
    }

    else
    {
      v46 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if (v47)
      {
        v48 = v46;
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v77[0] = v13;
        v73 = v33;
        v50 = v13[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v49, v50);

        v51 = *(v13[7] + 8 * v48);
        _NativeDictionary._delete(at:)();
      }

      else
      {
      }

      v14 = v67;

      v18 = v68;
    }
  }

  _StringGuts.grow(_:)(32);

  v61 = OUTLINED_FUNCTION_11_7();
  MEMORY[0x26D5DCD80](v61);
  v59 = 0xD00000000000001ELL;
  v60 = 0x800000026681B8D0;
LABEL_35:
  v62 = lazy protocol witness table accessor for type CaarError and conformance CaarError();
  OUTLINED_FUNCTION_6_2(&type metadata for CaarError, v62);
  *v63 = v59;
  *(v63 + 8) = v60;
  *(v63 + 16) = 1;
  swift_willThrow();

  return v13;
}

uint64_t DisambiguationFeatureExtractor.actionWasSelected(selectedIndex:action:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v40 - v11;
  if (a1 == -1)
  {
    return 0;
  }

  v13 = *v2;
  if (*(*v2 + 16) <= a1)
  {
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(85);
    v45 = v41;
    v46 = v42;
    MEMORY[0x26D5DCD80](0xD000000000000024, 0x800000026681B760);
    v41 = a1;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D5DCD80](v20);

    MEMORY[0x26D5DCD80](0xD00000000000002DLL, 0x800000026681B790);
    v21 = *(v13 + 16);
    v22 = MEMORY[0x277D84F90];
    if (v21)
    {
      v47 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v22 = v47;
      v23 = v13 + 32;
      do
      {
        outlined init with copy of SignalProviding(v23, &v41);
        v24 = v43;
        v25 = v44;
        __swift_project_boxed_opaque_existential_1(&v41, v43);
        v26 = (*(v25 + 40))(v24, v25);
        v28 = v27;
        __swift_destroy_boxed_opaque_existential_0(&v41);
        v47 = v22;
        v30 = *(v22 + 16);
        v29 = *(v22 + 24);
        if (v30 >= v29 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
          v22 = v47;
        }

        *(v22 + 16) = v30 + 1;
        v31 = v22 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v28;
        v23 += 40;
        --v21;
      }

      while (v21);
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v33 = MEMORY[0x26D5DCE80](v22, v32);
    v35 = v34;

    MEMORY[0x26D5DCD80](v33, v35);

    v36 = v45;
    v37 = v46;
    v38 = lazy protocol witness table accessor for type CaarError and conformance CaarError();
    OUTLINED_FUNCTION_6_2(&type metadata for CaarError, v38);
    *v39 = v36;
    *(v39 + 8) = v37;
    *(v39 + 16) = 1;
    return swift_willThrow();
  }

  else if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of SignalProviding(v13 + 40 * a1 + 32, &v41);
    v14 = v43;
    v15 = v44;
    __swift_project_boxed_opaque_existential_1(&v41, v43);
    (*(v15 + 32))(v14, v15);
    v16 = a2[3];
    v17 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v16);
    (*(v17 + 32))(v16, v17);
    v18 = static UUID.== infix(_:_:)();
    v19 = *(v6 + 8);
    v19(v9, v5);
    v19(v12, v5);
    __swift_destroy_boxed_opaque_existential_0(&v41);
    return v18 & 1;
  }

  return result;
}

uint64_t String.signalPrefix.getter()
{
  lazy protocol witness table accessor for type String and conformance String();
  if ((StringProtocol.contains<A>(_:)() & 1) == 0)
  {
    return 0;
  }

  v0 = OUTLINED_FUNCTION_13_13();
  v1 = MEMORY[0x26D5DD150](v0);
  specialized Collection.dropLast(_:)(1, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySsGMd, &_ss10ArraySliceVySsGMR);
  lazy protocol witness table accessor for type ArraySlice<Substring> and conformance ArraySlice<A>();
  lazy protocol witness table accessor for type Substring and conformance Substring();
  OUTLINED_FUNCTION_13_13();
  v2 = Sequence<>.joined(separator:)();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t String.signalBucket.getter(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type String and conformance String();
  if ((StringProtocol.contains<A>(_:)() & 1) == 0)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_13_13();
  v3 = MEMORY[0x26D5DD150](v2);
  v4 = specialized BidirectionalCollection.last.getter(v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  if (!v10)
  {
    return 0;
  }

  v11 = MEMORY[0x26D5DCD30](v4, v6, v8, v10);
  swift_bridgeObjectRelease_n();
  return v11;
}

uint64_t specialized Collection.dropLast(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = specialized Array.index(_:offsetBy:limitedBy:)(0, (v3 - result) & ~((v3 - result) >> 63), v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      specialized Array.subscript.getter(0, v5, a2);
      v7 = v6;

      return v7;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<Substring> and conformance ArraySlice<A>()
{
  result = lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySsGMd, &_ss10ArraySliceVySsGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

void specialized Array.subscript.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {

    return;
  }

LABEL_10:
  __break(1u);
}

{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    type metadata accessor for RankedAction(0);

    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t specialized Array.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DisambiguationFeatureExtractor(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for DisambiguationFeatureExtractor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_14_14()
{

  return lazy protocol witness table accessor for type CaarError and conformance CaarError();
}

uint64_t OUTLINED_FUNCTION_15_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return SiriSignalsQueryManager.serialiseQueryFields(fields:selected:)(a1, &a9);
}

void *static TrialProvider.tieBreakingOverrides.getter()
{
  v0 = 0xD000000000000020;
  v1 = static TrialProvider.fetchBoolFactorFromTrial(_:)(0xD000000000000021, 0x800000026681A900);
  if (v1 != 2 && (v1 & 1) != 0 && (CamFeatureFlag.isEnabled.getter(5) & 1) != 0)
  {
    v2 = "r_overrides_sydneye";
  }

  else
  {
    v2 = "acSelectedAppDisambiguation";
    v0 = 0xD000000000000023;
  }

  if (one-time initialization token for ranker != -1)
  {
    OUTLINED_FUNCTION_1(&one-time initialization token for ranker);
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.ranker);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v2 | 0x8000000000000000, &v19);
    _os_log_impl(&dword_266790000, v4, v5, "[TrialProvider] Tie breaking overrides using factor = %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();
  }

  v8 = static TrialProvider.fetchStringFactorFromTrial(_:)(v0, v2 | 0x8000000000000000);
  if (v9)
  {
    v10 = v8;
    v11 = v9;

    v12 = static TrialProvider.decodeOverrides(_:)(v10, v11);

    return v12;
  }

  else
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136315138;
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v2 | 0x8000000000000000, &v19);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_266790000, v14, v15, "[TrialProvider] Could not fetch %s from Trial.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_3_1();
    }

    else
    {
    }

    return 0;
  }
}

uint64_t Array<A>.getFavouredAction(tie:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29[-v7];
  v9 = type metadata accessor for RankedAction(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v29[-v13];
  v30 = a1;
  specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in Array<A>.getFavouredAction(tie:), v29, a2);
  specialized Collection.first.getter();

  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    outlined destroy of RankedAction?(v8);
    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_1(&one-time initialization token for ranker);
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.ranker);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_266790000, v16, v17, "No override matching.", v18, 2u);
      OUTLINED_FUNCTION_3_1();
    }

    v19 = 1;
  }

  else
  {
    outlined init with take of RankedAction(v8, v14);
    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_1(&one-time initialization token for ranker);
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.ranker);
    outlined init with copy of RankedAction(v14, v12);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 136315138;
      v25 = *v12;
      v26 = v12[1];

      outlined destroy of RankedAction(v12);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v31);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_266790000, v21, v22, "Found matching override, will favour %s.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_3_1();
    }

    else
    {

      outlined destroy of RankedAction(v12);
    }

    outlined init with take of RankedAction(v14, a3);
    v19 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v19, 1, v9);
}

uint64_t TrialTieBreakingOverride.preference(tie:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + *(type metadata accessor for TopTwo(0) + 20);
  v5 = OUTLINED_FUNCTION_4_13(a1, v4);
  v6 = OUTLINED_FUNCTION_4_13(v4, a1);
  if (v5 & 1) != 0 || (v6)
  {
    if (v5)
    {
      v8 = a1;
    }

    else
    {
      v8 = v4;
    }

    outlined init with copy of RankedAction(v8, a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = type metadata accessor for RankedAction(0);

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v9);
}

void TrialTieBreakingOverride.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x26D5DCD80](2113056, 0xE300000000000000);
  MEMORY[0x26D5DCD80](a3, a4);
}

uint64_t static TrialTieBreakingOverride.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t TrialTieBreakingOverride.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756F766166 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1919252079 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t TrialTieBreakingOverride.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 1919252079;
  }

  else
  {
    return 0x72756F766166;
  }
}

uint64_t TrialTieBreakingOverride.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy7SiriCam24TrialTieBreakingOverrideV10CodingKeys33_A80028A42FABFFF095D72847896C560BLLOGMd, &_ss22KeyedEncodingContainerVy7SiriCam24TrialTieBreakingOverrideV10CodingKeys33_A80028A42FABFFF095D72847896C560BLLOGMR);
  OUTLINED_FUNCTION_22();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t TrialTieBreakingOverride.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy7SiriCam24TrialTieBreakingOverrideV10CodingKeys33_A80028A42FABFFF095D72847896C560BLLOGMd, &_ss22KeyedDecodingContainerVy7SiriCam24TrialTieBreakingOverrideV10CodingKeys33_A80028A42FABFFF095D72847896C560BLLOGMR);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v4 = KeyedDecodingContainer.decode(_:forKey:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    v6 = OUTLINED_FUNCTION_1_23();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TrialTieBreakingOverride.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = TrialTieBreakingOverride.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TrialTieBreakingOverride.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TrialTieBreakingOverride.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance TrialTieBreakingOverride@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = TrialTieBreakingOverride.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void *static TrialProvider.decodeOverrides(_:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.ranker);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      MEMORY[0x26D5DDCD0](v12, -1, -1);
    }

    return 0;
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SiriCam24TrialTieBreakingOverrideVGMd, &_sSay7SiriCam24TrialTieBreakingOverrideVGMR);
    lazy protocol witness table accessor for type [TrialTieBreakingOverride] and conformance <A> [A]();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v13 = v24;
    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.ranker);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v20 = MEMORY[0x26D5DCE80](v13, &type metadata for TrialTieBreakingOverride);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_266790000, v16, v17, "[TrialProvider] Decoded overides: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x26D5DDCD0](v19, -1, -1);
      MEMORY[0x26D5DDCD0](v18, -1, -1);
    }

    outlined consume of Data?(v6, v8);
  }

  return v13;
}

unint64_t lazy protocol witness table accessor for type [TrialTieBreakingOverride] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [TrialTieBreakingOverride] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [TrialTieBreakingOverride] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay7SiriCam24TrialTieBreakingOverrideVGMd, &_sSay7SiriCam24TrialTieBreakingOverrideVGMR);
    lazy protocol witness table accessor for type TrialTieBreakingOverride and conformance TrialTieBreakingOverride();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [TrialTieBreakingOverride] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TrialTieBreakingOverride and conformance TrialTieBreakingOverride()
{
  result = lazy protocol witness table cache variable for type TrialTieBreakingOverride and conformance TrialTieBreakingOverride;
  if (!lazy protocol witness table cache variable for type TrialTieBreakingOverride and conformance TrialTieBreakingOverride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrialTieBreakingOverride and conformance TrialTieBreakingOverride);
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

uint64_t outlined destroy of RankedAction?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized TrialTieBreakingOverride.check(isFavoured:over:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for RankedAction(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = (&v31 - v16);
  outlined init with copy of RankedAction(a1, &v31 - v16);
  outlined init with copy of RankedAction(a2, v15);
  v19 = *v17;
  v18 = v17[1];

  outlined destroy of RankedAction(v17);
  if (v19 == a3 && v18 == a4)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0 && (a3 != 42 || a4 != 0xE100000000000000))
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_13;
    }
  }

  v23 = 1;
LABEL_13:
  v25 = *v15;
  v24 = v15[1];

  outlined destroy of RankedAction(v15);
  if (v25 == a5 && v24 == a6)
  {

LABEL_24:
    v29 = 1;
    return v23 & v29 & 1;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
    goto LABEL_24;
  }

  if (a5 == 42 && a6 == 0xE100000000000000)
  {
    goto LABEL_24;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
  return v23 & v29 & 1;
}

uint64_t getEnumTagSinglePayload for TrialTieBreakingOverride(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for TrialTieBreakingOverride(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys;
  if (!lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys;
  if (!lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys;
  if (!lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys;
  if (!lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TrialTieBreakingOverride.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void static CamRequestLinkLogger.log(requestId:camId:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v67 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v74 = &v67 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v67 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v67 - v17;
  v19 = [objc_allocWithZone(MEMORY[0x277D5A9C8]) init];
  if (v19)
  {
    v20 = v19;
    v75 = v5;
    v21 = [objc_allocWithZone(MEMORY[0x277D5A9D8]) init];
    if (v21)
    {
      v73 = v21;
      v22 = [objc_allocWithZone(MEMORY[0x277D5A9D8]) init];
      if (v22)
      {
        v23 = v22;
        v70 = v16;
        type metadata accessor for SISchemaUUID();
        v72 = v20;
        v24 = *(v75 + 16);
        v68 = a2;
        v24(v18, a2, v4);
        v25 = SISchemaUUID.__allocating_init(nsuuid:)(v18);
        v26 = v73;
        [v73 setUuid_];

        [v26 setComponent_];
        v69 = a1;
        v71 = v24;
        v24(v18, a1, v4);
        v27 = SISchemaUUID.__allocating_init(nsuuid:)(v18);
        [v23 setUuid_];

        if (AFDeviceSupportsSAE())
        {
          v28 = 43;
        }

        else
        {
          v28 = 1;
        }

        [v23 setComponent_];
        v29 = v72;
        [v72 setSource_];
        [v29 setTarget_];
        [objc_msgSend(objc_opt_self() sharedStream)];
        swift_unknownObjectRelease();
        if (one-time initialization token for common != -1)
        {
          OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static Logger.common);
        v32 = v70;
        v31 = v71;
        v71(v70, v68, v4);
        v33 = v74;
        v31(v74, v69, v4);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          *v36 = 136315394;
          LODWORD(v69) = v35;
          UUID.uuidString.getter();
          v38 = v37;
          v71 = v23;
          v39 = *(v75 + 8);
          v39(v32, v4);
          v40 = OUTLINED_FUNCTION_1_24();
          v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v38, v41);

          *(v36 + 4) = v42;
          *(v36 + 12) = 2080;
          UUID.uuidString.getter();
          v44 = v43;
          v39(v33, v4);
          v45 = OUTLINED_FUNCTION_1_24();
          v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, v46);

          *(v36 + 14) = v47;
          _os_log_impl(&dword_266790000, v34, v69, "Successfully emitted requestLink log message for camId : %s and requestId: %s", v36, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_3_1();
          OUTLINED_FUNCTION_3_1();
        }

        else
        {

          v66 = *(v75 + 8);
          v66(v33, v4);
          v66(v32, v4);
        }

        return;
      }

      v5 = v75;
      v20 = v73;
    }

    else
    {
      v5 = v75;
    }
  }

  if (one-time initialization token for common != -1)
  {
    OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
  }

  v48 = type metadata accessor for Logger();
  __swift_project_value_buffer(v48, static Logger.common);
  v49 = *(v5 + 16);
  v49(v11, a2, v4);
  v50 = v8;
  v49(v8, a1, v4);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v76 = v75;
    *v53 = 136315394;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    LODWORD(v74) = v52;
    dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    v56 = *(v5 + 8);
    v56(v11, v4);
    v57 = OUTLINED_FUNCTION_1_24();
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v55, v58);

    *(v53 + 4) = v59;
    *(v53 + 12) = 2080;
    dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    v56(v50, v4);
    v62 = OUTLINED_FUNCTION_1_24();
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v61, v63);

    *(v53 + 14) = v64;
    _os_log_impl(&dword_266790000, v51, v74, "Error in intialising RequestLink object camId: %s, and requestId: %s", v53, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();
  }

  else
  {

    v65 = *(v5 + 8);
    v65(v8, v4);
    v65(v11, v4);
  }
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

unint64_t specialized Dictionary.subscript.getter(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v5 & 1) == 0)
  {
    v2 = 0;
LABEL_5:
    v6 = 1;
    return v2 | (v6 << 32);
  }

  v6 = 0;
  v2 = *(*(a2 + 56) + 4 * v4);
  return v2 | (v6 << 32);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

void *specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

unint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v5 & 1) == 0)
  {
    v2 = 0;
LABEL_5:
    v6 = 1;
    return v2 | (v6 << 32);
  }

  v6 = 0;
  v2 = *(*(a2 + 56) + 4 * v4);
  return v2 | (v6 << 32);
}

{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v5 & 1) == 0)
  {
    v2 = 0;
LABEL_5:
    v6 = 1;
    return v2 | (v6 << 32);
  }

  v6 = 0;
  v2 = *(*(a2 + 56) + 4 * v4);
  return v2 | (v6 << 32);
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

void _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA0B11ModelLoggerV_Tt5B5()
{
  OUTLINED_FUNCTION_44_1();
  v200 = v4;
  v205 = v5;
  v206 = v6;
  v208 = v7;
  v209 = v8;
  v204 = v9;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = OUTLINED_FUNCTION_14(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v16 = v14 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_13(v18, v19, v20, v21, v22, v23, v24, v25, v193);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_10_3();
  v195 = v27;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10_3();
  v201 = v29;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10_3();
  v199 = v31;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_3();
  v198 = v33;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_10_3();
  v203 = v35;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v36);
  v38 = (&v193 - v37);
  v207 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_5();
  v202 = v42;
  OUTLINED_FUNCTION_6();
  v44 = MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_10_14(v44, v45, v46, v47, v48, v49, v50, v51, v193);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_10_3();
  v197 = v53;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_32_4();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_16_9();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_15_9();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_31_3();
  v59 = *v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMd, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMR);
  v61 = static CamModelLogger.map(from:)(v59, v11 + *(v60 + 48));
  if (v61)
  {
    v62 = v61;
    v63 = [objc_allocWithZone(MEMORY[0x277D56C38]) init];
    [v63 setModelExecuted:v62];
    if (v63)
    {
      v193 = v62;
      v64 = [objc_allocWithZone(MEMORY[0x277D56C40]) init];
      v65 = v40;
      if (v64)
      {
        v66 = v64;
        type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
        v67 = *(v40 + 16);
        v68 = v207;
        v67(v0, v208, v207);
        v69 = SISchemaUUID.__allocating_init(nsuuid:)(v0);
        OUTLINED_FUNCTION_40_2(v69, sel_setCamId_);

        v70 = MEMORY[0x26D5DCC90](v205, v209);
        OUTLINED_FUNCTION_40_2(v70, sel_setResultCandidateId_);

        [v66 setRequestId_];
        if (AFDeviceSupportsSAE())
        {
          v67(v0, v204, v68);
          v71 = SISchemaUUID.__allocating_init(nsuuid:)(v0);
          OUTLINED_FUNCTION_40_2(v71, sel_setSubRequestId_);
        }

        if (one-time initialization token for kLoggingFeatureName != -1)
        {
          OUTLINED_FUNCTION_2_20(&one-time initialization token for kLoggingFeatureName);
        }

        v72 = v65;
        v73 = specialized Dictionary.subscript.getter(v200, kLoggingFeatureName._rawValue);
        v74 = v201;
        if ((v73 & 0x100000000) == 0)
        {
          [v66 setFeature_];
        }

        v75 = v199;
        outlined init with copy of UUID?(v206, v199);
        OUTLINED_FUNCTION_32_3(v75, 1, v68);
        v203 = v67;
        if (v76)
        {
          outlined destroy of UUID?(v75);
          UUID.init(uuidString:)();
          v77 = OUTLINED_FUNCTION_51_2();
          OUTLINED_FUNCTION_32_3(v77, v78, v68);
          if (v76)
          {
            outlined destroy of UUID?(v74);
            v79 = v202;
            v152 = v72;
LABEL_38:
            [v63 setEventMetadata:v66];
            [objc_msgSend(objc_opt_self() sharedStream)];
            swift_unknownObjectRelease();
            if (one-time initialization token for common != -1)
            {
              OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
            }

            v164 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_26(v164, static Logger.common);
            v203(v79, v208, v68);

            v82 = Logger.logObject.getter();
            static os_log_type_t.debug.getter();

            if (OUTLINED_FUNCTION_76())
            {
              OUTLINED_FUNCTION_11();
              v211[0] = OUTLINED_FUNCTION_52_2();
              *v68 = 136315650;
              v210 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMModelExecuted, 0x277D56C58);
              v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25CAMSchemaCAMModelExecutedCmMd, &_sSo25CAMSchemaCAMModelExecutedCmMR);
              v166 = OUTLINED_FUNCTION_59_1(v165);
              v168 = OUTLINED_FUNCTION_61_1(v166, v167);

              *(v68 + 4) = v168;
              *(v68 + 12) = 2080;
              v169 = UUID.uuidString.getter();
              v208 = v63;
              v171 = v170;
              (*(v152 + 8))(v79, v207);
              v172 = OUTLINED_FUNCTION_23_8();
              getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v171, v173);
              OUTLINED_FUNCTION_48_2();

              *(v68 + 14) = v169;
              *(v68 + 22) = 2080;
              v174 = OUTLINED_FUNCTION_36_0();
              *(v68 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v174, v209, v175);
              OUTLINED_FUNCTION_21_5();
              _os_log_impl(v176, v177, v178, v179, v180, 0x20u);
              OUTLINED_FUNCTION_77();
              OUTLINED_FUNCTION_3_1();
              OUTLINED_FUNCTION_0_8();

LABEL_42:
              goto LABEL_48;
            }

            v155 = *(v152 + 8);
            v153 = v79;
            goto LABEL_44;
          }

          v152 = v72;
          OUTLINED_FUNCTION_97();
          v148 = v194;
          v149 = v194;
          v150 = v74;
        }

        else
        {
          OUTLINED_FUNCTION_97();
          v148 = v197;
          v149 = v197;
          v150 = v75;
          v152 = v151;
        }

        v147(v149, v150, v68);
        v67(v0, v148, v68);
        v163 = SISchemaUUID.__allocating_init(nsuuid:)(v0);
        OUTLINED_FUNCTION_40_2(v163, sel_setTrpId_);

        (*(v152 + 8))(v148, v68);
        v79 = v202;
        goto LABEL_38;
      }

      v68 = v207;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
      }

      v130 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_26(v130, static Logger.common);
      v131 = OUTLINED_FUNCTION_55_1();
      v132(v131, v208, v68);
      v133 = v198;
      outlined init with copy of UUID?(v206, v198);
      v134 = v209;

      v135 = Logger.logObject.getter();
      v136 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v135, v136))
      {

        outlined destroy of UUID?(v133);
        v155 = *(v65 + 8);
        v153 = v2;
LABEL_44:
        v154 = v68;
        goto LABEL_45;
      }

      LODWORD(v206) = v136;
      v208 = v135;
      OUTLINED_FUNCTION_62_1();
      v204 = OUTLINED_FUNCTION_39_2();
      v211[0] = v204;
      *v136 = 136315906;
      v210 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMModelExecuted, 0x277D56C58);
      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25CAMSchemaCAMModelExecutedCmMd, &_sSo25CAMSchemaCAMModelExecutedCmMR);
      v138 = OUTLINED_FUNCTION_59_1(v137);
      OUTLINED_FUNCTION_61_1(v138, v139);
      OUTLINED_FUNCTION_53_1();
      *(v136 + 4) = v16;
      *(v136 + 12) = 2080;
      UUID.uuidString.getter();
      OUTLINED_FUNCTION_66_0();
      v140 = *(v65 + 8);
      v140(v2, v68);
      v141 = OUTLINED_FUNCTION_23_8();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v16, v142);
      OUTLINED_FUNCTION_49_2();

      *(v136 + 14) = v2;
      *(v136 + 22) = 2080;
      v143 = OUTLINED_FUNCTION_36_0();
      v144 = v198;
      *(v136 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v134, v145);
      *(v136 + 32) = 2080;
      v146 = v195;
      outlined init with copy of UUID?(v144, v195);
      OUTLINED_FUNCTION_32_3(v146, 1, v68);
      if (v76)
      {
        outlined destroy of UUID?(v146);
        OUTLINED_FUNCTION_98();
      }

      else
      {
        UUID.uuidString.getter();
        OUTLINED_FUNCTION_99();
        v140(v146, v68);
      }

      v186 = outlined destroy of UUID?(v144);
      OUTLINED_FUNCTION_111(v186, v187, v211);
      OUTLINED_FUNCTION_53_1();
      *(v136 + 34) = v16;
      OUTLINED_FUNCTION_22_5();
      _os_log_impl(v188, v189, v190, v191, v192, 0x2Au);
      OUTLINED_FUNCTION_57_1();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_20_11();
    }

    else
    {
      v103 = v40;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
      }

      v104 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_26(v104, static Logger.common);
      v105 = OUTLINED_FUNCTION_86();
      v106(v105);
      v107 = v203;
      outlined init with copy of UUID?(v206, v203);
      v108 = v209;

      v109 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_84();
      if (!os_log_type_enabled(v109, &off_279BD1000))
      {

        outlined destroy of UUID?(v107);
        v153 = OUTLINED_FUNCTION_101();
LABEL_45:
        v155(v153, v154);
        goto LABEL_48;
      }

      LODWORD(v208) = &off_279BD1000;
      v193 = v62;
      v110 = OUTLINED_FUNCTION_62_1();
      v206 = swift_slowAlloc();
      v211[0] = v206;
      *v110 = 136315906;
      v210 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMModelExecuted, 0x277D56C58);
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25CAMSchemaCAMModelExecutedCmMd, &_sSo25CAMSchemaCAMModelExecutedCmMR);
      v112 = OUTLINED_FUNCTION_59_1(v111);
      v114 = OUTLINED_FUNCTION_61_1(v112, v113);

      *(v110 + 4) = v114;
      *(v110 + 12) = 2080;
      v115 = UUID.uuidString.getter();
      v117 = v116;
      v118 = *(v103 + 8);
      v119 = OUTLINED_FUNCTION_101();
      v118(v119);
      v120 = OUTLINED_FUNCTION_23_8();
      v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v117, v121);

      *(v110 + 14) = v122;
      *(v110 + 22) = 2080;
      v123 = OUTLINED_FUNCTION_36_0();
      *(v110 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v108, v124);
      *(v110 + 32) = 2080;
      v125 = v203;
      v126 = v196;
      outlined init with copy of UUID?(v203, v196);
      OUTLINED_FUNCTION_32_3(v126, 1, v16);
      if (v76)
      {
        outlined destroy of UUID?(v126);
        OUTLINED_FUNCTION_102();
      }

      else
      {
        v115 = v126;
        UUID.uuidString.getter();
        OUTLINED_FUNCTION_96();
        (v118)(v126, v16);
      }

      v181 = v193;
      outlined destroy of UUID?(v125);
      v182 = OUTLINED_FUNCTION_23_8();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v182, v122, v183);
      OUTLINED_FUNCTION_71();
      *(v110 + 34) = v115;
      OUTLINED_FUNCTION_74(&dword_266790000, v184, v185, "Couldn't create log event with destination message : %s  for camId : %s, rcId: %s, trpId: %s");
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_3_1();
    }
  }

  else
  {
    v202 = v16;
    v203 = v38;
    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
    }

    v80 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v80, static Logger.common);
    v81 = OUTLINED_FUNCTION_63_0();
    v59(v81);
    (v59)(v3, v204, v0);
    v82 = v203;
    outlined init with copy of UUID?(v206, v203);
    v83 = v209;

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = OUTLINED_FUNCTION_106();
      v204 = OUTLINED_FUNCTION_110();
      v211[0] = v204;
      *v86 = 136316162;
      v210 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAMSchemaCAMModelExecuted, 0x277D56C58);
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25CAMSchemaCAMModelExecutedCmMd, &_sSo25CAMSchemaCAMModelExecutedCmMR);
      v88 = OUTLINED_FUNCTION_59_1(v87);
      OUTLINED_FUNCTION_61_1(v88, v89);
      v90 = OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_105(v90);
      OUTLINED_FUNCTION_46_2();
      v91 = *(v40 + 8);
      v92 = OUTLINED_FUNCTION_42_1();
      v91(v92);
      v93 = OUTLINED_FUNCTION_23_8();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v38, v94);
      OUTLINED_FUNCTION_20_5();
      v95 = v203;

      *(v86 + 14) = v84;
      *(v86 + 22) = v82;
      v96 = OUTLINED_FUNCTION_36_0();
      *(v86 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v83, v97);
      *(v86 + 32) = v82;
      UUID.uuidString.getter();
      OUTLINED_FUNCTION_47_2();
      v98 = OUTLINED_FUNCTION_44_2();
      v91(v98);
      v99 = OUTLINED_FUNCTION_23_8();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v1, v100);
      OUTLINED_FUNCTION_48_2();

      OUTLINED_FUNCTION_71_0();
      v101 = OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_32_3(v101, v102, v0);
      if (v76)
      {
        outlined destroy of UUID?(v82);
        v1 = 0;
        v156 = 0xE000000000000000;
      }

      else
      {
        v156 = v82;
        UUID.uuidString.getter();
        v157 = OUTLINED_FUNCTION_93();
        v91(v157);
      }

      outlined destroy of UUID?(v95);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v156, v211);
      OUTLINED_FUNCTION_69();
      *(v86 + 44) = v1;
      OUTLINED_FUNCTION_22_5();
      _os_log_impl(v158, v159, v160, v161, v162, 0x34u);
      OUTLINED_FUNCTION_57_1();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_20_11();
      goto LABEL_42;
    }

    outlined destroy of UUID?(v82);
    v127 = *(v40 + 8);
    v128 = OUTLINED_FUNCTION_44_2();
    v127(v128);
    v129 = OUTLINED_FUNCTION_42_1();
    v127(v129);
  }

LABEL_48:
  OUTLINED_FUNCTION_45_0();
}