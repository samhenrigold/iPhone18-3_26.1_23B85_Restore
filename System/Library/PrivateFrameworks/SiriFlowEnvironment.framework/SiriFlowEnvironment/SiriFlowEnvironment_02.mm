uint64_t TapToRadarManager.shouldFileTTRWithRequestID()()
{
  OUTLINED_FUNCTION_8_4();
  v1 = *(v0 + 152);
  v1();

  OUTLINED_FUNCTION_21_1();
  if (!v3)
  {
    OUTLINED_FUNCTION_8_4();
    (*(v4 + 280))();
    OUTLINED_FUNCTION_8_4();
    v2 = (*(v5 + 160))();
  }

  (v1)(v2);

  OUTLINED_FUNCTION_21_1();
  if (!v6)
  {
    return 1;
  }

  v7 = (v1)();
  v9 = v8;
  OUTLINED_FUNCTION_8_4();
  v11 = (*(v10 + 176))();
  LODWORD(v7) = specialized Dictionary.subscript.getter(v7, v9, v11);

  if (v7 != 2)
  {
    return 0;
  }

  v13 = (v1)(v12);
  v15 = v14;
  OUTLINED_FUNCTION_8_4();
  v17 = (*(v16 + 192))(v24);
  v19 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v19;
  v21 = 1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(1, v13, v15, isUniquelyReferenced_nonNull_native);
  *v19 = v23;

  v17(v24, 0);
  return v21;
}

void TapToRadarManager.updateTTRForRequestID(ttrLaunch:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  OUTLINED_FUNCTION_8_4();
  v35 = *(v4 + 152);
  v5 = v35();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8 && (v3 & 1) != 0)
  {
    v9 = (*(*v2 + 216))(v37);
    String.removeAll(keepingCapacity:)(0);
    v10 = v9(v37, 0);
    v11 = (*(*v2 + 176))(v10);
    v12 = 0;
    OUTLINED_FUNCTION_9_3();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    while (v15)
    {
LABEL_11:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = (*(v11 + 48) + ((v12 << 10) | (16 * v19)));
      v21 = *v20;
      v22 = v20[1];

      if (v21 == (v35)(v23) && v22 == v24)
      {
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v26)
        {
        }

        else
        {
          v34 = (*(*v2 + 192))(v37);
          v28 = v27;
          specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
          v30 = v29;

          if (v30)
          {
            isUnique = swift_isUniquelyReferenced_nonNull_native();
            v36 = *v28;
            v31 = *v28;
            *v28 = 0x8000000000000000;
            v32 = *(v31 + 24);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSbGMd, &_ss17_NativeDictionaryVySSSbGMR);
            _NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v32);

            _NativeDictionary._delete(at:)();
            *v28 = v36;
          }

          v34(v37, 0);
        }
      }
    }

    while (1)
    {
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v18 >= v17)
      {

        return;
      }

      v15 = *(v11 + 64 + 8 * v18);
      ++v12;
      if (v15)
      {
        v12 = v18;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t TapToRadarManager.generateRequestInfoHeader(providedDescription:)(uint64_t a1, unint64_t a2)
{
  v2 = 0xD000000000000014;
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    _StringGuts.grow(_:)(24);

    MEMORY[0x1E12ADF70](0xD000000000000016, 0x80000001DD387E30);
    return a1;
  }

  return v2;
}

