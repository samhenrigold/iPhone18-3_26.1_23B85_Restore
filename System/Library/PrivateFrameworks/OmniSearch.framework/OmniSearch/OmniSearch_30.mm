uint64_t key path getter for static EntityMatchFormatter.entityTypeMap : EntityMatchFormatter.Type@<X0>(void *a1@<X8>)
{
  EntityMatchFormatter.entityTypeMap.unsafeMutableAddressor();
  swift_beginAccess();
  *a1 = static EntityMatchFormatter.entityTypeMap;
}

uint64_t key path setter for static EntityMatchFormatter.entityTypeMap : EntityMatchFormatter.Type(uint64_t *a1)
{
  v1 = *a1;

  EntityMatchFormatter.entityTypeMap.unsafeMutableAddressor();
  swift_beginAccess();
  static EntityMatchFormatter.entityTypeMap = v1;
}

uint64_t static EntityMatchFormatter.format(entities:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    strcpy(v22, "The user has ");
    HIWORD(v22[1]) = -4864;

    v3 = 0;
    for (i = 32; ; i += 112)
    {
      if (v1 == v3)
      {

        return v22[0];
      }

      memcpy(__dst, (a1 + i), 0x69uLL);
      memcpy(v21, (a1 + i), 0x69uLL);
      if (v1 - 1 == v3)
      {
        break;
      }

      if (v3)
      {
        outlined init with copy of EntityMatch(__dst, &v18);
        v5 = 8236;
        v6 = 0xE200000000000000;
        goto LABEL_8;
      }

      outlined init with copy of EntityMatch(__dst, &v18);
LABEL_9:
      EntityProperty.wrappedValue.getter();
      v8 = v18;
      v7 = v19;
      if (one-time initialization token for entityTypeMap != -1)
      {
        OUTLINED_FUNCTION_0_77();
        swift_once();
      }

      swift_beginAccess();
      v9 = static EntityMatchFormatter.entityTypeMap;
      if (*(static EntityMatchFormatter.entityTypeMap + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7), (v11 & 1) != 0))
      {
        v12 = (*(v9 + 56) + 16 * v10);
        countAndFlagsBits = *v12;
        object = v12[1];
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        String.splitByCapitalLetters()();
        v15 = String.lowercased()();
        countAndFlagsBits = v15._countAndFlagsBits;
        object = v15._object;
      }

      MEMORY[0x25F89F6C0](countAndFlagsBits, object);

      v16 = OUTLINED_FUNCTION_20_25();
      MEMORY[0x25F89F6C0](v16, 0xE800000000000000);
      EntityProperty.wrappedValue.getter();
      MEMORY[0x25F89F6C0](v18, v19);

      MEMORY[0x25F89F6C0](34, 0xE100000000000000);
      MEMORY[0x25F89F6C0](8289, 0xE200000000000000);
      outlined destroy of EntityMatch(v21);

      ++v3;
    }

    outlined init with copy of EntityMatch(__dst, &v18);
    v5 = 0x20646E61202CLL;
    v6 = 0xE600000000000000;
LABEL_8:
    MEMORY[0x25F89F6C0](v5, v6);
    goto LABEL_9;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys;
  if (!lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys;
  if (!lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys;
  if (!lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys;
  if (!lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchProperties.CodingKeys and conformance MatchProperties.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AliasTypes and conformance AliasTypes()
{
  result = lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes;
  if (!lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes;
  if (!lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes;
  if (!lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes;
  if (!lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes;
  if (!lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes;
  if (!lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AliasTypes and conformance AliasTypes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityType and conformance EntityType()
{
  result = lazy protocol witness table cache variable for type EntityType and conformance EntityType;
  if (!lazy protocol witness table cache variable for type EntityType and conformance EntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityType and conformance EntityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityType and conformance EntityType;
  if (!lazy protocol witness table cache variable for type EntityType and conformance EntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityType and conformance EntityType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityMatcherType and conformance EntityMatcherType()
{
  result = lazy protocol witness table cache variable for type EntityMatcherType and conformance EntityMatcherType;
  if (!lazy protocol witness table cache variable for type EntityMatcherType and conformance EntityMatcherType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityMatcherType and conformance EntityMatcherType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityMatcherType and conformance EntityMatcherType;
  if (!lazy protocol witness table cache variable for type EntityMatcherType and conformance EntityMatcherType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityMatcherType and conformance EntityMatcherType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntityMatch(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 105))
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

uint64_t storeEnumTagSinglePayload for EntityMatch(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityMatcherType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MatchProperties(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MatchProperties(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 33) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityMatchFormatter(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for MatchProperties.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_1_70(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_55()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_22_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return _print_unlocked<A, B>(_:_:)();
}

Swift::Bool __swiftcall FeatureFlagService.isEnabled(_:)(OmniSearch::FeatureFlagService::FeatureFlag a1)
{
  v4[3] = &type metadata for FeatureFlagService.FeatureFlag;
  v4[4] = lazy protocol witness table accessor for type FeatureFlagService.FeatureFlag and conformance FeatureFlagService.FeatureFlag();
  LOBYTE(v4[0]) = a1;
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2 & 1;
}

const char *FeatureFlagService.FeatureFlag.domain.getter(char a1)
{
  if ((a1 & 0xFE) == 0xA)
  {
    return "Photos";
  }

  else
  {
    return "OmniSearch";
  }
}

const char *FeatureFlagService.FeatureFlag.feature.getter(char a1)
{
  result = "albusSearch";
  switch(a1)
  {
    case 1:
      result = "allowASRGOverride";
      break;
    case 2:
      result = "dataDetectors";
      break;
    case 3:
      result = "extractedFlightResolution";
      break;
    case 4:
      result = "locationResolution";
      break;
    case 5:
      result = "llmQUConstrainedDecoding";
      break;
    case 6:
      result = "PQAVerification";
      break;
    case 7:
      result = "PQAVerificationForNonEnglishLocales";
      break;
    case 8:
      result = "reflectionToken";
      break;
    case 9:
      result = "ResponseOverride";
      break;
    case 10:
      result = "MemoryCreation";
      break;
    case 11:
      result = "MemoryCreationInternationalization";
      break;
    case 12:
      result = "attributionUI";
      break;
    case 13:
      result = "eventAnswers";
      break;
    case 14:
      result = "preExtractedIDs";
      break;
    case 15:
      result = "preExtractedBreadcrumbs";
      break;
    case 16:
      result = "editorialDates";
      break;
    case 17:
      result = "asTimeContext";
      break;
    case 18:
      result = "dynamicDocumentTruncation";
      break;
    case 19:
      result = "onScreenReferences";
      break;
    case 20:
      result = "readingFlowFallback";
      break;
    case 21:
      result = "AnswerSynthesisAllowlist";
      break;
    case 22:
      result = "LowConfidenceCATAnswerDialog";
      break;
    case 23:
      result = "DisallowAllModelDialogs";
      break;
    case 24:
      result = "asPhoneHistorySupport";
      break;
    case 25:
      result = "asJournalSupport";
      break;
    case 26:
      result = "asSafariHistorySupport";
      break;
    case 27:
      result = "asVoicemailSupport";
      break;
    case 28:
      result = "asVoiceMemoSupport";
      break;
    case 29:
      result = "asWalletTransactionSupport";
      break;
    case 30:
      result = "simplifiedQuery";
      break;
    case 31:
      result = "searchInAppRows";
      break;
    case 32:
      result = "shortCircuitMusicSearch";
      break;
    case 33:
      result = "shortCircuitPhotoSearch";
      break;
    case 34:
      result = "showInternalErrorInfo";
      break;
    case 35:
      result = "includeEventUpdateStatus";
      break;
    case 36:
      result = "ucgSearch";
      break;
    case 37:
      result = "llmQUExtractedType";
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int FeatureFlagService.FeatureFlag.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FeatureFlagService.FeatureFlag(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  FeatureFlagService.FeatureFlag.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type FeatureFlagService.FeatureFlag and conformance FeatureFlagService.FeatureFlag()
{
  result = lazy protocol witness table cache variable for type FeatureFlagService.FeatureFlag and conformance FeatureFlagService.FeatureFlag;
  if (!lazy protocol witness table cache variable for type FeatureFlagService.FeatureFlag and conformance FeatureFlagService.FeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeatureFlagService.FeatureFlag and conformance FeatureFlagService.FeatureFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FeatureFlagService.FeatureFlag and conformance FeatureFlagService.FeatureFlag;
  if (!lazy protocol witness table cache variable for type FeatureFlagService.FeatureFlag and conformance FeatureFlagService.FeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeatureFlagService.FeatureFlag and conformance FeatureFlagService.FeatureFlag);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeatureFlagService.FeatureFlag(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDA)
  {
    v6 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
          *result = a2 + 37;
        }

        break;
    }
  }

  return result;
}

uint64_t *HallucinationMitigator.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_1_71(&one-time initialization token for shared);
  }

  return &static HallucinationMitigator.shared;
}

OmniSearch::ProposedDialog __swiftcall ProposedDialog.init(dialog:sourceDocuments:useCase:)(OmniSearch::ProposedDialog dialog, Swift::OpaquePointer sourceDocuments, OmniSearch::ProposedDialog::UseCase useCase)
{
  v3 = useCase & 1;
  dialog.sourceDocuments = sourceDocuments;
  dialog.useCase = v3;
  return dialog;
}

uint64_t static HallucinationMitigator.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_1_71(&one-time initialization token for shared);
  }
}

void _s10OmniSearch22HallucinationMitigatorC16postLLMCallCheck5query14inputDocuments6dialog6localeySS_SayAA0B6ResultVGAA14ProposedDialogVSSSgtAA0O13OverrideErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = objc_opt_self();
  v13 = MEMORY[0x25F89F4C0](a4, a5);
  v14 = [v12 scanString_];

  type metadata accessor for DDScannerResult();
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = specialized Array.count.getter();
  if (!v29)
  {

    return;
  }

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x25F89FFD0](v16, v15);
    }

    else
    {
      if (v16 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v18 = *(v15 + 8 * v16 + 32);
    }

    v19 = v18;
    v20 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    v21 = [v18 type];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v22 == 0xD000000000000011 && 0x800000025DBF87A0 == v24)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSaySo15DDScannerResultCG_Tt1g5(v17, MEMORY[0x277D84F90]))
    {

      v17 = HallucinationMitigator.scanInputDocuments(inputDocuments:locale:)(a3, a8, a9);
    }

    _s10OmniSearch22HallucinationMitigatorC26inputEntitiesContainFlight33_4877CDCBE248C517EE90FB47757CC8DELL0eF06entityySaySaySo15DDScannerResultCGG_AItAA19DialogOverrideErrorOYKF(v17, v19);
    if (v9)
    {

      return;
    }

LABEL_18:

    ++v16;
    if (v20 == v29)
    {

      return;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t HallucinationMitigator.scanInputDocuments(inputDocuments:locale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v28 = a3;
  v4 = type metadata accessor for SearchResult(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v32 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v32;
    v10 = objc_opt_self();
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      outlined init with copy of SearchResult(v11, v7);
      SearchResultItem.associatedValue.getter(v29);
      v13 = v30;
      v14 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v15 = (*(v14 + 56))(v27, v28, v13, v14);
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v18 = MEMORY[0x25F89F4C0](v15, v17);

      v19 = [v10 scanString_];

      type metadata accessor for DDScannerResult();
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      outlined destroy of SearchResult(v7);
      v32 = v9;
      v22 = *(v9 + 16);
      v21 = *(v9 + 24);
      if (v22 >= v21 >> 1)
      {
        v23 = OUTLINED_FUNCTION_2_60(v21);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23, v24, v25);
        v9 = v32;
      }

      *(v9 + 16) = v22 + 1;
      *(v9 + 8 * v22 + 32) = v20;
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return v9;
}

void _s10OmniSearch22HallucinationMitigatorC26inputEntitiesContainFlight33_4877CDCBE248C517EE90FB47757CC8DELL0eF06entityySaySaySo15DDScannerResultCGG_AItAA19DialogOverrideErrorOYKF(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [objc_allocWithZone(MEMORY[0x277CC5678]) initWithDDScannerResult_];
  if (!v4)
  {
    if (one-time initialization token for hallucination != -1)
    {
LABEL_66:
      OUTLINED_FUNCTION_0_78(&one-time initialization token for hallucination);
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logging.hallucination);
    v45 = v2;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138739971;
      *(v48 + 4) = v45;
      *v49 = v2;
      v50 = v45;
      _os_log_impl(&dword_25D85C000, v46, v47, "Cannot make flight from answer entity %{sensitive}@", v48, 0xCu);
      outlined destroy of NSObject?(v49);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    lazy protocol witness table accessor for type DialogOverrideError and conformance DialogOverrideError();
    swift_willThrowTypedImpl();
    return;
  }

  v77 = a1;
  v5 = *(a1 + 16);
  v79 = v5;
  if (!v5)
  {
LABEL_46:
    if (one-time initialization token for hallucination != -1)
    {
      OUTLINED_FUNCTION_0_78(&one-time initialization token for hallucination);
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logging.hallucination);
    v52 = v2;

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *v55 = 138740227;
      *(v55 + 4) = v52;
      *v56 = v2;
      *(v55 + 12) = 2085;
      if (v5)
      {
        v83 = v54;
        v84 = v53;
        v88 = MEMORY[0x277D84F90];
        v57 = v52;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
        v58 = v77 + 32;
        v59 = type metadata accessor for DDScannerResult();
        do
        {

          v61 = MEMORY[0x25F89F8A0](v60, v59);
          v63 = v62;

          v65 = *(v88 + 16);
          v64 = *(v88 + 24);
          if (v65 >= v64 >> 1)
          {
            v67 = OUTLINED_FUNCTION_2_60(v64);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v67, v68, v69);
          }

          *(v88 + 16) = v65 + 1;
          v66 = v88 + 16 * v65;
          *(v66 + 32) = v61;
          *(v66 + 40) = v63;
          v58 += 8;
          --v79;
        }

        while (v79);
        v53 = v84;
        v54 = v83;
      }

      else
      {
        v74 = v52;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      BidirectionalCollection<>.joined(separator:)();

      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v55 + 14) = v75;
      _os_log_impl(&dword_25D85C000, v53, v54, "No matches found for answer entity %{sensitive}@ from inputs:\n%{sensitive}s", v55, 0x16u);
      outlined destroy of NSObject?(v56);
      OUTLINED_FUNCTION_42_0();
      __swift_destroy_boxed_opaque_existential_1Tm(v87);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    lazy protocol witness table accessor for type DialogOverrideError and conformance DialogOverrideError();
    swift_willThrowTypedImpl();

    return;
  }

  v6 = 0;
  v7 = a1 + 32;
  v81 = v2;
  v76 = a1 + 32;
  while (1)
  {
    v8 = *(v7 + 8 * v6);
    if (!(v8 >> 62))
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        break;
      }

      goto LABEL_35;
    }

    v43 = v8 < 0 ? *(v7 + 8 * v6) : v8 & 0xFFFFFFFFFFFFFF8;
    v9 = MEMORY[0x25F8A01B0](v43);
    if (v9)
    {
      break;
    }

LABEL_35:
    if (++v6 == v5)
    {
      goto LABEL_46;
    }
  }

  v78 = v6;
  v86 = v8 & 0xC000000000000001;
  v80 = v8 & 0xFFFFFFFFFFFFFF8;

  v10 = 0;
  v85 = v8;
  while (1)
  {
    if (v86)
    {
      v11 = MEMORY[0x25F89FFD0](v10, v8);
    }

    else
    {
      if (v10 >= *(v80 + 16))
      {
        goto LABEL_65;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v14 = [v2 type];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v15 == 0xD000000000000011 && 0x800000025DBF87A0 == v17)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v20 = [objc_allocWithZone(MEMORY[0x277CC5678]) initWithDDScannerResult_];
    if (v20)
    {
      break;
    }

LABEL_33:

    ++v10;
    v8 = v85;
    if (v13 == v9)
    {

      v6 = v78;
      v5 = v79;
      v7 = v76;
      goto LABEL_35;
    }
  }

  v21 = v20;
  v82 = v12;
  v22 = [v20 flightNumber];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = v4;
  v27 = [v4 flightNumber];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  if (v23 == v28 && v25 == v30)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
LABEL_32:

      v4 = v26;
      v2 = v81;
      v12 = v82;
      goto LABEL_33;
    }
  }

  v33 = [v21 airline];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v37 = [v26 airline];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  if (v34 != v38 || v36 != v40)
  {
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v42)
    {
      goto LABEL_56;
    }

    goto LABEL_32;
  }

LABEL_56:

  if (one-time initialization token for hallucination != -1)
  {
    OUTLINED_FUNCTION_0_78(&one-time initialization token for hallucination);
  }

  v70 = type metadata accessor for Logger();
  __swift_project_value_buffer(v70, static Logging.hallucination);
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_25D85C000, v71, v72, "Output flight detail match with dialog", v73, 2u);
    OUTLINED_FUNCTION_42_0();
  }
}

uint64_t HallucinationMitigator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _s10OmniSearch22HallucinationMitigatorCAA0C18MitigationProtocolA2aDP15preLLMCallCheck5query9documentsySS_SayAA0B6ResultVGtAA19DialogOverrideErrorOYKFTW()
{
  v2 = (*(**v0 + 96))() & 1;
  if (v1)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

uint64_t _s10OmniSearch22HallucinationMitigatorCAA0C18MitigationProtocolA2aDP16postLLMCallCheck5query14inputDocuments6dialog6localeySS_SayAA0B6ResultVGAA14ProposedDialogVSSSgtAA0Q13OverrideErrorOYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v9 = (*(**v7 + 104))(a1, a2, a3, a4, a5, a6, a7 & 1) & 1;
  if (v8)
  {
    return v9;
  }

  else
  {
    return 1;
  }
}

BOOL static ProposedDialog.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  v10 = a1 == a5 && a2 == a6;
  if (v10 || (v11 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v11 & 1) != 0))
  {
    _sSasSQRzlE2eeoiySbSayxG_ABtFZ10OmniSearch0C6ResultV_Tt1g5();
    return (v13 & 1) != 0 && ((a8 ^ a4) & 1) == 0;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ProposedDialog.UseCase(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ProposedDialog.UseCase and conformance ProposedDialog.UseCase()
{
  result = lazy protocol witness table cache variable for type ProposedDialog.UseCase and conformance ProposedDialog.UseCase;
  if (!lazy protocol witness table cache variable for type ProposedDialog.UseCase and conformance ProposedDialog.UseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProposedDialog.UseCase and conformance ProposedDialog.UseCase);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProposedDialog(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for ProposedDialog(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ProposedDialog.UseCase(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_0_78(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_71(uint64_t a1)
{

  return swift_once();
}

uint64_t LatencyProfiler.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LatencyProfiler.init(_:)(a1, a2);
  return v4;
}

void *LatencyProfiler.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[2] = mach_absolute_time();
  v2[3] = a1;
  v2[4] = a2;
  v6 = one-time initialization token for search;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logging.search);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v10 = 136315138;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v10 + 4) = v11;
    _os_log_impl(&dword_25D85C000, v8, v9, "LP - started %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
  }

  return v3;
}

Swift::Void __swiftcall LatencyProfiler.finish()()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = mach_absolute_time();
  info = 0;
  mach_timebase_info(&info);
  v2 = *(v0 + 16);
  v3 = v1 >= v2;
  v4 = v1 - v2;
  if (!v3)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!is_mul_ok(v4, info.numer))
  {
    goto LABEL_15;
  }

  if (!info.denom)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = (v4 * info.numer / info.denom) / 1000000.0;
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v1 setNumberStyle_];
  if (v5 == INFINITY)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    goto LABEL_10;
  }

  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v7 = [v1 stringFromNumber_];

  if (!v7)
  {
    goto LABEL_14;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (one-time initialization token for search != -1)
  {
    goto LABEL_20;
  }

LABEL_10:
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logging.search);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v11 = 136315394;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v11 + 4) = v12;
    *(v11 + 12) = 2080;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v11 + 14) = v13;
    _os_log_impl(&dword_25D85C000, v9, v10, "LP - finished %s in %s ms", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
  }

LABEL_14:
}

uint64_t LatencyProfiler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *MobileGestalt.deviceClass.unsafeMutableAddressor()
{
  if (one-time initialization token for deviceClass != -1)
  {
    OUTLINED_FUNCTION_0_76(&one-time initialization token for deviceClass);
  }

  return &static MobileGestalt.deviceClass;
}

OmniSearch::MobileGestalt::DeviceClass_optional __swiftcall MobileGestalt.DeviceClass.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MobileGestalt.DeviceClass.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t MobileGestalt.DeviceClass.rawValue.getter(char a1)
{
  result = 0x454E4F4850;
  switch(a1)
  {
    case 1:
      result = 4473168;
      break;
    case 2:
      result = 0x4E414D4553524F48;
      break;
    case 3:
      result = 1398097242;
      break;
    case 4:
      result = 0x4F454D4143;
      break;
    case 5:
      result = 0x4843544157;
      break;
    case 6:
      result = 5390659;
      break;
    case 7:
      result = 0x544952414752414DLL;
      break;
    case 8:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

OmniSearch::MobileGestalt::DeviceClass_optional protocol witness for RawRepresentable.init(rawValue:) in conformance MobileGestalt.DeviceClass@<W0>(Swift::String *a1@<X0>, OmniSearch::MobileGestalt::DeviceClass_optional *a2@<X8>)
{
  result.value = MobileGestalt.DeviceClass.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MobileGestalt.DeviceClass@<X0>(uint64_t *a1@<X8>)
{
  result = MobileGestalt.DeviceClass.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void one-time initialization function for deviceClass()
{
  if (one-time initialization token for rawMGValueToDeviceClass != -1)
  {
    swift_once();
  }

  v0 = static MobileGestalt.rawMGValueToDeviceClass;
  if (one-time initialization token for currentMGDeviceClass != -1)
  {
    swift_once();
  }

  if (v0[2] && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(static MobileGestalt.currentMGDeviceClass), (v2 & 1) != 0))
  {
    v3 = *(v0[7] + v1);
  }

  else
  {
    v3 = 8;
  }

  static MobileGestalt.deviceClass = v3;
}

uint64_t static MobileGestalt.deviceClass.getter()
{
  if (one-time initialization token for deviceClass != -1)
  {
    OUTLINED_FUNCTION_0_76(&one-time initialization token for deviceClass);
  }

  return static MobileGestalt.deviceClass;
}

void one-time initialization function for currentMGDeviceClass()
{
  v0 = MEMORY[0x25F89F4C0](0xD000000000000011, 0x800000025DBF8830);
  v1 = MGGetSInt32Answer();

  static MobileGestalt.currentMGDeviceClass = v1;
}

void *one-time initialization function for rawMGValueToDeviceClass()
{
  result = Dictionary.init(dictionaryLiteral:)();
  static MobileGestalt.rawMGValueToDeviceClass = result;
  return result;
}

Swift::Int MobileGestalt.DevicePlatform.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MobileGestalt.DevicePlatform(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MobileGestalt.DevicePlatform.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t static MobileGestalt.devicePlatform(deviceClass:)(char a1)
{
  if ((a1 & 0xF8) != 0)
  {
    return 5;
  }

  else
  {
    return (0x405030102020000uLL >> (8 * a1));
  }
}

uint64_t static MobileGestalt.devicePlatform.getter()
{
  if (one-time initialization token for deviceClass != -1)
  {
    OUTLINED_FUNCTION_0_76(&one-time initialization token for deviceClass);
  }

  if (static MobileGestalt.deviceClass >= 8uLL)
  {
    return 5;
  }

  else
  {
    return (0x405030102020000uLL >> (8 * static MobileGestalt.deviceClass));
  }
}

double static MobileGestalt._deviceInfo(for:)@<D0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x25F89F4C0]();
  v3 = MGCopyAnswerWithError();

  if (v3)
  {
    *(a1 + 24) = swift_getObjectType();
    *a1 = v3;
  }

  else
  {
    if (one-time initialization token for utilities != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logging.utilities);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v8 = 136315394;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v8 + 12) = 2080;
      swift_beginAccess();
      dispatch thunk of CustomStringConvertible.description.getter();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v8 + 14) = v9;
      _os_log_impl(&dword_25D85C000, v6, v7, "MGCopyAnswerWithError error for key: %s -> %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8A1050](v10, -1, -1);
      MEMORY[0x25F8A1050](v8, -1, -1);
    }

    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t static MobileGestalt.buildVersion.getter()
{
  return static MobileGestalt.buildVersion.getter();
}

{
  static MobileGestalt._deviceInfo(for:)(v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }
  }

  else
  {
    outlined destroy of Any?(v2);
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type MobileGestalt.DeviceClass and conformance MobileGestalt.DeviceClass()
{
  result = lazy protocol witness table cache variable for type MobileGestalt.DeviceClass and conformance MobileGestalt.DeviceClass;
  if (!lazy protocol witness table cache variable for type MobileGestalt.DeviceClass and conformance MobileGestalt.DeviceClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MobileGestalt.DeviceClass and conformance MobileGestalt.DeviceClass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MobileGestalt.DevicePlatform and conformance MobileGestalt.DevicePlatform()
{
  result = lazy protocol witness table cache variable for type MobileGestalt.DevicePlatform and conformance MobileGestalt.DevicePlatform;
  if (!lazy protocol witness table cache variable for type MobileGestalt.DevicePlatform and conformance MobileGestalt.DevicePlatform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MobileGestalt.DevicePlatform and conformance MobileGestalt.DevicePlatform);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MobileGestalt.DeviceClass(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for MobileGestalt.DevicePlatform(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t baseDirectoryURLCreatingIfNeeded()@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v47 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for URL.DirectoryHint();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for URL();
  OUTLINED_FUNCTION_14();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  v41 = objc_opt_self();
  v19 = [v41 defaultManager];
  v20 = [v19 URLsForDirectory:5 inDomains:1];

  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Collection.first.getter(v21, v9);

  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    outlined destroy of URL?(v9);
  }

  else
  {
    (*(v12 + 32))(v18, v9, v10);
    OUTLINED_FUNCTION_3_56();
    v45 = v23;
    v46 = v22;
    v24 = *MEMORY[0x277CC91C0];
    v40 = v10;
    v25 = *(v3 + 104);
    v25(v6, v24, v1);
    lazy protocol witness table accessor for type String and conformance String();
    v43 = v18;
    URL.appending<A>(path:directoryHint:)();
    v42 = v12;
    v26 = *(v3 + 8);
    v26(v6, v1);
    v45 = 5065804;
    v46 = 0xE300000000000000;
    v25(v6, v24, v1);
    URL.appending<A>(path:directoryHint:)();
    v26(v6, v1);
    v27 = *(v42 + 8);
    v28 = v40;
    v27(v15);
    v29 = [v41 defaultManager];
    URL._bridgeToObjectiveC()(v30);
    v32 = v31;
    v45 = 0;
    LODWORD(v25) = [v29 createDirectoryAtURL:v31 withIntermediateDirectories:1 attributes:0 error:&v45];

    if (v25)
    {
      v33 = v45;
      return (v27)(v43, v28);
    }

    v35 = v45;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v45 = 0;
    v46 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    OUTLINED_FUNCTION_3_56();
    v45 = v37 + 28;
    v46 = v36;
    swift_getErrorValue();
    v38 = Error.localizedDescription.getter();
    MEMORY[0x25F89F6C0](v38);

    MEMORY[0x25F89F6C0](46, 0xE100000000000000);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::String __swiftcall baseDirectoryStringCreatingIfNeeded()()
{
  v0 = type metadata accessor for URL();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  baseDirectoryURLCreatingIfNeeded()(v5);
  v6 = URL.absoluteString.getter();
  v8 = v7;
  (*(v2 + 8))(v5, v0);
  v9 = v6;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t one-time initialization function for baseDirectory()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  baseDirectoryURLCreatingIfNeeded()(v3);
  v4 = URL.absoluteString.getter();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  static Paths.baseDirectory = v4;
  *algn_27FCAFD88 = v6;
  return result;
}

uint64_t *Paths.baseDirectory.unsafeMutableAddressor()
{
  if (one-time initialization token for baseDirectory != -1)
  {
    OUTLINED_FUNCTION_1_72(&one-time initialization token for baseDirectory);
  }

  return &static Paths.baseDirectory;
}

uint64_t static Paths.baseDirectory.getter()
{
  if (one-time initialization token for baseDirectory != -1)
  {
    OUTLINED_FUNCTION_1_72(&one-time initialization token for baseDirectory);
  }

  v0 = static Paths.baseDirectory;

  return v0;
}

uint64_t one-time initialization function for baseDirectoryURL()
{
  v0 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v0, static Paths.baseDirectoryURL);
  v1 = __swift_project_value_buffer(v0, static Paths.baseDirectoryURL);
  return baseDirectoryURLCreatingIfNeeded()(v1);
}

uint64_t Paths.baseDirectoryURL.unsafeMutableAddressor()
{
  if (one-time initialization token for baseDirectoryURL != -1)
  {
    OUTLINED_FUNCTION_2_61(&one-time initialization token for baseDirectoryURL);
  }

  v0 = type metadata accessor for URL();

  return __swift_project_value_buffer(v0, static Paths.baseDirectoryURL);
}

uint64_t static Paths.baseDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for baseDirectoryURL != -1)
  {
    OUTLINED_FUNCTION_2_61(&one-time initialization token for baseDirectoryURL);
  }

  v2 = type metadata accessor for URL();
  v3 = __swift_project_value_buffer(v2, static Paths.baseDirectoryURL);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t OUTLINED_FUNCTION_1_72(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_61(uint64_t a1)
{

  return swift_once();
}

uint64_t static NSUserDefaults.getDirectionsForLocationResolution.getter(uint64_t a1)
{
  if (one-time initialization token for _getDirectionsForLocationResolution != -1)
  {
    a1 = OUTLINED_FUNCTION_46_23(&one-time initialization token for _getDirectionsForLocationResolution);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_15_37();
  v1 = &static NSUserDefaults._getDirectionsForLocationResolution;
  OUTLINED_FUNCTION_5_48();
  v6 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5);

  return v6 & 1;
}

uint64_t static NSUserDefaults.needAnswerMatchWithLocationResolution.getter(uint64_t a1)
{
  if (one-time initialization token for _needAnswerMatchWithLocationResolution != -1)
  {
    a1 = OUTLINED_FUNCTION_45_19(&one-time initialization token for _needAnswerMatchWithLocationResolution);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_15_37();
  v1 = &static NSUserDefaults._needAnswerMatchWithLocationResolution;
  OUTLINED_FUNCTION_5_48();
  v6 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5);

  return v6 & 1;
}

uint64_t static NSUserDefaults.answerSynthesisTokenLimitOutput.getter(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisTokenLimitOutput != -1)
  {
    a1 = OUTLINED_FUNCTION_44_24(&one-time initialization token for _answerSynthesisTokenLimitOutput);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_64_15();
  v1 = &static NSUserDefaults._answerSynthesisTokenLimitOutput;
  v2 = OUTLINED_FUNCTION_3_57();
  v7 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5, v6);

  return v7;
}

uint64_t static NSUserDefaults.answerSynthesisPromptTemplateOverride.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for _answerSynthesisPromptTemplateOverride != -1)
  {
    a1 = OUTLINED_FUNCTION_39_23(&one-time initialization token for _answerSynthesisPromptTemplateOverride);
  }

  OUTLINED_FUNCTION_18_24(a1, a2, a3, a4, a5);
  *&v5 = OUTLINED_FUNCTION_2_62().n128_u64[0];
  OUTLINED_FUNCTION_17_37(v6, v7, v8, v9, v10, v11, v12, v13, v23, v25, v27, v29, v31, v33, v35, v37, v5);
  v14 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_12_39(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26, v28, v30, v32, v34, v36, v38);
  return OUTLINED_FUNCTION_100_4();
}

uint64_t static NSUserDefaults.answerSynthesisCDSchemaOverride.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for _answerSynthesisCDSchemaOverride != -1)
  {
    a1 = OUTLINED_FUNCTION_38_25(&one-time initialization token for _answerSynthesisCDSchemaOverride);
  }

  OUTLINED_FUNCTION_18_24(a1, a2, a3, a4, a5);
  *&v5 = OUTLINED_FUNCTION_2_62().n128_u64[0];
  OUTLINED_FUNCTION_17_37(v6, v7, v8, v9, v10, v11, v12, v13, v23, v25, v27, v29, v31, v33, v35, v37, v5);
  v14 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_12_39(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26, v28, v30, v32, v34, v36, v38);
  return OUTLINED_FUNCTION_100_4();
}

uint64_t static NSUserDefaults.pqaVerificationPromptTemplateOverride.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for _pqaVerificationPromptTemplateOverride != -1)
  {
    a1 = OUTLINED_FUNCTION_37_19(&one-time initialization token for _pqaVerificationPromptTemplateOverride);
  }

  OUTLINED_FUNCTION_18_24(a1, a2, a3, a4, a5);
  *&v5 = OUTLINED_FUNCTION_2_62().n128_u64[0];
  OUTLINED_FUNCTION_17_37(v6, v7, v8, v9, v10, v11, v12, v13, v23, v25, v27, v29, v31, v33, v35, v37, v5);
  v14 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_12_39(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26, v28, v30, v32, v34, v36, v38);
  return OUTLINED_FUNCTION_100_4();
}

uint64_t static NSUserDefaults.answerSynthesisModelType.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for _answerSynthesisModelType != -1)
  {
    a1 = OUTLINED_FUNCTION_36_23(&one-time initialization token for _answerSynthesisModelType);
  }

  OUTLINED_FUNCTION_18_24(a1, a2, a3, a4, a5);
  *&v5 = OUTLINED_FUNCTION_2_62().n128_u64[0];
  OUTLINED_FUNCTION_17_37(v6, v7, v8, v9, v10, v11, v12, v13, v23, v25, v27, v29, v31, v33, v35, v37, v5);
  v14 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_12_39(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26, v28, v30, v32, v34, v36, v38);
  return OUTLINED_FUNCTION_100_4();
}

uint64_t static NSUserDefaults.answerSynthesisTokenLimitDevice.getter(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisTokenLimitDevice != -1)
  {
    a1 = OUTLINED_FUNCTION_35_26(&one-time initialization token for _answerSynthesisTokenLimitDevice);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_64_15();
  v1 = &static NSUserDefaults._answerSynthesisTokenLimitDevice;
  v2 = OUTLINED_FUNCTION_3_57();
  v7 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5, v6);

  return v7;
}

uint64_t static NSUserDefaults.answerSynthesisTokenLimitServer.getter(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisTokenLimitServer != -1)
  {
    a1 = OUTLINED_FUNCTION_34_29(&one-time initialization token for _answerSynthesisTokenLimitServer);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_64_15();
  v1 = &static NSUserDefaults._answerSynthesisTokenLimitServer;
  v2 = OUTLINED_FUNCTION_3_57();
  v7 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5, v6);

  return v7;
}

