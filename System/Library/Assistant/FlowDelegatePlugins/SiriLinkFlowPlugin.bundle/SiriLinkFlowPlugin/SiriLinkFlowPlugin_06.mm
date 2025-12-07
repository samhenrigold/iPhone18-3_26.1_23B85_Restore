uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

{
  type metadata accessor for WFSmartPromptButtonIdentifier(0);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LNSystemProtocol();
  return static NSObject.== infix(_:_:)() & 1;
}

{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t outlined bridged method (pb) of @objc INObject.identifier.getter(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, uint64_t *a2)
{
  return specialized closure #1 in Sequence<>.contains(_:)(*a1, *a2) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(*a1, *a2) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(*a1, a1[1], *a2, a2[1]) & 1;
}

uint64_t outlined init with copy of UsoEntity_common_VoiceCommandConfirmation.DefinedValues?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMd, _s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_24(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id OUTLINED_FUNCTION_4_21()
{
  v3 = *(*(v1 - 96) + 8 * v0 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_5_12()
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t OUTLINED_FUNCTION_17_12()
{

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
}

uint64_t OUTLINED_FUNCTION_18_12()
{
}

uint64_t OUTLINED_FUNCTION_19_6()
{

  return specialized _ArrayBuffer._getElementSlowPath(_:)();
}

uint64_t OUTLINED_FUNCTION_20_9()
{
  v2 = *(v0 - 96);

  return specialized Array.count.getter(v2);
}

Swift::Bool __swiftcall INIntent.requiresDeviceToBeUnlocked()()
{
  if ([v0 _isUserConfirmationRequired])
  {
    v1 = [v0 typeName];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    v13[0] = v2;
    v13[1] = v4;
    __chkstk_darwin(v5);
    v12[2] = v13;
    LOBYTE(v1) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v12, &outlined read-only object #0 of one-time initialization function for parityIntentsList);

    v6 = v1 ^ 1;
    return v6 & 1;
  }

  v7 = INIntent.category()();
  v8 = v7._countAndFlagsBits == 0x59524F4745544143 && v7._object == 0xEE00524544524F5FLL;
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v7._countAndFlagsBits == 0xD000000000000011 ? (v9 = 0x8000000000231C10 == v7._object) : (v9 = 0), v9))
  {

    goto LABEL_17;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
LABEL_17:
    v6 = 1;
    return v6 & 1;
  }

  return INIntent.isRestricted()();
}

Swift::String __swiftcall INIntent.category()()
{
  v1 = [v0 _metadata];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 intentCategory];

    switch(v3)
    {
      case 1:
        v4 = @"CATEGORY_INFORMATION";
        goto LABEL_25;
      case 2:
        v4 = @"CATEGORY_PLAY_AUDIO";
        goto LABEL_25;
      case 3:
        v4 = @"CATEGORY_PLAY_VIDEO";
        goto LABEL_25;
      case 4:
        v4 = @"CATEGORY_ORDER";
        goto LABEL_25;
      case 5:
        v4 = @"CATEGORY_NAVIGATION";
        goto LABEL_25;
      case 6:
        v4 = @"CATEGORY_START";
        goto LABEL_25;
      case 7:
        v4 = @"CATEGORY_SHARE";
        goto LABEL_25;
      case 8:
        v4 = @"CATEGORY_CREATE";
        goto LABEL_25;
      case 9:
        v4 = @"CATEGORY_SEARCH";
        goto LABEL_25;
      case 11:
        v4 = @"CATEGORY_TOGGLE";
        goto LABEL_25;
      case 12:
        v4 = @"CATEGORY_DOWNLOAD";
        goto LABEL_25;
      case 13:
        v4 = @"CATEGORY_LOG";
        goto LABEL_25;
      case 14:
        v4 = @"CATEGORY_CHECK_IN";
        goto LABEL_25;
      case 15:
        v4 = @"CATEGORY_WORKFLOW";
        goto LABEL_25;
      case 16:
        v4 = @"CATEGORY_REQUEST";
        goto LABEL_25;
      case 17:
        v4 = @"CATEGORY_SET";
        goto LABEL_25;
      case 18:
        v4 = @"CATEGORY_CALL_AUDIO";
        goto LABEL_25;
      case 19:
        v4 = @"CATEGORY_CALL_VIDEO";
        goto LABEL_25;
      case 20:
        v4 = @"CATEGORY_PLAY_SOUND";
        goto LABEL_25;
      case 21:
        v4 = @"CATEGORY_USER_ACTIVITY";
LABEL_25:
        v7 = v4;
        break;
      default:
        v4 = [NSString stringWithFormat:@"(unknown: %i)", v3];
        break;
    }

    v8 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v9;
  }

  else
  {
    v5 = 0x8000000000231C30;
    v6 = 0xD000000000000014;
  }

  v10 = v6;
  v11 = v5;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::Bool __swiftcall INIntent.isRestricted()()
{
  v1 = v0;
  v2 = [v0 _codableDescription];
  v3 = [v2 schema];

  if (!v3 || (v4 = [v3 dictionaryRepresentationForIntent:v1], v3, !v4) || (v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v4, !v5))
  {
    v22 = 0u;
    v23 = 0u;
    goto LABEL_25;
  }

  specialized Dictionary.subscript.getter(v5, &v22, 0x746E65746E494E49, 0xE900000000000073);

  if (!*(&v23 + 1))
  {
LABEL_25:
    outlined destroy of Any?(&v22);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  result = swift_dynamicCast();
  if (!result)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(v20 + 16);
  while (1)
  {
    if (v8 == v7)
    {

      return 0;
    }

    if (v7 >= *(v20 + 16))
    {
      __break(1u);
      return result;
    }

    v9 = *(v20 + 8 * v7 + 32);
    v10 = *(v9 + 16);

    if (v10)
    {
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x8000000000231C50);
      if ((v12 & 1) != 0 && (outlined init with copy of Any(*(v9 + 56) + 32 * v11, &v22), swift_dynamicCast()))
      {
        v13 = v20;
        v10 = v21;
      }

      else
      {
        v13 = 0;
        v10 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = [v1 _className];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (!v10)
    {

      goto LABEL_23;
    }

    if (v13 == v15 && v10 == v17)
    {
      break;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_30;
    }

LABEL_23:

    ++v7;
  }

LABEL_30:

  specialized Dictionary.subscript.getter(v9, &v22, 0xD000000000000014, 0x8000000000231C70);

  if (!*(&v23 + 1))
  {
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
    return v20 > 0;
  }

  return 0;
}

Swift::String __swiftcall INIntent.verb()()
{
  v0 = INIntent.verb()(&selRef_categoryVerb);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Bool __swiftcall INIntent.shouldSupressIntentResponseDialog()()
{
  v1 = [v0 typeName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.lowercased()();

  if ((INIntent.showsWhenRun.getter() & 1) != 0 && (v19 = String.lowercased()()._countAndFlagsBits, v2 = lazy protocol witness table accessor for type String and conformance String(), v9 = OUTLINED_FUNCTION_0_18(v2, &type metadata for String, v3, v4, v5, v6, v7, v8, v19), , (v9 & 1) == 0))
  {
    countAndFlagsBits = String.lowercased()()._countAndFlagsBits;
    v10 = OUTLINED_FUNCTION_0_18(countAndFlagsBits, &type metadata for String, v12, v13, v14, v15, v16, v17, countAndFlagsBits);
  }

  else
  {

    v10 = 1;
  }

  return v10 & 1;
}

id INIntent.showsWhenRun.getter()
{
  v1 = [v0 _metadata];
  if (!v1)
  {
    return &dword_0 + 1;
  }

  v2 = v1;
  v3 = [v1 showsWhenRun];

  return v3;
}

uint64_t INIntent.verb()(SEL *a1)
{
  v3 = [v1 _metadata];
  if (!v3 || (result = outlined bridged method (ob) of @objc _INPBIntentMetadata.launchId.getter(v3, a1), !v5))
  {

    return 0;
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc _INPBIntentMetadata.launchId.getter(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t OUTLINED_FUNCTION_0_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return StringProtocol.contains<A>(_:)();
}

uint64_t static LocaleUtils.siriLanguageCode()()
{
  v0 = [objc_opt_self() sharedPreferences];
  if (!v0 || (result = outlined bridged method (ob) of @objc INPreferences._cachedSiriLanguageCode.getter(v0, &selRef__cachedSiriLanguageCode), !v2))
  {

    return 28261;
  }

  return result;
}

uint64_t static LocaleUtils.getPreferredLocationFromIntent(intentName:preferredLanguageCode:)(uint64_t a1, unint64_t a2)
{
  v2 = static LocaleUtils.getBundle(intentName:)(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  isa = [v2 localizations];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v5 = objc_opt_self();
  v6 = Array._bridgeToObjectiveC()().super.isa;
  v7 = [v5 preferredLocalizationsFromArray:isa forPreferences:v6];

  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return v8;
}

uint64_t static LocaleUtils.getLocale(preferredLocalizations:)(void *a1)
{
  v2 = [objc_opt_self() sharedPreferences];
  if (v2 && (v3 = outlined bridged method (ob) of @objc INPreferences._cachedSiriLanguageCode.getter(v2, &selRef__cachedSiriLanguageCode), v4))
  {
    v5 = v3;
    v6 = v4;
    if (!a1)
    {
      return OUTLINED_FUNCTION_22_4();
    }
  }

  else
  {

    v6 = 0xE200000000000000;
    v5 = 28261;
    if (!a1)
    {
      return OUTLINED_FUNCTION_22_4();
    }
  }

  if (a1[2])
  {
    v8 = a1[4];
    v7 = a1[5];
    swift_bridgeObjectRetain_n();
    specialized Collection.prefix(_:)(2, v8, v7);
    v9 = Substring.lowercased()();

    specialized Collection.prefix(_:)(2, v5, v6);
    v10 = Substring.lowercased()();

    if (v9._countAndFlagsBits != v10._countAndFlagsBits || v9._object != v10._object)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return OUTLINED_FUNCTION_22_4();
}

uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();
    OUTLINED_FUNCTION_7_13();
    String.subscript.getter();
    OUTLINED_FUNCTION_11_11();

    return OUTLINED_FUNCTION_12_12();
  }

  return result;
}

unint64_t specialized Collection.prefix(_:)(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v12 = _CocoaArrayWrapper.subscript.getter();

    return v12;
  }

  v4 = specialized Array.count.getter(a2);
  v5 = specialized Array.index(_:offsetBy:limitedBy:)(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  specialized Array._checkIndex(_:)(0, a2);
  v8 = OUTLINED_FUNCTION_22_4();
  specialized Array._checkIndex(_:)(v8, v9);
  if ((a2 & 0xC000000000000001) != 0 && v7)
  {
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNStaticDeferredLocalizedString, LNStaticDeferredLocalizedString_ptr);

    v10 = 0;
    do
    {
      v11 = v10 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v10);
      v10 = v11;
    }

    while (v7 != v11);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

uint64_t one-time initialization function for TargetNodesForType()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SaySSGtGMd, &_ss23_ContiguousArrayStorageCySS_SaySSGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B6F0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000000022E080;
  *(inited + 48) = &outlined read-only object #0 of one-time initialization function for TargetNodesForType;
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x8000000000231EE0;
  *(inited + 72) = &outlined read-only object #1 of one-time initialization function for TargetNodesForType;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000000231F00;
  *(inited + 96) = &outlined read-only object #2 of one-time initialization function for TargetNodesForType;
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x8000000000231F20;
  *(inited + 120) = &outlined read-only object #3 of one-time initialization function for TargetNodesForType;
  strcpy((inited + 128), "foundation.URL");
  *(inited + 143) = -18;
  *(inited + 144) = &outlined read-only object #4 of one-time initialization function for TargetNodesForType;
  *(inited + 152) = 0xD000000000000019;
  *(inited + 160) = 0x8000000000231F40;
  *(inited + 168) = &outlined read-only object #5 of one-time initialization function for TargetNodesForType;
  *(inited + 176) = 0xD000000000000017;
  *(inited + 184) = 0x8000000000231F60;
  *(inited + 192) = &outlined read-only object #6 of one-time initialization function for TargetNodesForType;
  *(inited + 200) = 0xD000000000000019;
  *(inited + 208) = 0x8000000000231F80;
  *(inited + 216) = &outlined read-only object #7 of one-time initialization function for TargetNodesForType;
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x8000000000231FA0;
  *(inited + 240) = &outlined read-only object #8 of one-time initialization function for TargetNodesForType;
  *(inited + 248) = 0xD000000000000016;
  *(inited + 256) = 0x8000000000231FC0;
  *(inited + 264) = &outlined read-only object #9 of one-time initialization function for TargetNodesForType;
  *(inited + 272) = 0xD000000000000011;
  *(inited + 280) = 0x8000000000231FE0;
  *(inited + 288) = &outlined read-only object #10 of one-time initialization function for TargetNodesForType;
  *(inited + 296) = 0x697461646E756F66;
  *(inited + 304) = 0xEF7373614D2E6E6FLL;
  *(inited + 312) = &outlined read-only object #11 of one-time initialization function for TargetNodesForType;
  *(inited + 320) = 0xD000000000000011;
  *(inited + 328) = 0x8000000000232000;
  *(inited + 336) = &outlined read-only object #12 of one-time initialization function for TargetNodesForType;
  *(inited + 344) = 0xD000000000000010;
  *(inited + 352) = 0x8000000000232020;
  *(inited + 360) = &outlined read-only object #13 of one-time initialization function for TargetNodesForType;
  *(inited + 368) = 0xD000000000000011;
  *(inited + 376) = 0x8000000000232040;
  *(inited + 384) = &outlined read-only object #14 of one-time initialization function for TargetNodesForType;
  *(inited + 392) = 0xD000000000000018;
  *(inited + 400) = 0x8000000000232060;
  *(inited + 408) = &outlined read-only object #15 of one-time initialization function for TargetNodesForType;
  *(inited + 416) = 0xD000000000000014;
  *(inited + 424) = 0x8000000000232080;
  *(inited + 432) = &outlined read-only object #16 of one-time initialization function for TargetNodesForType;
  *(inited + 440) = 0xD000000000000011;
  *(inited + 448) = 0x80000000002320A0;
  *(inited + 456) = &outlined read-only object #17 of one-time initialization function for TargetNodesForType;
  *(inited + 464) = 0x697461646E756F66;
  *(inited + 472) = 0xEF656C69462E6E6FLL;
  *(inited + 480) = _swiftEmptyArrayStorage;
  *(inited + 488) = 0xD000000000000011;
  *(inited + 496) = 0x800000000022E0A0;
  *(inited + 504) = &outlined read-only object #18 of one-time initialization function for TargetNodesForType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  result = Dictionary.init(dictionaryLiteral:)();
  static INCodableAttribute.TargetNodesForType = result;
  return result;
}

void INCodableAttribute.localizedPrompt(promptDialogType:intent:appInfo:tokens:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_16_10();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = [v26 promptDialogWithType:v35];
  if (v36)
  {
    v37 = v36;
    v75 = v30;
    v38 = static LocaleUtils.siriLanguageCode()();
    v40 = v39;
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.voiceCommands);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_48();
      v45 = OUTLINED_FUNCTION_85();
      a14 = v45;
      *v44 = 136315138;
      *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &a14);
      _os_log_impl(&dword_0, v42, v43, "INCodableAttribute localized prompt, siri locale: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_15_0(v44);
    }

    v46 = INCodableAttributePromptDialog.getLanguageCode()();
    v47 = [v37 formatString];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v76 = static LocaleUtils.getContentLocale(dialogLocale:appInfo:formatString:)(v46.value._countAndFlagsBits, v46.value._object, v32, v48, v50);
    v52 = v51;

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      a14 = v56;
      *v55 = 136315394;
      v74 = v34;
      v57 = v40;
      if (v52)
      {
        v58 = v76;
      }

      else
      {
        v58 = 7104878;
      }

      if (v52)
      {
        v59 = v52;
      }

      else
      {
        v59 = 0xE300000000000000;
      }

      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &a14);

      *(v55 + 4) = v60;
      v40 = v57;
      *(v55 + 12) = 2080;
      if (v46.value._object)
      {
        countAndFlagsBits = v46.value._countAndFlagsBits;
      }

      else
      {
        countAndFlagsBits = 7104878;
      }

      if (v46.value._object)
      {
        object = v46.value._object;
      }

      else
      {
        object = 0xE300000000000000;
      }

      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &a14);

      *(v55 + 14) = v63;
      v34 = v74;
      _os_log_impl(&dword_0, v53, v54, "INCodableAttribute localized prompt, content locale: %s, dialog language code: %s", v55, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_0(v56);
      OUTLINED_FUNCTION_15_0(v55);
    }

    else
    {
    }

    v64 = static LocaleUtils.compatibleLocale(siriLocale:contentLocale:)(v38, v40, v76, v52);

    if (v64)
    {
      if (v75)
      {
        v65.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v65.super.isa = 0;
      }

      v72 = String._bridgeToObjectiveC()();

      v73 = [v37 localizedDialogWithIntent:v34 tokens:v65.super.isa forLanguage:v72];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_11_11();

      goto LABEL_32;
    }
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v66 = type metadata accessor for Logger();
  __swift_project_value_buffer(v66, static Logger.voiceCommands);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_17_11(v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    OUTLINED_FUNCTION_25(&dword_0, v70, v71, "INCodableAttribute localized prompt dialog is nil");
    OUTLINED_FUNCTION_15_0(v69);
  }

LABEL_32:
  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_15_10();
}

Swift::String_optional __swiftcall INCodableAttributePromptDialog.getLanguageCode()()
{
  v1 = outlined bridged method (pb) of @objc SAAppInfo.appNameMap.getter(v0, &selRef_dictionaryRepresentation, (&type metadata for Any + 1));
  if (!v1)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.voiceCommands);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_17_11(v16))
    {
      goto LABEL_15;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "INCodableAttributePromptDialog dictionary is nil";
    goto LABEL_14;
  }

  v2 = v1;
  OUTLINED_FUNCTION_2_21();
  specialized Dictionary.subscript.getter(v2, v4, 0xD000000000000035, v3);

  if (!v28)
  {
    outlined destroy of Any?(v27);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3_17(v5, v6, v7, &type metadata for String, v8, v9, v10, v11, v24);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.voiceCommands);
    v15 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_17_11(v22))
    {
      goto LABEL_15;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "INCodableAttributePromptDialog language code is nil";
LABEL_14:
    OUTLINED_FUNCTION_25(&dword_0, v17, v18, v20);
    OUTLINED_FUNCTION_15_0(v19);
LABEL_15:

    v12 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  v12 = v25;
  v13 = v26;
LABEL_16:
  result.value._object = v13;
  result.value._countAndFlagsBits = v12;
  return result;
}

uint64_t static LocaleUtils.getContentLocale(dialogLocale:appInfo:formatString:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, char *a5)
{
  if (!a5)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.voiceCommands);
    v21 = a3;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_48();
      v25 = OUTLINED_FUNCTION_85();
      v46 = v25;
      *v24 = 136315138;
      if (a3 && (v26 = SAAppInfo.getAppLanguage()(), v26.value._object))
      {
        countAndFlagsBits = v26.value._countAndFlagsBits;
        object = v26.value._object;
      }

      else
      {
        countAndFlagsBits = 7104878;

        object = 0xE300000000000000;
      }

      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v46);

      *(v24 + 4) = v41;
      OUTLINED_FUNCTION_18_13(&dword_0, v42, v43, "LocationUtils.getContentLocale(), format String is nil, appInfo language: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      OUTLINED_FUNCTION_15_0(v25);
      OUTLINED_FUNCTION_11_0();
    }

    if (!a3 || (v44 = SAAppInfo.getAppLanguage()(), v40 = v44.value._countAndFlagsBits, !v44.value._object))
    {

      return 28261;
    }

    return v40;
  }

  type metadata accessor for CATSpeakableString();
  v10 = static CATSpeakableString.getPropertiesInTemplateString(templateString:)(a4, a5)[2];

  if (v10)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.voiceCommands);
    v12 = a3;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_48();
      v16 = OUTLINED_FUNCTION_85();
      v46 = v16;
      *v15 = 136315138;
      if (a3 && (v17 = SAAppInfo.getAppLanguage()(), v17.value._object))
      {
        v18 = v17.value._countAndFlagsBits;
        v19 = v17.value._object;
      }

      else
      {
        v18 = 7104878;

        v19 = 0xE300000000000000;
      }

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v46);

      *(v15 + 4) = v37;
      OUTLINED_FUNCTION_18_13(&dword_0, v38, v39, "LocationUtils.getContentLocale(), appInfo language: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      OUTLINED_FUNCTION_15_0(v16);
      OUTLINED_FUNCTION_11_0();
    }

    if (a3)
    {
      return SAAppInfo.getAppLanguage()().value._countAndFlagsBits;
    }

    return 0;
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.voiceCommands);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_48();
      v33 = OUTLINED_FUNCTION_85();
      v46 = v33;
      *v32 = 136315138;
      if (a2)
      {
        v34 = a1;
      }

      else
      {
        v34 = 7104878;
      }

      if (a2)
      {
        v35 = a2;
      }

      else
      {
        v35 = 0xE300000000000000;
      }

      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v46);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_0, v30, v31, "LocationUtils.getContentLocale(), no properties in template, dialogLocale: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_15_0(v32);
    }
  }

  return a1;
}

BOOL static LocaleUtils.compatibleLocale(siriLocale:contentLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = static LocaleUtils.extractLanguageCode(locale:)();
    v6 = v5;
    OUTLINED_FUNCTION_22_4();
    v7 = static LocaleUtils.extractLanguageCode(locale:)();
    v9 = v8;
    v10 = v4 == 26746 && v6 == 0xE200000000000000;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v4 == 6649209 ? (v11 = v6 == 0xE300000000000000) : (v11 = 0), v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v13 = &outlined read-only object #0 of static LocaleUtils.compatibleLocale(siriLocale:contentLocale:);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
      v12 = swift_allocObject();
      v13 = v12;
      *(v12 + 16) = xmmword_216850;
      *(v12 + 32) = v4;
      *(v12 + 40) = v6;
    }

    v17[0] = v7;
    v17[1] = v9;
    __chkstk_darwin(v12);
    v16[2] = v17;
    v14 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v16, v13);
  }

  else
  {
    return 1;
  }

  return v14;
}

uint64_t INCodableAttribute.localizedUnsupportedDialog(unsupportedReasonCode:intent:appInfo:tokens:)(uint64_t a1, uint64_t a2, void *a3, Class isa)
{
  v8 = [v4 unsupportedReasonWithIndex:a1];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v25 = a2;
  v10 = static LocaleUtils.siriLanguageCode()();
  v12 = v11;
  v13 = INCodableAttributeUnsupportedReason.getLanguageCode()();
  v14 = [v9 formatString];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = static LocaleUtils.getContentLocale(dialogLocale:appInfo:formatString:)(v13.value._countAndFlagsBits, v13.value._object, a3, v15, v17);
  v20 = v19;

  LOBYTE(v17) = static LocaleUtils.compatibleLocale(siriLocale:contentLocale:)(v10, v12, v18, v20);

  if ((v17 & 1) == 0)
  {

    return 0;
  }

  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v21 = String._bridgeToObjectiveC()();

  v22 = [v9 localizedDialogWithIntent:v25 tokens:isa forLanguage:v21];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v23;
}

