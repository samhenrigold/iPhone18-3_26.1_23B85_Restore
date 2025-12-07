PhoneSuggestions::SuggestionIdentifier_optional __swiftcall SuggestionIdentifier.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SuggestionIdentifier.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t SuggestionIdentifier.rawValue.getter(char a1)
{
  result = 0xD000000000000013;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000015;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  return result;
}

PhoneSuggestions::SuggestionIdentifier_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionIdentifier@<W0>(Swift::String *a1@<X0>, PhoneSuggestions::SuggestionIdentifier_optional *a2@<X8>)
{
  result.value = SuggestionIdentifier.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SuggestionIdentifier@<X0>(unint64_t *a1@<X8>)
{
  result = SuggestionIdentifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type SuggestionIdentifier and conformance SuggestionIdentifier()
{
  result = lazy protocol witness table cache variable for type SuggestionIdentifier and conformance SuggestionIdentifier;
  if (!lazy protocol witness table cache variable for type SuggestionIdentifier and conformance SuggestionIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionIdentifier and conformance SuggestionIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SuggestionIdentifier] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SuggestionIdentifier] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SuggestionIdentifier] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16PhoneSuggestions20SuggestionIdentifierOGMd, &_sSay16PhoneSuggestions20SuggestionIdentifierOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SuggestionIdentifier] and conformance [A]);
  }

  return result;
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

uint64_t getEnumTagSinglePayload for SuggestionIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SuggestionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1D38);
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

void one-time initialization function for macFaceTimeBundleId()
{
  v0 = TUPreferredFaceTimeBundleIdentifier();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  static PhoneCallAppNameConstants.macFaceTimeBundleId = v1;
  *algn_15368 = v3;
}

uint64_t *PhoneCallAppNameConstants.macFaceTimeBundleId.unsafeMutableAddressor()
{
  if (one-time initialization token for macFaceTimeBundleId != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for macFaceTimeBundleId);
  }

  return &static PhoneCallAppNameConstants.macFaceTimeBundleId;
}

uint64_t static PhoneCallAppNameConstants.macFaceTimeBundleId.getter()
{
  if (one-time initialization token for macFaceTimeBundleId != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for macFaceTimeBundleId);
  }

  v0 = static PhoneCallAppNameConstants.macFaceTimeBundleId;

  return v0;
}

uint64_t static PhoneCallAppNameConstants.sanitizeFirstPartyAppId(_:)(uint64_t a1, uint64_t a2)
{
  if ((static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(a1, a2) & 1) == 0)
  {
  }

  return OUTLINED_FUNCTION_6();
}

uint64_t static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    object = String.lowercased()()._object;
  }

  else
  {
    object = 0;
  }

  OUTLINED_FUNCTION_2_0();
  v5 = String.lowercased()()._object;
  if (!object)
  {

    goto LABEL_12;
  }

  OUTLINED_FUNCTION_11();
  v6 = v6 && object == v5;
  if (v6)
  {
    goto LABEL_23;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
LABEL_12:
    if (a2)
    {
      v9 = String.lowercased()();
      a1 = v9._countAndFlagsBits;
      v10 = v9._object;
    }

    else
    {
      v10 = 0;
    }

    if (one-time initialization token for macFaceTimeBundleId != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for macFaceTimeBundleId);
    }

    v11 = String.lowercased()();
    if (!v10)
    {
      v8 = 0;
      goto LABEL_26;
    }

    if (a1 != v11._countAndFlagsBits || v10 != v11._object)
    {
      OUTLINED_FUNCTION_6();
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_24:

LABEL_26:

      return v8 & 1;
    }

LABEL_23:
    v8 = 1;
    goto LABEL_24;
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t static PhoneCallAppNameConstants.isFaceTime(appId:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_C1C0;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x800000000000C950;
    if (one-time initialization token for macFaceTimeBundleId != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for macFaceTimeBundleId);
    }

    v4 = *algn_15368;
    *(inited + 48) = static PhoneCallAppNameConstants.macFaceTimeBundleId;
    *(inited + 56) = v4;

    v5 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(inited);
    v6 = OUTLINED_FUNCTION_6();
    v2 = specialized Set.contains(_:)(v6, v7, v5);
  }

  return v2 & 1;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t static PhoneCallAppNameConstants.isPhone(appId:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7();
  if (v6 == 0xD000000000000017 && v5 == v4)
  {
    return 1;
  }

  OUTLINED_FUNCTION_5();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 1;
  }

  OUTLINED_FUNCTION_7();
  if (a1 == 0xD000000000000012 && v8 == a2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_6();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 1;
  }

  OUTLINED_FUNCTION_7();
  if (a1 == 0xD000000000000013 && v10 == a2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_5();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 1;
  }

  OUTLINED_FUNCTION_7();
  if (a1 == 0xD000000000000015 && v12 == a2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_5();

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t static PhoneCallAppNameConstants.isPhoneCaseInsensitive(appId:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_13();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  object = String.lowercased()()._object;
  if (v5)
  {
    OUTLINED_FUNCTION_11();
    v7 = v7 && v5 == object;
    if (v7)
    {
      goto LABEL_41;
    }

    v8 = OUTLINED_FUNCTION_8();

    if (v8)
    {
      goto LABEL_30;
    }

    if (a2)
    {
      goto LABEL_11;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_11:
  OUTLINED_FUNCTION_13();
  v10 = v9;
LABEL_14:
  OUTLINED_FUNCTION_2_0();
  v11 = String.lowercased()()._object;
  if (!v10)
  {

    if (a2)
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_11();
  if (v7 && v10 == v11)
  {
    goto LABEL_41;
  }

  v13 = OUTLINED_FUNCTION_8();

  if ((v13 & 1) == 0)
  {
    if (a2)
    {
LABEL_21:
      OUTLINED_FUNCTION_13();
      v15 = v14;
      goto LABEL_24;
    }

LABEL_23:
    v15 = 0;
LABEL_24:
    v16 = String.lowercased()()._object;
    if (v15)
    {
      OUTLINED_FUNCTION_11();
      if (v7 && v15 == v16)
      {
        goto LABEL_41;
      }

      v18 = OUTLINED_FUNCTION_8();

      if (v18)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }

    if (a2)
    {
      a1 = OUTLINED_FUNCTION_13();
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = String.lowercased()();
    if (!v21)
    {
      v19 = 0;
      goto LABEL_43;
    }

    if (a1 != v22._countAndFlagsBits || v21 != v22._object)
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_42:

LABEL_43:

      return v19 & 1;
    }

LABEL_41:
    v19 = 1;
    goto LABEL_42;
  }

LABEL_30:
  v19 = 1;
  return v19 & 1;
}

uint64_t static PhoneCallAppNameConstants.isMessagePhoneAppCaseInsensitive(appId:)(uint64_t countAndFlagsBits, uint64_t a2)
{
  if (a2)
  {
    v3 = String.lowercased()();
    countAndFlagsBits = v3._countAndFlagsBits;
    object = v3._object;
  }

  else
  {
    object = 0;
  }

  v5 = String.lowercased()();
  if (object)
  {
    if (countAndFlagsBits == v5._countAndFlagsBits && object == v5._object)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t static PhoneCallAppNameConstants.isPhoneOrFaceTime(appId:isInsensitive:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v5 = OUTLINED_FUNCTION_6();
    if ((static PhoneCallAppNameConstants.isPhoneCaseInsensitive(appId:)(v5, v6) & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_6();

      return static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(v7, v8);
    }

    return 1;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_7();
    if (a1 == 0xD000000000000017 && v10 == a2)
    {
      return 1;
    }

    OUTLINED_FUNCTION_5();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }

    OUTLINED_FUNCTION_7();
    if (a1 == 0xD000000000000012 && v12 == a2)
    {
      return 1;
    }

    OUTLINED_FUNCTION_6();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }

    OUTLINED_FUNCTION_7();
    if (a1 == 0xD000000000000013 && v14 == a2)
    {
      return 1;
    }

    OUTLINED_FUNCTION_5();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }

    OUTLINED_FUNCTION_7();
    if (a1 == 0xD000000000000015 && v16 == a2)
    {
      return 1;
    }

    OUTLINED_FUNCTION_5();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }
  }

  v18 = OUTLINED_FUNCTION_6();

  return static PhoneCallAppNameConstants.isFaceTime(appId:)(v18, v19);
}

uint64_t static PhoneCallAppNameConstants.getFaceTimeServiceName(for:shouldEnableSiriUplevelFTA:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = a1 == 0x656D695465636146 && a2 == 0xEE006F6964754120;
    if (v5 || (v6 = OUTLINED_FUNCTION_12(a1, 0xEE006F6964754120), (v6 & 1) != 0))
    {
      v7 = [objc_allocWithZone(FTNUServiceNames) init];
      v8 = [v7 faceTimeAudioServiceName];
    }

    else
    {
      v11 = v4 == 0x656D695465636146 && a2 == 0xEE006F6564695620;
      if (v11 || (OUTLINED_FUNCTION_12(v6, 0xEE006F6564695620) & 1) != 0)
      {
        v7 = [objc_allocWithZone(FTNUServiceNames) init];
        v8 = [v7 faceTimeVideoServiceName];
      }

      else
      {
        v7 = [objc_allocWithZone(FTNUServiceNames) init];
        v8 = [v7 faceTimeServiceName];
      }
    }

    v9 = v8;

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return v4;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v10 = ~(-1 << v3[32]);
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 6) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 6) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 2);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 2) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_13()
{

  return String.lowercased()()._countAndFlagsBits;
}

