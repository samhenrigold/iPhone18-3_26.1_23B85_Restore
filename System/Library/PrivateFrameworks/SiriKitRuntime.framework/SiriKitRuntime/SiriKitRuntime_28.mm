uint64_t specialized HomeAutomationAffinityScorer.isDefaultScore(_:_:_:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1010000010000) != 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.executor);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_7;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "HomeAutomationAffinityScorer - [Default] USO entity spans satisfy condition:\nGeneralNamespaceMatches || ExactNameSpaceMatch || HomeKitEntityType.FuzzyMatch || appBundleIdMatch";
LABEL_6:
    _os_log_impl(&dword_1DC659000, v3, v4, v6, v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
LABEL_7:

    return 1;
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (v11)
  {
    type metadata accessor for UsoTask_disable_common_Setting();
    if (swift_dynamicCast())
    {

      SiriEnvironment.currentDevice.getter();
      v8 = dispatch thunk of CurrentDevice.isAppleTV.getter();

      if (v8)
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, static Logger.executor);
        v3 = Logger.logObject.getter();
        v4 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v3, v4))
        {
          goto LABEL_7;
        }

        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "HomeAutomationAffinityScorer - [Default] Turn off on AppleTV case";
        goto LABEL_6;
      }
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

unint64_t specialized HomeAutomationAffinityScorer.HomeAutomationNamespace.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HomeAutomationAffinityScorer.HomeAutomationNamespace.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized HomeAutomationAffinityScorer.HomeAppEntityType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HomeAutomationAffinityScorer.HomeAppEntityType.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type HomeAutomationAffinityScorer.HomeAutomationNamespace and conformance HomeAutomationAffinityScorer.HomeAutomationNamespace()
{
  result = lazy protocol witness table cache variable for type HomeAutomationAffinityScorer.HomeAutomationNamespace and conformance HomeAutomationAffinityScorer.HomeAutomationNamespace;
  if (!lazy protocol witness table cache variable for type HomeAutomationAffinityScorer.HomeAutomationNamespace and conformance HomeAutomationAffinityScorer.HomeAutomationNamespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HomeAutomationAffinityScorer.HomeAutomationNamespace and conformance HomeAutomationAffinityScorer.HomeAutomationNamespace);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HomeAutomationAffinityScorer.HomeAppEntityType and conformance HomeAutomationAffinityScorer.HomeAppEntityType()
{
  result = lazy protocol witness table cache variable for type HomeAutomationAffinityScorer.HomeAppEntityType and conformance HomeAutomationAffinityScorer.HomeAppEntityType;
  if (!lazy protocol witness table cache variable for type HomeAutomationAffinityScorer.HomeAppEntityType and conformance HomeAutomationAffinityScorer.HomeAppEntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HomeAutomationAffinityScorer.HomeAppEntityType and conformance HomeAutomationAffinityScorer.HomeAppEntityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HomeAutomationAffinityScorer.HomeAppEntityType and conformance HomeAutomationAffinityScorer.HomeAppEntityType;
  if (!lazy protocol witness table cache variable for type HomeAutomationAffinityScorer.HomeAppEntityType and conformance HomeAutomationAffinityScorer.HomeAppEntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HomeAutomationAffinityScorer.HomeAppEntityType and conformance HomeAutomationAffinityScorer.HomeAppEntityType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [HomeAutomationAffinityScorer.HomeAppEntityType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [HomeAutomationAffinityScorer.HomeAppEntityType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HomeAutomationAffinityScorer.HomeAppEntityType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14SiriKitRuntime28HomeAutomationAffinityScorerV0D13AppEntityTypeOGMd, &_sSay14SiriKitRuntime28HomeAutomationAffinityScorerV0D13AppEntityTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [HomeAutomationAffinityScorer.HomeAppEntityType] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpanMatchAccuracy and conformance SpanMatchAccuracy()
{
  result = lazy protocol witness table cache variable for type SpanMatchAccuracy and conformance SpanMatchAccuracy;
  if (!lazy protocol witness table cache variable for type SpanMatchAccuracy and conformance SpanMatchAccuracy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpanMatchAccuracy and conformance SpanMatchAccuracy);
  }

  return result;
}

uint64_t __swift_memcpy10_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HomeAutomationAffinityScorer.HAMatchConditions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[10])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeAutomationAffinityScorer.HAMatchConditions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t IdentifiedUser.extractLocale(userSpecificInfo:settings:defaultLocale:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV9HourCycleOSgMd, &_s10Foundation6LocaleV9HourCycleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v58 = &v49 - v6;
  v7 = type metadata accessor for Locale.Language.Components();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v59 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV6RegionVSgMd, &_s10Foundation6LocaleV6RegionVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV6ScriptVSgMd, &_s10Foundation6LocaleV6ScriptVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v49 - v16;
  v18 = type metadata accessor for Locale.Components();
  v61 = *(v18 - 8);
  v62 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v60 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v49 - v22;
  v64 = a2;
  if (a1)
  {
    v24 = *(a1 + OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage + 8);
    if (v24)
    {
      v57 = *(a1 + OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage);

      goto LABEL_6;
    }
  }

  if (a2)
  {
    v25 = [a2 preferredLanguage];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v26;

    if (a1)
    {
      goto LABEL_6;
    }

LABEL_13:
    if (!a2)
    {
LABEL_10:

      if (!v24)
      {
        goto LABEL_25;
      }

LABEL_27:

      goto LABEL_28;
    }

LABEL_14:
    v29 = [a2 countryCode];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v30;

    if (!v24)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  v57 = 0;
  v24 = 0;
  if (!a1)
  {
    goto LABEL_13;
  }

LABEL_6:
  v27 = *(a1 + OBJC_IVAR___SKEUserSpecificInfo_countryCode + 8);
  if (!v27)
  {
    a2 = v64;
    if (!v64)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  v28 = *(a1 + OBJC_IVAR___SKEUserSpecificInfo_countryCode);

  if (v24)
  {
LABEL_15:
    if (v27)
    {
      v31 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v31 = v57 & 0xFFFFFFFFFFFFLL;
      }

      if (v31)
      {
        v32 = HIBYTE(v27) & 0xF;
        if ((v27 & 0x2000000000000000) == 0)
        {
          v32 = v28 & 0xFFFFFFFFFFFFLL;
        }

        if (v32)
        {
          v54 = type metadata accessor for Locale.LanguageCode();
          v33 = *(v54 - 8);
          v55 = *(v33 + 56);
          v56 = v33 + 56;
          v55(v17, 1, 1, v54);
          v51 = type metadata accessor for Locale.Script();
          v34 = *(v51 - 8);
          v52 = *(v34 + 56);
          v53 = v34 + 56;
          v52(v14, 1, 1, v51);
          v50 = type metadata accessor for Locale.Region();
          v35 = *(*(v50 - 8) + 56);
          v35(v11, 1, 1, v50);
          Locale.Components.init(languageCode:script:languageRegion:)();
          MEMORY[0x1E129A320](v57, v24);
          v55(v17, 0, 1, v54);
          v52(v14, 1, 1, v51);
          Locale.Region.init(_:)();
          v35(v11, 0, 1, v50);
          Locale.Language.Components.init(languageCode:script:region:)();
          a2 = v64;
          goto LABEL_31;
        }
      }

      goto LABEL_25;
    }

    a2 = v64;
    goto LABEL_27;
  }

LABEL_25:

  a2 = v64;
LABEL_28:
  v36 = type metadata accessor for Locale.LanguageCode();
  (*(*(v36 - 8) + 56))(v17, 1, 1, v36);
  v37 = type metadata accessor for Locale.Script();
  (*(*(v37 - 8) + 56))(v14, 1, 1, v37);
  v38 = type metadata accessor for Locale.Region();
  (*(*(v38 - 8) + 56))(v11, 1, 1, v38);
  Locale.Components.init(languageCode:script:languageRegion:)();
  v39 = [objc_opt_self() sharedPreferences];
  v40 = [v39 languageCode];

  if (v40)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  Locale.Language.Components.init(identifier:)();
LABEL_31:
  Locale.Components.languageComponents.setter();
  if (a1)
  {
    if (*(a1 + OBJC_IVAR___SKEUserSpecificInfo_twentyFourHourTimeDisplay))
    {
LABEL_33:
      v41 = MEMORY[0x1E6969758];
LABEL_37:
      v42 = *v41;
      v43 = type metadata accessor for Locale.HourCycle();
      v44 = *(v43 - 8);
      v45 = v58;
      (*(v44 + 104))(v58, v42, v43);
      (*(v44 + 56))(v45, 0, 1, v43);
      Locale.Components.hourCycle.setter();
      goto LABEL_38;
    }

LABEL_36:
    v41 = MEMORY[0x1E6969748];
    goto LABEL_37;
  }

  if (a2)
  {
    if ([a2 twentyFourHourTimeDisplay])
    {
      goto LABEL_33;
    }

    goto LABEL_36;
  }

LABEL_38:
  v46 = v61;
  v47 = v62;
  (*(v61 + 16))(v60, v23, v62);
  Locale.init(components:)();
  return (*(v46 + 8))(v23, v47);
}

uint64_t specialized Sequence.flatMap<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v29 = *(a1 + 16);
  if (!v29)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v6 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
    if (v2)
    {

      return v4;
    }

    v7 = v6;
    v8 = v6 >> 62;
    if (v6 >> 62)
    {
      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v4 >> 62;
    if (v4 >> 62)
    {
      v27 = __CocoaSet.count.getter();
      v12 = v27 + v9;
      if (__OFADD__(v27, v9))
      {
LABEL_34:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v11 + v9;
      if (__OFADD__(v11, v9))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (!v10)
      {
        goto LABEL_17;
      }

LABEL_16:
      __CocoaSet.count.getter();
      goto LABEL_17;
    }

    if (v10)
    {
      goto LABEL_16;
    }

    v13 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v12 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = v9;
      goto LABEL_18;
    }

LABEL_17:
    v14 = v9;
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v4 = result;
    v13 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);
    if (v8)
    {
      break;
    }

    v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v16 >> 1) - v15) < v14)
    {
      goto LABEL_39;
    }

    v31 = v14;
    v19 = v13 + 8 * v15 + 32;
    v28 = v13;
    if (v8)
    {
      if (v17 < 1)
      {
        goto LABEL_41;
      }

      lazy protocol witness table accessor for type [UsoTask] and conformance [A]();
      for (i = 0; i != v17; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology7UsoTaskCGMd, &_sSay12SiriOntology7UsoTaskCGMR);
        v21 = specialized protocol witness for Collection.subscript.read in conformance [A](v30, i, v7);
        v23 = *v22;

        (v21)(v30, 0);
        *(v19 + 8 * i) = v23;
      }
    }

    else
    {
      type metadata accessor for UsoTask();
      swift_arrayInitWithCopy();
    }

    v2 = 0;
    if (v31 >= 1)
    {
      v24 = *(v28 + 16);
      v25 = __OFADD__(v24, v31);
      v26 = v24 + v31;
      if (v25)
      {
        goto LABEL_40;
      }

      *(v28 + 16) = v26;
    }

LABEL_4:
    if (++v3 == v29)
    {
      return v4;
    }
  }

  v18 = v13;
  result = __CocoaSet.count.getter();
  v13 = v18;
  v17 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v14 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

SiriKitRuntime::InformationAffinityScorer __swiftcall InformationAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CB30;
  v1 = 0xD000000000000024;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t closure #1 in InformationAffinityScorer.score(input:environment:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v42 - v3;
  v5 = type metadata accessor for PommesContext();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  PommesResponse.previousPommesContext.getter();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of PommesContext?(v4);
LABEL_21:
    v40 = 0;
    return v40 & 1;
  }

  (*(v6 + 32))(v14, v4, v5);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.executor);
  v16 = *(v6 + 16);
  v16(v11, v14, v5);
  v16(v8, v14, v5);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  v20 = os_log_type_enabled(v18, v19);
  v46 = v17;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v47 = v45;
    *v21 = 67109634;
    v44 = v19;
    v22 = PommesContext.listenAfterSpeaking.getter() & 1;
    v43 = v18;
    v23 = *(v6 + 8);
    v23(v11, v5);
    *(v21 + 4) = v22;
    *(v21 + 8) = 2080;
    v24 = PommesResponse.metadataDomainName.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v47);

    *(v21 + 10) = v26;
    *(v21 + 18) = 2080;
    v27 = PommesContext.domain.getter();
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0x3E6C696E3CLL;
    }

    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0xE500000000000000;
    }

    v23(v8, v5);
    v31 = v23;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v47);

    *(v21 + 20) = v32;
    v33 = v43;
    _os_log_impl(&dword_1DC659000, v43, v44, "Checking high affinity: previousPommesContext.listenAfterSpeaking=%{BOOL}d && pommes.metadataDomainName=%s == previousPommesContext.domain=%s", v21, 0x1Cu);
    v34 = v45;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v34, -1, -1);
    MEMORY[0x1E12A2F50](v21, -1, -1);
  }

  else
  {
    v31 = *(v6 + 8);
    v31(v11, v5);

    v31(v8, v5);
  }

  if ((PommesContext.listenAfterSpeaking.getter() & 1) == 0)
  {
LABEL_20:
    v31(v14, v5);
    goto LABEL_21;
  }

  v35 = PommesResponse.metadataDomainName.getter();
  v37 = v36;
  v38 = PommesContext.domain.getter();
  if (!v39)
  {

    goto LABEL_20;
  }

  if (v35 == v38 && v39 == v37)
  {
    v40 = 1;
  }

  else
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v31(v14, v5);
  return v40 & 1;
}

uint64_t Siri_Nlu_External_UserParse.firstRecipeTask()()
{
  v1 = MEMORY[0x1E129C0F0]();
  v2 = specialized Sequence.flatMap<A>(_:)(v1);

  if (!v0)
  {
    if (v2 >> 62)
    {
      goto LABEL_16;
    }

    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      while (1)
      {
        v4 = 0;
        while ((v2 & 0xC000000000000001) != 0)
        {
          v1 = MEMORY[0x1E12A1FE0](v4, v2);
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v1;
          }

LABEL_8:
          if (UsoTask.isRecipeTask()())
          {
            goto LABEL_14;
          }

          ++v4;
          if (v5 == v3)
          {
            goto LABEL_17;
          }
        }

        if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v3 = __CocoaSet.count.getter();
        if (!v3)
        {
          goto LABEL_17;
        }
      }

      v1 = *(v2 + 8 * v4 + 32);

      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:

    return 0;
  }

  return v1;
}

uint64_t specialized InformationAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_UserParse();
  v52 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v51 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for USOParse();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PommesSearchReason();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = type metadata accessor for Parse();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  Input.parse.getter();
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == *MEMORY[0x1E69D0138])
  {
    (*(v13 + 96))(v15, v12);
    v17 = *v15;
    dispatch thunk of PommesResponse.searchReason.getter();
    (*(v6 + 104))(v8, *MEMORY[0x1E69CE648], v5);
    lazy protocol witness table accessor for type PommesSearchReason and conformance PommesSearchReason();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v58 == v56 && v59 == v57)
    {
      v18 = *(v6 + 8);
      v18(v8, v5);
      v18(v11, v5);

LABEL_8:
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logger.executor);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1DC659000, v25, v26, "Detected fallback pommes response", v27, 2u);
        MEMORY[0x1E12A2F50](v27, -1, -1);
      }

      return 4;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v23 = *(v6 + 8);
    v23(v8, v5);
    v23(v11, v5);

    if (v22)
    {
      goto LABEL_8;
    }

    dispatch thunk of PommesResponse.primaryQueryConfidence()();
    if (v33 <= 0.5)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.executor);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_1DC659000, v48, v49, "Detected low confidence pommes response", v50, 2u);
        MEMORY[0x1E12A2F50](v50, -1, -1);
      }

      return 0;
    }

    else
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.executor);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1DC659000, v35, v36, "Detected high confidence pommes response", v37, 2u);
        MEMORY[0x1E12A2F50](v37, -1, -1);
      }

      v38 = closure #1 in InformationAffinityScorer.score(input:environment:)(v17);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 67109120;
        *(v41 + 4) = v38 & 1;
        _os_log_impl(&dword_1DC659000, v39, v40, "Detected high affinity? %{BOOL}d", v41, 8u);
        MEMORY[0x1E12A2F50](v41, -1, -1);
      }

      if (v38)
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }
  }

  else
  {
    if (v16 == *MEMORY[0x1E69D0168])
    {
      (*(v13 + 96))(v15, v12);
      v20 = v53;
      v19 = v54;
      v21 = v55;
      (*(v54 + 32))(v53, v15, v55);
      USOParse.userParse.getter();
      v42 = Siri_Nlu_External_UserParse.firstRecipeTask()();
      (*(v52 + 8))(v2, v0);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.executor);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 67109120;
        *(v46 + 4) = v42 != 0;

        _os_log_impl(&dword_1DC659000, v44, v45, "Parse has recipe task? %{BOOL}d", v46, 8u);
        MEMORY[0x1E12A2F50](v46, -1, -1);
      }

      else
      {
      }

      (*(v19 + 8))(v20, v21);
      if (v42)
      {

        return 1;
      }
    }

    else
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.executor);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1DC659000, v30, v31, "Got unexpected parse", v32, 2u);
        MEMORY[0x1E12A2F50](v32, -1, -1);
      }

      (*(v13 + 8))(v15, v12);
    }

    return 2;
  }
}

unint64_t lazy protocol witness table accessor for type PommesSearchReason and conformance PommesSearchReason()
{
  result = lazy protocol witness table cache variable for type PommesSearchReason and conformance PommesSearchReason;
  if (!lazy protocol witness table cache variable for type PommesSearchReason and conformance PommesSearchReason)
  {
    type metadata accessor for PommesSearchReason();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesSearchReason and conformance PommesSearchReason);
  }

  return result;
}

uint64_t outlined destroy of PommesContext?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [UsoTask] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UsoTask] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UsoTask] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriOntology7UsoTaskCGMd, &_sSay12SiriOntology7UsoTaskCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UsoTask] and conformance [A]);
  }

  return result;
}

uint64_t InputValueFetcher.argument.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t InputValueFetcher.__allocating_init(type:argument:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  swift_allocObject();
  return InputValueFetcher.init(type:argument:)(v5, a2, a3);
}

uint64_t InputValueFetcher.init(type:argument:)(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = a1;
  if (a3)
  {
    if (a1 <= 7u && ((1 << a1) & 0x83) != 0)
    {

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.executor);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_27;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v43 = v10;
      v11 = 0xE800000000000000;
      v12 = 0x657079546B736174;
      *v9 = 136315138;
      v13 = 0x636E657265666572;
      v14 = 0xE900000000000065;
      v15 = 0xE700000000000000;
      if (a1 != 6)
      {
        v13 = 0x65707954616475;
        v14 = 0xE700000000000000;
      }

      v16 = 0x65756C6176736ELL;
      if (a1 != 4)
      {
        v16 = 0x797469746E65;
        v15 = 0xE600000000000000;
      }

      if (a1 <= 5u)
      {
        v13 = v16;
        v14 = v15;
      }

      v17 = 0xE500000000000000;
      v18 = 0x6261636F76;
      if (a1 != 2)
      {
        v18 = 0x63617073656D616ELL;
        v17 = 0xE900000000000065;
      }

      if (a1)
      {
        v12 = 0x726573726170;
        v11 = 0xE600000000000000;
      }

      if (a1 > 1u)
      {
        v12 = v18;
        v11 = v17;
      }

      if (a1 <= 3u)
      {
        v19 = v12;
      }

      else
      {
        v19 = v13;
      }

      if (a1 <= 3u)
      {
        v20 = v11;
      }

      else
      {
        v20 = v14;
      }

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v43);

      *(v9 + 4) = v21;
      v22 = "input value fetcher %s given bogus argument";
LABEL_26:
      _os_log_impl(&dword_1DC659000, v7, v8, v22, v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E12A2F50](v10, -1, -1);
      MEMORY[0x1E12A2F50](v9, -1, -1);
LABEL_27:

      type metadata accessor for InputValueFetcher();
      swift_deallocPartialClassInstance();
      return 0;
    }

    *(v3 + 24) = a2;
    *(v3 + 32) = a3;
  }

  else
  {
    if (a1 > 7u || ((1 << a1) & 0x83) == 0)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.executor);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_27;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v43 = v10;
      *v9 = 136315138;
      v33 = 0xE500000000000000;
      v34 = 0xE700000000000000;
      v35 = 0x65707954616475;
      if (a1 != 7)
      {
        v35 = 0xD000000000000019;
        v34 = 0x80000001DCA79790;
      }

      v36 = 0xE600000000000000;
      v37 = 0x797469746E65;
      if (a1 != 5)
      {
        v37 = 0x636E657265666572;
        v36 = 0xE900000000000065;
      }

      if (a1 <= 6u)
      {
        v35 = v37;
        v34 = v36;
      }

      v38 = 0x63617073656D616ELL;
      v39 = 0xE900000000000065;
      if (a1 != 3)
      {
        v38 = 0x65756C6176736ELL;
        v39 = 0xE700000000000000;
      }

      if (a1 == 2)
      {
        v38 = 0x6261636F76;
      }

      else
      {
        v33 = v39;
      }

      if (a1 <= 4u)
      {
        v40 = v38;
      }

      else
      {
        v40 = v35;
      }

      if (a1 <= 4u)
      {
        v41 = v33;
      }

      else
      {
        v41 = v34;
      }

      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v43);

      *(v9 + 4) = v42;
      v22 = "input value fetcher %s missing argument";
      goto LABEL_26;
    }

    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.executor);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v43 = v27;
    *v26 = 136315138;
    v28 = (*(*v3 + 112))();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v43);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1DC659000, v24, v25, "%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1E12A2F50](v27, -1, -1);
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }

  return v4;
}