Swift::String_optional __swiftcall INCodableAttributeUnsupportedReason.getLanguageCode()()
{
  v1 = outlined bridged method (pb) of @objc SAAppInfo.appNameMap.getter(v0, &selRef_dictionaryRepresentation, (&type metadata for Any + 1));
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  OUTLINED_FUNCTION_2_21();
  specialized Dictionary.subscript.getter(v2, v4, 0xD00000000000003ALL, v3);

  if (!v18)
  {
    outlined destroy of Any?(v17);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_3_17(v5, v6, v7, &type metadata for String, v8, v9, v10, v11, v14);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v1 = 0;
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v1 = v15;
  v12 = v16;
LABEL_8:
  result.value._object = v12;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::Bool __swiftcall INCodableAttribute.requiresDictationPrompt()()
{
  v4[0] = INCodableAttribute.typeString()();
  v4[1] = v0;
  v3[2] = v4;
  v1 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, &outlined read-only object #0 of one-time initialization function for TypesRequiringDictationMode);

  return v1;
}

uint64_t INCodableAttribute.typeString()()
{
  if ([v0 valueType] || (v8 = outlined bridged method (pb) of @objc INCodableDescription.dictionaryRepresentation()(v0)) == 0)
  {
    v1 = static CustomTypeReference.fromSlotValueType(valueType:)([v0 valueType]);
    v3 = v2;
    v5 = v4;
    v17 = v1;

    v6._countAndFlagsBits = 46;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);

    v7._countAndFlagsBits = v3;
    v7._object = v5;
    String.append(_:)(v7);
  }

  else
  {
    v9 = static CustomTypeReference.buildFromAttributeHash(attributeHash:)(v8);
    v11 = v10;
    v13 = v12;

    v17 = v9;

    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);

    v15._countAndFlagsBits = v11;
    v15._object = v13;
    String.append(_:)(v15);
  }

  return v17;
}

void *INCodableAttribute.promptTargets()()
{
  if (one-time initialization token for TargetNodesForType != -1)
  {
    swift_once();
  }

  v0 = static INCodableAttribute.TargetNodesForType;
  v1 = INCodableAttribute.typeString()();
  v3 = specialized Dictionary.subscript.getter(v1, v2, v0);

  if (v3)
  {
    return v3;
  }

  else
  {
    return _swiftEmptyArrayStorage;
  }
}

void *INCodableAttribute.disambiguationPromptTargets()()
{
  v1 = INCodableAttribute.promptTargets()();
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of INCodableAttribute.disambiguationPromptTargets());
  return v1;
}

uint64_t *LocaleUtils.intentBundleCache.unsafeMutableAddressor()
{
  if (one-time initialization token for intentBundleCache != -1)
  {
    OUTLINED_FUNCTION_1_25(&one-time initialization token for intentBundleCache);
  }

  return &static LocaleUtils.intentBundleCache;
}

double static LocaleUtils.intentBundleCache.getter()
{
  if (one-time initialization token for intentBundleCache != -1)
  {
    OUTLINED_FUNCTION_1_25(&one-time initialization token for intentBundleCache);
  }

  swift_beginAccess();

  return result;
}

uint64_t static LocaleUtils.intentBundleCache.setter(uint64_t a1)
{
  if (one-time initialization token for intentBundleCache != -1)
  {
    OUTLINED_FUNCTION_1_25(&one-time initialization token for intentBundleCache);
  }

  swift_beginAccess();
  static LocaleUtils.intentBundleCache = a1;
}

uint64_t (*static LocaleUtils.intentBundleCache.modify())(uint64_t a1)
{
  if (one-time initialization token for intentBundleCache != -1)
  {
    OUTLINED_FUNCTION_1_25(&one-time initialization token for intentBundleCache);
  }

  OUTLINED_FUNCTION_22_4();
  swift_beginAccess();
  return static LocaleUtils.intentBundleCache.modify;
}

double key path getter for static LocaleUtils.intentBundleCache : LocaleUtils.Type@<D0>(void *a1@<X8>)
{
  LocaleUtils.intentBundleCache.unsafeMutableAddressor();
  swift_beginAccess();
  *a1 = static LocaleUtils.intentBundleCache;

  return result;
}

uint64_t key path setter for static LocaleUtils.intentBundleCache : LocaleUtils.Type(uint64_t *a1)
{
  v1 = *a1;

  LocaleUtils.intentBundleCache.unsafeMutableAddressor();
  swift_beginAccess();
  static LocaleUtils.intentBundleCache = v1;
}

Swift::String_optional __swiftcall SAAppInfo.getAppLanguage()()
{
  if ((SAAppInfo.isShortcutsApp()() & 1) == 0)
  {
    goto LABEL_33;
  }

  v1 = outlined bridged method (pb) of @objc SAAppInfo.displayAppName.getter(v0);
  if (!v2)
  {
    goto LABEL_33;
  }

  v3 = v1;
  v4 = v2;
  v5 = outlined bridged method (pb) of @objc SAAppInfo.appNameMap.getter(v0, &selRef_appNameMap, &type metadata for String);
  if (!v5)
  {
LABEL_32:

LABEL_33:
    v8 = [v0 appIdentifyingInfo];
    if (!v8)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v24 = outlined bridged method (ob) of @objc INPreferences._cachedSiriLanguageCode.getter(v8, &selRef_bundleId);
    if (!v25)
    {
      goto LABEL_40;
    }

    if (v24 == 0xD000000000000026 && v25 == 0x8000000000231C90)
    {

      goto LABEL_47;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
LABEL_40:
      v8 = [v0 appIdentifyingInfo];
      if (!v8)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v8 = outlined bridged method (ob) of @objc INPreferences._cachedSiriLanguageCode.getter(v8, &selRef_bundleId);
      if (!v9)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v28 = v8;
      v29 = v9;
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSBundle, NSBundle_ptr);
      v30 = @nonobjc NSBundle.__allocating_init(identifier:)(v28, v29);
      if (v30)
      {
        v31 = v30;
        v32 = [v30 developmentLocalization];
        if (v32)
        {
          v33 = v32;
          v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v10 = v34;

          goto LABEL_48;
        }
      }
    }

LABEL_47:
    v11 = 0;
    v10 = 0;
    goto LABEL_48;
  }

  v6 = v5;
  if (!*(v5 + 16))
  {

    goto LABEL_32;
  }

  if (v3 != 0x74756374726F6853 || v4 != 0xE900000000000073)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((v8 & 1) == 0)
    {
      v12 = 0;
      v13 = 1 << *(v6 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v6 + 64);
      v16 = (v13 + 63) >> 6;
      while (v15)
      {
LABEL_20:
        v18 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v19 = (v12 << 10) | (16 * v18);
        v20 = (*(v6 + 48) + v19);
        v11 = *v20;
        v10 = v20[1];
        v21 = (*(v6 + 56) + v19);
        v8 = *v21;
        v9 = v21[1];
        if (*v21 != v3 || v4 != v9)
        {
          v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((v8 & 1) == 0)
          {
            continue;
          }
        }

        if (v11 != 1702060354 || v10 != 0xE400000000000000)
        {
          v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((v8 & 1) == 0)
          {

            goto LABEL_48;
          }
        }
      }

      while (1)
      {
        v17 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v17 >= v16)
        {

          goto LABEL_32;
        }

        v15 = *(v6 + 64 + 8 * v17);
        ++v12;
        if (v15)
        {
          v12 = v17;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_50;
    }
  }

  v10 = 0xE200000000000000;
  v11 = 28261;
LABEL_48:
  v8 = v11;
  v9 = v10;
LABEL_53:
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

uint64_t static LocaleUtils.extractLanguageCode(locale:)()
{
  OUTLINED_FUNCTION_7_13();
  specialized Collection<>.firstIndex(of:)(v0, v1, v2, v3);
  if (v4 & 1) != 0 && (OUTLINED_FUNCTION_7_13(), specialized Collection<>.firstIndex(of:)(v5, v6, v7, v8), (v9))
  {
    OUTLINED_FUNCTION_22_4();

    return String.lowercased()()._countAndFlagsBits;
  }

  else
  {
    OUTLINED_FUNCTION_7_13();
    String.subscript.getter();
    static String._fromSubstring(_:)();
    OUTLINED_FUNCTION_11_11();

    OUTLINED_FUNCTION_12_12();
    countAndFlagsBits = String.lowercased()()._countAndFlagsBits;

    return countAndFlagsBits;
  }
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = String.index(after:)())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (String.subscript.getter() == a1 && v9 == a2)
    {
      break;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    if (*(v7 - 1) == a1 && *v7 == a2)
    {
      return v5;
    }

    OUTLINED_FUNCTION_7_13();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

unint64_t specialized Collection.subscript.getter(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

id static LocaleUtils.getBundle(intentName:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for intentBundleCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static LocaleUtils.intentBundleCache;
  if (*(static LocaleUtils.intentBundleCache + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v8 = v7;
  }

  else
  {
    swift_endAccess();
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSBundle, NSBundle_ptr);
    v9 = static LocaleUtils.getBundleId(intentName:)(a1, a2);
    v7 = @nonobjc NSBundle.__allocating_init(identifier:)(v9, v10);
    if (v7)
    {
      swift_beginAccess();
      v11 = v7;
      swift_isUniquelyReferenced_nonNull_native();
      v13 = static LocaleUtils.intentBundleCache;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, a1, a2);
      static LocaleUtils.intentBundleCache = v13;
      swift_endAccess();
    }
  }

  return v7;
}

uint64_t static LocaleUtils.getBundleId(intentName:)(uint64_t a1, unint64_t a2)
{
  v4 = String.count.getter();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = String.count.getter();

  if (v5 >= v4)
  {
    return 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.count.getter();

  lazy protocol witness table accessor for type String and conformance String();

  v6 = String.Index.init<A>(utf16Offset:in:)();
  specialized Collection.subscript.getter(v6, a1, a2);
  lazy protocol witness table accessor for type Substring and conformance Substring();
  v7 = StringProtocol.components<A>(separatedBy:)();

  if (*(v7 + 16) <= 1uLL)
  {

    return 0;
  }

  specialized Array.subscript.getter(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySSGMd, &_ss10ArraySliceVySSGMR);
  lazy protocol witness table accessor for type ArraySlice<String> and conformance ArraySlice<A>();
  v8 = BidirectionalCollection<>.joined(separator:)();
  swift_unknownObjectRelease();
  return v8;
}

id @nonobjc NSBundle.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v2 = String._bridgeToObjectiveC()();

  v3 = [swift_getObjCClassFromMetadata() bundleWithIdentifier:v2];

  return v3;
}

id SAAppInfo.isShortcutsApp()()
{
  result = [v0 appIdentifyingInfo];
  if (result)
  {
    v2 = outlined bridged method (ob) of @objc INPreferences._cachedSiriLanguageCode.getter(result, &selRef_bundleId);
    if (v3)
    {
      if (v2 == 0xD000000000000013 && v3 == 0x800000000022F740)
      {
        goto LABEL_16;
      }

      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v5)
      {
        v6 = 1;
        return (v6 & 1);
      }
    }

    result = [v0 appIdentifyingInfo];
    if (result)
    {
      v7 = outlined bridged method (ob) of @objc INPreferences._cachedSiriLanguageCode.getter(result, &selRef_bundleId);
      if (!v8)
      {
        v6 = 0;
        return (v6 & 1);
      }

      if (v7 != 0xD000000000000026 || v8 != 0x8000000000231C90)
      {
        v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_17:

        return (v6 & 1);
      }

LABEL_16:
      v6 = 1;
      goto LABEL_17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined bridged method (pb) of @objc SAAppInfo.displayAppName.getter(void *a1)
{
  v1 = [a1 displayAppName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc INPreferences._cachedSiriLanguageCode.getter(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_11_11();
  }

  return OUTLINED_FUNCTION_12_12();
}

uint64_t outlined bridged method (pb) of @objc SAAppInfo.appNameMap.getter(void *a1, SEL *a2, uint64_t a3)
{
  v3 = [a1 *a2];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
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

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<String> and conformance ArraySlice<A>()
{
  result = lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySSGMd, &_ss10ArraySliceVySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_25(uint64_t a1)
{

  return swift_once();
}

double OUTLINED_FUNCTION_8_17@<D0>(uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, __int128 a11)
{

  return specialized Dictionary.subscript.getter(v12, &a11, v13 + 12, (x8_0 - 32) | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_9_13()
{

  return static LocaleUtils.getContentLocale(dialogLocale:appInfo:formatString:)(v2, v1, v0, v3, v4);
}

BOOL OUTLINED_FUNCTION_16_15()
{

  return static LocaleUtils.compatibleLocale(siriLocale:contentLocale:)(v2, v1, v0, v3);
}

void OUTLINED_FUNCTION_18_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id static LNValueTypeMap.mapLNValueTypeToIntentValueType(valueType:)(void *a1)
{
  v2 = objc_opt_self();
  if (OUTLINED_FUNCTION_56_0(v2))
  {
    v3 = objc_opt_self();
    v4 = a1;
    v5 = [v3 dateValueType];
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNPrimitiveValueType, LNPrimitiveValueType_ptr);
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
LABEL_3:

      OUTLINED_FUNCTION_26_10();
      return &dword_4;
    }

    v12 = v4;
    v13 = OUTLINED_FUNCTION_52_3([v3 dateComponentsValueType]);

    if (v13)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_4 + 1;
    }

    v14 = v12;
    v15 = OUTLINED_FUNCTION_52_3([v3 BOOLValueType]);

    if (v15)
    {

      return &dword_0 + 2;
    }

    v22 = v14;
    v23 = OUTLINED_FUNCTION_52_3([v3 doubleValueType]);

    if (v23)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_8 + 1;
    }

    v36 = v22;
    v37 = OUTLINED_FUNCTION_52_3([v3 intValueType]);

    if (v37 & 1) != 0 || (v36 = v36, v38 = OUTLINED_FUNCTION_52_3([v3 int8ValueType]), v36, v5, (v38) || (v36 = v36, v39 = OUTLINED_FUNCTION_52_3(objc_msgSend(v3, "int16ValueType")), v36, v5, (v39) || (v36 = v36, v40 = OUTLINED_FUNCTION_52_3(objc_msgSend(v3, "int32ValueType")), v36, v5, (v40) || (v36 = v36, v41 = OUTLINED_FUNCTION_52_3(objc_msgSend(v3, "int64ValueType")), v36, v5, (v41))
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_8 + 3;
    }

    v62 = v36;
    v63 = OUTLINED_FUNCTION_52_3([v3 placemarkValueType]);

    if (v63)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_C + 2;
    }

    v65 = v62;
    v66 = OUTLINED_FUNCTION_52_3([v3 URLValueType]);

    if (v66)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_10 + 2;
    }

    v73 = v65;
    v74 = OUTLINED_FUNCTION_52_3([v3 stringValueType]);

    if (v74)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_10;
    }

    v75 = v73;
    v76 = [v3 attributedStringValueType];
    v77 = static NSObject.== infix(_:_:)();

    if (v77)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_0 + 1;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v78 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v78, static Logger.voiceCommands);
    v30 = v75;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (OUTLINED_FUNCTION_85_1())
    {
      OUTLINED_FUNCTION_48();
      v33 = OUTLINED_FUNCTION_83();
      v34 = OUTLINED_FUNCTION_48_4(v33, 5.7779e-34);
      v35 = "#LNValueTypeMap: cannot map unsupported LNPrimitiveValueType %@";
      goto LABEL_36;
    }

LABEL_73:

    goto LABEL_74;
  }

  v8 = objc_opt_self();
  if (OUTLINED_FUNCTION_56_0(v8))
  {
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNCodableValueType, LNCodableValueType_ptr);
    v9 = a1;
    v10 = static LNCodableValueType.dateInterval.getter();
    v11 = static NSObject.== infix(_:_:)();

    if (v11)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_4 + 2;
    }

    v20 = v9;
    v21 = static LNCodableValueType.personNameComponents.getter();
    v5 = static NSObject.== infix(_:_:)();

    if (v5)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_C + 1;
    }

    v24 = v20;
    v25 = static LNCodableValueType.duration.getter();
    v26 = static NSObject.== infix(_:_:)();

    if (v26)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_4 + 3;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v42 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v42, static Logger.voiceCommands);
    v30 = v24;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (!OUTLINED_FUNCTION_85_1())
    {
      goto LABEL_73;
    }

    OUTLINED_FUNCTION_48();
    v33 = OUTLINED_FUNCTION_83();
    v34 = OUTLINED_FUNCTION_48_4(v33, 5.7779e-34);
    v35 = "#LNValueTypeMap: cannot map unsupported LNCodableValueType %@";
    goto LABEL_36;
  }

  v16 = objc_opt_self();
  if (OUTLINED_FUNCTION_56_0(v16))
  {
    v5 = objc_opt_self();
    v17 = a1;
    v18 = [v5 recurrenceRuleType];
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNFoundationValueType, LNFoundationValueType_ptr);
    v19 = static NSObject.== infix(_:_:)();

    if (v19)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_8;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v29 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v29, static Logger.voiceCommands);
    v30 = v17;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (!OUTLINED_FUNCTION_85_1())
    {
      goto LABEL_73;
    }

    OUTLINED_FUNCTION_48();
    v33 = OUTLINED_FUNCTION_83();
    v34 = OUTLINED_FUNCTION_48_4(v33, 5.7779e-34);
    v35 = "#LNValueTypeMap: cannot map unsupported LNFoundationValueType %@";
LABEL_36:
    _os_log_impl(&dword_0, v31, v32, v35, v5, 0xCu);
    outlined destroy of String?(v33, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_15_0(v33);
    OUTLINED_FUNCTION_15_0(v5);

LABEL_37:
LABEL_74:
    OUTLINED_FUNCTION_26_10();
    return &dword_10 + 1;
  }

  v27 = objc_opt_self();
  v28 = OUTLINED_FUNCTION_56_0(v27);
  if (v28)
  {
    return [v28 unitType];
  }

  v43 = objc_opt_self();
  if (OUTLINED_FUNCTION_56_0(v43))
  {
    v44 = objc_opt_self();
    v4 = a1;
    v5 = [v44 timerValueType];
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNIntentsValueType, LNIntentsValueType_ptr);
    v45 = static NSObject.== infix(_:_:)();

    if (v45)
    {
      goto LABEL_3;
    }

    v46 = v4;
    v47 = OUTLINED_FUNCTION_52_3([v44 personValueType]);

    if (v47)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_C;
    }

    v53 = v46;
    v54 = [v44 currencyAmountValueType];
    v55 = static NSObject.== infix(_:_:)();

    if (v55)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_0 + 3;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v61 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v61, static Logger.voiceCommands);
    v30 = v53;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (!OUTLINED_FUNCTION_85_1())
    {
      goto LABEL_73;
    }

    OUTLINED_FUNCTION_48();
    v33 = OUTLINED_FUNCTION_83();
    v34 = OUTLINED_FUNCTION_48_4(v33, 5.7779e-34);
    v35 = "#LNValueTypeMap: cannot map unsupported LNIntentsValueType %@";
    goto LABEL_36;
  }

  v48 = objc_opt_self();
  if (!OUTLINED_FUNCTION_56_0(v48))
  {
    v56 = objc_opt_self();
    v57 = OUTLINED_FUNCTION_56_0(v56);
    if (v57)
    {
      v58 = v57;
      v59 = a1;
      v60 = [v58 enumerationIdentifier];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v7;
    }

    v64 = objc_opt_self();
    if (OUTLINED_FUNCTION_56_0(v64))
    {
      return 0;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v67 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v67, static Logger.voiceCommands);
    v68 = a1;
    v34 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v69))
    {
      v70 = OUTLINED_FUNCTION_48();
      v71 = swift_slowAlloc();
      *v70 = 138412290;
      *(v70 + 4) = v68;
      *v71 = v68;
      v72 = v68;
      _os_log_impl(&dword_0, v34, v69, "#LNValueTypeMap: cannot map unsupported %@", v70, 0xCu);
      outlined destroy of String?(v71, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_15_0(v71);
      OUTLINED_FUNCTION_8_15();
    }

    goto LABEL_37;
  }

  v49 = objc_opt_self();
  if (OUTLINED_FUNCTION_56_0(v49) && (type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr), type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSystemEntityValueType, LNSystemEntityValueType_ptr), v50 = a1, v51 = static LNSystemEntityValueType.placeDescriptor.getter(), v52 = static NSObject.== infix(_:_:)(), v51, v50, (v52 & 1) != 0))
  {
    OUTLINED_FUNCTION_26_10();
    return &dword_C + 3;
  }

  else
  {
    OUTLINED_FUNCTION_26_10();
    return &dword_8 + 2;
  }
}

uint64_t LNValueType.getLNValue(nlIntent:parameterMetadata:contactResolver:locale:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_project_boxed_opaque_existential_1(a3, v9);
  OUTLINED_FUNCTION_54(&async function pointer to specialized LNValueType.getLNValue(nlIntent:parameterMetadata:contactResolver:locale:));
  v15 = v12;
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CustomIntentRCHFlowStrategy;

  return v15(a1, a2, v11, a4, v4, v9, v10);
}

uint64_t static VoiceCommandIntentValueType.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return a1 == a4;
      }

      return 0;
    }

    switch(a1)
    {
      case 1:
        if (a6 != 2 || a4 != 1)
        {
          return 0;
        }

        break;
      case 2:
        if (a6 != 2 || a4 != 2)
        {
          return 0;
        }

        break;
      case 3:
        if (a6 != 2 || a4 != 3)
        {
          return 0;
        }

        break;
      case 4:
        if (a6 != 2 || a4 != 4)
        {
          return 0;
        }

        break;
      case 5:
        if (a6 != 2 || a4 != 5)
        {
          return 0;
        }

        break;
      case 6:
        if (a6 != 2 || a4 != 6)
        {
          return 0;
        }

        break;
      case 7:
        if (a6 != 2 || a4 != 7)
        {
          return 0;
        }

        break;
      case 8:
        if (a6 != 2 || a4 != 8)
        {
          return 0;
        }

        break;
      case 9:
        if (a6 != 2 || a4 != 9)
        {
          return 0;
        }

        break;
      case 10:
        if (a6 != 2 || a4 != 10)
        {
          return 0;
        }

        break;
      case 11:
        if (a6 != 2 || a4 != 11)
        {
          return 0;
        }

        break;
      case 12:
        if (a6 != 2 || a4 != 12)
        {
          return 0;
        }

        break;
      case 13:
        if (a6 != 2 || a4 != 13)
        {
          return 0;
        }

        break;
      case 14:
        if (a6 != 2 || a4 != 14)
        {
          return 0;
        }

        break;
      case 15:
        if (a6 != 2 || a4 != 15)
        {
          return 0;
        }

        break;
      case 16:
        if (a6 != 2 || a4 != 16)
        {
          return 0;
        }

        break;
      case 17:
        if (a6 != 2 || a4 != 17)
        {
          return 0;
        }

        break;
      case 18:
        if (a6 != 2 || a4 != 18)
        {
          return 0;
        }

        break;
      default:
        return a6 == 2 && !(a5 | a4);
    }

    return !a5;
  }

  if (a6)
  {
    return 0;
  }

  if (a1 != a4 || a2 != a5)
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 1;
}

_UNKNOWN **LNValueType.toPromptTargetType()()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_48();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_0, v3, v4, "#LNValueType has type %@", v5, 0xCu);
    outlined destroy of String?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_15_0(v6);
    OUTLINED_FUNCTION_8_15();
  }

  v8 = static LNValueTypeMap.mapLNValueTypeToIntentValueType(valueType:)(v2);
  if (v10)
  {
    if (v10 == 1)
    {
      return &outlined read-only object #2 of LNValueType.toPromptTargetType();
    }

    else
    {
      return off_29B228[v8];
    }
  }

  else
  {
    outlined consume of VoiceCommandIntentValueType(v8, v9, 0);
    return &outlined read-only object #4 of LNValueType.toPromptTargetType();
  }
}