uint64_t one-time initialization function for kOwner()
{
  type metadata accessor for DomainOwner();
  swift_allocObject();
  result = DomainOwner.init(_:)();
  static PhoneOwnerDefinitionFactory.kOwner = result;
  return result;
}

uint64_t *PhoneOwnerDefinitionFactory.kOwner.unsafeMutableAddressor()
{
  if (one-time initialization token for kOwner != -1)
  {
    OUTLINED_FUNCTION_0_1(&one-time initialization token for kOwner);
  }

  return &static PhoneOwnerDefinitionFactory.kOwner;
}

uint64_t static PhoneOwnerDefinitionFactory.kOwner.getter()
{
  if (one-time initialization token for kOwner != -1)
  {
    OUTLINED_FUNCTION_0_1(&one-time initialization token for kOwner);
  }
}

uint64_t one-time initialization function for enabledLocales()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMd, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMR);
  type metadata accessor for Locale();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_C260;
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  result = Locale.init(identifier:)();
  static PhoneOwnerDefinitionFactory.enabledLocales = v0;
  return result;
}

uint64_t static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

uint64_t static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  if (one-time initialization token for suggestions != -1)
  {
    OUTLINED_FUNCTION_1_1(&one-time initialization token for suggestions);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.suggestions);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#PhoneOwnerDefinitionFactory createOwnerDefinitions", v4, 2u);
    OUTLINED_FUNCTION_4_0(v4);
  }

  type metadata accessor for INIntent(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  Transformer.init(transform:)();
  if (one-time initialization token for kOwner != -1)
  {
    OUTLINED_FUNCTION_0_1(&one-time initialization token for kOwner);
  }

  v5 = v0[12];
  v6 = static PhoneOwnerDefinitionFactory.kOwner;
  v0[10] = type metadata accessor for DomainOwner();
  v0[11] = lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type DomainOwner and conformance DomainOwner, 255, &type metadata accessor for DomainOwner, &protocol conformance descriptor for DomainOwner);
  v0[7] = v6;

  v9 = (v5 + *v5);
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);

  return v9(v0 + 7);
}

{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = swift_task_alloc();
  v5[2] = v4;
  v5[3] = v1;
  v5[4] = v0 + 2;
  dispatch thunk of SuggestionOwnerDefinitionBuilder.add(suggestionId:catId:builder:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_C270;
  dispatch thunk of SuggestionOwnerDefinitionBuilder.build()();

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v7 = v0[1];

  return v7(v6);
}

uint64_t static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 152) = a1;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));

  return _swift_task_switch(static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

uint64_t closure #1 in static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #1 in static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

uint64_t closure #1 in static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  if (one-time initialization token for suggestions != -1)
  {
    OUTLINED_FUNCTION_1_1(&one-time initialization token for suggestions);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.suggestions);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#PhoneOwnerDefinitionFactory running IntentTransformer", v4, 2u);
    OUTLINED_FUNCTION_4_0(v4);
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = v5;
  v7 = *(v0 + 24);
  v8 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(v6);
  if (!v8)
  {
    v17 = *(v0 + 24);
LABEL_21:

LABEL_22:
    v33 = *(v0 + 16);
    v34 = enum case for IntentParameter.ignore(_:);
    type metadata accessor for IntentParameter();
    OUTLINED_FUNCTION_2_1();
    (*(v35 + 104))(v33, v34);
    goto LABEL_23;
  }

  v9 = v8;
  if (!specialized Array._getCount()(v8))
  {
    v17 = *(v0 + 24);

    goto LABEL_21;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v10 = *(v9 + 32);
  }

  v11 = v10;

  v12 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v11);
  if (!v13)
  {
    v17 = *(v0 + 24);
LABEL_20:

    goto LABEL_21;
  }

  v14 = v12;
  v15 = v13;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v14 & 0xFFFFFFFFFFFFLL;
  }

  v17 = *(v0 + 24);
  if (!v16)
  {
    goto LABEL_20;
  }

  v18 = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 24);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v6;
    *v23 = v6;
    v24 = v21;
    _os_log_impl(&dword_0, v19, v20, "#PhoneOwnerDefinitionFactory returning directAssignment from intent %@", v22, 0xCu);
    outlined destroy of Resolver?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_4_0(v23);
    OUTLINED_FUNCTION_4_0(v22);
  }

  v25 = *(v0 + 16);
  v26 = *(v0 + 24);

  v27 = v26;
  v39 = StartCallSuggestionParams.init(intent:)(v6);
  countAndFlagsBits = v39.name.value._countAndFlagsBits;
  object = v39.name.value._object;
  v30 = *&v39.isFaceTime;
  *(v25 + 24) = &type metadata for StartCallSuggestionParams;

  *v25 = countAndFlagsBits;
  *(v25 + 8) = object;
  *(v25 + 16) = v30 & 1;
  *(v25 + 17) = HIBYTE(v30) & 1;
  v31 = enum case for IntentParameter.directAssignment(_:);
  type metadata accessor for IntentParameter();
  OUTLINED_FUNCTION_2_1();
  (*(v32 + 104))(v25, v31);
LABEL_23:
  v36 = *(v0 + 8);

  return v36();
}

void closure #2 in static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = 0;
  v11 = 0xE000000000000000;
  outlined init with copy of Any(a1, v9);
  if (swift_dynamicCast())
  {
    if (v7 == 1)
    {
      v3._countAndFlagsBits = 0x6954656361467369;
      v3._object = 0xEA0000000000656DLL;
      String.append(_:)(v3);
    }

    if (v8)
    {
      v4._countAndFlagsBits = 0x4370756F72477369;
      v4._object = 0xEB000000006C6C61;
      String.append(_:)(v4);
    }
  }

  v5 = v10;
  v6 = v11;
  a2[3] = &type metadata for String;
  *a2 = v5;
  a2[1] = v6;
}