uint64_t InputValueType.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x657079546B736174;
    v6 = 0x6261636F76;
    if (a1 != 2)
    {
      v6 = 0x63617073656D616ELL;
    }

    if (a1)
    {
      v5 = 0x726573726170;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x636E657265666572;
    v2 = 0x65707954616475;
    if (a1 != 7)
    {
      v2 = 0xD000000000000019;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x65756C6176736ELL;
    if (a1 != 4)
    {
      v3 = 0x797469746E65;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t InputValueFetcher.init(plist:)(void *a1)
{
  v2 = v1;
  outlined init with copy of Any(a1, v69);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_74;
  }

  v69[0] = v67;
  v69[1] = v68;
  v4 = lazy protocol witness table accessor for type String and conformance String();
  v5 = MEMORY[0x1E12A1E10](58, 0xE100000000000000, 1, 1, MEMORY[0x1E69E6158], v4);

  if (!v5[2] || (v6 = v5[4], v7 = v5[5], v8 = v5[6], v9 = v5[7], , v10 = MEMORY[0x1E12A1500](v6, v7, v8, v9), v12 = v11, , v70._countAndFlagsBits = v10, v70._object = v12, v13 = specialized InputValueType.init(rawValue:)(v70), v13 == 9))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

LABEL_75:
    type metadata accessor for InputValueFetcher();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v2 + 16) = v13;
  if (v13 > 7u || ((1 << v13) & 0x83) == 0)
  {
    if (v5[2] == 2)
    {
      v30 = v5[8];
      v31 = v5[9];
      v32 = v5[10];
      v33 = v5[11];

      v34 = MEMORY[0x1E12A1500](v30, v31, v32, v33);
      v36 = v35;

      *(v2 + 24) = v34;
      *(v2 + 32) = v36;
      goto LABEL_29;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.executor);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_73;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v69[0] = v20;
    *v19 = 136315138;
    v46 = *(v2 + 16);
    if (v46 <= 3)
    {
      v61 = 0x657079546B736174;
      v62 = 0xE800000000000000;
      v63 = 0xE500000000000000;
      v64 = 0x6261636F76;
      if (v46 != 2)
      {
        v64 = 0x63617073656D616ELL;
        v63 = 0xE900000000000065;
      }

      if (*(v2 + 16))
      {
        v61 = 0x726573726170;
        v62 = 0xE600000000000000;
      }

      if (*(v2 + 16) <= 1u)
      {
        v53 = v61;
      }

      else
      {
        v53 = v64;
      }

      if (*(v2 + 16) <= 1u)
      {
        v54 = v62;
      }

      else
      {
        v54 = v63;
      }
    }

    else
    {
      v47 = 0x636E657265666572;
      v48 = 0xE900000000000065;
      v49 = 0xE700000000000000;
      v50 = 0x65707954616475;
      if (v46 != 7)
      {
        v50 = 0xD000000000000019;
        v49 = 0x80000001DCA79790;
      }

      if (v46 != 6)
      {
        v47 = v50;
        v48 = v49;
      }

      v51 = 0xE700000000000000;
      v52 = 0x65756C6176736ELL;
      if (v46 != 4)
      {
        v52 = 0x797469746E65;
        v51 = 0xE600000000000000;
      }

      if (*(v2 + 16) <= 5u)
      {
        v53 = v52;
      }

      else
      {
        v53 = v47;
      }

      if (*(v2 + 16) <= 5u)
      {
        v54 = v51;
      }

      else
      {
        v54 = v48;
      }
    }

    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v69);

    *(v19 + 4) = v65;
    v60 = "input value fetcher %s missing argument";
    goto LABEL_72;
  }

  v15 = v5[2];

  if (v15 != 1)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.executor);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_73;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v69[0] = v20;
    *v19 = 136315138;
    v21 = *(v2 + 16);
    if (v21 <= 3)
    {
      v55 = 0x657079546B736174;
      v56 = 0xE800000000000000;
      v57 = 0xE500000000000000;
      v58 = 0x6261636F76;
      if (v21 != 2)
      {
        v58 = 0x63617073656D616ELL;
        v57 = 0xE900000000000065;
      }

      if (*(v2 + 16))
      {
        v55 = 0x726573726170;
        v56 = 0xE600000000000000;
      }

      if (*(v2 + 16) <= 1u)
      {
        v28 = v55;
      }

      else
      {
        v28 = v58;
      }

      if (*(v2 + 16) <= 1u)
      {
        v29 = v56;
      }

      else
      {
        v29 = v57;
      }
    }

    else
    {
      v22 = 0x636E657265666572;
      v23 = 0xE900000000000065;
      v24 = 0xE700000000000000;
      v25 = 0x65707954616475;
      if (v21 != 7)
      {
        v25 = 0xD000000000000019;
        v24 = 0x80000001DCA79790;
      }

      if (v21 != 6)
      {
        v22 = v25;
        v23 = v24;
      }

      v26 = 0xE700000000000000;
      v27 = 0x65756C6176736ELL;
      if (v21 != 4)
      {
        v27 = 0x797469746E65;
        v26 = 0xE600000000000000;
      }

      if (*(v2 + 16) <= 5u)
      {
        v28 = v27;
      }

      else
      {
        v28 = v22;
      }

      if (*(v2 + 16) <= 5u)
      {
        v29 = v26;
      }

      else
      {
        v29 = v23;
      }
    }

    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v69);

    *(v19 + 4) = v59;
    v60 = "input value fetcher %s given bogus argument(s)";
LABEL_72:
    _os_log_impl(&dword_1DC659000, v17, v18, v60, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1E12A2F50](v20, -1, -1);
    MEMORY[0x1E12A2F50](v19, -1, -1);
LABEL_73:

LABEL_74:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    goto LABEL_75;
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
LABEL_29:
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.executor);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v69[0] = v41;
    *v40 = 136315138;
    v42 = (*(*v2 + 112))();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v69);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_1DC659000, v38, v39, "%s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x1E12A2F50](v41, -1, -1);
    MEMORY[0x1E12A2F50](v40, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t InputValueFetcher.debugDescription.getter()
{
  _StringGuts.grow(_:)(47);
  MEMORY[0x1E12A1580](0xD00000000000001FLL, 0x80000001DCA84170);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](0x656D75677261202CLL, 0xEB000000003D746ELL);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v0 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v0);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return 0;
}

uint64_t InputValueFetcher.fetchValue(input:)()
{
  v1 = (*(*v0 + 112))();
  v3 = specialized logAction<A>(label:_:)(v1, v2, partial apply for closure #1 in InputValueFetcher.fetchValue(input:));

  return v3;
}

uint64_t InputValueFetcher.internalFetchValue(input:)()
{
  v247 = type metadata accessor for Google_Protobuf_StringValue();
  v228 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247);
  v234 = &v216 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v239 = &v216 - v2;
  MEMORY[0x1EEE9AC00](v3);
  v235 = &v216 - v4;
  v256 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v246 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v253 = (&v216 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v249 = &v216 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v236 = &v216 - v9;
  v221 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  MEMORY[0x1EEE9AC00](v221);
  v220 = &v216 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for Siri_Nlu_External_Parser();
  v224 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v222 = &v216 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v232 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v231 = &v216 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v227 = &v216 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v226 = &v216 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v225 = &v216 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v244 = &v216 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v216 - v22;
  v24 = type metadata accessor for USOParse();
  v241 = *(v24 - 8);
  v242 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v240 = &v216 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Parse();
  v251 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v216 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v250 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v254 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250);
  v229 = &v216 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v216 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v230 = &v216 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v243 = &v216 - v36;
  v37 = type metadata accessor for Siri_Nlu_External_UserParse();
  v38 = *(v37 - 1);
  v238 = v38;
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v216 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v216 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v245 = &v216 - v45;
  Input.parse.getter();
  v46 = v251;
  v47 = (*(v251 + 88))(v28, v26);
  if (v47 != *MEMORY[0x1E69D0128])
  {
    v237 = v37;
    if (v47 == *MEMORY[0x1E69D0168])
    {
      (*(v46 + 96))(v28, v26);
      (*(v241 + 32))(v240, v28, v242);
      v52 = v245;
      USOParse.userParse.getter();
      v53 = USOParse.appBundleId.getter();
      v55 = v54;
      v56 = USOParse.userParse.getter();
      v57 = MEMORY[0x1E129C0F0](v56);
      v58 = *(v38 + 8);
      v58(v43, v237);
      v59 = *(v57 + 16);
      if (v59)
      {
        v217 = v53;
        v219 = v55;
        v218 = v58;
        v60 = 0;
        v251 = v254 + 16;
        v61 = (v254 + 8);
        v62 = v250;
        while (v60 < *(v57 + 16))
        {
          v63 = v57 + ((*(v254 + 80) + 32) & ~*(v254 + 80));
          v64 = *(v254 + 16);
          v64(v32, v63 + *(v254 + 72) * v60, v62);
          v65 = v62;
          if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
          {
            (*(v241 + 8))(v240, v242);

            v87 = *(v254 + 32);
            v88 = v230;
            v87(v230, v32, v65);
            v32 = v243;
            v87(v243, v88, v65);
            v67 = v248;
            v37 = v237;
            goto LABEL_28;
          }

          ++v60;
          (*v61)(v32, v62);
          if (v59 == v60)
          {
            v37 = v237;
            v52 = v249;
            if (*(v57 + 16))
            {
              v66 = v229;
              v64(v229, v63, v62);

              (*(v241 + 8))(v240, v242);
              v32 = v243;
              (*(v254 + 32))(v243, v66, v62);
              v67 = v248;
              v68 = v244;
              goto LABEL_29;
            }

            __break(1u);
LABEL_200:
            v68 = __CocoaSet.count.getter();
            v237 = v37;
            if (!v68)
            {
LABEL_201:
              v112 = MEMORY[0x1E69E7CC0];
              goto LABEL_202;
            }

LABEL_67:
            v37 = 0;
            v52 = v63 & 0xC000000000000001;
            v112 = MEMORY[0x1E69E7CC0];
            do
            {
              v113 = v37;
              while (1)
              {
                if (v52)
                {
                  v60 = MEMORY[0x1E12A1FE0](v113, v63);
                  v37 = (v113 + 1);
                  if (__OFADD__(v113, 1))
                  {
                    goto LABEL_192;
                  }
                }

                else
                {
                  if (v113 >= *(v32 + 2))
                  {
                    goto LABEL_194;
                  }

                  v60 = *(v63 + 8 * v113 + 32);

                  v37 = (v113 + 1);
                  if (__OFADD__(v113, 1))
                  {
LABEL_192:
                    __break(1u);
                    goto LABEL_193;
                  }
                }

                if (dispatch thunk of UsoValue.getAsEntity()())
                {
                  break;
                }

                ++v113;
                v62 = v250;
                if (v37 == v68)
                {
                  goto LABEL_202;
                }
              }

              v114 = UsoTask.verbString.getter();
              v256 = v115;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v112 + 2) + 1, 1, v112);
              }

              v117 = *(v112 + 2);
              v116 = *(v112 + 3);
              v60 = v117 + 1;
              if (v117 >= v116 >> 1)
              {
                v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v116 > 1), v117 + 1, 1, v112);
              }

              *(v112 + 2) = v60;
              v118 = &v112[16 * v117];
              v119 = v256;
              *(v118 + 4) = v114;
              *(v118 + 5) = v119;
              v62 = v250;
            }

            while (v37 != v68);
LABEL_202:

            v206 = *(v112 + 2);
            v256 = v112;
            if (v206)
            {
              v207 = v112 + 40;
              v37 = v237;
              v32 = v243;
              v68 = v244;
              v208 = v252;
              while (1)
              {
                v209 = *(v208 + 32);
                if (v209)
                {
                  v137 = *(v207 - 1);
                  v210 = v137 == *(v208 + 24) && v209 == *v207;
                  if (v210 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    goto LABEL_226;
                  }
                }

                v207 += 2;
                if (!--v206)
                {
                  goto LABEL_225;
                }
              }
            }

            goto LABEL_224;
          }
        }

        __break(1u);
        goto LABEL_38;
      }

      v37 = v58;

      if (one-time initialization token for executor == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_198;
    }

    v38 = v46;
    if (one-time initialization token for executor == -1)
    {
LABEL_18:
      v71 = type metadata accessor for Logger();
      __swift_project_value_buffer(v71, static Logger.executor);
      v72 = v252;

      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v255[0] = v76;
        *v75 = 136315138;
        v77 = (*(*v72 + 112))();
        v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, v255);

        *(v75 + 4) = v79;
        _os_log_impl(&dword_1DC659000, v73, v74, "%s: given non-USO parse, returning nil", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v76);
        MEMORY[0x1E12A2F50](v76, -1, -1);
        MEMORY[0x1E12A2F50](v75, -1, -1);
      }

      (*(v38 + 8))(v28, v26);
      return 0;
    }

LABEL_40:
    swift_once();
    goto LABEL_18;
  }

  (*(v46 + 96))(v28, v26);
  v28 = *v28;
  static ConversionUtils.toUserParse(from:)();
  if ((*(v38 + 48))(v23, 1, v37) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    if (one-time initialization token for executor == -1)
    {
LABEL_4:
      v48 = type metadata accessor for Logger();
      __swift_project_value_buffer(v48, static Logger.executor);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_1DC659000, v49, v50, "Could not convert to UserDialogAct", v51, 2u);
        MEMORY[0x1E12A2F50](v51, -1, -1);
      }

      swift_unknownObjectRelease();
      return 0;
    }

LABEL_38:
    swift_once();
    goto LABEL_4;
  }

  (*(v38 + 32))(v40, v23, v37);
  v69 = (*(v38 + 16))(v245, v40, v37);
  v70 = MEMORY[0x1E129C0F0](v69);
  v67 = v248;
  if (!*(v70 + 16))
  {
    __break(1u);
    goto LABEL_40;
  }

  v32 = v243;
  (*(v254 + 16))(v243, v70 + ((*(v254 + 80) + 32) & ~*(v254 + 80)), v250);

  swift_unknownObjectRelease();
  v218 = *(v38 + 8);
  v218(v40, v37);
  v217 = 0;
  v219 = 0;
LABEL_28:
  v68 = v244;
  v52 = v249;
LABEL_29:
  v89 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  v60 = v67;
  if (v67)
  {

    v242 = 0;
    v60 = 0;
    goto LABEL_43;
  }

  if (v89 >> 62)
  {
    v90 = v89;
    v91 = __CocoaSet.count.getter();
    v89 = v90;
    if (v91)
    {
      goto LABEL_33;
    }
  }

  else if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_33:
    if ((v89 & 0xC000000000000001) != 0)
    {
      goto LABEL_196;
    }

    if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v242 = *(v89 + 32);

      goto LABEL_36;
    }

    __break(1u);
LABEL_198:
    swift_once();
LABEL_23:
    v81 = type metadata accessor for Logger();
    __swift_project_value_buffer(v81, static Logger.executor);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    v84 = os_log_type_enabled(v82, v83);
    v85 = v237;
    if (v84)
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_1DC659000, v82, v83, "Could not extract UserDialogAct from USO parse", v86, 2u);
      MEMORY[0x1E12A2F50](v86, -1, -1);
    }

    (*(v241 + 8))(v240, v242);
    (v37)(v52, v85);
    return 0;
  }

  v242 = 0;
LABEL_43:
  if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
  {
    v92 = v231;
    Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
    Siri_Nlu_External_UserStatedTask.task.getter();
    (*(v232 + 8))(v92, v233);
    v93 = 0;
  }

  else
  {
    v93 = 1;
  }

  v62 = v250;
  v94 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v95 = *(v94 - 8);
  (*(v95 + 56))(v68, v93, 1, v94);
  v96 = *(v252 + 16);
  if (v96 > 3)
  {
    if (*(v252 + 16) > 5u)
    {
      if (v96 != 6)
      {
        v97 = v245;
        if (v96 == 7)
        {

          countAndFlagsBits = Siri_Nlu_External_UserDialogAct.typeAsString()().value._countAndFlagsBits;

          outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
          (*(v254 + 8))(v32, v62);
          v218(v97, v37);
          return countAndFlagsBits;
        }

        else
        {

          outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
          (*(v254 + 8))(v32, v62);
          v218(v97, v37);
          return v217;
        }
      }

      v108 = v245;
      if (!v242)
      {
        v137 = 0;
        goto LABEL_229;
      }

      v109 = UsoTask.arguments.getter();

      if (!*(v109 + 16) || (v110 = specialized __RawDictionaryStorage.find<A>(_:)(0x636E657265666572, 0xE900000000000065), (v111 & 1) == 0))
      {
LABEL_112:
        v256 = v109;
        v137 = 0;
        v62 = v250;
        goto LABEL_228;
      }

      v248 = v60;
      v63 = *(*(v109 + 56) + 8 * v110);

      v62 = v250;
      v32 = (v63 & 0xFFFFFFFFFFFFFF8);
      if (v63 >> 62)
      {
        goto LABEL_200;
      }

      v68 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v237 = v37;
      if (!v68)
      {
        goto LABEL_201;
      }

      goto LABEL_67;
    }

    if (v96 != 4)
    {

      if (!v242)
      {
        v137 = 0;
        v108 = v245;
        goto LABEL_229;
      }

      v109 = UsoTask.arguments.getter();

      v108 = v245;
      if (!*(v109 + 16))
      {
        goto LABEL_112;
      }

      v126 = specialized __RawDictionaryStorage.find<A>(_:)(0x69746E4572657375, 0xEC00000073656974);
      if ((v127 & 1) == 0)
      {
        goto LABEL_112;
      }

      v248 = v60;
      v128 = *(*(v109 + 56) + 8 * v126);

      v62 = v250;
      v32 = (v128 & 0xFFFFFFFFFFFFFF8);
      if (v128 >> 62)
      {
        v68 = __CocoaSet.count.getter();
        v237 = v37;
        if (!v68)
        {
LABEL_213:
          v129 = MEMORY[0x1E69E7CC0];
LABEL_214:

          v211 = *(v129 + 2);
          v256 = v129;
          if (v211)
          {
            v212 = v129 + 40;
            v37 = v237;
            v32 = v243;
            v68 = v244;
            v213 = v252;
            while (1)
            {
              v214 = *(v213 + 32);
              if (v214)
              {
                v137 = *(v212 - 1);
                v215 = v137 == *(v213 + 24) && v214 == *v212;
                if (v215 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }
              }

              v212 += 2;
              if (!--v211)
              {
LABEL_225:
                v137 = 0;
                goto LABEL_227;
              }
            }

LABEL_226:

LABEL_227:
            v108 = v245;
            v62 = v250;
LABEL_228:

LABEL_229:
            outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
            (*(v254 + 8))(v32, v62);
            v218(v108, v37);
            return v137;
          }

LABEL_224:
          v137 = 0;
          v37 = v237;
          v68 = v244;
          v108 = v245;
          v32 = v243;
          goto LABEL_228;
        }
      }

      else
      {
        v68 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v237 = v37;
        if (!v68)
        {
          goto LABEL_213;
        }
      }

      v37 = 0;
      v52 = v128 & 0xC000000000000001;
      v129 = MEMORY[0x1E69E7CC0];
LABEL_96:
      v130 = v37;
      while (1)
      {
        if (v52)
        {
          v60 = MEMORY[0x1E12A1FE0](v130, v128);
          v37 = (v130 + 1);
          if (__OFADD__(v130, 1))
          {
            goto LABEL_193;
          }
        }

        else
        {
          if (v130 >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_195;
          }

          v60 = *(v128 + 8 * v130 + 32);

          v37 = (v130 + 1);
          if (__OFADD__(v130, 1))
          {
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            v242 = MEMORY[0x1E12A1FE0](0);
LABEL_36:

            goto LABEL_43;
          }
        }

        if (dispatch thunk of UsoValue.getAsEntity()())
        {
          v131 = UsoTask.verbString.getter();
          v256 = v132;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v129 + 2) + 1, 1, v129);
          }

          v134 = *(v129 + 2);
          v133 = *(v129 + 3);
          v60 = v134 + 1;
          if (v134 >= v133 >> 1)
          {
            v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v133 > 1), v134 + 1, 1, v129);
          }

          *(v129 + 2) = v60;
          v135 = &v129[16 * v134];
          v136 = v256;
          *(v135 + 4) = v131;
          *(v135 + 5) = v136;
          v62 = v250;
          if (v37 == v68)
          {
            goto LABEL_214;
          }

          goto LABEL_96;
        }

        ++v130;
        v62 = v250;
        if (v37 == v68)
        {
          goto LABEL_214;
        }
      }
    }

    v105 = v225;
    outlined init with copy of Siri_Nlu_External_UsoGraph?(v68, v225);
    v106 = (*(v95 + 48))(v105, 1, v94);
    v248 = v60;
    v237 = v37;
    if (v106 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v105, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
      v107 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v182 = Siri_Nlu_External_UsoGraph.identifiers.getter();
      v62 = v250;
      v107 = v182;
      (*(v95 + 8))(v105, v94);
    }

    v183 = v236;
    v184 = *(v107 + 16);
    if (v184)
    {
      v185 = v246 + 16;
      v253 = *(v246 + 16);
      v186 = *(v246 + 80);
      v246 = v107;
      v187 = v107 + ((v186 + 32) & ~v186);
      v251 = *(v185 + 56);
      v249 = v228 + 8;
      v188 = (v185 - 8);
      v167 = MEMORY[0x1E69E7CC0];
      v189 = v235;
      v253(v236, v187, v256);
      while (1)
      {
        if ((Siri_Nlu_External_UsoEntityIdentifier.hasNamespace.getter() & 1) == 0)
        {
          goto LABEL_160;
        }

        Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
        v190 = Google_Protobuf_StringValue.value.getter();
        v192 = v191;
        (*v249)(v189, v247);
        v193 = *(v252 + 32);
        if (!v193)
        {
          break;
        }

        if (v190 == *(v252 + 24) && v193 == v192)
        {
        }

        else
        {
          v194 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v194 & 1) == 0)
          {
            goto LABEL_160;
          }
        }

        v195 = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
        v197 = v196;
        (*v188)(v183, v256);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v167 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v167 + 2) + 1, 1, v167);
        }

        v199 = *(v167 + 2);
        v198 = *(v167 + 3);
        if (v199 >= v198 >> 1)
        {
          v167 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v198 > 1), v199 + 1, 1, v167);
        }

        *(v167 + 2) = v199 + 1;
        v200 = &v167[16 * v199];
        *(v200 + 4) = v195;
        *(v200 + 5) = v197;
        v189 = v235;
        v183 = v236;