void TapToRadarManager.createSiriRequestDescription(providedDescription:)()
{
  OUTLINED_FUNCTION_171();
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_0();
  v29 = v2;
  v30 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_7_0();
  v5 = v4 - v3;
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v27 = dispatch thunk of CurrentDevice.preferencesLanguageCode.getter();
  v7 = v6;

  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v8 = dispatch thunk of CurrentDevice.deviceRegionCode.getter();
  v10 = v9;

  v11 = OUTLINED_FUNCTION_3_6();
  v13 = TapToRadarManager.generateRequestInfoHeader(providedDescription:)(v11, v12);
  v15 = v14;

  v32 = v13;
  v33 = v15;
  v17 = *(*v0 + 200);
  v17(v16);

  OUTLINED_FUNCTION_20_1();
  if (v18)
  {
    _StringGuts.grow(_:)(16);

    strcpy(&v31, "\n\tUtterance:\t\t");
    HIBYTE(v31) = -18;
    v20 = (v17)(v19);
    MEMORY[0x1E12ADF70](v20);

    OUTLINED_FUNCTION_11_2();
  }

  if (v10)
  {
    v21 = v10;
  }

  else
  {
    v21 = 0xE700000000000000;
  }

  v22 = 0x6E776F6E6B6E75;
  if (v10)
  {
    v22 = v8;
  }

  v28 = v22;
  if (v7)
  {
    v23 = v27;
  }

  else
  {
    v7 = 0xED00006465696669;
    v23 = 0x6365707320746F6ELL;
  }

  _StringGuts.grow(_:)(18);

  *&v31 = 0xD000000000000010;
  *(&v31 + 1) = 0x80000001DD387DF0;
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.siriLocale.getter();

  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969798]);
  v24 = dispatch thunk of CustomStringConvertible.description.getter();
  v26 = v25;
  (*(v29 + 8))(v5, v30);
  MEMORY[0x1E12ADF70](v24, v26);

  OUTLINED_FUNCTION_11_2();

  _StringGuts.grow(_:)(19);

  MEMORY[0x1E12ADF70](v23, v7);

  OUTLINED_FUNCTION_11_2();

  strcpy(&v31, "\n\tRegion:\t\t\t");
  HIWORD(v31) = -5120;
  MEMORY[0x1E12ADF70](v28, v21);

  OUTLINED_FUNCTION_11_2();

  OUTLINED_FUNCTION_170();
}

void TapToRadarManager.internalPopulateSiriRequestText()()
{
  OUTLINED_FUNCTION_171();
  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_0();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_8_4();
  v9 = *(v8 + 200);
  v10 = v9();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
LABEL_4:
    OUTLINED_FUNCTION_170();
    return;
  }

  v63 = v1;
  v64 = v9;
  v70 = v0;
  v61 = v3;
  v62 = v7;
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  type metadata accessor for CurrentRequest();
  OUTLINED_FUNCTION_5_4();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v14, v15, &protocol conformance descriptor for CurrentRequest);
  OUTLINED_FUNCTION_16_1();

  v16 = CurrentRequest.speechPackage.getter();

  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = [v16 recognition];

  if (!v17)
  {
    goto LABEL_11;
  }

  v18 = outlined bridged method (ob) of @objc AFSpeechInterpretation.tokens.getter(v17, &selRef_phrases, &lazy cache variable for type metadata for AFSpeechPhrase, 0x1E698D230);
  if (v18)
  {
    v19 = specialized Array._getCount()(v18);

    if (v19)
    {
      static SiriEnvironment.default.getter();
      OUTLINED_FUNCTION_16_1();

      v20 = CurrentRequest.speechPackage.getter();

      if (!v20)
      {
        goto LABEL_4;
      }

      v21 = [v20 recognition];
LABEL_13:
      v22 = v21;

      if (!v22)
      {
        goto LABEL_4;
      }

      v23 = outlined bridged method (ob) of @objc AFSpeechInterpretation.tokens.getter(v22, &selRef_phrases, &lazy cache variable for type metadata for AFSpeechPhrase, 0x1E698D230);
      if (!v23)
      {
        goto LABEL_4;
      }

      v24 = v23;
      v25 = specialized Array._getCount()(v23);
      v26 = 0;
      v27 = v24 & 0xC000000000000001;
      v28 = v24 & 0xFFFFFFFFFFFFFF8;
      v60 = v24;
      v29 = v24 + 32;
      v67 = v24 & 0xC000000000000001;
      v68 = v25;
      v65 = v24 + 32;
      v66 = v24 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        while (1)
        {
          if (v26 == v25)
          {

            (v64)(v50);

            OUTLINED_FUNCTION_20_1();
            if (v51)
            {
              v52 = (*(*v70 + 216))(&v71);
              specialized RangeReplaceableCollection<>.removeLast()(v52);

              v52(&v71, 0);
            }

            static Logger.logger.getter();

            v53 = Logger.logObject.getter();
            v54 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              v56 = swift_slowAlloc();
              v71 = v56;
              *v55 = 136315138;
              v57 = v64();
              v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v71);

              *(v55 + 4) = v59;
              _os_log_impl(&dword_1DD354000, v53, v54, "TapToRadarManager#internalPopulateSiriRequestText, requestText: %s", v55, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v56);
              OUTLINED_FUNCTION_9_2();
              OUTLINED_FUNCTION_9_2();
            }

            (*(v61 + 8))(v62, v63);
            goto LABEL_4;
          }

          if (v27)
          {
            v30 = MEMORY[0x1E12AE180](v26, v60);
          }

          else
          {
            if (v26 >= *(v28 + 16))
            {
              goto LABEL_56;
            }

            v30 = *(v29 + 8 * v26);
          }

          v31 = v30;
          if (__OFADD__(v26++, 1))
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
            goto LABEL_60;
          }

          v33 = outlined bridged method (pb) of @objc AFSpeechPhrase.interpretations.getter(v30);
          if (!v33)
          {
            goto LABEL_59;
          }

          v34 = v33;
          v35 = v33 & 0xFFFFFFFFFFFFFF8;
          if (!(v33 >> 62))
          {
            break;
          }

          if (v33 >= 0)
          {
            v33 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          if (MEMORY[0x1E12AE1F0](v33))
          {
            goto LABEL_24;
          }

LABEL_44:
        }

        if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