uint64_t closure #3 in static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = a3;
  v89 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v86 = *(v5 - 8);
  v87 = v5;
  __chkstk_darwin(v5);
  v90 = &v71 - v6;
  v7 = type metadata accessor for SiriSuggestions.IntentType();
  v84 = *(v7 - 8);
  v85 = v7;
  __chkstk_darwin(v7);
  v83 = (&v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for SignalContextProperties();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 24);
  v91 = *(a1 + 32);
  v82 = __swift_project_boxed_opaque_existential_2(a1, v13);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_C280;
  type metadata accessor for Signal();
  *(v14 + 32) = static Signal.HomeScreen.getter();
  *(v14 + 40) = static Signal.DeviceLocked.getter();
  if (one-time initialization token for PhoneApp != -1)
  {
    swift_once();
  }

  v78 = v12;
  *&v92 = v9;
  *(v14 + 48) = static Signal.PhoneApp;
  v15 = one-time initialization token for FaceTimeApp;

  if (v15 != -1)
  {
    swift_once();
  }

  *(v14 + 56) = static Signal.FaceTimeApp;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15DeliveryVehicleOGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15DeliveryVehicleOGMR);
  v17 = type metadata accessor for DeliveryVehicle();
  v18 = *(v17 - 8);
  v19 = *(v18 + 80);
  v20 = (v19 + 32) & ~v19;
  v97 = *(v18 + 72);
  v94 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_C270;
  v22 = *(v18 + 104);
  v95 = v20;
  v96 = v22;
  v93 = enum case for DeliveryVehicle.siriHelp(_:);
  v98 = v18 + 104;
  *&v99 = v17;
  v22(v21 + v20);
  v23 = v78;
  *v78 = v21;
  v24 = *(v10 + 104);
  v76 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v25 = v92;
  v74 = v24;
  v75 = v10 + 104;
  v24(v23);
  v128 = v13;
  v129 = v91;
  __swift_allocate_boxed_opaque_existential_2(v127);

  dispatch thunk of SiriHelpSuggestionDetailsBuilderExtension.register(signals:for:)();

  v26 = *(v10 + 8);
  v77 = v10 + 8;
  v73 = v26;
  v26(v23, v25);
  v91 = v129;
  v72 = v128;
  v82 = __swift_project_boxed_opaque_existential_2(v127, v128);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_C290;
  if (one-time initialization token for ContactsApp != -1)
  {
    swift_once();
  }

  *(v27 + 32) = static Signal.ContactsApp;
  v28 = v97;
  v81 = 2 * v97;
  v29 = v95;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_C1C0;
  v79 = v16;
  v31 = v30 + v29;
  v32 = v30 + v29;
  v80 = enum case for DeliveryVehicle.assistantSuggestions(_:);
  v33 = v99;
  v34 = v96;
  v96(v32);
  v34(v31 + v28, v93, v33);
  *v23 = v30;
  v35 = v92;
  v74(v23, v76, v92);
  *v126 = v72;
  *&v126[8] = v91;
  __swift_allocate_boxed_opaque_existential_2(v125);

  dispatch thunk of SiriHelpSuggestionDetailsBuilderExtension.register(signals:for:)();

  v73(v23, v35);
  v36 = *&v126[16];
  v92 = *v126;
  __swift_project_boxed_opaque_existential_2(v125, *v126);
  if (one-time initialization token for enabledLocales != -1)
  {
    swift_once();
  }

  v123 = v92;
  v124 = v36;
  __swift_allocate_boxed_opaque_existential_2(v122);

  dispatch thunk of SuggestionDetailsBuilder.enabledLocales(_:)();

  v37 = v124;
  v91 = v123;
  __swift_project_boxed_opaque_existential_2(v122, v123);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit10DeviceTypeOGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit10DeviceTypeOGMR);
  v38 = type metadata accessor for DeviceType();
  v39 = *(v38 - 8);
  v40 = *(v39 + 72);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v42 = swift_allocObject();
  v92 = xmmword_C2A0;
  *(v42 + 16) = xmmword_C2A0;
  v43 = v42 + v41;
  v44 = *(v39 + 104);
  v44(v43, enum case for DeviceType.iPhone(_:), v38);
  v44(v43 + v40, enum case for DeviceType.iPad(_:), v38);
  v44(v43 + 2 * v40, enum case for DeviceType.mac(_:), v38);
  v120 = v91;
  v121 = v37;
  __swift_allocate_boxed_opaque_existential_2(v119);
  dispatch thunk of SuggestionDetailsBuilder.enabledDevices(_:)();

  v45 = v121;
  v91 = v120;
  __swift_project_boxed_opaque_existential_2(v119, v120);
  v117 = v91;
  v118 = v45;
  __swift_allocate_boxed_opaque_existential_2(v116);
  dispatch thunk of SuggestionDetailsBuilder.loggingIdentifier(_:)();
  v46 = v118;
  v91 = v117;
  __swift_project_boxed_opaque_existential_2(v116, v117);
  v114 = v91;
  v115 = v46;
  __swift_allocate_boxed_opaque_existential_2(v113);
  dispatch thunk of SuggestionDetailsBuilder.templateRoot(_:)();
  v47 = v115;
  v91 = v114;
  __swift_project_boxed_opaque_existential_2(v113, v114);
  v49 = v83;
  v48 = v84;
  *v83 = 0xD000000000000023;
  v49[1] = 0x800000000000CD60;
  v50 = v85;
  (*(v48 + 104))(v49, enum case for SiriSuggestions.IntentType.inIntent(_:), v85);
  v111 = v91;
  v112 = v47;
  __swift_allocate_boxed_opaque_existential_2(v110);
  dispatch thunk of SuggestionDetailsBuilder.intentType(_:)();
  (*(v48 + 8))(v49, v50);
  v51 = v112;
  v52 = v97;
  v91 = v111;
  __swift_project_boxed_opaque_existential_2(v110, v111);
  v53 = v95;
  v54 = swift_allocObject();
  *(v54 + 16) = v92;
  v55 = v54 + v53;
  v56 = v99;
  v57 = v96;
  (v96)(v55, v93, v99);
  v57(v55 + v52, v80, v56);
  v57(v55 + v81, enum case for DeliveryVehicle.siriAutoComplete(_:), v56);
  *v109 = v91;
  *&v109[16] = v51;
  __swift_allocate_boxed_opaque_existential_2(v108);
  dispatch thunk of SuggestionDetailsBuilder.enabledDeliveryVehicles(_:)();

  v58 = *v109;
  v99 = *&v109[8];
  __swift_project_boxed_opaque_existential_2(v108, *v109);
  v106[0] = type metadata accessor for INIntent(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17INStartCallIntentCmMd, &_sSo17INStartCallIntentCmMR);
  String.init<A>(describing:)();
  *v107 = v58;
  *&v107[8] = v99;
  __swift_allocate_boxed_opaque_existential_2(v106);
  dispatch thunk of SiriHelpSuggestionDetailsBuilderExtension.enableThirdPartyIntents(_:)();

  v59 = *&v107[16];
  v99 = *v107;
  __swift_project_boxed_opaque_existential_2(v106, *v107);
  v60 = type metadata accessor for ResolveStartCallParams();
  v61 = swift_allocObject();
  *(v61 + 16) = 0x6C6143656E6F6870;
  *(v61 + 24) = 0xEF736D617261506CLL;
  v101 = v60;
  v102 = lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type ResolveStartCallParams and conformance ResolveStartCallParams, 255, type metadata accessor for ResolveStartCallParams, &protocol conformance descriptor for ResolveStartCallParams);
  v100[0] = v61;
  (*(v86 + 16))(v90, v88, v87);
  outlined init with copy of any SiriSuggestions.Transformer<Self.SiriSuggestions.Transformer.InputType == SiriSuggestions.Intent, Self.SiriSuggestions.Transformer.OutputType == IntentParameter>(v89, v103);
  type metadata accessor for ResolvableParameter();
  swift_allocObject();
  ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v104 = v99;
  v105 = v59;
  __swift_allocate_boxed_opaque_existential_2(v103);
  dispatch thunk of SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:shownOnLockscreen:)();

  outlined destroy of Resolver?(v100, &_s18SiriSuggestionsKit8Resolver_pSgMd, &_s18SiriSuggestionsKit8Resolver_pSgMR);
  v62 = v104;
  v63 = __swift_project_boxed_opaque_existential_2(v103, v104);
  v64 = *(v62 - 8);
  __chkstk_darwin(v63);
  v66 = &v71 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for PhoneSuggestionsAssetProvider();
  v68 = swift_allocObject();
  v101 = v67;
  v102 = lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type PhoneSuggestionsAssetProvider and conformance PhoneSuggestionsAssetProvider, v69, type metadata accessor for PhoneSuggestionsAssetProvider, &protocol conformance descriptor for PhoneSuggestionsAssetProvider);
  v100[0] = v68;
  dispatch thunk of SuggestionDetailsBuilder.assetsProvider(_:)();
  (*(v64 + 8))(v66, v62);
  __swift_destroy_boxed_opaque_existential_1Tm(v100);
  __swift_destroy_boxed_opaque_existential_1Tm(v103);
  __swift_destroy_boxed_opaque_existential_1Tm(v106);
  __swift_destroy_boxed_opaque_existential_1Tm(v108);
  __swift_destroy_boxed_opaque_existential_1Tm(v110);
  __swift_destroy_boxed_opaque_existential_1Tm(v113);
  __swift_destroy_boxed_opaque_existential_1Tm(v116);
  __swift_destroy_boxed_opaque_existential_1Tm(v119);
  __swift_destroy_boxed_opaque_existential_1Tm(v122);
  __swift_destroy_boxed_opaque_existential_1Tm(v125);
  return __swift_destroy_boxed_opaque_existential_1Tm(v127);
}

uint64_t protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance PhoneOwnerDefinitionFactory(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance PhoneOwnerDefinitionFactory;

  return static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(a1, a2);
}

uint64_t protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance PhoneOwnerDefinitionFactory(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t PhoneSuggestionsAssetProvider.getAssets(context:suggestion:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit5ImageOSgMd, &_s18SiriSuggestionsKit5ImageOSgMR);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v10 - v4;
  strcpy(&v10 - v4, "com.apple.siri");
  (&v10 - v4)[15] = -18;
  v6 = enum case for Image.appIcon(_:);
  v7 = type metadata accessor for Image();
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 104))(v5, v6, v7);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  return Assets.init(icon:inAppIcon:)();
}