LABEL_161:
        v187 += v251;
        if (!--v184)
        {
          goto LABEL_175;
        }

        v253(v183, v187, v256);
      }

LABEL_160:
      (*v188)(v183, v256);
      goto LABEL_161;
    }

LABEL_174:

    v167 = MEMORY[0x1E69E7CC0];
    v201 = v244;
    goto LABEL_176;
  }

  if (*(v252 + 16) <= 1u)
  {
    if (!*(v252 + 16))
    {

      v99 = v245;
      v100 = v242;
      if (v242)
      {
        v255[0] = UsoTask.verbString.getter();
        v255[1] = v101;
        MEMORY[0x1E12A1580](14906, 0xE200000000000000);
        v102 = UsoTask.baseEntityAsString.getter();
        MEMORY[0x1E12A1580](v102);
        v62 = v250;

        v100 = v255[0];
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
      (*(v254 + 8))(v32, v62);
      v218(v99, v37);
      return v100;
    }

    v120 = v245;
    if (Siri_Nlu_External_UserParse.hasParserID.getter())
    {
      v121 = Siri_Nlu_External_UserParse.parserID.getter();

      outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
      (*(v254 + 8))(v32, v250);
      v122 = v120;
LABEL_86:
      v218(v122, v37);
      return v121;
    }

    if (Siri_Nlu_External_UserParse.hasParser.getter())
    {
      v158 = v222;
      Siri_Nlu_External_UserParse.parser.getter();
      LODWORD(v256) = Siri_Nlu_External_Parser.hasParserID.getter();
      v160 = v224 + 8;
      v159 = *(v224 + 8);
      v159(v158, v223);
      if (v256)
      {
        v224 = v160;
        Siri_Nlu_External_UserParse.parser.getter();
        Siri_Nlu_External_Parser.parserID.getter();
        v159(v158, v223);
        v121 = String.init<A>(describing:)();

        outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
        (*(v254 + 8))(v32, v250);
        v122 = v245;
        goto LABEL_86;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
      (*(v254 + 8))(v32, v250);
      v205 = v245;
    }

    else
    {

      outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
      (*(v254 + 8))(v32, v250);
      v205 = v120;
    }

    v218(v205, v37);
    return 0;
  }

  v237 = v37;
  if (v96 == 2)
  {

    v103 = v227;
    outlined init with copy of Siri_Nlu_External_UsoGraph?(v68, v227);
    if ((*(v95 + 48))(v103, 1, v94) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v103, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
      v104 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v104 = Siri_Nlu_External_UsoGraph.identifiers.getter();
      (*(v95 + 8))(v103, v94);
    }

    v138 = v245;
    v139 = *(v104 + 16);
    if (!v139)
    {

      v142 = MEMORY[0x1E69E7CC0];
      goto LABEL_183;
    }

    v247 = v104;
    v248 = v60;
    v251 = *(v246 + 16);
    v140 = v104 + ((*(v246 + 80) + 32) & ~*(v246 + 80));
    v249 = *(v246 + 72);
    v141 = (v246 + 8);
    v142 = MEMORY[0x1E69E7CC0];
    v143 = v253;
    while (1)
    {
      v144 = v68;
      (v251)(v143, v140, v256);
      v145 = Siri_Nlu_External_UsoEntityIdentifier.hasBackingAppBundleID.getter();
      v143 = v253;
      if (v145)
      {
        v146 = Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter();
        v148 = *(v252 + 32);
        if (v148)
        {
          if (v146 == *(v252 + 24) && v148 == v147)
          {

            v143 = v253;
LABEL_128:
            v151 = v143;
            v152 = Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter();
            v154 = v153;
            (*v141)(v151, v256);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v142 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v142 + 2) + 1, 1, v142);
            }

            v156 = *(v142 + 2);
            v155 = *(v142 + 3);
            if (v156 >= v155 >> 1)
            {
              v142 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v155 > 1), v156 + 1, 1, v142);
            }

            *(v142 + 2) = v156 + 1;
            v157 = &v142[16 * v156];
            *(v157 + 4) = v152;
            *(v157 + 5) = v154;
            v32 = v243;
            v68 = v244;
            v143 = v253;
            goto LABEL_118;
          }

          v150 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v143 = v253;
          if (v150)
          {
            goto LABEL_128;
          }
        }

        else
        {

          v143 = v253;
        }
      }

      (*v141)(v143, v256);
      v68 = v144;
LABEL_118:
      v140 += v249;
      if (!--v139)
      {

        v138 = v245;
LABEL_183:
        v202 = v237;
        if (*(v142 + 2))
        {
          v203 = *(v142 + 4);
        }

        else
        {
          v203 = 0;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
        (*(v254 + 8))(v32, v250);
        v204 = v138;
        goto LABEL_187;
      }
    }
  }

  v123 = v226;
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v68, v226);
  v124 = (*(v95 + 48))(v123, 1, v94);
  v248 = v60;
  if (v124 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v123, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    v125 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v161 = Siri_Nlu_External_UsoGraph.identifiers.getter();
    v62 = v250;
    v125 = v161;
    (*(v95 + 8))(v123, v94);
  }

  v162 = *(v125 + 16);
  if (!v162)
  {
    goto LABEL_174;
  }

  v253 = *(v246 + 16);
  v163 = *(v246 + 80);
  v241 = v125;
  v164 = v125 + ((v163 + 32) & ~v163);
  v251 = *(v246 + 72);
  v165 = (v228 + 8);
  v246 += 16;
  v166 = (v246 - 8);
  v167 = MEMORY[0x1E69E7CC0];
  v253(v52, v164, v256);
  while (1)
  {
    if ((Siri_Nlu_External_UsoEntityIdentifier.hasNamespace.getter() & 1) == 0)
    {
      goto LABEL_141;
    }

    v168 = v239;
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v169 = Google_Protobuf_StringValue.value.getter();
    v171 = v170;
    v172 = *v165;
    (*v165)(v168, v247);
    v173 = *(v252 + 32);
    if (!v173)
    {

      v52 = v249;
LABEL_141:
      (*v166)(v52, v256);
      goto LABEL_142;
    }

    if (v169 == *(v252 + 24) && v173 == v171)
    {
    }

    else
    {
      v174 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v52 = v249;
      if ((v174 & 1) == 0)
      {
        goto LABEL_141;
      }
    }

    v175 = v234;
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v176 = Google_Protobuf_StringValue.value.getter();
    v178 = v177;
    v172(v175, v247);
    (*v166)(v249, v256);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v167 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v167 + 2) + 1, 1, v167);
    }

    v180 = *(v167 + 2);
    v179 = *(v167 + 3);
    if (v180 >= v179 >> 1)
    {
      v167 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v179 > 1), v180 + 1, 1, v167);
    }

    *(v167 + 2) = v180 + 1;
    v181 = &v167[16 * v180];
    *(v181 + 4) = v176;
    *(v181 + 5) = v178;
    v52 = v249;
LABEL_142:
    v164 += v251;
    if (!--v162)
    {
      break;
    }

    v253(v52, v164, v256);
  }

LABEL_175:

  v62 = v250;
  v32 = v243;
  v201 = v244;
LABEL_176:
  v202 = v237;
  if (*(v167 + 2))
  {
    v203 = *(v167 + 4);
  }

  else
  {
    v203 = 0;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v201, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  (*(v254 + 8))(v32, v62);
  v204 = v245;
LABEL_187:
  v218(v204, v202);
  return v203;
}

uint64_t InputValueFetcher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance InputValueType(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = InputValueType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == InputValueType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InputValueType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  InputValueType.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance InputValueType(uint64_t a1)
{
  InputValueType.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InputValueType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  InputValueType.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance InputValueType@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized InputValueType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance InputValueType@<X0>(uint64_t *a1@<X8>)
{
  result = InputValueType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t specialized InputValueType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InputValueType.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t partial apply for closure #1 in InputValueFetcher.fetchValue(input:)@<X0>(uint64_t *a1@<X8>)
{
  result = InputValueFetcher.internalFetchValue(input:)();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InputValueType and conformance InputValueType()
{
  result = lazy protocol witness table cache variable for type InputValueType and conformance InputValueType;
  if (!lazy protocol witness table cache variable for type InputValueType and conformance InputValueType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InputValueType and conformance InputValueType);
  }

  return result;
}

uint64_t outlined init with copy of Siri_Nlu_External_UsoGraph?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void InsightRequestSummaryLogger.emitDebug(_:)(uint64_t (*a1)(void))
{

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 136315138;
    v24 = v4;
    v5 = a1();
    v6 = *(v5 + 16);
    if (v6)
    {
      v19 = v4;
      v20 = v3;
      v21 = v2;
      v23 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
      v7 = (v5 + 56);
      do
      {
        v8 = *(v7 - 3);
        v9 = *(v7 - 2);
        v11 = *(v7 - 1);
        v10 = *v7;

        MEMORY[0x1E12A1580](v8, v9);
        MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
        MEMORY[0x1E12A1580](v11, v10);
        MEMORY[0x1E12A1580](34, 0xE100000000000000);

        v13 = *(v23 + 16);
        v12 = *(v23 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        }

        *(v23 + 16) = v13 + 1;
        v14 = v23 + 16 * v13;
        *(v14 + 32) = 34;
        *(v14 + 40) = 0xE100000000000000;
        v7 += 4;
        --v6;
      }

      while (v6);

      v2 = v21;
      v4 = v19;
      v3 = v20;
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v15 = BidirectionalCollection<>.joined(separator:)();
    v17 = v16;

    MEMORY[0x1E12A1580](v15, v17);

    MEMORY[0x1E12A1580](125, 0xE100000000000000);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v24);

    *(v3 + 4) = v18;
    _os_log_impl(&dword_1DC659000, oslog, v2, "%s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x1E12A2F50](v4, -1, -1);
    MEMORY[0x1E12A2F50](v3, -1, -1);
  }

  else
  {
  }
}

uint64_t InsightRequestSummaryLogger.log.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InsightRequestSummaryLogger.log.setter(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t InsightRequestSummaryLogger.init()()
{
  type metadata accessor for OS_os_log();
  OS_os_log.init(subsystem:category:)();

  return Logger.init(_:)();
}

void InsightRequestSummaryLogger.emitError(_:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v4 = type metadata accessor for InsightRequestSummaryLogger(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of InsightRequestSummaryLogger(v2, v6);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;

    v11 = specialized InsightRequestSummaryLogger.constructLogJsonString(_:)(v6, a1);
    v13 = v12;

    outlined destroy of InsightRequestSummaryLogger(v6);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1DC659000, v7, v8, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  else
  {

    outlined destroy of InsightRequestSummaryLogger(v6);
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance InsightRequestSummaryKey@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

double protocol witness for RawRepresentable.rawValue.getter in conformance InsightRequestSummaryKey@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
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

uint64_t type metadata accessor for InsightRequestSummaryLogger(uint64_t a1)
{
  result = type metadata singleton initialization cache for InsightRequestSummaryLogger;
  if (!type metadata singleton initialization cache for InsightRequestSummaryLogger)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of InsightRequestSummaryLogger(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InsightRequestSummaryLogger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of InsightRequestSummaryLogger(uint64_t a1)
{
  v2 = type metadata accessor for InsightRequestSummaryLogger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized InsightRequestSummaryLogger.emitDebug(_:)(uint64_t a1, void *a2, uint64_t a3)
{
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v25 = v5;
    v6 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v6;
    *v6 = 136315138;
    v29 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA69C00;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD00000000000001CLL;
    *(inited + 88) = 0x80000001DCA7B740;
    *(inited + 96) = 0x6E61747369737361;
    *(inited + 104) = 0xEB00000000644974;
    v8 = a2[13];
    *(inited + 112) = a2[12];
    *(inited + 120) = v8;
    *(inited + 128) = 0x496E6F6973736573;
    *(inited + 136) = 0xE900000000000064;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();

    *(inited + 144) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 152) = v9;
    *(inited + 160) = 0x4974736575716572;
    *(inited + 168) = 0xE900000000000064;
    v10 = a2[9];
    *(inited + 176) = a2[8];
    *(inited + 184) = v10;
    *(inited + 192) = 0x6449707274;
    *(inited + 200) = 0xE500000000000000;
    v11 = *(a3 + 24);
    *(inited + 208) = *(a3 + 16);
    *(inited + 216) = v11;
    v28 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 6, 0);
    for (i = 0; i != 192; i += 32)
    {
      v13 = *(inited + i + 32);
      v14 = *(inited + i + 40);
      v15 = *(inited + i + 48);
      v16 = *(inited + i + 56);

      MEMORY[0x1E12A1580](v13, v14);
      MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
      MEMORY[0x1E12A1580](v15, v16);
      MEMORY[0x1E12A1580](34, 0xE100000000000000);

      v18 = *(v28 + 16);
      v17 = *(v28 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      }

      *(v28 + 16) = v18 + 1;
      v19 = v28 + 16 * v18;
      *(v19 + 32) = 34;
      *(v19 + 40) = 0xE100000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v20 = BidirectionalCollection<>.joined(separator:)();
    v22 = v21;

    MEMORY[0x1E12A1580](v20, v22);

    MEMORY[0x1E12A1580](125, 0xE100000000000000);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v29);

    *(v26 + 1) = v23;
    _os_log_impl(&dword_1DC659000, oslog, v25, "%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }

  else
  {
  }
}

{
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v35 = v5;
    v6 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v6 = 136315138;
    v38 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA696F0;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD00000000000001FLL;
    *(inited + 88) = 0x80000001DCA7B880;
    *(inited + 96) = 0x6E61747369737361;
    *(inited + 104) = 0xEB00000000644974;
    v8 = a2[13];
    *(inited + 112) = a2[12];
    *(inited + 120) = v8;
    *(inited + 128) = 0x496E6F6973736573;
    *(inited + 136) = 0xE900000000000064;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();

    *(inited + 144) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 152) = v9;
    *(inited + 160) = 0x4974736575716572;
    *(inited + 168) = 0xE900000000000064;
    v10 = a2[11];
    *(inited + 176) = a2[10];
    *(inited + 184) = v10;
    *(inited + 192) = 0x4E646E616D6D6F63;
    *(inited + 200) = 0xEB00000000656D61;
    v11 = *(a3 + OBJC_IVAR___SKRExecutionOutput_command);
    if (v11)
    {

      v12 = [v11 encodedClassName];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v12 = v14;
LABEL_10:
        MEMORY[0x1E12A1580](v12, v16);

        *(inited + 208) = 0;
        *(inited + 216) = 0xE000000000000000;
        strcpy((inited + 224), "commandAceId");
        *(inited + 237) = 0;
        *(inited + 238) = -5120;
        v17 = 0xE000000000000000;
        if (v11)
        {
          v18 = [v11 aceId];
          if (v18)
          {
            v19 = v18;
            v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v17 = v21;

            v18 = v20;
          }
        }

        else
        {
          v18 = 0;
        }

        MEMORY[0x1E12A1580](v18, v17);

        *(inited + 240) = 0;
        *(inited + 248) = 0xE000000000000000;
        v37 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 7, 0);
        for (i = 0; i != 224; i += 32)
        {
          v23 = *(inited + i + 32);
          v24 = *(inited + i + 40);
          v25 = *(inited + i + 48);
          v26 = *(inited + i + 56);

          MEMORY[0x1E12A1580](v23, v24);
          MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
          MEMORY[0x1E12A1580](v25, v26);
          MEMORY[0x1E12A1580](34, 0xE100000000000000);

          v28 = *(v37 + 16);
          v27 = *(v37 + 24);
          if (v28 >= v27 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          }

          *(v37 + 16) = v28 + 1;
          v29 = v37 + 16 * v28;
          *(v29 + 32) = 34;
          *(v29 + 40) = 0xE100000000000000;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v30 = BidirectionalCollection<>.joined(separator:)();
        v32 = v31;

        MEMORY[0x1E12A1580](v30, v32);

        MEMORY[0x1E12A1580](125, 0xE100000000000000);
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v38);

        *(v6 + 4) = v33;
        _os_log_impl(&dword_1DC659000, oslog, v35, "%s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x1E12A2F50](v34, -1, -1);
        MEMORY[0x1E12A2F50](v6, -1, -1);

        return;
      }
    }

    else
    {

      v12 = 0;
    }

    v16 = 0xE000000000000000;
    goto LABEL_10;
  }
}

{
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v35 = v5;
    v6 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v6 = 136315138;
    v38 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA696F0;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD000000000000019;
    *(inited + 88) = 0x80000001DCA7B830;
    *(inited + 96) = 0x6E61747369737361;
    *(inited + 104) = 0xEB00000000644974;
    v8 = a2[13];
    *(inited + 112) = a2[12];
    *(inited + 120) = v8;
    *(inited + 128) = 0x496E6F6973736573;
    *(inited + 136) = 0xE900000000000064;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();

    *(inited + 144) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 152) = v9;
    *(inited + 160) = 0x4974736575716572;
    *(inited + 168) = 0xE900000000000064;
    v10 = a2[11];
    *(inited + 176) = a2[10];
    *(inited + 184) = v10;
    *(inited + 192) = 0x4E646E616D6D6F63;
    *(inited + 200) = 0xEB00000000656D61;
    v11 = *(a3 + OBJC_IVAR___SKRExecutionOutput_command);
    if (v11)
    {

      v12 = [v11 encodedClassName];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v12 = v14;
LABEL_10:
        MEMORY[0x1E12A1580](v12, v16);

        *(inited + 208) = 0;
        *(inited + 216) = 0xE000000000000000;
        strcpy((inited + 224), "commandAceId");
        *(inited + 237) = 0;
        *(inited + 238) = -5120;
        v17 = 0xE000000000000000;
        if (v11)
        {
          v18 = [v11 aceId];
          if (v18)
          {
            v19 = v18;
            v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v17 = v21;

            v18 = v20;
          }
        }

        else
        {
          v18 = 0;
        }

        MEMORY[0x1E12A1580](v18, v17);

        *(inited + 240) = 0;
        *(inited + 248) = 0xE000000000000000;
        v37 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 7, 0);
        for (i = 0; i != 224; i += 32)
        {
          v23 = *(inited + i + 32);
          v24 = *(inited + i + 40);
          v25 = *(inited + i + 48);
          v26 = *(inited + i + 56);

          MEMORY[0x1E12A1580](v23, v24);
          MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
          MEMORY[0x1E12A1580](v25, v26);
          MEMORY[0x1E12A1580](34, 0xE100000000000000);

          v28 = *(v37 + 16);
          v27 = *(v37 + 24);
          if (v28 >= v27 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          }

          *(v37 + 16) = v28 + 1;
          v29 = v37 + 16 * v28;
          *(v29 + 32) = 34;
          *(v29 + 40) = 0xE100000000000000;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v30 = BidirectionalCollection<>.joined(separator:)();
        v32 = v31;

        MEMORY[0x1E12A1580](v30, v32);

        MEMORY[0x1E12A1580](125, 0xE100000000000000);
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v38);

        *(v6 + 4) = v33;
        _os_log_impl(&dword_1DC659000, oslog, v35, "%s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x1E12A2F50](v34, -1, -1);
        MEMORY[0x1E12A2F50](v6, -1, -1);

        return;
      }
    }

    else
    {

      v12 = 0;
    }

    v16 = 0xE000000000000000;
    goto LABEL_10;
  }
}

{
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v35 = v5;
    v6 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v6 = 136315138;
    v38 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA6FBB0;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD000000000000027;
    *(inited + 88) = 0x80000001DCA7B850;
    strcpy((inited + 96), "failureReason");
    *(inited + 110) = -4864;
    *(inited + 112) = 0xD000000000000052;
    *(inited + 120) = 0x80000001DCA84290;
    *(inited + 128) = 0x6E61747369737361;
    *(inited + 136) = 0xEB00000000644974;
    v8 = a2[13];
    *(inited + 144) = a2[12];
    *(inited + 152) = v8;
    *(inited + 160) = 0x496E6F6973736573;
    *(inited + 168) = 0xE900000000000064;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();

    *(inited + 176) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 184) = v9;
    *(inited + 192) = 0x4974736575716572;
    *(inited + 200) = 0xE900000000000064;
    v10 = a2[9];
    *(inited + 208) = a2[8];
    *(inited + 216) = v10;
    *(inited + 224) = 0x4E646E616D6D6F63;
    *(inited + 232) = 0xEB00000000656D61;
    v11 = *(a3 + OBJC_IVAR___SKRExecutionOutput_command);
    if (v11)
    {

      v12 = [v11 encodedClassName];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v12 = v14;
LABEL_10:
        MEMORY[0x1E12A1580](v12, v16);

        *(inited + 240) = 0;
        *(inited + 248) = 0xE000000000000000;
        strcpy((inited + 256), "commandAceId");
        *(inited + 269) = 0;
        *(inited + 270) = -5120;
        v17 = 0xE000000000000000;
        if (v11)
        {
          v18 = [v11 aceId];
          if (v18)
          {
            v19 = v18;
            v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v17 = v21;

            v18 = v20;
          }
        }

        else
        {
          v18 = 0;
        }

        MEMORY[0x1E12A1580](v18, v17);

        *(inited + 272) = 0;
        *(inited + 280) = 0xE000000000000000;
        v37 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8, 0);
        for (i = 0; i != 256; i += 32)
        {
          v23 = *(inited + i + 32);
          v24 = *(inited + i + 40);
          v25 = *(inited + i + 48);
          v26 = *(inited + i + 56);

          MEMORY[0x1E12A1580](v23, v24);
          MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
          MEMORY[0x1E12A1580](v25, v26);
          MEMORY[0x1E12A1580](34, 0xE100000000000000);

          v28 = *(v37 + 16);
          v27 = *(v37 + 24);
          if (v28 >= v27 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          }

          *(v37 + 16) = v28 + 1;
          v29 = v37 + 16 * v28;
          *(v29 + 32) = 34;
          *(v29 + 40) = 0xE100000000000000;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v30 = BidirectionalCollection<>.joined(separator:)();
        v32 = v31;

        MEMORY[0x1E12A1580](v30, v32);

        MEMORY[0x1E12A1580](125, 0xE100000000000000);
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v38);

        *(v6 + 4) = v33;
        _os_log_impl(&dword_1DC659000, oslog, v35, "%s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x1E12A2F50](v34, -1, -1);
        MEMORY[0x1E12A2F50](v6, -1, -1);

        return;
      }
    }

    else
    {

      v12 = 0;
    }

    v16 = 0xE000000000000000;
    goto LABEL_10;
  }
}

