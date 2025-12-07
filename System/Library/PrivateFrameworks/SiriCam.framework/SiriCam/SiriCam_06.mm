uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSS_So12MLMultiArrayCtMd, &_sSS_So12MLMultiArrayCtMR);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_s11SiriSignals15SignalProviding_pMd, &_s11SiriSignals15SignalProviding_pMR);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo24CAARSchemaCAARScoreBoostCSgMd, &_sSo24CAARSchemaCAARScoreBoostCSgMR);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSS_yptMd, &_sSS_yptMR);
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v2, 32, 7);
}

uint64_t CamInput.topUserParse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B9UserParseO_SftMd, &_s7SiriCam0B9UserParseO_SftMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = *(v1 + *(type metadata accessor for CamInput(0) + 40));
  if (*(v7 + 16))
  {
    outlined init with copy of (CamUserParse, Float)(v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v6);
    outlined init with take of CamUserParse(v6, a1);
    v8 = type metadata accessor for CamUserParse(0);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
  }

  else
  {
    v10 = type metadata accessor for CamUserParse(0);

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v10);
  }
}

Swift::Void __swiftcall CamOutput.overrideAction(action:enforcer:)(SiriCam::CamAction action, Swift::String enforcer)
{
  *(v2 + 56) = *action;
  *(v2 + 40) = enforcer;
}

uint64_t CamOutput.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 57, 7);
}