uint64_t Optional<A>.isNilOrEmpty.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = *(a1 + 16);
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    (*(v3 + 8))(v5, a1);
    v8 = 1;
  }

  else
  {
    v8 = dispatch thunk of Collection.isEmpty.getter();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  return v8 & 1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *__swift_project_boxed_opaque_existential_2(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_2(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t type metadata accessor for INIntent(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t outlined init with copy of any SiriSuggestions.Transformer<Self.SiriSuggestions.Transformer.InputType == SiriSuggestions.Intent, Self.SiriSuggestions.Transformer.OutputType == IntentParameter>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined destroy of Resolver?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1)
{

  return _swift_slowDealloc(a1, -1, -1);
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  if (v5 == a3(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  v4 = a2(a1);
  OUTLINED_FUNCTION_1_2(v4, v5, v6);

  return Hasher._finalize()();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  v5 = a3(a2);
  OUTLINED_FUNCTION_1_2(v5, v6, v7);

  return Hasher._finalize()();
}

uint64_t *Signal.PhoneApp.unsafeMutableAddressor()
{
  if (one-time initialization token for PhoneApp != -1)
  {
    swift_once();
  }

  return &static Signal.PhoneApp;
}

uint64_t *Signal.FaceTimeApp.unsafeMutableAddressor()
{
  if (one-time initialization token for FaceTimeApp != -1)
  {
    swift_once();
  }

  return &static Signal.FaceTimeApp;
}

uint64_t *Signal.ContactsApp.unsafeMutableAddressor()
{
  if (one-time initialization token for ContactsApp != -1)
  {
    swift_once();
  }

  return &static Signal.ContactsApp;
}

uint64_t PhoneSuggestion.catId.getter(char a1)
{
  v2 = 0xD000000000000013;
  strcpy(v6, "Suggestions#");
  BYTE5(v6[1]) = 0;
  HIWORD(v6[1]) = -5120;
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0xD000000000000015;
    }

    else
    {
      v2 = 0xD000000000000016;
    }

    if (a1 == 1)
    {
      v3 = "phoneCall_StartCall";
    }

    else
    {
      v3 = "phoneCall_StartFTCall";
    }
  }

  else
  {
    v3 = "mobilePhoneContact";
  }

  v4 = v3 | 0x8000000000000000;
  String.append(_:)(*&v2);

  return v6[0];
}

void *PhoneSuggestion.signals()(uint64_t a1)
{
  if (one-time initialization token for signals != -1)
  {
    swift_once();
  }

  if (*(&dword_10 + static PhoneSuggestion.signals) && (specialized __RawDictionaryStorage.find<A>(_:)(a1), (v2 & 1) != 0))
  {
  }

  else
  {
    return &_swiftEmptyArrayStorage;
  }
}

int *one-time initialization function for signals()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16PhoneSuggestions0D10SuggestionO_Say04SiriE3Kit6SignalCGtGMd, &_ss23_ContiguousArrayStorageCy16PhoneSuggestions0D10SuggestionO_Say04SiriE3Kit6SignalCGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_C2A0;
  *(inited + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_C280;
  type metadata accessor for Signal();
  *(v1 + 32) = static Signal.HomeScreen.getter();
  *(v1 + 40) = static Signal.DeviceLocked.getter();
  if (one-time initialization token for ContactsApp != -1)
  {
    swift_once();
  }

  *(v1 + 48) = static Signal.ContactsApp;
  v2 = one-time initialization token for PhoneApp;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 56) = static Signal.PhoneApp;
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_C280;

  *(v3 + 32) = static Signal.HomeScreen.getter();
  v4 = static Signal.DeviceLocked.getter();
  v5 = static Signal.ContactsApp;
  *(v3 + 40) = v4;
  *(v3 + 48) = v5;
  v6 = one-time initialization token for FaceTimeApp;

  if (v6 != -1)
  {
    swift_once();
  }

  *(v3 + 56) = static Signal.FaceTimeApp;
  *(inited + 56) = v3;
  *(inited + 64) = 2;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_C280;

  *(v7 + 32) = static Signal.HomeScreen.getter();
  v8 = static Signal.DeviceLocked.getter();
  v9 = static Signal.ContactsApp;
  *(v7 + 40) = v8;
  *(v7 + 48) = v9;
  *(v7 + 56) = static Signal.FaceTimeApp;
  *(inited + 72) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18SiriSuggestionsKit6SignalCGMd, &_sSay18SiriSuggestionsKit6SignalCGMR);
  lazy protocol witness table accessor for type PhoneSuggestion and conformance PhoneSuggestion();
  result = Dictionary.init(dictionaryLiteral:)();
  static PhoneSuggestion.signals = result;
  return result;
}

PhoneSuggestions::PhoneSuggestion_optional __swiftcall PhoneSuggestion.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneSuggestion.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

PhoneSuggestions::PhoneSuggestion_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneSuggestion@<W0>(Swift::String *a1@<X0>, PhoneSuggestions::PhoneSuggestion_optional *a2@<X8>)
{
  result.value = PhoneSuggestion.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t one-time initialization function for FaceTimeApp()
{
  type metadata accessor for Signal();
  v2[3] = type metadata accessor for CoreSignalTypes();
  v2[4] = lazy protocol witness table accessor for type CoreSignalTypes and conformance CoreSignalTypes();
  __swift_allocate_boxed_opaque_existential_2(v2);
  OUTLINED_FUNCTION_0_2();
  (*(v0 + 104))();
  result = Signal.__allocating_init(signalType:signalValue:fallbackSignals:)();
  static Signal.FaceTimeApp = result;
  return result;
}

uint64_t one-time initialization function for ContactsApp()
{
  type metadata accessor for Signal();
  v2[3] = type metadata accessor for CoreSignalTypes();
  v2[4] = lazy protocol witness table accessor for type CoreSignalTypes and conformance CoreSignalTypes();
  __swift_allocate_boxed_opaque_existential_2(v2);
  OUTLINED_FUNCTION_0_2();
  (*(v0 + 104))();
  result = Signal.__allocating_init(signalType:signalValue:fallbackSignals:)();
  static Signal.ContactsApp = result;
  return result;
}

uint64_t one-time initialization function for PhoneApp()
{
  type metadata accessor for Signal();
  v2[3] = type metadata accessor for CoreSignalTypes();
  v2[4] = lazy protocol witness table accessor for type CoreSignalTypes and conformance CoreSignalTypes();
  __swift_allocate_boxed_opaque_existential_2(v2);
  OUTLINED_FUNCTION_0_2();
  (*(v0 + 104))();
  result = Signal.__allocating_init(signalType:signalValue:fallbackSignals:)();
  static Signal.PhoneApp = result;
  return result;
}

uint64_t static Signal.FaceTimeApp.getter(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

unint64_t lazy protocol witness table accessor for type [PhoneSuggestion] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [PhoneSuggestion] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PhoneSuggestion] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16PhoneSuggestions0A10SuggestionOGMd, &_sSay16PhoneSuggestions0A10SuggestionOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PhoneSuggestion] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSuggestion and conformance PhoneSuggestion()
{
  result = lazy protocol witness table cache variable for type PhoneSuggestion and conformance PhoneSuggestion;
  if (!lazy protocol witness table cache variable for type PhoneSuggestion and conformance PhoneSuggestion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSuggestion and conformance PhoneSuggestion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSuggestion and conformance PhoneSuggestion;
  if (!lazy protocol witness table cache variable for type PhoneSuggestion and conformance PhoneSuggestion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSuggestion and conformance PhoneSuggestion);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneSuggestion(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x6214);
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    while (1)
    {
      v5 = 0xD000000000000015;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v6 = "phoneCall_StartCall";
      }

      else
      {
        v5 = 0xD000000000000016;
        v6 = "phoneCall_StartFTCall";
      }

      v7 = *(*(v2 + 48) + v4) ? v5 : 0xD000000000000013;
      v8 = *(*(v2 + 48) + v4) ? v6 : "mobilePhoneContact";
      if (a1)
      {
        v9 = a1 == 1 ? 0xD000000000000015 : 0xD000000000000016;
        v10 = a1 == 1 ? "phoneCall_StartCall" : "phoneCall_StartFTCall";
      }

      else
      {
        v9 = 0xD000000000000013;
        v10 = "mobilePhoneContact";
      }

      if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v14;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
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

unint64_t lazy protocol witness table accessor for type CoreSignalTypes and conformance CoreSignalTypes()
{
  result = lazy protocol witness table cache variable for type CoreSignalTypes and conformance CoreSignalTypes;
  if (!lazy protocol witness table cache variable for type CoreSignalTypes and conformance CoreSignalTypes)
  {
    type metadata accessor for CoreSignalTypes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoreSignalTypes and conformance CoreSignalTypes);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

void ResolveStartCallParams.__allocating_init()()
{
  OUTLINED_FUNCTION_8_0();
  swift_allocObject();
  OUTLINED_FUNCTION_20();
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t key path setter for ResolveContactOrGroupEntity.resolverTypeOperand : ResolveContactOrGroupEntity(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 96);

  return v4(v2, v3);
}

uint64_t ResolveContactOrGroupEntity.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  OUTLINED_FUNCTION_10_0();
  v1[2] = v0;
  v2 = type metadata accessor for RREntity();
  v1[3] = v2;
  OUTLINED_FUNCTION_1_3(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_28();
  v1[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  OUTLINED_FUNCTION_13_0(v4);
  v1[7] = OUTLINED_FUNCTION_28();
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_37();

  return _swift_task_switch(v5, v6, v7);
}

{
  v2 = type metadata accessor for UsoEntityBuilder_common_Group();
  OUTLINED_FUNCTION_26(v2);
  UsoEntityBuilder_common_Group.init()();
  v3 = static UsoBuilderConversionUtils.convertEntityBuilderToEntity(entityBuilder:)();

  if (v3)
  {
    ResolveContactOrGroupEntity.getCandidate(for:)(v3, v1[8]);
    type metadata accessor for RRCandidate();
    v4 = OUTLINED_FUNCTION_30();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v0);
    v6 = v1[8];
    if (EnumTagSinglePayload == 1)
    {

      outlined destroy of Resolver?(v6, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
    }

    else
    {
      v7 = v1[2];
      RRCandidate.entity.getter();
      OUTLINED_FUNCTION_14();
      v8 = OUTLINED_FUNCTION_34();
      v9(v8);
      RREntity.usoEntity.getter();
      v10 = OUTLINED_FUNCTION_32();
      v11(v10);
      UsoEntity.attributes.getter();
      OUTLINED_FUNCTION_30();

      v13 = (*(*v7 + 88))(v12);
      v15 = specialized Dictionary.subscript.getter(v13, v14, v0);

      if (v15)
      {
        OUTLINED_FUNCTION_35();
        if (v0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        v0 = dispatch thunk of UsoValue.getAsPrimitiveValueString()();
        v17 = v16;

        if (v17)
        {
          goto LABEL_16;
        }
      }
    }
  }

  v18 = type metadata accessor for UsoEntityBuilder_common_Person();
  OUTLINED_FUNCTION_26(v18);
  UsoEntityBuilder_common_Person.init()();
  v19 = static UsoBuilderConversionUtils.convertEntityBuilderToEntity(entityBuilder:)();

  if (v19)
  {
    ResolveContactOrGroupEntity.getCandidate(for:)(v19, v1[7]);
    type metadata accessor for RRCandidate();
    v20 = OUTLINED_FUNCTION_30();
    v21 = __swift_getEnumTagSinglePayload(v20, 1, v0);
    v22 = v1[7];
    if (v21 == 1)
    {

      outlined destroy of Resolver?(v22, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
      goto LABEL_18;
    }

    v23 = v1[2];
    RRCandidate.entity.getter();
    OUTLINED_FUNCTION_14();
    v24 = OUTLINED_FUNCTION_34();
    v25(v24);
    RREntity.usoEntity.getter();
    v26 = OUTLINED_FUNCTION_32();
    v27(v26);
    UsoEntity.attributes.getter();
    OUTLINED_FUNCTION_30();

    v29 = (*(*v23 + 88))(v28);
    v31 = specialized Dictionary.subscript.getter(v29, v30, v0);

    if (!v31)
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_35();
    if (v0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    v0 = dispatch thunk of UsoValue.getAsPrimitiveValueString()();
    v17 = v32;

    if (!v17)
    {
LABEL_17:

      goto LABEL_18;
    }

LABEL_16:
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v34 = OUTLINED_FUNCTION_29(v33);
    v34[1] = xmmword_C270;
    *(v34 + 7) = &type metadata for String;
    *(v34 + 4) = v0;
    *(v34 + 5) = v17;

    goto LABEL_19;
  }

LABEL_18:
  v34 = &_swiftEmptyArrayStorage;
LABEL_19:

  OUTLINED_FUNCTION_18();

  return v35(v34);
}

uint64_t ResolveContactOrGroupEntity.getCandidate(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR);
  v5 = OUTLINED_FUNCTION_13_0(v4);
  __chkstk_darwin(v5);
  v7 = &v29 - v6;
  v8 = type metadata accessor for RRQuery();
  OUTLINED_FUNCTION_5_0();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  OUTLINED_FUNCTION_2_1();
  v15 = __chkstk_darwin(v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v29 - v18;
  type metadata accessor for ReferenceResolutionClient();
  ReferenceResolutionClient.__allocating_init()();
  *v13 = a1;
  (*(v10 + 104))(v13, enum case for RRQuery.usoReference(_:), v8);
  v20 = type metadata accessor for RRFilter();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v20);

  dispatch thunk of ReferenceResolutionClient.resolve(reference:filter:)();

  outlined destroy of Resolver?(v7, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR);
  (*(v10 + 8))(v13, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_5;
  }

  outlined init with copy of DeliveryVehicle?(v19, v17, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  v21 = type metadata accessor for RRResult();
  v22 = *(v21 - 8);
  if ((*(v22 + 88))(v17, v21) != enum case for RRResult.foundMatch(_:))
  {
    (*(v22 + 8))(v17, v21);
LABEL_5:
    v27 = type metadata accessor for RRCandidate();
    v25 = a2;
    v26 = 1;
    goto LABEL_6;
  }

  (*(v22 + 96))(v17, v21);
  v23 = type metadata accessor for RRCandidate();
  OUTLINED_FUNCTION_2_1();
  (*(v24 + 32))(a2, v17, v23);
  v25 = a2;
  v26 = 0;
  v27 = v23;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v25, v26, 1, v27);
  return outlined destroy of Resolver?(v19, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
}

uint64_t ResolveContactOrGroupEntity.__allocating_init()()
{
  OUTLINED_FUNCTION_8_0();
  result = swift_allocObject();
  *(result + 16) = 1701667182;
  *(result + 24) = 0xE400000000000000;
  return result;
}

uint64_t protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance ResolveContactOrGroupEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 112) + **(**v4 + 112));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance ResolveContactOrGroupEntity;

  return v12(a1, a2, a3, a4);
}

uint64_t key path setter for ResolveGeneralReference.resolverTypeOperand : ResolveGeneralReference(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 96);

  return v4(v2, v3);
}

uint64_t ResolveGeneralReference.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  *(v1 + 16) = v0;
  OUTLINED_FUNCTION_37();
  return _swift_task_switch(v2, v3, v4);
}

{
  OUTLINED_FUNCTION_10_0();
  v0 = type metadata accessor for UsoEntityBuilder_common_Group();
  v1 = OUTLINED_FUNCTION_26(v0);
  UsoEntityBuilder_common_Group.init()();
  static UsoBuilderConversionUtils.convertEntityBuilderToEntity(entityBuilder:)();
  OUTLINED_FUNCTION_31();

  if (v1)
  {
    if (ResolveGeneralReference.hasReference(for:)(v1))
    {
      goto LABEL_9;
    }
  }

  v2 = type metadata accessor for UsoEntityBuilder_common_Person();
  v3 = OUTLINED_FUNCTION_26(v2);
  UsoEntityBuilder_common_Person.init()();
  static UsoBuilderConversionUtils.convertEntityBuilderToEntity(entityBuilder:)();
  OUTLINED_FUNCTION_31();

  if (v3)
  {
    if (ResolveGeneralReference.hasReference(for:)(v3))
    {
      goto LABEL_9;
    }
  }

  v4 = type metadata accessor for UsoEntityBuilder_common_PhoneNumber();
  v5 = OUTLINED_FUNCTION_26(v4);
  UsoEntityBuilder_common_PhoneNumber.init()();
  static UsoBuilderConversionUtils.convertEntityBuilderToEntity(entityBuilder:)();
  OUTLINED_FUNCTION_31();

  if (v5)
  {
    if (!ResolveGeneralReference.hasReference(for:)(v5))
    {
      v7 = &_swiftEmptyArrayStorage;
      goto LABEL_10;
    }

LABEL_9:
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v7 = OUTLINED_FUNCTION_29(v6);
    v7[1] = xmmword_C270;
    *(v7 + 7) = &type metadata for Bool;
    *(v7 + 32) = 1;
LABEL_10:

    goto LABEL_11;
  }

  v7 = &_swiftEmptyArrayStorage;
LABEL_11:
  OUTLINED_FUNCTION_18();

  return v8(v7);
}

BOOL ResolveGeneralReference.hasReference(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR);
  v3 = OUTLINED_FUNCTION_13_0(v2);
  __chkstk_darwin(v3);
  v5 = &v22 - v4;
  v6 = type metadata accessor for RRQuery();
  OUTLINED_FUNCTION_5_0();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  type metadata accessor for ReferenceResolutionClient();
  ReferenceResolutionClient.__allocating_init()();
  *v11 = a1;
  (*(v8 + 104))(v11, enum case for RRQuery.usoReference(_:), v6);
  v15 = type metadata accessor for RRFilter();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v15);

  dispatch thunk of ReferenceResolutionClient.resolve(reference:filter:)();

  outlined destroy of Resolver?(v5, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR);
  (*(v8 + 8))(v11, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of Resolver?(v14, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
    return 1;
  }

  else
  {
    v17 = type metadata accessor for RRResult();
    OUTLINED_FUNCTION_5_0();
    v19 = v18;
    v16 = (*(v20 + 88))(v14, v17) != enum case for RRResult.noMatch(_:);
    (*(v19 + 8))(v14, v17);
  }

  return v16;
}

void ResolveGeneralReference.__allocating_init()()
{
  OUTLINED_FUNCTION_8_0();
  swift_allocObject();
  OUTLINED_FUNCTION_24();
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
}

uint64_t protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance ResolveGeneralReference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 112) + **(**v4 + 112));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance ResolveContactOrGroupEntity;

  return v12(a1, a2, a3, a4);
}