uint64_t static NSUserDefaults.answerSynthesisSearchResultsPerRequest.getter(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisSearchResultsPerRequest != -1)
  {
    a1 = OUTLINED_FUNCTION_32_30(&one-time initialization token for _answerSynthesisSearchResultsPerRequest);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_64_15();
  v1 = &static NSUserDefaults._answerSynthesisSearchResultsPerRequest;
  v2 = OUTLINED_FUNCTION_3_57();
  v7 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5, v6);

  return v7;
}

uint64_t static NSUserDefaults.answerSynthesisLimit.getter(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisLimit != -1)
  {
    a1 = OUTLINED_FUNCTION_31_25(&one-time initialization token for _answerSynthesisLimit);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_64_15();
  v1 = &static NSUserDefaults._answerSynthesisLimit;
  v2 = OUTLINED_FUNCTION_3_57();
  v7 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5, v6);

  return v7;
}

uint64_t static NSUserDefaults.answerSynthesisResponseOverride.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for _answerSynthesisResponseOverride != -1)
  {
    a1 = OUTLINED_FUNCTION_30_25(&one-time initialization token for _answerSynthesisResponseOverride);
  }

  OUTLINED_FUNCTION_18_24(a1, a2, a3, a4, a5);
  *&v5 = OUTLINED_FUNCTION_2_62().n128_u64[0];
  OUTLINED_FUNCTION_17_37(v6, v7, v8, v9, v10, v11, v12, v13, v23, v25, v27, v29, v31, v33, v35, v37, v5);
  v14 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_12_39(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26, v28, v30, v32, v34, v36, v38);
  return OUTLINED_FUNCTION_100_4();
}

uint64_t static NSUserDefaults.fallbackLocale.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for _fallbackLocale != -1)
  {
    a1 = OUTLINED_FUNCTION_29_20(&one-time initialization token for _fallbackLocale);
  }

  OUTLINED_FUNCTION_18_24(a1, a2, a3, a4, a5);
  *&v5 = OUTLINED_FUNCTION_2_62().n128_u64[0];
  OUTLINED_FUNCTION_17_37(v6, v7, v8, v9, v10, v11, v12, v13, v23, v25, v27, v29, v31, v33, v35, v37, v5);
  v14 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_12_39(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26, v28, v30, v32, v34, v36, v38);
  return OUTLINED_FUNCTION_100_4();
}

uint64_t static NSUserDefaults.currentTime.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for _currentTime != -1)
  {
    a1 = OUTLINED_FUNCTION_28_26(&one-time initialization token for _currentTime);
  }

  OUTLINED_FUNCTION_18_24(a1, a2, a3, a4, a5);
  *&v5 = OUTLINED_FUNCTION_2_62().n128_u64[0];
  OUTLINED_FUNCTION_17_37(v6, v7, v8, v9, v10, v11, v12, v13, v23, v25, v27, v29, v31, v33, v35, v37, v5);
  v14 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_62_17(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26, v28, v30, v32, v34, v36, v38);
  return v14;
}

uint64_t static NSUserDefaults.answerSynthesisRequestedPropertiesPerRequest.getter(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisRequestedPropertiesPerRequest != -1)
  {
    a1 = OUTLINED_FUNCTION_27_24(&one-time initialization token for _answerSynthesisRequestedPropertiesPerRequest);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_64_15();
  v1 = &static NSUserDefaults._answerSynthesisRequestedPropertiesPerRequest;
  v2 = OUTLINED_FUNCTION_3_57();
  v7 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5, v6);

  return v7;
}

uint64_t static NSUserDefaults.answerSynthesisTokenLimitNonUserPrompt.getter(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisTokenLimitNonUserPrompt != -1)
  {
    a1 = OUTLINED_FUNCTION_25_27(&one-time initialization token for _answerSynthesisTokenLimitNonUserPrompt);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_64_15();
  v1 = &static NSUserDefaults._answerSynthesisTokenLimitNonUserPrompt;
  v2 = OUTLINED_FUNCTION_3_57();
  v7 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5, v6);

  return v7;
}

float static NSUserDefaults.answerSynthesisTokenCharMultiplier.getter(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisTokenCharMultiplier != -1)
  {
    a1 = OUTLINED_FUNCTION_6_39(&one-time initialization token for _answerSynthesisTokenCharMultiplier);
  }

  OUTLINED_FUNCTION_10_18(a1);
  v1 = qword_27FC71018;
  v2 = unk_27FC71020;
  v3 = qword_27FC71028;

  v4 = v3;
  specialized UserDefault.wrappedValue.getter(v1, v2, v4);
  v6 = v5;

  return v6;
}

uint64_t static NSUserDefaults.emailContentPreprocessing.getter(uint64_t a1)
{
  if (one-time initialization token for _emailContentPreprocessing != -1)
  {
    a1 = OUTLINED_FUNCTION_24_27(&one-time initialization token for _emailContentPreprocessing);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_15_37();
  v1 = &static NSUserDefaults._emailContentPreprocessing;
  OUTLINED_FUNCTION_5_48();
  v6 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5);

  return v6 & 1;
}

uint64_t static NSUserDefaults.allowNoAnswerFallbackToPCS.getter(uint64_t a1)
{
  if (one-time initialization token for _allowNoAnswerFallbackToPCS != -1)
  {
    a1 = OUTLINED_FUNCTION_23_26(&one-time initialization token for _allowNoAnswerFallbackToPCS);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_15_37();
  v1 = &static NSUserDefaults._allowNoAnswerFallbackToPCS;
  OUTLINED_FUNCTION_5_48();
  v6 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5);

  return v6 & 1;
}

uint64_t static NSUserDefaults.smartChunkingPreprocessing.getter(uint64_t a1)
{
  if (one-time initialization token for _smartChunkingPreprocessing != -1)
  {
    a1 = OUTLINED_FUNCTION_22_27(&one-time initialization token for _smartChunkingPreprocessing);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_15_37();
  v1 = &static NSUserDefaults._smartChunkingPreprocessing;
  OUTLINED_FUNCTION_5_48();
  v6 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5);

  return v6 & 1;
}

uint64_t static NSUserDefaults.smartChunksPerDocument.getter(uint64_t a1)
{
  if (one-time initialization token for _smartChunksPerDocument != -1)
  {
    a1 = OUTLINED_FUNCTION_21_31(&one-time initialization token for _smartChunksPerDocument);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_64_15();
  v1 = &static NSUserDefaults._smartChunksPerDocument;
  v2 = OUTLINED_FUNCTION_3_57();
  v7 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5, v6);

  return v7;
}

uint64_t static NSUserDefaults.smartChunkingOverlap.getter(uint64_t a1)
{
  if (one-time initialization token for _smartChunkingOverlap != -1)
  {
    a1 = OUTLINED_FUNCTION_20_26(&one-time initialization token for _smartChunkingOverlap);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_64_15();
  v1 = &static NSUserDefaults._smartChunkingOverlap;
  v2 = OUTLINED_FUNCTION_3_57();
  v7 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5, v6);

  return v7;
}

uint64_t static NSUserDefaults.forceContentHydration.getter(uint64_t a1)
{
  if (one-time initialization token for _forceContentHydration != -1)
  {
    a1 = OUTLINED_FUNCTION_19_37(&one-time initialization token for _forceContentHydration);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_15_37();
  v1 = &static NSUserDefaults._forceContentHydration;
  OUTLINED_FUNCTION_5_48();
  v6 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5);

  return v6 & 1;
}

uint64_t static NSUserDefaults.featureStoreLogging.getter(uint64_t a1)
{
  if (one-time initialization token for _featureStoreLogging != -1)
  {
    a1 = OUTLINED_FUNCTION_58_13(&one-time initialization token for _featureStoreLogging);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_15_37();
  v1 = &static NSUserDefaults._featureStoreLogging;
  OUTLINED_FUNCTION_5_48();
  v6 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5);

  return v6 & 1;
}

uint64_t static NSUserDefaults.enablePhotosInAppSearch.getter(uint64_t a1)
{
  if (one-time initialization token for _enablePhotosInAppSearch != -1)
  {
    a1 = OUTLINED_FUNCTION_57_17(&one-time initialization token for _enablePhotosInAppSearch);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_15_37();
  v1 = &static NSUserDefaults._enablePhotosInAppSearch;
  OUTLINED_FUNCTION_5_48();
  v6 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5);

  return v6 & 1;
}

uint64_t static NSUserDefaults.triggersDisambiguation.getter(uint64_t a1)
{
  if (one-time initialization token for _triggersDisambiguation != -1)
  {
    a1 = OUTLINED_FUNCTION_56_15(&one-time initialization token for _triggersDisambiguation);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_15_37();
  v1 = &static NSUserDefaults._triggersDisambiguation;
  OUTLINED_FUNCTION_5_48();
  v6 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5);

  return v6 & 1;
}

uint64_t static NSUserDefaults.searchCATContextOverride.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for _searchCATContextOverride != -1)
  {
    a1 = OUTLINED_FUNCTION_55_16(&one-time initialization token for _searchCATContextOverride);
  }

  OUTLINED_FUNCTION_18_24(a1, a2, a3, a4, a5);
  *&v5 = OUTLINED_FUNCTION_2_62().n128_u64[0];
  OUTLINED_FUNCTION_17_37(v6, v7, v8, v9, v10, v11, v12, v13, v23, v25, v27, v29, v31, v33, v35, v37, v5);
  v14 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_12_39(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26, v28, v30, v32, v34, v36, v38);
  return OUTLINED_FUNCTION_100_4();
}

uint64_t static NSUserDefaults.llmPromptLineBreak.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for _llmPromptLineBreak != -1)
  {
    a1 = OUTLINED_FUNCTION_54_24(&one-time initialization token for _llmPromptLineBreak);
  }

  OUTLINED_FUNCTION_18_24(a1, a2, a3, a4, a5);
  *&v5 = OUTLINED_FUNCTION_2_62().n128_u64[0];
  OUTLINED_FUNCTION_17_37(v6, v7, v8, v9, v10, v11, v12, v13, v23, v25, v27, v29, v31, v33, v35, v37, v5);
  v14 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_12_39(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26, v28, v30, v32, v34, v36, v38);
  return OUTLINED_FUNCTION_100_4();
}

uint64_t static NSUserDefaults.sendInstantAnswerDocToAS.getter(uint64_t a1)
{
  if (one-time initialization token for _sendInstantAnswerDocToAS != -1)
  {
    a1 = OUTLINED_FUNCTION_53_18(&one-time initialization token for _sendInstantAnswerDocToAS);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_15_37();
  v1 = &static NSUserDefaults._sendInstantAnswerDocToAS;
  OUTLINED_FUNCTION_5_48();
  v6 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5);

  return v6 & 1;
}

uint64_t static NSUserDefaults.msgCntBeforeTarget.getter(uint64_t a1)
{
  if (one-time initialization token for _msgCntBeforeTarget != -1)
  {
    a1 = OUTLINED_FUNCTION_52_21(&one-time initialization token for _msgCntBeforeTarget);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_64_15();
  v1 = &static NSUserDefaults._msgCntBeforeTarget;
  v2 = OUTLINED_FUNCTION_3_57();
  v7 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5, v6);

  return v7;
}

uint64_t static NSUserDefaults.msgCntAfterTarget.getter(uint64_t a1)
{
  if (one-time initialization token for _msgCntAfterTarget != -1)
  {
    a1 = OUTLINED_FUNCTION_51_18(&one-time initialization token for _msgCntAfterTarget);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_64_15();
  v1 = &static NSUserDefaults._msgCntAfterTarget;
  v2 = OUTLINED_FUNCTION_3_57();
  v7 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5, v6);

  return v7;
}

uint64_t static NSUserDefaults.llmQUPromptTemplateOverride.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for _llmQUPromptTemplateOverride != -1)
  {
    a1 = OUTLINED_FUNCTION_50_16(&one-time initialization token for _llmQUPromptTemplateOverride);
  }

  OUTLINED_FUNCTION_18_24(a1, a2, a3, a4, a5);
  *&v5 = OUTLINED_FUNCTION_2_62().n128_u64[0];
  OUTLINED_FUNCTION_17_37(v6, v7, v8, v9, v10, v11, v12, v13, v23, v25, v27, v29, v31, v33, v35, v37, v5);
  v14 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_12_39(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26, v28, v30, v32, v34, v36, v38);
  return OUTLINED_FUNCTION_100_4();
}

uint64_t static NSUserDefaults.llmQUBNFGrammarOverride.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for _llmQUBNFGrammarOverride != -1)
  {
    a1 = OUTLINED_FUNCTION_49_21(&one-time initialization token for _llmQUBNFGrammarOverride);
  }

  OUTLINED_FUNCTION_18_24(a1, a2, a3, a4, a5);
  *&v5 = OUTLINED_FUNCTION_2_62().n128_u64[0];
  OUTLINED_FUNCTION_17_37(v6, v7, v8, v9, v10, v11, v12, v13, v23, v25, v27, v29, v31, v33, v35, v37, v5);
  v14 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_12_39(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26, v28, v30, v32, v34, v36, v38);
  return OUTLINED_FUNCTION_100_4();
}

uint64_t static NSUserDefaults.logForEval.getter(uint64_t a1)
{
  if (one-time initialization token for _logForEval != -1)
  {
    a1 = OUTLINED_FUNCTION_48_15(&one-time initialization token for _logForEval);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_15_37();
  v1 = &static NSUserDefaults._logForEval;
  OUTLINED_FUNCTION_5_48();
  v6 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5);

  return v6 & 1;
}

uint64_t static NSUserDefaults.spotlightQueryBundleIDs.getter(uint64_t a1)
{
  if (one-time initialization token for _spotlightQueryBundleIDs != -1)
  {
    a1 = OUTLINED_FUNCTION_8_44(&one-time initialization token for _spotlightQueryBundleIDs);
  }

  OUTLINED_FUNCTION_10_18(a1);
  v1 = unk_27FC71368;

  v2 = v1;
  v3 = OUTLINED_FUNCTION_3_57();
  v7 = specialized UserDefault.wrappedValue.getter(v3, v4, v5, v6);

  return v7;
}

uint64_t specialized UserDefault.wrappedValue.getter()
{
  v1 = v0[4];
  v2 = MEMORY[0x25F89F4C0](v0[2], v0[3]);
  v3 = [v1 objectForKey_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v6, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if (swift_dynamicCast())
  {
    return v6;
  }

  v4 = *v0;

  return v4;
}

{
  v1 = v0[4];
  v2 = MEMORY[0x25F89F4C0](v0[2], v0[3]);
  v3 = [v1 objectForKey_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v6, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  if (swift_dynamicCast())
  {
    return v6;
  }

  v4 = *v0;

  return v4;
}

{
  v1 = v0[4];
  v2 = MEMORY[0x25F89F4C0](v0[2], v0[3]);
  v3 = [v1 objectForKey_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v5, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  if (swift_dynamicCast())
  {
    v0 = v5;
  }

  return *v0;
}

uint64_t specialized UserDefault.wrappedValue.getter(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x25F89F4C0](a2, a3);
  v7 = [a4 objectForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v11, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v8 = swift_dynamicCast();
  v9 = v11;
  if (!v8)
  {
    v9 = a1;
  }

  return v9 & 1;
}

uint64_t specialized UserDefault.wrappedValue.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0](a1, a2);
  v5 = [a3 objectForKey_];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v7, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  return swift_dynamicCast();
}

uint64_t specialized UserDefault.wrappedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = MEMORY[0x25F89F4C0](a2, a3);
  v8 = [a4 objectForKey_];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v10, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return a1;
  }
}

uint64_t specialized UserDefault.wrappedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x25F89F4C0](a2, a3);
  v7 = [a4 objectForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v9, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if (swift_dynamicCast())
  {
    return v9;
  }

  return a1;
}

void specialized UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2[4];
  v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v5 = MEMORY[0x25F89F4C0](v2[2], v2[3]);
  [v3 setObject:v4 forKey:{v5, a1, a2}];
  swift_unknownObjectRelease();
}