Swift::Bool __swiftcall LNValueType.requiresStrictDictationPrompt()()
{
  v1 = static LNValueTypeMap.mapLNValueTypeToIntentValueType(valueType:)(v0);
  if (v3 == 2 && __PAIR128__(v2, v1) < 0x13 && ((0x50401u >> v1) & 1) != 0)
  {
    return 1;
  }

  outlined consume of VoiceCommandIntentValueType(v1, v2, v3);
  return 0;
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

uint64_t specialized LNValueType.getLNValue(nlIntent:parameterMetadata:contactResolver:locale:)()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  v0[85] = v3;
  v0[84] = v4;
  v0[83] = v5;
  v0[82] = v6;
  v7 = type metadata accessor for Locale();
  v0[86] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v0[87] = v8;
  v0[88] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for PlaceDescriptorEntity();
  v0[89] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v0[90] = v10;
  v0[91] = OUTLINED_FUNCTION_28();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_14(v11);
  v0[92] = OUTLINED_FUNCTION_28();
  v12 = type metadata accessor for URL();
  v0[93] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v0[94] = v13;
  v0[95] = OUTLINED_FUNCTION_28();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  OUTLINED_FUNCTION_14(v14);
  v0[96] = OUTLINED_FUNCTION_28();
  v15 = type metadata accessor for PersonNameComponents();
  v0[97] = v15;
  OUTLINED_FUNCTION_5_0(v15);
  v0[98] = v16;
  v0[99] = swift_task_alloc();
  v0[100] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
  OUTLINED_FUNCTION_14(v17);
  v0[101] = OUTLINED_FUNCTION_28();
  v18 = type metadata accessor for PlaceDescriptor();
  v0[102] = v18;
  OUTLINED_FUNCTION_5_0(v18);
  v0[103] = v19;
  v0[104] = OUTLINED_FUNCTION_28();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarV14RecurrenceRuleVSgMd, &_s10Foundation8CalendarV14RecurrenceRuleVSgMR);
  OUTLINED_FUNCTION_14(v20);
  v0[105] = OUTLINED_FUNCTION_28();
  v21 = type metadata accessor for Calendar.RecurrenceRule();
  v0[106] = v21;
  OUTLINED_FUNCTION_5_0(v21);
  v0[107] = v22;
  v0[108] = swift_task_alloc();
  v0[109] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  OUTLINED_FUNCTION_14(v23);
  v0[110] = OUTLINED_FUNCTION_28();
  v24 = type metadata accessor for DateInterval();
  v0[111] = v24;
  OUTLINED_FUNCTION_5_0(v24);
  v0[112] = v25;
  v0[113] = swift_task_alloc();
  v0[114] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_14(v26);
  v0[115] = OUTLINED_FUNCTION_28();
  v27 = type metadata accessor for DateComponents();
  v0[116] = v27;
  OUTLINED_FUNCTION_5_0(v27);
  v0[117] = v28;
  v0[118] = OUTLINED_FUNCTION_28();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  OUTLINED_FUNCTION_14(v29);
  v0[119] = OUTLINED_FUNCTION_28();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_14(v30);
  v0[120] = OUTLINED_FUNCTION_28();
  v31 = type metadata accessor for Date();
  v0[121] = v31;
  OUTLINED_FUNCTION_5_0(v31);
  v0[122] = v32;
  v0[123] = OUTLINED_FUNCTION_28();
  v33 = type metadata accessor for ContactResolver();
  v0[124] = v33;
  v0[5] = v33;
  v0[6] = &protocol witness table for ContactResolver;
  v0[2] = v2;

  return _swift_task_switch(specialized LNValueType.getLNValue(nlIntent:parameterMetadata:contactResolver:locale:));
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 952);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 416));
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 376));
  outlined destroy of String?(v2 + 336, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
  outlined destroy of String?(v5, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 952);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 296));
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 256));
  outlined destroy of String?(v2 + 216, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
  outlined destroy of String?(v5, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 952);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 176));
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 136));
  outlined destroy of String?(v2 + 96, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
  outlined destroy of String?(v5, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  OUTLINED_FUNCTION_46_4(v3, v4, v5);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v9 + 625) = v8;

  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 952);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  outlined destroy of String?(v2, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1056) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = v3[135];
  v5 = v3[88];
  v6 = v3[87];
  v7 = v3[86];
  v8 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v11 + 1104) = v10;

  (*(v6 + 8))(v5, v7);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 952);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 416));
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 376));
  outlined destroy of String?(v2 + 336, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
  outlined destroy of String?(v5, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 952);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 296));
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 256));
  outlined destroy of String?(v2 + 216, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
  outlined destroy of String?(v5, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 952);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 176));
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 136));
  outlined destroy of String?(v2 + 96, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
  outlined destroy of String?(v5, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  OUTLINED_FUNCTION_46_4(v3, v4, v5);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v9 + 625) = v8;

  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 952);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  outlined destroy of String?(v2, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1048) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = v3[134];
  v5 = v3[88];
  v6 = v3[87];
  v7 = v3[86];
  v8 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v11 + 1096) = v10;

  (*(v6 + 8))(v5, v7);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

uint64_t specialized LNValueType.getLNValue(nlIntent:parameterMetadata:contactResolver:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_41_5();
  v25 = v24[121];
  v26 = v24[120];
  OUTLINED_FUNCTION_6_14();
  if (v27)
  {
    outlined destroy of String?(v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v29))
    {
      v30 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v30);
      OUTLINED_FUNCTION_26(&dword_0, v31, v32, "#LNValueType: getLNValue returning nil");
      OUTLINED_FUNCTION_17();
    }

    a21 = 0;
  }

  else
  {
    v33 = v24[85];
    v34 = OUTLINED_FUNCTION_5_13();
    v35(v34);
    v24[68] = v25;
    __swift_allocate_boxed_opaque_existential_1(v24 + 65);
    OUTLINED_FUNCTION_23_9();
    v36();
    objc_allocWithZone(LNValue);
    v37 = @nonobjc LNValue.init(_:valueType:)(v24 + 65, v33);
    v38 = OUTLINED_FUNCTION_24_9(v37);
    v39(v38);
  }

  OUTLINED_FUNCTION_0_19();

  OUTLINED_FUNCTION_13_13();
  OUTLINED_FUNCTION_100();

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

{
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_41_5();
  v25 = v24[116];
  v26 = v24[115];
  OUTLINED_FUNCTION_6_14();
  if (v27)
  {
    outlined destroy of String?(v26, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v29))
    {
      v30 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v30);
      OUTLINED_FUNCTION_26(&dword_0, v31, v32, "#LNValueType: getLNValue returning nil");
      OUTLINED_FUNCTION_17();
    }

    a21 = 0;
  }

  else
  {
    v33 = v24[85];
    v34 = OUTLINED_FUNCTION_5_13();
    v35(v34);
    v24[64] = v25;
    __swift_allocate_boxed_opaque_existential_1(v24 + 61);
    OUTLINED_FUNCTION_23_9();
    v36();
    objc_allocWithZone(LNValue);
    v37 = @nonobjc LNValue.init(_:valueType:)(v24 + 61, v33);
    v38 = OUTLINED_FUNCTION_24_9(v37);
    v39(v38);
  }

  OUTLINED_FUNCTION_0_19();

  OUTLINED_FUNCTION_13_13();
  OUTLINED_FUNCTION_100();

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

{
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_41_5();
  v25 = v24[102];
  v26 = v24[101];
  OUTLINED_FUNCTION_6_14();
  if (v27)
  {
    outlined destroy of String?(v26, &_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v29))
    {
      v30 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v30);
      OUTLINED_FUNCTION_26(&dword_0, v31, v32, "#LNValueType: getLNValue returning nil");
      OUTLINED_FUNCTION_17();
    }

    a21 = 0;
  }

  else
  {
    v33 = v24[104];
    v34 = v24[103];
    v35 = OUTLINED_FUNCTION_5_13();
    v36(v35);
    PlaceDescriptor.convertToEntity()();
    OUTLINED_FUNCTION_30_7();
    lazy protocol witness table accessor for type PlaceDescriptorEntity and conformance PlaceDescriptorEntity(v37, v38);
    v39 = SystemIntentValueConvertibleEntity.asValue.getter();
    v40 = OUTLINED_FUNCTION_65_0(v39);
    v41(v40);
    (*(v34 + 8))(v33, v25);
  }

  OUTLINED_FUNCTION_0_19();

  OUTLINED_FUNCTION_13_13();
  OUTLINED_FUNCTION_100();

  return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

{
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_41_5();
  if (*(v24 + 1104))
  {
    v25 = [*(v24 + 1072) memberValueType];
    objc_opt_self();
    OUTLINED_FUNCTION_71();
    if (swift_dynamicCastObjCClass())
    {
      v26 = *(v24 + 680);

      v46 = *(v24 + 1104);
    }

    else
    {
      v32 = *(v24 + 1104);
      v33 = *(v24 + 680);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_216010;
      *(v34 + 32) = v32;
      v35 = v32;
      [v35 valueType];
      v36 = objc_allocWithZone(LNValue);
      v46 = OUTLINED_FUNCTION_77_1();
    }
  }

  else
  {

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v28))
    {
      v29 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v29);
      OUTLINED_FUNCTION_26(&dword_0, v30, v31, "#LNValueType: getLNValue returning nil");
      OUTLINED_FUNCTION_17();
    }

    v46 = 0;
  }

  OUTLINED_FUNCTION_0_19();

  OUTLINED_FUNCTION_13_13();
  OUTLINED_FUNCTION_100();

  return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v46, a22, a23, a24);
}

{
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_41_5();
  v25 = v24[121];
  v26 = v24[120];
  OUTLINED_FUNCTION_6_14();
  if (v27)
  {
    outlined destroy of String?(v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v29))
    {
      v30 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v30);
      OUTLINED_FUNCTION_26(&dword_0, v31, v32, "#LNValueType: getLNValue returning nil");
      OUTLINED_FUNCTION_17();
    }

    a21 = 0;
  }

  else
  {
    v33 = v24[85];
    v34 = OUTLINED_FUNCTION_5_13();
    v35(v34);
    v24[68] = v25;
    __swift_allocate_boxed_opaque_existential_1(v24 + 65);
    OUTLINED_FUNCTION_23_9();
    v36();
    objc_allocWithZone(LNValue);
    v37 = @nonobjc LNValue.init(_:valueType:)(v24 + 65, v33);
    v38 = OUTLINED_FUNCTION_24_9(v37);
    v39(v38);
  }

  OUTLINED_FUNCTION_0_19();

  OUTLINED_FUNCTION_13_13();
  OUTLINED_FUNCTION_100();

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

{
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_41_5();
  v25 = v24[116];
  v26 = v24[115];
  OUTLINED_FUNCTION_6_14();
  if (v27)
  {
    outlined destroy of String?(v26, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v29))
    {
      v30 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v30);
      OUTLINED_FUNCTION_26(&dword_0, v31, v32, "#LNValueType: getLNValue returning nil");
      OUTLINED_FUNCTION_17();
    }

    a21 = 0;
  }

  else
  {
    v33 = v24[85];
    v34 = OUTLINED_FUNCTION_5_13();
    v35(v34);
    v24[64] = v25;
    __swift_allocate_boxed_opaque_existential_1(v24 + 61);
    OUTLINED_FUNCTION_23_9();
    v36();
    objc_allocWithZone(LNValue);
    v37 = @nonobjc LNValue.init(_:valueType:)(v24 + 61, v33);
    v38 = OUTLINED_FUNCTION_24_9(v37);
    v39(v38);
  }

  OUTLINED_FUNCTION_0_19();

  OUTLINED_FUNCTION_13_13();
  OUTLINED_FUNCTION_100();

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

{
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_41_5();
  v25 = v24[102];
  v26 = v24[101];
  OUTLINED_FUNCTION_6_14();
  if (v27)
  {
    outlined destroy of String?(v26, &_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v29))
    {
      v30 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v30);
      OUTLINED_FUNCTION_26(&dword_0, v31, v32, "#LNValueType: getLNValue returning nil");
      OUTLINED_FUNCTION_17();
    }

    a21 = 0;
  }

  else
  {
    v33 = v24[104];
    v34 = v24[103];
    v35 = OUTLINED_FUNCTION_5_13();
    v36(v35);
    PlaceDescriptor.convertToEntity()();
    OUTLINED_FUNCTION_30_7();
    lazy protocol witness table accessor for type PlaceDescriptorEntity and conformance PlaceDescriptorEntity(v37, v38);
    v39 = SystemIntentValueConvertibleEntity.asValue.getter();
    v40 = OUTLINED_FUNCTION_65_0(v39);
    v41(v40);
    (*(v34 + 8))(v33, v25);
  }

  OUTLINED_FUNCTION_0_19();

  OUTLINED_FUNCTION_13_13();
  OUTLINED_FUNCTION_100();

  return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

{
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_41_5();
  if (*(v24 + 1096))
  {
    v25 = [*(v24 + 1064) memberValueType];
    objc_opt_self();
    OUTLINED_FUNCTION_71();
    if (swift_dynamicCastObjCClass())
    {
      v26 = *(v24 + 680);

      v46 = *(v24 + 1096);
    }

    else
    {
      v32 = *(v24 + 1096);
      v33 = *(v24 + 680);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_216010;
      *(v34 + 32) = v32;
      v35 = v32;
      [v35 valueType];
      v36 = objc_allocWithZone(LNValue);
      v46 = OUTLINED_FUNCTION_77_1();
    }
  }

  else
  {

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v28))
    {
      v29 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v29);
      OUTLINED_FUNCTION_26(&dword_0, v30, v31, "#LNValueType: getLNValue returning nil");
      OUTLINED_FUNCTION_17();
    }

    v46 = 0;
  }

  OUTLINED_FUNCTION_0_19();

  OUTLINED_FUNCTION_13_13();
  OUTLINED_FUNCTION_100();

  return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v46, a22, a23, a24);
}

uint64_t specialized LNValueType.getLNValue(nlIntent:parameterMetadata:contactResolver:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[85] = a5;
  v7[84] = a4;
  v7[83] = a2;
  v7[82] = a1;
  v11 = type metadata accessor for Locale();
  v7[86] = v11;
  v7[87] = *(v11 - 8);
  v7[88] = swift_task_alloc();
  v12 = type metadata accessor for PlaceDescriptorEntity();
  v7[89] = v12;
  v7[90] = *(v12 - 8);
  v7[91] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7[92] = swift_task_alloc();
  v13 = type metadata accessor for URL();
  v7[93] = v13;
  v7[94] = *(v13 - 8);
  v7[95] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v7[96] = swift_task_alloc();
  v14 = type metadata accessor for PersonNameComponents();
  v7[97] = v14;
  v7[98] = *(v14 - 8);
  v7[99] = swift_task_alloc();
  v7[100] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
  v7[101] = swift_task_alloc();
  v15 = type metadata accessor for PlaceDescriptor();
  v7[102] = v15;
  v7[103] = *(v15 - 8);
  v7[104] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarV14RecurrenceRuleVSgMd, &_s10Foundation8CalendarV14RecurrenceRuleVSgMR);
  v7[105] = swift_task_alloc();
  v16 = type metadata accessor for Calendar.RecurrenceRule();
  v7[106] = v16;
  v7[107] = *(v16 - 8);
  v7[108] = swift_task_alloc();
  v7[109] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v7[110] = swift_task_alloc();
  v17 = type metadata accessor for DateInterval();
  v7[111] = v17;
  v7[112] = *(v17 - 8);
  v7[113] = swift_task_alloc();
  v7[114] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v7[115] = swift_task_alloc();
  v18 = type metadata accessor for DateComponents();
  v7[116] = v18;
  v7[117] = *(v18 - 8);
  v7[118] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  v7[119] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7[120] = swift_task_alloc();
  v19 = type metadata accessor for Date();
  v7[121] = v19;
  v7[122] = *(v19 - 8);
  v7[123] = swift_task_alloc();
  v7[5] = a6;
  v7[6] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7 + 2);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a3, a6);

  return _swift_task_switch(specialized LNValueType.getLNValue(nlIntent:parameterMetadata:contactResolver:locale:));
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin27VoiceCommandIntentValueTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