uint64_t type metadata accessor for CamInput(uint64_t a1)
{
  result = type metadata singleton initialization cache for CamInput;
  if (!type metadata singleton initialization cache for CamInput)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CamInput(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    _s10Foundation4UUIDVSgMaTm_0(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      _s10Foundation4UUIDVSgMaTm_0(319, &lazy cache variable for type metadata for AFSpeechPackage?, type metadata accessor for AFSpeechPackage, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CamAction?(319, &lazy cache variable for type metadata for CamAction?, &type metadata for CamAction, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [(CamUserParse, Float)](319);
          if (v5 <= 0x3F)
          {
            _s10Foundation4UUIDVSgMaTm_0(319, &lazy cache variable for type metadata for [RankedAction], type metadata accessor for RankedAction, MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for CamAction?(319, &lazy cache variable for type metadata for [CamFeature], &type metadata for CamFeature, MEMORY[0x277D83940]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void _s10Foundation4UUIDVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with copy of (CamUserParse, Float)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B9UserParseO_SftMd, &_s7SiriCam0B9UserParseO_SftMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of CamUserParse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CamUserParse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *specialized Collection.first.getter(uint64_t a1)
{
  result = specialized Dictionary.startIndex.getter(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_19_13();
  if (v13)
  {
    return 0;
  }

  v14 = OUTLINED_FUNCTION_18_11(v5, v6, v7, v8, v9, v10, v11, v12, v19, v20);
  return specialized Dictionary.subscript.getter(v14, v15, v16, v17, v18);
}

{
  result = specialized Dictionary.startIndex.getter(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_19_13();
  if (v13)
  {
    return 0;
  }

  v14 = OUTLINED_FUNCTION_18_11(v5, v6, v7, v8, v9, v10, v11, v12, v19, v20);
  return specialized Dictionary.subscript.getter(v14, v15, v16, v17, v18);
}

double specialized Collection.first.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    outlined init with copy of SignalProviding(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t specialized Collection.first.getter()
{
  v3 = OUTLINED_FUNCTION_32_5();
  v5 = v4(v3);
  v6 = v5;
  if (v2)
  {
    (*(*(v5 - 8) + 16))(v0, v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v0, v7, 1, v6);
}

{
  v3 = OUTLINED_FUNCTION_32_5();
  v4 = type metadata accessor for RankedAction(v3);
  v5 = v4;
  if (v2)
  {
    _s7SiriCam0B13ModelMetadataVWOcTm_1(v1 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v0, type metadata accessor for RankedAction);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v0, v6, 1, v5);
}

void specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo14MLFeatureValueCGMd, _ss18_DictionaryStorageCySSSo14MLFeatureValueCGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = v14;
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
    v17 = v16;
    if (v18)
    {
      v19 = (v2[6] + 16 * v16);
      *v19 = v13;
      v19[1] = v12;

      v20 = v2[7];
      v21 = *(v20 + 8 * v17);
      *(v20 + 8 * v17) = v15;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      v22 = (v2[6] + 16 * v16);
      *v22 = v13;
      v22[1] = v12;
      *(v2[7] + 8 * v16) = v15;
      v23 = v2[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_20;
      }

      v2[2] = v25;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLMultiArray, 0x277CBFF48);

    v15 = v14;
    swift_dynamicCast();
    outlined init with take of Any(&v25, v27);
    outlined init with take of Any(v27, v28);
    outlined init with take of Any(v28, &v26);
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
    v17 = v16;
    if (v18)
    {
      v19 = (v2[6] + 16 * v16);
      *v19 = v13;
      v19[1] = v12;

      v20 = (v2[7] + 32 * v17);
      __swift_destroy_boxed_opaque_existential_0(v20);
      outlined init with take of Any(&v26, v20);
      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      v21 = (v2[6] + 16 * v16);
      *v21 = v13;
      v21[1] = v12;
      outlined init with take of Any(&v26, (v2[7] + 32 * v16));
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v2[2] = v24;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t CoreMLHandler.init(forModelWithName:)(uint64_t a1, unint64_t a2)
{
  v5 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_17();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 16) = a1;
  v18 = *(v15 + 48);

  static AssetProvider.fetchModel(_:)(v17, &v17[v18], a1, a2);

  if (v5)
  {

    type metadata accessor for CoreMLHandler(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v17, v4, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    outlined init with take of CamModelMetadata(v4 + *(v8 + 48), v2 + OBJC_IVAR____TtC7SiriCam13CoreMLHandler_modelMetadata);
    v19 = type metadata accessor for URL();
    OUTLINED_FUNCTION_0_2();
    v21 = *(v20 + 8);
    v22 = OUTLINED_FUNCTION_25_9();
    v21(v22);
    outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v17, v12, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v23 = *(v8 + 48);
    CoreMLHandler.loadModel(from:)(v12, v12 + v23);
    outlined destroy of (CamLogOutput, CamModelMetadata)(v17, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    outlined destroy of CamModelMetadata(v12 + v23);
    (v21)(v12, v19);
  }

  return v2;
}

MLDictionaryFeatureProvider __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CoreMLHandler.predict(from:)(Swift::OpaquePointer from)
{
  v3 = v1;
  v87 = *MEMORY[0x277D85DE8];
  v4 = *(v1 + 32);
  if (v4)
  {
    v6 = v4;
    specialized _dictionaryUpCast<A, B, C, D>(_:)(from._rawValue);
    v7 = objc_allocWithZone(MEMORY[0x277CBFED0]);
    v8 = @nonobjc MLDictionaryFeatureProvider.init(dictionary:)();
    if (v2)
    {
      v9 = v2;
    }

    else
    {
      v17 = v8;
      v85 = &type metadata for CamFeatureFlag;
      v86 = lazy protocol witness table accessor for type CamFeatureFlag and conformance CamFeatureFlag();
      LOBYTE(v83) = 0;
      v18 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_0(&v83);
      v19 = &off_279BD1000;
      if (v18)
      {
        v20 = [v17 dictionary];
        type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLFeatureValue, 0x277CBFEF8);
        v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        CoreMLHandler.logModelFeatures(modelFeatures:)(v21);
      }

      else
      {
        if (one-time initialization token for common != -1)
        {
          OUTLINED_FUNCTION_3();
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        __swift_project_value_buffer(v22, static Logger.common);
        OUTLINED_FUNCTION_18_0();

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = OUTLINED_FUNCTION_23();
          v82 = OUTLINED_FUNCTION_11();
          v83 = v82;
          *v25 = 136315138;
          v26 = *(v3 + 16);
          v27 = *(v3 + 24);

          v28 = v17;
          v29 = v6;
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v83);

          *(v25 + 4) = v30;
          v6 = v29;
          v17 = v28;
          _os_log_impl(&dword_266790000, v23, v24, "%s: Feature flag for verbose logging is disabled. Not logging model features", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v82);
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();

          v19 = &off_279BD1000;
        }

        else
        {
        }
      }

      v81 = [v6 modelDescription];
      v31 = v6;
      v32 = [v81 inputDescriptionsByName];
      type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLFeatureDescription, 0x277CBFEE0);
      OUTLINED_FUNCTION_8_0();
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSo14MLFeatureValueC_GTt0g5();
      v34 = [v17 v19[273]];
      type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLFeatureValue, 0x277CBFEF8);
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSo14MLFeatureValueC_GTt0g5();
      v36 = specialized Set.subtracting(_:)(v35, v33);

      if (*(v36 + 16))
      {
        v80 = v31;
        v83 = 0;
        v84 = 0xE000000000000000;
        _StringGuts.grow(_:)(71);
        OUTLINED_FUNCTION_15_12();
        OUTLINED_FUNCTION_16_11();

        OUTLINED_FUNCTION_28_6();
        MEMORY[0x26D5DCD80](0xD00000000000001FLL);
        v37 = Set.description.getter();
        v39 = v38;

        MEMORY[0x26D5DCD80](v37, v39);

        OUTLINED_FUNCTION_28_6();
        MEMORY[0x26D5DCD80]();
        v40 = v83;
        v41 = v84;
        if (one-time initialization token for common != -1)
        {
          OUTLINED_FUNCTION_3();
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        __swift_project_value_buffer(v42, static Logger.common);

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = OUTLINED_FUNCTION_23();
          v46 = OUTLINED_FUNCTION_11();
          v83 = v46;
          *v45 = 136315138;
          *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v83);
          _os_log_impl(&dword_266790000, v43, v44, "%s", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v46);
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();
        }

        v6 = v80;
        v47 = lazy protocol witness table accessor for type ModelError and conformance ModelError();
        v48 = OUTLINED_FUNCTION_6_2(&type metadata for ModelError, v47);
        *v49 = v40;
        v49[1] = v41;
        v9 = v48;
        OUTLINED_FUNCTION_2(v48, v49);
      }

      else
      {

        v83 = 0;
        v50 = [v31 predictionFromFeatures:v17 error:&v83];
        v51 = v83;
        if (v50)
        {
          objc_opt_self();
          v52 = swift_dynamicCastObjCClass();
          if (v52)
          {
            v11 = v52;
            v53 = v51;

            return v11;
          }

          v83 = 0;
          v84 = 0xE000000000000000;
          v55 = v51;
          _StringGuts.grow(_:)(65);
          OUTLINED_FUNCTION_15_12();
          OUTLINED_FUNCTION_16_11();

          OUTLINED_FUNCTION_28_6();
          MEMORY[0x26D5DCD80]();
          v56 = v83;
          v57 = v84;
          v58 = lazy protocol witness table accessor for type ModelError and conformance ModelError();
          v59 = OUTLINED_FUNCTION_6_2(&type metadata for ModelError, v58);
          *v60 = v56;
          v60[1] = v57;
          v6 = v31;
          OUTLINED_FUNCTION_2(v59, v60);

          v9 = v59;
          swift_unknownObjectRelease();
        }

        else
        {
          v54 = v83;
          v9 = _convertNSErrorToError(_:)();

          v6 = v31;
          swift_willThrow();
        }
      }
    }

    v83 = v9;
    v61 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v62 = String.init<A>(reflecting:)();
    v64 = v63;
    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    __swift_project_value_buffer(v65, static Logger.common);
    OUTLINED_FUNCTION_18_0();

    v11 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v66))
    {
      OUTLINED_FUNCTION_11_14();
      v67 = swift_slowAlloc();
      OUTLINED_FUNCTION_10_17();
      v83 = swift_slowAlloc();
      *v67 = 136315394;
      v68 = v6;
      v70 = *(v3 + 16);
      v69 = *(v3 + 24);

      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v69, &v83);
      v6 = v68;

      *(v67 + 4) = v71;
      OUTLINED_FUNCTION_24_4();
      v72 = OUTLINED_FUNCTION_69_0();
      *(v67 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v74);
      OUTLINED_FUNCTION_37_1(&dword_266790000, v11, v66, "%s: Model prediction failed with error : %s", v79, v80);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    v75 = lazy protocol witness table accessor for type ModelError and conformance ModelError();
    v76 = OUTLINED_FUNCTION_6_2(&type metadata for ModelError, v75);
    *v77 = v62;
    v77[1] = v64;
    OUTLINED_FUNCTION_2(v76, v77);
  }

  else
  {
    v83 = 0;
    v84 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    OUTLINED_FUNCTION_15_12();
    OUTLINED_FUNCTION_16_11();

    OUTLINED_FUNCTION_28_6();
    MEMORY[0x26D5DCD80]();

    OUTLINED_FUNCTION_16_11();

    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.common);
    OUTLINED_FUNCTION_18_0();

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_23();
      v14 = OUTLINED_FUNCTION_11();
      v83 = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v83);
      _os_log_impl(&dword_266790000, v11, v12, "%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    v15 = lazy protocol witness table accessor for type CamError and conformance CamError();
    OUTLINED_FUNCTION_6_2(&type metadata for CamError, v15);
    *v16 = 0;
    *(v16 + 8) = 0xE000000000000000;
    *(v16 + 16) = 2;
    swift_willThrow();
  }

  return v11;
}

uint64_t CoreMLHandler.getMetadata()@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7SiriCam13CoreMLHandler_modelMetadata;
  swift_beginAccess();
  OUTLINED_FUNCTION_1_32();
  return _s7SiriCam0B13ModelMetadataVWOcTm_1(v1 + v3, a1, v4);
}

void CoreMLHandler.loadModel(from:)(uint64_t a1, uint64_t a2)
{
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMR);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_3();
  v175 = v8;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v9);
  v173 = &v160 - v10;
  v11 = type metadata accessor for URL();
  OUTLINED_FUNCTION_22();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_3();
  v172 = v16;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_3();
  v176 = v18;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v19);
  v182 = &v160 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4();
  v181 = (v23 - v24);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10_3();
  v179 = v28;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_10_3();
  v174 = v30;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_32_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_3();
  v183 = v33;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_30_5();
  MEMORY[0x28223BE20](v35);
  v37 = &v160 - v36;
  v186 = v13;
  v38 = OUTLINED_FUNCTION_25_9();
  v177 = v40;
  v178 = v39;
  (v40)(v38);
  OUTLINED_FUNCTION_1_32();
  v188 = v37;
  _s7SiriCam0B13ModelMetadataVWOcTm_1(a2, &v37[v41], v42);
  if (one-time initialization token for common != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  v44 = __swift_project_value_buffer(v43, static Logger.common);
  outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v188, v3, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();

  v47 = os_log_type_enabled(v45, v46);
  v184 = v11;
  v185 = v21;
  if (v47)
  {
    OUTLINED_FUNCTION_11_14();
    v48 = swift_slowAlloc();
    v180 = v44;
    v49 = v48;
    OUTLINED_FUNCTION_10_17();
    v165 = swift_slowAlloc();
    v190[0] = v165;
    *v49 = 136315394;
    v51 = v187[2];
    v50 = v187[3];

    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v50, v190);
    LODWORD(v164) = v46;
    v53 = v52;

    *(v49 + 4) = v53;
    OUTLINED_FUNCTION_24_4();
    v54 = v183;
    outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v3, v183, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v55 = *(v185 + 48);
    v56 = URL.absoluteString.getter();
    v58 = v57;
    outlined destroy of (CamLogOutput, CamModelMetadata)(v3, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v59 = OUTLINED_FUNCTION_15_5();
    v60(v59);
    v61 = v54 + v55;
    v21 = v185;
    outlined destroy of CamModelMetadata(v61);
    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v190);

    *(v49 + 14) = v62;
    OUTLINED_FUNCTION_37_1(&dword_266790000, v45, v164, "%s: Loading model from url : %s", v160, v161);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    v44 = v180;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  else
  {

    outlined destroy of (CamLogOutput, CamModelMetadata)(v3, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
  }

  v63 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  [v63 setComputeUnits_];
  outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v188, v2, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
  v64 = *(v21 + 48);
  v65 = v182;
  v66 = v189;
  CoreMLHandler.findModelFolder(assetOutput:)(v2, v2 + v64, v182);
  v67 = v181;
  v189 = v66;
  if (v66)
  {
    outlined destroy of CamModelMetadata(v2 + v64);
    (*(v186 + 8))(v2, v184);
LABEL_10:
    outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v188, v67, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v77 = v187;

    v78 = v189;
    v79 = v189;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = OUTLINED_FUNCTION_11();
      v182 = swift_slowAlloc();
      v190[0] = v182;
      OUTLINED_FUNCTION_36_1(4.8152e-34);
      v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v77, v190);
      v187 = v63;
      v84 = v83;

      *(v82 + 4) = v84;
      *(v82 + 12) = 2080;
      v85 = v67;
      v86 = v67;
      v87 = v183;
      outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v85, v183, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
      v88 = *(v185 + 48);
      v89 = v179;
      (*(v186 + 32))(v179, v87, v184);
      outlined init with take of CamModelMetadata(v87 + v88, v89 + v88);
      v90 = String.init<A>(describing:)();
      v92 = v91;
      outlined destroy of (CamLogOutput, CamModelMetadata)(v86, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, v190);

      *(v82 + 14) = v93;
      *(v82 + 22) = 2080;
      v191 = v189;
      v94 = v189;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v95 = String.init<A>(reflecting:)();
      v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, v190);

      *(v82 + 24) = v97;
      v63 = v187;
      _os_log_impl(&dword_266790000, v80, v81, "%s: Model load failed for model: %s with error: %s", v82, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    else
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v67, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    }

    swift_willThrow();

    v98 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd;
    v99 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR;
    v100 = v188;
LABEL_14:
    outlined destroy of (CamLogOutput, CamModelMetadata)(v100, v98, v99);
    return;
  }

  v180 = v44;
  outlined destroy of CamModelMetadata(v2 + v64);
  v68 = v63;
  v69 = v186 + 8;
  v70 = *(v186 + 8);
  v71 = v184;
  v70(v2, v184);
  v72 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLModel, 0x277CBFF20);
  v73 = v176;
  v177(v176, v65, v71);
  v74 = v68;
  v75 = v68;
  v66 = v189;
  v76 = @nonobjc MLModel.__allocating_init(contentsOf:configuration:)(v73, v75);
  v189 = v66;
  if (v66)
  {
    v70(v65, v71);
    v63 = v74;
    goto LABEL_10;
  }

  v164 = v72;
  v165 = v69;
  v181 = v70;
  v176 = v75;
  v101 = v187[4];
  v187[4] = v76;

  v102 = v174;
  outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v188, v174, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);

  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v103, v104))
  {
    OUTLINED_FUNCTION_11_14();
    v105 = swift_slowAlloc();
    OUTLINED_FUNCTION_10_17();
    v163 = swift_slowAlloc();
    v190[0] = v163;
    OUTLINED_FUNCTION_36_1(4.8151e-34);
    v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v65, v190);

    *(v105 + 4) = v106;
    *(v105 + 12) = 2080;
    v162 = v103;
    v107 = v183;
    outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v102, v183, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    HIDWORD(v161) = v104;
    v108 = v185;
    v109 = *(v185 + 48);
    v110 = v179;
    (*(v186 + 32))(v179, v107, v71);
    outlined init with take of CamModelMetadata(v107 + v109, v110 + v109);
    v111 = String.init<A>(describing:)();
    v113 = v112;
    outlined destroy of (CamLogOutput, CamModelMetadata)(v102, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v113, v190);
    v115 = v184;

    *(v105 + 14) = v114;
    v116 = v162;
    _os_log_impl(&dword_266790000, v162, BYTE4(v161), "%s: Model load succeeded for model: %s", v105, 0x16u);
    swift_arrayDestroy();
    v117 = v108;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();

    v118 = v181;
    v181(v182, v115);
  }

  else
  {

    outlined destroy of (CamLogOutput, CamModelMetadata)(v102, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
    v118 = v181;
    v181(v65, v71);
    v115 = v71;
    v117 = v185;
    v107 = v183;
  }

  outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v188, v107, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
  v119 = *(v117 + 48);
  v120 = OBJC_IVAR____TtC7SiriCam13CoreMLHandler_modelMetadata;
  v121 = v187;
  swift_beginAccess();
  outlined assign with take of CamModelMetadata(v107 + v119, v121 + v120);
  swift_endAccess();
  v118(v107, v115);
  v122 = v121[2] == 0xD000000000000025 && 0x8000000266819F10 == v121[3];
  if (v122 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v123 = v173;
    v124 = v185;
    __swift_storeEnumTagSinglePayload(v173, 1, 1, v185);
    v125 = v189;
    static AssetProvider.fetchModel(_:)(v175, v175 + *(v124 + 48), 0xD000000000000029, 0x8000000266819F40);
    v189 = v125;
    if (v125)
    {

      v189 = 0;
      v126 = 1;
    }

    else
    {
      v126 = 0;
    }

    v127 = v172;
    v128 = v171;
    v129 = v170;
    v130 = v169;
    v131 = v175;
    v132 = v185;
    __swift_storeEnumTagSinglePayload(v175, v126, 1, v185);
    outlined assign with take of (modelUrl: URL, modelMetadata: CamModelMetadata)?(v131, v123);
    outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v123, v128, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMR);
    if (__swift_getEnumTagSinglePayload(v128, 1, v132) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v188, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);

      OUTLINED_FUNCTION_14_17();
      outlined destroy of (CamLogOutput, CamModelMetadata)(v133, v134, v135);
      OUTLINED_FUNCTION_14_17();
    }

    else
    {
      outlined init with take of (modelUrl: URL, modelMetadata: CamModelMetadata)(v128, v129);
      outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v129, v130, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
      v136 = *(v132 + 48);
      v137 = v189;
      CoreMLHandler.findModelFolder(assetOutput:)(v130, v130 + v136, v127);
      if (v137)
      {
        outlined destroy of (CamLogOutput, CamModelMetadata)(v129, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
        outlined destroy of CamModelMetadata(v130 + v136);
        v181(v130, v184);
        v189 = 0;
        v144 = Logger.logObject.getter();
        v145 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v144, v145))
        {
          v146 = v123;
          v147 = OUTLINED_FUNCTION_23();
          v148 = OUTLINED_FUNCTION_11();
          v191 = v148;
          *v147 = 136315138;
          swift_beginAccess();
          outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v146, v167, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMR);
          v149 = String.init<A>(describing:)();
          v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v150, &v191);

          *(v147 + 4) = v151;
          _os_log_impl(&dword_266790000, v144, v145, "Load model failed for %s. Skipping promotion of all assets", v147, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v148);
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();

          outlined destroy of (CamLogOutput, CamModelMetadata)(v188, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
          v100 = v146;
          v98 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMd;
          v99 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMR;
        }

        else
        {

          outlined destroy of (CamLogOutput, CamModelMetadata)(v188, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
          v98 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMd;
          v99 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMR;
          v100 = v123;
        }
      }

      else
      {
        outlined destroy of CamModelMetadata(v130 + v136);
        v138 = v130;
        v139 = v184;
        v140 = v181;
        v181(v138, v184);
        v141 = v166;
        v177(v166, v127, v139);
        v142 = v176;
        v143 = @nonobjc MLModel.__allocating_init(contentsOf:configuration:)(v141, v142);
        v189 = 0;
        v152 = v143;

        v153 = OUTLINED_FUNCTION_69_0();
        v140(v153);
        OUTLINED_FUNCTION_14_17();
        outlined destroy of (CamLogOutput, CamModelMetadata)(v154, v155, v156);
        OUTLINED_FUNCTION_14_17();
        outlined destroy of (CamLogOutput, CamModelMetadata)(v157, v158, v159);
        v98 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMd;
        v99 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMR;
        v100 = v173;
      }
    }

    goto LABEL_14;
  }

  outlined destroy of (CamLogOutput, CamModelMetadata)(v188, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
}