{
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v25 = v5;
    v6 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v6;
    *v6 = 136315138;
    v29 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA69C00;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD000000000000020;
    *(inited + 88) = 0x80000001DCA7B7D0;
    *(inited + 96) = 0x6E61747369737361;
    *(inited + 104) = 0xEB00000000644974;
    v8 = a2[13];
    *(inited + 112) = a2[12];
    *(inited + 120) = v8;
    *(inited + 128) = 0x496E6F6973736573;
    *(inited + 136) = 0xE900000000000064;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();

    *(inited + 144) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 152) = v9;
    *(inited + 160) = 0x4974736575716572;
    *(inited + 168) = 0xE900000000000064;
    v10 = a2[9];
    *(inited + 176) = a2[8];
    *(inited + 184) = v10;
    *(inited + 192) = 0xD000000000000011;
    *(inited + 200) = 0x80000001DCA7AB40;
    v11 = *(a3 + 24);
    *(inited + 208) = *(a3 + 16);
    *(inited + 216) = v11;
    v28 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 6, 0);
    for (i = 0; i != 192; i += 32)
    {
      v13 = *(inited + i + 32);
      v14 = *(inited + i + 40);
      v15 = *(inited + i + 48);
      v16 = *(inited + i + 56);

      MEMORY[0x1E12A1580](v13, v14);
      MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
      MEMORY[0x1E12A1580](v15, v16);
      MEMORY[0x1E12A1580](34, 0xE100000000000000);

      v18 = *(v28 + 16);
      v17 = *(v28 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      }

      *(v28 + 16) = v18 + 1;
      v19 = v28 + 16 * v18;
      *(v19 + 32) = 34;
      *(v19 + 40) = 0xE100000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v20 = BidirectionalCollection<>.joined(separator:)();
    v22 = v21;

    MEMORY[0x1E12A1580](v20, v22);

    MEMORY[0x1E12A1580](125, 0xE100000000000000);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v29);

    *(v26 + 1) = v23;
    _os_log_impl(&dword_1DC659000, oslog, v25, "%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }

  else
  {
  }
}

{
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v35 = v5;
    v6 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v6 = 136315138;
    v38 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA696F0;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD00000000000001ELL;
    *(inited + 88) = 0x80000001DCA7B8D0;
    *(inited + 96) = 0x6E61747369737361;
    *(inited + 104) = 0xEB00000000644974;
    v8 = a2[13];
    *(inited + 112) = a2[12];
    *(inited + 120) = v8;
    *(inited + 128) = 0x496E6F6973736573;
    *(inited + 136) = 0xE900000000000064;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();

    *(inited + 144) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 152) = v9;
    *(inited + 160) = 0x4974736575716572;
    *(inited + 168) = 0xE900000000000064;
    v10 = a2[11];
    *(inited + 176) = a2[10];
    *(inited + 184) = v10;
    *(inited + 192) = 0x4E646E616D6D6F63;
    *(inited + 200) = 0xEB00000000656D61;
    v11 = *(a3 + OBJC_IVAR___SKRExecutionOutput_command);
    if (v11)
    {

      v12 = [v11 encodedClassName];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v12 = v14;
LABEL_10:
        MEMORY[0x1E12A1580](v12, v16);

        *(inited + 208) = 0;
        *(inited + 216) = 0xE000000000000000;
        strcpy((inited + 224), "commandAceId");
        *(inited + 237) = 0;
        *(inited + 238) = -5120;
        v17 = 0xE000000000000000;
        if (v11)
        {
          v18 = [v11 aceId];
          if (v18)
          {
            v19 = v18;
            v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v17 = v21;

            v18 = v20;
          }
        }

        else
        {
          v18 = 0;
        }

        MEMORY[0x1E12A1580](v18, v17);

        *(inited + 240) = 0;
        *(inited + 248) = 0xE000000000000000;
        v37 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 7, 0);
        for (i = 0; i != 224; i += 32)
        {
          v23 = *(inited + i + 32);
          v24 = *(inited + i + 40);
          v25 = *(inited + i + 48);
          v26 = *(inited + i + 56);

          MEMORY[0x1E12A1580](v23, v24);
          MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
          MEMORY[0x1E12A1580](v25, v26);
          MEMORY[0x1E12A1580](34, 0xE100000000000000);

          v28 = *(v37 + 16);
          v27 = *(v37 + 24);
          if (v28 >= v27 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          }

          *(v37 + 16) = v28 + 1;
          v29 = v37 + 16 * v28;
          *(v29 + 32) = 34;
          *(v29 + 40) = 0xE100000000000000;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v30 = BidirectionalCollection<>.joined(separator:)();
        v32 = v31;

        MEMORY[0x1E12A1580](v30, v32);

        MEMORY[0x1E12A1580](125, 0xE100000000000000);
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v38);

        *(v6 + 4) = v33;
        _os_log_impl(&dword_1DC659000, oslog, v35, "%s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x1E12A2F50](v34, -1, -1);
        MEMORY[0x1E12A2F50](v6, -1, -1);

        return;
      }
    }

    else
    {

      v12 = 0;
    }

    v16 = 0xE000000000000000;
    goto LABEL_10;
  }
}

{
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v35 = v5;
    v6 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v6 = 136315138;
    v38 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA696F0;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD000000000000021;
    *(inited + 88) = 0x80000001DCA7B8A0;
    *(inited + 96) = 0x6E61747369737361;
    *(inited + 104) = 0xEB00000000644974;
    v8 = a2[13];
    *(inited + 112) = a2[12];
    *(inited + 120) = v8;
    *(inited + 128) = 0x496E6F6973736573;
    *(inited + 136) = 0xE900000000000064;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();

    *(inited + 144) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 152) = v9;
    *(inited + 160) = 0x4974736575716572;
    *(inited + 168) = 0xE900000000000064;
    v10 = a2[11];
    *(inited + 176) = a2[10];
    *(inited + 184) = v10;
    *(inited + 192) = 0x4E646E616D6D6F63;
    *(inited + 200) = 0xEB00000000656D61;
    v11 = *(a3 + OBJC_IVAR___SKRExecutionOutput_command);
    if (v11)
    {

      v12 = [v11 encodedClassName];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v12 = v14;
LABEL_10:
        MEMORY[0x1E12A1580](v12, v16);

        *(inited + 208) = 0;
        *(inited + 216) = 0xE000000000000000;
        strcpy((inited + 224), "commandAceId");
        *(inited + 237) = 0;
        *(inited + 238) = -5120;
        v17 = 0xE000000000000000;
        if (v11)
        {
          v18 = [v11 aceId];
          if (v18)
          {
            v19 = v18;
            v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v17 = v21;

            v18 = v20;
          }
        }

        else
        {
          v18 = 0;
        }

        MEMORY[0x1E12A1580](v18, v17);

        *(inited + 240) = 0;
        *(inited + 248) = 0xE000000000000000;
        v37 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 7, 0);
        for (i = 0; i != 224; i += 32)
        {
          v23 = *(inited + i + 32);
          v24 = *(inited + i + 40);
          v25 = *(inited + i + 48);
          v26 = *(inited + i + 56);

          MEMORY[0x1E12A1580](v23, v24);
          MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
          MEMORY[0x1E12A1580](v25, v26);
          MEMORY[0x1E12A1580](34, 0xE100000000000000);

          v28 = *(v37 + 16);
          v27 = *(v37 + 24);
          if (v28 >= v27 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          }

          *(v37 + 16) = v28 + 1;
          v29 = v37 + 16 * v28;
          *(v29 + 32) = 34;
          *(v29 + 40) = 0xE100000000000000;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v30 = BidirectionalCollection<>.joined(separator:)();
        v32 = v31;

        MEMORY[0x1E12A1580](v30, v32);

        MEMORY[0x1E12A1580](125, 0xE100000000000000);
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v38);

        *(v6 + 4) = v33;
        _os_log_impl(&dword_1DC659000, oslog, v35, "%s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x1E12A2F50](v34, -1, -1);
        MEMORY[0x1E12A2F50](v6, -1, -1);

        return;
      }
    }

    else
    {

      v12 = 0;
    }

    v16 = 0xE000000000000000;
    goto LABEL_10;
  }
}

{
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v25 = v5;
    v6 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v6;
    *v6 = 136315138;
    v29 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA69C00;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD00000000000001DLL;
    *(inited + 88) = 0x80000001DCA7B6B0;
    *(inited + 96) = 0x6E61747369737361;
    *(inited + 104) = 0xEB00000000644974;
    v8 = a2[13];
    *(inited + 112) = a2[12];
    *(inited + 120) = v8;
    *(inited + 128) = 0x496E6F6973736573;
    *(inited + 136) = 0xE900000000000064;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();

    *(inited + 144) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 152) = v9;
    *(inited + 160) = 0x4974736575716572;
    *(inited + 168) = 0xE900000000000064;
    v10 = a2[9];
    *(inited + 176) = a2[8];
    *(inited + 184) = v10;
    *(inited + 192) = 0xD000000000000011;
    *(inited + 200) = 0x80000001DCA7AB40;
    v11 = *(a3 + 24);
    *(inited + 208) = *(a3 + 16);
    *(inited + 216) = v11;
    v28 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 6, 0);
    for (i = 0; i != 192; i += 32)
    {
      v13 = *(inited + i + 32);
      v14 = *(inited + i + 40);
      v15 = *(inited + i + 48);
      v16 = *(inited + i + 56);

      MEMORY[0x1E12A1580](v13, v14);
      MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
      MEMORY[0x1E12A1580](v15, v16);
      MEMORY[0x1E12A1580](34, 0xE100000000000000);

      v18 = *(v28 + 16);
      v17 = *(v28 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      }

      *(v28 + 16) = v18 + 1;
      v19 = v28 + 16 * v18;
      *(v19 + 32) = 34;
      *(v19 + 40) = 0xE100000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v20 = BidirectionalCollection<>.joined(separator:)();
    v22 = v21;

    MEMORY[0x1E12A1580](v20, v22);

    MEMORY[0x1E12A1580](125, 0xE100000000000000);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v29);

    *(v26 + 1) = v23;
    _os_log_impl(&dword_1DC659000, oslog, v25, "%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }

  else
  {
  }
}

void specialized InsightRequestSummaryLogger.emitDebug(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v9))
  {
    v30 = v9;
    v10 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v10;
    *v10 = 136315138;
    v34 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA69C10;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD000000000000013;
    *(inited + 88) = 0x80000001DCA7B6D0;
    *(inited + 96) = 0x4974736575716572;
    *(inited + 104) = 0xE900000000000064;
    *(inited + 112) = a2;
    *(inited + 120) = a3;
    v12 = (a4 & 1) == 0;
    *(inited + 128) = 0xD000000000000016;
    *(inited + 136) = 0x80000001DCA841D0;
    if (a4)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    v14 = 0xE500000000000000;
    if (v12)
    {
      v15 = 0xE500000000000000;
    }

    else
    {
      v15 = 0xE400000000000000;
    }

    MEMORY[0x1E12A1580](v13, v15);

    *(inited + 144) = 0;
    *(inited + 152) = 0xE000000000000000;
    strcpy((inited + 160), "mitigatedByURS");
    *(inited + 175) = -18;
    if (a5)
    {
      v16 = 1702195828;
    }

    else
    {
      v16 = 0x65736C6166;
    }

    if (a5)
    {
      v14 = 0xE400000000000000;
    }

    MEMORY[0x1E12A1580](v16, v14);

    *(inited + 176) = 0;
    *(inited + 184) = 0xE000000000000000;
    v33 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 5, 0);
    for (i = 0; i != 160; i += 32)
    {
      v18 = *(inited + i + 32);
      v19 = *(inited + i + 40);
      v20 = *(inited + i + 48);
      v21 = *(inited + i + 56);

      MEMORY[0x1E12A1580](v18, v19);
      MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
      MEMORY[0x1E12A1580](v20, v21);
      MEMORY[0x1E12A1580](34, 0xE100000000000000);

      v23 = *(v33 + 16);
      v22 = *(v33 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
      }

      *(v33 + 16) = v23 + 1;
      v24 = v33 + 16 * v23;
      *(v24 + 32) = 34;
      *(v24 + 40) = 0xE100000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v25 = BidirectionalCollection<>.joined(separator:)();
    v27 = v26;

    MEMORY[0x1E12A1580](v25, v27);

    MEMORY[0x1E12A1580](125, 0xE100000000000000);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v34);

    *(v31 + 1) = v28;
    _os_log_impl(&dword_1DC659000, oslog, v30, "%s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1E12A2F50](v29, -1, -1);
    MEMORY[0x1E12A2F50](v31, -1, -1);
  }

  else
  {
  }
}

void specialized InsightRequestSummaryLogger.emitDebug(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v7))
  {
    v24 = v7;
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v8;
    *v8 = 136315138;
    v28 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA6EB80;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD000000000000017;
    *(inited + 88) = 0x80000001DCA7B720;
    *(inited + 96) = 0xD000000000000014;
    *(inited + 104) = 0x80000001DCA841F0;
    *(inited + 112) = PreExecutionDecision.rawValue.getter(v6);
    *(inited + 120) = v10;
    *(inited + 128) = 0x4974736575716572;
    *(inited + 136) = 0xE900000000000064;
    *(inited + 144) = a3;
    *(inited + 152) = a4;
    v27 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
    for (i = 0; i != 128; i += 32)
    {
      v12 = *(inited + i + 32);
      v13 = *(inited + i + 40);
      v14 = *(inited + i + 48);
      v15 = *(inited + i + 56);

      MEMORY[0x1E12A1580](v12, v13);
      MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
      MEMORY[0x1E12A1580](v14, v15);
      MEMORY[0x1E12A1580](34, 0xE100000000000000);

      v17 = *(v27 + 16);
      v16 = *(v27 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      }

      *(v27 + 16) = v17 + 1;
      v18 = v27 + 16 * v17;
      *(v18 + 32) = 34;
      *(v18 + 40) = 0xE100000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v19 = BidirectionalCollection<>.joined(separator:)();
    v21 = v20;

    MEMORY[0x1E12A1580](v19, v21);

    MEMORY[0x1E12A1580](125, 0xE100000000000000);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v28);

    *(v25 + 1) = v22;
    _os_log_impl(&dword_1DC659000, oslog, v24, "%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1E12A2F50](v23, -1, -1);
    MEMORY[0x1E12A2F50](v25, -1, -1);
  }

  else
  {
  }
}

void specialized InsightRequestSummaryLogger.emitDebug(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  MEMORY[0x1EEE9AC00](v6);
  v33 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v7))
  {
    v32 = v7;
    v8 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v8;
    *v8 = 136315138;
    v35 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA6FBB0;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD000000000000027;
    *(inited + 88) = 0x80000001DCA7B800;
    *(inited + 96) = 0xD00000000000001BLL;
    *(inited + 104) = 0x80000001DCA84210;
    PommesResultCandidateMessage.error.getter();
    *(inited + 112) = String.init<A>(describing:)();
    *(inited + 120) = v10;
    *(inited + 128) = 0xD000000000000019;
    *(inited + 136) = 0x80000001DCA84230;
    v11 = PommesResultCandidateMessage.pommesResponse.getter();
    if (v11)
    {

      v12 = 0xE500000000000000;
      v13 = 0x65736C6146;
    }

    else
    {
      v12 = 0xE400000000000000;
      v13 = 1702195796;
    }

    *(inited + 144) = v13;
    *(inited + 152) = v12;
    *(inited + 160) = 0x6E61747369737361;
    *(inited + 168) = 0xEB00000000644974;
    v14 = a3[13];
    *(inited + 176) = a3[12];
    *(inited + 184) = v14;
    *(inited + 192) = 0x496E6F6973736573;
    *(inited + 200) = 0xE900000000000064;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();

    *(inited + 208) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 216) = v15;
    *(inited + 224) = 0x4974736575716572;
    *(inited + 232) = 0xE900000000000064;
    v16 = a3[9];
    *(inited + 240) = a3[8];
    *(inited + 248) = v16;
    *(inited + 256) = 0xD000000000000011;
    *(inited + 264) = 0x80000001DCA7AB40;
    v17 = *(a4 + 24);
    *(inited + 272) = *(a4 + 16);
    *(inited + 280) = v17;
    v34 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8, 0);
    for (i = 0; i != 256; i += 32)
    {
      v19 = *(inited + i + 32);
      v20 = *(inited + i + 40);
      v21 = *(inited + i + 48);
      v22 = *(inited + i + 56);

      MEMORY[0x1E12A1580](v19, v20);
      MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
      MEMORY[0x1E12A1580](v21, v22);
      MEMORY[0x1E12A1580](34, 0xE100000000000000);

      v24 = *(v34 + 16);
      v23 = *(v34 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
      }

      *(v34 + 16) = v24 + 1;
      v25 = v34 + 16 * v24;
      *(v25 + 32) = 34;
      *(v25 + 40) = 0xE100000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v26 = BidirectionalCollection<>.joined(separator:)();
    v28 = v27;

    MEMORY[0x1E12A1580](v26, v28);

    MEMORY[0x1E12A1580](125, 0xE100000000000000);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v35);

    *(v31 + 1) = v29;
    _os_log_impl(&dword_1DC659000, v33, v32, "%s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1E12A2F50](v30, -1, -1);
    MEMORY[0x1E12A2F50](v31, -1, -1);
  }

  else
  {
  }
}

void specialized InsightRequestSummaryLogger.emitDebug(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v22 = v5;
    v6 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v6;
    *v6 = 136315138;
    v26 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA6EB80;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD000000000000017;
    *(inited + 88) = 0x80000001DCA7B7B0;
    *(inited + 96) = 0x4974736575716572;
    *(inited + 104) = 0xE900000000000064;
    *(inited + 112) = a2;
    *(inited + 120) = a3;
    *(inited + 128) = 0x646F43726F727265;
    *(inited + 136) = 0xE900000000000065;

    *(inited + 144) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 152) = v8;
    v25 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
    for (i = 0; i != 128; i += 32)
    {
      v10 = *(inited + i + 32);
      v11 = *(inited + i + 40);
      v12 = *(inited + i + 48);
      v13 = *(inited + i + 56);

      MEMORY[0x1E12A1580](v10, v11);
      MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
      MEMORY[0x1E12A1580](v12, v13);
      MEMORY[0x1E12A1580](34, 0xE100000000000000);

      v15 = *(v25 + 16);
      v14 = *(v25 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      }

      *(v25 + 16) = v15 + 1;
      v16 = v25 + 16 * v15;
      *(v16 + 32) = 34;
      *(v16 + 40) = 0xE100000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v17 = BidirectionalCollection<>.joined(separator:)();
    v19 = v18;

    MEMORY[0x1E12A1580](v17, v19);

    MEMORY[0x1E12A1580](125, 0xE100000000000000);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v26);

    *(v23 + 1) = v20;
    _os_log_impl(&dword_1DC659000, oslog, v22, "%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x1E12A2F50](v21, -1, -1);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  else
  {
  }
}