double outlined copy of VoiceCommandIntentValueType(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PlaceDescriptorEntity and conformance PlaceDescriptorEntity(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_71();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void outlined consume of ParsedMeasurement?(uint64_t result, void *a2, char a3)
{
  if (a3 != -1)
  {
    outlined consume of ParsedMeasurement(result, a2, a3 & 1);
  }
}

void outlined consume of ParsedMeasurement(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t OUTLINED_FUNCTION_0_19()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_1_26()
{

  return __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_3_18(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_14_11(uint64_t a1)
{

  return IntentNodeTraversable.value<A>(forNode:)();
}

id OUTLINED_FUNCTION_43_3(uint64_t a1, void *a2, char a3)
{
  v8 = *(v4 + 680);
  v9 = *(v4 + 664);

  return ParsedMeasurement.toLNValue(unitType:parameterMetadata:valueType:)(v3, v9, v8, a1, a2, a3 & 1);
}

uint64_t OUTLINED_FUNCTION_46_4(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 576) = a3;
  *(v3 + 568) = a2;
  *(v3 + 560) = result;
  *(v3 + 552) = v4;
  return result;
}

id OUTLINED_FUNCTION_48_4(void *a1, float a2)
{
  *v4 = a2;
  *(v4 + 4) = v2;
  *a1 = v2;

  return v3;
}

uint64_t OUTLINED_FUNCTION_52_3(uint64_t a1)
{

  return static NSObject.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_56_0(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

void *OUTLINED_FUNCTION_57_2(uint64_t a1)
{
  *(v1 + 128) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 96) = 0u;

  return static Device.current.getter();
}

void *OUTLINED_FUNCTION_58_1(uint64_t a1)
{
  *(v1 + 248) = 0;
  *(v1 + 232) = 0u;
  *(v1 + 216) = 0u;

  return static Device.current.getter();
}

id OUTLINED_FUNCTION_59_3(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  return @nonobjc LNValue.init(_:valueType:)(va, a1);
}

void OUTLINED_FUNCTION_74_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_75_0()
{

  return type metadata accessor for LNCodableValue();
}

void OUTLINED_FUNCTION_76_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

id OUTLINED_FUNCTION_77_1()
{

  return @nonobjc LNValue.init(_:memberValueType:)(v0, v1);
}

uint64_t OUTLINED_FUNCTION_78_0(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

Class OUTLINED_FUNCTION_79_0()
{
  v2 = v0[84];
  v3 = v0[82];

  return static InputUtils.getPerson(from:contactResolver:locale:)(v3, v0 + 2, v2);
}

void OUTLINED_FUNCTION_80_1()
{

  outlined consume of ParsedMeasurement?(v0, v1, v2);
}

void *OUTLINED_FUNCTION_81_0(uint64_t a1)
{
  *(v1 + 368) = 0;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;

  return static Device.current.getter();
}

void OUTLINED_FUNCTION_82_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

void OUTLINED_FUNCTION_83_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_85_1()
{

  return os_log_type_enabled(v0, v1);
}

void static InstrumentationUtils.emitAutoShortcutUsedInstrumentation(autoShortcutTemplate:)()
{
  OUTLINED_FUNCTION_45_3();
  v0 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed) init];
  if (v0)
  {
    v1 = v0;
    v2 = OUTLINED_FUNCTION_17_14();
    outlined bridged method (mbgnn) of @objc FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed.autoshortcutTemplate.setter(v2, v3, v4);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v5 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v5, static Logger.voiceCommands);
    v6 = v1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_48();
      v10 = OUTLINED_FUNCTION_85();
      v16 = v10;
      *v9 = 136315138;
      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo46FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsedCmMd, &_sSo46FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsedCmMR);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_0, v7, v8, "#SLF SELF emitting event: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_15_0(v9);
    }

    v14 = OUTLINED_FUNCTION_19_8();
    _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF31265event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo46FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsedC_Tt1g5(v14, v15);
  }
}

void static InstrumentationUtils.emitAppShorcutGeneralizedInvocationInstrumentation(appShortcutIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed) init];
  if (v4)
  {
    v5 = v4;
    outlined bridged method (mbgnn) of @objc FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed.appShortcutId.setter(a1, a2, v4);
    _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF31265event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo57FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsedC_Tt1g5(v5, 0);
  }
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo46FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsedC_Tt1g5(uint64_t a1, int a2)
{
  v100 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v89 - v9;
  __chkstk_darwin(v8);
  v12 = &v89 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v89 - v18;
  __chkstk_darwin(v17);
  v21 = &v89 - v20;
  v22 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent) init];
  if (v22)
  {
    v97 = a2;
    v101 = v22;
    v23 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v23)
    {
      v98 = v23;
      v99 = v21;
      v95 = v12;
      v96 = v4;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo46FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsedCmMd, &_sSo46FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsedCmMR);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.flowTask.getter();

      v27 = dispatch thunk of FlowTaskProvider.id.getter();
      v29 = v28;

      if (v29)
      {
        v93 = v24;
        v30 = v26;
        v31 = v3;
        v32 = v99;
        UUID.init(uuidString:)();
        outlined init with copy of UUID?(v32, v19);
        if (__swift_getEnumTagSinglePayload(v19, 1, v31) == 1)
        {
          v33 = v27;
          outlined destroy of UUID?(v19);
          v34 = v30;
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v35 = type metadata accessor for Logger();
          __swift_project_value_buffer(v35, static Logger.voiceCommands);

          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v38 = 136315394;
            v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v29, &ObjectType);

            *(v38 + 4) = v39;
            *(v38 + 12) = 2080;
            v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v34, &ObjectType);

            *(v38 + 14) = v40;
            _os_log_impl(&dword_0, v36, v37, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v38, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {
          v91 = v27;
          v92 = v29;
          v49 = v95;
          v48 = v96;
          v90 = *(v96 + 32);
          v90(v95, v19, v31);
          v50 = static InstrumentationUtils.createFlowId()();
          v94 = v31;
          v51 = v30;
          if (v50)
          {
            v52 = v50;

            type metadata accessor for SISchemaUUID();
            v89 = *(v48 + 16);
            v89(v10, v49, v94);
            v55 = SISchemaUUID.__allocating_init(nsuuid:)(v10, v53, v54);
            v56 = v98;
            [v98 setTaskId:v55];

            v93 = v52;
            [v56 setFlowId:v52];
            static SiriEnvironment.default.getter();
            SiriEnvironment.currentRequest.getter();

            CurrentRequest.resultCandidateId.getter();
            v58 = v57;

            if (v58)
            {

              UUID.init(uuidString:)();

              if (__swift_getEnumTagSinglePayload(v16, 1, v94) == 1)
              {
                outlined destroy of UUID?(v16);
                v59 = v98;
                v60 = v99;
                v61 = v96;
                v62 = v92;
                v63 = v94;
              }

              else
              {
                v63 = v94;
                v90(v7, v16, v94);
                v89(v10, v7, v63);
                v76 = SISchemaUUID.__allocating_init(nsuuid:)(v10, v74, v75);
                v59 = v98;
                [v98 setTrpId:v76];

                v61 = v96;
                (*(v96 + 8))(v7, v63);
                v60 = v99;
                v62 = v92;
              }

              v73 = String._bridgeToObjectiveC()();
            }

            else
            {
              v73 = 0;
              v59 = v98;
              v60 = v99;
              v61 = v96;
              v62 = v92;
              v63 = v94;
            }

            [v59 setResultCandidateId:v73];

            [v101 setEventMetadata:v59];
            objc_opt_self();
            v77 = swift_dynamicCastObjCClass();
            v78 = v95;
            if (v77)
            {
              [v101 setLinkActionContext:v77];
            }

            else
            {
              objc_opt_self();
              v79 = swift_dynamicCastObjCClass();
              if (v79)
              {
                [v101 setEntityDisambiguationContext:v79];
              }

              else
              {
                objc_opt_self();
                v81 = swift_dynamicCastObjCClass();
                if (v81)
                {
                  [v101 setActionConversionContext:v81];
                }

                else
                {
                  objc_opt_self();
                  v82 = swift_dynamicCastObjCClass();
                  if (v82)
                  {
                    [v101 setActionExecutionContext:v82];
                  }

                  else
                  {
                    objc_opt_self();
                    v83 = swift_dynamicCastObjCClass();
                    if (v83)
                    {
                      [v101 setActionPromptForValueContext:v83];
                    }

                    else
                    {
                      objc_opt_self();
                      v84 = swift_dynamicCastObjCClass();
                      if (v84)
                      {
                        [v101 setActionParameterDisambiguationContext:v84];
                      }

                      else
                      {
                        objc_opt_self();
                        v85 = swift_dynamicCastObjCClass();
                        if (v85)
                        {
                          [v101 setActionParameterConfirmationContext:v85];
                        }

                        else
                        {
                          objc_opt_self();
                          v86 = swift_dynamicCastObjCClass();
                          if (v86)
                          {
                            [v101 setActionConfirmationContext:v86];
                          }

                          else
                          {
                            [v101 setAutoShortcutTemplateUsed:v100];
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v87 = [objc_opt_self() sharedStream];
            [v87 emitMessage:v101];
            swift_unknownObjectRelease();
            v88 = v93;
            if (v97)
            {
              static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v91, v62, v93);
            }

            (*(v61 + 8))(v78, v63);
            v80 = v60;
            goto LABEL_52;
          }

          v64 = v94;

          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v65 = type metadata accessor for Logger();
          __swift_project_value_buffer(v65, static Logger.voiceCommands);

          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.error.getter();

          v68 = os_log_type_enabled(v66, v67);
          v69 = v98;
          if (v68)
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            ObjectType = v71;
            *v70 = 136315138;
            v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v51, &ObjectType);

            *(v70 + 4) = v72;
            _os_log_impl(&dword_0, v66, v67, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s", v70, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v71);
          }

          else
          {
          }

          (*(v96 + 8))(v95, v64);
        }

        v80 = v99;
LABEL_52:
        outlined destroy of UUID?(v80);
        return;
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.voiceCommands);

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        ObjectType = v46;
        *v45 = 136315138;
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &ObjectType);

        *(v45 + 4) = v47;
        _os_log_impl(&dword_0, v43, v44, "#SLF SELF Log, current taskId is nil, cannot emit %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
      }

      else
      {
      }
    }

    else
    {
      v41 = v101;
    }
  }
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo57FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsedC_Tt1g5(uint64_t a1, int a2)
{
  v128 = a1;
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_1();
  v9 = v8;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_34_7();
  v12 = __chkstk_darwin(v11);
  v14 = v117 - v13;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_33_4();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = OUTLINED_FUNCTION_14(v15);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_50_0();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_44_4();
  __chkstk_darwin(v21);
  v23 = v117 - v22;
  v24 = OUTLINED_FUNCTION_35_6(objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent));
  if (!v24)
  {
    goto LABEL_52;
  }

  v125 = a2;
  v129 = v24;
  v25 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) *(v2 + 2304)];
  if (v25)
  {
    v26 = v25;
    v126 = v7;
    v127 = v23;
    v123 = v3;
    v124 = v9;
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo57FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsedCmMd, &_sSo57FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsedCmMR);
    v122 = String.init<A>(describing:)();
    v28 = v27;
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    SiriEnvironment.flowTask.getter();

    v29 = dispatch thunk of FlowTaskProvider.id.getter();
    v31 = v30;

    if (!v31)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v46 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v46, static Logger.voiceCommands);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = OUTLINED_FUNCTION_48();
        v50 = OUTLINED_FUNCTION_85();
        ObjectType = v50;
        *v49 = 136315138;
        v51 = v26;
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v28, &ObjectType);

        *(v49 + 4) = v52;
        OUTLINED_FUNCTION_46_5(&dword_0, v53, v54, "#SLF SELF Log, current taskId is nil, cannot emit %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        OUTLINED_FUNCTION_15_0(v50);
        OUTLINED_FUNCTION_15_0(v49);
      }

      else
      {
      }

      goto LABEL_52;
    }

    v32 = v28;
    v33 = v127;
    v121 = v31;
    UUID.init(uuidString:)();
    outlined init with copy of UUID?(v33, v5);
    v34 = v126;
    if (__swift_getEnumTagSinglePayload(v5, 1, v126) == 1)
    {
      v35 = v29;
      outlined destroy of UUID?(v5);
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v36 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v36, static Logger.voiceCommands);
      v37 = v32;

      v38 = v121;

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = OUTLINED_FUNCTION_25_5();
        ObjectType = OUTLINED_FUNCTION_20_6();
        *v41 = 136315394;
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v38, &ObjectType);

        *(v41 + 4) = v42;
        *(v41 + 12) = 2080;
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v37, &ObjectType);

        *(v41 + 14) = v43;
        _os_log_impl(&dword_0, v39, v40, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v41, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_19_0();
        OUTLINED_FUNCTION_15_0(v41);
      }

      else
      {
      }
    }

    else
    {
      v119 = v29;
      v120 = v26;
      v56 = v123;
      v55 = v124;
      v118 = *(v124 + 32);
      v118(v123, v5, v34);
      v57 = static InstrumentationUtils.createFlowId()();
      if (v57)
      {
        v58 = v57;

        v59 = type metadata accessor for SISchemaUUID();
        v117[0] = *(v55 + 16);
        v117[1] = v55 + 16;
        (v117[0])(v14, v56, v34);
        v117[2] = v59;
        v62 = SISchemaUUID.__allocating_init(nsuuid:)(v14, v60, v61);
        v63 = v120;
        [v120 setTaskId:v62];

        v122 = v58;
        [v63 setFlowId:v58];
        static SiriEnvironment.default.getter();
        SiriEnvironment.currentRequest.getter();

        CurrentRequest.resultCandidateId.getter();
        v65 = v64;

        if (v65)
        {

          UUID.init(uuidString:)();

          v66 = OUTLINED_FUNCTION_14_12();
          if (__swift_getEnumTagSinglePayload(v66, v67, v34) == 1)
          {
            outlined destroy of UUID?(v19);
            v68 = v120;
          }

          else
          {
            v118(v4, v19, v34);
            (v117[0])(v14, v4, v34);
            v86 = SISchemaUUID.__allocating_init(nsuuid:)(v14, v84, v85);
            v68 = v120;
            [v120 setTrpId:v86];

            (*(v124 + 8))(v4, v34);
          }

          v83 = v127;
          v82 = v121;
          v81 = String._bridgeToObjectiveC()();
        }

        else
        {
          v81 = 0;
          v68 = v120;
          v82 = v121;
          v83 = v127;
        }

        [v68 setResultCandidateId:v81];

        [v129 setEventMetadata:v68];
        v87 = objc_opt_self();
        v88 = OUTLINED_FUNCTION_37_6(v87);
        v90 = v123;
        v89 = v124;
        v91 = v126;
        if (v88)
        {
          [v129 setLinkActionContext:v88];
        }

        else
        {
          v92 = objc_opt_self();
          v93 = OUTLINED_FUNCTION_37_6(v92);
          if (v93)
          {
            [v129 setEntityDisambiguationContext:v93];
          }

          else
          {
            v95 = objc_opt_self();
            v96 = OUTLINED_FUNCTION_37_6(v95);
            if (v96)
            {
              [v129 setActionConversionContext:v96];
            }

            else
            {
              v97 = objc_opt_self();
              v98 = OUTLINED_FUNCTION_37_6(v97);
              if (v98)
              {
                [v129 setActionExecutionContext:v98];
              }

              else
              {
                v99 = objc_opt_self();
                v100 = OUTLINED_FUNCTION_37_6(v99);
                if (v100)
                {
                  [v129 setActionPromptForValueContext:v100];
                }

                else
                {
                  v101 = objc_opt_self();
                  v102 = OUTLINED_FUNCTION_37_6(v101);
                  if (v102)
                  {
                    [v129 setActionParameterDisambiguationContext:v102];
                  }

                  else
                  {
                    v103 = objc_opt_self();
                    v104 = OUTLINED_FUNCTION_37_6(v103);
                    if (v104)
                    {
                      [v129 setActionParameterConfirmationContext:v104];
                    }

                    else
                    {
                      v105 = objc_opt_self();
                      v106 = OUTLINED_FUNCTION_37_6(v105);
                      if (v106)
                      {
                        [v129 setActionConfirmationContext:v106];
                      }

                      else
                      {
                        v109 = objc_opt_self();
                        v110 = OUTLINED_FUNCTION_49_2(v109);
                        if (v110)
                        {
                          [v129 setAutoShortcutTemplateUsed:v110];
                        }

                        else
                        {
                          v111 = objc_opt_self();
                          v112 = OUTLINED_FUNCTION_49_2(v111);
                          if (v112)
                          {
                            [v129 setLinkActionTier1:v112];
                          }

                          else
                          {
                            v113 = objc_opt_self();
                            v114 = OUTLINED_FUNCTION_49_2(v113);
                            if (v114)
                            {
                              [v129 setActionParameterUpdated:v114];
                            }

                            else
                            {
                              v115 = objc_opt_self();
                              v116 = OUTLINED_FUNCTION_49_2(v115);
                              if (v116)
                              {
                                [v129 setAppShortcutFirstRunConfirmationContext:v116];
                              }

                              else
                              {
                                [v129 setAppShortcutGeneralizedExecutionUsed:v128];
                              }
                            }
                          }
                        }

                        v68 = v120;
                        v82 = v121;
                        v91 = v126;
                        v83 = v127;
                        v90 = v123;
                        v89 = v124;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v107 = [objc_opt_self() sharedStream];
        [v107 emitMessage:v129];
        swift_unknownObjectRelease();
        v108 = v122;
        if (v125)
        {
          static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v119, v82, v122);
        }

        (*(v89 + 8))(v90, v91);
        v94 = v83;
        goto LABEL_51;
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v69 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v69, static Logger.voiceCommands);
      v70 = v32;

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();

      v73 = os_log_type_enabled(v71, v72);
      v74 = v120;
      v75 = v124;
      if (v73)
      {
        v76 = OUTLINED_FUNCTION_48();
        v77 = OUTLINED_FUNCTION_85();
        ObjectType = v77;
        *v76 = 136315138;
        v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v70, &ObjectType);

        *(v76 + 4) = v78;
        OUTLINED_FUNCTION_46_5(&dword_0, v79, v80, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v77);
        OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_15_0(v76);
      }

      else
      {
      }

      (*(v75 + 8))(v123, v126);
    }

    v94 = v127;
LABEL_51:
    outlined destroy of UUID?(v94);
LABEL_52:
    OUTLINED_FUNCTION_42();
    return;
  }

  OUTLINED_FUNCTION_42();
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo35FLOWLINKSchemaFLOWLINKActionContextC_Tt1g5(uint64_t a1, int a2)
{
  v91 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v78 - v9;
  __chkstk_darwin(v8);
  v12 = &v78 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v78 - v18;
  __chkstk_darwin(v17);
  v21 = &v78 - v20;
  v22 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent) init];
  if (v22)
  {
    v92 = v22;
    v23 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v23)
    {
      v87 = v4;
      v88 = v3;
      v85 = a2;
      v89 = v21;
      v90 = v23;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo35FLOWLINKSchemaFLOWLINKActionContextCmMd, &_sSo35FLOWLINKSchemaFLOWLINKActionContextCmMR);
      v86 = String.init<A>(describing:)();
      v25 = v24;
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.flowTask.getter();

      v26 = dispatch thunk of FlowTaskProvider.id.getter();
      v28 = v27;

      if (v28)
      {
        v29 = v89;
        v84 = v26;
        UUID.init(uuidString:)();
        outlined init with copy of UUID?(v29, v19);
        v30 = v88;
        if (__swift_getEnumTagSinglePayload(v19, 1, v88) == 1)
        {
          v31 = v28;
          outlined destroy of UUID?(v19);
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v32 = type metadata accessor for Logger();
          __swift_project_value_buffer(v32, static Logger.voiceCommands);

          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v35 = 136315394;
            v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v31, &ObjectType);

            *(v35 + 4) = v36;
            *(v35 + 12) = 2080;
            v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v25, &ObjectType);

            *(v35 + 14) = v37;
            _os_log_impl(&dword_0, v33, v34, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v35, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v62 = v29;
        }

        else
        {
          v83 = v28;
          v45 = v87;
          v46 = v30;
          v81 = *(v87 + 32);
          v82 = v87 + 32;
          v81(v12, v19, v30);
          v47 = static InstrumentationUtils.createFlowId()();
          if (v47)
          {
            v48 = v47;

            v49 = type metadata accessor for SISchemaUUID();
            v50 = *(v45 + 16);
            v86 = v12;
            v51 = v12;
            v52 = v46;
            v79 = v50;
            v50(v10, v51, v46);
            v80 = v49;
            v55 = SISchemaUUID.__allocating_init(nsuuid:)(v10, v53, v54);
            v56 = v90;
            [v90 setTaskId:v55];

            [v56 setFlowId:v48];
            static SiriEnvironment.default.getter();
            SiriEnvironment.currentRequest.getter();

            CurrentRequest.resultCandidateId.getter();
            v58 = v57;

            if (v58)
            {

              UUID.init(uuidString:)();

              if (__swift_getEnumTagSinglePayload(v16, 1, v52) == 1)
              {
                outlined destroy of UUID?(v16);
                v60 = v89;
                v59 = v90;
                v61 = v87;
              }

              else
              {
                v81(v7, v16, v52);
                v79(v10, v7, v52);
                v76 = SISchemaUUID.__allocating_init(nsuuid:)(v10, v74, v75);
                v59 = v90;
                [v90 setTrpId:v76];

                v61 = v87;
                (*(v87 + 8))(v7, v52);
                v60 = v89;
              }

              v73 = v86;
              v72 = String._bridgeToObjectiveC()();
            }

            else
            {
              v72 = 0;
              v60 = v89;
              v59 = v90;
              v73 = v86;
              v61 = v87;
            }

            [v59 setResultCandidateId:v72];

            [v92 setEventMetadata:v59];
            [v92 setLinkActionContext:v91];
            v77 = [objc_opt_self() sharedStream];
            [v77 emitMessage:v92];
            swift_unknownObjectRelease();
            if (v85)
            {
              static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v84, v83, v48);
            }

            (*(v61 + 8))(v73, v88);
            v62 = v60;
          }

          else
          {

            v63 = v25;
            if (one-time initialization token for voiceCommands != -1)
            {
              swift_once();
            }

            v64 = type metadata accessor for Logger();
            __swift_project_value_buffer(v64, static Logger.voiceCommands);

            v65 = Logger.logObject.getter();
            v66 = static os_log_type_t.error.getter();

            v67 = os_log_type_enabled(v65, v66);
            v68 = v89;
            if (v67)
            {
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              ObjectType = v70;
              *v69 = 136315138;
              v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v63, &ObjectType);

              *(v69 + 4) = v71;
              _os_log_impl(&dword_0, v65, v66, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s", v69, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v70);
            }

            else
            {
            }

            (*(v87 + 8))(v12, v88);
            v62 = v68;
          }
        }

        outlined destroy of UUID?(v62);
      }

      else
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        __swift_project_value_buffer(v39, static Logger.voiceCommands);

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          ObjectType = v43;
          *v42 = 136315138;
          v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v25, &ObjectType);

          *(v42 + 4) = v44;
          _os_log_impl(&dword_0, v40, v41, "#SLF SELF Log, current taskId is nil, cannot emit %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v43);
        }

        else
        {
        }
      }
    }

    else
    {
      v38 = v92;
    }
  }
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo33FLOWLINKSchemaFLOWLINKActionTier1C_Tt1g5(uint64_t a1, int a2)
{
  v104 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v93 - v9;
  __chkstk_darwin(v8);
  v12 = &v93 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v93 - v18;
  __chkstk_darwin(v17);
  v21 = &v93 - v20;
  v22 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent) init];
  if (v22)
  {
    v101 = a2;
    v105 = v22;
    v23 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v23)
    {
      v24 = v23;
      v99 = v12;
      v100 = v4;
      v103 = v21;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33FLOWLINKSchemaFLOWLINKActionTier1CmMd, &_sSo33FLOWLINKSchemaFLOWLINKActionTier1CmMR);
      v98 = String.init<A>(describing:)();
      v26 = v25;
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.flowTask.getter();

      v27 = dispatch thunk of FlowTaskProvider.id.getter();
      v29 = v28;

      if (v29)
      {
        v102 = v3;
        v30 = v103;
        UUID.init(uuidString:)();
        v31 = v30;
        v32 = v102;
        outlined init with copy of UUID?(v31, v19);
        if (__swift_getEnumTagSinglePayload(v19, 1, v32) == 1)
        {
          v33 = v27;
          outlined destroy of UUID?(v19);
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          __swift_project_value_buffer(v34, static Logger.voiceCommands);

          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v37 = 136315394;
            v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v29, &ObjectType);
            v39 = v24;
            v40 = v38;

            *(v37 + 4) = v40;
            *(v37 + 12) = 2080;
            v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v26, &ObjectType);

            *(v37 + 14) = v41;
            _os_log_impl(&dword_0, v35, v36, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v37, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {
          v95 = v27;
          v96 = v29;
          v97 = v24;
          v51 = v99;
          v50 = v100;
          v94 = *(v100 + 32);
          v94(v99, v19, v32);
          v52 = static InstrumentationUtils.createFlowId()();
          if (v52)
          {
            v53 = v52;

            v54 = type metadata accessor for SISchemaUUID();
            v55 = *(v50 + 16);
            v55(v10, v51, v102);
            v93 = v54;
            v58 = SISchemaUUID.__allocating_init(nsuuid:)(v10, v56, v57);
            v59 = v97;
            [v97 setTaskId:v58];

            v98 = v53;
            [v59 setFlowId:v53];
            static SiriEnvironment.default.getter();
            SiriEnvironment.currentRequest.getter();

            CurrentRequest.resultCandidateId.getter();
            v61 = v60;

            if (v61)
            {

              UUID.init(uuidString:)();

              if (__swift_getEnumTagSinglePayload(v16, 1, v102) == 1)
              {
                outlined destroy of UUID?(v16);
                v63 = v96;
                v62 = v97;
                v65 = v102;
                v64 = v103;
                v66 = v100;
              }

              else
              {
                v65 = v102;
                v94(v7, v16, v102);
                v55(v10, v7, v65);
                v79 = SISchemaUUID.__allocating_init(nsuuid:)(v10, v77, v78);
                v62 = v97;
                [v97 setTrpId:v79];

                v66 = v100;
                (*(v100 + 8))(v7, v65);
                v64 = v103;
                v63 = v96;
              }

              v76 = String._bridgeToObjectiveC()();
            }

            else
            {
              v76 = 0;
              v63 = v96;
              v62 = v97;
              v65 = v102;
              v64 = v103;
              v66 = v100;
            }

            [v62 setResultCandidateId:v76];

            [v105 setEventMetadata:v62];
            objc_opt_self();
            v80 = swift_dynamicCastObjCClass();
            v81 = v99;
            if (v80)
            {
              [v105 setLinkActionContext:v80];
            }

            else
            {
              objc_opt_self();
              v82 = swift_dynamicCastObjCClass();
              if (v82)
              {
                [v105 setEntityDisambiguationContext:v82];
              }

              else
              {
                objc_opt_self();
                v84 = swift_dynamicCastObjCClass();
                if (v84)
                {
                  [v105 setActionConversionContext:v84];
                }

                else
                {
                  objc_opt_self();
                  v85 = swift_dynamicCastObjCClass();
                  if (v85)
                  {
                    [v105 setActionExecutionContext:v85];
                  }

                  else
                  {
                    objc_opt_self();
                    v86 = swift_dynamicCastObjCClass();
                    if (v86)
                    {
                      [v105 setActionPromptForValueContext:v86];
                    }

                    else
                    {
                      objc_opt_self();
                      v87 = swift_dynamicCastObjCClass();
                      if (v87)
                      {
                        [v105 setActionParameterDisambiguationContext:v87];
                      }

                      else
                      {
                        objc_opt_self();
                        v88 = swift_dynamicCastObjCClass();
                        if (v88)
                        {
                          [v105 setActionParameterConfirmationContext:v88];
                        }

                        else
                        {
                          objc_opt_self();
                          v89 = swift_dynamicCastObjCClass();
                          if (v89)
                          {
                            [v105 setActionConfirmationContext:v89];
                          }

                          else
                          {
                            objc_opt_self();
                            v92 = swift_dynamicCastObjCClass();
                            if (v92)
                            {
                              [v105 setAutoShortcutTemplateUsed:v92];
                            }

                            else
                            {
                              [v105 setLinkActionTier1:v104];
                            }

                            v63 = v96;
                            v62 = v97;
                            v65 = v102;
                            v64 = v103;
                            v81 = v99;
                            v66 = v100;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v90 = [objc_opt_self() sharedStream];
            [v90 emitMessage:v105];
            swift_unknownObjectRelease();
            v91 = v98;
            if (v101)
            {
              static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v95, v63, v98);
            }

            (*(v66 + 8))(v81, v65);
            v83 = v64;
            goto LABEL_51;
          }

          v67 = v102;

          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v68 = type metadata accessor for Logger();
          __swift_project_value_buffer(v68, static Logger.voiceCommands);

          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();

          v71 = os_log_type_enabled(v69, v70);
          v72 = v97;
          if (v71)
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            ObjectType = v74;
            *v73 = 136315138;
            v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v26, &ObjectType);

            *(v73 + 4) = v75;
            _os_log_impl(&dword_0, v69, v70, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s", v73, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v74);
          }

          else
          {
          }

          (*(v100 + 8))(v99, v67);
        }

        v83 = v103;
LABEL_51:
        outlined destroy of UUID?(v83);
        return;
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.voiceCommands);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        ObjectType = v47;
        *v46 = 136315138;
        v48 = v24;
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v26, &ObjectType);

        *(v46 + 4) = v49;
        _os_log_impl(&dword_0, v44, v45, "#SLF SELF Log, current taskId is nil, cannot emit %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
      }

      else
      {
      }
    }

    else
    {
      v42 = v105;
    }
  }
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo44FLOWLINKSchemaFLOWLINKActionExecutionContextC_Tt1g5(uint64_t a1, int a2)
{
  v96 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v86 - v9;
  __chkstk_darwin(v8);
  v12 = v86 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v86 - v18;
  __chkstk_darwin(v17);
  v21 = v86 - v20;
  v22 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent) init];
  if (v22)
  {
    v93 = a2;
    v97 = v22;
    v23 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v23)
    {
      v94 = v23;
      v95 = v21;
      v91 = v12;
      v92 = v4;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo44FLOWLINKSchemaFLOWLINKActionExecutionContextCmMd, &_sSo44FLOWLINKSchemaFLOWLINKActionExecutionContextCmMR);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.flowTask.getter();

      v27 = dispatch thunk of FlowTaskProvider.id.getter();
      v29 = v28;

      if (v29)
      {
        v90 = v24;
        v30 = v3;
        v31 = v26;
        v32 = v95;
        UUID.init(uuidString:)();
        outlined init with copy of UUID?(v32, v19);
        if (__swift_getEnumTagSinglePayload(v19, 1, v30) == 1)
        {
          v33 = v27;
          outlined destroy of UUID?(v19);
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          __swift_project_value_buffer(v34, static Logger.voiceCommands);

          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v37 = 136315394;
            v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v29, &ObjectType);

            *(v37 + 4) = v38;
            *(v37 + 12) = 2080;
            v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v31, &ObjectType);

            *(v37 + 14) = v39;
            _os_log_impl(&dword_0, v35, v36, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v37, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {
          v88 = v27;
          v89 = v29;
          v47 = v91;
          v48 = v92;
          v49 = v92 + 32;
          v87 = *(v92 + 32);
          v87(v91, v19, v30);
          v50 = static InstrumentationUtils.createFlowId()();
          if (v50)
          {
            v51 = v50;
            v86[0] = v49;

            v52 = type metadata accessor for SISchemaUUID();
            v53 = *(v48 + 16);
            v53(v10, v47, v30);
            v86[1] = v52;
            v56 = SISchemaUUID.__allocating_init(nsuuid:)(v10, v54, v55);
            v57 = v94;
            [v94 setTaskId:v56];

            v90 = v51;
            [v57 setFlowId:v51];
            static SiriEnvironment.default.getter();
            SiriEnvironment.currentRequest.getter();

            CurrentRequest.resultCandidateId.getter();
            v59 = v58;

            v60 = v30;
            if (v59)
            {

              UUID.init(uuidString:)();

              if (__swift_getEnumTagSinglePayload(v16, 1, v30) == 1)
              {
                outlined destroy of UUID?(v16);
                v61 = v94;
                v62 = v95;
                v63 = v92;
              }

              else
              {
                v87(v7, v16, v30);
                v53(v10, v7, v30);
                v77 = SISchemaUUID.__allocating_init(nsuuid:)(v10, v75, v76);
                v61 = v94;
                [v94 setTrpId:v77];

                v63 = v92;
                (*(v92 + 8))(v7, v30);
                v62 = v95;
              }

              v74 = v89;
              v73 = String._bridgeToObjectiveC()();
            }

            else
            {
              v73 = 0;
              v61 = v94;
              v62 = v95;
              v63 = v92;
              v74 = v89;
            }

            [v61 setResultCandidateId:v73];

            [v97 setEventMetadata:v61];
            objc_opt_self();
            v78 = v96;
            v79 = swift_dynamicCastObjCClass();
            v80 = v91;
            if (v79)
            {
              [v97 setLinkActionContext:v79];
            }

            else
            {
              objc_opt_self();
              v81 = swift_dynamicCastObjCClass();
              if (v81)
              {
                [v97 setEntityDisambiguationContext:v81];
              }

              else
              {
                objc_opt_self();
                v83 = swift_dynamicCastObjCClass();
                if (v83)
                {
                  [v97 setActionConversionContext:v83];
                }

                else
                {
                  [v97 setActionExecutionContext:v78];
                }
              }
            }

            v84 = [objc_opt_self() sharedStream];
            [v84 emitMessage:v97];
            swift_unknownObjectRelease();
            v85 = v90;
            if (v93)
            {
              static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v88, v74, v90);
            }

            (*(v63 + 8))(v80, v60);
            v82 = v62;
            goto LABEL_42;
          }

          v64 = v30;

          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v65 = type metadata accessor for Logger();
          __swift_project_value_buffer(v65, static Logger.voiceCommands);

          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.error.getter();

          v68 = os_log_type_enabled(v66, v67);
          v69 = v94;
          if (v68)
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            ObjectType = v71;
            *v70 = 136315138;
            v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v31, &ObjectType);

            *(v70 + 4) = v72;
            _os_log_impl(&dword_0, v66, v67, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s", v70, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v71);
          }

          else
          {
          }

          (*(v92 + 8))(v91, v64);
        }

        v82 = v95;
LABEL_42:
        outlined destroy of UUID?(v82);
        return;
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.voiceCommands);

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        ObjectType = v45;
        *v44 = 136315138;
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &ObjectType);

        *(v44 + 4) = v46;
        _os_log_impl(&dword_0, v42, v43, "#SLF SELF Log, current taskId is nil, cannot emit %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
      }

      else
      {
      }
    }

    else
    {
      v40 = v97;
    }
  }
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo45FLOWLINKSchemaFLOWLINKActionConversionContextC_Tt1g5(uint64_t a1, int a2)
{
  v96 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v84 - v9;
  __chkstk_darwin(v8);
  v12 = v84 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v84 - v18;
  __chkstk_darwin(v17);
  v21 = v84 - v20;
  v22 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent) init];
  if (v22)
  {
    v97 = v22;
    v23 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v23)
    {
      v92 = v4;
      v93 = v3;
      v90 = a2;
      v94 = v21;
      v95 = v23;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo45FLOWLINKSchemaFLOWLINKActionConversionContextCmMd, &_sSo45FLOWLINKSchemaFLOWLINKActionConversionContextCmMR);
      v91 = String.init<A>(describing:)();
      v25 = v24;
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.flowTask.getter();

      v26 = dispatch thunk of FlowTaskProvider.id.getter();
      v28 = v27;

      if (v28)
      {
        v29 = v94;
        v89 = v26;
        UUID.init(uuidString:)();
        outlined init with copy of UUID?(v29, v19);
        v30 = v93;
        if (__swift_getEnumTagSinglePayload(v19, 1, v93) == 1)
        {
          v31 = v28;
          outlined destroy of UUID?(v19);
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v32 = type metadata accessor for Logger();
          __swift_project_value_buffer(v32, static Logger.voiceCommands);

          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v35 = 136315394;
            v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v31, &ObjectType);

            *(v35 + 4) = v36;
            *(v35 + 12) = 2080;
            v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v25, &ObjectType);

            *(v35 + 14) = v37;
            _os_log_impl(&dword_0, v33, v34, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v35, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v60 = v29;
        }

        else
        {
          v88 = v28;
          v45 = v92;
          v46 = v30;
          v85 = *(v92 + 32);
          v86 = v92 + 32;
          v85(v12, v19, v30);
          v47 = static InstrumentationUtils.createFlowId()();
          if (v47)
          {
            v48 = v47;

            v49 = type metadata accessor for SISchemaUUID();
            v50 = *(v45 + 16);
            v87 = v12;
            v51 = v12;
            v52 = v46;
            v84[0] = v50;
            v50(v10, v51, v46);
            v84[1] = v49;
            v55 = SISchemaUUID.__allocating_init(nsuuid:)(v10, v53, v54);
            v56 = v95;
            [v95 setTaskId:v55];

            v91 = v48;
            [v56 setFlowId:v48];
            static SiriEnvironment.default.getter();
            SiriEnvironment.currentRequest.getter();

            CurrentRequest.resultCandidateId.getter();
            v58 = v57;

            if (v58)
            {

              UUID.init(uuidString:)();

              if (__swift_getEnumTagSinglePayload(v16, 1, v52) == 1)
              {
                outlined destroy of UUID?(v16);
                v59 = v95;
              }

              else
              {
                v85(v7, v16, v52);
                (v84[0])(v10, v7, v52);
                v75 = SISchemaUUID.__allocating_init(nsuuid:)(v10, v73, v74);
                v59 = v95;
                [v95 setTrpId:v75];

                (*(v92 + 8))(v7, v52);
              }

              v71 = v94;
              v72 = v87;
              v70 = String._bridgeToObjectiveC()();
            }

            else
            {
              v70 = 0;
              v71 = v94;
              v59 = v95;
              v72 = v87;
            }

            [v59 setResultCandidateId:v70];

            [v97 setEventMetadata:v59];
            objc_opt_self();
            v76 = v96;
            v77 = swift_dynamicCastObjCClass();
            v78 = v92;
            v79 = v90;
            v80 = v89;
            if (v77)
            {
              [v97 setLinkActionContext:v77];
            }

            else
            {
              objc_opt_self();
              v81 = swift_dynamicCastObjCClass();
              if (v81)
              {
                [v97 setEntityDisambiguationContext:v81];
              }

              else
              {
                [v97 setActionConversionContext:v76];
              }
            }

            v82 = [objc_opt_self() sharedStream];
            [v82 emitMessage:v97];
            swift_unknownObjectRelease();
            v83 = v91;
            if (v79)
            {
              static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v80, v88, v91);
            }

            (*(v78 + 8))(v72, v93);
            v60 = v71;
          }

          else
          {

            if (one-time initialization token for voiceCommands != -1)
            {
              swift_once();
            }

            v61 = type metadata accessor for Logger();
            __swift_project_value_buffer(v61, static Logger.voiceCommands);

            v62 = Logger.logObject.getter();
            v63 = static os_log_type_t.error.getter();

            v64 = os_log_type_enabled(v62, v63);
            v65 = v92;
            v66 = v94;
            if (v64)
            {
              v67 = swift_slowAlloc();
              v68 = swift_slowAlloc();
              ObjectType = v68;
              *v67 = 136315138;
              v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v25, &ObjectType);

              *(v67 + 4) = v69;
              _os_log_impl(&dword_0, v62, v63, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s", v67, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v68);
            }

            else
            {
            }

            (*(v65 + 8))(v12, v93);
            v60 = v66;
          }
        }

        outlined destroy of UUID?(v60);
      }

      else
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        __swift_project_value_buffer(v39, static Logger.voiceCommands);

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          ObjectType = v43;
          *v42 = 136315138;
          v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v25, &ObjectType);

          *(v42 + 4) = v44;
          _os_log_impl(&dword_0, v40, v41, "#SLF SELF Log, current taskId is nil, cannot emit %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v43);
        }

        else
        {
        }
      }
    }

    else
    {
      v38 = v97;
    }
  }
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo49FLOWLINKSchemaFLOWLINKEntityDisambiguationContextC_Tt1g5(uint64_t a1, int a2)
{
  v94 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v82 - v9;
  __chkstk_darwin(v8);
  v12 = v82 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v82 - v18;
  __chkstk_darwin(v17);
  v21 = v82 - v20;
  v22 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent) init];
  if (v22)
  {
    v95 = v22;
    v23 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v23)
    {
      v90 = v4;
      v91 = v3;
      v88 = a2;
      v92 = v21;
      v93 = v23;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo49FLOWLINKSchemaFLOWLINKEntityDisambiguationContextCmMd, &_sSo49FLOWLINKSchemaFLOWLINKEntityDisambiguationContextCmMR);
      v89 = String.init<A>(describing:)();
      v25 = v24;
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.flowTask.getter();

      v26 = dispatch thunk of FlowTaskProvider.id.getter();
      v28 = v27;

      if (v28)
      {
        v29 = v92;
        v87 = v26;
        UUID.init(uuidString:)();
        outlined init with copy of UUID?(v29, v19);
        v30 = v91;
        if (__swift_getEnumTagSinglePayload(v19, 1, v91) == 1)
        {
          v31 = v28;
          outlined destroy of UUID?(v19);
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v32 = type metadata accessor for Logger();
          __swift_project_value_buffer(v32, static Logger.voiceCommands);

          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v35 = 136315394;
            v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v31, &ObjectType);

            *(v35 + 4) = v36;
            *(v35 + 12) = 2080;
            v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v25, &ObjectType);

            *(v35 + 14) = v37;
            _os_log_impl(&dword_0, v33, v34, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v35, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v60 = v29;
        }

        else
        {
          v86 = v28;
          v45 = v90;
          v46 = v30;
          v83 = *(v90 + 32);
          v84 = v90 + 32;
          v83(v12, v19, v30);
          v47 = static InstrumentationUtils.createFlowId()();
          if (v47)
          {
            v48 = v47;

            v49 = type metadata accessor for SISchemaUUID();
            v50 = *(v45 + 16);
            v85 = v12;
            v51 = v12;
            v52 = v46;
            v82[0] = v50;
            v50(v10, v51, v46);
            v82[1] = v49;
            v55 = SISchemaUUID.__allocating_init(nsuuid:)(v10, v53, v54);
            v56 = v93;
            [v93 setTaskId:v55];

            v89 = v48;
            [v56 setFlowId:v48];
            static SiriEnvironment.default.getter();
            SiriEnvironment.currentRequest.getter();

            CurrentRequest.resultCandidateId.getter();
            v58 = v57;

            if (v58)
            {

              UUID.init(uuidString:)();

              if (__swift_getEnumTagSinglePayload(v16, 1, v52) == 1)
              {
                outlined destroy of UUID?(v16);
                v59 = v93;
              }

              else
              {
                v83(v7, v16, v52);
                (v82[0])(v10, v7, v52);
                v74 = SISchemaUUID.__allocating_init(nsuuid:)(v10, v72, v73);
                v59 = v93;
                [v93 setTrpId:v74];

                (*(v90 + 8))(v7, v52);
              }

              v70 = v92;
              v71 = v85;
              v69 = String._bridgeToObjectiveC()();
            }

            else
            {
              v69 = 0;
              v70 = v92;
              v59 = v93;
              v71 = v85;
            }

            [v59 setResultCandidateId:v69];

            [v95 setEventMetadata:v59];
            objc_opt_self();
            v75 = v94;
            v76 = swift_dynamicCastObjCClass();
            v77 = v90;
            v78 = v88;
            v79 = v87;
            if (v76)
            {
              [v95 setLinkActionContext:v76];
            }

            else
            {
              [v95 setEntityDisambiguationContext:v75];
            }

            v80 = [objc_opt_self() sharedStream];
            [v80 emitMessage:v95];
            swift_unknownObjectRelease();
            v81 = v89;
            if (v78)
            {
              static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v79, v86, v89);
            }

            (*(v77 + 8))(v71, v91);
            v60 = v70;
          }

          else
          {

            if (one-time initialization token for voiceCommands != -1)
            {
              swift_once();
            }

            v61 = type metadata accessor for Logger();
            __swift_project_value_buffer(v61, static Logger.voiceCommands);

            v62 = Logger.logObject.getter();
            v63 = static os_log_type_t.error.getter();

            v64 = os_log_type_enabled(v62, v63);
            v65 = v92;
            if (v64)
            {
              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              ObjectType = v67;
              *v66 = 136315138;
              v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v25, &ObjectType);

              *(v66 + 4) = v68;
              _os_log_impl(&dword_0, v62, v63, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s", v66, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v67);
            }

            else
            {
            }

            (*(v90 + 8))(v12, v91);
            v60 = v65;
          }
        }

        outlined destroy of UUID?(v60);
      }

      else
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        __swift_project_value_buffer(v39, static Logger.voiceCommands);

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          ObjectType = v43;
          *v42 = 136315138;
          v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v25, &ObjectType);

          *(v42 + 4) = v44;
          _os_log_impl(&dword_0, v40, v41, "#SLF SELF Log, current taskId is nil, cannot emit %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v43);
        }

        else
        {
        }
      }
    }

    else
    {
      v38 = v95;
    }
  }
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo49FLOWLINKSchemaFLOWLINKActionPromptForValueContextC_Tt1g5(uint64_t a1, int a2)
{
  v101 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v88 - v9;
  __chkstk_darwin(v8);
  v12 = &v88 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v88 - v18;
  __chkstk_darwin(v17);
  v21 = &v88 - v20;
  v22 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent) init];
  if (v22)
  {
    v98 = a2;
    v102 = v22;
    v23 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v23)
    {
      v99 = v23;
      v100 = v21;
      v96 = v12;
      v97 = v4;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo49FLOWLINKSchemaFLOWLINKActionPromptForValueContextCmMd, &_sSo49FLOWLINKSchemaFLOWLINKActionPromptForValueContextCmMR);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.flowTask.getter();

      v27 = dispatch thunk of FlowTaskProvider.id.getter();
      v29 = v28;

      if (v29)
      {
        v94 = v24;
        v30 = v26;
        v31 = v3;
        v32 = v100;
        UUID.init(uuidString:)();
        outlined init with copy of UUID?(v32, v19);
        if (__swift_getEnumTagSinglePayload(v19, 1, v31) == 1)
        {
          v33 = v27;
          outlined destroy of UUID?(v19);
          v34 = v30;
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v35 = type metadata accessor for Logger();
          __swift_project_value_buffer(v35, static Logger.voiceCommands);

          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v38 = 136315394;
            v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v29, &ObjectType);

            *(v38 + 4) = v39;
            *(v38 + 12) = 2080;
            v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v34, &ObjectType);

            *(v38 + 14) = v40;
            _os_log_impl(&dword_0, v36, v37, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v38, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {
          v92 = v27;
          v93 = v29;
          v49 = v96;
          v48 = v97;
          v91 = *(v97 + 32);
          v91(v96, v19, v31);
          v50 = static InstrumentationUtils.createFlowId()();
          v95 = v31;
          v51 = v30;
          if (v50)
          {
            v52 = v50;

            v53 = type metadata accessor for SISchemaUUID();
            v89 = *(v48 + 16);
            v89(v10, v49, v95);
            v90 = v53;
            v56 = SISchemaUUID.__allocating_init(nsuuid:)(v10, v54, v55);
            v57 = v99;
            [v99 setTaskId:v56];

            v94 = v52;
            [v57 setFlowId:v52];
            static SiriEnvironment.default.getter();
            SiriEnvironment.currentRequest.getter();

            CurrentRequest.resultCandidateId.getter();
            v59 = v58;

            if (v59)
            {

              UUID.init(uuidString:)();

              if (__swift_getEnumTagSinglePayload(v16, 1, v95) == 1)
              {
                v60 = v95;
                outlined destroy of UUID?(v16);
                v61 = v99;
                v62 = v100;
                v63 = v97;
              }

              else
              {
                v75 = v95;
                v91(v7, v16, v95);
                v89(v10, v7, v75);
                v78 = SISchemaUUID.__allocating_init(nsuuid:)(v10, v76, v77);
                v61 = v99;
                [v99 setTrpId:v78];

                v63 = v97;
                v60 = v75;
                (*(v97 + 8))(v7, v75);
                v62 = v100;
              }

              v74 = v93;
              v73 = String._bridgeToObjectiveC()();
            }

            else
            {
              v60 = v95;
              v73 = 0;
              v61 = v99;
              v62 = v100;
              v63 = v97;
              v74 = v93;
            }

            [v61 setResultCandidateId:v73];

            [v102 setEventMetadata:v61];
            objc_opt_self();
            v79 = v101;
            v80 = swift_dynamicCastObjCClass();
            v81 = v96;
            if (v80)
            {
              [v102 setLinkActionContext:v80];
            }

            else
            {
              objc_opt_self();
              v82 = swift_dynamicCastObjCClass();
              if (v82)
              {
                [v102 setEntityDisambiguationContext:v82];
              }

              else
              {
                objc_opt_self();
                v84 = swift_dynamicCastObjCClass();
                if (v84)
                {
                  [v102 setActionConversionContext:v84];
                }

                else
                {
                  objc_opt_self();
                  v85 = swift_dynamicCastObjCClass();
                  if (v85)
                  {
                    [v102 setActionExecutionContext:v85];
                  }

                  else
                  {
                    [v102 setActionPromptForValueContext:v79];
                  }
                }
              }
            }

            v86 = [objc_opt_self() sharedStream];
            [v86 emitMessage:v102];
            swift_unknownObjectRelease();
            v87 = v94;
            if (v98)
            {
              static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v92, v74, v94);
            }

            (*(v63 + 8))(v81, v60);
            v83 = v62;
            goto LABEL_44;
          }

          v64 = v95;

          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v65 = type metadata accessor for Logger();
          __swift_project_value_buffer(v65, static Logger.voiceCommands);

          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.error.getter();

          v68 = os_log_type_enabled(v66, v67);
          v69 = v99;
          if (v68)
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            ObjectType = v71;
            *v70 = 136315138;
            v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v51, &ObjectType);

            *(v70 + 4) = v72;
            _os_log_impl(&dword_0, v66, v67, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s", v70, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v71);
          }

          else
          {
          }

          (*(v97 + 8))(v96, v64);
        }

        v83 = v100;