{
  v3 = v2[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v5 = MEMORY[0x25F89F4C0](v2[2], v2[3]);
  [v3 setObject:v4 forKey:{v5, a1, a2}];
  swift_unknownObjectRelease();
}

{
  v3 = v2[3];
  v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v5 = MEMORY[0x25F89F4C0](v2[1], v2[2]);
  [v3 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();
}

void specialized UserDefault.wrappedValue.setter(float a1)
{
  v2 = v1[3];
  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v4 = MEMORY[0x25F89F4C0](v1[1], v1[2]);
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

void specialized UserDefault.wrappedValue.setter(char a1)
{
  v2 = v1[3];
  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v4 = MEMORY[0x25F89F4C0](v1[1], v1[2]);
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

void specialized UserDefault.wrappedValue.setter(uint64_t a1, char a2)
{
  v3 = v2[4];
  LOBYTE(v7) = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v5 = MEMORY[0x25F89F4C0](v2[2], v2[3]);
  [v3 setObject:v4 forKey:{v5, a1, v7}];
  swift_unknownObjectRelease();
}

void specialized UserDefault.wrappedValue.setter(uint64_t a1)
{
  v2 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v4 = MEMORY[0x25F89F4C0](v1[1], v1[2]);
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.answerSynthesisLimit.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _answerSynthesisLimit != -1)
  {
    OUTLINED_FUNCTION_31_25(&one-time initialization token for _answerSynthesisLimit);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3, MEMORY[0x277D83B88]);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.answerSynthesisLimit.modify;
}

double one-time initialization function for _answerSynthesisLimit()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  *&result = 5;
  static NSUserDefaults._answerSynthesisLimit = xmmword_25DBE5700;
  qword_28155B9D0 = 0x800000025DBF8C70;
  unk_28155B9D8 = v0;
  return result;
}

id static NSUserDefaults.$answerSynthesisLimit.getter(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisLimit != -1)
  {
    a1 = OUTLINED_FUNCTION_31_25(&one-time initialization token for _answerSynthesisLimit);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_7_47();

  return v2;
}

uint64_t static NSUserDefaults.answerSynthesisLimit.setter(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = OUTLINED_FUNCTION_59_16();
  OUTLINED_FUNCTION_147_2(v7, v8);
  specialized UserDefault.wrappedValue.setter(a1, a4);
  return swift_endAccess();
}

uint64_t (*static NSUserDefaults.answerSynthesisRequestedPropertiesPerRequest.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _answerSynthesisRequestedPropertiesPerRequest != -1)
  {
    OUTLINED_FUNCTION_27_24(&one-time initialization token for _answerSynthesisRequestedPropertiesPerRequest);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3, MEMORY[0x277D83B88]);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.answerSynthesisRequestedPropertiesPerRequest.modify;
}

uint64_t static NSUserDefaults.answerSynthesisLimit.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized UserDefault.wrappedValue.setter(*(a1 + 24), a4);

  return swift_endAccess();
}

double one-time initialization function for _answerSynthesisRequestedPropertiesPerRequest()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  *&result = 5;
  static NSUserDefaults._answerSynthesisRequestedPropertiesPerRequest = xmmword_25DBE5710;
  qword_27FC70FA0 = 0x800000025DBF8C20;
  unk_27FC70FA8 = v0;
  return result;
}

id static NSUserDefaults.$answerSynthesisRequestedPropertiesPerRequest.getter(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisRequestedPropertiesPerRequest != -1)
  {
    a1 = OUTLINED_FUNCTION_27_24(&one-time initialization token for _answerSynthesisRequestedPropertiesPerRequest);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_7_47();

  return v2;
}

uint64_t (*static NSUserDefaults.answerSynthesisSearchResultsPerRequest.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _answerSynthesisSearchResultsPerRequest != -1)
  {
    OUTLINED_FUNCTION_32_30(&one-time initialization token for _answerSynthesisSearchResultsPerRequest);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3, MEMORY[0x277D83B88]);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.answerSynthesisSearchResultsPerRequest.modify;
}

double one-time initialization function for _answerSynthesisSearchResultsPerRequest()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  *&result = 5;
  static NSUserDefaults._answerSynthesisSearchResultsPerRequest = xmmword_25DBE5720;
  qword_27FC70FC0 = 0x800000025DBF8C90;
  unk_27FC70FC8 = v0;
  return result;
}

id static NSUserDefaults.$answerSynthesisSearchResultsPerRequest.getter(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisSearchResultsPerRequest != -1)
  {
    a1 = OUTLINED_FUNCTION_32_30(&one-time initialization token for _answerSynthesisSearchResultsPerRequest);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_7_47();

  return v2;
}

uint64_t key path setter for static NSUserDefaults.answerSynthesisModelType : NSUserDefaults.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return static NSUserDefaults.answerSynthesisModelType.setter(v1, v2, v3, v4, v5);
}

uint64_t static NSUserDefaults.answerSynthesisModelType.modify()
{
  v1 = OUTLINED_FUNCTION_50_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_69_16(v2);
  if (one-time initialization token for _answerSynthesisModelType != -1)
  {
    OUTLINED_FUNCTION_36_23(&one-time initialization token for _answerSynthesisModelType);
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  *(v0 + 64) = specialized UserDefault.wrappedValue.getter();
  *(v0 + 72) = v3;
  return OUTLINED_FUNCTION_66_2();
}

void *one-time initialization function for _answerSynthesisModelType()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._answerSynthesisModelType = 0x726576726573;
  unk_28155B990 = 0xE600000000000000;
  qword_28155B998 = 0xD000000000000018;
  unk_28155B9A0 = 0x800000025DBF8D00;
  qword_28155B9A8 = result;
  return result;
}

id static NSUserDefaults.$answerSynthesisModelType.getter(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisModelType != -1)
  {
    a1 = OUTLINED_FUNCTION_36_23(&one-time initialization token for _answerSynthesisModelType);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_63_19();

  return v2;
}

uint64_t (*static NSUserDefaults.answerSynthesisTokenLimitDevice.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _answerSynthesisTokenLimitDevice != -1)
  {
    OUTLINED_FUNCTION_35_26(&one-time initialization token for _answerSynthesisTokenLimitDevice);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3, MEMORY[0x277D83B88]);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.answerSynthesisTokenLimitDevice.modify;
}

double one-time initialization function for _answerSynthesisTokenLimitDevice()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  *&result = 2048;
  static NSUserDefaults._answerSynthesisTokenLimitDevice = xmmword_25DBE5730;
  qword_27FC70FE0 = 0x800000025DBF8CE0;
  unk_27FC70FE8 = v0;
  return result;
}

id static NSUserDefaults.$answerSynthesisTokenLimitDevice.getter(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisTokenLimitDevice != -1)
  {
    a1 = OUTLINED_FUNCTION_35_26(&one-time initialization token for _answerSynthesisTokenLimitDevice);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_7_47();

  return v2;
}

uint64_t (*static NSUserDefaults.answerSynthesisTokenLimitServer.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _answerSynthesisTokenLimitServer != -1)
  {
    OUTLINED_FUNCTION_34_29(&one-time initialization token for _answerSynthesisTokenLimitServer);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3, MEMORY[0x277D83B88]);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.answerSynthesisTokenLimitServer.modify;
}

double one-time initialization function for _answerSynthesisTokenLimitServer()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  *&result = 4096;
  static NSUserDefaults._answerSynthesisTokenLimitServer = xmmword_25DBE5740;
  qword_28155B968 = 0x800000025DBF8CC0;
  unk_28155B970 = v0;
  return result;
}

id static NSUserDefaults.$answerSynthesisTokenLimitServer.getter(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisTokenLimitServer != -1)
  {
    a1 = OUTLINED_FUNCTION_34_29(&one-time initialization token for _answerSynthesisTokenLimitServer);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_7_47();

  return v2;
}

uint64_t (*static NSUserDefaults.answerSynthesisTokenLimitNonUserPrompt.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _answerSynthesisTokenLimitNonUserPrompt != -1)
  {
    OUTLINED_FUNCTION_25_27(&one-time initialization token for _answerSynthesisTokenLimitNonUserPrompt);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3, MEMORY[0x277D83B88]);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.answerSynthesisTokenLimitNonUserPrompt.modify;
}

double one-time initialization function for _answerSynthesisTokenLimitNonUserPrompt()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  *&result = 300;
  static NSUserDefaults._answerSynthesisTokenLimitNonUserPrompt = xmmword_25DBE5750;
  qword_27FC71000 = 0x800000025DBF8BF0;
  unk_27FC71008 = v0;
  return result;
}

id static NSUserDefaults.$answerSynthesisTokenLimitNonUserPrompt.getter(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisTokenLimitNonUserPrompt != -1)
  {
    a1 = OUTLINED_FUNCTION_25_27(&one-time initialization token for _answerSynthesisTokenLimitNonUserPrompt);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_7_47();

  return v2;
}

uint64_t static NSUserDefaults.answerSynthesisTokenCharMultiplier.setter(float a1)
{
  if (one-time initialization token for _answerSynthesisTokenCharMultiplier != -1)
  {
    OUTLINED_FUNCTION_6_39(&one-time initialization token for _answerSynthesisTokenCharMultiplier);
  }

  v2 = OUTLINED_FUNCTION_59_16();
  OUTLINED_FUNCTION_147_2(v2, v3);
  specialized UserDefault.wrappedValue.setter(a1);
  return swift_endAccess();
}

uint64_t (*static NSUserDefaults.answerSynthesisTokenCharMultiplier.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisTokenCharMultiplier != -1)
  {
    OUTLINED_FUNCTION_6_39(&one-time initialization token for _answerSynthesisTokenCharMultiplier);
  }

  OUTLINED_FUNCTION_48_1();
  specialized UserDefault.wrappedValue.getter(qword_27FC71018, unk_27FC71020, qword_27FC71028);
  *(a1 + 24) = v2;
  return static NSUserDefaults.answerSynthesisTokenCharMultiplier.modify;
}

uint64_t static NSUserDefaults.answerSynthesisTokenCharMultiplier.modify(uint64_t a1)
{
  specialized UserDefault.wrappedValue.setter(*(a1 + 24));

  return swift_endAccess();
}

void *one-time initialization function for _answerSynthesisTokenCharMultiplier()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._answerSynthesisTokenCharMultiplier = 1075838976;
  qword_27FC71018 = 0xD000000000000022;
  unk_27FC71020 = 0x800000025DBF8BC0;
  qword_27FC71028 = result;
  return result;
}

id static NSUserDefaults.$answerSynthesisTokenCharMultiplier.getter@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if (one-time initialization token for _answerSynthesisTokenCharMultiplier != -1)
  {
    a2 = OUTLINED_FUNCTION_6_39(&one-time initialization token for _answerSynthesisTokenCharMultiplier);
  }

  OUTLINED_FUNCTION_10_39(a2);
  v4 = qword_27FC71018;
  v3 = unk_27FC71020;
  v7 = qword_27FC71028;
  v5 = qword_27FC71028;
  *a1 = static NSUserDefaults._answerSynthesisTokenCharMultiplier;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;

  return v7;
}

uint64_t (*static NSUserDefaults.answerSynthesisTokenLimitOutput.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _answerSynthesisTokenLimitOutput != -1)
  {
    OUTLINED_FUNCTION_44_24(&one-time initialization token for _answerSynthesisTokenLimitOutput);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3, MEMORY[0x277D83B88]);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.answerSynthesisTokenLimitOutput.modify;
}

double one-time initialization function for _answerSynthesisTokenLimitOutput()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  *&result = 256;
  static NSUserDefaults._answerSynthesisTokenLimitOutput = xmmword_25DBE5760;
  qword_27FC71040 = 0x800000025DBF8DA0;
  unk_27FC71048 = v0;
  return result;
}

id static NSUserDefaults.$answerSynthesisTokenLimitOutput.getter(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisTokenLimitOutput != -1)
  {
    a1 = OUTLINED_FUNCTION_44_24(&one-time initialization token for _answerSynthesisTokenLimitOutput);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_7_47();

  return v2;
}

uint64_t static NSUserDefaults.answerSynthesisPromptTemplateOverride.modify()
{
  v1 = OUTLINED_FUNCTION_50_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_69_16(v2);
  if (one-time initialization token for _answerSynthesisPromptTemplateOverride != -1)
  {
    OUTLINED_FUNCTION_39_23(&one-time initialization token for _answerSynthesisPromptTemplateOverride);
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  *(v0 + 64) = specialized UserDefault.wrappedValue.getter();
  *(v0 + 72) = v3;
  return OUTLINED_FUNCTION_66_2();
}

void *one-time initialization function for _answerSynthesisPromptTemplateOverride()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._answerSynthesisPromptTemplateOverride = 0;
  *algn_27FC71058 = 0;
  qword_27FC71060 = 0xD000000000000025;
  unk_27FC71068 = 0x800000025DBF8D70;
  qword_27FC71070 = result;
  return result;
}

id static NSUserDefaults.$answerSynthesisPromptTemplateOverride.getter(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisPromptTemplateOverride != -1)
  {
    a1 = OUTLINED_FUNCTION_39_23(&one-time initialization token for _answerSynthesisPromptTemplateOverride);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_4_52();

  return v2;
}

uint64_t static NSUserDefaults.answerSynthesisMultiAnswersSupport.getter(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisMultiAnswersSupport != -1)
  {
    a1 = OUTLINED_FUNCTION_47_18(&one-time initialization token for _answerSynthesisMultiAnswersSupport);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_15_37();
  v1 = &static NSUserDefaults._answerSynthesisMultiAnswersSupport;
  OUTLINED_FUNCTION_5_48();
  v6 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5);

  return v6 & 1;
}

uint64_t (*static NSUserDefaults.answerSynthesisMultiAnswersSupport.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _answerSynthesisMultiAnswersSupport != -1)
  {
    OUTLINED_FUNCTION_47_18(&one-time initialization token for _answerSynthesisMultiAnswersSupport);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.answerSynthesisMultiAnswersSupport.modify;
}

void *one-time initialization function for _answerSynthesisMultiAnswersSupport()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._answerSynthesisMultiAnswersSupport = 0;
  qword_27FC71080 = 0xD000000000000022;
  unk_27FC71088 = 0x800000025DBF8970;
  qword_27FC71090 = result;
  return result;
}

id static NSUserDefaults.$answerSynthesisMultiAnswersSupport.getter(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisMultiAnswersSupport != -1)
  {
    a1 = OUTLINED_FUNCTION_47_18(&one-time initialization token for _answerSynthesisMultiAnswersSupport);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_0_79();

  return v2;
}

uint64_t static NSUserDefaults.disambiguationLimit.getter(uint64_t a1)
{
  if (one-time initialization token for _disambiguationLimit != -1)
  {
    a1 = OUTLINED_FUNCTION_43_15(&one-time initialization token for _disambiguationLimit);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_64_15();
  v1 = &static NSUserDefaults._disambiguationLimit;
  v2 = OUTLINED_FUNCTION_3_57();
  v7 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5, v6);

  return v7;
}

uint64_t (*static NSUserDefaults.disambiguationLimit.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _disambiguationLimit != -1)
  {
    OUTLINED_FUNCTION_43_15(&one-time initialization token for _disambiguationLimit);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3, MEMORY[0x277D83B88]);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.disambiguationLimit.modify;
}

double one-time initialization function for _disambiguationLimit()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  *&result = 5;
  static NSUserDefaults._disambiguationLimit = xmmword_25DBE5770;
  qword_27FC710A8 = 0x800000025DBF8950;
  unk_27FC710B0 = v0;
  return result;
}

id static NSUserDefaults.$disambiguationLimit.getter(uint64_t a1)
{
  if (one-time initialization token for _disambiguationLimit != -1)
  {
    a1 = OUTLINED_FUNCTION_43_15(&one-time initialization token for _disambiguationLimit);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_7_47();

  return v2;
}

uint64_t key path setter for static NSUserDefaults.answerSynthesisPromptTemplateOverride : NSUserDefaults.Type(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t static NSUserDefaults.pqaVerificationPromptTemplateOverride.modify()
{
  v1 = OUTLINED_FUNCTION_50_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_69_16(v2);
  if (one-time initialization token for _pqaVerificationPromptTemplateOverride != -1)
  {
    OUTLINED_FUNCTION_37_19(&one-time initialization token for _pqaVerificationPromptTemplateOverride);
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  *(v0 + 64) = specialized UserDefault.wrappedValue.getter();
  *(v0 + 72) = v3;
  return OUTLINED_FUNCTION_66_2();
}

void *one-time initialization function for _pqaVerificationPromptTemplateOverride()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._pqaVerificationPromptTemplateOverride = 0;
  unk_27FC710C0 = 0;
  qword_27FC710C8 = 0xD000000000000025;
  unk_27FC710D0 = 0x800000025DBF8D20;
  qword_27FC710D8 = result;
  return result;
}

id static NSUserDefaults.$pqaVerificationPromptTemplateOverride.getter(uint64_t a1)
{
  if (one-time initialization token for _pqaVerificationPromptTemplateOverride != -1)
  {
    a1 = OUTLINED_FUNCTION_37_19(&one-time initialization token for _pqaVerificationPromptTemplateOverride);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_4_52();

  return v2;
}

uint64_t static NSUserDefaults.globalSearchLocationLatitude.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for _globalSearchLocationLatitude != -1)
  {
    a1 = OUTLINED_FUNCTION_42_23(&one-time initialization token for _globalSearchLocationLatitude);
  }

  OUTLINED_FUNCTION_18_24(a1, a2, a3, a4, a5);
  *&v5 = OUTLINED_FUNCTION_2_62().n128_u64[0];
  OUTLINED_FUNCTION_17_37(v6, v7, v8, v9, v10, v11, v12, v13, v23, v25, v27, v29, v31, v33, v35, v37, v5);
  v14 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_62_17(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26, v28, v30, v32, v34, v36, v38);
  return v14;
}

uint64_t static NSUserDefaults.globalSearchLocationLatitude.modify()
{
  v0 = __swift_coroFrameAllocStub(0x49uLL);
  OUTLINED_FUNCTION_69_16(v0);
  if (one-time initialization token for _globalSearchLocationLatitude != -1)
  {
    OUTLINED_FUNCTION_42_23(&one-time initialization token for _globalSearchLocationLatitude);
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  v1 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_75_17(v1, v2);
  return OUTLINED_FUNCTION_66_2();
}

void *one-time initialization function for _globalSearchLocationLatitude()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._globalSearchLocationLatitude = 0;
  byte_27FC710E8 = 1;
  qword_27FC710F0 = 0xD00000000000001CLL;
  unk_27FC710F8 = 0x800000025DBF8930;
  qword_27FC71100 = result;
  return result;
}

id static NSUserDefaults.$globalSearchLocationLatitude.getter(uint64_t a1)
{
  if (one-time initialization token for _globalSearchLocationLatitude != -1)
  {
    a1 = OUTLINED_FUNCTION_42_23(&one-time initialization token for _globalSearchLocationLatitude);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_60_13();

  return v2;
}

uint64_t static NSUserDefaults.globalSearchLocationLongitude.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for _globalSearchLocationLongitude != -1)
  {
    a1 = OUTLINED_FUNCTION_41_20(&one-time initialization token for _globalSearchLocationLongitude);
  }

  OUTLINED_FUNCTION_18_24(a1, a2, a3, a4, a5);
  *&v5 = OUTLINED_FUNCTION_2_62().n128_u64[0];
  OUTLINED_FUNCTION_17_37(v6, v7, v8, v9, v10, v11, v12, v13, v23, v25, v27, v29, v31, v33, v35, v37, v5);
  v14 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_62_17(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26, v28, v30, v32, v34, v36, v38);
  return v14;
}

uint64_t static NSUserDefaults.globalSearchLocationLongitude.modify()
{
  v0 = __swift_coroFrameAllocStub(0x49uLL);
  OUTLINED_FUNCTION_69_16(v0);
  if (one-time initialization token for _globalSearchLocationLongitude != -1)
  {
    OUTLINED_FUNCTION_41_20(&one-time initialization token for _globalSearchLocationLongitude);
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  v1 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_75_17(v1, v2);
  return OUTLINED_FUNCTION_66_2();
}

void *one-time initialization function for _globalSearchLocationLongitude()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._globalSearchLocationLongitude = 0;
  byte_27FC71110 = 1;
  qword_27FC71118 = 0xD00000000000001DLL;
  unk_27FC71120 = 0x800000025DBF8910;
  qword_27FC71128 = result;
  return result;
}

id static NSUserDefaults.$globalSearchLocationLongitude.getter(uint64_t a1)
{
  if (one-time initialization token for _globalSearchLocationLongitude != -1)
  {
    a1 = OUTLINED_FUNCTION_41_20(&one-time initialization token for _globalSearchLocationLongitude);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_60_13();

  return v2;
}

uint64_t (*static NSUserDefaults.logForEval.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _logForEval != -1)
  {
    OUTLINED_FUNCTION_48_15(&one-time initialization token for _logForEval);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.logForEval.modify;
}

void *one-time initialization function for _logForEval()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._logForEval = 0;
  qword_27FC71138 = 0x7645726F46676F6CLL;
  unk_27FC71140 = 0xEA00000000006C61;
  qword_27FC71148 = result;
  return result;
}

id static NSUserDefaults.$logForEval.getter(uint64_t a1)
{
  if (one-time initialization token for _logForEval != -1)
  {
    a1 = OUTLINED_FUNCTION_48_15(&one-time initialization token for _logForEval);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_0_79();

  return v2;
}

uint64_t static NSUserDefaults.photosSearchEval.getter(uint64_t a1)
{
  if (one-time initialization token for _photosSearchEval != -1)
  {
    a1 = OUTLINED_FUNCTION_40_23(&one-time initialization token for _photosSearchEval);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_15_37();
  v1 = &static NSUserDefaults._photosSearchEval;
  OUTLINED_FUNCTION_5_48();
  v6 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5);

  return v6 & 1;
}

uint64_t (*static NSUserDefaults.photosSearchEval.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _photosSearchEval != -1)
  {
    OUTLINED_FUNCTION_40_23(&one-time initialization token for _photosSearchEval);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.photosSearchEval.modify;
}

void *one-time initialization function for _photosSearchEval()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._photosSearchEval = 0;
  qword_27FC71158 = 0xD000000000000010;
  unk_27FC71160 = 0x800000025DBF88F0;
  qword_27FC71168 = result;
  return result;
}

id static NSUserDefaults.$photosSearchEval.getter(uint64_t a1)
{
  if (one-time initialization token for _photosSearchEval != -1)
  {
    a1 = OUTLINED_FUNCTION_40_23(&one-time initialization token for _photosSearchEval);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_0_79();

  return v2;
}

uint64_t (*static NSUserDefaults.emailContentPreprocessing.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _emailContentPreprocessing != -1)
  {
    OUTLINED_FUNCTION_24_27(&one-time initialization token for _emailContentPreprocessing);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.emailContentPreprocessing.modify;
}

void *one-time initialization function for _emailContentPreprocessing()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._emailContentPreprocessing = 1;
  qword_27FC71178 = 0xD000000000000019;
  unk_27FC71180 = 0x800000025DBF8BA0;
  qword_27FC71188 = result;
  return result;
}

id static NSUserDefaults.$emailContentPreprocessing.getter(uint64_t a1)
{
  if (one-time initialization token for _emailContentPreprocessing != -1)
  {
    a1 = OUTLINED_FUNCTION_24_27(&one-time initialization token for _emailContentPreprocessing);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_0_79();

  return v2;
}

uint64_t (*static NSUserDefaults.smartChunkingPreprocessing.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _smartChunkingPreprocessing != -1)
  {
    OUTLINED_FUNCTION_22_27(&one-time initialization token for _smartChunkingPreprocessing);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.smartChunkingPreprocessing.modify;
}

void *one-time initialization function for _smartChunkingPreprocessing()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._smartChunkingPreprocessing = 0;
  qword_27FC71198 = 0xD00000000000001ALL;
  unk_27FC711A0 = 0x800000025DBF8B60;
  qword_27FC711A8 = result;
  return result;
}

id static NSUserDefaults.$smartChunkingPreprocessing.getter(uint64_t a1)
{
  if (one-time initialization token for _smartChunkingPreprocessing != -1)
  {
    a1 = OUTLINED_FUNCTION_22_27(&one-time initialization token for _smartChunkingPreprocessing);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_0_79();

  return v2;
}

uint64_t (*static NSUserDefaults.smartChunksPerDocument.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _smartChunksPerDocument != -1)
  {
    OUTLINED_FUNCTION_21_31(&one-time initialization token for _smartChunksPerDocument);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3, MEMORY[0x277D83B88]);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.smartChunksPerDocument.modify;
}

double one-time initialization function for _smartChunksPerDocument()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  *&result = 2;
  static NSUserDefaults._smartChunksPerDocument = xmmword_25DBE5780;
  qword_27FC711C0 = 0x800000025DBF8B40;
  unk_27FC711C8 = v0;
  return result;
}

id static NSUserDefaults.$smartChunksPerDocument.getter(uint64_t a1)
{
  if (one-time initialization token for _smartChunksPerDocument != -1)
  {
    a1 = OUTLINED_FUNCTION_21_31(&one-time initialization token for _smartChunksPerDocument);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_7_47();

  return v2;
}

uint64_t (*static NSUserDefaults.smartChunkingOverlap.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _smartChunkingOverlap != -1)
  {
    OUTLINED_FUNCTION_20_26(&one-time initialization token for _smartChunkingOverlap);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3, MEMORY[0x277D83B88]);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.smartChunkingOverlap.modify;
}

double one-time initialization function for _smartChunkingOverlap()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  result = 0.0;
  static NSUserDefaults._smartChunkingOverlap = xmmword_25DBE5790;
  qword_27FC711E0 = 0x800000025DBF8B20;
  unk_27FC711E8 = v0;
  return result;
}

id static NSUserDefaults.$smartChunkingOverlap.getter(uint64_t a1)
{
  if (one-time initialization token for _smartChunkingOverlap != -1)
  {
    a1 = OUTLINED_FUNCTION_20_26(&one-time initialization token for _smartChunkingOverlap);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_7_47();

  return v2;
}

uint64_t (*static NSUserDefaults.sendInstantAnswerDocToAS.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _sendInstantAnswerDocToAS != -1)
  {
    OUTLINED_FUNCTION_53_18(&one-time initialization token for _sendInstantAnswerDocToAS);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.sendInstantAnswerDocToAS.modify;
}

void *one-time initialization function for _sendInstantAnswerDocToAS()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._sendInstantAnswerDocToAS = 0;
  qword_27FC711F8 = 0xD000000000000018;
  unk_27FC71200 = 0x800000025DBF8A40;
  qword_27FC71208 = result;
  return result;
}

id static NSUserDefaults.$sendInstantAnswerDocToAS.getter(uint64_t a1)
{
  if (one-time initialization token for _sendInstantAnswerDocToAS != -1)
  {
    a1 = OUTLINED_FUNCTION_53_18(&one-time initialization token for _sendInstantAnswerDocToAS);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_0_79();

  return v2;
}

uint64_t (*static NSUserDefaults.msgCntBeforeTarget.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _msgCntBeforeTarget != -1)
  {
    OUTLINED_FUNCTION_52_21(&one-time initialization token for _msgCntBeforeTarget);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3, MEMORY[0x277D83E88]);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.msgCntBeforeTarget.modify;
}