void specialized InsightRequestSummaryLogger.emitDebug(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v11))
  {
    v31 = v11;
    v12 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v12;
    *v12 = 136315138;
    v35 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    v29 = a3;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA6FBB0;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD000000000000022;
    *(inited + 88) = 0x80000001DCA7B6F0;
    *(inited + 96) = 0x6E61747369737361;
    *(inited + 104) = 0xEB00000000644974;
    v14 = a2[13];
    *(inited + 112) = a2[12];
    *(inited + 120) = v14;
    *(inited + 128) = 0x496E6F6973736573;
    *(inited + 136) = 0xE900000000000064;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();

    *(inited + 144) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 152) = v15;
    *(inited + 160) = 0x4974736575716572;
    *(inited + 168) = 0xE900000000000064;
    v16 = a2[9];
    *(inited + 176) = a2[8];
    *(inited + 184) = v16;
    *(inited + 192) = 0xD000000000000011;
    *(inited + 200) = 0x80000001DCA7AB40;
    *(inited + 208) = v29;
    *(inited + 216) = a4;
    *(inited + 224) = 0x6449707274;
    *(inited + 232) = 0xE500000000000000;
    *(inited + 240) = v29;
    *(inited + 248) = a4;
    *(inited + 256) = 0x6449756374;
    *(inited + 264) = 0xE500000000000000;
    *(inited + 272) = a5;
    *(inited + 280) = a6;
    v34 = MEMORY[0x1E69E7CC0];
    swift_bridgeObjectRetain_n();

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8, 0);
    for (i = 0; i != 256; i += 32)
    {
      v18 = *(inited + i + 32);
      v19 = *(inited + i + 40);
      v20 = *(inited + i + 48);
      v21 = *(inited + i + 56);

      MEMORY[0x1E12A1580](v18, v19);
      MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
      MEMORY[0x1E12A1580](v20, v21);
      MEMORY[0x1E12A1580](34, 0xE100000000000000);

      v23 = *(v34 + 16);
      v22 = *(v34 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
      }

      *(v34 + 16) = v23 + 1;
      v24 = v34 + 16 * v23;
      *(v24 + 32) = 34;
      *(v24 + 40) = 0xE100000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v25 = BidirectionalCollection<>.joined(separator:)();
    v27 = v26;

    MEMORY[0x1E12A1580](v25, v27);

    MEMORY[0x1E12A1580](125, 0xE100000000000000);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v35);

    *(v32 + 1) = v28;
    _os_log_impl(&dword_1DC659000, oslog, v31, "%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1E12A2F50](v30, -1, -1);
    MEMORY[0x1E12A2F50](v32, -1, -1);
  }

  else
  {
  }
}

uint64_t specialized InsightRequestSummaryLogger.constructLogJsonString(_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = a2(a1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v16 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = (v2 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;

      MEMORY[0x1E12A1580](v5, v6);
      MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
      MEMORY[0x1E12A1580](v7, v8);
      MEMORY[0x1E12A1580](34, 0xE100000000000000);

      v10 = *(v16 + 16);
      v9 = *(v16 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
      }

      *(v16 + 16) = v10 + 1;
      v11 = v16 + 16 * v10;
      *(v11 + 32) = 34;
      *(v11 + 40) = 0xE100000000000000;
      v4 += 4;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v12 = BidirectionalCollection<>.joined(separator:)();
  v14 = v13;

  MEMORY[0x1E12A1580](v12, v14);

  MEMORY[0x1E12A1580](125, 0xE100000000000000);
  return 123;
}

uint64_t initializeBufferWithCopyOfBuffer for InsightRequestSummaryLogger(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t destroy for InsightRequestSummaryLogger(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for InsightRequestSummaryLogger(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for InsightRequestSummaryLogger(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for InsightRequestSummaryLogger(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for InsightRequestSummaryLogger(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t type metadata completion function for InsightRequestSummaryLogger(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

id InstrumentationUtil.convertUUIDStringToSISchemaUUID(uuidStr:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of UUID?(v4);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = objc_allocWithZone(MEMORY[0x1E69CF638]);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v12 = [v10 initWithNSUUID_];

    (*(v6 + 8))(v8, v5);
    return v12;
  }
}

Swift::UInt64 __swiftcall InstrumentationUtil.roundOffToTwoSignificantFigures(_:)(Swift::UInt64 a1)
{
  v1 = a1;
  v2 = a1;
  v3 = ceil(log10(a1));
  if (v3 <= 2.0)
  {
    return v1;
  }

  v5 = __exp10(v3 + -2.0);
  v6 = v5 * rint(v2 / v5);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 < 1.84467441e19)
  {
    return v6;
  }

LABEL_9:
  __break(1u);
  return result;
}

NSObject *specialized InstrumentationUtil.buildRequestLinkEvent(sourceComponent:sourceUUID:targetComponent:targetUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69CF5E0]) init];
  if (!v5)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.conversationBridge);
    v6 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v44 = v20;
      *v19 = 136315394;
      v21 = SISchemaComponentName.description.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v44);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v24 = SISchemaComponentName.description.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v44);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_1DC659000, v6, v18, "Failed to create RequestLink event for source component: %s and target component: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v20, -1, -1);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }

    goto LABEL_14;
  }

  v6 = v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E69CF5F0]) init];
  if (!v7)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.conversationBridge);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44 = v31;
      *v30 = 136315138;
      v32 = SISchemaComponentName.description.getter();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v44);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_1DC659000, v28, v29, "Failed to create source link event for source component: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1E12A2F50](v31, -1, -1);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

LABEL_14:
    return 0;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E69CF5F0]) init];
  if (!v9)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.conversationBridge);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v39 = 136315138;
      v41 = SISchemaComponentName.description.getter();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v44);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_1DC659000, v37, v38, "Failed to create target link event for target component: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x1E12A2F50](v40, -1, -1);
      MEMORY[0x1E12A2F50](v39, -1, -1);
    }

    return 0;
  }

  v10 = v9;
  [v8 setComponent_];
  v11 = objc_allocWithZone(MEMORY[0x1E69CF638]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = [v11 initWithNSUUID_];

  [v8 setUuid_];
  [v10 setComponent_];
  v14 = objc_allocWithZone(MEMORY[0x1E69CF638]);
  v15 = UUID._bridgeToObjectiveC()().super.isa;
  v16 = [v14 initWithNSUUID_];

  [v10 setUuid_];
  [v6 setSource:v8];
  [v6 setTarget:v10];

  return v6;
}

void *InstrumentedStack.__allocating_init(initialFlowAgent:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[5] = MEMORY[0x1E69E7CC8];
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = 0;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMd, &_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMR);
    swift_allocObject();

    v4 = specialized Node.init(value:parent:)(v3, 0);
    specialized OrderedForest._push(_:)(v4);
    v5 = v4[2];
    type metadata accessor for InstrumentedStack.TrackedFlowAgent(0);
    swift_allocObject();

    v7 = specialized InstrumentedStack.TrackedFlowAgent.init(agent:parent:)(v6, 0);

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v2[5];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, v5, isUniquelyReferenced_nonNull_native);
    v2[5] = v10;
    swift_endAccess();
  }

  return v2;
}

void *InstrumentedStack.init(initialFlowAgent:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v1[4] = 0;
  v1[5] = v2;
  v1[2] = 0;
  v1[3] = 0;
  if (a1)
  {
    v5 = a1;
    v3 = *(*v1 + 208);

    v3(&v5, 0);
  }

  return v1;
}

Swift::Void __swiftcall InstrumentedStack.clear()()
{
  swift_beginAccess();
  v0[5] = MEMORY[0x1E69E7CC8];

  v0[2] = 0;

  v0[3] = 0;

  swift_beginAccess();
  v0[4] = 0;
}

uint64_t InstrumentedStack.push(value:parentNode:)(uint64_t a1, void *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMd, &_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMR);
  swift_allocObject();

  v6 = specialized Node.init(value:parent:)(v5, a2);
  v7 = v6;
  if (a2)
  {
    swift_beginAccess();

    MEMORY[0x1E12A1680](v8);
    if (*((a2[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a2[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    specialized OrderedForest._push(_:)(v7);
    v9 = a2[2];
    swift_beginAccess();
    v10 = *(v2 + 40);
    if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9), (v12 & 1) != 0))
    {
      a2 = *(*(v10 + 56) + 8 * v11);
    }

    else
    {
      a2 = 0;
    }
  }

  else
  {
    specialized OrderedForest._push(_:)(v6);
  }

  v13 = *(v7 + 16);
  type metadata accessor for InstrumentedStack.TrackedFlowAgent(0);
  swift_allocObject();

  v15 = specialized InstrumentedStack.TrackedFlowAgent.init(agent:parent:)(v14, a2);

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v3 + 40);
  *(v3 + 40) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v13, isUniquelyReferenced_nonNull_native);
  *(v3 + 40) = v18;
  swift_endAccess();

  return v7;
}

void *InstrumentedStack.replan(node:)(void *a1)
{
  v2 = v1;
  v117 = specialized OrderedForest.replan(node:)(a1);
  v3 = (*(*v117 + 152))();
  v4 = v3;
  if (v3 >> 62)
  {
LABEL_123:
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_124:

    return v117;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_124;
  }

LABEL_3:
  v6 = 0;
  v7 = v4 & 0xC000000000000001;
  v8 = v4 & 0xFFFFFFFFFFFFFF8;
  v9 = v4 + 32;
  v135 = v2;
  v102 = v4 & 0xC000000000000001;
  v103 = result;
  v100 = v4 + 32;
  v101 = v4 & 0xFFFFFFFFFFFFFF8;
  v104 = v4;
  while (1)
  {
    if (v7)
    {
      v94 = v6;
      result = MEMORY[0x1E12A1FE0](v6, v4);
      v121 = result;
      v11 = __OFADD__(v94, 1);
      v12 = (v94 + 1);
      if (v11)
      {
        goto LABEL_128;
      }
    }

    else
    {
      if (v6 >= *(v8 + 16))
      {
        goto LABEL_127;
      }

      v121 = *(v9 + 8 * v6);
      v10 = v6;

      v11 = __OFADD__(v10, 1);
      v12 = (v10 + 1);
      if (v11)
      {
        goto LABEL_128;
      }
    }

    v116 = v12;
    v13 = (*(*v121 + 152))();
    v14 = v13;
    if (!(v13 >> 62))
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        break;
      }

      goto LABEL_108;
    }

    result = __CocoaSet.count.getter();
    if (result)
    {
      break;
    }

LABEL_108:

    v93 = v121[2];
    swift_beginAccess();
    specialized Dictionary._Variant.removeValue(forKey:)(v93);
    swift_endAccess();

    v4 = v104;
    v6 = v116;
    v8 = v101;
    v7 = v102;
    v9 = v100;
    if (v116 == v103)
    {
      goto LABEL_124;
    }
  }

  v15 = 0;
  v16 = v14 & 0xC000000000000001;
  v17 = v14 & 0xFFFFFFFFFFFFFF8;
  v18 = v14 + 32;
  v97 = v14 & 0xC000000000000001;
  v98 = result;
  v95 = v14 + 32;
  v96 = v14 & 0xFFFFFFFFFFFFFF8;
  v99 = v14;
  while (1)
  {
    if (v16)
    {
      v91 = v15;
      result = MEMORY[0x1E12A1FE0](v15, v14);
      v120 = result;
      v11 = __OFADD__(v91, 1);
      v20 = (v91 + 1);
      if (v11)
      {
        goto LABEL_129;
      }
    }

    else
    {
      if (v15 >= *(v17 + 16))
      {
        goto LABEL_130;
      }

      v120 = *(v18 + 8 * v15);
      v19 = v15;

      v11 = __OFADD__(v19, 1);
      v20 = (v19 + 1);
      if (v11)
      {
        goto LABEL_129;
      }
    }

    v115 = v20;
    v21 = (*(*v120 + 152))();
    v22 = v21;
    if (!(v21 >> 62))
    {
      result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        break;
      }

      goto LABEL_107;
    }

    result = __CocoaSet.count.getter();
    if (result)
    {
      break;
    }

LABEL_107:

    v92 = v120[2];
    swift_beginAccess();
    specialized Dictionary._Variant.removeValue(forKey:)(v92);
    swift_endAccess();

    v14 = v99;
    v15 = v115;
    v17 = v96;
    v16 = v97;
    v18 = v95;
    if (v115 == v98)
    {
      goto LABEL_108;
    }
  }

  v23 = 0;
  v24 = v22 & 0xC000000000000001;
  v25 = v22 & 0xFFFFFFFFFFFFFF8;
  v26 = v22 + 32;
  v107 = v22 & 0xC000000000000001;
  v108 = result;
  v105 = v22 + 32;
  v106 = v22 & 0xFFFFFFFFFFFFFF8;
  v109 = v22;
  while (1)
  {
    if (v24)
    {
      v69 = v23;
      result = MEMORY[0x1E12A1FE0](v23, v22);
      v124 = result;
      v11 = __OFADD__(v69, 1);
      v28 = (v69 + 1);
      if (v11)
      {
        goto LABEL_126;
      }
    }

    else
    {
      if (v23 >= *(v25 + 16))
      {
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
        goto LABEL_131;
      }

      v124 = *(v26 + 8 * v23);
      v27 = v23;

      v11 = __OFADD__(v27, 1);
      v28 = (v27 + 1);
      if (v11)
      {
        goto LABEL_126;
      }
    }

    v118 = v28;
    v29 = (*(*v124 + 152))();
    v4 = v29;
    if (v29 >> 62)
    {
      v30 = __CocoaSet.count.getter();
      if (!v30)
      {
        goto LABEL_80;
      }

LABEL_21:
      v31 = 0;
      v32 = v4 & 0xC000000000000001;
      v33 = v4 & 0xFFFFFFFFFFFFFF8;
      v34 = v4 + 32;
      v112 = v4 & 0xC000000000000001;
      v113 = v30;
      v110 = v4 + 32;
      v111 = v4 & 0xFFFFFFFFFFFFFF8;
      v114 = v4;
      while (1)
      {
        if (v32)
        {
          v62 = v31;
          v125 = MEMORY[0x1E12A1FE0](v31, v4);
          v11 = __OFADD__(v62, 1);
          v36 = v62 + 1;
          if (v11)
          {
            goto LABEL_122;
          }
        }

        else
        {
          if (v31 >= *(v33 + 16))
          {
            goto LABEL_121;
          }

          v125 = *(v34 + 8 * v31);
          v35 = v31;

          v11 = __OFADD__(v35, 1);
          v36 = v35 + 1;
          if (v11)
          {
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }
        }

        v119 = v36;
        v37 = (*(*v125 + 152))();
        v4 = v37;
        if (!(v37 >> 62))
        {
          v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v38)
          {
            break;
          }

          goto LABEL_70;
        }

        v38 = __CocoaSet.count.getter();
        if (v38)
        {
          break;
        }

LABEL_70:

        v63 = v125[2];
        swift_beginAccess();
        v64 = specialized __RawDictionaryStorage.find<A>(_:)(v63);
        if (v65)
        {
          v66 = v64;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v68 = *(v2 + 40);
          *(v2 + 40) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            specialized _NativeDictionary.copy()();
          }

          specialized _NativeDictionary._delete(at:)(v66, v68);
          *(v2 + 40) = v68;
        }

        swift_endAccess();

        v4 = v114;
        v31 = v119;
        v33 = v111;
        v32 = v112;
        v34 = v110;
        if (v119 == v113)
        {
          goto LABEL_80;
        }
      }

      v39 = 0;
      v127 = v4 & 0xFFFFFFFFFFFFFF8;
      v128 = v4 & 0xC000000000000001;
      v126 = v4 + 32;
      v122 = v38;
      v123 = v4;
      while (1)
      {
        if (v128)
        {
          v130 = MEMORY[0x1E12A1FE0](v39, v4);
          v11 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v11)
          {
            goto LABEL_119;
          }
        }

        else
        {
          if (v39 >= *(v127 + 16))
          {
            goto LABEL_120;
          }

          v130 = *(v126 + 8 * v39);

          v11 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v11)
          {
            goto LABEL_119;
          }
        }

        v41 = (*(*v130 + 152))();
        v4 = v41;
        v129 = v40;
        if (v41 >> 62)
        {
          v42 = __CocoaSet.count.getter();
          if (v42)
          {
LABEL_35:
            v43 = 0;
            v133 = v4 & 0xFFFFFFFFFFFFFF8;
            v134 = v4 & 0xC000000000000001;
            v131 = v4;
            v132 = v4 + 32;
            do
            {
              if (v134)
              {
                v44 = MEMORY[0x1E12A1FE0](v43, v4);
                v11 = __OFADD__(v43++, 1);
                if (v11)
                {
                  goto LABEL_117;
                }
              }

              else
              {
                if (v43 >= *(v133 + 16))
                {
                  goto LABEL_118;
                }

                v44 = *(v132 + 8 * v43);

                v11 = __OFADD__(v43++, 1);
                if (v11)
                {
                  goto LABEL_117;
                }
              }

              v4 = v44;
              v45 = (*(*v44 + 152))();
              v46 = v45;
              if (v45 >> 62)
              {
                v47 = __CocoaSet.count.getter();
                if (v47)
                {
LABEL_43:
                  v48 = 0;
                  do
                  {
                    if ((v46 & 0xC000000000000001) != 0)
                    {
                      v49 = MEMORY[0x1E12A1FE0](v48, v46);
                      v2 = v48 + 1;
                      if (__OFADD__(v48, 1))
                      {
                        goto LABEL_115;
                      }
                    }

                    else
                    {
                      if (v48 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_116;
                      }

                      v49 = *(v46 + 8 * v48 + 32);

                      v2 = v48 + 1;
                      if (__OFADD__(v48, 1))
                      {
LABEL_115:
                        __break(1u);
LABEL_116:
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
                        goto LABEL_122;
                      }
                    }

                    v4 = v135;
                    InstrumentedStack.removeTrackedFlow(for:)(v49);

                    ++v48;
                  }

                  while (v2 != v47);
                }
              }

              else
              {
                v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v47)
                {
                  goto LABEL_43;
                }
              }

              v50 = v44[2];
              v2 = v135;
              swift_beginAccess();
              v51 = specialized __RawDictionaryStorage.find<A>(_:)(v50);
              if (v52)
              {
                v53 = v51;
                v54 = swift_isUniquelyReferenced_nonNull_native();
                v55 = *(v135 + 40);
                *(v135 + 40) = 0x8000000000000000;
                if (!v54)
                {
                  specialized _NativeDictionary.copy()();
                }

                specialized _NativeDictionary._delete(at:)(v53, v55);
                *(v135 + 40) = v55;
              }

              swift_endAccess();

              v4 = v131;
            }

            while (v43 != v42);
          }
        }

        else
        {
          v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v42)
          {
            goto LABEL_35;
          }
        }

        v56 = v130[2];
        swift_beginAccess();
        v57 = specialized __RawDictionaryStorage.find<A>(_:)(v56);
        if (v58)
        {
          v59 = v57;
          v60 = swift_isUniquelyReferenced_nonNull_native();
          v61 = *(v2 + 40);
          *(v2 + 40) = 0x8000000000000000;
          if (!v60)
          {
            specialized _NativeDictionary.copy()();
          }

          specialized _NativeDictionary._delete(at:)(v59, v61);
          *(v2 + 40) = v61;
        }

        swift_endAccess();

        v4 = v123;
        v39 = v129;
        if (v129 == v122)
        {
          goto LABEL_70;
        }
      }
    }

    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_21;
    }

LABEL_80:

    v70 = v124[2];
    swift_beginAccess();
    v71 = specialized __RawDictionaryStorage.find<A>(_:)(v70);
    if (v72)
    {
      break;
    }