LABEL_44:
        outlined destroy of UUID?(v83);
        return;
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.voiceCommands);

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        ObjectType = v46;
        *v45 = 136315138;
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &ObjectType);

        *(v45 + 4) = v47;
        _os_log_impl(&dword_0, v43, v44, "#SLF SELF Log, current taskId is nil, cannot emit %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
      }

      else
      {
      }
    }

    else
    {
      v41 = v102;
    }
  }
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo58FLOWLINKSchemaFLOWLINKActionParameterDisambiguationContextC_Tt1g5(uint64_t a1, int a2)
{
  v103 = a1;
  v102 = type metadata accessor for UUID();
  v3 = *(v102 - 8);
  v4 = __chkstk_darwin(v102);
  v6 = v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v92 - v8;
  __chkstk_darwin(v7);
  v11 = v92 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v92 - v17;
  __chkstk_darwin(v16);
  v20 = v92 - v19;
  v21 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent) init];
  if (v21)
  {
    v100 = a2;
    v104 = v21;
    v22 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v22)
    {
      v23 = v22;
      v98 = v11;
      v99 = v3;
      v101 = v20;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo58FLOWLINKSchemaFLOWLINKActionParameterDisambiguationContextCmMd, &_sSo58FLOWLINKSchemaFLOWLINKActionParameterDisambiguationContextCmMR);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.flowTask.getter();

      v27 = dispatch thunk of FlowTaskProvider.id.getter();
      v29 = v28;

      if (v29)
      {
        v97 = v24;
        v30 = v101;
        UUID.init(uuidString:)();
        outlined init with copy of UUID?(v30, v18);
        v31 = v102;
        if (__swift_getEnumTagSinglePayload(v18, 1, v102) == 1)
        {
          v32 = v27;
          outlined destroy of UUID?(v18);
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v33 = type metadata accessor for Logger();
          __swift_project_value_buffer(v33, static Logger.voiceCommands);

          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v36 = 136315394;
            v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v29, &ObjectType);
            v38 = v23;
            v39 = v37;

            *(v36 + 4) = v39;
            *(v36 + 12) = 2080;
            v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v26, &ObjectType);

            *(v36 + 14) = v40;
            _os_log_impl(&dword_0, v34, v35, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v36, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {
          v94 = v27;
          v95 = v29;
          v96 = v23;
          v52 = v98;
          v51 = v99;
          v53 = v99 + 32;
          v93 = *(v99 + 32);
          v93(v98, v18, v31);
          v54 = static InstrumentationUtils.createFlowId()();
          if (v54)
          {
            v55 = v54;
            v92[1] = v53;

            v56 = type metadata accessor for SISchemaUUID();
            v57 = *(v51 + 16);
            v57(v9, v52, v31);
            v92[2] = v56;
            v60 = SISchemaUUID.__allocating_init(nsuuid:)(v9, v58, v59);
            v61 = v96;
            [v96 setTaskId:v60];

            v97 = v55;
            [v61 setFlowId:v55];
            static SiriEnvironment.default.getter();
            SiriEnvironment.currentRequest.getter();

            CurrentRequest.resultCandidateId.getter();
            v63 = v62;

            if (v63)
            {

              UUID.init(uuidString:)();

              v64 = v31;
              if (__swift_getEnumTagSinglePayload(v15, 1, v31) == 1)
              {
                outlined destroy of UUID?(v15);
                v65 = v96;
                v66 = v101;
                v67 = v99;
              }

              else
              {
                v93(v6, v15, v31);
                v57(v9, v6, v31);
                v81 = SISchemaUUID.__allocating_init(nsuuid:)(v9, v79, v80);
                v65 = v96;
                [v96 setTrpId:v81];

                v67 = v99;
                (*(v99 + 8))(v6, v31);
                v66 = v101;
              }

              v78 = v95;
              v77 = String._bridgeToObjectiveC()();
            }

            else
            {
              v77 = 0;
              v78 = v95;
              v65 = v96;
              v66 = v101;
              v67 = v99;
              v64 = v31;
            }

            [v65 setResultCandidateId:v77];

            [v104 setEventMetadata:v65];
            objc_opt_self();
            v82 = v103;
            v83 = swift_dynamicCastObjCClass();
            v84 = v98;
            if (v83)
            {
              [v104 setLinkActionContext:v83];
            }

            else
            {
              objc_opt_self();
              v85 = swift_dynamicCastObjCClass();
              if (v85)
              {
                [v104 setEntityDisambiguationContext:v85];
              }

              else
              {
                objc_opt_self();
                v87 = swift_dynamicCastObjCClass();
                if (v87)
                {
                  [v104 setActionConversionContext:v87];
                }

                else
                {
                  objc_opt_self();
                  v88 = swift_dynamicCastObjCClass();
                  if (v88)
                  {
                    [v104 setActionExecutionContext:v88];
                  }

                  else
                  {
                    objc_opt_self();
                    v89 = swift_dynamicCastObjCClass();
                    if (v89)
                    {
                      [v104 setActionPromptForValueContext:v89];
                    }

                    else
                    {
                      [v104 setActionParameterDisambiguationContext:v82];
                    }
                  }
                }
              }
            }

            v90 = [objc_opt_self() sharedStream];
            [v90 emitMessage:v104];
            swift_unknownObjectRelease();
            v91 = v97;
            if (v100)
            {
              static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v94, v78, v97);
            }

            (*(v67 + 8))(v84, v64);
            v86 = v66;
            goto LABEL_45;
          }

          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v68 = type metadata accessor for Logger();
          __swift_project_value_buffer(v68, static Logger.voiceCommands);

          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();

          v71 = os_log_type_enabled(v69, v70);
          v72 = v96;
          v73 = v102;
          if (v71)
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            ObjectType = v75;
            *v74 = 136315138;
            v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v26, &ObjectType);

            *(v74 + 4) = v76;
            _os_log_impl(&dword_0, v69, v70, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s", v74, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v75);
          }

          else
          {
          }

          (*(v99 + 8))(v98, v73);
        }

        v86 = v101;