id @nonobjc MLModel.__allocating_init(contentsOf:configuration:)(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  URL._bridgeToObjectiveC()(v15);
  v5 = v4;
  v14 = 0;
  v6 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t CoreMLHandler.findModelFolder(assetOutput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v138 = a3;
  v156 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v136 = &v135 - v6;
  v7 = type metadata accessor for URL();
  OUTLINED_FUNCTION_22();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v139 = v11 - v12;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_3();
  v147 = v14;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_3();
  v144 = v16;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v17);
  v19 = &v135 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4();
  v137 = v22 - v23;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_1();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v135 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v135 - v29;
  v150 = *(v9 + 16);
  v151 = v9 + 16;
  v150(&v135 - v29, a1, v7);
  OUTLINED_FUNCTION_1_32();
  _s7SiriCam0B13ModelMetadataVWOcTm_1(a2, &v30[v31], v32);
  v33 = [objc_opt_self() defaultManager];
  outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v30, v28, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
  v141 = v20;
  v34 = *(v20 + 48);
  URL._bridgeToObjectiveC()(v35);
  v37 = v36;
  v38 = &v28[v34];
  v39 = v9;
  outlined destroy of CamModelMetadata(v38);
  v40 = *(v9 + 8);
  v140 = v28;
  v148 = v40;
  v149 = v9 + 8;
  v40(v28, v7);
  v154 = 0;
  v41 = [v33 contentsOfDirectoryAtURL:v37 includingPropertiesForKeys:0 options:0 error:&v154];

  v42 = v154;
  if (!v41)
  {
    v74 = v154;
    _convertNSErrorToError(_:)();

    goto LABEL_27;
  }

  v142 = v30;
  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v42;

  v45 = 0;
  v46 = *(v43 + 16);
  v145 = (v39 + 32);
  v146 = MEMORY[0x277D84F90];
  v47 = v7;
  v152 = v7;
  v48 = v39;
  while (v46 != v45)
  {
    if (v45 >= *(v43 + 16))
    {
      __break(1u);
LABEL_38:
      OUTLINED_FUNCTION_3();
      swift_once();
LABEL_25:
      v75 = type metadata accessor for Logger();
      v76 = __swift_project_value_buffer(v75, static Logger.common);
      v77 = v135;
      outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v142, v135, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
      v78 = v146;

      v144 = v76;
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v79, v80))
      {
        OUTLINED_FUNCTION_11_14();
        v81 = swift_slowAlloc();
        OUTLINED_FUNCTION_10_17();
        v143 = swift_slowAlloc();
        v154 = v143;
        *v81 = 136315394;
        v82 = v140;
        outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v77, v140, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
        v83 = *(v141 + 48);
        v84 = v147;
        (*v145)(v147, v82, v47);
        outlined destroy of CamModelMetadata(v82 + v83);
        OUTLINED_FUNCTION_2_24();
        lazy protocol witness table accessor for type URL and conformance URL(v85, v86, MEMORY[0x277CC9290]);
        v87 = dispatch thunk of CustomStringConvertible.description.getter();
        v89 = v88;
        v148(v84, v152);
        outlined destroy of (CamLogOutput, CamModelMetadata)(v77, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, &v154);
        OUTLINED_FUNCTION_18_0();

        *(v81 + 4) = v84;
        OUTLINED_FUNCTION_24_4();
        v90 = MEMORY[0x26D5DCE80](v78, v152);
        v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, &v154);

        *(v81 + 14) = v92;
        v47 = v152;
        OUTLINED_FUNCTION_37_1(&dword_266790000, v79, v80, "Searching %s found folders %s", v135, v136);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
      }

      else
      {

        outlined destroy of (CamLogOutput, CamModelMetadata)(v77, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
      }

      v104 = v139;
      v105 = v137;
      v106 = v138;
      v107 = v136;
      specialized Collection.first.getter();

      if (__swift_getEnumTagSinglePayload(v107, 1, v47) == 1)
      {
        v108 = v142;
        v109 = v140;
        outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v142, v140, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
        v110 = v105;
        v111 = *(v141 + 48);
        (*v145)(v106, v109, v47);
        v112 = v109 + v111;
        v105 = v110;
        outlined destroy of CamModelMetadata(v112);
        if (__swift_getEnumTagSinglePayload(v107, 1, v47) != 1)
        {
          outlined destroy of (CamLogOutput, CamModelMetadata)(v107, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        }
      }

      else
      {
        (*v145)(v106, v107, v47);
        v108 = v142;
      }

      outlined init with copy of (modelUrl: URL, modelMetadata: CamModelMetadata)(v108, v105, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
      v113 = OUTLINED_FUNCTION_25_9();
      (v150)(v113);
      v114 = v105;
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v115, v116))
      {
        OUTLINED_FUNCTION_11_14();
        v117 = v47;
        v118 = swift_slowAlloc();
        OUTLINED_FUNCTION_10_17();
        v119 = v104;
        v152 = swift_slowAlloc();
        v154 = v152;
        *v118 = 136315394;
        v120 = v140;
        outlined init with take of (modelUrl: URL, modelMetadata: CamModelMetadata)(v114, v140);
        v121 = (v120 + *(v141 + 48));
        LODWORD(v151) = v116;
        v122 = *v121;
        v123 = v121[1];

        outlined destroy of CamModelMetadata(v121);
        v124 = v148;
        v148(v120, v117);
        v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v123, &v154);

        *(v118 + 4) = v125;
        *(v118 + 12) = 2080;
        OUTLINED_FUNCTION_2_24();
        lazy protocol witness table accessor for type URL and conformance URL(v126, v127, MEMORY[0x277CC9290]);
        dispatch thunk of CustomStringConvertible.description.getter();
        v124(v119, v117);
        v128 = OUTLINED_FUNCTION_41_0();
        v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v129, v130);

        *(v118 + 14) = v131;
        _os_log_impl(&dword_266790000, v115, v151, "%s: Resolved model url %s", v118, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();

        v100 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd;
        v101 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR;
        v102 = v142;
      }

      else
      {

        v148(v104, v47);
        OUTLINED_FUNCTION_14_17();
        outlined destroy of (CamLogOutput, CamModelMetadata)(v132, v133, v134);
        OUTLINED_FUNCTION_14_17();
      }

      return outlined destroy of (CamLogOutput, CamModelMetadata)(v102, v100, v101);
    }

    v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v50 = v48;
    v51 = *(v48 + 72);
    v150(v19, v43 + v49 + v51 * v45, v47);
    if (URL.pathExtension.getter() == 0x636C65646F6D6C6DLL && v52 == 0xE800000000000000)
    {

LABEL_12:
      v55 = *v145;
      (*v145)(v144, v19, v152);
      v56 = v146;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v154 = v56;
      v143 = v55;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1);
        v56 = v154;
      }

      v59 = v56[2];
      v58 = v56[3];
      v60 = (v59 + 1);
      if (v59 >= v58 >> 1)
      {
        v146 = (v59 + 1);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v58 > 1, v59 + 1, 1);
        v60 = v146;
        v56 = v154;
      }

      ++v45;
      v56[2] = v60;
      v146 = v56;
      v61 = v56 + v49 + v59 * v51;
      v47 = v152;
      (v143)(v61, v144, v152);
      v48 = v50;
    }

    else
    {
      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v54)
      {
        goto LABEL_12;
      }

      v47 = v152;
      v148(v19, v152);
      ++v45;
    }
  }

  v62 = v146[2];
  if (v62 <= 1)
  {
    if (one-time initialization token for common != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v154 = 0;
  v155 = 0xE000000000000000;
  v63 = v146;
  _StringGuts.grow(_:)(46);

  v154 = 0xD00000000000002CLL;
  v155 = 0x800000026681C0B0;
  v153 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62, 0);
  v64 = v153;
  v65 = v63 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
  v66 = *(v48 + 72);
  do
  {
    v150(v147, v65, v47);
    v67 = URL.path.getter();
    v69 = v68;
    v70 = OUTLINED_FUNCTION_15_5();
    (v148)(v70);
    v153 = v64;
    v72 = *(v64 + 16);
    v71 = *(v64 + 24);
    if (v72 >= v71 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v71 > 1, v72 + 1, 1);
      v64 = v153;
    }

    *(v64 + 16) = v72 + 1;
    v73 = v64 + 16 * v72;
    *(v73 + 32) = v67;
    *(v73 + 40) = v69;
    v65 += v66;
    --v62;
    v47 = v152;
  }

  while (v62);

  v153 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v93 = BidirectionalCollection<>.joined(separator:)();
  v95 = v94;

  MEMORY[0x26D5DCD80](v93, v95);

  v96 = v154;
  v97 = v155;
  v98 = lazy protocol witness table accessor for type CamError and conformance CamError();
  OUTLINED_FUNCTION_6_2(&type metadata for CamError, v98);
  *v99 = v96;
  *(v99 + 8) = v97;
  *(v99 + 16) = 2;
  v30 = v142;