LABEL_24:
        if ((v34 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x1E12AE180](0, v34);
        }

        else
        {
          if (!*(v35 + 16))
          {
            goto LABEL_57;
          }

          v36 = *(v34 + 32);
        }

        v37 = v36;

        v38 = outlined bridged method (ob) of @objc AFSpeechInterpretation.tokens.getter(v37, &selRef_tokens, &lazy cache variable for type metadata for AFSpeechToken, 0x1E698D248);
        if (v38)
        {
          v39 = v38;
          v69 = v31;
          if (v38 >> 62)
          {
            if (v38 >= 0)
            {
              v38 &= 0xFFFFFFFFFFFFFF8uLL;
            }

            v40 = MEMORY[0x1E12AE1F0](v38);
            if (!v40)
            {
              goto LABEL_49;
            }

LABEL_30:
            if (v40 < 1)
            {
              goto LABEL_58;
            }

            for (i = 0; i != v40; ++i)
            {
              if ((v39 & 0xC000000000000001) != 0)
              {
                v42 = MEMORY[0x1E12AE180](i, v39);
              }

              else
              {
                v42 = *(v39 + 8 * i + 32);
              }

              v43 = v42;
              v44 = outlined bridged method (pb) of @objc AFSpeechToken.text.getter(v42);
              if (v45)
              {
                v71 = v44;
                v72 = v45;
                MEMORY[0x1E12ADF70](32, 0xE100000000000000);
                v46 = v71;
                v47 = v72;
                OUTLINED_FUNCTION_8_4();
                v49 = (*(v48 + 216))(&v71);
                MEMORY[0x1E12ADF70](v46, v47);

                v49(&v71, 0);
              }
            }

            v27 = v67;
            v25 = v68;
            v29 = v65;
            v28 = v66;
          }

          else
          {
            v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v40)
            {
              goto LABEL_30;
            }

LABEL_49:
          }
        }

        else
        {
        }
      }
    }

LABEL_11:
    static SiriEnvironment.default.getter();
    OUTLINED_FUNCTION_16_1();

    v20 = CurrentRequest.speechPackage.getter();

    if (!v20)
    {
      goto LABEL_4;
    }

    v21 = [v20 unfilteredRecognition];
    goto LABEL_13;
  }

LABEL_60:
  __break(1u);
}

uint64_t key path setter for TapToRadarManager.requestID : TapToRadarManager(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 160);

  return v4(v2, v3);
}