LABEL_45:
        outlined destroy of UUID?(v86);
        return;
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.voiceCommands);

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = v24;
        v48 = v46;
        ObjectType = v46;
        *v45 = 136315138;
        v49 = v23;
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v26, &ObjectType);

        *(v45 + 4) = v50;
        _os_log_impl(&dword_0, v43, v44, "#SLF SELF Log, current taskId is nil, cannot emit %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
      }

      else
      {
      }
    }

    else
    {
      v41 = v104;
    }
  }
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo56FLOWLINKSchemaFLOWLINKActionParameterConfirmationContextC_Tt1g5(uint64_t a1, int a2)
{
  v104 = a1;
  v103 = type metadata accessor for UUID();
  v3 = *(v103 - 8);
  v4 = __chkstk_darwin(v103);
  v6 = v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v93 - v8;
  __chkstk_darwin(v7);
  v11 = v93 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v93 - v17;
  __chkstk_darwin(v16);
  v20 = v93 - v19;
  v21 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent) init];
  if (v21)
  {
    v101 = a2;
    v105 = v21;
    v22 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v22)
    {
      v23 = v22;
      v99 = v11;
      v100 = v3;
      v102 = v20;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo56FLOWLINKSchemaFLOWLINKActionParameterConfirmationContextCmMd, &_sSo56FLOWLINKSchemaFLOWLINKActionParameterConfirmationContextCmMR);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.flowTask.getter();

      v27 = dispatch thunk of FlowTaskProvider.id.getter();
      v29 = v28;

      if (v29)
      {
        v98 = v24;
        v30 = v102;
        UUID.init(uuidString:)();
        outlined init with copy of UUID?(v30, v18);
        v31 = v103;
        if (__swift_getEnumTagSinglePayload(v18, 1, v103) == 1)
        {
          v32 = v27;
          outlined destroy of UUID?(v18);
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v33 = type metadata accessor for Logger();
          __swift_project_value_buffer(v33, static Logger.voiceCommands);

          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v36 = 136315394;
            v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v29, &ObjectType);
            v38 = v23;
            v39 = v37;

            *(v36 + 4) = v39;
            *(v36 + 12) = 2080;
            v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v26, &ObjectType);

            *(v36 + 14) = v40;
            _os_log_impl(&dword_0, v34, v35, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v36, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {
          v95 = v27;
          v96 = v29;
          v97 = v23;
          v52 = v99;
          v51 = v100;
          v53 = v100 + 32;
          v94 = *(v100 + 32);
          v94(v99, v18, v31);
          v54 = static InstrumentationUtils.createFlowId()();
          if (v54)
          {
            v55 = v54;
            v93[1] = v53;

            v56 = type metadata accessor for SISchemaUUID();
            v57 = *(v51 + 16);
            v57(v9, v52, v31);
            v93[2] = v56;
            v60 = SISchemaUUID.__allocating_init(nsuuid:)(v9, v58, v59);
            v61 = v97;
            [v97 setTaskId:v60];

            v98 = v55;
            [v61 setFlowId:v55];
            static SiriEnvironment.default.getter();
            SiriEnvironment.currentRequest.getter();

            CurrentRequest.resultCandidateId.getter();
            v63 = v62;

            if (v63)
            {

              UUID.init(uuidString:)();

              v64 = v31;
              if (__swift_getEnumTagSinglePayload(v15, 1, v31) == 1)
              {
                outlined destroy of UUID?(v15);
                v65 = v97;
                v66 = v102;
                v67 = v100;
              }

              else
              {
                v94(v6, v15, v31);
                v57(v9, v6, v31);
                v81 = SISchemaUUID.__allocating_init(nsuuid:)(v9, v79, v80);
                v65 = v97;
                [v97 setTrpId:v81];

                v67 = v100;
                (*(v100 + 8))(v6, v31);
                v66 = v102;
              }

              v78 = v96;
              v77 = String._bridgeToObjectiveC()();
            }

            else
            {
              v77 = 0;
              v78 = v96;
              v65 = v97;
              v66 = v102;
              v67 = v100;
              v64 = v31;
            }

            [v65 setResultCandidateId:v77];

            [v105 setEventMetadata:v65];
            objc_opt_self();
            v82 = v104;
            v83 = swift_dynamicCastObjCClass();
            v84 = v99;
            if (v83)
            {
              [v105 setLinkActionContext:v83];
            }

            else
            {
              objc_opt_self();
              v85 = swift_dynamicCastObjCClass();
              if (v85)
              {
                [v105 setEntityDisambiguationContext:v85];
              }

              else
              {
                objc_opt_self();
                v87 = swift_dynamicCastObjCClass();
                if (v87)
                {
                  [v105 setActionConversionContext:v87];
                }

                else
                {
                  objc_opt_self();
                  v88 = swift_dynamicCastObjCClass();
                  if (v88)
                  {
                    [v105 setActionExecutionContext:v88];
                  }

                  else
                  {
                    objc_opt_self();
                    v89 = swift_dynamicCastObjCClass();
                    if (v89)
                    {
                      [v105 setActionPromptForValueContext:v89];
                    }

                    else
                    {
                      objc_opt_self();
                      v90 = swift_dynamicCastObjCClass();
                      if (v90)
                      {
                        [v105 setActionParameterDisambiguationContext:v90];
                      }

                      else
                      {
                        [v105 setActionParameterConfirmationContext:v82];
                      }
                    }
                  }
                }
              }
            }

            v91 = [objc_opt_self() sharedStream];
            [v91 emitMessage:v105];
            swift_unknownObjectRelease();
            v92 = v98;
            if (v101)
            {
              static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v95, v78, v98);
            }

            (*(v67 + 8))(v84, v64);
            v86 = v66;
            goto LABEL_47;
          }

          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v68 = type metadata accessor for Logger();
          __swift_project_value_buffer(v68, static Logger.voiceCommands);

          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();

          v71 = os_log_type_enabled(v69, v70);
          v72 = v97;
          v73 = v103;
          if (v71)
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            ObjectType = v75;
            *v74 = 136315138;
            v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v26, &ObjectType);

            *(v74 + 4) = v76;
            _os_log_impl(&dword_0, v69, v70, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s", v74, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v75);
          }

          else
          {
          }

          (*(v100 + 8))(v99, v73);
        }

        v86 = v102;
LABEL_47:
        outlined destroy of UUID?(v86);
        return;
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.voiceCommands);

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = v24;
        v48 = v46;
        ObjectType = v46;
        *v45 = 136315138;
        v49 = v23;
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v26, &ObjectType);

        *(v45 + 4) = v50;
        _os_log_impl(&dword_0, v43, v44, "#SLF SELF Log, current taskId is nil, cannot emit %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
      }

      else
      {
      }
    }

    else
    {
      v41 = v105;
    }
  }
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo47FLOWLINKSchemaFLOWLINKActionConfirmationContextC_Tt1g5(uint64_t a1, int a2)
{
  v105 = a1;
  v104 = type metadata accessor for UUID();
  v3 = *(v104 - 8);
  v4 = __chkstk_darwin(v104);
  v6 = v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v94 - v8;
  __chkstk_darwin(v7);
  v11 = v94 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v94 - v17;
  __chkstk_darwin(v16);
  v20 = v94 - v19;
  v21 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent) init];
  if (v21)
  {
    v102 = a2;
    v106 = v21;
    v22 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v22)
    {
      v23 = v22;
      v100 = v11;
      v101 = v3;
      v103 = v20;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo47FLOWLINKSchemaFLOWLINKActionConfirmationContextCmMd, &_sSo47FLOWLINKSchemaFLOWLINKActionConfirmationContextCmMR);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.flowTask.getter();

      v27 = dispatch thunk of FlowTaskProvider.id.getter();
      v29 = v28;

      if (v29)
      {
        v99 = v24;
        v30 = v103;
        UUID.init(uuidString:)();
        outlined init with copy of UUID?(v30, v18);
        v31 = v104;
        if (__swift_getEnumTagSinglePayload(v18, 1, v104) == 1)
        {
          v32 = v27;
          outlined destroy of UUID?(v18);
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v33 = type metadata accessor for Logger();
          __swift_project_value_buffer(v33, static Logger.voiceCommands);

          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v36 = 136315394;
            v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v29, &ObjectType);
            v38 = v23;
            v39 = v37;

            *(v36 + 4) = v39;
            *(v36 + 12) = 2080;
            v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v26, &ObjectType);

            *(v36 + 14) = v40;
            _os_log_impl(&dword_0, v34, v35, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v36, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {
          v96 = v27;
          v97 = v29;
          v98 = v23;
          v52 = v100;
          v51 = v101;
          v53 = v101 + 32;
          v95 = *(v101 + 32);
          v95(v100, v18, v31);
          v54 = static InstrumentationUtils.createFlowId()();
          if (v54)
          {
            v55 = v54;
            v94[1] = v53;

            v56 = type metadata accessor for SISchemaUUID();
            v57 = *(v51 + 16);
            v57(v9, v52, v31);
            v94[2] = v56;
            v60 = SISchemaUUID.__allocating_init(nsuuid:)(v9, v58, v59);
            v61 = v98;
            [v98 setTaskId:v60];

            v99 = v55;
            [v61 setFlowId:v55];
            static SiriEnvironment.default.getter();
            SiriEnvironment.currentRequest.getter();

            CurrentRequest.resultCandidateId.getter();
            v63 = v62;

            if (v63)
            {

              UUID.init(uuidString:)();

              v64 = v31;
              if (__swift_getEnumTagSinglePayload(v15, 1, v31) == 1)
              {
                outlined destroy of UUID?(v15);
                v65 = v98;
                v66 = v103;
                v67 = v101;
              }

              else
              {
                v95(v6, v15, v31);
                v57(v9, v6, v31);
                v81 = SISchemaUUID.__allocating_init(nsuuid:)(v9, v79, v80);
                v65 = v98;
                [v98 setTrpId:v81];

                v67 = v101;
                (*(v101 + 8))(v6, v31);
                v66 = v103;
              }

              v78 = v97;
              v77 = String._bridgeToObjectiveC()();
            }

            else
            {
              v77 = 0;
              v78 = v97;
              v65 = v98;
              v66 = v103;
              v67 = v101;
              v64 = v31;
            }

            [v65 setResultCandidateId:v77];

            [v106 setEventMetadata:v65];
            objc_opt_self();
            v82 = v105;
            v83 = swift_dynamicCastObjCClass();
            v84 = v100;
            if (v83)
            {
              [v106 setLinkActionContext:v83];
            }

            else
            {
              objc_opt_self();
              v85 = swift_dynamicCastObjCClass();
              if (v85)
              {
                [v106 setEntityDisambiguationContext:v85];
              }

              else
              {
                objc_opt_self();
                v87 = swift_dynamicCastObjCClass();
                if (v87)
                {
                  [v106 setActionConversionContext:v87];
                }

                else
                {
                  objc_opt_self();
                  v88 = swift_dynamicCastObjCClass();
                  if (v88)
                  {
                    [v106 setActionExecutionContext:v88];
                  }

                  else
                  {
                    objc_opt_self();
                    v89 = swift_dynamicCastObjCClass();
                    if (v89)
                    {
                      [v106 setActionPromptForValueContext:v89];
                    }

                    else
                    {
                      objc_opt_self();
                      v90 = swift_dynamicCastObjCClass();
                      if (v90)
                      {
                        [v106 setActionParameterDisambiguationContext:v90];
                      }

                      else
                      {
                        objc_opt_self();
                        v91 = swift_dynamicCastObjCClass();
                        if (v91)
                        {
                          [v106 setActionParameterConfirmationContext:v91];
                        }

                        else
                        {
                          [v106 setActionConfirmationContext:v82];
                        }
                      }
                    }
                  }
                }
              }
            }

            v92 = [objc_opt_self() sharedStream];
            [v92 emitMessage:v106];
            swift_unknownObjectRelease();
            v93 = v99;
            if (v102)
            {
              static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v96, v78, v99);
            }

            (*(v67 + 8))(v84, v64);
            v86 = v66;
            goto LABEL_49;
          }

          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v68 = type metadata accessor for Logger();
          __swift_project_value_buffer(v68, static Logger.voiceCommands);

          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();

          v71 = os_log_type_enabled(v69, v70);
          v72 = v98;
          v73 = v104;
          if (v71)
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            ObjectType = v75;
            *v74 = 136315138;
            v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v26, &ObjectType);

            *(v74 + 4) = v76;
            _os_log_impl(&dword_0, v69, v70, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s", v74, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v75);
          }

          else
          {
          }

          (*(v101 + 8))(v100, v73);
        }

        v86 = v103;
LABEL_49:
        outlined destroy of UUID?(v86);
        return;
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.voiceCommands);

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = v24;
        v48 = v46;
        ObjectType = v46;
        *v45 = 136315138;
        v49 = v23;
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v26, &ObjectType);

        *(v45 + 4) = v50;
        _os_log_impl(&dword_0, v43, v44, "#SLF SELF Log, current taskId is nil, cannot emit %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
      }

      else
      {
      }
    }

    else
    {
      v41 = v106;
    }
  }
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo60FLOWLINKSchemaFLOWLINKAppShortcutFirstRunConfirmationContextC_Tt1g5(uint64_t a1, int a2)
{
  v106 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v95 - v9;
  __chkstk_darwin(v8);
  v12 = &v95 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v95 - v18;
  __chkstk_darwin(v17);
  v21 = &v95 - v20;
  v22 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent) init];
  if (v22)
  {
    v103 = a2;
    v107 = v22;
    v23 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v23)
    {
      v24 = v23;
      v101 = v12;
      v102 = v4;
      v105 = v21;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo60FLOWLINKSchemaFLOWLINKAppShortcutFirstRunConfirmationContextCmMd, &_sSo60FLOWLINKSchemaFLOWLINKAppShortcutFirstRunConfirmationContextCmMR);
      v100 = String.init<A>(describing:)();
      v26 = v25;
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.flowTask.getter();

      v27 = dispatch thunk of FlowTaskProvider.id.getter();
      v29 = v28;

      if (v29)
      {
        v104 = v3;
        v30 = v105;
        UUID.init(uuidString:)();
        v31 = v30;
        v32 = v104;
        outlined init with copy of UUID?(v31, v19);
        if (__swift_getEnumTagSinglePayload(v19, 1, v32) == 1)
        {
          v33 = v27;
          outlined destroy of UUID?(v19);
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          __swift_project_value_buffer(v34, static Logger.voiceCommands);

          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v37 = 136315394;
            v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v29, &ObjectType);
            v39 = v24;
            v40 = v38;

            *(v37 + 4) = v40;
            *(v37 + 12) = 2080;
            v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v26, &ObjectType);

            *(v37 + 14) = v41;
            _os_log_impl(&dword_0, v35, v36, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v37, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {
          v97 = v27;
          v98 = v29;
          v99 = v24;
          v51 = v101;
          v50 = v102;
          v96 = *(v102 + 32);
          v96(v101, v19, v32);
          v52 = static InstrumentationUtils.createFlowId()();
          if (v52)
          {
            v53 = v52;

            v54 = type metadata accessor for SISchemaUUID();
            v55 = *(v50 + 16);
            v55(v10, v51, v104);
            v95 = v54;
            v58 = SISchemaUUID.__allocating_init(nsuuid:)(v10, v56, v57);
            v59 = v99;
            [v99 setTaskId:v58];

            v100 = v53;
            [v59 setFlowId:v53];
            static SiriEnvironment.default.getter();
            SiriEnvironment.currentRequest.getter();

            CurrentRequest.resultCandidateId.getter();
            v61 = v60;

            if (v61)
            {

              UUID.init(uuidString:)();

              if (__swift_getEnumTagSinglePayload(v16, 1, v104) == 1)
              {
                outlined destroy of UUID?(v16);
                v63 = v98;
                v62 = v99;
                v65 = v104;
                v64 = v105;
                v66 = v102;
              }

              else
              {
                v65 = v104;
                v96(v7, v16, v104);
                v55(v10, v7, v65);
                v79 = SISchemaUUID.__allocating_init(nsuuid:)(v10, v77, v78);
                v62 = v99;
                [v99 setTrpId:v79];

                v66 = v102;
                (*(v102 + 8))(v7, v65);
                v64 = v105;
                v63 = v98;
              }

              v76 = String._bridgeToObjectiveC()();
            }

            else
            {
              v76 = 0;
              v63 = v98;
              v62 = v99;
              v65 = v104;
              v64 = v105;
              v66 = v102;
            }

            [v62 setResultCandidateId:v76];

            [v107 setEventMetadata:v62];
            objc_opt_self();
            v80 = swift_dynamicCastObjCClass();
            v81 = v101;
            if (v80)
            {
              [v107 setLinkActionContext:v80];
            }

            else
            {
              objc_opt_self();
              v82 = swift_dynamicCastObjCClass();
              if (v82)
              {
                [v107 setEntityDisambiguationContext:v82];
              }

              else
              {
                objc_opt_self();
                v84 = swift_dynamicCastObjCClass();
                if (v84)
                {
                  [v107 setActionConversionContext:v84];
                }

                else
                {
                  objc_opt_self();
                  v85 = swift_dynamicCastObjCClass();
                  if (v85)
                  {
                    [v107 setActionExecutionContext:v85];
                  }

                  else
                  {
                    objc_opt_self();
                    v86 = swift_dynamicCastObjCClass();
                    if (v86)
                    {
                      [v107 setActionPromptForValueContext:v86];
                    }

                    else
                    {
                      objc_opt_self();
                      v87 = swift_dynamicCastObjCClass();
                      if (v87)
                      {
                        [v107 setActionParameterDisambiguationContext:v87];
                      }

                      else
                      {
                        objc_opt_self();
                        v88 = swift_dynamicCastObjCClass();
                        if (v88)
                        {
                          [v107 setActionParameterConfirmationContext:v88];
                        }

                        else
                        {
                          objc_opt_self();
                          v89 = swift_dynamicCastObjCClass();
                          if (v89)
                          {
                            [v107 setActionConfirmationContext:v89];
                          }

                          else
                          {
                            objc_opt_self();
                            v92 = swift_dynamicCastObjCClass();
                            if (v92)
                            {
                              [v107 setAutoShortcutTemplateUsed:v92];
                            }

                            else
                            {
                              objc_opt_self();
                              v93 = swift_dynamicCastObjCClass();
                              if (v93)
                              {
                                [v107 setLinkActionTier1:v93];
                              }

                              else
                              {
                                objc_opt_self();
                                v94 = swift_dynamicCastObjCClass();
                                if (v94)
                                {
                                  [v107 setActionParameterUpdated:v94];
                                }

                                else
                                {
                                  [v107 setAppShortcutFirstRunConfirmationContext:v106];
                                }
                              }
                            }

                            v63 = v98;
                            v62 = v99;
                            v65 = v104;
                            v64 = v105;
                            v81 = v101;
                            v66 = v102;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v90 = [objc_opt_self() sharedStream];
            [v90 emitMessage:v107];
            swift_unknownObjectRelease();
            v91 = v100;
            if (v103)
            {
              static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v97, v63, v100);
            }

            (*(v66 + 8))(v81, v65);
            v83 = v64;
            goto LABEL_51;
          }

          v67 = v104;

          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v68 = type metadata accessor for Logger();
          __swift_project_value_buffer(v68, static Logger.voiceCommands);

          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();

          v71 = os_log_type_enabled(v69, v70);
          v72 = v99;
          if (v71)
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            ObjectType = v74;
            *v73 = 136315138;
            v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v26, &ObjectType);

            *(v73 + 4) = v75;
            _os_log_impl(&dword_0, v69, v70, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s", v73, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v74);
          }

          else
          {
          }

          (*(v102 + 8))(v101, v67);
        }

        v83 = v105;
LABEL_51:
        outlined destroy of UUID?(v83);
        return;
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.voiceCommands);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        ObjectType = v47;
        *v46 = 136315138;
        v48 = v24;
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v26, &ObjectType);

        *(v46 + 4) = v49;
        _os_log_impl(&dword_0, v44, v45, "#SLF SELF Log, current taskId is nil, cannot emit %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
      }

      else
      {
      }
    }

    else
    {
      v42 = v107;
    }
  }
}

id static InstrumentationUtils.createFlowId()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v31 - v1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v31 - v9;
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  static InstrumentationUtils.createFlowUUID()(v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    outlined destroy of UUID?(v2);
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.voiceCommands);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "#SLF SELF Log, invalid executionRequestId string, cannot derive flowId form it", v16, 2u);
    }

    return 0;
  }

  else
  {
    (*(v4 + 32))(v12, v2, v3);
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.voiceCommands);
    v35 = *(v4 + 16);
    v35(v10, v12, v3);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v31 = v21;
      v33 = swift_slowAlloc();
      v36 = v33;
      *v21 = 136315138;
      v32 = v20;
      v22 = UUID.uuidString.getter();
      v34 = v7;
      v24 = v23;
      v25 = *(v4 + 8);
      v25(v10, v3);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v36);
      v7 = v34;

      v27 = v31;
      *(v31 + 1) = v26;
      _os_log_impl(&dword_0, v19, v32, "#SLF SELF Log, created flowId: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
    }

    else
    {

      v25 = *(v4 + 8);
      v25(v10, v3);
    }

    type metadata accessor for SISchemaUUID();
    v35(v7, v12, v3);
    v17 = SISchemaUUID.__allocating_init(nsuuid:)(v7, v28, v29);
    v25(v12, v3);
  }

  return v17;
}

void static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(uint64_t a1, unint64_t a2, NSObject *a3)
{
  v61 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v56 - v9;
  v11 = type metadata accessor for UUID();
  v60 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v56 - v16;
  __chkstk_darwin(v15);
  v19 = &v56 - v18;
  v20 = [objc_allocWithZone(SISchemaRequestLink) init];
  if (v20)
  {
    v21 = v20;
    v59 = a1;
    v62 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
    if (v62)
    {
      v22 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
      if (v22)
      {
        v58 = v22;
        v23 = v62;
        [v62 setComponent:3];
        [v23 setUuid:v61];
        static InstrumentationUtils.getOrchestrationRequestId()(v10);
        if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
        {
          outlined destroy of UUID?(v10);
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v24 = type metadata accessor for Logger();
          __swift_project_value_buffer(v24, static Logger.voiceCommands);
          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 0;
            _os_log_impl(&dword_0, v25, v26, "#SLF SELF Log - current executionRequestId is not a valid UUID String, cannot emit request link info", v27, 2u);
          }
        }

        else
        {
          v33 = v60;
          (*(v60 + 32))(v19, v10, v11);
          v34 = v58;
          [v58 setComponent:1];
          type metadata accessor for SISchemaUUID();
          v57 = *(v33 + 16);
          v57(v17, v19, v11);
          v37 = SISchemaUUID.__allocating_init(nsuuid:)(v17, v35, v36);
          [v34 setUuid:v37];

          [v21 setSource:v62];
          [v21 setTarget:v34];
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v38 = type metadata accessor for Logger();
          __swift_project_value_buffer(v38, static Logger.voiceCommands);
          v57(v14, v19, v11);

          v39 = v61;
          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v40, v41))
          {
            LODWORD(v57) = v41;
            v61 = v40;
            v42 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v63 = v56;
            *v42 = 136315650;
            *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, a2, &v63);
            *(v42 + 12) = 2080;
            SISchemaUUID.asUUID()();
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v11);
            v44 = v60;
            if (EnumTagSinglePayload == 1)
            {
              outlined destroy of UUID?(v8);
              v45 = 0;
              v46 = 0xE000000000000000;
            }

            else
            {
              v45 = UUID.uuidString.getter();
              v46 = v48;
              (*(v44 + 8))(v8, v11);
            }

            v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v63);

            *(v42 + 14) = v49;
            *(v42 + 22) = 2080;
            lazy protocol witness table accessor for type UUID and conformance UUID();
            v50 = dispatch thunk of CustomStringConvertible.description.getter();
            v52 = v51;
            v47 = *(v44 + 8);
            v47(v14, v11);
            v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v63);

            *(v42 + 24) = v53;
            v54 = v61;
            _os_log_impl(&dword_0, v61, v57, "#SLF SELF Log - emitting RequestLink for taskId: %s, flowId:%s, executionRequestId: %s", v42, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            v47 = *(v60 + 8);
            v47(v14, v11);
          }

          v55 = v62;
          [objc_msgSend(objc_opt_self() "sharedStream")];

          swift_unknownObjectRelease();
          v47(v19, v11);
        }

        return;
      }

      v21 = v62;
    }

    a1 = v59;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.voiceCommands);

  v62 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v62, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v63 = v31;
    *v30 = 136315138;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v63);
    _os_log_impl(&dword_0, v62, v29, "#SLF SELF Log - unable to create request link info for SELF for taskId: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  else
  {
    v32 = v62;
  }
}