uint64_t key path setter for ResolveStartCallParams.resolverTypeOperand : ResolveStartCallParams(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 96);

  return v4(v2, v3);
}

uint64_t ResolveContactOrGroupEntity.resolverTypeOperand.getter()
{
  swift_beginAccess();

  return OUTLINED_FUNCTION_12_0();
}

uint64_t ResolveContactOrGroupEntity.resolverTypeOperand.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t ResolveStartCallParams.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  OUTLINED_FUNCTION_10_0();
  v1[53] = v2;
  v1[54] = v0;
  v1[52] = v3;
  v4 = type metadata accessor for SalientEntityType();
  v1[55] = v4;
  OUTLINED_FUNCTION_1_3(v4);
  v1[56] = v5;
  v1[57] = OUTLINED_FUNCTION_27();
  v6 = type metadata accessor for SalientEntity();
  v1[58] = v6;
  OUTLINED_FUNCTION_1_3(v6);
  v1[59] = v7;
  v1[60] = OUTLINED_FUNCTION_28();
  v1[61] = swift_task_alloc();
  v8 = type metadata accessor for Party();
  v1[62] = v8;
  OUTLINED_FUNCTION_1_3(v8);
  v1[63] = v9;
  v1[64] = OUTLINED_FUNCTION_28();
  v1[65] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit12AppIdDetailsVSgMd, &_s18SiriSuggestionsKit12AppIdDetailsVSgMR);
  OUTLINED_FUNCTION_13_0(v10);
  v1[66] = OUTLINED_FUNCTION_27();
  v11 = type metadata accessor for AppIdDetails();
  v1[67] = v11;
  OUTLINED_FUNCTION_1_3(v11);
  v1[68] = v12;
  v1[69] = OUTLINED_FUNCTION_27();
  v13 = type metadata accessor for DeliveryVehicle();
  v1[70] = v13;
  OUTLINED_FUNCTION_1_3(v13);
  v1[71] = v14;
  v1[72] = OUTLINED_FUNCTION_27();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15DeliveryVehicleOSg_ADtMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSg_ADtMR);
  v1[73] = v15;
  OUTLINED_FUNCTION_13_0(v15);
  v1[74] = OUTLINED_FUNCTION_27();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
  OUTLINED_FUNCTION_13_0(v16);
  v1[75] = OUTLINED_FUNCTION_28();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  OUTLINED_FUNCTION_37();

  return _swift_task_switch(v17, v18, v19);
}