LABEL_27:
  swift_willThrow();
  v100 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd;
  v101 = &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR;
  v102 = v30;
  return outlined destroy of (CamLogOutput, CamModelMetadata)(v102, v100, v101);
}

uint64_t CoreMLHandler.logModelFeatures(modelFeatures:)(uint64_t a1)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_22();
  v76 = v3;
  v77 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  OUTLINED_FUNCTION_22();
  v78 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_17();
  MEMORY[0x28223BE20](v14);
  v16 = &v66 - v15;
  v17 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v17 - 8);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v18 = JSONEncoder.init()();
  v80[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo14MLFeatureValueCGMd, &_sSDySSSo14MLFeatureValueCGMR);
  lazy protocol witness table accessor for type [String : MLFeatureValue] and conformance <> [A : B]();
  v19 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v21 = v20;
  v72 = v12;
  v74 = v16;
  v75 = v18;
  static String.Encoding.utf8.getter();
  v22 = String.init(data:encoding:)();
  if (v23)
  {
    v69 = v19;
    v67 = v22;
    v71 = v23;
    v73 = v21;
    v24 = [objc_opt_self() defaultManager];
    v25 = [v24 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v80[0] = 1601003875;
    v80[1] = 0xE400000000000000;
    v26 = v6;
    UUID.init()();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v27 = v76;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D5DCD80](v28);

    (*(v77 + 8))(v26, v27);
    MEMORY[0x26D5DCD80](0x6E6F736A2ELL, 0xE500000000000000);
    v29 = v74;
    URL.appendingPathComponent(_:)();

    v30 = v78;
    v31 = v78 + 8;
    v32 = v7;
    v77 = *(v78 + 8);
    (v77)(v1, v7);
    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    v34 = __swift_project_value_buffer(v33, static Logger.common);
    (*(v30 + 16))(v72, v29, v7);
    v35 = v79;

    v78 = v34;
    v36 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_34_1();

    v68 = v30 + 16;
    v37 = os_log_type_enabled(v36, (v30 + 16));
    v38 = v69;
    v76 = v31;
    v70 = v32;
    if (v37)
    {
      OUTLINED_FUNCTION_11_14();
      v39 = swift_slowAlloc();
      OUTLINED_FUNCTION_10_17();
      v80[0] = swift_slowAlloc();
      *v39 = 136315394;
      v40 = *(v35 + 16);

      v41 = OUTLINED_FUNCTION_15_5();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v43);
      OUTLINED_FUNCTION_18_0();

      *(v39 + 4) = v40;
      *(v39 + 12) = 2080;
      OUTLINED_FUNCTION_2_24();
      lazy protocol witness table accessor for type URL and conformance URL(v44, v45, MEMORY[0x277CC9290]);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = OUTLINED_FUNCTION_41_0();
      (v77)(v47);
      v48 = OUTLINED_FUNCTION_15_5();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v50);
      OUTLINED_FUNCTION_18_0();

      *(v39 + 14) = v46;
      _os_log_impl(&dword_266790000, v36, v68, "%s: Writing CAM features to file: %s", v39, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      v29 = v74;
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    else
    {

      v52 = OUTLINED_FUNCTION_41_0();
      (v77)(v52);
    }

    Data.write(to:options:)();
    v53 = v79;

    v54 = v71;

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();

    v57 = OUTLINED_FUNCTION_33_2();
    if (os_log_type_enabled(v57, v58))
    {
      OUTLINED_FUNCTION_11_14();
      v59 = swift_slowAlloc();
      OUTLINED_FUNCTION_10_17();
      v80[0] = swift_slowAlloc();
      *v59 = 136315394;
      v60 = v53;
      v61 = v38;
      v62 = *(v60 + 16);
      v63 = *(v60 + 24);

      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v80);

      *(v59 + 4) = v64;
      *(v59 + 12) = 2080;
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v54, v80);

      *(v59 + 14) = v65;
      _os_log_impl(&dword_266790000, v55, v56, "%s: Making predictions from features : %s", v59, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();

      outlined consume of Data._Representation(v61, v73);
    }

    else
    {

      outlined consume of Data._Representation(v38, v73);
    }

    return (v77)(v29, v70);
  }

  else
  {

    return outlined consume of Data._Representation(v19, v21);
  }
}

uint64_t CoreMLHandler.deinit()
{

  outlined destroy of CamModelMetadata(v0 + OBJC_IVAR____TtC7SiriCam13CoreMLHandler_modelMetadata);
  return v0;
}

uint64_t CoreMLHandler.__deallocating_deinit()
{
  CoreMLHandler.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for CoreMLHandler(uint64_t a1)
{
  result = type metadata singleton initialization cache for CoreMLHandler;
  if (!type metadata singleton initialization cache for CoreMLHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CoreMLHandler(uint64_t a1)
{
  result = type metadata accessor for CamModelMetadata(319);
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

unint64_t lazy protocol witness table accessor for type MLFeatureValue and conformance MLFeatureValue()
{
  result = lazy protocol witness table cache variable for type MLFeatureValue and conformance MLFeatureValue;
  if (!lazy protocol witness table cache variable for type MLFeatureValue and conformance MLFeatureValue)
  {
    type metadata accessor for MLMultiArray(255, &lazy cache variable for type metadata for MLFeatureValue, 0x277CBFEF8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLFeatureValue and conformance MLFeatureValue);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id @nonobjc MLDictionaryFeatureProvider.init(dictionary:)()
{
  v6[1] = *MEMORY[0x277D85DE8];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6[0] = 0;
  v2 = [v0 initWithDictionary:isa error:v6];

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

uint64_t outlined init with take of (modelUrl: URL, modelMetadata: CamModelMetadata)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of CamModelMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CamModelMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of (modelUrl: URL, modelMetadata: CamModelMetadata)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *specialized Dictionary.subscript.getter(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 56) + 8 * a2);
    *result = v5;

    v6 = v5;
    return OUTLINED_FUNCTION_8_0();
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t _s7SiriCam0B13ModelMetadataVWOcTm_1(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_2();
  v4 = OUTLINED_FUNCTION_8_0();
  v5(v4);
  return a2;
}

double OUTLINED_FUNCTION_15_12()
{

  return result;
}

double OUTLINED_FUNCTION_36_1(float a1)
{
  *v1 = a1;

  return result;
}

void OUTLINED_FUNCTION_37_1(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t ActionCandidate.flowHandlerId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ActionCandidate.parse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActionCandidate(0) + 20);

  return outlined init with copy of CamParse(v3, a1);
}

uint64_t type metadata accessor for ActionCandidate(uint64_t a1)
{
  result = type metadata singleton initialization cache for ActionCandidate;
  if (!type metadata singleton initialization cache for ActionCandidate)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ActionCandidate.userData.getter()
{
  type metadata accessor for ActionCandidate(0);

  return result;
}

uint64_t ActionCandidate.loggingId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActionCandidate(0) + 32);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActionCandidate.inferredBundleId.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionCandidate(0) + 36));

  return v1;
}

uint64_t ActionCandidate.inferredBundleId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ActionCandidate(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ActionCandidate.init(flowHandlerId:parse:affinityScore:loggingId:userData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = type metadata accessor for ActionCandidate(0);
  v15 = &a7[v14[9]];
  *a7 = a1;
  *(a7 + 1) = a2;
  outlined init with copy of CamParse(a3, &a7[v14[5]]);
  *&a7[v14[6]] = a4;
  *&a7[v14[7]] = a6;
  v16 = v14[8];
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&a7[v16], a5, v17);
  *v15 = 0;
  *(v15 + 1) = 0;
  v19 = specialized ActionProtocol.inferBundleId()();
  v21 = v20;
  (*(v18 + 8))(a5, v17);
  result = outlined destroy of CamParse(a3);
  *v15 = v19;
  *(v15 + 1) = v21;
  return result;
}

uint64_t ActionCandidate.description.getter()
{
  _StringGuts.grow(_:)(93);
  MEMORY[0x26D5DCD80](0xD00000000000001FLL, 0x800000026681C1B0);
  MEMORY[0x26D5DCD80](*v0, v0[1]);
  MEMORY[0x26D5DCD80](0x3A6573726170202CLL, 0xE900000000000020);
  type metadata accessor for ActionCandidate(0);
  type metadata accessor for CamParse(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D5DCD80](0xD000000000000011, 0x800000026681C1D0);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D5DCD80](v1);

  MEMORY[0x26D5DCD80](0x614472657375202CLL, 0xEC000000203A6174);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGSgMd, &_sSDySSypGSgMR);
  v2 = String.init<A>(describing:)();
  MEMORY[0x26D5DCD80](v2);

  MEMORY[0x26D5DCD80](0x6E6967676F6C202CLL, 0xED0000203A644967);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D5DCD80](v3);

  MEMORY[0x26D5DCD80](41, 0xE100000000000000);
  return 0;
}

void type metadata completion function for ActionCandidate(uint64_t a1)
{
  type metadata accessor for CamParse(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String : Any]?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v3 <= 0x3F)
      {
        type metadata accessor for String?();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t FeatureExtracting.extract(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 32))(a1);
  if (!v3)
  {
    v7 = (*(a3 + 24))(a2, a3);
    v8 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v7);
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_0_28();

    OUTLINED_FUNCTION_0_28();
    type metadata accessor for Dictionary.Keys();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_0_28();
    v9 = Set.init<A>(_:)();
    v10 = specialized Set.subtracting(_:)(v9, v8);

    if (Set.isEmpty.getter())
    {
    }

    else
    {

      v18[0] = 0;
      v18[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      MEMORY[0x26D5DCD80](0x7365727574616546, 0xE900000000000020);
      v18[3] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, _sShySSGMR);
      lazy protocol witness table accessor for type Set<String> and conformance Set<A>();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();

      MEMORY[0x26D5DCD80](0xD00000000000002ALL, 0x800000026681A770);
      if (one-time initialization token for common != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.common);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v18[0] = v15;
        *v14 = 136315138;
        *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v18);
        _os_log_impl(&dword_266790000, v12, v13, "%s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x26D5DDCD0](v15, -1, -1);
        MEMORY[0x26D5DDCD0](v14, -1, -1);
      }

      lazy protocol witness table accessor for type CamError and conformance CamError();
      swift_allocError();
      *v16 = 0;
      *(v16 + 8) = 0xE000000000000000;
      *(v16 + 16) = 1;
      swift_willThrow();
    }
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type Set<String> and conformance Set<A>()
{
  result = lazy protocol witness table cache variable for type Set<String> and conformance Set<A>;
  if (!lazy protocol witness table cache variable for type Set<String> and conformance Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySSGMd, _sShySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<String> and conformance Set<A>);
  }

  return result;
}