uint64_t key path setter for TapToRadarManager.ttrRequestManager : TapToRadarManager(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 184);

  return v2(v3);
}

uint64_t key path setter for TapToRadarManager.requestText : TapToRadarManager(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 208);

  return v4(v2, v3);
}

uint64_t one-time initialization function for runQueue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v3);
  v4 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  static DispatchQoS.default.getter();
  v8 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static TapToRadarManager.runQueue = result;
  return result;
}

uint64_t TapToRadarManager.CreateDraftContainer.radarComponentInfo.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
}

__n128 TapToRadarManager.CreateDraftContainer.radarComponentInfo.setter(__int128 *a1)
{
  v4 = a1[1];
  v5 = *a1;
  v2 = *(a1 + 4);

  result = v4;
  *v1 = v5;
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  return result;
}

uint64_t TapToRadarManager.CreateDraftContainer.title.setter()
{
  OUTLINED_FUNCTION_295();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t TapToRadarManager.CreateDraftContainer.description.setter()
{
  OUTLINED_FUNCTION_295();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t TapToRadarManager.CreateDraftContainer.radarFilingExtras.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return outlined copy of RadarFilingExtras?(v2, v3, v4, v5, v6);
}

__n128 TapToRadarManager.CreateDraftContainer.radarFilingExtras.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  outlined consume of RadarFilingExtras?(v1[9], v1[10], v1[11], v1[12], v1[13]);
  result = *a1;
  *(v1 + 11) = *(a1 + 16);
  *(v1 + 9) = result;
  v1[13] = v3;
  return result;
}

__n128 TapToRadarManager.CreateDraftContainer.init(radarComponentInfo:title:description:radarFilingExtras:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a6 + 32);
  *a7 = *a1;
  *(a7 + 16) = v7;
  *(a7 + 32) = v8;
  *(a7 + 40) = a2;
  *(a7 + 48) = a3;
  *(a7 + 56) = a4;
  *(a7 + 64) = a5;
  result = *a6;
  v11 = *(a6 + 16);
  *(a7 + 72) = *a6;
  *(a7 + 88) = v11;
  *(a7 + 104) = v9;
  return result;
}

uint64_t TapToRadarManager.__allocating_init()()
{
  v0 = swift_allocObject();
  TapToRadarManager.init()();
  return v0;
}