{
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 568);
  v6 = *(v0 + 560);
  __swift_project_boxed_opaque_existential_2(*(v0 + 416), *(*(v0 + 416) + 24));
  OUTLINED_FUNCTION_19();
  dispatch thunk of CandidateSuggestion.deliveryVehicle.getter();
  (*(v5 + 104))(v2, enum case for DeliveryVehicle.siriAutoComplete(_:), v6);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  v7 = *(v4 + 48);
  outlined init with copy of DeliveryVehicle?(v1, v3, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
  outlined init with copy of DeliveryVehicle?(v2, v3 + v7, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
  if (__swift_getEnumTagSinglePayload(v3, 1, v6) == 1)
  {
    v8 = *(v0 + 616);
    v9 = *(v0 + 560);
    outlined destroy of Resolver?(*(v0 + 608), &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
    outlined destroy of Resolver?(v8, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
    if (__swift_getEnumTagSinglePayload(v3 + v7, 1, v9) == 1)
    {
      outlined destroy of Resolver?(*(v0 + 592), &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
LABEL_13:
      OUTLINED_FUNCTION_17();
      *(v0 + 624) = dispatch thunk of CandidateSuggestion.context.getter();
      *(v0 + 632) = v36;
      *(v0 + 640) = swift_getObjectType();
      OUTLINED_FUNCTION_17();
      *(v0 + 648) = dispatch thunk of CandidateSuggestion.context.getter();
      *(v0 + 656) = v37;
      *(v0 + 664) = swift_getObjectType();
      v26 = dispatch thunk of Actor.unownedExecutor.getter();
      v28 = ResolveStartCallParams.resolveParameter(parameter:suggestion:interaction:environment:);
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v10 = *(v0 + 560);
  outlined init with copy of DeliveryVehicle?(*(v0 + 592), *(v0 + 600), &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3 + v7, 1, v10);
  v12 = *(v0 + 616);
  v13 = *(v0 + 600);
  if (EnumTagSinglePayload == 1)
  {
    v14 = *(v0 + 568);
    v15 = *(v0 + 560);
    outlined destroy of Resolver?(*(v0 + 608), &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
    outlined destroy of Resolver?(v12, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
    (*(v14 + 8))(v13, v15);
LABEL_6:
    outlined destroy of Resolver?(*(v0 + 592), &_s18SiriSuggestionsKit15DeliveryVehicleOSg_ADtMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSg_ADtMR);
    goto LABEL_7;
  }

  v39 = *(v0 + 592);
  v29 = *(v0 + 576);
  v30 = *(v0 + 568);
  v31 = *(v0 + 560);
  (*(v30 + 32))(v29, v3 + v7, v31);
  lazy protocol witness table accessor for type DeliveryVehicle and conformance DeliveryVehicle(&lazy protocol witness table cache variable for type DeliveryVehicle and conformance DeliveryVehicle, 255, &type metadata accessor for DeliveryVehicle, &protocol conformance descriptor for DeliveryVehicle);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v30 + 8);
  v33(v29, v31);
  v34 = OUTLINED_FUNCTION_19();
  outlined destroy of Resolver?(v34, v35, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
  outlined destroy of Resolver?(v12, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
  v33(v13, v31);
  outlined destroy of Resolver?(v39, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
  if (v32)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (one-time initialization token for suggestions != -1)
  {
    OUTLINED_FUNCTION_1_1(&one-time initialization token for suggestions);
  }

  v16 = type metadata accessor for Logger();
  *(v0 + 672) = __swift_project_value_buffer(v16, static Logger.suggestions);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_23(v18))
  {
    v19 = OUTLINED_FUNCTION_38();
    *v19 = 0;
    OUTLINED_FUNCTION_16();
    _os_log_impl(v20, v21, v22, v23, v24, 2u);
    OUTLINED_FUNCTION_4_0(v19);
  }

  OUTLINED_FUNCTION_17();
  *(v0 + 680) = dispatch thunk of CandidateSuggestion.context.getter();
  *(v0 + 688) = v25;
  *(v0 + 696) = swift_getObjectType();
  v26 = dispatch thunk of Actor.unownedExecutor.getter();
  v28 = ResolveStartCallParams.resolveParameter(parameter:suggestion:interaction:environment:);
LABEL_14:

  return _swift_task_switch(v28, v26, v27);
}

{
  OUTLINED_FUNCTION_10_0();
  Context.getTargetOwner()();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_37();

  return _swift_task_switch(v0, v1, v2);
}

{
  v1 = v0[18];
  v2 = v0[19];
  __swift_project_boxed_opaque_existential_2(v0 + 15, v1);
  v0[23] = v1;
  v0[24] = *(v2 + 8);
  __swift_allocate_boxed_opaque_existential_2(v0 + 20);
  OUTLINED_FUNCTION_14();
  (*(v3 + 16))();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(ResolveStartCallParams.resolveParameter(parameter:suggestion:interaction:environment:), v5, v4);
}

{
  OUTLINED_FUNCTION_10_0();
  Context.getParam(for:key:)();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
  OUTLINED_FUNCTION_37();

  return _swift_task_switch(v1, v2, v3);
}

{
  if (!*(v0 + 320))
  {
    outlined destroy of Resolver?(v0 + 296, &_sypSgMd, &_sypSgMR);
    goto LABEL_10;
  }

  outlined init with take of Any((v0 + 296), (v0 + 264));
  outlined init with copy of Any(v0 + 264, v0 + 328);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 264));
LABEL_10:
    if (one-time initialization token for suggestions != -1)
    {
      OUTLINED_FUNCTION_1_1(&one-time initialization token for suggestions);
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.suggestions);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_23(v5))
    {
      *OUTLINED_FUNCTION_38() = 0;
      OUTLINED_FUNCTION_15();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_3_1();
    }

    v23 = &_swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  if (*(v0 + 392) == 0xD00000000000001DLL && 0x800000000000CDB0 == *(v0 + 400))
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (one-time initialization token for suggestions != -1)
  {
    OUTLINED_FUNCTION_1_1(&one-time initialization token for suggestions);
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.suggestions);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_23(v13))
  {
    *OUTLINED_FUNCTION_38() = 0;
    OUTLINED_FUNCTION_15();
    _os_log_impl(v14, v15, v16, v17, v18, 2u);
    OUTLINED_FUNCTION_3_1();
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v20 = OUTLINED_FUNCTION_29(v19);
  *(v20 + 56) = &type metadata for StartCallSuggestionParams;
  *(v20 + 16) = xmmword_C270;
  *(v20 + 32) = xmmword_C510;
  v23 = v20;
  *(v20 + 48) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 264));
LABEL_21:
  OUTLINED_FUNCTION_7_0();

  OUTLINED_FUNCTION_18();

  return v21(v23);
}

{
  OUTLINED_FUNCTION_10_0();
  Context.getAppId()();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_37();

  return _swift_task_switch(v0, v1, v2);
}

{
  v176 = v0;
  v2 = v0[67];
  v3 = v0[66];
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    outlined destroy of Resolver?(v3, &_s18SiriSuggestionsKit12AppIdDetailsVSgMd, &_s18SiriSuggestionsKit12AppIdDetailsVSgMR);
    HIDWORD(v156) = 0;
    v4 = &outlined read-only object #0 of ResolveStartCallParams.resolveParameter(parameter:suggestion:interaction:environment:);
  }

  else
  {
    v5 = v0[69];
    v6 = v0[68];
    v1 = v0[65];
    v7 = v0;
    v10 = v0 + 63;
    v8 = v0[63];
    v9 = v10[1];
    v11 = v7[62];
    (*(v6 + 32))(v5, v3, v2);
    AppIdDetails.party.getter();
    (*(v8 + 104))(v9, enum case for Party.third(_:), v11);
    v12 = static Party.== infix(_:_:)();
    v13 = *(v8 + 8);
    v13(v9, v11);
    v13(v1, v11);
    if (v12)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v4 = swift_allocObject();
      *(v4 + 1) = xmmword_C270;
      v4[4] = AppIdDetails.appId.getter();
      v4[5] = v14;
      v15 = Logger.logObject.getter();
      v1 = static os_log_type_t.debug.getter();
      v16 = OUTLINED_FUNCTION_23(v1);
      v17 = v7[69];
      v18 = v7[68];
      v19 = v7[67];
      v0 = v7;
      if (v16)
      {
        v20 = OUTLINED_FUNCTION_25();
        v172 = v17;
        v21 = swift_slowAlloc();
        v175[0] = v21;
        *v20 = 136315138;

        Array.description.getter();

        v22 = OUTLINED_FUNCTION_19();
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v24);

        *(v20 + 4) = v25;
        _os_log_impl(&dword_0, v15, v1, "#Resolvers Found 3P app %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        OUTLINED_FUNCTION_4_0(v21);
        OUTLINED_FUNCTION_9();

        (*(v18 + 8))(v172, v19);
      }

      else
      {

        (*(v18 + 8))(v17, v19);
      }

      HIDWORD(v156) = 1;
    }

    else
    {
      (*(v7[68] + 8))(v7[69], v7[67]);
      HIDWORD(v156) = 0;
      v4 = &outlined read-only object #0 of ResolveStartCallParams.resolveParameter(parameter:suggestion:interaction:environment:);
      v0 = v7;
    }
  }

  v26 = [objc_allocWithZone(ATXProactiveSuggestionClient) initWithConsumerSubType:45];
  v27 = [v26 suggestionLayoutFromCache];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 allSuggestionsInLayout];

    type metadata accessor for INIntent(0, &lazy cache variable for type metadata for ATXProactiveSuggestion, ATXProactiveSuggestion_ptr);
    inited = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    inited = 0;
  }

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_23(v32))
  {
    v1 = OUTLINED_FUNCTION_25();
    *v1 = 134217984;
    if (inited)
    {
      v33 = specialized Array._getCount()(inited);
    }

    else
    {
      v33 = 0;
    }

    *(v1 + 4) = v33;

    OUTLINED_FUNCTION_16();
    _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
    OUTLINED_FUNCTION_4_0(v1);
  }

  else
  {
  }

  v39 = &_swiftEmptyArrayStorage;
  if (inited)
  {
    v40 = inited;
  }

  else
  {
    v40 = &_swiftEmptyArrayStorage;
  }

  v41 = specialized Array._getCount()(v40);
  v169 = v0;
  v159 = v26;
  v160 = v4;
  if (v41)
  {
    if (v41 >= 1)
    {
      v44 = 0;
      v161 = (v0 + 47);
      v163 = 0;
      v170 = v40 & 0xC000000000000001;
      v165 = 138412290;
      *&v43 = 136315394;
      v155 = v43;
      v167 = v40;
      v173 = v41;
      while (1)
      {
        if (v170)
        {
          v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v45 = *(v40 + 8 * v44 + 32);
        }

        v46 = v45;
        v47 = [v45 executableSpecification];
        v48 = [v47 executableType];

        v49 = v46;
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.debug.getter();

        v52 = os_log_type_enabled(v50, v51);
        if (v48 != &dword_0 + 2)
        {
          if (v52)
          {
            v86 = OUTLINED_FUNCTION_25();
            v87 = swift_slowAlloc();
            v95 = OUTLINED_FUNCTION_22(v87, v88, v89, v90, v91, v92, v93, v94, v155, *(&v155 + 1), v156, v157, v158, v159, v160, v161, v163, v164, v165);
            _os_log_impl(&dword_0, v50, v51, "#Resolvers Ignoring suggestion %@", v86, 0xCu);
            outlined destroy of Resolver?(v48, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            OUTLINED_FUNCTION_9();
            OUTLINED_FUNCTION_3_1();
          }

          else
          {
          }

          goto LABEL_52;
        }

        if (v52)
        {
          v53 = OUTLINED_FUNCTION_25();
          v54 = swift_slowAlloc();
          OUTLINED_FUNCTION_22(v54, v55, v56, v57, v58, v59, v60, v61, v155, *(&v155 + 1), v156, v157, v158, v159, v160, v161, v163, v164, v165);
          _os_log_impl(&dword_0, v50, v51, "#Resolvers Found a proactive action suggestion %@", v53, 0xCu);
          outlined destroy of Resolver?(2, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_3_1();
        }

        v62 = [v49 executableSpecification];
        v63 = [v62 executableObject];

        if (v63)
        {
          objc_opt_self();
          v64 = swift_dynamicCastObjCClass();
          if (v64)
          {
            v65 = v64;
            v164 = v39;

            v66 = [v65 bundleId];
            v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v69 = v68;

            v0[47] = v67;
            v0[48] = v69;
            v70 = swift_task_alloc();
            *(v70 + 16) = v161;
            v71 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v70, v4);

            if (v71)
            {
              swift_unknownObjectRetain();
              v72 = Logger.logObject.getter();
              v73 = static os_log_type_t.debug.getter();
              swift_unknownObjectRelease();
              if (os_log_type_enabled(v72, v73))
              {
                HIDWORD(v158) = v73;
                v74 = swift_slowAlloc();
                v157 = swift_slowAlloc();
                v175[0] = v157;
                *v74 = v155;
                v75 = [v65 bundleId];
                v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v78 = v77;

                v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, v175);

                *(v74 + 4) = v79;
                *(v74 + 12) = 2080;
                v80 = [v65 intent];
                v81 = v80;
                if (v80)
                {
                  v82 = [v80 _dictionaryRepresentation];

                  v81 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
                }

                v39 = v164;
                v0[51] = v81;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
                v83 = String.init<A>(describing:)();
                v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, v175);

                *(v74 + 14) = v85;
                _os_log_impl(&dword_0, v72, BYTE4(v158), "#Resolvers %s with intent: %s", v74, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_3_1();
                OUTLINED_FUNCTION_9();

                v4 = v160;
              }

              else
              {

                v39 = v164;
              }

              v96 = [v65 intent];
              if (v96)
              {
                v97 = v96;
                v0[32] = type metadata accessor for INIntent(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
                v0[29] = v97;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
                }

                v99 = *(v39 + 2);
                v98 = *(v39 + 3);
                if (v99 >= v98 >> 1)
                {
                  v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1, v39);
                }

                swift_unknownObjectRelease();

                *(v39 + 2) = v99 + 1;
                v100 = &v39[32 * v99];
                v0 = v169;
                outlined init with take of Any(v169 + 29, v100 + 2);
              }

              else
              {

                swift_unknownObjectRelease();
              }
            }

            else
            {

              swift_unknownObjectRelease();
              v39 = v164;
            }

            goto LABEL_51;
          }

          swift_unknownObjectRelease();
        }

LABEL_51:
        v40 = v167;
LABEL_52:
        if (v173 == ++v44)
        {
          goto LABEL_53;
        }
      }
    }