id static CaarResponseLogger.map(from:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RankedAction(0);
  OUTLINED_FUNCTION_22();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277D56BD0]) init];
  if (result)
  {
    v15 = *(a1 + 16);
    if (v15)
    {
      v22 = result;
      type metadata accessor for SISchemaUUID();
      v16 = *(v8 + 36);
      v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v18 = *(v10 + 72);
      v19 = (v4 + 16);
      do
      {
        outlined init with copy of RankedAction(v17, v13);
        (*v19)(v7, &v13[v16], v2);
        outlined destroy of RankedAction(v13);
        v20 = SISchemaUUID.__allocating_init(nsuuid:)(v7);
        [v22 addActionCandidateIds_];

        v17 += v18;
        --v15;
      }

      while (v15);
      return v22;
    }
  }

  return result;
}

id static CaarResponseLogger.wrapIntoLogEvent(message:)(uint64_t a1)
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
    [v3 setEnded_];
    [v4 setCaarRequestContext_];
  }

  return v4;
}

uint64_t AppShortcutFeatureExtractor.extractImpl(from:)(uint64_t a1)
{
  v1 = AppShortcutFeatureExtractor.extractIsAppShortcut(from:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMd, &_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266813FC0;
  *(inited + 32) = 0x535F5050415F5349;
  *(inited + 40) = 0xEF54554354524F48;
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  type metadata accessor for MLFeatureValue();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t AppShortcutFeatureExtractor.extractIsAppShortcut(from:)(uint64_t a1)
{
  v2 = type metadata accessor for CamParse(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CamUSOParse(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionCandidate(0);
  outlined init with copy of CamParse(a1 + *(v8 + 20), v4);
  if (swift_getEnumCaseMultiPayload())
  {
    _s7SiriCam0B5ParseOWOhTm_4(v4, type metadata accessor for CamParse);
    return 0;
  }

  outlined init with take of CamUSOParse(v4, v7);
  v10 = CamUSOParse.appShortcutInvocation.getter();
  v12 = v11;
  _s7SiriCam0B5ParseOWOhTm_4(v7, type metadata accessor for CamUSOParse);
  if (!v12)
  {
    return 0;
  }

  outlined consume of AppShortcutInvocation?(v10, v12);
  return 1;
}

uint64_t _s7SiriCam0B5ParseOWOhTm_4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void specialized static FeatureStoreLoggingProtocol.write(streamId:object:requestId:rcId:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  specialized static FeatureStoreLoggingProtocol.write(streamId:object:requestId:rcId:)(a1, a2, a3, a4, a5, a6, a7);
}

{
  v60 = a7;
  v10 = type metadata accessor for String.Encoding();
  v11 = OUTLINED_FUNCTION_14(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_16();
  v12 = type metadata accessor for JSONEncoder.NonConformingFloatEncodingStrategy();
  OUTLINED_FUNCTION_22();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_0();
  v18 = (v17 - v16);
  OUTLINED_FUNCTION_12_18();
  v20 = v19;
  v21 = MGGetBoolAnswer();

  if (v21)
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    *v18 = 6712937;
    v18[1] = 0xE300000000000000;
    v18[2] = 1718511917;
    v18[3] = 0xE400000000000000;
    v18[4] = 7233902;
    v18[5] = 0xE300000000000000;
    (*(v14 + 104))(v18, *MEMORY[0x277CC8788], v12);
    dispatch thunk of JSONEncoder.nonConformingFloatEncodingStrategy.setter();
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v22 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v7)
    {
LABEL_20:

      return;
    }

    v24 = v22;
    v25 = v23;
    v26 = 0xD00000000000001DLL;
    static String.Encoding.utf8.getter();
    v27 = String.init(data:encoding:)();
    if (v28)
    {
      v29 = v28;
      v53 = v27;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_3();
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.common);

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v51 = v24;
        v33 = swift_slowAlloc();
        v52 = v25;
        v58 = swift_slowAlloc();
        *v33 = 136315394;
        *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v58);
        *(v33 + 12) = 2080;
        v34 = v31;
        v35 = v53;
        *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v29, &v58);
        v36 = v32;
        v37 = v34;
        _os_log_impl(&dword_266790000, v34, v36, "Writing object to Feature Store for %s: %s", v33, 0x16u);
        swift_arrayDestroy();
        v25 = v52;
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
        v24 = v51;
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
      }

      else
      {

        v35 = v53;
      }

      v58 = a4;
      v59 = a5;

      MEMORY[0x26D5DCD80](58, 0xE100000000000000);
      MEMORY[0x26D5DCD80](a6, v60);
      v44 = v58;
      v45 = v59;
      v46 = objc_allocWithZone(MEMORY[0x277D08438]);
      v47 = @nonobjc FSFCurareInteractionAsJsonStr.init(jsonStr:interactionId:dataVersion:)(v35, v29, v44, v45, 1);
      if (v47)
      {
        v48 = v47;
        specialized static FeatureStoreLoggingProtocol.write(streamId:interaction:)(a1, a2, v47);

LABEL_19:
        outlined consume of Data._Representation(v24, v25);
        goto LABEL_20;
      }

      v43 = "JSONStringInitializationError";
      v26 = 0xD00000000000001ELL;
    }

    else
    {
      v43 = "autoSendEnforcer";
    }

    v49 = v43 | 0x8000000000000000;
    lazy protocol witness table accessor for type CamError and conformance CamError();
    swift_allocError();
    *v50 = v26;
    *(v50 + 8) = v49;
    *(v50 + 16) = 4;
    swift_willThrow();
    goto LABEL_19;
  }

  if (one-time initialization token for common != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static Logger.common);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_10(v40))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_20_13(&dword_266790000, v41, v42, "Skipping FS logging on prod build.");
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }
}

void specialized static FeatureStoreLoggingProtocol.write(streamId:interaction:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  if ([objc_opt_self() isSupportedUser])
  {
    v6 = objc_opt_self();
    v7 = MEMORY[0x26D5DCC90](a1, a2);
    v8 = [v6 getWithStreamId_];

    if (v8)
    {
      goto LABEL_5;
    }

    v9 = _s7SiriCam27FeatureStoreLoggingProtocolPAAE12createStream8streamIdSo020FSFCurareInteractionH0CSgSS_tFZAA0bcD6LoggerV_Tt0g5Tm(a1, a2);
    if (v9)
    {
      v8 = v9;
LABEL_5:
      v20[0] = 0;
      if (([v8 insert:a3 error:v20]& 1) != 0)
      {
        v10 = v20[0];
      }

      else
      {
        v15 = v20[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      goto LABEL_13;
    }

    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.common);

    v8 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v17))
    {
      OUTLINED_FUNCTION_15();
      v18 = swift_slowAlloc();
      OUTLINED_FUNCTION_9();
      v19 = swift_slowAlloc();
      v20[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v20);
      _os_log_impl(&dword_266790000, v8, v17, "Failed to write to Feature Store because the stream %s cannot be found or created", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      goto LABEL_11;
    }
  }

  else
  {
    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.common);
    v8 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_10(v12))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_20_13(&dword_266790000, v13, v14, "Cannot write to Feature Store because the user is not supported.");
LABEL_11:
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }
  }

LABEL_13:
}

id _s7SiriCam27FeatureStoreLoggingProtocolPAAE12createStream8streamIdSo020FSFCurareInteractionH0CSgSS_tFZAA0bcD6LoggerV_Tt0g5Tm(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277D08440]);

  v5 = @nonobjc FSFCurareInteractionStream.init(streamId:)(a1, a2);
  if (v5)
  {
    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.common);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_15();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_9();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v12);
      _os_log_impl(&dword_266790000, v7, v8, "Successfully created Feature Store stream: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }
  }

  return v5;
}

uint64_t specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(void *a1)
{
  return CamModelMetadata.encode(to:)(a1);
}

{
  return CamLogOutput.encode(to:)(a1);
}

uint64_t specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RankedAction(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type RankedAction and conformance RankedAction, type metadata accessor for RankedAction, &protocol conformance descriptor for RankedAction);
  return Array<A>.encode(to:)();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo14MLFeatureValueCGMd, &_sSDySSSo14MLFeatureValueCGMR);
  lazy protocol witness table accessor for type [String : MLFeatureValue] and conformance <> [A : B]();
  return Dictionary<>.encode(to:)();
}

{
  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLMultiArray, 0x277CBFF48);
  lazy protocol witness table accessor for type MLFeatureValue and conformance MLFeatureValue(&lazy protocol witness table cache variable for type MLMultiArray and conformance MLMultiArray, &lazy cache variable for type metadata for MLMultiArray, 0x277CBFF48, &protocol conformance descriptor for MLMultiArray);
  return Dictionary<>.encode(to:)();
}

uint64_t specialized ReflectedStringConvertible.description.getter(uint64_t (*a1)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorVSgMd, &_ss6MirrorVSgMR);
  OUTLINED_FUNCTION_14(v4);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_16();
  v6 = type metadata accessor for Mirror();
  OUTLINED_FUNCTION_22();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v27 = a1(0);
  v25 = v1;

  Mirror.init(reflecting:)();
  Mirror.subjectType.getter();
  v25 = _typeName(_:qualified:)();
  v26 = v15;
  MEMORY[0x26D5DCD80](40, 0xE100000000000000);
  Mirror.superclassMirror.getter();
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v2, &_ss6MirrorVSgMd, &_ss6MirrorVSgMR);
  }

  else
  {
    (*(v8 + 32))(v12, v2, v6);
    Mirror.children.getter();
    v16 = ReflectedStringConvertible.printElements(_:)();
    v18 = v17;

    v23 = v16;
    v24 = v18;

    MEMORY[0x26D5DCD80](8236, 0xE200000000000000);

    MEMORY[0x26D5DCD80](v23, v24);

    (*(v8 + 8))(v12, v6);
  }

  Mirror.children.getter();
  v19 = ReflectedStringConvertible.printElements(_:)();
  v21 = v20;

  MEMORY[0x26D5DCD80](v19, v21);

  MEMORY[0x26D5DCD80](41, 0xE100000000000000);
  (*(v8 + 8))(v14, v6);
  return v25;
}