LABEL_84:
    swift_endAccess();

    v22 = v109;
    v23 = v118;
    v25 = v106;
    v24 = v107;
    v26 = v105;
    if (v118 == v108)
    {
      goto LABEL_107;
    }
  }

  v73 = v71;
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *(v2 + 40);
  *(v2 + 40) = 0x8000000000000000;
  if (v74)
  {
    v76 = v75;
LABEL_83:

    specialized _NativeDictionary._delete(at:)(v73, v76);
    *(v2 + 40) = v76;
    goto LABEL_84;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO14SiriKitRuntime17InstrumentedStackC16TrackedFlowAgent33_D2D0045FA6DDADCCE44653D1D4022143LLCGMd, &_ss18_DictionaryStorageCySO14SiriKitRuntime17InstrumentedStackC16TrackedFlowAgent33_D2D0045FA6DDADCCE44653D1D4022143LLCGMR);
  v77 = static _DictionaryStorage.copy(original:)();
  v76 = v77;
  if (!*(v75 + 16))
  {
LABEL_102:

    v2 = v135;
    goto LABEL_83;
  }

  result = (v77 + 64);
  v78 = v75 + 64;
  v79 = ((1 << *(v76 + 32)) + 63) >> 6;
  if (v76 != v75 || result >= v78 + 8 * v79)
  {
    result = memmove(result, (v75 + 64), 8 * v79);
  }

  v80 = 0;
  *(v76 + 16) = *(v75 + 16);
  v81 = 1 << *(v75 + 32);
  v82 = *(v75 + 64);
  if (v81 < 64)
  {
    v83 = ~(-1 << v81);
  }

  else
  {
    v83 = -1;
  }

  v84 = v83 & v82;
  v85 = (v81 + 63) >> 6;
  if ((v83 & v82) != 0)
  {
    do
    {
      v86 = __clz(__rbit64(v84));
      v84 &= v84 - 1;
LABEL_100:
      v89 = v86 | (v80 << 6);
      v90 = *(*(v75 + 56) + 8 * v89);
      *(*(v76 + 48) + 8 * v89) = *(*(v75 + 48) + 8 * v89);
      *(*(v76 + 56) + 8 * v89) = v90;
    }

    while (v84);
  }

  v87 = v80;
  while (1)
  {
    v80 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      break;
    }

    if (v80 >= v85)
    {
      goto LABEL_102;
    }

    v88 = *(v78 + 8 * v80);
    ++v87;
    if (v88)
    {
      v86 = __clz(__rbit64(v88));
      v84 = (v88 - 1) & v88;
      goto LABEL_100;
    }
  }

LABEL_131:
  __break(1u);
  return result;
}

void *specialized OrderedForest.replan(node:)(void *a1)
{
  v2 = a1[2];
  v3 = *(*a1 + 128);

  v5 = v3(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMd, &_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMR);
  swift_allocObject();
  v6 = specialized Node.init(value:parent:)(v2, v5);
  v7 = specialized OrderedForest._recursiveRemove(_:)(a1);
  v8 = (*(*a1 + 152))(v7);
  swift_beginAccess();
  *(v6 + 32) = v8;

  swift_beginAccess();
  v9 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];

  v10 = specialized OrderedForest._push(_:)(a1);
  v11 = v3(v10);
  if (v11)
  {
    v12 = v11;
    v13 = *(*v11 + 152);
    v14 = (v13)();
    if (v14 >> 62)
    {
      goto LABEL_19;
    }

    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v15)
    {
      while (1)
      {
        v17 = (v13)(v16);
        v13 = v17;
        v26 = v9;
        if (v17 >> 62)
        {
          v18 = __CocoaSet.count.getter();
          if (!v18)
          {
LABEL_22:
            v20 = MEMORY[0x1E69E7CC0];
LABEL_23:

            swift_beginAccess();
            v12[4] = v20;

            MEMORY[0x1E12A1680](v22);
            if (*((v12[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            goto LABEL_26;
          }
        }

        else
        {
          v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v18)
          {
            goto LABEL_22;
          }
        }

        v24 = v12;
        v25 = v6;
        v6 = 0;
        v9 = v13 & 0xFFFFFFFFFFFFFF8;
        while ((v13 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1E12A1FE0](v6, v13);
          v19 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:
            v6 = v25;
            v20 = v26;
            v12 = v24;
            goto LABEL_23;
          }

LABEL_12:
          if (v12 == a1)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v6;
          if (v19 == v18)
          {
            goto LABEL_17;
          }
        }

        if (v6 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_19:
        v21 = __CocoaSet.count.getter();

        if (!v21)
        {
          goto LABEL_26;
        }
      }

      v12 = *(v13 + 8 * v6 + 32);

      v19 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

LABEL_26:
  }

  return v6;
}

uint64_t InstrumentedStack.deinit()
{

  return v0;
}

uint64_t type metadata completion function for InstrumentedStack.TrackedFlowAgent(uint64_t a1)
{
  result = type metadata accessor for OSSignpostID();
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

uint64_t IntelligenceFlowFeatureFlag.isEnabled.getter()
{
  v2[3] = &type metadata for IntelligenceFlowFeatureFlag;
  v2[4] = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v0 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return v0 & 1;
}

Swift::Int IntelligenceFlowFeatureFlag.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

uint64_t *IntentLoggingEventSink.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static IntentLoggingEventSink.instance;
}

uint64_t one-time initialization function for intentStore()
{
  v0 = type metadata accessor for IntentEventStore();
  __swift_allocate_value_buffer(v0, static IntentLoggingEventSink.intentStore);
  __swift_project_value_buffer(v0, static IntentLoggingEventSink.intentStore);
  return IntentEventStore.init()();
}

uint64_t _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of ReferenceResolutionClientProtocol?(a3, v22 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t closure #1 in IntentLoggingEventSink.handleDisambiguationOffered(intent:parameterName:multicardinalValueIndex:disambiguationItems:now:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v27 = a7;
  v28 = a6;
  v25 = a2;
  v26 = a3;
  v24 = a1;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v22 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;

  v16 = [a5 _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = *(v11 + 16);
  v23 = a9;
  v17(v15, a9, v10);
  type metadata accessor for DisambiguationOffer();
  swift_allocObject();

  v18 = v29;
  result = DisambiguationOffer.init(parameterName:intentType:multicardinalIndexValue:disambiguationItems:timestamp:)();
  if (!v18)
  {
    v17(v22, v23, v10);
    type metadata accessor for IntentEvent();
    swift_allocObject();

    IntentEvent.init(intentId:disambiguationOffer:createdAt:)();
    if (one-time initialization token for intentStore != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for IntentEventStore();
    __swift_project_value_buffer(v20, static IntentLoggingEventSink.intentStore);
    IntentEventStore.log(event:)();
  }

  return result;
}

void closure #1 in IntentLoggingEventSink.handleDisambiguationResult(intent:parameterName:multicardinalIndexValue:sirikitConfirmationState:now:context:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v36 = a6;
  v37 = a8;
  v35 = a7;
  v34[1] = a1;
  v34[2] = a2;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v34 - v17;
  v19 = [a3 _dictionaryRepresentation];
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = a4;
  v39 = a4;
  v40 = a5;

  AnyHashable.init<A>(_:)();
  if (*(v20 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v41), (v22 & 1) != 0))
  {
    outlined init with copy of Any(*(v20 + 56) + 32 * v21, v42);
    outlined destroy of AnyHashable(v41);

    v23 = [a3 _className];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34[0] = v24;

    outlined init with copy of Any(v42, v41);
    v25 = *(v12 + 16);
    v26 = v37;
    v25(v18, v37, v11);
    type metadata accessor for DisambiguationResult();
    swift_allocObject();
    v27 = v42[5];
    DisambiguationResult.init(parameterName:intentType:multicardinalIndexValue:resolvedValue:timestamp:)();
    if (v27)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
    }

    else
    {
      v25(v14, v26, v11);
      type metadata accessor for IntentEvent();
      swift_allocObject();

      IntentEvent.init(intentId:disambiguationResult:createdAt:)();
      if (one-time initialization token for intentStore != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for IntentEventStore();
      __swift_project_value_buffer(v33, static IntentLoggingEventSink.intentStore);
      IntentEventStore.log(event:)();

      __swift_destroy_boxed_opaque_existential_1Tm(v42);
    }
  }

  else
  {

    outlined destroy of AnyHashable(v41);
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.instrumentation);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, a5, v41);
      _os_log_impl(&dword_1DC659000, v29, v30, "Intent has no value for %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x1E12A2F50](v32, -1, -1);
      MEMORY[0x1E12A2F50](v31, -1, -1);
    }
  }
}

uint64_t closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v46 = a2;
  v47 = a7;
  v43 = a6;
  v44 = a5;
  v41 = a3;
  v42 = a4;
  v45 = a1;
  v7 = type metadata accessor for Date();
  v37 = v7;
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - v11;
  v36 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v34 - v16;
  v35 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v34 - v19;
  static TaskPriority.background.getter();
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  outlined init with copy of ReferenceResolutionClientProtocol?(v41, v17, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v42, v12, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v22 = v40;
  (*(v40 + 16))(&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v7);
  v23 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v24 = (v15 + *(v39 + 80) + v23) & ~*(v39 + 80);
  v25 = (v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v22 + 80) + v25 + 8) & ~*(v22 + 80);
  v27 = (v8 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v35, v28 + v23, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v36, v28 + v24, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v29 = v44;
  *(v28 + v25) = v44;
  (*(v22 + 32))(v28 + v26, v38, v37);
  v30 = (v28 + v27);
  v31 = v46;
  *v30 = v45;
  v30[1] = v31;
  *(v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8)) = v47;
  v32 = v29;

  _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(0, 0, v20, &async function pointer to partial apply for closure #1 in closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:), v28);

  return outlined destroy of ReferenceResolutionClientProtocol?(v20, &_sScPSgMd, &_sScPSgMR);
}

uint64_t closure #1 in closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v15;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = type metadata accessor for Date();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v8[12] = swift_task_alloc();
  v10 = type metadata accessor for SiriKitReliabilityCodes();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
  v8[17] = swift_task_alloc();
  v11 = type metadata accessor for LaunchAppBehavior();
  v8[18] = v11;
  v8[19] = *(v11 - 8);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v12 = type metadata accessor for IntentResultType();
  v8[22] = v12;
  v8[23] = *(v12 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:), 0, 0);
}

uint64_t closure #1 in closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:)()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  outlined init with copy of ReferenceResolutionClientProtocol?(v0[2], v3, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v12 = v0[20];
    v13 = v0[21];
    v14 = v0[18];
    v15 = v0[19];
    v16 = *(v15 + 32);
    v16(v13, v0[17], v14);
    v16(v12, v13, v14);
    v17 = (*(v15 + 88))(v12, v14);
    if (v17 == *MEMORY[0x1E69CFEF0])
    {
      v8 = v0[25];
      v9 = v0[22];
      v10 = v0[23];
      (*(v0[19] + 8))(v0[20], v0[18]);
      v11 = MEMORY[0x1E69CF898];
      goto LABEL_6;
    }

    if (v17 == *MEMORY[0x1E69CFEE8])
    {
      goto LABEL_13;
    }

    if (v17 == *MEMORY[0x1E69CFEE0])
    {
      v24 = v0[25];
      v25 = v0[22];
      v26 = v0[23];
      v27 = MEMORY[0x1E69CF8A8];
      goto LABEL_14;
    }

    v45 = v0[22];
    v46 = *(v0[23] + 104);
    v47 = v0[25];
    if (v17 == *MEMORY[0x1E69CFED8])
    {
      v48 = MEMORY[0x1E69CF890];
LABEL_29:
      v46(v47, *v48, v45);
      goto LABEL_15;
    }

    v50 = v0[19];
    v49 = v0[20];
    v51 = v0[18];
LABEL_31:
    v46(v47, *MEMORY[0x1E69CF8B0], v45);
    (*(v50 + 8))(v49, v51);
    goto LABEL_15;
  }

  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[12];
  v7 = v0[3];
  outlined destroy of ReferenceResolutionClientProtocol?(v0[17], &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v7, v6, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  if ((*(v5 + 48))(v6, 1, v4) != 1)
  {
    v18 = v0[15];
    v19 = v0[16];
    v20 = v0[13];
    v21 = v0[14];
    v22 = *(v21 + 32);
    v22(v19, v0[12], v20);
    v22(v18, v19, v20);
    v23 = (*(v21 + 88))(v18, v20);
    if (v23 == *MEMORY[0x1E69CFC80])
    {
      v24 = v0[25];
      v25 = v0[22];
      v26 = v0[23];
      v27 = MEMORY[0x1E69CF898];
LABEL_14:
      (*(v26 + 104))(v24, *v27, v25);
      goto LABEL_15;
    }

    if (v23 == *MEMORY[0x1E69CFC78])
    {
LABEL_13:
      v24 = v0[25];
      v25 = v0[22];
      v26 = v0[23];
      v27 = MEMORY[0x1E69CF8A0];
      goto LABEL_14;
    }

    if (v23 == *MEMORY[0x1E69CFCC8])
    {
      v24 = v0[25];
      v25 = v0[22];
      v26 = v0[23];
      v27 = MEMORY[0x1E69CF890];
      goto LABEL_14;
    }

    v45 = v0[22];
    v46 = *(v0[23] + 104);
    v47 = v0[25];
    if (v23 == *MEMORY[0x1E69CFCB8])
    {
      v48 = MEMORY[0x1E69CF8A8];
      goto LABEL_29;
    }

    v50 = v0[14];
    v49 = v0[15];
    v51 = v0[13];
    goto LABEL_31;
  }

  v8 = v0[25];
  v9 = v0[22];
  v10 = v0[23];
  outlined destroy of ReferenceResolutionClientProtocol?(v0[12], &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v11 = MEMORY[0x1E69CF8B0];
LABEL_6:
  (*(v10 + 104))(v8, *v11, v9);
LABEL_15:
  v28 = v0[24];
  v29 = v0[25];
  v31 = v0[22];
  v30 = v0[23];
  v32 = v0[11];
  v33 = v0[9];
  v52 = v0[8];
  v34 = v0[4];
  v35 = v0[5];
  v36 = [v34 _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v30 + 16))(v28, v29, v31);
  v37 = *(v33 + 16);
  v37(v32, v35, v52);
  type metadata accessor for IntentResult();
  swift_allocObject();
  v38 = v34;
  IntentResult.init(intentType:type:intent:timestamp:)();
  v37(v0[10], v0[5], v0[8]);
  type metadata accessor for IntentEvent();
  swift_allocObject();

  IntentEvent.init(intentId:intentResult:createdAt:)();
  if (one-time initialization token for intentStore != -1)
  {
    swift_once();
  }

  v40 = v0[25];
  v41 = v0[22];
  v42 = v0[23];
  v43 = type metadata accessor for IntentEventStore();
  __swift_project_value_buffer(v43, static IntentLoggingEventSink.intentStore);
  IntentEventStore.log(event:)();

  (*(v42 + 8))(v40, v41);

  v44 = v0[1];

  return v44();
}

uint64_t closure #1 in IntentLoggingEventSink.handleConfirmationOffered(intent:parameterName:multicardinalValueIndex:itemToConfirm:now:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, int a8, uint64_t a9)
{
  v41 = a8;
  v42 = a5;
  v43 = a7;
  v40 = a4;
  v37 = a2;
  v38 = a1;
  v11 = a9;
  v46 = type metadata accessor for Date();
  v12 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v34 - v16;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v44 = v12;
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.instrumentation);
  outlined init with copy of Any(a3, v48);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v35 = a3;
    v22 = v21;
    v49 = v21;
    *v20 = 136315138;
    outlined init with copy of Any(v48, v47);
    v23 = String.init<A>(describing:)();
    v36 = a9;
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v49);
    v11 = v36;

    *(v20 + 4) = v26;
    _os_log_impl(&dword_1DC659000, v18, v19, "Confirmation offered resolvedValue: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v27 = v22;
    a3 = v35;
    MEMORY[0x1E12A2F50](v27, -1, -1);
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v48);
  }

  v28 = [a6 _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  outlined init with copy of Any(a3, v48);
  v29 = *(v44 + 16);
  v30 = v46;
  v29(v39, v11, v46);
  type metadata accessor for ConfirmationOffer();
  swift_allocObject();
  v31 = v45;
  result = ConfirmationOffer.init(parameterName:intentType:multicardinalIndexValue:item:timestamp:)();
  if (!v31)
  {
    v29(v14, v11, v30);
    type metadata accessor for IntentEvent();
    swift_allocObject();

    IntentEvent.init(intentId:confirmationOffer:createdAt:)();
    if (one-time initialization token for intentStore != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for IntentEventStore();
    __swift_project_value_buffer(v33, static IntentLoggingEventSink.intentStore);
    IntentEventStore.log(event:)();
  }

  return result;
}

void closure #1 in IntentLoggingEventSink.handleConfirmationResult(intent:parameterName:multicardinalIndexValue:confirmationState:now:context:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v61 = a8;
  v63 = a7;
  v60 = a6;
  v57 = a1;
  v58 = a2;
  v12 = type metadata accessor for ConfirmationResolution();
  v54 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Date();
  v62 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v56 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  v20 = type metadata accessor for SiriKitConfirmationState();
  v64 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [a3 _dictionaryRepresentation];
  v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v66 = a4;
  v67 = a4;
  v68 = a5;

  AnyHashable.init<A>(_:)();
  if (*(v25 + 16))
  {
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v69);
    if (v27)
    {
      outlined init with copy of Any(*(v25 + 56) + 32 * v26, v70);
      outlined destroy of AnyHashable(v69);

      v28 = v64;
      (*(v64 + 16))(v23, v60, v20);
      v29 = (*(v28 + 88))(v23, v20);
      if (v29 == *MEMORY[0x1E69CFCF8])
      {

        v30 = [a3 _className];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v54 + 104))(v59, *MEMORY[0x1E69CF950], v12);
        v31 = *(v62 + 16);
        v32 = v65;
        v31(v55, a9, v65);
        type metadata accessor for ConfirmationResult();
        swift_allocObject();
        ConfirmationResult.init(parameterName:intentType:multicardinalIndexValue:resolution:timestamp:)();
      }

      else
      {
        v39 = v29;
        if (v29 == *MEMORY[0x1E69CFD00])
        {
          v40 = v65;

          v41 = [a3 _className];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          outlined init with copy of Any(v70, v69);
          v31 = *(v62 + 16);
          v31(v19, a9, v40);
          type metadata accessor for ConfirmationResult();
          swift_allocObject();
          v42 = v71;
          ConfirmationResult.init(parameterName:intentType:multicardinalIndexValue:confirmedValue:timestamp:)();
          v33 = v42;
          if (v42)
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v70);
            return;
          }

          v32 = v65;
          goto LABEL_6;
        }

        v44 = *MEMORY[0x1E69CFCF0];

        v45 = [a3 _className];
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v47;

        v48 = *(v54 + 104);
        v49 = (v62 + 16);
        if (v39 == v44)
        {
          v48(v59, *MEMORY[0x1E69CF948], v12);
          v31 = *v49;
          v50 = v65;
          (*v49)(v55, a9, v65);
          v32 = v50;
          type metadata accessor for ConfirmationResult();
          swift_allocObject();
          ConfirmationResult.init(parameterName:intentType:multicardinalIndexValue:resolution:timestamp:)();
        }

        else
        {
          v48(v59, *MEMORY[0x1E69CF940], v12);
          v31 = *v49;
          v62 = v46;
          v51 = v65;
          v31(v55, a9, v65);
          v32 = v51;
          type metadata accessor for ConfirmationResult();
          swift_allocObject();
          ConfirmationResult.init(parameterName:intentType:multicardinalIndexValue:resolution:timestamp:)();
          v52 = *(v64 + 8);

          v52(v23, v20);
        }
      }

      v33 = v71;
LABEL_6:
      v31(v56, a9, v32);
      type metadata accessor for IntentEvent();
      swift_allocObject();

      IntentEvent.init(intentId:confirmationResult:createdAt:)();
      if (v33)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
      }

      else
      {
        if (one-time initialization token for intentStore != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for IntentEventStore();
        __swift_project_value_buffer(v43, static IntentLoggingEventSink.intentStore);
        IntentEventStore.log(event:)();

        __swift_destroy_boxed_opaque_existential_1Tm(v70);
      }

      return;
    }
  }

  outlined destroy of AnyHashable(v69);
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.instrumentation);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v69[0] = v38;
    *v37 = 136315138;
    *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, a5, v69);
    _os_log_impl(&dword_1DC659000, v35, v36, "Intent has no value for %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1E12A2F50](v38, -1, -1);
    MEMORY[0x1E12A2F50](v37, -1, -1);
  }
}

unint64_t lazy protocol witness table accessor for type ActivityType and conformance ActivityType()
{
  result = lazy protocol witness table cache variable for type ActivityType and conformance ActivityType;
  if (!lazy protocol witness table cache variable for type ActivityType and conformance ActivityType)
  {
    type metadata accessor for ActivityType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityType and conformance ActivityType);
  }

  return result;
}

uint64_t partial apply for closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:)(a1, a2);
}

{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for Date() - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  return closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:)(a1, a2, v2 + v6, v2 + v9, *(v2 + v10), v2 + v12, *(v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void partial apply for closure #1 in IntentLoggingEventSink.handleConfirmationResult(intent:parameterName:multicardinalIndexValue:confirmationState:now:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SiriKitConfirmationState() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for Date() - 8);
  closure #1 in IntentLoggingEventSink.handleConfirmationResult(intent:parameterName:multicardinalIndexValue:confirmationState:now:context:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), v2 + ((v7 + *(v8 + 80) + 9) & ~*(v8 + 80)));
}

uint64_t partial apply for closure #1 in closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for Date() - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v9);
  v15 = *(v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:)(a1, v12, v13, v1 + v5, v1 + v8, v14, v1 + v11, v15);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26[-1] - v12;
  v27[0] = a4;
  v27[1] = a5;
  outlined init with copy of TaskPriority?(a3, &v26[-1] - v12);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    outlined destroy of TaskPriority?(v13);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter();
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_(v21 + 32, v27, a6, v26);

      v22 = v26[0];
      outlined destroy of TaskPriority?(a3);

      return v22;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = a4;
  v23[4] = a5;
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

void *InterruptibleTaskManager.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[4] = MEMORY[0x1E69E7CC8];
  result[5] = 0;
  result[2] = a1;
  result[3] = a2;
  return result;
}