LABEL_92:
    __break(1u);
LABEL_93:
    inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), 3, 1, inited);
LABEL_74:
    *(inited + 16) = 3;
    *(inited + 80) = v39;
    *(inited + 88) = v1;
    *(inited + 96) = 257;
    goto LABEL_79;
  }

LABEL_53:

  v0[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
  v0[25] = v39;

  ResolveStartCallParams.getPersonName(suggestions:)((v0 + 25));
  v102 = v101;
  v104 = v103;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 25);

  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.debug.getter();

  v166 = v104;
  v162 = v102;
  if (os_log_type_enabled(v105, v106))
  {
    v107 = OUTLINED_FUNCTION_25();
    v108 = swift_slowAlloc();
    v175[0] = v108;
    *v107 = 136315138;

    v109 = OUTLINED_FUNCTION_19();
    v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v110, v111);

    *(v107 + 4) = v112;
    OUTLINED_FUNCTION_15();
    _os_log_impl(v113, v114, v115, v116, v117, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v108);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_3_1();
  }

  v39 = v0[59];
  v118 = v0[56];
  __swift_project_boxed_opaque_existential_2(v0[53], *(v0[53] + 24));
  OUTLINED_FUNCTION_31();
  inited = dispatch thunk of EnvironmentSnapshot.salientEntities.getter();
  v119 = 0;
  v174 = *(inited + 16);
  v1 = v118 + 88;
  v120 = enum case for SalientEntityType.openApp(_:);
  v171 = (v39 + 8);
  v4 = (v118 + 8);
  while (1)
  {
    if (v174 == v119)
    {

LABEL_70:
      v4 = v159;
      v1 = v166;
      v39 = v162;
      goto LABEL_71;
    }

    v42 = *(inited + 16);
    if (v119 >= v42)
    {
      __break(1u);
      goto LABEL_92;
    }

    v121 = v169[57];
    v122 = v169[55];
    (*(v39 + 2))(v169[60], inited + ((v39[80] + 32) & ~v39[80]) + *(v39 + 9) * v119, v169[58]);
    SalientEntity.type.getter();
    if ((*v1)(v121, v122) == v120)
    {
      break;
    }

    ++v119;
    (*v171)(v169[60], v169[58]);
    v123 = OUTLINED_FUNCTION_34();
    v124(v123);
  }

  v125 = OUTLINED_FUNCTION_19();
  v126(v125);

  v127 = OUTLINED_FUNCTION_34();
  v128(v127);
  SalientEntity.value.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEs8SendablepMd, &_sSe_SEs8SendablepMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v136 = OUTLINED_FUNCTION_33();
    v137(v136);
    goto LABEL_70;
  }

  v129 = v169[45];
  v130 = v169[46];
  v131 = v129 == 0xD000000000000015 && 0x800000000000C930 == v130;
  v4 = v159;
  v1 = v166;
  v39 = v162;
  if (v131 || (OUTLINED_FUNCTION_12_0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v132 = v169[61];
    v133 = v169[58];

    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v135 = OUTLINED_FUNCTION_29(v134);
    *(v135 + 16) = xmmword_C270;
    *(v135 + 56) = &type metadata for StartCallSuggestionParams;
    *(v135 + 32) = v162;
    *(v135 + 40) = v166;
    v168 = v135;
    *(v135 + 48) = 0;
LABEL_68:

    (*v171)(v132, v133);
    goto LABEL_80;
  }

  if (v129 == 0xD000000000000012 && 0x800000000000C950 == v130)
  {

    v151 = v169;
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_12_0();
  v150 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v151 = v169;
  if (v150)
  {
LABEL_90:
    v132 = v151[61];
    v133 = v151[58];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v154 = swift_allocObject();
    *(v154 + 16) = xmmword_C1C0;
    *(v154 + 32) = v162;
    *(v154 + 40) = v166;
    *(v154 + 48) = 1;
    *(v154 + 88) = &type metadata for StartCallSuggestionParams;
    *(v154 + 56) = &type metadata for StartCallSuggestionParams;
    *(v154 + 64) = v162;
    *(v154 + 72) = v166;
    v168 = v154;
    *(v154 + 80) = 257;

    goto LABEL_68;
  }

  v152 = OUTLINED_FUNCTION_33();
  v153(v152);
LABEL_71:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16PhoneSuggestions25StartCallSuggestionParamsVGMd, &_ss23_ContiguousArrayStorageCy16PhoneSuggestions25StartCallSuggestionParamsVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_C270;
  *(inited + 32) = v39;
  *(inited + 40) = v1;
  *(inited + 48) = 0;
  if ((v156 & 0x100000000) == 0)
  {
    v138 = objc_opt_self();

    if ([v138 supportsDisplayingFaceTimeVideoCalls])
    {

      inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(&dword_0 + 1, 2, 1, inited);
      *(inited + 16) = 2;
      *(inited + 56) = v39;
      *(inited + 64) = v1;
      *(inited + 72) = 1;
      v42 = *(inited + 24);
      if (v42 > 5)
      {
        goto LABEL_74;
      }

      goto LABEL_93;
    }
  }

  v139 = Logger.logObject.getter();
  v140 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_23(v140))
  {
    v141 = OUTLINED_FUNCTION_38();
    *v141 = 0;
    OUTLINED_FUNCTION_16();
    _os_log_impl(v142, v143, v144, v145, v146, 2u);
    OUTLINED_FUNCTION_4_0(v141);
  }

LABEL_79:
  v168 = specialized _arrayForceCast<A, B>(_:)(inited);

LABEL_80:

  OUTLINED_FUNCTION_7_0();

  OUTLINED_FUNCTION_18();

  return v147(v168);
}