void static InstrumentationUtils.createFlowUUID()(_BYTE *a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = OUTLINED_FUNCTION_14(v5);
  __chkstk_darwin(v6);
  v8 = &v65[-v7];
  v9 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_1();
  v11 = v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_50_0();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_34_7();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_44_4();
  v19 = __chkstk_darwin(v18);
  v21 = &v65[-v20];
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_33_4();
  static InstrumentationUtils.getOrchestrationRequestId()(v8);
  v22 = OUTLINED_FUNCTION_14_12();
  if (__swift_getEnumTagSinglePayload(v22, v23, v9) == 1)
  {
    outlined destroy of UUID?(v8);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v24 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v24, static Logger.voiceCommands);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "#SLF SELF Log, invalid executionRequestId string, cannot derive flowId form it", v27, 2u);
      OUTLINED_FUNCTION_15_0(v27);
    }

LABEL_7:
    v28 = 1;
    goto LABEL_19;
  }

  v69 = *(v11 + 32);
  v70 = (v11 + 32);
  v69(v1, v8, v9);
  v29 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v31 = [v29 derivedIdentifierForComponentName:3 fromSourceIdentifier:isa];

  if (!v31)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v50 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v50, static Logger.voiceCommands);
    (*(v11 + 16))(v15, v1, v9);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = OUTLINED_FUNCTION_48();
      v70 = OUTLINED_FUNCTION_85();
      v71 = v70;
      *v53 = 136315138;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = a1;
      v56 = v55;
      v57 = *(v11 + 8);
      v57(v15, v9);
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v71);
      a1 = v68;

      *(v53 + 4) = v58;
      _os_log_impl(&dword_0, v51, v52, "#SLF SELF Log, failed to created from: %s", v53, 0xCu);
      v59 = v70;
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      OUTLINED_FUNCTION_15_0(v59);
      OUTLINED_FUNCTION_15_0(v53);

      v60 = OUTLINED_FUNCTION_20_4();
      (v57)(v60);
    }

    else
    {

      v63 = *(v11 + 8);
      v63(v15, v9);
      v64 = OUTLINED_FUNCTION_20_4();
      (v63)(v64);
    }

    goto LABEL_7;
  }

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v32 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v32, static Logger.voiceCommands);
  v33 = *(v11 + 16);
  v33(v3, v21, v9);
  v33(v2, v1, v9);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_25_5();
    v68 = a1;
    v37 = v36;
    v67 = OUTLINED_FUNCTION_20_6();
    v71 = v67;
    *v37 = 136315394;
    v38 = UUID.uuidString.getter();
    v66 = v35;
    v40 = v39;
    v41 = *(v11 + 8);
    v41(v3, v9);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v71);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2080;
    v43 = UUID.uuidString.getter();
    v45 = v44;
    v41(v2, v9);
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v71);

    *(v37 + 14) = v46;
    _os_log_impl(&dword_0, v34, v66, "#SLF SELF Log, created flowId: %s orchestrationId: %s", v37, 0x16u);
    v47 = v67;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_0(v47);
    v48 = v37;
    a1 = v68;
    OUTLINED_FUNCTION_15_0(v48);

    v49 = OUTLINED_FUNCTION_20_4();
    (v41)(v49);
  }

  else
  {

    v61 = *(v11 + 8);
    v61(v2, v9);
    v61(v3, v9);
    v62 = OUTLINED_FUNCTION_20_4();
    (v61)(v62);
  }

  v69(a1, v21, v9);
  v28 = 0;
LABEL_19:
  __swift_storeEnumTagSinglePayload(a1, v28, 1, v9);
  OUTLINED_FUNCTION_42();
}

uint64_t static InstrumentationUtils.getOrchestrationRequestId()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentRequest.getter();

  CurrentRequest.executionRequestId.getter();
  v6 = v5;

  if (v6)
  {
    static InstrumentationUtils.createUUID(id:)(v4);

    v7 = type metadata accessor for UUID();
    if (__swift_getEnumTagSinglePayload(v4, 1, v7) == 1)
    {
      outlined destroy of UUID?(v4);
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.voiceCommands);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_0, v9, v10, "#SLF SELF Log, invalid executionRequestId string, cannot derive flowId form it", v11, 2u);
      }

      v12 = a1;
      v13 = 1;
    }

    else
    {
      (*(*(v7 - 8) + 32))(a1, v4, v7);
      v12 = a1;
      v13 = 0;
    }

    return __swift_storeEnumTagSinglePayload(v12, v13, 1, v7);
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.voiceCommands);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "#SLF SELF Log, invalid executionRequestId, cannot derive flowId form it", v17, 2u);
    }

    v18 = type metadata accessor for UUID();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v18);
  }
}

void static InstrumentationUtils.emitLinkFlowStartedInstrumentation(targetBundle:action:)()
{
  v1 = type metadata accessor for UUID();
  v2 = OUTLINED_FUNCTION_14(v1);
  __chkstk_darwin(v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OUTLINED_FUNCTION_32_10(objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionContext));
  if (!v5)
  {
LABEL_12:
    OUTLINED_FUNCTION_42();
    return;
  }

  v37 = v5;
  v6 = [objc_allocWithZone(FLOWLINKSchemaFLOWLinkActionStarted) *(v0 + 2304)];
  if (v6)
  {
    v35 = v6;
    v36 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionTier1) *(v0 + 2304)];
    if (v36)
    {
      v7 = LNAction.asSELFAction()();
      if (v7)
      {
        v8 = v7;
        v9 = OUTLINED_FUNCTION_20_4();
        outlined bridged method (mbgnn) of @objc FLOWLINKSchemaFLOWLINKActionTier1.appBundleId.setter(v9, v10, v36);
        type metadata accessor for SISchemaUUID();
        UUID.init()();
        v13 = SISchemaUUID.__allocating_init(nsuuid:)(v4, v11, v12);
        [v36 setLinkId:v13];
        [v8 setLinkId:v13];
        [v35 setCurrentAction:v8];
        [v37 setStartedOrChanged:v35];
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
        }

        v14 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v14, static Logger.voiceCommands);
        v15 = v37;
        v16 = v35;
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = OUTLINED_FUNCTION_25_5();
          v37 = v13;
          v20 = v19;
          v21 = OUTLINED_FUNCTION_20_6();
          v39 = v21;
          *v20 = 136315394;
          ObjectType = swift_getObjectType();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo35FLOWLINKSchemaFLOWLINKActionContextCmMd, &_sSo35FLOWLINKSchemaFLOWLINKActionContextCmMR);
          v22 = String.init<A>(describing:)();
          v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v39);

          *(v20 + 4) = v24;
          *(v20 + 12) = 2080;
          ObjectType = swift_getObjectType();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo35FLOWLINKSchemaFLOWLinkActionStartedCmMd, &_sSo35FLOWLINKSchemaFLOWLinkActionStartedCmMR);
          v25 = String.init<A>(describing:)();
          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v39);

          *(v20 + 14) = v27;
          _os_log_impl(&dword_0, v17, v18, "#SLF SELF emitting contextEvent: %s event: %s", v20, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_15_0(v21);
          v28 = v20;
          v13 = v37;
          OUTLINED_FUNCTION_15_0(v28);
        }

        _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF31265event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo35FLOWLINKSchemaFLOWLINKActionContextC_Tt1g5(v15, 0);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_0, v29, v30, "#SLF SELF emitting tier 1", v31, 2u);
          OUTLINED_FUNCTION_15_0(v31);
        }

        _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF31265event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo33FLOWLINKSchemaFLOWLINKActionTier1C_Tt1g5(v36, 0);
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_42();
}

void static InstrumentationUtils.emitActionConversionStartedInstrumentation(parseUUID:)(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = OUTLINED_FUNCTION_14(v5);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_1();
  v11 = v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_34_7();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_33_4();
  v14 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionConversionContext) init];
  if (v14)
  {
    v34 = v14;
    v15 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionConversionStarted) init];
    if (v15)
    {
      v16 = v15;
      outlined init with copy of UUID?(a1, v8);
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        outlined destroy of UUID?(v8);
      }

      else
      {
        (*(v11 + 32))(v1, v8, v9);
        type metadata accessor for SISchemaUUID();
        (*(v11 + 16))(v2, v1, v9);
        v20 = SISchemaUUID.__allocating_init(nsuuid:)(v2, v18, v19);
        [v16 setParseHypothesisId:v20];

        (*(v11 + 8))(v1, v9);
      }

      [v34 setStartedOrChanged:v16];
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v21 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v21, static Logger.voiceCommands);
      v22 = v34;
      v23 = v16;
      v24 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();

      if (OUTLINED_FUNCTION_85_1())
      {
        OUTLINED_FUNCTION_25_5();
        v36 = OUTLINED_FUNCTION_5_14();
        v35 = OUTLINED_FUNCTION_27_8(4.8151e-34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo45FLOWLINKSchemaFLOWLINKActionConversionContextCmMd, &_sSo45FLOWLINKSchemaFLOWLINKActionConversionContextCmMR);
        v25 = String.init<A>(describing:)();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v36);
        OUTLINED_FUNCTION_18_12();
        v35 = OUTLINED_FUNCTION_2_23();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo45FLOWLINKSchemaFLOWLINKActionConversionStartedCmMd, &_sSo45FLOWLINKSchemaFLOWLINKActionConversionStartedCmMR);
        v27 = String.init<A>(describing:)();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v36);
        OUTLINED_FUNCTION_18_12();
        *(a1 + 14) = v3;
        OUTLINED_FUNCTION_1_27(&dword_0, v29, v30, "#SLF SELF emitting contextEvent: %s event: %s");
        OUTLINED_FUNCTION_6_15();
        OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_19_0();
      }

      v31 = OUTLINED_FUNCTION_19_8();
      _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF31265event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo45FLOWLINKSchemaFLOWLINKActionConversionContextC_Tt1g5(v31, v32);
    }

    else
    {
      v17 = v34;
    }
  }
}

void static InstrumentationUtils.emitEntityDisambiguationEndedInstrumentation()()
{
  v1 = OUTLINED_FUNCTION_32_10(objc_allocWithZone(FLOWLINKSchemaFLOWLINKEntityDisambiguationContext));
  if (v1)
  {
    v5 = v1;
    v2 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKEntityDisambiguationEnded) *(v0 + 2304)];
    if (v2)
    {
      v3 = v2;
      [v2 setExists:1];
      [v5 setEnded:v3];
      _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF31265event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo49FLOWLINKSchemaFLOWLINKEntityDisambiguationContextC_Tt1g5(v5, 0);

      v4 = v3;
    }

    else
    {
      v4 = v5;
    }
  }
}

void static InstrumentationUtils.emitPromptForValueStartedInstrumentation(parameterName:)(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_45_3();
  v28 = OUTLINED_FUNCTION_32_10(objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionPromptForValueContext));
  if (!v28)
  {
LABEL_17:
    OUTLINED_FUNCTION_10_17();
    return;
  }

  v67 = v28;
  v29 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionPromptForValueStarted) *(v24 + 2304)];
  if (v29)
  {
    v66 = v29;
    v30 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionParameter) *(v24 + 2304)];
    if (v30)
    {
      v31 = v30;
      if (v25)
      {
        v32 = OUTLINED_FUNCTION_17_14();
        outlined bridged method (mbgnn) of @objc FLOWLINKSchemaFLOWLINKActionParameter.name.setter(v32, v33, v34);
      }

      else
      {
        OUTLINED_FUNCTION_9_15();
      }

      [v66 setParameter:v31];
      [v67 setStartedOrChanged:v66];
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v37 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v37, static Logger.voiceCommands);
      v38 = v67;
      v39 = v66;
      v40 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();

      if (OUTLINED_FUNCTION_48_5())
      {
        v41 = OUTLINED_FUNCTION_25_5();
        OUTLINED_FUNCTION_20_6();
        OUTLINED_FUNCTION_42_5();
        OUTLINED_FUNCTION_47_2(4.8151e-34);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo49FLOWLINKSchemaFLOWLINKActionPromptForValueContextCmMd, &_sSo49FLOWLINKSchemaFLOWLINKActionPromptForValueContextCmMR);
        v45 = OUTLINED_FUNCTION_21_9(v42, v43, v44);
        OUTLINED_FUNCTION_39_7(v45, v46, v47, v48, v49, v50, v51, v52);
        OUTLINED_FUNCTION_36_5();
        OUTLINED_FUNCTION_13_14();
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo49FLOWLINKSchemaFLOWLINKActionPromptForValueStartedCmMd, &_sSo49FLOWLINKSchemaFLOWLINKActionPromptForValueStartedCmMR);
        v56 = OUTLINED_FUNCTION_21_9(v53, v54, v55);
        OUTLINED_FUNCTION_39_7(v56, v57, v58, v59, v60, v61, v62, v63);
        OUTLINED_FUNCTION_36_5();
        *(v41 + 14) = v27;
        OUTLINED_FUNCTION_12_14(&dword_0, v64, v65, "#SLF SELF emitting contextEvent: %s event: %s");
        OUTLINED_FUNCTION_31_3();
        OUTLINED_FUNCTION_15_0(v26);
        OUTLINED_FUNCTION_11_0();
      }

      _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF31265event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo49FLOWLINKSchemaFLOWLINKActionPromptForValueContextC_Tt1g5(v38, 1);
      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_10_17();
}

void static InstrumentationUtils.emitActionParameterDisambiguationStartedInstrumentation(parameterName:)(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_45_3();
  v28 = OUTLINED_FUNCTION_32_10(objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionParameterDisambiguationContext));
  if (!v28)
  {
LABEL_17:
    OUTLINED_FUNCTION_10_17();
    return;
  }

  v67 = v28;
  v29 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionParameterDisambiguationStarted) *(v24 + 2304)];
  if (v29)
  {
    v66 = v29;
    v30 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionParameter) *(v24 + 2304)];
    if (v30)
    {
      v31 = v30;
      if (v25)
      {
        v32 = OUTLINED_FUNCTION_17_14();
        outlined bridged method (mbgnn) of @objc FLOWLINKSchemaFLOWLINKActionParameter.name.setter(v32, v33, v34);
      }

      else
      {
        OUTLINED_FUNCTION_9_15();
      }

      [v66 setParameter:v31];
      [v67 setStartedOrChanged:v66];
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v37 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v37, static Logger.voiceCommands);
      v38 = v67;
      v39 = v66;
      v40 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();

      if (OUTLINED_FUNCTION_48_5())
      {
        v41 = OUTLINED_FUNCTION_25_5();
        OUTLINED_FUNCTION_20_6();
        OUTLINED_FUNCTION_42_5();
        OUTLINED_FUNCTION_47_2(4.8151e-34);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo58FLOWLINKSchemaFLOWLINKActionParameterDisambiguationContextCmMd, &_sSo58FLOWLINKSchemaFLOWLINKActionParameterDisambiguationContextCmMR);
        v45 = OUTLINED_FUNCTION_21_9(v42, v43, v44);
        OUTLINED_FUNCTION_39_7(v45, v46, v47, v48, v49, v50, v51, v52);
        OUTLINED_FUNCTION_36_5();
        OUTLINED_FUNCTION_13_14();
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo58FLOWLINKSchemaFLOWLINKActionParameterDisambiguationStartedCmMd, &_sSo58FLOWLINKSchemaFLOWLINKActionParameterDisambiguationStartedCmMR);
        v56 = OUTLINED_FUNCTION_21_9(v53, v54, v55);
        OUTLINED_FUNCTION_39_7(v56, v57, v58, v59, v60, v61, v62, v63);
        OUTLINED_FUNCTION_36_5();
        *(v41 + 14) = v27;
        OUTLINED_FUNCTION_12_14(&dword_0, v64, v65, "#SLF SELF emitting contextEvent: %s event: %s");
        OUTLINED_FUNCTION_31_3();
        OUTLINED_FUNCTION_15_0(v26);
        OUTLINED_FUNCTION_11_0();
      }

      _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF31265event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo58FLOWLINKSchemaFLOWLINKActionParameterDisambiguationContextC_Tt1g5(v38, 1);
      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_10_17();
}

void static InstrumentationUtils.emitActionParameterConfirmationStartedInstrumentation(parameterName:)(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_45_3();
  v28 = OUTLINED_FUNCTION_32_10(objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionParameterConfirmationContext));
  if (!v28)
  {
LABEL_17:
    OUTLINED_FUNCTION_10_17();
    return;
  }

  v67 = v28;
  v29 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted) *(v24 + 2304)];
  if (v29)
  {
    v66 = v29;
    v30 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionParameter) *(v24 + 2304)];
    if (v30)
    {
      v31 = v30;
      if (v25)
      {
        v32 = OUTLINED_FUNCTION_17_14();
        outlined bridged method (mbgnn) of @objc FLOWLINKSchemaFLOWLINKActionParameter.name.setter(v32, v33, v34);
      }

      else
      {
        OUTLINED_FUNCTION_9_15();
      }

      [v66 setParameter:v31];
      [v67 setStartedOrChanged:v66];
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v37 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v37, static Logger.voiceCommands);
      v38 = v67;
      v39 = v66;
      v40 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();

      if (OUTLINED_FUNCTION_48_5())
      {
        v41 = OUTLINED_FUNCTION_25_5();
        OUTLINED_FUNCTION_20_6();
        OUTLINED_FUNCTION_42_5();
        OUTLINED_FUNCTION_47_2(4.8151e-34);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo56FLOWLINKSchemaFLOWLINKActionParameterConfirmationContextCmMd, &_sSo56FLOWLINKSchemaFLOWLINKActionParameterConfirmationContextCmMR);
        v45 = OUTLINED_FUNCTION_21_9(v42, v43, v44);
        OUTLINED_FUNCTION_39_7(v45, v46, v47, v48, v49, v50, v51, v52);
        OUTLINED_FUNCTION_36_5();
        OUTLINED_FUNCTION_13_14();
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo56FLOWLINKSchemaFLOWLINKActionParameterConfirmationStartedCmMd, &_sSo56FLOWLINKSchemaFLOWLINKActionParameterConfirmationStartedCmMR);
        v56 = OUTLINED_FUNCTION_21_9(v53, v54, v55);
        OUTLINED_FUNCTION_39_7(v56, v57, v58, v59, v60, v61, v62, v63);
        OUTLINED_FUNCTION_36_5();
        *(v41 + 14) = v27;
        OUTLINED_FUNCTION_12_14(&dword_0, v64, v65, "#SLF SELF emitting contextEvent: %s event: %s");
        OUTLINED_FUNCTION_31_3();
        OUTLINED_FUNCTION_15_0(v26);
        OUTLINED_FUNCTION_11_0();
      }

      _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF31265event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo56FLOWLINKSchemaFLOWLINKActionParameterConfirmationContextC_Tt1g5(v38, 1);
      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_10_17();
}

uint64_t static InstrumentationUtils.createUUID(id:)@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  UUID.init(uuidString:)();
  v7 = type metadata accessor for UUID();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    outlined destroy of UUID?(v6);
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.voiceCommands);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "#SLF SELF Log - invalid string, cannot derive uuid", v11, 2u);
    }

    v12 = 1;
  }

  else
  {
    (*(*(v7 - 8) + 32))(a3, v6, v7);
    v12 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v12, 1, v7);
}

void outlined bridged method (mbgnn) of @objc FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed.autoshortcutTemplate.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setAutoshortcutTemplate:v4];
}

void outlined bridged method (mbgnn) of @objc FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed.appShortcutId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setAppShortcutId:v4];
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

void outlined bridged method (mbgnn) of @objc FLOWLINKSchemaFLOWLINKActionTier1.appBundleId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setAppBundleId:v4];
}

unint64_t type metadata accessor for SISchemaUUID()
{
  result = lazy cache variable for type metadata for SISchemaUUID;
  if (!lazy cache variable for type metadata for SISchemaUUID)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SISchemaUUID);
  }

  return result;
}

void outlined bridged method (mbgnn) of @objc FLOWLINKSchemaFLOWLINKActionParameter.name.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setName:v4];
}