double one-time initialization function for _msgCntBeforeTarget()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  *&result = 5;
  static NSUserDefaults._msgCntBeforeTarget = xmmword_25DBE57A0;
  qword_27FC71220 = 0x800000025DBF8A20;
  unk_27FC71228 = v0;
  return result;
}

id static NSUserDefaults.$msgCntBeforeTarget.getter(uint64_t a1)
{
  if (one-time initialization token for _msgCntBeforeTarget != -1)
  {
    a1 = OUTLINED_FUNCTION_52_21(&one-time initialization token for _msgCntBeforeTarget);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_7_47();

  return v2;
}

uint64_t (*static NSUserDefaults.msgCntAfterTarget.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _msgCntAfterTarget != -1)
  {
    OUTLINED_FUNCTION_51_18(&one-time initialization token for _msgCntAfterTarget);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3, MEMORY[0x277D83E88]);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.msgCntAfterTarget.modify;
}

double one-time initialization function for _msgCntAfterTarget()
{
  type metadata accessor for NSUserDefaults();
  v0 = static NSUserDefaults.makeOmniSearchUserDefaults()();
  *&result = 5;
  static NSUserDefaults._msgCntAfterTarget = xmmword_25DBE57B0;
  qword_27FC71240 = 0x800000025DBF8A00;
  unk_27FC71248 = v0;
  return result;
}

id static NSUserDefaults.$msgCntAfterTarget.getter(uint64_t a1)
{
  if (one-time initialization token for _msgCntAfterTarget != -1)
  {
    a1 = OUTLINED_FUNCTION_51_18(&one-time initialization token for _msgCntAfterTarget);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_7_47();

  return v2;
}

uint64_t static NSUserDefaults.forceLLMQU.getter(uint64_t a1)
{
  if (one-time initialization token for _forceLLMQU != -1)
  {
    a1 = OUTLINED_FUNCTION_33_28(&one-time initialization token for _forceLLMQU);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_15_37();
  v1 = &static NSUserDefaults._forceLLMQU;
  OUTLINED_FUNCTION_5_48();
  v6 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5);

  return v6 & 1;
}

uint64_t (*static NSUserDefaults.forceLLMQU.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _forceLLMQU != -1)
  {
    OUTLINED_FUNCTION_33_28(&one-time initialization token for _forceLLMQU);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.forceLLMQU.modify;
}

void *one-time initialization function for _forceLLMQU()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._forceLLMQU = 0;
  qword_27FC71258 = 0x4D4C4C6563726F66;
  unk_27FC71260 = 0xEA00000000005551;
  qword_27FC71268 = result;
  return result;
}

id static NSUserDefaults.$forceLLMQU.getter(uint64_t a1)
{
  if (one-time initialization token for _forceLLMQU != -1)
  {
    a1 = OUTLINED_FUNCTION_33_28(&one-time initialization token for _forceLLMQU);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_0_79();

  return v2;
}

uint64_t static NSUserDefaults.llmQUPromptTemplateOverride.modify()
{
  v1 = OUTLINED_FUNCTION_50_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_69_16(v2);
  if (one-time initialization token for _llmQUPromptTemplateOverride != -1)
  {
    OUTLINED_FUNCTION_50_16(&one-time initialization token for _llmQUPromptTemplateOverride);
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  *(v0 + 64) = specialized UserDefault.wrappedValue.getter();
  *(v0 + 72) = v3;
  return OUTLINED_FUNCTION_66_2();
}

void *one-time initialization function for _llmQUPromptTemplateOverride()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._llmQUPromptTemplateOverride = 0;
  *algn_27FC71278 = 0;
  qword_27FC71280 = 0xD00000000000001BLL;
  unk_27FC71288 = 0x800000025DBF89E0;
  qword_27FC71290 = result;
  return result;
}

id static NSUserDefaults.$llmQUPromptTemplateOverride.getter(uint64_t a1)
{
  if (one-time initialization token for _llmQUPromptTemplateOverride != -1)
  {
    a1 = OUTLINED_FUNCTION_50_16(&one-time initialization token for _llmQUPromptTemplateOverride);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_4_52();

  return v2;
}

uint64_t static NSUserDefaults.llmQUBNFGrammarOverride.modify()
{
  v1 = OUTLINED_FUNCTION_50_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_69_16(v2);
  if (one-time initialization token for _llmQUBNFGrammarOverride != -1)
  {
    OUTLINED_FUNCTION_49_21(&one-time initialization token for _llmQUBNFGrammarOverride);
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  *(v0 + 64) = specialized UserDefault.wrappedValue.getter();
  *(v0 + 72) = v3;
  return OUTLINED_FUNCTION_66_2();
}

void *one-time initialization function for _llmQUBNFGrammarOverride()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._llmQUBNFGrammarOverride = 0;
  unk_27FC712A0 = 0;
  qword_27FC712A8 = 0xD000000000000017;
  unk_27FC712B0 = 0x800000025DBF89C0;
  qword_27FC712B8 = result;
  return result;
}

id static NSUserDefaults.$llmQUBNFGrammarOverride.getter(uint64_t a1)
{
  if (one-time initialization token for _llmQUBNFGrammarOverride != -1)
  {
    a1 = OUTLINED_FUNCTION_49_21(&one-time initialization token for _llmQUBNFGrammarOverride);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_4_52();

  return v2;
}

uint64_t key path setter for static NSUserDefaults.llmPromptLineBreak : NSUserDefaults.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return static NSUserDefaults.llmPromptLineBreak.setter(v1, v2, v3, v4, v5);
}

uint64_t static NSUserDefaults.llmPromptLineBreak.modify()
{
  v1 = OUTLINED_FUNCTION_50_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_69_16(v2);
  if (one-time initialization token for _llmPromptLineBreak != -1)
  {
    OUTLINED_FUNCTION_54_24(&one-time initialization token for _llmPromptLineBreak);
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  *(v0 + 64) = specialized UserDefault.wrappedValue.getter();
  *(v0 + 72) = v3;
  return OUTLINED_FUNCTION_66_2();
}

void *one-time initialization function for _llmPromptLineBreak()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._llmPromptLineBreak = 4091452;
  *algn_27FC712C8 = 0xE300000000000000;
  qword_27FC712D0 = 0xD000000000000012;
  unk_27FC712D8 = 0x800000025DBF8A60;
  qword_27FC712E0 = result;
  return result;
}

id static NSUserDefaults.$llmPromptLineBreak.getter(uint64_t a1)
{
  if (one-time initialization token for _llmPromptLineBreak != -1)
  {
    a1 = OUTLINED_FUNCTION_54_24(&one-time initialization token for _llmPromptLineBreak);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_63_19();

  return v2;
}

uint64_t (*static NSUserDefaults.forceContentHydration.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _forceContentHydration != -1)
  {
    OUTLINED_FUNCTION_19_37(&one-time initialization token for _forceContentHydration);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.forceContentHydration.modify;
}

void *one-time initialization function for _forceContentHydration()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._forceContentHydration = 0;
  qword_27FC712F0 = 0xD000000000000015;
  unk_27FC712F8 = 0x800000025DBF8B00;
  qword_27FC71300 = result;
  return result;
}

id static NSUserDefaults.$forceContentHydration.getter(uint64_t a1)
{
  if (one-time initialization token for _forceContentHydration != -1)
  {
    a1 = OUTLINED_FUNCTION_19_37(&one-time initialization token for _forceContentHydration);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_0_79();

  return v2;
}

uint64_t static NSUserDefaults.skipGlobalSearch.getter(uint64_t a1)
{
  if (one-time initialization token for _skipGlobalSearch != -1)
  {
    a1 = OUTLINED_FUNCTION_26_26(&one-time initialization token for _skipGlobalSearch);
  }

  OUTLINED_FUNCTION_10_18(a1);
  OUTLINED_FUNCTION_15_37();
  v1 = &static NSUserDefaults._skipGlobalSearch;
  OUTLINED_FUNCTION_5_48();
  v6 = specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5);

  return v6 & 1;
}

uint64_t (*static NSUserDefaults.skipGlobalSearch.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _skipGlobalSearch != -1)
  {
    OUTLINED_FUNCTION_26_26(&one-time initialization token for _skipGlobalSearch);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.skipGlobalSearch.modify;
}

void *one-time initialization function for _skipGlobalSearch()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._skipGlobalSearch = 0;
  qword_27FC71310 = 0xD000000000000010;
  unk_27FC71318 = 0x800000025DBEEBF0;
  qword_27FC71320 = result;
  return result;
}

id static NSUserDefaults.$skipGlobalSearch.getter(uint64_t a1)
{
  if (one-time initialization token for _skipGlobalSearch != -1)
  {
    a1 = OUTLINED_FUNCTION_26_26(&one-time initialization token for _skipGlobalSearch);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_0_79();

  return v2;
}

uint64_t static NSUserDefaults.globalSearchLocationLatitude.setter(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v7 = OUTLINED_FUNCTION_59_16();
  OUTLINED_FUNCTION_147_2(v7, v8);
  specialized UserDefault.wrappedValue.setter(a1, a2 & 1);
  return swift_endAccess();
}

uint64_t static NSUserDefaults.currentTime.modify()
{
  v0 = __swift_coroFrameAllocStub(0x49uLL);
  OUTLINED_FUNCTION_69_16(v0);
  if (one-time initialization token for _currentTime != -1)
  {
    OUTLINED_FUNCTION_28_26(&one-time initialization token for _currentTime);
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  v1 = specialized UserDefault.wrappedValue.getter();
  OUTLINED_FUNCTION_75_17(v1, v2);
  return OUTLINED_FUNCTION_66_2();
}

void static NSUserDefaults.globalSearchLocationLatitude.modify(char **a1)
{
  v1 = *a1;
  specialized UserDefault.wrappedValue.setter(*(*a1 + 8), (*a1)[72]);
  swift_endAccess();

  free(v1);
}

void *one-time initialization function for _currentTime()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._currentTime = 0;
  byte_27FC71330 = 1;
  qword_27FC71338 = 0x54746E6572727563;
  unk_27FC71340 = 0xEB00000000656D69;
  qword_27FC71348 = result;
  return result;
}

id static NSUserDefaults.$currentTime.getter(uint64_t a1)
{
  if (one-time initialization token for _currentTime != -1)
  {
    a1 = OUTLINED_FUNCTION_28_26(&one-time initialization token for _currentTime);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_60_13();

  return v2;
}

uint64_t static NSUserDefaults.spotlightQueryBundleIDs.setter(uint64_t a1)
{
  if (one-time initialization token for _spotlightQueryBundleIDs != -1)
  {
    OUTLINED_FUNCTION_8_44(&one-time initialization token for _spotlightQueryBundleIDs);
  }

  v2 = OUTLINED_FUNCTION_59_16();
  OUTLINED_FUNCTION_147_2(v2, v3);
  specialized UserDefault.wrappedValue.setter(a1);
  return swift_endAccess();
}

uint64_t (*static NSUserDefaults.spotlightQueryBundleIDs.modify())(uint64_t a1, char a2)
{
  if (one-time initialization token for _spotlightQueryBundleIDs != -1)
  {
    OUTLINED_FUNCTION_8_44(&one-time initialization token for _spotlightQueryBundleIDs);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_67_18();
  v4 = specialized UserDefault.wrappedValue.getter(v0, v1, v2, v3);
  OUTLINED_FUNCTION_68_18(v4);
  return static NSUserDefaults.spotlightQueryBundleIDs.modify;
}

uint64_t static NSUserDefaults.spotlightQueryBundleIDs.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  if (a2)
  {

    specialized UserDefault.wrappedValue.setter(v3);
  }

  else
  {
    specialized UserDefault.wrappedValue.setter(v2);
  }

  return swift_endAccess();
}

void *one-time initialization function for _spotlightQueryBundleIDs()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._spotlightQueryBundleIDs = MEMORY[0x277D84F90];
  *algn_27FC71358 = 0xD000000000000017;
  qword_27FC71360 = 0x800000025DBF89A0;
  unk_27FC71368 = result;
  return result;
}

id static NSUserDefaults.$spotlightQueryBundleIDs.getter@<X0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  if (one-time initialization token for _spotlightQueryBundleIDs != -1)
  {
    a2 = OUTLINED_FUNCTION_8_44(&one-time initialization token for _spotlightQueryBundleIDs);
  }

  OUTLINED_FUNCTION_10_39(a2);
  v3 = *algn_27FC71358;
  v5 = qword_27FC71360;
  v7 = unk_27FC71368;
  v4 = unk_27FC71368;
  *a1 = static NSUserDefaults._spotlightQueryBundleIDs;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;

  return v7;
}

uint64_t (*static NSUserDefaults.triggersDisambiguation.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _triggersDisambiguation != -1)
  {
    OUTLINED_FUNCTION_56_15(&one-time initialization token for _triggersDisambiguation);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.triggersDisambiguation.modify;
}

void *one-time initialization function for _triggersDisambiguation()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._triggersDisambiguation = 0;
  qword_27FC71378 = 0xD000000000000016;
  unk_27FC71380 = 0x800000025DBF8AA0;
  qword_27FC71388 = result;
  return result;
}

id static NSUserDefaults.$triggersDisambiguation.getter(uint64_t a1)
{
  if (one-time initialization token for _triggersDisambiguation != -1)
  {
    a1 = OUTLINED_FUNCTION_56_15(&one-time initialization token for _triggersDisambiguation);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_0_79();

  return v2;
}

uint64_t key path setter for static NSUserDefaults.fallbackLocale : NSUserDefaults.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return static NSUserDefaults.fallbackLocale.setter(v1, v2, v3, v4, v5);
}

uint64_t static NSUserDefaults.fallbackLocale.modify()
{
  v1 = OUTLINED_FUNCTION_50_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_69_16(v2);
  if (one-time initialization token for _fallbackLocale != -1)
  {
    OUTLINED_FUNCTION_29_20(&one-time initialization token for _fallbackLocale);
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  *(v0 + 64) = specialized UserDefault.wrappedValue.getter();
  *(v0 + 72) = v3;
  return OUTLINED_FUNCTION_66_2();
}

void static NSUserDefaults.answerSynthesisModelType.modify()
{
  OUTLINED_FUNCTION_76_15();
  if (v1)
  {

    v2 = OUTLINED_FUNCTION_34_11();
    specialized UserDefault.wrappedValue.setter(v2, v3);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_34_11();
    specialized UserDefault.wrappedValue.setter(v4, v5);
  }

  swift_endAccess();

  free(v0);
}

void *one-time initialization function for _fallbackLocale()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._fallbackLocale = 0x53555F6E65;
  *algn_27FC71398 = 0xE500000000000000;
  strcpy(&qword_27FC713A0, "fallbackLocale");
  unk_27FC713AF = -18;
  qword_27FC713B0 = result;
  return result;
}

id static NSUserDefaults.$fallbackLocale.getter(uint64_t a1)
{
  if (one-time initialization token for _fallbackLocale != -1)
  {
    a1 = OUTLINED_FUNCTION_29_20(&one-time initialization token for _fallbackLocale);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_63_19();

  return v2;
}

uint64_t (*static NSUserDefaults.allowNoAnswerFallbackToPCS.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _allowNoAnswerFallbackToPCS != -1)
  {
    OUTLINED_FUNCTION_23_26(&one-time initialization token for _allowNoAnswerFallbackToPCS);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.allowNoAnswerFallbackToPCS.modify;
}

void *one-time initialization function for _allowNoAnswerFallbackToPCS()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._allowNoAnswerFallbackToPCS = 1;
  qword_27FC713C0 = 0xD00000000000001ALL;
  unk_27FC713C8 = 0x800000025DBF8B80;
  qword_27FC713D0 = result;
  return result;
}

id static NSUserDefaults.$allowNoAnswerFallbackToPCS.getter(uint64_t a1)
{
  if (one-time initialization token for _allowNoAnswerFallbackToPCS != -1)
  {
    a1 = OUTLINED_FUNCTION_23_26(&one-time initialization token for _allowNoAnswerFallbackToPCS);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_0_79();

  return v2;
}

uint64_t (*static NSUserDefaults.needAnswerMatchWithLocationResolution.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _needAnswerMatchWithLocationResolution != -1)
  {
    OUTLINED_FUNCTION_45_19(&one-time initialization token for _needAnswerMatchWithLocationResolution);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.needAnswerMatchWithLocationResolution.modify;
}

void *one-time initialization function for _needAnswerMatchWithLocationResolution()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._needAnswerMatchWithLocationResolution = 1;
  qword_27FC713E0 = 0xD000000000000025;
  unk_27FC713E8 = 0x800000025DBF8DC0;
  qword_27FC713F0 = result;
  return result;
}

id static NSUserDefaults.$needAnswerMatchWithLocationResolution.getter(uint64_t a1)
{
  if (one-time initialization token for _needAnswerMatchWithLocationResolution != -1)
  {
    a1 = OUTLINED_FUNCTION_45_19(&one-time initialization token for _needAnswerMatchWithLocationResolution);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_0_79();

  return v2;
}

uint64_t (*static NSUserDefaults.getDirectionsForLocationResolution.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _getDirectionsForLocationResolution != -1)
  {
    OUTLINED_FUNCTION_46_23(&one-time initialization token for _getDirectionsForLocationResolution);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.getDirectionsForLocationResolution.modify;
}

void *one-time initialization function for _getDirectionsForLocationResolution()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._getDirectionsForLocationResolution = 1;
  qword_27FC71400 = 0xD000000000000022;
  unk_27FC71408 = 0x800000025DBF8DF0;
  qword_27FC71410 = result;
  return result;
}

id static NSUserDefaults.$getDirectionsForLocationResolution.getter(uint64_t a1)
{
  if (one-time initialization token for _getDirectionsForLocationResolution != -1)
  {
    a1 = OUTLINED_FUNCTION_46_23(&one-time initialization token for _getDirectionsForLocationResolution);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_0_79();

  return v2;
}

uint64_t static NSUserDefaults.answerSynthesisResponseOverride.modify()
{
  v1 = OUTLINED_FUNCTION_50_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_69_16(v2);
  if (one-time initialization token for _answerSynthesisResponseOverride != -1)
  {
    OUTLINED_FUNCTION_30_25(&one-time initialization token for _answerSynthesisResponseOverride);
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  *(v0 + 64) = specialized UserDefault.wrappedValue.getter();
  *(v0 + 72) = v3;
  return OUTLINED_FUNCTION_66_2();
}

void *one-time initialization function for _answerSynthesisResponseOverride()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._answerSynthesisResponseOverride = 0;
  unk_27FC71420 = 0;
  qword_27FC71428 = 0xD00000000000001FLL;
  unk_27FC71430 = 0x800000025DBF8C50;
  qword_27FC71438 = result;
  return result;
}

id static NSUserDefaults.$answerSynthesisResponseOverride.getter(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisResponseOverride != -1)
  {
    a1 = OUTLINED_FUNCTION_30_25(&one-time initialization token for _answerSynthesisResponseOverride);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_4_52();

  return v2;
}

uint64_t static NSUserDefaults.answerSynthesisCDSchemaOverride.modify()
{
  v1 = OUTLINED_FUNCTION_50_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_69_16(v2);
  if (one-time initialization token for _answerSynthesisCDSchemaOverride != -1)
  {
    OUTLINED_FUNCTION_38_25(&one-time initialization token for _answerSynthesisCDSchemaOverride);
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  *(v0 + 64) = specialized UserDefault.wrappedValue.getter();
  *(v0 + 72) = v3;
  return OUTLINED_FUNCTION_66_2();
}

void *one-time initialization function for _answerSynthesisCDSchemaOverride()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._answerSynthesisCDSchemaOverride = 0;
  *algn_27FC71448 = 0;
  qword_27FC71450 = 0xD00000000000001FLL;
  unk_27FC71458 = 0x800000025DBF8D50;
  qword_27FC71460 = result;
  return result;
}

id static NSUserDefaults.$answerSynthesisCDSchemaOverride.getter(uint64_t a1)
{
  if (one-time initialization token for _answerSynthesisCDSchemaOverride != -1)
  {
    a1 = OUTLINED_FUNCTION_38_25(&one-time initialization token for _answerSynthesisCDSchemaOverride);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_4_52();

  return v2;
}

uint64_t (*static NSUserDefaults.featureStoreLogging.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _featureStoreLogging != -1)
  {
    OUTLINED_FUNCTION_58_13(&one-time initialization token for _featureStoreLogging);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.featureStoreLogging.modify;
}

void *one-time initialization function for _featureStoreLogging()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._featureStoreLogging = 0;
  qword_27FC71470 = 0xD000000000000013;
  unk_27FC71478 = 0x800000025DBF8AE0;
  qword_27FC71480 = result;
  return result;
}

id static NSUserDefaults.$featureStoreLogging.getter(uint64_t a1)
{
  if (one-time initialization token for _featureStoreLogging != -1)
  {
    a1 = OUTLINED_FUNCTION_58_13(&one-time initialization token for _featureStoreLogging);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_0_79();

  return v2;
}

uint64_t static NSUserDefaults.answerSynthesisModelType.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = OUTLINED_FUNCTION_59_16();
  OUTLINED_FUNCTION_147_2(v9, v10);
  a5(a1, a2);
  return swift_endAccess();
}

uint64_t static NSUserDefaults.searchCATContextOverride.modify()
{
  v1 = OUTLINED_FUNCTION_50_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_69_16(v2);
  if (one-time initialization token for _searchCATContextOverride != -1)
  {
    OUTLINED_FUNCTION_55_16(&one-time initialization token for _searchCATContextOverride);
  }

  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_1_73();
  *(v0 + 64) = specialized UserDefault.wrappedValue.getter();
  *(v0 + 72) = v3;
  return OUTLINED_FUNCTION_66_2();
}

void static NSUserDefaults.answerSynthesisPromptTemplateOverride.modify()
{
  OUTLINED_FUNCTION_76_15();
  if (v1)
  {

    v2 = OUTLINED_FUNCTION_34_11();
    specialized UserDefault.wrappedValue.setter(v2, v3);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_34_11();
    specialized UserDefault.wrappedValue.setter(v4, v5);
  }

  swift_endAccess();

  free(v0);
}

void *one-time initialization function for _searchCATContextOverride()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._searchCATContextOverride = 0;
  unk_27FC71490 = 0;
  qword_27FC71498 = 0xD000000000000018;
  unk_27FC714A0 = 0x800000025DBF8A80;
  qword_27FC714A8 = result;
  return result;
}

id static NSUserDefaults.$searchCATContextOverride.getter(uint64_t a1)
{
  if (one-time initialization token for _searchCATContextOverride != -1)
  {
    a1 = OUTLINED_FUNCTION_55_16(&one-time initialization token for _searchCATContextOverride);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_4_52();

  return v2;
}

uint64_t static NSUserDefaults.answerSynthesisMultiAnswersSupport.setter(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = OUTLINED_FUNCTION_59_16();
  OUTLINED_FUNCTION_147_2(v5, v6);
  specialized UserDefault.wrappedValue.setter(a1 & 1);
  return swift_endAccess();
}

uint64_t (*static NSUserDefaults.enablePhotosInAppSearch.modify())(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _enablePhotosInAppSearch != -1)
  {
    OUTLINED_FUNCTION_57_17(&one-time initialization token for _enablePhotosInAppSearch);
  }

  OUTLINED_FUNCTION_48_1();
  v0 = OUTLINED_FUNCTION_61_21();
  OUTLINED_FUNCTION_9_42(v0);
  return static NSUserDefaults.enablePhotosInAppSearch.modify;
}

uint64_t static NSUserDefaults.answerSynthesisMultiAnswersSupport.modify(uint64_t a1)
{
  specialized UserDefault.wrappedValue.setter(*(a1 + 24));

  return swift_endAccess();
}

void *one-time initialization function for _enablePhotosInAppSearch()
{
  type metadata accessor for NSUserDefaults();
  result = static NSUserDefaults.makeOmniSearchUserDefaults()();
  static NSUserDefaults._enablePhotosInAppSearch = 0;
  qword_27FC714B8 = 0xD000000000000017;
  unk_27FC714C0 = 0x800000025DBF8AC0;
  qword_27FC714C8 = result;
  return result;
}

id static NSUserDefaults.$enablePhotosInAppSearch.getter(uint64_t a1)
{
  if (one-time initialization token for _enablePhotosInAppSearch != -1)
  {
    a1 = OUTLINED_FUNCTION_57_17(&one-time initialization token for _enablePhotosInAppSearch);
  }

  OUTLINED_FUNCTION_10_39(a1);
  OUTLINED_FUNCTION_0_79();

  return v2;
}

uint64_t OUTLINED_FUNCTION_0_79()
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  *v0 = *v1;
  *(v0 + 8) = v4;
  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
}

__n128 OUTLINED_FUNCTION_1_73()
{
  result = *v1;
  v3 = *(v1 + 16);
  *(v0 + 32) = *(v1 + 32);
  *v0 = result;
  *(v0 + 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_52()
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  *v0 = *v1;
  *(v0 + 8) = *(v1 + 8);
  *(v0 + 24) = v4;
  *(v0 + 32) = v3;
}

uint64_t OUTLINED_FUNCTION_6_39(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_47()
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *v0 = *v1;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
}

uint64_t OUTLINED_FUNCTION_8_44(uint64_t a1)
{

  return swift_once();
}

double OUTLINED_FUNCTION_10_39(uint64_t a1, ...)
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_12_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return outlined destroy of (offset: Int, element: SearchResult)(va, v16, v17);
}

uint64_t OUTLINED_FUNCTION_15_37()
{
}

double OUTLINED_FUNCTION_16_37()
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_17_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return outlined init with copy of CheckedContinuation<(), Never>?(va, &a9, v16, v17);
}