unint64_t *specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 49;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      outlined init with take of Any(&v8, &v2[4 * v6 + 4]);
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void ResolveStartCallParams.getPersonName(suggestions:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v27);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
  if (OUTLINED_FUNCTION_36(v2, v3, v4, v2, v5))
  {
    v6 = v26;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v6 = OUTLINED_FUNCTION_29(v7);
    *(v6 + 16) = xmmword_C270;
    outlined init with copy of Any(a1, v6 + 32);
  }

  v8 = *(v6 + 16);
  if (!v8)
  {
LABEL_25:

LABEL_26:
    OUTLINED_FUNCTION_12_0();
    return;
  }

  v9 = 0;
  v10 = v6 + 32;
  while (v9 < *(v6 + 16))
  {
    outlined init with copy of Any(v10, v27);
    v11 = type metadata accessor for INIntent(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
    if (OUTLINED_FUNCTION_36(v11, v12, v13, v11, v14))
    {
      v15 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(v26);
      if (v15)
      {
        v16 = v15;
        v17 = v15 & 0xFFFFFFFFFFFFFF8;
        if (v15 >> 62)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
LABEL_21:

            goto LABEL_22;
          }
        }

        else if (!*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_21;
        }

        if ((v16 & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(v17 + 16))
          {
            goto LABEL_29;
          }

          v18 = *(v16 + 32);
        }

        v19 = v18;

        v20 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v19);
        if (v21)
        {
          v22 = v20;
          v23 = v21;

          v24 = HIBYTE(v23) & 0xF;
          if ((v23 & 0x2000000000000000) == 0)
          {
            v24 = v22 & 0xFFFFFFFFFFFFLL;
          }

          if (v24)
          {

            v25 = [v19 displayName];
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            goto LABEL_26;
          }
        }
      }

      else
      {
      }
    }

LABEL_22:
    ++v9;
    v10 += 32;
    if (v8 == v9)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t ResolveStartCallParams.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_8_0();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance ResolveStartCallParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 112) + **(**v4 + 112));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance ResolveStartCallParams;

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance ResolveStartCallParams()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;

  OUTLINED_FUNCTION_18();

  return v2(v1);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16PhoneSuggestions25StartCallSuggestionParamsVGMd, &_ss23_ContiguousArrayStorageCy16PhoneSuggestions25StartCallSuggestionParamsVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
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

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(void *a1)
{
  v1 = [a1 contactIdentifier];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_12_0();
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t lazy protocol witness table accessor for type DeliveryVehicle and conformance DeliveryVehicle(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_A940()
{
  OUTLINED_FUNCTION_4_1();
  result = (*(v1 + 88))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_A984()
{
  OUTLINED_FUNCTION_4_1();
  result = (*(v1 + 88))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_A9C8()
{
  OUTLINED_FUNCTION_4_1();
  result = (*(v1 + 88))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t outlined init with copy of DeliveryVehicle?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2_1();
  v5 = OUTLINED_FUNCTION_12_0();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return _swift_slowDealloc(v0, -1, -1);
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9()
{

  return _swift_slowDealloc(v0, -1, -1);
}

uint64_t OUTLINED_FUNCTION_22(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  *v19 = a19;
  *(v19 + 4) = v20;
  *a1 = v20;

  return _objc_retain_x23();
}

BOOL OUTLINED_FUNCTION_23(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_25()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_26(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_27()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_28()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_35()
{

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
}

uint64_t OUTLINED_FUNCTION_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_38()
{

  return swift_slowAlloc();
}

PhoneSuggestions::StartCallSuggestionParams __swiftcall StartCallSuggestionParams.init(intent:)(INStartCallIntent intent)
{
  v2 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(intent.super.super.isa);
  v3 = v2;
  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = specialized Array._getCount()(v2);
  if (!v4)
  {

    v3 = 0;
LABEL_8:
    v11 = 0xE000000000000000;
    goto LABEL_9;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_15;
    }

    v7 = *(v3 + 32);
  }

  v8 = v7;

  v9 = [v8 displayName];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

LABEL_9:
  v12 = [(objc_class *)intent.super.super.isa preferredCallProvider];
  v13 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(intent.super.super.isa);
  if (v13)
  {
    v14 = specialized Array._getCount()(v13) > 1;

    v15 = v14 << 8;
  }

  else
  {

    v15 = 0;
  }

  v6 = v15 | (v12 == &dword_0 + 2);
  v4 = v3;
  v5 = v11;
LABEL_15:
  result.name.value._object = v5;
  result.name.value._countAndFlagsBits = v4;
  result.isFaceTime = v6;
  result.isGroupCall = HIBYTE(v6);
  return result;
}

PhoneSuggestions::StartCallSuggestionParams __swiftcall StartCallSuggestionParams.init(name:isFaceTime:isGroupCall:)(PhoneSuggestions::StartCallSuggestionParams name, Swift::Bool isFaceTime, Swift::Bool isGroupCall)
{
  if (isGroupCall)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 & 0xFFFE | isFaceTime;
  name.isFaceTime = v4;
  name.isGroupCall = HIBYTE(v4);
  return name;
}

uint64_t StartCallSuggestionParams.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t StartCallSuggestionParams.dictionary.getter(uint64_t a1, unint64_t a2, __int16 a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_C2A0;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  if (a2)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0xE000000000000000;
  if (a2)
  {
    v8 = a2;
  }

  *(inited + 48) = v7;
  *(inited + 56) = v8;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6954656361467369;
  *(inited + 88) = 0xEA0000000000656DLL;
  *(inited + 96) = a3 & 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x4370756F72477369;
  *(inited + 136) = 0xEB000000006C6C61;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = HIBYTE(a3) & 1;

  return Dictionary.init(dictionaryLiteral:)();
}

ValueMetadata *StartCallSuggestionParams.toDialog(dialogProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  outlined init with copy of any SiriSuggestions.Transformer<Self.SiriSuggestions.Transformer.InputType == SiriSuggestions.Intent, Self.SiriSuggestions.Transformer.OutputType == IntentParameter>(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit14DialogProvider_pMd, &_s18SiriSuggestionsKit14DialogProvider_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit17CATDialogProvider_pMd, &_s18SiriSuggestionsKit17CATDialogProvider_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    a2 = StartCallSuggestionParams.dictionary.getter(a2, a3, a4 & 0x101);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  }

  else
  {
    *(a5 + 8) = a3;
    *(a5 + 16) = a4 & 1;
    *(a5 + 17) = HIBYTE(a4) & 1;

    result = &type metadata for StartCallSuggestionParams;
  }

  *(a5 + 24) = result;
  *a5 = a2;
  return result;
}

ValueMetadata *protocol witness for DialogParameterProvider.toDialog(dialogProvider:) in conformance StartCallSuggestionParams@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return StartCallSuggestionParams.toDialog(dialogProvider:)(a1, *v2, *(v2 + 8), v3 | *(v2 + 16), a2);
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(void *a1)
{
  v1 = [a1 contacts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for INPerson();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for StartCallSuggestionParams(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for StartCallSuggestionParams(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t type metadata accessor for INPerson()
{
  result = lazy cache variable for type metadata for INPerson;
  if (!lazy cache variable for type metadata for INPerson)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INPerson);
  }

  return result;
}

uint64_t Logger.suggestions.unsafeMutableAddressor()
{
  if (one-time initialization token for suggestions != -1)
  {
    OUTLINED_FUNCTION_1_1(&one-time initialization token for suggestions);
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.suggestions);
}

uint64_t one-time initialization function for suggestions()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.suggestions);
  __swift_project_value_buffer(v0, static Logger.suggestions);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.suggestions.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for suggestions != -1)
  {
    OUTLINED_FUNCTION_1_1(&one-time initialization token for suggestions);
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.suggestions);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}