void OUTLINED_FUNCTION_1_27(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_2_23()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_5_14()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_6_15()
{

  return swift_arrayDestroy();
}

id OUTLINED_FUNCTION_7_14(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __swift_project_value_buffer(a1, a2);

  return a10;
}

void OUTLINED_FUNCTION_9_15()
{

  outlined bridged method (mbnn) of @objc FLOWLINKSchemaFLOWLINKActionParameter.name.setter(0x6E776F6E6B6E75, 0xE700000000000000, v0);
}

void OUTLINED_FUNCTION_12_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_13_14()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_21_9(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.init<A>(describing:)();
}

unint64_t OUTLINED_FUNCTION_23_10(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_25_5()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_26_11(int a1, const char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10)
{

  return [a10 a2];
}

uint64_t OUTLINED_FUNCTION_27_8(float a1)
{
  *v1 = a1;

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_29_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_31_3()
{

  return swift_arrayDestroy();
}

id OUTLINED_FUNCTION_32_10(void *a1)
{

  return [a1 init];
}

id OUTLINED_FUNCTION_35_6(void *a1)
{

  return [a1 init];
}

uint64_t OUTLINED_FUNCTION_36_5()
{
}

uint64_t OUTLINED_FUNCTION_37_6(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

unint64_t OUTLINED_FUNCTION_39_7(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

void OUTLINED_FUNCTION_46_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_47_2(float a1)
{
  *v1 = a1;

  return swift_getObjectType();
}

BOOL OUTLINED_FUNCTION_48_5()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_49_2(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

void LNActionMetadata.firstParameterMetadata(from:)(void *a1)
{
  v2 = [v1 parameters];
  type metadata accessor for LNActionParameterMetadata();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = specialized Array.count.getter(v3);
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      goto LABEL_19;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_21;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = outlined bridged method (pb) of @objc INIntentSlotDescription.name.getter(v6);
    v10 = v9;
    v11 = [a1 parameterName];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v10)
    {
      if (v8 == v12 && v10 == v14)
      {

LABEL_19:

        return;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t type metadata accessor for LNActionParameterMetadata()
{
  result = lazy cache variable for type metadata for LNActionParameterMetadata;
  if (!lazy cache variable for type metadata for LNActionParameterMetadata)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNActionParameterMetadata);
  }

  return result;
}

uint64_t ListShortcutsFlow.__allocating_init(deviceState:aceServiceInvoker:catWrapper:)(void *a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ListShortcutsFlow.init(deviceState:aceServiceInvoker:catWrapper:)(a1, a2, a3);
  return v6;
}

uint64_t ListShortcutsFlow.init(deviceState:aceServiceInvoker:catWrapper:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  outlined init with copy of DeviceState(a2, v3 + 16);
  outlined init with copy of DeviceState(a1, v3 + 56);
  *(v3 + 104) = a3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  type metadata accessor for ViewFactory();
  swift_allocObject();
  v8 = ViewFactory.init(ttsEnabled:)();

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(v4 + 96) = v8;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

uint64_t ListShortcutsFlow.on(input:)(uint64_t a1)
{
  v36 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7_1();
  v34 = v2;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_3();
  v35 = v5 - v4;
  v6 = type metadata accessor for VoiceCommandsNLIntent(0);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7_1();
  v12 = v11;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_7_1();
  v19 = v18;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  Input.parse.getter();
  if ((*(v12 + 88))(v16, v10) == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v12 + 96))(v16, v10);
    (*(v19 + 32))(v23, v16, v17);
    (*(v19 + 16))(v9, v23, v17);
    if (one-time initialization token for voiceCommandVerbNode != -1)
    {
      swift_once();
    }

    lazy protocol witness table accessor for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, 255, type metadata accessor for VoiceCommandsNLIntent, &protocol conformance descriptor for VoiceCommandsNLIntent);
    IntentNodeTraversable.value<A>(forNode:)();
    if (v38 == 3)
    {
      outlined destroy of VoiceCommandsNLIntent(v9);
      (*(v19 + 8))(v23, v17);
      return 1;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.voiceCommands);
    (*(v34 + 16))(v35, a1, v36);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v32 = 136315138;
      lazy protocol witness table accessor for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent(&lazy protocol witness table cache variable for type Input and conformance Input, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v34 + 8))(v35, v36);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v37);

      *(v32 + 4) = v31;
      _os_log_impl(&dword_0, v26, v27, "Received NLV3 intent that is not list shortcuts intent: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
    }

    else
    {

      (*(v34 + 8))(v35, v36);
    }

    outlined destroy of VoiceCommandsNLIntent(v9);
    (*(v19 + 8))(v23, v17);
  }

  else
  {
    (*(v12 + 8))(v16, v10);
  }

  return 0;
}

uint64_t ListShortcutsFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ListShortcutsFlow();
  lazy protocol witness table accessor for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent(&lazy protocol witness table cache variable for type ListShortcutsFlow and conformance ListShortcutsFlow, v2, type metadata accessor for ListShortcutsFlow, &protocol conformance descriptor for ListShortcutsFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t ListShortcutsFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for TemplatingResult();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

{
  v1 = v0[3];
  type metadata accessor for ViewFactory();
  swift_allocObject();
  v0[7] = ViewFactory.init(ttsEnabled:)();
  v5 = (**(v1 + 104) + class metadata base offset for ListShortcutsCATs + 8);
  v6 = (*v5 + **v5);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = ListShortcutsFlow.execute();
  v3 = v0[6];

  return v6(v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *(v4 + 72) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

{
  dispatch thunk of ViewFactory.makeUtteranceViews(template:listenAfterSpeaking:canUseServerTTS:)();
  type metadata accessor for SiriKitAceViewBuilder();
  dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
  v0[10] = dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

  v0[11] = [objc_allocWithZone(SAUIAddViews) init];
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = ListShortcutsFlow.execute();

  return ListShortcutsFlow.buildAceViews(aceViewBuilder:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *(v1 + 104) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v2);
}

{
  v1 = *(v0 + 24);
  outlined bridged method (mbnn) of @objc SAUIAddViews.views.setter(*(v0 + 104), *(v0 + 88));
  v3 = v1[5];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  v5 = type metadata accessor for SABaseCommand();
  *v4 = v0;
  v4[1] = ListShortcutsFlow.execute();
  v6 = *(v0 + 88);

  return AceServiceInvokerAsync.submit<A>(_:)(v6, v3, v5, v2);
}

{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6);
}

{
  return _swift_unexpectedError(*(v0 + 72), "SiriLinkFlowPlugin/ListShortcutsFlow.swift", 42, 1, 51);
}

uint64_t ListShortcutsFlow.execute()(uint64_t a1)
{
  v2 = v1[11];
  v3 = v1[6];
  v4 = v1[4];
  v5 = v1[5];
  static ExecuteResponse.complete()();

  (*(v5 + 8))(v3, v4);

  v6 = v1[1];

  return v6();
}

uint64_t ListShortcutsFlow.buildAceViews(aceViewBuilder:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for TemplatingText();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for TemplatingSection();
  v1[7] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for TemplatingResult();
  v1[10] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  if (dispatch thunk of DeviceState.isPhone.getter())
  {
    v2 = *(v0[3] + 104);
    v3 = v1[10];
    v4 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v3);
    v5 = DeviceState.asSiriKitDeviceState()(v3, v4);
    v0[13] = v5;
    v11 = (*(*v2 + class metadata base offset for ListShortcutsCATs) + **(*v2 + class metadata base offset for ListShortcutsCATs));
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = ListShortcutsFlow.buildAceViews(aceViewBuilder:);
    v7 = v0[12];

    return v11(v7, v5);
  }

  else
  {
    v9 = dispatch thunk of SiriKitAceViewBuilder.build()();

    v10 = v0[1];

    return v10(v9);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v3 + 120) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6);
}

{
  v1 = [objc_allocWithZone(SAAppsLaunchApp) init];
  v2 = String._bridgeToObjectiveC()();
  [v1 setLaunchId:v2];

  v3 = [objc_allocWithZone(SAUIButton) init];
  result = TemplatingResult.sections.getter();
  if (*(result + 16))
  {
    v5 = v0[9];
    v19 = v0[10];
    v20 = v0[12];
    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[5];
    v9 = v0[6];
    v10 = v0[4];
    v18 = v0[11];
    (*(v6 + 16))(v5, result + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v7);

    TemplatingSection.content.getter();
    (*(v6 + 8))(v5, v7);
    v11 = TemplatingText.text.getter();
    v13 = v12;
    (*(v8 + 8))(v9, v10);
    outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v11, v13, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_216010;
    *(v14 + 32) = v1;
    v15 = v1;
    outlined bridged method (mbnn) of @objc SAUIButton.commands.setter(v14, v3);
    dispatch thunk of SiriKitAceViewBuilder.addButton(button:)();
    v16 = dispatch thunk of SiriKitAceViewBuilder.build()();

    (*(v18 + 8))(v20, v19);

    v17 = v0[1];

    return v17(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 120);

  return _swift_unexpectedError(v1, "SiriLinkFlowPlugin/ListShortcutsFlow.swift", 42, 1, 71);
}

void *ListShortcutsFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return v0;
}

uint64_t ListShortcutsFlow.__deallocating_deinit()
{
  ListShortcutsFlow.deinit();

  return swift_deallocClassInstance();
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance ListShortcutsFlow(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance WFExecuteCustomIntentFlow;
}

uint64_t protocol witness for Flow.execute() in conformance ListShortcutsFlow(uint64_t a1)
{
  v6 = (*(**v1 + 136) + **(**v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance ListShortcutsFlow;

  return v6(a1);
}

uint64_t protocol witness for Flow.execute() in conformance ListShortcutsFlow()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t protocol witness for Flow.exitValue.getter in conformance ListShortcutsFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ListShortcutsFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t lazy protocol witness table accessor for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t INIntentSlotValueType.getIntentSlotValue(userDialogAct:locale:locationResolver:locationProvider:dateTimeResolver:contactResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v9 = type metadata accessor for Locale();
  v8[15] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v8[16] = v10;
  v8[17] = OUTLINED_FUNCTION_28();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
  OUTLINED_FUNCTION_14(v11);
  v8[18] = OUTLINED_FUNCTION_28();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGMd, &_s13SiriInference14RecommendationOyAA8LocationVGMR);
  v8[19] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v8[20] = v13;
  v8[21] = OUTLINED_FUNCTION_28();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  OUTLINED_FUNCTION_14(v14);
  v8[22] = OUTLINED_FUNCTION_28();
  v15 = type metadata accessor for Siri_Nlu_External_UserDialogAct.DateTimeHydrator(0);
  v8[23] = v15;
  OUTLINED_FUNCTION_14(v15);
  v8[24] = OUTLINED_FUNCTION_28();
  v16 = type metadata accessor for TimeZone();
  v8[25] = v16;
  OUTLINED_FUNCTION_5_0(v16);
  v8[26] = v17;
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v18 = type metadata accessor for Calendar();
  v8[30] = v18;
  OUTLINED_FUNCTION_5_0(v18);
  v8[31] = v19;
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_14(v20);
  v8[34] = OUTLINED_FUNCTION_28();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_14(v21);
  v8[35] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v22);
}

uint64_t INIntentSlotValueType.getIntentSlotValue(userDialogAct:locale:locationResolver:locationProvider:dateTimeResolver:contactResolver:)(uint64_t a1)
{
  v4 = v3;
  v5 = v3[14];
  switch(v5)
  {
    case 10:
      v10 = Siri_Nlu_External_UserDialogAct.personValue(contactResolver:locale:)(v3[13], v3[9]);
      v11 = v3[7];
      if (!v10)
      {
        goto LABEL_54;
      }

      v12 = &lazy cache variable for type metadata for INPerson;
      v13 = INPerson_ptr;
      goto LABEL_22;
    case 11:
    case 12:
    case 13:
    case 15:
    case 17:
    case 18:
    case 20:
    case 22:
    case 23:
    case 25:
    case 28:
    case 29:
    case 31:
    case 33:
    case 34:
    case 35:
    case 37:
      goto LABEL_8;
    case 14:
      static Calendar.current.getter();
      static TimeZone.current.getter();
      if (!Siri_Nlu_External_UserDialogAct.userDialogTask.getter())
      {
        goto LABEL_53;
      }

      static UsoTask_CodegenConverter.convert(task:)();

      if (!v3[5])
      {
        v69 = OUTLINED_FUNCTION_3_19();
        v70(v69);
        v71 = OUTLINED_FUNCTION_15_13();
        v72(v71);
        outlined destroy of Siri_Nlu_External_UserDialogAct?((v3 + 2), &_sypSgMd, &_sypSgMR);
LABEL_57:
        v73 = v3[34];
        v74 = type metadata accessor for DateComponents();
        __swift_storeEnumTagSinglePayload(v73, 1, 1, v74);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v73, 1, v74);
        v34 = v3[7];
        if (EnumTagSinglePayload == 1)
        {
          v35 = &_s10Foundation14DateComponentsVSgMd;
          v36 = &_s10Foundation14DateComponentsVSgMR;
          v37 = v3[34];
          goto LABEL_59;
        }

        *(v34 + 24) = v74;
        __swift_allocate_boxed_opaque_existential_1(v34);
        OUTLINED_FUNCTION_21_2();
        v68 = *(v76 + 32);
LABEL_61:
        v68();
LABEL_62:
        OUTLINED_FUNCTION_12_15();

        OUTLINED_FUNCTION_6_7();
        OUTLINED_FUNCTION_10_18();

        __asm { BRAA            X1, X16 }
      }

      type metadata accessor for UsoTask_execute_common_VoiceCommand();
      if ((swift_dynamicCast() & 1) == 0 || (v51 = dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter(), , !v51) || (v52 = dispatch thunk of UsoEntity_common_VoiceCommandPayload.dateTime.getter(), , !v52))
      {
LABEL_53:
        v63 = OUTLINED_FUNCTION_3_19();
        v64(v63);
        v65 = OUTLINED_FUNCTION_15_13();
        v66(v65);
        goto LABEL_57;
      }

      v53 = v3[31];
      v81 = v3[30];
      v82 = v3[33];
      v54 = v3[29];
      v55 = v3[26];
      v83 = v4[25];
      v84 = v54;
      v56 = v4[23];
      v57 = v4[24];
      v58 = v4[16];
      v59 = v4[11];
      v60 = v4[12];
      v79 = v4[9];
      v80 = v4[15];
      v4[36] = UsoEntity_common_DateTime.toDateTime(recurrencePattern:)();

      outlined init with copy of DeviceState(v60, v57);
      outlined init with copy of DeviceState(v59, v57 + 40);
      (*(v58 + 16))(v57 + v56[6], v79, v80);
      (*(v53 + 16))(v57 + v56[7], v82, v81);
      (*(v55 + 16))(v57 + v56[8], v84, v83);
      v61 = swift_task_alloc();
      v4[37] = v61;
      *v61 = v4;
      v61[1] = INIntentSlotValueType.getIntentSlotValue(userDialogAct:locale:locationResolver:locationProvider:dateTimeResolver:contactResolver:);
      OUTLINED_FUNCTION_10_18();

      return Siri_Nlu_External_UserDialogAct.DateTimeHydrator.hydrate(dateTime:)();
    case 16:
      static Calendar.current.getter();
      static TimeZone.current.getter();
      v26 = swift_task_alloc();
      v3[40] = v26;
      *v26 = v3;
      v26[1] = INIntentSlotValueType.getIntentSlotValue(userDialogAct:locale:locationResolver:locationProvider:dateTimeResolver:contactResolver:);
      OUTLINED_FUNCTION_10_18();

      return Siri_Nlu_External_UserDialogAct.dateIntervalValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:)();
    case 19:
      OUTLINED_FUNCTION_2_24();
      v18 = &lazy cache variable for type metadata for NSUnitLength;
      v19 = NSUnitLength_ptr;
      goto LABEL_36;
    case 21:
    case 26:
      v6 = Siri_Nlu_External_UserDialogAct.doubleValue.getter();
      v7 = v3[7];
      if (v8)
      {
        goto LABEL_42;
      }

      v9 = &type metadata for Double;
      goto LABEL_25;
    case 24:
      v6 = Siri_Nlu_External_UserDialogAct.intValue.getter();
      v7 = v3[7];
      if (v25)
      {
        goto LABEL_42;
      }

      v9 = &type metadata for Int64;
LABEL_25:
      *(v7 + 24) = v9;
      *v7 = v6;
      goto LABEL_62;
    case 27:
      static TimeZone.current.getter();
      v29 = swift_task_alloc();
      v3[42] = v29;
      *v29 = v3;
      v29[1] = INIntentSlotValueType.getIntentSlotValue(userDialogAct:locale:locationResolver:locationProvider:dateTimeResolver:contactResolver:);
      OUTLINED_FUNCTION_10_18();

      return Siri_Nlu_External_UserDialogAct.getLocationRecommendation(locationResolving:locationProviding:locale:timeZone:)();
    case 30:
      goto LABEL_15;
    case 32:
      OUTLINED_FUNCTION_2_24();
      v18 = &lazy cache variable for type metadata for NSUnitTemperature;
      v19 = NSUnitTemperature_ptr;
      goto LABEL_36;
    case 36:
      Siri_Nlu_External_UserDialogAct.urlValue.getter(v3[35]);
      v31 = v3[35];
      v32 = type metadata accessor for URL();
      v33 = OUTLINED_FUNCTION_21_10(v32);
      v34 = v3[7];
      if (v33 == 1)
      {
        v35 = &_s10Foundation3URLVSgMd;
        v36 = &_s10Foundation3URLVSgMR;
        v37 = v31;
LABEL_59:
        outlined destroy of Siri_Nlu_External_UserDialogAct?(v37, v35, v36);
        *v34 = 0u;
        *(v34 + 16) = 0u;
        goto LABEL_62;
      }

      *(v34 + 24) = v1;
      __swift_allocate_boxed_opaque_existential_1(v34);
      OUTLINED_FUNCTION_21_2();
      v68 = *(v67 + 32);
      goto LABEL_61;
    case 38:
      OUTLINED_FUNCTION_2_24();
      v18 = &lazy cache variable for type metadata for NSUnitMass;
      v19 = NSUnitMass_ptr;
      goto LABEL_36;
    case 39:
      OUTLINED_FUNCTION_2_24();
      v18 = &lazy cache variable for type metadata for NSUnitVolume;
      v19 = NSUnitVolume_ptr;
      goto LABEL_36;
    case 40:
      OUTLINED_FUNCTION_2_24();
      v18 = &lazy cache variable for type metadata for NSUnitSpeed;
      v19 = NSUnitSpeed_ptr;
LABEL_36:
      type metadata accessor for NSError(0, v18, v19);
      v38 = OUTLINED_FUNCTION_12_12();
      v39(v38);
      v23 = NSDimension.init(forLocale:)();
      v24 = v2;
      goto LABEL_37;
    case 41:
      v22 = v3[9];
      v23 = [objc_opt_self() kilowattHours];
      v24 = v22;
LABEL_37:
      v40 = Siri_Nlu_External_UserDialogAct.measurementValue(locale:)(v24);
      v43 = v42;
      if (v42 == -1)
      {
        v48 = v3[7];

        *v48 = 0u;
        v48[1] = 0u;
      }

      else
      {
        v44 = v40;
        v45 = v3[7];
        if (v42)
        {
          v46 = v41;
          v47 = [objc_allocWithZone(NSMeasurement) initWithDoubleValue:v41 unit:*&v40];
          outlined consume of ParsedMeasurement?(v44, v46, v43);
          v45[3] = type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSMeasurement, NSMeasurement_ptr);

          *v45 = v47;
        }

        else
        {
          v50 = [objc_allocWithZone(NSMeasurement) initWithDoubleValue:v23 unit:*&v40];
          v45[3] = type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSMeasurement, NSMeasurement_ptr);

          *v45 = v50;
        }
      }

      goto LABEL_62;
    default:
      if (v5 == 1)
      {
        v49 = Siri_Nlu_External_UserDialogAct.BOOLValue.getter();
        v7 = v3[7];
        if (v49 != 2)
        {
          *(v7 + 24) = &type metadata for Bool;
          *v7 = v49 & 1;
          goto LABEL_62;
        }
      }

      else
      {
        if (v5 == 53)
        {
          v10 = Siri_Nlu_External_UserDialogAct.currencyValue(locale:)(v3[9]);
          v11 = v3[7];
          if (v10)
          {
            v12 = &lazy cache variable for type metadata for INCurrencyAmount;
            v13 = INCurrencyAmount_ptr;
LABEL_22:
            *(v11 + 24) = type metadata accessor for NSError(0, v12, v13);
            *v11 = v10;
          }

          else
          {
LABEL_54:
            *v11 = 0u;
            *(v11 + 16) = 0u;
          }

          goto LABEL_62;
        }

LABEL_8:
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
        }

        v14 = type metadata accessor for Logger();
        __swift_project_value_buffer(v14, static Logger.voiceCommands);
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_0, v15, v16, "SiriLinkFlow does not yet support converting this parameter type from NLv4 parses.", v17, 2u);
        }

LABEL_15:
        v20 = Siri_Nlu_External_UserDialogAct.stringValue.getter(a1);
        v7 = v3[7];
        if (v21)
        {
          *(v7 + 24) = &type metadata for String;
          *v7 = v20;
          *(v7 + 8) = v21;
          goto LABEL_62;
        }
      }

LABEL_42:
      *v7 = 0u;
      *(v7 + 16) = 0u;
      goto LABEL_62;
  }
}

uint64_t INIntentSlotValueType.getIntentSlotValue(userDialogAct:locale:locationResolver:locationProvider:dateTimeResolver:contactResolver:)()
{
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 304) = v4;
  *(v2 + 312) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 328) = v0;

  v5 = v2[32];
  v6 = v2[31];
  v7 = v2[30];
  (*(v2[26] + 8))(v2[28], v2[25]);
  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

uint64_t INIntentSlotValueType.getIntentSlotValue(userDialogAct:locale:locationResolver:locationProvider:dateTimeResolver:contactResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  if (v14[38])
  {
    a11 = v14[33];
    v15 = v14[30];
    v16 = v14[31];
    v17 = v14[29];
    v19 = v14[25];
    v18 = v14[26];
    v20 = v14[24];

    dispatch thunk of DateTime.dateComponents.getter();

    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v20);
    (*(v18 + 8))(v17, v19);
    (*(v16 + 8))(a11, v15);
    v21 = 0;
  }

  else
  {
    v22 = v14[29];
    v23 = v14[25];
    v24 = v14[26];
    v25 = v14[24];

    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v25);
    (*(v24 + 8))(v22, v23);
    v26 = OUTLINED_FUNCTION_12_12();
    v27(v26);
    v21 = 1;
  }

  v28 = v14[34];
  v29 = type metadata accessor for DateComponents();
  __swift_storeEnumTagSinglePayload(v28, v21, 1, v29);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v29);
  v31 = v14[7];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v14[34], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    *v31 = 0u;
    *(v31 + 16) = 0u;
  }

  else
  {
    *(v31 + 24) = v29;
    __swift_allocate_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_21_2();
    (*(v32 + 32))();
  }

  OUTLINED_FUNCTION_1_28();

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_6_1();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = v14[33];
  v16 = v14[30];
  v17 = v14[31];
  v18 = v14[29];
  v19 = v14[25];
  v20 = v14[26];
  v21 = v14[24];

  outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v21);
  (*(v20 + 8))(v18, v19);
  (*(v17 + 8))(v15, v16);
  OUTLINED_FUNCTION_0_20();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = *(v15 + 176);
  v17 = type metadata accessor for DateInterval();
  v18 = OUTLINED_FUNCTION_21_10(v17);
  v19 = *(v15 + 56);
  if (v18 == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v16, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    *v19 = 0u;
    *(v19 + 16) = 0u;
  }

  else
  {
    *(v19 + 24) = v14;
    __swift_allocate_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_21_2();
    (*(v20 + 32))();
  }

  OUTLINED_FUNCTION_1_28();

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_6_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = v14[18];
  v15 = v14[19];
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    v17 = OUTLINED_FUNCTION_12_12();
    v18(v17);
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v16, &_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
  }

  else
  {
    v20 = v14[20];
    v19 = v14[21];
    (*(v20 + 32))(v19, v16, v15);
    v21 = static InputUtils.getPlacemark(_:)();
    (*(v20 + 8))(v19, v15);
    v22 = OUTLINED_FUNCTION_12_12();
    v23(v22);
    if (v21)
    {
      v24 = v14[7];
      v24[3] = type metadata accessor for NSError(0, &lazy cache variable for type metadata for CLPlacemark, CLPlacemark_ptr);
      *v24 = v21;
      goto LABEL_6;
    }
  }

  v25 = v14[7];
  *v25 = 0u;
  v25[1] = 0u;
LABEL_6:
  OUTLINED_FUNCTION_1_28();

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_6_1();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  (*(v14[26] + 8))(v14[27], v14[25]);
  OUTLINED_FUNCTION_0_20();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_0_20();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t INIntentSlotValueType.toUsoTaskBuilder()(uint64_t a1)
{
  switch(a1)
  {
    case 10:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      v9 = OUTLINED_FUNCTION_1_5();
      result = static UsoTaskBuilder_execute_common_VoiceCommand.personTaskBuilder(value:)(v9, v10);
      break;
    case 14:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      result = static UsoTaskBuilder_execute_common_VoiceCommand.dateTaskBuilder()();
      break;
    case 16:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      result = static UsoTaskBuilder_execute_common_VoiceCommand.dateIntervalTaskBuilder()();
      break;
    case 19:
    case 32:
    case 38:
    case 39:
    case 40:
    case 41:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      result = static UsoTaskBuilder_execute_common_VoiceCommand.unitTaskBuilder(value:symbol:unitName:)(0, 1, 0, 0, 0, 0);
      break;
    case 21:
    case 24:
    case 26:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      result = static UsoTaskBuilder_execute_common_VoiceCommand.numberTaskBuilder()();
      break;
    case 27:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      result = static UsoTaskBuilder_execute_common_VoiceCommand.placemarkTaskBuilder()();
      break;
    case 30:
      goto LABEL_10;
    case 36:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      v11 = OUTLINED_FUNCTION_1_5();
      result = static UsoTaskBuilder_execute_common_VoiceCommand.urlTaskBuilder(value:)(v11, v12);
      break;
    default:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, static Logger.voiceCommands);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 134217984;
        *(v6 + 4) = a1;
        _os_log_impl(&dword_0, v4, v5, "SiriLinkFlow does not yet support providing NLV4 context for parameter type: %ld.", v6, 0xCu);
      }

LABEL_10:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      v7 = OUTLINED_FUNCTION_1_5();
      result = static UsoTaskBuilder_execute_common_VoiceCommand.stringTaskBuilder(value:)(v7, v8);
      break;
  }

  return result;
}