uint64_t _s7SiriCam0B27FeatureStoreLoggingProtocolPAAE9writeData13modelFeatures0I6Output0I8Metadata9requestId02rcN08fsStreamySDySSSo12MLMultiArrayCG_AA0b3LogK0CAA0b5ModelL0VS2SAA0cdQ0OtFZAA0bcD6LoggerV_Tt5g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v30 = a7;
  v29 = a5;
  v28 = a4;
  v13 = type metadata accessor for CamModelMetadata(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_7SiriCam12AnyEncodableVtGMd, &_ss23_ContiguousArrayStorageCySS_7SiriCam12AnyEncodableVtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266813C70;
  v18 = 0xE800000000000000;
  *(inited + 32) = 0x7365727574616566;
  *(inited + 40) = 0xE800000000000000;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(inited + 48) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
  *(inited + 56) = v19;
  *(inited + 64) = 0x74757074756FLL;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
  *(inited + 88) = a2;
  *(inited + 96) = 0x617461646174656DLL;
  *(inited + 104) = 0xE800000000000000;
  OUTLINED_FUNCTION_6_25();
  outlined init with copy of AutoSendInput(a3, v16, v20);
  v21 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v22 = swift_allocObject();
  outlined init with take of AutoSendInput(v16, v22 + v21, type metadata accessor for CamModelMetadata);
  *(inited + 112) = _s7SiriCam12AnyEncodableVyACxcSERzlufcys7Encoder_pKcxcfu_ysAD_pKcfu0_AA0B13ModelMetadataV_Tg5TA_0;
  *(inited + 120) = v22;

  v23 = Dictionary.init(dictionaryLiteral:)();
  if (a8)
  {
    if (a8 == 1)
    {
      v24 = 0x65646F4D72616143;
      v18 = 0xE90000000000006CLL;
    }

    else
    {
      v24 = 0x646E65536F747541;
      v18 = 0xED00006C65646F4DLL;
    }
  }

  else
  {
    v24 = 0x6C65646F4D6D6143;
  }

  v25 = v29;
  v26 = v28;
  v31[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS7SiriCam12AnyEncodableVGMd, &_sSDySS7SiriCam12AnyEncodableVGMR);
  v31[4] = lazy protocol witness table accessor for type [String : AnyEncodable] and conformance <> [A : B]();
  v31[0] = v23;
  specialized static FeatureStoreLoggingProtocol.write(streamId:object:requestId:rcId:)(v24, v18, v31, v26, v25, a6, v30);

  return __swift_destroy_boxed_opaque_existential_0(v31);
}

uint64_t AutoSendCoreHandler.init()()
{
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam29WordEmbeddingFeatureExtractorVSgMd, &_s7SiriCam29WordEmbeddingFeatureExtractorVSgMR);
  OUTLINED_FUNCTION_14(v4);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_13_16();
  v7 = type metadata accessor for AutoSendInputFeatureExtractor(v6);
  v8 = OUTLINED_FUNCTION_14(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v11 = (v10 - v9);
  v13 = *(v12 + 44);
  v14 = type metadata accessor for WordEmbeddingFeatureExtractor(0);
  OUTLINED_FUNCTION_19_14();
  *v11 = 0x3FF0000000000000;
  v11[1] = 0;
  type metadata accessor for LatticePathFeatureExtractor();
  v11[2] = swift_allocObject();
  v34 = &type metadata for CamFeatureFlag;
  v35 = lazy protocol witness table accessor for type CamFeatureFlag and conformance CamFeatureFlag();
  LOBYTE(v33) = 1;
  v15 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v33);
  if ((v15 & 1) != 0 && static WordEmbeddingFeatureExtractor.currentLocaleIsSupported()())
  {
    WordEmbeddingFeatureExtractor.init()(v2);
    if (v1)
    {
LABEL_8:
      OUTLINED_FUNCTION_2_25();
      outlined destroy of AutoSendInput(v11, v19);
      type metadata accessor for AutoSendCoreHandler(0);
      swift_deallocPartialClassInstance();
      return v3;
    }

    __swift_storeEnumTagSinglePayload(v2, 0, 1, v14);
    outlined assign with take of WordEmbeddingFeatureExtractor?(v2, v11 + v13);
  }

  else
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v11 + v13, &_s7SiriCam29WordEmbeddingFeatureExtractorVSgMd, &_s7SiriCam29WordEmbeddingFeatureExtractorVSgMR);
    OUTLINED_FUNCTION_19_14();
  }

  v16 = (v3 + OBJC_IVAR____TtC7SiriCam19AutoSendCoreHandler_autoSendInputFeatureExtractor);
  outlined init with take of AutoSendInput(v11, v3 + OBJC_IVAR____TtC7SiriCam19AutoSendCoreHandler_autoSendInputFeatureExtractor, type metadata accessor for AutoSendInputFeatureExtractor);
  v17 = type metadata accessor for CoreMLHandler(0);
  swift_allocObject();
  v18 = CoreMLHandler.init(forModelWithName:)(0xD000000000000029, 0x8000000266819F40);
  if (v1)
  {
    v11 = v16;
    goto LABEL_8;
  }

  v34 = v17;
  v35 = &protocol witness table for CoreMLHandler;
  *&v33 = v18;
  outlined init with take of CaarHandler(&v33, v3 + 16);
  OUTLINED_FUNCTION_12_18();
  v21 = v20;
  v22 = MGGetBoolAnswer();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriCam25AutoConfirmActionEnforcer_pGMd, &_ss23_ContiguousArrayStorageCy7SiriCam25AutoConfirmActionEnforcer_pGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_266813E60;
  *(v23 + 56) = &type metadata for ForcedConfirmationActionEnforcer;
  *(v23 + 64) = &protocol witness table for ForcedConfirmationActionEnforcer;
  *(v23 + 96) = &type metadata for UserDefaultsActionEnforcer;
  *(v23 + 104) = &protocol witness table for UserDefaultsActionEnforcer;
  if (v22)
  {
    if (one-time initialization token for autoSend != -1)
    {
      OUTLINED_FUNCTION_18(&one-time initialization token for autoSend);
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.autoSend);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10(v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_266790000, v25, v26, "Detected internal build", v27, 2u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    v29 = *(v23 + 16);
    v28 = *(v23 + 24);
    if (v29 >= v28 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v23);
      v23 = v32;
    }

    v34 = &type metadata for AutoConfirmMagicWordsActionEnforcer;
    v35 = &protocol witness table for AutoConfirmMagicWordsActionEnforcer;
    *(v23 + 16) = v29 + 1;
    outlined init with take of CaarHandler(&v33, v23 + 40 * v29 + 32);
  }

  v30 = (v3 + OBJC_IVAR____TtC7SiriCam19AutoSendCoreHandler_autoSendEnforcer);
  v30[3] = &type metadata for AutoConfirmSequentialEnforcer;
  v30[4] = &protocol witness table for AutoConfirmSequentialEnforcer;
  *v30 = v23;
  return v3;
}