Swift::Void __swiftcall InterruptibleTaskManager.invalidate()()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_9:
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = *(*(v1 + 56) + ((v7 << 10) | (16 * v8)));

      v9(v10);

      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return;
    }

    if (v7 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  swift_beginAccess();
  if (*(*(v0 + 32) + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v0 + 32);
    *(v0 + 32) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySuyycGMd, &_ss17_NativeDictionaryVySuyycGMR);
    _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    *(v0 + 32) = v12;
  }

  swift_endAccess();
}

void *InterruptibleTaskManager.init(name:)(uint64_t a1, uint64_t a2)
{
  v2[4] = MEMORY[0x1E69E7CC8];
  v2[5] = 0;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

void closure #2 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.executor);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 16), *(a1 + 24), &v12);
    _os_log_impl(&dword_1DC659000, v6, v7, "%s: task cancelled", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  type metadata accessor for InterruptibleTaskResult(0, a3, v10, v11);

  JUMPOUT(0x1E12A1950);
}

uint64_t InterruptibleTaskManager.deinit()
{

  return v0;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t result@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (result)
  {
    v10 = *a5;
    v9 = a5[1];
    v11 = swift_allocObject();
    v11[2] = a6;
    v11[3] = v10;
    v11[4] = v9;

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of Any((*(v10 + 56) + 32 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v15;
    }

    v11 = (*(v10 + 56) + 80 * v8);
    v12 = v11[3];
    a3[2] = v11[2];
    a3[3] = v12;
    a3[4] = v11[4];
    v13 = v11[1];
    *a3 = *v11;
    a3[1] = v13;
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for Parse();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for Parse();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), a2);
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), a2);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
    v19 = *(v12 - 8);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v11 + *(v19 + 72) * v8, a3, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, a2, MEMORY[0x1E69D0AA8], specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), a3);
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, a2, MEMORY[0x1E69D0100], specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), a3);
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(_OWORD *x8_0@<X8>)
{
  return specialized Dictionary._Variant.removeValue(forKey:)(specialized __RawDictionaryStorage.find<A>(_:), MEMORY[0x1E69E6D30], specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), x8_0);
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(specialized __RawDictionaryStorage.find<A>(_:), MEMORY[0x1E69D0820], specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), x8_0);
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, void (*a3)(uint64_t, uint64_t)@<X3>, void (*a4)(void)@<X4>, _OWORD *a5@<X8>)
{
  v9 = v5;
  v11 = a1();
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v19 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v15 = v19;
    }

    v16 = *(v15 + 48);
    v17 = a2(0);
    (*(*(v17 - 8) + 8))(v16 + *(*(v17 - 8) + 72) * v13, v17);
    outlined init with take of Any((*(v15 + 56) + 32 * v13), a5);
    a3(v13, v15);
    *v9 = v15;
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v26 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v26;
    }

    v17 = *(v16 + 56);
    v18 = a3(0);
    v25 = *(v18 - 8);
    (*(v25 + 32))(a6, v17 + *(v25 + 72) * v14, v18);
    a4(v14, v16);
    *v10 = v16;
    v19 = *(v25 + 56);
    v20 = a6;
    v21 = 0;
    v22 = v18;
  }

  else
  {
    v23 = a3(0);
    v19 = *(*(v23 - 8) + 56);
    v22 = v23;
    v20 = a6;
    v21 = 1;
  }

  return v19(v20, v21, 1, v22);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v30 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = type metadata accessor for UUID();
    v20 = v15;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
    v21 = *(v17 + 56);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v29 = *(v22 - 8);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v21 + *(v29 + 72) * v20, a6, a2, a3);
    a4(v20, v17);
    *v11 = v17;
    v23 = *(v29 + 56);
    v24 = a6;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a6;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

uint64_t type metadata completion function for InterruptibleTaskResult(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for InterruptibleTaskResult(char *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));

    return v3;
  }

  v9 = *(a2 + v5);
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v5 <= 3)
    {
      v11 = v5;
    }

    else
    {
      v11 = 4;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = *a2;
      }

      else if (v11 == 3)
      {
        v12 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v12 = *a2;
      }

LABEL_22:
      v13 = (v12 | (v10 << (8 * v5))) + 3;
      v9 = v12 + 3;
      if (v5 < 4)
      {
        v9 = v13;
      }

      goto LABEL_24;
    }

    if (v11)
    {
      v12 = *a2;
      goto LABEL_22;
    }
  }

LABEL_24:
  if (v9 == 2)
  {
    v16 = *a2;
    v17 = *a2;
    *v3 = v16;
    v3[v5] = 2;
  }

  else if (v9 == 1)
  {
    v14 = *a2;
    v15 = *a2;
    *v3 = v14;
    v3[v5] = 1;
  }

  else
  {
    (*(v4 + 16))(a1);
    v3[v5] = 0;
  }

  return v3;
}

unsigned __int8 *assignWithCopy for InterruptibleTaskResult(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = a1[v7];
  v9 = v8 - 3;
  if (v8 >= 3)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *a1;
    }

    else if (v10 == 2)
    {
      v11 = *a1;
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
    }

    else
    {
      v11 = *a1;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 3;
    v8 = v11 + 3;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_19:
  if (v8 == 2 || v8 == 1)
  {
  }

  else
  {
    (*(v6 + 8))(a1, v5);
  }

  v13 = a2[v7];
  v14 = v13 - 3;
  if (v13 < 3)
  {
    goto LABEL_37;
  }

  if (v7 <= 3)
  {
    v15 = v7;
  }

  else
  {
    v15 = 4;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
    }

    else
    {
      v16 = *a2;
    }

LABEL_35:
    v17 = (v16 | (v14 << (8 * v7))) + 3;
    v13 = v16 + 3;
    if (v7 < 4)
    {
      v13 = v17;
    }

    goto LABEL_37;
  }

  if (v15)
  {
    v16 = *a2;
    goto LABEL_35;
  }

LABEL_37:
  if (v13 == 2)
  {
    v21 = *a2;
    v22 = v21;
    *a1 = v21;
    v20 = 2;
  }

  else if (v13 == 1)
  {
    v18 = *a2;
    v19 = v18;
    *a1 = v18;
    v20 = 1;
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    v20 = 0;
  }

  a1[v7] = v20;
  return a1;
}

void *initializeWithTake for InterruptibleTaskResult(void *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = a2[v3];
  v5 = v4 - 3;
  if (v4 < 3)
  {
    goto LABEL_18;
  }

  if (v3 <= 3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 4;
  }

  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = *a2;
  }

  else if (v6 == 2)
  {
    v7 = *a2;
  }

  else if (v6 == 3)
  {
    v7 = *a2 | (a2[2] << 16);
  }

  else
  {
    v7 = *a2;
  }

  v8 = (v7 | (v5 << (8 * v3))) + 3;
  v4 = v7 + 3;
  if (v3 < 4)
  {
    v4 = v8;
  }

LABEL_18:
  if (v4 == 2)
  {
    *result = *a2;
    v9 = 2;
  }

  else if (v4 == 1)
  {
    *result = *a2;
    v9 = 1;
  }

  else
  {
    v10 = result;
    (*(*(*(a3 + 16) - 8) + 32))();
    result = v10;
    v9 = 0;
  }

  *(result + v3) = v9;
  return result;
}

unsigned __int8 *assignWithTake for InterruptibleTaskResult(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = a1[v7];
  v9 = v8 - 3;
  if (v8 >= 3)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *a1;
    }

    else if (v10 == 2)
    {
      v11 = *a1;
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
    }

    else
    {
      v11 = *a1;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 3;
    v8 = v11 + 3;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_19:
  if (v8 == 2 || v8 == 1)
  {
  }

  else
  {
    (*(v6 + 8))(a1, v5);
  }

  v13 = a2[v7];
  v14 = v13 - 3;
  if (v13 < 3)
  {
    goto LABEL_37;
  }

  if (v7 <= 3)
  {
    v15 = v7;
  }

  else
  {
    v15 = 4;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
    }

    else
    {
      v16 = *a2;
    }

LABEL_35:
    v17 = (v16 | (v14 << (8 * v7))) + 3;
    v13 = v16 + 3;
    if (v7 < 4)
    {
      v13 = v17;
    }

    goto LABEL_37;
  }

  if (v15)
  {
    v16 = *a2;
    goto LABEL_35;
  }

LABEL_37:
  if (v13 == 2)
  {
    *a1 = *a2;
    v18 = 2;
  }

  else if (v13 == 1)
  {
    *a1 = *a2;
    v18 = 1;
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    v18 = 0;
  }

  a1[v7] = v18;
  return a1;
}

uint64_t getEnumTagSinglePayload for InterruptibleTaskResult(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void storeEnumTagSinglePayload for InterruptibleTaskResult(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t getEnumTag for InterruptibleTaskResult(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 8;
  if (*(v2 + 64) > 8uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 3;
  if (v4 >= 3)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 3;
    LODWORD(v4) = v7 + 3;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void destructiveInjectEnumTag for InterruptibleTaskResult(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 2)
  {
    v4 = a2 - 3;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 3;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 3;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_15(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return _s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TR(a1, v4);
}

uint64_t InvocationStateImpl.aceId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InvocationStateImpl.aceId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t InvocationStateImpl.refId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t InvocationStateImpl.refId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t InvocationStateImpl.inputOrigin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InvocationStateImpl(0) + 24);
  v4 = type metadata accessor for InputOrigin();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InvocationStateImpl.inputOrigin.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InvocationStateImpl(0) + 24);
  v4 = type metadata accessor for InputOrigin();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InvocationStateImpl.interactionType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InvocationStateImpl(0) + 28);
  v4 = type metadata accessor for InteractionType();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InvocationStateImpl.interactionType.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InvocationStateImpl(0) + 28);
  v4 = type metadata accessor for InteractionType();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InvocationStateImpl.responseMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InvocationStateImpl(0) + 40);
  v4 = type metadata accessor for ResponseMode();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InvocationStateImpl.responseMode.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InvocationStateImpl(0) + 40);
  v4 = type metadata accessor for ResponseMode();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InvocationStateImpl.multiUserState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InvocationStateImpl(0) + 44);

  return outlined init with copy of MultiUserState(v3, a1);
}

uint64_t InvocationStateImpl.multiUserState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for InvocationStateImpl(0) + 44);

  return outlined assign with take of MultiUserState(a1, v3);
}

uint64_t InvocationStateImpl.sessionHandOffContinuityID.getter()
{
  v1 = *(v0 + *(type metadata accessor for InvocationStateImpl(0) + 48));

  return v1;
}

uint64_t InvocationStateImpl.sessionHandOffContinuityID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InvocationStateImpl(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InvocationStateImpl.isEyesFree.setter(char a1)
{
  result = type metadata accessor for InvocationStateImpl(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t InvocationStateImpl.isVoiceTriggerEnabled.setter(char a1)
{
  result = type metadata accessor for InvocationStateImpl(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t InvocationStateImpl.isTextToSpeechEnabled.setter(char a1)
{
  result = type metadata accessor for InvocationStateImpl(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t InvocationStateImpl.isRecognizeMyVoiceEnabled.setter(char a1)
{
  result = type metadata accessor for InvocationStateImpl(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t InvocationStateImpl.isDirectAction.setter(char a1)
{
  result = type metadata accessor for InvocationStateImpl(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t InvocationStateImpl.siriLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InvocationStateImpl(0) + 72);
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InvocationStateImpl.siriLocale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InvocationStateImpl(0) + 72);
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InvocationStateImpl.siriVoiceGender.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InvocationStateImpl(0) + 76);
  v4 = type metadata accessor for SiriVoiceGender();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InvocationStateImpl.siriVoiceGender.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InvocationStateImpl(0) + 76);
  v4 = type metadata accessor for SiriVoiceGender();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

void *InvocationStateImpl.remoteContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for InvocationStateImpl(0) + 80));
  v2 = v1;
  return v1;
}

void InvocationStateImpl.remoteContext.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InvocationStateImpl(0) + 80);

  *(v1 + v3) = a1;
}

uint64_t InvocationStateImpl.executionRequestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for InvocationStateImpl(0) + 84));

  return v1;
}

uint64_t InvocationStateImpl.executionRequestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InvocationStateImpl(0) + 84));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InvocationStateImpl.interactionId.getter()
{
  v1 = *(v0 + *(type metadata accessor for InvocationStateImpl(0) + 88));

  return v1;
}

uint64_t InvocationStateImpl.interactionId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InvocationStateImpl(0) + 88));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InvocationStateImpl.preferencesLanguageCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for InvocationStateImpl(0) + 92));

  return v1;
}

uint64_t InvocationStateImpl.preferencesLanguageCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InvocationStateImpl(0) + 92));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InvocationStateImpl.restrictions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InvocationStateImpl(0) + 104);
  v4 = type metadata accessor for Restrictions();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InvocationStateImpl.restrictions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InvocationStateImpl(0) + 104);
  v4 = type metadata accessor for Restrictions();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InvocationStateImpl.currentDeviceAssistantId.getter()
{
  v1 = *(v0 + *(type metadata accessor for InvocationStateImpl(0) + 112));

  return v1;
}

uint64_t InvocationStateImpl.currentDeviceAssistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InvocationStateImpl(0) + 112));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

double InvocationStateImpl.voiceTriggerEventInfo.getter()
{
  type metadata accessor for InvocationStateImpl(0);

  return result;
}

uint64_t InvocationStateImpl.voiceTriggerEventInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InvocationStateImpl(0) + 116);

  *(v1 + v3) = a1;
  return result;
}

uint64_t InvocationStateImpl.voiceAudioSessionId.setter(int a1)
{
  result = type metadata accessor for InvocationStateImpl(0);
  *(v1 + *(result + 120)) = a1;
  return result;
}

uint64_t InvocationStateImpl.isSystemApertureEnabled.setter(char a1)
{
  result = type metadata accessor for InvocationStateImpl(0);
  *(v1 + *(result + 124)) = a1;
  return result;
}

uint64_t InvocationStateImpl.isLiveActivitiesSupported.setter(char a1)
{
  result = type metadata accessor for InvocationStateImpl(0);
  *(v1 + *(result + 128)) = a1;
  return result;
}

uint64_t InvocationStateImpl.isInAmbient.setter(char a1)
{
  result = type metadata accessor for InvocationStateImpl(0);
  *(v1 + *(result + 132)) = a1;
  return result;
}

uint64_t AFHomeInfo.asInternalHomeInfo.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  HomeInfo.init()();
  v8 = [v1 homeIdentifier];
  if (v8)
  {
    v9 = v8;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  }

  else
  {
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  }

  outlined init with take of UUID?(v4, v7);
  type metadata accessor for UUID();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    UUID.uuidString.getter();
    (*(v11 + 8))(v7, v10);
  }

  return HomeInfo.homeIdentifier.setter();
}

uint64_t protocol witness for InvocationState.siriLocale.getter in conformance InvocationStateImpl@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = type metadata accessor for Locale();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for InvocationState.siriVoiceGender.getter in conformance InvocationStateImpl@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 76);
  v5 = type metadata accessor for SiriVoiceGender();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void *protocol witness for InvocationState.remoteContext.getter in conformance InvocationStateImpl(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 80));
  v3 = v2;
  return v2;
}

uint64_t protocol witness for InvocationState.executionRequestId.getter in conformance InvocationStateImpl(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 84));

  return v2;
}

uint64_t protocol witness for InvocationState.preferencesLanguageCode.getter in conformance InvocationStateImpl(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 92));

  return v2;
}