double OUTLINED_FUNCTION_18_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_19_37(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_26(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_31(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_27(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_23_26(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_24_27(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_27(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_26(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27_24(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_26(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_29_20(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_30_25(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_25(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_30(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_33_28(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_29(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_35_26(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_36_23(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_37_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_38_25(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_39_23(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_40_23(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_41_20(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42_23(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_43_15(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_44_24(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_45_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_46_23(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_47_18(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_48_15(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_49_21(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_50_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_51_18(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_52_21(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_53_18(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_54_24(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_55_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_56_15(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_57_17(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_58_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_60_13()
{
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  *v0 = *v1;
  *(v0 + 8) = v3;
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 32) = v6;
}

uint64_t OUTLINED_FUNCTION_61_21()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return specialized UserDefault.wrappedValue.getter(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_62_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return outlined destroy of (offset: Int, element: SearchResult)(va, v16, v17);
}

uint64_t OUTLINED_FUNCTION_63_19()
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *v0 = *v1;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v6;
}

uint64_t OUTLINED_FUNCTION_64_15()
{
}

uint64_t OUTLINED_FUNCTION_75_17(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

BOOL NSProcessInfo.isRunningUnitTests.getter()
{
  v1 = [v0 environment];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Dictionary.subscript.getter(0xD000000000000017, 0x800000025DBF8E20, v2);
  v4 = v3;

  if (v4)
  {
  }

  return v4 != 0;
}

uint64_t NSProcessInfo.isSearchToolExtensin.getter()
{
  v1 = [v0 processName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == 0xD000000000000013 && 0x800000025DBF8E40 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

uint64_t RGOverrideMatcher.__allocating_init(locale:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_10();
  v4 = swift_allocObject();
  RGOverrideMatcher.init(locale:)(a1, a2);
  return v4;
}

uint64_t RGOverrideMatcher.matcher.setter(uint64_t a1)
{
  swift_beginAccess();
  outlined assign with take of ResponseOverrideMatcherProtocol?(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t RGOverrideMatcher.init(locale:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Locale();
  v4 = OUTLINED_FUNCTION_114(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  *(v2 + 16) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0u;
  Locale.init(identifier:)();
  v5 = type metadata accessor for ResponseOverrideMatcher();
  swift_allocObject();
  v8 = v5;
  v9 = &protocol witness table for ResponseOverrideMatcher;
  *&v7 = ResponseOverrideMatcher.init(locale:)();
  swift_beginAccess();
  outlined assign with take of ResponseOverrideMatcherProtocol?(&v7, v2 + 16);
  swift_endAccess();
  return v2;
}

uint64_t outlined assign with take of ResponseOverrideMatcherProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch31ResponseOverrideMatcherProtocol_pSgMd, &_s10OmniSearch31ResponseOverrideMatcherProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RGOverrideMatcher.__allocating_init(matcher:)(uint64_t a1)
{
  OUTLINED_FUNCTION_16_10();
  v2 = swift_allocObject();
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  OUTLINED_FUNCTION_18_25(0, v2, v3);
  outlined assign with take of ResponseOverrideMatcherProtocol?(a1, v2);
  swift_endAccess();
  return v2;
}

uint64_t RGOverrideMatcher.init(matcher:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = 0;
  *(v2 + 32) = 0u;
  OUTLINED_FUNCTION_18_25(0, a1, a2);
  outlined assign with take of ResponseOverrideMatcherProtocol?(a1, v2);
  swift_endAccess();
  return v2;
}

uint64_t RGOverrideMatcher.checkForRGOverride(query:results:)@<X0>(int *a1@<X0>, void (*a2)(_DWORD *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v289 = a1;
  v290 = a2;
  v296 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);
  OUTLINED_FUNCTION_14();
  v254 = v7;
  v255 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_39_0();
  v295 = v8;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_2();
  v294 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow24ResponseOverrideBehaviorVSgMd, &_s16IntelligenceFlow24ResponseOverrideBehaviorVSgMR);
  OUTLINED_FUNCTION_114(v11);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_49_3();
  v291 = v13;
  OUTLINED_FUNCTION_78_0();
  v283 = type metadata accessor for ResponseOverrideBehavior();
  OUTLINED_FUNCTION_14();
  v280 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v247 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_2();
  v299 = v19;
  OUTLINED_FUNCTION_78_0();
  v20 = type metadata accessor for LocalizedStringResource();
  v21 = OUTLINED_FUNCTION_114(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_39_0();
  v259 = v22;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_2();
  v258 = v24;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for _SpeakableString();
  OUTLINED_FUNCTION_14();
  v261 = v26;
  v262 = v25;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_36();
  v260 = v28 - v27;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for ResponseDialog();
  OUTLINED_FUNCTION_14();
  v265 = v30;
  v266 = v29;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_39_0();
  v257 = v31;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_14_2();
  v264 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow22ResponseOverrideDialogOSgMd, &_s16IntelligenceFlow22ResponseOverrideDialogOSgMR);
  OUTLINED_FUNCTION_114(v34);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_49_3();
  v278 = v36;
  OUTLINED_FUNCTION_78_0();
  v37 = type metadata accessor for ResponseOverrideDialog();
  OUTLINED_FUNCTION_14();
  v281 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_39_0();
  v251 = v40;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v41);
  v252 = &v247 - v42;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v43);
  v268 = &v247 - v44;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_14_2();
  v279 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10DialogDataVSgMd, &_s10OmniSearch10DialogDataVSgMR);
  OUTLINED_FUNCTION_114(v47);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_49_3();
  v292 = v49;
  v50 = OUTLINED_FUNCTION_78_0();
  v51 = type metadata accessor for SearchEntity(v50);
  OUTLINED_FUNCTION_14();
  v298 = v52;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_39_0();
  v253 = v54;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v55);
  v57 = &v247 - v56;
  type metadata accessor for ResponseOverrideInput();
  OUTLINED_FUNCTION_14();
  v286 = v59;
  v287 = v58;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_36();
  v284 = v61 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow16ResponseOverrideVSgMd, &_s16IntelligenceFlow16ResponseOverrideVSgMR);
  OUTLINED_FUNCTION_114(v62);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_49_3();
  v285 = v64;
  OUTLINED_FUNCTION_78_0();
  v65 = type metadata accessor for ResponseOverride();
  OUTLINED_FUNCTION_14();
  v67 = v66;
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_39_0();
  v288 = v69;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_14_2();
  v297 = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  OUTLINED_FUNCTION_114(v72);
  OUTLINED_FUNCTION_77_0();
  v74 = MEMORY[0x28223BE20](v73);
  v76 = &v247 - v75;
  (*(*v4 + 88))(v303, v74);
  if (*(&v303[1] + 1))
  {
    outlined init with take of ResponseOverrideMatcherProtocol(v303, v304);
    specialized Collection.first.getter(a3, v76);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v76, 1, v51);
    v263 = v37;
    v300 = v51;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of IntentApplication?(v76, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);

      v274 = 0;
      v275 = 0;
      v276 = 0;
      v277 = 0;
      v78 = a3;
      v79 = v299;
      goto LABEL_16;
    }

    EntityProperty.wrappedValue.getter();
    memcpy(v302, v301, sizeof(v302));
    outlined destroy of SearchEntity(v76);
    memcpy(v303, v302, 0x88uLL);
    v88 = _s10OmniSearch0B7ContextVSgWOg(v303);
    v79 = v299;
    if (v88 != 1)
    {
      if (*(a3 + 16) == 1)
      {
        EntityProperty.wrappedValue.getter();
        v78 = v301[0];
        EntityProperty.wrappedValue.getter();
        v89 = v301[0];
        if (!v301[1])
        {
          v89 = 0;
        }

        v276 = v89;
        v277 = v301[1];
        EntityProperty.wrappedValue.getter();
        outlined destroy of IntentApplication?(v302, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
        v274 = v301[1];
        v275 = v301[0];
LABEL_16:
        v293 = v67;
        v272 = v306;
        v273 = v305;
        v271 = __swift_project_boxed_opaque_existential_1(v304, v305);
        if (one-time initialization token for deviceClass != -1)
        {
          swift_once();
        }

        v248 = v17;
        v90 = MobileGestalt.DeviceClass.rawValue.getter(static MobileGestalt.deviceClass);
        v270 = v91;
        v92 = static MobileGestalt.deviceType.getter();
        v269 = v93;
        v94 = *(v78 + 16);
        v95 = MEMORY[0x277D84F90];
        v267 = v65;
        v282 = v78;
        if (v94)
        {
          v249 = v92;
          v250 = v90;
          v256 = a3;
          *&v303[0] = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94, 0);
          v95 = *&v303[0];
          OUTLINED_FUNCTION_42_5();
          v97 = v78 + v96;
          v99 = *(v98 + 72);
          do
          {
            outlined init with copy of SearchEntity(v97, v57);
            v100 = &v57[*(v300 + 88)];
            v102 = *v100;
            v101 = *(v100 + 1);

            outlined destroy of SearchEntity(v57);
            *&v303[0] = v95;
            v104 = *(v95 + 16);
            v103 = *(v95 + 24);
            if (v104 >= v103 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1);
              v95 = *&v303[0];
            }

            *(v95 + 16) = v104 + 1;
            v105 = v95 + 16 * v104;
            *(v105 + 32) = v102;
            *(v105 + 40) = v101;
            v97 += v99;
            --v94;
          }

          while (v94);
          v79 = v299;
          a3 = v256;
          v65 = v267;
        }

        v245[1] = 0;
        v246 = 0;
        v245[0] = v95;
        v106 = v284;
        ResponseOverrideInput.init(utterance:response:answer:interfaceIdiom:deviceType:customEntityDescriptions:onScreenText:)();
        v107 = v285;
        (*(v272 + 8))(v106, v273);
        (*(v286 + 8))(v106, v287);
        v108 = __swift_getEnumTagSinglePayload(v107, 1, v65);
        v109 = v293;
        v110 = v297;
        v111 = v288;
        if (v108 == 1)
        {

          outlined destroy of IntentApplication?(v107, &_s16IntelligenceFlow16ResponseOverrideVSgMd, &_s16IntelligenceFlow16ResponseOverrideVSgMR);
          if (one-time initialization token for stextension != -1)
          {
            OUTLINED_FUNCTION_142_0(&one-time initialization token for stextension);
          }

          v112 = type metadata accessor for Logger();
          __swift_project_value_buffer(v112, static Logging.stextension);
          v113 = Logger.logObject.getter();
          v114 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_77_5(v114))
          {
            v115 = OUTLINED_FUNCTION_172();
            OUTLINED_FUNCTION_33_23(v115);
            OUTLINED_FUNCTION_100_3(&dword_25D85C000, v116, v117, "No response override matched");
            OUTLINED_FUNCTION_42_0();
          }

          v118 = type metadata accessor for RGOverrideResponse(0);
          v119 = v296;
          v120 = 1;
          goto LABEL_80;
        }

        (*(v293 + 32))(v297, v107, v65);
        v289 = type metadata accessor for DialogData(0);
        __swift_storeEnumTagSinglePayload(v292, 1, 1, v289);
        if (one-time initialization token for stextension != -1)
        {
          OUTLINED_FUNCTION_142_0(&one-time initialization token for stextension);
        }

        v121 = type metadata accessor for Logger();
        v122 = __swift_project_value_buffer(v121, static Logging.stextension);
        (*(v109 + 16))(v111, v110, v65);
        v300 = v122;
        v123 = Logger.logObject.getter();
        v124 = v111;
        v125 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v123, v125))
        {
          v126 = OUTLINED_FUNCTION_51_0();
          v127 = v65;
          v128 = OUTLINED_FUNCTION_49_0();
          *&v303[0] = v128;
          *v126 = 136315138;
          ResponseOverride.identifier.getter();
          v290 = *(v293 + 8);
          v290(v124, v127);
          v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v126 + 4) = v129;
          _os_log_impl(&dword_25D85C000, v123, v125, "Response override with identifier %s matched", v126, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v128);
          v65 = v127;
          OUTLINED_FUNCTION_42_0();
          v79 = v299;
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          v290 = *(v109 + 8);
          v290(v124, v65);
        }

        v130 = v278;
        ResponseOverride.dialog.getter();
        v131 = v263;
        v132 = __swift_getEnumTagSinglePayload(v130, 1, v263);
        v133 = v281;
        if (v132 == 1)
        {
          outlined destroy of IntentApplication?(v130, &_s16IntelligenceFlow22ResponseOverrideDialogOSgMd, &_s16IntelligenceFlow22ResponseOverrideDialogOSgMR);
          v134 = 0;
          v135 = v280;
          goto LABEL_57;
        }

        v256 = a3;
        v136 = v279;
        (*(v281 + 32))(v279, v130, v131);
        v137 = *(v133 + 16);
        v138 = v268;
        v137(v268, v136, v131);
        v139 = (*(v133 + 88))(v138, v131);
        v140 = v282;
        if (v139 == *MEMORY[0x277D1CF78])
        {
          (*(v133 + 96))(v138, v131);
          v141 = v264;
          v142 = v265;
          v143 = v266;
          (*(v265 + 32))(v264, v138, v266);
          v144 = v257;
          (*(v142 + 16))(v257, v141, v143);
          v145 = Logger.logObject.getter();
          v146 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v145, v146))
          {
            v147 = OUTLINED_FUNCTION_51_0();
            v148 = OUTLINED_FUNCTION_49_0();
            *&v303[0] = v148;
            *v147 = 136315138;
            lazy protocol witness table accessor for type ResponseDialog and conformance ResponseDialog();
            Encodable.asJSONString.getter();
            v149 = *(v142 + 8);
            v149(v144, v143);
            v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v147 + 4) = v150;
            _os_log_impl(&dword_25D85C000, v145, v146, "Overriding dialog with the following static dialog: %s", v147, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v148);
            OUTLINED_FUNCTION_42_0();
            v151 = v149;
            OUTLINED_FUNCTION_42_0();
          }

          else
          {

            v151 = *(v142 + 8);
            v151(v144, v143);
          }

          a3 = v256;
          v65 = v267;
          v160 = v264;
          ResponseDialog.fullSpeak.getter();
          v79 = v299;
          v161 = v281;
          if (!v162)
          {
            ResponseDialog.fullPrint.getter();
          }

          LocalizedStringResource.init(stringLiteral:)();
          ResponseDialog.fullPrint.getter();
          LocalizedStringResource.init(stringLiteral:)();
          v163 = v260;
          _SpeakableString.init(spoken:printed:)();
          v151(v160, v266);
          (*(v161 + 8))(v279, v263);
          v164 = v292;
          outlined destroy of IntentApplication?(v292, &_s10OmniSearch10DialogDataVSgMd, &_s10OmniSearch10DialogDataVSgMR);
          v165 = v289;
          v166 = v289[5];
          v167 = type metadata accessor for URL();
          __swift_storeEnumTagSinglePayload(&v164[v166], 1, 1, v167);
          v168 = v165[8];
          v169 = v163;
          v170 = v262;
          (*(v261 + 32))(&v164[v168], v169, v262);
          __swift_storeEnumTagSinglePayload(&v164[v168], 0, 1, v170);
          *v164 = 0;
          *(v164 + 1) = 0;
          *&v164[v165[6]] = 0;
          v171 = &v164[v165[7]];
          *v171 = 0;
          *(v171 + 1) = 0;
          __swift_storeEnumTagSinglePayload(v164, 0, 1, v165);
          v134 = 0;
          v135 = v280;
LABEL_57:

          ResponseOverride.behavior.getter();
          v192 = v291;
          v193 = v283;
          if (__swift_getEnumTagSinglePayload(v291, 1, v283) == 1)
          {
            v194 = OUTLINED_FUNCTION_5_49();
            v195(v194);

            outlined destroy of IntentApplication?(v192, &_s16IntelligenceFlow24ResponseOverrideBehaviorVSgMd, &_s16IntelligenceFlow24ResponseOverrideBehaviorVSgMR);
LABEL_79:
            v244 = v296;
            outlined init with take of DialogData?(v292, v296, &_s10OmniSearch10DialogDataVSgMd, &_s10OmniSearch10DialogDataVSgMR);
            v118 = type metadata accessor for RGOverrideResponse(0);
            *(v244 + *(v118 + 20)) = v134;
            *(v244 + *(v118 + 24)) = a3;
            v119 = v244;
            v120 = 0;
LABEL_80:
            __swift_storeEnumTagSinglePayload(v119, v120, 1, v118);
            return __swift_destroy_boxed_opaque_existential_1Tm(v304);
          }

          (*(v135 + 32))(v79, v192, v193);
          if (ResponseOverrideBehavior.blockAllCustomEntities.getter())
          {

            v196 = Logger.logObject.getter();
            v197 = static os_log_type_t.info.getter();
            if (OUTLINED_FUNCTION_77_5(v197))
            {
              v198 = OUTLINED_FUNCTION_172();
              OUTLINED_FUNCTION_33_23(v198);
              OUTLINED_FUNCTION_100_3(&dword_25D85C000, v199, v200, "Response override blocking all search entities");
              OUTLINED_FUNCTION_6_40();
            }

            v201 = OUTLINED_FUNCTION_5_49();
            v202(v201);
            a3 = MEMORY[0x277D84F90];
            v134 = 1;
          }

          else
          {
            v203 = *(ResponseOverrideBehavior.customEntityIndicesToBlock.getter() + 16);

            v204 = v282;
            if (v203)
            {

              v205 = *(v135 + 16);
              v206 = v135;
              v207 = v248;
              v208 = v79;
              v209 = v283;
              v205(v248, v208, v283);
              v210 = Logger.logObject.getter();
              v211 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v210, v211))
              {
                v212 = OUTLINED_FUNCTION_51_0();
                v213 = OUTLINED_FUNCTION_49_0();
                LODWORD(v291) = v211;
                v214 = v213;
                *&v303[0] = v213;
                *v212 = 136315138;
                ResponseOverrideBehavior.customEntityIndicesToBlock.getter();
                MEMORY[0x25F89F8A0]();

                (*(v280 + 8))(v207, v209);
                v215 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

                v216 = v212;
                v204 = v282;
                *(v216 + 1) = v215;
                _os_log_impl(&dword_25D85C000, v210, v291, "Response override blocking custom entities at indices %s", v216, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v214);
                v217 = v280;
                OUTLINED_FUNCTION_42_0();
                OUTLINED_FUNCTION_42_0();
              }

              else
              {

                v217 = v206;
                (*(v206 + 8))(v207, v209);
              }

              v221 = Logger.logObject.getter();
              v222 = static os_log_type_t.info.getter();
              v223 = OUTLINED_FUNCTION_77_5(v222);
              v79 = v299;
              if (v223)
              {
                v224 = OUTLINED_FUNCTION_172();
                OUTLINED_FUNCTION_33_23(v224);
                OUTLINED_FUNCTION_100_3(&dword_25D85C000, v225, v226, "Forcing results to be displayed on PCS path");
                OUTLINED_FUNCTION_42_0();
              }

              MEMORY[0x28223BE20](v227);
              v246 = v79;
              specialized Sequence.filter(_:)(partial apply for closure #2 in RGOverrideMatcher.checkForRGOverride(query:results:), v245, v204);
              v229 = v228;
              v230 = *(v228 + 16);
              if (v230)
              {
                *&v303[0] = MEMORY[0x277D84F90];
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v230, 0);
                a3 = *&v303[0];
                v231 = v255;
                OUTLINED_FUNCTION_42_5();
                v291 = v229;
                v233 = v229 + v232;
                v300 = *(v234 + 72);
                v235 = v253;
                do
                {
                  v236 = a3;
                  v237 = v294;
                  outlined init with copy of ResponseOverrideMatcherProtocol?(v233, v294, &_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);
                  v238 = v237;
                  v239 = v295;
                  outlined init with take of DialogData?(v238, v295, &_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);
                  outlined init with take of SearchEntity(v239 + *(v231 + 48), v235);
                  *&v303[0] = v236;
                  v241 = *(v236 + 16);
                  v240 = *(v236 + 24);
                  if (v241 >= v240 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v240 > 1, v241 + 1, 1);
                    v231 = v255;
                    v236 = *&v303[0];
                  }

                  *(v236 + 16) = v241 + 1;
                  OUTLINED_FUNCTION_42_5();
                  outlined init with take of SearchEntity(v235, v236 + v242 + *(v243 + 72) * v241);
                  v233 += v300;
                  --v230;
                  a3 = v236;
                }

                while (v230);
                v290(v297, v267);

                v134 = 1;
                v220 = v283;
                v135 = v280;
                v79 = v299;
              }

              else
              {

                v290(v297, v65);
                a3 = MEMORY[0x277D84F90];
                v134 = 1;
                v220 = v283;
                v135 = v217;
              }

              goto LABEL_78;
            }

            v218 = OUTLINED_FUNCTION_5_49();
            v219(v218);
          }

          v220 = v283;
LABEL_78:
          (*(v135 + 8))(v79, v220);
          goto LABEL_79;
        }

        if (v139 == *MEMORY[0x277D1CF88])
        {
          v152 = *(v133 + 8);
          v153 = v263;
          v152(v268, v263);
          v154 = Logger.logObject.getter();
          v155 = static os_log_type_t.error.getter();
          v156 = OUTLINED_FUNCTION_77_5(v155);
          v135 = v280;
          if (v156)
          {
            v157 = OUTLINED_FUNCTION_172();
            OUTLINED_FUNCTION_33_23(v157);
            OUTLINED_FUNCTION_100_3(&dword_25D85C000, v158, v159, "Received a deprecated ResponseOverrideDialog of type CAT template");
            OUTLINED_FUNCTION_6_40();
          }

          v152(v279, v153);
          v134 = 0;
          v79 = v299;
          a3 = v256;
        }

        else
        {
          v135 = v280;
          if (v139 != *MEMORY[0x277D1CF80])
          {
            v179 = v252;
            v180 = v279;
            v181 = v263;
            v137(v252, v279, v263);
            v182 = Logger.logObject.getter();
            v183 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v182, v183))
            {
              v184 = OUTLINED_FUNCTION_51_0();
              v288 = v184;
              v185 = OUTLINED_FUNCTION_49_0();
              *&v303[0] = v185;
              *v184 = 136315138;
              v289 = v182;
              v137(v251, v179, v181);
              String.init<A>(describing:)();
              v186 = *(v281 + 8);
              v187 = OUTLINED_FUNCTION_21_32();
              v186(v187);
              v188 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              v189 = v288;
              v190 = v289;
              *(v288 + 1) = v188;
              v135 = v280;
              _os_log_impl(&dword_25D85C000, v190, v183, "Unknown ResponseOverrideDialog type %s", v189, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v185);
              v79 = v299;
              OUTLINED_FUNCTION_42_0();
              OUTLINED_FUNCTION_42_0();

              (v186)(v279, v181);
              v65 = v267;
            }

            else
            {

              v186 = *(v281 + 8);
              v191 = OUTLINED_FUNCTION_21_32();
              v186(v191);
              (v186)(v180, v181);
              v65 = v267;
              v135 = v280;
            }

            (v186)(v268, v181);
            v134 = 0;
            a3 = v256;
            goto LABEL_57;
          }

          v172 = Logger.logObject.getter();
          v173 = static os_log_type_t.info.getter();
          v174 = OUTLINED_FUNCTION_77_5(v173);
          v175 = v279;
          if (v174)
          {
            v176 = OUTLINED_FUNCTION_172();
            OUTLINED_FUNCTION_33_23(v176);
            OUTLINED_FUNCTION_100_3(&dword_25D85C000, v177, v178, "RG override specifies falling back to PCS");
            OUTLINED_FUNCTION_6_40();
          }

          (*(v281 + 8))(v175, v263);
          v134 = 1;
          a3 = v140;
        }

        v65 = v267;
        goto LABEL_57;
      }

      outlined destroy of IntentApplication?(v302, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
    }

    v274 = 0;
    v275 = 0;
    v276 = 0;
    v277 = 0;
    v78 = a3;
    goto LABEL_16;
  }

  outlined destroy of IntentApplication?(v303, &_s10OmniSearch31ResponseOverrideMatcherProtocol_pSgMd, &_s10OmniSearch31ResponseOverrideMatcherProtocol_pSgMR);
  if (one-time initialization token for stextension != -1)
  {
    OUTLINED_FUNCTION_142_0(&one-time initialization token for stextension);
  }

  v80 = type metadata accessor for Logger();
  __swift_project_value_buffer(v80, static Logging.stextension);
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_77_5(v82))
  {
    v83 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_33_23(v83);
    OUTLINED_FUNCTION_100_3(&dword_25D85C000, v84, v85, "Unable to check RG override due to initialization failure, skipping");
    OUTLINED_FUNCTION_42_0();
  }

  v86 = type metadata accessor for RGOverrideResponse(0);
  return __swift_storeEnumTagSinglePayload(v296, 1, 1, v86);
}

BOOL closure #2 in RGOverrideMatcher.checkForRGOverride(query:results:)(uint64_t *a1)
{
  v2 = ResponseOverrideBehavior.customEntityIndicesToBlock.getter();
  LOBYTE(a1) = specialized Sequence<>.contains(_:)(*a1, v2);

  return (a1 & 1) == 0;
}

void specialized Sequence.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v30 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v25 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = 0;
  v14 = *(a3 + 16);
  v28 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v14 == v13)
    {

      return;
    }

    if (v13 >= *(a3 + 16))
    {
      break;
    }

    v15 = *(type metadata accessor for SearchEntity(0) - 8);
    v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13;
    v17 = *(v5 + 48);
    *v9 = v13;
    outlined init with copy of SearchEntity(v16, v9 + v17);
    outlined init with take of DialogData?(v9, v12, &_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);
    v18 = v29(v12);
    if (v3)
    {
      outlined destroy of IntentApplication?(v12, &_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);

      return;
    }

    if (v18)
    {
      outlined init with take of DialogData?(v12, v27, &_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v28;
      v31 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 16) + 1, 1);
        v20 = v31;
      }

      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v28 = v22 + 1;
        v25 = v22;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v23 = v28;
        v22 = v25;
        v20 = v31;
      }

      ++v13;
      *(v20 + 16) = v23;
      v24 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v28 = v20;
      outlined init with take of DialogData?(v27, v20 + v24 + *(v26 + 72) * v22, &_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);
    }

    else
    {
      outlined destroy of IntentApplication?(v12, &_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);
      ++v13;
    }
  }

  __break(1u);
}

uint64_t RGOverrideResponse.init(dialogData:fallbackToPCS:filteredResults:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with take of DialogData?(a1, a4, &_s10OmniSearch10DialogDataVSgMd, &_s10OmniSearch10DialogDataVSgMR);
  result = type metadata accessor for RGOverrideResponse(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t RGOverrideMatcher.__deallocating_deinit()
{
  outlined destroy of IntentApplication?(v0 + 16, &_s10OmniSearch31ResponseOverrideMatcherProtocol_pSgMd, &_s10OmniSearch31ResponseOverrideMatcherProtocol_pSgMR);
  OUTLINED_FUNCTION_16_10();

  return swift_deallocClassInstance();
}

uint64_t RGOverrideResponse.filteredResults.getter()
{
  type metadata accessor for RGOverrideResponse(0);
}

uint64_t type metadata accessor for RGOverrideResponse(uint64_t a1)
{
  result = type metadata singleton initialization cache for RGOverrideResponse;
  if (!type metadata singleton initialization cache for RGOverrideResponse)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of SearchEntity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchEntity(uint64_t a1)
{
  v2 = type metadata accessor for SearchEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of DialogData?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_34_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_17();
  (*(v6 + 32))(v4, v5);
  return v4;
}

unint64_t lazy protocol witness table accessor for type ResponseDialog and conformance ResponseDialog()
{
  result = lazy protocol witness table cache variable for type ResponseDialog and conformance ResponseDialog;
  if (!lazy protocol witness table cache variable for type ResponseDialog and conformance ResponseDialog)
  {
    type metadata accessor for ResponseDialog();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResponseDialog and conformance ResponseDialog);
  }

  return result;
}

uint64_t outlined init with copy of ResponseOverrideMatcherProtocol?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_34_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_17();
  (*(v6 + 16))(v4, v5);
  return v4;
}

void type metadata completion function for RGOverrideResponse(uint64_t a1)
{
  type metadata accessor for DialogData?(319, &lazy cache variable for type metadata for DialogData?, type metadata accessor for DialogData, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DialogData?(319, &lazy cache variable for type metadata for [SearchEntity], type metadata accessor for SearchEntity, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for DialogData?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void OUTLINED_FUNCTION_6_40()
{

  JUMPOUT(0x25F8A1050);
}

double OUTLINED_FUNCTION_18_25(__n128 a1, uint64_t a2, uint64_t a3, ...)
{
  v3[1] = a1;

  swift_beginAccess();
  return result;
}

id SearchContext.location.getter(uint64_t a1)
{
  EntityProperty.wrappedValue.getter();
  EntityProperty.wrappedValue.getter();
  return [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v2 longitude:v2];
}

uint64_t key path setter for SearchContext.didPSCFire : SearchContext(unsigned __int8 *a1, const void *a2)
{
  memcpy(v4, a2, sizeof(v4));
  outlined init with copy of SearchContext(v4, __dst);
  SearchContext.didPSCFire.setter();
  memcpy(__dst, a2, sizeof(__dst));
  return outlined destroy of SearchContext(__dst);
}

uint64_t (*SearchContext.didPSCFire.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t (*SearchContext.latitude.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchContext.latitude : SearchContext()
{
  OUTLINED_FUNCTION_10_40();
  v2 = *v1;
  v10 = OUTLINED_FUNCTION_14_32(v1, v3, v4, v5, v6, v7, v8, v9, v28);
  v18 = OUTLINED_FUNCTION_13_32(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67);
  v19 = v0(v18, v2);
  OUTLINED_FUNCTION_5_50(v19, v20, v21, v22, v23, v24, v25, v26, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68);
  return outlined destroy of SearchContext(v69);
}

uint64_t (*SearchContext.longitude.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchContext.onScreenEntities.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchContext.asrSpeechPackageData : SearchContext(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8[-v5];
  outlined init with copy of IntentFile?(a1, &v8[-v5]);
  memcpy(v8, a2, sizeof(v8));
  outlined init with copy of SearchContext(v8, v9);
  SearchContext.asrSpeechPackageData.setter(v6);
  memcpy(v9, a2, sizeof(v9));
  return outlined destroy of SearchContext(v9);
}

uint64_t SearchContext.asrSpeechPackageData.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v3 = OUTLINED_FUNCTION_114(v2);
  MEMORY[0x28223BE20](v3);
  outlined init with copy of IntentFile?(a1, &v6 - v4);
  EntityProperty.wrappedValue.setter();
  return outlined destroy of IntentFile?(a1);
}

uint64_t (*SearchContext.asrSpeechPackageData.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchContext.assistantId : SearchContext(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  memcpy(v12, a2, sizeof(v12));

  outlined init with copy of SearchContext(v12, __dst);
  SearchContext.assistantId.setter(v3, v4, v5, v6, v7, v8, v9, v10);
  memcpy(__dst, a2, sizeof(__dst));
  return outlined destroy of SearchContext(__dst);
}

uint64_t (*SearchContext.assistantId.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchContext.responseMode.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchContext.deviceRestrictionsRawValue.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchContext.isEyesFree.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchContext.isMultiUser.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchContext.isVoiceTriggerEnabled.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchContext.isTextToSpeechEnabled.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchContext.isTriggerlessFollowup.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchContext.inputOriginName.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchContext.onScreenEntities : SearchContext()
{
  OUTLINED_FUNCTION_10_40();
  v2 = *v1;
  OUTLINED_FUNCTION_14_32(v1, v3, v4, v5, v6, v7, v8, v9, v27);

  OUTLINED_FUNCTION_13_32(v10, v11, v12, v13, v14, v15, v16, v17, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66);
  v18 = v0(v2);
  OUTLINED_FUNCTION_5_50(v18, v19, v20, v21, v22, v23, v24, v25, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67);
  return outlined destroy of SearchContext(v68);
}

uint64_t (*SearchContext.bargeInModes.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchContext.isOnlyUserInHome.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchContext.responseMode : SearchContext()
{
  OUTLINED_FUNCTION_10_40();
  v2 = *v1;
  v3 = v1[1];
  OUTLINED_FUNCTION_14_32(v1, v4, v5, v6, v7, v8, v9, v10, v28);

  OUTLINED_FUNCTION_13_32(v11, v12, v13, v14, v15, v16, v17, v18, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67);
  v19 = v0(v2, v3);
  OUTLINED_FUNCTION_5_50(v19, v20, v21, v22, v23, v24, v25, v26, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68);
  return outlined destroy of SearchContext(v69);
}

uint64_t (*SearchContext.sharedUserId.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchContext.deviceRestrictionsRawValue : SearchContext()
{
  OUTLINED_FUNCTION_10_40();
  v2 = *v1;
  v10 = OUTLINED_FUNCTION_14_32(v1, v3, v4, v5, v6, v7, v8, v9, v27);
  OUTLINED_FUNCTION_13_32(v10, v11, v12, v13, v14, v15, v16, v17, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66);
  v18 = v0(v2);
  OUTLINED_FUNCTION_5_50(v18, v19, v20, v21, v22, v23, v24, v25, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67);
  return outlined destroy of SearchContext(v68);
}

uint64_t (*SearchContext.userIdentityClassificationValue.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchContext.onScreenText : SearchContext(uint64_t *a1, const void *a2)
{
  memcpy(v4, a2, sizeof(v4));

  outlined init with copy of SearchContext(v4, __dst);
  SearchContext.onScreenText.setter();
  memcpy(__dst, a2, sizeof(__dst));
  return outlined destroy of SearchContext(__dst);
}

uint64_t (*SearchContext.onScreenText.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchContext.isEyesFree : SearchContext()
{
  OUTLINED_FUNCTION_10_40();
  v2 = *v1;
  v10 = OUTLINED_FUNCTION_14_32(v1, v3, v4, v5, v6, v7, v8, v9, v27);
  OUTLINED_FUNCTION_13_32(v10, v11, v12, v13, v14, v15, v16, v17, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66);
  v18 = v0(v2);
  OUTLINED_FUNCTION_5_50(v18, v19, v20, v21, v22, v23, v24, v25, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67);
  return outlined destroy of SearchContext(v68);
}

uint64_t SearchContext.isPersonal.setter(char a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  v4[0] = a1;
  EntityProperty.wrappedValue.setter();
  result = EntityProperty.wrappedValue.getter();
  if (a1 == 2)
  {
    outlined init with copy of SearchContext(__dst, v4);
    EntityProperty.wrappedValue.getter();
    v4[0] = !v4[0];
    EntityProperty.wrappedValue.setter();
    return outlined destroy of SearchContext(__dst);
  }

  return result;
}

void (*SearchContext.isPersonal.modify())(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x150uLL);
  v3 = OUTLINED_FUNCTION_32_1(v2);
  memcpy(v3, v0, 0xA0uLL);
  *(v1 + 320) = *(v1 + 152);
  EntityProperty.wrappedValue.getter();
  *(v1 + 328) = *(v1 + 160);
  return SearchContext.isPersonal.modify;
}

void SearchContext.isPersonal.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1;
  v2[160] = *(*a1 + 328);
  v3 = v2 + 160;
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.getter();
  if (*v3 == 2)
  {
    outlined init with copy of SearchContext(v1, v3);
    EntityProperty.wrappedValue.getter();
    v1[160] = (v1[329] & 1) == 0;
    EntityProperty.wrappedValue.setter();
    outlined destroy of SearchContext(v1);
  }

  free(v1);
}

uint64_t SearchContext.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v3 = OUTLINED_FUNCTION_114(v2);
  MEMORY[0x28223BE20](v3);
  v23 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v22 = &v15 - v6;
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = OUTLINED_FUNCTION_114(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySbSgGMd, &_s10AppIntents14EntityPropertyCySbSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *a1 = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySdGMd, &_s10AppIntents14EntityPropertyCySdGMR);
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  v21 = EntityProperty<>.init(title:)();
  a1[1] = v21;
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  v20 = EntityProperty<>.init(title:)();
  a1[2] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch0C5MatchVGGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch0C5MatchVGGMR);
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type EntityMatch and conformance EntityMatch();
  v19 = EntityProperty<>.init(title:)();
  a1[3] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  v18 = EntityProperty<>.init(title:)();
  a1[4] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v17 = EntityProperty<>.init(title:)();
  a1[5] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  v16 = EntityProperty<>.init(title:)();
  a1[6] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySiGMd, &_s10AppIntents14EntityPropertyCySiGMR);
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  v15 = EntityProperty<>.init(title:)();
  a1[7] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySbGMd, &_s10AppIntents14EntityPropertyCySbGMR);
  LocalizedStringResource.init(stringLiteral:)();
  a1[8] = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  a1[9] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  a1[10] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  a1[11] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  a1[12] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  a1[13] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  LocalizedStringResource.init(stringLiteral:)();
  a1[14] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  a1[15] = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  a1[16] = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_28_9();
  LocalizedStringResource.init(stringLiteral:)();
  a1[17] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  a1[18] = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  a1[19] = EntityProperty<>.init(title:)();
  v26[0] = 0;
  EntityProperty.wrappedValue.setter();
  v26[0] = 0;
  EntityProperty.wrappedValue.setter();
  v26[0] = MEMORY[0x277D84F90];
  EntityProperty.wrappedValue.setter();
  type metadata accessor for IntentFile();
  v9 = v22;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  outlined init with copy of IntentFile?(v9, v23);
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentFile?(v9);
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  EntityProperty.wrappedValue.setter();
  v26[0] = 0;
  v26[1] = 0;
  EntityProperty.wrappedValue.setter();
  v26[0] = 1;
  EntityProperty.wrappedValue.setter();
  LOBYTE(v26[0]) = 0;
  EntityProperty.wrappedValue.setter();
  memcpy(v26, a1, 0xA0uLL);
  OUTLINED_FUNCTION_8_45();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.getter();
  if (v24 == 2)
  {
    outlined init with copy of SearchContext(v26, &v24);
    EntityProperty.wrappedValue.getter();
    LOBYTE(v24) = (v24 & 1) == 0;
    EntityProperty.wrappedValue.setter();
    outlined destroy of SearchContext(v26);
  }

  v23 = v26[18];
  OUTLINED_FUNCTION_8_45();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_8_45();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_8_45();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_8_45();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_8_45();
  EntityProperty.wrappedValue.setter();
  v24 = 0;
  v25 = 0;
  EntityProperty.wrappedValue.setter();
  v24 = MEMORY[0x277D84F90];
  EntityProperty.wrappedValue.setter();
  v24 = 0;
  v25 = 0;
  EntityProperty.wrappedValue.setter();
  v24 = 0;
  EntityProperty.wrappedValue.setter();
  v24 = 0;
  return EntityProperty.wrappedValue.setter();
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance SearchContext(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchContext and conformance SearchContext();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance SearchContext(uint64_t a1)
{
  lazy protocol witness table accessor for type SearchContext and conformance SearchContext();

  return UUID.init()();
}

uint64_t static SearchContext.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_80(&one-time initialization token for typeDisplayRepresentation);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchContext.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance SearchContext(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchContext and conformance SearchContext();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t SearchContext.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  v1 = OUTLINED_FUNCTION_114(v0);
  MEMORY[0x28223BE20](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  v3 = OUTLINED_FUNCTION_114(v2);
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v5 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v6 = OUTLINED_FUNCTION_114(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v7);
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v17);

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
  LocalizedStringResource.init(stringInterpolation:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v4);
  type metadata accessor for DisplayRepresentation.Image();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchContext(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchContext and conformance SearchContext();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t static SearchContext.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_80(&one-time initialization token for typeDisplayRepresentation);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchContext.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SearchContext.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_80(&one-time initialization token for typeDisplayRepresentation);
  }

  v1 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v1, static SearchContext.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t SearchContext.inputOrigin.getter(uint64_t a1)
{
  EntityProperty.wrappedValue.getter();
  if (v6)
  {
    return InputOrigin.init(rawValue:)();
  }

  type metadata accessor for InputOrigin();
  OUTLINED_FUNCTION_92();
  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_0_80(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_5_50(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  return memcpy(va, v28, 0xA0uLL);
}

uint64_t OUTLINED_FUNCTION_11_45()
{

  return EntityProperty.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_13_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  return outlined init with copy of SearchContext(&a9, va);
}

void *OUTLINED_FUNCTION_14_32(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, a2, 0xA0uLL);
}

BOOL specialized Sequence<>.contains(_:)(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xE500000000000000;
    v8 = 0x6D72616C61;
    switch(*v4)
    {
      case 1:
        v7 = 0xE400000000000000;
        v8 = 1802465122;
        break;
      case 2:
        v7 = 0xE800000000000000;
        goto LABEL_22;
      case 3:
        v7 = 0xE700000000000000;
        v8 = 0x746361746E6F63;
        break;
      case 4:
        v8 = 0x61737265766E6F63;
        v10 = 1852795252;
        goto LABEL_16;
      case 5:
        v7 = 0xED0000656C694673;
        goto LABEL_35;
      case 6:
        v7 = 0xEF7265646C6F4673;
LABEL_35:
        v8 = 0x746E656D75636F64;
        break;
      case 7:
        v7 = 0xE800000000000000;
        v8 = 0x6D726F6665657266;
        break;
      case 8:
        v7 = 0xE700000000000000;
        v8 = 0x6C616E72756F6ALL;
        break;
      case 9:
        v7 = 0xE700000000000000;
        v11 = 0x746F6E79656BLL;
        goto LABEL_46;
      case 0xA:
        v7 = 0xE400000000000000;
        v8 = 1818845549;
        break;
      case 0xB:
        v7 = 0xE600000000000000;
        v8 = 0x79726F6D656DLL;
        break;
      case 0xC:
        v7 = 0xE700000000000000;
        v11 = 0x67617373656DLL;
        goto LABEL_46;
      case 0xD:
        v7 = 0xE400000000000000;
        v8 = 1702129518;
        break;
      case 0xE:
        v8 = 0x646C6F4665746F6ELL;
        v7 = 0xEA00000000007265;
        break;
      case 0xF:
        v8 = 0x46737265626D756ELL;
        v7 = 0xEB00000000656C69;
        break;
      case 0x10:
        v8 = 0x6C69467365676170;
        v7 = 0xE900000000000065;
        break;
      case 0x11:
        v9 = 1852794992;
        goto LABEL_28;
      case 0x12:
        v13 = 1953458288;
        goto LABEL_41;
      case 0x13:
        v8 = 0x626C416F746F6870;
        v7 = 0xEA00000000006D75;
        break;
      case 0x14:
        v7 = 0xE800000000000000;
        goto LABEL_32;
      case 0x15:
        v7 = 0xEC0000007473694CLL;
LABEL_32:
        v8 = 0x7265646E696D6572;
        break;
      case 0x16:
        v7 = 0xE300000000000000;
        v8 = 6447476;
        break;
      case 0x17:
        v8 = 0x72656D6974;
        break;
      case 0x18:
        v13 = 1701079414;
        goto LABEL_41;
      case 0x19:
        OUTLINED_FUNCTION_124_1();
        v7 = v12 + 7;
        break;
      case 0x1A:
        OUTLINED_FUNCTION_124_1();
        v7 = v14 + 10;
        goto LABEL_50;
      case 0x1B:
        v7 = 0xE600000000000000;
        v8 = 0x74656C6C6177;
        break;
      case 0x1C:
        v7 = 0xE700000000000000;
        v11 = 0x746973626577;
LABEL_46:
        v8 = v11 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
        break;
      case 0x1D:
        v7 = 0xE800000000000000;
        v8 = 0x616D61726F6E6170;
        break;
      case 0x1E:
        v8 = 0x68736E6565726373;
        v7 = 0xEA0000000000746FLL;
        break;
      case 0x1F:
        v7 = 0xE600000000000000;
        v8 = 0x6569666C6573;
        break;
      case 0x20:
        v13 = 1836018803;
LABEL_41:
        v8 = v13 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
        break;
      case 0x21:
        v8 = 0x566C616974617073;
        v10 = 1868915817;
LABEL_16:
        v7 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 0x22:
        v7 = 0xED0000746E657645;
LABEL_22:
        v8 = 0x7261646E656C6163;
        break;
      case 0x23:
        v7 = 0xE400000000000000;
        v8 = 1802398060;
        break;
      case 0x24:
        v9 = 1769369453;
LABEL_28:
        v8 = v9 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
        break;
      case 0x25:
        v7 = 0xE600000000000000;
        v8 = 0x697261666173;
        break;
      case 0x26:
        v7 = 0xEA0000000000736FLL;
LABEL_50:
        v8 = 0x6D654D6563696F76;
        break;
      default:
        break;
    }

    v15 = 0xE500000000000000;
    v16 = 0x6D72616C61;
    switch(a1)
    {
      case 1:
        v15 = 0xE400000000000000;
        v16 = 1802465122;
        break;
      case 2:
        v15 = 0xE800000000000000;
        goto LABEL_69;
      case 3:
        v15 = 0xE700000000000000;
        v16 = 0x746361746E6F63;
        break;
      case 4:
        v16 = 0x61737265766E6F63;
        v18 = 1852795252;
        goto LABEL_63;
      case 5:
        v15 = 0xED0000656C694673;
        goto LABEL_82;
      case 6:
        v15 = 0xEF7265646C6F4673;
LABEL_82:
        v16 = 0x746E656D75636F64;
        break;
      case 7:
        v15 = 0xE800000000000000;
        v16 = 0x6D726F6665657266;
        break;
      case 8:
        v15 = 0xE700000000000000;
        v16 = 0x6C616E72756F6ALL;
        break;
      case 9:
        v15 = 0xE700000000000000;
        v19 = 0x746F6E79656BLL;
        goto LABEL_93;
      case 10:
        v15 = 0xE400000000000000;
        v16 = 1818845549;
        break;
      case 11:
        v15 = 0xE600000000000000;
        v16 = 0x79726F6D656DLL;
        break;
      case 12:
        v15 = 0xE700000000000000;
        v19 = 0x67617373656DLL;
        goto LABEL_93;
      case 13:
        v15 = 0xE400000000000000;
        v16 = 1702129518;
        break;
      case 14:
        v16 = 0x646C6F4665746F6ELL;
        v15 = 0xEA00000000007265;
        break;
      case 15:
        v16 = 0x46737265626D756ELL;
        v15 = 0xEB00000000656C69;
        break;
      case 16:
        v16 = 0x6C69467365676170;
        v15 = 0xE900000000000065;
        break;
      case 17:
        v17 = 1852794992;
        goto LABEL_75;
      case 18:
        v21 = 1953458288;
        goto LABEL_88;
      case 19:
        v16 = 0x626C416F746F6870;
        v15 = 0xEA00000000006D75;
        break;
      case 20:
        v15 = 0xE800000000000000;
        goto LABEL_79;
      case 21:
        v15 = 0xEC0000007473694CLL;
LABEL_79:
        v16 = 0x7265646E696D6572;
        break;
      case 22:
        v15 = 0xE300000000000000;
        v16 = 6447476;
        break;
      case 23:
        v16 = 0x72656D6974;
        break;
      case 24:
        v21 = 1701079414;
        goto LABEL_88;
      case 25:
        OUTLINED_FUNCTION_124_1();
        v15 = v20 + 7;
        break;
      case 26:
        OUTLINED_FUNCTION_124_1();
        v15 = v22 + 10;
        goto LABEL_97;
      case 27:
        v15 = 0xE600000000000000;
        v16 = 0x74656C6C6177;
        break;
      case 28:
        v15 = 0xE700000000000000;
        v19 = 0x746973626577;
LABEL_93:
        v16 = v19 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
        break;
      case 29:
        v15 = 0xE800000000000000;
        v16 = 0x616D61726F6E6170;
        break;
      case 30:
        v16 = 0x68736E6565726373;
        v15 = 0xEA0000000000746FLL;
        break;
      case 31:
        v15 = 0xE600000000000000;
        v16 = 0x6569666C6573;
        break;
      case 32:
        v21 = 1836018803;
LABEL_88:
        v16 = v21 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
        break;
      case 33:
        v16 = 0x566C616974617073;
        v18 = 1868915817;
LABEL_63:
        v15 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 34:
        v15 = 0xED0000746E657645;
LABEL_69:
        v16 = 0x7261646E656C6163;
        break;
      case 35:
        v15 = 0xE400000000000000;
        v16 = 1802398060;
        break;
      case 36:
        v17 = 1769369453;
LABEL_75:
        v16 = v17 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
        break;
      case 37:
        v15 = 0xE600000000000000;
        v16 = 0x697261666173;
        break;
      case 38:
        v15 = 0xEA0000000000736FLL;
LABEL_97:
        v16 = 0x6D654D6563696F76;
        break;
      default:
        break;
    }

    if (v8 == v16 && v7 == v15)
    {

      return v5 != 0;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v4;
  }

  while ((v24 & 1) == 0);
  return v5 != 0;
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = PreferredType.rawValue.getter();
    v8 = v7;
    if (v6 == PreferredType.rawValue.getter() && v8 == v9)
    {

      return v4 != 0;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v3;
  }

  while ((v11 & 1) == 0);
  return v4 != 0;
}

{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t Array<A>.rankLocalResults(query:)(uint64_t a1, uint64_t a2)
{
  v75 = a2;
  v74 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_109();
  v71 = v6 - v7;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v8);
  v10 = &v71 - v9;
  MEMORY[0x28223BE20](v11);
  v72 = &v71 - v12;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v13);
  v15 = &v71 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_109();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v71 - v21;
  v23 = *(type metadata accessor for UserQuery(0) + 28);
  outlined init with copy of StructuredQueryEntity?(a1 + v23, v22);
  Entity = type metadata accessor for StructuredQueryEntity(0);
  if (__swift_getEnumTagSinglePayload(v22, 1, Entity) == 1)
  {
    v25 = v22;
LABEL_3:
    outlined destroy of StructuredQueryEntity?(v25);
    goto LABEL_10;
  }

  EntityProperty.wrappedValue.getter();
  v26 = v76;
  if (!v76)
  {
    OUTLINED_FUNCTION_1_74();
    v30 = v22;
LABEL_9:
    _s10OmniSearch0B6ResultVWOhTm_9(v30, v29);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_74();
  _s10OmniSearch0B6ResultVWOhTm_9(v22, v27);
  v28 = specialized Sequence<>.contains(_:)(3, v26);

  if (v28)
  {
    goto LABEL_10;
  }

  outlined init with copy of StructuredQueryEntity?(a1 + v23, v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, Entity) == 1)
  {
    v25 = v19;
    goto LABEL_3;
  }

  EntityProperty.wrappedValue.getter();
  v68 = v76;
  if (!v76)
  {
    OUTLINED_FUNCTION_1_74();
    v30 = v19;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_74();
  _s10OmniSearch0B6ResultVWOhTm_9(v19, v69);
  v70 = specialized Sequence<>.contains(_:)(2, v68);

  if (!v70)
  {
    v32 = v75;

    return v32;
  }

LABEL_10:
  v31 = 0;
  v32 = v75;
  v33 = *(v75 + 16);
  v73 = MEMORY[0x277D84F90];
  while (v33 != v31)
  {
    OUTLINED_FUNCTION_8_46();
    v36 = v35 & ~v34;
    v37 = *(v4 + 72);
    outlined init with copy of SearchResult(v32 + v36 + v37 * v31, v15);
    switch(v15[*(v74 + 32)])
    {
      case 1:
        OUTLINED_FUNCTION_2_63();
        goto LABEL_15;
      case 2:
        OUTLINED_FUNCTION_3_58();
        goto LABEL_15;
      case 3:

        goto LABEL_18;
      default:
LABEL_15:
        v38 = OUTLINED_FUNCTION_4_53();

        if (v38)
        {
LABEL_18:
          outlined init with take of SearchResult(v15, v72);
          v40 = v73;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v76 = v40;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_11_46(*(v40 + 16));
            v40 = v76;
          }

          v43 = *(v40 + 16);
          v42 = *(v40 + 24);
          v44 = v43 + 1;
          if (v43 >= v42 >> 1)
          {
            v45 = OUTLINED_FUNCTION_6_41(v42);
            v73 = v46;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v45, v46, 1);
            v44 = v73;
            v40 = v76;
          }

          ++v31;
          *(v40 + 16) = v44;
          v73 = v40;
          outlined init with take of SearchResult(v72, v40 + v36 + v43 * v37);
          v32 = v75;
        }

        else
        {
          OUTLINED_FUNCTION_0_81();
          _s10OmniSearch0B6ResultVWOhTm_9(v15, v39);
          ++v31;
          v32 = v75;
        }

        break;
    }
  }

  if (*(v73 + 16))
  {
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logging.search);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_25D85C000, v48, v49, "Array[SearchResult]#rankLocalResults boosting UCG results", v50, 2u);
      MEMORY[0x25F8A1050](v50, -1, -1);
    }

    v51 = 0;
    v52 = MEMORY[0x277D84F90];
    while (v33 != v51)
    {
      OUTLINED_FUNCTION_8_46();
      v55 = v54 & ~v53;
      v56 = *(v4 + 72);
      outlined init with copy of SearchResult(v57 + v55 + v56 * v51, v10);
      switch(v10[*(v74 + 32)])
      {
        case 1:
          OUTLINED_FUNCTION_2_63();
          goto LABEL_33;
        case 2:
          OUTLINED_FUNCTION_3_58();
          goto LABEL_33;
        case 3:

          goto LABEL_40;
        default:
LABEL_33:
          v58 = OUTLINED_FUNCTION_4_53();

          if (v58)
          {
LABEL_40:
            OUTLINED_FUNCTION_0_81();
            _s10OmniSearch0B6ResultVWOhTm_9(v10, v63);
            ++v51;
          }

          else
          {
            outlined init with take of SearchResult(v10, v71);
            v59 = swift_isUniquelyReferenced_nonNull_native();
            v76 = v52;
            if ((v59 & 1) == 0)
            {
              OUTLINED_FUNCTION_11_46(*(v52 + 16));
              v52 = v76;
            }

            v61 = *(v52 + 16);
            v60 = *(v52 + 24);
            v62 = v61 + 1;
            if (v61 >= v60 >> 1)
            {
              v64 = OUTLINED_FUNCTION_6_41(v60);
              v66 = v65;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v64, v65, 1);
              v62 = v66;
              v52 = v76;
            }

            ++v51;
            *(v52 + 16) = v62;
            outlined init with take of SearchResult(v71, v52 + v55 + v61 * v56);
          }

          break;
      }
    }

    v76 = v73;
    specialized Array.append<A>(contentsOf:)(v52);
    return v76;
  }

  else
  {
  }

  return v32;
}

uint64_t Array<A>.dedupeLocalResults(query:)(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v76 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_109();
  v72 = v7 - v8;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v9);
  v73 = &v69 - v10;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v11);
  v13 = &v69 - v12;
  MEMORY[0x28223BE20](v14);
  v75 = &v69 - v15;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - v17;
  v77 = *(a2 + 16);
  v71 = 0;
  v74 = MEMORY[0x277D84F90];
  while (v77 != v3)
  {
    OUTLINED_FUNCTION_8_46();
    v21 = v20 & ~v19;
    v22 = *(v5 + 72);
    outlined init with copy of SearchResult(a2 + v21 + v22 * v3, v18);
    switch(v18[*(v76 + 32)])
    {
      case 1:
        OUTLINED_FUNCTION_2_63();
        goto LABEL_6;
      case 2:
        OUTLINED_FUNCTION_3_58();
        goto LABEL_6;
      case 3:

        goto LABEL_9;
      default:
LABEL_6:
        v23 = OUTLINED_FUNCTION_4_53();

        if (v23)
        {
LABEL_9:
          outlined init with take of SearchResult(v18, v75);
          v25 = v74;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v27 = v25;
          v78[0] = v25;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_12_40(*(v25 + 16));
            v27 = v78[0];
          }

          v29 = *(v27 + 16);
          v28 = *(v27 + 24);
          v30 = v29 + 1;
          if (v29 >= v28 >> 1)
          {
            v74 = v29 + 1;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1);
            v30 = v74;
            v27 = v78[0];
          }

          ++v3;
          *(v27 + 16) = v30;
          v74 = v27;
          outlined init with take of SearchResult(v75, v27 + v21 + v29 * v22);
        }

        else
        {
          OUTLINED_FUNCTION_0_81();
          _s10OmniSearch0B6ResultVWOhTm_9(v18, v24);
          ++v3;
        }

        break;
    }
  }

  v31 = *(v74 + 16);
  if (v31)
  {
    v70 = a2;
    v83 = MEMORY[0x277D84F90];
    v32 = v74;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v33 = v83;
    OUTLINED_FUNCTION_8_46();
    v36 = v32 + (v35 & ~v34);
    v75 = *(v5 + 72);
    do
    {
      outlined init with copy of SearchResult(v36, v13);
      v81 = 0;
      v82 = 0xE000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v37 = CodableNSSecureCoding.wrappedValue.getter();
      v38 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v37);
      if (v39)
      {
        v40 = v39;
      }

      else
      {
        v38 = 0;
        v40 = 0xE000000000000000;
      }

      MEMORY[0x25F89F6C0](v38, v40);

      MEMORY[0x25F89F6C0](45, 0xE100000000000000);
      SearchResultItem.associatedValue.getter(v78);
      v41 = v79;
      v42 = v80;
      __swift_project_boxed_opaque_existential_1(v78, v79);
      v43 = (*(v42 + 32))(v41, v42);
      v45 = v44;
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x25F89F6C0](v43, v45);

      v47 = v81;
      v46 = v82;
      OUTLINED_FUNCTION_0_81();
      _s10OmniSearch0B6ResultVWOhTm_9(v13, v48);
      v83 = v33;
      v50 = *(v33 + 16);
      v49 = *(v33 + 24);
      if (v50 >= v49 >> 1)
      {
        v52 = OUTLINED_FUNCTION_6_41(v49);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v52, v50 + 1, 1);
        v33 = v83;
      }

      *(v33 + 16) = v50 + 1;
      v51 = v33 + 16 * v50;
      *(v51 + 32) = v47;
      *(v51 + 40) = v46;
      v36 += v75;
      --v31;
    }

    while (v31);

    a2 = v70;
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  v53 = v71;
  v54 = v73;
  if (*(v33 + 16))
  {
    v55 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v33);
    v56 = 0;
    v57 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v77 == v56)
      {

        return v57;
      }

      OUTLINED_FUNCTION_8_46();
      v60 = v59 & ~v58;
      v61 = *(v5 + 72);
      outlined init with copy of SearchResult(a2 + v60 + v61 * v56, v54);
      v62 = closure #3 in Array<A>.dedupeLocalResults(query:)(v54, v55);
      if (v53)
      {
        break;
      }

      if (v62)
      {
        outlined init with take of SearchResult(v54, v72);
        v64 = swift_isUniquelyReferenced_nonNull_native();
        v78[0] = v57;
        if ((v64 & 1) == 0)
        {
          OUTLINED_FUNCTION_12_40(*(v57 + 16));
          v57 = v78[0];
        }

        v66 = *(v57 + 16);
        v65 = *(v57 + 24);
        if (v66 >= v65 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v65 > 1, v66 + 1, 1);
          v57 = v78[0];
        }

        ++v56;
        *(v57 + 16) = v66 + 1;
        outlined init with take of SearchResult(v72, v57 + v60 + v66 * v61);
        v54 = v73;
      }

      else
      {
        OUTLINED_FUNCTION_0_81();
        _s10OmniSearch0B6ResultVWOhTm_9(v54, v63);
        ++v56;
      }
    }

    OUTLINED_FUNCTION_0_81();
    _s10OmniSearch0B6ResultVWOhTm_9(v54, v68);

    __break(1u);
  }

  else
  {

    return a2;
  }

  return result;
}

uint64_t closure #3 in Array<A>.dedupeLocalResults(query:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResult(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(*(a1 + *(v7 + 32)))
  {
    case 3:

      return 1;
    default:
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 1;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v9 = CodableNSSecureCoding.wrappedValue.getter();
      v10 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v9);
      if (v11)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }

      v13 = 0xE000000000000000;
      if (v11)
      {
        v13 = v11;
      }

      v31 = v12;
      v32 = v13;
      MEMORY[0x25F89F6C0](45, 0xE100000000000000);
      SearchResultItem.associatedValue.getter(v28);
      v14 = v29;
      v15 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v16 = (*(v15 + 32))(v14, v15);
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x25F89F6C0](v16, v18);

      v19 = specialized Set.contains(_:)(v31, v32, a2);

      if (!v19)
      {
        return 1;
      }

      if (one-time initialization token for search != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logging.search);
      outlined init with copy of SearchResult(a1, v6);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v28[0] = v24;
        *v23 = 136315138;
        SearchResult.debugDescription.getter();
        _s10OmniSearch0B6ResultVWOhTm_9(v6, type metadata accessor for SearchResult);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v23 + 4) = v25;
        _os_log_impl(&dword_25D85C000, v21, v22, "Array[SearchResult]#dedupeLocalResults deduping results - removing: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x25F8A1050](v24, -1, -1);
        MEMORY[0x25F8A1050](v23, -1, -1);
      }

      else
      {

        _s10OmniSearch0B6ResultVWOhTm_9(v6, type metadata accessor for SearchResult);
      }

      return 0;
  }
}

uint64_t _s10OmniSearch0B6ResultVWOhTm_9(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4_53()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_11_46(uint64_t a1@<X8>)
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1 + 1, 1);
}