void *AutoSendCoreHandler.handle(_:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_22();
  v173 = v5;
  v174 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_21_1(v7 - v6);
  v172 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_22();
  v170 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_21_1(v11 - v10);
  v168 = type metadata accessor for DispatchQoS.QoSClass();
  OUTLINED_FUNCTION_22();
  v167 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_23_0(v15 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_14(v16);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_23_0(v153 - v18);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMd, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMR);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v19);
  v21 = OUTLINED_FUNCTION_21_1(v153 - v20);
  v157 = type metadata accessor for CamModelMetadata(v21);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_0();
  v25 = OUTLINED_FUNCTION_21_1(v24 - v23);
  v26 = type metadata accessor for AutoSendInputFeatureExtractor(v25);
  v27 = OUTLINED_FUNCTION_14(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_0();
  v181 = v29 - v28;
  v183 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_22();
  v31 = v30;
  v33 = MEMORY[0x28223BE20](v32);
  v178 = v153 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = v153 - v35;
  v37 = type metadata accessor for AutoSendInput(0);
  OUTLINED_FUNCTION_22();
  v164 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_23_0(v153 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_23_0(v153 - v42);
  v44 = MEMORY[0x28223BE20](v43);
  v46 = v153 - v45;
  v165 = v47;
  MEMORY[0x28223BE20](v44);
  v49 = v153 - v48;
  if (one-time initialization token for autoSend != -1)
  {
    OUTLINED_FUNCTION_18(&one-time initialization token for autoSend);
  }

  v50 = type metadata accessor for Logger();
  v51 = __swift_project_value_buffer(v50, static Logger.autoSend);
  OUTLINED_FUNCTION_7_19();
  outlined init with copy of AutoSendInput(a1, v49, v52);
  v177 = v51;
  v53 = Logger.logObject.getter();
  LODWORD(v179) = static os_log_type_t.debug.getter();
  v54 = OUTLINED_FUNCTION_10(v179);
  v163 = v46;
  v175 = v37;
  if (v54)
  {
    OUTLINED_FUNCTION_15();
    v55 = swift_slowAlloc();
    v155 = v2;
    v56 = v55;
    OUTLINED_FUNCTION_9();
    v154 = swift_slowAlloc();
    aBlock = v154;
    *v56 = 136315138;
    v176 = v36;
    outlined init with copy of AutoSendInput(v49, v46, type metadata accessor for AutoSendInput);
    v57 = v31;
    v58 = String.init<A>(describing:)();
    v180 = a1;
    v60 = v59;
    v36 = v176;
    outlined destroy of AutoSendInput(v49, type metadata accessor for AutoSendInput);
    v61 = v58;
    v31 = v57;
    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v60, &aBlock);
    v63 = v180;

    *(v56 + 4) = v62;
    _os_log_impl(&dword_266790000, v53, v179, "Handling AutoSend input: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v154);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    v2 = v155;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  else
  {

    outlined destroy of AutoSendInput(v49, type metadata accessor for AutoSendInput);
    v63 = a1;
  }

  v64 = v181;
  if (one-time initialization token for autoSend != -1)
  {
    swift_once();
  }

  v65 = static Log.autoSend;
  OSSignpostID.init(log:)();
  v66 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_17_13(v66, &dword_266790000, v67, "CamFeatureExtraction");
  v68 = OBJC_IVAR____TtC7SiriCam19AutoSendCoreHandler_autoSendInputFeatureExtractor;
  swift_beginAccess();
  outlined init with copy of AutoSendInput(v2 + v68, v64, type metadata accessor for AutoSendInputFeatureExtractor);
  v69 = v182;
  specialized FeatureExtracting.extract(from:)(v63);
  if (v69)
  {
    outlined destroy of AutoSendInput(v64, type metadata accessor for AutoSendInputFeatureExtractor);
    return (*(v31 + 8))(v36, v183);
  }

  else
  {
    v182 = v31;
    v180 = v63;
    OUTLINED_FUNCTION_2_25();
    v72 = v71;
    outlined destroy of AutoSendInput(v64, v73);
    v74 = static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_17_13(v74, &dword_266790000, v75, "CamFeatureExtraction");
    v76 = v65;
    OSSignpostID.init(log:)();
    v77 = static os_signpost_type_t.begin.getter();
    OUTLINED_FUNCTION_18_12(v77, &dword_266790000, v78, "CamPrediction");
    v79 = v2[5];
    v80 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v79);
    v81 = (*(v80 + 32))(v72, v79, v80);
    v181 = v72;
    v82 = static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_18_12(v82, &dword_266790000, v83, "CamPrediction");
    AutoSendOutputProvider.toAutoSendOutput(from:)(v81);
    v153[1] = 0;
    v154 = v81;
    v155 = v84;
    v157 = swift_allocBox();
    v86 = v85;
    v87 = v2;
    v88 = v2[5];
    v89 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v88);
    v90 = *(v89 + 24);
    v179 = v86;
    v90(v88, v89);
    v91 = v180;
    v92 = v156;
    outlined init with copy of AutoSendInput(v180, v156, type metadata accessor for AutoSendInput);
    v93 = v158;
    outlined init with copy of AutoSendInput(v91, v158, type metadata accessor for AutoSendInput);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.debug.getter();
    v96 = os_log_type_enabled(v94, v95);
    v176 = v36;
    if (v96)
    {
      v97 = swift_slowAlloc();
      *v97 = 67109376;
      v98 = v175;
      v99 = *(v92 + *(v175 + 28));
      outlined destroy of AutoSendInput(v92, type metadata accessor for AutoSendInput);
      *(v97 + 4) = v99;
      *(v97 + 8) = 1024;
      v100 = (*(v93 + *(v98 + 28)) & 1) == 0;
      outlined destroy of AutoSendInput(v93, type metadata accessor for AutoSendInput);
      *(v97 + 10) = v100;
      _os_log_impl(&dword_266790000, v94, v95, "Feature opt in status is %{BOOL}d, overriding shadow log field to %{BOOL}d.", v97, 0xEu);
      v91 = v180;
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    else
    {
      outlined destroy of AutoSendInput(v93, type metadata accessor for AutoSendInput);
      outlined destroy of AutoSendInput(v92, type metadata accessor for AutoSendInput);
      v98 = v175;
    }

    v101 = v179;
    *(v179 + 48) = (*(v91 + *(v98 + 28)) & 1) == 0;
    v102 = v91;
    v103 = *(v87 + OBJC_IVAR____TtC7SiriCam19AutoSendCoreHandler_autoSendEnforcer + 24);
    v104 = *(v87 + OBJC_IVAR____TtC7SiriCam19AutoSendCoreHandler_autoSendEnforcer + 32);
    __swift_project_boxed_opaque_existential_1((v87 + OBJC_IVAR____TtC7SiriCam19AutoSendCoreHandler_autoSendEnforcer), v103);
    v105 = v101;
    v106 = v159;
    outlined init with copy of AutoSendInput(v105, v159, type metadata accessor for CamModelMetadata);
    v107 = v155;
    (*(v104 + 8))(&aBlock, v181, v155, v102, v106, v103, v104);
    outlined destroy of AutoSendInput(v106, type metadata accessor for CamModelMetadata);
    v108 = v186;
    if (v186)
    {
      v109 = v185;
      v110 = aBlock;

      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.info.getter();

      v113 = v107;
      if (os_log_type_enabled(v111, v112))
      {
        OUTLINED_FUNCTION_9();
        v114 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v114 = 136315650;
        LOBYTE(v190) = *(v107 + 57);
        v115 = String.init<A>(describing:)();
        v117 = v109;
        v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v116, &aBlock);

        *(v114 + 4) = v118;
        *(v114 + 12) = 2080;
        LOBYTE(v190) = v110;
        v119 = String.init<A>(describing:)();
        v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v120, &aBlock);
        v109 = v117;
        v113 = v155;

        *(v114 + 14) = v121;
        *(v114 + 22) = 2080;
        *(v114 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v108, &aBlock);
        _os_log_impl(&dword_266790000, v111, v112, "Overriding %s with %s due to %s", v114, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
      }

      LOBYTE(aBlock) = v110;
      v122._countAndFlagsBits = v109;
      v122._object = v108;
      AutoSendOutput.overrideAction(action:enforcer:)(&aBlock, v122);
    }

    else
    {
      v113 = v107;
    }

    v123 = v161;
    *v161 = v113;
    OUTLINED_FUNCTION_6_25();
    outlined init with copy of AutoSendInput(v179, v123 + v124, v125);
    v126 = v113;
    v127 = v180;
    v128 = type metadata accessor for UUID();
    v129 = v162;
    __swift_storeEnumTagSinglePayload(v162, 1, 1, v128);

    v130 = v127;
    _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA0B11ModelLoggerV_Tt5B5();
    outlined destroy of (CamLogOutput, CamModelMetadata)(v129, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of (CamLogOutput, CamModelMetadata)(v123, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMd, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMR);

    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v131, v132))
    {
      OUTLINED_FUNCTION_15();
      v133 = swift_slowAlloc();
      OUTLINED_FUNCTION_9();
      v134 = swift_slowAlloc();
      aBlock = v134;
      *v133 = 136315138;

      v135 = specialized ReflectedStringConvertible.description.getter(type metadata accessor for AutoSendOutput);
      v137 = v136;

      v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v137, &aBlock);

      *(v133 + 4) = v138;
      _os_log_impl(&dword_266790000, v131, v132, "Returning AutoSend output: %s", v133, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v134);
      v130 = v180;
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v139 = v167;
    v140 = v166;
    v141 = v168;
    (*(v167 + 104))(v166, *MEMORY[0x277D851A8], v168);
    v142 = static OS_dispatch_queue.global(qos:)();
    (*(v139 + 8))(v140, v141);
    OUTLINED_FUNCTION_7_19();
    v143 = v163;
    outlined init with copy of AutoSendInput(v130, v163, v144);
    v145 = (*(v164 + 80) + 40) & ~*(v164 + 80);
    v146 = swift_allocObject();
    v146[2] = v181;
    v146[3] = v126;
    v146[4] = v157;
    outlined init with take of AutoSendInput(v143, v146 + v145, type metadata accessor for AutoSendInput);
    v188 = partial apply for closure #1 in AutoSendCoreHandler.handle(_:);
    v189 = v146;
    aBlock = MEMORY[0x277D85DD0];
    v185 = 1107296256;
    v186 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v187 = &block_descriptor_3;
    v147 = _Block_copy(&aBlock);

    v148 = v169;
    static DispatchQoS.unspecified.getter();
    v190 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v149 = v171;
    v150 = v174;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D5DD090](0, v148, v149, v147);
    _Block_release(v147);

    (*(v173 + 8))(v149, v150);
    (*(v170 + 8))(v148, v172);
    v151 = v183;
    v152 = *(v182 + 8);
    v152(v178, v183);
    v152(v176, v151);

    return v126;
  }
}

uint64_t closure #1 in AutoSendCoreHandler.handle(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CamModelMetadata(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_projectBox();
  swift_beginAccess();
  outlined init with copy of AutoSendInput(v10, v9, type metadata accessor for CamModelMetadata);
  v11 = type metadata accessor for AutoSendInput(0);
  v12 = UUID.uuidString.getter();
  _s7SiriCam0B27FeatureStoreLoggingProtocolPAAE9writeData13modelFeatures0I6Output0I8Metadata9requestId02rcN08fsStreamySDySSSo12MLMultiArrayCG_AA0b3LogK0CAA0b5ModelL0VS2SAA0cdQ0OtFZAA0bcD6LoggerV_Tt5g5(a1, a2, v9, v12, v13, *(a4 + *(v11 + 24)), *(a4 + *(v11 + 24) + 8), 2);

  return outlined destroy of AutoSendInput(v9, type metadata accessor for CamModelMetadata);
}

uint64_t AutoSendCoreHandler.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_2_25();
  outlined destroy of AutoSendInput(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC7SiriCam19AutoSendCoreHandler_autoSendEnforcer));
  return v0;
}

uint64_t AutoSendCoreHandler.__deallocating_deinit()
{
  AutoSendCoreHandler.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AutoSendCoreHandler(uint64_t a1)
{
  result = type metadata singleton initialization cache for AutoSendCoreHandler;
  if (!type metadata singleton initialization cache for AutoSendCoreHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AutoSendCoreHandler(uint64_t a1)
{
  result = type metadata accessor for AutoSendInputFeatureExtractor(319);
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

id @nonobjc FSFCurareInteractionAsJsonStr.init(jsonStr:interactionId:dataVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = MEMORY[0x26D5DCC90](a1);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = MEMORY[0x26D5DCC90](a3, a4);

LABEL_6:
  v11 = [v5 initWithJsonStr:v9 interactionId:v10 dataVersion:a5];

  return v11;
}

id @nonobjc FSFCurareInteractionStream.init(streamId:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x26D5DCC90](a1);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithStreamId_];

  return v4;
}

uint64_t outlined init with copy of AutoSendInput(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of AutoSendInput(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t partial apply for closure #1 in AutoSendCoreHandler.handle(_:)()
{
  v1 = type metadata accessor for AutoSendInput(0);
  OUTLINED_FUNCTION_14(v1);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return closure #1 in AutoSendCoreHandler.handle(_:)(v3, v4, v5, v6);
}

uint64_t _s7SiriCam12AnyEncodableVyACxcSERzlufcys7Encoder_pKcxcfu_ysAD_pKcfu0_AA0B13ModelMetadataV_Tg5TA_0(void *a1)
{
  v2 = type metadata accessor for CamModelMetadata(0);
  OUTLINED_FUNCTION_14(v2);
  return CamModelMetadata.encode(to:)(a1);
}

uint64_t lazy protocol witness table accessor for type MLFeatureValue and conformance MLFeatureValue(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MLMultiArray(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of AutoSendInput(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t outlined assign with take of WordEmbeddingFeatureExtractor?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam29WordEmbeddingFeatureExtractorVSgMd, &_s7SiriCam29WordEmbeddingFeatureExtractorVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_18_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_19_14()
{

  return __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v1);
}

uint64_t static TrialProvider.fetchBoolFactorFromTrial(_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cachedFactors != -1)
  {
    a1 = OUTLINED_FUNCTION_0_29(&one-time initialization token for cachedFactors);
  }

  OUTLINED_FUNCTION_2_26(a1);
  OUTLINED_FUNCTION_10_0();
  v2 = specialized Dictionary.subscript.getter();
  swift_endAccess();
  if (one-time initialization token for common != -1)
  {
    OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.common);
  v4 = v2;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = OUTLINED_FUNCTION_10_0();
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v10);
    *(v7 + 12) = 2080;
    if (v2)
    {
      [v4 BOOLeanValue];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v18);

    *(v7 + 14) = v13;
    OUTLINED_FUNCTION_6_26(&dword_266790000, v14, v15, "[TrialProvider] Fetched %s = %s");
    OUTLINED_FUNCTION_5_19();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();
  }

  if (!v2)
  {
    return 2;
  }

  v16 = [v4 BOOLeanValue];

  return v16;
}

uint64_t static TrialProvider.fetchDoubleFactorFromTrial(_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cachedFactors != -1)
  {
    a1 = OUTLINED_FUNCTION_0_29(&one-time initialization token for cachedFactors);
  }

  OUTLINED_FUNCTION_2_26(a1);
  OUTLINED_FUNCTION_10_0();
  v2 = specialized Dictionary.subscript.getter();
  swift_endAccess();
  if (one-time initialization token for common != -1)
  {
    OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.common);
  v4 = v2;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = OUTLINED_FUNCTION_10_0();
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v10);
    *(v7 + 12) = 2080;
    if (v2)
    {
      [v4 doubleValue];
    }

    else
    {
      v11 = 0;
    }

    v20[1] = v11;
    v21 = v2 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v20);

    *(v7 + 14) = v14;
    OUTLINED_FUNCTION_6_26(&dword_266790000, v15, v16, "[TrialProvider] Fetched %s = %s");
    OUTLINED_FUNCTION_5_19();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();
  }

  if (!v2)
  {
    return 0;
  }

  [v4 doubleValue];
  v18 = v17;

  return v18;
}