uint64_t closure #1 in TapToRadarManager.createProblem(errStatus:userDefaultSuiteName:radarComponentInfo:title:description:radarFilingExtras:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14)
{
  v70 = a8;
  v72 = a6;
  v73 = a7;
  v71 = type metadata accessor for Logger();
  v19 = *(v71 - 8);
  v20 = MEMORY[0x1EEE9AC00](v71);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v61 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v61 - v26;
  if (!IsAppleInternalBuild() || (v28 = *(*a1 + 272), v69 = a5, (v28(a2, a3, a4, a5) & 1) != 0))
  {
    static Logger.logger.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1DD354000, v29, v30, "TapToRadarManager#createProblem not filing issue", v31, 2u);
      MEMORY[0x1E12AE9C0](v31, -1, -1);
    }

    (*(v19 + 8))(v27, v71);
    return v72(0);
  }

  v67 = a4;
  v68 = a2;
  v66 = a3;
  if ((TapToRadarManager.shouldFileTTRWithRequestID()() & 1) == 0)
  {
    static Logger.logger.getter();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1DD354000, v58, v59, "TapToRadarManager#createProblem, already filed for this requestID, skipping", v60, 2u);
      MEMORY[0x1E12AE9C0](v60, -1, -1);
    }

    (*(v19 + 8))(v25, v71);
    return v72(0);
  }

  v33 = a12;
  TapToRadarManager.internalPopulateSiriRequestText()();
  TapToRadarManager.createSiriRequestDescription(providedDescription:)();
  v64 = v34;
  v36 = v35;
  v37 = *(a10 + 16);
  __src[0] = *a10;
  __src[1] = v37;
  v70 = a10;
  *&__src[2] = *(a10 + 32);

  v65 = a11;
  v38 = TapToRadarManager.isRadarValid(radarComponentInfo:title:description:)(__src, a11, a12);

  if ((v38 & 1) == 0)
  {

    return v72(0);
  }

  v39 = v36;
  v63 = a14;
  static Logger.logger.getter();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v62 = a12;
    v43 = v42;
    *v42 = 0;
    _os_log_impl(&dword_1DD354000, v40, v41, "TapToRadarManager#createProblem, valid information provided", v42, 2u);
    v44 = v43;
    v33 = v62;
    MEMORY[0x1E12AE9C0](v44, -1, -1);
  }

  (*(v19 + 8))(v22, v71);
  v45 = v70;
  v46 = *(v70 + 16);
  __src[0] = *v70;
  __src[1] = v46;
  v47 = *(a13 + 16);
  *(&__src[4] + 8) = *a13;
  v48 = *(v70 + 32);
  *(&__src[5] + 8) = v47;
  v49 = *(a13 + 32);
  *&__src[2] = v48;
  *(&__src[2] + 1) = v65;
  *&__src[3] = v33;
  *(&__src[3] + 1) = v64;
  *(&__src[6] + 1) = v49;
  *&__src[4] = v39;
  memcpy(v75, __src, sizeof(v75));
  v50 = a1[8];
  v71 = a1[7];
  v65 = v50;
  v51 = swift_allocObject();
  v52 = v67;
  v53 = v68;
  v51[2] = a1;
  v51[3] = v53;
  v51[4] = v66;
  v51[5] = v52;
  v54 = v72;
  v55 = v73;
  v51[6] = v69;
  v51[7] = v54;
  v56 = v63;
  v51[8] = v55;
  v51[9] = v56;
  v72 = (*a1 + 264);
  v57 = *v72;
  outlined init with copy of TTRComponentInfo(v45, v74);

  outlined init with copy of RadarFilingExtras?(a13, v74);

  v57(v75, v71, v65, partial apply for closure #1 in closure #1 in TapToRadarManager.createProblem(errStatus:userDefaultSuiteName:radarComponentInfo:title:description:radarFilingExtras:completion:), v51);

  return outlined destroy of TapToRadarManager.CreateDraftContainer(__src);
}

uint64_t closure #1 in closure #1 in TapToRadarManager.createProblem(errStatus:userDefaultSuiteName:radarComponentInfo:title:description:radarFilingExtras:completion:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a5;
  v28 = a7;
  v26 = a3;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v17 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for runQueue != -1)
  {
    swift_once();
  }

  v29 = static TapToRadarManager.runQueue;
  v20 = swift_allocObject();
  *(v20 + 16) = a1 & 1;
  v22 = v26;
  v21 = v27;
  *(v20 + 24) = a2;
  *(v20 + 32) = v22;
  *(v20 + 40) = a4;
  *(v20 + 48) = v21;
  v23 = v28;
  *(v20 + 56) = a6;
  *(v20 + 64) = v23;
  *(v20 + 72) = a8;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in TapToRadarManager.createProblem(errStatus:userDefaultSuiteName:radarComponentInfo:title:description:radarFilingExtras:completion:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_37;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v31 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1E12AE0B0](0, v19, v16, v24);
  _Block_release(v24);
  (*(v14 + 8))(v16, v13);
  (*(v17 + 8))(v19, v30);
}