void OUTLINED_FUNCTION_12_40(uint64_t a1@<X8>)
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1 + 1, 1);
}

void *static SeparatorsFactory.make(with:)@<X0>(void *a1@<X8>)
{
  v180 = a1;
  v1 = type metadata accessor for Locale.LanguageCode();
  OUTLINED_FUNCTION_14();
  v181 = v2;
  MEMORY[0x28223BE20](v3);
  v176 = v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_4();
  v165 = v9;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_4();
  v168 = v11;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_4();
  v179 = v13;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_4();
  v177 = v15;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_4();
  v175 = v17;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v18);
  v20 = v156 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_4();
  v164 = v25;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_4();
  v167 = v28;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_4();
  v170 = v31;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_4();
  v163 = v33;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_4();
  v173 = v35;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7_4();
  v166 = v37;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_4();
  v171 = v39;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7_4();
  v169 = v41;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7_4();
  v174 = v43;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7_4();
  v172 = v45;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_7_4();
  v178 = v47;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v48);
  v50 = v156 - v49;
  MEMORY[0x28223BE20](v51);
  v53 = v156 - v52;
  MEMORY[0x28223BE20](v54);
  v56 = v156 - v55;
  v57 = type metadata accessor for Locale.Language();
  OUTLINED_FUNCTION_14();
  v59 = v58;
  MEMORY[0x28223BE20](v60);
  v62 = (v156 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  Locale.language.getter();
  v63 = v62;
  Locale.Language.languageCode.getter();
  v65 = *(v59 + 8);
  v64 = (v59 + 8);
  v65(v62, v57);
  MEMORY[0x25F899720](28261, 0xE200000000000000);
  __swift_storeEnumTagSinglePayload(v53, 0, 1, v1);
  v182 = v5;
  v66 = *(v5 + 48);
  outlined init with copy of Locale.LanguageCode?(v53, v20);
  outlined init with copy of Locale.LanguageCode?(v56, v20 + v66);
  v183 = v1;
  if (__swift_getEnumTagSinglePayload(v20, 1, v1) == 1)
  {
    outlined destroy of (offset: Int, element: SearchResult)(v53, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    OUTLINED_FUNCTION_2_64(v20 + v66);
    if (!v72)
    {
      goto LABEL_8;
    }

    outlined destroy of (offset: Int, element: SearchResult)(v20, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  }

  else
  {
    outlined init with copy of Locale.LanguageCode?(v20, v50);
    OUTLINED_FUNCTION_2_64(v20 + v66);
    if (v72)
    {
      outlined destroy of (offset: Int, element: SearchResult)(v53, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
      v67 = OUTLINED_FUNCTION_31_26();
      v68(v67);
LABEL_8:
      outlined destroy of (offset: Int, element: SearchResult)(v20, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
      goto LABEL_9;
    }

    v76 = v181;
    v77 = v176;
    v78 = v183;
    (*(v181 + 32))(v176, v20 + v66, v183);
    lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode();
    v79 = dispatch thunk of static Equatable.== infix(_:_:)();
    v80 = *(v76 + 8);
    v64 = (v76 + 8);
    v66 = v80;
    v80(v77, v78);
    v63 = &_s10Foundation6LocaleV12LanguageCodeVSgMd;
    OUTLINED_FUNCTION_48_16(v53);
    v80(v50, v78);
    OUTLINED_FUNCTION_48_16(v20);
    if ((v79 & 1) == 0)
    {
LABEL_9:
      v69 = v178;
      MEMORY[0x25F899720](29808, 0xE200000000000000);
      OUTLINED_FUNCTION_1_75(v69);
      v50 = v175;
      outlined init with copy of Locale.LanguageCode?(v69, v175);
      outlined init with copy of Locale.LanguageCode?(v56, v50 + v66);
      OUTLINED_FUNCTION_38_5(v50);
      if (v72)
      {
        outlined destroy of (offset: Int, element: SearchResult)(v69, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
        OUTLINED_FUNCTION_2_64(v50 + v66);
        v70 = v179;
        v71 = v177;
        if (v72)
        {
          outlined destroy of (offset: Int, element: SearchResult)(v50, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
LABEL_36:
          v182 = 544040224;
          OUTLINED_FUNCTION_39_24();
          outlined destroy of (offset: Int, element: SearchResult)(v56, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
          OUTLINED_FUNCTION_38_26();
          OUTLINED_FUNCTION_42_24();
          v82 = 25965;
          OUTLINED_FUNCTION_40_24();
          v53 = 544040224;
          v83 = 0xE400000000000000;
          v84 = &type metadata for SeparatorsPortuguese;
          goto LABEL_102;
        }
      }

      else
      {
        v63 = v172;
        outlined init with copy of Locale.LanguageCode?(v50, v172);
        OUTLINED_FUNCTION_2_64(v50 + v66);
        v70 = v179;
        if (!v72)
        {
          v89 = v181;
          v20 = v176;
          v90 = v63;
          v91 = v183;
          (*(v181 + 32))(v176, v50 + v66, v183);
          lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode();
          v66 = dispatch thunk of static Equatable.== infix(_:_:)();
          v92 = v56;
          v93 = v91;
          v64 = *(v89 + 8);
          (v64)(v20, v91);
          v63 = &_s10Foundation6LocaleV12LanguageCodeVSgMd;
          OUTLINED_FUNCTION_48_16(v178);
          v94 = v90;
          v70 = v179;
          v95 = v93;
          v56 = v92;
          (v64)(v94, v95);
          OUTLINED_FUNCTION_48_16(v50);
          v71 = v177;
          if (v66)
          {
            goto LABEL_36;
          }

LABEL_18:
          v75 = v174;
          MEMORY[0x25F899720](29286, 0xE200000000000000);
          OUTLINED_FUNCTION_1_75(v75);
          outlined init with copy of Locale.LanguageCode?(v75, v71);
          outlined init with copy of Locale.LanguageCode?(v56, v71 + v66);
          OUTLINED_FUNCTION_38_5(v71);
          if (v72)
          {
            outlined destroy of (offset: Int, element: SearchResult)(v75, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
            OUTLINED_FUNCTION_2_64(v71 + v66);
            if (v72)
            {
              outlined destroy of (offset: Int, element: SearchResult)(v71, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
LABEL_47:
              OUTLINED_FUNCTION_39_24();
              outlined destroy of (offset: Int, element: SearchResult)(v56, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
              v50 = 0xE300000000000000;
              v83 = 0xA400000000000000;
              v181 = 0x207372657620;
              v56 = 0xE600000000000000;
              v182 = 0x20736E616420;
              v178 = 0xE400000000000000;
              v179 = 544498976;
              v64 = 0xE100000000000000;
              v81 = &protocol witness table for SeparatorsFrench;
              v82 = 6909805;
              v53 = 547406624;
              v20 = 32;
              v63 = 0xE400000000000000;
              v71 = 0xE600000000000000;
              v84 = &type metadata for SeparatorsFrench;
              goto LABEL_102;
            }
          }

          else
          {
            v50 = v169;
            outlined init with copy of Locale.LanguageCode?(v71, v169);
            OUTLINED_FUNCTION_2_64(v71 + v66);
            if (!v85)
            {
              v101 = OUTLINED_FUNCTION_33_29();
              v66 = v75;
              v64 = v183;
              v102(v101);
              v103 = lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode();
              LODWORD(v178) = OUTLINED_FUNCTION_44_25(v103);
              v104 = OUTLINED_FUNCTION_3_59();
              v75(v104);
              v63 = &_s10Foundation6LocaleV12LanguageCodeVSgMd;
              v105 = OUTLINED_FUNCTION_94();
              outlined destroy of (offset: Int, element: SearchResult)(v105, v106, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
              (v75)(v50, v64);
              OUTLINED_FUNCTION_35_27(v177);
              if (v178)
              {
                goto LABEL_47;
              }

LABEL_30:
              v88 = v171;
              MEMORY[0x25F899720](29801, 0xE200000000000000);
              OUTLINED_FUNCTION_1_75(v88);
              outlined init with copy of Locale.LanguageCode?(v88, v70);
              OUTLINED_FUNCTION_49_22();
              OUTLINED_FUNCTION_38_5(v70);
              if (v72)
              {
                outlined destroy of (offset: Int, element: SearchResult)(v88, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                OUTLINED_FUNCTION_2_64(v70 + v66);
                v71 = v173;
                if (v72)
                {
                  outlined destroy of (offset: Int, element: SearchResult)(v70, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
LABEL_58:
                  OUTLINED_FUNCTION_41_21();
                  outlined destroy of (offset: Int, element: SearchResult)(v56, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                  OUTLINED_FUNCTION_38_26();
                  v183 = 543253536;
                  OUTLINED_FUNCTION_42_24();
                  v82 = 26989;
                  OUTLINED_FUNCTION_40_24();
                  v53 = 2122016;
                  v83 = 0xE300000000000000;
                  v84 = &type metadata for SeparatorsItalian;
                  goto LABEL_102;
                }
              }

              else
              {
                v50 = v166;
                outlined init with copy of Locale.LanguageCode?(v70, v166);
                OUTLINED_FUNCTION_2_64(v70 + v66);
                if (!v96)
                {
                  v111 = OUTLINED_FUNCTION_4_54();
                  v64 = v183;
                  v112(v111);
                  v113 = lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode();
                  LODWORD(v178) = OUTLINED_FUNCTION_44_25(v113);
                  v66 = v88;
                  v114 = OUTLINED_FUNCTION_3_59();
                  v75(v114);
                  v63 = &_s10Foundation6LocaleV12LanguageCodeVSgMd;
                  v115 = OUTLINED_FUNCTION_94();
                  outlined destroy of (offset: Int, element: SearchResult)(v115, v116, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                  (v75)(v50, v64);
                  OUTLINED_FUNCTION_35_27(v70);
                  v71 = v173;
                  if (v178)
                  {
                    goto LABEL_58;
                  }

LABEL_41:
                  MEMORY[0x25F899720](25956, 0xE200000000000000);
                  OUTLINED_FUNCTION_1_75(v71);
                  v99 = v168;
                  outlined init with copy of Locale.LanguageCode?(v71, v168);
                  OUTLINED_FUNCTION_49_22();
                  OUTLINED_FUNCTION_38_5(v99);
                  if (v72)
                  {
                    outlined destroy of (offset: Int, element: SearchResult)(v71, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                    OUTLINED_FUNCTION_2_64(v99 + v66);
                    v100 = v170;
                    if (v72)
                    {
                      outlined destroy of (offset: Int, element: SearchResult)(v99, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
LABEL_69:
                      OUTLINED_FUNCTION_41_21();
                      outlined destroy of (offset: Int, element: SearchResult)(v56, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                      v53 = 544039200;
                      v50 = 0xE300000000000000;
                      v183 = 0x206E6F7620;
                      v56 = 0xE400000000000000;
                      v178 = 0xE500000000000000;
                      v179 = 0x20646E7520;
                      v64 = 0xE100000000000000;
                      v81 = &protocol witness table for SeparatorsGerman;
                      v82 = 7498093;
                      v181 = 544569888;
                      v20 = 32;
                      v63 = 0xE500000000000000;
                      v71 = 0xE400000000000000;
                      v83 = 0xE400000000000000;
                      v84 = &type metadata for SeparatorsGerman;
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v63 = v163;
                    outlined init with copy of Locale.LanguageCode?(v99, v163);
                    OUTLINED_FUNCTION_2_64(v99 + v66);
                    if (!v107)
                    {
                      OUTLINED_FUNCTION_4_54();
                      OUTLINED_FUNCTION_29_21();
                      v122();
                      v123 = lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode();
                      LODWORD(v179) = OUTLINED_FUNCTION_15_38(v123);
                      v124 = OUTLINED_FUNCTION_3_59();
                      v75(v124);
                      v63 = &_s10Foundation6LocaleV12LanguageCodeVSgMd;
                      OUTLINED_FUNCTION_35_27(v173);
                      v125 = OUTLINED_FUNCTION_156();
                      v75(v125);
                      OUTLINED_FUNCTION_35_27(v99);
                      v100 = v170;
                      if (v179)
                      {
                        goto LABEL_69;
                      }

LABEL_52:
                      MEMORY[0x25F899720](29541, 0xE200000000000000);
                      OUTLINED_FUNCTION_1_75(v100);
                      v110 = v165;
                      outlined init with copy of Locale.LanguageCode?(v100, v165);
                      OUTLINED_FUNCTION_49_22();
                      OUTLINED_FUNCTION_38_5(v110);
                      if (v72)
                      {
                        outlined destroy of (offset: Int, element: SearchResult)(v100, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                        OUTLINED_FUNCTION_2_64(v110 + v66);
                        v71 = v167;
                        if (v72)
                        {
                          outlined destroy of (offset: Int, element: SearchResult)(v110, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
LABEL_80:
                          OUTLINED_FUNCTION_39_24();
                          OUTLINED_FUNCTION_38_26();
                          outlined destroy of (offset: Int, element: SearchResult)(v56, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                          v53 = 544105760;
                          v50 = 0xE200000000000000;
                          v56 = 0xE400000000000000;
                          v64 = 0xE100000000000000;
                          v82 = 28537;
                          v178 = 0xE300000000000000;
                          v179 = 2128160;
                          OUTLINED_FUNCTION_40_24();
                          v182 = 544105760;
                          v83 = 0xE400000000000000;
                          v84 = &type metadata for SeparatorsSpanish;
                          goto LABEL_102;
                        }
                      }

                      else
                      {
                        v63 = v161;
                        outlined init with copy of Locale.LanguageCode?(v110, v161);
                        OUTLINED_FUNCTION_2_64(v110 + v66);
                        if (!v117)
                        {
                          OUTLINED_FUNCTION_4_54();
                          OUTLINED_FUNCTION_29_21();
                          v130();
                          v131 = lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode();
                          v50 = OUTLINED_FUNCTION_15_38(v131);
                          v132 = OUTLINED_FUNCTION_3_59();
                          v75(v132);
                          v63 = &_s10Foundation6LocaleV12LanguageCodeVSgMd;
                          OUTLINED_FUNCTION_35_27(v170);
                          v133 = OUTLINED_FUNCTION_156();
                          v75(v133);
                          OUTLINED_FUNCTION_35_27(v110);
                          v71 = v167;
                          if (v50)
                          {
                            goto LABEL_80;
                          }

LABEL_63:
                          MEMORY[0x25F899720](24938, 0xE200000000000000);
                          OUTLINED_FUNCTION_1_75(v71);
                          v120 = v162;
                          outlined init with copy of Locale.LanguageCode?(v71, v162);
                          OUTLINED_FUNCTION_49_22();
                          OUTLINED_FUNCTION_38_5(v120);
                          if (v72)
                          {
                            outlined destroy of (offset: Int, element: SearchResult)(v71, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                            OUTLINED_FUNCTION_2_64(v120 + v66);
                            v121 = v164;
                            if (v72)
                            {
                              outlined destroy of (offset: Int, element: SearchResult)(v120, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
LABEL_91:
                              outlined destroy of (offset: Int, element: SearchResult)(v56, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                              v20 = 0;
                              v53 = 0;
                              v63 = 0xA600000000000000;
                              v182 = 0;
                              v183 = 0x8982E38B81E3;
                              v64 = 0xE000000000000000;
                              v81 = &protocol witness table for SeparatorsJapanese;
                              v82 = 8497127;
                              v181 = 12091875;
                              v178 = 0xA300000000000000;
                              v179 = 11043299;
                              v56 = 0xE000000000000000;
                              v71 = 0xA300000000000000;
                              v83 = 0xE000000000000000;
                              v50 = 0xA300000000000000;
                              v84 = &type metadata for SeparatorsJapanese;
                              goto LABEL_102;
                            }
                          }

                          else
                          {
                            v63 = v158;
                            outlined init with copy of Locale.LanguageCode?(v120, v158);
                            OUTLINED_FUNCTION_2_64(v120 + v66);
                            if (!v126)
                            {
                              OUTLINED_FUNCTION_4_54();
                              OUTLINED_FUNCTION_29_21();
                              v138();
                              v139 = lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode();
                              v50 = OUTLINED_FUNCTION_15_38(v139);
                              v140 = OUTLINED_FUNCTION_3_59();
                              v75(v140);
                              v63 = &_s10Foundation6LocaleV12LanguageCodeVSgMd;
                              OUTLINED_FUNCTION_35_27(v167);
                              v141 = OUTLINED_FUNCTION_156();
                              v75(v141);
                              OUTLINED_FUNCTION_35_27(v120);
                              v121 = v164;
                              if (v50)
                              {
                                goto LABEL_91;
                              }

LABEL_74:
                              MEMORY[0x25F899720](28523, 0xE200000000000000);
                              OUTLINED_FUNCTION_1_75(v121);
                              v129 = v159;
                              outlined init with copy of Locale.LanguageCode?(v121, v159);
                              outlined init with copy of Locale.LanguageCode?(v56, v129 + v66);
                              OUTLINED_FUNCTION_38_5(v129);
                              if (v72)
                              {
                                outlined destroy of (offset: Int, element: SearchResult)(v121, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                                OUTLINED_FUNCTION_2_64(v129 + v66);
                                v53 = v160;
                                if (v72)
                                {
                                  outlined destroy of (offset: Int, element: SearchResult)(v129, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
LABEL_98:
                                  outlined destroy of (offset: Int, element: SearchResult)(v56, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                                  v20 = 0;
                                  v179 = 0;
                                  v82 = 0x989DEC9882EBLL;
                                  v83 = 0xA300000000000000;
                                  v181 = 0x80A7EC8CB9EALL;
                                  v183 = 0xB084ED80B6EBLL;
                                  v56 = 0xA600000000000000;
                                  v182 = 0x9097EC8895ECLL;
                                  v64 = 0xE000000000000000;
                                  v81 = &protocol witness table for SeparatorsKorean;
                                  v53 = 9476076;
                                  v178 = 0xE000000000000000;
                                  v63 = 0xA600000000000000;
                                  v71 = 0xA600000000000000;
                                  v50 = 0xA600000000000000;
                                  v84 = &type metadata for SeparatorsKorean;
                                  goto LABEL_102;
                                }
                              }

                              else
                              {
                                v63 = v156[0];
                                outlined init with copy of Locale.LanguageCode?(v129, v156[0]);
                                OUTLINED_FUNCTION_2_64(v129 + v66);
                                v53 = v160;
                                if (!v134)
                                {
                                  OUTLINED_FUNCTION_33_29();
                                  v50 = v129;
                                  OUTLINED_FUNCTION_29_21();
                                  v143();
                                  v144 = lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode();
                                  LODWORD(v179) = OUTLINED_FUNCTION_15_38(v144);
                                  v145 = OUTLINED_FUNCTION_3_59();
                                  v75(v145);
                                  v63 = &_s10Foundation6LocaleV12LanguageCodeVSgMd;
                                  OUTLINED_FUNCTION_35_27(v164);
                                  v146 = OUTLINED_FUNCTION_156();
                                  v75(v146);
                                  OUTLINED_FUNCTION_35_27(v129);
                                  if (v179)
                                  {
                                    goto LABEL_98;
                                  }

LABEL_85:
                                  v137 = v156[1];
                                  MEMORY[0x25F899720](26746, 0xE200000000000000);
                                  OUTLINED_FUNCTION_1_75(v137);
                                  v64 = v157;
                                  outlined init with copy of Locale.LanguageCode?(v137, v157);
                                  outlined init with take of Locale.LanguageCode?(v56, &v64[v66]);
                                  OUTLINED_FUNCTION_38_5(v64);
                                  if (v72)
                                  {
                                    outlined destroy of (offset: Int, element: SearchResult)(v137, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                                    OUTLINED_FUNCTION_2_64(&v64[v66]);
                                    if (v72)
                                    {
                                      OUTLINED_FUNCTION_27_25();
                                      outlined destroy of (offset: Int, element: SearchResult)(v64, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                                      v20 = 0;
                                      v53 = 0;
LABEL_101:
                                      v178 = 0xA300000000000000;
                                      v64 = 0xE000000000000000;
                                      v81 = &protocol witness table for SeparatorsChinese;
                                      v82 = 9537766;
                                      v56 = 0xA300000000000000;
                                      v63 = 0xA300000000000000;
                                      v71 = 0xA300000000000000;
                                      v83 = 0xE000000000000000;
                                      v50 = 0xA300000000000000;
                                      v84 = &type metadata for SeparatorsChinese;
                                      goto LABEL_102;
                                    }
                                  }

                                  else
                                  {
                                    outlined init with copy of Locale.LanguageCode?(v64, v53);
                                    OUTLINED_FUNCTION_2_64(&v64[v66]);
                                    if (!v142)
                                    {
                                      v147 = v181;
                                      v148 = v176;
                                      v149 = v183;
                                      (*(v181 + 32))(v176, &v64[v66], v183);
                                      lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode();
                                      v150 = dispatch thunk of static Equatable.== infix(_:_:)();
                                      v151 = *(v147 + 8);
                                      v56 = (v147 + 8);
                                      v151(v148, v149);
                                      v63 = &_s10Foundation6LocaleV12LanguageCodeVSgMd;
                                      OUTLINED_FUNCTION_35_27(v137);
                                      v151(v53, v149);
                                      OUTLINED_FUNCTION_35_27(v64);
                                      if (v150)
                                      {
                                        v20 = 0;
                                        v53 = 0;
                                        OUTLINED_FUNCTION_27_25();
                                        goto LABEL_101;
                                      }

                                      goto LABEL_96;
                                    }

                                    outlined destroy of (offset: Int, element: SearchResult)(v137, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                                    (*(v181 + 8))(v53, v183);
                                  }

                                  outlined destroy of (offset: Int, element: SearchResult)(v64, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
LABEL_96:
                                  OUTLINED_FUNCTION_26_27();
                                  OUTLINED_FUNCTION_37_20();
                                  v81 = &protocol witness table for SeparatorsEnglish;
                                  v82 = 25965;
                                  v20 = 32;
                                  v182 = 544106784;
                                  goto LABEL_25;
                                }

                                outlined destroy of (offset: Int, element: SearchResult)(v164, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                                v135 = OUTLINED_FUNCTION_10_41();
                                v136(v135);
                              }

                              outlined destroy of (offset: Int, element: SearchResult)(v129, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
                              goto LABEL_85;
                            }

                            outlined destroy of (offset: Int, element: SearchResult)(v167, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                            v127 = OUTLINED_FUNCTION_10_41();
                            v128(v127);
                            v121 = v164;
                          }

                          outlined destroy of (offset: Int, element: SearchResult)(v120, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
                          goto LABEL_74;
                        }

                        outlined destroy of (offset: Int, element: SearchResult)(v170, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                        v118 = OUTLINED_FUNCTION_10_41();
                        v119(v118);
                        v71 = v167;
                      }

                      outlined destroy of (offset: Int, element: SearchResult)(v110, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
                      goto LABEL_63;
                    }

                    outlined destroy of (offset: Int, element: SearchResult)(v173, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                    v108 = OUTLINED_FUNCTION_10_41();
                    v109(v108);
                    v100 = v170;
                  }

                  outlined destroy of (offset: Int, element: SearchResult)(v99, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
                  goto LABEL_52;
                }

                outlined destroy of (offset: Int, element: SearchResult)(v88, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
                v97 = OUTLINED_FUNCTION_31_26();
                v98(v97);
                v71 = v173;
              }

              outlined destroy of (offset: Int, element: SearchResult)(v70, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
              goto LABEL_41;
            }

            outlined destroy of (offset: Int, element: SearchResult)(v75, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
            v86 = OUTLINED_FUNCTION_31_26();
            v87(v86);
          }

          outlined destroy of (offset: Int, element: SearchResult)(v71, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
          goto LABEL_30;
        }

        outlined destroy of (offset: Int, element: SearchResult)(v69, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
        v73 = OUTLINED_FUNCTION_10_41();
        v74(v73);
        v71 = v177;
      }

      outlined destroy of (offset: Int, element: SearchResult)(v50, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMd, &_s10Foundation6LocaleV12LanguageCodeVSg_AFtMR);
      goto LABEL_18;
    }
  }

  OUTLINED_FUNCTION_26_27();
  OUTLINED_FUNCTION_41_21();
  outlined destroy of (offset: Int, element: SearchResult)(v56, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_37_20();
  v81 = &protocol witness table for SeparatorsEnglish;
  v82 = 25965;
  v20 = 32;
LABEL_25:
  v71 = 0xE400000000000000;
  v83 = 0xE400000000000000;
  v84 = &type metadata for SeparatorsEnglish;
LABEL_102:
  v152 = v180;
  v180[3] = v84;
  v152[4] = v81;
  result = swift_allocObject();
  *v152 = result;
  result[2] = v20;
  result[3] = v64;
  v154 = v178;
  result[4] = v179;
  result[5] = v154;
  v155 = v183;
  result[6] = v182;
  result[7] = v56;
  result[8] = v155;
  result[9] = v63;
  result[10] = v181;
  result[11] = v71;
  result[12] = v53;
  result[13] = v83;
  result[14] = v82;
  result[15] = v50;
  return result;
}

uint64_t outlined init with copy of Locale.LanguageCode?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Locale.LanguageCode?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void __swiftcall SeparatorsEnglish.init()(OmniSearch::SeparatorsEnglish *__return_ptr retstr)
{
  retstr->whitespaceSep._countAndFlagsBits = 32;
  retstr->whitespaceSep._object = 0xE100000000000000;
  retstr->andSep._countAndFlagsBits = 0x20646E6120;
  retstr->andSep._object = 0xE500000000000000;
  retstr->inSep._countAndFlagsBits = 544106784;
  retstr->inSep._object = 0xE400000000000000;
  retstr->fromSep._countAndFlagsBits = 0x206D6F726620;
  retstr->fromSep._object = 0xE600000000000000;
  retstr->toSep._countAndFlagsBits = 544175136;
  retstr->toSep._object = 0xE400000000000000;
  retstr->atSep._countAndFlagsBits = 544497952;
  retstr->atSep._object = 0xE400000000000000;
  OUTLINED_FUNCTION_16_38(retstr);
}

void __swiftcall SeparatorsPortuguese.init()(OmniSearch::SeparatorsPortuguese *__return_ptr retstr)
{
  OUTLINED_FUNCTION_50_17(retstr);
  v1[4] = 544040224;
  v1[5] = 0xE400000000000000;
  v1[6] = 543515680;
  v1[7] = 0xE400000000000000;
  v1[8] = v2;
  v1[9] = v3;
  v1[10] = 544040224;
  v1[11] = 0xE400000000000000;
  OUTLINED_FUNCTION_16_38(v1);
}

void __swiftcall SeparatorsFrench.init()(OmniSearch::SeparatorsFrench *__return_ptr retstr)
{
  retstr->whitespaceSep._countAndFlagsBits = 32;
  retstr->whitespaceSep._object = 0xE100000000000000;
  retstr->andSep._countAndFlagsBits = 544498976;
  retstr->andSep._object = 0xE400000000000000;
  retstr->inSep._countAndFlagsBits = 0x20736E616420;
  retstr->inSep._object = 0xE600000000000000;
  retstr->fromSep._countAndFlagsBits = 543515680;
  retstr->fromSep._object = 0xE400000000000000;
  retstr->toSep._countAndFlagsBits = 0x207372657620;
  retstr->toSep._object = 0xE600000000000000;
  retstr->atSep._countAndFlagsBits = 547406624;
  retstr->atSep._object = 0xA400000000000000;
  OUTLINED_FUNCTION_28_27(retstr);
}

void __swiftcall SeparatorsItalian.init()(OmniSearch::SeparatorsItalian *__return_ptr retstr)
{
  OUTLINED_FUNCTION_50_17(retstr);
  v1[4] = 544106784;
  v1[5] = 0xE400000000000000;
  v1[6] = 543253536;
  v1[7] = 0xE400000000000000;
  v1[8] = v2;
  v1[9] = v3;
  v1[10] = v2;
  v1[11] = v3;
  OUTLINED_FUNCTION_16_38(v1);
}

void __swiftcall SeparatorsGerman.init()(OmniSearch::SeparatorsGerman *__return_ptr retstr)
{
  retstr->whitespaceSep._countAndFlagsBits = 32;
  retstr->whitespaceSep._object = 0xE100000000000000;
  retstr->andSep._countAndFlagsBits = 0x20646E7520;
  retstr->andSep._object = 0xE500000000000000;
  retstr->inSep._countAndFlagsBits = 544106784;
  retstr->inSep._object = 0xE400000000000000;
  retstr->fromSep._countAndFlagsBits = 0x206E6F7620;
  retstr->fromSep._object = 0xE500000000000000;
  retstr->toSep._countAndFlagsBits = 544569888;
  retstr->toSep._object = 0xE400000000000000;
  retstr->atSep._countAndFlagsBits = 544039200;
  retstr->atSep._object = 0xE400000000000000;
  OUTLINED_FUNCTION_28_27(retstr);
}

void __swiftcall SeparatorsSpanish.init()(OmniSearch::SeparatorsSpanish *__return_ptr retstr)
{
  retstr->whitespaceSep._countAndFlagsBits = 32;
  retstr->whitespaceSep._object = 0xE100000000000000;
  retstr->andSep._countAndFlagsBits = 2128160;
  retstr->andSep._object = 0xE300000000000000;
  retstr->inSep._countAndFlagsBits = 544105760;
  retstr->inSep._object = 0xE400000000000000;
  retstr->fromSep._countAndFlagsBits = 543515680;
  retstr->fromSep._object = 0xE400000000000000;
  retstr->toSep._countAndFlagsBits = 2122016;
  retstr->toSep._object = 0xE300000000000000;
  retstr->atSep._countAndFlagsBits = 544105760;
  retstr->atSep._object = 0xE400000000000000;
  OUTLINED_FUNCTION_16_38(retstr);
}

void __swiftcall SeparatorsJapanese.init()(OmniSearch::SeparatorsJapanese *__return_ptr retstr)
{
  retstr->whitespaceSep._countAndFlagsBits = 0;
  retstr->whitespaceSep._object = 0xE000000000000000;
  retstr->andSep._countAndFlagsBits = 11043299;
  retstr->andSep._object = 0xA300000000000000;
  retstr->inSep._countAndFlagsBits = 0;
  retstr->inSep._object = 0xE000000000000000;
  retstr->fromSep._countAndFlagsBits = 0x8982E38B81E3;
  retstr->fromSep._object = 0xA600000000000000;
  retstr->toSep._countAndFlagsBits = 12091875;
  retstr->toSep._object = 0xA300000000000000;
  retstr->atSep._countAndFlagsBits = 0;
  retstr->atSep._object = 0xE000000000000000;
  retstr->me._countAndFlagsBits = 8497127;
  retstr->me._object = 0xA300000000000000;
}

void __swiftcall SeparatorsKorean.init()(OmniSearch::SeparatorsKorean *__return_ptr retstr)
{
  retstr->whitespaceSep._countAndFlagsBits = 0;
  retstr->whitespaceSep._object = 0xE000000000000000;
  retstr->andSep._countAndFlagsBits = 0;
  retstr->andSep._object = 0xE000000000000000;
  retstr->inSep._countAndFlagsBits = 0x9097EC8895ECLL;
  retstr->inSep._object = 0xA600000000000000;
  retstr->fromSep._countAndFlagsBits = 0xB084ED80B6EBLL;
  retstr->fromSep._object = 0xA600000000000000;
  retstr->toSep._countAndFlagsBits = 0x80A7EC8CB9EALL;
  retstr->toSep._object = 0xA600000000000000;
  retstr->atSep._countAndFlagsBits = 9476076;
  retstr->atSep._object = 0xA300000000000000;
  OUTLINED_FUNCTION_28_27(retstr);
}

void __swiftcall SeparatorsChinese.init()(OmniSearch::SeparatorsChinese *__return_ptr retstr)
{
  retstr->whitespaceSep._countAndFlagsBits = 0;
  retstr->whitespaceSep._object = 0xE000000000000000;
  retstr->andSep._countAndFlagsBits = 9212645;
  retstr->andSep._object = 0xA300000000000000;
  retstr->inSep._countAndFlagsBits = 11050213;
  retstr->inSep._object = 0xA300000000000000;
  retstr->fromSep._countAndFlagsBits = 9354212;
  retstr->fromSep._object = 0xA300000000000000;
  retstr->toSep._countAndFlagsBits = 11569381;
  retstr->toSep._object = 0xA300000000000000;
  retstr->atSep._countAndFlagsBits = 0;
  retstr->atSep._object = 0xE000000000000000;
  retstr->me._countAndFlagsBits = 9537766;
  retstr->me._object = 0xA300000000000000;
}

unint64_t lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode()
{
  result = lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode;
  if (!lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode)
  {
    type metadata accessor for Locale.LanguageCode();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t SeparatorsFrench.whitespaceSep.setter()
{
  OUTLINED_FUNCTION_93();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SeparatorsFrench.andSep.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t SeparatorsFrench.inSep.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t SeparatorsFrench.fromSep.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t SeparatorsFrench.toSep.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t SeparatorsFrench.atSep.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t SeparatorsFrench.me.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

__n128 SeparatorsEnglish.init(whitespaceSep:andSep:inSep:fromSep:toSep:atSep:me:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_38(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

void OUTLINED_FUNCTION_26_27()
{
  *(v0 - 96) = 0x206D6F726620;
  *(v0 - 128) = 0x20646E6120;
  *(v0 - 112) = 544175136;
}

void OUTLINED_FUNCTION_27_25()
{
  *(v0 - 112) = 11569381;
  *(v0 - 104) = 11050213;
  *(v0 - 96) = 9354212;
  *(v0 - 128) = 9212645;
}

uint64_t OUTLINED_FUNCTION_35_27(uint64_t a1)
{

  return outlined destroy of (offset: Int, element: SearchResult)(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_44_25(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_48_16(uint64_t a1)
{

  return outlined destroy of (offset: Int, element: SearchResult)(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_49_22()
{

  return outlined init with copy of Locale.LanguageCode?(v1, v2 + v0);
}

void OUTLINED_FUNCTION_50_17(void *__return_ptr a1@<X8>)
{
  *a1 = 32;
  a1[1] = 0xE100000000000000;
  a1[2] = 2123040;
  a1[3] = 0xE300000000000000;
}

uint64_t SFCard.hydrateImages()()
{
  *(v1 + 144) = v0;
  return MEMORY[0x2822009F8](SFCard.hydrateImages());
}

{
  v1 = outlined bridged method (pb) of @objc SFCard.cardSections.getter(*(v0 + 144));
  *(v0 + 152) = v1;
  if (v1)
  {
    v2 = specialized Array.count.getter();
    *(v0 + 160) = v2;
    if (v2)
    {
      if (v2 < 1)
      {
        __break(1u);
      }

      else
      {
        *(v0 + 168) = 0;
        v3 = *(v0 + 152);
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x25F89FFD0](0);
        }

        else
        {
          v4 = *(v3 + 32);
        }

        v7 = v4;
        *(v0 + 176) = v4;
        *(v0 + 16) = v0;
        *(v0 + 24) = SFCard.hydrateImages();
        swift_continuation_init();
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd, &_sSccyyts5NeverOGMR);
        OUTLINED_FUNCTION_1_76(v8);
        *(v0 + 88) = 1107296256;
        OUTLINED_FUNCTION_0_83(block_descriptor_9);
        [v7 hydrateImagesWithCompletionHandler_];
        v2 = v0 + 16;
      }

      return MEMORY[0x282200938](v2);
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

{

  return MEMORY[0x2822009F8](SFCard.hydrateImages());
}

{
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);

  if (v1 + 1 == v2)
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 168) + 1;
    *(v0 + 168) = v5;
    v6 = *(v0 + 152);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x25F89FFD0]();
    }

    else
    {
      v7 = *(v6 + 8 * v5 + 32);
    }

    v8 = v7;
    *(v0 + 176) = v7;
    *(v0 + 16) = v0;
    *(v0 + 24) = SFCard.hydrateImages();
    swift_continuation_init();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd, &_sSccyyts5NeverOGMR);
    OUTLINED_FUNCTION_1_76(v9);
    *(v0 + 88) = 1107296256;
    OUTLINED_FUNCTION_0_83(block_descriptor_9);
    [v8 hydrateImagesWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) () -> () with result type ()(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return specialized _resumeUnsafeContinuation<A>(_:_:)();
}

void OUTLINED_FUNCTION_0_83(uint64_t a1@<X8>)
{
  v1[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) () -> () with result type ();
  v1[13] = a1;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_1_76(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t @objc closure #1 in SFCardSection.hydrateImages()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = @objc closure #1 in SFCardSection.hydrateImages();

  return SFCardSection.hydrateImages()();
}

uint64_t @objc closure #1 in SFCardSection.hydrateImages()()
{
  OUTLINED_FUNCTION_48();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_11();
  *v3 = v2;

  v1[2](v1);
  _Block_release(v1);
  OUTLINED_FUNCTION_127();

  return v4();
}

uint64_t SFDetailedRowCardSection.hydrateImages()()
{
  *(v1 + 208) = v0;
  return OUTLINED_FUNCTION_3_11();
}

{
  OUTLINED_FUNCTION_78();
  v1 = [*(v0 + 208) thumbnail];
  *(v0 + 216) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0 + 16;
    *(v0 + 16) = v0;
    *(v0 + 24) = SFDetailedRowCardSection.hydrateImages();
    swift_continuation_init();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd, &_sSccyyts5NeverOGMR);
    OUTLINED_FUNCTION_3_60(v4);
    *(v0 + 152) = 1107296256;
    v5 = &block_descriptor_10;
LABEL_5:
    *(v0 + 160) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) () -> () with result type ();
    *(v0 + 168) = v5;
    [v2 loadImageDataWithCompletionHandler_];

    return MEMORY[0x282200938](v3);
  }

  v6 = [*(v0 + 208) trailingThumbnail];
  *(v0 + 224) = v6;
  if (v6)
  {
    v2 = v6;
    v3 = v0 + 80;
    *(v0 + 80) = v0;
    OUTLINED_FUNCTION_6_43();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd, &_sSccyyts5NeverOGMR);
    OUTLINED_FUNCTION_3_60(v7);
    *(v0 + 152) = 1107296256;
    v5 = &block_descriptor_3;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_127();

  return v8();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_12_41();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  return MEMORY[0x2822009F8](SFDetailedRowCardSection.hydrateImages());
}

{
  OUTLINED_FUNCTION_78();

  v2 = [*(v1 + 208) trailingThumbnail];
  *(v1 + 224) = v2;
  if (v2)
  {
    OUTLINED_FUNCTION_10_42();
    *(v1 + 80) = v3;
    v4 = OUTLINED_FUNCTION_6_43();
    *(v1 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd, &_sSccyyts5NeverOGMR);
    *(v1 + 144) = MEMORY[0x277D85DD0];
    *(v1 + 152) = 1107296256;
    *(v1 + 160) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) () -> () with result type ();
    *(v1 + 168) = &block_descriptor_3;
    *(v1 + 176) = v4;
    [v0 loadImageDataWithCompletionHandler_];

    return MEMORY[0x282200938](v1 + 80);
  }

  else
  {
    OUTLINED_FUNCTION_127();

    return v5();
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_12_41();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  return MEMORY[0x2822009F8](SFDetailedRowCardSection.hydrateImages());
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();

  return v1();
}

uint64_t @objc closure #1 in SFDetailedRowCardSection.hydrateImages()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in SFVerticalLayoutCardSection.hydrateImages();

  return SFDetailedRowCardSection.hydrateImages()();
}

uint64_t SFVerticalLayoutCardSection.hydrateImages()()
{
  *(v1 + 144) = v0;
  return OUTLINED_FUNCTION_3_11();
}

{
  OUTLINED_FUNCTION_78();
  v2 = [*(v1 + 144) thumbnail];
  *(v1 + 152) = v2;
  if (v2)
  {
    OUTLINED_FUNCTION_10_42();
    *(v1 + 16) = v3;
    *(v1 + 24) = SFVerticalLayoutCardSection.hydrateImages();
    v4 = swift_continuation_init();
    *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd, &_sSccyyts5NeverOGMR);
    *(v1 + 80) = MEMORY[0x277D85DD0];
    *(v1 + 88) = 1107296256;
    *(v1 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) () -> () with result type ();
    *(v1 + 104) = &block_descriptor_6;
    *(v1 + 112) = v4;
    [v0 loadImageDataWithCompletionHandler_];

    return MEMORY[0x282200938](v1 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_127();

    return v5();
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_12_41();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  return MEMORY[0x2822009F8](SFVerticalLayoutCardSection.hydrateImages());
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();

  return v1();
}

uint64_t @objc closure #1 in SFVerticalLayoutCardSection.hydrateImages()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in SFVerticalLayoutCardSection.hydrateImages();

  return SFVerticalLayoutCardSection.hydrateImages()();
}

uint64_t SFCollectionCardSection.hydrateImages()()
{
  *(v1 + 144) = v0;
  return OUTLINED_FUNCTION_3_11();
}

{
  v1 = outlined bridged method (pb) of @objc SFCollectionCardSection.cardSections.getter(*(v0 + 144));
  *(v0 + 152) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = specialized Array.count.getter();
    *(v0 + 160) = v3;
    if (v3)
    {
      if (v3 < 1)
      {
        __break(1u);
      }

      else
      {
        *(v0 + 168) = 0;
        v4 = *(v0 + 152);
        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x25F89FFD0](0);
        }

        else
        {
          v7 = *(v4 + 32);
        }

        OUTLINED_FUNCTION_10_42();
        *(v0 + 176) = v8;
        *(v0 + 16) = v9;
        *(v0 + 24) = SFCollectionCardSection.hydrateImages();
        swift_continuation_init();
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd, &_sSccyyts5NeverOGMR);
        OUTLINED_FUNCTION_1_76(v10);
        *(v0 + 88) = 1107296256;
        OUTLINED_FUNCTION_0_83(&block_descriptor_9);
        [v2 hydrateImagesWithCompletionHandler_];
        v3 = v0 + 16;
      }

      return MEMORY[0x282200938](v3);
    }
  }

  OUTLINED_FUNCTION_127();

  return v5();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_12_41();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  return MEMORY[0x2822009F8](SFCollectionCardSection.hydrateImages());
}

{
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);

  if (v1 + 1 == v2)
  {

    OUTLINED_FUNCTION_127();

    return v3();
  }

  else
  {
    v5 = *(v0 + 168) + 1;
    *(v0 + 168) = v5;
    v6 = *(v0 + 152);
    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x25F89FFD0]();
    }

    else
    {
      v7 = *(v6 + 8 * v5 + 32);
    }

    OUTLINED_FUNCTION_10_42();
    *(v0 + 176) = v8;
    *(v0 + 16) = v9;
    *(v0 + 24) = SFCollectionCardSection.hydrateImages();
    swift_continuation_init();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd, &_sSccyyts5NeverOGMR);
    OUTLINED_FUNCTION_1_76(v10);
    *(v0 + 88) = 1107296256;
    OUTLINED_FUNCTION_0_83(&block_descriptor_9);
    [v1 hydrateImagesWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }
}