void *static TrialProvider.fetchStringFactorFromTrial(_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cachedFactors != -1)
  {
    a1 = OUTLINED_FUNCTION_0_29(&one-time initialization token for cachedFactors);
  }

  OUTLINED_FUNCTION_2_26(a1);
  OUTLINED_FUNCTION_10_0();
  v2 = specialized Dictionary.subscript.getter();
  swift_endAccess();
  if (one-time initialization token for common != -1)
  {
    OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.common);
  v4 = v2;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = OUTLINED_FUNCTION_10_0();
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v10);
    *(v7 + 12) = 2080;
    if (v2)
    {
      v11 = outlined bridged method (pb) of @objc TRILevel.stringValue.getter(v4);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v19[1] = v11;
    v19[2] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v19);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_266790000, v5, v6, "[TrialProvider] Fetched %s = %s", v7, 0x16u);
    OUTLINED_FUNCTION_5_19();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();
  }

  if (v2)
  {
    v16 = [v4 stringValue];
    if (v16)
    {
      v17 = v16;
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

double one-time initialization function for enrollment()
{
  static TrialProvider.fetchTrialEnrollment()(v1);
  static TrialProvider.enrollment = v1[0];
  unk_28132EAA0 = v1[1];
  result = *&v2;
  xmmword_28132EAB0 = v2;
  unk_28132EAC0 = v3;
  return result;
}

void static TrialProvider.fetchTrialEnrollment()(uint64_t *a1@<X8>)
{
  if (one-time initialization token for ranker != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.ranker);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266790000, v3, v4, "[TrialProvider] Fetching enrollment metadata.", v5, 2u);
    MEMORY[0x26D5DDCD0](v5, -1, -1);
  }

  if (one-time initialization token for triClient != -1)
  {
    swift_once();
  }

  v6 = static TrialProvider.triClient;
  v7 = MEMORY[0x26D5DCC90](0xD000000000000021, 0x800000026681C2C0);
  v8 = [v6 experimentIdentifiersWithNamespaceName_];

  if (v8)
  {
    v9 = [v8 experimentId];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = [v8 treatmentId];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    [v8 deploymentId];
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v25 = 0;
    v11 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32VSgMd, &_ss5Int32VSgMR);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  v19 = static TrialProvider.triClient;
  v20 = MEMORY[0x26D5DCC90](0xD000000000000021, 0x800000026681C2C0);
  v21 = [v19 rolloutIdentifiersWithNamespaceName_];

  if (v21)
  {
    v22 = [v21 rolloutId];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {

    v24 = 0;
  }

  *a1 = v25;
  a1[1] = v11;
  a1[2] = v13;
  a1[3] = v15;
  a1[4] = v16;
  a1[5] = v18;
  a1[6] = v21;
  a1[7] = v24;
}

void *one-time initialization function for cachedFactors()
{
  result = static TrialProvider.fetchFactorValues()();
  static TrialProvider.cachedFactors = result;
  return result;
}

void *static TrialProvider.fetchFactorValues()()
{
  if (one-time initialization token for ranker != -1)
  {
    goto LABEL_30;
  }

LABEL_2:
  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.ranker);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_266790000, v1, v2, "[TrialProvider] Fetching factor values.", v3, 2u);
    MEMORY[0x26D5DDCD0](v3, -1, -1);
  }

  if (one-time initialization token for triClient != -1)
  {
    swift_once();
  }

  v4 = static TrialProvider.triClient;
  v5 = MEMORY[0x26D5DCC90](0xD000000000000021, 0x800000026681C2C0);
  v6 = [v4 factorLevelsWithNamespaceName_];

  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for TRIFactorLevel, 0x277D73B08);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for TRILevel, 0x277D73B18);
  v8 = Dictionary.init(dictionaryLiteral:)();
  v9 = specialized Array.count.getter();
  v10 = 0;
  while (2)
  {
    for (i = v10; ; ++i)
    {
      if (v9 == i)
      {

        return v8;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26D5DD230](i, v7);
      }

      else
      {
        if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v12 = *(v7 + 8 * i + 32);
      }

      v13 = v12;
      v10 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        swift_once();
        goto LABEL_2;
      }

      v14 = [v12 factor];
      if (!v14)
      {
        goto LABEL_33;
      }

      v15 = outlined bridged method (ob) of @objc TRIFactor.name.getter(v14);
      if (v16)
      {
        break;
      }

LABEL_17:
    }

    v17 = v15;
    v18 = v16;
    v19 = [v13 level];
    if (!v19)
    {

      goto LABEL_17;
    }

    v37 = v19;
    isUnique = swift_isUniquelyReferenced_nonNull_native();
    v34 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
    v21 = v8[2];
    v22 = (v20 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
    }

    else
    {
      v35 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo8TRILevelCGMd, &_ss17_NativeDictionaryVySSSo8TRILevelCGMR);
      if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v23))
      {
        v26 = v34;
        if ((v35 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_26;
      }

      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
      if ((v35 & 1) == (v25 & 1))
      {
        v26 = v24;
        if ((v35 & 1) == 0)
        {
LABEL_23:
          v8[(v26 >> 6) + 8] |= 1 << v26;
          v27 = (v8[6] + 16 * v26);
          *v27 = v17;
          v27[1] = v18;
          *(v8[7] + 8 * v26) = v37;

          v28 = v8[2];
          v29 = __OFADD__(v28, 1);
          v30 = v28 + 1;
          if (!v29)
          {
            v8[2] = v30;
            continue;
          }

          goto LABEL_32;
        }

LABEL_26:

        v31 = v8[7];
        v32 = *(v31 + 8 * v26);
        *(v31 + 8 * v26) = v37;

        continue;
      }
    }

    break;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id one-time initialization function for triClient()
{
  result = closure #1 in variable initialization expression of static TrialProvider.triClient();
  static TrialProvider.triClient = result;
  return result;
}

id closure #1 in variable initialization expression of static TrialProvider.triClient()
{
  if (one-time initialization token for ranker != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.ranker);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_266790000, v1, v2, "[TrialProvider] New TRIClient instance.", v3, 2u);
    MEMORY[0x26D5DDCD0](v3, -1, -1);
  }

  v4 = [objc_opt_self() clientWithIdentifier_];
  v5 = MEMORY[0x26D5DCC90](0xD000000000000021, 0x800000026681C2C0);
  v9[4] = closure #1 in closure #1 in variable initialization expression of static TrialProvider.triClient;
  v9[5] = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed TRINamespaceUpdateProtocol) -> ();
  v9[3] = &block_descriptor_4;
  v6 = _Block_copy(v9);
  v7 = [v4 addUpdateHandlerForNamespaceName:v5 usingBlock:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();

  return v4;
}

uint64_t closure #1 in closure #1 in variable initialization expression of static TrialProvider.triClient()
{
  if (one-time initialization token for ranker != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.ranker);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_266790000, v1, v2, "[TrialProvider] Update handler called.", v3, 2u);
    MEMORY[0x26D5DDCD0](v3, -1, -1);
  }

  return static TrialProvider.refreshClient()();
}

uint64_t static TrialProvider.refreshClient()()
{
  if (one-time initialization token for ranker != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.ranker);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_266790000, v1, v2, "[TrialProvider] Refreshing TRIClient instance.", v3, 2u);
    OUTLINED_FUNCTION_3_1();
  }

  if (one-time initialization token for triClient != -1)
  {
    swift_once();
  }

  [static TrialProvider.triClient refresh];
  if (one-time initialization token for cachedFactors != -1)
  {
    OUTLINED_FUNCTION_0_29(&one-time initialization token for cachedFactors);
  }

  v4 = static TrialProvider.fetchFactorValues()();
  swift_beginAccess();
  static TrialProvider.cachedFactors = v4;

  if (one-time initialization token for enrollment != -1)
  {
    swift_once();
  }

  static TrialProvider.fetchTrialEnrollment()(v7);
  v6[0] = static TrialProvider.enrollment;
  v6[1] = unk_28132EAA0;
  v6[2] = xmmword_28132EAB0;
  v6[3] = unk_28132EAC0;
  static TrialProvider.enrollment = v7[0];
  unk_28132EAA0 = v7[1];
  xmmword_28132EAB0 = v7[2];
  unk_28132EAC0 = v7[3];
  return outlined destroy of CAARTrialEnrollment(v6);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed TRINamespaceUpdateProtocol) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t outlined bridged method (ob) of @objc TRIFactor.name.getter(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc TRILevel.stringValue.getter(void *a1)
{
  v1 = [a1 stringValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x2821FBF68]();
}

{
  return MEMORY[0x2821FBFB0]();
}

Swift::OpaquePointer_optional __swiftcall NLEmbedding.vector(for:)(Swift::String a1)
{
  v1 = MEMORY[0x2821FF608](a1._countAndFlagsBits, a1._object);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD990]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA60]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAC8]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB48]();
}

{
  return MEMORY[0x2821FDB58]();
}

{
  return MEMORY[0x2821FDB88]();
}