uint64_t closure #1 in closure #1 in closure #1 in TapToRadarManager.createProblem(errStatus:userDefaultSuiteName:radarComponentInfo:title:description:radarFilingExtras:completion:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  if (a1)
  {
    TapToRadarManager.writeDefaults(errStatus:userDefaultSuiteName:)(a3, a4, a5, a6);
  }

  TapToRadarManager.updateTTRForRequestID(ttrLaunch:)(a1 & 1);
  return a7(a1 & 1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of RadarFilingExtras?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment17RadarFilingExtrasVSgMd, &_s19SiriFlowEnvironment17RadarFilingExtrasVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static TapToRadarManager.launchTTR(createDraftContainer:completion:)()
{
  OUTLINED_FUNCTION_171();
  v35 = v0;
  v2 = v1;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v33 = v4;
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7_0();
  v32 = v6 - v5;
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[5];
  v12 = v2[6];
  v13 = v2[7];
  v14 = v2[8];
  isa = v2[9];
  v17 = v2[10];
  v16 = v2[11];
  v18 = v2[12];
  v19 = v2[13];
  v29 = v18;
  v30 = v16;
  v31 = MEMORY[0x1E12ADF20](v7, v8);
  v20 = MEMORY[0x1E12ADF20](v9, v10);
  v21.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  v22 = MEMORY[0x1E12ADF20](v11, v12);
  v23 = MEMORY[0x1E12ADF20](v13, v14);
  if (isa)
  {
    if (isa == 1)
    {
      v19 = 0;
      v24 = 0;
      v17 = 0;
      isa = 0;
      goto LABEL_10;
    }

    type metadata accessor for URL();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (v17)
  {
    v17 = Array._bridgeToObjectiveC()().super.isa;
  }

  if (v30)
  {
    v24 = Array._bridgeToObjectiveC()().super.isa;
    if (!v19)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v24 = 0;
  if (v19)
  {
LABEL_9:
    v19 = MEMORY[0x1E12ADF20](v29, v19);
  }

LABEL_10:
  v25 = [objc_opt_self() createProblem:v31 componentVersion:v20 componentID:v21.super.super.isa title:v22 description:v23 attachmentURLs:isa extensionIDs:v17 deviceIDs:v24 displayReason:v19];

  static Logger.logger.getter();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 67109120;
    *(v28 + 4) = v25;
    _os_log_impl(&dword_1DD354000, v26, v27, "TapToRadarManager#launchTTR result: %{BOOL}d", v28, 8u);
    OUTLINED_FUNCTION_9_2();
  }

  (*(v33 + 8))(v32, v34);
  v35(v25);
  OUTLINED_FUNCTION_170();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t specialized RangeReplaceableCollection<>.removeLast()(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE68FA8](a1);
  }

LABEL_5:
  a1 = String.index(before:)();

  return MEMORY[0x1EEE68FA8](a1);
}

uint64_t TapToRadarManager.__deallocating_deinit()
{
  TapToRadarManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0);
}

id @nonobjc NSUserDefaults.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1E12ADF20](a1);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t outlined copy of RadarFilingExtras?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t outlined consume of RadarFilingExtras?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x1E12AE1F0);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TTRComponentInfo(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for TTRComponentInfo(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for RadarFilingExtras(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for RadarFilingExtras(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19SiriFlowEnvironment17RadarFilingExtrasVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t getEnumTagSinglePayload for TapToRadarManager.CreateDraftContainer(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for TapToRadarManager.CreateDraftContainer(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSDyS2SGGMd, &_ss17_NativeDictionaryVySSSDyS2SGGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    *(v20[7] + 8 * v16) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, a1, v20);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v13;
  v19 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v20;
LABEL_5:
  v22 = *v6;
  if (v19)
  {
    v23 = (v22[7] + 16 * v18);
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v18, a3, a4, a1, a2, v22);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSbGMd, &_ss17_NativeDictionaryVySSSbGMR);
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = result;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    *(v20[7] + v16) = a1 & 1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, a1 & 1, v20);
  }

  return result;
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

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
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

uint64_t outlined bridged method (pb) of @objc AFSpeechPhrase.interpretations.getter(void *a1)
{
  v1 = [a1 interpretations];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechInterpretation, 0x1E698D220);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc AFSpeechToken.text.getter(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc AFSpeechInterpretation.tokens.getter(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v7 = [a1 *a2];

  if (!v7)
  {
    return 0;
  }

  type metadata accessor for OS_dispatch_queue(0, a3, a4);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t type metadata accessor for OS_dispatch_queue(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_15_0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_16_1()
{

  return dispatch thunk of SiriEnvironment.subscript.getter();
}

uint64_t OUTLINED_FUNCTION_19_1(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t Builder.subscript.getter()
{
  return MEMORY[0x1EEE412F0]();
}

{
  return MEMORY[0x1EEE41300]();
}