uint64_t protocol witness for InvocationState.restrictions.getter in conformance InvocationStateImpl@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 104);
  v5 = type metadata accessor for Restrictions();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t outlined assign with take of MultiUserState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultiUserState();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *assignWithCopy for InvocationStateImpl(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);

  v6 = a3[6];
  v7 = type metadata accessor for InputOrigin();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  v9 = type metadata accessor for InteractionType();
  (*(*(v9 - 8) + 24))(&a1[v8], &a2[v8], v9);
  v10 = a3[8];
  v11 = type metadata accessor for AudioSource();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(&a1[v10], 1, v11);
  v15 = v13(&a2[v10], 1, v11);
  if (v14)
  {
    if (!v15)
    {
      (*(v12 + 16))(&a1[v10], &a2[v10], v11);
      (*(v12 + 56))(&a1[v10], 0, 1, v11);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v15)
  {
    (*(v12 + 8))(&a1[v10], v11);
LABEL_6:
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
    memcpy(&a1[v10], &a2[v10], *(*(v16 - 8) + 64));
    goto LABEL_7;
  }

  (*(v12 + 24))(&a1[v10], &a2[v10], v11);
LABEL_7:
  v17 = a3[9];
  v18 = type metadata accessor for AudioDestination();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = v20(&a1[v17], 1, v18);
  v22 = v20(&a2[v17], 1, v18);
  if (v21)
  {
    if (!v22)
    {
      (*(v19 + 16))(&a1[v17], &a2[v17], v18);
      (*(v19 + 56))(&a1[v17], 0, 1, v18);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v22)
  {
    (*(v19 + 8))(&a1[v17], v18);
LABEL_12:
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    memcpy(&a1[v17], &a2[v17], *(*(v23 - 8) + 64));
    goto LABEL_13;
  }

  (*(v19 + 24))(&a1[v17], &a2[v17], v18);
LABEL_13:
  v24 = a3[10];
  v25 = type metadata accessor for ResponseMode();
  (*(*(v25 - 8) + 24))(&a1[v24], &a2[v24], v25);
  v26 = a3[11];
  v27 = type metadata accessor for MultiUserContext();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  v30 = v29(&a1[v26], 1, v27);
  v31 = v29(&a2[v26], 1, v27);
  if (v30)
  {
    if (!v31)
    {
      (*(v28 + 16))(&a1[v26], &a2[v26], v27);
      (*(v28 + 56))(&a1[v26], 0, 1, v27);
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v31)
  {
    (*(v28 + 8))(&a1[v26], v27);
LABEL_18:
    v32 = type metadata accessor for MultiUserState();
    memcpy(&a1[v26], &a2[v26], *(*(v32 - 8) + 64));
    goto LABEL_19;
  }

  (*(v28 + 24))(&a1[v26], &a2[v26], v27);
LABEL_19:
  v33 = a3[12];
  v34 = &a1[v33];
  v35 = &a2[v33];
  *v34 = *v35;
  *(v34 + 1) = *(v35 + 1);

  a1[a3[13]] = a2[a3[13]];
  a1[a3[14]] = a2[a3[14]];
  a1[a3[15]] = a2[a3[15]];
  a1[a3[16]] = a2[a3[16]];
  a1[a3[17]] = a2[a3[17]];
  v36 = a3[18];
  v37 = type metadata accessor for Locale();
  (*(*(v37 - 8) + 24))(&a1[v36], &a2[v36], v37);
  v38 = a3[19];
  v39 = type metadata accessor for SiriVoiceGender();
  (*(*(v39 - 8) + 24))(&a1[v38], &a2[v38], v39);
  v40 = a3[20];
  v41 = *&a1[v40];
  v42 = *&a2[v40];
  *&a1[v40] = v42;
  v43 = v42;

  v44 = a3[21];
  v45 = &a1[v44];
  v46 = &a2[v44];
  *v45 = *v46;
  *(v45 + 1) = *(v46 + 1);

  v47 = a3[22];
  v48 = &a1[v47];
  v49 = &a2[v47];
  *v48 = *v49;
  *(v48 + 1) = *(v49 + 1);

  v50 = a3[23];
  v51 = &a1[v50];
  v52 = &a2[v50];
  *v51 = *v52;
  *(v51 + 1) = *(v52 + 1);

  v53 = a3[24];
  v54 = type metadata accessor for PersonalDomainsAuthenticationMode();
  v55 = *(v54 - 8);
  v56 = *(v55 + 48);
  v57 = v56(&a1[v53], 1, v54);
  v58 = v56(&a2[v53], 1, v54);
  if (v57)
  {
    if (!v58)
    {
      (*(v55 + 16))(&a1[v53], &a2[v53], v54);
      (*(v55 + 56))(&a1[v53], 0, 1, v54);
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v58)
  {
    (*(v55 + 8))(&a1[v53], v54);
LABEL_24:
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
    memcpy(&a1[v53], &a2[v53], *(*(v59 - 8) + 64));
    goto LABEL_25;
  }

  (*(v55 + 24))(&a1[v53], &a2[v53], v54);
LABEL_25:
  v60 = a3[25];
  v61 = type metadata accessor for BargeInContext();
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  v64 = v63(&a1[v60], 1, v61);
  v65 = v63(&a2[v60], 1, v61);
  if (v64)
  {
    if (!v65)
    {
      (*(v62 + 16))(&a1[v60], &a2[v60], v61);
      (*(v62 + 56))(&a1[v60], 0, 1, v61);
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v65)
  {
    (*(v62 + 8))(&a1[v60], v61);
LABEL_30:
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
    memcpy(&a1[v60], &a2[v60], *(*(v66 - 8) + 64));
    goto LABEL_31;
  }

  (*(v62 + 24))(&a1[v60], &a2[v60], v61);
LABEL_31:
  v67 = a3[26];
  v68 = type metadata accessor for Restrictions();
  (*(*(v68 - 8) + 24))(&a1[v67], &a2[v67], v68);
  v69 = a3[27];
  v70 = type metadata accessor for HomeInfo();
  v71 = *(v70 - 8);
  v72 = *(v71 + 48);
  v73 = v72(&a1[v69], 1, v70);
  v74 = v72(&a2[v69], 1, v70);
  if (!v73)
  {
    if (!v74)
    {
      (*(v71 + 24))(&a1[v69], &a2[v69], v70);
      goto LABEL_37;
    }

    (*(v71 + 8))(&a1[v69], v70);
    goto LABEL_36;
  }

  if (v74)
  {
LABEL_36:
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
    memcpy(&a1[v69], &a2[v69], *(*(v75 - 8) + 64));
    goto LABEL_37;
  }

  (*(v71 + 16))(&a1[v69], &a2[v69], v70);
  (*(v71 + 56))(&a1[v69], 0, 1, v70);
LABEL_37:
  v76 = a3[28];
  v77 = &a1[v76];
  v78 = &a2[v76];
  *v77 = *v78;
  *(v77 + 1) = *(v78 + 1);

  *&a1[a3[29]] = *&a2[a3[29]];

  *&a1[a3[30]] = *&a2[a3[30]];
  a1[a3[31]] = a2[a3[31]];
  a1[a3[32]] = a2[a3[32]];
  a1[a3[33]] = a2[a3[33]];
  return a1;
}

char *initializeWithTake for InvocationStateImpl(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[6];
  v8 = type metadata accessor for InputOrigin();
  (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
  v9 = a3[7];
  v10 = type metadata accessor for InteractionType();
  (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
  v11 = a3[8];
  v12 = type metadata accessor for AudioSource();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(&a2[v11], 1, v12))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
    memcpy(&a1[v11], &a2[v11], *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v13 + 32))(&a1[v11], &a2[v11], v12);
    (*(v13 + 56))(&a1[v11], 0, 1, v12);
  }

  v15 = a3[9];
  v16 = type metadata accessor for AudioDestination();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(&a2[v15], 1, v16))
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    memcpy(&a1[v15], &a2[v15], *(*(v18 - 8) + 64));
  }

  else
  {
    (*(v17 + 32))(&a1[v15], &a2[v15], v16);
    (*(v17 + 56))(&a1[v15], 0, 1, v16);
  }

  v19 = a3[10];
  v20 = type metadata accessor for ResponseMode();
  (*(*(v20 - 8) + 32))(&a1[v19], &a2[v19], v20);
  v21 = a3[11];
  v22 = type metadata accessor for MultiUserContext();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(&a2[v21], 1, v22))
  {
    v24 = type metadata accessor for MultiUserState();
    memcpy(&a1[v21], &a2[v21], *(*(v24 - 8) + 64));
  }

  else
  {
    (*(v23 + 32))(&a1[v21], &a2[v21], v22);
    (*(v23 + 56))(&a1[v21], 0, 1, v22);
  }

  v25 = a3[13];
  *&a1[a3[12]] = *&a2[a3[12]];
  a1[v25] = a2[v25];
  v26 = a3[15];
  a1[a3[14]] = a2[a3[14]];
  a1[v26] = a2[v26];
  v27 = a3[17];
  a1[a3[16]] = a2[a3[16]];
  a1[v27] = a2[v27];
  v28 = a3[18];
  v29 = type metadata accessor for Locale();
  (*(*(v29 - 8) + 32))(&a1[v28], &a2[v28], v29);
  v30 = a3[19];
  v31 = type metadata accessor for SiriVoiceGender();
  (*(*(v31 - 8) + 32))(&a1[v30], &a2[v30], v31);
  v32 = a3[21];
  *&a1[a3[20]] = *&a2[a3[20]];
  *&a1[v32] = *&a2[v32];
  v33 = a3[23];
  *&a1[a3[22]] = *&a2[a3[22]];
  *&a1[v33] = *&a2[v33];
  v34 = a3[24];
  v35 = type metadata accessor for PersonalDomainsAuthenticationMode();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(&a2[v34], 1, v35))
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
    memcpy(&a1[v34], &a2[v34], *(*(v37 - 8) + 64));
  }

  else
  {
    (*(v36 + 32))(&a1[v34], &a2[v34], v35);
    (*(v36 + 56))(&a1[v34], 0, 1, v35);
  }

  v38 = a3[25];
  v39 = type metadata accessor for BargeInContext();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(&a2[v38], 1, v39))
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
    memcpy(&a1[v38], &a2[v38], *(*(v41 - 8) + 64));
  }

  else
  {
    (*(v40 + 32))(&a1[v38], &a2[v38], v39);
    (*(v40 + 56))(&a1[v38], 0, 1, v39);
  }

  v42 = a3[26];
  v43 = type metadata accessor for Restrictions();
  (*(*(v43 - 8) + 32))(&a1[v42], &a2[v42], v43);
  v44 = a3[27];
  v45 = type metadata accessor for HomeInfo();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(&a2[v44], 1, v45))
  {
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
    memcpy(&a1[v44], &a2[v44], *(*(v47 - 8) + 64));
  }

  else
  {
    (*(v46 + 32))(&a1[v44], &a2[v44], v45);
    (*(v46 + 56))(&a1[v44], 0, 1, v45);
  }

  v48 = a3[29];
  *&a1[a3[28]] = *&a2[a3[28]];
  *&a1[v48] = *&a2[v48];
  v49 = a3[31];
  *&a1[a3[30]] = *&a2[a3[30]];
  a1[v49] = a2[v49];
  v50 = a3[33];
  a1[a3[32]] = a2[a3[32]];
  a1[v50] = a2[v50];
  return a1;
}

char *assignWithTake for InvocationStateImpl(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;

  v8 = a3[6];
  v9 = type metadata accessor for InputOrigin();
  (*(*(v9 - 8) + 40))(&a1[v8], &a2[v8], v9);
  v10 = a3[7];
  v11 = type metadata accessor for InteractionType();
  (*(*(v11 - 8) + 40))(&a1[v10], &a2[v10], v11);
  v12 = a3[8];
  v13 = type metadata accessor for AudioSource();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(&a1[v12], 1, v13);
  v17 = v15(&a2[v12], 1, v13);
  if (v16)
  {
    if (!v17)
    {
      (*(v14 + 32))(&a1[v12], &a2[v12], v13);
      (*(v14 + 56))(&a1[v12], 0, 1, v13);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v17)
  {
    (*(v14 + 8))(&a1[v12], v13);
LABEL_6:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
    memcpy(&a1[v12], &a2[v12], *(*(v18 - 8) + 64));
    goto LABEL_7;
  }

  (*(v14 + 40))(&a1[v12], &a2[v12], v13);
LABEL_7:
  v19 = a3[9];
  v20 = type metadata accessor for AudioDestination();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(&a1[v19], 1, v20);
  v24 = v22(&a2[v19], 1, v20);
  if (v23)
  {
    if (!v24)
    {
      (*(v21 + 32))(&a1[v19], &a2[v19], v20);
      (*(v21 + 56))(&a1[v19], 0, 1, v20);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v24)
  {
    (*(v21 + 8))(&a1[v19], v20);
LABEL_12:
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    memcpy(&a1[v19], &a2[v19], *(*(v25 - 8) + 64));
    goto LABEL_13;
  }

  (*(v21 + 40))(&a1[v19], &a2[v19], v20);
LABEL_13:
  v26 = a3[10];
  v27 = type metadata accessor for ResponseMode();
  (*(*(v27 - 8) + 40))(&a1[v26], &a2[v26], v27);
  v28 = a3[11];
  v29 = type metadata accessor for MultiUserContext();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  v32 = v31(&a1[v28], 1, v29);
  v33 = v31(&a2[v28], 1, v29);
  if (v32)
  {
    if (!v33)
    {
      (*(v30 + 32))(&a1[v28], &a2[v28], v29);
      (*(v30 + 56))(&a1[v28], 0, 1, v29);
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v33)
  {
    (*(v30 + 8))(&a1[v28], v29);
LABEL_18:
    v34 = type metadata accessor for MultiUserState();
    memcpy(&a1[v28], &a2[v28], *(*(v34 - 8) + 64));
    goto LABEL_19;
  }

  (*(v30 + 40))(&a1[v28], &a2[v28], v29);
LABEL_19:
  v35 = a3[12];
  v36 = &a1[v35];
  v37 = &a2[v35];
  v39 = *v37;
  v38 = *(v37 + 1);
  *v36 = v39;
  *(v36 + 1) = v38;

  v40 = a3[14];
  a1[a3[13]] = a2[a3[13]];
  a1[v40] = a2[v40];
  v41 = a3[16];
  a1[a3[15]] = a2[a3[15]];
  a1[v41] = a2[v41];
  v42 = a3[18];
  a1[a3[17]] = a2[a3[17]];
  v43 = type metadata accessor for Locale();
  (*(*(v43 - 8) + 40))(&a1[v42], &a2[v42], v43);
  v44 = a3[19];
  v45 = type metadata accessor for SiriVoiceGender();
  (*(*(v45 - 8) + 40))(&a1[v44], &a2[v44], v45);
  v46 = a3[20];
  v47 = *&a1[v46];
  *&a1[v46] = *&a2[v46];

  v48 = a3[21];
  v49 = &a1[v48];
  v50 = &a2[v48];
  v52 = *v50;
  v51 = *(v50 + 1);
  *v49 = v52;
  *(v49 + 1) = v51;

  v53 = a3[22];
  v54 = &a1[v53];
  v55 = &a2[v53];
  v57 = *v55;
  v56 = *(v55 + 1);
  *v54 = v57;
  *(v54 + 1) = v56;

  v58 = a3[23];
  v59 = &a1[v58];
  v60 = &a2[v58];
  v62 = *v60;
  v61 = *(v60 + 1);
  *v59 = v62;
  *(v59 + 1) = v61;

  v63 = a3[24];
  v64 = type metadata accessor for PersonalDomainsAuthenticationMode();
  v65 = *(v64 - 8);
  v66 = *(v65 + 48);
  v67 = v66(&a1[v63], 1, v64);
  v68 = v66(&a2[v63], 1, v64);
  if (v67)
  {
    if (!v68)
    {
      (*(v65 + 32))(&a1[v63], &a2[v63], v64);
      (*(v65 + 56))(&a1[v63], 0, 1, v64);
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v68)
  {
    (*(v65 + 8))(&a1[v63], v64);
LABEL_24:
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
    memcpy(&a1[v63], &a2[v63], *(*(v69 - 8) + 64));
    goto LABEL_25;
  }

  (*(v65 + 40))(&a1[v63], &a2[v63], v64);
LABEL_25:
  v70 = a3[25];
  v71 = type metadata accessor for BargeInContext();
  v72 = *(v71 - 8);
  v73 = *(v72 + 48);
  v74 = v73(&a1[v70], 1, v71);
  v75 = v73(&a2[v70], 1, v71);
  if (v74)
  {
    if (!v75)
    {
      (*(v72 + 32))(&a1[v70], &a2[v70], v71);
      (*(v72 + 56))(&a1[v70], 0, 1, v71);
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v75)
  {
    (*(v72 + 8))(&a1[v70], v71);
LABEL_30:
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
    memcpy(&a1[v70], &a2[v70], *(*(v76 - 8) + 64));
    goto LABEL_31;
  }

  (*(v72 + 40))(&a1[v70], &a2[v70], v71);
LABEL_31:
  v77 = a3[26];
  v78 = type metadata accessor for Restrictions();
  (*(*(v78 - 8) + 40))(&a1[v77], &a2[v77], v78);
  v79 = a3[27];
  v80 = type metadata accessor for HomeInfo();
  v81 = *(v80 - 8);
  v82 = *(v81 + 48);
  v83 = v82(&a1[v79], 1, v80);
  v84 = v82(&a2[v79], 1, v80);
  if (!v83)
  {
    if (!v84)
    {
      (*(v81 + 40))(&a1[v79], &a2[v79], v80);
      goto LABEL_37;
    }

    (*(v81 + 8))(&a1[v79], v80);
    goto LABEL_36;
  }

  if (v84)
  {
LABEL_36:
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
    memcpy(&a1[v79], &a2[v79], *(*(v85 - 8) + 64));
    goto LABEL_37;
  }

  (*(v81 + 32))(&a1[v79], &a2[v79], v80);
  (*(v81 + 56))(&a1[v79], 0, 1, v80);
LABEL_37:
  v86 = a3[28];
  v87 = &a1[v86];
  v88 = &a2[v86];
  v90 = *v88;
  v89 = *(v88 + 1);
  *v87 = v90;
  *(v87 + 1) = v89;

  *&a1[a3[29]] = *&a2[a3[29]];

  v91 = a3[31];
  *&a1[a3[30]] = *&a2[a3[30]];
  a1[v91] = a2[v91];
  v92 = a3[33];
  a1[a3[32]] = a2[a3[32]];
  a1[v92] = a2[v92];
  return a1;
}

void type metadata completion function for InvocationStateImpl(uint64_t a1)
{
  type metadata accessor for InputOrigin();
  if (v1 <= 0x3F)
  {
    type metadata accessor for InteractionType();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AudioSource?(319, &lazy cache variable for type metadata for AudioSource?, MEMORY[0x1E69D3410]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AudioSource?(319, &lazy cache variable for type metadata for AudioDestination?, MEMORY[0x1E69D35C0]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ResponseMode();
          if (v5 <= 0x3F)
          {
            type metadata accessor for MultiUserState();
            if (v6 <= 0x3F)
            {
              type metadata accessor for Locale();
              if (v7 <= 0x3F)
              {
                type metadata accessor for SiriVoiceGender();
                if (v8 <= 0x3F)
                {
                  type metadata accessor for AudioSource?(319, &lazy cache variable for type metadata for PersonalDomainsAuthenticationMode?, MEMORY[0x1E69D3668]);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for AudioSource?(319, &lazy cache variable for type metadata for BargeInContext?, MEMORY[0x1E69D3588]);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for Restrictions();
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for AudioSource?(319, &lazy cache variable for type metadata for HomeInfo?, MEMORY[0x1E69D3670]);
                        if (v12 <= 0x3F)
                        {
                          swift_initStructMetadata();
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

void type metadata accessor for AudioSource?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t JetsamHelper.defaultTimeout.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultTimeout != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for DispatchTimeInterval();

  return __swift_project_value_buffer(v0, static JetsamHelper.defaultTimeout);
}

char *JetsamHelper.__allocating_init(name:queue:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = &v8[OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v8 + 2) = a1;
  *(v8 + 3) = a2;
  *(v8 + 4) = dispatch_semaphore_create(1);
  *(v8 + 5) = a3;
  v10 = OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout;
  v11 = type metadata accessor for DispatchTimeInterval();
  (*(*(v11 - 8) + 32))(&v8[v10], a4, v11);
  return v8;
}

Swift::Void __swiftcall JetsamHelper.ensureJetsamTransaction()()
{
  OS_dispatch_semaphore.wait()();
  closure #1 in JetsamHelper.ensureJetsamTransaction()(v0);
  OS_dispatch_semaphore.signal()();
}

Swift::Bool __swiftcall JetsamHelper.releaseJetsamTransaction()()
{
  OS_dispatch_semaphore.wait()();
  closure #1 in JetsamHelper.releaseJetsamTransaction()(v0, &v2);
  OS_dispatch_semaphore.signal()();
  return v2;
}

uint64_t one-time initialization function for defaultTimeout()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  __swift_allocate_value_buffer(v0, static JetsamHelper.defaultTimeout);
  *__swift_project_value_buffer(v0, static JetsamHelper.defaultTimeout) = 180;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

{
  v0 = type metadata accessor for DispatchTimeInterval();
  __swift_allocate_value_buffer(v0, static SiriAceLocationProvider.defaultTimeout);
  *__swift_project_value_buffer(v0, static SiriAceLocationProvider.defaultTimeout) = 50;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t static JetsamHelper.defaultTimeout.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultTimeout != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = __swift_project_value_buffer(v2, static JetsamHelper.defaultTimeout);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

char *JetsamHelper.init(name:queue:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = &v4[OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v4 + 2) = a1;
  *(v4 + 3) = a2;
  *(v4 + 4) = dispatch_semaphore_create(1);
  *(v4 + 5) = a3;
  v8 = OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout;
  v9 = type metadata accessor for DispatchTimeInterval();
  (*(*(v9 - 8) + 32))(&v4[v8], a4, v9);
  return v4;
}

void closure #1 in closure #1 in JetsamHelper.ensureJetsamTransaction()(uint64_t a1)
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    OS_dispatch_semaphore.wait()();
    closure #1 in JetsamHelper.releaseJetsamTransaction()(v6, v19);
    OS_dispatch_semaphore.signal()();
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.executor);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19[0] = v11;
      *v10 = 136315394;
      v12 = *(v6 + 16);
      v13 = *(v6 + 24);

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v19);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      (*(v2 + 16))(v4, v6 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout, v1);
      v15 = String.init<A>(describing:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v19);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_1DC659000, v8, v9, "os_transaction(%s) released after %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t JetsamHelper.deinit()
{

  v1 = OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout;
  v2 = type metadata accessor for DispatchTimeInterval();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined consume of (transaction: OS_os_transaction?, timer: OS_dispatch_source_timer)?(*(v0 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction), *(v0 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction + 8));
  return v0;
}

uint64_t type metadata completion function for JetsamHelper(uint64_t a1)
{
  result = type metadata accessor for DispatchTimeInterval();
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

uint64_t static LaunchAppMetricsLogger.logAnalytics(launchApp:)(void *a1)
{
  return specialized static LaunchAppMetricsLogger.logAnalytics(launchApp:)(a1, specialized static LaunchAppMetricsLogger.getSparseCommand(command:));
}

{
  return specialized static LaunchAppMetricsLogger.logAnalytics(launchApp:)(a1, specialized static LaunchAppMetricsLogger.getSparseCommand(command:));
}

id specialized static LaunchAppMetricsLogger.getSparseCommand(command:)(void *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = [objc_allocWithZone(MEMORY[0x1E69C7860]) init];
  v8 = [a1 appId];
  if (v8)
  {
    v9 = v8;
    v10 = v7;
    [v10 setAppId_];
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v3 + 8))(v5, v2);
  return v7;
}

{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = [objc_allocWithZone(MEMORY[0x1E69C7718]) init];
  v8 = [a1 appId];
  if (v8)
  {
    v9 = v8;
    v10 = v7;
    [v10 setAppId_];
  }

  v11 = [a1 launchId];
  if (v11)
  {
    v12 = v11;
    [v7 setLaunchId_];
  }

  v13 = [a1 applicationClientIdentifier];
  if (v13)
  {
    v14 = v13;
    [v7 setApplicationClientIdentifier_];
  }

  v15 = [a1 callbacks];
  if (v15)
  {
    v16 = v15;
    v17 = v7;
    [v17 setCallbacks_];
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t specialized static LaunchAppMetricsLogger.logAnalytics(launchApp:)(void *a1)
{
  return specialized static LaunchAppMetricsLogger.logAnalytics(launchApp:)(a1, specialized static LaunchAppMetricsLogger.getSparseCommand(command:));
}

{
  return specialized static LaunchAppMetricsLogger.logAnalytics(launchApp:)(a1, specialized static LaunchAppMetricsLogger.getSparseCommand(command:));
}

uint64_t specialized static LaunchAppMetricsLogger.logAnalytics(launchApp:)(void *a1, uint64_t (*a2)(id))
{
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v8 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.instrumentation);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_1DC659000, v11, v12, "Logging LaunchApp to AFAnalytics: %@", v13, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v30 = v16;
  v17 = a2(v10);
  v18 = [v17 dictionary];
  if (v18)
  {
    v19 = v18;
    v29 = type metadata accessor for NSMutableDictionary();
    *&v28 = v19;
    outlined init with take of Any(&v28, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v16;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, 0x6C46746E65696C43, 0xEE0077656956776FLL, isUniquelyReferenced_nonNull_native);
    v21 = v26;
    v30 = v26;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x6C46746E65696C43, 0xEE0077656956776FLL, &v28);
    outlined destroy of ReferenceResolutionClientProtocol?(&v28, &_sypSgMd, &_sypSgMR);
    v21 = v30;
  }

  v22 = [objc_opt_self() sharedAnalytics];
  if (v22)
  {
    v23 = v22;
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v21);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v23 logEventWithType:3700 context:isa];
  }

  else
  {
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v5 + 8))(v7, v4);
}

unint64_t type metadata accessor for NSMutableDictionary()
{
  result = lazy cache variable for type metadata for NSMutableDictionary;
  if (!lazy cache variable for type metadata for NSMutableDictionary)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSMutableDictionary);
  }

  return result;
}

uint64_t one-time initialization function for kLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, kLogger);
  v1 = __swift_project_value_buffer(v0, kLogger);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.executor);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, kLogger);
  v1 = __swift_project_value_buffer(v0, kLogger);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.executor);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, kLogger);
  v1 = __swift_project_value_buffer(v0, kLogger);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.executor);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, kLogger);
  v1 = __swift_project_value_buffer(v0, kLogger);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.executor);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}